User = "yfc"




if script.Parent.className ~= "HopperBin" then
User2 = game.Players:FindFirstChild(User)
hop = Instance.new("HopperBin")
hop.Parent = User2.Backpack
hop.Name = "UltimateTool"
hop.TextureId = "http://www.roblox.com/asset/?id=31905069"
wait()
script.Parent = hop
wait()
end





selection = "Nothing"

debuggeriscool = false
debuggerislame = false



function onGui()
if script.Parent.Parent.Parent.className == "Player" then
a = script.Parent.Parent.Parent
dronenamelol = a.Name .. "'s Drone"
dronelol = game.Workspace:FindFirstChild(dronenamelol)
lassolol = a.Name .. "'s Lasso"
if a.PlayerGui:FindFirstChild("DroneGui") == nil then
Gui1 = Instance.new("ScreenGui")
Gui1.Parent = a.PlayerGui
Gui1.Name = "DroneGui"
wait()
Gui2 = Instance.new("Frame")
Gui2.Parent = Gui1
Gui2.Name = "Cool"
Gui2.BorderColor3 = Color3.new(1, 1, 1)
Gui2.BackgroundColor3 = Color3.new(0, 0, 0)
Gui2.Position = UDim2.new(0, 0, 0, -20)
Gui2.Size = UDim2.new(0, 500, 0, 20)

Gui3 = Instance.new("TextBox")
Gui3.Parent = Gui1
Gui3.Name = "CommandBar"
Gui3.BorderColor3 = Color3.new(1, 1, 1)
Gui3.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
Gui3.Position = UDim2.new(0, 0, 0.9, 0)
Gui3.Size = UDim2.new(0, 400, 0, 30)
Gui3.TextColor3 = Color3.new(1, 1, 1)
Gui3.Text = "Command Bar"

Gui4 = Instance.new("TextButton")
Gui4.Parent = Gui1
Gui4.Name = "Help"
Gui4.BorderColor3 = Color3.new(1, 1, 1)
Gui4.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
Gui4.Position = UDim2.new(0, 440, 0.9, 0)
Gui4.Size = UDim2.new(0, 40, 0, 30)
Gui4.TextColor3 = Color3.new(1, 1, 1)
Gui4.Text = "Help"

Gui5 = Instance.new("TextButton")
Gui5.Parent = Gui1
Gui5.Name = "Activate"
Gui5.BorderColor3 = Color3.new(1, 1, 1)
Gui5.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
Gui5.Position = UDim2.new(0, 400, 0.9, 0)
Gui5.Size = UDim2.new(0, 40, 0, 30)
Gui5.TextColor3 = Color3.new(1, 1, 1)
Gui5.Text = "Activate"
end
end
end



function onActivated()
a = script.Parent.Parent.Parent
if a.PlayerGui:FindFirstChild("DroneGui") ~= nil then
if a.PlayerGui.DroneGui:FindFirstChild("Activate") ~= nil then
if a.PlayerGui.DroneGui:FindFirstChild("CommandBar") ~= nil then



if a.PlayerGui.DroneGui.CommandBar.Text == "kill others" then
selection = "Nothing"
game.Workspace:BreakJoints()

elseif a.PlayerGui.DroneGui.CommandBar.Text == "day"then
selection = "Nothing"
game.Lighting.TimeOfDay = "12:00:00"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "kill ray" then
selection = "Kill"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "moustache ray" then
selection = "Moustache"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "corrode ray" then
selection = "CorrodeRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "wood ray" then
selection = "WoodRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "grass ray" then
selection = "GrassRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "shaggy hair ray" then
selection = "HairRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "glass ray" then
selection = "GlassRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "pri on" then
primode = "On"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "pri off" then
primode = "Off"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "reverse gravity ray" then
selection = "Degravitise"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "delete ray" then
selection = "Delete"



elseif a.PlayerGui.DroneGui.CommandBar.Text == "freeze ray" then
selection = "Freeze"



elseif a.PlayerGui.DroneGui.CommandBar.Text == "defence mode" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
defence = Instance.new("Explosion")
defence.Parent = game.Workspace
defence.Position = dronelol.Flyer.Torso.Position
end
end



elseif a.PlayerGui.DroneGui.CommandBar.Text == "move" then
selection = "Move"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "shrink bricks ray" then
selection = "Shrinker"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "seat gun" then
selection = "Seatgun"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "rage explode ray" then
selection = "RageExplode"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "spin ray" then
selection = "SpinPeople"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "impale mode" then
selection = "Sword"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "limb displace ray" then
selection = "LimbDisplacement"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "corpse ray" then
selection = "Corpse"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "black hole ray" then
selection = "BlackHole"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "purple ray" then
selection = "PurpleRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "green ray" then
selection = "GreenRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "yellow ray" then
selection = "YellowRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "red ray" then
selection = "RedRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "blue ray" then
selection = "BlueRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "giant ray" then
selection = "Giant"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "crush mode" then
selection = "Crush"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "sit ray" then
selection = "Sit"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "head rocket ray" then
selection = "HeadRocket"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "thaw ray" then
selection = "Thaw"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "forcefield ray" then
selection = "Forcefield"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "mesh ray" then
selection = "MeshInsert"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "disorient ray" then
selection = "Backwards"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "limb remove ray" then
selection = "Limbremove"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "duck ray" then
selection = "DuckRay"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "fire ray" then
selection = "Setonfiar"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "kick ray" then
selection = "Kick"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "shrink ray" then
selection = "Shrink"


elseif a.PlayerGui.DroneGui.CommandBar.Text == "up" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
cframe = dronelol.Flyer.Torso.CFrame
dronelol.Flyer.Torso.CFrame = CFrame.new(cframe.x, cframe.y + 8, cframe.z)
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "down" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
cframe = dronelol.Flyer.Torso.CFrame
dronelol.Flyer.Torso.CFrame = CFrame.new(cframe.x, cframe.y - 8, cframe.z)
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "night" then
selection = "Nothing"
game.Lighting.TimeOfDay = "00:00:00"




elseif a.PlayerGui.DroneGui.CommandBar.Text == "kick others" then
selection = "Nothing"
a = script.Parent.Parent.Parent
p = game.Players:GetChildren() 
for i = 1, #p do 
if p.Name ~= a.Name then 
p:remove() 
end 
end 



elseif a.PlayerGui.DroneGui.CommandBar.Text == "become drone" or a.PlayerGui.DroneGui.CommandBar.Text == "b" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
a = script.Parent.Parent.Parent
game.Workspace.CurrentCamera.CameraType = 3
game.Workspace.CurrentCamera.CameraSubject = dronelol.Flyer.Torso
guy = game.Workspace:FindFirstChild(a.Name)
if guy ~= nil then 
guy:Remove()
end
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn black" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Really black")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn white" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Institutional white")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn red" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Really red")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn green" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Lime green")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn purple" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Royal purple")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn blue" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
dronelol.Flyer.Torso.BrickColor = BrickColor.new("Really blue")
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn invisible" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
dronelol.Flyer.Torso.Transparency = 1
dronelol.Flyer.Torso.Sparkles.Enabled = false
selection = "Nothing"
dronelol.Flyer.Torso.Fire.Enabled = false
end
end


elseif a.PlayerGui.DroneGui.CommandBar.Text == "create drone" or a.PlayerGui.DroneGui.CommandBar.Text == "c" then
selection = "CreateDrone"



elseif a.PlayerGui.DroneGui.CommandBar.Text == "turn visible" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
dronelol.Flyer.Torso.Transparency = 0.1
dronelol.Flyer.Torso.Sparkles.Enabled = true
selection = "Nothing"
dronelol.Flyer.Torso.Fire.Enabled = true
end
end



elseif a.PlayerGui.DroneGui.CommandBar.Text == "dispense duck" then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
selection = "Nothing"
duck = Instance.new("Part")
duck.Parent = game.Workspace
droneduckcframe = dronelol.Flyer.Torso.CFrame
duck.CFrame = CFrame.new(droneduckcframe.x, droneduckcframe.y -4, droneduckcframe.z)
duck.Size = Vector3.new(1, 1, 1)
duck.Name = "Duck"
duckmesh = Instance.new("SpecialMesh")
duckmesh.Parent = duck
duckmesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
duckmesh.TextureId = "http://www.roblox.com/asset/?id=9419827"
end
end





end
end
end
end
end



function onButton1Down(mouse)

if (selection == "Move") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Hit.p
dronelol.Flyer.Torso.Size = Vector3.new(2, 2, 2)
wait(0.01)
dronelol.Flyer.Torso.Size = Vector3.new(1, 1, 1)
wait(0.01)
dronelol.Flyer.Torso.CFrame = CFrame.new(targ.x, targ.y + 10, targ.z)
wait(0.01)
dronelol.Flyer.Torso.Size = Vector3.new(2, 2, 2)
wait(0.01)
dronelol.Flyer.Torso.Size = Vector3.new(3, 3, 3)
end
end






elseif (selection == "CreateDrone") then
dronelol = game.Workspace:FindFirstChild(dronenamelol)
if game.Workspace:FindFirstChild(dronenamelol) == nil or dronelol.Flyer:FindFirstChild("Torso") == nil then 
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") == nil then
dronelol:Remove()
wait()
end
end
targ = mouse.Hit.p
part = Instance.new("Part")
part.Parent = game.Workspace
part.Size = Vector3.new(3,3,3)
part.CFrame = CFrame.new(targ.x, targ.y + 10, targ.z)
part.Anchored = true
part.CanCollide = false
part.Locked = true
part.Name = "Torso"
part.Shape = "Ball"
sp = Instance.new("Sparkles")
sp.Parent = part
part.BrickColor = BrickColor.new("Really black")
part.Transparency = 0.1
part.TopSurface = "Smooth"
part.BottomSurface = "Smooth"
fiar = Instance.new("Fire")
fiar.Heat = 9
fiar.Size = 7
fiar.Parent = part
fiar.Color = Color3.new(0, 0, 1)
fiar.SecondaryColor = Color3.new(55, 0, 1)
blalol = Instance.new("Model")
blalol.Name = dronenamelol
blalol.Parent = game.Workspace
dronelol = game.Workspace:FindFirstChild(dronenamelol)
blaaaaa = Instance.new("Model")
blaaaaa.Name = "Flyer"
blaaaaa.Parent = dronelol
orly = Instance.new("Humanoid")
orly.Parent = blaaaaa
orly.MaxHealth = 0
orly.Health = 0
part.Parent = blaaaaa
end







elseif (selection == "Kill") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
lol = Instance.new("Explosion")
lol.Parent = game.Workspace
lol.Position = targ.Position
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Really black")
wait()
targ:BreakJoints()
end
end


elseif (selection == "Forcefield") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
force = Instance.new("ForceField")
force.Parent = targ
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("New Yeller")
end
end




elseif (selection == "MeshInsert") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
mesh = Instance.new("SpecialMesh")
mesh.Parent = targ
mesh.MeshId = "http://www.roblox.com/asset/?id=25684446"
mesh.TextureId = "http://www.roblox.com/asset/?id=25684434"
mesh.Scale = Vector3.new(9, 9, 9)
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("New Yeller")
end
end


elseif (selection == "CorrodeRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.Material = "CorrodedMetal"
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright green")
end
end


elseif (selection == "WoodRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.Material = "Wood"
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright blue")
end
end



elseif (selection == "GlassRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.Material = "Plastic"
targ.Transparency = 0.4
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright blue")
end
end



elseif (selection == "GrassRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.Material = "Grass"
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright green")
end
end




elseif (selection == "BlueRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.BrickColor = BrickColor.new("Bright blue")
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright blue")
end
end



elseif (selection == "RedRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.BrickColor = BrickColor.new("Bright red")
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright red")
end
end


elseif (selection == "YellowRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.BrickColor = BrickColor.new("Bright yellow")
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright yellow")
end
end


elseif (selection == "GreenRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.BrickColor = BrickColor.new("Bright green")
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright green")
end
end


elseif (selection == "PurpleRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
targ.BrickColor = BrickColor.new("Royal purple")
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Royal purple")
end
end




elseif (selection == "Setonfiar") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
firee = Instance.new("Fire")
firee.Parent = targ
firee.Heat = 9
firee.Size = 9
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("New Yeller")
end
end


elseif (selection == "Degravitise") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
flying = Instance.new("BodyVelocity")
flying.Parent = targ
flying.maxForce = Vector3.new(4000, 99999, 4000)
flying.velocity = Vector3.new(0, 99999, 0)
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Bright yellow")
end
end



elseif (selection == "Shrinker") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Name ~= "Base" then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Black")
targ.Size = Vector3.new(1, 1, 1)
end
end
end


elseif (selection == "Delete") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Name ~= "Base" then
if debuggeriscool == false then
debuggeriscool = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Really red")
targ.Material = "Plastic"
wait(0.1)
targ.Transparency = 0.1
wait(0.1)
targ.Transparency = 0.2
wait(0.1)
targ.Transparency = 0.3
wait(0.1)
targ.Transparency = 0.4
wait(0.1)
targ.Transparency = 0.5
wait(0.1)
targ.Transparency = 0.6
wait(0.1)
targ.Transparency = 0.7
wait(0.1)
targ.Transparency = 0.8
wait(0.1)
targ.Transparency = 0.9
wait(0.1)
targ:Remove()
debuggeriscool = false
end
end
end
end


elseif (selection == "Limbremove") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright blue")
end
if b:FindFirstChild("Left Arm") ~= nil then 
b["Left Arm"]:Remove()
end
if b:FindFirstChild("Right Arm") ~= nil then 
b["Right Arm"]:Remove()
end
if b:FindFirstChild("Right Leg") ~= nil then 
b["Right Leg"]:Remove()
end
if b:FindFirstChild("Left Leg") ~= nil then 
b["Left Leg"]:Remove()
end
end
end
end


elseif (selection == "BlackHole") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
if b:FindFirstChild("Head") ~= nil then
if debuggeriscool == false then
debuggeriscool = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Royal purple")
b.Head.BrickColor = BrickColor.new(104)
b.Head.face:Remove()
b.Head.Mesh.MeshType = "Sphere"
b.Head.Mesh.Scale = Vector3.new(1.5,3,3)
b.Head.Anchored = true
b.Head.CanCollide = false
if b:FindFirstChild("Right Arm") ~= nil then
b["Right Arm"]:Remove()
end
if b:FindFirstChild("Left Arm") ~= nil then
b["Left Arm"]:Remove()
end
if b:FindFirstChild("Right Leg") ~= nil then
b["Right Leg"]:Remove()
end
if b:FindFirstChild("Left Leg") ~= nil then
b["Left Leg"]:Remove()
end
b.Torso:Remove()
wait(1)
b.Head:Remove()
debuggeriscool = false
end
end
end
end
end
end


elseif (selection == "RageExplode") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
if b:FindFirstChild("Head") ~= nil then
if debuggeriscool == false then
debuggeriscool = true
b.Head.BrickColor = BrickColor.new(21)
s = Instance.new("Smoke")
s.Parent = b.Head 
s.RiseVelocity = 8
b.Head.face.Texture = "http://www.roblox.com/asset/?id=17058440"
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Black")
wait(5)
b.Head.Mesh.Scale = Vector3.new(2,2,2)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(3,3,3)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(4,4,4)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(5,5,5)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(6,6,6)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(7,7,7)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(8,8,8)
wait(0.05)
b.Head.Mesh.Scale = Vector3.new(9,9,9)
wait(0.2)
w = b.Head.Position 
c = Instance.new("Explosion") 
c.Position = Vector3.new(w.x,w.y,w.z) 
c.Parent = game.Workspace 
c.BlastRadius = 5 
c.BlastPressure = 5
b.Head:Remove()
debuggeriscool = false
end
end
end
end
end
end






elseif (selection == "Corpse") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
if b:FindFirstChild("Head") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Really red")
b.Head.face.Texture = "http://www.roblox.com/asset/?id=22823614"
wait(0.01)
d = Instance.new("Model")
d.Parent = game.Workspace
d.Name = "Statue"
g = Instance.new("Humanoid")
g.Parent = d
if b:FindFirstChild("Shirt") ~= nil then
b.Shirt.Parent = d
end
if b:FindFirstChild("Pants") ~= nil then
b.Pants.Parent = d
end
wait(0.01)
b:BreakJoints()
b.Head.Anchored = true
b.Head.CanCollide = true
b.Head.Parent = d
b.Torso.Anchored = true
b.Torso.CanCollide = true
b.Torso.Parent = d
if b:FindFirstChild("Right Arm") ~= nil then
b["Right Arm"].Anchored = true
b["Right Arm"].CanCollide = true
b["Right Arm"].Parent = d
end
if b:FindFirstChild("Left Arm") ~= nil then
b["Left Arm"].Anchored = true
b["Left Arm"].CanCollide = true
b["Left Arm"].Parent = d
end
if b:FindFirstChild("Left Leg") ~= nil then
b["Left Leg"].Anchored = true
b["Left Leg"].CanCollide = true
b["Left Leg"].Parent = d
end
if b:FindFirstChild("Right Leg") ~= nil then
b["Right Leg"].Anchored = true
b["Right Leg"].CanCollide = true
b["Right Leg"].Parent = d
end
p= b:GetChildren()
for i= 1, #p do 
if p.className == "Hat" then 
hat = p:FindFirstChild("Handle")
if hat ~= nil then
hat.Parent = d
hat.Anchored = true
end
end
end
end
end
end
end
end



elseif (selection == "HeadRocket") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
if b:FindFirstChild("Head") ~= nil then
if debuggeriscool == false then
debuggeriscool = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Really blue")
b.Head.face.Texture = "http://www.roblox.com/asset/?id=22823614"
g=Instance.new("Smoke")
g.Parent=b.Head 
g.RiseVelocity = 8
wait(4)
b.Torso.Neck.C0 = CFrame.fromEulerAnglesXYZ(-1.57, 0, -3.14) + Vector3.new(0, 1.5, 0)
k=Instance.new("Sparkles")
k.Parent=b.Head 
k.Color = Color3.new(255,0,0)
g.RiseVelocity = -8
g.Color = Color3.new(0,0,0)
wait(0.01) 
w = b.Head.Position 
s = Instance.new("Explosion") 
s.Position = Vector3.new(w.x,w.y,w.z) 
s.Parent = game.Workspace 
s.BlastRadius = 5 
s.BlastPressure = 0
c=Instance.new("BodyVelocity")
c.Parent=b.Head 
c.velocity = Vector3.new(0,50,0)
b.Humanoid.Health = 0
wait(5)
debuggeriscool = false
end
end
end
end
end
end






elseif (selection == "LimbDisplacement") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
if b:FindFirstChild("Head") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("New Yeller")
b.Torso.Neck.C0 = CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
if b:FindFirstChild("Right Arm") ~= nil then
b.Torso["Right Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
end
if b:FindFirstChild("Left Arm") ~= nil then
b.Torso["Left Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
end
if b:FindFirstChild("Right Leg") ~= nil then
b.Torso["Right Hip"].C0 = CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
end
if b:FindFirstChild("Left Leg") ~= nil then
b.Torso["Left Hip"].C0 = CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
end
end
end
end
end
end


elseif (selection == "Sword") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
d = targ.Parent
if d:FindFirstChild("Head") ~= nil then
if d:FindFirstChild("Torso") ~= nil then
if debuggeriscool == false then
debuggeriscool = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Reddish brown")
g = Instance.new("Part")
g.Parent = game.Workspace
g.Size = Vector3.new(1,1,1)
b = d.Torso.Position
g.Position = Vector3.new(b.x,b.y,b.z + -20)
g.Anchored = true
g.CanCollide = true
g.Locked = true
g.Name = "Sword"
lol = Instance.new("SpecialMesh")
lol.Parent = g
lol.MeshId = "rbxasset://fonts/sword.mesh"
lol.TextureId = "rbxasset://textures/SwordTexture.png"
wait(1)
b2 = d.Torso.Position
g.Position = Vector3.new(b2.x,b2.y,b2.z + -20)
wait(0.01)
b3 = d.Torso.Position
g.Position = Vector3.new(b3.x,b3.y,b3.z + -19)
wait(0.01)
b4 = d.Torso.Position
g.Position = Vector3.new(b4.x,b4.y,b4.z + -18)
wait(0.01)
b5 = d.Torso.Position
g.Position = Vector3.new(b5.x,b5.y,b5.z + -17)
wait(0.01)
b6 = d.Torso.Position
g.Position = Vector3.new(b6.x,b6.y,b6.z + -16)
wait(0.01)
b7 = d.Torso.Position
g.Position = Vector3.new(b7.x,b7.y,b7.z + -15)
wait(0.01)
b8 = d.Torso.Position
g.Position = Vector3.new(b8.x,b8.y,b8.z + -14)
wait(0.01)
b9 = d.Torso.Position
g.Position = Vector3.new(b9.x,b9.y,b9.z + -13)
wait(0.01)
b10 = d.Torso.Position
g.Position = Vector3.new(b10.x,b10.y,b10.z + -12)
wait(0.01)
b11 = d.Torso.Position
g.Position = Vector3.new(b11.x,b11.y,b11.z + -11)
wait(0.01)
b12 = d.Torso.Position
g.Position = Vector3.new(b12.x,b12.y,b12.z + -10)
wait(0.01)
b13 = d.Torso.Position
g.Position = Vector3.new(b13.x,b13.y,b13.z + -9)
wait(0.01)
b14 = d.Torso.Position
g.Position = Vector3.new(b14.x,b14.y,b14.z + -8)
wait(0.01)
b15 = d.Torso.Position
g.Position = Vector3.new(b15.x,b15.y,b15.z + -7)
wait(0.01)
b16 = d.Torso.Position
g.Position = Vector3.new(b16.x,b16.y,b16.z + -6)
wait(0.01)
b17 = d.Torso.Position
g.Position = Vector3.new(b17.x,b17.y,b17.z + -5)
wait(0.01)
b18 = d.Torso.Position
g.Position = Vector3.new(b18.x,b18.y,b18.z + -4)
wait(0.01)
b19 = d.Torso.Position
g.Position = Vector3.new(b19.x,b19.y,b19.z + -3)
wait(0.01)
b20 = d.Torso.Position
g.Position = Vector3.new(b20.x,b20.y,b20.z + -2)
wait(0.01)
b21 = d.Torso.Position
g.Position = Vector3.new(b21.x,b21.y,b21.z + -1)
wait(0.01)
d:BreakJoints()
wait(3)
g:Remove()
debuggeriscool = false
end
end
end
end
end
end




elseif (selection == "Thaw") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil
then
b = targ.Parent
b.Humanoid.MaxHealth = 100
b.Humanoid.WalkSpeed = 16
if b:FindFirstChild("Head") ~= nil
then b.Head.Anchored = false
b.Head.Material = "Plastic"
b.Head.BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Torso") ~= nil
then b.Torso.Anchored = false
b.Torso.Material = "Plastic"
b.Torso.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
if b.Torso:FindFirstChild("Smoke") ~= nil then a.Torso.Smoke:Remove() end
if b.Torso:FindFirstChild("BodyPosition") ~= nil then a.Torso.BodyPosition:Remove() end
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright green")
end
if b:FindFirstChild("Left Arm") ~= nil
then b["Left Arm"].Anchored = false
b["Left Arm"].Material = "Plastic"
b["Left Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Arm") ~= nil
then b["Right Arm"].Anchored = false
b["Right Arm"].Material = "Plastic"
b["Right Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Leg") ~= nil
then b["Right Leg"].Anchored = false
b["Right Leg"].Material = "Plastic"
b["Right Leg"].BrickColor = BrickColor.new(23)
end
if b:FindFirstChild("Left Leg") ~= nil
then b["Left Leg"].Anchored = false
b["Left Leg"].Material = "Plastic"
b["Left Leg"].BrickColor = BrickColor.new(23)
end
if b.Head:FindFirstChild("face") ~= nil 
then b.Head.face.Texture = "http://www.roblox.com/asset/?id=10377544"
end
end
end
end



elseif (selection == "SpinPeople") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ
bla.Name = lassolol
bla.Color = BrickColor.new("Lavender")
stay = Instance.new("BodyPosition")
stay.position = b.Torso.Position
stay.Parent = b.Torso
stay.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
spin = Instance.new("BodyAngularVelocity")
spin.Parent = b.Torso
spin.maxTorque = Vector3.new(4000, 9999999, 4000)
spin.angularvelocity = Vector3.new(0, 20, 0)
wait()
end
end
end
end







elseif (selection == "Moustache") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if b:FindFirstChild("Torso") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright blue")
end
if b:FindFirstChild("Head") ~= nil then 
if b.Head:FindFirstChild("face") ~= nil then 
b.Head.face.Texture = "http://www.roblox.com/asset/?id=25653417"
end
end
end
end
end



elseif (selection == "Giant") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
b.Humanoid.WalkSpeed = 22
if b:FindFirstChild("Head") ~= nil then 
b.Head.Mesh.Scale = Vector3.new(2.5, 2.5, 2.5)
b.Torso.Neck.C0 = CFrame.fromEulerAnglesXYZ(-1.57, 0, -3.14) + Vector3.new(0, 5.6, 0)
b.Head.BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Torso") ~= nil then 
m1 = Instance.new("BlockMesh")
m1.Parent = b.Torso
m1.Scale = Vector3.new(2, 2, 2)
m1.Offset = Vector3.new(0, 3, 0)
b.Torso.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
end
if b:FindFirstChild("Left Arm") ~= nil then 
m3 = Instance.new("BlockMesh")
m3.Parent = b["Left Arm"]
m3.Scale = Vector3.new(2, 2, 2)
m3.Offset = Vector3.new(0, -1, 0)
b.Torso["Left Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(3.14, 4.71, -3.14) + Vector3.new(-2.5, 4.5, 0)
b["Left Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Arm") ~= nil then 
m2 = Instance.new("BlockMesh")
m2.Parent = b["Right Arm"]
m2.Scale = Vector3.new(2, 2, 2)
m2.Offset = Vector3.new(0, -1, 0)
b.Torso["Right Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(-3.14, -4.71, 3.14) + Vector3.new(2.5, 4.5, 0)
b["Right Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Leg") ~= nil then 
m5 = Instance.new("BlockMesh")
m5.Parent = b["Right Leg"]
m5.Scale = Vector3.new(2, 2, 2)
m5.Offset = Vector3.new(0, -1, 0)
b.Torso["Right Hip"].C0 = CFrame.fromEulerAnglesXYZ(3.14, -4.71, 3.14) + Vector3.new(1.5, 1, 0)
b["Right Leg"].BrickColor = BrickColor.new(23)
end
if b:FindFirstChild("Left Leg") ~= nil then 
m4 = Instance.new("BlockMesh")
m4.Parent = b["Left Leg"]
m4.Scale = Vector3.new(2, 2, 2)
m4.Offset = Vector3.new(0, -1, 0)
b.Torso["Left Hip"].C0 = CFrame.fromEulerAnglesXYZ(3.14, 4.71, 3.14) + Vector3.new(-1.5, 1, 0)
b["Left Leg"].BrickColor = BrickColor.new(23)
end
if b.Torso:FindFirstChild("roblox") ~= nil 
then b.Torso.roblox:Remove() 
end
if b.Torso:FindFirstChild("Shirt Graphic") ~= nil 
then b["Shirt Graphic"]:Remove() 
end
if b:FindFirstChild("Shirt") ~= nil 
then b.Shirt:Remove() 
end
if b:FindFirstChild("Pants") ~= nil 
then b.Pants:Remove() 
end
c= b:GetChildren()
for i= 1, #c do 
if c.className == "Hat" then 
lol = c:FindFirstChild("Handle")
if lol ~= nil then
lol:Remove()
end
end
end
end
end
end



elseif (selection == "Freeze") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil
then
b = targ.Parent
b.Humanoid.MaxHealth = 0
b.Humanoid.WalkSpeed = 0.0000000000000000000001
if b:FindFirstChild("Head") ~= nil
then b.Head.Anchored = true
b.Head.Material = "Ice"
b.Head.BrickColor = BrickColor.new(1)
end
if b:FindFirstChild("Torso") ~= nil
then b.Torso.Anchored = true
b.Torso.Material = "Ice"
b.Torso.BrickColor = BrickColor.new(1)
uhoh = Instance.new("Smoke")
uhoh.Parent = b.Torso
uhoh.Opacity = 0.3
stuck = Instance.new("BodyPosition")
stuck.Parent = b.Torso
stuck.position = b.Torso.Position
stuck.maxForce = Vector3.new(math.huge*math.huge,math.huge*math.huge,math.huge*math.huge)
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Toothpaste")
end
if b:FindFirstChild("Left Arm") ~= nil
then b["Left Arm"].Anchored = true
b["Left Arm"].Material = "Ice"
b["Left Arm"].BrickColor = BrickColor.new(1)
end
if b:FindFirstChild("Right Arm") ~= nil
then b["Right Arm"].Anchored = true
b["Right Arm"].Material = "Ice"
b["Right Arm"].BrickColor = BrickColor.new(1)
end
if b:FindFirstChild("Right Leg") ~= nil
then b["Right Leg"].Anchored = true
b["Right Leg"].Material = "Ice"
b["Right Leg"].BrickColor = BrickColor.new(1)
end
if b:FindFirstChild("Left Leg") ~= nil
then b["Left Leg"].Anchored = true
b["Left Leg"].Material = "Ice"
b["Left Leg"].BrickColor = BrickColor.new(1)
end
if b.Torso:FindFirstChild("roblox") ~= nil 
then b.Torso.roblox:Remove() 
end
if b.Torso:FindFirstChild("Shirt Graphic") ~= nil 
then b["Shirt Graphic"]:Remove() 
end
if b:FindFirstChild("Shirt") ~= nil 
then b.Shirt:Remove() 
end
if b:FindFirstChild("Pants") ~= nil 
then b.Pants:Remove() 
end
if b.Head:FindFirstChild("face") ~= nil 
then b.Head.face.Texture = "http://www.roblox.com/asset/?id=11206744"
end
end
end
end


elseif (selection == "DuckRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil
then
b = targ.Parent
if b:FindFirstChild("Head") ~= nil then
b.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
b.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=9419827"
b.Head.Mesh.Scale = Vector3.new(10,10,10)
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright yellow")
end
if a:FindFirstChild("Right Arm") ~= nil then
b["Right Arm"].Transparency = 1
end
if a:FindFirstChild("Left Arm") ~= nil then
b["Left Arm"].Transparency = 1
end
if a:FindFirstChild("Right Leg") ~= nil then
b["Right Leg"].Transparency = 1
end
if a:FindFirstChild("Left Leg") ~= nil then
b["Left Leg"].Transparency = 1
end
if a:FindFirstChild("Torso") ~= nil then
b.Torso.Transparency = 1
end
c= b:GetChildren()
for i= 1, #c do 
if c.className == "Hat" then 
lol = c:FindFirstChild("Handle")
if lol ~= nil then
lol:Remove()
end
end
end
end
end
end 



elseif (selection == "HairRay") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
if a:FindFirstChild("Torso") ~= nil then
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright yellow")
end
c= b:GetChildren()
for i= 1, #c do 
if c.className == "Hat" then 
lol = c:FindFirstChild("Handle")
if lol ~= nil then
mesh = lol:FindFirstChild("Mesh")
if mesh ~= nil then
mesh.MeshId = "http://www.roblox.com/asset/?id=19999424"
mesh.TextureId = "http://www.roblox.com/asset/?id=20571982"
mesh.Scale = Vector3.new(1.07, 1.07, 1.07)
mesh.Parent.Parent.AttachmentForward = Vector3.new(0.196, -0, -0.981)
mesh.Parent.Parent.AttachmentPos = Vector3.new(0.12, 0.3, -0.07)
mesh.Parent.Parent.AttachmentRight = Vector3.new(0.981, 0, 0.196)
mesh.Parent.Parent.AttachmentUp = Vector3.new(0, 1, -0)
end
end
end
end
end
end
end 



elseif (selection == "Crush") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
if debuggeriscool == false then
debuggeriscool = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Royal purple")
d = targ.Parent
dai = Instance.new("Part")
dai.Parent = game.Workspace
dai.Size = Vector3.new(10,100,10)
b = d.Head.Position
dai.Position = Vector3.new(b.x,b.y + 100,b.z)
dai.Anchored = false
dai.CanCollide = true
dai.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
dai.Locked = true
dai.Name = "DAI"
dai.TopSurface = "Smooth"
dai.BottomSurface = "Smooth"
wait(1)
d:BreakJoints()
wait(4)
dai:Remove()
debuggeriscool = false
end
end
end
end



elseif (selection == "Seatgun") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
targ.Parent.Humanoid.Sit = true
flying = Instance.new("BodyVelocity")
flying.Parent = targ
flying.maxForce = Vector3.new(99999, 4000, 4000)
flying.velocity = Vector3.new(99999, 0, 0)
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Earth green")
end
end
end


elseif (selection == "Sit") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
targ.Parent.Humanoid.Sit = true
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Camo")
end
end
end


elseif (selection == "Backwards") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
targ.Parent.Humanoid.WalkSpeed = -16
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = targ.Parent.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("Bright red")
end
end
end


elseif (selection == "Shrink") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
b = targ.Parent
b.Humanoid.WalkSpeed = 6
if b:FindFirstChild("Head") ~= nil
then b.Head.Mesh.Scale = Vector3.new(0.3125, 0.3125, 0.3125)
b.Torso.Neck.C0 = CFrame.fromEulerAnglesXYZ(-1.57, 0, -3.14) + Vector3.new(0, -2.21, 0)
b.Head.BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Torso") ~= nil
then m1 = Instance.new("BlockMesh")
m1.Parent = b.Torso
m1.Scale = Vector3.new(0.25, 0.25, 0.25)
m1.Offset = Vector3.new(0, -2.1, 0)
velo = Instance.new("BodyVelocity")
velo.Parent = b.Torso
velo.velocity = Vector3.new(0, -99999, 0)
b.Torso.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
b.Torso.CanCollide = false
bla = Instance.new("SelectionPartLasso")
bla.Parent = game.Workspace
bla.Humanoid = dronelol.Flyer.Humanoid
bla.Part = b.Torso
bla.Name = lassolol
bla.Color = BrickColor.new("White")
end
if b:FindFirstChild("Left Arm") ~= nil
then m3 = Instance.new("BlockMesh")
m3.Parent = b["Left Arm"]
m3.Scale = Vector3.new(0.25, 0.25, 0.25)
m3.Offset = Vector3.new(0, 0.3, 0)
b.Torso["Left Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(3.14, 4.71, -3.14) + Vector3.new(0.12, -1.9, 0)
b["Left Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Arm") ~= nil
then m2 = Instance.new("BlockMesh")
m2.Parent = b["Right Arm"]
m2.Scale = Vector3.new(0.25, 0.25, 0.25)
m2.Offset = Vector3.new(0, 0.3, 0)
b.Torso["Right Shoulder"].C0 = CFrame.fromEulerAnglesXYZ(-3.14, -4.71, 3.14) + Vector3.new(-0.12, -1.9, 0)
b["Right Arm"].BrickColor = BrickColor.new(24)
end
if b:FindFirstChild("Right Leg") ~= nil
then m5 = Instance.new("BlockMesh")
m5.Parent = b["Right Leg"]
m5.Scale = Vector3.new(0.25, 0.25, 0.25)
m5.Offset = Vector3.new(0, 0.7, 0)
b.Torso["Right Hip"].C0 = CFrame.fromEulerAnglesXYZ(3.14, -4.71, 3.14) + Vector3.new(0.625, -2.3, 0)
b["Right Leg"].BrickColor = BrickColor.new(23)
end
if b:FindFirstChild("Left Leg") ~= nil
then m4 = Instance.new("BlockMesh")
m4.Parent = b["Left Leg"]
m4.Scale = Vector3.new(0.25, 0.25, 0.25)
m4.Offset = Vector3.new(0, 0.7, 0)
b.Torso["Left Hip"].C0 = CFrame.fromEulerAnglesXYZ(3.14, 4.71, 3.14) + Vector3.new(-0.625, -2.3, 0)
b["Left Leg"].BrickColor = BrickColor.new(23)
end
if b.Torso:FindFirstChild("roblox") ~= nil 
then b.Torso.roblox:Remove() 
end
if b.Torso:FindFirstChild("Shirt Graphic") ~= nil 
then b["Shirt Graphic"]:Remove() 
end
if b:FindFirstChild("Shirt") ~= nil 
then b.Shirt:Remove() 
end
if b:FindFirstChild("Pants") ~= nil 
then b.Pants:Remove() 
end
c= b:GetChildren()
for i= 1, #c do 
if c.className == "Hat" then 
lol = c:FindFirstChild("Handle")
if lol ~= nil then
lol:Remove()
end
end
end
end
end
end





elseif (selection == "Kick") then
if game.Workspace:FindFirstChild(dronenamelol) ~= nil then
if dronelol.Flyer:FindFirstChild("Torso") ~= nil then
targ = mouse.Target
if targ == nil then return end
if targ.Parent.className ~= "Model" then return end
if targ.Parent:FindFirstChild("Humanoid") ~= nil then
if game.Players:FindFirstChild(targ.Parent.Name) ~= nil then
b = targ.Parent
evilnoob = game.Players:FindFirstChild(b.Name)
wait()
evilnoob:Remove()
end
end
end
end


end
end


function onButton1Up(mouse)
if game.Workspace:FindFirstChild(lassolol) ~= nil then
deletelasso = game.Workspace:FindFirstChild(lassolol)
deletelasso:Remove()
end
end



function onHelp()
if script.Parent.Parent.Parent.className == "Player" then
a = script.Parent.Parent.Parent
if a.PlayerGui:FindFirstChild("HelpGui") == nil then
Gui1 = Instance.new("ScreenGui")
Gui1.Parent = a.PlayerGui
Gui1.Name = "HelpGui"
wait()
Gui2 = Instance.new("Frame")
Gui2.Parent = Gui1
Gui2.Name = "Back"
Gui2.BorderColor3 = Color3.new(0, 0, 0)
Gui2.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
Gui2.Position = UDim2.new(0.319999993, 0, 0.100000001, 0)
Gui2.Size = UDim2.new(0, 400, 0, 400)
wait()
Gui3 = Instance.new("TextButton")
Gui3.Parent = Gui1
Gui3.Name = "Inst1"
Gui3.BorderColor3 = Color3.new(0, 0, 0)
Gui3.BackgroundColor3 = Color3.new(0, 0, 0)
Gui3.Position = UDim2.new(0.319999993, 0, 0.100000001, 10)
Gui3.Size = UDim2.new(0, 400, 0, 4)
Gui3.TextColor3 = Color3.new(0, 0, 0)
Gui3.Text = "Thanks for using DevexDrone V 5."
Gui3.AutoButtonColor = false
Gui3.BackgroundTransparency = 1

Gui4 = Instance.new("TextButton")
Gui4.Parent = Gui1
Gui4.Name = "Inst2"
Gui4.BorderColor3 = Color3.new(0, 0, 0)
Gui4.BackgroundColor3 = Color3.new(0, 0, 0)
Gui4.Position = UDim2.new(0.319999993, 0, 0.100000001, 50)
Gui4.Size = UDim2.new(0, 400, 0, 4)
Gui4.TextColor3 = Color3.new(0, 0, 0)
Gui4.Text = "To use the Drone, keep the tool selected at all times. Type inside the command bar"
Gui4.AutoButtonColor = false
Gui4.BackgroundTransparency = 1

Gui5 = Instance.new("TextButton")
Gui5.Parent = Gui1
Gui5.Name = "Inst3"
Gui5.BorderColor3 = Color3.new(0, 0, 0)
Gui5.BackgroundColor3 = Color3.new(0, 0, 0)
Gui5.Position = UDim2.new(0.319999993, 0, 0.100000001, 65)
Gui5.Size = UDim2.new(0, 400, 0, 4)
Gui5.TextColor3 = Color3.new(0, 0, 0)
Gui5.Text = "the command you want to use. Then press activate."
Gui5.AutoButtonColor = false
Gui5.BackgroundTransparency = 1

Gui6 = Instance.new("TextButton")
Gui6.Parent = Gui1
Gui6.Name = "Inst4"
Gui6.BorderColor3 = Color3.new(0, 0, 0)
Gui6.BackgroundColor3 = Color3.new(0, 0, 0)
Gui6.Position = UDim2.new(0.319999993, 0, 0.100000001, 80)
Gui6.Size = UDim2.new(0, 400, 0, 4)
Gui6.TextColor3 = Color3.new(0, 0, 0)
Gui6.Text = "Some commands will require you to click on an object to use them though."
Gui6.AutoButtonColor = false
Gui6.BackgroundTransparency = 1

Gui7 = Instance.new("TextButton")
Gui7.Parent = Gui1
Gui7.Name = "Inst5"
Gui7.BorderColor3 = Color3.new(0, 0, 0)
Gui7.BackgroundColor3 = Color3.new(0, 0, 0)
Gui7.Position = UDim2.new(0.319999993, 0, 0.100000001, 115)
Gui7.Size = UDim2.new(0, 400, 0, 4)
Gui7.TextColor3 = Color3.new(0, 0, 0)
Gui7.Text = "The commands are as follows:"
Gui7.AutoButtonColor = false
Gui7.BackgroundTransparency = 1

Gui8 = Instance.new("TextButton")
Gui8.Parent = Gui1
Gui8.Name = "Inst6"
Gui8.BorderColor3 = Color3.new(0, 0, 0)
Gui8.BackgroundColor3 = Color3.new(0, 0, 0)
Gui8.Position = UDim2.new(0.319999993, 0, 0.100000001, 150)
Gui8.Size = UDim2.new(0, 400, 0, 4)
Gui8.TextColor3 = Color3.new(0, 0, 0)
Gui8.Text = "kill ray, kill others, kick ray, kick others, freeze ray, shrink ray, sit ray, disorient ray,"
Gui8.AutoButtonColor = false
Gui8.BackgroundTransparency = 1

Gui9 = Instance.new("TextButton")
Gui9.Parent = Gui1
Gui9.Name = "Inst7"
Gui9.BorderColor3 = Color3.new(0, 0, 0)
Gui9.BackgroundColor3 = Color3.new(0, 0, 0)
Gui9.Position = UDim2.new(0.319999993, 0, 0.100000001, 160)
Gui9.Size = UDim2.new(0, 400, 0, 4)
Gui9.TextColor3 = Color3.new(0, 0, 0)
Gui9.Text = "fire ray, crush mode, limb remove ray, reverse gravity ray, defence mode, move,"
Gui9.AutoButtonColor = false
Gui9.BackgroundTransparency = 1

Gui10 = Instance.new("TextButton")
Gui10.Parent = Gui1
Gui10.Name = "Inst8"
Gui10.BorderColor3 = Color3.new(0, 0, 0)
Gui10.BackgroundColor3 = Color3.new(0, 0, 0)
Gui10.Position = UDim2.new(0.319999993, 0, 0.100000001, 170)
Gui10.Size = UDim2.new(0, 400, 0, 4)
Gui10.TextColor3 = Color3.new(0, 0, 0)
Gui10.Text = " turn purple, down, up, turn red, turn green, turn blue, turn white, turn black,"
Gui10.AutoButtonColor = false
Gui10.BackgroundTransparency = 1

Gui11 = Instance.new("TextButton")
Gui11.Parent = Gui1
Gui11.Name = "Inst9"
Gui11.BorderColor3 = Color3.new(0, 0, 0)
Gui11.BackgroundColor3 = Color3.new(0, 0, 0)
Gui11.Position = UDim2.new(0.319999993, 0, 0.100000001, 180)
Gui11.Size = UDim2.new(0, 400, 0, 4)
Gui11.TextColor3 = Color3.new(0, 0, 0)
Gui11.Text = "moustache ray, duck ray, giant ray, shrink ray, pri on, pri off, day, night,"
Gui11.AutoButtonColor = false
Gui11.BackgroundTransparency = 1

Gui13 = Instance.new("TextButton")
Gui13.Parent = Gui1
Gui13.Name = "Inst10"
Gui13.BorderColor3 = Color3.new(0, 0, 0)
Gui13.BackgroundColor3 = Color3.new(0, 0, 0)
Gui13.Position = UDim2.new(0.319999993, 0, 0.100000001, 190)
Gui13.Size = UDim2.new(0, 400, 0, 4)
Gui13.TextColor3 = Color3.new(0, 0, 0)
Gui13.Text = "shaggy hair ray, seat gun, shrink bricks ray, impale mode, black hole ray, spin ray,"
Gui13.AutoButtonColor = false
Gui13.BackgroundTransparency = 1

Gui14 = Instance.new("TextButton")
Gui14.Parent = Gui1
Gui14.Name = "Inst11"
Gui14.BorderColor3 = Color3.new(0, 0, 0)
Gui14.BackgroundColor3 = Color3.new(0, 0, 0)
Gui14.Position = UDim2.new(0.319999993, 0, 0.100000001, 200)
Gui14.Size = UDim2.new(0, 400, 0, 4)
Gui14.TextColor3 = Color3.new(0, 0, 0)
Gui14.Text = "turn invisible, turn visible, delete ray, purple ray, green ray, yellow ray, red ray,"
Gui14.AutoButtonColor = false
Gui14.BackgroundTransparency = 1

Gui15 = Instance.new("TextButton")
Gui15.Parent = Gui1
Gui15.Name = "Inst12"
Gui15.BorderColor3 = Color3.new(0, 0, 0)
Gui15.BackgroundColor3 = Color3.new(0, 0, 0)
Gui15.Position = UDim2.new(0.319999993, 0, 0.100000001, 210)
Gui15.Size = UDim2.new(0, 400, 0, 4)
Gui15.TextColor3 = Color3.new(0, 0, 0)
Gui15.Text = "blue ray, grass ray, wood ray, corrode ray, mesh ray, head rocket ray"
Gui15.AutoButtonColor = false
Gui15.BackgroundTransparency = 1

Gui16 = Instance.new("TextButton")
Gui16.Parent = Gui1
Gui16.Name = "Inst13"
Gui16.BorderColor3 = Color3.new(0, 0, 0)
Gui16.BackgroundColor3 = Color3.new(0, 0, 0)
Gui16.Position = UDim2.new(0.319999993, 0, 0.100000001, 220)
Gui16.Size = UDim2.new(0, 400, 0, 4)
Gui16.TextColor3 = Color3.new(0, 0, 0)
Gui16.Text = "limb displace ray, corpse ray, rage explode ray, dispense duck, forcefield ray"
Gui16.AutoButtonColor = false
Gui16.BackgroundTransparency = 1

Gui17 = Instance.new("TextButton")
Gui17.Parent = Gui1
Gui17.Name = "Inst14"
Gui17.BorderColor3 = Color3.new(0, 0, 0)
Gui17.BackgroundColor3 = Color3.new(0, 0, 0)
Gui17.Position = UDim2.new(0.319999993, 0, 0.100000001, 230)
Gui17.Size = UDim2.new(0, 400, 0, 4)
Gui17.TextColor3 = Color3.new(0, 0, 0)
Gui17.Text = "thaw ray, glass ray, create drone, c, become drone, b."
Gui17.AutoButtonColor = false
Gui17.BackgroundTransparency = 1

Gui18 = Instance.new("TextButton")
Gui18.Parent = Gui1
Gui18.Name = "Inst15"
Gui18.BorderColor3 = Color3.new(0, 0, 0)
Gui18.BackgroundColor3 = Color3.new(0, 0, 0)
Gui18.Position = UDim2.new(0.319999993, 0, 0.100000001, 270)
Gui18.Size = UDim2.new(0, 400, 0, 4)
Gui18.TextColor3 = Color3.new(0, 0, 0)
Gui18.Text = "To get started, say, 'create drone' or 'c' and click in the location you prefer,"
Gui18.AutoButtonColor = false
Gui18.BackgroundTransparency = 1

Gui12 = Instance.new("TextButton")
Gui12.Parent = Gui1
Gui12.Name = "Inst16"
Gui12.BorderColor3 = Color3.new(0, 0, 0)
Gui12.BackgroundColor3 = Color3.new(0, 0, 0)
Gui12.Position = UDim2.new(0.319999993, 0, 0.100000001, 285)
Gui12.Size = UDim2.new(0, 400, 0, 4)
Gui12.TextColor3 = Color3.new(0, 0, 0)
Gui12.Text = "to create the drone. Then say, 'become drone' or 'b' to become the drone. Then say,"
Gui12.AutoButtonColor = false
Gui12.BackgroundTransparency = 1


Gui20 = Instance.new("TextButton")
Gui20.Parent = Gui1
Gui20.Name = "Inst17"
Gui20.BorderColor3 = Color3.new(0, 0, 0)
Gui20.BackgroundColor3 = Color3.new(0, 0, 0)
Gui20.Position = UDim2.new(0.319999993, 0, 0.100000001, 300)
Gui20.Size = UDim2.new(0, 400, 0, 4)
Gui20.TextColor3 = Color3.new(0, 0, 0)
Gui20.Text = "'move' and click in the location you would like to move to, to move the drone."
Gui20.AutoButtonColor = false
Gui20.BackgroundTransparency = 1



Gui19 = Instance.new("TextButton")
Gui19.Parent = Gui1
Gui19.Name = "Done"
Gui19.BorderColor3 = Color3.new(0, 0, 0)
Gui19.BackgroundColor3 = Color3.new(1, 0, 0)
Gui19.Position = UDim2.new(0.319999993, 155, 0.100000001, 320)
Gui19.Size = UDim2.new(0, 80, 0, 50)
Gui19.TextColor3 = Color3.new(0, 0, 0)
Gui19.Text = "Done"

script.Parent.Parent.Parent.PlayerGui.HelpGui.Done.MouseButton1Click:connect(onDelete)

end
end

end





function onDelete()
if script.Parent.Parent.Parent.PlayerGui:FindFirstChild("HelpGui") ~= nil then
if script.Parent.Parent.Parent.PlayerGui.HelpGui:FindFirstChild("Done") ~= nil then
script.Parent.Parent.Parent.PlayerGui.HelpGui:Remove()
end
end
end


function onS(mouse)
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
wait(0.05)
if script.Parent.Parent.Parent.PlayerGui:FindFirstChild("DroneGui") ~= nil then
if script.Parent.Parent.Parent.PlayerGui.DroneGui:FindFirstChild("Activate") ~= nil then
if script.Parent.Parent.Parent.PlayerGui.DroneGui:FindFirstChild("Help") ~= nil then
script.Parent.Parent.Parent.PlayerGui.DroneGui.Activate.MouseButton1Click:connect(onActivated)
script.Parent.Parent.Parent.PlayerGui.DroneGui.Help.MouseButton1Click:connect(onHelp)
end
end
end
end


script.Parent.Selected:connect(onGui)
script.Parent.Selected:connect(onS)













while true do 
wait()
if primode == "On" then
a = script.Parent.Parent.Parent
pri = game.Players:GetChildren() 
for i=1, #pri do 
if pri.Name ~= a.Name then
if pri.Name ~= "lolnoobsroflmao" then 
if pri.Name ~= "lolnoobsroflmao" then
if pri.Name ~= "someoneuhate" then 
if pri.Name ~= "noob" then 
if pri.Name ~= "lololopl" then 
pri:Remove() 
end 
end 
end 
end 
end
end
end
end
end
