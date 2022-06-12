--[[ No words, only thing I have to say is this was created by wizardunstopable ]]--

local ArtificiaLeftHipB = Instance.new("BindableEvent", script)
ArtificiaLeftHipB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
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
local Neck = torso:WaitForChild("Neck")
local shot = 0
local debris=game:service"Debris"
local CanAttack = true
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local animpose = "Idle"
local lastanimpose = "Idle"
local stanceToggle = "Normal"
local Hood = false
local holy = false --[[ change to true if u want him flying ]]
local Trails = true --[[ change to true for glow trails comming from eyes ]]--
local Shield = false
local eColors = {"Really red", "Really black"}
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local vt = Vector3.new
local angles = CFrame.Angles
local attacktype=1
local Melee = true
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())

RA,LA,RL,LL,H,T = char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"],char.Head,char.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,Heart = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},p.Name == "Fir3bl4ze",p.Name == "Paul072" or p.Name == "KillBecca62",p.Name == "InternalRecursion" or p.Name == "RecursionAltInternal",p.Name == "heartstar1"
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
ks = false;
}

local Touche = {char.Name, }
local Character = p.Character





local Shockwave = function()
	local rng1 = Instance.new("Part", Character)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng1)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            Character.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 500000000
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                delay(0, function()

                    if Daytime == false then
                       for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = Character.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = Character.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = Character.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end


function Shockwave2()
	local ENERGY = Instance.new("Part", Character)
		ENERGY.Name = "ENERGY"
		ENERGY.CanCollide = false
		ENERGY.Transparency = 0.2
		ENERGY.TopSurface = 0
		ENERGY.BottomSurface = 0
		ENERGY.Anchored = true
		ENERGY.BrickColor = BrickColor.new("Really black")
		 ENERGY.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            Character.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 50
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
                        end
                    end
                end)
		local cm = Instance.new("CylinderMesh", ENERGY)
		cm.Scale = Vector3.new(1, 20, 1)
		ENERGY.Size = Vector3.new(5, 20, 5)
		ENERGY.CFrame = char.Torso.CFrame
		for i = 1, 50 do
			ENERGY.CFrame = char.Torso.CFrame
			ENERGY.Transparency = ENERGY.Transparency + 0.012
			ENERGY.Size = ENERGY.Size + Vector3.new(0.2, 0, 0.2)
			wait()
		end
		ENERGY:Destroy()
end



local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
local Effects = {}

function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://242942414"--..SIDz[math.random(1,#SIDz)]
z.Looped = true
z.Volume = 3
z.Pitch = 1
wait(1)
z:Play()
local Transformation = function()
		
		hum.WalkSpeed = 0
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(0.7)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.9,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
        Shockwave2()
		wait(2)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(2.4)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.6,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
		Shockwave2()
		wait(0.3)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(0.6)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.6,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
		Shockwave2()
		wait(0.2)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(2)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.3,0,0)
		local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really red")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
	local hit, pos = rayCast(root.Position, (CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0))).lookVector, 6, Character)
	if hit ~= nil then
		local Color = hit.BrickColor
		local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", Vector3.new())
		refpart.Anchored = true
		refpart.CFrame = CFrame.new(pos)
		game:GetService("Debris"):AddItem(refpart, 1)
		for i = 1, 5 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local groundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(500, 1000) / 1000, math.random(500, 1000) / 1000, math.random(500, 1000) / 1000))
			groundpart.Anchored = false
			groundpart.Material = Materials
			groundpart.CanCollide = true
			groundpart.Friction = 0.1
			groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
			groundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(groundpart, 10)
		end
		for i = 1, 6 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local actualgroundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(1000, 2000) / 1000, math.random(1000, 2000) / 1000, math.random(1000, 2000) / 1000))
			actualgroundpart.Anchored = true
			actualgroundpart.Material = Materials
			actualgroundpart.CanCollide = true
			actualgroundpart.Friction = 1
			actualgroundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(actualgroundpart, 10)
		end 
		WaveEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, .5, .5, .5, .04)
		SphereEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, 3, 3, 3, .04)
		RingEffect(hit.BrickColor, refpart.CFrame * CFrame.Angles(math.random(5, 6), math.random(2, 7), math.random(3, 6)), .2, .2, .2, 1, 1, 1, .05)
	end
	Shockwave()
end
Transformation()
	
	
for i,v in pairs(game.Players:GetChildren()) do
       if v.Name ~= p then
game:GetService("Chat"):Chat(v.Character.Head, "The God Of Destruction Has Awakened", Enum.ChatColor.Red)
end	
end
partic2 = Instance.new("ParticleEmitter",torso)
partic2.Color = ColorSequence.new(Color3.new(100/225,100/255,100/255),Color3.new(100/255,100/255,100/255))
partic2.LightEmission = .95
partic2.VelocityInheritance = 0.2
partic2.Rate = 300
partic2.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds" 
partic2.Lifetime = NumberRange.new(0.1,0.2)
partic2.RotSpeed = NumberRange.new(100,100)
partic2.Speed = NumberRange.new(2,6)
partic2.Enabled = false
partic2.LockedToPart = false 

function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
end

so = function(id,par,vol,pit)
	coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end 


p:ClearCharacterAppearance()
wait(0.1)
p.Character.Head.BrickColor = BrickColor.new("Really black")
p.Character.Torso.BrickColor = BrickColor.new("Really black")
p.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
p.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
p.Character.Head.face:Destroy()
p.Character.Head.Material = "Granite"
p.Character.Torso.Material = "Granite"
p.Character["Right Arm"].Material = "Granite"
p.Character["Right Leg"].Material = "Granite"
p.Character["Left Leg"].Material = "Granite"
p.Character["Left Arm"].Material = "Granite"
Fl = Instance.new('Fire',larm); FR = Instance.new('Fire',rarm); Ft = Instance.new('Fire',torso)
Ft.Size = 0.8
Fl.Size = 0.8
FR.Size = 0.8
Fl.Color = Color3.new(0,0,0)
FR.Color = Color3.new(0,0,0)
Ft.Color = Color3.new(0,0,0)
Fl.SecondaryColor = Color3.new(0,0,0)
FR.SecondaryColor = Color3.new(0,0,0)
Ft.SecondaryColor = Color3.new(0,0,0)
SR = Instance.new('Smoke',rleg)
SR.Color = Color3.new(0,0,0)
SR.Size = 0.6
SR.RiseVelocity = 0.7
hum.WalkSpeed = 200
hum.MaxHealth = math.huge
wait(0.1)
hum.Health = math.huge
local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really red")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
----------------------------------------------------

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
------------------------------------------------------
local Orbd = Instance.new("Part", char)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("Really red")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = char.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)
local glov = Instance.new("PointLight", Orbd)
glov.Brightness = 3000
glov.Range = 20
glov.Color = Color3.new(225, 0, 0)

--------------------------------------------------------
local Orbvc = Instance.new("Part", char)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
Orbvc.BrickColor = BrickColor.new("Really red")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = char.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
local glo = Instance.new("PointLight", Orbvc)
glo.Brightness = 3000
glo.Range = 20
glo.Color = Color3.new(225, 0, 0)
bs = Instance.new("Sound", char)
bs.SoundId = "http://www.roblox.com/asset/?id = 141606337"
bs.Looped = false
bs.Volume = 12

local DestructionHands = true

GroundWave = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end



local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
	keysDown[key] = true
	
	if key == "f" then
		flyToggled = not flyToggled
		
	if not flyToggled then
		stanceToggle = "Normal"
		floatBP.Parent = nil
		flyBV.Parent = nil
		turnBG.Parent = nil
		root.Velocity = Vector3.new()
		pchar.Humanoid.PlatformStand = false
	end
end
	
end)
mouse.KeyUp:connect(function(key)
	keysDown[key] = nil
end)

local function updateFly()

	if not flyToggled then return end
	
	lastForward = forward
	lastSide = side
	
	forward = 0
	side = 0
	
	if keysDown.w then
		forward = forward + 1
	end
	if keysDown.s then
		forward = forward - 1
	end
	if keysDown.a then
		side = side - 1
	end
	if keysDown.d then
		side = side + 1
	end

	
	canFly = (forward ~= 0 or side ~= 0)
	
	if canFly then
		stanceToggle = "Floating"
		turnBG.Parent = root
		floatBP.Parent = nil
		flyBV.Parent = root
		
		flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
		if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
	else
		floatBP.position = root.Position
		floatBP.Parent = root
		
		flySpeed = flySpeed - 1
		if flySpeed < 0 then flySpeed = 0 end
	end
	
	local camCF = cam.CoordinateFrame
	local in_forward = canFly and forward or lastForward
	local in_side = canFly and side or lastSide
	
	flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side, 
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
	
	turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 
0)
end

game:service'RunService'.RenderStepped:connect(function()
	if flyToggled then
		pchar.Humanoid.PlatformStand = true
	end
	updateFly()
end)

if Trails == true then
--------------------------------Trail		
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = Orbvc
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/3
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			T.BrickColor = BrickColor.new("Really red")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)
--------------------------------Trail
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = Orbd
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/4
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			
			
			
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			T.BrickColor = BrickColor.new("Really red")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)
end

Magik = function()
	spawn(function()
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik = Instance.new("Part", larm)
		local Colors = {"Really red", "Really black"}
		magik.Anchored = true
		magik.Locked = true
		magik.Material = "Neon"
		magik.FormFactor = "Custom"
		magik.Size = Vector3.new(1.2, 1.2, 1.2)
		magik.TopSurface = "Smooth"
		magik.BottomSurface = "Smooth"
		magik.Transparency = 0
		magik.CanCollide = false
		
		if holy == false then
		magik.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		end
		
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik.Transparency = newTrans
			magik.Size = Vector3.new(ns,ns,ns)
			magik.CFrame = cf
			rs:wait()
	    end
		magik:Destroy()
		wait()
    end)
end
----------------------------------------------------
Magik2 = function()
	spawn(function()
		if stanceToggle == "Normal" or stanceToggle == "Running" or stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik2 = Instance.new("Part", rarm)
		local Colors = {"Really red", "Really black"}
		magik2.Anchored = true
		magik2.Locked = true
		magik2.FormFactor = "Custom"
		magik2.Size = Vector3.new(1.2, 1.2, 1.2)
		magik2.TopSurface = "Smooth"
		magik2.BottomSurface = "Smooth"
		magik2.Transparency = 0
		magik2.Material = "Neon"
		magik2.CanCollide = false
		
		if holy == false then
		magik2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		end
		
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik2.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik2.Transparency = newTrans
			magik2.Size = Vector3.new(ns,ns,ns)
			magik2.CFrame = cf
			rs:wait()
	    end
		magik2:Destroy()
		elseif stanceToggle ~= "Melee" or stanceToggle == "Normal" or stanceToggle == "Running" then
		wait()
		end
    end)
end

Mesh2 = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=char.Torso.Position
		nooutline(fp)
		fp.Material= material
		fp:BreakJoints()
		return fp
	end


it = Instance.new

Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)
function part2(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
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
		fp.Material= "Neon"
		fp:BreakJoints()
		return fp
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

Player.Character["Right Arm"].Transparency = 1
Player.Character["Right Leg"].Transparency = 1
MN=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))
MNweld=weld(m,Character["Right Leg"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00872802734, 0.00284510851, -0.0114479065, 0.000559218752, 0.00461495388, -0.999989212, 0.0116515048, 0.999921441, 0.00462115649, 0.999931991, -0.0116539635, 0.000505403674))
FB1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB1",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB1weld=weld(m,MN,FB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466812134, -0.259373605, 4.19616699e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB10",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB10weld=weld(m,MN,FB10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-05, -0.907726586, -0.0001745224, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB11",Vector3.new(0.518704236, 0.778056443, 0.252201557))
FB11weld=weld(m,MN,FB11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.415454417))
FB12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB12",Vector3.new(1.03740847, 0.778056443, 1.03740823))
FB12weld=weld(m,MN,FB12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-05, 0.648371816, 1.38282776e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB2",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB2weld=weld(m,MN,FB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB3",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB3weld=weld(m,MN,FB3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000141143799, -0.907841623, 0.725996017, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB4",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB4weld=weld(m,MN,FB4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000263214111, -0.495628834, 1.08177543, -1, -0.000208274461, -0.000166981248, -2.93208286e-05, 0.707433105, -0.706780434, 0.000265331706, -0.706780314, -0.707433105))
mesh("SpecialMesh",FB4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB5",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB5weld=weld(m,MN,FB5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB6",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB6weld=weld(m,MN,FB6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, 0.129679263, 3.29017639e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB7",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB7weld=weld(m,MN,FB7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466838837, -0.259338915, -8.58306885e-06, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB8",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB8weld=weld(m,MN,FB8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.764207125, 0.546924591, -0.999995053, -0.000121198129, -0.00017335522, -0.000163274352, 0.965882957, 0.258978456, 0.000135882699, 0.258978575, -0.96587801))
mesh("SpecialMesh",FB8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB9",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB9weld=weld(m,MN,FB9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023651123, 0.648379326, -0.000217437744, -0.99999994, 0.00030120369, -0.00014261005, -0.000301247928, -0.999999821, 0.000302845408, -0.000142518838, 0.000302889268, 1))
mesh("SpecialMesh",FB9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
TN1=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN1",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN1weld=weld(m,MN,TN1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TN2=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN2",Vector3.new(0.518704236, 0.778056443, 0.252201557))
TN2weld=weld(m,MN,TN2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.899999917, 0.899999917, 0.419567823))
TN3=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN3",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN3weld=weld(m,MN,TN3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))






Weld2 = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end


local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

function Crater2(Torso,Radius)
			spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end


function DeathTouch()
torso.Touched:connect(function(hit)
		if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
							x = hit.Parent:findFirstChild("Head")
							x:Destroy()
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 100
                        end
                    end
                    end)

hed.Touched:connect(function(hit)
		if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
							x = hit.Parent:findFirstChild("Head")
							x:Destroy()
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 100
                            
                        end
                    end
                    end)
                    end


mod5 = Instance.new("Model",char)

function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=game.Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end

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

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(15,10,15)
	Crater(hed,20)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 230
			v.Humanoid:Destroy()
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(5,0.9,5)
            end
        part.Parent = nil
    end))
   
end

function Teleport()
	if not enabled then
		enabled = true
		bs:Play()
		char:MoveTo(mouse.hit.p)
		wait(0.1)
		enabled = false
	end
end

local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",char)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
end

local cScript = script:Clone()
cScript.Disabled = true

function xShake(Player,numbor,waeittime,duration)
local xScript = cScript:Clone()
local numbor,waeittime = numbor or 2,waeittime >= 1/30 and waeittime or 1/30
local src = xScript:findFirstChild("DSource")or xScript:findFirstChild("Source")or xScript:findFirstChild("code")
if not src then return end
if xScript:findFirstChild("Owner")then xScript:findFirstChild("Owner").Value = Player end
src.Value = [[
local Done = true
delay(]]..duration..[[,function()Done = false end)
local Cam = Workspace.CurrentCamera
while true do
if not Done then break end
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,]]..numbor..[[,0)
Wait(]]..waeittime..[[)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,]]..(-numbor)..[[,0)
end
script:Destroy()
]]
xScript.Parent = Player:findFirstChild("Backpack")or Player.Character ~= nil and Player.Character
if not xScript.Parent then xScript:Destroy()return end
xScript.Disabled = false
end

function ShakeCam(numbor,waeittime)cam.CoordinateFrame = cam.CoordinateFrame * CFrame.new(0,numbor or 2,0)wait(waeittime or 1/30)cam.CoordinateFrame = cam.CoordinateFrame * CFrame.new(0,numbor and -numbor or -2,0)end

function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = p
c.Name = "creator"
end

function Kill(Hit)
pcall(function()
Tag(Hit.Parent.Humanoid)
local Head = Hit.Parent:findFirstChild("Head")
if not Head then return end
local x = Instance.new("Part",Hit.Parent)
x.Anchored = true
x.CanCollide = false
x.Locked = true
x.Transparency = 1
x.CFrame = Head.CFrame
local bg = Instance.new("BillboardGui",x)
bg.Adornee = x
bg.Size = UDim2.new(1,0,1,0)
bg.StudsOffset = Vector3.new(0,2,0)
local img = Instance.new("ImageLabel",bg)
img.Size = UDim2.new(1,0,1,0)
img.BackgroundTransparency = 1
img.Image = "http://www.roblox.com/asset/?id=138315085" or "http://www.roblox.com/asset/?id=138315093"
coroutine.wrap(function()
for i = 1,10 do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.17,0)
bg.Size = UDim2.new(bg.Size.X.Scale +i/2,0,bg.Size.Y.Scale +i/2,0)
wait()
end
local d = false
coroutine.wrap(function()
while not d do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.12,0)
wait()
end end)()
wait(3)
d = true
for i = 1,11 do
img.Rotation = img.Rotation +45
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.43,0)
bg.Size = UDim2.new(bg.Size.X.Scale -i/2,0,bg.Size.Y.Scale -i/2,0)
wait()
end
x:Destroy()
end)()
Hit.Parent:BreakJoints()
end)end

function Direction()
if not char then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(cam.CoordinateFrame.x,T.Position.y,cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(cam.CoordinateFrame.p.x,T.CFrame.p.y,cam.CoordinateFrame.p.z)}
end

function Damage(Vec,Object,Bool,Amt,DontDisplayDmg)
if Object.Parent:findFirstChild("AtlasRegistration")and Object.Parent.Name == char.Name then return end
if Object.Parent == char then return end
local Dmg,Humanoid = math.random(30,45),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Amt then Dmg = Amt end
if Humanoid and not HitDebounce then
HitDebounce = true
if not holy then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
else
Kill(Object)
end
end
end

function DamageNear(Pos,Mag,Dmg)
local Targets,HitAlready = {},{}
for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= char and v:findFirstChild("Humanoid")then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
if(Pos -x.Position).magnitude <= Mag then
table.insert(Targets,v)
end end end end end
for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
ypcall(function()Damage(T,v.Torso,nil,Dmg,true)end)
HitAlready[v.Name]= true
end end end

function ChargePosition(Bool)
if Bool then
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
for i = 1,2 do
RS.C0 = RS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
LS.C0 = LS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
RH.C0 = RH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
LH.C0 = LH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
wait()
end else
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
end end

mouse.KeyDown:connect(function(Key)
	if Key == "q" then
	
StanceGyro = Instance.new("BodyGyro")
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
	
Debounces.Attacking = true
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Come to Wizard...", "Red")
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
Stance = "Null"
ChargePosition(false)
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/12.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end
wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",char)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= char then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position - HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",char)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15 p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,0,40000)
p.velocity = (t.Position - T.Position).unit *-(10 +(t.Position - T.Position).magnitude *0.75)
game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break
end end end end end end end
wait(0.1)
end
if Grabbed then
local Target = Grabbed.Parent.Humanoid
wait()
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Your mine now!", "Red")
local BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
N.DesiredAngle = 1.6
RS.DesiredAngle = -0.4
LS.DesiredAngle = 0.4
local GR,_GR = true,true
coroutine.wrap(function()
while _GR do
if GR then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end
wait()
end end)()
for i = 1,10 do
wait(0.5)
BP.position = BP.position +DIR *1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/10)*2,0)
T.CFrame = StanceGyro.cframe
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/50,0,0)
end
local DesPos
N.DesiredAngle = -1.5
RS.DesiredAngle = 3.2
DesPos = BP.position +DIR *3.5 + Vector3.new(0,500.5,0)
local dp = Instance.new("BodyPosition")
dp.P = 5000
dp.maxForce = Vector3.new(50000,50000,50000)*50000000000000000
local rot,sta = CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/20),T.Position +DIR *3 + Vector3.new(0,1.5,0)
GR = false
for i = 1,5 do
wait(0.5)
BP.position = BP.position +DIR *0.1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/5),0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/50,0,0)
if i >= 3 then
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)*rot
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end end
for i = 6,13 do
wait(0.2)
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)* CFrame.fromEulerAnglesXYZ(i ^2/5,i/10,math.sin(2 *i))
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end
ChargePosition(false)
RS.DesiredAngle = -0.2
LH.DesiredAngle = 0.2
RH.DesiredAngle = -0.2
LS.DesiredAngle = 0.2
N.DesiredAngle = 0
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Are you ready for this?", "Red")
local x = T.Position
for i = 1,40 do
T.CFrame = CFrame.new(x:Lerp(DesPos,i/40),Grabbed.Position)* CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
StanceGyro.cframe = T.CFrame
BP.position = T.CFrame.p
if i > 20 then
RS.DesiredAngle = 3.2
end
wait()
end
GR = true
dp:Destroy()
LS.DesiredAngle = 0
LH.DesiredAngle = 1
RH.DesiredAngle = 1
LS.DesiredAngle = 1
LS.C0 = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
N.DesiredAngle = 1.6
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)
ChargePosition(false)
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Get ready to die", "Red")
for i = 1,5 do
BP.position = BP.position + Vector3.new(0,0.25,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end
BP.D = 100
BP.P = 9000
x = BP.position
local Hit,Pos = workspace:FindPartOnRay(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),char)
for i = 1,25 do
BP.position = x:Lerp((DesPos -Vector3.new(0,499,0)),i/25)
wait(0.03 -i *0.01)
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/5,0)
RS.DesiredAngle = -0.8
wait()
end
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Boom!", "Red")
DamageNear(T.Position,20,34)
if not Hit then local Hit = Instance.new("Part")Hit.BrickColor = BrickColor.new("Really black")end
if not Pos then Pos = Grabbed.Position end
coroutine.wrap(ShakeCam)(7.32,0.04)
xShake(game.Players:GetPlayerFromCharacter(Grabbed.Parent),12,1/30,1.2)
for i = 1,30 do
local p = Instance.new("Part",char)
p.FrontSurface = Hit.TopSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
GR = false
_GR = false
Explode(CFrame.new(Pos),Settings.Colors[2])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(90),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(45),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(-45),0),Settings.Colors[2])
Kill(Grabbed)
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",char)
p.TopSurface = Hit.TopSurface
p.BottomSurface = Hit.BottomSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end
wait(0.25)
BP:Remove()
end
wait(0.25)
Stance = "Standing"
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
end;
end)
mouse.KeyDown:connect(function(key)
if key == "j" then

Teleport()
end
end)

mouse.KeyDown:connect(function(key)
	if key == "m" then
		hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            wait(.1)
so("http://www.roblox.com/asset/?id=169445572",hed,1.5,1.5)
so("http://www.roblox.com/asset/?id=169380495",hed,1.5,1.5)
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            if Debounces.on == false then break end
                wait()
            end
            wait(0.5)
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Institutional white")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
		for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 800
        end
end
            x = Instance.new("Sound",torso)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 2
            x:Play()
			partic2.Enabled = true
                coroutine.wrap(function()
                for i = 1, 60, 8 do
                rngm.Scale = Vector3.new(1.5 + i*1.5, 1.5 + i*1.5, 5)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,150,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()

		coroutine.resume(coroutine.create(function()
					for i = 1, 2880, 48 do 
            			torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(i), math.rad(0), math.rad(0))
						rs:wait(4)
					end
					torso.Weld.C1 = CFrame.new(0, -1, 0)
		end))
		
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end

if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end
end
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
Crater(torso,40)
Landing()
 Crater(hed,40)
z = Instance.new("Sound",torso)
z.SoundId = "rbxassetid://142070127"
z.Volume = 2
wait(.1)
z:Play()
partic2.Enabled = false
hum.WalkSpeed = 0
for i = 1, 25 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.3) *CFrame.Angles (math.rad(120),math.rad(10),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,1,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, 0, -.6) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.2)

            if Debounces.on == false then break end
                wait()
            end
            wait(0.2)
Debounces.on = false
Debounces.NoIdl = false
if holy == true  then
hum.WalkSpeed = 200
elseif holy ~= true then
hum.WalkSpeed = 200
end
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)


mouse.KeyDown:connect(function(Key)
	if Key == "e" then
	game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Touch me and your dead", "Red")
			DeathTouch()
		end
end)

mouse.KeyDown:connect(function(Key)
	if Key == "r" then
		game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"ForceField: Activated", "Red")
		local Force = Instance.new("ForceField", char)
		wait(9)
		Force:Destroy()
		game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"ForceField: Deactivated", "Red")
	end
end)


mouse.KeyDown:connect(function(Key)
	if Key == "y" then
           if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
                  if Debounces.on == false then
                          break
                  end
                  wait()
                      end
                      wait()
                    if Daytime == true then
                        Daytime = false
                        l.TimeOfDay = 24
                    else
                        Daytime = true
                        l.TimeOfDay = 12
                        l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
                    end
                    char.Humanoid.MaxHealth = math.huge
                    c = Instance.new("Sound")
                    c.SoundId = "http://www.roblox.com/asset/?id=511715134"
                    c.Parent = char
                    c.Looped = false
                    c.Pitch = 1
                    c.Volume = 28
                    wait(.01)
                    c:Play()
            local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really red")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= char.Name then
                            print("Damaged " .. hit.Parent.Name)
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                Delay(0, function()
                    -- 
                    -- Okay.
                
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(60 + i, 70 + i, 80 + i, 90 + i, 100 + i, 110 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                   
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
			Crater(hed, 30)
            Crater(torso, 30)
            Shockwave()
            
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.6)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
            end
	    wait(2)
            Debounces.NoIdl = false
                    if CanAttack == false then
                        CanAttack = true
                wait()
                    end
            end -- for the canattack thing
        end
end)



function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then 
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=Vector3.new(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if hum.Health>0 and char.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end






function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,root,.2,1,3)
end
end
end
end
end


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=Instance.new(Mesh)
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
		local weld=Instance.new("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
end





function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function parto(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
	
	function mesho(Mesh,part,meshtype,meshid,offset,scale)
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
	
	
	
local fx={}
local Neoncol = {BrickColor.new("Really red")}



Damagefunco=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if hum.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


local col = 1



function MagicCylinder2o(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(fx,{prt,"Cylinder",delay,x3,y3,z3})
fx[#fx+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end

function MagniDamageo(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=p.Name then 
Damagefunco(Hit,head,mindam,maxdam,knock,Type,root,.2,1,3)
end
end
end
end
end


function MagicBlocko(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(fx,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

mod=Instance.new('Model',char)
function Burst()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really red')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(5,2.5,5)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end





function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end

function Slam()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')

    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)

    wait(.1)
	--x:Play()
    --x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') and holy == true then
				holyslamdmg = math.random(99999999999999999999999999999999999999999,999999999999999999999999999999999999999999999999999999999999999999999)
            v.Humanoid:TakeDamage(holyslamdmg)
				coroutine.resume(coroutine.create(function()
					wait(2)
					v.Humanoid.PlatformStand = false
				end))
				coroutine.resume(coroutine.create(function()
					wait(2)
					v.Humanoid.PlatformStand = false
				end))
        end
	so("http://roblox.com/asset/?id=206082327", torso, 1, 1)
	so("http://roblox.com/asset/?id=142070127", torso, 1, 0.7)
	so("http://roblox.com/asset/?id=263610111", torso, 1, 1)
	so("http://roblox.com/asset/?id=263610131", torso, 1, 1)
	so("http://roblox.com/asset/?id=166221646",	torso,1,1) 
  	so("http://roblox.com/asset/?id=200632875", torso, 1, 1)
    end
	


    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end)) 
end

Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://200632821"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,1.5),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(30),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-30), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
		
		Slam()
		Crater(torso, 10)	
		
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.4)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(80), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(70), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		
				if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		
		stanceToggle = "Normal"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end
end)



function Throw()
	    if Grab == true then
        Grab = false
	stanceToggle = "Normal"
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-50)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
			end
					for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,1.5,-.4)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(-10),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
        if gp ~= nil then
	
				coroutine.resume(coroutine.create(function()
					tossed = gp:FindFirstChild("Torso").Parent.Humanoid
					wait(3)
					tossed.PlatformStand = false
				end))	
	
                                    z3 = Instance.new("Sound",torso)
                                    z3.SoundId = "rbxassetid://200632136"
									z3.Pitch = 0.7
                                    z3.Volume = 1
                                    z3:Play()	
	
        for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
            end
        end
        bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 70



        for i = 1, 12 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6, 0, -.75)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(20)), 0.5)
            if Debounces.on == false then end
            wait()
        end
        ht=nil
        spawn(function()
            wait(0.5)
            bv:Destroy()
        end)
		stanceToggle = "Normal"
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
end

mouse.KeyDown:connect(function(key)

    if key == "x" then
		if Grab ~= true then
			Kick()
		elseif Grab == true then
			Throw()
		end
	end

end)
	
	
function AbsoluteBurn()
	if Grab == true then
		Grab = false
		stanceToggle = "Normal"
		local p = Instance.new("Part", Character)
				p.Anchored=true
				p.CanCollide=false
				p.Transparency=1
				p.Size=Vector3.new(.1,.1,.1)
				p.Shape = "Ball"
				p.BrickColor = BrickColor.new("Really black")
				p.CFrame = torso.CFrame * CFrame.new(-1.5, 0, -2)
				game.Debris:AddItem(p,3)
				local explosion = Instance.new("Sound", Character)
				explosion.Name="explosion"
				explosion.SoundId = "rbxassetid://2248511"
				explosion:Play()
				game.Debris:AddItem(explosion, 10)
				local forcefield = Instance.new("ForceField", char)
				local explo = Instance.new("Explosion", workspace)
				explo.BlastPressure = 700000
				explo.BlastRadius=5
				explo.Position=p.Position
				wait(0.01)
				forcefield:Destroy()
				
				for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()

 bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 10
            end
        end
	end
end	

mouse.KeyDown:connect(function(key)

    if key == "c" then
		if Grab ~= true then
			Kick()
		elseif Grab == true then
			AbsoluteBurn()
		end
	end

end)
	
	 print("The End Is Here")
	
function Drop()
	if Grab == true then
		Grab = false
		stanceToggle = "Normal"
		game:GetService("Chat"):Chat(Character.Head,"You're not even worth killing, weakling..",2)
		
				if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				
				end
			end
				end
				end
end


mouse.KeyDown:connect(function(key)

    if key == "v" then
		if Grab ~= true then
			Blast()
		elseif Grab == true then
			Drop()
		end
	end

end)







RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)

necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)










function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 






function Blast()
n=2
attack = true
game:GetService("Chat"):Chat(Character.Head,"You Will Know Pain...",2)
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Neck.C0 = clerp(Neck.C0,necko *angles(math.rad(-2),math.rad(-2),math.rad(30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=160772554",torso,1,0.6) 
so("http://roblox.com/asset/?id=161006069",torso,1,0.6) 
local charging=true
for _,c in pairs(workspace:children()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~="Vanta" then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("Really black"),"Laser",vt(0.2,0.2,0.2))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((larm.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(larm.Position,MouseLook.lookVector,99999999999,Character)
local mag=(larm.Position-pos).magnitude 
ef.CFrame=CFrame.new((larm.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(torso.Position,MouseLook.lookVector,999,Character)
local mag=(torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,hit,200,400,500,"Knockdown",root,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),50,50,50,60,60,60,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),50,50,50,70,70,70,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((larm.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=183763515",hit,1,1) 
so("http://roblox.com/asset/?id=183763512",hit,1,1)
local explosion = Instance.new("Sound", Character)
				explosion.Name="explosion"
				explosion.SoundId = "rbxassetid://165969964"
				explosion.Volume = 10
				explosion:Play()
end
end),Tors)
end
end
end
wait(1)
n=2
--[[for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end]]--
charging=false
wait(1)
n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end]]--
attack = false
end


function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form) 
part.Parent = parent 
part.formFactor = form 
part.CanCollide = collide 
part.Transparency = tran 
part.Reflectance = ref 
part.Size = Vector3.new(x,y,z) 
part.BrickColor = BrickColor.new(color) 
part.TopSurface = 0 
part.BottomSurface = 0 
part.Anchored = anchor 
part.Locked = true 
part:BreakJoints() 
end 

bg = Instance.new("BodyGyro",nil) 
bg.P = 2000 
bg.maxTorque = Vector3.new(0,math.huge,0) 
trail1 = Instance.new("Part") 
prop(trail1,nil,false,0.4,0,0.1,0.1,1,"Really red",true,"Custom") 
local t1 = Instance.new("SpecialMesh",trail1) 
t1.MeshType = "Brick" 
trail2 = Instance.new("Part") 
prop(trail2,nil,false,0.4,0,0.1,0.1,1,"Really red",true,"Custom") 
local t2 = Instance.new("SpecialMesh",trail2) 
t2.MeshType = "Brick" 
local fb = Instance.new("Part") 
prop(fb,nil,false,1,0,0.1,0.1,0.1,"Really red",true,"Custom")
t1p = Vector3.new(-0.3,0.3,-0.55) 
t2p = Vector3.new(0.3,0.3,-0.55) 
function getp(path) 
local objs = {} 
for _,v in pairs(path:children()) do 
if v:IsA("BasePart") then 
if v:GetMass() < 30 then 
table.insert(objs,v) 
end 
end 
for _,k in pairs(v:children()) do 
if k:IsA("BasePart") then 
if k:GetMass() < 30 then 
table.insert(objs,k) 
end 
end 
for _,o in pairs(k:children()) do 
if o:IsA("BasePart") then 
if o:GetMass() < 30 then 
table.insert(objs,o) 
end 
end 
end 
end 
end 
return objs 
end 

mouse.Button1Down:connect(function() 
hold = true 
bg.Parent = torso 
trail1.Parent = char 
trail2.Parent = char 
fb.Parent = char 
while hold do 
	l = Instance.new("Sound", char)
	l.Volume = 5
	l.Looped = false
	l.SoundId = "rbxassetid://228343271"
	l:Play()
local p1 = hed.CFrame * CFrame.new(t1p).p 
local p2 = hed.CFrame * CFrame.new(t2p).p 
local dist1 = (p1 - mouse.Hit.p).magnitude 
local dist2 = (p2 - mouse.Hit.p).magnitude 
bg.cframe = CFrame.new(torso.Position, mouse.Hit.p) 
trail1.CFrame = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1/2) 
trail2.CFrame = CFrame.new(p2,mouse.Hit.p) * CFrame.new(0,0,-dist2/2) 
t1.Scale = Vector3.new(1,1,dist1) 
t2.Scale = Vector3.new(1,1,dist2) 
local lol1 = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1) 
fb.CFrame = lol1 
local parts = getp(workspace) 
for _,v in pairs(parts) do 
if (v.Position - lol1.p).magnitude < 2 then 
if v:findFirstChild("LolFire") == nil then 
local f = Instance.new("Fire",v) 
f.Size = 0 
f.Heat = 5 
f.Color = Color3.new(0,0,0)
f.Name = "LolFire" 
coroutine.resume(coroutine.create(function() 
for i=0,10,0.2 do 
wait(0.1) 
f.Heat = i 
f.Size = i 
local lol = math.random(1,2) 
if lol == 1 then 
v.BrickColor = BrickColor.new("Really black") 
else 
v.BrickColor = BrickColor.new("Really black") 
end 
end 
v:remove() 
end)) 
end 
end 
end 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
l:Destroy()
hold = false 
bg.Parent = nil 
trail1.Parent = nil 
trail2.Parent = nil 
fb.Parent = nil 
end)  



function charge()
	if not enabled then
		local crown = Instance.new("Part", Character)
		crown.Size = Vector3.new(1,1,1)
		crown.CFrame = torso.CFrame  * CFrame.new(0,-3,0)
		crown.Anchored = true
		crown.CanCollide = false
		
		local crownm = Instance.new("SpecialMesh", crown)
		crownm.MeshType = "FileMesh"
		crownm.MeshId = "http://www.roblox.com/asset/?id=20329976"
		crownm.Scale = Vector3.new(4,0.9,4)
			crown.BrickColor = BrickColor.new("Really black")
		repeat
			for i = 1, 100 do
				
				crown.CFrame = crown.CFrame * CFrame.Angles(0,0.1,0)
				game:GetService("RunService").RenderStepped:wait()
				end
			wait()
		until enabled
		spawn(function()
			
			for i = 1,10 do
				crown.Transparency = crown.Transparency + 0.1				
				game:GetService("RunService").RenderStepped:wait()
			end
		end)
	end
end


















game:GetService("RunService").RenderStepped:connect(function()
if char.Humanoid.Jump == true then
jump = true
else
jump = false
end
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
if jump == true then
animpose = "Jumping" 
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
if Debounces.NoIdl == false then
if stanceToggle == "Normal" and holy ~= true then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
end
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/30),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20+2*math.cos(0/30))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-20), math.sin(0/60)/3, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(0/14))), 0.4)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" and holy ~= true then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
elseif stanceToggle == "Normal" and holy == true then
change = 0.8
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Melee" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif stanceToggle == "Melee" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5-0.06*math.cos(0/25), -.2) * CFrame.Angles(math.rad(0-20*math.cos(0/25)/2), math.sin(0/50)/2.4, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Grabbed" and holy ~= true then
grab = true
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),-.5)*CFrame.Angles(math.rad(130+4*math.cos(0/14)),math.rad(0),math.rad(-60+4*math.cos(0/14))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(0/14)),math.rad(70-4*math.cos(0/14)),0), 0.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
elseif stanceToggle == "Grabbed" and holy == true then
grab = true
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),-.5)*CFrame.Angles(math.rad(130+4*math.cos(0/14)),math.rad(0),math.rad(-60+4*math.cos(0/14))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(0/14)),math.rad(70-4*math.cos(0/14)),0), 0.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" and holy ~= true then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(0/8)/2.8)*CFrame.Angles(math.sin(0/8)/4, -math.sin(0/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Normal" and holy == true then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8+2*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8+2*math.cos(0/14)), 0, math.rad(8)), 0.4)
end
elseif stanceToggle == "Melee" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(0/4), math.sin(0/8)/4) * CFrame.Angles(-math.sin(0/8)/2.8, -math.sin(0/8)/3, math.rad(10+2*math.cos(0/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(0/4), -math.sin(0/8)/4)*CFrame.Angles(math.sin(0/8)/2.8, -math.sin(0/8)/3, math.rad(-10-2*math.cos(0/4))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Melee" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.2*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
elseif stanceToggle == "Grabbed" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Grabbed" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end
elseif animpose == "Running" then
if stanceToggle == "Normal" and holy ~= true then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(250),math.rad(350),math.rad(-30+2*math.cos(0/14))), 0.2)--cfawm
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
elseif stanceToggle == "Normal" and holy == true then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(0/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(0/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(0/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end

elseif animpose == "Jumping" then --JUMPING ANIM
	
if stanceToggle == "Normal" and holy ~= true then
change = 0.8
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy ~= true then
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy == true then
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Grabbed" and holy ~= true then
 		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
elseif stanceToggle == "Grabbed" and holy == true then
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end

elseif animpose == "Freefalling" then --FF ANIM
	
if stanceToggle == "Normal" and holy ~= true then
  change = 0.8
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
		end
elseif stanceToggle == "Normal" and holy == true then
change = 0.8
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy ~= true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy == true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Grabbed" and holy ~= true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
elseif stanceToggle == "Grabbed" and holy == true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
	end
end
end)

spawn(function() 
	while wait() do
		updateFly()
	end
end)

spawn(function() 
	while wait(4) do
		GroundWave()
	end
end)

spawn(function()
	while wait(.1) do
		Magik()	
	end
end)

spawn(function()
	while wait(.1) do
		Magik2()	
	end
end)

spawn(function()
	while wait(.1) do
		FDebris()	
	end
end)



function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} 
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "HitBox" and v.Name ~= "Thingy" then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
end

while wait(lightspeed) do 
			lightspeed = math.random(0.1,0.2)
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	
	Lightning(SPos1, SPos2, 4, 3, eColors[math.random(1,#eColors)], .2, .56) 
end