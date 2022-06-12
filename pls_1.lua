--[[
	Made by CharcterKaiser and leaked for all
	
	DO NOT claim this is yours because people around you will very much know that it is made by me.
--]]
function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end

local speed = 0.2
local angle = 0
local anglespeed = 2
local armspeed = 0.2
local armangle = 0
local armanglespeed = 2
local legspeed = 0.2
local legangle = 0
local leganglespeed = 2
ignore = {}
on = false
damen = true
enabled = true
dancing = false
goldenmode = false
extradamage = 0
combo = 1
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
Char = Player.Character
--[[if Char:FindFirstChild("Shirt") ~= nil then
	Char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=337323278"
else
	Instance.new("Shirt",Char).ShirtTemplate = "http://www.roblox.com/asset/?id=337323278"
end
if Char:FindFirstChild("Pants") ~= nil then
	Char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=367611643"
else
	Instance.new("Pants",Char).PantsTemplate = "http://www.roblox.com/asset/?id=367611643"
end ]]
for i,v in pairs(Char:GetChildren()) do
	if v.ClassName == "Hat" then
		v:Destroy()
	end
end
Human = Char.Humanoid
Human.MaxHealth = 300
wait(0.1)
Human.Health = 300
Sounds = {"rbxassetid://200632136","rbxassetid://360005297","rbxassetid://168586621"}
Head = Char.Head
Head.face.Texture="http://www.roblox.com/asset/?id=261138470"
LA = Char:findFirstChild("Left Arm")
RA = Char:findFirstChild("Right Arm")
LL = Char:findFirstChild("Left Leg")
RL = Char:findFirstChild("Right Leg")
T = Char:findFirstChild("Torso")
LA.BrickColor = BrickColor.new('Hot pink')
RA.BrickColor = BrickColor.new('Hot pink')
LL.BrickColor = BrickColor.new('Hot pink')
RL.BrickColor = BrickColor.new('Hot pink')
T.BrickColor = BrickColor.new('Hot pink')
LS = T:findFirstChild("Left Shoulder")
RS = T:findFirstChild("Right Shoulder")
LH = T:findFirstChild("Left Hip")
RH = T:findFirstChild("Right Hip")
Neck = T:findFirstChild("Neck")
HM = Char:findFirstChild("HumanoidRootPart")
RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
--[[local BCHat = Instance.new("Part",Char)
BCHat.CanCollide = false
BCHat.Name = "Handle"
BCHat.TopSurface = 0
BCHat.BottomSurface = 0
BCHat.Size = Vector3.new(2,0.8,1.2)
BCHat.BrickColor = BrickColor.new("Bright yellow")
local BCHatMesh = Instance.new("SpecialMesh",BCHat)
BCHatMesh.MeshId = "http://www.roblox.com/asset/?id=1073659"
local BCHatWeld = Instance.new("Weld",BCHat)
BCHatWeld.Part0 = Head
BCHatWeld.Part1 = BCHat
BCHatWeld.C0 = CFrame.new(0,0.8,-0.1) ]]
WLS = Instance.new("Weld", nil)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
WRS = Instance.new("Weld", nil)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
WLH = LH
WRH = RH
WRH.Part0 = T
WRH.Part1 = RL
LSC0 = WLS.C0
RSC0 = WRS.C0
LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
WRJ = RJ
RJC0 = WRJ.C0
RJC1 = WRJ.C1
NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Run = game:GetService("RunService")
hopbin = Instance.new("HopperBin",Player.Backpack)
hopbin.Name = "Bob The Builder"

local Hammer = Instance.new("Part",Char)
Hammer.Name = "Hammer"
Hammer.CanCollide = false
Hammer.TopSurface = 0
Hammer.BottomSurface = 0
Hammer.Size = Vector3.new(1.8,0.4,3.8)
--Hammer.Size = Vector3.new(1,1,1)
local HammerMesh = Instance.new("SpecialMesh",Hammer)
--HammerMesh.Scale = Vector3.new(1.8,1.8,1.8)
HammerMesh.Scale = Vector3.new(1,1,1)
HammerMesh.MeshId = "http://www.roblox.com/asset/?id=121944778" --16198309"
HammerMesh.VertexColor = Vector3.new(100,0,0)
--HammerMesh.TextureId = "http://www.roblox.com/asset/?id=389538125" --16198294"
physicalprop = PhysicalProperties.new(0,0.3,0.5,1,1)
Hammer.CustomPhysicalProperties = physicalprop

HW = Instance.new("Weld",T)
HW.Part0 = Hammer
HW.Part1 = RA
--HW.C0 = CFrame.new(1.15,0,0) *CFrame.Angles(0,math.pi,math.pi/2)
HW.C0 = CFrame.new(1.15,0,0) *CFrame.Angles(90,math.pi,math.pi/2)
hc0 = HW.C0

Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
}

function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function getmesh(mesh)
	return "rbxassetid://"..mesh
end

function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			wait(1/60)
		end
		p:Destroy()
	end)()
	return p
end

PlaySound = function(part,volume,pitch,id,looped)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	coroutine.wrap(function()
		wait()
		Sound:Play()
		if looped == nil then
			game.Debris:AddItem(Sound,10)
		end
	end)()
	if looped == true then
		Sound.Looped = true
		ThisSound = Sound
	end
end

function GetDistance(Obj,Mag)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
			local Mag2 = (v.Torso.Position - Obj.Position).magnitude
			if Mag2 < Mag then
				return v
			end
		end
	end
end

ShowDmg = function(totake)
	local modl = Instance.new("Model", workspace)
	modl.Name = tostring(totake)
	local prt = Instance.new("Part", modl)
	prt.CanCollide = false
	prt.BrickColor = BrickColor.Red()
	prt.Name = "Head"
	prt.CFrame = HM.CFrame *CFrame.new(0, 1.5, 0)
	prt.TopSurface = 0
	prt.BottomSurface = 0
	prt.FormFactor = 3
	prt.Size = Vector3.new(1, 0.2, 1)
	local bm = Instance.new("BlockMesh", prt)
	local hum = Instance.new("Humanoid", modl)
	hum.Health = 0
	hum.MaxHealth = 0
	hum.WalkSpeed = 0
	bodypos = Instance.new("BodyPosition", prt)
	bodypos.position = Head.Position +Vector3.new(0, 1, 0)
	bodypos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	game.Debris:AddItem(modl, 1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 3 do
			bodypos.position = bodypos.position +Vector3.new(0, 0.5, 0)
			Rwait()
		end
	end))
end

function Damage(hit,mm,knockback)
	if hit ~= nil and hit.Parent ~= nil and damen == true and hit.Parent ~= Char and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid").Health > 0 then
		if game.Players:FindFirstChild(hit.Parent) ~= nil and game.Players:FindFirstChild(hit.Parent).TeamColor == "Bright orange" then
			return
		end
		hit.Parent.Humanoid:TakeDamage(mm)
		if knockback ~= nil and knockback ~= 0 then
			local v = Instance.new("BodyVelocity",hit.Parent.Torso)
			v.maxForce = Vector3.new(1e4,0,1e4)
			v.P = 1e20
			v.velocity = HM.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.1)			
		end
		coroutine.resume(coroutine.create(function()
			ShowDmg(mm)
		end))
		damen = false
	end
end

function MagDamage(magnitude,part,damg,knockback,ignoretime)
	if ignoretime == 0 or ignoretime == nil then
		ignoretime = 0.5
	end
	local Body = GetDistance(part,magnitude)
	if Body ~= nil and Body.Humanoid and Body ~= Char and not ignore[Body] then
		ignore[Body] = true
		Body.Humanoid:TakeDamage(damg)
		spawn(function()
			ShowDmg(damg)
		end)
	    if knockback ~= nil and Body.Torso ~= nil then
	        local v = Instance.new("BodyVelocity",Body.Torso)
			v.maxForce = Vector3.new(1e4,0,1e4)
			v.P = 1e15
			v.velocity = HM.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.3)
		end
		coroutine.resume(coroutine.create(function()
			wait(ignoretime)
			ignore[Body] = false
		end))
	end
end

function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

function BobTheDancer()
	PlaySound(Hammer,1,1,Sounds[2],true)
	while dancing == true do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0.5,0) *CFrame.Angles(math.pi/1.15,0,math.sin(armangle*0.5)*0.5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0.5,0) *CFrame.Angles(math.pi/1.15,0,math.sin(armangle*0.5)*0.5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/10,0,-math.sin(angle*0.5)*0.9),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
end

function Slash1()
	for i = 1,17 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3.5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.1,0,math.pi/8),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	PlaySound(Hammer,1,1.04,Sounds[1])
	damen = true
	local Dmgbx = Hammer.Touched:connect(function(hit) Damage(hit,math.random(12,20)+extradamage,30) end)
	for i = 1,19 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/3.5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/3,-math.pi/5,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Dmgbx:disconnect()
	damen = false
end

function Slash2()
	for i = 1,16 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/10),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/3,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	PlaySound(Hammer,1,1.2,Sounds[1])
	damen = true
	local Dmgbx = Hammer.Touched:connect(function(hit) Damage(hit,math.random(12,20)+extradamage,30) end)
	for i = 1,17 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/6),armspeed)
		lerp(WRS,WRS.C0,RSC0,armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/3,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Dmgbx:disconnect()
	damen = false
end

function Slash3()
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,-math.pi/15),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.5,0,-0.5) *CFrame.Angles(0,math.pi/1.5,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	PlaySound(Hammer,1,1.2,Sounds[1])
	damen = true
	local Dmgbx = Hammer.Touched:connect(function(hit) Damage(hit,math.random(12,20)+extradamage,30) end)
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/30,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0) *CFrame.Angles(0,0,-math.pi/3),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Dmgbx:disconnect()
	damen = false
end

function Slash4()
	for i = 1,15 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,1,0),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	PlaySound(Hammer,1,1.4,Sounds[1])
	damen = true
	local Dmgbx = Hammer.Touched:connect(function(hit) Damage(hit,math.random(12,20)+extradamage,30) end)
	for i = 0,1.4,0.05 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,1) *CFrame.Angles(0,-math.pi/2,-math.pi*i*2),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Dmgbx:disconnect()
	damen = false
end

function HammerSlam()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.02,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	PlaySound(Hammer,1,0.8,Sounds[1])
	damen = true
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/30,0,0),armspeed/2)
		lerp(WLH,WLH.C0,LHC0 *CFrame.new(-1,1.5,0),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,-math.pi/2),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-1.5),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		effect(Char,BrickColor.new("Institutional white"),Vector3.new(0.5,0.5,0.5),Hammer.CFrame *CFrame.new(-0.5,0,Hammer.Size.Z/2) *CFrame.Angles(math.pi/2,0,math.pi),0,0.1,Vector3.new(0.05,0.05,0.05),1,Meshes.Blast,nil)
		if i == 16 then
			HammerTouched = Hammer.Touched:connect(function(Hit)
				if Hit ~= nil and Hit.Parent ~= Char then
					Damage(Hit,math.random(14,20)+extradamage,40)
				end
			end)
		end
		Rwait()
	end
	HammerTouched:disconnect()
	damen = false
end

function HammerSpin()
	for i = 1,17 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3.5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/1.5,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = true
	local spinun = 0
	coroutine.wrap(function()
		for i = 1,5 do
			PlaySound(Hammer,1,1.04,Sounds[1])
			Rwait(7)
		end
	end)()
	for i = 1,50 do
		HW.C1 = CFrame.new(0,-spinun-0.5,0)
		MagDamage(3,Hammer,math.random(5,10)+extradamage,30,0.3)
		spinun = spinun +0.5
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/3.5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0) *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(HW,HW.C0,CFrame.new() *CFrame.Angles(math.pi/2,0,-spinun),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	HW.C1 = CFrame.new()
	damen = false
end

function HammerWheelSpinner()
	for i = 1,15 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,1,0),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	for i = 1,3 do
		PlaySound(Hammer,1,1.4,Sounds[1])
		damen = true
		for i = 0,1,0.05 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,-math.pi/3),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,1) *CFrame.Angles(0,-math.pi/2,-math.pi*i*2),speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(HW,HW.C0,hc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			end
			if i >= 0.15 and i <= 0.2 then
				Dmgbx = Hammer.Touched:connect(function(hit) Damage(hit,math.random(7,14)+extradamage,50) end)
			end
			if i >= 0.9 and i <= 1 then
				damen = false
				Dmgbx:disconnect()
			end
			Rwait()
		end
	end
end

function GoldenHammerMode()
	for i = 1,85 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.1,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		if i == 20 then
			effect(Char,BrickColor.new("Br. yellowish orange"),Vector3.new(0.5,0.5,0.5),Hammer.CFrame,0,0.1,Vector3.new(0.5,0.5,0.5),1,"16198309",nil)
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	coroutine.wrap(function()
		HammerMesh.TextureId = ""
		Hammer.BrickColor = BrickColor.new("Br. yellowish orange")
		Hammer.Reflectance = 0.3
		extradamage = 10
		wait(30)
		goldenmode = false
		effect(Char,BrickColor.new("Br. yellowish orange"),Vector3.new(0.5,0.5,0.5),Hammer.CFrame,0,0.1,Vector3.new(0.5,0.5,0.5),1,"16198309",nil)
		HammerMesh.TextureId = "http://www.roblox.com/asset/?id=16198294"
		Hammer.BrickColor = BrickColor.new("Medium stone grey")
		Hammer.Reflectance = 0
		extradamage = 0
	end)()
end

function Selected()
	click = mouse.Button1Down:connect(function()
		if on == false then return end
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
		if on == false then return end
		if combo == 1 and enabled == true then
			enabled = false
			Slash1()
			enabled = true
			combo = 2
		elseif combo == 2 and enabled == true then
			enabled = false
			Slash2()
			enabled = true
			combo = 3
		elseif combo == 3 and enabled == true then
			enabled = false
			Slash3()
			enabled = true
			combo = 4
		elseif combo == 4 and enabled == true then
			enabled = false
			Slash4()
			enabled = true
			combo = 1
		end
	end)
	keys = mouse.KeyDown:connect(function(key)
		key = key:lower()
		if enabled == false then return end
		if key == "f" then
			on = not on
			if on == false then
				enabled = false
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0,armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
				end
				WLS.Parent = nil
				WRS.Parent = nil
				WLH.Parent = nil
				WRH.Parent = nil
				WRJ.Parent = nil
				LSH.Parent = T
				RSH.Parent = T
				LHH.Parent = T
				RHH.Parent = T
				RJC.Parent = HM
				Neck.C0 = NC0
				Anim.Parent = Char
				Animate.Parent = Human
				HW.C0 = hc0
				Human.WalkSpeed = 16
				Human.JumpPower = 50
				wait(1)
				enabled = true
			end
			if on == true then
				enabled = false
				RJC = RJ:Clone()
				LSH = LS:Clone()
				RSH = RS:Clone()
				LHH = LH:Clone()
				RHH = RH:Clone()
				Anim = Char:FindFirstChild("Animate")
				if Anim ~= nil then
					Anim.Parent = nil
				end
				Animate = Human:FindFirstChild("Animator")
				if Animate ~= nil then
					Animate.Parent = nil
				end
				WLS.Parent = T
				WRS.Parent = T
				WLH.Parent = T
				WRH.Parent = T
				WRJ.Parent = T
				for i = 1,10 do
					lerp(WLS,WLS.C0,LSC0,armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
				end
				Human.WalkSpeed = 25
				Human.JumpPower = 100
				enabled = true
			end
		end
		if key == "q" and on == true then
			dancing = true
			if dancing == true then
				enabled = false
				coroutine.wrap(function()
					BobTheDancer()
				end)()
			end
		end
		if key == "z" and on == true and enabled == true then
			enabled = false
			HammerSlam()
			enabled = true
		end
		if key == "x" and on == true and enabled == true then
			enabled = false
			HammerSpin()
			enabled = true
		end
		if key == "c" and on == true and enabled == true then
			enabled = false
			HammerWheelSpinner()
			enabled = true
		end
		if key == "v" and on == true and enabled == true and goldenmode == false then
			enabled = false
			goldenmode = true
			GoldenHammerMode()
			enabled = true
		end
	end)
	keysup = mouse.KeyUp:connect(function(key2)
		if key2 == "q" and dancing == true then
			dancing = false
			enabled = true
			ThisSound:Destroy()
		end
	end)
end

function Deselected()
	click:disconnect()
	keys:disconnect()
	keysup:disconnect()
end

hopbin.Selected:connect(Selected)
hopbin.Deselected:connect(Deselected)

function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end 

while true do
	surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	Human.Health = Human.Health +0.1
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,0.5) *CFrame.Angles(math.pi/2,math.pi/5,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0.1,-0.15,-0.7) *CFrame.Angles(math.pi/2,-math.pi/25+math.sin(armangle)*0.8,-math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25/2)*0.25/5,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,-math.pi/4,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-HM.RotVelocity.Y/12),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,HM.RotVelocity.Y/12),speed)
			lerp(HW,HW.C0,hc0,speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
			Rwait()
		end
		if HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/3,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/3,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/8,0,0),speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(HW,HW.C0,hc0,speed)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			action = "Walk"
		end
	end
	Rwait()
end
