me = game.Players.acb227 

if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
h.Parent = me.Backpack 
h.Name = "Gun" 
script.Parent = h 
end 

sp = script.Parent 

rightarm = me.Character["Right Arm"] 
leftarm = me.Character["Left Arm"] 

hold = false 
using = false 
holdkey = false 

right = Instance.new("Weld") 
right.Parent = me.Character.Torso 
right.Part0 = nil 
right.Part1 = nil 
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1) 

left = Instance.new("Weld") 
left.Parent = me.Character.Torso 
left.Part0 = nil 
left.Part1 = nil 
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3) 

bulletcolors = {"Bright yellow", "Neon orange", "New Yeller"} 

gun = Instance.new("Model") 
gun.Parent = game.Lighting 
gun.Name = "Gun" 

handle = Instance.new("Part") 
handle.Parent = gun 
handle.formFactor = 0 
handle.Size = Vector3.new(1,1,1) 
handle.BrickColor = BrickColor.new("Black") 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = handle 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(0.5,0.35,1.15) 

handle2 = Instance.new("Part") 
handle2.Parent = gun 
handle2.formFactor = 0 
handle2.Size = Vector3.new(1,1,1) 
handle2.BrickColor = BrickColor.new("Bright yellow") 
mesh2 = mesh:clone() 
mesh2.Parent = handle2 
mesh2.Scale = Vector3.new(0.6,1.6,0.75) 

handle3 = Instance.new("Part") 
handle3.Parent = gun 
handle3.formFactor = 0 
handle3.Size = Vector3.new(1,1,1) 
handle3.BrickColor = BrickColor.new("Black") 
mesh3 = mesh:clone() 
mesh3.Parent = handle3 
mesh3.Scale = Vector3.new(0.45,0.45,0.95) 

handle4 = Instance.new("Part") 
handle4.Parent = gun 
handle4.formFactor = 0 
handle4.Size = Vector3.new(1,1,1) 
handle4.BrickColor = BrickColor.new("Really black") 
mesh4 = Instance.new("CylinderMesh") 
mesh4.Parent = handle4 
mesh4.Scale = Vector3.new(0.3,0.1,0.3) 
hold = false 
function selected(mouse, key) 
right.Part0 = right.Parent 
right.Part1 = rightarm 
left.Part0 = left.Parent 
left.Part1 = leftarm 
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3) 
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1) 
left.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
right.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
gun.Parent = me.Character 
gunweld1 = Instance.new("Weld") 
gunweld1.Parent = rightarm 
gunweld1.Part0 = gunweld1.Parent 
gunweld1.Part1 = handle 
gunweld1.C1 = CFrame.fromEulerAnglesXYZ(0.4,0,0) * CFrame.new(0,1,0) 
gunweld2 = Instance.new("Weld") 
gunweld2.Parent = handle 
gunweld2.Part0 = gunweld2.Parent 
gunweld2.Part1 = handle2 
gunweld2.C1 = CFrame.fromEulerAnglesXYZ(-0.4,0,0) * CFrame.new(0,0.75,0.5) 
gunweld3 = Instance.new("Weld") 
gunweld3.Parent = handle2 
gunweld3.Part0 = gunweld3.Parent 
gunweld3.Part1 = handle3 
gunweld3.C1 = CFrame.fromEulerAnglesXYZ(-0.3,0,0) * CFrame.new(0,0,-0.3) 
gunweld4 = Instance.new("Weld") 
gunweld4.Parent = handle2 
gunweld4.Part0 = gunweld3.Parent 
gunweld4.Part1 = handle4 
gunweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.751,0) 
mouse.Button1Down:connect(function() 
hold = true 
while hold == true do 
wait(0.04) 
local color = math.random(1, #bulletcolors) 
local pos = mouse.Hit.p + Vector3.new(math.random(-2,2),0,math.random(-2,2)) 
local bullet = Instance.new("Part") 
bullet.Parent = workspace 
bullet.formFactor = 0 
bullet.Size = Vector3.new(1,1,1) 
bullet.BrickColor = BrickColor.new(bulletcolors[color]) 
bullet.CanCollide = false 
bullet.Anchored = true 
bullet.CFrame = CFrame.new((handle4.Position + pos)/2, pos) 
local distance = (handle4.Position - pos).magnitude 
local bulletmesh = Instance.new("SpecialMesh") 
bulletmesh.Parent = bullet 
bulletmesh.MeshType = "Brick" 
bulletmesh.Scale = Vector3.new(0.02,0.02,distance) 
if mouse.Target ~= nil then 
local hu = mouse.Target.Parent:findFirstChild("Humanoid") 
if hu ~= nil then 
hu.Health = hu.Health - math.random(5, 15) 
end 
end 
coroutine.resume(coroutine.create(function() 
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.02,0,0) 
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.02,0,0) 
wait() 
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.02,0,0) 
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.02,0,0) 
wait(0.03) 
bullet:remove() 
end)) 
end 
end) 
mouse.Button1Up:connect(function() 
hold = false 
end) 
end 

function deselect() 
left.C0 = CFrame.new(0,0,0) 
right.C0 = CFrame.new(0,0,0) 
me.Character:makeJoints() 
wait() 
right.Part0 = nil 
right.Part1 = nil 
left.Part0 = nil 
left.Part1 = nil 
gun.Parent = game.Lighting 
me.Character:makeJoints() 
end 

sp.Selected:connect(selected) 
sp.Deselected:connect(deselect) 
 
