--mudkip :D
if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") 
h.Name = "Mudkip" 
h.Parent = game.Players.luxulux.Backpack 
script.Parent = h 
end 

function ClusterBombPiece(mis, tar, misg, misv) 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
misv.velocity = mis.CFrame.lookVector * -250 
end 
end 

bin = script.Parent 
player = bin.Parent.Parent.Character 
colors = {"Really red","Really black","Bright red","Black"} 
function onClicked (mouse) 
if bin.Name == "Mud-slap" then 
for i = 1,20 do 
wait() 
local bul = Instance.new("Part") 
bul.formFactor = "Symmetric" 
bul.Shape = "Ball" 
bul.Size = Vector3.new(math.random(2,5),math.random(2,5),math.random(2,5)) 
local cr = math.random(1,#colors) 
local color = colors[cr] 
bul.BrickColor = BrickColor.new(color) 
bul.Transparency = .5 
bul.CanCollide = true 
bul.TopSurface = 0 
bul.BottomSurface = 0 
bul.CFrame = player.Torso.CFrame * CFrame.new(0,0,-5) 
bul.Parent = Workspace 
local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * (200) 
bulv.Parent = bul 
bul.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid:TakeDamage(200) 
bul:remove() 
end 
end 
end) 
game:GetService("Debris"):AddItem(bul, .7) 
end 
end 

if bin.Name == "Water Gun" then 
local tar = mouse.Target 
if tar ~= nil then 
if (player.Torso.Position - tar.Position).magnitude < 100 then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Really red") 
shot.formFactor = "Symmetric" 
shot.Transparency = 0.5 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(1,1,(player.Torso.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((player.Torso.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent:findFirstChild("Humanoid"):TakeDamage(400) 
end 
wait(.5) 
shot:remove() 
end 
wait(.5) 
end 
end 

if bin.Name == "Take Down" then 
local timer = Instance.new("Sparkles") 
timer.Parent = player.Torso 
a = Instance.new("Part") 
a.BrickColor = BrickColor.new("Really red") 
timer.SparkleColor = a.Color 
a:Remove() 
game:GetService("Debris"):AddItem(timer,1) 
player.Humanoid.WalkSpeed = 100 
repeat 
local a = game.Players:GetChildren() 
wait() 
for i = 1, #a do 
if a[i].Name ~= player.Name then 
if (a[i].Character.Torso.Position - player.Torso.Position).magnitude < 10 then 
a[i].Character.Humanoid.PlatformStand = true 
a[i].Character.Torso.CFrame = a[i].Character.Torso.CFrame*CFrame.new(0,2,0) * CFrame.Angles(math.rad(51),math.rad(51),math.rad(51)) 
a[i].Character.Humanoid:TakeDamage(150) 
a[i].Character.Humanoid.Sit = true 
a[i].Character.Humanoid.Sit = false 
end 
end 
end 
until 
timer:IsDescendantOf(Workspace) == false 
player.Humanoid.WalkSpeed = 16 
end 
if bin.Name == "Mud Sport" then 
local bul = Instance.new("Part") 
bul.formFactor = "Symmetric" 
bul.Size = Vector3.new(1,1,1) 
bul.BrickColor = BrickColor.new("Really black") 
bul.Transparency = .5 
bul.CanCollide = false 
bul.TopSurface = 0 
bul.BottomSurface = 0 
bul.CFrame = player.Torso.CFrame * CFrame.new(0,0,0) 
bul.Parent = player 
local bulm = Instance.new("SpecialMesh") 
bulm.Parent = bul 
bulm.MeshType = "Sphere" 
bul.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid:TakeDamage(300) 
hit.Parent.Humanoid.PlatformStand = true 
hit.Parent.Torso.Velocity = CFrame.new(player.Torso.Position, hit.Parent.Torso.Position).lookVector* 50 
hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.Angles(math.rad(180),0,math.rad(180)) 
wait(2) 
hit.Parent.Humanoid.Sit = true 
hit.Parent.Humanoid.Sit = false 
end 
end 
end) 
game:GetService("Debris"):AddItem(bul, 1) 
repeat 
bul.Size = bul.Size + Vector3.new(1,0,1) 
bul.CFrame = player.Torso.CFrame * CFrame.new(0,-3,0) 
wait() 
until 
bul:IsDescendantOf(Workspace) == nil 
end 
end 



function onSelected (mouse) 
mouse.Button1Down:connect(function() onClicked (mouse) end) 
mouse.KeyDown:connect(function(key) 
if key == "z" then 
bin.Name = "Mud-slap" 
elseif key == "x" then 
bin.Name = "Take Down" 
elseif key == "c" then 
bin.Name = "Mud Sport" 
elseif key == "v" then 
bin.Name = "Water Gun" 
end 
end) 
end 

script.Parent.Selected:connect(onSelected) 
