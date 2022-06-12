Name="yfc"
pcall(function() workspace[Name].Droid:remove() end)
player = game.Players[Name]
char = player.Character 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

Time=500000

r=tick()
wait()
print("Your life span is: ~"..math.floor((Time/(tick()-r))*(tick()-r)))

function Infect(char)
Color=BrickColor.new("Brown")
Color2=BrickColor.new("Grime")
local model = Instance.new("Model") 
model.Parent = char 
model.Name = "Droid" 
char.Humanoid.WalkSpeed=12
fake=char.Head:clone()
pcall(function() fake.face:remove() char.Head.face:remove()
char.Head.Transparency=1
fake.Parent=model
fake.Transparency=0
w=Instance.new("Weld")
w.Part1=fake
w.Part0=char.Head
w.Parent=char
fake.Mesh.Scale=fake.Mesh.Scale+Vector3.new(-0.01,-0.01,-0.01)
fake.BrickColor=Color2
for _,v in pairs(char:children()) do
if v.className=="Part" then
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
elseif v.className=="Hat" then
v:remove()
end
end
char.Shirt:remove()
char.Pants:remove()
end)
char.Head.Changed:connect(function(p)
if p=="BrickColor" then
wait()
char["Right Leg"].BrickColor=Color
char["Left Leg"].BrickColor=Color
char["Torso"].BrickColor=Color
char["Head"].BrickColor=Color2
char["Right Arm"].BrickColor=Color2
char["Left Arm"].BrickColor=Color2
end
end)
char.Head.BrickColor=BrickColor:Red()
Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]} or {char.Torso["Left Shouldr"],char.Torso["Right Shouldr"]}
char.Torso.Neck.C0=char.Torso.Neck.C0*CFrame.Angles(math.rad(8),math.rad(12),0)
Arms[1].Parent=nil
w = Instance.new("Weld") 
w.Name="Left Shouldr"
w.Parent = char.Torso
w.Part0 = char["Left Arm"]
w.Part1 = w.Parent
w.C0=CFrame.new(1.5,0.3,0)*CFrame.Angles(math.rad(-95),math.rad(9),math.rad(20))
Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
w2.C0=CFrame.new(-1.5,0.3,0)*CFrame.Angles(math.rad(-95),math.rad(-9),math.rad(-20))
char["Left Arm"].Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") and hit.Parent.Torso:findFirstChild("Right Shoulder") then
Delay(0,function() Infect(hit.Parent) end)
end
end)
char["Right Arm"].Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") and hit.Parent.Torso:findFirstChild("Right Shoulder") then
Delay(0,function() Infect(hit.Parent) end)
end
end)
Delay(0,function()
r=tick()
wait()
local charh=char
for i=1,Time/(tick()-r) do
wait()
Dist=150
Targ=nil
for _,v in pairs(game.Players:children()) do
if v:IsA("Player") and v.Character and v.Character:findFirstChild("Torso") and v.Character.Torso:findFirstChild("Right Shoulder") then
if (v.Character.Torso.Position-charh.Torso.Position).magnitude<Dist then
Dist=(v.Character.Torso.Position-charh.Torso.Position).magnitude
Targ=v.Character.Torso
end
end
end
if Targ and Targ.Parent then
charh.Humanoid:MoveTo(Targ.Position,workspace.Base)
Targ=nil
end
end
charh.Head:remove()
end)
end

Infect(char)
--lego