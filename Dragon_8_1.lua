-----[[Dragon_:D_Tool Soon To Come]]------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 

user = "xSoulStealerx" 

maincolor = "Black" -- this is the main color of your dragon 
secondcolor = "Bright red" -- this is the color of the details 

m = Instance.new("Model") 
m.Parent = game.Players[user].Character 
m.Name = "Dragon -- Neeps Soul/Gaurdian" 

script.Parent = m 
script.Name = "Dragon -- Neeps Soul/Gaurdian" 
FloatingOnUser = true 
Carrying = false 

torso = game.Players[user].Character:findFirstChild("Torso") 
they = 0 

he = Instance.new("Part") 
he.Parent = m 
he.Name = "Head" 
he.formFactor = ("Symmetric") 
he.Size = Vector3.new(2,2,2) 
he.BrickColor = BrickColor.new(maincolor) 
he.Anchored = false 
he.CanCollide = false 
he.Locked = true 
he.TopSurface = ("Smooth") 
he.BottomSurface = ("Smooth") 
he.Position = torso.Position 
hem = Instance.new("SpecialMesh") 
hem.Parent = he 
hem.MeshType = ("Brick") 
hem.Scale = Vector3.new(1.4,1,2) 

tor = Instance.new("Part") 
tor.Parent = m 
tor.Name = "Torso" 
tor.formFactor = ("Symmetric") 
tor.Size = Vector3.new(2,2,2) 
tor.BrickColor = BrickColor.new(maincolor) 
tor.Anchored = false 
tor.CanCollide = false 
tor.Locked = true 
tor.TopSurface = ("Smooth") 
tor.BottomSurface = ("Smooth") 
tor.Position = torso.Position 
torm = Instance.new("SpecialMesh") 
torm.Parent = tor 
torm.MeshType = ("Brick") 
torm.Scale = Vector3.new(2,1.2,4.5) 

w = Instance.new("Motor") 
w.Parent = tor 
w.Name = "MainWeld" 
w.Part0 = tor 
w.Part1 = he 
w.C0 = CFrame.new(0,1,-4.5) 

m:MakeJoints() 

function Del(E, T) 
wait(T) 
E:remove() 
end 
hu = Instance.new("Humanoid") 
hu.Parent = m 
hu.Name = "Humanoid" 
hu.PlatformStand = true 
hu.MaxHealth = MathHuge 
hin = Instance.new("Hint") 
hin.Parent = workspace 
hin.Name = "Blawfhherhgsgdtrdyjxtdnysvhgrt" 
hin.Text = "The Dragon "..user.." is using, Dragon ---- neepstars2833's script" 
coroutine.resume(coroutine.create(Del), hin, 8) 
floaty = Instance.new("BodyPosition") 
floaty.Parent = tor 
floaty.Name = "FloatyPosition" 
floaty.maxForce = Vector3.new(0,math.huge,0) 
floaty.position = torso.Position + Vector3.new(0,6,0) 
stablizer = Instance.new("BodyGyro") 
stablizer.Parent = tor 
stablizer.cframe = torso.CFrame 
stablizer.D = 100 


-----[[Other Parts]]-------------------------------------------------- 

--[[Eyez]]---------------------- 
eye1 = Instance.new("Part") 
eye1.Parent = m 
eye1.Name = "Right Eye" 
eye1.formFactor = ("Symmetric") 
eye1.Size = Vector3.new(1,1,1) 
eye1.BrickColor = BrickColor.new(secondcolor) 
eye1.Anchored = false 
eye1.CanCollide = false 
eye1.Locked = true 
eye1.TopSurface = ("Smooth") 
eye1.BottomSurface = ("Smooth") 
eye1.Position = torso.Position 
eye1.Reflectance = 0.15 
eye1m = Instance.new("BlockMesh") 
eye1m.Parent = eye1 
eye1m.Scale = Vector3.new(0.7,0.3,0.5) 
eye1w = Instance.new("Motor") 
eye1w.Parent = he 
eye1w.Name = "Eye1Weld" 
eye1w.Part0 = he 
eye1w.Part1 = eye1 
eye1w.C0 = CFrame.new(0.6,0.3,-1.8) * CFrame.Angles(0,0,0.4) 

eye2 = Instance.new("Part") 
eye2.Parent = m 
eye2.Name = "Left Eye" 
eye2.formFactor = ("Symmetric") 
eye2.Size = Vector3.new(1,1,1) 
eye2.BrickColor = BrickColor.new(secondcolor) 
eye2.Anchored = false 
eye2.CanCollide = false 
eye2.Locked = true 
eye2.TopSurface = ("Smooth") 
eye2.BottomSurface = ("Smooth") 
eye2.Position = torso.Position 
eye2.Reflectance = 0.15 
eye2m = Instance.new("BlockMesh") 
eye2m.Parent = eye2 
eye2m.Scale = Vector3.new(0.7,0.3,0.5) 
eye2w = Instance.new("Motor") 
eye2w.Parent = he 
eye2w.Name = "Eye2Weld" 
eye2w.Part0 = he 
eye2w.Part1 = eye2 
eye2w.C0 = CFrame.new(-0.6,0.3,-1.8) * CFrame.Angles(0,0,-0.4) 
-------------- 

----[[Head Spike]]---------------- 
spike = Instance.new("Part") 
spike.Parent = m 
spike.Name = "Head Spike" 
spike.formFactor = ("Symmetric") 
spike.Size = Vector3.new(1,1,1) 
spike.BrickColor = BrickColor.new(secondcolor) 
spike.Anchored = false 
spike.CanCollide = false 
spike.Locked = true 
spike.TopSurface = ("Smooth") 
spike.BottomSurface = ("Smooth") 
spike.Position = torso.Position 
spike.Reflectance = 0.15 
spikem = Instance.new("SpecialMesh") 
spikem.Parent = spike 
spikem.MeshType = ("Wedge") 
spikem.Scale = Vector3.new(0.3,0.5,2) 
spikew = Instance.new("Motor") 
spikew.Parent = he 
spikew.Name = "HeadSpikeWeld" 
spikew.Part0 = he 
spikew.Part1 = spike 
spikew.C0 = CFrame.new(0,1.25,0) * CFrame.Angles(0,0,0) 
------------- 


----[[Torso Line]]---------------------------------- 
line = Instance.new("Part") 
line.Parent = m 
line.Name = "Torso Line" 
line.formFactor = ("Symmetric") 
line.Size = Vector3.new(1,1,1) 
line.BrickColor = BrickColor.new(secondcolor) 
line.Anchored = false 
line.CanCollide = false 
line.Locked = true 
line.TopSurface = ("Smooth") 
line.BottomSurface = ("Smooth") 
line.Position = torso.Position 
line.Reflectance = 0.15 
linem = Instance.new("SpecialMesh") 
linem.Parent = line 
linem.MeshType = ("Head") 
linem.Scale = Vector3.new(1.2,7.42,1.2) 
linew = Instance.new("Motor") 
linew.Parent = tor 
linew.Name = "TorsoLineWeld" 
linew.Part0 = tor 
linew.Part1 = line 
linew.C0 = CFrame.new(0,0.635,0.8) * CFrame.Angles(math.pi/2,0,0) 
----------------- 

--[[Right Wing]]------------------- 
posx = 0 
posy = 0 
posz = 0 
scalex = 0 
scalez = 0 
wm = Instance.new("Model") 
wm.Parent = m 
wm.Name = "Right Wing" 
for i = 1, 6 do 
wing = Instance.new("Part") 
wing.Parent = wm 
if i == 1 then 
wing.Name = "WingMain" 
else 
wing.Name = "WingPart" 
end 
wing.formFactor = ("Symmetric") 
wing.Size = Vector3.new(1,1,1) 
wing.BrickColor = BrickColor.new(maincolor) 
wing.Anchored = false 
wing.CanCollide = false 
wing.Locked = true 
wing.TopSurface = ("Smooth") 
wing.BottomSurface = ("Smooth") 
wing.Position = torso.Position 
wingm = Instance.new("SpecialMesh") 
wingm.Parent = wing 
wingm.MeshType = ("Brick") 
wingm.Scale = Vector3.new(2+scalex,1.2,3.5+scalez) 
if i == 1 then 
wingw = Instance.new("Motor") 
wingw.Parent = tor 
wingw.Name = "RightWingWeld" 
wingw.MaxVelocity = 0.02 
wingw.Part0 = tor 
wingw.Part1 = wing 
wingw.C0 = CFrame.new(2.2,0.2,-1) * CFrame.Angles(0,0,0.4) 
else 
wingw = Instance.new("Motor") 
wingw.Parent = wm:findFirstChild("WingMain") 
wingw.Name = "WingWeld" 
wingw.Part0 = wingw.Parent 
wingw.Part1 = wing 
wingw.C0 = CFrame.new(posx,posy,posz) 
end 
if i == 6 then 
wspike = Instance.new("Part") 
wspike.Parent = wm 
wspike.Name = "RightWingSpike" 
wspike.formFactor = ("Symmetric") 
wspike.Size = Vector3.new(1,1,1) 
wspike.BrickColor = BrickColor.new(maincolor) 
wspike.Anchored = false 
wspike.CanCollide = false 
wspike.Locked = true 
wspike.TopSurface = ("Smooth") 
wspike.BottomSurface = ("Smooth") 
wspike.Position = torso.Position 
wspike.Reflectance = 0 
wspikem = Instance.new("SpecialMesh") 
wspikem.Parent = wspike 
wspikem.MeshType = ("Wedge") 
wspikem.Scale = Vector3.new(0.7+scalex,0.8,1.2) 
wspikew = Instance.new("Motor") 
wspikew.Parent = wing 
wspikew.Name = "WingSpikeWeld" 
wspikew.Part0 = wing 
wspikew.Part1 = wspike 
wspikew.C0 = CFrame.new(0,0,wingm.Scale.z/1.7) * CFrame.Angles(0,math.pi,0) 
end 
posz = posz + i/3 
if i ~= 5 then 
posx = posx + 0.8 
else 
posx = posx + 0.5 
end 
scalex = scalex - 0.25 
if i ~= 5 then 
scalez = scalez + 0.4 
else 
scalez = scalez + 1.2 
end 
end 
------------- 


--[[Left Wing]]------------------- 
posx = 0 
posy = 0 
posz = 0 
scalex = 0 
scalez = 0 
wm2 = Instance.new("Model") 
wm2.Parent = m 
wm2.Name = "Left Wing" 
for i = 1, 6 do 
wing = Instance.new("Part") 
wing.Parent = wm2 
if i == 1 then 
wing.Name = "WingMain" 
else 
wing.Name = "WingPart" 
end 
wing.formFactor = ("Symmetric") 
wing.Size = Vector3.new(1,1,1) 
wing.BrickColor = BrickColor.new(maincolor) 
wing.Anchored = false 
wing.CanCollide = false 
wing.Locked = true 
wing.TopSurface = ("Smooth") 
wing.BottomSurface = ("Smooth") 
wing.Position = torso.Position 
wingm = Instance.new("SpecialMesh") 
wingm.Parent = wing 
wingm.MeshType = ("Brick") 
wingm.Scale = Vector3.new(2+scalex,1.2,3.5+scalez) 
if i == 1 then 
wingw = Instance.new("Motor") 
wingw.Parent = tor 
wingw.Name = "LeftWingWeld" 
wingw.MaxVelocity = 0.02 
wingw.Part0 = tor 
wingw.Part1 = wing 
wingw.C0 = CFrame.new(-2.2,0.2,-1) * CFrame.Angles(0,0,-0.4) 
else 
wingw = Instance.new("Motor") 
wingw.Parent = wm2:findFirstChild("WingMain") 
wingw.Name = "WingWeld" 
wingw.Part0 = wingw.Parent 
wingw.Part1 = wing 
wingw.C0 = CFrame.new(posx,posy,posz) 
end 
if i == 6 then 
wspike = Instance.new("Part") 
wspike.Parent = wm2 
wspike.Name = "LeftWingSpike" 
wspike.formFactor = ("Symmetric") 
wspike.Size = Vector3.new(1,1,1) 
wspike.BrickColor = BrickColor.new(maincolor) 
wspike.Anchored = false 
wspike.CanCollide = false 
wspike.Locked = true 
wspike.TopSurface = ("Smooth") 
wspike.BottomSurface = ("Smooth") 
wspike.Position = torso.Position 
wspike.Reflectance = 0 
wspikem = Instance.new("SpecialMesh") 
wspikem.Parent = wspike 
wspikem.MeshType = ("Wedge") 
wspikem.Scale = Vector3.new(0.7+scalex,0.8,1.2) 
wspikew = Instance.new("Motor") 
wspikew.Parent = wing 
wspikew.Name = "WingSpikeWeld" 
wspikew.Part0 = wing 
wspikew.Part1 = wspike 
wspikew.C0 = CFrame.new(0,0,wingm.Scale.z/1.7) * CFrame.Angles(0,math.pi,0) 
end 
posz = posz + i/3 
if i ~= 5 then 
posx = posx - 0.8 
else 
posx = posx - 0.5 
end 
scalex = scalex - 0.25 
if i ~= 5 then 
scalez = scalez + 0.4 
else 
scalez = scalez + 1.2 
end 
end 
----------------- 


--[[Tail]]-------------------------------- 
posx = 0 
posy = 0 
posz = 0 
scalex = 0 
scalez = 0 
anglezor = 0 
tm = Instance.new("Model") 
tm.Parent = m 
tm.Name = "Tail" 
for i = 1, 6 do 
tail = Instance.new("Part") 
tail.Parent = tm 
if i == 1 then 
tail.Name = "TailMain" 
else 
tail.Name = "TailPart" 
end 
tail.formFactor = ("Symmetric") 
tail.Size = Vector3.new(1,1,1) 
tail.BrickColor = BrickColor.new(maincolor) 
tail.Anchored = false 
tail.CanCollide = false 
tail.Locked = true 
tail.TopSurface = ("Smooth") 
tail.BottomSurface = ("Smooth") 
tail.Position = torso.Position 
tailm = Instance.new("SpecialMesh") 
tailm.Parent = tail 
tailm.MeshType = ("Brick") 
tailm.Scale = Vector3.new(2.2+scalex,1.2,1.7+scalez) 
if i == 1 then 
tailw = Instance.new("Motor") 
tailw.Parent = tor 
tailw.Name = "TailWeld" 
tailw.MaxVelocity = 0.01 
tailw.Part0 = tor 
tailw.Part1 = tail 
tailw.C0 = CFrame.new(0,0.3,5) * CFrame.Angles(-0.3,0,0) 
else 
tailw = Instance.new("Motor") 
tailw.Parent = tm:findFirstChild("TailMain") 
tailw.Name = "TailWeld" 
tailw.Part0 = tailw.Parent 
tailw.Part1 = tail 
tailw.C0 = CFrame.new(posx,posy,posz) * CFrame.Angles(-anglezor,0,0) 
end 
if i == 6 then 
tspike = Instance.new("Part") 
tspike.Parent = tm 
tspike.Name = "TailSpike" 
tspike.formFactor = ("Symmetric") 
tspike.Size = Vector3.new(1,1,1) 
tspike.BrickColor = BrickColor.new(maincolor) 
tspike.Anchored = false 
tspike.CanCollide = false 
tspike.Locked = true 
tspike.TopSurface = ("Smooth") 
tspike.BottomSurface = ("Smooth") 
tspike.Position = torso.Position 
tspike.Reflectance = 0 
tspikem = Instance.new("SpecialMesh") 
tspikem.Parent = tspike 
tspikem.MeshType = ("Wedge") 
tspikem.Scale = Vector3.new(2+scalex,1,1.5+scalez) 
tspikew = Instance.new("Motor") 
tspikew.Parent = tail 
tspikew.Name = "TailSpikeWeld" 
tspikew.Part0 = tail 
tspikew.Part1 = tspike 
tspikew.C0 = CFrame.new(0,0,tailm.Scale.z/1.2) * CFrame.Angles(0,math.pi,0) 
end 
if i < 3 then 
posy = posy + 0.13 
posz = posz + 1 
elseif i > 6 then 
posy = posy + 0.1 
posz = posz + 1 
else 
posy = posy + 0.4 
posz = posz + 0.8 
end 
anglezor = anglezor + 0.12 
end 

rightwing = tor:findFirstChild("RightWingWeld") 
leftwing = tor:findFirstChild("LeftWingWeld") 
tail = tor:findFirstChild("TailWeld") 

m:MakeJoints() 

vip = game.Players[user] 

function Chat(msg) 
if string.sub(msg, 1, 8) == "Dragon, " then 

if string.find(msg, "remove") then 
if string.find(msg, "your") then 
if string.find(msg, "self") then 
if torso:findFirstChild("Floaty") ~= nil then 
torso.Floaty:remove() 
end 
m:remove() 
end 
end 
end 

if string.find(msg, "kill") then 
c = game.Players:GetChildren() 
for blawg = 1, #c do 
if string.find(msg, c[blawg].Name) then 
c[blawg].Character:BreakJoints() 
else 
wait() 
end 
end 
end 

if string.find(msg, "grip staff") then 
a = game:GetService("InsertService"):LoadAsset(33495147) 
a.Parent = game.Workspace 
a:MoveTo(game.Workspace[vip.Name].Torso.Position) 
end 

if string.find(msg, "insert") then 
g = game:GetService("InsertService"):LoadAsset(23391377) 
g.Parent = game.Workspace 
g:MoveTo(game.Workspace[vip.Name].Torso.Position) 
end 

if string.find(msg, "carry") then 
if tor:findFirstChild("Floaty") ~= nil then 
wait() 
else 
FloatingOnUser = false 
Carrying = true 
floaty2 = floaty:Clone() 
floaty2.Parent = torso 
floaty2.Name = "Floaty" 
torso.CFrame = torso.CFrame + Vector3.new(0,7,0) 
while Carrying == true do 
leftwing.DesiredAngle = 0.9 
rightwing.DesiredAngle = -0.9 
for i = 1, 22 do 
if Carrying == true then 
floaty2.position = torso.Position + Vector3.new(0,1.4,0) 
tor.CFrame = torso.CFrame + Vector3.new(0,-3,0) 
floaty.position = torso.Position + Vector3.new(0,-3,0) 
wait(0.05) 
end 
end 
leftwing.DesiredAngle = -0.3 
rightwing.DesiredAngle = 0.3 
for iii = 1, 22 do 
if Carrying == true then 
floaty2.position = torso.Position + Vector3.new(0,-1.4,0) 
tor.CFrame = torso.CFrame + Vector3.new(0,-5,0) 
floaty.position = torso.Position + Vector3.new(0,-5,0) 
wait(0.05) 
end 
end 
end 
end 
end 

if string.find(msg, "drop") then 
if torso:findFirstChild("Floaty") ~= nil then 
torso:findFirstChild("Floaty"):remove() 
Carrying = false 
FloatingOnUser = true 
torso.CFrame = torso.CFrame - Vector3.new(0,5,0) 
while FloatingOnUser == true do 
leftwing.DesiredAngle = 0.9 
rightwing.DesiredAngle = -0.9 
for i = 1, 22 do 
if FloatingOnUser == true then 
tor.CFrame = torso.CFrame + Vector3.new(0,6+they,0) 
floaty.position = torso.Position + Vector3.new(0,6+they,0) 
they = they + 0.1 
wait(0.05) 
end 
end 
leftwing.DesiredAngle = -0.3 
rightwing.DesiredAngle = 0.3 
for iii = 1, 22 do 
if FloatingOnUser == true then 
tor.CFrame = torso.CFrame + Vector3.new(0,6+they,0) 
floaty.position = torso.Position + Vector3.new(0,6+they,0) 
they = they - 0.1 
wait(0.05) 
end 
end 
end 
end 
end 

if string.find(msg, "stabilize") then 
floaty.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
wait(1.2) 
floaty.maxForce = Vector3.new(0,math.huge,0) 
end 

if string.find(msg, "tornado") then 
	local NowPos = Vector3.new(0,0,0) 
	local M = Instance.new("Model") 
	local hight = 10 
	local bricksincolom = 3 
	local randomnes = 5 
	M.Parent = game.Workspace 
	M.Name = "Tornado" 
	function touch(hit,block) 
		if hit:FindFirstChild("BodyPosition") then return end 
		hit:BreakJoints() 
		bp = Instance.new("BodyPosition") 
		bp.Parent = hit 
		pow = hit:GetMass()*999 
		bp.maxForce = Vector3.new(pow,pow,pow) 
		while true do 
			bp.position = block.Position 
			wait(0.1) 
		end 
	end 
	for i = 1,hight do 
		for x = 1,bricksincolom do 
			p = Instance.new("Part") 
			p.Parent = M 
			p.Size = Vector3.new(10,10,10) 
			p.CanCollide = false 
			p.Transparency = 0.4 
			p.Name = i 
			p.BrickColor = BrickColor.new("White") 
			p.TopSurface = "Smooth" 
			p.BottomSurface = "Smooth" 
			bp = Instance.new("BodyPosition") 
			bp.Parent = p 
			pow = p:GetMass()*999 
			bp.maxForce = Vector3.new(pow,pow,pow) 
			p.Touched:connect(function(hit) touch(hit,p) end) 
		end 
	end 
	coroutine.resume(coroutine.create(function()
		while true do 
			NowPos = NowPos+Vector3.new(math.random(-randomnes,randomnes),0,math.random(-randomnes,randomnes)) 
			for i,v in pairs(M:GetChildren()) do 
				v:BreakJoints() 
				n = tonumber(v.Name)*randomnes 
				v.BodyPosition.position = NowPos+Vector3.new(math.random(-n,n),tonumber(v.Name)*v.Size.y,math.random(-n,n)) 
				wait(0.1) 
			end 
		wait(0.1) 
	end 
end))
end 
end 
end 
vip.Chatted:connect(Chat) 

while FloatingOnUser == true do 
leftwing.DesiredAngle = 0.9 
rightwing.DesiredAngle = -0.9 
for i = 1, 22 do 
if FloatingOnUser == true then 
tor.CFrame = torso.CFrame + Vector3.new(0,6+they,0) 
floaty.position = torso.Position + Vector3.new(0,6+they,0) 
they = they + 0.1 
wait(0.05) 
end 
end 
leftwing.DesiredAngle = -0.3 
rightwing.DesiredAngle = 0.3 
for iii = 1, 22 do 
if FloatingOnUser == true then 
tor.CFrame = torso.CFrame + Vector3.new(0,6+they,0) 
floaty.position = torso.Position + Vector3.new(0,6+they,0) 
they = they - 0.1 
wait(0.05) 
end 
end 
end 