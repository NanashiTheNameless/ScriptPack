--[[NIGHTOWLACE_WEAPONRY]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 

RW = Instance.new("Weld") 
LW = Instance.new("Weld")

RH = Torso["Right Hip"]
LH = Torso["Left Hip"]

RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 

RSH.Parent = nil 
LSH.Parent = nil 

RW.Name = "RW"
RW.Part0 = Torso 
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

local co1 = 14--how long it will take for skill to cooldown
local co2 = 15
local co3 = 22
local co4 = 30

local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0

local maxMana = 100
local Mana = 0--Mana you start out with
local skill1stam = 10--how much Mana is needed for a skill
local skill2stam = 15
local skill3stam = 20
local skill4stam = 25
local recovermana = 3--how much mana per second

local skillcolorscheme = Color3.new(1, 1, 1)

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = Color3.new(color)
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

local colorscheme2 = Torso.BrickColor.Color

framesk1 = makeframe(scrn, .5, UDim2.new(.23, 0, .93, 0), UDim2.new(.26, 0, .06, 0), colorscheme2)
framesk2 = makeframe(scrn, .5, UDim2.new(.5, 0, .93, 0), UDim2.new(.26, 0, .06, 0), colorscheme2)
framesk3 = makeframe(scrn, .5, UDim2.new(.5, 0, .86, 0), UDim2.new(.26, 0, .06, 0), colorscheme2)
framesk4 = makeframe(scrn, .5, UDim2.new(.23, 0, .86, 0), UDim2.new(.26, 0, .06, 0), colorscheme2)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[C] Rush-Charge')
text2 = makelabel(framesk2, '[V] Ground-Breaker')
text3 = makelabel(framesk3, "[X] Stomp-Wave")
text4 = makelabel(framesk4, '[Z] Enlight')
Manabar = makeframe(scrn, .5, UDim2.new(.23, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Really black").Color)
Manacover = makeframe(Manabar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Cyan").Color)
Manatext = makelabel(Manabar, 'Mana')
healthbar = makeframe(scrn, .5, UDim2.new(.5, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Really black").Color)
healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Lime green").Color)
healthtext = makelabel(healthbar, 'Health')

local stats = Instance.new('Folder', Character)
stats.Name = 'Stats'
local block = Instance.new('BoolValue', stats)
block.Name = 'Block'
block.Value = false
local stun = Instance.new('BoolValue', stats)
stun.Name = 'Stun'
stun.Value = false
local defense = Instance.new('NumberValue', stats)
defense.Name = 'Defence'
defense.Value = 1.2
local speed = Instance.new('NumberValue', stats)
speed.Name = 'Speed'
speed.Value = .7
local damagea = Instance.new('NumberValue', stats)
damagea.Name = 'Damage'
damagea.Value = .8

function clerp(a, b, t)
	return a:lerp(b, t)
end

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
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
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end


function makegui(cframe, text)
	local a = math.random(-10, 10) / 100
	local c = Instance.new("Part")
	c.Transparency = 1
	Instance.new("BodyGyro").Parent = c
	c.Parent = workspace
	c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
	local f = Instance.new("BodyPosition")
	f.P = 2000
	f.D = 100
	f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.position = c.Position + Vector3.new(0, 3, 0)
	f.Parent = c
	game:GetService("Debris"):AddItem(c, .5 + 6)
	c.CanCollide = false
	c.Parent = workspace
	c.CanCollide = false
	local bg = Instance.new('BillboardGui', c)
	bg.Adornee = c
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.StudsOffset = Vector3.new(0, 0, 0)
	bg.AlwaysOnTop = false
	local tl = Instance.new('TextLabel', bg)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.Text = text
	tl.Font = 'SourceSansBold'
	tl.FontSize = 'Size42'
	if crit == true then
		tl.TextColor3 = Color3.new(180 / 255, 0, 0)
	else
		tl.TextColor3 = Color3.new(255, 180 / 255, 51 / 255)
	end
	tl.TextStrokeTransparency = 0
	tl.TextScaled = true
	tl.TextWrapped = true
	coroutine.wrap(function()
		wait(2)
		for i = 1, 10 do
			swait()
			c.Transparency = 1
			tl.TextTransparency = tl.TextTransparency + .1
		end
	end)()
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
		h = hit.Parent.Parent:FindFirstChild("Humanoid")
	end
	if hit.Parent.className == "Hat" then
		hit = hit.Parent.Parent:findFirstChild("Head")
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			print(block.className)
			if block.className == "NumberValue" then
				if block.Value > 0 then
					blocked = true
					if decreaseblock == nil then
						block.Value = block.Value - 1
					end
				end
			end
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					if decreaseblock ~= nil then
						block.Value = block.Value - 1
					end
				end
			end
		end
		if blocked == false then
			local D = math.random(minim, maxim) * damagea.Value
			if h.Parent:FindFirstChild('Stats') then
				D = D / h.Parent:FindFirstChild('Stats').Defence.Value
			elseif not h.Parent:FindFirstChild('Stats') then
				D = D
			end
			h.Health = h.Health - D
			TagService:NewTag(h.Parent, Player, script.Name, D)
			makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + .5)))
		else
			local D = math.random(minim, maxim) * damagea.Value
			if h.Parent:FindFirstChild('Stats') then
				D = D / h.Parent:FindFirstChild('Stats').Defence.Value
			elseif not h.Parent:FindFirstChild('Stats') then
				D = D
			end
			h.Health = h.Health - (D / 2)
			makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + .5)))
			showDamage(hit.Parent, Damage / 2, .5, BrickColor.new("Bright blue"))
		end
		if Type == "Knockdown" then
			local humanoid = hit.Parent.Humanoid
			humanoid.PlatformStand = true
			coroutine.resume(coroutine.create(function(Humanoid)
				swait()
				Humanoid.PlatformStand = false
			end), humanoid)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Instance.new("BodyVelocity")
			bodvol.velocity = angle * knockback
			bodvol.P = 5000
			bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
			bodvol.Parent = hit
			local rl = Instance.new("BodyAngularVelocity")
			rl.P = 3000
			rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
			rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
			rl.Parent = hit
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			CreateSound("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
			local vp = Instance.new("BodyVelocity")
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			if KnockbackType == 1 then
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			elseif KnockbackType == 2 then
				vp.velocity = Property.CFrame.lookVector * knockback
			end
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "SlashLifeSteal" then
			CreateSound("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
			Humanoid.Health = Humanoid.Health + math.random(1, 2) / 2.5
			local vp = Instance.new("BodyVelocity")
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			if KnockbackType == 1 then
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			elseif KnockbackType == 2 then
				vp.velocity = Property.CFrame.lookVector * knockback
			end
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "SlashLifeSteal2" then
			CreateSound("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
			Humanoid.Health = Humanoid.Health + math.random(2, 3) / 2.5
			local vp = Instance.new("BodyVelocity")
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			if KnockbackType == 1 then
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			elseif KnockbackType == 2 then
				vp.velocity = Property.CFrame.lookVector * knockback
			end
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "BlackHoleDamage" then
			Humanoid.Health = Humanoid.Health + math.random(2, 4) / 5
			local floatingvelocity = Instance.new("BodyVelocity")
			floatingvelocity.Parent = hit.Parent.Torso
			floatingvelocity.Velocity = Vector3.new(0, math.random(2.5, 5), 0)
			game:GetService("Debris"):AddItem(floatingvelocity, 1)
		elseif Type == "BlackHoleDamage2" then
			local vp = Instance.new("BodyVelocity")
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			if KnockbackType == 1 then
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			elseif KnockbackType == 2 then
				vp.velocity = Property.CFrame.lookVector * knockback
			end
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.velocity = Vector3.new(0, 60, 0)
			bodyVelocity.P = 5000
			bodyVelocity.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
			bodyVelocity.Parent = hit
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
			local rl = Instance.new("BodyAngularVelocity")
			rl.P = 3000
			rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
			rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
			rl.Parent = hit
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Snare" then
			wait()
			local bp = Instance.new("BodyPosition")
			bp.P = 2000
			bp.D = 100
			bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			bp.position = hit.Parent.Torso.Position
			bp.Parent = hit.Parent.Torso
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Target" then
			CreateSound("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
			local vp = Instance.new("BodyVelocity")
			vp.P = 500
			vp.maxForce = Vector3.new(math.huge, 0, math.huge)
			if KnockbackType == 1 then
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			elseif KnockbackType == 2 then
				vp.velocity = Property.CFrame.lookVector * knockback
			end
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		end
		local debounce = Instance.new("BoolValue")
		debounce.Name = "DebounceHit"
		debounce.Parent = hit.Parent
		debounce.Value = true
		game:GetService("Debris"):AddItem(debounce, Delay)
		local c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damagefunc(head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3, 1)
				end
			end
		end
	end
end

Handle = CreatePart(m, Enum.Material.Neon, 0, 1, Torso.BrickColor, "Handle", Vector3.new(0.549599648, 1, 1.01160002))
Handleweld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0937860012, 0.00657367706, 0.00419616699, 5.96046448e-008, 0.999994755, 5.96095191e-008, 1, -5.96043037e-008, -4.8416058e-007, -4.8416058e-007, 5.96092349e-008, -1))
Hitbox = CreatePart(m, Enum.Material.Neon, 0, 1, Torso.BrickColor, "Hitbox", Vector3.new(4.54959965, 0.600000024, 6.41160011))
Hitboxweld = CreateWeld(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200000048, -0.599998474, 0.100006104, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.728999913, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748267651, 0.374885559, -0.163708687, 0.259237081, -0.965813696, 8.29293697e-007, -1.94643121e-006, -1.38109544e-006, -1, 0.965813696, 0.259237081, -2.23792108e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.549599648, 1.16819978, 0.210000008))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.15255737e-007, -0.0840969086, -0.409217834, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668091297, 1.44761658, 2.02336073, -0.259194463, 0.96582514, 3.82060307e-006, 4.7164408e-006, -2.69006023e-006, 1, 0.96582514, 0.259194463, -3.85800831e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.387033463, -0.748291492, -2.00602722, 0.932904124, 0.250400364, 0.258823335, -0.259233505, 0.965814769, -1.51112181e-006, -0.249975771, -0.0670942664, 0.96592468))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791927338, 0.0731578469, -2.68690491, 0.258355826, 0.96604985, 1.57819898e-006, 0.96604985, -0.258355826, 4.46641252e-006, 4.72251395e-006, 3.70695147e-007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748335838, 0.499908447, 0.236524105, 0.259243727, -0.965811968, 2.29213128e-006, 3.49563311e-006, 3.31156821e-006, 1, -0.965811968, -0.259243727, 4.23462734e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 1.31219983))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748334408, 0.354118347, -0.49246645, 0.259243727, -0.965811968, 2.42647434e-006, 3.57742101e-006, 3.47262016e-006, 1, -0.965811968, -0.259243727, 4.35537095e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748334885, -0.354110718, 1.22145891, 0.259243816, -0.965811849, 1.87510204e-006, -3.89473416e-006, -2.98690452e-006, -1, 0.965811849, 0.259243816, -4.53591747e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(1.16639984, 0.437400103, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.419552326, 0.645721436, 0.748315811, 0.965813994, 0.259236038, -1.18782089e-006, 8.57471662e-007, 1.38739472e-006, 1, 0.259236038, -0.965813994, 1.1176777e-006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.728999913, 0.291599989))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.748250961, -1.10388184, 1.00268936, -0.259237349, 0.965813696, -2.95466089e-006, 2.05441142e-006, 3.61067669e-006, 1, 0.965813696, 0.259237349, -2.92020081e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(1.16639984, 0.729000032, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.273701668, -1.10388947, 0.748267174, 0.965814769, 0.259233236, -4.11742462e-007, 3.74089325e-007, 1.94579599e-007, 1, 0.259233236, -0.965814769, 9.09514597e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.71172905, 1.08311462, 1.8220439, -0.258364588, -0.966047525, 4.46861804e-006, -1.88454442e-006, 5.12968245e-006, 1, -0.966047525, 0.258364588, -3.14588783e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.291137397, 0.791987419, -0.0103759766, -0.966036141, 0.258407384, 3.18614229e-006, -0.258407384, -0.966036141, -1.70527414e-006, 2.6372727e-006, -2.47067874e-006, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 2.04120016, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0733758211, 1.59341431, -0.791968346, -0.966033578, 0.258416891, -1.1448418e-006, -1.16560352e-006, 7.2865646e-008, 1, 0.258416891, 0.966033578, 2.30821001e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599959, 1.02060008))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791931152, -2.61401367, 0.509956539, 0.258375138, 0.966044664, -2.14422334e-006, 3.80396909e-006, -3.2369876e-006, -1, -0.966044664, 0.258375138, -4.51116148e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.04120016, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711686134, -1.03097534, -1.82201755, 0.258405864, 0.966036499, -3.94140943e-006, -1.7037512e-006, 4.53571738e-006, 1, 0.966036499, -0.258405864, 2.81794178e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.04120016, 0.437399983))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711735725, 1.03098297, 1.82195807, 0.258460104, 0.966022015, -2.66190364e-006, 1.11263591e-006, -3.05321805e-006, -1, -0.966022015, 0.258460104, -1.86396585e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.711661339, -1.09309554, 2.978508, -0.258407265, -0.966036081, 3.36418725e-006, 0.966036081, -0.258407265, -8.32808269e-007, 1.67385315e-006, 3.03472257e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.31173015, 0.791917801, -0.0103683472, -0.966039896, 0.258393317, -5.88560738e-007, -0.258393317, -0.966039896, -1.65475512e-006, -9.96150675e-007, -1.44647902e-006, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.280853271, -2.04826355, -0.791953087, -0.933117151, 0.249601856, 0.25882712, 0.25003624, -0.0668830872, 0.965923667, 0.258407503, 0.966036081, 2.45528014e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.801402152, -0.0103759766, -0.791955948, -0.966036141, 0.258407384, -2.41263734e-007, -2.7156463e-007, -8.15671228e-008, 1, 0.258407384, 0.966036141, 1.48971026e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.711751938, -0.947353661, 2.46820831, -0.258386463, -0.966041744, -1.42285126e-006, 0.966041744, -0.258386463, -3.87151067e-006, 3.37239476e-006, -2.37487916e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711641312, -1.09310102, 2.85347748, 0.258411825, 0.96603483, -3.37836354e-006, 0.96603483, -0.258411825, 1.16675437e-006, 2.54116259e-007, -3.5651201e-006, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.711715698, 0.94726485, -2.46821594, -0.258387119, -0.966041565, -1.17710044e-007, -0.966041565, 0.258387119, 2.52460541e-006, -2.40845884e-006, 7.66038113e-007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.728999913, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.792075157, 0.374885559, -0.000447571278, 0.258397371, 0.966038823, -3.81478458e-008, 1.99738133e-006, -5.73751208e-007, -1, -0.966038823, 0.258397371, -2.07780386e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.437399983, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.792011261, 2.24951172, 0.145552039, -0.258379161, -0.966043591, -2.21535828e-007, -4.39142241e-006, 9.4521215e-007, 1, -0.966043591, 0.258379161, -4.48652872e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.22946167, 0.791992188, -2.04825592, -0.933117151, 0.249601737, 0.258827031, -0.258407086, -0.966036141, 8.11744485e-007, 0.250036478, -0.066881977, 0.965923727))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.79108429, 0.791954994, -2.04824829, -0.933117151, 0.249601856, 0.25882712, -0.258407176, -0.966036081, 9.06736943e-007, 0.250036567, -0.0668819323, 0.965923727))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711748123, 0.947217226, -2.34318542, 0.258388281, 0.966041148, 1.08739897e-007, -0.966041148, 0.258388281, -2.73797241e-006, -2.67309088e-006, 6.0241274e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711779594, -0.947313726, 2.3431778, 0.258389086, 0.966040909, 1.36804704e-006, 0.966040909, -0.258389086, 4.12955433e-006, 4.34280719e-006, 2.54557619e-007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.79196167, 0.499908447, 0.0733489394, 0.258376598, 0.966044366, 1.46641844e-006, -4.57452143e-006, -2.94468009e-007, 1, 0.966044366, -0.258376598, 4.34310687e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 1.31219983))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791954994, 0.354118347, -0.655609488, 0.258398682, 0.966038465, 1.57091995e-006, -4.80159633e-006, -3.41801865e-007, 1, 0.966038465, -0.258398682, 4.55020563e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.248426437, 2.16902924, -0.79195118, -0.933116436, 0.249601498, -0.25883016, -0.25003925, 0.0668835416, 0.965922832, 0.258407265, 0.966036201, 3.19331264e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(1.16639984, 0.729000032, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.436873257, -1.10388184, -0.79204464, -0.966035903, 0.25840804, -2.51160202e-007, -4.18471444e-008, 8.1551002e-007, 1, 0.25840804, 0.966035903, -7.7699832e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.728999913, 0.291599989))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.791975021, -1.10387421, 1.16587758, -0.258397251, -0.966038764, -2.16711919e-006, -3.48613889e-006, -1.31082766e-006, 1, -0.966038764, 0.258397251, -3.02903118e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.583199918, 0.291599989))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791950226, -1.15602112, 0.145350814, 0.258398414, 0.966038465, 1.00403645e-006, 4.74357103e-006, -2.29488592e-007, -1, -0.966038465, 0.258398414, -4.64177128e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791969299, -0.354118347, 1.38458776, 0.258398414, 0.966038465, 9.90328999e-007, 4.74258241e-006, -2.4341341e-007, -1, -0.966038465, 0.258398414, -4.64441473e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(1.7495997, 4.22819996, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.728473842, 0.0625152588, -0.711821556, -0.96603328, 0.258417934, -4.64850359e-007, -2.20301672e-007, 9.7528698e-007, 1, 0.258417934, 0.96603328, -8.85229781e-007))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599959, 1.16639984))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791952133, -1.01022339, 0.582776666, 0.258398414, 0.966038465, 9.73264605e-007, 4.68442522e-006, -2.45521846e-007, -1, -0.966038465, 0.258398414, -4.58877776e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.437399983, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791953087, -0.645729065, 1.23882413, 0.258398414, 0.966038465, 9.85365432e-007, 4.74521448e-006, -2.49255436e-007, -1, -0.966038465, 0.258398414, -4.64846698e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.758653641, 0.791967392, 2.16901398, -0.933116317, 0.249601379, -0.258830756, -0.258406103, -0.966036439, -4.07655898e-006, -0.250040919, 0.0668796301, 0.965922713))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(1.16639984, 0.437400103, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.582713842, 0.645721436, -0.791945457, -0.966035903, 0.258407861, -1.25082556e-006, -1.27987164e-006, 5.58177362e-008, 1, 0.258407861, 0.966035903, 2.76806929e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599929, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.792108536, -1.61417389, -0.000424981117, -0.258397162, -0.966038883, -2.09015161e-006, -3.05568869e-006, -1.34629158e-006, 1, -0.966038883, 0.258397162, -2.60403613e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.261831284, 0.7920084, 2.16902924, -0.933116376, 0.249601558, -0.258829921, -0.258406281, -0.966036439, -4.11973315e-006, -0.250040174, 0.0668794289, 0.965923011))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748393536, 0.236421585, -2.68690491, 0.259242177, -0.965812325, 9.39434904e-006, -0.965812325, -0.259242177, 1.81594089e-006, 6.81553331e-007, -9.54394636e-006, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.549599648, 0.200000003, 0.611599982))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.400000095, 0, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.633543015, -0.748318195, -2.00602722, 0.932904184, 0.250400394, 0.258823454, -0.259233505, 0.965814769, -1.53903522e-006, -0.24997583, -0.0670942515, 0.965924621))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.668150902, 1.32257843, 2.02337718, 0.259231716, -0.965815246, -5.59616274e-006, -2.02115484e-006, 5.25174482e-006, -1, 0.965815246, 0.259231716, -5.90643424e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599959, 1.16639984))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748328209, -1.01021576, 0.419537544, 0.259243816, -0.965811849, 1.82883696e-006, -3.7662528e-006, -2.90451476e-006, -1, 0.965811849, 0.259243816, -4.39046926e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599929, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.748274803, -1.61417389, -0.163676262, -0.259237617, 0.965813577, -2.98417535e-006, 1.98260818e-006, 3.62196397e-006, 1, 0.965813577, 0.259237617, -2.85377928e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.583199918, 0.291599989))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748350143, -1.15601349, -0.0178599358, 0.259243816, -0.965811849, 1.85960675e-006, -3.80946062e-006, -2.94797155e-006, -1, 0.965811849, 0.259243816, -4.44346597e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0908699036, 2.12680817, 0.748318195, 0.932903409, 0.250400096, -0.258826435, 0.24997808, 0.067097418, 0.965923846, 0.259234011, -0.96581459, 8.78642084e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.601093292, -0.748310566, 2.12677765, 0.93290323, 0.250400156, -0.258826882, -0.259234697, 0.965814352, -3.2069297e-006, 0.249977916, 0.0670999065, 0.965923727))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(1.7495997, 4.22819996, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.565392971, 0.0625152588, 0.668135643, 0.965815246, 0.259231359, -4.91199387e-007, 4.8916678e-007, 7.23472908e-008, 1, 0.259231359, -0.965815246, -5.69332315e-008))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.437399983, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748342991, -0.645713806, 1.0756433, 0.259243816, -0.965811849, 1.8409371e-006, -3.99065493e-006, -2.97727752e-006, -1, 0.965811849, 0.259243816, -4.6260634e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.419418335, -0.748321056, 2.12680054, 0.932903469, 0.250400156, -0.258826196, -0.259234637, 0.965814352, -3.23053882e-006, 0.249977246, 0.0670997277, 0.965924025))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.549599648, 1.16819966, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.15255737e-007, -0.0840959549, 0.40423584, 1, -4.38871487e-016, 0, -4.38871487e-016, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748373508, -0.236422062, 2.68690491, 0.259242624, -0.965812266, 1.82163058e-006, 0.965812266, 0.259242624, -2.00591694e-006, 1.46509501e-006, 2.27937221e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668161869, -1.08311462, -1.65887642, -0.259238631, 0.965813279, -4.12923669e-007, 2.22891821e-008, -4.21557132e-007, -1, -0.965813279, -0.259238631, 8.77566961e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668140888, 1.08312225, 1.65885949, -0.259237617, 0.965813577, 3.65497885e-006, 3.96671521e-006, -2.71963154e-006, 1, 0.965813577, 0.259237617, -3.12607654e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.127997398, -0.748288631, -0.0103759766, 0.96581459, 0.259233892, 3.24961434e-006, -0.259233892, 0.96581459, -2.47951652e-006, -3.78129926e-006, 1.55234306e-006, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668211937, -0.929962635, 2.97852325, -0.259212017, 0.965820491, 2.54913289e-006, -0.965820491, -0.259212017, -8.96806228e-007, -2.05387948e-007, -2.69446741e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.123281479, -2.00604248, 0.748316288, 0.932904124, 0.250400394, 0.258823514, -0.249975741, -0.0670948401, 0.965924621, 0.259233654, -0.96581471, 9.78878688e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.58319968, 0.200000003, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14855218, -0.748366833, -0.0103759766, 0.965815067, 0.259231985, -7.14727889e-007, -0.259231985, 0.965815067, -2.50817857e-006, 4.00949318e-008, 2.60771685e-006, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999913, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.04120016, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.668152809, -1.03097534, -1.65887117, 0.259237349, -0.965813637, -3.15378566e-006, 3.45980902e-006, -2.33675905e-006, 1, -0.965813637, -0.259237349, 2.73575552e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.04120016, 0.437399983))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.66814518, 1.03097534, 1.65886927, 0.259237885, -0.965813518, -1.87370847e-006, -2.21794357e-006, 1.34470429e-006, -1, 0.965813518, 0.259237885, -1.79352128e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.47859979, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.668205738, -0.930031061, 2.85346985, 0.259222269, -0.96581769, -2.60306479e-006, -0.96581775, -0.259222299, 1.14704233e-006, -1.7826062e-006, 2.21674713e-006, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 2.04120016, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.236513138, 1.59341431, 0.748343468, 0.965813994, 0.259236038, -1.21717028e-006, 8.87492035e-007, 1.38876521e-006, 1, 0.259236038, -0.965813994, 1.11121904e-006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.711784363, 1.44760895, 2.18656635, -0.258395731, -0.96603924, 3.16468504e-006, 7.73344993e-007, 3.06908441e-006, 1, -0.96603924, 0.258395731, -4.59567389e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.791934013, -0.0731610656, 2.68690491, 0.258360416, 0.966048717, 8.7551814e-007, -0.966048717, 0.258360416, -1.93419714e-006, -2.09472728e-006, -3.46073136e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.728999913, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668188095, 0.784166813, -2.46821594, -0.259239137, 0.96581322, -9.58106966e-007, 0.96581322, 0.259239137, 2.45358251e-006, 2.61808077e-006, -2.89287811e-007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.18700004, 0.437399924))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.711663246, -1.08311462, -1.82211637, -0.258347362, -0.966052175, 4.26980762e-007, -6.51804299e-008, -4.24554258e-007, -1, 0.966052175, -0.258347362, 4.67147743e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.66814518, -0.784229279, 2.34318542, 0.259237558, -0.965813577, 2.15522095e-006, -0.965813577, -0.259237558, 4.15574686e-006, -3.45496255e-006, -3.15886746e-006, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.6243999, 0.291599959))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.711732864, 1.32258606, 2.18660164, 0.258424789, 0.966031373, -5.72344379e-006, 2.51068946e-006, -6.59633633e-006, -1, -0.966031373, 0.258424789, -4.13006182e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.437399983, 0.291599929))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.748332024, 2.24951172, -0.0176463127, -0.259235293, 0.965814173, -1.04926676e-006, 3.99967757e-006, 2.15996465e-006, 1, 0.965814173, 0.259235293, -4.42288456e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.668171883, 0.784127712, -2.34318542, 0.259238124, -0.965813458, 8.95987228e-007, 0.965813458, 0.259238124, -2.76424407e-006, 2.4374699e-006, 1.58195394e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.0205996, 0.2915999, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.63828373, -0.0103759766, 0.748314857, 0.96581459, 0.259233892, -1.77737036e-007, -7.47181232e-008, 9.63997763e-007, 1, 0.259233892, -0.96581459, 9.50412584e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.728999913))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, Torso.BrickColor, "Part", Vector3.new(0.200000003, 0.291599959, 1.02060008))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.748323441, -2.61401367, 0.346779823, 0.259239912, -0.965812981, -1.30390742e-006, -4.67701739e-006, 9.46744763e-008, -1, 0.965812981, 0.259239912, -4.49258096e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 1, 1))
Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.291599959, 2.1869998, 0.583199859))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.668186665, -0.784234047, 2.46820831, -0.259239942, 0.965813041, -2.21002483e-006, -0.965813041, -0.259239942, -3.84502073e-006, -4.28649719e-006, 1.1376876e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))

for i, v in pairs(Character:GetChildren()) do
	if v:IsA'Model' then
		for _, c in pairs(v:GetChildren()) do
			if c:IsA'Part' then
				c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
			end
		end
	end
end

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end

function attackone()
	attack = true
	Hitbox.CanCollide = true
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.4) * angles(math.rad(85), math.rad(0), math.rad(-70)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(80), math.rad(0), math.rad(45)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), .33)
	end
	CreateSound("http://roblox.com/asset/?id=320557518", RightArm, 1, .8)
	RootPart.Velocity = RootPart.CFrame.lookVector * 70
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-60)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.7, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.5, -.5) * CFrame.new(0, 0, -.5) * angles(math.rad(80), math.rad(0), math.rad(70)), .5)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-10), math.rad(-30), math.rad(-10)), .5)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(-30), math.rad(10)), .5)
	end
	Hitbox.CanCollide = false
	attack = false
end

function attacktwo()
	attack = true
	Hitbox.CanCollide = true
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-60)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(20), math.rad(0), math.rad(-10)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .33)
	end
	CreateSound("http://roblox.com/asset/?id=320557453", RightArm, 1, .8)
	for i = 0, 1, 0.12 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .35)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(80)), .35)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), .35)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(20), math.rad(0), math.rad(-80)), .35)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-10), math.rad(30), math.rad(0)), .35)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(30), math.rad(0)), .35)
	end
	Hitbox.CanCollide = false
	attack = false
end

function attackthree()
	attack = true
	CreateSound("http://roblox.com/asset/?id=315743298", LeftArm, 1, 1)
	CreateSound("http://roblox.com/asset/?id=320557563", LeftArm, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		BlockEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), .5, .5, .5, .8, .8, .8, .05, 1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(85), math.rad(0), math.rad(-60)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), .33)
	end
	CreateSound("http://roblox.com/asset/?id=315744661", LeftArm, 1, 1)
	CreateSound("http://roblox.com/asset/?id=300916014", LeftArm, 1, 1)
	RootPart.Velocity = RootPart.CFrame.lookVector * -70
	SphereEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), .5, .5, .5, .8, .8, .8, .05)
	for i = 1, 10 do
		BreakEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), 1, 3, 2)
	end
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-4), math.rad(0), math.rad(40)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-40)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(120), math.rad(0), math.rad(30)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-10), math.rad(-40), math.rad(5)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(-40), math.rad(-5)), .33)
	end
	attack = false
end

local Orbs = {}
local OrbNumb = 0
local Orbhold = false
function MakeOrbs()
	attack = true
	Humanoid.WalkSpeed = 6
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -.5) * angles(math.rad(0), math.rad(-120), math.rad(-90)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), .33)
	end
	for i = 1, 5 do
		if OrbNumb < 5 then
			CreateSound("http://www.roblox.com/asset/?id=315746833", Torso, 1, 1.5) 
			OrbNumb = OrbNumb + 1
			print(OrbNumb)
			local Orbl = CreatePart(m, "Neon", 0, 0.3, Torso.BrickColor, "Orb", Vector3.new(1, 1, 1))
			local msh = CreateMesh("SpecialMesh", Orbl, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
			Orbl.Anchored = false
			Orbl.CFrame = LeftArm.CFrame * CFrame.new(0, -1, 0)
			table.insert(Orbs, Orbl)
		end
	end
	for i = 0, 1, 0.1 do
		swait()
		SphereEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), .1, .1, .1, .5, .5, .5, .05)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-10), math.rad(-60)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.1) * angles(math.rad(0), math.rad(-10), math.rad(-90)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-40), math.rad(0)), .33)
	end
	for i = 0, 1, 0.1 do
		swait()
		BlockEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), .5, .5, .5, .8, .8, .8, .09, 1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, -.1) * angles(math.rad(180), math.rad(0), math.rad(0)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .33)
	end
	for e = 1, #Orbs do
		CreateSound("http://www.roblox.com/asset/?id=315744661", Torso, 1, 1) 
		CreateSound("http://www.roblox.com/asset/?id=315748999", Torso, 1, 1) 
		OrbNumb = OrbNumb - 1
		Orbs[e].Parent = nil
		BlockEffect(Torso.BrickColor, Orbs[e].CFrame, .5, .5, .5, .8, .8, .8, .04, 1)
		for i = 1, math.random(4, 10) do
			BreakEffect(Orbs[e].BrickColor, Orbs[e].CFrame, 1, 3, 2)
		end
	end
	for i = 1, 10 do
		print("nou")
		for e = 1, #Orbs do
			print(#Orbs)
			table.remove(Orbs, e)
		end
	end
	BlockEffect(Torso.BrickColor, LeftArm.CFrame * CFrame.new(0, -1, 0), .5, .5, .5, .8, .8, .8, .04, 1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .33)
	end
	OrbNumb = 0
	Humanoid.WalkSpeed = 16
	attack = false
end

function ShockWave(Part, cframe1, cframe2, Damage, Size)
	coroutine.resume(coroutine.create(function() 
		local wave = CreatePart(workspace, "Neon", 0, 0, Torso.BrickColor, "Effect", Vector3.new(1, 1, 5))
		wave.Anchored = true 
		wave.CFrame = Part.CFrame * cframe1
		local Msh = Create("SpecialMesh"){
			Parent = wave,
			MeshType = "Sphere"
		}
		BlockEffect(Torso.BrickColor, wave.CFrame * CFrame.new(0, 0, 1), 1, 1, 1, 2, 2, 2, 0.05)
		CreateSound("http://roblox.com/asset/?id=300916105", wave, 1, 1.3)
		CreateSound("http://roblox.com/asset/?id=301031757", wave, 1, 1.2)
		for i = 0, 1, 0.2 do
			wait()
			local dir = wave.CFrame.lookVector * -1
			local pos = rayCast(wave.Position, dir, 5, Character)
			wave.CFrame = wave.CFrame * cframe2
			Effects[#Effects + 1] = {
				wave,
				"Cylinder",
				0.01,
				.03,
				.03,
				.03
			}
		end
	end))
end

function Wave()
	attack = true
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), .33)
		RH.C0 = clerp(RH.C0, cn(1, .5, -.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), .33)
	end
	local inc = -3
	for i = 1, 3 do
		ShockWave(RootPart, CFrame.new(0, -4, inc) * CFrame.fromEulerAnglesXYZ(-2, 0, 1.57), CFrame.new(0, 0, 0.8), 10, 5)
		inc = inc - 5
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-30)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, -.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .7)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), .33)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

local Blocking = false

function Block()
	attack = true
	Humanoid.WalkSpeed = 10
	Hitbox.CanCollide = true
	while wait() do
		change = 1
		if Blocking == true then
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .33)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .33)
			RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.4) * angles(math.rad(90), math.rad(0), math.rad(-50)), .33)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.3, -.6) * angles(math.rad(95), math.rad(0), math.rad(45)), .33)
			if Torsovelocity > 2 then
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(20 * math.cos(sine / 4))), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(20 * math.cos(sine / 4))), .3)
			elseif Torsovelocity < 1 then
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(0)), .3)
			end
		elseif Blocking == false then
			break
		end
	end
	Hitbox.CanCollide = false
	Humanoid.WalkSpeed = 16
	attack = false
end

function RushCharge()
	attack = true
	Humanoid.WalkSpeed = 5
	Hitbox.CanCollide = true
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.4) * angles(math.rad(90), math.rad(0), math.rad(-50)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.3, -.6) * angles(math.rad(95), math.rad(0), math.rad(45)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), .33)
	end
	CreateSound("http://roblox.com/asset/?id=153092348", Torso, 1, .9)
	for i = 0, 1, 0.05 do
		swait()
		WaveEffect(Torso.BrickColor, RootPart.CFrame * CFrame.Angles(1.4, 0, 0), .2, .2, .2, .3, .3, .3, .08)
		RootPart.Velocity = RootPart.CFrame.lookVector * 40
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-10), math.rad(-70)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, -.2) * angles(math.rad(90), math.rad(0), math.rad(-30)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-.6, 0.4, -1) * angles(math.rad(95), math.rad(0), math.rad(65)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(-10)), .33)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(20)), .33)
	end
	Hitbox.CanCollide = false
	Humanoid.WalkSpeed = 16
	attack = false
end

function Ult()
	attack = true
	Humanoid.WalkSpeed = 5
	Hitbox.CanCollide = true
	Humanoid.JumpPower = 200
	local AntiJump = Humanoid.Changed:connect(function()
		Humanoid.Jump = false
	end)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.3) * angles(math.rad(0), math.rad(0), math.rad(50)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(-50)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.6) * angles(math.rad(95), math.rad(0), math.rad(45)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -.8, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(30)), .3)
	end
	WaveEffect(Torso.BrickColor, RootPart.CFrame, .2, .2, .2, .5, .5, .5, .04)
	AntiJump:disconnect()
	Humanoid.Jump = true
	Humanoid.WalkSpeed = 16
	CreateSound("http://roblox.com/asset/?id=199145327", Torso, 1, .9)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(6 * i, math.rad(0), math.rad(50)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(-50)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.6) * angles(math.rad(95), math.rad(0), math.rad(45)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(-30)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(30)), .3)
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.5) * angles(math.rad(90), math.rad(0), math.rad(40)), .33)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .33)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.4) * angles(math.rad(90), math.rad(0), math.rad(-50)), .33)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.6) * angles(math.rad(95), math.rad(0), math.rad(45)), .33)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(-30)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(30)), .3)
	end
	local hitfloor = nil
	while hitfloor == nil do
		swait()
		hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 6, Character)
	end
	local hit, pos = rayCast(Hitbox.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if hit ~= nil then
		local Color = hit.BrickColor
		local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", Vector3.new())
		refpart.Anchored = true
		refpart.CFrame = CFrame.new(pos)
		game:GetService("Debris"):AddItem(refpart, 1)
		CreateSound("http://www.roblox.com/asset/?id=199145477", refpart, .8, 0.75)
		CreateSound("http://www.roblox.com/asset/?id=142070127", refpart, .7, .9)
		for i = 1, 10 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local groundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
			groundpart.Anchored = false
			groundpart.Material = Materials
			groundpart.CanCollide = true
			groundpart.Friction = 0.1
			groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
			groundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(groundpart, 10)
		end
		for i = 1, 10 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local actualgroundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
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
	Humanoid.JumpPower = 50
	Hitbox.CanCollide = false
	Humanoid.WalkSpeed = 16
	attack = false
end

function subtractMana(k)
	if Mana >= k then
		Mana = Mana - k
	end
end

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' and cooldown1 >= co1 and Mana >= skill1stam then
		cooldown1 = 0
		subtractMana(skill1stam)
		MakeOrbs()
	elseif attack == false and k == 'x' and cooldown2 >= co2 and Mana >= skill2stam then
		cooldown2 = 0
		subtractMana(skill2stam)
		Wave()
	elseif attack == false and k == 'e' then
		Blocking = true
		Block()
	elseif attack == false and k == 'c' and cooldown3 >= co3 and Mana >= skill3stam then
		cooldown3 = 0
		subtractMana(skill3stam)
		RushCharge()
	elseif attack == false and k == 'v' and cooldown4 >= co4 and Mana >= skill4stam then
		cooldown4 = 0
		subtractMana(skill4stam)
		Ult()
	end
end)

mouse.KeyUp:connect(function(k)
	if attack == true and k == 'e' and Blocking == true then
		Blocking = false
	end
end)

numbb = 0
datnumb = 0

local Blink = 0

local BlinkEff = false

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
	if Mana <= skill1stam then
		bar4.BackgroundColor3 = Color3.new(104 / 255, 104 / 255, 104 / 255)
	else
		bar4.BackgroundColor3 = skillcolorscheme
	end
	if Mana <= skill2stam then
		bar3.BackgroundColor3 = Color3.new(104 / 255, 104 / 255, 104 / 255)
	else
		bar3.BackgroundColor3 = skillcolorscheme
	end
	if Mana <= skill3stam then
		bar1.BackgroundColor3 = Color3.new(104 / 255, 104 / 255, 104 / 255)
	else
		bar1.BackgroundColor3 = skillcolorscheme
	end
	if Mana <= skill4stam then
		bar2.BackgroundColor3 = Color3.new(104 / 255, 104 / 255, 104 / 255)
	else
		bar2.BackgroundColor3 = skillcolorscheme
	end
	if Mana <= maxMana then
		Mana = Mana + recovermana / 30
	end
end

while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Hat") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	updateskills()
	healthcover:TweenSize(UDim2.new(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
	Manacover:TweenSize(UDim2.new(1 * (Mana / maxMana), 0, 1, 0), 'Out', 'Quad', .5)
	bar4:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	Blink = Blink + .55
	if Blink >= 15 - (5 * (Humanoid.WalkSpeed / 16)) then
		Blink = 0
		if BlinkEff == true then
			BlinkEff = false
		elseif BlinkEff == false then
			BlinkEff = true
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.8, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				Jumping = false
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.15 + 0.1 * math.cos(sine / 15)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10 - 2 * math.cos(sine / 15)), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(65), math.rad(30), math.rad(-30 + 5 * math.cos(sine / 15))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10 - 3 * math.cos(sine / 15)), math.rad(0), math.rad(-10 - 3 * math.cos(sine / 15))), .3)
				RH.C0 = clerp(RH.C0, cn(1.05, -.8 - 0.1 * math.cos(sine / 15), 0) * RHCF * angles(math.rad(-3 - 1 * math.cos(sine / 35)), math.rad(30), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1.05, -.8 - 0.1 * math.cos(sine / 15), 0) * LHCF * angles(math.rad(-3 - 1 * math.cos(sine / 35)), math.rad(30), math.rad(0)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				Jumping = false
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10 + 1 * math.cos(sine / 15)), math.rad(0), math.rad(0 + 3 * math.cos(sine / 15))), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 - 1 * math.cos(sine / 15)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 15))), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(50 + 1 * math.cos(sine / 14)), math.rad(0), math.rad(20 + 3 * math.cos(sine / 14))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.45 + .1 * math.cos(sine / 13), 0.5, 0 - .1 * math.cos(sine / 13)) * angles(math.sin(40) * math.cos(sine / 13), math.rad(0), math.rad(-10 + 1 * math.cos(sine / 13))), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0 - 0.5 * math.cos(sine / 15) / 2) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(40 * math.cos(sine / 15))), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0 + 0.5 * math.cos(sine / 15) / 2) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(40 * math.cos(sine / 15))), .3)
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
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
	datnumb = 0
	BaseNumb = 6.28
	BaseNumb = BaseNumb / OrbNumb
	for d, Orb in pairs (Orbs) do
		datnumb = datnumb + BaseNumb
		Orb.Anchored = true
		if Orb.ClassName == "Part" then
			if #Orbs ~= 0 then
				Orb.CFrame = Orb.CFrame:lerp(CFrame.new(RootPart.Position) * CFrame.Angles(0, math.rad(360) / #Orbs * d, 0) * CFrame.new(0, 0, 5 + #Orbs / 3), .1)
				numbb = numbb + 0.05
			end
		end
	end
end