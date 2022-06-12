l = Instance.new("Tool") 
l.Name = "LOLOLOL" 
s = Instance.new("Script") 
s.Name = "GrowScript" 
s.Source = [[ 
t = false 
function onTouched(hit) 
if t == true then 
return 
end 
t = true 
script.Parent.Anchored = true 
origCFrame = script.Parent.CFrame 
a = script.KillScript:clone() 
a.Parent = script.Parent 
for i = 1, 33 do 
script.Parent.Size = Vector3.new(i,i,i) 
script.Parent.CFrame = origCFrame 
wait() 
end 
wait(3) 
for i = -33, 0 do 
script.Parent.Size = Vector3.new(math.abs(i),math.abs(i),math.abs(i)) 
script.Parent.CFrame = origCFrame 
wait() 
end 
script.Parent:remove() 
end 
script.Parent.Touched:connect(onTouched) 
]] 
s1 = Instance.new("Script") 
s1.Parent = s 
s1.Name = "KillScript" 
s1.Source = [[ 
target = nil 
function onTouched(hit) 
if hit.Parent:findFirstChild("Humanoid") then 
bp = Instance.new("BodyPosition") 
bp.position = script.Parent.Position 
bp.maxForce = Vector3.new(9e+999,9e+999,9e+999) -- O_O 
if hit.Parent == script.Parent.Creator.Value then return end 
a = hit.Parent:GetChildren() 
for i = 1, #a do 
if a[i].className == script.Parent.className then 
if a[i]:findFirstChild("BodyPosition") then 
a[i].BodyPosition:remove() 
bp:clone().Parent = a[i] 
else 
a[i].BrickColor = BrickColor.Black() 
a[i].Transparency = 0.6 
bp:clone().Parent = a[i] 
a[i].Parent:BreakJoints() 
end 
end 
end 
wait(1) 
b = hit.Parent:GetChildren() 
for i = 1, #b do 
if b[i].className == script.Parent.className then 
b[i]:remove() 
end 
end 
end 
end 
script.Parent.Touched:connect(onTouched) 
]] 
s:clone().Parent = l 
ha = Instance.new("Part") 
ha.TopSurface = 0 
ha.BottomSurface = 0 
ha.CanCollide = false 
ha.Name = "Handle" 
ha.Shape = "Ball" 
ha.Size = Vector3.new(1,1,1) 
ha.BrickColor = BrickColor.Black() 
ha.Parent = l 
f = Instance.new("LocalScript") 
f.Source = [[ 
Tool = script.Parent 
dm = Instance.new("Part") 
dm.Shape = "Ball" 
dm.Size = Vector3.new(1,1,1) 
dm.TopSurface = 0 
dm.BottomSurface = 0 
dm.BrickColor = BrickColor.Black() 
Tool.GrowScript:clone().Parent = dm 
dm.CanCollide = false 
function onButton1Down(mouse) 
dir = (mouse.Hit.p - Tool.Handle.Position).unit 
pos = 5*dir+Tool.Handle.Position 
spd = 90*dir 
a = dm:clone() 
a.Position = pos 
a.Parent = game.Workspace 
p = Instance.new("BodyVelocity") 
p.Parent = a 
p.maxForce = Vector3.new(9.99e+009,9.99e+009,9.99e+009) 
p.velocity = spd+Vector3.new(0,0.03,0) 
v = Instance.new("ObjectValue") 
v.Value = Tool.Parent 
v.Name = "Creator" 
v.Parent = a 
end 
function onEquipped(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
Tool.Equipped:connect(onEquipped) 
]] 
f:clone().Parent = l 
l:clone().Parent = game.Players.yfc.Backpack 