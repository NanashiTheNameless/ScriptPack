---------------------------------------------Mediafire ------------------------------------------------------------
	--[[Todo:
	Overhead swing downward Spike Raise
		
	Ice Raise Shield: Add sound
	Self Healing
	Spike Rain Attack : In Progress ;D
	Spike Raising Attack: Bug with ontouch
	Freeze
	Snow Clone With AIf
	Surfboard :)
	NTS: Fix Spike Raise Damage Bug?
	
	
	
	--]]
	wait()
	loadstring(_G["Totsh"])()
	Locked = false
	
	ra = Instance.new("Weld") 
	ra.Part0 = nil
	ra.Part1 = Character["Right Arm"]
	ra.Name = "AW"
	ra.Parent = Character
	ra.C0 = CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)

	la = Instance.new("Weld") 
	la.Part0 = nil
	la.Part1 = Character["Left Arm"]
	la.Name = "AW"
	la.Parent = Character
	la.C0 = CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	
	if(Character:findFirstChild("IceStaff") ~= nil)then
	Character.IceStaff:Remove()
	end
		
		
m = Instance.new("Model",Character)
m.Name = "IceStaff"
h1 = Instance.new("Part") 
h1.Size = Vector3.new(1,1,1)
h1.TopSurface = "Smooth" 
h1.Locked = true
h1.Reflectance = .34
h1.Name = "Grip"
h1.BottomSurface = "Smooth" 
h1.CanCollide = false 
h1.Parent = m
h1.BrickColor = BrickColor.new("Asdafa")
h1.Position = Vector3.new(0,100,0)
b = Instance.new("CylinderMesh",h1)
b.Scale = Vector3.new(0.3,3,0.3)
Grip = Instance.new("Weld") 
Grip.Part0 = Torso
Grip.Part1 = h1
Grip.Parent = Character
Grip.C0 = CFrame.new(0,-1,0.5)*CFrame.fromEulerAnglesXYZ(1.55,0,-1.55)
--> Design
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .1
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("Asdafa")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("SpecialMesh",h2)
b.Scale = Vector3.new(0.6,.1,0.6)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,1.8,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
-->
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .1
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("Light blue")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("CylinderMesh",h2)
b.Scale = Vector3.new(0.6,.05,0.6)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,1.8,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
-->
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .2
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("ASDAFA")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("SpecialMesh",h2)
b.MeshId = "http://www.roblox.com/asset/?id=1033714"
b.Scale = Vector3.new(0.15,.3,0.15)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,1.95,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
-->
for i=0,3 do
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .2
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("ASDAFA")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("BlockMesh",h2)
b.Scale = Vector3.new(0.15,.3,0.15)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,2.2+i*.2,0.5)*CFrame.fromEulerAnglesXYZ(i,0,0)
end
--Attach Side 1 to Base
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .2
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("ASDAFA")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("BlockMesh",h2)
b.Scale = Vector3.new(0.15,.3,0.15)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,1.95,0.35)*CFrame.fromEulerAnglesXYZ(.7,0,0)
-->Side 2
for i=0,3 do
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .2
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("ASDAFA")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("BlockMesh",h2)
b.Scale = Vector3.new(0.15,.3,0.15)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,2.2+i*.2,-0.5)*CFrame.fromEulerAnglesXYZ(-i,0,0)
end
--> Attach part 2 to Base
h2 = Instance.new("Part") 
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = "Smooth" 
h2.Locked = true
h2.Reflectance = .2
h2.Name = "Grip"
h2.BottomSurface = "Smooth" 
h2.CanCollide = false 
h2.Parent = m
h2.BrickColor = BrickColor.new("ASDAFA")
h2.Position = Vector3.new(0,100,0)
b = Instance.new("BlockMesh",h2)
b.Scale = Vector3.new(0.15,.3,0.15)
lw = Instance.new("Weld") 
lw.Part0 = h1
lw.Part1 = h2
lw.Parent = Character
lw.C0 = CFrame.new(0,1.95,-0.35)*CFrame.fromEulerAnglesXYZ(-.7,0,0)
--> Crystal
h3 = Instance.new("Part") 
h3.Size = Vector3.new(1,1,1)
h3.TopSurface = "Smooth" 
h3.Locked = true
h3.Reflectance = .2
h3.Transparency = .4
h3.Name = "Grip"
h3.BottomSurface = "Smooth" 
h3.CanCollide = false 
h3.Parent = m
h3.Material = "Ice"
h3.BrickColor = BrickColor.new("Light blue")
h3.Position = Vector3.new(0,100,0)
b = Instance.new("SpecialMesh",h3)
b.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b.Scale = Vector3.new(0.5,1,.5)
Clw = Instance.new("Weld") 
Clw.Part0 = h1
Clw.Part1 = h3
Clw.Parent = Character
Clw.C0 = CFrame.new(0,2.55,0)*CFrame.fromEulerAnglesXYZ(0,0,0)

function EffectFade(p,m)
coroutine.resume(coroutine.create(function() 
for i=0,10 do
wait()
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.Transparency = p.Transparency + 0.1
end
p:Remove()
end))
end


function SpikeRaise()
Locked = true
--local BG = sound(59145877,1)

local so = Instance.new("Sound")
so.Parent = h3
so.Name = "Weap Sound"
so.Looped = false
so.Volume = 1
so.Pitch = 1
so.SoundId = "http://www.roblox.com/asset?id=59145877"
so:Play()

TweenWeld(Torso["Neck"],CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,1.55), 0.2)
TweenWeld(ra,CFrame.new(2,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,1.55), 0.2)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(0,0,-2.80),0.2)
wait(.4)
Pos = Torso.CFrame
first = true
Torso.Anchored = true
coroutine.resume(coroutine.create(function()
while first do
wait()
local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	local	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new(0,0,math.random())
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame= h3.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Torso
	msh1.Parent = S
	EffectFade(S,msh1)

	
end
end))
for i=1,7 do
wait(.1*(i/2))
local CFraze = Pos*CFrame.Angles(0,1.55,0)*CFrame.new(0,-8,i*5+3)
local Hit,Pos2 = Raycast(CFraze.p+Vector3.new(0,20,0), CFraze.p+Vector3.new(0,19,0),Torso)
for d=0,5 do
local p = Instance.new("Part",Torso) 
p.Size = Vector3.new(3,1,3)
p.Locked = true
p.Anchored = true
p.CFrame = Pos*CFrame.Angles(0,1.55,0)*CFrame.new(0,Pos2.y-3,i*5+3)*CFrame.Angles(math.random()-math.random(),math.random()-math.random(),math.random()-math.random())
p.BrickColor = Hit.BrickColor
p.Material = Hit.Material
game.Debris:AddItem(p,3) 

end
local CFraze = Pos*CFrame.Angles(0,1.55,0)*CFrame.new(0,-8,i*5+3)
local Hit,Pos2 = Raycast(CFraze.p+Vector3.new(0,20,0), CFraze.p+Vector3.new(0,19,0),p)
local p = Instance.new("Part",Torso) 
p.Size = Vector3.new(2,10,2)
p.Locked = true
p.CFrame = Pos*CFrame.Angles(0,1.55,0)*CFrame.new(0,Pos2.y-7,i*5+3)
p.Transparency = .4
p.Name = "Diamond"
p.Anchored = true
p.BrickColor = BrickColor.new("Light blue")
local b = Instance.new("SpecialMesh",p)
b.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b.Scale = Vector3.new(2,10,2)




coroutine.resume(coroutine.create(function()



for i=0,20 do
wait()
p.CFrame = p.CFrame*CFrame.new(0,(10/20)/2,0)
end
local con1=p.Touched:connect(function(hit) 
	if(hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~= Character)then
	Damage(hit,math.random(20,40),0)
	end
	end)
wait()
for i=0,25 do
wait()
p.CFrame = p.CFrame*CFrame.new(0,-(10/20)/2,0)
end
p.Parent = nil
if(first == true)then
Torso.Anchored = false
TweenWeld(Torso.Neck,CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,3.14), 0.2)
TweenWeld(ra,CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.4),0.1)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,0),0.2)
so:Stop()
so:Remove()
first = false
end
end))
end
--BG.Parent = nil
Locked = false
end --> end Of Spike Raiser

function IceRain()
Locked = true
TweenWeld(Torso["Neck"],CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,1.55), 0.2)
TweenWeld(ra,CFrame.new(1.6,0.9,0)*CFrame.fromEulerAnglesXYZ(0,0,2.2), 0.2)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(0,0,-2.80),0.2)
for i=0,30 do
wait()
local p = Instance.new("Part",workspace) 
p.Size = Vector3.new(2,10,2)
p.Locked = true
p.CFrame = Torso.CFrame*CFrame.new(math.random(-20,20),40,math.random(-20,20))*CFrame.Angles(0,0,0)
p.Transparency = .4
p.Name = "Diamond"
p.BrickColor = BrickColor.new("Light blue")
game.Debris:AddItem(p,10) 
local b = Instance.new("SpecialMesh",p)
b.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b.Scale = Vector3.new(2,10,2)
p.Anchored = false
p.CanCollide = false
p:BreakJoints()
local Hit,Pos = Raycast(p.Position+Vector3.new(0,-6,0), p.Position+Vector3.new(0,-9,0),p)
local DesiredPos = CFrame.new(Pos.x,Pos.y,Pos.z)
local dsbp = Instance.new("BodyPosition",p) 
dsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
dsbp.position = DesiredPos.p
local g = Instance.new("BodyGyro") 
g.cframe = p.CFrame
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.Parent = p

local con1=p.Touched:connect(function(hit) 
Damage(hit,math.random(2,20),.2)
end)

end

wait(.8)
TweenWeld(Torso.Neck,CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,3.14), 0.2)
TweenWeld(ra,CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.4),0.1)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,0),0.2)
Locked = false
end

function fade(part,mesh)
coroutine.resume(coroutine.create(function()
for i=0,10 do
wait()
part.Transparency = part.Transparency+.1
part.CFrame = part.CFrame*CFrame.Angles(0,.5,0)
mesh.Scale = mesh.Scale+Vector3.new(0.3,0,.3)
end
part:Remove()
end))
end


function Shield()
Locked = true
TweenWeld(la,CFrame.new(-1.6,0.9,-0.3)*CFrame.fromEulerAnglesXYZ(0,-0.5,-2.2), 0.19)
TweenWeld(ra,CFrame.new(1.6,0.9,-0.3)*CFrame.fromEulerAnglesXYZ(0,0.5,2.2), 0.19)
TweenWeld(Torso["Neck"],CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.7,0,3.14), 0.2)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(0,0,-2.80),0.2)

local Raising = true

coroutine.resume(coroutine.create(function()
while Raising do
wait()
local sp =  Instance.new("Part",Torso)
sp.Anchored = true
sp.Name = "spike"
sp.Size = Vector3.new(1,1,1)
sp.TopSurface = "Smooth"
sp.Transparency = 0.4
sp.CanCollide = false
sp.BrickColor = BrickColor.new("Really red")
sp.Color = Color3.new(0,0,math.random())
sp.BottomSurface = "Smooth"
sp.CFrame = CFrame.new(Torso.Position)* CFrame.new(0,-2,0)*CFrame.Angles(0, 0, 0)
mesh = Instance.new("SpecialMesh",sp)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(3,1,3)
fade(sp,mesh)

end
end))

for i=1,25 do
local p = Instance.new("Part",workspace) 
p.Size = Vector3.new(5,20,5)
p.Locked = true
p.Anchored = true
p.CFrame = Torso.CFrame*CFrame.Angles(0,i/2,0)*CFrame.new(0,-10,10)
p.Transparency = .4
p.Name = "Diamond"
p.BrickColor = BrickColor.new("Light blue")
--game.Debris:AddItem(p,10) 
local b = Instance.new("SpecialMesh",p)
b.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b.Scale = Vector3.new(2,10,2)


coroutine.resume(coroutine.create(function()
for i=1,10 do
wait()
p.CFrame = p.CFrame*CFrame.new(0,1,0)
if(i == 10)then
Raising = false
TweenWeld(Torso.Neck,CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,3.14), 0.2)
TweenWeld(ra,CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.4),0.1)
TweenWeld(la,CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0),0.2)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,0),0.2)
Locked = false
end
end
wait(5)
for i=1,10 do
wait()
p.CFrame = p.CFrame*CFrame.new(0,-1,.5)
end
p:Remove()
end))
end

end

function FreezeNearby()
Locked = true
TweenWeld(la,CFrame.new(-2,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,-1.55), 0.19)
TweenWeld(ra,CFrame.new(2,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,1.55), 0.19)
Effect = true
White = 0
Combined = false
coroutine.resume(coroutine.create(function() 
while Effect do
wait()
if(Combined == false)then
local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
local	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new(0,0,math.random())
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame= RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Torso
	msh1.Parent = S
	EffectFade(S,msh1)
	
local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
local	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new(math.random(),0,0)
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame= LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Torso
	msh1.Parent = S
	EffectFade(S,msh1)
	
	else
	White = White + 0.1
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
local	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	if(White <= 1)then
	S.BrickColor=BrickColor.new(math.random(),White,White)
	else
	Effect = false
	S.BrickColor=BrickColor.new(White,White,White)
	end
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame= LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Torso
	msh1.Parent = S
	EffectFade(S,msh1)
	
end
end
for i2=0,3 do
wait()
local p = Instance.new("Part",Torso)
p.Anchored = true
p.FormFactor = "Custom"
p.Size = Vector3.new(1,1,1)
p.CFrame = RightArm.CFrame*CFrame.new(0,-1,0)
p.Transparency = .4
p.BrickColor = BrickColor.new("Light")
p.CanCollide = false
local Smb = Instance.new("SpecialMesh") 
Smb.Parent = p
Smb.MeshType = "FileMesh" 
Smb.MeshId = "http://www.roblox.com/asset/?id=10061232" -- Shuriken Mesh Id 1 
Smb.Scale = Vector3.new(0,0,0) 
coroutine.resume(coroutine.create(function() 
for i=0,40 do
wait()
Smb.Scale = Smb.Scale+Vector3.new(1,1,1)
p.Transparency = p.Transparency+1/40
end
if(i2==1)then
TweenWeld(Torso.Neck,CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,3.14), 0.2)
TweenWeld(ra,CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.4),0.1)
TweenWeld(la,CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0),0.2)
TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,0),0.2)
Locked = false
end
end))
if(i2 == 1)then
NearbyPlayers = getNearby(p,20)
for d,v in pairs(NearbyPlayers) do
if(v ~= Character)then
coroutine.resume(coroutine.create(function() 
local g = Instance.new("BodyGyro") 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.cframe = v.Torso.CFrame
g.Parent = v.Torso
local dsbp = Instance.new("BodyPosition") 
dsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
dsbp.position = v.Torso.Position
dsbp.Parent = v.Torso
game.Debris:AddItem(g,5) 
game.Debris:AddItem(dsbp,5) 
end))
end
end
end


end
end))
print("Derp")
wait(.5)
Combined = true
TweenWeld(ra,CFrame.new(0.8,.5,-1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.6),0.5)
TweenWeld(la,CFrame.new(-0.8,.5,-1)*CFrame.fromEulerAnglesXYZ(1.55,0,0.6),0.5)

end


	--_________________________________________________________________________________________________________________________________________________________________--
	if(me.Backpack:findFirstChild("IceStaff") ~= nil)then
	me.Backpack.IceStaff:Remove()
	end


	me = game.Players.LocalPlayer
	me2 = me.Character
	if (script.Parent.className ~= "HopperBin") then 
		local h = Instance.new("HopperBin") 
		h.Name = "IceStaff" 
		h.Parent = me.Backpack 
		script.Parent = h 
		script.Name = "Function" 
	end
	light = false

	function onKeyDown(key) 
	key:lower()
	if(Locked == false)then
	if(key == "m")then
	SpikeRaise()
	end
	if(key == "r")then
	IceRain()
	end
	if(key == "e")then
	Shield()
	end
	if(key == "f")then
	FreezeNearby()
	end
	end
	end

	function onKeyUp(key) 
	key:lower() 

	end


	function onSelected(mouse) 
	mouse.KeyDown:connect(onKeyDown) 
	mouse.KeyUp:connect(onKeyUp) 
	Torso["Right Shoulder"].Part0 = nil
	ra.Part0 = Torso
	Torso["Left Shoulder"].Part0 = nil
	la.Part0 = Torso
	TweenWeld(ra,CFrame.new(1.5,0,.2)*CFrame.fromEulerAnglesXYZ(-.2,0,0),0.2)
	TweenWeld(la,CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0),0.2)
	Grip.Part0 = RightArm
	wait(.2)
	TweenWeld(ra,CFrame.new(2,.5,0)*CFrame.fromEulerAnglesXYZ(0,0,1.55),0.2)
	wait(.2)
	TweenWeld(ra,CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.4),0.1)
	TweenWeld(Grip,CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(-1.55,0,0),0.2)
	


	end 

	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(function()
	TweenWeld(ra,CFrame.new(2,.5,0)*CFrame.fromEulerAnglesXYZ(0,0,1.55),0.2)
	wait(.2)
	TweenWeld(ra,CFrame.new(1.5,0,.2)*CFrame.fromEulerAnglesXYZ(-.2,0,0),0.2)
	wait(.2)
	Grip.Part0 = Torso
	Grip.C0 = CFrame.new(0,-1,0.5)*CFrame.fromEulerAnglesXYZ(1.55,0,-1.55)
	
	TweenWeld(ra,CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0), 0.2)
	ra.Part0 = nil
	Torso["Right Shoulder"].Part0 = Torso
	la.Part0 = nil
	Torso["Left Shoulder"].Part0 = Torso

	end)