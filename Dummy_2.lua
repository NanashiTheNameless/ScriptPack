--[[
    THIS SCRIPT BELONGS TO THEJONATHANN.
    ANYONE RUNNING THIS BESIDE IMTELLINGMOMMY AND PPATTA WITHOUT THERE PERMISSION IS AN FMER.
    --]]

local HiveMind = {}
function HiveMind:new(owner)
        self.__index = self
        local o = {mind = {}, mindState = "FOLLOW", victimObject = nil}
        o.owner = owner
        setmetatable(o, self)
        return o
end

function HiveMind:add(model, humanoid, torso)
        if model and humanoid and torso then
                table.insert(self.mind, {model = model, humanoid = humanoid,
                                torso = torso})
                local hiv = self
                local lastJump = 0
                torso.Touched:connect(function(object)
                        local hive = false
                        if hiv.owner.Character
                                        and object:IsDescendantOf(hiv.owner.Character) == false
                                        then
                                for i = 1, #hiv.mind do
                                        if object:IsDescendantOf(hiv.mind[i].model) then
                                                hive = true
                                                break
                                        end
                                end
                                if not hive then
                                        local hum = object.Parent
                                                        and object.Parent:FindFirstChild("Humanoid")
                                        if hum then
                                                hum:TakeDamage(5)
                                        end
                                elseif time() - lastJump > 9 then
                                        lastJump = time() + math.random()*2
                                        humanoid.Jump = true
                                end
                        end
                end)
        end
end

function HiveMind:cleanupHive()
        local i = 1
        while i <= #self.mind do
                if self.mind[i].model:IsDescendantOf(game) == false
                                or self.mind[i].humanoid.Health == 0 then
                        table.remove(self.mind, i)
                else
                        i = i + 1
                end
        end
end

function HiveMind:getOrbitNumberFromUnitNumber(i)
        local circleNumber = 0
        while self:getUnitsInOrbit(circleNumber) < i do
                i = i - self:getUnitsInOrbit(circleNumber)
                circleNumber = circleNumber + 1
        end
        return circleNumber, i
end

function HiveMind:getOrbitDiameter(orbitNumber)
        return math.pi*(orbitNumber*14)
end

function HiveMind:getUnitsInOrbit(orbitNumber)
        return math.floor(self:getOrbitDiameter(orbitNumber)/5)
end

function HiveMind:circle(location)
        local timeOffset = time()*0.3
        for i = 1, #self.mind do
                local orbit, offset = self:getOrbitNumberFromUnitNumber(i)
                local units = self:getUnitsInOrbit(orbit)
                local angle = math.pi*2*(offset/units) + timeOffset
                local radius = orbit*7
                local pos = Vector3.new(math.sin(angle)*radius, 0,
                                math.cos(angle)*radius)
                self.mind[i].humanoid:MoveTo(pos + location, workspace.Base)
        end
end

function HiveMind:lineup(location)
        for i = 1, #self.mind do
                local row = (i - 1) % 3
                local column = math.floor((i - 1) / 3)
                local xOffset, yOffset
                if row == 0 then
                        xOffset = -7
                elseif row == 1 then
                        xOffset = 0
                else
                        xOffset = 7
                end
                yOffset = column * 7
                local position = location * CFrame.new(xOffset, 0, yOffset)
                self.mind[i].humanoid:MoveTo(position.p, workspace.Base)
        end
end

function HiveMind:crowdAttack()
        if self.victimObject and self.victimObject:IsDescendantOf(workspace) then
                local position = self.victimObject.Position
                for i = 1, #self.mind do
                        if (self.mind[i].torso.Position - position).magnitude < 1
                                        and math.random() < 0.1 then
                                self.mind[i].humanoid:MoveTo(position + Vector3.new(
                                                math.random(), math.random(), math.random()),
                                                workspace.Base)
                        else
                                self.mind[i].humanoid:MoveTo(position, workspace.Base)
                        end
                end
        end
end

function HiveMind:shield()
        local factor = math.pi*2/(#self.mind)
        local rad = math.max(#self.mind/9, 3)
        local angle = 0
        local torso = self.owner.Character
                        and self.owner.Character:FindFirstChild("Torso")
        if not torso then
                return
        end
        local off = torso.Position
        for i = 1, #self.mind do
                self.mind[i].humanoid:MoveTo(Vector3.new(math.sin(angle)*14, 0,
                                math.cos(angle)*14) + off, Workspace.Base)
                angle = angle + factor
        end
end

function HiveMind:ownerTorso()
        return self.owner.Character
                        and self.owner.Character:FindFirstChild("Torso")
end

function HiveMind:pushToTarget()
        if self.victimObject and self:ownerTorso() then
                local victimPosition = self.victimObject.Position
                local ownerPosition = self:ownerTorso().Position
                for i = 1, #self.mind do
                        local memberPosition = self.mind[i].torso.Position
                        local differenceFromOwner = (ownerPosition - memberPosition)
                        local directionToOwner = differenceFromOwner.unit
                        local distanceToOwner = differenceFromOwner.magnitude
                        local directionToVictim = (victimPosition - memberPosition).unit
                        if directionToOwner:Dot(directionToVictim) > 0.95
                                        and distanceToOwner < 19 then
                                self.mind[i].humanoid:MoveTo(victimPosition, workspace.Base)
                        else
                                local ownerVictimDiff = (ownerPosition - victimPosition)
                                local ownerVictimDist = ownerVictimDiff.magnitude
                                local properLocation = ownerVictimDiff.unit
                                                *(ownerVictimDist + 7) + victimPosition
                                local ang = math.atan2(ownerVictimDiff.z, ownerVictimDiff.x)
                                if directionToOwner:Dot(directionToVictim) < 0.4 then
                                        if i % 2 == 0 then
                                                ang = ang + math.pi/2
                                        else
                                                ang = ang - math.pi/2
                                        end
                                        local sideOff = Vector3.new(math.cos(ang)*18, 0,
                                                        math.sin(ang)*18)
                                        properLocation = properLocation + sideOff
                                end
                                self.mind[i].humanoid:MoveTo(properLocation, workspace.Base)
                        end
                end
        end
end

function HiveMind:update()
        self:cleanupHive()
        if self.owner.Character then
                local ownerTorso = self.owner.Character:FindFirstChild("Torso")
                if ownerTorso then
                        if (self.mindState == "FOLLOW") then
                                local hiveSpawn = ownerTorso.CFrame * CFrame.new(0, 0, 9)
                                self:lineup(hiveSpawn)
                        elseif (self.mindState == "CIRCLE") then
                                self:circle(ownerTorso.Position)
                        elseif (self.mindState == "ATTACK") then
                                self:crowdAttack()
                        elseif (self.mindState == "SHIELD") then
                                self:shield()
                        elseif (self.mindState == "GOTO") then
                                self:pushToTarget()
                        end
                end
        end
end

-------------------------------------------------------------------------------

local me = game:GetService("Players").PPATTA
local hiveMind = HiveMind:new(me)

me.Chatted:connect(function(msg)
        if msg:lower():find("circle") == 1 then
                hiveMind.mindState = "CIRCLE"
        elseif msg:lower():find("follow") == 1 then
                hiveMind.mindState = "FOLLOW"
        elseif msg:lower():find("attack") == 1 then
                for i, v in ipairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name:lower():find(msg:sub(8):lower()) == 1 then
                                hiveMind.victimObject = v.Character.Torso
                                hiveMind.mindState = "ATTACK"
                                break
                        end
                end
        elseif msg:lower():find("goto") == 1 then
                for i, v in ipairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name:lower():find(msg:sub(6):lower()) == 1 then
                                hiveMind.victimObject = v.Character.Torso
                                hiveMind.mindState = "GOTO"
                                break
                        end
                end
        elseif msg:lower():find("hive") == 1 then
                for i, v in ipairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name:lower():find(msg:sub(6):lower()) == 1
                                        and v ~= hiveMind.owner then
                                if v.Character and v.Character:FindFirstChild("Torso")
                                                and v.Character:FindFirstChild("Humanoid") then
                                        hiveMind:add(v.Character, v.Character.Humanoid,
                                                        v.Character.Torso)
                                end
                        end
                end
        elseif msg:lower():find("shield") == 1 then
                hiveMind.mindState = "SHIELD"
        end
end)

workspace.ChildAdded:connect(function(object)
        if object.Name == "Dummy" then
                hiveMind:add(object, object:WaitForChild("Humanoid"),
                                object:WaitForChild("Torso"))
        end
end)

game:GetService("RunService").Stepped:connect(function()
        hiveMind:update()
end)
--[[
g/dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum
--]]

