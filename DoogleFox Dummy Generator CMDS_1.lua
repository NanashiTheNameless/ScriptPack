user = "lordsheen" 
looklike = "" 
namez = "Dummy" 
speed = 20 
health = 100 
color1 = "Bright yellow" 
color2 = "Bright blue" 
color3 = "Bright green" 

function Del(E) 
wait(3.5) 
E.Parent:remove() 
end 
function HumanDed(ob) 
ob.Died:connect(function() 
coroutine.resume(coroutine.create(Del), ob) 
end) 
end 

function GenerateDummys(a) 
for i = 1, a do 
m = Instance.new("Model") 
m.Parent = Workspace 
m.Name = namez 

t = Instance.new("Part") 
t.Name = "Torso" 
t.formFactor = "Symmetric" 
t.Size = Vector3.new(2,2,1) 
t.Position = Vector3.new(0,100,0) 
t.BrickColor = BrickColor.new(color2) 
t.TopSurface = 0 
t.BottomSurface = 0 
t.Locked = true 
t.Parent = m 

h = t:Clone() 
h.Name = "Head" 
h.Size = Vector3.new(1,1,1) 
h.Position = t.Position 
h.BrickColor = BrickColor.new(color1) 
h.Parent = m 

ra = t:Clone() 
ra.Name = "Right Arm" 
ra.Size = Vector3.new(1,2,1) 
ra.Position = t.Position 
ra.BrickColor = BrickColor.new(color1) 
ra.Parent = m 
la = t:Clone() 
la.Name = "Left Arm" 
la.Size = Vector3.new(1,2,1) 
la.Position = t.Position 
la.BrickColor = BrickColor.new(color1) 
la.Parent = m 

rl = t:Clone() 
rl.Name = "Right Leg" 
rl.Size = Vector3.new(1,2,1) 
rl.Position = t.Position 
rl.BrickColor = BrickColor.new(color3) 
rl.Parent = m 
ll = t:Clone() 
ll.Name = "Left Leg" 
ll.Size = Vector3.new(1,2,1) 
ll.Position = t.Position 
ll.BrickColor = BrickColor.new(color3) 
ll.Parent = m 

hu = Instance.new("Humanoid") 
hu.Parent = m 
hu.Name = "Humanoid" 
hu.MaxHealth = health 
hu.Health = health 
hu.WalkSpeed = speed 
coroutine.resume(coroutine.create(HumanDed), hu) 

--------- WELDING ---------

w = Instance.new("Snap") 
w.Name = "Neck" 
w.Parent = t 
w.Part0 = t 
w.Part1 = h 
w.C0 = CFrame.new(0,1.5,0) 

w = Instance.new("Motor") 
w.Name = "Right Shoulder" 
w.Parent = t 
w.Part0 = t 
w.Part1 = ra 
w.C0 = CFrame.new(0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
w.C1 = CFrame.new(-0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
w.MaxVelocity = 0.1 
w = Instance.new("Motor") 
w.Name = "Left Shoulder" 
w.Parent = t 
w.Part0 = t 
w.Part1 = la 
w.C0 = CFrame.new(-0.75,0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
w.C1 = CFrame.new(0.75,0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
w.MaxVelocity = 0.1 

w = Instance.new("Motor") 
w.Name = "Right Hip" 
w.Parent = t 
w.Part0 = t 
w.Part1 = rl 
w.C0 = CFrame.new(0.25,-1,0) * CFrame.Angles(0,math.pi/2,0) 
w.C1 = CFrame.new(-0.25,1,0) * CFrame.Angles(0,math.pi/2,0) 
w.MaxVelocity = 0.1 
w = Instance.new("Motor") 
w.Name = "Left Hip" 
w.Parent = t 
w.Part0 = t 
w.Part1 = ll 
w.C0 = CFrame.new(-0.25,-1,0) * CFrame.Angles(0,-math.pi/2,0) 
w.C1 = CFrame.new(0.25,1,0) * CFrame.Angles(0,-math.pi/2,0) 
w.MaxVelocity = 0.1 

n = Instance.new("NumberValue") 
n.Parent = m 
n.Name = "IsADummy" 

wait() 

if game.Players[user].Character:findFirstChild("Torso") ~= nil then 
m:moveTo(game.Players[user].Character.Torso.Position + Vector3.new(math.random(-15,15),0,math.random(-15,15))) 
end 
if game.Players[user].Character:findFirstChild("Torso") == nil then 
m:moveTo(game.Workspace.Base.Position + Vector3.new(math.random(-15,15),0,math.random(-15,15))) 
end 

looklike2 = nil 
if string.lower(looklike) == "randomize" then 
playaz = game.Players:GetChildren() 
looklike2 = playaz[math.random(1, #playaz)].Name 
else 
looklike2 = looklike 
end 
if game.Players:findFirstChild(looklike2) ~= nil then 
if game.Players[looklike2].Character.Parent ~= nil then 
for i, v in pairs(game.Players[looklike2].Character:GetChildren()) do 
if v.className == "Shirt" or v.className == "Pants" or v.className == "BodyColors" or v.className == "CharacterMesh" or v.className == "ShirtGraphic" then 
v2 = v:Clone() 
v2.Parent = m 
end 
if v.className == "Hat" then 
v2 = v:Clone() 
v2.Handle.Locked = true 
v2.Parent = m 
end 
if v.Name == "Animate" then 
v2 = v:Clone() 
v2.Disabled = true 
v2.Parent = m 
end 
if v.Name == "Sound" then 
v2 = v:Clone() 
v2.Parent = m 
end 
if v.Name == "Head" then 
if v:findFirstChild("face") then 
v2 = v.face:Clone() 
v2.Parent = m.Head 
end 
if v:findFirstChild("Mesh") then 
v2 = v.Mesh:Clone() 
v2.Parent = m.Head 
end 
end 
if v.Name == "Torso" then 
if v:findFirstChild("roblox") then 
v2 = v.roblox:Clone() 
v2.Parent = m.Torso 
end 
end 
end 
end 
end 
wait(0.05) 
end 
end 


function Chat(msg) 

if string.sub(msg, 1, 4) == "gen/" then 
num = tonumber(string.sub(msg, 5)) 
coroutine.resume(coroutine.create(GenerateDummys), num) 
end 
if string.sub(msg, 1, 9) == "looklike/" then 
looklike = string.sub(msg, 10) 
end 
if string.sub(msg, 1, 5) == "col1/" then 
color1 = string.sub(msg, 6) 
end 
if string.sub(msg, 1, 5) == "col2/" then 
color2 = string.sub(msg, 6) 
end 
if string.sub(msg, 1, 5) == "col3/" then 
color3 = string.sub(msg, 6) 
end 
if string.sub(msg, 1, 6) == "dummy/" then 
pcall(function() game.Players[string.sub(msg, 7)].Character=m end)
end 
if string.sub(msg, 1, 7) == "health/" then 
health = tonumber(string.sub(msg, 8)) 
end 
if string.sub(msg, 1, 6) == "namez/" then 
namez = string.sub(msg, 7) 
end 
if msg == "clean dummys" then 
for _, vz in pairs(Workspace:GetChildren()) do 
if vz:findFirstChild("IsADummy") ~= nil then 
vz:remove() 
end 
if vz.className == "Hat" then 
vz:remove() 
end 
end 
end 
if msg == "kill dummys" then 
for _, vz in pairs(Workspace:GetChildren()) do 
if vz:findFirstChild("IsADummy") ~= nil then 
vz.Humanoid.Health = 0 
end 
end 
end 
if msg == "drop hats" then 
for _, vz in pairs(Workspace:GetChildren()) do 
if vz:findFirstChild("IsADummy") ~= nil then 
for _, vzz in pairs(vz:GetChildren()) do 
if vzz.className == "Hat" then 
vzz.Parent = Workspace 
end 
end 
end 
end 
end 
if msg == "remov skript" then 
script:remove() 
end 

end 
game.Players[user].Chatted:connect(Chat) 