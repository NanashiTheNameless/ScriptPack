-- // E is broken rip

-- http://hastebin.com/raw/zoposelaqo

Player = game:GetService("Players").LocalPlayer
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
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
MMouse = nil
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local Ammo = 16
local accuracy = 0
local gun = false
local shoot = false
local gunleft = true
local gunright = true
local shootgun = 1
local XVbullet = false
local obliterate = false
local quickmove = false
local quickoblit = false
local move1 = "(Z)\nReload"
local move2 = "(X)\nDeadly Dive"
local move3 = "(C)\nXV Bullet"
local move4 = "(V)\nObliterate"
local cooldowns = {}
local cooldown1 = 0
table.insert(cooldowns, cooldown1)
local cooldown2 = 0
table.insert(cooldowns, cooldown2)
local cooldown3 = 0
table.insert(cooldowns, cooldown3)
local cooldown4 = 0
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.25
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.4
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.7
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.3
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
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
	    h:TakeDamage(Damage)
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
      h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
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

player = nil
RSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
TorsoRed = TorsoColor.Color.r
TorsoGreen = TorsoColor.Color.g
TorsoBlue = TorsoColor.Color.b
NewCol = Color3.new(1, TorsoGreen, TorsoBlue)
if Player:findFirstChild("Color1") ~= nil then
  NewCol = Player.Color1.Value
end
local mdec = Instance.new("NumberValue", Decrease)
mdec.Name = "DecreaseDef"
mdec.Value = 0.4
local mdec2 = Instance.new("NumberValue", Decrease)
mdec2.Name = "DecreaseMvmt"
mdec2.Value = 0.1
local Animate = Humanoid.Animator
local canjump = true
removeControl = function()
  canjump = false
end
resumeControl = function()
  canjump = true
end
Player.Character.Humanoid.Changed:connect(function()
  if canjump == false then
    Player.Character.Humanoid.Jump = false
  end
end)
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end
if Character:findFirstChild("Joy", true) ~= nil then
  Character:findFirstChild("Joy", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
  Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
end
if Character:findFirstChild("Stats", true) ~= nil then
  Character:findFirstChild("Stats", true).Parent = nil
end
local Stats = Instance.new("BoolValue")
Stats.Name = "Stats"
Stats.Parent = Character
local Atk = Instance.new("NumberValue")
Atk.Name = "Damage"
Atk.Parent = Stats
Atk.Value = 1
local Def = Instance.new("NumberValue")
Def.Name = "Defense"
Def.Parent = Stats
Def.Value = 1
local Mvmt = Instance.new("NumberValue")
Mvmt.Name = "Movement"
Mvmt.Parent = Stats
Mvmt.Value = 1
local Block = Instance.new("BoolValue")
Block.Name = "Block"
Block.Parent = Stats
Block.Value = false
local Stun = Instance.new("NumberValue")
Stun.Name = "Stun"
Stun.Parent = Stats
Stun.Value = 0
local StunT = Instance.new("NumberValue")
StunT.Name = "StunThreshold"
StunT.Parent = Stats
StunT.Value = 100
local Rooted = Instance.new("BoolValue")
Rooted.Name = "Rooted"
Rooted.Parent = Stats
Rooted.Value = false
local Stunned = Instance.new("BoolValue")
Stunned.Name = "Stunned"
Stunned.Parent = Stats
Stunned.Value = false
local Stagger = Instance.new("BoolValue")
Stagger.Name = "Stagger"
Stagger.Parent = Stats
Stagger.Value = false
local StaggerHit = Instance.new("BoolValue")
StaggerHit.Name = "StaggerHit"
StaggerHit.Parent = Stats
StaggerHit.Value = false
local RecentEnemy = Instance.new("ObjectValue")
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Parent = Stats
RecentEnemy.Value = nil
local Decrease = Instance.new("BoolValue")
Decrease.Name = "Decrease"
Decrease.Parent = Stats
Decrease.Value = false
local mana = Instance.new("NumberValue")
mana.Name = "Mana"
mana.Parent = Stats
mana.Value = 0
local passive = Instance.new("NumberValue", Decrease)
passive.Name = "DecreaseAtk"
passive.Value = 0
NoOutline = function(Part)
  Part.TopSurface = 10
end
part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0)
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
local Color1 = Torso.BrickColor
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.1, 0, 0.1, 0)
fenframe.Position = UDim2.new(0.95, 0, 0.7, 0)
local fenframe2 = it("Frame")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe2.BackgroundTransparency = 1
fenframe2.BorderColor3 = Color3.new(17, 17, 17)
fenframe2.Size = UDim2.new(0.2, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.4, 0, 0.85, 0)
local fenframe3 = it("Frame")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe3.BackgroundTransparency = 1
fenframe3.BorderColor3 = Color3.new(17, 17, 17)
fenframe3.Size = UDim2.new(0.2, 0, 0.2, 0)
fenframe3.Position = UDim2.new(0.8, 0, 0.8, 0)
fenframe3.Name = "MoveFrame"
local fenframe4 = it("Frame")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe4.BackgroundTransparency = 1
fenframe4.BorderColor3 = Color3.new(17, 17, 17)
fenframe4.Size = UDim2.new(0.1, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0, 0, 0.7, 0)
local pressedf = false
local fenframe5 = it("Frame")
fenframe5.Parent = fengui
fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
fenframe5.BackgroundTransparency = 1
fenframe5.BorderColor3 = Color3.new(0, 0, 0)
fenframe5.Size = UDim2.new(1, 0, 1, 0)
fenframe5.Position = UDim2.new(0, 0, 0, 0)
fenframe5.ZIndex = 2
local tellbar = gui("TextLabel", fenframe5, "-Obliterate has been changed to being ranged, constantly shooting forward while homing towards the nearest enemy at the mouse (+)\n-Changed Deadly Impact ability to Deadly Dive which Trooper dives backwards while shooting multiple homing bullets (+)\n-Slightly increased gunshot damage (+)\n-Slightly decreased cooldown and mana cost of Reload (+)\n-XV Bullet\'s defense debuff is slightly increased and lasts longer (+)\n-XV Bullet changed to having a really short cooldown, but only works for one bullet (+/-)\n-Normal combo damage has been decreased (-)\n-Passive damage increase has been slightly decreased (-)", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
tellbar.Font = "Arial"
tellbar.TextScaled = true
tellbar.TextTransparency = 1
tellbar.TextStrokeTransparency = 1
tellbar.ZIndex = 2
local fnumb = 0
local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
local fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
local fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
local fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
local fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
local fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove1.ZIndex = 2
local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove2.ZIndex = 2
local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove3.ZIndex = 2
local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
fenbarmove4.ZIndex = 2
local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
local fenbarammo1 = gui("TextButton", fenframe2, "Ammo(" .. Ammo .. ")", 0.55, BrickColor.new(NewCol).Color, UDim2.new(1.26, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Joy"
rprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Right Part01", vt())
rprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part02", vt())
rprt3 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Right Part03", vt())
rprt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part04", vt())
rprt4n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part04n", vt())
rprt4n.Material = "Neon"
rprt5 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part05", vt())
rprt6 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part06", vt())
rprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part07", vt())
rprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Right Part08", vt())
rprt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part09", vt())
rprt9n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part09n", vt())
rprt9n.Material = "Neon"
rprt10 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part10", vt())
rprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part11", vt())
rprt12 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part12", vt())
rprt13 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part13", vt())
rprt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part14", vt())
rprt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part15", vt())
rprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part16", vt())
rprt14n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part14n", vt())
rprt14n.Material = "Neon"
rprt15n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part15n", vt())
rprt15n.Material = "Neon"
rprt16n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part16n", vt())
rprt16n.Material = "Neon"
rprt17 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part17", vt())
rprt18 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part18", vt())
rprt19 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part19", vt())
rprt20 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Right Part20", vt())
rprt21 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part21", vt())
rprt22 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Right Part22", vt())
rprt23 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part23", vt())
rprt24 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part24", vt())
rprt25 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Right Part25", vt())
rprt23n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part23n", vt())
rprt23n.Material = "Neon"
rprt24n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part24n", vt())
rprt24n.Material = "Neon"
rprt25n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Right Part25n", vt())
rprt25n.Material = "Neon"
rprt26 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part26", vt())
rprt27 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part27", vt())
rprt28 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Right Part28", vt())
rprt29 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Right Part29", vt())
rprt30 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Right Part30", vt())
rprt31 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Right Part31", vt())
rprt32 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part32", vt())
rprt33 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part33", vt())
rprt34 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Right Part34", vt())
rprt35 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Right Part35", vt())
rprt36 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Right Part36", vt())
lprt1 = part(3, modelzorz, 0, 0, TorsoColor, "Left Part01", vt())
lprt2 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part02", vt())
lprt3 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Left Part03", vt())
lprt4 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part04", vt())
lprt4n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part04n", vt())
lprt4n.Material = "Neon"
lprt5 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part05", vt())
lprt6 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part06", vt())
lprt7 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part07", vt())
lprt8 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Left Part08", vt())
lprt9 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part09", vt())
lprt9n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part09n", vt())
lprt9n.Material = "Neon"
lprt10 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part10", vt())
lprt11 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part11", vt())
lprt12 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part12", vt())
lprt13 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part13", vt())
lprt14 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part14", vt())
lprt15 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part15", vt())
lprt16 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part16", vt())
lprt14n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part14n", vt())
lprt14n.Material = "Neon"
lprt15n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part15n", vt())
lprt15n.Material = "Neon"
lprt16n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part16n", vt())
lprt16n.Material = "Neon"
lprt17 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part17", vt())
lprt18 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part18", vt())
lprt19 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part19", vt())
lprt20 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Left Part20", vt())
lprt21 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part21", vt())
lprt22 = part(3, modelzorz, 0, 0, BrickColor.new("Really black"), "Left Part22", vt())
lprt23 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part23", vt())
lprt24 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part24", vt())
lprt25 = part(3, modelzorz, 0, 0, BrickColor.new(NewCol), "Left Part25", vt())
lprt23n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part23n", vt())
lprt23n.Material = "Neon"
lprt24n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part24n", vt())
lprt24n.Material = "Neon"
lprt25n = part(3, modelzorz, 0, 1, BrickColor.new(NewCol), "Left Part25n", vt())
lprt25n.Material = "Neon"
lprt26 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part26", vt())
lprt27 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part27", vt())
lprt28 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Left Part28", vt())
lprt29 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Left Part29", vt())
lprt30 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Left Part30", vt())
lprt31 = part(3, modelzorz, 0, 0, BrickColor.new("Medium stone grey"), "Left Part31", vt())
lprt32 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part32", vt())
lprt33 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part33", vt())
lprt34 = part(3, modelzorz, 0, 0, BrickColor.new("Dark stone grey"), "Left Part34", vt())
lprt35 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Left Part35", vt())
lprt36 = part(3, modelzorz, 0, 0, BrickColor.new("Black"), "Left Part36", vt())
rmsh1 = mesh("BlockMesh", rprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
rmsh2 = mesh("BlockMesh", rprt2, "", "", vt(0, 0, 0), vt(1, 6, 1.5))
rmsh3 = mesh("BlockMesh", rprt3, "", "", vt(0, 0, 0), vt(1.01, 4.51, 1.01))
rmsh4 = mesh("BlockMesh", rprt4, "", "", vt(0, 0, 0), vt(1.01, 0.49, 0.99))
rmsh4n = mesh("BlockMesh", rprt4n, "", "", vt(0, 0, 0), vt(1.05, 0.54, 1.04))
rmsh5 = mesh("SpecialMesh", rprt5, "Wedge", "nil", vt(0, 0, 0), vt(1, 1.5, 1))
rmsh6 = mesh("BlockMesh", rprt6, "", "", vt(0, 0, 0), vt(1, 6, 1))
rmsh7 = mesh("SpecialMesh", rprt7, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
rmsh8 = mesh("BlockMesh", rprt8, "", "", vt(0, 0, 0), vt(1.01, 3, 1.01))
rmsh9 = mesh("BlockMesh", rprt9, "", "", vt(0, 0, 0), vt(0.5, 6.5, 1))
rmsh9n = mesh("BlockMesh", rprt9n, "", "", vt(0, 0, 0), vt(0.55, 6.55, 1.05))
rmsh10 = mesh("BlockMesh", rprt10, "", "", vt(0, 0, 0), vt(0.9, 2, 1.01))
rmsh11 = mesh("SpecialMesh", rprt11, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 1, 1.6))
rmsh12 = mesh("BlockMesh", rprt12, "", "", vt(0, 0, 0), vt(1.1, 1, 1.6))
rmsh13 = mesh("SpecialMesh", rprt13, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 1, 1.6))
rmsh14 = mesh("BlockMesh", rprt14, "", "", vt(0, 0, 0), vt(1, 7, 1))
rmsh15 = mesh("SpecialMesh", rprt15, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
rmsh16 = mesh("SpecialMesh", rprt16, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
rmsh14n = mesh("BlockMesh", rprt14n, "", "", vt(0, 0, 0), vt(1.05, 7.05, 1.05))
rmsh15n = mesh("SpecialMesh", rprt15n, "Wedge", "nil", vt(0, 0, 0), vt(1.05, 1.05, 1.05))
rmsh16n = mesh("SpecialMesh", rprt16n, "Wedge", "nil", vt(0, 0, 0), vt(1.05, 1.05, 1.05))
rmsh17 = mesh("BlockMesh", rprt17, "", "", vt(0, 0, 0), vt(0.8, 10, 1.5))
rmsh18 = mesh("BlockMesh", rprt18, "", "", vt(0, 0, 0), vt(0.8, 1, 0.5))
rmsh19 = mesh("SpecialMesh", rprt19, "Wedge", "nil", vt(0, 0, 0), vt(0.8, 0.5, 0.5))
rmsh20 = mesh("BlockMesh", rprt20, "", "", vt(0, 0, 0), vt(1, 10.5, 0.5))
rmsh21 = mesh("BlockMesh", rprt21, "", "", vt(0, 0, 0), vt(1, 13.5, 1))
rmsh22 = mesh("CylinderMesh", rprt22, "", "", vt(0, 0, 0), vt(0.8, 13.5, 0.8))
rmsh23 = mesh("BlockMesh", rprt23, "", "", vt(0, 0, 0), vt(1.5, 11.5, 1))
rmsh24 = mesh("SpecialMesh", rprt24, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 1, 1))
rmsh25 = mesh("SpecialMesh", rprt25, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 0.5, 1))
rmsh23n = mesh("BlockMesh", rprt23n, "", "", vt(0, 0, 0), vt(1.55, 11.55, 1.05))
rmsh24n = mesh("SpecialMesh", rprt24n, "Wedge", "nil", vt(0, 0, 0), vt(1.55, 1.05, 1.05))
rmsh25n = mesh("SpecialMesh", rprt25n, "Wedge", "nil", vt(0, 0, 0), vt(1.55, 0.55, 1.05))
rmsh26 = mesh("BlockMesh", rprt26, "", "", vt(0, 0, 0), vt(1.5, 6, 1))
rmsh27 = mesh("SpecialMesh", rprt27, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 1, 1))
rmsh28 = mesh("BlockMesh", rprt28, "", "", vt(0, 0, 0), vt(2, 1, 1.5))
rmsh29 = mesh("SpecialMesh", rprt29, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 1.5))
rmsh30 = mesh("BlockMesh", rprt30, "", "", vt(0, 0, 0), vt(2, 2, 0.75))
rmsh31 = mesh("BlockMesh", rprt31, "", "", vt(0, 0, 0), vt(2, 1, 1.5))
rmsh32 = mesh("BlockMesh", rprt32, "", "", vt(0, 0, 0), vt(2.01, 1.5, 1))
rmsh33 = mesh("SpecialMesh", rprt33, "Wedge", "nil", vt(0, 0, 0), vt(2.01, 1, 1))
rmsh34 = mesh("SpecialMesh", rprt34, "Wedge", "nil", vt(0, 0, 0), vt(2.01, 1, 1))
rmsh35 = mesh("BlockMesh", rprt35, "", "", vt(0, 0, 0), vt(1.49, 1, 1.99))
rmsh36 = mesh("SpecialMesh", rprt36, "Wedge", "nil", vt(0, 0, 0), vt(1.49, 2, 1.99))
lmsh1 = mesh("BlockMesh", lprt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
lmsh2 = mesh("BlockMesh", lprt2, "", "", vt(0, 0, 0), vt(1, 6, 1.5))
lmsh3 = mesh("BlockMesh", lprt3, "", "", vt(0, 0, 0), vt(1.01, 4.51, 1.01))
lmsh4 = mesh("BlockMesh", lprt4, "", "", vt(0, 0, 0), vt(1.01, 0.49, 0.99))
lmsh4n = mesh("BlockMesh", lprt4n, "", "", vt(0, 0, 0), vt(1.06, 0.54, 1.04))
lmsh5 = mesh("SpecialMesh", lprt5, "Wedge", "nil", vt(0, 0, 0), vt(1, 1.5, 1))
lmsh6 = mesh("BlockMesh", lprt6, "", "", vt(0, 0, 0), vt(1, 6, 1))
lmsh7 = mesh("SpecialMesh", lprt7, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
lmsh8 = mesh("BlockMesh", lprt8, "", "", vt(0, 0, 0), vt(1.01, 3, 1.01))
lmsh9 = mesh("BlockMesh", lprt9, "", "", vt(0, 0, 0), vt(0.5, 6.5, 1))
lmsh9n = mesh("BlockMesh", lprt9n, "", "", vt(0, 0, 0), vt(0.55, 6.55, 1.05))
lmsh10 = mesh("BlockMesh", lprt10, "", "", vt(0, 0, 0), vt(0.9, 2, 1.01))
lmsh11 = mesh("SpecialMesh", lprt11, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 1, 1.6))
lmsh12 = mesh("BlockMesh", lprt12, "", "", vt(0, 0, 0), vt(1.1, 1, 1.6))
lmsh13 = mesh("SpecialMesh", lprt13, "Wedge", "nil", vt(0, 0, 0), vt(1.1, 1, 1.6))
lmsh14 = mesh("BlockMesh", lprt14, "", "", vt(0, 0, 0), vt(1, 7, 1))
lmsh15 = mesh("SpecialMesh", lprt15, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
lmsh16 = mesh("SpecialMesh", lprt16, "Wedge", "nil", vt(0, 0, 0), vt(1, 1, 1))
lmsh14n = mesh("BlockMesh", lprt14n, "", "", vt(0, 0, 0), vt(1.05, 7.05, 1.05))
lmsh15n = mesh("SpecialMesh", lprt15n, "Wedge", "nil", vt(0, 0, 0), vt(1.05, 1.05, 1.05))
lmsh16n = mesh("SpecialMesh", lprt16n, "Wedge", "nil", vt(0, 0, 0), vt(1.05, 1.05, 1.05))
lmsh17 = mesh("BlockMesh", lprt17, "", "", vt(0, 0, 0), vt(0.8, 10, 1.5))
lmsh18 = mesh("BlockMesh", lprt18, "", "", vt(0, 0, 0), vt(0.8, 1, 0.5))
lmsh19 = mesh("SpecialMesh", lprt19, "Wedge", "nil", vt(0, 0, 0), vt(0.8, 0.5, 0.5))
lmsh20 = mesh("BlockMesh", lprt20, "", "", vt(0, 0, 0), vt(1, 10.5, 0.5))
lmsh21 = mesh("BlockMesh", lprt21, "", "", vt(0, 0, 0), vt(1, 13.5, 1))
lmsh22 = mesh("CylinderMesh", lprt22, "", "", vt(0, 0, 0), vt(0.8, 13.5, 0.8))
lmsh23 = mesh("BlockMesh", lprt23, "", "", vt(0, 0, 0), vt(1.5, 11.5, 1))
lmsh24 = mesh("SpecialMesh", lprt24, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 1, 1))
lmsh25 = mesh("SpecialMesh", lprt25, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 0.5, 1))
lmsh23n = mesh("BlockMesh", lprt23n, "", "", vt(0, 0, 0), vt(1.55, 11.55, 1.05))
lmsh24n = mesh("SpecialMesh", lprt24n, "Wedge", "nil", vt(0, 0, 0), vt(1.55, 1.05, 1.05))
lmsh25n = mesh("SpecialMesh", lprt25n, "Wedge", "nil", vt(0, 0, 0), vt(1.55, 0.55, 1.05))
lmsh26 = mesh("BlockMesh", lprt26, "", "", vt(0, 0, 0), vt(1.5, 6, 1))
lmsh27 = mesh("SpecialMesh", lprt27, "Wedge", "nil", vt(0, 0, 0), vt(1.5, 1, 1))
lmsh28 = mesh("BlockMesh", lprt28, "", "", vt(0, 0, 0), vt(2, 1, 1.5))
lmsh29 = mesh("SpecialMesh", lprt29, "Wedge", "nil", vt(0, 0, 0), vt(2, 2, 1.5))
lmsh30 = mesh("BlockMesh", lprt30, "", "", vt(0, 0, 0), vt(2, 2, 0.75))
lmsh31 = mesh("BlockMesh", lprt31, "", "", vt(0, 0, 0), vt(2, 1, 1.5))
lmsh32 = mesh("BlockMesh", lprt32, "", "", vt(0, 0, 0), vt(2.01, 1.5, 1))
lmsh33 = mesh("SpecialMesh", lprt33, "Wedge", "nil", vt(0, 0, 0), vt(2.01, 1, 1))
lmsh34 = mesh("SpecialMesh", lprt34, "Wedge", "nil", vt(0, 0, 0), vt(2.01, 1, 1))
lmsh35 = mesh("BlockMesh", lprt35, "", "", vt(0, 0, 0), vt(1.49, 1, 1.99))
lmsh36 = mesh("SpecialMesh", lprt36, "Wedge", "nil", vt(0, 0, 0), vt(1.49, 2, 1.99))
rwld1 = weld(RightArm, rprt1, LeftLeg, euler(2.2, 0.5, 0) * cf(0.5, -1.5, 0.5))
rwld2 = weld(rprt1, rprt2, rprt1, euler(0.5, 0, 0) * cf(0, 0, 0))
rwld3 = weld(rprt1, rprt3, rprt2, euler(0, 0, 0) * cf(0, -0.15, 0.05))
rwld4 = weld(rprt1, rprt4, rprt2, euler(0, 0, 0) * cf(0, 0.55, -0.05))
rwld4n = weld(rprt1, rprt4n, rprt4, euler(0, 0, 0) * cf(0, 0, 0))
rwld5 = weld(rprt1, rprt5, rprt2, euler(0, 0, 0) * cf(0, 0.45, 0.25))
rwld6 = weld(rprt1, rprt6, rprt2, cf(0, -1, -0.3) * euler(1.07, 0, 0))
rwld7 = weld(rprt1, rprt7, rprt6, euler(0, 0, 3.14) * cf(0, 0.7, 0))
rwld8 = weld(rprt1, rprt8, rprt6, euler(0, 0, 0) * cf(0, -0.4, 0))
rwld9 = weld(rprt1, rprt9, rprt6, euler(0, 0, 0) * cf(0, -0.05, 0.1))
rwld9n = weld(rprt1, rprt9n, rprt9, euler(0, 0, 0) * cf(0, 0, 0))
rwld10 = weld(rprt1, rprt10, rprt6, euler(0, 0, 0) * cf(0, 0.1, 0.1))
rwld11 = weld(rprt1, rprt11, rprt6, euler(3.14, 0, 0) * cf(0, -0.6, 0.05))
rwld12 = weld(rprt1, rprt12, rprt11, euler(0, 0, 0) * cf(0, 0.2, 0))
rwld13 = weld(rprt1, rprt13, rprt12, euler(3.14, 0, 0) * cf(0, 0.2, 0))
rwld14 = weld(rprt1, rprt14, rprt6, euler(0, 0, 0) * cf(0, -0.4, -0.2))
rwld15 = weld(rprt1, rprt15, rprt14, euler(0, 0, 0) * cf(0, -0.8, 0))
rwld16 = weld(rprt1, rprt16, rprt14, euler(3.14, 0, 0) * cf(0, 0.8, 0))
rwld14n = weld(rprt1, rprt14n, rprt14, euler(0, 0, 0) * cf(0, 0, 0))
rwld15n = weld(rprt1, rprt15n, rprt15, euler(0, 0, 0) * cf(0, -0.005, 0))
rwld16n = weld(rprt1, rprt16n, rprt16, euler(0, 0, 0) * cf(0, -0.005, 0))
rwld17 = weld(rprt1, rprt17, rprt14, euler(0, 0, 0) * cf(0, 0.3, -0.05))
rwld18 = weld(rprt1, rprt18, rprt14, euler(0, 0, 0) * cf(0, -0.8, -0.15))
rwld19 = weld(rprt1, rprt19, rprt18, euler(0, 0, 0) * cf(0, -0.15, 0))
rwld20 = weld(rprt1, rprt20, rprt17, euler(0, 0, 0) * cf(0, -0.05, -0.2))
rwld21 = weld(rprt1, rprt21, rprt20, euler(0, 0, 0) * cf(0, -0.2, -0.15))
rwld22 = weld(rprt1, rprt22, rprt21, euler(0, 0, 0) * cf(0, -0.01, 0))
rwld23 = weld(rprt1, rprt23, rprt21, euler(0, 0, 0) * cf(0, 0.25, 0.1))
rwld24 = weld(rprt1, rprt24, rprt23, euler(0, 3.14, 0) * cf(0, -1.25, 0))
rwld25 = weld(rprt1, rprt25, rprt23, euler(3.14, 0, 0) * cf(0, 1.2, 0))
rwld23n = weld(rprt1, rprt23n, rprt23, euler(0, 0, 0) * cf(0, 0, 0))
rwld24n = weld(rprt1, rprt24n, rprt24, euler(0, 0, 0) * cf(0, -0.005, 0))
rwld25n = weld(rprt1, rprt25n, rprt25, euler(0, 0, 0) * cf(0, -0.005, 0))
rwld26 = weld(rprt1, rprt26, rprt23, euler(0, 0, 0) * cf(0, -0.55, -0.2))
rwld27 = weld(rprt1, rprt27, rprt26, euler(0, 0, 0) * cf(0, -0.7, 0))
rwld28 = weld(rprt1, rprt28, rprt26, euler(0, 0, 0) * cf(0, 0.6, 0.049))
rwld29 = weld(rprt1, rprt29, rprt28, euler(0, 0, 0) * cf(0, -0.3, 0))
rwld30 = weld(rprt1, rprt30, rprt28, euler(0, 0, 0) * cf(0, 0.3, 0.075))
rwld31 = weld(rprt1, rprt31, rprt28, euler(0, 0, 0) * cf(0, 0.6, 0))
rwld32 = weld(rprt1, rprt32, rprt31, euler(0, 0, 0) * cf(0, 0.25, -0.06))
rwld33 = weld(rprt1, rprt33, rprt32, euler(0, 0, 0) * cf(0, -0.25, 0))
rwld34 = weld(rprt1, rprt34, rprt32, euler(3.14, 0, 0) * cf(0, 0.25, 0))
rwld35 = weld(rprt1, rprt35, rprt26, euler(0, 0, 0) * cf(0, -0.7, 0.1))
rwld36 = weld(rprt1, rprt36, rprt26, euler(0, 0, 0) * cf(0, -1, 0.1))
lwld1 = weld(lprt1, lprt1, RightLeg, euler(2.2, -0.5, 0) * cf(-0.5, -1.5, 0.5))
lwld2 = weld(rprt1, lprt2, lprt1, euler(0.5, 0, 0) * cf(0, 0, 0))
lwld3 = weld(rprt1, lprt3, lprt2, euler(0, 0, 0) * cf(0, -0.15, 0.05))
lwld4 = weld(rprt1, lprt4, lprt2, euler(0, 0, 0) * cf(0, 0.55, -0.05))
lwld4n = weld(rprt1, lprt4n, lprt4, euler(0, 0, 0) * cf(0, 0, 0))
lwld5 = weld(rprt1, lprt5, lprt2, euler(0, 0, 0) * cf(0, 0.45, 0.25))
lwld6 = weld(rprt1, lprt6, lprt2, cf(0, -1, -0.3) * euler(1.07, 0, 0))
lwld7 = weld(rprt1, lprt7, lprt6, euler(0, 0, 3.14) * cf(0, 0.7, 0))
lwld8 = weld(rprt1, lprt8, lprt6, euler(0, 0, 0) * cf(0, -0.4, 0))
lwld9 = weld(rprt1, lprt9, lprt6, euler(0, 0, 0) * cf(0, -0.05, 0.1))
lwld9n = weld(rprt1, lprt9n, lprt9, euler(0, 0, 0) * cf(0, 0, 0))
lwld10 = weld(rprt1, lprt10, lprt6, euler(0, 0, 0) * cf(0, 0.1, 0.1))
lwld11 = weld(rprt1, lprt11, lprt6, euler(3.14, 0, 0) * cf(0, -0.6, 0.05))
lwld12 = weld(rprt1, lprt12, lprt11, euler(0, 0, 0) * cf(0, 0.2, 0))
lwld13 = weld(rprt1, lprt13, lprt12, euler(3.14, 0, 0) * cf(0, 0.2, 0))
lwld14 = weld(rprt1, lprt14, lprt6, euler(0, 0, 0) * cf(0, -0.4, -0.2))
lwld15 = weld(rprt1, lprt15, lprt14, euler(0, 0, 0) * cf(0, -0.8, 0))
lwld16 = weld(rprt1, lprt16, lprt14, euler(3.14, 0, 0) * cf(0, 0.8, 0))
lwld14n = weld(rprt1, lprt14n, lprt14, euler(0, 0, 0) * cf(0, 0, 0))
lwld15n = weld(rprt1, lprt15n, lprt15, euler(0, 0, 0) * cf(0, -0.005, 0))
lwld16n = weld(rprt1, lprt16n, lprt16, euler(0, 0, 0) * cf(0, -0.005, 0))
lwld17 = weld(rprt1, lprt17, lprt14, euler(0, 0, 0) * cf(0, 0.3, -0.05))
lwld18 = weld(rprt1, lprt18, lprt14, euler(0, 0, 0) * cf(0, -0.8, -0.15))
lwld19 = weld(rprt1, lprt19, lprt18, euler(0, 0, 0) * cf(0, -0.15, 0))
lwld20 = weld(rprt1, lprt20, lprt17, euler(0, 0, 0) * cf(0, -0.05, -0.2))
lwld21 = weld(rprt1, lprt21, lprt20, euler(0, 0, 0) * cf(0, -0.2, -0.15))
lwld22 = weld(rprt1, lprt22, lprt21, euler(0, 0, 0) * cf(0, -0.01, 0))
lwld23 = weld(rprt1, lprt23, lprt21, euler(0, 0, 0) * cf(0, 0.25, 0.1))
lwld24 = weld(rprt1, lprt24, lprt23, euler(0, 3.14, 0) * cf(0, -1.25, 0))
lwld25 = weld(rprt1, lprt25, lprt23, euler(3.14, 0, 0) * cf(0, 1.2, 0))
lwld23n = weld(rprt1, lprt23n, lprt23, euler(0, 0, 0) * cf(0, 0, 0))
lwld24n = weld(rprt1, lprt24n, lprt24, euler(0, 0, 0) * cf(0, -0.005, 0))
lwld25n = weld(rprt1, lprt25n, lprt25, euler(0, 0, 0) * cf(0, -0.005, 0))
lwld26 = weld(rprt1, lprt26, lprt23, euler(0, 0, 0) * cf(0, -0.55, -0.2))
lwld27 = weld(rprt1, lprt27, lprt26, euler(0, 0, 0) * cf(0, -0.7, 0))
lwld28 = weld(rprt1, lprt28, lprt26, euler(0, 0, 0) * cf(0, 0.6, 0.049))
lwld29 = weld(rprt1, lprt29, lprt28, euler(0, 0, 0) * cf(0, -0.3, 0))
lwld30 = weld(rprt1, lprt30, lprt28, euler(0, 0, 0) * cf(0, 0.3, 0.075))
lwld31 = weld(rprt1, lprt31, lprt28, euler(0, 0, 0) * cf(0, 0.6, 0))
lwld32 = weld(rprt1, lprt32, lprt31, euler(0, 0, 0) * cf(0, 0.25, -0.06))
lwld33 = weld(rprt1, lprt33, lprt32, euler(0, 0, 0) * cf(0, -0.25, 0))
lwld34 = weld(rprt1, lprt34, lprt32, euler(3.14, 0, 0) * cf(0, 0.25, 0))
lwld35 = weld(rprt1, lprt35, lprt26, euler(0, 0, 0) * cf(0, -0.7, 0.1))
lwld36 = weld(rprt1, lprt36, lprt26, euler(0, 0, 0) * cf(0, -1, 0.1))
for _,c in pairs(modelzorz:children()) do
  table.insert(Weapon, c)
end
for _,c in pairs(rprt1:children()) do
  if c.className == "Motor" then
    table.insert(Welds, c)
  end
end
local hitbox = part(3, modelzorz, 0, 1, BrickColor.new("Black"), "Hitbox2", vt())
hitbox.Anchored = false
local hbwld = weld(hitbox, hitbox, RootPart, euler(0, 0, 0) * cf(0, 0, 0))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
hitbox2.Anchored = true
local hitboxCF = cf(0, 0, 0)
hboxpos = Instance.new("BodyPosition", nil)
hboxpos.P = 2000
hboxpos.D = 100
hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
hitboxweld = function()
  hbwld.Parent = modelzorz
  hbwld.Part0 = hitbox
  hbwld.Part1 = lprt17
end
local gunpart = rprt36
local gunpart2 = rprt22
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Joy"
  script.Parent = Tool
end
Bin = script.Parent
if Bin.Name == "Trooper: Gunslinger" then
  Bin.Name = "Joy"
end
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end
clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5 / s 
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00 - m11 - m22 + 1) 
			local recip = 0.5 / s 
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip 
		elseif i == 1 then 
			local s = math.sqrt(m11 - m22 - m00 + 1) 
			local recip = 0.5 / s 
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip 
		elseif i == 2 then 
			local s = math.sqrt(m22 - m00 - m11 + 1) 
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip 
		end 
	end 
end
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w * xs, w * ys, w * zs 
	local xx = x * xs 
	local xy = x * ys 
	local xz = x * zs 
	local yy = y * ys 
	local yz = y * zs 
	local zz = z * zs 
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((1 - t) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta  
		else 
			startInterp = 1 - t 
			finishInterp = t 
		end 
	else 
		if (1 + cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((t - 1) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta 
		else 
			startInterp = t - 1 
			finishInterp = t 
		end 
	end 
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp 
end
hideanim = function()
  equipped = false
  for i = 0, 1, 0.1 do
    swait()
    GunLeft(0.7)
    GunRight(0.7)
    rwld1.C0 = clerp(rwld1.C0, euler(2.2, 0, -0.6) * cf(-0.2, 0.7, -0.6), 0.4)
    lwld1.C0 = clerp(lwld1.C0, euler(2.2, 0, 0.6) * cf(0.2, 0.7, -0.6), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.2, 0.3, -0.5) * euler(0.2, 0, -1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-0.2, 0.3, -0.5) * euler(0.2, 0, 1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  lwld1.Part1 = RightLeg
  lwld1.C0 = euler(2.2, -0.5, 0) * cf(-0.5, -1.5, 0.5)
  rwld1.Part1 = LeftLeg
  rwld1.C0 = euler(2.2, 0.5, 0) * cf(0.5, -1.5, 0.5)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
end
mdec.Parent = Decrease
equipanim = function()
  equipped = true
  mdec.Parent = nil
  mdec2.Parent = Decrease
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(0.2, 0.3, -0.5) * euler(0.2, 0, -1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-0.2, 0.3, -0.5) * euler(0.2, 0, 1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
  end
  rwld1.Part1 = RightArm
  lwld1.Part1 = LeftArm
  rwld1.C0 = euler(2.2, 0, -0.6) * cf(-0.2, 0.7, -0.6)
  lwld1.C0 = euler(2.2, 0, 0.6) * cf(0.2, 0.7, -0.6)
end
StaggerAnim = function()
  attack = true
  removeControl()
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    if Rooted.Value == false then
      Torso.Velocity = RootPart.CFrame.lookVector * -40
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    for i = 0, 1, 0.2 do
      swait()
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * -40
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.5, 0, -0.4), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.5), 0.4)
      if StunT.Value <= Stun.Value then
        break
      end
    end
    do
      for i = 0, 1, 0.1 do
        swait()
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.8) * euler(0, -0.4, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.6) * euler(0, 0.4, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
        if StunT.Value <= Stun.Value then
          break
        end
      end
      do
        for i = 1, 40 do
          swait()
          if StunT.Value <= Stun.Value then
            break
          end
        end
        do
          resumeControl()
          combo = 0
          attack = false
        end
      end
    end
  end
end
StaggerHitt = function()
  attack = true
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.9), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  attack = false
end
StunAnim = function()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.4) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.3), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.8, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1.2, 0, 0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(0.1, 0, 0.7), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -1), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1.57, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, -0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.3), 0.25)
  end
  local gairost = Instance.new("BodyGyro")
  gairost.Parent = RootPart
  gairost.maxTorque = Vector3.new(400000, 0, 400000) * math.huge
  gairost.P = 20000
  gairost.cframe = cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 3.14, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
  end
  for i = 1, 70 do
    swait()
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    Stun.Value = 0
    gairost.cframe = RootPart.CFrame
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1, 0, -4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1) * euler(0.2, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, 0.2) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 1), 0.3)
  end
  resumeControl()
  gairost.Parent = nil
  dec.Parent = nil
  Stun.Value = 0
  combo = 0
  Stunned.Value = false
  attack = false
  for i = 1, 10 do
    swait()
    Stun.Value = 0
  end
end
GunLeft = function(i)
  gunleft = true
  lwld2.C0 = clerp(lwld2.C0, euler(0.5, 0, 0) * cf(0, 0, 0), i)
  lwld6.C0 = clerp(lwld6.C0, cf(0, -1, -0.3) * euler(1.07, 0, 0), i)
  lwld23.C0 = clerp(lwld23.C0, euler(0, 0, 0) * cf(0, 0.25, 0.1), i)
end
TonfaLeft = function(i)
  gunleft = false
  lwld2.C0 = clerp(lwld2.C0, euler(3.14, 0, 0) * cf(0, 0, 0), i)
  lwld6.C0 = clerp(lwld6.C0, cf(0, -0.8, -0.5) * euler(1.57, 0, 0), i)
  lwld23.C0 = clerp(lwld23.C0, euler(0, 0, 0) * cf(0, 0.9, 0.1), i)
end
GunRight = function(i)
  gunright = true
  rwld2.C0 = clerp(rwld2.C0, euler(0.5, 0, 0) * cf(0, 0, 0), i)
  rwld6.C0 = clerp(rwld6.C0, cf(0, -1, -0.3) * euler(1.07, 0, 0), i)
  rwld23.C0 = clerp(rwld23.C0, euler(0, 0, 0) * cf(0, 0.25, 0.1), i)
end
TonfaRight = function(i)
  gunright = false
  rwld2.C0 = clerp(rwld2.C0, euler(3.14, 0, 0) * cf(0, 0, 0), i)
  rwld6.C0 = clerp(rwld6.C0, cf(0, -0.8, -0.5) * euler(1.57, 0, 0), i)
  rwld23.C0 = clerp(rwld23.C0, euler(0, 0, 0) * cf(0, 0.9, 0.1), i)
end
attackone = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    TonfaLeft(0.6)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 1) * euler(0, 1.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -0.7) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.4) * euler(0, 0.57, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.4) * euler(0, -2.57, 0.4), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145095", lprt17, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 3, 1)
  hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.4 do
    swait()
    TonfaLeft(0.5)
    hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 1) * euler(0, 1.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, 0, -0.7) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.4) * euler(0, 2.57, -0.4), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.4) * euler(0, -0.57, 0.1), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC427: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC427: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.15 do
    swait()
    hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 1, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 0, 1) * euler(0, 1.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, 0, 0.2) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.4) * euler(0, 2.57, -0.4), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.4) * euler(0, -0.57, 0.1), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC638: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC638: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
attacktwo = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    TonfaRight(0.6)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.4) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.7, 0, 0.5) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -0.4) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, -0.4) * euler(0, 2.77, -0.4), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, 0.4) * euler(0, -0.37, 0.1), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC186: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC186: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145204", rprt17, 1, 1.2)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 3, 1)
  hitboxCF = rprt17.CFrame * cf(0, -0.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.4 do
    swait()
    TonfaRight(0.5)
    hitboxCF = rprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(-0.05, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 0) * euler(0, 1.4, 0) * euler(0, -0.2, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.4) * euler(0, 0.67, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.4) * euler(0, -2.47, 0.4), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC439: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC439: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.15 do
    swait()
    TonfaRight(0.4)
    hitboxCF = rprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.2) * euler(-0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.8, 0, 0) * euler(0, 1.5, 0) * euler(0, -0.2, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.6), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.4) * euler(0, 0.47, -0.1), 0.2)
    LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.4) * euler(0, -2.67, 0.4), 0.2)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC659: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC659: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
attackthree = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    TonfaLeft(0.6)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.4, 0, 0.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(1.57, 0, 1) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0.1), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC180: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145095", lprt17, 1, 1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 3, 1)
  hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.15 do
    swait()
    TonfaLeft(0.6)
    hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = RootCF * euler(0, 0, -0.5 + 6.28 * i)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, -1.57, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC423: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC423: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, -1.57) * euler(0, -1.2, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC586: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC586: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
attackfour = function()
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    TonfaLeft(0.6)
    TonfaRight(0.6)
    rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
    lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1.8) * euler(0, 2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -1.8) * euler(0, -2, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC219: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  so("199145146", lprt17, 1, 1.1)
  so("199145146", rprt17, 1, 1.1)
  hbwld.Parent = nil
  hboxpos.Parent = hitbox
  hitbox.Parent = modelzorz
  hitbox.Size = vt(0.5, 3, 1)
  hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
  hitbox.CFrame = hitboxCF
  for i = 0, 1, 0.13 do
    swait()
    TonfaLeft(0.7)
    TonfaRight(0.7)
    hitboxCF = lprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    hitboxCF = rprt17.CFrame * cf(0, -0.2, 0)
    hitbox.CFrame = hitboxCF
    MagniDamage(hitbox, 3, 4, 6, math.random(20, 30), "Normal", RootPart, 0.5, 2, (math.random(3, 8)), nil, true, false)
    rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
    lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -1.2) * euler(0, 1.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 1.2) * euler(0, -1.5, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
        -- DECOMPILER ERROR at PC546: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC546: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  hitbox.Parent = modelzorz
  hitbox.Size = vt()
  hitboxweld()
  hboxpos.Parent = nil
  attack = false
end
GunStance = function()
  attack = true
  gun = true
  quickoblit = true
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 0.7
  --Humanoid.AutoRotate = false
for i = 0, 1, 0.15 do
    swait()
    if shootgun == 1 then
      GunRight(1)
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0.1, 0, 0), 0.4)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1.57), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.4)
      LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.4)
      --[[if Stagger.Value ~= true and StunT.Value > Stun.Value then -- 3
        if StaggerHit.Value == true then -- 4
          break
end
end
end--]]
	elseif shootgun == 2 then
        GunLeft(1)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.57) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1.57), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.7, 0, -1) * euler(0, 1, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.5, -1, -0.2) * euler(0, 1.57, 0) * euler(-0.4, 1.57, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-0.5, -1, 0.2) * euler(0, -1.57, 0) * euler(0.2, 1.57, 0), 0.4)
      --[[if Stagger.Value ~= true and StunT.Value > Stun.Value then do -- 5
          if StaggerHit.Value == true then
            break
end
end
end--]]
    end
  end
  gairo = Instance.new("BodyGyro")
  gairo.Parent = RootPart
  gairo.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
  gairo.P = 20000
  gairo.cframe = RootPart.CFrame
  local offset = nil
  while gun == true do
      if gun == true then
        swait()
      --[[if Stagger.Value ~= true and StunT.Value > Stun.Value then
        if StaggerHit.Value == true then
end
else--]]
          local gunpos = vt(MMouse.Hit.p.x, Head.Position.Y, MMouse.Hit.p.z)
          offset = (gunpart.Position.y - MMouse.Hit.p.y) / 60
          mag = (gunpart.Position - MMouse.Hit.p).magnitude / 66
          offset = offset / mag
          newpos = vt(MMouse.Hit.p.x, Torso.Position.Y, MMouse.Hit.p.z)
          MoveCF = cf(RootPart.Position, newpos)
gairo.cframe = cf(Head.Position, gunpos)
          local mpos = Torso.CFrame * euler(0, 0, 0)
          local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
          local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
          if shootgun == 1 then
            Neck.C0 = necko * euler(0, 0, -1.57) * euler(offset, 0, 0)
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
			LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
            RootJoint.C0 = RootJoint.C0:lerp(CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, 1.57) * cf(0, 0, -0.2), 0.3)
elseif shootgun == 2 then
	Neck.C0 = necko * euler(0, 0, 1.57) * euler(offset, 0, 0)
            RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
			LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
            RootJoint.C0 = RootJoint.C0:lerp(CFrame.Angles(x, y, z) * euler(0, -3.14, 0) * euler(0, 0, -1.57) * cf(0, 0, 0.2), 0.3)
end
end
      end
    --[[Neck.C0 = necko * euler(0, 0, 1.57) * euler(offset, 0, 0)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), 0.3)
    RootJoint.C0 = RootJoint.C0:lerp(CFrame.Angles(x, y, z) * euler(0, 3.14, 0) * euler(0, 0, -1.57) * cf(0, 0, -0.2), 0.3)--]]
  do
    dec.Parent = nil
    if shoot == true then
      quickoblit = false
      for i = 0, 1, 0.15 do
        swait()
        if shootgun == 1 then
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(1, 0, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.7, 0, 1) * euler(0, -1, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        elseif shootgun == 2 then
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.7, 0, -1) * euler(0, 1, 0), 0.4)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        end
      end
      if shootgun == 1 then
        shootgun = 2
        gunpart = lprt36
        gunpart2 = lprt22
      else
        gunpart = rprt36
        gunpart2 = rprt22
        shootgun = 1
      end
      if quickoblit == true then
        local oldgunpart = gunpart
        local oldgunpart2 = gunpart2
        if shootgun == 1 then
          gunpart = lprt36
          gunpart2 = lprt22
        else
          gunpart = rprt36
          gunpart2 = rprt22
        end
        for i = 0, 1, 0.2 do
          swait()
          if shootgun == 2 then
            RootJoint.C0 = RootJoint.C0 * euler(0, 0, -1)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(1, 0, -1.5), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.8) * euler(1.2, 0, 1) * euler(0, -1, 0), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          else
            RootJoint.C0 = RootJoint.C0 * euler(0, 0, 1)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(1.2, 0, -1) * euler(0, 1, 0), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(1, 0, 1.5), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          end
        end
        for i = 0, 1, 0.2 do
          swait()
          if i < 0.6 then
            so("203691885", gunpart, 1, 1)
            Shootcombo2()
          end
          if shootgun == 2 then
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(-0.5, 0, 0) * euler(0, 1.57, 0), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.5, 0, -1) * euler(0, 0, 0), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          else
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 1), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 1) * euler(0, 0, 0), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(-0.5, 0, 0) * euler(0, -1.57, 0), 0.4)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
          end
        end
        gunpart = oldgunpart
        gunpart2 = oldgunpart2
      end
    end
    do
      quickoblit = false
      gairo.Parent = nil
      Humanoid.AutoRotate = true
      shoot = false
      attack = false
    end
  end
end
do1 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[1] and mana.Value >= 20 then
    attack = true
    cooldowns[1] = 0
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    so("203691857", rprt1, 1, 1)
    so("203691857", lprt1, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      TonfaLeft(1)
      TonfaRight(1)
      rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
      lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.3)
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -1.2) * euler(0, 0, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 1.2) * euler(0, 0, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC268: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC268: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      if StaggerHit.Value ~= true or Ammo > 0 then
        for i = 1, Ammo / 2 do
          Bullet(rprt22)
          Bullet(lprt22)
        end
      end
      do
        mana.Value = mana.Value - 20
        Ammo = 16
        so("203691878", rprt1, 1, 1)
        so("203691878", lprt1, 1, 1)
        for i = 0, 1, 0.07 do
          swait()
          GunLeft(1)
          GunRight(1)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -1), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          if Stagger.Value ~= true and StunT.Value > Stun.Value then
            do
              if StaggerHit.Value == true then
                break
              end
              -- DECOMPILER ERROR at PC417: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC417: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
        dec.Parent = nil
        attack = false
      end
    end
  end
end
do2 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[2] then
    attack = true
    cooldowns[2] = 0
    num = 0
    canshoot = false
    if mana.Value >= 20 and Ammo >= 2 then
      mana.Value = mana.Value - 20
      Ammo = Ammo - 2
      canshoot = true
    else
      so("203691822", rprt22, 1, 1)
      so("203691822", lprt22, 1, 1)
    end
    for i = 0, 1, 0.1 do
      swait()
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * -50
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(-0.8, 0, 0), 0.2)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.8, 0) * euler(0.9, 0, -0.1) * euler(0, 0.2, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.8, 0) * euler(1, 0, 0.05) * euler(0, -0.4, 0), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.5), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          if canshoot == true then
            if num == 2 then
              Bullet(lprt22)
              MouseLook = cf((lprt22.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
              TrueAim("Left", MouseLook.lookVector)
              so("203691885", lprt36, 1, math.random(80, 120) / 100)
              MagicCircle(BrickColor.new(NewCol), cf(lprt36.Position), 1, 1, 1, 1, 1, 1, 0.1)
            else
              if num == 4 then
                num = 0
                Bullet(rprt22)
                MouseLook = cf((rprt22.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
                TrueAim("Right", MouseLook.lookVector)
                so("203691885", rprt36, 1, math.random(80, 120) / 100)
                MagicCircle(BrickColor.new(NewCol), cf(rprt36.Position), 1, 1, 1, 1, 1, 1, 0.1)
              end
            end
          end
          num = num + 1
          -- DECOMPILER ERROR at PC372: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC372: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      if Rooted.Value == false then
        Torso.Velocity = RootPart.CFrame.lookVector * -50
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0.5, 0, 0), 0.3)
      RootJoint.C0 = RootJoint.C0 * euler(-0.4, 0, 0)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -1.2) * euler(0, 1.5, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 1.2) * euler(0, -1.5, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, 0, -0.8) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, 0, -0.8) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.5), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
          -- DECOMPILER ERROR at PC560: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC560: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    attack = false
  end
end
do3 = function()
  XVbullet = false
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[3] then
    attack = true
    cooldowns[3] = 0
    XVbullet = true
    attack = false
    local blocknum = 0
    while XVbullet == true do
      swait()
      blocknum = blocknum + 1
      if blocknum >= 10 then
        blocknum = 0
        MagicBlock(BrickColor.new(NewCol), cf(gunpart.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 1, 1, 1, 0.1, 1)
      end
    end
  end
end
do4 = function()
  if obliterate == true then
    obliterate = false
    return 
  end
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldownmax <= cooldowns[4] and mana.Value >= 3 then
    attack = true
    obliterate = true
    Humanoid.AutoRotate = false
    local dec = Instance.new("NumberValue", Decrease)
    dec.Name = "DecreaseMvmt"
    dec.Value = 10
    Look = RootPart.CFrame.lookVector
    local anim = 0
    local oldanim = 0
    so("203691326", rprt36, 1, 1.5)
    so("203691326", lprt36, 1, 1.5)
    for i = 1, 0, -0.1 do
      swait()
      rprt4n.Transparency = i
      rprt9n.Transparency = i
      rprt14n.Transparency = i
      rprt15n.Transparency = i
      rprt16n.Transparency = i
      rprt23n.Transparency = i
      rprt24n.Transparency = i
      rprt25n.Transparency = i
      lprt4n.Transparency = i
      lprt9n.Transparency = i
      lprt14n.Transparency = i
      lprt15n.Transparency = i
      lprt16n.Transparency = i
      lprt23n.Transparency = i
      lprt24n.Transparency = i
      lprt25n.Transparency = i
      Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.5)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, 0, -1.2) * euler(0, 1.5, 0), 0.5)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7, 0, 1.2) * euler(0, -1.5, 0), 0.5)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.5)
      LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.5)
      if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value ~= true then
        do
          if Humanoid.Health <= 0 then
            break
          end
          -- DECOMPILER ERROR at PC276: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC276: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    dec.Value = 0.2
    for i = 1, 15 do
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        if StaggerHit.Value == true then
          break
        end
      end
      if mana.Value >= 3 then
        if obliterate == false then
          break
        end
        mana.Value = mana.Value - 2
        repeat
          if anim == 1 then
            anim = 2
          else
            if anim == 2 then
              anim = 3
            else
              if anim == 3 then
                anim = 2
              end
            end
          end
          if i == 1 then
            anim = 1
          end
        until anim ~= oldanim
        oldanim = anim
        for i = 0, 1, 0.25 do
          swait()
          GunRight(1)
          GunLeft(1)
          offset1 = (lprt36.Position.y - MMouse.Hit.p.y) / 60
          mag1 = lprt36.Position - MMouse.Hit.p / 66
          offset1 = offset1 / mag1
          offset2 = (rprt36.Position.y - MMouse.Hit.p.y) / 60
          mag2 = rprt36.Position.y - MMouse.Hit.p.magnitude / 66
          offset2 = offset2 / mag2
          if anim == 1 then
            Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, -0.1) * euler(0, 0.2, 0), 0.4)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset2, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0.1) * euler(0, -0.2, 0), 0.4)
            --LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset1, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
          else
            if anim == 2 then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.4)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, -0.1) * euler(0.2, 0, 0), 0.5)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset2, 0, 0), 0.4)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, 0) * euler(0, 0, 0), 0.4)
              --LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset1, 0, 0), 0.4)
              RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
            else
              if anim == 3 then
                Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0), 0.4)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.4)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 0) * euler(0, 0, 0), 0.4)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset2, 0, 0), 0.4)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0.1) * euler(0.2, 0, 0), 0.5)
                --LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(offset1, 0, 0), 0.4)
                RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.4)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.4)
              end
            end
          end
        end
        do
          local shoot = 1
          if anim == 2 then
            shoot = 2
          else
            if anim == 3 then
              shoot = 1
            end
          end
          if shoot == 2 then
            Bullet(lprt22)
            MouseLook = cf((lprt22.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
            TrueAim("Left")
            so("203691885", lprt36, 1, math.random(80, 120) / 100)
            MagicCircle(BrickColor.new(NewCol), cf(lprt36.Position), 1, 1, 1, 3, 3, 3, 0.1)
          else
            if shoot == 1 then
              Bullet(rprt22)
              MouseLook = cf((rprt22.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
              TrueAim("Right")
              so("203691885", rprt36, 1, math.random(80, 120) / 100)
              MagicCircle(BrickColor.new(NewCol), cf(rprt36.Position), 1, 1, 1, 3, 3, 3, 0.1)
            end
          end
          -- DECOMPILER ERROR at PC963: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC963: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    Humanoid.AutoRotate = true
    dec.Parent = nil
    cooldowns[4] = 0
    attack = false
    for i = 0, 1.1, 0.05 do
      swait()
      rprt4n.Transparency = i
      rprt9n.Transparency = i
      rprt14n.Transparency = i
      rprt15n.Transparency = i
      rprt16n.Transparency = i
      rprt23n.Transparency = i
      rprt24n.Transparency = i
      rprt25n.Transparency = i
      lprt4n.Transparency = i
      lprt9n.Transparency = i
      lprt14n.Transparency = i
      lprt15n.Transparency = i
      lprt16n.Transparency = i
      lprt23n.Transparency = i
      lprt24n.Transparency = i
      lprt25n.Transparency = i
    end
  end
end
Shootcombo = function()
  spread = vt(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100) * gunpart.Position - MMouse.Hit.p / 100
  local MouseLook = cf((gunpart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, gunpart.Position, 8, 10, 0, 1})
  Bullet(gunpart2)
end
Shootcombo2 = function()
  spread = vt(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * gunpart.Position - MMouse.Hit.p.magnitude / 100
  local MouseLook = cf((gunpart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spread)
  table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, gunpart.Position, 6, 8, 0, 1})
  Bullet(gunpart2)
end
XVShot = function()
  local MouseLook = cf((gunpart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
  table.insert(Effects, {MouseLook.lookVector, "Shoot", 30, gunpart.Position, 8, 10, 0, 2})
  Bullet(gunpart2)
end
TrueAim = function(Arm, aim)
  thepart = nil
  if Arm == "Left" then
    thepart = lprt36
  else
    if Arm == "Right" then
      thepart = rprt36
    end
  end
  local target, distance = findNearestTorso(MMouse.Hit.p)
  tehcf = thepart.CFrame * euler(1.57, 0, 0).lookVector
  if aim ~= nil then
    tehcf = aim
  end
  table.insert(Effects, {tehcf, "Shoot", 30, thepart.Position, 6, 8, 0, 3, thepart, target})
  Bullet(gunpart2)
end
Bullet = function(Part)
  bullet = part(3, workspace, 0, 0, BrickColor.new("Bright yellow"), "Bullet", vt())
  bmsh = mesh("CylinderMesh", bullet, "", "", vt(0, 0, 0), vt(0.8, 1.5, 0.8))
  bullet.CanCollide = true
  bullet.CFrame = Part.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100)
  bullet.Velocity = Torso.CFrame.lookVector * math.random(10, 40) + vt(1, 0, 0) * math.random(0, 1000) / 100 + vt(0, 1, 0) * math.random(0, 1000) / 100 + vt(0, 0, 1) * math.random(0, 1000) / 100
  game:GetService("Debris"):AddItem(bullet, 3)
end
DecreaseStat = function(Model, Stat, Amount, Duration)
  if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
    Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
    d = Instance.new("NumberValue", Model.Stats.Decrease)
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = Duration
    game:GetService("Debris"):AddItem(d, 20)
    if Stat == "Damage" then
      d.Name = "DecreaseAtk"
    else
      if Stat == "Defense" then
        d.Name = "DecreaseDef"
      else
        if Stat == "Movement" then
          d.Name = "DecreaseMvmt"
        end
      end
    end
    if Model:findFirstChild("Torso") ~= nil then
      display = ""
      if Stat == "Damage" then
        if Amount > 0 then
          display = "-Damage"
        else
          display = "+Damage"
        end
      else
        if Stat == "Defense" then
          if Amount > 0 then
            display = "-Defense"
          else
            display = "+Defense"
          end
        else
          if Stat == "Movement" then
            if Amount > 0 then
              display = "-Movement"
            else
              display = "+Movement"
            end
          end
        end
      end
      showDamage(Model, display, "Debuff")
    end
    d.Value = Amount
  end
end
GetDist = function(Part1, Part2, magni)
  local targ = Part1.Position - Part2.Position
  local mag = targ.magnitude
  if mag <= magni then
    return true
  else
    return false
  end
end
MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = nil
      for _,d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if mag <= magni and c.Name ~= Player.Name then
              ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(head.Position)
              game:GetService("Debris"):AddItem(ref, 1)
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, 1)
              else
                if hitnum == 2 then
                  so("199149025", ref, 1, 1)
                else
                  if hitnum == 3 then
                    so("199149072", ref, 1, 1)
                  else
                    if hitnum == 4 then
                      so("199149109", ref, 1, 1)
                    else
                      if hitnum == 5 then
                        so("199149119", ref, 1, 1)
                      end
                    end
                  end
                end
              end
              StaggerHit.Value = true
            end
          end
        end
        do
          if d.className == "Part" then
            head = d
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if mag <= magni and c.Name ~= Player.Name then
                if stun == nil then
                  stun = math.random(5, 10)
                end
                local Rang = nil
                if Ranged == false then
                  Rang = true
                end
                local stag = nil
                if shbash == true then
                  stag = true
                end
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
              end
            end
          end
          do
            -- DECOMPILER ERROR at PC184: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
    end
  end
end
findNearestTorso = function(pos)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      --if temp ~= nil and human ~= nil and human.Health > 0 and temp.Position - pos.magnitude < dist then
        local dohit = true
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = false
        end
        if dohit == true then
          torso = temp
			if temp == nil then return nil end
          dist = temp.Position - pos
        end
      --end
    end
  end
  return torso, dist
end
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
LastPoint = Point
effect = function(Color, Ref, LP, P1, returnn)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = LP.p - point1.p
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
  end
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Bright red")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.05})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Bright red")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.05})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end
MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicFire = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Fire", delay, 1, 1, 1, msh})
end
MagicFireWave = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Top"
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Bottom"
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "FireWave", 1, 30, math.random(400, 600) / 100, msh})
end
ElecEffect = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("Bright red"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 3
  yval = math.random() / 3
  zval = math.random() / 3
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.2, x, y, z, xval, yval, zval, msh}
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration, Sound)
  if hit.Parent == nil then
    return 
  end
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(hit.Position)
    game:GetService("Debris"):AddItem(ref, 1)
    hitnum = math.random(1, 5)
    if hitnum == 1 then
      so("199148971", ref, 1, 1)
    else
      if hitnum == 2 then
        so("199149025", ref, 1, 1)
      else
        if hitnum == 3 then
          so("199149072", ref, 1, 1)
        else
          if hitnum == 4 then
            so("199149109", ref, 1, 1)
          else
            if hitnum == 5 then
              so("199149119", ref, 1, 1)
            end
          end
        end
      end
    end
    StaggerHit.Value = true
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    hit = hit.Parent.Parent:findFirstChild("Torso")
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    if Player.Neutral == false then
      if hit.Parent:findFirstChild("Alignment") ~= nil and hit.Parent.Alignment.Value == Player.TeamColor.Color then
        return 
      end
      if game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
        return 
      end
    end
    if Sound == "Shatter" then
      so("199146069", hit, 1, 1)
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = hit.Parent.Humanoid
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim * Atk.Value
    maxim = maxim * Atk.Value
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    Stats = hit.Parent:findFirstChild("Stats")
    if Stats ~= nil then
      invis = Stats:findFirstChild("Invisibility")
      isinvis = Stats:findFirstChild("IsInvisible")
      if (ranged == false or ranged == nil) and invis ~= nil and isinvis.Value == true then
        invis.Value = 0
      end
      enblock = Stats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if Stats:findFirstChild("Defense") ~= nil then
        Damage = Damage / Stats.Defense.Value
        if Damage <= 3 and (ranged == false or ranged == nil or Sound == "Slash") and blocked ~= true then
          hitnum = math.random(1, 5)
          if hitnum == 1 then
            so("199149321", hit, 1, 1)
          else
            if hitnum == 2 then
              so("199149338", hit, 1, 1)
            else
              if hitnum == 3 then
                so("199149367", hit, 1, 1)
              else
                if hitnum == 4 then
                  so("199149409", hit, 1, 1)
                else
                  if hitnum == 5 then
                    so("199149452", hit, 1, 1)
                  end
                end
              end
            end
          end
        else
          if (ranged == false or ranged == nil or Sound == "Slash") and blocked ~= true then
            hitnum = math.random(1, 6)
            if hitnum == 1 then
              so("199149137", hit, 1, 1)
            else
              if hitnum == 2 then
                so("199149186", hit, 1, 1)
              else
                if hitnum == 3 then
                  so("199149221", hit, 1, 1)
                else
                  if hitnum == 4 then
                    so("199149235", hit, 1, 1)
                  else
                    if hitnum == 5 then
                      so("199149269", hit, 1, 1)
                    else
                      if hitnum == 6 then
                        so("199149297", hit, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if Damage <= 3 and staghit == true and ranged ~= true then
          StaggerHit.Value = true
        end
      end
      if Stats:findFirstChild("Stun") ~= nil then
        if blocked == true then
          incstun = incstun / 2
        end
        if Stats.Stun.Value < Stats.StunThreshold.Value then
          Stats.Stun.Value = Stats.Stun.Value + incstun
        end
      end
      if Stats:findFirstChild("Stagger") ~= nil and stagger == true then
        Stats.Stagger.Value = true
      end
    end
    if blocked == true then
		if hit.Parent:findFirstChild("Humanoid") then
			hit.Parent:findFirstChild("Humanoid"):TakeDamage(Damage)
		end
      showDamage(hit.Parent, "Block", "Damage")
      if ranged ~= true then
        enblock.Value = false
        Stagger.Value = true
        hitnum = math.random(1, 2)
        if hitnum == 1 then
          so("199148933", hit, 1, 1)
        else
          if hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      end
      if ranged == true and Sound == "Slash" then
        hitnum = math.random(1, 2)
        if hitnum == 1 then
          so("199148933", hit, 1, 1)
        else
          if hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      end
    else
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
    damageFunc:InvokeServer(h, Damage)
  end), h, Damage)
      if obliterate == false then
        passive.Value = passive.Value - 0.04
      else
        passive.Value = passive.Value - 0.02
      end
	if hit.Parent:findFirstChild("Humanoid") then
			hit.Parent:findFirstChild("Humanoid"):TakeDamage(Damage)
		end
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Shatter" then
          DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
        else
          DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
        end
      end
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 5000
        bodvol.maxForce = Vector3.new(8000, 8000, 8000)
        bodvol.Parent = hit
        rl = Instance.new("BodyAngularVelocity")
        rl.P = 3000
        rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        rl.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      else
        do
          if Type == "Shatter" then
            for i = 1, 10 do
              BreakEffect(BrickColor.new("Cyan"), hit.CFrame, math.random(20, 80) / 100, math.random(2, 10), math.random(20, 80) / 100)
            end
          else
            do
              if Type == "Knockdown2" then
                hum = hit.Parent.Humanoid
                local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
                local bodvol = Instance.new("BodyVelocity")
                bodvol.velocity = angle * knockback
                bodvol.P = 5000
                bodvol.maxForce = Vector3.new(8000, 8000, 8000)
                bodvol.Parent = hit
                game:GetService("Debris"):AddItem(bodvol, 0.5)
              else
                do
                  if Type == "Normal" then
                    vp = Instance.new("BodyVelocity")
                    vp.P = 500
                    vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                    if KnockbackType == 1 then
                      vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                    else
                      if KnockbackType == 2 then
                        vp.velocity = Property.CFrame.lookVector * knockback
                      end
                    end
                    game:GetService("Debris"):AddItem(vp, 0.5)
                    if knockback > 0 then
                      vp.Parent = hit.Parent.Torso
                    end
                  end
                  debounce = Instance.new("BoolValue")
                  debounce.Name = "DebounceHit"
                  debounce.Parent = hit.Parent
                  debounce.Value = true
                  game:GetService("Debris"):AddItem(debounce, Delay)
                  c = Instance.new("ObjectValue")
                  c.Name = "creator"
                  c.Value = Player
                  c.Parent = h
                  game:GetService("Debris"):AddItem(c, 0.5)
                  CRIT = false
                end
              end
            end
          end
        end
      end
    end
  end
end
showDamage = function(Char, Dealt, Type)
  m = Instance.new("Model")
  m.Name = "Effect"
  c = Instance.new("Part")
  c.Transparency = 1
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  b = Instance.new("BillboardGui", c)
  b.Size = UDim2.new(5, 0, 5, 0)
  b.AlwaysOnTop = true
  damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  if Type == "Damage" then
    damgui.Font = "SourceSans"
    if Dealt == "Block" then
      damgui.TextColor3 = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          damgui.TextColor3 = BrickColor.new("Bright yellow").Color
        else
          damgui.TextColor3 = BrickColor.new("Really red").Color
          damgui.Font = "SourceSansBold"
        end
      end
    end
  else
    if Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    else
      if Type == "Interrupt" then
        damgui.TextColor3 = BrickColor.new("New Yeller").Color
      end
    end
  end
  damgui.TextScaled = true
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(545000, 545000, 545000)
  if Type == "Damage" then
    f.position = c.Position + Vector3.new(0, 3, 0)
  else
    if Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 5, 0)
    end
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 5)
  table.insert(Effects, {m, "showDamage", damgui, f, 10, 1, 15, 50, 100})
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end
combo = 0
ob1d = function(mouse)
  if gun == true then
    shoot = true
    if Ammo > 0 then
      Ammo = Ammo - 1
      so("203691885", gunpart, 1, 1)
      if XVbullet == false then
        Shootcombo()
      else
        XVbullet = false
        XVShot()
      end
    else
      so("203691822", gunpart, 1, 1)
    end
    gun = false
  end
  if attack == true or equipped == false then
    return 
  end
  hold = true
  if combo == 0 then
    combo = 1
    attackone()
  else
    if combo == 1 then
      combo = 2
      attacktwo()
    else
      if combo == 2 then
        combo = 3
        attackthree()
      else
        if combo == 3 then
          combo = 0
          attackfour()
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        swait()
      end
    end
    if attack == false then
      combo = 0
    end
  end))
end
ob1u = function(mouse)
  hold = false
end
buttonhold = false
fenbarmove1.MouseButton1Click:connect(do1)
fenbarmove2.MouseButton1Click:connect(do2)
fenbarmove3.MouseButton1Click:connect(do3)
fenbarmove4.MouseButton1Click:connect(do4)
eul = 0
equipped = false
key = function(key)
  if key == "e" and gun == true then
    gun = false
  end
  if key == "v" and obliterate == true then
    do4()
  end
  if attack == true then
    return 
  end
  if key == "f" then
    pressedf = true
    fnumb = 0
    attack = true
    if equipped == false then
      equipped = true
      RSH = ch.Torso["Right Shoulder"]
      LSH = ch.Torso["Left Shoulder"]
      RSH.Parent = nil
      LSH.Parent = nil
      RW.Name = "Right Shoulder"
      RW.Part0 = ch.Torso
      RW.C0 = cf(1.5, 0.5, 0)
      RW.C1 = cf(0, 0.5, 0)
      RW.Part1 = ch["Right Arm"]
      RW.Parent = ch.Torso
      LW.Name = "Left Shoulder"
      LW.Part0 = ch.Torso
      LW.C0 = cf(-1.5, 0.5, 0)
      LW.C1 = cf(0, 0.5, 0)
      LW.Part1 = ch["Left Arm"]
      LW.Parent = ch.Torso
      Animate.Parent = nil
      equipanim()
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      Animate.Parent = Humanoid
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
    end
    attack = false
  end
  if equipped == false then
    return 
  end
  if key == "e" and gun == false then
    GunStance()
  end
  if key == "z" then
    do1()
  end
  if key == "x" then
    do2()
  end
  if key == "c" then
    do3()
  end
  if key == "v" then
    do4()
  end
  -- DECOMPILER ERROR at PC169: Unhandled construct in 'MakeBoolean' P1

  if key ~= "h" or attack == false then
    RecentEnemy.Value = nil
  end
end
key2 = function(key)
end
s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
  MMouse = mouse
end
ds = function(mouse)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Trooper loaded.")
local mananum = 0
local donum = 0
local stunnum = 0
local passivenum = 0
local staggeranim = false
local stunanim = false
local Point, LastPoint = nil, nil
local moving = 0
local walk = 0
local walkforw = true
while 1 do
  swait()
  if Humanoid.Health <= 0 then
    attack = true
    resumeControl()
    modelzorz.Parent = workspace
    game:GetService("Debris"):AddItem(modelzorz, 30)
    for i = 1, #Weapon do
      Weapon[i].Parent = modelzorz
      Weapon[i].CanCollide = true
    end
    for i = 1, #Welds do
      if Welds[i].Part0.Parent == Character or Welds[i].Part1.Parent == Character then
        Welds[i].Parent = nil
      else
        Welds[i].Parent = rprt1
      end
    end
  end
  do
    if fnumb < 21 then
      fnumb = fnumb + 1
      if pressedf == false then
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency - 0.025
        tellbar.TextTransparency = tellbar.TextTransparency - 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency - 0.05
      else
        if fnumb == 20 then
          fenframe5.Parent = nil
          print("daigui")
        end
        fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency + 0.025
        tellbar.TextTransparency = tellbar.TextTransparency + 0.05
        tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency + 0.05
      end
    end
    if hbwld.Parent == nil then
      hitbox2.Name = "Hitbox"
    else
      hitbox2.Name = "Hitbox2"
    end
    hitbox2.Parent = hitbox.Parent
    hitbox2.Size = hitbox.Size
    hitbox2.CFrame = hitboxCF
    hboxpos.position = hitbox2.Position + vt(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100)
    passivenum = passivenum + 1
    if 100 <= passivenum then
      passivenum = 0
      if passive.Value < 0 then
        passive.Value = passive.Value / 2
        if 0 < passive.Value then
          passive.Value = 0
        end
      end
    end
    if Stagger.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerAnim()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end))
    end
    if StaggerHit.Value == true and staggeranim == false then
      coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerHitt()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end))
    end
    if Mvmt.Value < 0 or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
      Humanoid.WalkSpeed = 0
    else
      Humanoid.WalkSpeed = 16 * Mvmt.Value
    end
    if StunT.Value <= Stun.Value and stunanim == false then
      coroutine.resume(coroutine.create(function()
  stunanim = true
  while attack == true do
    swait()
  end
  StunAnim()
  Stun.Value = 0
  stunanim = false
end))
    end
    local stunnum2 = 40
    if stunnum2 <= stunnum then
      if 0 < Stun.Value then
        Stun.Value = Stun.Value - 1
      end
      stunnum = 0
    end
    stunnum = stunnum + 1
    if 0.5 <= donum then
      handidle = true
    else
      if donum <= 0 then
        handidle = false
      end
    end
    if handidle == false then
      donum = donum + 0.003
    else
      donum = donum - 0.003
    end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
    local velderp = RootPart.Velocity.y
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true then
      if attack == false then
        idle = idle + 1
      else
        idle = 0
      end
      if (500 <= idle and attack ~= false) or Anim == "Walk" then
        if walkforw == true then
          RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
        else
          RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
        end
      else
        RH.C1 = clerp(RH.C1, RHC1, 0.2)
        LH.C1 = clerp(LH.C1, LHC1, 0.2)
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.2)
          Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.8) * euler(0, 0.3, 0), 0.2)
          RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.8) * euler(0, -0.3, 0), 0.2)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 1.2), 0.2)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -1.2), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false then
              if gunleft == true and gunright == true then
                rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.1, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.5), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6 - (donum) / 5, 0, 0.3 + (donum) / 7) * euler(0, 0.2, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.7 - (donum) / 5, 0, 0.4 - (donum) / 7) * euler(0, -1.57, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.07, -0.1), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -2.07, 0.4), 0.2)
              else
                if gunleft == false and gunright == false then
                  rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                  lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.8), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0.8), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6 - (donum) / 2, 0, 0.6 + (donum) / 2) * euler(0, 1.57, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.7 - (donum) / 2, 0, -0.2 - (donum) / 2) * euler(0, -1.57, 0), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.4) * euler(0, 0.77, -0.1), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-0.9, -0.9, -0.4) * euler(0, -2.37, 0.4), 0.2)
                else
                  rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                  lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.15)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3 - (donum) / 3, 0, 0.3 + (donum) / 3) * euler(0, 0.6, 0), 0.2)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3 - (donum) / 3, 0, -0.3 - (donum) / 3) * euler(0, -0.6, 0), 0.2)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, 0.1), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.2)
                end
              end
            end
          else
            if 2 < torvel and torvel < 30 and hitfloor ~= nil then
              Anim = "Walk"
              walk = walk + 1
              if 15 - 5 * Mvmt.Value <= walk then
                walk = 0
                if walkforw == true then
                  walkforw = false
                else
                  if walkforw == false then
                    walkforw = true
                  end
                end
              end
              if attack == false then
                rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.2)
                lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.2)
                Neck.C0 = clerp(Neck.C0, necko * euler(0.05, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5) * euler(0, 0.6, 0), 0.2)
                RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, -0.6, 0), 0.2)
                LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.2)
              end
            else
              if 30 <= torvel and hitfloor ~= nil then
                Anim = "Run"
                if attack == false then
                  rwld1.C0 = clerp(rwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.4)
                  lwld1.C0 = clerp(lwld1.C0, euler(1.57, 0, 0) * cf(0, 0.9, -0.2), 0.4)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5) * euler(0, 0.6, 0), 0.4)
                  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5) * euler(0, -0.6, 0), 0.4)
                  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.4), 0.4)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, -0.4), 0.4)
                end
              end
            end
          end
        end
      end
    end
    if 0 < #Effects then
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
            if Thing[2] == "Shoot" then
              local Look = Thing[1]
              local move = 30
              if Thing[8] == 3 then
                move = 10
              end
              local hit, pos = rayCast(Thing[4], Thing[1], move, modelzorz)
              if Thing[10] ~= nil then
                da = pos
                cf2 = cf(Thing[4], Thing[10].Position)
                cfa = cf(Thing[4], pos)
                tehCF = cfa:lerp(cf2, 0.2)
                Thing[1] = tehCF.lookVector
              end
              local mag = Thing[4] - pos
              MagicHead(BrickColor.new(NewCol), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
              if Thing[8] == 2 then
                MagicRing(BrickColor.new(NewCol), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0) * euler(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
              end
              Thing[4] = Thing[4] + Look * move
              Thing[3] = Thing[3] - 1
              if 2 < Thing[5] then
                Thing[5] = Thing[5] - 0.3
                Thing[6] = Thing[6] - 0.3
              end
              if hit ~= nil then
                Thing[3] = 0
                if Thing[8] == 1 or Thing[8] == 3 then
                  Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, 2, (math.random(1, 5)), nil, nil, true)
                else
                  if Thing[8] == 2 then
                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0.1, 2, (math.random(3, 8)), nil, nil, true, "Defense", 0.1, 200)
                    if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
                      ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                      ref.Anchored = true
                      ref.CFrame = cf(pos)
                      so("161006093", ref, 1, 1.2)
                      game:GetService("Debris"):AddItem(ref, 0.2)
                      MagicBlock(BrickColor.new(NewCol), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
                      MagicRing(BrickColor.new("Bright yellow"), cf(ref.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
                      MagniDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", ref, 0, 1, (math.random(3, 8)), nil, nil, true, "Defense", 0.05, 300)
                    end
                  end
                end
                ref = part(3, workspace, 0, 1, BrickColor.new("Really red"), "Reference", vt())
                ref.Anchored = true
                ref.CFrame = cf(pos)
                MagicCircle(BrickColor.new(NewCol), cf(pos), 5, 5, 5, 1, 1, 1, 0.07)
                game:GetService("Debris"):AddItem(ref, 1)
              end
              if Thing[3] <= 0 then
                table.remove(Effects, e)
              end
            end
            do
              do
                if Thing[2] == "CylinderClang" then
                  if Thing[3] <= 1 then
                    Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                    Thing[7] = Thing[1].CFrame
                    effect("New Yeller", 0, Thing[8], Thing[7])
                    Thing[8] = Thing[7]
                    Thing[3] = Thing[3] + Thing[4]
                  else
                    Part.Parent = nil
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] == "FireWave" then
                  if Thing[3] <= Thing[4] then
                    Thing[1].CFrame = Thing[1].CFrame * euler(0, 1, 0)
                    Thing[3] = Thing[3] + 1
                    Thing[6].Scale = Thing[6].Scale + vt(Thing[5], 0, Thing[5])
                  else
                    Part.Parent = nil
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] == "showDamage" then
                  if Thing[6] < Thing[5] then
                    Thing[6] = Thing[6] + 1
                  else
                    if Thing[6] < Thing[7] then
                      Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                      Thing[6] = Thing[6] + 1
                    else
                      if Thing[6] < Thing[8] then
                        Thing[6] = Thing[6] + 1
                      else
                        if Thing[6] < Thing[9] then
                          Thing[6] = Thing[6] + 1
                          Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                          Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                          Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                        else
                          Thing[1].Parent = nil
                          table.remove(Effects, e)
                        end
                      end
                    end
                  end
                end
                if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" and Thing[2] ~= "showDamage" then
                  if Thing[1].Transparency <= 1 then
                    if Thing[2] == "Block1" then
                      Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Block2" then
                        Thing[1].CFrame = Thing[1].CFrame
                        Mesh = Thing[7]
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Fire" then
                          Thing[1].CFrame = cf(Thing[1].Position) + vt(0, 0.2, 0)
                          Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Cylinder" then
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Blood" then
                              Mesh = Thing[7]
                              Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            else
                              if Thing[2] == "Elec" then
                                Mesh = Thing[10]
                                Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              else
                                if Thing[2] == "Disappear" then
                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  else
                    Part.Parent = nil
                    table.remove(Effects, e)
                  end
                end
                -- DECOMPILER ERROR at PC9077: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC9077: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC9077: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC9077: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC9077: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
    fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
    fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
    fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
    fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
    fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarmove3b:TweenSize((UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    fenbarmove4b:TweenSize((UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
    for _,c in pairs(Decrease:children()) do
      if (c:findFirstChild("Duration")) ~= nil then
        c.Duration.Value = c.Duration.Value - 1
        if c.Duration.Value <= 0 then
          c.Parent = nil
        end
      end
      if c.Name == "DecreaseAtk" then
        decreaseatk = decreaseatk + c.Value
      else
        if c.Name == "DecreaseDef" then
          decreasedef = decreasedef + c.Value
        else
          if c.Name == "DecreaseMvmt" then
            decreasemvmt = decreasemvmt + c.Value
          end
        end
      end
    end
    Atk.Value = 1 - (decreaseatk)
    if Atk.Value <= 0 then
      Atk.Value = 0
    end
    Def.Value = 1 - (decreasedef)
    if Def.Value <= 0 then
      Def.Value = 0.01
    end
    Mvmt.Value = 1 - (decreasemvmt)
    if Mvmt.Value <= 0 then
      Mvmt.Value = 0
    end
    decreaseatk = 0
    decreasedef = 0
    decreasemvmt = 0
    AtkVal = Atk.Value * 100
    AtkVal = math.floor(AtkVal)
    AtkVal = AtkVal / 100
    fenbardamage.Text = "Damage\n(" .. AtkVal .. ")"
    DefVal = Def.Value * 100
    DefVal = math.floor(DefVal)
    DefVal = DefVal / 100
    fenbardef.Text = "Defense\n(" .. DefVal .. ")"
    MvmtVal = Mvmt.Value * 100
    MvmtVal = math.floor(MvmtVal)
    MvmtVal = MvmtVal / 100
    if Rooted.Value == true then
      MvmtVal = 0
    end
    fenbarmove.Text = "Walkspeed\n(" .. MvmtVal .. ")"
    fenbarammo1.Text = "Ammo\n(" .. Ammo .. ")"
    if StunT.Value <= Stun.Value then
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
    else
      fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
    end
    fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
    if 100 <= mana.Value then
      mana.Value = 100
    else
      if mananum <= 10 then
        mananum = mananum + 1
      else
        mananum = 0
        mana.Value = mana.Value + 1
      end
    end
    for i = 1, #cooldowns do
      if cooldownmax <= cooldowns[i] then
        cooldowns[i] = cooldownmax
      else
        cooldowns[i] = cooldowns[i] + cooldownsadd[i]
      end
    end
    -- DECOMPILER ERROR at PC9443: LeaveBlock: unexpected jumping out DO_STMT

  end
end