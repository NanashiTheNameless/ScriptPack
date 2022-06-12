for _,n in pairs (game.Players.LocalPlayer.Character:GetChildren()) do if n:IsA("Accoutrement") then n:Destroy() end end

mikymose = game.Players.LocalPlayer:GetMouse()
chr = game.Players.LocalPlayer.Character
function SoundFX(args)
  s = Instance.new("Sound", args[1])
  s.SoundId = "rbxassetid://"..args[2]
  s.Volume = args[3]
  s.Pitch = args[4]
  s.Name = args[5]
  return s
end
mikymose.KeyDown:Connect(function(onic)
  onic = onic:upper()
  if onic == "H" then
    lolwat = SoundFX({chr, "506001681", 1, 1, "succ"})
    wait()
    lolwat:Play()
    return
  end
end)

local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model")

local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (game.Workspace:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://0"-- Cartton Imortallity :381955589 -- My Heart: 154299074 -- Sao Crossing: 246056418 -- SAN HOLO DOnkeykong: 246056418 -- "Innocence" - Sword Art Online OP 2: 142357253 -- OnePunch Hero: 339250412 (Fav) -- Sethbling: 170902050
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end
----------------------------------------------------
local HBill = Instance.new("BillboardGui", hed)
local HMain = Instance.new("Frame", HBill)
local HBar = Instance.new("Frame")
local HBarBack = Instance.new("Frame") 
local HHealth = Instance.new("TextLabel", HBarBack)
local HName = Instance.new("TextLabel", HBarBack)

HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(0,4,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true

HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(1,0,1,0)

HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(0,0,0)
HBarBack.BorderColor3 = Color3.new(0,0,0)
HBarBack.BorderSizePixel = 2
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)

HBar.Parent = HBarBack
HBar.BackgroundColor3 = Color3.new(0, 1, 0)
HBar.BorderColor3 = Color3.new(0,0,0)
HBar.Size = UDim2.new(.5,0,1,0)

HHealth.BackgroundTransparency = 1
HHealth.Size = UDim2.new(1,0,1,0)
HHealth.Font = "SourceSansItalic"
HHealth.Text = "[10/10]"
HHealth.TextScaled = true
HHealth.TextColor3 = Color3.new(1,1,1)
HHealth.TextStrokeColor3 = Color3.new(85/255, 0, 127/255)
HHealth.TextStrokeTransparency = 0

HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.5,0)
HName.Font = "SourceSansItalic"
HName.Text = "â€ The Reaperâ€ "
HName.TextScaled = true
HName.TextColor3 = Color3.new(85/255, 0,127/255)
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Top"

local runServ = game:GetService("RunService").RenderStepped
runServ:connect(function()
	HHealth.Text = "["..hum.Health.."]"
	HBar:TweenSize(UDim2.new((hum.Health/hum.MaxHealth),0,1,0), _, "Linear", .4)
end)

Character = game:GetService("Players").localPlayer.Character
Reaper = Instance.new("Model", Character.Head)
Reaper.Name = "Eyes"
e1 = Instance.new("Part")
e1.Parent = Reaper
e1.Locked = true
e1.CanCollide = false
e1.formFactor = "Symmetric"
e1.Size = Vector3.new(-3.05,-5.05, -3.05)
e1.Material = "Neon"
e1.BrickColor = BrickColor.new("Really red")
e1.Shape = "Ball"
local weld = Instance.new("Weld")
weld.Parent = e1
weld.Part0 = e1
weld.Part1 = Character.Head
weld.C0 = CFrame.new(0.17, 0.01, 0.76)*CFrame.Angles(0, 0, 0)
local Lite = Instance.new("PointLight",e1)
Lite.Color = Lite.Parent.BrickColor.Color
Lite.Range = 8
Lite.Brightness = 5
Lite.Shadows = true
e2 = Instance.new("Part")
e2.Parent = Reaper
e2.Locked = true
e2.CanCollide = false
e2.formFactor = "Symmetric"
e2.Size = Vector3.new(-3.05,-5.05, -3.05)
e2.Material = "Neon"
e2.BrickColor = BrickColor.new("Really red")
e2.Shape = "Ball"
local weld = Instance.new("Weld")
weld.Parent = e2
weld.Part0 = e2
weld.Part1 = Character.Head
weld.C0 = CFrame.new(-0.17, 0.01, 0.76)*CFrame.Angles(0, 0, 0)
local Lite2 = Instance.new("PointLight",e2)
Lite2.Color = Lite2.Parent.BrickColor.Color
Lite2.Range = 8
Lite2.Brightness = 5
Lite2.Shadows = true
rh = Instance.new("Part")
rh.Parent = Reaper
rh.Locked = true
rh.CanCollide = false
msh = Instance.new("SpecialMesh")
rh.formFactor =  "Symmetric"
msh.MeshType = "FileMesh"
msh.MeshId = "http://www.roblox.com/asset/?id=16150814"
msh.TextureId = "http://www.roblox.com/asset/?id=16150799"
msh.Parent = rh
msh.Scale = Vector3.new(1.025, 1.025, 1.025)
local weld = Instance.new("Weld")
weld.Parent = rh
rh.Transparency = 0
weld.Part0 = rh
weld.Part1 = Character.Head
weld.C0 = CFrame.new(0, -0.045, 0)*CFrame.Angles(0, 0, 0)


local function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end
local function lerp2(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C1
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
local ignore = {}
local on = true
local damen = true
local enabled = true
local slamming = false
local combo = 1
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local Char = Player.Character
local Character = Char
local Human = Char.Humanoid
local Sounds = {"rbxassetid://200633148","rbxassetid://200632211","rbxassetid://2101137","rbxassetid://136523485"}
local Head = Char.Head
local LA = Char:findFirstChild("Left Arm")
local RA = Char:findFirstChild("Right Arm")
local LL = Char:findFirstChild("Left Leg")
local RL = Char:findFirstChild("Right Leg")
local T = Char:findFirstChild("Torso")
local LS = T:findFirstChild("Left Shoulder")
local RS = T:findFirstChild("Right Shoulder")
local LH = T:findFirstChild("Left Hip")
local RH = T:findFirstChild("Right Hip")
local Neck = T:findFirstChild("Neck")
local HM = Char:findFirstChild("HumanoidRootPart")
local RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local WLS = Instance.new("Weld", T)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
local WRS = Instance.new("Weld", T)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
local WLH = LH
local WRH = RH
local LSC0 = WLS.C0
local RSC0 = WRS.C0
local LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local WRJ = RJ
local RJC0 = WRJ.C0
local RJC1 = WRJ.C1
local NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local NC1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local Run = game:GetService("RunService")
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

m=Instance.new('Model',Character)
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

Claw=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,1,"Really black","Handle",Vector3.new(1, 1.5, 1))
Clawweld=weld(m,Character["Right Arm"],Claw,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0149011612, 0.25, -0.0200300217, -1, 0, 0, 0, 0.999999881, 0, 0, 0, -1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.5, 1))
Partweld=weld(m,Claw,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.10000002, 1.10000002))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,Claw,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.549998999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 1.20000005, 1.20000005))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Part",Vector3.new(0.299999952, 1, 1.39999998))
Partweld=weld(m,Claw,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.594539642, -0.0200266838, -0.508953333, -0.970295787, 0.241921946, 0, 0, 0, -1, -0.241921946, -0.970295787, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=10681506",Vector3.new(0, 0, 0),Vector3.new(2, 1.5, 1))

Hitbox = Part

local Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
}

local function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

local function getmesh(mesh)
	return "rbxassetid://"..mesh
end

local function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
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

function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

local PlaySound = function(part,volume,pitch,id,looped)
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

local function GetDistance(Obj,Mag)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
			local Mag2 = (v.Torso.Position - Obj.Position).magnitude
			if Mag2 < Mag then
				return v
			end
		end
	end
end

local ShowDmg = function(totake)
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

local function ChargeAt(Strength,lastfor)
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(5e4,0,5e4)
	BV.velocity = HM.CFrame.lookVector *Strength
	if lastfor == nil then lastfor = 0.1 end
	game.Debris:AddItem(BV,lastfor)
end

local function Damage(hit,mm,knockback)
	if hit ~= nil and hit.Parent ~= nil and damen == true and hit.Parent ~= Char and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid").Health > 0 then
		if game.Players:FindFirstChild(hit.Parent) ~= nil and game.Players:FindFirstChild(hit.Parent).TeamColor == "Bright orange" then
			return
		end
		hit.Parent.Humanoid:TakeDamage(mm)
		if knockback ~= nil and knockback ~= 0 then
			local v = Instance.new("BodyVelocity",hit.Parent.Torso)
			v.maxForce = Vector3.new(5e4,0,5e4)
			v.P = 1e20
			v.velocity = HM.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.5)			
		end
		coroutine.resume(coroutine.create(function()
			ShowDmg(mm)
		end))
		damen = false
	end
end

local function MagDamage(magnitude,part,damg,knockback,ignoretime)
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
			v.maxForce = Vector3.new(5e4,0,5e4)
			v.P = 1e20
			v.velocity = HM.CFrame.lookVector *knockback
			game.Debris:AddItem(v,0.1)
		end
		coroutine.resume(coroutine.create(function()
			wait(ignoretime)
			ignore[Body] = false
		end))
	end
end

local function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

local function Slash1()
	for i = 1,10 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2.3,0,-math.pi/5),armspeed*1.3)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/10),armspeed*1.3)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = true
	local dmgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(8,14),3) end)
	PlaySound(Claw,1,1.1,Sounds[1])
	for i = 1,13 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/3,0,-math.pi/3),armspeed*1.3)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed*1.3)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

local function Slash2()
	for i = 1,10 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed*1.3)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.2,math.pi/2,math.pi/5),armspeed*1.3)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = true
	local dmgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(8,14),3) end)
	PlaySound(Claw,1,1,Sounds[1])
	for i = 1,13 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/7,0,-math.pi/4),armspeed*1.3)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(math.pi/6,math.pi/5,0),armspeed*1.3)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

local function Kick3()
	damen = true
	local dmgbx = RL.Touched:connect(function(hit) Damage(hit,math.random(5,8),10) end)
	PlaySound(RL,1,1.2,Sounds[2])
	ChargeAt(80,0.1)
	for i = 1,10 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/5,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/7),legspeed*1.3)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/2.5),legspeed*1.3)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(-math.pi/7,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/4,0,0),speed)
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

local function Slash4()
	damen = true
	local dmgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(8,14),3) end)
	PlaySound(Claw,1,1.2,Sounds[1])
	for i = 1,10 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed*1.3)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.4,-math.pi/5,-math.pi/5),armspeed*1.3)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

function ChargeClaw()
	damen = true
	local dmgbx = Hitbox.Touched:connect(function(hit) Damage(hit,math.random(14,30),50) end)
	PlaySound(Claw,1,0.7,Sounds[1])
	ChargeAt(100,0.1)
	for i = 1,100 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/3,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

function GrabClaw()
	damen = true
	PlaySound(Claw,1,0.7,Sounds[2])
	local dmgbx = LA.Touched:connect(function(hit) if slamming == false and hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid").Health >= 0 and hit.Parent:FindFirstChild("Torso") ~= nil then grabweld = Instance.new("Weld",T) grabweld.Part0 = LA grabweld.Part1 = hit.Parent.Torso grabweld.C0 = CFrame.new(0,-1.5,0) grabweld.C0 = grabweld.C0 *CFrame.Angles(-math.pi/2,math.pi,0) slamming = true print(hit,grabweld,damen) Slam(hit) end end)
	for i = 1,100 do
		if slamming == true then break end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	if slamming == false then
		damen = false
		enabled = true
	end
	dmgbx:disconnect()
end

function Slam(hit)
	slamming = true
	for i = 1,10 do
		hit.Parent.Humanoid.PlatformStand = true
		hit.Parent.Humanoid:ChangeState(1)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.1,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2.4,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/2.4),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/2.4),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.6) *CFrame.Angles(math.pi/2.4,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Human:ChangeState(2)
	Damage(hit,math.random(12,20))
	hit.Parent.Humanoid.PlatformStand = false
	grabweld:Destroy()
	local ok = effect(hit.Parent.Torso,BrickColor.White(),Vector3.new(),hit.Parent.Torso.CFrame *CFrame.Angles(-math.pi/2,0,0),0,0.1,Vector3.new(1,1,1),1,Meshes.Blast,nil)
	PlaySound(ok,1,1.49,Sounds[4])
	slamming = false
	damen = false
	enabled = true
end

local click = mouse.Button1Down:connect(function()
	if on == false then return end
	if combo == 1 and enabled == true then
		enabled = false
		Slash1()
		enabled = true
		combo = 2
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 2 and enabled == true then
		enabled = false
		Slash2()
		enabled = true
		combo = 3
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 3 and enabled == true then
		enabled = false
		Kick3()
		enabled = true
		combo = 4
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 4 and enabled == true then
		enabled = false
		Slash4()
		enabled = true
		combo = 1
	end
end)

local keys = mouse.KeyDown:connect(function(key)
	key = key:lower()
	if enabled == false then return end
	if key == "z" and on == true and enabled == true then
		enabled = false
		ChargeClaw()
		enabled = true
	end
	if key == "x" and on == true and enabled == true then
		enabled = false
		GrabClaw()
	end
end)

local function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end 

while true do
	local surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,-math.pi/1.5,-math.pi/8),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.5,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,-0.25,0) *CFrame.Angles(0,0,-math.pi/5),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25)*0.05,0,0),speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.7,math.cos(armangle*0.25)*0.25,-1) *CFrame.Angles(math.pi/2,0,math.pi/1.9),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,math.cos(armangle*0.25)*0.25,0) *CFrame.Angles(math.pi/2,0,math.pi/1.4),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1-math.sin(angle*0.25)*0.25,0) *CFrame.Angles(0,0,-math.pi/30+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(angle*0.25)*0.25,0) *CFrame.Angles(0,0,math.pi/30+math.sin(legangle)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2+math.sin(angle*0.25)*0.25) *CFrame.Angles(math.pi/8,0,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/4,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/5),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,math.pi/5,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
			Rwait()
		end
		if HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/8,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/8,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/8,0,0),speed)
			lerp(Neck,Neck.C0,NC0,speed)
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