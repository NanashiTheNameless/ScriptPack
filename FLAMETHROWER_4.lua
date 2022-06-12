if script.Parent.className ~= "HopperBin" then 
player = game.Players.LocalPlayer
char = player.Character 
tool = Instance.new("HopperBin") 
tool.Parent = player.Backpack 
tool.Name = "Flamethrowa" 
script.Parent = tool 
end 

bin = script.Parent 

player = game.Players.LocalPlayer
char = player.Character
hold = false 

wr = char.Torso["Right Shoulder"].C1 
handle = Instance.new("Part") 
handle.Parent = game.Lighting 
handle.Name = "Handle" 
handle.FormFactor = "Symmetric" 
handle.Size = Vector3.new(1,1,1) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.BrickColor = BrickColor.new("Black") 
handle.Anchored = false 
handle.Position = char["Right Arm"].Position 
local m = Instance.new("BlockMesh") 
m.Parent = handle 
m.Scale = Vector3.new(1,1,4) 
m.Offset = Vector3.new(1,0.8,0) 
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"] 
weld.Part0 = handle 
weld.Part1 = weld.Parent 
weld.C1 = CFrame.new(0, 0, -0.5) 
weld2 = char.Torso["Right Shoulder"] 


function fire(firer) 
local p = Instance.new("Part") 
p.Parent = workspace 
p.Shape = "Ball" 
p.Size = Vector3.new(2,2,2)
p.Name = "Fire" 
p.CanCollide = false 
p.Transparency = 1
p.Anchored = false 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.CFrame = firer.CFrame + Vector3.new(math.random(-1,1),math.random(0,1),math.random(-1,1)) 
local bf = Instance.new("BodyVelocity")
bf.Parent = p
bf.velocity = handle.CFrame.lookVector * 23
bf.velocity = bf.velocity + Vector3.new(math.random(-4,4), math.random(-1,4), math.random(-4, 4))
local fia = Instance.new("Fire")
fia.Parent = p
fia.Heat = 20
fia.Size = 4
function kill(hit) 
if hit.Parent.Name == "xSoulStealerx" then return end
if hit.Parent.Name == "Flamethrowa" then return end
if hit.Parent.Parent.Name == "xSoulStealerx" then return end
if hit.Name == "Fire" then return end
if hit.Name == "Base" then return end
fia.Parent = hit
fia.Heat = 8
fia.Size = 4
hit.BrickColor = BrickColor.new("Neon orange")
wait(1.6)
fia.Heat = 20
fia.Size = 7
hit.BrickColor = BrickColor.new("Bright red")
wait(1.6)
fia.Heat = 30
fia.Size = 10
wait(1.6)
fia.Heat = 40
fia.Size = 15
hit.BrickColor = BrickColor.new("Black")
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = 0
end 
wait(2)
hit:remove()
end 
p.touched:connect(kill) 
coroutine.resume(coroutine.create(function()
wait(2)
p:remove()
end))
end 

function click(mouse) 
hold = true 
while hold == true do 
wait() 
fire(handle) 
end 
end 

function up(mouse) 
hold = false 
end 

function select(mouse) 
mouse.Button1Down:connect(click) 
mouse.Button1Up:connect(up) 
handle.Parent = char 
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,-1.6) * CFrame.new(-0.5,0,-0.4) 
weld.Parent = char["Right Arm"] 
weld.Part0 = weld.Parent 
weld.Part1 = handle 
weld.C1 = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 0, -0.8) 
end 


function deselect(mouse) 
handle.Parent = game.Lighting 
weld2.C1 = wr
end 

script.Parent.Selected:connect(select) 
script.Parent.Deselected:connect(deselect) 

 
