--.
 
 
                                                                                                                                                                                                                                                              
script:Destroy()
wait()
do
local player = game.Players.LocalPlayer
function Spawn()
local tool2 = game:GetService("InsertService"):LoadAsset(90718505):GetChildren()[1]
tool2.Parent = player.Backpack
tool2.ExponentialRocketLauncher:Remove()
tool2.GunCursor:Remove()
tool2.Name = "Shock Cannon"
tool2.Handle.MotherRocket:Remove()
local enabled = tool2.Enabled
local mouse2
local collided = false
local ready = true
local target
local gui = Instance.new("BillboardGui",player.PlayerGui)
gui.Size = UDim2.new(0,25,0,25)
gui.AlwaysOnTop = true
image = Instance.new("ImageLabel",gui)
image.Size = gui.Size
image.Image = "rbxasset://textures\\mouse2LockedCursor.png"
image.BackgroundTransparency = 1
function Shock(orb,charge)
        gui.Size = UDim2.new(0,0,0,0)
        target = nil
        neworb = orb:clone()
        orb:Remove()
        neworb.BodyVelocity:Remove()
        neworb.Anchored = true
        cf = neworb.CFrame
        neworb.Size = Vector3.new(charge/5,charge/5,charge/5)
        neworb.Material = "Plastic"
        neworb.Mesh:Remove()
        neworb.CFrame = cf
        neworb.Transparency = 1 - (charge/500)
        neworb.Touched:connect(function(hit)
                hum = hit.Parent:FindFirstChild("Humanoid")
                if hum --[[and hit.Name=="Torso"]] then
                        tag = Instance.new("ObjectValue")
                        tag.Name = "creator"
                        tag.Value = player
                        tag.Parent = hum
                        hum:TakeDamage(charge*(hum.MaxHealth/500))
                end
        end)
        neworb.Parent = game.Workspace
        game.Debris:AddItem(neworb,1)
        for i=1,5 do
                for i=1,3 do
                        p = Instance.new("Part",game.Workspace)
                        p.FormFactor = "Custom"
                        p.TopSurface = "Smooth"
                        p.BottomSurface = "Smooth"
                        p.BrickColor = neworb.BrickColor
                        p.Size = Vector3.new(0.2,0.2,charge/30)
                        p.Transparency = neworb.Transparency-0.25
                        p.Anchored = true
                        p.CanCollide = false
                        p2 = p:clone()
                        p2.Parent = game.Workspace
                        p3 = p:clone()
                        p3.Parent = game.Workspace
                        p4 = p:clone()
                        p4.Parent = game.Workspace
                        p.CFrame = neworb.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-math.pi*20,math.pi*20)/10,math.random(-math.pi*20,math.pi*20)/10,math.random(-math.pi*20,math.pi*20)/10) * CFrame.new(0,0,charge/60)
                        p2.CFrame = p.CFrame * CFrame.new(0,0,charge/60) * CFrame.fromEulerAnglesXYZ(math.random(-30,30)/10,math.random(-30,30)/10,math.random(-30,30)/10)  * CFrame.new(0,0,charge/60)
                        p3.CFrame = p2.CFrame * CFrame.new(0,0,charge/60) * CFrame.fromEulerAnglesXYZ(math.random(-30,30)/10,math.random(-30,30)/10,math.random(-30,30)/10)  * CFrame.new(0,0,charge/60)
                        p4.CFrame = p3.CFrame * CFrame.new(0,0,charge/60) * CFrame.fromEulerAnglesXYZ(math.random(-30,30)/10,math.random(-30,30)/10,math.random(-30,30)/10)  * CFrame.new(0,0,charge/60)
                        game.Debris:AddItem(p,0.2)
                        game.Debris:AddItem(p2,0.2)
                        game.Debris:AddItem(p3,0.2)
                        game.Debris:AddItem(p4,0.2)
                end
                wait(0.2)
        end
end
function Launch(charge,orb,weld)
        weld:Remove()
        vel = Instance.new("BodyVelocity",orb)
        orb.CFrame = CFrame.new(orb.Position,orb.Position+tool2.Handle.CFrame.lookVector)
        orb.Parent = game.Workspace
        collided = false
        orb.Touched:connect(function(hit)
                if hit.Parent==tool2 or hit.Parent==tool2.Parent or hit.Parent:IsA("Hat") or hit.Name=="Handle" then
                        return
                end
                collided = true
                Shock(orb,charge)
                orb:Remove()
        end)
        vel.velocity = CFrame.new(orb.Position,mouse2.Hit.p).lookVector * (charge * 1.5)
        game.Debris:AddItem(orb,30)
        wait()
        if target then
                waittime = charge/20
                timewaited = 0
                while true do
                        if collided==true or orb.Parent==nil then
                                break
                        end
                        timewaited = timewaited + 0.1
                        if timewaited>=waittime then
                                ready = true
                        end
                        part = game.Workspace:FindPartOnRay(Ray.new(orb.Position,target.Position),orb)
                        if not part or part.Parent==target.Parent or part.Parent:FindFirstChild("Humanoid") then
                                vel.velocity = CFrame.new(orb.Position,target.Position).lookVector * (charge * 1.5)
                        end
                        wait()
                end
        end
end
function Clicked()
        if ready==false then
                return
        end
        enabled = true
        ready = false
        orb = Instance.new("Part",tool2)
        orb.BrickColor = BrickColor.new("Bright yellow")
        orb.Shape = 0
        orb.Size = Vector3.new(1,1,1)
        orb.TopSurface = "Smooth"
        orb.BottomSurface = "Smooth"
        orb.CanCollide = false
        orb.Material = "Foil"
        orb.Name = "Ball"
        weld = Instance.new("Weld",orb)
        weld.Part0 = tool2.Handle
        weld.Part1 = orb
        weld.C0 = CFrame.new(0,0,-1.3)
        mesh = Instance.new("SpecialMesh",orb)
        mesh.MeshType = "Sphere"
        mesh.Scale = Vector3.new(0.01,0.01,0.01)
        charge = 0
        while true do
                if charge<100 then
                        charge = charge + 1
                end
                mesh.Scale = Vector3.new(charge/100,charge/100,charge/100)
                weld.C0 = CFrame.new(0,0,-1.5-(charge/200)) * CFrame.fromEulerAnglesXYZ(math.random(-50,50)/10,math.random(-50,50)/10,math.random(-50,50)/10)
                p = Instance.new("Part",tool2)
                p.FormFactor = "Custom"
                p.TopSurface = "Smooth"
                p.BottomSurface = "Smooth"
                p.BrickColor = orb.BrickColor
                p.Size = Vector3.new(0.2,0.2,charge/60)
                p.Transparency = orb.Transparency-0.25
                p.Anchored = true
                p.CanCollide = false
                p.CFrame = orb.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-math.pi*20,math.pi*20)/10,math.random(-math.pi*20,math.pi*20)/10,math.random(-math.pi*20,math.pi*20)/10) * CFrame.new(0,0,charge/120)
                pm = Instance.new("CylinderMesh",p)
                pm.Scale = Vector3.new(0.6,0.6,1)
                game.Debris:AddItem(p,0.1)
                if enabled==false then
                        print(charge)
                        Launch(charge,orb,weld)
                        break
                end
                wait(0.01)
        end
        wait(charge/20)
        ready = true
end
function Released()
        enabled = false
end
function Moved()
        if target and target.Parent then
                if target.Parent.Humanoid.Health<=0 then
                        target = nil
                end
        end
        if mouse2.Target and enabled==true then
                hum = mouse2.Target.Parent:FindFirstChild("Humanoid")
                torso = mouse2.Target.Parent:FindFirstChild("Torso")
                if hum and torso and hum.Health>0 then
                        target = torso
                        gui.Adornee = torso
                        gui.Size = UDim2.new(0,25,0,25)
                        gui.Parent = player.PlayerGui
                end
        end
end
function Equipped(m)
        enabled = false
        mouse2 = m
        mouse2.Button1Down:connect(Clicked)
        mouse2.Button1Up:connect(Released)
        mouse2.Move:connect(Moved)
        mouse2.Icon = "rbxasset://textures\\mouse2LockedCursor.png"
end
function Unequipped()
        gui:Remove()
end
tool2.Equipped:connect(Equipped)
tool2.Unequipped:connect(Unequipped)
end
player.CharacterAdded:connect(Spawn)
Spawn()
end
    