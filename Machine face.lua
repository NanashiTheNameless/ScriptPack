local pjts = {}
function FireProjectile(origin, velocity, raycallback, ignore, draw)
    table.insert(pjts,{origin, origin, velocity, raycallback, ignore, draw})
end
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local mousedown = false
local downtime = 0
local spin = false
local selected = false
local swagbullets = 200
local neck = player.Character.Torso.Neck
local neckc0 = neck.C0
local bin = Instance.new("HopperBin", player.Backpack)
bin.Name = "Machine Face"
local staspin = Instance.new("Sound", player.Character.Head)
staspin.SoundId = "http://roblox.com/asset/?id=10209788"
local stospin = Instance.new("Sound", player.Character.Head)
stospin.SoundId = "http://roblox.com/asset/?id=10209786"
local sping = Instance.new("Sound", player.Character.Head)
sping.SoundId = "http://roblox.com/asset/?id=10209780"
sping.Looped = true
local bang = Instance.new("Sound", player.Character.Head)
bang.SoundId = "http://roblox.com/asset/?id=10209776"
bang.Looped = true
local clicking = Instance.new("Sound", player.Character.Head)
clicking.SoundId = "http://roblox.com/asset/?id=10209771"
clicking.Looped = true
local face = nil
if player.Character.Head:FindFirstChild("face") then
        face = player.Character.Head.face:clone()
end
local controlpart = Instance.new("Part", player.Character)
controlpart.Anchored = false
controlpart.CanCollide = false
controlpart.TopSurface = 0
controlpart.BottomSurface = 0
controlpart.FormFactor = "Custom"
controlpart.Size = Vector3.new(0,0,0)
controlpart.Transparency = 1
local muzzle = Instance.new("Part", player.Character)
muzzle.Anchored = false
muzzle.CanCollide = false
muzzle.TopSurface = 0
muzzle.BottomSurface = 0
muzzle.FormFactor = "Custom"
muzzle.Size = Vector3.new(0,0,0)
muzzle.Transparency = 1
local casething = Instance.new("Part", player.Character)
casething.Anchored = false
casething.CanCollide = false
casething.TopSurface = 0
casething.BottomSurface = 0
casething.FormFactor = "Custom"
casething.Size = Vector3.new(0.5,0.3,0.7)
casething.BrickColor = BrickColor.new("Really black")
local control = Instance.new("Weld", controlpart)
control.Part0 = player.Character.Head
control.Part1 = controlpart
control.C0 = CFrame.new(0,0,1)
local muzweld = Instance.new("Weld", controlpart)
muzweld.Part0 = player.Character.Head
muzweld.Part1 = muzzle
muzweld.C0 = CFrame.new(0,0.2,-1.4)
local ctweld = Instance.new("Weld", controlpart)
ctweld.Part0 = player.Character.Head
ctweld.Part1 = casething
ctweld.C0 = CFrame.new(0,0,0.1)
local muzflash = Instance.new("PointLight", muzzle)
muzflash.Range = 10
muzflash.Color = Color3.new(1,0.8,0)
muzflash.Enabled = false
for i = 0,300,60 do
        local mpart = Instance.new("Part", player.Character)
        mpart.Anchored = false
        mpart.CanCollide = false
        mpart.TopSurface = 0
        mpart.BottomSurface = 0
        mpart.FormFactor = "Custom"
        mpart.Size = Vector3.new(0.2,1,0.2)
        mpart.BrickColor = BrickColor.new("Black")
        Instance.new("CylinderMesh",mpart)
        local weld = Instance.new("Weld", mpart)
        weld.Part0 = controlpart
        weld.Part1 = mpart
        weld.C0 = CFrame.new(0,0,-1) * CFrame.Angles(math.rad(90),0,0) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,0.2)
end
local dpart = Instance.new("Part", player.Character)
dpart.Anchored = false
dpart.CanCollide = false
dpart.TopSurface = 0
dpart.BottomSurface = 0
dpart.FormFactor = "Custom"
dpart.Size = Vector3.new(0.7,0.2,0.7)
dpart.BrickColor = BrickColor.new("Black")
Instance.new("CylinderMesh",dpart).Scale = Vector3.new(1,0.6,1)
local dweld = Instance.new("Weld", dpart)
dweld.Part0 = controlpart
dweld.Part1 = dpart
dweld.C0 = CFrame.new(0,0,-0.9) * CFrame.Angles(math.rad(90),0,0)
local dpart = Instance.new("Part", player.Character)
dpart.Anchored = false
dpart.CanCollide = false
dpart.TopSurface = 0
dpart.BottomSurface = 0
dpart.FormFactor = "Custom"
dpart.Size = Vector3.new(0.7,0.2,0.7)
dpart.BrickColor = BrickColor.new("Black")
Instance.new("CylinderMesh",dpart).Scale = Vector3.new(1,0.6,1)
local dweld = Instance.new("Weld", dpart)
dweld.Part0 = controlpart
dweld.Part1 = dpart
dweld.C0 = CFrame.new(0,0,-1.3) * CFrame.Angles(math.rad(90),0,0)
bin.Selected:connect(function()
        local asd = 1
        local tcount = 0
        if player.Character.Head:FindFirstChild("face") then player.Character.Head.face:Destroy() end
        while true do
                local dt = wait()
                tcount = tcount + dt
                asd = 1+math.cos((math.pi/2)+(tcount*4))*1.1
                if tcount >= 0.5 then
                        break
                end
                control.C0 = CFrame.new(0,0,asd)
        end
        control.C0 = CFrame.new()
        local asd = 0.1
        while true do
                local dt = wait()
                asd = asd + dt
                if asd >= 0.3 then
                        break
                end
                ctweld.C0 = CFrame.new(0,0,asd)
        end
        ctweld.C0 = CFrame.new(0,0,0.3)
        selected = true
end)
bin.Deselected:connect(function()
        selected = false
        if spin then
                sping:Stop()
                staspin:Stop()
                bang:Stop()
                clicking:Stop()
                stospin:Play()
        end
        spin = false
        mousedown = false
        local asd = 0.3
        while true do
                local dt = wait()
                asd = asd - dt
                if asd <= 0.1 then
                        break
                end
                ctweld.C0 = CFrame.new(0,0,asd)
        end
        ctweld.C0 = CFrame.new(0,0,0.1)
        local asd = 0
        local tcount = 0
        while true do
                local dt = wait()
                tcount = tcount + dt
                asd = 1+math.sin(((tcount-0.1)*4)-(math.pi/2))*1.1
                if tcount >= 0.48 then
                        break
                end
                control.C0 = CFrame.new(0,0,asd)
        end
        control.C0 = CFrame.new(0,0,1)
        face:clone().Parent = player.Character.Head
end)
mouse.KeyDown:connect(function(key)
        if key == "q" and selected then
                spin = true
                staspin:Play()
                coroutine.wrap(function()
                        wait(0.8)
                        if spin then
                                staspin:Stop()
                                sping:Play()
                        end
                end)()
        elseif key == "r" and selected then
                
                swagbullets = 200
        end
end)
mouse.KeyUp:connect(function(key)
        if key == "q" and selected and spin then
                spin = false
                mousedown = false
                sping:Stop()
                staspin:Stop()
                bang:Stop()
                clicking:Stop()
                stospin:Play()
        end
end)
mouse.Button1Down:connect(function()
        if spin then
                mousedown = true
                bang:Play()
        end
end)
mouse.Button1Up:connect(function()
        mousedown = false
        bang:Stop()
        clicking:Stop()
end)
function gethums(part)
        local hums = {}
        local function scanparent(asd)
                local humscan = {}
                for _,v in pairs(asd.Parent:GetChildren()) do
                        if v:IsA("Humanoid") then
                                table.insert(humscan,v)
                        end
                end
                return asd.Parent, humscan
        end
        local currentasd = part
        while true do
                if currentasd.Parent ~= workspace then
                        local parent, humscan = scanparent(currentasd)
                        hums = {unpack(hums),unpack(humscan)}
                        currentasd = parent
                else
                        break
                end
        end
        return hums
end
--FireProjectile(player.Character.Head.Position, player.Character.Head.Velocity+mouse.UnitRay.Direction*400, function(self,...) return false end, {player.Character})
while true do
        local dt = wait()
        local ax,ay,az = player.Character.Torso.CFrame:toEulerAnglesXYZ()
        local cx,cy,cz = CFrame.new(Vector3.new(),mouse.UnitRay.Direction):toEulerAnglesXYZ()
        neck.C0 = CFrame.new(0,1,0)*(CFrame.Angles(ax,ay,az):inverse())*CFrame.Angles(cx,cy,cz)*CFrame.Angles(-math.pi/2,0,math.pi)
        if spin then
                control.C0 = control.C0 * CFrame.Angles(0,0,10*dt)
        end
        if mousedown and spin then
                downtime = downtime + dt
        else
                downtime = 0
        end
        if downtime >= 0.05 then
                muzflash.Enabled = true
                for i = 0.05, downtime, 0.05 do
                        if swagbullets > 0 then
                                downtime = downtime - 0.05
                                swagbullets = swagbullets - 1
                                FireProjectile((muzzle.CFrame).p, player.Character.Head.Velocity+((Vector3.new(math.random()-0.5,math.random()-0.5,math.random()-0.5)*0.05)+mouse.UnitRay.Direction)*250, function(self,opart)
                                        local humans = gethums(opart)
                                        for _,hum in pairs(humans) do
                                                hum:TakeDamage(5)
                                        end
                                        return false
                                end, {player.Character}, function(p1,p2)
                                        asdpart = Instance.new("Part")
                                        asdpart.Anchored = true
                                        asdpart.CanCollide = false
                                        asdpart.TopSurface = 0
                                        asdpart.BottomSurface = 0
                                        asdpart.FormFactor = "Custom"
                                        asdpart.Size = Vector3.new(1,1,1)
                                        asdpart.BrickColor = BrickColor.new("Bright yellow")
                                        asdpart.Reflectance = 0.5
                                        asdpart.CFrame = CFrame.new(p1:Lerp(p2,0.5),p2)+Vector3.new(100,100,0)
                                        local asdmesh = Instance.new("BlockMesh",asdpart)
                                        asdmesh.Scale = Vector3.new(0.1,0.1,(p1-p2).magnitude)
                                        asdmesh.Offset = ((asdpart.CFrame - asdpart.CFrame.p):inverse() * CFrame.new(-100,-100,0)).p
                                        asdpart.Parent = workspace
                                        coroutine.wrap(function()
                                                local noobfacepartlol = asdpart
                                                wait()
                                                if noobfacepartlol then noobfacepartlol:Destroy() end
                                        end)()
                                        return asdpart
                                end)
                        else
                                if not clicking.IsPlaying then
                                        clicking:Play()
                                        bang:Stop()
                                end
                        end
                end
                coroutine.wrap(function()
                        if swagbullets <= 0 then
                                muzflash.Enabled = false
                        end
                        wait()
                        if swagbullets > 0 then
                                muzflash.Enabled = false
                                local scr = Instance.new("BillboardGui", muzzle)
                                scr.Adornee = muzzle
                                scr.Size = UDim2.new(2, 0, 2, 0)
                                scr.StudsOffset = Vector3.new(0,0,0.2)
                                scr.Name = "flash"
                                local pic = Instance.new("ImageLabel", scr)
                                pic.Image = "http://www.roblox.com/asset/?id=62701218"
                                pic.Size = UDim2.new(1, 0, 1, 0)
                                pic.BorderSizePixel = 0
                                pic.BackgroundTransparency = 1
                                game:GetService("Debris"):AddItem(scr,0.1)
                                local case = Instance.new("Part", player.Character)
                                case.Name = "BulletShell"
                                case.Anchored = false
                                case.CanCollide = true
                                case.TopSurface = "Smooth"
                                case.BottomSurface = "Smooth"
                                case.FormFactor = "Custom"
                                case.Size = Vector3.new(0.2, 0.4, 0.2)
                                case.Elasticity = 0
                                case.Reflectance = 0.1
                                case.BrickColor = BrickColor.new("Bright yellow")
                                case.CFrame = player.Character.Head.CFrame * CFrame.new(0,0,0.9) * CFrame.Angles(0,0,math.pi/2)
                                case.Velocity = Vector3.new(0,11,0)-mouse.UnitRay.Direction*7
                                local casemesh = Instance.new("CylinderMesh", case)
                                casemesh.Scale = Vector3.new(0.7, 0.7, 0.7)
                                game:GetService("Debris"):AddItem(case,0.6)
                                ctweld.C0 = CFrame.new(0,0,0.7)
                                wait()
                                ctweld.C0 = CFrame.new(0,0,0.3)
                        end
                end)()
        end
        for i,pjt in pairs(pjts) do
                pjt[2] = pjt[1]
                pjt[1] = pjt[1] + pjt[3]*dt
                pjt[3] = pjt[3] - Vector3.new(0,196.2,0)*dt
                local pjtray = Ray.new(pjt[2],pjt[1]-pjt[2])
                local pjtig = {unpack(pjt[5]),pjt[7]}
                for _,opjt in pairs(pjts) do
                        if opjt[7] then
                                table.insert(pjtig,opjt[7])
                        end
                end
                local hpart, hpos = workspace:FindPartOnRayWithIgnoreList(pjtray, pjtig, false)
                if hpart and hpos then
                        local stillgoes = pjt[4](pjt,hpart,hpos,pjt[3])
                        if stillgoes then
                                hpos = pjt[1]
                        else
                                pjts[i] = nil
                        end
                end
                if pjt[6] then
                        pjt[7] = pjt[6](pjt[2],hpos)
                else
                        pjt[7] = Instance.new("Part")
                        pjt[7].Anchored = true
                        pjt[7].CanCollide = false
                        pjt[7].TopSurface = 0
                        pjt[7].BottomSurface = 0
                        pjt[7].FormFactor = "Custom"
                        pjt[7].Size = Vector3.new(1,1,1)
                        pjt[7].CFrame = CFrame.new(pjt[2]:Lerp(hpos,0.5),hpos)+Vector3.new(100,100,0)
                        local asdmesh = Instance.new("BlockMesh",pjt[7])
                        asdmesh.Scale = Vector3.new(0.2,0.2,(pjt[2]-hpos).magnitude)
                        asdmesh.Offset = ((pjt[7].CFrame - pjt[7].CFrame.p):inverse() * CFrame.new(-100,-100,0)).p
                        pjt[7].Parent = workspace
                        coroutine.wrap(function()
                                local noobfacepartlol = pjt[7]
                                wait()
                                if noobfacepartlol then noobfacepartlol:Destroy() end
                        end)()
                end
                if pjt[1].y < -300 then
                        pjts[i] = nil
                end
        end
end
