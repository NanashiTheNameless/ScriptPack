wait(2)
function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end

Stats = Instance.new("BoolValue",Char)

Dmg = Instance.new("NumberValue",Stats)
Dmg.Name = "Dmg"
Dmg.Value = 1
Def = Instance.new("NumberValue",Stats)
Def.Name = "Def"
Def.Value = 1
Spd = Instance.new("NumberValue",Stats)
Spd.Name = "Spd"
Spd.Value = 1

math.randomseed(tick())
local speed = 0.2
local angle = 0
local anglespeed = 2
local armspeed = 0.2
local armangle = 0
local armanglespeed = 2
local legspeed = 0.2
local legangle = 0
local leganglespeed = 2
local mana = 0
local holdx = false
local eenabled = 0
local zenabled = 0
local xenabled = 0
local cenabled = 0
local venabled = 0
ignore = {}
on = false
damen = true
enabled = true
combo = 1
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
Char = Player.Character
Human = Char.Humanoid
Sounds = {"rbxasset://sounds/unsheath.wav", "rbxassetid://200632136","rbxassetid://2101137","rbxassetid://16976189"}
Head = Char.Head
LA = Char:findFirstChild("Left Arm")
RA = Char:findFirstChild("Right Arm")
LL = Char:findFirstChild("Left Leg")
RL = Char:findFirstChild("Right Leg")
T = Char:findFirstChild("Torso")
LS = T:findFirstChild("Left Shoulder")
RS = T:findFirstChild("Right Shoulder")
LH = T:findFirstChild("Left Hip")
RH = T:findFirstChild("Right Hip")
Neck = T:findFirstChild("Neck")
HM = Char:findFirstChild("HumanoidRootPart")
RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
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
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
WRJ = Instance.new("Weld", nil)
WRJ.Part0 = T
WRJ.Part1 = HM
WRJ.C0 = CFrame.new()
WRJ.C1 = CFrame.new()
RJC0 = WRJ.C0
NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Run = game:GetService("RunService")
hopbin = Instance.new("HopperBin",Player.Backpack)
hopbin.Name = "Baile"

Character=Player.Character
m=Instance.new('Model',Character)
m.Name = "Baile"
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Maraca1=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Bright green","Handle",Vector3.new(0.960000038, 3.02999997, 0.560000062))
Maraca1weld=weld(m,Character["Torso"],Maraca1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.976939201, -0.434410095, 1.0708313, -9.28085553e-010, -1, -4.31144399e-005, -3.26636873e-005, 4.31144399e-005, -1, 1, 4.80190998e-010, -3.26636873e-005))
mes = mesh("SpecialMesh",Maraca1,Enum.MeshType.FileMesh,"rbxassetid://21334876",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.600000024))
mes.TextureId = "rbxassetid://21334865"
Maraca2=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Bright green","Handle",Vector3.new(0.960000038, 3.02999997, 0.560000062))
Maraca2weld=weld(m,Character["Torso"],Maraca2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02846956, -0.434394836, -1.11915588, -9.28085553e-010, -1, -4.31144399e-005, -3.26636873e-005, 4.31144399e-005, -1, 1, 4.80190998e-010, -3.26636873e-005))
mes2 = mesh("SpecialMesh",Maraca2,Enum.MeshType.FileMesh,"rbxassetid://21334876",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.600000024))
mes2.TextureId = "rbxassetid://21334865"

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

PlaySound = function(part,volume,pitch,id)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	Rwait()
	Sound:Play()
	Sound:Destroy()
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
		if hit.Parent:FindFirstChild("Data") ~= nil and hit.Parent:FindFirstChild("Data"):FindFirstChild("Defence") ~= nil then
			hit.Parent.Humanoid:TakeDamage(mm/hit.Parent.Data.Defence.Value)
		elseif hit.Parent:FindFirstChild("Data") == nil then
			hit.Parent.Humanoid:TakeDamage(mm)
		end
		if knockback ~= nil and knockback ~= 0 then
			local v = Instance.new("BodyVelocity",hit.Parent.Torso)
			v.maxForce = Vector3.new(20000,0,20000)
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
	    if knockback ~= nil and knockback >= 0 and Body.Torso ~= nil then
	        local v = Instance.new("BodyVelocity",Body.Torso)
			v.maxForce = Vector3.new(20000,0,20000)
			v.P = 1e15
			v.velocity = T.CFrame.lookVector *knockback
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

function Kick1()
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/1.2),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,-math.pi/7),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/7,0,0),speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		Rwait()
	end
	damen = true
	local Damgbx = LL.Touched:connect(function(hit) Damage(hit,math.random(5,10)*Stats.Dmg.Value) end)
	PlaySound(Head,1,1,Sounds[2])
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/20),legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function Kick2()
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/7),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/1.2),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/7,0,0),speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		Rwait()
	end
	damen = true
	local Damgbx = RL.Touched:connect(function(hit) Damage(hit,math.random(5,10)*Stats.Dmg.Value) end)
	PlaySound(Head,1,1.1,Sounds[2])
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/20),legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		Rwait()
	end
	damen = false
	Damgbx:disconnect()
end

function Jabs3()
	for i = 1,2 do
		damen = true
		local Damgbx = Maraca1.Touched:connect(function(hit) Damage(hit,math.random(3,7)*Stats.Dmg.Value) end)
		PlaySound(Head,1,math.random(45,80)/100,Sounds[2])
		for i = 1,10 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,-math.pi/4),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi/2,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-2.8,0) *CFrame.Angles(0,0,math.pi),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-2.8,0) *CFrame.Angles(0,0,math.pi),speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			end
			Rwait()
		end
		damen = false
		Damgbx:disconnect()
		damen = true
		local Damgbx = Maraca2.Touched:connect(function(hit) Damage(hit,math.random(3,7)*Stats.Dmg.Value) end)
		PlaySound(Head,1,math.random(60,80)/100,Sounds[2])
		for i = 1,10 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,-math.pi/2,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-2.8,0) *CFrame.Angles(0,0,math.pi),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-2.8,0) *CFrame.Angles(0,0,math.pi),speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			end
			Rwait()
		end
		damen = false
		Damgbx:disconnect()
	end
end

function Slam4()
	for i = 1,24 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.1,0,-math.pi/10),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.1,0,math.pi/10),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Head,1,0.9,Sounds[2])
	local hitnow = false
	for i = 1,40 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.65,-0.5,-0.5) *CFrame.Angles(math.pi/15,0,math.pi/8),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.65,-0.5,-0.5) *CFrame.Angles(math.pi/15,0,-math.pi/8),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/2),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,1.5,-1),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,1.5,0),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if i == 6 then
			BV = Instance.new("BodyVelocity",HM)
			BV.maxForce = Vector3.new(1e5,0,1e5)
			BV.P = 1e50
			BV.Velocity = HM.CFrame.lookVector *40
			game.Debris:AddItem(BV,0.4)
			damen = true
			p = Instance.new("Part",Char)
			p.Anchored = true
			p.CanCollide = false
			p.Transparency = 1
			p.TopSurface = 10
			p.BottomSurface = 10
			p.FormFactor = 3
			p.Size = Vector3.new(1,1,1)
			p.CFrame = Maraca1.CFrame *CFrame.new(0.3,0.5,0)
			game.Debris:AddItem(p,1)
			MagDamage(8,p,math.random(5,10)*Stats.Dmg.Value)
		end
		if i > 8 then
			BV.Velocity = HM.CFrame.lookVector *40
			p.CFrame = Maraca1.CFrame *CFrame.new(0.3,0.5,0)
		end
		Rwait()
	end
	damen = false
end

function LosParachicos()
	Maraca1.Transparency = 1
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,math.pi/2,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
		end
		Rwait()
	end
	local Mask = Instance.new("Part",Char)
	Mask.CanCollide = false
	Mask.TopSurface = 0
	Mask.BottomSurface = 0
	Mask.FormFactor = 3
	Mask.Size = Vector3.new(1,1,1)
	local MaskM = Instance.new("SpecialMesh",Mask)
	MaskM.MeshId = "rbxassetid://13517453"
	MaskM.TextureId = "rbxassetid://13517459"
	MaskM.Scale = Vector3.new(0.992,0.992,1.191)
	local MaskW = Instance.new("Weld",Mask)
	MaskW.Part0 = Mask
	MaskW.Part1 = LA
	MaskW.C0 = CFrame.new(0,1.2,0) *CFrame.Angles(math.pi/2,0,0)
	for i = 1,6 do
		lerp(WLS,WLS.C0,LSC0,armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
		end
		Rwait()
	end
	for i = 1,25 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.1,0,math.pi/7),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(MaskW,MaskW.C0,CFrame.new(-1.3,-0.6,0.5) *CFrame.Angles(math.pi/1.1,0,math.pi/7),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
		end
		Rwait()
	end
	Maraca1.Transparency = 0
	MaskW.Part1 = Head
	MaskW.C0 = CFrame.new(0,0,0.5)
	coroutine.wrap(function()
		wait(7)
		for i = 0,1,0.1 do
			Mask.Transparency = i
			wait(1/60)
		end
		Mask:Destroy()
	end)()
end

function DdlTP()
	for i = 1,80 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.1,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.1,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if i == 14 then
			ThrownMaraca1 = Maraca1:Clone()
			ThrownMaraca2 = Maraca2:Clone()
			Maraca1.Transparency = 1
			Maraca2.Transparency = 1
			ThrownMaraca1.CFrame = CFrame.new(LA.Position)
			ThrownMaraca1.CFrame = ThrownMaraca1.CFrame *CFrame.new(0,1.5,0)
			ThrownMaraca2.CFrame = CFrame.new(RA.Position)
			ThrownMaraca2.CFrame = ThrownMaraca2.CFrame *CFrame.new(0,1.5,0)
			ThrownMaraca1.CanCollide = true
			ThrownMaraca2.CanCollide = true
			ThrownMaraca1.Parent = Char
			ThrownMaraca2.Parent = Char
			ThrownMaraca1.CFrame = LA.CFrame *CFrame.new(0,1.5,0)
			ThrownMaraca2.CFrame = RA.CFrame *CFrame.new(0,1.5,0)
			local BV = Instance.new("BodyVelocity",ThrownMaraca1)
			BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
			BV.Velocity = HM.CFrame.lookVector *50
			BV.Velocity = BV.Velocity +Vector3.new(0,12,0)
			local BV2 = BV:Clone()
			BV2.Parent = ThrownMaraca2
			game.Debris:AddItem(BV,0.5)
			game.Debris:AddItem(BV2,0.5)
			game.Debris:AddItem(ThrownMaraca1,1)
			game.Debris:AddItem(ThrownMaraca2,1)
		end
		Rwait()
	end
	Maraca1.Transparency = 0
	Maraca2.Transparency = 0
end

function Fiesta()
	while holdx == true and xenabled > 0 do
		if xenabled <= 0 then return end
		xenabled = xenabled -0.1
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.01,0,-math.cos(math.sin(armangle)*2)),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.01,0,math.cos(math.sin(armangle)*2)),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
		end
		Rwait()
	end
end

function Rapido()
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(20000,0,20000)
	BV.P = 1e50
	BV.Velocity = HM.CFrame.lookVector *50
	game.Debris:AddItem(BV,2.7)
	for i = 1,150 do
		if i <= 100 then
			BV.Velocity = HM.CFrame.lookVector *50
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/2.2+math.cos(armangle*3)*0.2,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/2.2+math.cos(armangle*3)*0.2,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-math.cos(legangle)*0.05,0,0) *CFrame.Angles(0,0,math.sin(legangle*2)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(-math.cos(legangle)*0.05,0,0) *CFrame.Angles(0,0,math.sin(legangle*2)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/7+math.cos(angle)*0.1,0,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/7+math.sin(angle*1.5)*0.1,0,0,0),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		elseif i <= 150 then
			BV.Velocity = HM.CFrame.lookVector *50/(i*0.02)
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/6),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(-math.pi/6,math.pi/2,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/8),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,math.pi/2,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		end
		Rwait()
	end
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
		if combo == 1 and enabled == true then
			enabled = false
			Kick1()
			enabled = true
			combo = 2
		elseif combo == 2 and enabled == true then
			enabled = false
			Kick2()
			enabled = true
			combo = 3
		elseif combo == 3 and enabled == true then
			enabled = false
			Jabs3()
			enabled = true
			combo = 4
		elseif combo == 4 and enabled == true then
			enabled = false
			Slam4()
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
				for i = 1,15 do
					lerp(WLS,WLS.C0,LSC0,armspeed)
					lerp(WRS,WRS.C0,RSC0,armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
					lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
					end
					Rwait()
				end
				Maraca1weld.Part0 = T
				Maraca2weld.Part0 = T
				Maraca1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Maraca2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Maraca1weld.C1 = CFrame.new(-0.976939201, -0.434410095, 1.0708313, -9.28085553e-010, -1, -4.31144399e-005, -3.26636873e-005, 4.31144399e-005, -1, 1, 4.80190998e-010, -3.26636873e-005)
				Maraca2weld.C1 = CFrame.new(-1.02846956, -0.434394836, -1.11915588, -9.28085553e-010, -1, -4.31144399e-005, -3.26636873e-005, 4.31144399e-005, -1, 1, 4.80190998e-010, -3.26636873e-005)
				Rwait(1)
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
				for i = 1,40 do
					lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
					lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed)
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
					lerp(WRJ,WRJ.C0,RJC0,speed)
					lerp(Neck,Neck.C0,NC0,speed)
					if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
						lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
						lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
					end
					Rwait()
				end
				Maraca1weld.Part0 = LA
				Maraca2weld.Part0 = RA
				Maraca1weld.C1 = CFrame.new(0,0.5,0)
				Maraca2weld.C1 = CFrame.new(0,0.5,0)
				enabled = true
			end
		end
		if key == "e" and on == true and eenabled >= 100 then
			enabled = false
			eenabled = 0
			LosParachicos()
			enabled = true
		end
		if key == "z" and on == true and zenabled >= 20 then
			enabled = false
			zenabled = 0
			DdlTP()
			enabled = true
		end
		if key == "x" and on == true and xenabled >= 40 then
			enabled = false
			holdx = true
			Fiesta()
			enabled = true
		end
		if key == "c" and on == true and cenabled >= 60 then
			enabled = false
			cenabled = 0
			Rapido()
			enabled = true
		end
		if key == "v" and on == true and venabled >= 80 then
			enabled = false
			venabled = 0
			--ElJarabe()
			enabled = true
		end
	end)
	keysup = mouse.KeyUp:connect(function(key2)
		if key2 == "x" then
			holdx = false
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

function updateskills()
if eenabled <= 100 then
eenabled = eenabled + 1 / 5
end
if zenabled <= 20 then
zenabled = zenabled + 1 / 5
end
if enabled == true then
if xenabled <= 40 then
xenabled = xenabled + 1 / 5
end
end
if cenabled <= 60 then
cenabled = cenabled + 1 / 5
end
if venabled <= 80 then
venabled = venabled + 1 / 5
end
if mana <= 100 then
mana = mana + 1 / 5
end
end

function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end 

while true do
	surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Character)
	updateskills()
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.sin(armangle*0.25)*0.3,0,-math.pi/6),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.sin(armangle*0.25)*0.3,0,math.pi/6),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.1,0.1+math.cos(legangle*0.5)*0.1,0) *CFrame.Angles(0,math.pi/7,math.pi/12),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.1+math.cos(legangle*0.5)*0.1,0) *CFrame.Angles(0,math.pi/7,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0.1+math.cos(angle*0.5)*0.1,0) *CFrame.Angles(0,math.pi/7,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/7),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/20,0,-math.pi/6),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/20,0,math.pi/6),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*Stats.Spd.Value),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0,speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
		end
		if HM.Velocity.Y >= 1 and enabled == true and surface == nil then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.05,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.05,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			Rwait()
		end
		if HM.Velocity.Y <= -1 and enabled == true and surface == nil then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/20,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/20,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/20,0,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/5,0,0),speed)
			lerp(Maraca1weld,Maraca1weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
			lerp(Maraca2weld,Maraca2weld.C0,CFrame.new(0,-1,-1) *CFrame.Angles(-math.pi/2,0,0),speed)
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