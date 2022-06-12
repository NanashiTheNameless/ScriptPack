local me = game.Players.chriswwefan
local wand = Instance.new("Tool") 
wand.Parent = me.Backpack 
wand.Name = "Wand" 
wand.GripPos = Vector3.new(0, -1, 0) 
local hand = Instance.new("Part") 
hand.Parent = wand 
hand.Name = "Handle" 
hand.BrickColor = BrickColor.new("Dark orange") 
hand.Size = Vector3.new(1, 3.6, 1) 
hand.BottomSurface = "Smooth" 
hand.TopSurface = "Smooth" 
hand.Locked = true 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = hand 
mesh.Scale = Vector3.new(0.4, 1, 0.4) 
local scr = Instance.new("LocalScript") 
scr.Name = "Local Gui" 
scr.Parent = wand 
scr.Source = [[ 
Tool = script.Parent 
Me = Tool.Parent 
Spell = "Ava" 
on = true 
iceon = true 
mode = true 
local force = Instance.new("BodyPosition") 
force.Parent = nil 
local P2 = Instance.new("Part") 
P2.formFactor = 0 
P2.Parent = nil 
P2.BrickColor = BrickColor.new("Bright bluish green") 
P2.Anchored = true 
P2.CanCollide = false 
P2.TopSurface = "Smooth" 
P2.BottomSurface = "Smooth" 
P2.Name = "Laser" 
function Click(mouse) 
if (Spell == "Tele") then 
force.Parent = mouse.target 
on = true 
while on do 
force.position = mouse.hit.p 
local Place0 = CFrame.new(Tool.Handle.CFrame.x,Tool.Handle.CFrame.y + 1.2,Tool.Handle.CFrame.z) 
local Place1 = mouse.Hit.p 
P2.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P2.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P2.Parent = game.Workspace 
P2.BrickColor = BrickColor.new("Bright bluish green") 
wait(0.0) 
end 
end 
if (Spell == "Draw") then 
mode = true 
while mode do 
local p = Instance.new("Part") 
p.Parent = game.Workspace 
p.formFactor = "Plate" 
p.Size = Vector3.new(1,0.4,1) 
p.BrickColor = BrickColor.new("Bright violet") 
p.TopSurface = "Smooth" 
p.Name = "Ink" 
p.BottomSurface = "Smooth" 
p.Position = mouse.hit.p 
p.Anchored = true 
local Place0 = CFrame.new(Tool.Handle.CFrame.x,Tool.Handle.CFrame.y + 1.2,Tool.Handle.CFrame.z) 
local Place1 = mouse.Hit.p 
P2.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P2.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P2.Parent = game.Workspace 
P2.BrickColor = BrickColor.new("Black") 
wait(0.0) 
end 
end 
if (Spell == "Ava") then 
local P = Instance.new("Part") 
local Place0 = CFrame.new(Tool.Handle.CFrame.x,Tool.Handle.CFrame.y + 1.2,Tool.Handle.CFrame.z) 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Dark green") 
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
local E = Instance.new("Explosion") 
E.Position = Place1 
E.Parent = game.Workspace 
E.BlastPressure = 5000 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 
if (Spell == "Aper") then 
Tool.Parent:MoveTo(mouse.hit.p + Vector3.new(0,5,0)) 
end 

if (Spell == "Glacius") then 
Tool.Parent.Humanoid.WalkSpeed = 100 
iceon = true 
while iceon do 
local ice = Instance.new("Part") 
ice.TopSurface = "Smooth" 
ice.BottomSurface = "Smooth" 
ice.Transparency = 0.3 
ice.Anchored = true 
ice.Locked = true 
ice.Position = Tool.Parent.Torso.Position 
local cleanup = script.Clean:clone() 
cleanup.Parent = ice 
cleanup.Disabled = false 
ice.Size = Vector3.new(8, 2.4, 14) 
ice.BrickColor = BrickColor.new("Pastel Blue") 
ice.Parent = game.Workspace 
ice.CFrame = CFrame.new(Tool.Parent.Torso.CFrame.x,Tool.Parent.Torso.CFrame.y - 4,Tool.Parent.Torso.CFrame.z) 
ice.CFrame = CFrame.new(Tool.Parent.Head.Position) 
ice.CFrame = CFrame.new(Tool.Parent.Torso.Position.x,Tool.Parent.Torso.Position.y-4,Tool.Parent.Torso.Position.z) 
ice.CFrame = CFrame.new(ice.Position,mouse.hit.p) 
wait(0.0) 
end 
end 
end 
function DownKey(Key) 
if (Key ~= nil) then 
if (Key == "y") then 
Spell = "Aper" 
end 
if (Key == "z") then 
Spell = "Ava" 
end 
if (Key == "x") then 
Spell = "Tele" 
end 
if (Key == "v") then 
Spell = "Draw" 
end 
if (Key == "n") then 
Spell = "Glacius" 
end 
if (Key == "c") then 
local force = Instance.new("ForceField") 
force.Parent = Tool.Parent 
end 
if (Key == "b") then 
ink = game.Workspace:GetChildren() 
for i = 1, #ink do 
if (ink[i].Name == "Ink") then 
ink[i]:remove() 
end 
end 
end 
end 
end 
function ClickUp(mouse) 
if (Spell == "Glacius") then 
Tool.Parent.Humanoid.WalkSpeed = 16 
iceon = false 
end 
if (Spell == "Draw") then 
P2.Parent = nil 
mode = false 
end 
if (Spell == "Tele") then 
on = false 
P2.Parent = nil 
force.Parent = nil 
end 
end 
function Select(mouse) 
mouse.KeyDown:connect(DownKey) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() ClickUp(mouse) end) 
end 
Tool.Equipped:connect(Select) 


]] 

local clean = Instance.new("Script") 
clean.Parent = scr 

clean.Name = "Clean" 

clean.Disabled = true 
clean.Source = [[ 

wait(3) 

script.Parent:remove() 

]] 
wait(0.1) 
wand:clone().Parent = me.Backpack 
wait(0.1) 
wand:remove() 
 
