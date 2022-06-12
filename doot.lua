--[[Go down to line 336 to change frames g00ber]]--
wait(1/60)
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
mouse = Player:GetMouse()
RSH, LSH = nil, nil 
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 
 
RSH.Parent = nil 
LSH.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

music = Instance.new('Sound',Character)
music.SoundId="http://www.roblox.com/asset/?id=281580184"
music.Looped=true
music.Volume=1
music.Pitch=1
wait(0.01)
music:Play()

local co1 = 0--how long it will take for skill to cooldown
local co2 = 0
local co3 = 0
local co4 = 0

local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0

local maxEnergy = 100
local Energy = 100--Energy you start out with
local skill1stam = 0--how much Energy is needed for a skill
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recovermana = 3--how much mana per second

local skillcolorscheme = BrickColor.new("Green").Color

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.TextColor3 = Color3.new(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end
framesk1 = makeframe(scrn, .5, UDim2.new(.23, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, UDim2.new(.5, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, UDim2.new(.5, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, UDim2.new(.23, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[r] Energy Wave')
text2 = makelabel(framesk2, '[f] Energy Laser')
text3 = makelabel(framesk3, "[e] Energy Burst")
text4 = makelabel(framesk4, '[q] Energy Shots')
Energybar = makeframe(scrn, .5, UDim2.new(.23, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Really black").Color)
Energycover = makeframe(Energybar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Bright red").Color)
Energytext = makelabel(Energybar, 'Energy')
healthbar = makeframe(scrn, .5, UDim2.new(.5, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Really black").Color)
healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Bright red").Color)
healthtext = makelabel(healthbar, 'Health')

local stats=Instance.new('Folder',Character)
stats.Name='Stats'
local block=Instance.new('BoolValue',stats)
block.Name='Block'
block.Value=false
local stun=Instance.new('BoolValue',stats)
stun.Name='Stun'
stun.Value=false
local defense=Instance.new('NumberValue',stats)
defense.Name='Defence'
defense.Value=1
local speed=Instance.new('NumberValue',stats)
speed.Name='Speed'
speed.Value=1
local damagea=Instance.new('NumberValue',stats)
damagea.Name='Damage'
damagea.Value=1

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Dark stone grey")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
		
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = Sounds[id].Id or id
		swait() 
		sou:play() 
		swait(6) 
		sou:Remove() 
	end))
end
 
function clerp(a, b, t)
	return a:lerp(b, t)
end

--[[Credits to SazErenos for his Artificial ]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Asset = "http://www.roblox.com/asset/?id="

Sounds = {
	Hit1 = {
		Id = Asset..(199149137)
	},
	Hit2 = {
		Id = Asset..(199149186)
	},
	Hit3 = {
		Id = Asset..(199149221)
	},
	Hit4 = {
		Id = Asset..(199149235)
	},
	Slash1 = {
		Id = Asset..(161006195)
	},
	Slash2 = {
		Id = Asset..(161006212)
	},
	Fire = {
		Id = Asset..(168413145)
	},
	Beam = {
		Id = Asset..(278596476)
	},
	Appear = {
		Id = Asset..(200633077)
	},
	Disappear = {
		Id = Asset..(200633029)
	},
}
 
ContentProvider = game:GetService("ContentProvider")
for _, v in pairs(Sounds) do
	ContentProvider:Preload(v.Id)
end



Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
--                h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
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

Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Bright red", "Handle", Vector3.new(1.20000005, 0.200000003, 1.20000005))
Handleweld = weld(m, Character["Torso"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0396080017, -4.09992504, 0.0598115921, 1, -7.6153174e-011, -2.01268858e-006, 8.22890089e-011, 1, 3.084431e-006, 2.01269063e-006, -3.084431e-006, 1))
mesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.660000086, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.44000006, 0.200000003, 1.44000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.14984131e-005, 1.62124634e-005, -1.04904175e-005, 1, 1.23146328e-011, 1.07286201e-006, -1.13079598e-011, 1, -1.07284109e-006, -1.07285791e-006, 1.07284109e-006, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Layer2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Layer2Handle", Vector3.new(0.480000019, 0.200000003, 0.480001062))
Layer2Handleweld = weld(m, Handle, Layer2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000301361084, 2.28881836e-005, -0.000202178955, 1, 2.70082467e-007, -1.75730406e-006, -2.70091959e-007, 1, -8.66388018e-006, 1.7573052e-006, 8.66388655e-006, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(0.480000019, 0.200000003, 0.720000625))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.14984131e-005, -9.53674316e-007, -2.8800478, 0.999997914, -1.93837602e-011, -1.48245363e-008, 3.90257063e-011, 1, -7.13953341e-011, 1.48336312e-008, 8.91304808e-011, 0.999997914))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(0.480000019, 0.200000003, 0.720000625))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.19616699e-005, -3.24249268e-005, 2.87992668, 0.999985158, 2.87014509e-012, -1.48093022e-008, 5.66184322e-011, 1, -5.45696821e-012, 1.48470463e-008, 8.04902811e-011, 0.999985158))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.480000019, 0.200000003, 5.04000092))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-005, -9.53674316e-007, -0.0001039505, 0.999987781, -7.77617137e-011, -1.49125299e-008, 1.16872789e-010, 1, -1.96905603e-010, 1.493936e-008, 2.51930032e-010, 0.999987781))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
mesh("BlockMesh", Layer2Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Layer3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Bright red", "Layer3Handle", Vector3.new(0.720000029, 0.720000029, 0.200000003))
Layer3Handleweld = weld(m, Handle, Layer3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000802993774, -0.000151634216, 3.05175781e-005, 0.999999404, 4.16033836e-005, 1.96785777e-006, 1.96798396e-006, -2.12107511e-006, -0.999999404, -4.16014955e-005, 1, -2.12118243e-006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.840223312, 3.5397892, 4.89614176e-005, 5.0135186e-006, 0.999999762, -0.999999046, 1.22189522e-005, 4.8959475e-005, -1.22783813e-005, -0.999998689, 5.01443719e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000864028931, -6.00814819e-005, -3.59964466, -0.999999404, 9.70068322e-006, 3.31623378e-005, 3.31642768e-005, 4.86649742e-006, 1, 9.70056226e-006, 0.999999404, -4.86679755e-006))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.76565552e-005, -0.840137482, 3.54048443, -3.42451713e-005, -5.10578684e-006, -0.99999994, -0.999998927, -1.21146441e-005, 3.4243305e-005, -1.2144611e-005, 0.999998927, -5.10543578e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000713348389, -2.76565552e-005, -3.6005826, -0.999993503, -9.68569748e-006, 5.00400529e-005, -5.00420938e-005, -4.89724516e-006, -0.999999881, 9.62627109e-006, -0.999993503, 4.89690592e-006))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, -0.838525772, 3.54048347, 3.57801182e-005, 5.10578639e-006, 0.99999994, 0.999999046, 1.0341405e-005, -3.57782446e-005, -1.03266702e-005, 0.999998927, -5.10551126e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-006, -0.84022522, 3.53960228, -3.45465851e-005, -1.12046393e-006, -1, 5.82638359e-006, -0.999999225, 1.12023974e-006, -0.999999225, -5.82638404e-006, 3.45446933e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295e-006, -0.839550018, 3.53951263, 3.41143859e-005, 1.04596313e-006, 1, -6.24368704e-006, 0.999999225, -1.04572723e-006, -0.999999225, -6.24369022e-006, 3.41124942e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000238418579, -9.53674316e-006, -3.59959984, 6.28840098e-006, -0.999999225, 1.09042128e-006, -3.40994848e-005, -1.09065854e-006, -1, 0.999999225, 6.2884028e-006, -3.4097593e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Bright red", "Part", Vector3.new(0.480000019, 0.480000019, 0.200000003))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 3.81469727e-006, 0.999998808, 4.0078163e-011, 1.9098958e-009, 4.0078163e-011, 0.999998808, 2.42152964e-011, 1.9098958e-009, 2.42152964e-011, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(3.58200026, 3.58200002, 2.9532001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.00543213e-005, -0.838380814, 3.53930187, -4.74264707e-005, -5.02687499e-006, -0.999999762, 0.999999046, -1.03116026e-005, -4.74245317e-005, -1.0311428e-005, -0.999998808, 5.02768307e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(0.480000019, 0.480000019, 0.200000003))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.999998808, 4.0078163e-011, 1.9098958e-009, 4.0078163e-011, 0.999998808, 2.42152964e-011, 1.9098958e-009, 2.42152964e-011, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(3.60000014, 3.60000014, 3.60000014))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.839694977, 3.53992653, -3.91442991e-005, -8.80631774e-007, -0.999993026, 2.27987925e-006, 0.999991357, -8.80696462e-007, 0.999997556, -2.29477519e-006, -3.92767397e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000235557556, -2.38418579e-005, -3.60028458, 1.50501114e-006, -0.999997199, 8.35720812e-007, 3.47488422e-005, 8.35786693e-007, 1, -0.999997199, -1.50502308e-006, 3.47468304e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-005, -0.840080261, 3.54010582, 3.91591857e-005, 8.0613512e-007, 0.999993026, -2.25008012e-006, -0.999991, 8.06197477e-007, 0.999997556, -2.29477519e-006, -3.92916445e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
HitboxA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxA", Vector3.new(0.200000003, 2.48000002, 0.840000391))
HitboxAweld = weld(m, Layer3Handle, HitboxA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.67572021e-006, -0.039557457, 3.53951645, 3.44422551e-005, 1.04596529e-006, 1, -5.90090622e-006, 0.999999225, -1.04573905e-006, -0.999999225, -5.90090895e-006, 3.44403634e-005))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxB", Vector3.new(0.200000003, 2.48000026, 0.840000391))
HitboxBweld = weld(m, Layer3Handle, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.0402240753, 3.5397892, 4.89614176e-005, 5.0135186e-006, 0.999999762, -0.999999046, 1.22189522e-005, 4.8959475e-005, -1.22783813e-005, -0.999998689, 5.01443719e-006))
HitboxC = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxC", Vector3.new(0.200000003, 2.28000021, 0.840000391))
HitboxCweld = weld(m, Layer3Handle, HitboxC, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.76565552e-005, 0.0598621368, 3.54048443, -3.42451713e-005, -5.10578684e-006, -0.99999994, -0.999998927, -1.21146441e-005, 3.4243305e-005, -1.2144611e-005, 0.999998927, -5.10543578e-006))
mesh("SpecialMesh", HitboxC, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
HitboxD = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "HitboxD", Vector3.new(0.200000003, 2.28000021, 0.840000391))
HitboxDweld = weld(m, Layer3Handle, HitboxD, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-005, 0.0599050522, 3.54010582, 3.91591857e-005, 8.0613512e-007, 0.999993026, -2.25008012e-006, -0.999991, 8.06197477e-007, 0.999997556, -2.29477519e-006, -3.92916445e-005))
mesh("SpecialMesh", HitboxD, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
mesh("SpecialMesh", Layer3Handle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(6, 6, -1.21799994))
---------------- UNIT 1 ---------------
--[[Hanble=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","Hanble",Vector3.new(0.337252527, 0.768720508, 0.32947734))
Hanbleweld=weld(m,Character["Right Arm"],Hanble,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0155067444, -0.0201148987, -0.9514575, -0.999991775, -2.63234701e-009, -1.78467189e-007, 1.78460596e-007, 2.09074528e-006, -0.999991238, 2.62754263e-009, -0.999994516, -2.09073869e-006))
mesh("CylinderMesh",Hanble,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FaekHanble=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","FaekHanble",Vector3.new(0.337252527, 1.56872046, 0.32947734))
FaekHanbleweld=weld(m,Hanble,FaekHanble,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -4.29153442e-006, 0, 0.999983549, 6.4943606e-012, 5.18505681e-012, 6.4943606e-012, 0.999982476, -1.40971679e-011, 5.18505681e-012, -1.40971679e-011, 0.999989271))
mesh("CylinderMesh",FaekHanble,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","Hitbox",Vector3.new(0.200000003, 5.39620876, 1.2275759))
Hitboxweld=weld(m,FaekHanble,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -5.05733967, -0.142923594, 0.999983549, -1.6889453e-007, 1.7490478e-009, 1.6890759e-007, 0.999982476, 2.06239793e-006, -1.73901538e-009, -2.06241202e-006, 0.999989271))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00333404541, -1.87818408, 0.392029285, 0.999983549, 7.22864968e-009, 1.85786952e-009, -7.21585991e-009, 0.999982476, 6.21967047e-008, -1.8474865e-009, -6.22242169e-008, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00294876099, -1.48618293, 0.234626532, 0.999991775, -6.92084313e-007, -2.79759416e-008, 6.92091135e-007, 0.999991238, 7.76650154e-007, 2.79805104e-008, -7.76661409e-007, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 1.09810448, 1.09825778))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111503601, -7.12914991, 0.0778756142, -0.999983549, -2.38366567e-007, 2.78984214e-008, -2.38353792e-007, 0.999982476, 3.42407702e-006, -2.79094472e-008, 3.4240818e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, 2.26996613, -0.235239744, 0.999983549, 2.27345004e-006, 1.85357618e-009, 2.27343958e-006, -0.999982476, -6.19256753e-008, 1.8430536e-009, 6.19534148e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328826904, -3.05379343, 0.31357193, 0.999983549, 1.6775989e-006, 1.85146709e-009, -1.67758776e-006, 0.999982476, 2.10900225e-007, -1.84073135e-009, -2.10926942e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00361633301, 1.17272615, 0.234902143, -0.999991775, 6.90090019e-007, -6.17988789e-008, -6.9009667e-007, -0.999991238, -1.92284324e-006, -6.17948501e-008, -1.92285052e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111312866, -7.05103445, 7.20024109e-005, -0.999983549, -2.38989003e-007, 2.78912751e-008, -2.38976213e-007, 0.999982476, 3.42408703e-006, -2.79023027e-008, 3.4240918e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00328445435, 1.48618865, -0.234995365, 0.999991775, -2.43565705e-006, -2.79671699e-008, -2.43566478e-006, -0.999991238, -7.7722143e-007, -2.79703816e-008, 7.77232799e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00323486328, -3.9158895, 0.313471079, 0.999983549, 1.67746589e-006, 1.82123372e-009, -1.67745475e-006, 0.999982476, 1.36385779e-007, -1.81062387e-009, -1.36413064e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.627488196, 0.627575815))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111541748, -6.26727676, -0.1569736, -0.999983549, -3.74028872e-007, 2.82691719e-008, -3.74016338e-007, 0.999982476, 3.40171596e-006, -2.82806525e-008, 3.40172096e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325393677, -3.05376291, 0.548654556, 0.999983549, 1.67670032e-006, 1.8507289e-009, -1.67668918e-006, 0.999982476, 1.36589279e-007, -1.84011772e-009, -1.36616563e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.784308136, 0.313744128, 0.941363871))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.956581, -0.0034866333, -0.000377416611, 1.69885118e-006, -0.999982476, -1.4619045e-006, 0.999983549, 1.69886266e-006, -2.81736988e-007, 2.81748243e-007, -1.46192224e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.470616162, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00340270996, -1.32952571, -0.00091958046, 0.999983549, 4.48989113e-009, 2.0147255e-009, -4.47700188e-009, 0.999982476, -1.22017809e-008, -2.00434291e-009, 1.21735866e-008, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00347137451, 1.32950616, 0.391701937, -0.999983549, 6.79197456e-007, -1.06258824e-007, -6.79210928e-007, -0.999982476, -3.40140218e-006, -1.06250148e-007, -3.40140718e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00343322754, -1.01590419, -0.000721693039, 0.999983549, 4.89370677e-009, 1.84525295e-009, -4.88081753e-009, 0.999982476, -1.18052412e-008, -1.83487137e-009, 1.17770469e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 2.19620872, 0.627575874))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0112304688, -4.85725212, 0.157074451, 0.999983549, -1.68901025e-007, 1.74386283e-009, 1.68913999e-007, 0.999982476, 2.06241202e-006, -1.73382975e-009, -2.06242612e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332641602, -1.64292932, -0.234835863, -0.999983549, 2.48220749e-006, 4.28772786e-008, 2.48222295e-006, 0.999982476, 6.20761966e-008, -4.28872511e-008, 6.21039362e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232204, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00337600708, 1.87816811, 0.548668146, -0.999983549, -2.09514951e-006, -1.85223048e-009, 2.09513905e-006, -0.999982476, -2.10844746e-007, -1.84140636e-009, -2.10871463e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.64295578, -0.23536098, 0.999983549, 2.14052807e-006, 1.87920302e-009, -2.14051738e-006, 0.999982476, 5.53466975e-007, -1.86763671e-009, -5.53491191e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00329971313, -1.48625445, 0.235539556, -0.999983549, -3.5400555e-007, 5.77611949e-008, -3.53992959e-007, 0.999982476, 2.07279913e-006, -5.77719668e-008, 2.07281323e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00325775146, 1.17274141, 0.235400319, 0.999991775, 3.53981562e-007, 3.20967608e-008, 3.53975338e-007, -0.999991238, -7.16821546e-007, 3.20912328e-008, 7.16833028e-007, -0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00327682495, 2.27002025, -0.235158801, -0.999983549, -2.09821178e-006, -1.85486226e-009, 2.09820132e-006, -0.999982476, -1.5516689e-006, -1.84122417e-009, -1.55168641e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 1.48624778, -0.235339522, -0.999983549, -2.09700579e-006, -1.86469373e-009, 2.09699533e-006, -0.999982476, -6.16596481e-008, -1.85418236e-009, -6.16873876e-008, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0033531189, -3.05378008, -0.313676715, 0.999983549, 8.44146427e-007, 1.8454156e-009, -8.44134604e-007, 0.999982476, 2.10693088e-007, -1.83485604e-009, -2.10719804e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00336456299, 1.32966352, 0.392354488, 0.999983549, 3.56601788e-007, 3.22670211e-008, 3.56589339e-007, -0.999982476, -7.14656721e-007, 3.22562066e-008, 7.14680027e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.941232145, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00327682495, -1.8780818, -0.392092228, 0.999983549, 9.54754853e-009, 1.8608165e-009, -9.53465928e-009, 0.999982476, 1.36152494e-007, -1.85043292e-009, -1.36179779e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Crimson","Part",Vector3.new(0.200000003, 4.23554564, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111465454, -4.46461868, 0.547372937, -0.999983549, -2.37446756e-007, 2.68987197e-008, -2.3743398e-007, 0.999982476, 3.41447935e-006, -2.69097491e-008, 3.41448458e-006, -0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.235292464, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723266, 0.941232204, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00229263306, 1.8784852, 0.548132777, 0.999983549, 2.28433578e-006, 3.46592e-009, 2.28432555e-006, -0.999982476, 2.3989287e-008, 3.45558382e-009, -2.39610927e-008, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.41184843, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00328826904, -3.0538249, 0.548416853, -0.999983549, -8.45527893e-007, 5.79000847e-008, -8.45516013e-007, 0.999982476, 1.37719553e-007, -5.79102348e-008, 1.37746611e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95695913, 0.153850555, -1.88350677e-005, 1.23580949e-005, -0.999982476, -1.38665314e-006, 0.999983549, 1.2358094e-005, -2.81483551e-007, 2.81509386e-007, -1.38666815e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.235308081, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00342178345, -1.44685268, 0.0933318138, 0.999983549, 1.82964754e-009, 2.57953658e-008, -4.97580288e-009, 0.992382348, 0.123054668, -2.53653418e-008, -0.123053834, 0.992389202))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723266, 0.313744128, 0.313787907))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10088038, -0.00387954712, -0.00030374527, 1.23383988e-005, -0.999991357, -1.24204348e-006, 0.999991775, 1.24278058e-005, -2.83419212e-007, 2.81970102e-007, -1.24124654e-006, 0.999985576))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.627575815))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00345993042, -1.32954931, -0.000645399094, 0.999991775, 2.2931772e-009, 2.83644663e-009, -2.2867539e-009, 0.999991238, -1.22554411e-008, -2.83125301e-009, 1.22415713e-008, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00319671631, 2.58385658, 0.0784084797, -0.999983549, 6.99771647e-007, 7.69456392e-008, -6.99785573e-007, -0.999982476, -3.46686784e-006, 7.69531425e-008, -3.46687284e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00309753418, -1.17580795, 0.201576114, 0.999983549, 1.03144799e-008, 2.49791832e-008, -1.32968978e-008, 0.992377877, 0.123090871, -2.35107542e-008, -0.123090021, 0.992384672))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00310897827, -0.922920227, 0.72364223, 0.999983549, -3.27961232e-008, 1.13043491e-007, -4.19647534e-008, 0.797841132, 0.602842987, -1.09962386e-007, -0.602838814, 0.797846437))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, -3.52438259, 0.0782864094, -0.999983549, -4.52814959e-008, -7.21113196e-008, -4.52688766e-008, 0.999982476, 3.46685874e-006, 7.2100363e-008, 3.46686375e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0030670166, -1.21008945, 0.436469018, 0.999983549, -7.87800047e-009, 7.14481416e-008, -1.95312992e-008, 0.926698804, 0.375760943, -6.91671644e-008, -0.375758439, 0.926705182))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00332260132, 3.52438259, -0.0782866478, -0.999983549, 5.2095578e-007, 7.69454971e-008, -5.20969479e-007, -0.999982476, -3.46686829e-006, 7.69536186e-008, -3.4668733e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0.19999998807907,"Crimson","Part",Vector3.new(0.627446532, 0.313744128, 0.627575874))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95644081, -0.158653259, -0.000337839127, 1.23528962e-005, -0.999991238, -1.08801851e-006, 0.999991775, 1.23528962e-005, -2.81498615e-007, 2.81516435e-007, -1.08802521e-006, 0.999994636))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -2.58385968, -0.0783866644, 0.999983549, -6.99774148e-007, 7.21093087e-008, 6.99787847e-007, 0.999982476, 7.14558269e-007, -7.20990059e-008, -7.14581574e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.627446532, 0.329431295, 0.627575874))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.95731616, -0.00356674194, 0.00155854225, 1.22981037e-005, -0.999982476, -1.7120442e-006, 0.999983549, 1.22981037e-005, -2.85729953e-007, 2.85759711e-007, -1.71205704e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.345118493, 0.627575874))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.9573344, -0.003490448, 0.0015707016, 1.22974561e-005, -0.999982476, -1.71209012e-006, 0.999983549, 1.22974561e-005, -2.85813286e-007, 2.85843043e-007, -1.71210297e-006, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.800047338, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00285720825, -3.05447507, 0.000669717789, 0.999983549, 1.73040848e-006, 2.60311284e-009, -1.73039746e-006, 0.999982476, 1.80006055e-007, -2.59241517e-009, -1.80033112e-007, 0.999989271))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.941232324, 0.941363752))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0108108521, 6.11060905, 7.2479248e-005, -0.999983549, 6.4022845e-007, -3.17583897e-008, -6.40241865e-007, -0.999982476, -3.42378917e-006, -3.17500231e-008, -3.42379394e-006, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940942, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.176496148, -1.3961606, 0.999983549, -1.503454e-007, -1.90790331e-007, -1.70862734e-007, 0.122963123, -0.992400408, 1.72679222e-007, 0.992393613, 0.122963957))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00324249268, -3.67959356, -5.48362732e-006, 0.999983549, 1.69034786e-006, 2.03576245e-009, -1.69033672e-006, 0.999982476, 2.0355435e-007, -2.02503547e-009, -2.03581067e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331115723, -3.52438235, 0.0784561634, 0.999983549, -5.20962203e-007, 7.21101898e-008, 5.20975618e-007, 0.999982476, 7.14548946e-007, -7.20997591e-008, -7.14572252e-007, 0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.19620848, 0.313787997))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110740662, -4.85657263, -0.313279152, 0.999983549, -1.6248255e-007, 1.81624948e-009, 1.62495525e-007, 0.999982476, 2.05884567e-006, -1.80620241e-009, -2.05885976e-006, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.784308136, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.313744068, 0.313787907))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00326156616, -3.91583991, 0.313654423, -0.999983549, 2.0143832e-006, -1.41037759e-008, 2.01439821e-006, 0.999982476, 4.01588659e-006, 1.41014143e-008, 4.0158875e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, 2.58385968, 0.0783869028, 0.999983549, 1.6445658e-007, -7.69413688e-008, 1.64443989e-007, -0.999982476, -7.14557359e-007, -7.6951423e-008, 7.14580665e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00368881226, 1.02208138, -0.00058555603, 0.999983549, 4.91098717e-009, 1.74820658e-009, -4.89809793e-009, 0.999982476, -1.15255716e-008, -1.73782599e-009, 1.14973773e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.32940945, 0.321587712, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00288772583, -1.40384197, -0.126018524, 0.999983549, 2.47798795e-008, -2.45310847e-008, -2.79200663e-008, 0.990392208, -0.138160869, 2.08841122e-008, 0.138159946, 0.990399003))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.235340953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0032043457, -2.58385634, -0.0784084797, -0.999983549, -3.43271722e-007, 3.70975002e-008, -3.43259103e-007, 0.999982476, 3.46686329e-006, -3.71088511e-008, 3.46686829e-006, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.313723296, 0.200000003, 0.200000003))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331497192, 3.52438259, -0.0784561634, 0.999983549, 3.43275076e-007, 3.22715437e-008, 3.43262627e-007, -0.999982476, -7.14547809e-007, 3.22607399e-008, 7.14571115e-007, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 0.784469783))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 0.200000003, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00267028809, -2.42355728, 0.000181913376, 0.999983549, 1.71436341e-006, 2.42547382e-009, -1.71435227e-006, 0.999982476, 1.89215598e-007, -2.41476439e-009, -1.89242428e-007, 0.999989271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.78436023, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.313723296, 1.88246465, 0.313787937))
Partweld=weld(m,FaekHanble,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00357818604, 0.00305700302, -0.000618696213, 0.999983549, 5.45213652e-009, 1.758099e-009, -5.43924727e-009, 0.999982476, -1.18889147e-008, -1.74771797e-009, 1.18607204e-008, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1)) ]]
----------------- UNIT 1 ---------------------
----------------- UNIT 2 ---------------------
BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BackHandle",Vector3.new(0.400000095, 0.400000036, 0.200000003))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270080566, -0.400000572, -0.995346785, 0.999995828, 9.57450538e-007, 9.07493813e-005, -8.38253868e-007, 0.999996424, 1.28402306e-007, -9.07492722e-005, -1.28478149e-007, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-005, -1.47819519e-005, 0.299961567, 0.999977112, 5.98281886e-008, 7.15263013e-007, 5.95732566e-008, 0.999999404, -1.0673773e-010, 1.5279511e-010, 1.35713663e-011, 0.999977708))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.43322754e-005, -1.29999566, -0.19994545, 0.999962568, 3.36675754e-007, 7.15328497e-007, 3.36268641e-007, -1.00000596, -1.72142322e-007, -7.15474016e-007, 1.72335845e-007, -0.999966145))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399995804, 0.299943924, 0.999962568, -5.95748411e-008, -1.5279511e-010, 5.99647478e-008, 1.00000596, -1.35571554e-011, 1.43096258e-006, -1.72875048e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299932957, -0.800000668, 0.699989319, -2.20599759e-006, 8.24195183e-008, -0.999966145, 2.50814537e-007, -1.00000596, -8.22300166e-008, -0.999962568, -2.51218012e-007, 7.751878e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399985313, -5.38825989e-005, 0.800014496, 4.46675614e-007, -1.0000031, -9.53122026e-011, 1.25138467e-006, -1.92912353e-010, 0.999983191, -0.999981284, -4.46891306e-007, 4.16730472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400000334, -4.8160553e-005, 0.799980164, -1.19698299e-007, -1.00000596, -8.56203997e-011, 1.75560126e-006, -2.72109446e-010, 0.999966145, -0.999962568, 1.19311267e-007, 3.24791472e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000083, 0.599999964))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000152587891, 0.900003672, 0.199926376, 0.999962568, -5.98762355e-008, -7.15517672e-007, 6.02658901e-008, 1.00000596, 1.25339739e-010, 2.14632746e-006, -3.11786152e-010, 0.999966145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000066, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299934387, -0.800001144, 0.699932098, 2.14639294e-006, -2.43232989e-010, 0.999966145, -6.0108313e-008, -1.00000596, -5.67865754e-011, 0.999962568, -5.97186656e-008, -7.15583155e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.399998188, -5.57899475e-005, 0.999962449, -5.97711889e-008, -7.15554052e-007, 6.01608363e-008, 1.00000596, 7.9623419e-011, 2.14636384e-006, -2.66084044e-010, 0.999966025))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399990797, -4.00543213e-005, 0.799942017, 5.96139245e-008, 1.00000596, -1.47792889e-010, 1.26962186e-005, -3.92930133e-011, 0.999966145, 0.999962568, -5.92242273e-008, -1.12654307e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.400000036, 0.399999976))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.400005579, 0.299938679, 0.999981284, 5.93643037e-008, -8.36495019e-007, -5.91571911e-008, 1.0000031, 1.1671375e-010, 1.67113467e-006, -2.14456009e-010, 0.999983191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399995089, -4.43458557e-005, 0.79996109, -3.87580286e-007, 1.00000024, -6.71747102e-011, 1.24300786e-005, 6.27267127e-011, 1.00000024, 1, 3.87599812e-007, -1.21916382e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000036, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.399989605, -5.76972961e-005, 1, 7.44680392e-007, -1.49234256e-006, -7.44660611e-007, 1.00000024, 1.8306423e-010, 1.73078297e-006, -1.91121785e-010, 1.00000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -0.401464701, -0.012863636, 0.999999881, 5.91680802e-008, -1.55193993e-006, -5.91485332e-008, 1.00000024, 2.09965378e-010, 1.79038034e-006, -2.19046115e-010, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999881, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19376637e-007, 8.96704933e-012, 1.00000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.398539066, -0.0128684044, 0.999999762, -5.956732e-008, 1.19071046e-007, 5.95868315e-008, 1.00000024, -1.81472615e-011, 1.19369361e-007, 8.96704933e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, -0.401463985, -0.0128593445, 1, 5.91109917e-008, -1.67275721e-006, -5.90914624e-008, 1.00000024, 2.37989184e-010, 1.91119761e-006, -2.4706992e-010, 1.00000024))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.300000012, 1.10000002))

WingConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","WingConnectorA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorAweld=weld(m,BackHandle,WingConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.760124207, -0.500091553, 2.59146118, -0.70701617, -8.76535466e-007, 0.707190692, 2.30480083e-007, 0.999996424, 1.35069615e-006, -0.707191586, 1.03366017e-006, -0.707015276))
mesh("SpecialMesh",WingConnectorA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","WingHandleA",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleAweld=weld(m,WingConnectorA,WingHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.36985016e-005, 7.62939453e-006, 0.999981105, -9.80367076e-009, 1.01327896e-006, 1.8345645e-008, 0.999986887, 2.1032065e-011, -1.34110451e-006, 9.24046617e-010, 0.999976635))
mesh("SpecialMesh",WingHandleA,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00260162354, 1.39987755, 0.397865295, -0.999964237, -2.82797487e-007, -7.74860382e-007, -2.68114036e-007, 0.999991536, -3.07588664e-007, 1.43051147e-006, -3.09293114e-007, -0.999956012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00754928589, -3.2998507, 0.200576782, 0.999981046, -0.000345696521, 1.01327896e-006, -0.000345703098, -0.999986887, 7.34406058e-007, 1.34110451e-006, -7.35720846e-007, -0.999976635))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00755310059, -3.29984474, -0.000576019287, -0.999973834, 0.00034581509, -9.53674316e-007, -0.000345820386, -0.999988914, 8.78280844e-007, -1.43051147e-006, 8.79830168e-007, 0.999967694))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0071105957, -2.19989014, 0.39232254, 0.999964118, -0.000341437757, 7.4505806e-007, -0.000341443112, -0.999991536, 4.55009285e-007, 1.51991844e-006, -4.56985958e-007, -0.999955952))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.397834778, 1.79987717, -0.0046081543, 1.1920929e-006, 8.05591753e-008, -0.999955893, -9.59476438e-007, 0.999991536, 8.22495849e-008, 0.999964118, 9.74177965e-007, 5.06639481e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102138519, 1.39986181, -0.0054397583, 1.25169754e-006, 8.53931397e-008, -0.999958754, -9.66183052e-007, 0.99999094, 8.68290044e-008, 0.999966741, 9.78532171e-007, 5.96046448e-007))

WingConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Crimson","WingConnectorB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingConnectorBweld=weld(m,BackHandle,WingConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.784416199, -0.499978304, 2.59280396, -0.707191348, -3.90662137e-007, -0.707015634, 2.66780262e-007, 0.999996424, -7.00154715e-007, 0.707016468, -5.99482121e-007, -0.707190454))
mesh("SpecialMesh",WingConnectorB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","WingHandleB",Vector3.new(0.200000003, 0.200000003, 0.200000003))
WingHandleBweld=weld(m,WingConnectorB,WingHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0180549622, 0.000362634659, -0.00287246704, 1.00000024, 2.62332378e-009, -0.000288337469, -2.63818833e-009, 1.00000048, -1.41619694e-009, 0.000288575888, 1.4564705e-009, 1.00000012))
mesh("SpecialMesh",WingHandleB,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000033))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00733184814, -3.29872251, -0.000240325928, -1.00000024, 0.000345554465, 5.09619713e-006, -0.000345554959, -0.999998748, 8.77771527e-007, 6.97374344e-006, 8.76055537e-007, 1.00000679))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 1.20000005, 0.200000018))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00751495361, -3.30146718, 0.200904846, 1.00000048, -0.000345482345, 0.000583082438, -0.00034548252, -1.00000083, 5.31843398e-007, 0.000582695007, -7.33383786e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00564956665, 1.40153003, 0.398208618, -1.0000006, -1.52919711e-007, -0.000701099634, -1.52856074e-007, 0.999992073, -2.92751594e-007, 0.000700622797, -2.9275219e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101585388, -2.2015543, 0.392654419, 1.00000048, -0.000341564562, 0.000701278448, -0.000341564592, -1.00000072, 2.00845534e-007, 0.000700861216, -4.40466266e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.400000036, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102455139, 1.40156364, -0.00542831421, 0.000591039658, 8.87212934e-008, -1, -1.1955226e-006, 1.00000083, 8.81201458e-008, 1.0000006, 1.19532979e-006, 0.000591367483))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Crimson","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=weld(m,WingHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.398174286, 1.80155635, -0.00764846802, 0.000699937344, 9.82820438e-008, -1.00000012, -8.54601353e-007, 1.00000155, 9.79221255e-008, 1.00000155, 8.54139444e-007, 0.000700563192))

WingConnector2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","WingConnector2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Aweld=weld(m,BackHandle,WingConnector2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35351944, -8.82148743e-006, 0.777774811, 0.70710361, 2.35763025e-007, 0.707103252, -1.815758e-007, 0.999996424, -3.26344036e-008, -0.707104087, -1.89611058e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","WingHandle2A",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Aweld=weld(m,WingConnector2A,WingHandle2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -3.09944153e-006, -3.05175781e-005, 1.00000012, 2.13349054e-008, 2.56299973e-006, -2.13311964e-008, 1.00000012, -2.10869437e-008, -2.50339508e-006, 2.10766586e-008, 1))
mesh("CylinderMesh",WingHandle2A,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00458908081, -0.799812317, -1.43754196, -0.000118851662, 2.60861555e-007, -1, 8.83513394e-007, 1.00000012, 2.60746447e-007, 1, -8.8347872e-007, -0.000118762255))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43828201, 1.49969769, -0.00198364258, 0.999976516, -1.20581092e-006, -0.000126719475, 1.20483628e-006, 0.999987006, -3.7582123e-007, 0.000127106905, 3.84210125e-007, 0.999981046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.732719421, -0.000127077103, -0.011013031, 0.999976635, -2.55695795e-007, -4.47034836e-007, 2.54775983e-007, 0.999986887, 1.28024396e-007, 7.74860382e-007, -1.19475757e-007, 0.999981165))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.6384964, 0.599924326, -0.00668716431, 0.999953151, -1.2063831e-006, -0.000126421452, 1.20447589e-006, 0.999973774, -3.58210656e-007, 0.000127106905, 3.75161164e-007, 0.999962151))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00381469727, -0.499895573, -1.43782806, 0.00011792779, -5.21332424e-007, 0.999962091, -1.20606751e-006, -0.999973774, -5.3828353e-007, 0.999953151, -1.20786547e-006, -0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.738220215, 1.99993312, -0.00198364258, 0.999976635, -1.20194647e-006, -0.000127375126, 1.20097798e-006, 0.999977708, -4.28671427e-007, 0.000127702951, 4.37083344e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03820801, 1.79991686, -0.00200271606, 0.999976635, -1.20224877e-006, -0.000126779079, 1.20128084e-006, 0.999977708, -4.25658016e-007, 0.000127106905, 4.34070643e-007, 0.999981105))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03817749, 0.899925232, -0.00204849243, 0.999953151, -1.20194807e-006, -0.000124722719, 1.20003529e-006, 0.999973774, -4.1127916e-007, 0.000125437975, 4.2823288e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0112571716, -0.699848175, 0.935894012, -0.00011792779, -1.25010138e-006, -0.999962091, -8.60096748e-007, -0.999973774, 1.23308939e-006, -0.999953151, 8.62096385e-007, 0.000117242336))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269317627, -2.09995699, 1.03822327, -0.000118494034, 0.000339705701, -0.999980986, -2.36835331e-006, -0.999977708, -0.000339717168, -0.999976635, 2.32894104e-006, 0.000118196011))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00271606445, 0.89996767, -0.738178253, -0.000116944313, 0.000342214655, -0.999962091, 2.2733293e-006, 0.999973774, 0.000342227548, 0.999953151, -2.23520124e-006, -0.00011625886))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116539001, -0.699934483, -0.537151337, 2.5331974e-006, -5.20983683e-008, 0.999962151, -4.94033145e-007, -0.999973774, -6.91953517e-008, 0.999953151, -4.95877543e-007, -1.84774399e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83622742, 1.50203705e-005, -0.00223922729, 0.999953151, -1.20720688e-006, -0.000126361847, 1.20529853e-006, 0.999973774, -3.67991873e-007, 0.000127017498, 3.84942496e-007, 0.999962091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0066986084, -0.599959373, 1.93844223, -0.00011870265, 5.45789703e-007, -0.999962091, -1.48036668e-006, -0.999982953, -5.62686523e-007, -0.999953151, 1.48218601e-006, 0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00186538696, 0.699984789, 1.63819122, 0.000117570162, 0.000343447289, 0.999962151, 1.81229552e-007, 0.999973774, -0.000343426189, -0.999953151, 2.2344058e-007, 0.000116944313))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00183486938, -1.99997032, 1.6382103, -0.000119000673, -0.0003434307, -0.999961793, -6.70683221e-007, -0.999992132, 0.000343403255, -0.999953032, 7.13414749e-007, 0.000118345022))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00689315796, -0.799924135, 1.8359642, 0.00011947751, -5.85247506e-007, 0.999980927, 1.29695411e-006, 1.00000536, 5.93606615e-007, -0.999976516, 1.29784451e-006, 0.000119119883))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000377655029, -0.600088358, 1.94027328, -0.000118345022, 5.42628982e-007, -0.999961436, -1.47416779e-006, -1.00001073, -5.59483738e-007, -0.999953032, 1.4760343e-006, 0.000117659569))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83838654, -0.0998883247, -0.00664901733, 0.999953032, -1.2058166e-006, -0.000126332045, 1.20385414e-006, 1.00001073, -3.57192391e-007, 0.0001270473, 3.74113938e-007, 0.999961436))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00269699097, -3.1999507, 0.738132477, -0.000118583441, 0.000339725055, -0.999980748, -2.36830965e-006, -0.999996185, -0.000339730119, -0.999976516, 2.32889761e-006, 0.000118285418))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.136451721, -3.79085541e-005, 0.00166320801, 0.999943495, -2.43060981e-007, -1.16229057e-006, 2.41201008e-007, 1.00001097, -9.43163485e-008, 1.84774399e-006, 1.11379194e-007, 0.999952197))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13814926, 1.29996634, -0.00199890137, 0.999976516, -1.20260449e-006, -0.000127136707, 1.20160905e-006, 0.999996185, -4.24037722e-007, 0.000127434731, 4.32436423e-007, 0.999980748))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0111846924, -0.400034666, 1.23585892, -0.000119328499, -1.28770091e-006, -0.999980807, -8.9875391e-007, -1.00000536, 1.27924841e-006, -0.999976397, 8.99856275e-007, 0.000119000673))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23489761, -0.199841738, -0.0108909607, 0.999953032, -1.23361633e-006, -0.000125616789, 1.2316226e-006, 1.00001073, -5.93518166e-007, 0.000126242638, 6.10448865e-007, 0.999961495))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00266265869, -1.99999452, -1.23814011, 0.000118851662, -0.000342111831, 0.999980748, -1.78501068e-006, -0.999996185, -0.000342116982, 0.999976516, -1.74523427e-006, -0.000118523836))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00266647339, 0.700069189, -1.23814774, -0.000118345022, 0.000342116429, -0.999980628, 2.27200508e-006, 1.00000536, 0.000342116284, 0.999976456, -2.23251186e-006, -0.000118017197))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2A,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43771744, -0.199832916, -0.00438690186, 0.999953032, -1.21251264e-006, -0.000125616789, 1.21055359e-006, 1.00001073, -3.29055638e-007, 0.000126242638, 3.45975934e-007, 0.999961495))

WingConnector2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","WingConnector2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingConnector2Bweld=weld(m,BackHandle,WingConnector2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.353546143, -1.02519989e-005, 0.77778244, 0.70710355, 2.76879433e-007, -0.707103431, -2.52642138e-007, 0.999996424, 1.9715614e-008, 0.707104325, 2.48997594e-007, 0.707102716))
mesh("CylinderMesh",WingConnector2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
WingHandle2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","WingHandle2B",Vector3.new(0.399999976, 0.400000036, 0.399999976))
WingHandle2Bweld=weld(m,WingConnector2B,WingHandle2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -1.00135803e-005, 1.14440918e-005, 1, -1.95296565e-007, -1.23381615e-005, 1.95308559e-007, 1.00000012, 1.4882113e-007, 1.22785568e-005, -1.48819879e-007, 1.00000024))
mesh("CylinderMesh",WingHandle2B,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057144165, -3.20001864, 0.739765167, -6.97374344e-006, 0.00033977133, 1.00000012, 3.41693521e-007, -1.00000012, 0.000339771359, 1, 3.44076113e-007, 6.85453415e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00654602051, 0.700015306, 1.63977051, 7.68899918e-006, 0.000343456777, -1.00000024, 1.75846799e-006, 1.00000036, 0.00034345669, 1, -1.76109734e-006, 7.4505806e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.00000048, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.739772797, 1.99997914, 0.00642776489, -1, 7.83247856e-007, -5.78165054e-006, 7.83254677e-007, 1.00000072, 4.01889906e-007, 6.10947609e-006, 4.01940554e-007, -1.00000048))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00572967529, 0.700017214, -1.23976517, -7.4505806e-006, 0.000342165935, 1.00000072, -2.45941919e-007, 1.00000095, -0.000342165877, -1, -2.48526703e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00574493408, -2.00001717, -1.23976517, 7.09295273e-006, -0.000342123793, -1.00000072, -2.43031536e-007, -1.00000095, 0.000342123734, -1, 2.40580533e-007, -6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.60000002, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00656890869, -2.00001454, 1.63977051, -7.09295273e-006, -0.000343398249, 1.00000072, -1.2695964e-006, -1.00000095, -0.000343398133, 1, -1.27200531e-006, 6.7949295e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.600000381, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13976669, 1.29998469, 0.0064239502, -1, 7.81620258e-007, -5.75184822e-006, 7.81646975e-007, 1.00000095, 3.88622823e-007, 6.10947609e-006, 3.88666422e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.200000376, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03976822, 0.899980307, 0.0064125061, -1, 7.82491384e-007, -5.75184822e-006, 7.82518043e-007, 1.00000095, 3.9576264e-007, 6.10947609e-006, 3.95806239e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00278091431, -0.699974537, 0.937519073, -7.06315041e-006, -1.23697805e-006, 1.00000072, -1.12531188e-006, -1.00000095, -1.23693724e-006, 1, -1.12529187e-006, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057182312, -2.10001993, 1.0397644, -7.06315041e-006, 0.000339750521, 1.00000072, 3.41358827e-007, -1.00000095, 0.000339750462, 1, 3.43769329e-007, 6.70552254e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 2.60000038, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43976593, 1.49998724, 0.00643157959, -1, 7.81133508e-007, -5.75184822e-006, 7.81160281e-007, 1.00000095, 3.77194482e-007, 6.10947609e-006, 3.77238052e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000393, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0397644, 1.799981, 0.00640869141, -1, 7.82864788e-007, -5.75184822e-006, 7.82891391e-007, 1.00000095, 3.98813171e-007, 6.10947609e-006, 3.98856685e-007, -1.0000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00316619873, -0.699970961, -0.541133881, 6.46710396e-006, 7.11757536e-007, -1.00000072, -5.82138682e-007, -1.00000095, -7.11712801e-007, -1, 5.82114012e-007, -6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0057258606, 0.900016785, -0.739753723, -7.4505806e-006, 0.000342250947, 1.00000072, -2.47193384e-007, 1.00000095, -0.000342250918, -1, -2.49782829e-007, -7.15255737e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 1.00000012, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84001541, -0.100023985, 0.00176620483, -1, 7.83643713e-007, -5.51342964e-006, 7.83670544e-007, 1.00000095, 3.81563382e-007, 5.87105751e-006, 3.81607123e-007, -1.00000072))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00459289551, -0.499979734, -1.4393959, 7.89761543e-006, -5.65608218e-007, -1.00000179, -7.77587161e-007, -1.00000262, 5.6575351e-007, -1.00000012, 7.77515424e-007, -6.88433647e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000033, 0.400000155, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.64005661, 0.599978924, 0.00173950195, -1, 7.80917503e-007, -5.51342964e-006, 7.80982475e-007, 1.00000262, 3.64202009e-007, 6.49690628e-006, 3.64349034e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.2366333, -0.200026751, -0.00246047974, -1, 7.56787927e-007, -5.75184822e-006, 7.56851023e-007, 1.00000262, 6.28874716e-007, 6.82473183e-006, 6.29021883e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 1.20000005, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.736637115, -2.5510788e-005, -0.00245285034, -1, 7.98881445e-007, -5.75184822e-006, 7.98944541e-007, 1.00000262, 6.19298987e-007, 6.82473183e-006, 6.19445927e-007, -1.00000191))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00276947021, -0.3999753, 1.23746872, -7.12275505e-006, -1.24613757e-006, 1.0000031, -1.08483562e-006, -1.00000429, -1.24588792e-006, 1.00000012, -1.08474001e-006, 5.453825e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.400000036, 0.399999976))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.135440826, -2.5510788e-005, 0.00338745117, 1.00000012, -7.98921292e-007, 5.453825e-006, 7.9902253e-007, 1.00000429, 6.19273123e-007, -7.12275505e-006, -6.19523803e-007, 1.0000031))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610000014, 0.800000131, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.83781815, -1.74045563e-005, 0.00619506836, -1, 7.80351115e-007, -5.7220459e-006, 7.80415974e-007, 1.00000262, 3.64990427e-007, 6.70552254e-006, 3.65137282e-007, -1.00000179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00638580322, -0.79997921, -1.43897247, 0.000111579895, -6.41668478e-008, 1.00000048, 1.08743711e-006, 1.00000083, 6.39935536e-008, -1.00000012, 1.08741108e-006, 0.000111877918))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00640487671, -0.599977732, 1.94189835, -7.36117363e-006, 5.59386876e-007, 1.00000191, -5.1072891e-007, -1.00000262, 5.59534215e-007, 1, -5.10656719e-007, 6.34789467e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00386810303, -0.79993391, 1.83702469, -0.00010445714, -2.80817233e-007, -1.0000006, 6.70409918e-007, 1.00000083, -2.80938991e-007, 1, -6.70420036e-007, -0.000104755163))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000036, 0.400000006))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00172424316, -0.599978447, 1.94002914, -7.09295273e-006, 5.7002211e-007, 1.00000191, -5.03831359e-007, -1.00000262, 5.70169391e-007, 1, -5.03759338e-007, 6.10947609e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.800000072, 0.599999964))
Partweld=weld(m,WingHandle2B,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.4394722, -0.200026512, 0.00402832031, -1, 7.7835881e-007, -5.7220459e-006, 7.78423669e-007, 1.00000262, 3.64728379e-007, 6.70552254e-006, 3.64875291e-007, -1.00000179))
----------------- UNIT 2 ---------------------

local Lite = Create("PointLight"){
	Parent = Handle,
	Color = BrickColor.new("Green").Color,
	Shadows = true,
	Range = 20,
	Brightness = 0.5,
}

local Spin = Create("Sound"){
Parent = Handle,
SoundId = "rbxassetid://143301643",
Volume = 1,
Pitch = 1,
Looped = true,
}

local Spin2 = Create("Sound"){
Parent = Handle,
SoundId = "rbxassetid://149560784",
Volume = .7,
Pitch = .8,
Looped = true,
}

Spin:Play()

Spin2:Play()

local PE1 = Create("ParticleEmitter"){
Parent = Layer3Handle,
Color = ColorSequence.new(BrickColor.new("Bright red").Color),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new(0.2),
Texture = "rbxassetid://263433152",
Lifetime = NumberRange.new(1),
Rate = 20,
VelocitySpread = 180,
Rotation = NumberRange.new(100),
Speed = NumberRange.new(3),
LightEmission = 1,
}

function Reappear()
	for _, i in pairs(m:children()) do
		if i.Name == "Layer3Handle" then
			Part.Transparency = 1
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 0.5
			end), i)
		end
	end
end

function Disappear()
	for _, i in pairs(m:children()) do
		if i.Name == "Layer3Handle" then
			Part.Transparency = .5
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 1
			end), i)
		end
	end
end

function attackone()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
	end) 
	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(120), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(5, -4, -7) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash1", Handle, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-2, -4, -8) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end

function attacktwo()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
	end) 
	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.5) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-85), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash2", Handle, 1, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-85), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, .5, -8) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end

function attackthree()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
	end) 
	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.8, -.5) * angles(math.rad(120), math.rad(0), math.rad(-30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-140), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-10, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash1", Handle, 1, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(50)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(140), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -5, -10) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end

local hovering = false

local Hover = false

local Animator = Humanoid.Animator

function OnHover()
	so("Appear",Handle,1,1)
	attack = true
	Animator.Parent = nil
	Character.Animate.Disabled = true
	Hover = true
	Humanoid.JumpPower = 0
	Reappear()
	attack = false
end

function OffHover()
	so("Disappear",Handle,1,1)
	attack = true
	Animator.Parent = Humanoid
	Character.Animate.Disabled = false
	Hover = false
	Humanoid.JumpPower = 50
	Disappear()
	attack = false
end

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1)
end
end
end
end
end

function CylinderEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
end

RocketTarget = RootPart
function ShootCannon(asd)
local MainPos=asd.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
CylinderEffect(BrickColor.new("Teal"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Green"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,5,30,50,1,"Normal")
game:GetService("Debris"):AddItem(ref,5) 
end
until num<=0
end))
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, 0.05 do
			wait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function BlockEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function FireProjectiles()
attack = true
so("Appear",Handle,1,1)
Reappear()
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-30), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Humanoid.WalkSpeed = 0
for i = 1,8 do
ShootCannon(Handle)
BlockEffect(BrickColor.new("Green"),Handle.CFrame,.5,.5,.5,.9,.9,.9,0.05)
so("Beam",Handle,1,1.5)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(30)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(-30)), 0.5)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,1)
Humanoid.WalkSpeed = 16
attack = false
end

function EnergyBurst()
attack = true
so("Appear",Handle,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(130), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(10, -4, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Reappear()
so("Slash1", Handle, 1, 1.2)
for i = 1,2 do
for i = 0,1,0.1 do
swait()
BlockEffect(BrickColor.new("Teal"),Handle.CFrame,.5,.5,.5,.9,.9,.9,0.05)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(15, -4, -7) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,1)
so("Fire", Handle, 1, 1.2)
so("Fire", Handle, 1, .8)
MagniDamage(Handle,Handle,30,30,50,1,"Knockdown")
BlastEffect(BrickColor.new("Green"), Handle.CFrame, .1, .1, .1, 1, 1, 1)
for i = 1,5 do
BlockEffect(BrickColor.new("Green"),Handle.CFrame,1,1,1,5,5,5,0.05)
end
attack = false
end

function WaveEffect(Part,cframe1,cframe2,Damage,Size)
coroutine.resume(coroutine.create(function() 
local wave=part(1,workspace,"Neon",0,0,BrickColor.new("Green"),"Effect",vt(3,3,10))
wave.Anchored=true 
wave.CFrame=Part.CFrame*cframe1
so("Beam",wave,1,1.3)
MagniDamage(wave,wave,10,10,30,1,"Normal")
local Msh = Create("SpecialMesh"){
Parent = wave,
MeshType = "Sphere"
}
BlockEffect(BrickColor.new("Green"),wave.CFrame,1,1,1,3,3,3,0.05)
local PE1 = Create("ParticleEmitter"){
Parent = wave,
Color = ColorSequence.new(BrickColor.new("Green").Color),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new(1),
Texture = "rbxassetid://249270319",
Lifetime = NumberRange.new(1),
Rate = 50,
VelocitySpread = 180,
Rotation = NumberRange.new(0),
Speed = NumberRange.new(5),
LightEmission = 1,
}
for i=0,1,0.2 do
wait()
local dir = wave.CFrame.lookVector*-1
local pos = rayCast(wave.Position,dir,5,Character)
wave.CFrame=wave.CFrame*cframe2
Effects[#Effects+1]={wave,"Cylinder",0.01,.03,.03,.03}
end
end))
end

function Wave()
attack = true
Reappear()
so("Appear",Handle,1,.8)
for i = 1,3 do
for i = 0, 1, 0.1 do
	swait()
	BlockEffect(BrickColor.new("Green"),Handle.CFrame,.1,.1,.1,1,1,1,0.05)
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
	RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
	Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
	Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
end
end
so("Slash2",Handle,1,.4)
local inc=-10
for i=1,8 do
WaveEffect(Torso,CFrame.new(0,-5,inc)*CFrame.fromEulerAnglesXYZ(-2,0,1.57),CFrame.new(0,0,0.8),10,5)
inc=inc-7
end
for i = 1,2 do
for i = 0, 1, 0.1 do
	swait()
	BlockEffect(BrickColor.new("Green"),Handle.CFrame,.1,.1,.1,1,1,1,0.05)
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), .5)
	RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -.5) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.5)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), 0.5)
	RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, .5, -10) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
	Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,.8)
attack = false
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"Neon",0,0.5,BrickColor.new("Green"),"Effect",vt(5,5,5))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"Neon",0,1,BrickColor.new("Really black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Green"),cf(pos),5,5,5,5,5,5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(efprt,efprt,40,50,130,20,1)
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Green"),Part.CFrame,1,mag*5,1,5,5,5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function SuperLaser()
attack = true
so("Appear",Handle,1,0.5)
Humanoid.WalkSpeed = 5
Reappear()
for i = 0,1,0.01 do
swait()
BlockEffect(BrickColor.new("Green"),Handle.CFrame,.1,.1,.1,1,1,1,0.05)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(50)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(-50)), 0.5)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Humanoid.WalkSpeed = 0
LaserBarrage(Handle,Character)
so("Beam",Handle,1,0.8)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(85), math.rad(0), math.rad(0)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(85), math.rad(0), math.rad(0)), 0.2)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.2)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.2)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.2)
end
Disappear()
so("Disappear",Handle,1,.7)
Humanoid.WalkSpeed = 16
attack = false
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CanCollide = false
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

mouse.Button1Down:connect(function()
	if attack == false and Hover == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and Hover == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and Hover == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)

function subtractEnergy(k)
	if Energy>=k then
		Energy=Energy-k
	end
end

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == ' ' and Anim == "Jump" and Hover == false then
		hovering = true
		OnHover()
	elseif attack == false and k == ' ' and Hover == true then
		hovering = false
		OffHover()
	elseif attack == false and k == 'q' and Hover == false and cooldown1 >= co1 and Energy>=skill1stam then
		subtractEnergy(skill1stam)
		cooldown1=0
	    FireProjectiles()
	elseif attack == false and k == 'e' and Hover == false and cooldown2 >= co2 and Energy>=skill2stam then
		subtractEnergy(skill2stam)
		cooldown2=0
	    EnergyBurst()
	elseif attack == false and k == 'r' and Hover == false and cooldown3 >= co3 and Energy>=skill3stam then
		subtractEnergy(skill3stam)
		cooldown3=0
	    Wave()
	elseif attack == false and k == 'f' and Hover == false and cooldown4 >= co4 and Energy>=skill4stam then
		subtractEnergy(skill4stam)
		cooldown4=0
	    SuperLaser()
	end
end)

function updateskills()
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 1 / 30
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 1 / 30
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 1 / 30
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 1 / 30
	end
	if Energy<=skill1stam then
	bar4.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar4.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill2stam then
	bar3.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar3.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill3stam then
		bar1.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar1.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill4stam then
		bar2.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar2.BackgroundColor3=skillcolorscheme
	end
	if Energy <= maxEnergy then
		Energy = Energy + recovermana / 30
	end
end

local sine = 0
local change = 1
local val = 0
local idle = 0
local donum = 0
local donum2 = 0

while true do
	swait()
	updateskills()
	healthcover:TweenSize(UDim2.new(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
	Energycover:TweenSize(UDim2.new(1 * (Energy / maxEnergy), 0, 1, 0), 'Out', 'Quad', .5)
	bar4:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	sine = sine + change
	torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if donum2 >= .5 then
			handidle = true
		elseif donum2 <= 0 then
			handidle = false
		end
		if handidle == false then
			donum2 = donum2 + 0.003
		else
			donum2 = donum2 - 0.003
		end
		donum = donum + 0.003
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.8, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -.9, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			elseif attack == false and Hover == true then
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
			if attack == false and Hover == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.8, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.5, -.3) * angles(math.rad(70), math.rad(0), math.rad(70)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			elseif attack == false and Hover == true then
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5+0.2*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10+3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false and Hover == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40) * math.cos(sine / 7), math.rad(0), math.rad(5)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40) * math.cos(sine / 7), math.rad(0), math.rad(-5)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(20), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
			elseif attack == false and Hover == true then
				change = 1
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5+0.2*math.cos(sine/15)) * angles(math.rad(30+3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-15-3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.45, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.45, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .008, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .009, math.rad(0)), 0.3)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * cf(0, .5, 0)
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end