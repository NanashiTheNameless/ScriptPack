if script.ClassName~="LocalScript" then wait(math.huge) end
--[[ solve it]]
peron = game.Players["TheKorbloxCore"]
Player=peron
player=peron
person=peron
Person=peron
script.Parent=peron
FF=false
FF2=Instance.new("ForceField")
--if peron.Backpack:findFirstChild("Chair") == nil then 
--        local h = Instance.new("HopperBin") 
--        h.Name = "Chair" h.Parent = peron.Backpack 
--        script.Parent = h 
--        p = Instance.new("IntValue") 
--        p.Name = "Damage" p.Parent = h 
--        p.Value = 75 
--        wait(math.huge)
--        end 
range = 50 
speed = 15 
function chair()
local h = Instance.new("HopperBin") 
FIRE=false
h.Name = "Chair" h.Parent = peron.Backpack 
p = Instance.new("IntValue") 
p.Name = "Damage" p.Parent = h 
p.Value = 100 
wait(1) 
local bin = peron.Backpack.Chair 
me1 = peron me = peron.Character 
distance = 3/2 
follow = false 
damage = bin.Damage 
p = Instance.new("IntValue") 
p.Name = "Safe" p.Parent = me 
if me:findFirstChild("part1") == nil then 
        local part1 = Instance.new("Seat") 
        part1.BrickColor = BrickColor.new("Black") 
        part1.Transparency = 0 part1.TopSurface = 0 part1.BottomSurface = 0 part1.Reflectance = math.huge part1.Locked = true part1.Size = Vector3.new(1,1,1) part1.Anchored = false part1.Shape = 0 part1.CanCollide = false part1.Name = "part1" 
        local mesh = Instance.new("SpecialMesh") mesh.Parent = part1 part1.Reflectance=math.huge mesh.Scale = Vector3.new(2,1.75,2) mesh.MeshType = "Sphere" 
        bp = Instance.new("BodyPosition") bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
        bp.Parent = part1 
        bp.position=peron.Character.Torso.Position
        part1.CFrame=peron.Character.Torso.CFrame
        local bg = Instance.new("BodyGyro") bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) bg.Parent = part1 
        main = part1:Clone() 
        local part2 = Instance.new("Part") part2.BrickColor = BrickColor.new("White") part2.Transparency = 0 part2.TopSurface = 0 part2.BottomSurface = 0 part2.Locked = true part2.Size = Vector3.new(1,1,1) part2.Anchored = false part2.Shape = 0 part2.CanCollide = false part2.Name = "part2" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part2 mesh.Scale = Vector3.new(3,0.75,3) 
        local part3 = Instance.new("Part") part3.BrickColor = BrickColor.new("White") part3.Transparency = 0 part3.TopSurface = 0 part3.BottomSurface = 0 part3.Locked = true part3.Size = Vector3.new(1,0.5,1) part3.Anchored = false part3.Shape = 0 part3.CanCollide = false part3.Name = "part3" 
        local mesh = Instance.new("CylinderMesh") mesh.Parent = part3 mesh.Scale = Vector3.new(2.5,0.5,2.5) 
        local part4 = Instance.new("Part") part4.BrickColor = BrickColor.new("White") part4.Transparency = 0 part4.TopSurface = 0 part4.BottomSurface = 0 part4.Locked = true part4.Size = Vector3.new(1,1,1) part4.Anchored = false part4.Shape = 0 part4.CanCollide = false part4.Name = "part4" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part4 mesh.Scale = Vector3.new(3,3,0.5) 
        local part5 = Instance.new("Part") part5.BrickColor = BrickColor.new("White") part5.Transparency = 0 part5.TopSurface = 0 part5.BottomSurface = 0 part5.Locked = true part5.Size = Vector3.new(1,0.5,1) part5.Anchored = false part5.Shape = 0 part5.CanCollide = false part5.Name = "part5" 
        local mesh = Instance.new("CylinderMesh") mesh.Parent = part5 mesh.Scale = Vector3.new(1.5,0.5,1.5) 
        local part6 = Instance.new("Part") part6.BrickColor = BrickColor.new("Black") part6.Transparency = 0 part6.TopSurface = 0 part6.BottomSurface = 0 part6.Locked = true part6.Size = Vector3.new(1,1,1) part6.Anchored = false part6.Shape = 0 part6.CanCollide = false part6.Name = "part6" 
        local mesh1 = Instance.new("SpecialMesh") mesh1.Parent = part6 part6.Reflectance=math.huge mesh1.Scale = Vector3.new(1,1,1) mesh1.MeshType = "Sphere" 
        local part7 = Instance.new("Part") part7.BrickColor = BrickColor.new("White") part7.Transparency = 0 part7.TopSurface = 0 part7.BottomSurface = 0 part7.Locked = true part7.Size = Vector3.new(1,1,1) part7.Anchored = false part7.Shape = 0 part7.CanCollide = false part7.Name = "part7" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part7 mesh.Scale = Vector3.new(1,0.25,1) 
        local part8 = Instance.new("Part") part8.BrickColor = BrickColor.new("White") part8.Transparency = 0 part8.TopSurface = 0 part8.BottomSurface = 0 part8.Locked = true part8.Size = Vector3.new(1,1,1) part8.Anchored = false part8.Shape = 0 part8.CanCollide = false part8.Name = "part8" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part8 mesh.Scale = Vector3.new(1,0.25,1) 
        local part9 = Instance.new("Part") part9.BrickColor = BrickColor.new("White") part9.Transparency = 0 part9.TopSurface = 0 part9.BottomSurface = 0 part9.Locked = true part9.Size = Vector3.new(1,1,1) part9.Anchored = false part9.Shape = 0 part9.CanCollide = false part9.Name = "part9" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part9 mesh.Scale = Vector3.new(1,0.25,3) 
        local part10 = Instance.new("Part") part10.BrickColor = BrickColor.new("White") part10.Transparency = 0 part10.TopSurface = 0 part10.BottomSurface = 0 part10.Locked = true part10.Size = Vector3.new(1,1,1) part10.Anchored = false part10.Shape = 0 part10.CanCollide = false part10.Name = "part10" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part10 mesh.Scale = Vector3.new(1,0.25,3) 
        part11 = Instance.new("Part") part11.BrickColor = BrickColor.new("Black") part11.Transparency = 0 part11.TopSurface = 0 part11.BottomSurface = 0 part11.Locked = true part11.Size = Vector3.new(1,1,1) part11.Anchored = false part11.Shape = 0 part11.CanCollide = false part11.Name = "part11" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part11 mesh.Scale = Vector3.new(0.2,0.2,0.5) 
        part12 = Instance.new("Part") part12.BrickColor = BrickColor.new("Black") part12.Transparency = 0 part12.TopSurface = 0 part12.BottomSurface = 0 part12.Locked = true part12.Size = Vector3.new(1,1,1) part12.Anchored = false part12.Shape = 0 part12.CanCollide = false part12.Name = "part12" 
        local mesh = Instance.new("BlockMesh") mesh.Parent = part12 mesh.Scale = Vector3.new(0.2,0.2,0.5) main.Parent = me part2.Parent = me part3.Parent = me part4.Parent = me part5.Parent = me part6.Parent = me part7.Parent = me part8.Parent = me part9.Parent = me part10.Parent = me part11.Parent = me part12.Parent = me 
        
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part2 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, -0.5, 0) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part3 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part4 weld.C1 = CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) * CFrame.new(0, -2, -0.75) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part5 weld.C1 = CFrame.fromEulerAnglesXYZ(-4.815, 0, 0) * CFrame.new(0, -2, -1) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part6 weld.C1 = CFrame.fromEulerAnglesXYZ(-4.815, 0, 0) * CFrame.new(0, -2, -1.25) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part7 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(1.75, -0.5, 0) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part8 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-1.75, -0.5, 0) 
        
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part9 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-1.5, -1.875, 0) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part10 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(1.5, -1.875, 0) 
        
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part11 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(2, -0.5, 0.75) 
        local weld = Instance.new("Weld") weld.Parent = main weld.Part0 = main weld.Part1 = part12 weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-2, -0.5, 0.75) 
end 
beam=Instance.new("Part")
beam1=Instance.new("Part")
function wire(pos1,pos2,ref)
local P = beam
local P2 = pos1
local P1 = pos2
P.Parent=peron
P.Name = "Beam" 
local Place0 = CFrame.new(P2.x,P2.y,P2.z) 
P.formFactor = 0 
--P.Size = Vector3.new(1,1,(P1 - P2).magnitude) 
P.Size=Vector3.new(0.1,0.1,0.1)
P.CFrame = CFrame.new((P1 + P2)/2,Place0.p) 
P.Parent = player.Character
P.BrickColor = BrickColor.new("Bright blue")
P.Transparency = 0.5
P.Reflectance = ref
P.Anchored = true 
P.CanCollide = false  
P.TopSurface = "Smooth"
P.BottomSurface = "Smooth"
local m = Instance.new("SpecialMesh")
m.Parent = P
m.MeshType = "Brick"
m.Scale = Vector3.new(.1,.1,(P1 - P2).magnitude) 
return P
end 
function wire2(pos1,pos2,ref)
local P = beam1
local P2 = pos1
local P1 = pos2
P.Name = "Beam" 
local Place0 = CFrame.new(P2.x,P2.y,P2.z) 
P.formFactor = 0 
P.Parent=peron
--P.Size = Vector3.new(1,1,(P1 - P2).magnitude) 
P.Size=Vector3.new(0.1,0.1,0.1)
P.CFrame = CFrame.new((P1 + P2)/2,Place0.p) 
P.Parent = player.Character
P.BrickColor = BrickColor.new("Bright blue")
P.Transparency = 0.5
P.Reflectance = ref
P.Anchored = true 
P.CanCollide = false  
P.TopSurface = "Smooth"
P.BottomSurface = "Smooth"
local m = Instance.new("SpecialMesh")
m.Parent = P
m.MeshType = "Brick"
m.Scale = Vector3.new(.1,.1,(P1 - P2).magnitude) 
return P
end 
function Balefire(pos, obj) 
        hum = obj.Parent:findFirstChild("Humanoid") 
        if hum ~= nil then 
        local P = Instance.new("Part") 
        P.Name = "Laser" 
        local Place0 = me.part12.CFrame 
        P.formFactor = 0 
        P.Parent = game.Workspace 
        P.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1)) 
        P.Transparency = 0.25 P.Reflectance = 0.25 P.Anchored = true P.formFactor = "Plate" P.CanCollide = false 
        pl = Instance.new("BlockMesh") 
        pl.Scale = Vector3.new(0.1,0.2,1) 
        pl.Parent = P 
        P.Size = Vector3.new(1,0.4,(Place0.p - pos).magnitude) 
        P.CFrame = CFrame.new((Place0.p + pos)/2, Place0.p) 
        if hum.Health <= 100 then 
                hum.Health = hum.Health - damage.Value else hum.Health = 0 end wait(0.01) P:Remove() end 
        end 
        function Balefire1(pos, obj) 
                hum = obj.Parent:findFirstChild("Humanoid") 
                if hum ~= nil then 
                local P = Instance.new("Part") P.Name = "Laser" 
                local Place0 = me.part11.CFrame P.formFactor = 0 P.Parent = game.Workspace 
                P.Color = Color3.new(math.random(0,1),math.random(0,1),math.random(0,1)) 
                P.Transparency = 0.25 P.Reflectance = 0.25 P.Anchored = true P.formFactor = "Plate" P.CanCollide = false 
                pl = Instance.new("BlockMesh") pl.Scale = Vector3.new(0.1,0.2,1) pl.Parent = P 
                P.Size = Vector3.new(1,0.4,(Place0.p - pos).magnitude) P.CFrame = CFrame.new((Place0.p + pos)/2, Place0.p) 
                if hum.Health <= 100 then hum.Health = hum.Health - damage.Value else hum.Health = 0 end wait(0.01) P:Remove() end 
        end 
        function findNearestTorso(pos) 
                local list = game.Workspace:getChildren() 
                local torso = nil 
                local dist = range 
                local temp = nil 
                local human = nil 
                local temp2 = nil 
                for x = 1, #list do 
                temp2 = list[x] 
                local safe = temp2:findFirstChild("Safe") 
                        if (temp2.className == "Model") and (safe == nil) and damage.Value > 0 then 
                        temp = temp2:findFirstChild("Torso") human = temp2:findFirstChild("Humanoid") 
                                if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then 
                                        if (temp.Position - pos).magnitude < dist then 
                                        torso = temp dist = (temp.Position - pos).magnitude 
                                end 
                        end 
                end 
                if (temp2.className == "Model") and damage.Value <= 0 then 
                        temp = temp2:findFirstChild("Torso") 
                        human = temp2:findFirstChild("Humanoid") 
                        if (temp ~= nil) and (human ~= nil) and (human.Health < 100) then 
                                if (temp.Position - pos).magnitude < dist then 
                                torso = temp 
                                dist = (temp.Position - pos).magnitude 
                        end 
                end 
        end 
end 
return torso 
end 
function onButton1Down(mouse) 
        local player = peron 
        main = me.part1 
        main.Anchored = false 
        me1 = peron 
        follow = true 
        while follow == true do 
                distance = 3/2 mousehit = mouse.Hit.p if (main.BodyPosition.position - mousehit).magnitude >speed then 
                        main_mousehit = (main.BodyPosition.position - mousehit).unit*speed 
                                else 
                        main_mousehit = (main.BodyPosition.position - mousehit).unit*1 
                end 
                start1 = main.BodyPosition.position-main_mousehit 
                main.BodyPosition.position = Vector3.new(start1.x, start1.y, start1.z) 
                local dir = (mousehit - main.Position).unit 
                local spawnPos = main.Position 
                local pos = spawnPos + (dir * 1) 
                local dir = (pos - main.Position) 
                local Angle = ((mouse.ViewSizeX/2)-mouse.X)/100 
                if math.abs(Angle) > 1 then if Angle > 0 then Angle = Angle - 1 else Angle = Angle + 1 end 
                
                Angle = Angle * math.abs(26) / 70 main.BodyGyro.cframe = CFrame.new(pos, pos + dir) * CFrame.fromEulerAnglesXYZ(0, 0, Angle) else main.BodyGyro.cframe = CFrame.new(pos, pos + dir) end 
                wait() end end 
function onButton1Up(mouse) 
        main = me.part1 
        main.Anchored = false
        follow = false 
end 
local msg = Instance.new("Hint") 
        function say(tehmessage) 
                msg.Parent = me1 
                msg.Text = tehmessage 
                wait(2) 
                msg.Parent = nil 
                end 
                
                function onKeyUp(key,mouse)
                        if (key=="e") then FIRE=false end
                end
                
                function onKeyDown(key,mouse) 
                        if (key~=nil) then 
                                if (key=="f") then speed = speed+1 say("speed: "..speed) 
                                        elseif (key=="c") then 
                                speed = speed-1 say("speed: "..speed) 
                                        elseif (key=="g") then 
                                range = range+1 say("range: "..range)
                                        elseif (key=="x") then
                                FF3=Instance.new("ForceField",peron.Character)
                                main.Anchored=true
                                X=Instance.new("Explosion")
                                X.Parent=workspace
                                X.BlastPressure=math.huge 
                                X.BlastRadius=10
                                X.Position=peron.Character.Torso.Position
                                while X.Parent do wait() end
                                wait()
                                FF3:remove()
                                main.Anchored=false
                                        elseif (key=="v") then 
                                if range == 0 then return end 
                                range = range-1 say("range: "..range) 
                                        elseif (key=="h") then 
                                damage.Value = damage.Value+1 say("damage: "..damage.Value) 
                                        elseif (key=="m") then
                                main.CFrame=peron.Character.Torso.CFrame
                                main.BodyPosition.position=peron.Character.Torso.Position
                                        elseif (key=="n") then
                                FF=not FF
                                if FF then FF2.Parent=peron.Character else FF2.Parent=nil end
                                        elseif (key=="b") then 
                                damage.Value = damage.Value-1 say("damage: "..damage.Value) 
                                        elseif (key=="r") then 
                                speed = 2 range = 0 damage.Value = 0 say("speed: "..speed) say("damage: "..damage.Value) say("range: "..range) 
                                        elseif (key=="e") then
                                        FIRE=true
                                        while FIRE do
                                                wire(part11.Position,mouse.Hit.p,math.huge)
                                                wire2(part12.Position,mouse.Hit.p,math.huge)
                                                if mouse.Target then
                                                mouse.Target:breakJoints()
                                                if mouse.Target:getMass()<1000 then mouse.Target.Anchored=false end
                                                end
                                                wait()
                                        end
                                        beam.Parent=nil
                                        beam1.Parent=nil
                                        elseif (key=="q") then 
                                local target = findNearestTorso(me.Torso.Position) 
                                if target ~= nil then 
                                        baned = game.Players:children() 
                                        for x = 1, #baned do 
                                                if baned[x].Name == peron.Name then 
                                                        head = target.Parent:findFirstChild("Humanoid") 
                                                        if head.Health ~= 0 then 
                                                        tag = Instance.new("ObjectValue") tag.Value = baned[x] tag.Name = "creator" tag.Parent = head 
                                                        Balefire(target.Position, target) Balefire1(target.Position, target) 
                                                end 
                                        end 
                                end 
                        end 
                end 
        end 
end 
function onSelected(mouse) 
        mouse.Icon = "rbxasset://textures\\GunCursor.png" 
        mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
        mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
        mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end) 
        mouse.KeyUp:connect(function(key) onKeyUp(key,mouse) end)
end 
bin.Selected:connect(onSelected) -- LEGO
end
peron.CharacterAdded:connect(function() wait() chair() end)
chair()
local HINT=Instance.new("ScreenGui",peron.PlayerGui)
local Text=Instance.new("Frame",HINT)
--Instance.new("ForceField",peron.Character)
Text.Position=UDim2.new(0.290000057, 0, 0.00999999978, 0)
Text.Size=UDim2.new(0.45, 0, 0.0399999991, 0)
--Text.Style="RobloxRound"
Text.BackgroundTransparency=0.5
local INNER=Instance.new("TextLabel")
INNER.Parent=Text
INNER.Position=UDim2.new(0.5,0,0.5,0)
INNER.TextColor3=Color3.new(1,1,1)
while wait() do
INNER.Text="HoverChair OS | F Speed: "..speed.." C | To Fire YAR LAZERS, press Q. | N for FF, M to call "
Text.Parent=HINT
INNER.Parent=Text
HINT.Parent=peron.PlayerGui
end
