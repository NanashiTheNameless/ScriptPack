:ls --MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: Go to line 8 and put your name where it says "jayjay2011"


Plrs = game:GetService("Players")



me = Plrs.luxulux

char = me.Character



Modelname = "xWep"

Toolname = "Drage"

Able = true

Selected = false

Deb = true

Hurt = false

CritMultiplier = 1.6

ComboOn = false

AbleToBreak = false

CounterKey = false

Attack = 1

AddDamage = 0

AddDamageX = 1

AddShield = 0

Dmgs = {Smash = {"Smash", 25, 2, 3, false}, Slash = {"Slash", 18, 1, 3, false}, SideSlash = {"SideSlash", 18, 1, 3, false},

DoubleSlash = {"Double Slash", 20, 1, 2, false}, Spin = {"Spin Slash", 30, 2, 5, true, 30}, Boom = {"Boom", 60, 6, 6, true, 50, 16},

RageMode = {"RAGE", 8, 1.35, 1, 50}, Counter = {"Counter", 25, 1, 1, true, 15}, RageSlash = {"Rage Slash", 40, 3, 7, true, 30}}

RageMode = false

Mode = Dmgs.Slash

AbleAll = true

necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

Aim = false



LineColor = "White"

EffectColor3 = "Bright red"

EffectColor2 = "White"

EffectColor = "Pastel Blue"

MainColor = "Navy blue"

BladeColor = "Pastel Blue"



BlockBars = {}



MaxRage = 100

Rage = MaxRage



CritChance = 5 --Percent



for _, v in pairs(char:children()) do

	if v.Name == "Block" then v:remove() end

end



BlockRealPowa = 4



Block = Instance.new("BoolValue")

Block.Name = "Block"

Block.Value = false

BlockPower = Instance.new("IntValue")

BlockPower.Name = "BlockPower"

BlockPower.Value = BlockRealPowa

BlockPower.Parent = Block

Block.Parent = char



CA = CFrame.Angles

CN = CFrame.new

MR = math.rad

MP = math.pi

MD = math.deg

MH = math.huge

MRA = math.random



EffPos = CFrame.new(0, 0.5, 0)



Sounds = {

	Equip = {"rbxasset://sounds//unsheath.wav", 0.7, 0.6},

	Hit = {"http://www.roblox.com/asset/?id=2801263", 0.9, 0.6},

	Block = {"", 1, 0.5},

	Slash = {"rbxasset://sounds//swordslash.wav", 2, 0.8},

	SmashHit = {"rbxasset://sounds\\metal.ogg", 1.5, 0.8},

	Jump = {"rbxasset://sounds/swoosh.wav", 1, 1},

	Boom = {"http://www.roblox.com/asset?id=1369158", 1.2, 1},

	SmashBoom = {"http://www.roblox.com/asset/?id=2760979", 0.25, 1},

	Jump2 = {"http://www.roblox.com/asset/?id=2101148", 2, 1},

	GoRage = {"http://www.roblox.com/asset/?id=2767090", 1, 1},

	Shout = {"http://www.roblox.com/asset/?id=2676305", 1.1, 0.8},

	RageOff = {"http://www.roblox.com/asset/?id=3264793", 1.6, 0.6},

}



Add = {

	Sphere = function(P)

		local m = Instance.new("SpecialMesh",P)

		m.MeshType = "Sphere"

		return m

	end,

	BP = function(P)

		local bp = Instance.new("BodyPosition",P)

		bp.maxForce = Vector3.new(MH, MH, MH)

		bp.P = 14000

		return bp

	end,

	BG = function(P)

		local bg = Instance.new("BodyGyro",P)

		bg.maxTorque = Vector3.new(MH, MH, MH)

		bg.P = 14000

		return bg

	end,

	Mesh = function(P, ID, x, y, z)

		local m = Instance.new("SpecialMesh")

		m.MeshId = ID

		m.Scale = Vector3.new(x, y, z)

		m.Parent = P

		return m

	end,

	Head = function(P)

		local s = Instance.new("SpecialMesh")

		s.MeshType = "Head"

		s.Parent = P

		return s

	end,

	Sound = function(P, ID, vol, pitch)

		local s = Instance.new("Sound")

		s.SoundId = ID

		s.Volume = vol

		s.Pitch = pitch

		s.Parent = P

		return s

	end

}



function RC(Pos, Dir, Max, Ignore)

	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)

end



function RayC(Start, En, MaxDist, Ignore)

	return RC(Start, (En - Start), MaxDist, Ignore)

end



function Notime(func, tim)

	coroutine.resume(coroutine.create(function()

		if tim then

			wait(tim)

		end

		func()

	end))

end



function waitChild(parent, name)

	local child = parent:findFirstChild(name)

	if child then return child end

	while true do

		child = parent.ChildAdded:wait()

		if child.Name == name then return child end

	end

end



function ComputePos(pos1, pos2)

	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)

	return CFrame.new(pos1, pos3)

end



function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)

	local p = Instance.new("Part")

	p.formFactor = "Custom"

	p.Anchored = Anchor

	p.CanCollide = Collide

	p.Transparency = Tran

	p.Reflectance = Ref

	p.BrickColor = BrickColor.new(Color)

	p.TopSurface = 0

	p.BottomSurface = 0

	p.Size = Vector3.new(X, Y, Z)

	if Break then

		p:BreakJoints()

	else p:MakeJoints() end

	p.Parent = Parent

	p.Locked = true

	return p

end



function Weld(p0, p1, x, y, z, a, b, c)

	local w = Instance.new("Weld")

	w.Parent = p0

	w.Part0 = p0

	w.Part1 = p1

	w.C1 = CN(x,y,z) * CA(a,b,c)

	return w

end



torso = char.Torso

neck = torso.Neck

hum = char.Humanoid

Rarm = char["Right Arm"]

Larm = char["Left Arm"]

Rleg = char["Right Leg"]

Lleg = char["Left Leg"]



hc = Instance.new("Humanoid")

hc.Health = 0

hc.MaxHealth = 0



function getHumanoid(c)

	local h = nil

	for i,v in pairs(c:children()) do

		if v:IsA("Humanoid") and c ~= char then

			if v.Health > 0 then

				h = v

			end

		end

	end

	return h

end



function getCharacters(where, pos, dist)

	local chars = {}

	for _, v in pairs(where:children()) do

		local hum = getHumanoid(v)

		local tors = v:findFirstChild("Torso")

		if tors ~= nil and hum ~= nil then

			local anypart = nil

			for _,k in pairs(v:children()) do

				if k:IsA("BasePart") then

					if (k.Position - pos).magnitude <= dist then

						anypart = k

						break

					end

				end

			end

			if anypart then

				table.insert(chars, {v, tors, hum})

			end

		end

	end

	return chars

end



function PlaySound(id, pitch, vol)

	local s = Add.Sound(nil, id, vol, pitch)

	if pitch ~= nil then

		if tonumber(pitch) then

			s.Pitch = tonumber(pitch)

		end

	end

	if vol ~= nil then

		if tonumber(vol) then

			s.Volume = tonumber(vol)

		end

	end

	s.Parent = torso

	s.PlayOnRemove = true

	Notime(function()

		wait()

		s:remove()

	end)

end



function playz(sound)

	PlaySound(sound[1], sound[2], sound[3])

end



PlrGui = waitChild(me, "PlayerGui")



for _, v in pairs(char:children()) do if v.Name == Modelname then v:remove() end end 

for _, v in pairs(PlrGui:children()) do

	if v.Name == "HealthGUI" or v.Name == "MyGui" then

		v:remove()

	end

end



function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)

	obj.Size = size

	obj.Position = position

	obj.BackgroundColor3 = bgcolor

	obj.BorderColor3 = bordercolor

	obj.BackgroundTransparency = transparency

	if obj:IsA("TextLabel") or obj:IsA("TextButton") then

		obj.Text = text

		obj.TextColor3 = textcolor

	end

	if obj:IsA("ImageButton") or obj:IsA("TextButton") then

		obj.AutoButtonColor = auto

		obj.MouseButton1Down:connect(function()

			RemoveOptions()

		end)

	end

	obj.Parent = parent

end



C3 = Color3.new

UD = UDim2.new



Sc = Instance.new("ScreenGui", PlrGui)

Sc.Name = "MyGui"



Fr = Instance.new("Frame")

EditGui(Fr, Sc, UD(0, 60, 0, 250), UD(1, -70, 0.5, -125), C3(0.1, 0.2, 0.5), C3(), 0)



HealthBack = Instance.new("Frame")

EditGui(HealthBack, Fr, UD(0, 25, 1, -20), UD(0, 3, 0, 10), C3(0.2, 0, 0), C3(), 0)



RageBack = Instance.new("Frame")

EditGui(RageBack, Fr, UD(0, 25, 1, -20), UD(1, -27, 0, 10), C3(0.2, 0, 0), C3(), 0)



local hp = hum.Health/hum.MaxHealth

if hp > 1 then hp = 1 elseif hp < 0 then hp = 0 end



HealthBar = Instance.new("ImageLabel")

EditGui(HealthBar, HealthBack, UD(1, 0, hp, 0), UD(0, 0, 0, 0), C3(0.1, 0.65, 0), C3(), 0)

HealthBar.Image = "http://www.roblox.com/asset/?id=50051953"



RageBar = Instance.new("ImageLabel")

EditGui(RageBar, RageBack, UD(1, 0, Rage/MaxRage, 0), UD(0, 0, 0, 0), C3(1, 0.6, 0.15), C3(), 0)

RageBar.Image = "http://www.roblox.com/asset/?id=50051953"



RageAmount = Instance.new("TextLabel")

EditGui(RageAmount, RageBack, UD(1, 0, 0, 0), UD(0, 0, 0, 0), C3(1, 0.6, 0.15), C3(), 0, Rage, C3(1,1,1))

RageAmount.TextYAlignment = "Top"



AimButton = Instance.new("TextButton")

EditGui(AimButton, Fr, UD(1, 0, 0, 35), UD(0, 0, 1, 0), C3(0.9, 0.2, 0.3), C3(), 0, "AIM: OFF", C3(), true)

AimButton.TextWrap = true

AimButton.Font = "ArialBold"

AimButton.FontSize = "Size14"

AimButton.MouseButton1Down:connect(function()

	if Aim then

		Aim = false

		AimButton.Text = "AIM: OFF"

		AimButton.BackgroundColor3 = C3(0.9, 0.2, 0.3)

	else

		Aim = true

		AimButton.Text = "AIM: ON"

		AimButton.BackgroundColor3 = C3(0.3, 0.85, 0.1)

	end

end)



for i = 1, BlockRealPowa do

	local gui = Instance.new("ImageLabel")

	EditGui(gui, Fr, UD(0, 16, 0, 16), UD(0, -18, 0.5, 20*(i-1)-((BlockRealPowa*20)/2)), C3(), C3(), 1)

	gui.Image = "http://www.roblox.com/asset/?id=48908046"

	table.insert(BlockBars, gui)

end



BlockPower.Changed:connect(function()

	for _, v in pairs(BlockBars) do

		v.Image = ""

	end

	for i = 1, BlockPower.Value do

		local gui = BlockBars[i]

		if gui then

			gui.Image = "http://www.roblox.com/asset/?id=48908046"

		end

	end

end)



Mo = Instance.new("Model")

Mo.Name = Modelname



RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)



RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)

LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)

RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)

LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)



RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)

LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)

RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)

LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)



HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

HBW = Weld(Rarm, HB, 0, 0, 1, MP/2, 0, 0)

HW = Weld(HB, nil, 0, 0, 0, 0, 0, 0)



SW = Weld(Larm, nil, -0.5, 0, 0.3, MP/2, 0, 0)



TH = Weld(torso, nil, 0, 2.5, 0, MR(145), 0, 0)

TH.C0 = CN(0, -0.3, 0.75) * CA(0, MP/2, 0)



Weapon = Instance.new("Model")

Weapon.Name = "Weapon"



Handle = Part(Weapon, false, false, 0, 0, MainColor, 0.4, 1.8, 0.4)

Add.Head(Handle)



Tip1 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.45, 1.2, 0.45)

Add.Head(Tip1)

Weld(Handle, Tip1, 0, 0, 0, 0, 0, 0)



Tip2 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.5, 0.5, 0.5)

Weld(Handle, Tip2, 0, 0.9, 0, 0, 0, 0)

Add.Mesh(Tip2, "http://www.roblox.com/asset/?id=9756362", 0.75, 0.5, 0.75)



Tip3 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.7, 0.3, 1.2)

Weld(Handle, Tip3, 0, -0.9, 0, 0, 0, 0)

Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=9756362", 0.7, 0.35, 1.35)



Tip4 = Part(Weapon, false, false, 0, 0, "Deep blue", 0.6, 0.2, 1.8)

Weld(Handle, Tip4, 0, -0.9, 0, 0, 0, 0)



Tip5 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.6, 0.6, 0.3)

Weld(Tip4, Tip5, 0, -0.4, -0.85, MR(-15), 0, 0)



Tip6 = Part(Weapon, false, false, 0, 0, "Bright blue", 0.6, 0.6, 0.3)

Weld(Tip4, Tip6, 0, -0.4, 0.85, MR(15), 0, 0)



Blades = {}



for i = 0, 180, 180 do

	for x = -20, 20, 40 do

		local lol = i-90

		local lol2 = math.abs(lol/480)

		local lol3 = x/90

		local Blade1 = Part(Weapon, false, false, 0, 0.3, BladeColor, 0.2, 3.5, 0.6)

		Instance.new("BlockMesh",Blade1).Scale = Vector3.new(0.2, 1, 0.99)

		local w = Weld(Tip4, Blade1, lol2, 0, -lol3, 0, 0, 0)

		w.C0 = CN(0, 1.7, 0) * CA(0, MR(i+x), 0)

		table.insert(Blades, Blade1)

	end

end



Tip7 = Part(Weapon, false, false, 0, 0.3, BladeColor, 0.3, 1.3, 0.7)

Add.Mesh(Tip7, "http://www.roblox.com/asset/?id=9756362", 0.31, 1.4, 0.8)

Weld(Tip4, Tip7, 0, -3.45, 0, 0, 0, 0)



table.insert(Blades, Tip7)



TH.Part1 = Handle



Shield = Instance.new("Model")

Shield.Name = "Shield"



SHandle = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.9, 0.4)

SW.Part1 = SHandle



for i = 65, 115, 25 do

	local STip1 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.5, 0.4)

	local w = Weld(SHandle, STip1, 0.8, 0, 0, 0, 0, 0)

	w.C0 = CN(-0.5, 0.2, 0) * CA(0, 0, MR(i))

end



for i = -65, -115, -25 do

	local STip1 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.5, 0.4)

	local w = Weld(SHandle, STip1, 0.8, 0, 0, 0, 0, 0)

	w.C0 = CN(-0.5, -0.2, 0) * CA(0, 0, MR(i))

end



SHandle2 = Part(Weapon, false, false, 0, 0, "Really black", 0.2, 0.9, 0.4)

Weld(SHandle, SHandle2, 1, 0, 0, 0, 0, 0)



ShieldMain = Part(Weapon, false, false, 0, 0, "Medium grey", 0.3, 3.5, 1.1)

ShieldW = Weld(SHandle2, ShieldMain, 0, 0, 0, 0, 0, 0)

ShieldW.C0 = CN(0, -0.2, 0) * CA(0, MR(-5), 0)



STip1 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

Weld(ShieldMain, STip1, 0, -1.75, 0, 0, 0, 0)



STip2 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

Weld(ShieldMain, STip2, 0, 1.75, 0, 0, 0, 0)



for i = -15, 15, 30 do

	local ShieldPlate = Part(Weapon, false, false, 0, 0, "Medium grey", 0.3, 3.5, 1.1)

	local w = Weld(ShieldMain, ShieldPlate, 3.5, 0, 0, 0, 0, 0)

	w.C0 = CN(3.5, 0, 0) * CA(0, math.rad(i), 0)

	for x = -1.75, 1.75, 1.75*2 do

		local STip3 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 0.4, 1.15)

		Weld(ShieldPlate, STip3, 0, x, 0, 0, 0, 0)

	end

	local i2 = i/40

	local STip3 = Part(Weapon, false, false, 0, 0, "Navy blue", 0.35, 3.9, 0.4)

	Weld(ShieldPlate, STip3, 0, 0, -i2, 0, 0, 0)

end



Weapon.Parent = Mo

Shield.Parent = Mo



Mo.Parent = char



function ShowDamage(Dmg, Par, Crit, block)

	local Pos = Par.CFrame * CN(0, 2.5, 0)

	local M = Instance.new("Model")

	local Loldmg = Dmg

	if Loldmg < 0 then

		Loldmg = 0

	end

	if tostring(Loldmg):sub(1,1) == "-" then

		Loldmg = tostring(Loldmg):sub(2)

	end

	M.Name = Loldmg

	local Col = "Bright red"

	if Crit then Col = "Bright yellow" elseif block then Col = "Bright blue" end

	local P = Part(M, false, false, 0, 0, Col, 0.8, 0.3, 0.8, true)

	P.CFrame = CN(Par.Position)

	P.Name = "Head"

	local BP = Add.BP(P)

	BP.position = Pos.p

	BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	BP.P = 11000

	Add.BG(P)

	local H = hc:clone()

	H.Parent = M

	H.MaxHealth = 0

	H.Health = 0

	M.Parent = workspace

	Notime(function()

		wait(1.5)

		M:remove()

	end)

end



function Damage(P, Hum, dmg, crit, block)

	if Hum then

		if Hum.Health > 0 then

			local Damg = dmg

			if crit then

				Damg = dmg*CritMultiplier

			end

			Damg = math.ceil(((Damg+AddDamage)*AddDamageX)-0.5)

			Hum.Health = Hum.Health - Damg

			ShowDamage(Damg, P, crit, block)

		end

	end

end



function ShieldDamage(mode, blockval, blockpowerval, crit)

	if blockval and blockpowerval then

		local ShieldDmg = mode[3]+AddShield

		if crit then

			ShieldDmg = mode[4]+AddShield

		end

		if blockpowerval then

			blockpowerval.Value = blockpowerval.Value - ShieldDmg

			if blockpowerval.Value < 1 then

				blockval.Value = false

			end

		end

	end

end



function getBlock(c)

	local block, blockpow = nil

	local blockin = false

	for _,v in pairs(c:children()) do

		if v.Name == "Block" and v:IsA("BoolValue") then

			block = v

			blockin = v.Value

			local bp = v:findFirstChild("BlockPower")

			if bp then

				blockpow = bp

			end

		end

	end

	return block, blockpow, blockin

end



function TouchDamage(hit)

	local Hum = getHumanoid(hit.Parent)

	if Hum and Deb and Hurt then

		Deb = false

		local Crit = false

		local BlockVal, BlockPowaVal, Blawk = getBlock(Hum.Parent)

		local BlockPowa = 0

		local blocksound = Sounds.SmashHit

		if math.random(1,100/CritChance) == 1 then

			Crit = true

		end

		local Damg = math.random(Mode[2]/3, Mode[2])

		if Blawk then

			Damg = 0

			ShieldDamage(Mode, BlockVal, BlockPowaVal, Crit)

			if BlockPowaVal then

				if BlockPowaVal.Value < 1 then

					blocksound = Sounds.Equip

				end

			end

		end

		if Mode[5] == false and RageMode == false and Blawk == false then

			Rage = Rage + math.ceil(Damg*0.75-0.5)

		end

		if Blawk then

			PlaySound(blocksound[1], blocksound[2]-0.15, blocksound[3])

		else

			PlaySound(Sounds.Hit[1], Sounds.Hit[2], Sounds.Hit[3])

		end

		Damage(hit, Hum, Damg, Crit, Blawk)

		if Mode == Dmgs.Spin then

			Notime(function()

				wait(0.35)

				Deb = true

			end)

		end

	end

end



for _, v in pairs(Blades) do

	v.Touched:connect(TouchDamage)

end



if script.Parent.className ~= "HopperBin" then

	H = Instance.new("HopperBin", me.Backpack)

	H.Name = Toolname

	script.Parent = H

end



Bin = script.Parent



EffectOn = false



function StartEffect(color)

	EffectOn = true

	local lastPoint = Tip7.CFrame * EffPos.p

	Notime(function()

		while EffectOn do

			wait()

			local pos = Tip7.CFrame * EffPos.p

			local magn = (lastPoint - pos).magnitude

			local col = LineColor

			if color and col ~= EffectColor3 then

				col = color

			end

			local p = Part(workspace, true, false, 0.1, 0, col, 0.3, 1, 0.3, true)

			local mesh = Add.Head(p)

			mesh.Scale = Vector3.new(1, magn+0.1, 1)

			p.CFrame = CN(lastPoint, pos) * CA(-MP/2, 0, 0) * CN(0, magn/2+0.05, 0)

			lastPoint = pos

			Notime(function()

				wait(0.05)

				for i = 0, 1, 0.12 do

					p.Transparency = 0.1+0.9*i

					mesh.Scale = Vector3.new(1-1*i, magn+0.1-0.1*i, 1-1*i)

					wait()

				end

				p:remove()

			end)

		end

	end)

end



function EndEffect()

	EffectOn = false

end



function Detach()

	RAW.Part1 = nil

	LAW.Part1 = nil

	RLW.Part1 = nil

	LLW.Part1 = nil

	RAW.C0 = CN()

	LAW.C0 = CN()

	RLW.C0 = CN()

	LLW.C0 = CN()

end



function Normalize()

	RAW.C0 = CA(MR(40), MR(50), 0)

	LAW.C0 = CA(MR(20), MR(-20), MR(-20))

	HW.C0 = CA(0, 0, 0)

	neck.C0 = necko

end



SelectAnim = function()

	RAW.Part1 = Rarm

	HW.Part1 = nil

	TH.Part1 = Handle

	for i = 0.1, 1, 0.14 do

		RAW.C0 = CA(MR(220*i), MR(-30*i), MR(-35*i)) * CN(0.4*i, 0, 0)

		neck.C0 = necko * CA(MR(-10*i), 0, MR(-60*i))

		wait()

	end

	PlaySound(Sounds.Equip[1], Sounds.Equip[2], Sounds.Equip[3])

	HW.C0 = CN(0.4, 0, 0) * CA(MR(-60), MR(10), MR(100))

	HW.Part1 = Handle

	TH.Part1 = nil

	LAW.Part1 = Larm

	for i = 0.09, 1, 0.11 do

		RAW.C0 = CA(MR(220-70*i), MR(-30+25*i), MR(-35+70*i)) * CN(0.4-0.4*i, 0, 0)

		HW.C0 = CN(0.4-0.4*i, 0, 0) * CA(MR(-60+40*i), MR(10-10*i), MR(100-40*i))

		LAW.C0 = CA(MR(20*i), MR(-20*i), MR(-20*i))

		neck.C0 = necko * CA(MR(-10+10*i), 0, MR(-60+40*i))

		wait()

	end

	for i = 0.14, 1, 0.25 do

		RAW.C0 = CA(MR(150-60*i), MR(-5+15*i), MR(35-10*i))

		HW.C0 = CA(MR(-20+20*i), 0, MR(60-30*i))

		neck.C0 = necko * CA(0, 0, MR(-60+40+5*i))

		wait()

	end

	for i = 0.1, 1, 0.14 do

		RAW.C0 = CA(MR(90-50*i), MR(10+40*i), MR(25-25*i))

		HW.C0 = CA(0, 0, MR(30-30*i))

		neck.C0 = necko * CA(0, 0, MR(-15+15*i))

		wait()

	end

	Normalize()

end



DeselectAnim = function()

	for i = 0.09, 1, 0.14 do

		RAW.C0 = CA(MR(40+100*i), MR(50-50*i), MR(20*i))

		LAW.C0 = CA(MR(20-20*i), MR(-20+20*i), MR(-20+20*i))

		HW.C0 = CN(0.4*i, 0, 0) * CA(MR(-30*i), MR(5*i), MR(20*i))

		neck.C0 = necko * CA(MR(-5*i), 0, MR(-35*i))

		wait()

	end

	LAW.Part1 = nil

	for i = 0.08, 1, 0.14 do

		RAW.C0 = CA(MR(140+80*i), MR(-30*i), MR(20-55*i))

		HW.C0 = CN(0.4, 0, 0) * CA(MR(-30-30*i), MR(5+5*i), MR(20+80*i))

		neck.C0 = necko * CA(MR(-5-10*i), 0, MR(-35-25*i))

		wait()

	end

	HW.Part1 = nil

	TH.Part1 = Handle

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(MR(220-220*i), MR(-30+30*i), MR(20-55+35*i))

		neck.C0 = necko * CA(MR(-5-10+15*i), 0, MR(-35-25+60*i))

		wait()

	end

	neck.C0 = necko

	Detach()

end



function setatk(s, e)

	Notime(function()

		Attack = e

		wait(0.25)

		Attack = s

	end)

end



Attacks = {

function()

	Attack = 1

	Able = false

	for i = 0.1, 1, 0.2 do

		RAW.C0 = CA(MR(40+90*i), MR(50-60*i), 0)

		HW.C0 = CA(0, 0, 0)

		LAW.C0 = CA(MR(20+55*i), MR(-20), MR(-20+60*i))

		neck.C0 = necko * CA(MR(-10*i), 0, MR(-25*i))

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2], Sounds.Slash[3])

	for i = 0.16, 1, 0.33 do

		RAW.C0 = CA(MR(130+5*i), MR(-10-20*i), 0)

		HW.C0 = CA(0, 0, 0)

		LAW.C0 = CA(MR(75+5*i), MR(-20), MR(40+5*i))

		neck.C0 = necko * CA(MR(-10-5*i), 0, MR(-25-5*i))

		wait()

	end

	Hurt = true

	Deb = true

	StartEffect()

	Mode = Dmgs.Slash

	for i = 0.11, 1, 0.22 do

		RAW.C0 = CA(MR(135-115*i), MR(-30), MR(-50*i)) * CN(0, -0.7*i, 0)

		HW.C0 = CA(MR(-70*i), 0, 0)

		LAW.C0 = CA(MR(80-120*i), MR(-20+20*i), MR(45-45*i))

		neck.C0 = necko * CA(MR(-15+30*i), 0, MR(-30+45*i))

		wait()

	end

	EndEffect()

	Hurt = false

	setatk(1,2)

	Able = true

	for i = 0.2, 1, 0.25 do

		RAW.C0 = CA(MR(20-18*i), MR(-30), MR(-50-3*i)) * CN(0, -0.7-0.05*i, 0)

		HW.C0 = CA(MR(-70-5*i), 0, 0)

		neck.C0 = necko * CA(MR(15+3*i), 0, MR(15+3*i))

		wait()

	end

	wait(0.1)

	for i = 0.1, 1, 0.15 do

		if Able == false then return end

		RAW.C0 = CA(MR(2+38*i), MR(-30+80*i), MR(-53+53*i)) * CN(0, -0.75+0.75*i, 0)

		HW.C0 = CA(MR(-75+75*i), 0, 0)

		LAW.C0 = CA(MR(-40+60*i), MR(-20+20-20*i), MR(-20*i))

		neck.C0 = necko * CA(MR(15+3-18*i), 0, MR(15+3-18*i))

		wait()

	end

	Normalize()

end,



function()

	Attack = 2

	Able = false

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.1, Sounds.Slash[3])

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(10+80*i), MR(-30+30*i), MR(-55+35*i)) * CN(0, -0.75+0.35*i, 0)

		LAW.C0 = CA(MR(-40), 0, 0)

		HW.C0 = CA(MR(-75+75*i), 0, MR(90*i))

		neck.C0 = necko * CA(MR(18-13*i), 0, MR(18+22*i))

		wait()

	end

	Hurt = true

	Deb = true

	StartEffect()

	Mode = Dmgs.SideSlash

	for i = 0.09, 1, 0.17 do

		RAW.C0 = CA(MR(90-40*i), 0, MR(-20+110*i)) * CN(0, -0.4+0.4*i, 0)

		HW.C0 = CA(0, MR(-65*i), MR(90))

		LAW.C0 = CA(MR(-40+120*i), MR(-20*i), MR(50*i)) * CN(0, -0.6*i, 0)

		neck.C0 = necko * CA(MR(5), 0, MR(40-90*i))

		wait()

	end

	EndEffect()

	Hurt = false

	Deb = false

	setatk(1,3)

	Able = true

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(MR(50-5*i), 0, MR(90+10*i))

		HW.C0 = CA(0, MR(-65-5*i), MR(90))

		LAW.C0 = CA(MR(-40+120), MR(-20), MR(50+5*i)) * CN(0, -0.6, 0)

		neck.C0 = necko * CA(MR(5), 0, MR(40-90-5*i))

		wait()

	end

	wait(0.08)

	for i = 0.05, 1, 0.1 do

		if Able == false then return end

		RAW.C0 = CA(MR(45-5*i), MR(50*i), MR(100-100*i)) * CN(0, 0, 0)

		HW.C0 = CA(0, MR(-70+70*i), MR(90-90*i))

		LAW.C0 = CA(MR(-40+120-60*i), MR(-20), MR(55-75*i)) * CN(0, -0.6+0.6*i, 0)

		neck.C0 = necko * CA(MR(5-5*i), 0, MR(-55+55*i))

		wait()

	end

	Normalize()

end,



function()

	Able = false

	for i = 0.05, 1, 0.08 do

		RAW.C0 = CA(MR(50+130*i), 0, MR(90-125*i)) * CN(0, -1*i, 0)

		HW.C0 = CA(0, MR(-65-35*i), MR(90-90*i))

		LAW.C0 = CA(MR(80+100*i), MR(-20+20*i), MR(50-15*i)) * CN(0, -0.6-0.4*i, 0)

		neck.C0 = necko * CA(MR(5-25*i), 0, MR(-50+50*i))

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.05, Sounds.Slash[3])

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(180+10*i), 0, MR(-35)) * CN(0, -1, 0)

		HW.C0 = CA(0, MR(-100), 0)

		LAW.C0 = CA(MR(180+10*i), 0, MR(35)) * CN(0, -1, 0)

		neck.C0 = necko * CA(MR(5-25-5*i), 0, 0)

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Smash

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(190-160*i), 0, MR(-35)) * CN(0, -1+0.2*i, 0)

		HW.C0 = CA(MR(-20*i), MR(-100-40*i), MR(40*i))

		LAW.C0 = CA(MR(190-160*i), 0, MR(35)) * CN(0, -1+0.2*i, 0)

		neck.C0 = necko * CA(MR(-25+45*i), 0, 0)

		wait()

	end

	PlaySound(Sounds.SmashHit[1], Sounds.SmashHit[2], Sounds.SmashHit[3])

	EndEffect()

	Hurt = false

	Deb = false

	for i = 0.2, 1, 0.5 do

		RAW.C0 = CA(MR(30+15*i), 0, MR(-35)) * CN(0, -0.8+0.4*i, 0)

		HW.C0 = CA(MR(-20), MR(-140), MR(40))

		LAW.C0 = CA(MR(30+15*i), 0, MR(35)) * CN(0, -0.8+0.4*i, 0)

		neck.C0 = necko * CA(MR(20), 0, 0)

		wait()

	end

	setatk(1,4)

	Able = true

	for i = 0.16, 1, 0.33 do

		if not Able then return end

		RAW.C0 = CA(MR(30+15-15*i), 0, MR(-35)) * CN(0, -0.8+0.4-0.2*i, 0)

		HW.C0 = CA(MR(-20), MR(-140), MR(40))

		LAW.C0 = CA(MR(30+15-15*i), 0, MR(35)) * CN(0, -0.8+0.4-0.2*i, 0)

		neck.C0 = necko * CA(MR(20), 0, 0)

		wait()

	end

	for i = 0.05, 1, 0.1 do

		if not Able then return end

		RAW.C0 = CA(MR(30+10*i), MR(50*i), MR(-35+35*i)) * CN(0, -0.8+0.4-0.2+0.6*i, 0)

		HW.C0 = CA(MR(-20+20*i), MR(-140+140*i), MR(40-40*i))

		LAW.C0 = CA(MR(30+15-15-10*i), MR(-20*i), MR(35-55*i)) * CN(0, -0.8+0.4-0.2+0.6*i, 0)

		neck.C0 = necko * CA(MR(20-20*i), 0, 0)

		wait()

	end

	Normalize()

end,

function()

	Able = false

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(30), MR(-20*i), MR(-35-25*i)) * CN(0, -0.8, 0)

		HW.C0 = CA(MR(-20-60*i), MR(-140-40*i), MR(40-40*i))

		LAW.C0 = CA(MR(30-110*i), 0, MR(35-35*i)) * CN(0, -0.8+0.8*i, 0)

		neck.C0 = necko * CA(MR(20-15*i), 0, MR(10*i))

		wait()

	end

	Mode = Dmgs.DoubleSlash

	StartEffect()

	playz(Sounds.Slash)

	Hurt = true

	Deb = true

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(30+120*i), MR(-20), MR(-60+80*i)) * CN(0, -0.8+0.8*i, 0)

		HW.C0 = CA(MR(-80+60*i), MR(180), 0)

		LAW.C0 = CA(MR(-50+100*i), 0, MR(30*i))

		neck.C0 = necko * CA(MR(5-25*i), 0, MR(10-30*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.17, 1, 0.33 do

		RAW.C0 = CA(MR(150+15*i), MR(-20), MR(20+5*i))

		HW.C0 = CA(MR(-20), MR(180), 0)

		LAW.C0 = CA(MR(50+5*i), 0, MR(30+10*i))

		neck.C0 = necko * CA(MR(-20-5*i), 0, MR(-20))

		wait()

	end

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(165-15*i), MR(-20+50*i), MR(25-75*i))

		HW.C0 = CA(MR(-20-20*i), MR(180), 0)

		LAW.C0 = CA(MR(55+45*i), 0, MR(40-30*i))

		neck.C0 = necko * CA(MR(-25), 0, MR(-20+35*i))

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	playz(Sounds.Slash)

	for i = 0.08, 1, 0.16 do

		RAW.C0 = CA(MR(150-110*i), MR(30), MR(-50+65*i))

		HW.C0 = CA(MR(-40-40*i), MR(180), 0)

		LAW.C0 = CA(MR(100-50*i), MR(-30*i), MR(10+30*i)) * CN(0, -1.1*i, 0)

		neck.C0 = necko * CA(MR(-25+45*i), 0, MR(15-30*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.13, 1, 0.25 do

		RAW.C0 = CA(MR(40-5*i), MR(30), MR(15+5*i))

		HW.C0 = CA(MR(-80-5*i), MR(180), 0)

		LAW.C0 = CA(MR(50), MR(-30), MR(40)) * CN(0, -1.1-0.1*i, 0)

		neck.C0 = necko * CA(MR(20+5*i), 0, MR(-15-5*i))

		wait()

	end

	for i = 0.09, 1, 0.16 do

		RAW.C0 = CA(MR(35+5*i), MR(30+20*i), MR(20-20*i))

		HW.C0 = CA(MR(-85+85*i), MR(180+180*i), 0)

		LAW.C0 = CA(MR(50-30*i), MR(-30+10*i), MR(40-60*i)) * CN(0, -1.2+1.2*i, 0)

		neck.C0 = necko * CA(MR(25-25*i), 0, MR(-20+20*i))

		wait()

	end

	Normalize()

	Able = true

	Attack = 1

end

}



SpinSlash = function(plaic)

	if Rage < Dmgs.Spin[6] then return end

	Rage = Rage - Dmgs.Spin[6]

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

	end

	AbleAll = false

	local bg = Add.BG(torso)

	bg.cframe = CF

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(40+50*i), MR(50-65*i), 0)

		HW.C0 = CA(0, 0, MR(90*i))

		LAW.C0 = CA(MR(20-20*i), MR(-20+20*i), MR(-20-60*i))

		neck.C0 = necko * CA(0, 0, MR(-30*i))

		bg.cframe = CF * CA(0, MR(30*i), 0)

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Spin

	Notime(function()

		while Hurt do

			PlaySound(Sounds.Slash[1], Sounds.Slash[2]+0.35, Sounds.Slash[3])

			wait(0.15)

		end

	end)

	for i = 0.04, 1, 0.06 do

		RAW.C0 = CA(MR(90-10*i), MR(-15), MR(90*i))

		HW.C0 = CA(0, MR(-70*i), MR(90))

		LAW.C0 = CA(MR(90*i), 0, MR(-20-60+120*i)) * CN(0, -0.7*i, 0)

		neck.C0 = necko * CA(0, 0, MR(-30+20*i))

		bg.cframe = CF * CA(0, MR(30-380*i), 0)

		wait()

	end

	EndEffect()

	for i = 0.09, 1, 0.17 do

		RAW.C0 = CA(MR(80), MR(-15), MR(90))

		HW.C0 = CA(0, MR(-70-10*i), MR(90))

		LAW.C0 = CA(MR(90), 0, MR(-20-60+120+20*i)) * CN(0, -0.7, 0)

		neck.C0 = necko * CA(0, 0, MR(-10+60*i))

		bg.cframe = CF * CA(0, MR(-350-60*i), 0)

		wait()

	end

	Hurt = false

	Deb = false

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(80-40*i), MR(-15+65*i), MR(90-90*i))

		HW.C0 = CA(0, MR(-80+80*i), MR(90-90*i))

		LAW.C0 = CA(MR(90-70*i), MR(-20*i), MR(60-80*i)) * CN(0, -0.7+0.7*i, 0)

		neck.C0 = necko * CA(0, 0, MR(-10+60-50*i))

		bg.cframe = CF * CA(0, MR(-410+50*i), 0)

		wait()

	end

	bg:remove()

	Normalize()

	AbleAll = true

end



Flawp = function(plaic)

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

	end

	local cf2 = CF * CN(0, -1.1, -1)

	local Dist = 8

	local Hit1, Pos1 = RayC(CF.p, (CF * CN(0, -1, 0)).p, 4, char)

	local Hit2, Pos2 = RayC((CF * CN(0, 0, -Dist*2)).p, (CF * CN(0, -1, -Dist*2)).p, 4, char)

	local Hit3, Pos3 = RayC(CF.p, (CF * CN(0, 0, -Dist*2)).p, Dist*2, char)

	if Rage < Dmgs.Boom[6] then return end

	if Hit1 and Hit2 then

		Rage = Rage - Dmgs.Boom[6]

		local bp = Add.BP(torso)

		bp.position = cf.p

		local bg = Add.BG(torso)

		bg.cframe = CF

		AbleAll = false

		RLW.Part1 = Rleg

		LLW.Part1 = Lleg

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(40+30*i), MR(50-50*i), MR(25*i))

			LAW.C0 = CA(MR(20+50*i), MR(-20+20*i), MR(-20-5*i))

			HW.C0 = CA(MR(25*i), 0, 0)

			RLW.C0 = CN(0, 1*i, -1*i)

			LLW.C0 = CA(MR(-90*i), 0, 0) * CN(0, 0.5*i, -0.2*i)

			neck.C0 = necko * CA(MR(20*i), 0, 0)

			bp.position = CF * CN(0, -1*i, -1*i).p

			wait()

		end

		local Center = cf2 * CN(0, 0, -Dist)

		hum.PlatformStand = true

		PlaySound(Sounds.Jump[1], Sounds.Jump[2], Sounds.Jump[3])

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(70-160*i), 0, MR(25+15*i))

			LAW.C0 = CA(MR(70-160*i), 0, MR(-25-15*i))

			HW.C0 = CA(MR(25), 0, 0)

			RLW.C0 = CN(0, 1-1*i, -1+1*i)

			LLW.C0 = CA(MR(-90+70*i), 0, 0) * CN(0, 0.5+0.7*i, -0.2-0.3*i)

			neck.C0 = necko * CA(MR(20-50*i), 0, 0)

			bp.position = Center * CA(MR(180-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-90*i), 0, 0)

			wait()

		end

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(-90-90*i), 0, MR(40+50*i))

			LAW.C0 = CA(MR(-90-90*i), 0, MR(-40-50*i))

			HW.C0 = CA(MR(25-25*i), 0, MR(-90*i))

			RLW.C0 = CN(0, 0, 0)

			LLW.C0 = CA(MR(-20+20*i), 0, 0) * CN(0, 1.2-1.2*i, -0.5+0.5*i)

			bp.position = Center * CA(MR(135-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-90-90*i), 0, 0)

			wait()

		end

		StartEffect()

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(180+10*i), 0, MR(90-130*i)) * CN(0, -1*i, 0)

			LAW.C0 = CA(MR(180+10*i), 0, MR(-90+130*i)) * CN(0, -1*i, 0)

			HW.C0 = CA(0, 0, MR(-90-90*i))

			RLW.C0 = CN(0, 0, 0)

			LLW.C0 = CA(0, 0, 0) * CN(0, 0, 0)

			bp.position = Center * CA(MR(90-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-180-90*i), 0, 0)

			wait()

		end

		playz(Sounds.Slash)

		for i = 0.06, 1, 0.1 do

			RAW.C0 = CA(MR(190-100*i), 0, MR(-40)) * CN(0, -1-0.2*i, 0)

			LAW.C0 = CA(MR(190-80*i), MR(-25*i), MR(40-15*i)) * CN(0, -1-0.2*i, 0)

			HW.C0 = CA(0, MR(-45*i), MR(-180))

			RLW.C0 = CN(0, 1*i, -1*i)

			LLW.C0 = CA(MR(-20-70*i), 0, 0) * CN(0, 1.2-0.7*i, -0.5+0.3*i)

			neck.C0 = necko * CA(MR(-30+60*i), 0, 0)

			bp.position = Center * CA(MR(45-45*i), 0, 0) * CN(0, 0, -Dist).p

			bg.cframe = CF * CA(MR(-270-90*i), 0, 0)

			wait()

		end

		Mode = Dmgs.Boom

		EndEffect()

		RAW.C0 = CA(MR(90), 0, MR(-40)) * CN(0, -1.2, 0)

		LAW.C0 = CA(MR(110), MR(-25), MR(25)) * CN(0, -1.2, 0)

		HW.C0 = CA(0, MR(-45), MR(-180))

		RLW.C0 = CN(0, 1, -1)

		LLW.C0 = CA(MR(-90), 0, 0) * CN(0, 0.5, -0.2)

		bp.position = Center * CN(0, 0, -Dist).p

		bg.cframe = CF * CA(0, 0, 0)

		local PosEff = Center * CN(0, -2, -Dist-2.5)

		Notime(function()

			playz(Sounds.Boom)

			local disst = Dmgs.Boom[7]

			local chars = getCharacters(workspace, PosEff.p, disst)

			for _,v in pairs(chars) do

				local c, t, h = v[1], v[2], v[3]

				local d = (t.Position - PosEff.p).magnitude

				local bl, bp, blo = getBlock(c)

				if blo then

					ShieldDamage(Dmgs.Boom, bl, bp, false)

				end

				d = d/4

				if d < 1 then d = 1 end

				Damage(t, h, Dmgs.Boom[2]/d, false, false)

				for _,k in pairs(c:children()) do

					if k:IsA("BasePart") then

						k.Velocity = CFrame.new(PosEff.p, k.Position).lookVector * 40 + Vector3.new(0, 50, 0)

					end

				end

				h.PlatformStand = true

				Notime(function() h.PlatformStand = false end, 0.2)

			end

			local eff = Instance.new("Model",workspace)

			eff.Name = "Effect"

			local wave = Part(eff, true, false, 0, 0, EffectColor, 1, 1, 1, true)

			wave.CFrame = PosEff

			local wavem = Add.Mesh(wave, "http://www.roblox.com/asset/?id=20329976", 3, 2, 3)

			local ball = Part(eff, true, false, 0, 0, EffectColor2, 1, 1, 1, true)

			ball.CFrame = PosEff

			local ballm = Add.Sphere(ball)

			ballm.Scale = Vector3.new(2, 5, 2)

			local diamond = Part(eff, true, false, 0, 0, EffectColor, 1, 1, 1, true)

			diamond.CFrame = PosEff

			local diamondm = Add.Mesh(diamond, "http://www.roblox.com/asset/?id=9756362", 7, 0.5, 7)

			for i = 0, 1, 0.05 do

				wait()

				wave.CFrame = PosEff * CFrame.Angles(0, MR(180*i), 0)

				wave.Transparency = i

				wavem.Scale = Vector3.new(3+(disst*1.15)*i, 2+(disst/1.4)*i, 3+(disst*1.15)*i)

				ball.Transparency = i

				ballm.Scale = Vector3.new(1+(disst*2)*i, 5+(disst*1.2)*i, 1+(disst*2)*i)

				diamond.Transparency = i

				diamondm.Scale = Vector3.new(7-6.5*i, 0.5+(disst*2)*i, 7-6.5*i)

			end

			wait()

			eff:remove()

		end)

		wait(0.4)

		for i = 0.07, 1, 0.1 do

			RAW.C0 = CA(MR(90+50*i), 0, MR(-40)) * CN(0, -1.2+0.4*i, -0.4*i)

			LAW.C0 = CA(MR(110+30*i), MR(-25+25*i), MR(25+15*i)) * CN(0, -1.2+0.4*i, -0.4*i)

			HW.C0 = CA(MR(-30*i), MR(-45+45*i), MR(-180-30*i)) * CN(0, -0.7*i, 0)

			RLW.C0 = CN(0, 1-1*i, -1+1*i)

			LLW.C0 = CA(MR(-90+90*i), 0, 0) * CN(0, 0.5-0.5*i, -0.2+0.2*i)

			neck.C0 = necko * CA(MR(30-15*i), 0, 0)

			bp.position = Center * CN(0, 1.4*i, -Dist-1*i).p

			wait()

		end

		bp:remove()

		bg:remove()

		hum.PlatformStand = false

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(140-100*i), MR(50*i), MR(-40+40*i)) * CN(0, -0.8+0.8*i, -0.4+0.4*i)

			LAW.C0 = CA(MR(140-190*i), 0, MR(40-80*i)) * CN(0, -0.8+0.8*i, -0.4+0.4*i)

			HW.C0 = CA(MR(-30+30*i), 0, MR(-210-150*i)) * CN(0, -0.7+0.7*i, 0)

			RLW.C0 = CN()

			LLW.C0 = CN()

			neck.C0 = necko * CA(MR(15-15*i), 0, 0)

			bp.position = Center * CN(0, 1.4-0.4*i, -Dist-1-0.3*i).p

			wait()

		end

		RLW.Part1 = nil

		LLW.Part1 = nil

		for i = 0.1, 1, 0.2 do

			LAW.C0 = CA(MR(-50+70*i), MR(-20*i), MR(-40+20*i))

			wait()

		end

		Normalize()

		AbleAll = true

	end

end



function Raeg()

	if Rage < Dmgs.RageMode[5] then return end

	if RageMode == false and AbleAll and Able then

		AbleAll = false

		local CF = ComputePos(torso.Position, torso.CFrame * CN(0, 0, -2))

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(40-70*i), MR(50-45*i), MR(10*i))

			LAW.C0 = CA(MR(20-50*i), MR(-20+15*i), MR(-20+10*i))

			HW.C0 = CA(MR(20*i), 0, 0)

			wait()

		end

		for i = 0.12, 1, 0.25 do

			RAW.C0 = CA(MR(-30-10*i), MR(5-5*i), MR(10-5*i))

			LAW.C0 = CA(MR(-30-10*i), MR(-5+5*i), MR(-10+5*i))

			HW.C0 = CA(MR(20+5*i), 0, 0)

			wait()

		end

		hum.Jump = true

		playz(Sounds.Jump2)

		CF = ComputePos(torso.Position, torso.CFrame * CN(0, 0, -2))

		local p = Part(workspace, true, false, 0, 0, "Bright red", 0.2, 0.2, 0.2, true)

		p.CFrame = CF * CN(0, -2, 0)

		local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 3, 1)

		Notime(function()

			for i = 0, 1, 0.08 do

				wait()

				m.Scale = Vector3.new(1+5*i, 3-2.5*i, 1+5*i)

				p.Transparency = i

			end

			p:remove()

		end)

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(-40+220*i), 0, MR(5+35*i))

			LAW.C0 = CA(MR(-40+220*i), 0, MR(-5-35*i))

			HW.C0 = CA(MR(25-115*i), MR(90*i), MR(45*i))

			wait()

		end

		for i = 0.12, 1, 0.25 do

			RAW.C0 = CA(MR(180+8*i), 0, MR(40))

			LAW.C0 = CA(MR(180+8*i), 0, MR(-40))

			HW.C0 = CA(MR(-90), MR(90), MR(45))

			wait()

		end

		for i = 0.05, 1, 0.1 do

			RAW.C0 = CA(MR(188-98*i), 0, MR(40-80*i)) * CN(0, -1*i, 0)

			LAW.C0 = CA(MR(188-98*i), 0, MR(-40+80*i)) * CN(0, -1*i, 0)

			HW.C0 = CA(MR(-90+90*i), MR(90+45*i), MR(45-45*i))

			wait()

		end

		playz(Sounds.GoRage)

		local p2 = Part(workspace, false, false, 1, 0, EffectColor3, 1, 1, 1, true)

		Weld(Tip4, p2, 0, -2, 0, 0, 0, 0)

		local m2 = Add.Sphere(p2)

		m2.Scale = Vector3.new(0.2, 2, 0.5)

		for i = 0, 1, 0.06 do

			p2.Transparency = 1-1*i

			m2.Scale = Vector3.new(0.2+0.7*i, 2+3*i, 0.5+1.6*i)

			wait()

		end

		for _,v in pairs(Blades) do

			v.BrickColor = BrickColor.new(EffectColor3)

		end

		wait(0.5)

		for i = 0, 1, 0.1 do

			p2.Transparency = i

			wait()

		end

		p2:remove()

		playz(Sounds.Shout)

		for i = 0.1, 1, 0.1 do

			RAW.C0 = CA(MR(90-50*i), MR(50*i), MR(-40+40*i)) * CN(0, -1+1*i, 0)

			LAW.C0 = CA(MR(90-70*i), MR(-20*i), MR(-40+80-60*i)) * CN(0, -1+1*i, 0)

			HW.C0 = CA(0, MR(135+45*i), 0)

			wait()

		end

		Normalize()

		AbleAll = true

		RageMode = true

		AddDamage = Dmgs.RageMode[2]

		AddDamageX = Dmgs.RageMode[3]

		AddShield = Dmgs.RageMode[4]

		LineColor = EffectColor3

		Notime(function()

			repeat

				wait()

				Rage = Rage - 0.45

			until Rage < 1

			RageMode = false

			AddDamage = 0

			AddShield = 0

			AddDamageX = 1

			LineColor = "White"

			local p3 = Part(workspace, false, false, 1, 0, BladeColor, 1, 1, 1, true)

			Weld(Tip4, p3, 0, -2, 0, 0, 0, 0)

			local m3 = Add.Sphere(p3)

			m3.Scale = Vector3.new(0.85, 4.9, 1.8)

			playz(Sounds.RageOff)

			for i = 0.1, 1, 0.1 do

				p3.Transparency = 1-1*i

				wait()

			end

			p.Transparency = 0

			for _,v in pairs(Blades) do

				v.BrickColor = BrickColor.new(BladeColor)

			end

			wait(0.2)

			for i = 0.2, 1, 0.2 do

				p3.Transparency = 1*i

				m3.Scale = Vector3.new(0.85+2*i, 4.9+9*i, 1.8+4.5*i)

				wait()

			end

			p3:remove()

		end)

	end

end



function RageSlash(plaic)

	if Rage < Dmgs.RageSlash[6] then return end

	local cf = torso.CFrame

	local CF = ComputePos(cf.p, cf * CN(0, 0, -2))

	if plaic then

		CF = ComputePos(cf.p, plaic)

		local bg = Add.BG(torso)

		bg.cframe = CF

		Notime(function() bg:remove() end, 0.4)

	end

	Rage = Rage - Dmgs.RageSlash[6]

	AbleAll = false

	for i = 0.05, 1, 0.1 do

		RAW.C0 = CA(MR(40+105*i), MR(50-50*i), MR(-35*i)) * CN(0.15*i, -1*i, 0)

		LAW.C0 = CA(MR(20+125*i), MR(-20+20*i), MR(-20+55*i)) * CN(-0.15*i, -1*i, 0)

		HW.C0 = CA(0, MR(-35*i), 0)

		neck.C0 = necko * CA(MR(-20*i), 0, 0)

		wait()

	end

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(MR(145+55*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(145+55*i), 0, MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(0, MR(-35), 0)

		neck.C0 = necko * CA(MR(-20-20*i), 0, 0)

		wait()

	end

	PlaySound(Sounds.Slash[1], Sounds.Slash[2]-0.7, Sounds.Slash[3])

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(MR(200+10*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(200+10*i), 0, MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(0, MR(-35), 0)

		neck.C0 = necko * CA(MR(-20-20-5*i), 0, 0)

		wait()

	end

	Mode = Dmgs.RageSlash

	StartEffect("Neon orange")

	Hurt = true

	Deb = true

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(210-160*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(210-150*i), MR(-30*i), MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(MR(-70*i), MR(-35), MR(-35*i))

		neck.C0 = necko * CA(MR(-45+80*i), 0, 0)

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.33, 1, 0.33 do

		RAW.C0 = CA(MR(50-15*i), 0, MR(-35)) * CN(0.15, -1, 0)

		LAW.C0 = CA(MR(60-15*i), MR(-30), MR(35)) * CN(-0.15, -1, 0)

		HW.C0 = CA(MR(-70-15*i), MR(-35), MR(-35-7*i))

		neck.C0 = necko * CA(MR(-45+80+5*i), 0, 0)

		wait()

	end

	for i = 0.07, 1, 0.14 do

		RAW.C0 = CA(MR(35+5*i), MR(50*i), MR(-35+35*i)) * CN(0.15-0.15*i, -1+1*i, 0)

		LAW.C0 = CA(MR(45-25*i), MR(-30+10*i), MR(35-55*i)) * CN(-0.15+0.15*i, -1+1*i, 0)

		HW.C0 = CA(MR(-70-15+85*i), MR(-35+35*i), MR(-35-7+42*i))

		neck.C0 = necko * CA(MR(-45+80+5-40*i), 0, 0)

		wait()

	end

	Normalize()

	AbleAll = true

end



--RAW ORIGINAL = CA(MR(40), MR(50), 0)

--LAW ORIGINAL = CA(MR(20), MR(-20), MR(-20))

--HW ORIGINAL = CA(0, 0, 0)



function Counter()

	local cf = torso.CFrame

	local CF = CFrame.new(cf.p, cf * CN(0, 0, -2).p)

	local bg = Add.BG(torso)

	bg.cframe = CF

	for i = 0.1, 1, 0.2 do

		RAW.C0 = CA(MR(-50+50*i), MR(-35), MR(80*i))

		LAW.C0 = CA(MR(90-20*i), 0, MR(80-20*i)) * CN(-0.75+0.25*i, -0.8+0.5*i, 0)

		HW.C0 = CA(MR(20-60*i), 0, 0)

		bg.cframe = CF * CA(0, MR(-35*i), 0)

		neck.C0 = necko * CA(0, 0, MR(35*i))

		wait()

	end

	StartEffect()

	Hurt = true

	Deb = true

	Mode = Dmgs.Counter

	playz(Sounds.Slash)

	for i = 0.09, 1, 0.18 do

		RAW.C0 = CA(0, MR(-35+130*i), MR(80)) * CN(0, -0.3*i, 0)

		LAW.C0 = CA(MR(70-130*i), 0, MR(60-60*i)) * CN(-0.5+0.5*i, -0.3+0.3*i, 0)

		HW.C0 = CA(MR(-40+40*i), 0, 0)

		bg.cframe = CF * CA(0, MR(-35+80*i), 0)

		neck.C0 = necko * CA(0, 0, MR(35-80*i))

		wait()

	end

	EndEffect()

	Hurt = false

	for i = 0.12, 1, 0.25 do

		RAW.C0 = CA(0, MR(95+10*i), MR(80)) * CN(0, -0.3, 0)

		LAW.C0 = CA(MR(-60-10*i), 0, 0)

		HW.C0 = CA(MR(5*i), 0, 0)

		bg.cframe = CF * CA(0, MR(45+5*i), 0)

		neck.C0 = necko * CA(0, 0, MR(-45-5*i))

		wait()

	end

	for i = 0.06, 1, 0.12 do

		RAW.C0 = CA(MR(40*i), MR(105-55*i), MR(80-80*i)) * CN(0, -0.3+0.3*i, 0)

		LAW.C0 = CA(MR(-70+90*i), MR(-20*i), MR(-20*i))

		HW.C0 = CA(MR(5-5*i), 0, 0)

		bg.cframe = CF * CA(0, MR(50-50*i), 0)

		neck.C0 = necko * CA(0, 0, MR(-50+50*i))

		wait()

	end

	Normalize()

	bg:remove()

end



function Bloc()

	if AbleAll and Able then

		AbleAll = false

		Block.Value = true

		for i = 0, 1, 0.15 do

			if not Block then break end

			RAW.C0 = CA(MR(40-90*i), MR(50-85*i), 0)

			LAW.C0 = CA(MR(20+70*i), MR(-20+20*i), MR(-20+100*i)) * CN(-0.75*i, -0.8*i, 0)

			HW.C0 = CA(MR(20*i), 0, 0)

			wait()

		end

		RAW.C0 = CA(MR(40-90), MR(50-85), 0)

		LAW.C0 = CA(MR(20+70), MR(-20+20), MR(-20+100)) * CN(-0.75, -0.8, 0)

		HW.C0 = CA(MR(20), 0, 0)

		PlaySound(Sounds.SmashHit[1], Sounds.SmashHit[2]-0.6, Sounds.SmashHit[3])

		repeat

			wait()

			if BlockPower.Value < 1 then

				Block.Value = false

				BlockPower.Value = BlockRealPowa

			end

		until Block.Value == false

		if CounterKey and Rage >= Dmgs.Counter[6] then

			Rage = Rage - Dmgs.Counter[6]

			Counter()

		else

			for i = 1, 0, -0.2 do

				RAW.C0 = CA(MR(40-90*i), MR(50-85*i), 0)

				LAW.C0 = CA(MR(20+70*i), MR(-20+20*i), MR(-20+100*i)) * CN(-0.75*i, -0.8*i, 0)

				HW.C0 = CA(MR(20*i), 0, 0)

				wait()

			end

			Normalize()

		end

		AbleAll = true

	end

end



function Clicked(mousepos)

	if Block.Value == false and Able and AbleAll then

		if Aim then

			Notime(function()

				local bg = Add.BG(torso)

				bg.cframe = ComputePos(torso.Position, mousepos)

				bg.P = 5500

				wait(0.4)

				bg:remove()

			end)

		end

		Attacks[Attack]()

	end

end



function KeyDown(key, mouse)

	key = key:lower()

	if Able then

		local aimplace = nil

		if Aim then

			aimplace = mouse.Hit.p

		end

		if key == string.char(48) then

			Notime(function()

				local k = nil

				repeat

					k = mouse.KeyUp:wait()

				until k == string.char(48)

				Block.Value = false

			end)

			Bloc()

		elseif key == "e" then

			if Block.Value == false and AbleAll then

				SpinSlash(aimplace)

			end

		elseif key == "r" then

			if Block.Value == false and AbleAll then

				Flawp(aimplace)

			end

		elseif key == "f" then

			if Block.Value == false and AbleAll then

				Raeg()

			end

		elseif key == "t" then

			Notime(function()

				local k = nil

				CounterKey = true

				repeat

					k = mouse.KeyUp:wait()

				until k == "t"

				CounterKey = false

			end)

		elseif key == "q" then

			if Block.Value == false and AbleAll then

				local a = nil

				if Aim then

					a = mouse.Hit.p

				end

				RageSlash(a)

			end

		end

	end

end



Select = function(mouse)

	SelectAnim()

	Selected = true

	mouse.Button1Down:connect(function()

		if Able then

			Clicked(mouse.Hit.p)

		end

	end)

	mouse.KeyDown:connect(function(key)

		KeyDown(key, mouse)

	end)

end



Deselect = function(mouse)

	Selected = false

	DeselectAnim()

end



Bin.Selected:connect(Select)

Bin.Deselected:connect(Deselect)



Notime(function()

	local parent = char.Parent

	while char.Parent == parent do

		wait()

		if Rage > MaxRage then Rage = MaxRage elseif Rage < 0 then Rage = 0 end

		RageBar.Size = UD(1, 0, Rage/MaxRage, 0)

		RageBar.Position = UD(0, 0, 1-(Rage/MaxRage), 0)

		RageAmount.Text = math.floor(Rage)

		local hp2 = hum.Health/hum.MaxHealth

		if hp2 > 1 then hp2 = 1 elseif hp2 < 0 then hp2 = 0 end

		HealthBar.Size = UD(1, 0, hp2, 0)

		if Block.Value then

			hum.WalkSpeed = 10

		elseif RageMode and Block.Value then

			hum.WalkSpeed = 16

		elseif RageMode then

			hum.WalkSpeed = 19

		else

			hum.WalkSpeed = 16

		end

	end

end)
