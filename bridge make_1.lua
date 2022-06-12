

me = game.Players.acb227 

if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
h.Parent = me.Backpack 
h.Name = "lolwut" 
script.Parent = h 
end 

sp = script.Parent 

hint = Instance.new("Hint") 
hint.Text = "the original tool that " ..me.Name.. " is using is brought to you by: Soul Productions... bai :D" 
hint.Parent = workspace 
material = "Wood" 
shape = "Brick" 
size = 1 
sizex = 5 
color = "Brown" 
mesh = "SpecialMesh" 
shape2 = "Head" 
hold = false 
function selected(mouse) 
mouse.Button1Down:connect(function() 
if mouse.Target == nil then return end 
hold = true 
pos = mouse.Hit.p 
p = Instance.new("Part") 
p.Parent = workspace 
p.formFactor = 0 
p.Size = Vector3.new(sizex,size,1) 
p.Anchored = true 
p.Transparency = 0.6 
p.TopSurface = 0 
p.BrickColor = BrickColor.new(color) 
p.BottomSurface = 0 
p.CFrame = CFrame.new(pos) 
mes = Instance.new("SpecialMesh") 
mes.Parent = p 
mes.MeshType = shape 
mes.Scale = Vector3.new(1,1,1) 

mouse.Move:connect(function() 
if mouse.Target == nil then return end 
if hold == true then 
local dist = (p.Position - mouse.Hit.p).magnitude 
p.CFrame = CFrame.new((mouse.Hit.p + pos)/2, pos) 
mes.Scale = Vector3.new(1,1,dist*2) 
end 
end) 
end) 

mouse.Button1Up:connect(function() 
hold = false 
local duh = p.CFrame 
p.Size = Vector3.new(sizex,size,mes.Scale.Z) 
p.CFrame = duh 
mes:remove() 
for i=1, 10 do 
wait() 
p.Transparency = p.Transparency - 0.06 
end 
p.Material = material 
end) 
end 

function deselected() 

end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "q" then 
size = 1 
end 
if key == "e" then 
size = 2 
end 
if key == "r" then 
size = 3 
end 
if key == "t" then 
size = 4 
end 
if key == "z" then 
color = "Brown" 
end 
if key == "x" then 
color = "Really black" 
end 
if key == "c" then 
color = "White" 
end 
if key == "v" then 
color = "Mid grey" 
end 
if key == "n" then 
size = 5 
sizex = 1 
end 
if key == "m" then 
size = 1 
sizex = 5 
end 
if key == "f" then 
po = Instance.new("Part") 
po.Material = "Wood" 
po.Position = mouse.hit.p 
po.Anchored = true 
po.Parent = workspace 
po.Size = Vector3.new(1,20,1) 
po.BrickColor = BrickColor.new("Brown") 

end 
if key == "g" then 
po = Instance.new("Part") 
po.Material = "Wood" 
po.Position = mouse.hit.p 
po.Anchored = true 
po.Parent = workspace 
po.Size = Vector3.new(1,30,1) 
po.BrickColor = BrickColor.new("Brown") 

end 
if key == "j" then 
local po = Instance.new("Part") 
po.Material = "Wood" 
po.Parent = workspace 
po.Anchored = true 
po.Size = Vector3.new(1,1,1) 
po.Position = mouse.hit.p 
po.BrickColor = BrickColor.new("Brown") 
po.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= "Fred" then 
human.Sit = true 
end 
end 
end) 
end 

if key == "k" then 
po = Instance.new("Part") 
po.Material = "Wood" 
po.Position = mouse.hit.p 
po.Parent = workspace 
po.Size = Vector3.new(1,10,1) 
po.BrickColor = BrickColor.new("Brown") 
po.Anchored = true 

end 

end 
end 

sp.Selected:connect(selected) 
sp.Deselected:connect(deselected) 

sp.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  


wait(5) 
hint:remove() 
