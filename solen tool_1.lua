local/                                                                                                                                                                   
col = Color3.new(0,0,100)
s = Vector3.new(5,50,5)
me = game.Players = "yfc"
char = me.Character
torso = char.Torso
char.Humanoid.MaxHealth = 1000
char.Humanoid.Health = 1000

m = Instance.new("Model",char)
m.Name = "10110011010100011101010000110101000011101010001110110111010110101011011010101010001011101010101101010101"


function laer(to)
coroutine.resume(coroutine.create(function() 
q = to
q.Anchored = true
for i = 0, 100 do 
wait()
q.CFrame = q.CFrame * CFrame.new(0,-0.1,0)*CFrame.Angles(0,0.1,0)
end
q.Anchored = false
end))
return las 
end 

function ls(to)
q = to
p =  Instance.new("Part",torso)
p.Anchored = true
p.Name = "spike"
p.Size = Vector3.new(50,50,5)
p.BrickColor = BrickColor.new("Dark green")
p.Material = "Plastic"
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = q.CFrame* CFrame.new(0,-15,5)*CFrame.Angles(-1, 0, 0)
coroutine.resume(coroutine.create(function() 
for i = 0.05, 49 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,1,0)*CFrame.Angles(-0.01, 0, 0)
end

return las 
end))
end 

function lr(to)

q = to
p =  Instance.new("Part",torso)
p.Anchored = true
p.Name = "spike"
p.Size = s
p.BrickColor = BrickColor.new("Dark green")
p.Material = "Plastic"
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = q.CFrame* CFrame.new(0,-27,-5)
coroutine.resume(coroutine.create(function() 
for i = 0.05, 49 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,1,0)
end

return las 
end))
end 

function lrc(p)
coroutine.resume(coroutine.create(function() 
for i = 0.005, 49 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,-1,-1)
end
p:Remove()
return las2
end))
end 

function lrc2(p)
coroutine.resume(coroutine.create(function() 
for i = 0.05, 10 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,-1,0)
end
p:Remove()
return las2
end))
end 

function lrh(to)

q = to
p =  Instance.new("Part",torso)
p.Anchored = true
p.Name = "spike"
p.Size = Vector3.new(50,50,5)
p.BrickColor = BrickColor.new("Dark green")
p.Material = "Plastic"
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = q.CFrame* CFrame.new(0,-27,-5)
coroutine.resume(coroutine.create(function() 
for i = 0.05, 49 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,1,0)
end

return las 
end))
end  




function lrw(to)

q = to
p =  Instance.new("Part",torso)
p.Anchored = true
p.Name = "wall"
p.Size = Vector3.new(10,20,2)
p.BrickColor = BrickColor.new("Dark green")
p.Material = "Plastic"
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = q.CFrame* CFrame.new(0,-5,-5)

p2 =  Instance.new("Part",torso)
p2.Anchored = true
p2.Name = "wall"
p2.Size = Vector3.new(10,20,2)
p2.BrickColor = BrickColor.new("Dark green")
p2.Material = "Plastic"
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.CFrame = q.CFrame* CFrame.new(0,-5,5)

p3 =  Instance.new("Part",torso)
p3.Anchored = true
p3.Name = "wall"
p3.Size = Vector3.new(2,20,10)
p3.BrickColor = BrickColor.new("Dark green")
p3.Material = "Plastic"
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
p3.CFrame = q.CFrame* CFrame.new(5,-5,0)

p4 =  Instance.new("Part",torso)
p4.Anchored = true
p4.Name = "wall"
p4.Size = Vector3.new(2,20,10)
p4.BrickColor = BrickColor.new("Dark green")
p4.Material = "Plastic"
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
p4.CFrame = q.CFrame* CFrame.new(-5,-5,0)
coroutine.resume(coroutine.create(function() 
for i = 0.05, 10 do 
wait()
p.CFrame = p.CFrame * CFrame.new(0,1,0)
p2.CFrame = p2.CFrame * CFrame.new(0,1,0)
p3.CFrame = p3.CFrame * CFrame.new(0,1,0)
p4.CFrame = p4.CFrame * CFrame.new(0,1,0)
end
end))
return las 
end  





--_________________________________________________________________________________________________________________________________________________________________--
if(me.Backpack:findFirstChild("Magic") ~= nil)then
me.Backpack.Magic:Remove()
end


me = game.Players = "acb227"
me2 = me.Character
if (script.Parent.className ~= "HopperBin") then 
	local h = Instance.new("HopperBin") 
	h.Name = "Magic" 
	h.Parent = me.Backpack 
	script.Parent = h 
	script.Name = "Function" 
end


function onKeyDown(key) 
key:lower() 

if key == "z" then 
if(torso:findFirstChild("raise")== nil)then
d = Instance.new("BodyVelocity")
d.Parent = torso
d.Name = "raise"
d.maxForce = Vector3.new(math.huge, math.huge, math.huge)
d.velocity = Vector3.new(0,100,0)
--it =3

end end
if(key == "q")then
s = Vector3.new(5,50,5)
lr(torso)
end
if(key=="e")then
stuff = torso:GetChildren()
for i = 1 , #stuff do
if stuff[i].Name == "spike" then
lrc(stuff[i])
end
end
end
if(key == "r")then
lrh(torso)
end
if(key == "x")then
lrw(torso)
end
if(key  == "t")then
ls(torso)
end
if(key == "f")then
lear(torso)
end
end

function onKeyUp(key) 
key:lower() 
if(key == "z")then
torso.raise:Remove()
end
if(key == "x")then
stuff = torso:GetChildren()
for i = 1 , #stuff do
if stuff[i].Name == "wall" then
lrc2(stuff[i])
end
end
end
end


function onSelected(mouse) 
mouse.KeyDown:connect(onKeyDown) 
mouse.KeyUp:connect(onKeyUp) 




end 

script.Parent.Selected:connect(onSelected)
script.Parent.Deselected:connect(function()

end) 

function click (mouse) 
local p=Instance.new("Part") 
p.BrickColor = BrickColor.new("Dark green")
p.Material = "Grass"
p.Parent=game.Workspace 
p.Shape = 0
p.Position=mouse.hit.p + Vector3.new (0,10,0) 
p.Size=Vector3.new(10,10,10) 
p.Velocity=(char.Head.Position - mouse.hit.p).unit* -200 + Vector3.new (0,20,0) 
game.Debris:AddItem(p,5) 
end 
function select (mouse) 
mouse.Button1Down:connect(function () click (mouse) end) 
end 
script.Parent.Selected:connect(select)