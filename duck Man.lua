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
mr = math.rad
mr2 = math.random
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
MMouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local Saber = {}
local Buster = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local manainc = 16
local handle = nil
local floating = false
local testpart = it("Part")
testpart.Anchored = true
local Mode = "Normal"
local cbuster = false
local cshoot = false
local cdebounce = false
local sbreaker = false
local shockshoot = false
local shockdebounce = false
local TehM = nil
local sblazing = false
local starshoot = false
local stardebounce = false
local busterlaser = false
local sbreakerII = false
local galacblazing = false
local prising = false
local move1 = "(Z)\nQuack"
local move2 = "(X)\nQuack"
local move3 = "(C)\nQuack"
local move4 = "(V)\nQuack"
local cooldowns = {}
local cooldown1 = 100
table.insert(cooldowns, cooldown1)
local cooldown2 = 100
table.insert(cooldowns, cooldown2)
local cooldown3 = 100
table.insert(cooldowns, cooldown3)
local cooldown4 = 100
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.16
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.14
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.12
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
LSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Ghost grey").Color
NewCol2 = BrickColor.new("Smoky grey").Color
NewCol3 = BrickColor.new("Pearl").Color

  local mdec = Instance.new("NumberValue", Decrease)
  mdec.Name = "DecreaseDef"
  mdec.Value = 0.4
  local mdec2 = Instance.new("NumberValue", Decrease)
  mdec2.Name = "DecreaseMvmt"
  mdec2.Value = 0.1
  local Neons = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}
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
end
)

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
local passdebounce = false
  createpassgui = function(parent)
  print("makegui111")
  local g = Instance.new("ScreenGui", parent)
  local f = Instance.new("Frame", g)
  f.Position = UDim2.new(0.3, 0, 0.25, 0)
  f.Size = UDim2.new(0.4, 0, 0.4, 0)
  f.Style = "DropShadow"
  local t = Instance.new("TextBox", f)
  t.BackgroundColor3 = Color3.new(0, 0, 0)
  t.BackgroundTransparency = 0.5
  t.BorderSizePixel = 0
  t.Position = UDim2.new(0.15, 0, 0.2, 0)
  t.Size = UDim2.new(0.7, 0, 0.2, 0)
  t.Font = "SourceSansLight"
  t.Text = "Enter Access Code."
  t.TextScaled = true
  t.TextColor3 = Color3.new(1, 1, 1)
  t.TextStrokeTransparency = 0
  local t2 = Instance.new("TextButton", f)
  t2.BackgroundColor3 = Color3.new(0, 0, 0)
  t2.BackgroundTransparency = 0.5
  t2.BorderSizePixel = 0
  t2.Position = UDim2.new(0.3, 0, 0.5, 0)
  t2.Size = UDim2.new(0.4, 0, 0.15, 0)
  t2.TextScaled = true
  t2.Font = "SourceSansLight"
  t2.Text = "Submit"
  t2.TextColor3 = Color3.new(1, 1, 1)
  t2.TextStrokeTransparency = 0
  print("done1")
  return t2
end

--[[passbutton = createpassgui(PlayerGui)
passbutton.MouseButton1Down:connect(function()
	print("1")
	if passbutton.Parent.TextBox.Text == "v" then
		print("2")
		passdebounce = true
		passbutton.Parent:remove()
	end
end)

while passdebounce ~= true do
	wait()
end]]

  if Character:findFirstChild("Handles", true) ~= nil then
    Character:findFirstChild("Handles", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Saber", true) ~= nil then
    Character:findFirstChild("Chaos Saber", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster", true) ~= nil then
    Character:findFirstChild("Chaos Buster", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster Rainbow", true) ~= nil then
    Character:findFirstChild("Chaos Buster Rainbow", true).Parent = nil
  end
  if Character:findFirstChild("Effects", true) ~= nil then
    Character:findFirstChild("Effects", true).Parent = nil
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
  StunT.Value = 80
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
  local passive1 = Instance.new("NumberValue", Decrease)
  passive1.Name = "DecreaseMvmt"
  passive1.Value = -0.1
  local passive2 = Instance.new("NumberValue", Decrease)
  passive2.Name = "DecreaseDef"
  passive2.Value = 0
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

  play = function(id,vol)
	local s = Instance.new("Sound",Head)
	s.SoundId = id
	s.Volume = vol
	game.Debris:AddItem(s,s.TimeLength)
	s:Play()
	return s.TimeLength
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

  AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(handle, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end

  local nr = NumberRange.new
  local ns = NumberSequence.new
  local cs = ColorSequence.new
  local nsk = NumberSequenceKeypoint.new
  particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
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
  fenframe5.Parent = nil
  fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
  fenframe5.BackgroundTransparency = 1
  fenframe5.BorderColor3 = Color3.new(0, 0, 0)
  fenframe5.Size = UDim2.new(1, 0, 1, 0)
  fenframe5.Position = UDim2.new(0, 0, 0, 0)
  fenframe5.ZIndex = 2
  local tellbar = gui("TextLabel", fenframe5, "Press \'F\' to equip your weapon.", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
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
  
  for i,v in pairs(Player.Character:GetChildren()) do
	if v.ClassName == "Part" then
		v.Shape = "Block"
		v.Material = "Neon"
		v.BrickColor = BrickColor.new("New Yeller")
		if v.Name == "Head" then
			v.face:Remove()
			v.Mesh:remove()
		else
			for _,c in pairs(v:GetChildren()) do
				if c.ClassName == "Decal" then
				c:remove()
				end
			end
		end
	elseif v.ClassName == "Hat" or v.ClassName == "Pants" or v.ClassName == "Shirt" then
		v:Remove()
	end
end

bb = Instance.new("Part",Head)
weld(Head,Head,bb,CFrame.new(0,1,0))
local m = Instance.new("SpecialMesh", bb)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=9419831"
m.TextureId = "http://www.roblox.com/asset/?id=9419827"
m.Scale = Vector3.new(1, 1, 1)




Tool = Instance.new("HopperBin")
    Tool.Parent = Player.Backpack
    Tool.Name = "Duck"
    Bin = Tool
    
    key = function(k)
	if attack then return end
	if k == "z" then
		if cooldowns[1] < 20 then return end
		attack = true
		cooldowns[1] = cooldowns[1] - 20
		wait(play("rbxassetid://261637620",0.25))
		wait(play("rbxassetid://261637644",0.25))
		attack = false
	elseif k == "x" then
		if cooldowns[2] < 20 then return end
		attack = true
		cooldowns[2] = cooldowns[2] - 20
		wait(play("rbxassetid://261637593",0.25))
		wait(play("rbxassetid://261637644",0.25))
		attack = false
	elseif k == "c" then
		if cooldowns[3] < 20 then return end
		--attack = true
		--cooldowns[3] = cooldowns[3] - 20
		play("rbxassetid://261637666",3)
		wait()
		play("rbxassetid://261637666",3)
		wait()
		play("rbxassetid://261637666",3)
		wait()
		play("rbxassetid://261637666",3)
		wait()
		play("rbxassetid://261637666",3)
		wait()
		play("rbxassetid://261637666",3)
		wait()
		wait(play("rbxassetid://261637666",3))
		attack = false
	elseif k == "v" then
		if cooldowns[4] < 20 then return end
		attack = true
		cooldowns[4] = cooldowns[4] - 20
		wait(play("rbxassetid://261637599",0.25))
		wait(play("rbxassetid://261637666",0.25))
		wait(play("rbxassetid://261637620",0.25))
		wait(play("rbxassetid://261637644",0.25))
		attack = false
	end
    end
    key2 = function(k)
    
    end
      s = function(mouse)
  mouse.Button1Down:connect(function()
	if attack then return end
	attack = true
	wait(play("rbxassetid://261637593",0.25))
	attack = false
  end
)
  mouse.Button1Up:connect(function()
	repeat wait() until not attack
	attack = true
	wait(play("rbxassetid://261637599",0.25))
	attack = false
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
end

  ds = function(mouse)
end

  Bin.Selected:connect(s)
  Bin.Deselected:connect(ds)
   print("Duck loaded")
  local mananum = 0
  local donum = 0
  local stunnum = 0
  local staggeranim = false
  local stunanim = false
  local walk = 0
  local walkforw = true
  local fnum = 0
  local domodel = false
  local gef = 10
  local col = 1
  local colnum = 0
  
  coroutine.resume(coroutine.create(function()
  while wait(4.7) do
  	play("rbxassetid://261637593",0.25)
	wait(0.95)
	play("rbxassetid://261637599",0.25)
  end
  end))
  
  while true do
	swait()
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
                  if StunT.Value <= Stun.Value then
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
                  else
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
                  end
                  fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
                  if 100 <= mana.Value then
                    mana.Value = 100
                  else
                    if mananum <= manainc then
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
  end