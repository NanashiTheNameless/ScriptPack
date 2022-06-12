User = game.Players.acb227 
if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
h.Parent = User.Backpack 
h.Name = "Sharp Lazer" 
script.Parent = h 
end 

function move(mouse) 
local P = Instance.new("Part") 
local Place0 = CFrame.new(User.Character.Head.CFrame.x,User.Character.Head.CFrame.y,User.Character.Head.CFrame.z) 
local Place1 = mouse.Hit.p 
local Place2 = mouse.Target 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = User.Character 
P.BrickColor = BrickColor.new("Really black") 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = P 
mesh.MeshType = "Brick" 
mesh.Name = "LengthMesh" 
mesh.Scale = Vector3.new(.1, .1, 1) 
local Handle = Instance.new("ArcHandles") 
Handle.Parent = Place2 
Handle.Adornee = Place2 
Handle.Color = BrickColor.new("Really red") 
local s = Instance.new("Smoke") 
s.Parent = Place2 
s.Color = Color3.new(0,0,0) 
for i = 1,20 do 
P.Transparency = i*0.05 
wait() 
end 
P:remove() 
Handle: Remove() 
s: Remove() 
if Place2.Anchored == false then 
Place2: BreakJoints() 
else 
Place2.Anchored = false 
Place2: BreakJoints() 
end 
end 

function selected(mouse) 
mouse.Button1Down:connect(function () move(mouse) end) 
end 