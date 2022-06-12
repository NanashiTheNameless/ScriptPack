wait(1 / 60)
Effects = { }
local Player = game.Players.LocalPlayer
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
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
local huh = false
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
cf1 = CFrame.new
euler1 = CFrame.fromEulerAnglesXYZ
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
werudo = Instance.new('ColorCorrectionEffect', game.Lighting)
werudo.Saturation = -0.75
werudo.Brightness = 0
werudo.Contrast = 0
werudo.Enabled = false
werudo.Name = 'timestop'
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
local skillcolorscheme = BrickColor.new("Really black").Color

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
	label.FontSize = Enum.FontSize.Size24
	label.Font = Enum.Font.SciFi
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
text1 = makelabel(framesk1, "[Z] Crimson Cutter!")
text2 = makelabel(framesk2, '[X] Blazing Waves!')
text3 = makelabel(framesk3, "[R] A.T-Field!")
text4 = makelabel(framesk4, '[Q] Phoenix Burst!')
healthbar = makeframe(scrn, .5, UDim2.new(.37, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Really black").Color)
healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Lime green").Color)
healthtext = makelabel(healthbar, 'Health')


Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 40
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
NoOutline = function(Part)
  Part.TopSurface = 10
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
ArtificialHB.Event:connect(function()
	healthcover:TweenSize(UDim2.new(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
end)

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 
CreateSound = function(id, par, vol, pit)
  
  coroutine.resume(coroutine.create(function()
    
    local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
    swait()
    S:play()
    game:GetService("Debris"):AddItem(S, 6)
  end
))
end
local function GetNearest(obj, distance)
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

Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  
  for i,v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= Character.Name then
      local find = v:FindFirstChild("DebounceHit")
      if not find then
        if v.Parent:findFirstChild("Head") then
          local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
          do
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(10, 10, 10, 10), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "SciFi"})
            coroutine.resume(coroutine.create(function()
    
    swait(1)
	local slash = CreateSound("rbxassetid://220833967",v.Parent.Head,1,1)
		local pain = CreateSound("rbxassetid://251554893",v.Parent.Head,1,1)
    for i = 0, 1, 0.1 do
      swait(0.1)
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
    BillG:Destroy()
    end
  end
))
          end
        end
		do
          v.Health = v.Health - damage
          do
            local bool = Create("BoolValue")({Parent = v, Name = "DebounceHit"})
            if HSound ~= nil and HPitch ~= nil then
              CreateSound(HSound, hit, 1, HPitch)
            game:GetService("Debris"):AddItem(bool, cooldown)
end
end
end
          end
        end
      end
    end



MagnitudeDamage = function(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
  
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0, Color1, Color2, HSound, HPitch)
        end
      end
    end
  end
end

local CurrentMode = "Sheathed"

EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

SheathHandle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "SheathHandle", Vector3.new(0.200000003, 0.999999821, 0.5))
SheathHandleWeld = CFuncs["Weld"].Create(m, Character["Torso"], SheathHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.04138184, 0.397792816, 1.31713295, 0.999999762, -0.000656999822, -0.000237999935, 1.06020843e-006, 0.342019916, -0.939692736, 0.000698778778, 0.939692616, 0.342019826))
CFuncs["Mesh"].Create("CylinderMesh", SheathHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 4.5999999, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, 1.39999962, 0.350000381, 1, 0, 3.63797881e-011, 0, 1, 2.98023224e-008, 3.63797881e-011, 2.98023224e-008, 1.00000024))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000197, 0.209999993, 0.49999997))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.199997902, -9.91821289e-005, -3.6239624e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.800004005, -4.19616699e-005, -2.88486481e-005, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(2.79999971, 0.209999993, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.20000267, -0.000102996826, -4.12464142e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.500003815, -6.86645508e-005, -2.81333923e-005, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-005, 3.70000458, 0.349998236, 1, 1.04328501e-006, 6.13425873e-005, -1.04328501e-006, 1, 2.98023224e-008, -6.13425727e-005, 2.98023224e-008, 1.00000012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.300000191, 0.209999993, 0.49999997))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, -9.91821289e-005, -3.71932983e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.209999993, 0.300000012))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.650001526, -9.91821289e-005, -3.67164612e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.60000324, 0.00020980835, -3.05175781e-005, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.20000267, 0.000175476074, -0.200037003, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.20000362, -1.14440918e-005, 0.199971199, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200003624, -9.53674316e-005, -2.90870667e-005, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 4.5999999, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00032043457, 1.40000248, -0.350022554, 1, 1.11242116e-006, 5.98016777e-006, -1.11242116e-006, 1, 2.98023224e-008, -5.98016049e-006, 2.98023224e-008, 1.00000024))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.700000048, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00133132935, -1.47819519e-005, 3.70004654, 0.999999821, -0.000400143384, 0.000418069598, 0.000418069685, 3.27825546e-007, -1, 0.000400143181, 0.99999994, 5.66244125e-007))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.299999714, 0.209999993, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.350004196, -9.53674316e-005, -3.76701355e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(1.99999964, 0.209999993, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.20000172, -8.77380371e-005, -0.20004344, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(4.5999999, 0.200000003, 0.699999988))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.40000248, -9.53674316e-005, -4.48226929e-005, 1.06020889e-006, -1, -2.98023224e-008, -1, -1.06022344e-006, -0.000308422954, 0.000308422867, 0, -1.00000012))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.20000172, -3.81469727e-006, -0.200038671, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000018, 0.210000008, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.20000553, 0.00016784668, 0.199971676, -8.79397558e-005, -1, -8.94069672e-008, -0.99999994, 8.79397703e-005, -0.000451639615, 0.000451639527, 2.98023224e-008, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.209999993, 0.5))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0500011444, -9.91821289e-005, -3.67164612e-005, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000297546387, 3.70000362, -0.350010157, 1, 1.04328501e-006, 6.13425873e-005, -1.04328501e-006, 1, 2.98023224e-008, -6.13425727e-005, 2.98023224e-008, 1.00000012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(1.99999964, 0.209999993, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, SheathHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.20000172, -0.000106811523, 0.199957371, 1.06020889e-006, -1, -2.98023224e-008, -0.99999994, -1.06020161e-006, -0.000403939921, 0.000403939805, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000018))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00265884399, -0.299971104, 0.199994087, 1, 1.97592453e-006, 0.000327047514, -0.000327047426, -3.27825546e-007, 1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000003))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00265884399, -0.299970627, -0.0500040054, 1, 1.97592453e-006, 0.000327047514, -0.000327047426, -3.27825546e-007, 1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000003))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00259399414, -0.200037956, 0.650010109, 1, 1.97592453e-006, 0.000327047514, 0.000327047426, 3.27825546e-007, -1, -1.97603367e-006, 1, 3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.300000012))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00265884399, -0.29997015, 0.549996376, 1, 1.97592453e-006, 0.000327047514, -0.000327047426, -3.27825546e-007, 1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000003))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0026473999, -0.199972391, 0.650009155, -1, -1.97592453e-006, -0.000327047514, -0.000327047426, -3.27825546e-007, 1, -1.97603367e-006, 1, 3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000003))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00257492065, -0.300040722, -0.0500049591, -1, -1.97592453e-006, -0.000327047514, 0.000327047426, 3.27825546e-007, -1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.200000018))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00257492065, -0.300041199, 0.199995995, -1, -1.97592453e-006, -0.000327047514, 0.000327047426, 3.27825546e-007, -1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Wedge", Vector3.new(0.215000004, 0.200000003, 0.300000012))
WedgeWeld = CFuncs["Weld"].Create(m, SheathHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00257492065, -0.300039768, 0.549992561, -1, -1.97592453e-006, -0.000327047514, 0.000327047426, 3.27825546e-007, -1, 1.97603367e-006, -1, -3.87430191e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Handle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.200000003, 1.5, 0.400000036))
if CurrentMode == "Sheathed" then
	HandleWeld = CFuncs["Weld"].Create(m, SheathHandle, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000686645508, -1.94999123, 0.00476646423, 0.999998629, 7.38364179e-007, 0.00163643551, -7.38407834e-007, 1, 2.98023224e-008, -0.00163643563, 2.98023224e-008, 0.999998927))
elseif CurrentMode == "UnSheathed" then
	HandleWeld = CFuncs["Weld"].Create(m, RightArm, Handle, CFrame.new(0, 0, 0), CFrame.new(0, -.1, .95) * CFrame.Angles(math.rad(90), math.rad(180), 0))
end
CFuncs["Mesh"].Create("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
FakeHandle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.200000003, 1.0999999, 0.400000036))
FakeHandleWeld = CFuncs["Weld"].Create(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.99999994, -2.91038305e-011, 2.91038305e-011, -2.91038305e-011, 1, 2.98023224e-008, 2.91038305e-011, 2.98023224e-008, 1.00000024))
CFuncs["Mesh"].Create("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Hitbox = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0.10000000149012, 1, "Really black", "Hitbox", Vector3.new(4.5, 0.200000003, 0.5))
HitboxWeld = CFuncs["Weld"].Create(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29999828, 0.00423049927, -0.0952837467, 3.21830157e-007, -1, -2.98023224e-008, -0.999999106, -3.21815605e-007, 0.00133561704, -0.00133561681, 0, -0.999999285))
CFuncs["Mesh"].Create("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000961303711, 0.999997139, -0.254771709, 0.999998331, 6.31844159e-008, -0.00181550882, -6.31844159e-008, 1, 2.98023224e-008, 0.00181550859, 2.98023224e-008, 0.99999845))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000701904297, 1.00000191, 0.245229006, 0.99999845, 2.60071829e-007, -0.00172725378, -2.60100933e-007, 1, 2.98023224e-008, 0.00172725378, 2.98023224e-008, 0.999998689))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Really black", "Part", Vector3.new(3.49999976, 0.200000003, 0.300000012))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.79999828, 0.00423049927, 0.00471615791, 3.21830157e-007, -1, -2.98023224e-008, -0.999999106, -3.21815605e-007, 0.00133561704, -0.00133561681, 0, -0.999999285))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.300000012, 0.699999988))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.899999619, 0.00407791138, 0.00476622581, 3.21830157e-007, -1, -2.98023224e-008, -0.999999225, -3.21808329e-007, 0.00122933509, -0.00122933486, 0, -0.999999344))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.300000012))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.799995422, -0.000701904297, 0.00474739075, 3.21830157e-007, -1, -2.98023224e-008, -1, -3.21801053e-007, 5.85234666e-005, -5.85235248e-005, -2.98023224e-008, -1.00000012))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00115966797, 0.799999237, -0.154897928, 0.999997795, -1.88825652e-007, -0.00209103944, 1.88796548e-007, 1, 2.98023224e-008, 0.0020910392, 2.98023224e-008, 0.999997973))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289761543, -0.00036239624, 0.0776758194, -0.000304374611, -0.965925336, -0.258820981, -0.999999762, 0.000140925491, 0.000650067697, -0.000591442222, 0.25882113, -0.965925097))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.400000066))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00370025635, 0.900003433, -0.35477519, 0.999998868, 7.40168616e-007, -0.00154758303, -7.4019772e-007, 1, 2.98023224e-008, 0.00154758268, 2.98023224e-008, 0.999998927))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.300000012, 0.200000003, 0.400000066))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00433731079, 0.900005341, 0.345230103, 0.999998152, 3.63826985e-007, -0.00195502653, -3.63856088e-007, 1, 2.98023224e-008, 0.00195502606, 2.98023224e-008, 0.999998212))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.49999997))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.999994278, -0.00076675415, 0.00471663475, 3.21830157e-007, -1, -2.98023224e-008, -0.999999106, -3.21801053e-007, 0.00133877806, -0.00133877795, 0, -0.999999285))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289766312, -0.000350952148, 0.127672672, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289766312, -0.000350952148, 0.127672672, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.04904175e-005, -0.00040435791, 0.0500283241, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579562187, -0.000576019287, -0.155323029, -0.000304374611, -0.965925336, -0.258820981, -0.99999994, 0.000279935193, 0.000131280511, -5.43541246e-005, 0.258820981, -0.965925395))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579543114, -0.00036239624, 0.105318546, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289785385, -0.000495910645, -0.0776772499, -0.000304374611, -0.965925336, -0.258820981, -0.99999994, 0.000279935193, 0.000131280511, -5.43541246e-005, 0.258820981, -0.965925395))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289766312, -0.000415802002, 0.0276732445, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579545021, -0.000301361084, 0.205320358, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.50000012, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000144958496, 1.90734863e-006, 0.100001097, 0.999999762, -2.72775651e-008, -0.000672550173, 2.72411853e-008, 1, 2.98023224e-008, 0.000672549999, 0, 0.999999881))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.5, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, 0, -0.100000143, 0.99999994, -2.91038305e-011, 2.91038305e-011, -2.91038305e-011, 1, 2.98023224e-008, 2.91038305e-011, 2.98023224e-008, 1.00000024))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579559326, -0.000507354736, -0.105263233, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579544067, -0.000244140625, 0.155263424, -0.000304374611, -0.965925336, -0.258820981, -0.99999994, 0.000279935193, 0.000131280511, -5.43541246e-005, 0.258820981, -0.965925395))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289767265, -0.000331878662, 0.0776162148, -0.000304374611, -0.965925336, -0.258820981, -0.99999994, 0.000279935193, 0.000131280511, -5.43541246e-005, 0.258820981, -0.965925395))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579564095, -0.000492095947, -0.155259132, -0.000304374611, -0.965925336, -0.258820981, -0.999999762, 0.000140925491, 0.000650067697, -0.000591442222, 0.25882113, -0.965925097))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.50000012, 0.200000003, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-006, -0.00032043457, -4.02927399e-005, 3.21830157e-007, -1, -2.98023224e-008, -0.99999994, -3.21801053e-007, 0.000234093866, -0.000234093866, -2.98023224e-008, -1.00000024))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579545021, -0.000301361084, 0.205320358, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.58306885e-006, -0.000411987305, -3.0040741e-005, -0.000304374611, -0.965925336, -0.258820981, -0.99999994, 0.000279935193, 0.000131280511, -5.43541246e-005, 0.258820981, -0.965925395))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579545975, -0.00032043457, 0.155326843, -0.000304374611, -0.965925336, -0.258820981, -0.999999762, 0.000140925491, 0.000650067697, -0.000591442222, 0.25882113, -0.965925097))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.92499542, 0.00666809082, -0.0947546959, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, 4.0769577e-005, -0.744995117, 0.999999344, 8.47059709e-007, -0.00118473766, -0.00118473754, 3.27825546e-007, -0.999999404, -8.46659532e-007, 1, 3.57627869e-007))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-006, -0.000469207764, -0.0499725342, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000018))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000625610352, 0.800000191, 0.145077229, 0.999996126, 6.23404048e-007, -0.00281391083, -6.23462256e-007, 1, 2.98023224e-008, 0.00281391037, 0, 0.999996185))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.579543114, -0.00036239624, 0.105318546, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.47208118, 0.00670623779, 1.694561, -0.000692643051, -0.879098058, -0.476640701, -0.999998927, -1.17003219e-006, 0.00145533308, -0.00127993803, 0.476641238, -0.879097164))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.149999991))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579563141, -0.00057220459, -0.205264568, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.314999998, 0.200000003, 0.405000061))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0068397522, 0.900006294, 0.347759962, 0.999998271, -1.23342033e-007, -0.00186864985, 1.23283826e-007, 1, 2.98023224e-008, 0.00186864962, 2.98023224e-008, 0.999998391))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.150000006, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-006, -0.000469207764, -0.0499725342, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147e-005, -0.000408172607, 3.14712524e-005, -0.000304374611, -0.965925336, -0.258820981, -0.999999762, 0.000140925491, 0.000650067697, -0.000591442222, 0.25882113, -0.965925097))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289788246, -0.000457763672, -0.0276184082, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289786339, -0.000450134277, -0.0776138306, -0.000304374611, -0.965925336, -0.258820981, -0.999999762, 0.000140925491, 0.000650067697, -0.000591442222, 0.25882113, -0.965925097))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0697598457, 0.00667953491, -3.83499718, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.600000024))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579559326, -0.000507354736, -0.105263233, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289786339, -0.000518798828, -0.127620697, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.04904175e-005, -0.00040435791, 0.0500283241, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289788246, -0.000457763672, -0.0276184082, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.289766312, -0.000415802002, 0.0276732445, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.240000024, 0.600000024, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.314999998, 0.699999988))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.899999619, 0.00672149658, 0.00475239754, 3.21830157e-007, -1, -2.98023224e-008, -0.999998808, -3.21801053e-007, 0.00157287193, -0.00157287158, -2.98023224e-008, -0.999998927))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.150000006, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.579563141, -0.00057220459, -0.205264568, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.289786339, -0.000518798828, -0.127620697, -0.000304374611, -0.965925336, -0.258820981, -0.999999821, 0.000174744986, 0.00052385265, -0.000460774812, 0.25882113, -0.965925217))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.550000012, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.085246563, 0.00672149658, -3.83499527, 0.00149565714, -2.98023224e-007, 0.999998987, -0.999998868, -5.8466685e-007, 0.00149565737, 5.84230293e-007, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.25000003))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-005, -0.744995117, -0.0999934673, 0.99999994, 7.87942554e-007, -0.000515348685, -7.8798621e-007, 1, 2.98023224e-008, 0.000515348569, 0, 1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.59999371, 0.0067024231, -0.0177428722, 3.21830157e-007, -1, -2.98023224e-008, -0.999998868, -3.21815605e-007, 0.00150486501, -0.00150486478, -2.98023224e-008, -0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.150000006, 0.574999988, 0.724999964))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0152475834, 0.0066986084, -3.83499336, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.25000003))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.314999998, 0.200000003, 0.405000061))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00644302368, 0.899999619, -0.352249146, 0.999998271, 2.25554686e-007, -0.00184430077, -2.2558379e-007, 1, 2.98023224e-008, 0.00184430066, 2.98023224e-008, 0.99999845))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.150000006, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.019753933, 0.006690979, -3.83499622, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.600000024))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.92499352, 0.0066947937, -0.0447595119, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.86499405, 0.00670623779, -0.0827536583, 3.21830157e-007, -1, -2.98023224e-008, -0.999998927, -3.21801053e-007, 0.00146342872, -0.00146342861, -2.98023224e-008, -0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.774999917))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.48882198, 0.00674438477, 2.65890789, -0.0010592551, 0.707102418, -0.707110405, -0.999998868, 3.19123501e-007, 0.00149832305, 0.00105969328, 0.70711118, 0.707101703))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.649999976))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.220000014))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.160244226, 0.00672531128, -3.97499657, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.532558143))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.32479572, 0.006690979, -1.97127724, 0.000748553721, 0.866023123, 0.500003636, -0.999998868, -4.30038199e-007, 0.00149784004, 0.00129737868, -0.500004113, 0.86602211))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.25))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.274999976))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0697586536, 0.00667572021, -3.59749603, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.150000006, 0.574999988, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0197529793, 0.006690979, -3.97499371, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.600000024))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0302407742, 0.00671386719, -3.97499466, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.600000024))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.210000008))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.92499542, 0.00672149658, 0.0952420235, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.532558143))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.82499409, 0.00666809082, -0.0947537422, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.80499554, 0.006690979, -0.0447611809, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.60584641, 0.00674438477, -2.43581772, 0.00105979922, 0.707103252, 0.70710969, -0.999998868, 5.07789082e-007, 0.00149826717, 0.00105907046, -0.707110524, 0.707102537))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.649999976))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.115249872, 0.00671768188, -3.96999741, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.346162796))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0102436543, 0.006690979, -3.59749508, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.874999881))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.02499485, 0.00674057007, 0.135249615, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.79999352, 0.0067024231, -0.0827538967, 3.21830157e-007, -1, -2.98023224e-008, -0.999998927, -3.21815605e-007, 0.00144728133, -0.00144728122, 0, -0.999999166))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.774999917))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0697586536, 0.00667572021, -3.97499466, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.600000024))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-005, -0.74499321, 0.10000968, 0.99999994, 7.87942554e-007, -0.000515348685, -7.8798621e-007, 1, 2.98023224e-008, 0.000515348569, 0, 1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.0249958, 0.0067024231, 0.00524735451, -3.21830157e-007, 1, 2.98023224e-008, -0.999998868, -3.21786501e-007, 0.00150580483, 0.00150580448, 2.98023224e-008, 0.999999046))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.150000006))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.30000001192093, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0702450275, 0.0067024231, -3.96999741, 0.00149965705, -2.98023224e-007, 0.999998987, -0.999998868, -1.09596294e-006, 0.00149965729, 1.09555549e-006, -1, -2.98023224e-007))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.100000009, 0.574999988, 0.346162796))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 2.89999986))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00424194336, -0.195285797, -2.49999905, -0.999999106, 1.37457391e-007, 0.00133655663, -0.00133655639, 3.27825546e-007, -0.999999285, -1.37893949e-007, -1, -3.57627869e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0.10000000149012, 0, "Really red", "Wedge", Vector3.new(0.200000003, 0.200000003, 3.19999981))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00427246094, -0.24529171, -2.64999485, -0.999999464, -3.04560672e-007, 0.000996180926, -0.00099618081, 0, -0.999999642, 3.04629793e-007, -1, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 0.99999994, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.Neon, 0.10000000149012, 0, "Really red", "Wedge", Vector3.new(0.200000003, 0.490000099, 1.39999986))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00421524048, -0.100283384, 4.9499979, 0.999999166, -2.89503078e-007, -0.00127265078, -0.00127265067, 3.27825546e-007, -0.999999344, 2.89932359e-007, 1, 3.57627869e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 1, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.600000024))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00424194336, -0.195281744, 4.24999523, 0.999999106, -1.37457391e-007, -0.00133655663, -0.00133655639, 3.27825546e-007, -0.999999285, 1.37893949e-007, 1, 3.57627869e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.300000012, 1.10000002))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00423812866, 0.00472211838, 5.09999371, 0.999999106, -1.37457391e-007, -0.00133655663, -0.00133655639, 3.27825546e-007, -0.999999285, 1.37893949e-007, 1, 3.57627869e-007))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))

Effects = {
	["Block"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};
	
	["Sphere"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};

	["Ring"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};


	["Wave"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};

	["Break"] = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};
}

function attackone()
	attack = true
	MagnitudeDamage(RightArm, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0.0325974114, -4.05311584e-006, 0.110728048, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
			CFrame.new(0, 1.50000095, 0, 0.64278698, 0, 0.766044974, 0, 1, 0, -0.766044974, 0, 0.64278698),
			CFrame.new(1.10100186, 0.535800219, -0.637803555, 0.658456147, 0.673041463, 0.336824596, 0.280167073, 0.196174845, -0.939692438, -0.698528469, 0.713113427, -0.0593915135),
			CFrame.new(-1.62758517, 0.073027119, -0.378663093, 0.90510416, 0.321394593, -0.278374165, -0.392632991, 0.883023262, -0.25711751, 0.163174719, 0.342016995, 0.92541796),
			CFrame.new(0.644929826, -1.96549833, 0.164695352, 0.962249994, -0.148305506, 0.228211343, 0.0871559754, 0.962249756, 0.257835865, -0.257834762, -0.22821258, 0.938850582),
			CFrame.new(-0.750219464, -1.99537396, -0.240616962, 0.862504363, 0.0818999186, 0.499378443, -0.08583197, 0.99619472, -0.0151344473, -0.498717606, -0.0298091136, 0.866251826),
		}, .5, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", RightArm, 1, 1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0.0274592564, -4.05311584e-006, -0.125648558, 0.819151819, 0, 0.573576868, 0, 1, 0, -0.573576868, 0, 0.819151819),
			CFrame.new(0.0423602425, 1.50114202, -0.0604958013, 0.819151819, 0.0499906465, -0.571394205, 0, 0.996194661, 0.087155968, 0.573576868, -0.0713939667, 0.816034675),
			CFrame.new(1.52778757, 0.531255186, -0.64448005, 0.89628464, -0.310187638, 0.316950649, 0.363154083, 0.103138059, -0.926003098, 0.254545003, 0.945064187, 0.205086961),
			CFrame.new(-1.62758875, 0.0730258971, -0.37865293, 0.874233663, 0.264237553, -0.407301128, -0.338883847, 0.932860136, -0.122187212, 0.347668469, 0.244847909, 0.905083656),
			CFrame.new(0.714578748, -1.98299634, -0.143274695, 0.854747295, -0.0451130345, -0.517080247, 0.0731449723, 0.996743381, 0.033948984, 0.513864815, -0.0668396279, 0.855263412),
			CFrame.new(-0.586801887, -2.00537181, -0.125748813, 0.817099035, 0.0818995163, -0.57065028, -0.0499900058, 0.996194661, 0.0713941306, 0.574325919, -0.0298092682, 0.818083942),
		}, .4, false)
	end
	MagnitudeDamage(LeftArm, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.0278095491, -0, -0.0647769645, 0.422617137, 0, -0.906308293, 0, 1, 0, 0.906308293, 0, 0.422617137),
			CFrame.new(0.0130716562, 1.50114095, 0.0226426572, 0.500949979, -0.043578539, 0.864378512, -0.0435769781, 0.99619478, 0.0754792169, -0.864378572, -0.0754783005, 0.497144729),
			CFrame.new(1.46304893, 0.0111163529, -0.195470497, 0.969845951, -0.141313881, 0.198567659, 0.171010002, 0.975082338, -0.141315594, -0.173649997, 0.171011418, 0.969845772),
			CFrame.new(-0.476312399, 0.700993478, -1.01105702, -0.161183909, -0.822473288, 0.545488238, 0.914392114, -0.332428575, -0.231037617, 0.371358156, 0.461550653, 0.805645168),
			CFrame.new(0.769290924, -1.98995841, 0.131848395, 0.923518181, -0.225895107, 0.309976906, 0.0789899975, 0.902858138, 0.422620326, -0.375332981, -0.36581248, 0.851649225),
			CFrame.new(-0.649989367, -1.99999642, -0.259795457, 0.862729311, 0.0754793957, 0.500000954, -0.0871559754, 0.996194661, -3.00977092e-007, -0.498098224, -0.0435778052, 0.866024852),
		}, .5, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", LeftArm, 1, 1.2)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.00904887356, 0, 0.0542639792, 0.819151819, 0, 0.573576868, 0, 1, 0, -0.573576868, 0, 0.819151819),
			CFrame.new(0.0700499117, 1.48876178, -0.0585908592, 0.818116248, 0.0777848065, -0.569767892, -0.0081340028, 0.992275536, 0.123786204, 0.574995458, -0.096637018, 0.812429488),
			CFrame.new(1.6223197, 0.167853087, -0.187319964, 0.930573583, -0.26842618, 0.248958677, 0.33773309, 0.891896248, -0.3007617, -0.141312927, 0.363962442, 0.920631409),
			CFrame.new(-1.70829511, 0.38878727, -0.283305705, -0.137994826, 0.90800637, 0.395578146, 0.962673366, 0.21686171, -0.161960125, -0.232846558, 0.358462811, -0.904039383),
			CFrame.new(0.652637064, -2.0087626, -0.0295035541, 0.773469269, -0.0281156711, -0.633210123, 0.0822510049, 0.995020807, 0.0562892854, 0.628474593, -0.0956202, 0.771930516),
			CFrame.new(-0.837457418, -1.94963837, -0.0310491398, 0.80701679, 0.197070241, -0.556675375, -0.130704001, 0.978901565, 0.15706113, 0.575882494, -0.0539912507, 0.815747857),
		}, .3, false)
	end
	attack = false
end
local trappedTorsos = {}
function trappedTorsos:isTrapped(t)
    for nildata, index in next,self do
        if index==t then
            return true
        end
    end
return false
end

function trappedTorsos:Capture(hit)
   if hit:isA'BasePart' then
    if not trappedTorsos:isTrapped(hit) and not hit:IsDescendantOf(char) then
        table.insert(trappedTorsos, hit)
        hit.Anchored = true
    end
   end
end

function trappedTorsos:Release()
    for i,v in next, self do
        if type(v)=='userdata' then
            if v:isA('BasePart') then
                v.Anchored = false
                self[i] = nil
            end
        end
    end
end
char = Character
tor = char.Torso
hum = char.Humanoid
TfwTimeStopped = false
local TimeStopped = false
function TheWorld(Mode)
     if Mode == "World Time Stop" then
        hum.WalkSpeed = 0
		TfwTimeStopped = true
		local TimeStopped = true
		attack = true
        local TimeStop = Instance.new("Sound",tor)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 5
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
		AreaOfEffect.Color = Color3.new(math.random(), math.random(), math.random())
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
		werudo.Enabled = true
		TimeStop:play()
		werudo.Saturation = 6
		wait(0.1)
		werudo.Saturation = 3
		wait(0.1)
		werudo.Saturation = 6
		wait(0.1)
		werudo.Saturation = 3
		wait(0.1)
		werudo.Saturation = -0.75
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(10,10,10)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    trappedTorsos:Capture(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        workspace.Gravity = 70
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
			if v:IsA('Accessory') then
				v.Handle.Anchored = false
			end
        end
		for i,v in pairs(char.WeaponModel:children()) do
			if v:IsA("Part") then
				v.Anchored = false
			end
		end
        hum.WalkSpeed = 16
		attack = false
		TfwTimeStopped = false
		TimeStopped = false
     end
     if Mode == "Time Start" then
        local AreaOfEffect2 = Instance.new("Part",tor)
        AreaOfEffect2.Position = tor.Position
        AreaOfEffect2.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect2.Anchored = true
        AreaOfEffect2.CanCollide = false
        AreaOfEffect2.Transparency = 1
        AreaOfEffect2.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect2.Transparency = 0.99
        AreaOfEffect2.Shape = "Ball"
        AreaOfEffect2.Material = "Neon"
        AreaOfEffect2.Touched:connect(function(hit)
            if hit ~= "Base" then
            end
        end)
        for i = 1,10 do
            AreaOfEffect2.Size = AreaOfEffect2.Size + Vector3.new(10,10,10)
            AreaOfEffect2.CFrame = char.Torso.CFrame
            wait()
        end
        trappedTorsos:Release()
        AreaOfEffect2:Destroy()
        TfwTimeStopped = false
		TimeStopped = false
		attack = false
        workspace.Gravity = 196.2
		werudo.Enabled = false
    end
end
function attacktwo()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://169445092", LeftLeg, 1, .9)
	MagnitudeDamage(LeftLeg, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-1.01327896e-006, -0.00760280015, -0.0868225321, 0.819152117, -9.89649109e-008, -0.573576808, 0.099600926, 0.98480773, 0.142244875, 0.564863086, -0.173648939, 0.806706905),
			CFrame.new(-1.5348196e-006, 1.50000656, -2.47359276e-006, 0.766044199, 0.0560230501, 0.640342593, -5.3178519e-007, 0.996194899, -0.087155968, -0.642788291, 0.0667650923, 0.763128877),
			CFrame.new(1.49887192, 0.183511823, 0.276286751, 0.939620972, -0.24999398, -0.233701736, 0.298293352, 0.933014333, 0.201260239, 0.167733222, -0.258819699, 0.951250732),
			CFrame.new(-1.40490806, 0.259357929, 0.482691735, 0.925416231, 0.17365098, 0.336825043, -0.312327385, 0.852868319, 0.418410718, -0.214609861, -0.492403358, 0.8434937),
			CFrame.new(0.590285063, -1.99127054, -0.0421137661, 0.90285933, -0.151177466, 0.402481407, 0.087155953, 0.981060386, 0.172988117, -0.421010286, -0.12110512, 0.898934841),
			CFrame.new(-0.817580938, -1.19433641, -0.619182408, 0.821034133, -0.4105919, 0.396633446, -0.107466809, 0.571192503, 0.813750803, -0.560673177, -0.71074158, 0.42484355),
		}, .5, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", RightLeg, 1, .8)
	MagnitudeDamage(RightLeg, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-5.21540642e-006, -0.0301518105, 0.170998782, 0.707106054, 1.36977135e-007, 0.707107484, 0.241844028, 0.939693153, -0.241843715, -0.664464056, 0.342018902, 0.664462626),
			CFrame.new(-5.84125519e-006, 1.49999952, 5.55813313e-006, 0.707106054, 0.122789107, -0.69636476, 1.36977135e-007, 0.984807551, 0.173650011, 0.707107484, -0.122789048, 0.69636333),
			CFrame.new(1.59211111, 0.0426450819, 0.0984371006, 0.923044622, -0.254886925, 0.288134098, 0.185842723, 0.951251388, 0.246137112, -0.336825043, -0.17364794, 0.925416231),
			CFrame.new(-1.47899616, 0.0123481303, -0.0969515294, 0.951251328, 0.225759685, -0.210127622, -0.254885614, 0.959056556, -0.123467892, 0.173650175, 0.17100741, 0.969846487),
			CFrame.new(1.0541141, -1.3799324, -0.804515839, 0.780018091, -0.623307407, 0.055314295, 0.271785617, 0.257836938, -0.927174628, 0.563652813, 0.73824656, 0.370523453),
			CFrame.new(-0.578937471, -1.83233118, 0.30931446, 0.90767473, 0.243209511, 0.342017323, -0.356200695, 0.877397299, 0.321395934, -0.221918464, -0.413549721, 0.883022547),
		}, .5, false)
	end
	attack = false
end

function attackthree()
	attack = true
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.288708091, -0, 0.25881803, 0, -0.965926111, 0, 1, 0, 0.965926111, 0, 0.25881803),
         CFrame.new(0, 1.50000095, 0, 0.3420223, 0, 0.939691901, 0, 1, 0, -0.939691901, 0, 0.3420223),
         CFrame.new(0.575810492, 0.530309379, -0.965304673, -0.0391900204, 0.906140745, 0.421157062, 0.988906384, -0.025263181, 0.146375984, 0.143276975, 0.422221363, -0.895098329),
         CFrame.new(-1.66217804, 0.0811249837, -0.469954818, 0.873425186, 0.234395415, -0.426834136, -0.368521124, 0.891125917, -0.264739275, 0.318309247, 0.388527274, 0.864711463),
         CFrame.new(0.64414525, -1.79647017, 0.431743354, 0.961093664, -0.0666480884, -0.268061757, 0.168240055, 0.910922766, 0.376716107, 0.219076142, -0.407158107, 0.886695027),
         CFrame.new(-0.698486328, -1.69529796, -0.0642895997, 0.498449862, 0.0814705193, 0.863081872, -0.0787010267, 0.995715976, -0.0485388152, -0.863338888, -0.0437312648, 0.502726257),
		}, .45, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", RightArm, 1, 1)
	MagnitudeDamage(RightArm, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.113825306, -0.251505136, -0.0389094017, 0.498489052, 0, 0.866896093, 0, 1, 0, -0.866896093, 0, 0.498489022),
         CFrame.new(-1.05053186e-006, 1.49999738, 1.62050128e-006, 0.50386858, 0.0680347383, -0.861096919, -0.0152880074, 0.997439623, 0.0698613524, 0.863645196, -0.0220364761, 0.503618479),
         CFrame.new(1.7679491, 0.417701542, -0.554404497, -0.0314385444, -0.686959743, 0.726015329, 0.983376145, 0.108708829, 0.145443872, -0.178838372, 0.718518674, 0.672122061),
         CFrame.new(-1.54972827, 0.0848493725, -0.412890196, 0.917901635, 0.240212232, -0.315840125, -0.314761043, 0.925438881, -0.210922867, 0.241624445, 0.293020606, 0.925071239),
         CFrame.new(0.557207584, -1.78032541, 0.049829334, 0.482851118, 0.0599284619, -0.873649538, 0.095350042, 0.988126159, 0.12047936, 0.870496035, -0.141476125, 0.471403539),
         CFrame.new(-0.858726859, -1.8470695, -0.0832308233, 0.938662231, 0.191144764, 0.287014306, -0.179290935, 0.981492102, -0.0672909319, -0.294564545, 0.0117043927, 0.955560029),
		}, .4, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", RightLeg, 1, 1.3)
	MagnitudeDamage(RightLeg, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.230766058, -0, 0.422617137, 0, -0.906308293, 0, 1, 0, 0.906308293, 0, 0.422617137),
         CFrame.new(-1.2665987e-007, 1.4220444, -6.33299351e-008, 0.422617137, -0.0789901763, 0.902859509, 0, 0.996194661, 0.087155968, -0.906308293, -0.0368336067, 0.421008945),
         CFrame.new(1.60950196, 0.103570879, -0.0917501748, 0.915674806, -0.249999672, 0.314706117, 0.314704955, 0.933012605, -0.174494773, -0.250001103, 0.258820057, 0.933012187),
         CFrame.new(-1.75150323, 0.517579019, -0.472744405, -0.217596948, 0.719714224, -0.659289777, -0.951487899, -0.00586804328, 0.30763033, 0.21753718, 0.694245696, 0.686076164),
         CFrame.new(0.640585601, -1.75949216, 0.0221832991, 0.859833121, -0.061479345, -0.506860256, 0.299478978, 0.864746749, 0.403144419, 0.413520664, -0.498430908, 0.761949718),
         CFrame.new(-0.751791477, -1.87030005, -0.172881424, 0.662565231, 0.187522754, 0.725149989, -0.177604049, 0.979874611, -0.0911183953, -0.727642894, -0.068417713, 0.682535589),
		}, .5, false)
	end
	attack = false
end

function attackfour()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://169445092", LeftLeg, 1, 1.3)
	MagnitudeDamage(LeftLeg, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0273787677, -0.10644643, 0.161039144, 0.64650321, -0.0298088919, -0.762328804, -0.241844088, 0.939693153, -0.241843432, 0.723564208, 0.340717196, 0.600305498),
         CFrame.new(-0.135412499, 1.51818991, -0.135408521, 0.644886911, -0.183011979, 0.74204284, -0.0225573424, 0.96592629, 0.257832795, -0.763945043, -0.183011562, 0.618784904),
         CFrame.new(1.65269804, 0.28128767, -0.329797685, 0.732092261, -0.365997791, 0.574531734, 0.57453227, 0.784886003, -0.232091784, -0.365996927, 0.499999583, 0.784886479),
         CFrame.new(-0.697444558, 0.53345108, -1.05017984, 0.575532019, -0.469871581, -0.669315934, -0.817331672, -0.357579976, -0.451780498, -0.0270551741, 0.807067275, -0.589839637),
         CFrame.new(0.816795707, -1.8031137, 0.0405909419, 0.905102134, -0.321393549, -0.278382063, 0.392635345, 0.883021414, 0.257120192, 0.16318053, -0.342022657, 0.92541492),
         CFrame.new(-1.17031693, -1.44018054, -0.670109332, 0.568969607, 0.744030178, -0.350275278, -0.724476635, 0.251964867, -0.641597509, -0.389110804, 0.61881566, 0.682392955),
		}, .5, false)
	end
	CFuncs["Sound"].Create("rbxassetid://169445092", LeftLeg, 1, 1.1)
	MagnitudeDamage(LeftLeg, 3, 5, 15, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0448488742, -0.00727861002, 0.108846672, 0.820266724, 0.0301541891, 0.571185887, 0.0733869672, 0.984807611, -0.157379568, -0.567253828, 0.171010807, 0.805592),
         CFrame.new(1.00135803e-005, 1.49999404, -1.14887953e-005, 0.820266724, 0.0733869672, -0.567253828, 0.0301541891, 0.984807611, 0.171010807, 0.571185887, -0.157379568, 0.805592),
         CFrame.new(1.44825673, 0.0420619249, 0.376018465, 0.951251268, -0.150772065, -0.269051582, 0.229002386, 0.929626942, 0.288706839, 0.206588686, -0.336246222, 0.918836117),
         CFrame.new(-1.40466142, 0.0419555902, 0.31985116, 0.911030471, 0.206683651, 0.356798738, -0.33297056, 0.879148662, 0.340922534, -0.243215919, -0.429394305, 0.869750977),
         CFrame.new(1.09925544, -1.12652528, -1.09274638, 0.742447376, -0.543538809, 0.391583562, 0.50108391, 0.0626286492, -0.863129616, 0.444620013, 0.837044418, 0.318857074),
         CFrame.new(-0.606529653, -1.91553426, -0.0107536316, 0.981061041, 0.0858321041, 0.1736435, -0.141063944, 0.930939674, 0.336826921, -0.132741064, -0.354942679, 0.92541641),
		}, .45, false)
	end
	attack = false
end	

function SHEATH()
	attack = true
	Humanoid.WalkSpeed = 16
	HandleWeld:remove()
	HandleWeld = CFuncs["Weld"].Create(m, SheathHandle, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000686645508, -1.94999123, 0.00476646423, 0.999998629, 7.38364179e-007, 0.00163643551, -7.38407834e-007, 1, 2.98023224e-008, -0.00163643563, 2.98023224e-008, 0.999998927))
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
			CFrame.new(-4.73484397e-006, 1.50000036, 1.15185976e-005, 0.939552784, 0.0368335471, -0.340417534, -0.0075959973, 0.996194661, 0.0868244022, 0.342320174, -0.0789902881, 0.936257243),
			CFrame.new(0.161956966, -0.0865287632, -0.995668888, -0.351033777, 0.698357642, 0.623756588, 0.856367111, 0.508853376, -0.0877711996, -0.378696293, 0.503353894, -0.776675105),
			CFrame.new(-1.33793128, -0.137702584, -0.193716392, 0.969846547, -0.200705618, -0.138257802, 0.171010017, 0.96461004, -0.200706288, 0.173647791, 0.171010792, 0.969846368),
			CFrame.new(0.513032913, -1.99914098, 0.013043493, 0.70634675, -0.0327672996, -0.707107365, 0.0463399887, 0.998925745, 0, 0.706347764, -0.032767348, 0.707106352),
			CFrame.new(-0.617212117, -1.98815656, -0.0676514655, 0.862729609, 0.0754801258, -0.500000715, -0.0871560201, 0.99619472, 1.64420851e-006, 0.498098105, 0.0435766503, 0.866025209),
		}, .5, false)
	end
	attack = false
end

function BladeAttackOne()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://251903189", Head,1,.95)
    MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-3.45729177e-006, -1.07288361e-006, -1.61215644e-006, 0.422617137, 0, 0.906308293, 0, 1, 0, -0.906308293, 0, 0.422617137),
         CFrame.new(-2.93552876e-006, 1.49999666, 2.47359276e-006, 0.642787337, 0.0667652711, -0.763129652, 0, 0.996194661, 0.0871558487, 0.766044676, -0.0560226738, 0.640341341),
         CFrame.new(0.698839545, 0.330527961, -1.17968464, -0.0858322605, 0.628752053, 0.772854269, 0.992461622, 0.122068912, 0.0109129949, -0.0874799117, 0.76796484, -0.634489775),
         CFrame.new(-1.41369021, 0.137095958, 0.271576643, 0.951021314, 0.183494747, 0.248773009, -0.256190121, 0.918202639, 0.302110255, -0.172988355, -0.351046532, 0.920239806),
         CFrame.new(0.64087379, -1.98256373, 0.140884519, 0.704417586, -0.0616254881, -0.707105517, 0.087155968, 0.996194661, 4.53608664e-006, 0.704414487, -0.0616316497, 0.70710808),
         CFrame.new(-0.751752973, -1.94796431, 0.117966183, 0.936117291, 0.140046805, -0.322600812, -0.0871559978, 0.981060147, 0.172988161, 0.340717107, -0.133820623, 0.930593371),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, 1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(2.70828605e-006, -0.256154776, -0.071654655, 0.499999046, -1.78813579e-007, -0.866026044, 0.150384009, 0.984807789, 0.0868238211, 0.852869093, -0.173648283, 0.492402941),
         CFrame.new(4.34633694e-006, 1.49999607, 2.42484384e-006, 0.646143615, 0.0549410731, 0.761235893, -0.0851004422, 0.996372402, 0.000322267413, -0.758456767, -0.0649897307, 0.648474991),
         CFrame.new(1.86507177, 0.598104239, 0.183552518, -0.114682339, -0.981059372, -0.156110525, 0.981060445, -0.0871559381, -0.172987223, 0.156104773, -0.172992408, 0.9724738),
         CFrame.new(-1.52644157, 0.0874626189, -0.302744657, 0.95125103, 0.20658794, -0.229004204, -0.254887104, 0.944645047, -0.2065873, 0.173649222, 0.254886597, 0.951251268),
         CFrame.new(0.623469114, -1.90178788, 0.0298061967, 0.992532074, -0.0928985924, 0.079056859, 0.0757590532, 0.97739321, 0.197391063, -0.0956070125, -0.189927697, 0.977131963),
         CFrame.new(-0.786503196, -1.67652178, -0.389780819, 0.631277382, 0.179900557, 0.754403591, -0.0723632798, 0.982144117, -0.173656344, -0.772174001, 0.0550341941, 0.6330235),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	attack = false
end

function BladeAttackTwo()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://251903070", Head,1,.95)
    MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0837758034, 0.700000048, -0.000987187028, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-1.40815973e-006, 1.49999845, 8.27014446e-007, 0.76637435, 0.015135292, -0.642216265, 0.0435769781, 0.99619478, 0.0754792169, 0.640914857, -0.0858311653, 0.762798488),
         CFrame.new(1.11243939, 1.57922888, 0.289018214, 0.795270383, 0.284988612, 0.535095096, -0.00377499871, -0.880278766, 0.474441946, 0.606243372, -0.379329592, -0.698983729),
         CFrame.new(-1.46526325, -7.59959221e-007, -0.196970493, 0.933013916, 0.31470269, 0.17449224, -0.249999911, 0.91567713, -0.314699322, -0.258815199, 0.249995798, 0.933014989),
         CFrame.new(0.500003934, -1.40000188, 5.00679016e-006, 0.869606853, 0.11697793, -0.47968778, 0.0593910068, 0.939692855, 0.336823553, 0.490160108, -0.321393192, 0.810215831),
         CFrame.new(-0.517370999, -1.89999473, 0.0984975696, 0.996194839, -0.0225575194, 0.0841861069, 0, 0.965926111, 0.258817971, -0.0871558487, -0.257833093, 0.96225059),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, 1.1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(8.49366188e-006, -0.517038405, -0.12939477, 0.573576272, -2.56408548e-008, 0.819152236, -0.212012097, 0.965925872, 0.148452446, -0.791240335, -0.258818954, 0.554032147),
         CFrame.new(-7.15255737e-007, 1.49999762, 5.66244125e-007, 0.573576272, -0.142242402, -0.806707799, -2.56408548e-008, 0.984808207, -0.173645884, 0.819152236, 0.0995991975, 0.564862609),
         CFrame.new(1.65453815, 0.0323560238, 0.0403400958, 0.471787304, -0.694269896, -0.54351294, 0.0667629391, 0.642788172, -0.763129234, 0.879181206, 0.323748112, 0.349610776),
         CFrame.new(-1.5888859, 0.198380977, 0.39086473, 0.890262604, 0.397129685, 0.222981408, -0.448023975, 0.851651311, 0.271964461, -0.0818972588, -0.34202081, 0.936116874),
         CFrame.new(0.843913436, -1.4842062, -0.160360321, 0.568213761, -0.234569371, -0.7887398, 0.0449442565, 0.96592617, -0.254886001, 0.82165277, 0.109380431, 0.559395015),
         CFrame.new(-0.500049353, -1.80359125, 0.459836125, 0.939691901, -2.05636024e-006, 0.34202233, -0.280167401, 0.573575675, 0.769751489, -0.196177214, -0.819152594, 0.538983822),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	attack = false
end

function BladeAttackThree()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://251903189", Head,1,.95)
    MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.573575675, 0, -0.819152594, 0, 1, 0, 0.819152594, 0, 0.573575675),
         CFrame.new(3.08454037e-006, 1.49999881, 2.57045031e-006, 0.642787039, -0.0667651147, 0.76312989, 0, 0.99619478, 0.0871556103, -0.766044915, -0.0560225062, 0.640341043),
         CFrame.new(1.69747591, 0.457380712, 0.451709926, -0.0444228128, -0.827531219, 0.55965966, -0.981060326, -0.0695906579, -0.180770397, 0.18854022, -0.557090104, -0.808766544),
         CFrame.new(-1.68707776, 0.160575554, -0.28150323, 0.690673113, 0.601469755, -0.401503354, -0.691249013, 0.712214351, -0.12217018, 0.212474763, 0.361918449, 0.907672644),
         CFrame.new(0.637356639, -1.97847009, 0.076719813, 0.850760341, -0.123644285, 0.51080215, 0.0764630362, 0.990710139, 0.112458259, -0.519961715, -0.0566175357, 0.852311194),
         CFrame.new(-0.628168941, -1.98483193, 0.152803689, 0.640938401, 0.0450230837, 0.766270876, -0.0758190081, 0.99710989, 0.00483164471, -0.763838768, -0.0611946844, 0.642499626),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, .9)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.179999992, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-3.07708979e-006, 1.49999881, 2.57790089e-006, 0.64278692, 0.066765137, -0.763130128, 0, 0.99619478, 0.0871556103, 0.766045094, -0.056022495, 0.640340984),
         CFrame.new(0.954324961, 0.24834919, -0.880105972, 0.326528549, 0.544942617, -0.772280335, -0.941748381, 0.257209718, -0.216687083, 0.0805559754, 0.798048139, 0.597185135),
         CFrame.new(-1.58964086, 0.138686687, 0.0523245335, 0.944645166, 0.254885972, -0.206588656, -0.206587031, 0.951251626, 0.229002386, 0.254887283, -0.173647493, 0.951251388),
         CFrame.new(0.670057595, -1.81781983, -0.10544461, 0.499700427, -0.0172690637, -0.866026282, 0.0345539972, 0.999402881, 9.12000269e-006, 0.865508974, -0.0299292281, 0.499998689),
         CFrame.new(-0.884505391, -1.76931953, -0.185952976, 0.681231737, 0.216974914, -0.699174821, -0.105348974, 0.974182904, 0.199672803, 0.724448264, -0.0623660684, 0.686502278),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	attack = false
end

function BladeAttackFour()
	attack = true
	local parti = Instance.new("ParticleEmitter", Hitbox)
	parti.Color = ColorSequence.new(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
	parti.LightEmission = 0.5
	parti.Size = NumberSequence.new(0.2)
	parti.Texture = "http://www.roblox.com/asset/?id=248625108"
	parti.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.133, 0.544),
		NumberSequenceKeypoint.new(0.321, 0.737),
		NumberSequenceKeypoint.new(0.388, 0),
		NumberSequenceKeypoint.new(0.469, 0.725),
		NumberSequenceKeypoint.new(0.522, 0.456),
		NumberSequenceKeypoint.new(0.616, 0.637),
		NumberSequenceKeypoint.new(0.64, 0),
		NumberSequenceKeypoint.new(0.745, 0.525),
		NumberSequenceKeypoint.new(1, 0)
	})
	parti.Size = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1.62),
		NumberSequenceKeypoint.new(0.123, 1.5),
		NumberSequenceKeypoint.new(0.154, 1.44),
		NumberSequenceKeypoint.new(0.357, 1.31),
		NumberSequenceKeypoint.new(0.555, 1.25),
		NumberSequenceKeypoint.new(0.725, 0.875),
		NumberSequenceKeypoint.new(1, 0.125)
	})
	parti.ZOffset = 0
	parti.Acceleration = Vector3.new(8, 6, 6)
	parti.LockedToPart = false
	parti.EmissionDirection = "Front"
	parti.Lifetime = NumberRange.new(0, 1)
	parti.Rate = 200
	parti.Rotation = NumberRange.new(4, 9)
	parti.RotSpeed = NumberRange.new(5, 9)
	parti.Speed = NumberRange.new(5, 7)
	parti.VelocitySpread = 28
	parti.Enabled = false
	CFuncs["Sound"].Create("rbxassetid://251904778", Head,1,.95)
	MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.199999988, 0, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
         CFrame.new(-3.2261014e-006, 1.49999571, 1.87009573e-006, 0.499998987, 0.0754793361, -0.862730443, 0, 0.996194661, 0.087155968, 0.866025984, -0.0435778946, 0.498096317),
         CFrame.new(0.758310795, 0.506792068, -1.07750559, 0.0780267715, 0.542353034, 0.836519599, 0.995831132, -0.0821644962, -0.0396157168, 0.0472465083, 0.836123407, -0.546503007),
         CFrame.new(-1.56371987, -0.0378807485, -0.12044096, 0.892536283, 0.33327353, 0.30382207, -0.157379016, 0.861525297, -0.482707113, -0.422623843, 0.383018374, 0.821392834),
         CFrame.new(0.688273072, -1.83205605, 0.326112747, 0.492402941, -0.0868238136, -0.866025984, 0.173647985, 0.984807849, 0, 0.852869213, -0.150383666, 0.499998987),
         CFrame.new(-0.464390695, -1.92090166, -0.363977104, 0.962945819, 0.0995973051, -0.250631034, -0.0593889765, 0.984808624, 0.163171798, 0.263075113, -0.142240882, 0.954232156),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, .7)
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1)
	parti.Enabled = true
	MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(6.67199492e-006, -0.207597449, -0.0868210196, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
         CFrame.new(-2.45868534e-007, 1.4999963, -1.11758425e-008, 0.642787039, -1.63912773e-007, 0.766045034, 9.57827169e-008, 1.00000012, 1.1920929e-007, -0.766045034, -7.4505806e-009, 0.642787039),
         CFrame.new(1.63684285, 0.191258341, 0.0590808541, 0.419205964, -0.896826267, -0.141311735, 0.875504494, 0.440527022, -0.198564485, 0.240329444, -0.0404796004, 0.969847083),
         CFrame.new(-1.44409096, 0.0586332679, 0.28650257, 0.847117305, 0.408219695, 0.340219229, -0.468929112, 0.875426352, 0.117194086, -0.249995977, -0.258815825, 0.93301481),
         CFrame.new(0.598103762, -1.98841107, 0.015527457, 0.981059909, -0.0858310461, -0.17365095, 0.115870565, 0.978432178, 0.171010211, 0.155227691, -0.187892288, 0.969845891),
         CFrame.new(-0.84634155, -1.7162106, -0.315425038, 0.499999523, 0.150383905, 0.852868795, 7.07805157e-007, 0.98480767, -0.17364873, -0.866025805, 0.0868248716, 0.492403209),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	parti.Enabled = false
	MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414),
         CFrame.new(-1.40070915e-006, 1.4999963, -1.66893005e-006, 0.76604414, -0.0429935083, 0.6413486, 0, 0.997760653, 0.066885978, -0.642788053, -0.051237613, 0.764328718),
         CFrame.new(1.66817236, 0.999997735, 0.511572003, 0.736215532, -0.634792984, 0.234573662, -0.642445922, -0.546619952, 0.537093997, -0.212720826, -0.546117783, -0.810250103),
         CFrame.new(-1.37409723, 0.400003314, -0.627805173, 0.774178386, 0.211310744, -0.596653819, -0.628698826, 0.366000623, -0.686135113, 0.0733878911, 0.906306386, 0.416200638),
         CFrame.new(0.653213322, -1.99999535, -0.12855646, 0.94284457, -0.0929451212, 0.320008487, 0.0665469989, 0.993487716, 0.0924861878, -0.326520622, -0.0659044906, 0.94288969),
         CFrame.new(-0.640875459, -1.9999963, -0.0123234689, 0.764365256, 0.0739410222, 0.64053005, -0.0661710203, 0.997153461, -0.0361446291, -0.641379297, -0.0147568267, 0.767082214),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://251903189", Head,1,.95)
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, .8)
	CFuncs["Sound"].Create("rbxassetid://199144678", Hitbox, 1, 1)
	parti.Enabled = true
	MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-1.3038516e-006, -0.390966356, -0.0855526477, 0.499999046, 1.78813579e-007, 0.866026044, -0.150384009, 0.984807789, 0.0868238211, -0.852869093, -0.173648283, 0.492402941),
         CFrame.new(-4.05311584e-006, 1.49999619, 1.60932541e-006, 0.573575735, -0.0713945851, -0.81603545, 6.76140189e-007, 0.99619472, -0.0871561766, 0.819152594, 0.0499901175, 0.571393192),
         CFrame.new(1.28216481, 0.179315746, -0.842360139, 0.633024693, -0.0230962932, -0.773787081, -0.717572212, 0.357540846, -0.597708046, 0.290465295, 0.933612049, 0.209758848),
         CFrame.new(-1.62196672, 0.225311682, 0.0992549062, 0.755533695, 0.605033398, 0.25120458, -0.532469451, 0.790533543, -0.302544594, -0.381635189, 0.0948238969, 0.919436276),
         CFrame.new(0.811682165, -1.60607064, -0.260146618, 0.492403209, -0.0868215263, -0.866026103, 0.173648342, 0.98480773, 2.86102295e-006, 0.852869093, -0.15038538, 0.499998868),
         CFrame.new(-0.546382487, -1.80111504, -0.26132381, 0.984808207, 0.173645854, 6.02006912e-006, -0.142245889, 0.80670774, 0.573575616, 0.0995941162, -0.564862847, 0.819152772),}, .43, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 10, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	parti.Enabled = false
	Humanoid.WalkSpeed = 16
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	HandleWeld:remove()
	HandleWeld = CFuncs["Weld"].Create(m, SheathHandle, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000686645508, -1.94999123, 0.00476646423, 0.999998629, 7.38364179e-007, 0.00163643551, -7.38407834e-007, 1, 2.98023224e-008, -0.00163643563, 2.98023224e-008, 0.999998927))
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
			CFrame.new(-4.73484397e-006, 1.50000036, 1.15185976e-005, 0.939552784, 0.0368335471, -0.340417534, -0.0075959973, 0.996194661, 0.0868244022, 0.342320174, -0.0789902881, 0.936257243),
			CFrame.new(0.161956966, -0.0865287632, -0.995668888, -0.351033777, 0.698357642, 0.623756588, 0.856367111, 0.508853376, -0.0877711996, -0.378696293, 0.503353894, -0.776675105),
			CFrame.new(-1.33793128, -0.137702584, -0.193716392, 0.969846547, -0.200705618, -0.138257802, 0.171010017, 0.96461004, -0.200706288, 0.173647791, 0.171010792, 0.969846368),
			CFrame.new(0.513032913, -1.99914098, 0.013043493, 0.70634675, -0.0327672996, -0.707107365, 0.0463399887, 0.998925745, 0, 0.706347764, -0.032767348, 0.707106352),
			CFrame.new(-0.617212117, -1.98815656, -0.0676514655, 0.862729609, 0.0754801258, -0.500000715, -0.0871560201, 0.99619472, 1.64420851e-006, 0.498098105, 0.0435766503, 0.866025209),}, .5, false)
	end
	parti:remove()
	CurrentMode = "Sheathed"
	attack = false
end
------------------------------------------------------------------------------Hate Wave
local WaveNum = 1
local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
nsk = NumberSequenceKeypoint.new
it = Instance.new
vt = Vector3.new
cf = CFrame.new
function Sound(parent, ID, Volume, Pitch, Looped)
	local sound = Inst("Sound", parent)
	sound.SoundId = ID
	sound.Volume = Volume
	sound.Pitch = Pitch
	sound.Looped = Looped
	sound:Play()
	return sound
end
local runServ = game:GetService("RunService")
local debServ = game:GetService("Debris")
local F1, F2, F3 = Instance.new("Folder", Character), Instance.new("Folder"), Instance.new("Folder")
F1.Name = "Parts Folder" F2.Parent = F1 F2.Name = "Effects" F3.Parent = F1 F3.Name = "Extra Parts"
Inst = Instance.new
Colour1 = "Really red"
local rad = math.rad
local huge = math.huge
local rand = math.random
local Vec = Vector3.new
local Cf = CFrame.new
local Euler = CFrame.fromEulerAnglesXYZ
local BC = BrickColor.new
local Col3 = Color3.new
local Inst = Instance.new
local Ud2 = UDim2.new
function Hate_Wave()
	attack = true
	local function MakeWave()
		local Wave = Inst("Model", F2)
		Wave.Name = "Wave"
		local WM = Instance.new('Part',Wave)
		WM.BrickColor = BC(Colour1)
		WM.Transparency = 1
		WM.FormFactor = 3
		WM.Reflectance = 0
		WM.Material = "Neon"
		WM.Name = "WavePart"
		WM.Position = Vec(10.3, 7.6, -239.4)
		WM.Rotation = Vec(0, 0, 0)
		WM.Anchored = true
		WM.CanCollide = false
		WM.Locked = true
		WM.Size = Vector3.new(11, 0.2, 5)
		local parti = Instance.new("ParticleEmitter")
		parti.Color = cs(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
		parti.LightEmission = 0.5
		parti.Size = ns(0.2)
		parti.Texture = "http://www.roblox.com/asset/?id=248625108"
		sizeseq = ns({nsk(0, 1.62), nsk(0.123, 1.5), nsk(0.154, 1.44), nsk(0.357, 1.31), nsk(0.555, 1.25), nsk(0.725, 0.875), nsk(1, 0.125)})
		transseq = ns({nsk(0, 0), nsk(0.133, 0.544), nsk(0.321, 0.737), nsk(0.388, 0), nsk(0.469, 0.725), nsk(0.522, 0.456), nsk(0.616, 0.637), nsk(0.64, 0), nsk(0.745, 0.525), nsk(1, 0)})
		parti.Transparency = transseq
		parti.Size = sizeseq
		parti.ZOffset = 0
		parti.Acceleration = vt(0, 10, 0)
		parti.LockedToPart = false
		parti.EmissionDirection = "Front"
		parti.Lifetime = nr(0, 1)
		parti.Rate = 200
		parti.Rotation = nr(4, 9)
		parti.RotSpeed = nr(5, 9)
		parti.Speed = nr(2, 4)
		parti.VelocitySpread = 28
		parti.Parent = nil
		parti.Parent = WM
		parti.Enabled = true
		d = Instance.new("Decal")
        d.Parent = WM
        d.Texture = "http://www.roblox.com/asset/?id=182703461"
        d.Face = "Top"
        d2 = Instance.new("Decal")
        d2.Parent = WM
        d2.Texture = "http://www.roblox.com/asset/?id=182703461"
        d2.Face = "Bottom"
		local WH = Inst("Part", Wave)
		WH.Transparency = 1
		WH.Name = "WaveHitbox"
		WH.Position = Vec(10.3, 7.6, -240.2)
		WH.Rotation = Vec(0, 0, 0)
		WH.Anchored = true
		WH.CanCollide = false
		WH.Locked = true
		WH.Size = Vec(5, 12, 8)
		for _, w in pairs(Wave:GetChildren()) do
			if w:IsA("BasePart") and w ~= WH then
				local W = Inst("Weld", WH)
				W.Part0 = WH
				W.Part1 = w
				W.C0 = WH.CFrame:inverse() * Cf(WH.Position)
				W.C1 = w.CFrame:inverse() * Cf(WH.Position)
				local M = Inst("BlockMesh", w)
				M.Scale = Vec(0, 1, 1)
			end
		end
		local SiP = {NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, .188, 0)}
		local TrP = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
		local PE = Inst("ParticleEmitter", WH)
		PE.Color = ColorSequence.new(BC(Colour1).Color)
		PE.LightEmission = 1
		PE.Size = NumberSequence.new(SiP)
		PE.Transparency = NumberSequence.new(TrP)
		PE.EmissionDirection = "Back"
		PE.Lifetime = NumberRange.new(.2, .8)
		PE.Rate = 100
		PE.Rotation = NumberRange.new(60, 120)
		PE.RotSpeed = NumberRange.new(120, 360)
		PE.Speed = NumberRange.new(30)
		return Wave, WH
	end
	if WaveNum == 1 then -- first wave anim
		WaveNum = 2
		for i = 0, .3, .1 do
			swait() 
					PlayAnimationFromTable({
			CFrame.new(-0, -0, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
			CFrame.new(-4.73484397e-006, 1.50000036, 1.15185976e-005, 0.939552784, 0.0368335471, -0.340417534, -0.0075959973, 0.996194661, 0.0868244022, 0.342320174, -0.0789902881, 0.936257243),
			CFrame.new(0.161956966, -0.0865287632, -0.995668888, -0.351033777, 0.698357642, 0.623756588, 0.856367111, 0.508853376, -0.0877711996, -0.378696293, 0.503353894, -0.776675105),
			CFrame.new(-1.33793128, -0.137702584, -0.193716392, 0.969846547, -0.200705618, -0.138257802, 0.171010017, 0.96461004, -0.200706288, 0.173647791, 0.171010792, 0.969846368),
			CFrame.new(0.513032913, -1.99914098, 0.013043493, 0.70634675, -0.0327672996, -0.707107365, 0.0463399887, 0.998925745, 0, 0.706347764, -0.032767348, 0.707106352),
			CFrame.new(-0.617212117, -1.98815656, -0.0676514655, 0.862729609, 0.0754801258, -0.500000715, -0.0871560201, 0.99619472, 1.64420851e-006, 0.498098105, 0.0435766503, 0.866025209),}, .4, false)
		end
		for i = 0, .2, .1 do
			swait() 
					PlayAnimationFromTable({
			CFrame.new(9.59262252e-006, -0.207597882, -0.0868234336, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
			CFrame.new(-3.5315752e-006, 1.50000048, -2.77906656e-006, 0.642787039, 0.0667647347, 0.76312995, 9.57827169e-008, 0.99619478, -0.0871551931, -0.766045034, 0.0560222939, 0.640341043),
			CFrame.new(1.95751476, 0.743757784, -0.295798361, -0.258819222, -0.875430286, 0.408209145, 0.965925872, -0.234570161, 0.109381169, -1.89244747e-006, 0.422609687, 0.90631187),
			CFrame.new(-1.43068314, -0.111600742, -0.335780501, 0.981059968, -0.0871567875, -0.172988921, 0.0379645079, 0.96225071, -0.269503951, 0.189947724, 0.25783211, 0.947334528),
			CFrame.new(0.665393293, -1.87006605, -0.0759503245, 0.942652583, -0.231490314, 0.240454674, 0.172370344, 0.954535782, 0.243207887, -0.285822898, -0.187813237, 0.939697623),
			CFrame.new(-0.794201851, -1.73358107, -0.2059865, 0.573575616, 0.142244354, 0.806707919, 5.569309e-007, 0.98480773, -0.173648566, -0.819152713, 0.0996010154, 0.564861596),}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
		end
			FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
		local Wave, WHB = MakeWave()
		for _, i in pairs(Wave.WavePart:GetChildren()) do
			if i:IsA("SpecialMesh") then
				i:Destroy()
			elseif i:IsA("BlockMesh") then
				i:Destroy()
		end
		end
		for _, p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(90))
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB,"http://roblox.com/asset/?id=75422951", 1, 1, false) 
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
			debServ:AddItem(Wave, 2)
			local hit = WHB.Touched:connect(function(part) 	MagnitudeDamage(WHB, 3, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			repeat swait() until Wave.Parent == nil
			end)
			end))
	elseif WaveNum == 2 then
		WaveNum = 3
		for i = 0, .3, .1 do
			swait() 
					PlayAnimationFromTable({
			CFrame.new(-0, -0, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
			CFrame.new(-4.73484397e-006, 1.50000036, 1.15185976e-005, 0.939552784, 0.0368335471, -0.340417534, -0.0075959973, 0.996194661, 0.0868244022, 0.342320174, -0.0789902881, 0.936257243),
			CFrame.new(0.161956966, -0.0865287632, -0.995668888, -0.351033777, 0.698357642, 0.623756588, 0.856367111, 0.508853376, -0.0877711996, -0.378696293, 0.503353894, -0.776675105),
			CFrame.new(-1.33793128, -0.137702584, -0.193716392, 0.969846547, -0.200705618, -0.138257802, 0.171010017, 0.96461004, -0.200706288, 0.173647791, 0.171010792, 0.969846368),
			CFrame.new(0.513032913, -1.99914098, 0.013043493, 0.70634675, -0.0327672996, -0.707107365, 0.0463399887, 0.998925745, 0, 0.706347764, -0.032767348, 0.707106352),
			CFrame.new(-0.617212117, -1.98815656, -0.0676514655, 0.862729609, 0.0754801258, -0.500000715, -0.0871560201, 0.99619472, 1.64420851e-006, 0.498098105, 0.0435766503, 0.866025209),}, .4, false)
		end
		for i = 0, .2, .1 do
			swait() 
					PlayAnimationFromTable({
			CFrame.new(9.59262252e-006, -0.207597882, -0.0868234336, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
			CFrame.new(-3.5315752e-006, 1.50000048, -2.77906656e-006, 0.642787039, 0.0667647347, 0.76312995, 9.57827169e-008, 0.99619478, -0.0871551931, -0.766045034, 0.0560222939, 0.640341043),
			CFrame.new(1.95751476, 0.743757784, -0.295798361, -0.258819222, -0.875430286, 0.408209145, 0.965925872, -0.234570161, 0.109381169, -1.89244747e-006, 0.422609687, 0.90631187),
			CFrame.new(-1.43068314, -0.111600742, -0.335780501, 0.981059968, -0.0871567875, -0.172988921, 0.0379645079, 0.96225071, -0.269503951, 0.189947724, 0.25783211, 0.947334528),
			CFrame.new(0.665393293, -1.87006605, -0.0759503245, 0.942652583, -0.231490314, 0.240454674, 0.172370344, 0.954535782, 0.243207887, -0.285822898, -0.187813237, 0.939697623),
			CFrame.new(-0.794201851, -1.73358107, -0.2059865, 0.573575616, 0.142244354, 0.806707919, 5.569309e-007, 0.98480773, -0.173648566, -0.819152713, 0.0996010154, 0.564861596),}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
		end
			FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
		local Wave, WHB = MakeWave()
				for _, i in pairs(Wave.WavePart:GetChildren()) do
			if i:IsA("SpecialMesh") then
				i:Destroy()
			elseif i:IsA("BlockMesh") then
				i:Destroy()
		end
		end
		for _, p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(45))
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB,"http://roblox.com/asset/?id=75422951", 1, 1.6, false) 
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
			debServ:AddItem(Wave, 2)
			local hit = WHB.Touched:connect(function(part) 	MagnitudeDamage(WHB, 3, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			repeat swait() until Wave.Parent == nil
			end)
			end))
	elseif WaveNum == 3 then
		WaveNum = 4
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.573575675, 0, -0.819152594, 0, 1, 0, 0.819152594, 0, 0.573575675),
         CFrame.new(3.08454037e-006, 1.49999881, 2.57045031e-006, 0.642787039, -0.0667651147, 0.76312989, 0, 0.99619478, 0.0871556103, -0.766044915, -0.0560225062, 0.640341043),
         CFrame.new(1.69747591, 0.457380712, 0.451709926, -0.0444228128, -0.827531219, 0.55965966, -0.981060326, -0.0695906579, -0.180770397, 0.18854022, -0.557090104, -0.808766544),
         CFrame.new(-1.68707776, 0.160575554, -0.28150323, 0.690673113, 0.601469755, -0.401503354, -0.691249013, 0.712214351, -0.12217018, 0.212474763, 0.361918449, 0.907672644),
         CFrame.new(0.637356639, -1.97847009, 0.076719813, 0.850760341, -0.123644285, 0.51080215, 0.0764630362, 0.990710139, 0.112458259, -0.519961715, -0.0566175357, 0.852311194),
         CFrame.new(-0.628168941, -1.98483193, 0.152803689, 0.640938401, 0.0450230837, 0.766270876, -0.0758190081, 0.99710989, 0.00483164471, -0.763838768, -0.0611946844, 0.642499626),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.179999992, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-3.07708979e-006, 1.49999881, 2.57790089e-006, 0.64278692, 0.066765137, -0.763130128, 0, 0.99619478, 0.0871556103, 0.766045094, -0.056022495, 0.640340984),
         CFrame.new(0.954324961, 0.24834919, -0.880105972, 0.326528549, 0.544942617, -0.772280335, -0.941748381, 0.257209718, -0.216687083, 0.0805559754, 0.798048139, 0.597185135),
         CFrame.new(-1.58964086, 0.138686687, 0.0523245335, 0.944645166, 0.254885972, -0.206588656, -0.206587031, 0.951251626, 0.229002386, 0.254887283, -0.173647493, 0.951251388),
         CFrame.new(0.670057595, -1.81781983, -0.10544461, 0.499700427, -0.0172690637, -0.866026282, 0.0345539972, 0.999402881, 9.12000269e-006, 0.865508974, -0.0299292281, 0.499998689),
         CFrame.new(-0.884505391, -1.76931953, -0.185952976, 0.681231737, 0.216974914, -0.699174821, -0.105348974, 0.974182904, 0.199672803, 0.724448264, -0.0623660684, 0.686502278),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
		local Wave, WHB = MakeWave()
				for _, i in pairs(Wave.WavePart:GetChildren()) do
			if i:IsA("SpecialMesh") then
				i:Destroy()
			elseif i:IsA("BlockMesh") then
				i:Destroy()
		end
		end
		for _, p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(-45))
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB,"http://roblox.com/asset/?id=75422951", 1, 1.6, false) 
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
			debServ:AddItem(Wave, 2)
			local hit = WHB.Touched:connect(function(part) 	MagnitudeDamage(WHB, 3, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			repeat swait() until Wave.Parent == nil
			end)
			end))
	elseif WaveNum == 4 then
		WaveNum = 1
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0837758034, 0.700000048, -0.000987187028, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-1.40815973e-006, 1.49999845, 8.27014446e-007, 0.76637435, 0.015135292, -0.642216265, 0.0435769781, 0.99619478, 0.0754792169, 0.640914857, -0.0858311653, 0.762798488),
         CFrame.new(1.11243939, 1.57922888, 0.289018214, 0.795270383, 0.284988612, 0.535095096, -0.00377499871, -0.880278766, 0.474441946, 0.606243372, -0.379329592, -0.698983729),
         CFrame.new(-1.46526325, -7.59959221e-007, -0.196970493, 0.933013916, 0.31470269, 0.17449224, -0.249999911, 0.91567713, -0.314699322, -0.258815199, 0.249995798, 0.933014989),
         CFrame.new(0.500003934, -1.40000188, 5.00679016e-006, 0.869606853, 0.11697793, -0.47968778, 0.0593910068, 0.939692855, 0.336823553, 0.490160108, -0.321393192, 0.810215831),
         CFrame.new(-0.517370999, -1.89999473, 0.0984975696, 0.996194839, -0.0225575194, 0.0841861069, 0, 0.965926111, 0.258817971, -0.0871558487, -0.257833093, 0.96225059),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, 1.1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(8.49366188e-006, -0.517038405, -0.12939477, 0.573576272, -2.56408548e-008, 0.819152236, -0.212012097, 0.965925872, 0.148452446, -0.791240335, -0.258818954, 0.554032147),
         CFrame.new(-7.15255737e-007, 1.49999762, 5.66244125e-007, 0.573576272, -0.142242402, -0.806707799, -2.56408548e-008, 0.984808207, -0.173645884, 0.819152236, 0.0995991975, 0.564862609),
         CFrame.new(1.65453815, 0.0323560238, 0.0403400958, 0.471787304, -0.694269896, -0.54351294, 0.0667629391, 0.642788172, -0.763129234, 0.879181206, 0.323748112, 0.349610776),
         CFrame.new(-1.5888859, 0.198380977, 0.39086473, 0.890262604, 0.397129685, 0.222981408, -0.448023975, 0.851651311, 0.271964461, -0.0818972588, -0.34202081, 0.936116874),
         CFrame.new(0.843913436, -1.4842062, -0.160360321, 0.568213761, -0.234569371, -0.7887398, 0.0449442565, 0.96592617, -0.254886001, 0.82165277, 0.109380431, 0.559395015),
         CFrame.new(-0.500049353, -1.80359125, 0.459836125, 0.939691901, -2.05636024e-006, 0.34202233, -0.280167401, 0.573575675, 0.769751489, -0.196177214, -0.819152594, 0.538983822),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
		local Wave, WHB = MakeWave()
				for _, i in pairs(Wave.WavePart:GetChildren()) do
			if i:IsA("SpecialMesh") then
				i:Destroy()
			elseif i:IsA("BlockMesh") then
				i:Destroy()
		end
		end
		for _, p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB,"http://roblox.com/asset/?id=75422951", 1, 1.6, false) 
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
			debServ:AddItem(Wave, 2)
			local hit = WHB.Touched:connect(function(part) 	MagnitudeDamage(WHB, 3, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			repeat swait() until Wave.Parent == nil
			end)
			end))
	end
	attack = false
end
------------------------------------------------------------------------------GUARD
local GodMode = false
local OP_HEALTH = runServ.RenderStepped:connect(function()
	if GodMode and RootJoint.Parent ~= nil then
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		wait()
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
	end
end)
local GH = 5000
local VHealth = Inst("DoubleConstrainedValue")
VHealth.MaxValue = GH*4
VHealth.MinValue = 0
VHealth.Value = GH*4
function Corrupt_Guard()
	attack = true
	huh = true
	Humanoid.WalkSpeed = 0
	local LHealth = Humanoid.Health
	GodMode = true
	local function MakeGuard()
		local guard = Inst("Part", workspace)
		guard.BrickColor = BC(Colour1)
		guard.Material = "SmoothPlastic"
		guard.Transparency = .3
		guard.Anchored = true
		guard.Name = "Guard"
		guard.Anchored = true
		guard.CanCollide = false
		guard.Locked = true
		guard.Size = Vec(11.2, 11.2, 3.2)
		local gm = Inst("SpecialMesh", guard)
		gm.MeshId = "http://www.roblox.com/asset/?id=1185246"
		gm.Scale = Vec(24, 24, 10)
		gm.TextureId = "http://www.roblox.com/asset/?id=74697410"
		local vc =  BC(Colour1).Color
		gm.VertexColor = Vec(vc.r, vc.g, vc.b)
		guard.CFrame = RootPart.CFrame * Cf(0, 0, -2.2)
		local DBModel = Inst("Model", workspace)
		DBModel.Name = "DamageBox"
		local gdb = Inst("Part", DBModel)
		gdb.Transparency = 1
		gdb.Anchored = true
		gdb.CanCollide = true
		gdb.Locked = true
		gdb.Size = Vec(16, 16, 12)
		gdb.CFrame = guard.CFrame * Cf(0, 0, -3.2)
		gdb.Name = "Head"
		local gdt = Inst("Part", DBModel)
		gdt.Transparency = 1
		gdt.Anchored = true
		gdt.CanCollide = true
		gdt.Locked = true
		gdt.Size = Vec(16, 16, 12)
		gdt.CFrame = guard.CFrame * Cf(0, 0, -3.2)
		gdt.Name = "Torso"
		local kthen = Inst("Weld", gdb)
		kthen.Part0 = gdb
		kthen.Part1 = gdt
		local GHealth = Inst("Humanoid", DBModel)
		GHealth.MaxHealth = GH
		coroutine.resume(coroutine.create(function() runServ.Stepped:wait() GHealth.Health = GHealth.MaxHealth end))
		return guard, GHealth, gdb, gdt, DBModel
	end
	local Guard, GuardHealth, GDB, GDT, DBM = MakeGuard()
	local Projectiles = {}
	local Ignore = {Character}
	local DontHeal = false
	local function Check(pro)
		local isSafe = false
		for _, g in pairs(Projectiles) do
			if g[1] ~= pro then
				isSafe = true
			end
		end
		return isSafe
	end
	runServ.Stepped:wait()
	repeat
		Torso.Anchored=true
		Humanoid.WalkSpeed = 0
		Humanoid.MaxHealth = huge
		runServ.Stepped:wait()
		Humanoid.Health = huge
		RootPart.Velocity = Vec(0, 0, 0)
		if Guard and GuardHealth and GDB and GDT and DBM and not DontHeal and Guard.Parent ~= nil and GuardHealth.Parent ~= nil and GDB.Parent ~= nil and GDT.Parent ~= nil and DBM.Parent ~= nil and GuardHealth.Health ~= 0 then
			GuardHealth.MaxHealth = GH
			Guard.CFrame = RootPart:GetRenderCFrame() * Cf(0, 0, -2.2)
			GDB.CFrame = Guard:GetRenderCFrame() * Cf(0, 0, -3.2)
			GDT.CFrame = Guard:GetRenderCFrame() * Cf(0, 0, -3.2)
			if GuardHealth.Health ~= GuardHealth.MaxHealth then
				local HealthLost = (GuardHealth.MaxHealth-GuardHealth.Health)
				LHealth = LHealth+(HealthLost/2)

				GuardHealth.Health = GuardHealth.MaxHealth
			end
		else
			debServ:AddItem(Guard, 0)
			debServ:AddItem(GuardHealth, 0)
			debServ:AddItem(GDB, 0)
			debServ:AddItem(DBM, 0)
			Guard, GuardHealth, GDB, GDT, DBM = MakeGuard()
			local s1 = Sound(RootPart,"http://roblox.com/asset/?id=233091161", 1, 1.4, false)
			debServ:AddItem(s1, 3)
			DBM.Parent = F2
			MagnitudeDamage(RootPart, 10, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			DBM.Parent = workspace
			repeat runServ.Stepped:wait() until Guard and GuardHealth and GDB and DBM
		end
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -0.1 + .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(50), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.05) * angles(math.rad(-3 + 3 * math.cos(sine / 20)), math.rad(-50), math.rad(3 + 3 * math.cos(sine / 20))), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.35, 0.5, -.6) * angles(math.rad(90), math.rad(70), math.rad(5 + 1 * math.cos(sine / 15))), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.6, 0.1, 0) * angles(math.rad(0), math.rad(-5), math.rad(-15 - 2 * math.cos(sine / 15))), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(-30), math.rad(5 - 1 * math.cos(sine / 15))), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(-30), math.rad(-5 + 1 * math.cos(sine / 15))), .3)
	until huh == false 
	Torso.Anchored = false
	debServ:AddItem(Guard, 0)
	debServ:AddItem(GuardHealth, 0)
	debServ:AddItem(GDB, 0)
	debServ:AddItem(DBM, 0)
	GodMode = false
	Humanoid.MaxHealth = 100
	Humanoid.Health = 100
	Humanoid.WalkSpeed = 16
	attack = false
	huh = false
	wait(.15)
	Humanoid.Health = LHealth
	coroutine.resume(coroutine.create(function()
	end))
end
ArtificialHB.Event:connect(function()
	if GodMode == false then
		Humanoid.MaxHealth = 100
	end
end)
------------------------------------------------------------------------------UNSHEATHE
function UNSHEATH()
	attack = true
		local function MakeWave()
		local Wave = Inst("Model", F2)
		Wave.Name = "Wave"
		local WM = Instance.new('Part',Wave)
		WM.BrickColor = BC(Colour1)
		WM.Transparency = 1
		WM.FormFactor = 3
		WM.Reflectance = 0
		WM.Material = "Neon"
		WM.Name = "WavePart"
		WM.Position = Vec(10.3, 7.6, -239.4)
		WM.Rotation = Vec(0, 0, 0)
		WM.Anchored = true
		WM.CanCollide = false
		WM.Locked = true
		WM.Size = Vector3.new(11, 0.2, 5)
		local parti = Instance.new("ParticleEmitter")
		parti.Color = cs(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
		parti.LightEmission = 0.5
		parti.Size = ns(0.2)
		parti.Texture = "http://www.roblox.com/asset/?id=248625108"
		sizeseq = ns({nsk(0, 1.62), nsk(0.123, 1.5), nsk(0.154, 1.44), nsk(0.357, 1.31), nsk(0.555, 1.25), nsk(0.725, 0.875), nsk(1, 0.125)})
		transseq = ns({nsk(0, 0), nsk(0.133, 0.544), nsk(0.321, 0.737), nsk(0.388, 0), nsk(0.469, 0.725), nsk(0.522, 0.456), nsk(0.616, 0.637), nsk(0.64, 0), nsk(0.745, 0.525), nsk(1, 0)})
		parti.Transparency = transseq
		parti.Size = sizeseq
		parti.ZOffset = 0
		parti.Acceleration = vt(0, 10, 0)
		parti.LockedToPart = false
		parti.EmissionDirection = "Front"
		parti.Lifetime = nr(0, 1)
		parti.Rate = 200
		parti.Rotation = nr(4, 9)
		parti.RotSpeed = nr(5, 9)
		parti.Speed = nr(2, 4)
		parti.VelocitySpread = 28
		parti.Parent = nil
		parti.Parent = WM
		parti.Enabled = true
		d = Instance.new("Decal")
        d.Parent = WM
        d.Texture = "http://www.roblox.com/asset/?id=182703461"
        d.Face = "Top"
        d2 = Instance.new("Decal")
        d2.Parent = WM
        d2.Texture = "http://www.roblox.com/asset/?id=182703461"
        d2.Face = "Bottom"
		local WH = Inst("Part", Wave)
		WH.Transparency = 1
		WH.Name = "WaveHitbox"
		WH.Position = Vec(10.3, 7.6, -240.2)
		WH.Rotation = Vec(0, 0, 0)
		WH.Anchored = true
		WH.CanCollide = false
		WH.Locked = true
		WH.Size = Vec(5, 12, 8)
		for _, w in pairs(Wave:GetChildren()) do
			if w:IsA("BasePart") and w ~= WH then
				local W = Inst("Weld", WH)
				W.Part0 = WH
				W.Part1 = w
				W.C0 = WH.CFrame:inverse() * Cf(WH.Position)
				W.C1 = w.CFrame:inverse() * Cf(WH.Position)
				local M = Inst("BlockMesh", w)
				M.Scale = Vec(0, 1, 1)
			end
		end
		local SiP = {NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, .188, 0)}
		local TrP = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
		local PE = Inst("ParticleEmitter", WH)
		PE.Color = ColorSequence.new(BC(Colour1).Color)
		PE.LightEmission = 1
		PE.Size = NumberSequence.new(SiP)
		PE.Transparency = NumberSequence.new(TrP)
		PE.EmissionDirection = "Back"
		PE.Lifetime = NumberRange.new(.2, .8)
		PE.Rate = 100
		PE.Rotation = NumberRange.new(60, 120)
		PE.RotSpeed = NumberRange.new(120, 360)
		PE.Speed = NumberRange.new(30)
		return Wave, WH
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
			CFrame.new(-4.73484397e-006, 1.50000036, 1.15185976e-005, 0.939552784, 0.0368335471, -0.340417534, -0.0075959973, 0.996194661, 0.0868244022, 0.342320174, -0.0789902881, 0.936257243),
			CFrame.new(0.161956966, -0.0865287632, -0.995668888, -0.351033777, 0.698357642, 0.623756588, 0.856367111, 0.508853376, -0.0877711996, -0.378696293, 0.503353894, -0.776675105),
			CFrame.new(-1.33793128, -0.137702584, -0.193716392, 0.969846547, -0.200705618, -0.138257802, 0.171010017, 0.96461004, -0.200706288, 0.173647791, 0.171010792, 0.969846368),
			CFrame.new(0.513032913, -1.99914098, 0.013043493, 0.70634675, -0.0327672996, -0.707107365, 0.0463399887, 0.998925745, 0, 0.706347764, -0.032767348, 0.707106352),
			CFrame.new(-0.617212117, -1.98815656, -0.0676514655, 0.862729609, 0.0754801258, -0.500000715, -0.0871560201, 0.99619472, 1.64420851e-006, 0.498098105, 0.0435766503, 0.866025209),}, .4, false)
	end
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1)
	local parti = Instance.new("ParticleEmitter", Hitbox)
	parti.Color = ColorSequence.new(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
	parti.LightEmission = 0.5
	parti.Size = NumberSequence.new(0.2)
	parti.Texture = "http://www.roblox.com/asset/?id=248625108"
	parti.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.133, 0.544),
		NumberSequenceKeypoint.new(0.321, 0.737),
		NumberSequenceKeypoint.new(0.388, 0),
		NumberSequenceKeypoint.new(0.469, 0.725),
		NumberSequenceKeypoint.new(0.522, 0.456),
		NumberSequenceKeypoint.new(0.616, 0.637),
		NumberSequenceKeypoint.new(0.64, 0),
		NumberSequenceKeypoint.new(0.745, 0.525),
		NumberSequenceKeypoint.new(1, 0)
	})
	parti.Size = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1.62),
		NumberSequenceKeypoint.new(0.123, 1.5),
		NumberSequenceKeypoint.new(0.154, 1.44),
		NumberSequenceKeypoint.new(0.357, 1.31),
		NumberSequenceKeypoint.new(0.555, 1.25),
		NumberSequenceKeypoint.new(0.725, 0.875),
		NumberSequenceKeypoint.new(1, 0.125)
	})
	parti.ZOffset = 0
	parti.Acceleration = Vector3.new(8, 6, 6)
	parti.LockedToPart = false
	parti.EmissionDirection = "Front"
	parti.Lifetime = NumberRange.new(0, 1)
	parti.Rate = 200
	parti.Rotation = NumberRange.new(4, 9)
	parti.RotSpeed = NumberRange.new(5, 9)
	parti.Speed = NumberRange.new(5, 7)
	parti.VelocitySpread = 28
	game:GetService("Debris"):AddItem(parti, 1)
	HandleWeld:remove()
	HandleWeld = CFuncs["Weld"].Create(m, RightArm, Handle, CFrame.new(0, 0, 0), CFrame.new(0, -.1, .95) * CFrame.Angles(math.rad(90), math.rad(180), 0))
	Humanoid.WalkSpeed = 25
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, .7)
	CFuncs["Sound"].Create("rbxassetid://251904778", Head,1,.95)
		MagnitudeDamage(Hitbox, 7, 20, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.08 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(9.59262252e-006, -0.207597882, -0.0868234336, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
			CFrame.new(-3.5315752e-006, 1.50000048, -2.77906656e-006, 0.642787039, 0.0667647347, 0.76312995, 9.57827169e-008, 0.99619478, -0.0871551931, -0.766045034, 0.0560222939, 0.640341043),
			CFrame.new(1.95751476, 0.743757784, -0.295798361, -0.258819222, -0.875430286, 0.408209145, 0.965925872, -0.234570161, 0.109381169, -1.89244747e-006, 0.422609687, 0.90631187),
			CFrame.new(-1.43068314, -0.111600742, -0.335780501, 0.981059968, -0.0871567875, -0.172988921, 0.0379645079, 0.96225071, -0.269503951, 0.189947724, 0.25783211, 0.947334528),
			CFrame.new(0.665393293, -1.87006605, -0.0759503245, 0.942652583, -0.231490314, 0.240454674, 0.172370344, 0.954535782, 0.243207887, -0.285822898, -0.187813237, 0.939697623),
			CFrame.new(-0.794201851, -1.73358107, -0.2059865, 0.573575616, 0.142244354, 0.806707919, 5.569309e-007, 0.98480773, -0.173648566, -0.819152713, 0.0996010154, 0.564861596),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
			local Wave, WHB = MakeWave()
				for _, i in pairs(Wave.WavePart:GetChildren()) do
			if i:IsA("SpecialMesh") then
				i:Destroy()
			elseif i:IsA("BlockMesh") then
				i:Destroy()
		end
		end
		for _, p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(0))
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB,"http://roblox.com/asset/?id=75422951", 1, 1.6, false) 
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
			debServ:AddItem(Wave, 2)
			local hit = WHB.Touched:connect(function(part) 	MagnitudeDamage(WHB, 3, 25, 35, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
			repeat swait() until Wave.Parent == nil
			end)
			end))
	parti.Enabled = false
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	attack = false
end
------------------------------------------------------------------------------SEAR
local Taunt = true

function Sear()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://251554597", Head, 2, 1)
	local parti = Instance.new("ParticleEmitter", Hitbox)
	parti.Color = ColorSequence.new(Color3.new(0.88627450980392, 0.47450980392157, 0), Color3.new(0.49411764705882, 0, 0))
	parti.LightEmission = 0.5
	parti.Size = NumberSequence.new(0.2)
	parti.Texture = "http://www.roblox.com/asset/?id=248625108"
	parti.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.133, 0.544),
		NumberSequenceKeypoint.new(0.321, 0.737),
		NumberSequenceKeypoint.new(0.388, 0),
		NumberSequenceKeypoint.new(0.469, 0.725),
		NumberSequenceKeypoint.new(0.522, 0.456),
		NumberSequenceKeypoint.new(0.616, 0.637),
		NumberSequenceKeypoint.new(0.64, 0),
		NumberSequenceKeypoint.new(0.745, 0.525),
		NumberSequenceKeypoint.new(1, 0)
	})
	parti.Size = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1.62),
		NumberSequenceKeypoint.new(0.123, 1.5),
		NumberSequenceKeypoint.new(0.154, 1.44),
		NumberSequenceKeypoint.new(0.357, 1.31),
		NumberSequenceKeypoint.new(0.555, 1.25),
		NumberSequenceKeypoint.new(0.725, 0.875),
		NumberSequenceKeypoint.new(1, 0.125)
	})
	parti.ZOffset = 0
	parti.Acceleration = Vector3.new(8, 6, 6)
	parti.LockedToPart = false
	parti.EmissionDirection = "Front"
	parti.Lifetime = NumberRange.new(0, 1)
	parti.Rate = 200
	parti.Rotation = NumberRange.new(4, 9)
	parti.RotSpeed = NumberRange.new(5, 9)
	parti.Speed = NumberRange.new(5, 7)
	parti.VelocitySpread = 28
	parti.Enabled = false
	if Taunt == true then
	parti.Enabled = true
	parti.EmissionDirection = "Back"
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, .7, .8)
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.014 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414),
         CFrame.new(2.83122063e-007, 1.4999963, 2.83122063e-007, 0.707106233, -0.0616283789, 0.704416633, 0, 0.99619478, 0.0871556103, -0.707107306, -0.0616282858, 0.70441556),
         CFrame.new(1.03795922, 0.376123667, -1.00929093, -0.337676346, 0.514469624, 0.788223207, 0.939619362, 0.233700052, 0.249999791, -0.0555904955, 0.825048745, -0.56232065),
         CFrame.new(-1.40042686, -0.118007794, -0.210377365, 0.969846427, -0.17100969, -0.173648596, 0.123470016, 0.959055483, -0.254887581, 0.210126907, 0.225761354, 0.95125103),
         CFrame.new(0.73142308, -1.96637511, -0.140786082, 0.850184143, -0.0845685676, 0.519649208, 0.0985260457, 0.995134234, 0.00075398531, -0.517184496, 0.0505579524, 0.854379535),
         CFrame.new(-0.624969542, -2.00112915, -0.0212523639, 0.703206539, 0.0138075389, 0.710851729, -0.104865015, 0.99089092, 0.0844901875, -0.703209877, -0.133957505, 0.698248863),
		}, .1, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .5)
	end
	parti.EmissionDirection = "Front"
	end
	parti.Enabled = true
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 1, 4 do
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1.2)
	CFuncs["Sound"].Create("rbxassetid://199144678", Hitbox, 1, 1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0572953038, 0, 0.152224958, 0.984999776, 0, -0.172555953, 0, 1, 0, 0.172555953, 0, 0.984999776),
         CFrame.new(7.39470124e-007, 1.49999702, 7.89761543e-007, 0.979753137, -0.00707465131, 0.200085193, -0.0112899998, 0.99583298, 0.0904943645, -0.199891657, -0.0909210891, 0.975590527),
         CFrame.new(1.79034507, 0.713469744, 0.245849177, -0.123698205, -0.949444413, -0.288538158, 0.885306776, -0.236938015, 0.400115401, -0.448252946, -0.205951229, 0.869858325),
         CFrame.new(-1.69946313, 0.127298191, -0.271057844, 0.900573134, 0.313195556, -0.301457375, -0.375533938, 0.909824312, -0.176618278, 0.218957171, 0.272265166, 0.936978996),
         CFrame.new(0.653021634, -1.99183023, -0.0498065576, 0.985019803, -0.0888716802, 0.147777155, 0.0871169716, 0.996029675, 0.0183174871, -0.148818344, -0.00516918767, 0.98885113),
         CFrame.new(-0.598310411, -1.99677014, -0.00983281434, 0.992719233, 0.0388752371, 0.114006668, -0.0455640219, 0.997353137, 0.056662824, -0.111502141, -0.0614448711, 0.991862893),
		}, .15, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(6*i,math.rad(0),math.rad(0)), .3)
	end
	end
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-3.45729177e-006, -1.07288361e-006, -1.61215644e-006, 0.422617137, 0, 0.906308293, 0, 1, 0, -0.906308293, 0, 0.422617137),
         CFrame.new(-2.93552876e-006, 1.49999666, 2.47359276e-006, 0.642787337, 0.0667652711, -0.763129652, 0, 0.996194661, 0.0871558487, 0.766044676, -0.0560226738, 0.640341341),
         CFrame.new(0.698839545, 0.330527961, -1.17968464, -0.0858322605, 0.628752053, 0.772854269, 0.992461622, 0.122068912, 0.0109129949, -0.0874799117, 0.76796484, -0.634489775),
         CFrame.new(-1.41369021, 0.137095958, 0.271576643, 0.951021314, 0.183494747, 0.248773009, -0.256190121, 0.918202639, 0.302110255, -0.172988355, -0.351046532, 0.920239806),
         CFrame.new(0.64087379, -1.98256373, 0.140884519, 0.704417586, -0.0616254881, -0.707105517, 0.087155968, 0.996194661, 4.53608664e-006, 0.704414487, -0.0616316497, 0.70710808),
         CFrame.new(-0.751752973, -1.94796431, 0.117966183, 0.936117291, 0.140046805, -0.322600812, -0.0871559978, 0.981060147, 0.172988161, 0.340717107, -0.133820623, 0.930593371),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(2.70828605e-006, -0.256154776, -0.071654655, 0.499999046, -1.78813579e-007, -0.866026044, 0.150384009, 0.984807789, 0.0868238211, 0.852869093, -0.173648283, 0.492402941),
         CFrame.new(4.34633694e-006, 1.49999607, 2.42484384e-006, 0.646143615, 0.0549410731, 0.761235893, -0.0851004422, 0.996372402, 0.000322267413, -0.758456767, -0.0649897307, 0.648474991),
         CFrame.new(1.86507177, 0.598104239, 0.183552518, -0.114682339, -0.981059372, -0.156110525, 0.981060445, -0.0871559381, -0.172987223, 0.156104773, -0.172992408, 0.9724738),
         CFrame.new(-1.52644157, 0.0874626189, -0.302744657, 0.95125103, 0.20658794, -0.229004204, -0.254887104, 0.944645047, -0.2065873, 0.173649222, 0.254886597, 0.951251268),
         CFrame.new(0.623469114, -1.90178788, 0.0298061967, 0.992532074, -0.0928985924, 0.079056859, 0.0757590532, 0.97739321, 0.197391063, -0.0956070125, -0.189927697, 0.977131963),
         CFrame.new(-0.786503196, -1.67652178, -0.389780819, 0.631277382, 0.179900557, 0.754403591, -0.0723632798, 0.982144117, -0.173656344, -0.772174001, 0.0550341941, 0.6330235),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.25 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.573575675, 0, -0.819152594, 0, 1, 0, 0.819152594, 0, 0.573575675),
         CFrame.new(3.08454037e-006, 1.49999881, 2.57045031e-006, 0.642787039, -0.0667651147, 0.76312989, 0, 0.99619478, 0.0871556103, -0.766044915, -0.0560225062, 0.640341043),
         CFrame.new(1.69747591, 0.457380712, 0.451709926, -0.0444228128, -0.827531219, 0.55965966, -0.981060326, -0.0695906579, -0.180770397, 0.18854022, -0.557090104, -0.808766544),
         CFrame.new(-1.68707776, 0.160575554, -0.28150323, 0.690673113, 0.601469755, -0.401503354, -0.691249013, 0.712214351, -0.12217018, 0.212474763, 0.361918449, 0.907672644),
         CFrame.new(0.637356639, -1.97847009, 0.076719813, 0.850760341, -0.123644285, 0.51080215, 0.0764630362, 0.990710139, 0.112458259, -0.519961715, -0.0566175357, 0.852311194),
         CFrame.new(-0.628168941, -1.98483193, 0.152803689, 0.640938401, 0.0450230837, 0.766270876, -0.0758190081, 0.99710989, 0.00483164471, -0.763838768, -0.0611946844, 0.642499626),
		}, .55, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1.2)
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.23 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.179999992, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-3.07708979e-006, 1.49999881, 2.57790089e-006, 0.64278692, 0.066765137, -0.763130128, 0, 0.99619478, 0.0871556103, 0.766045094, -0.056022495, 0.640340984),
         CFrame.new(0.954324961, 0.24834919, -0.880105972, 0.326528549, 0.544942617, -0.772280335, -0.941748381, 0.257209718, -0.216687083, 0.0805559754, 0.798048139, 0.597185135),
         CFrame.new(-1.58964086, 0.138686687, 0.0523245335, 0.944645166, 0.254885972, -0.206588656, -0.206587031, 0.951251626, 0.229002386, 0.254887283, -0.173647493, 0.951251388),
         CFrame.new(0.670057595, -1.81781983, -0.10544461, 0.499700427, -0.0172690637, -0.866026282, 0.0345539972, 0.999402881, 9.12000269e-006, 0.865508974, -0.0299292281, 0.499998689),
         CFrame.new(-0.884505391, -1.76931953, -0.185952976, 0.681231737, 0.216974914, -0.699174821, -0.105348974, 0.974182904, 0.199672803, 0.724448264, -0.0623660684, 0.686502278),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)), .5)
	end
	for i = 0, 1, 0.25 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0.199999988, 0, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
         CFrame.new(-3.2261014e-006, 1.49999571, 1.87009573e-006, 0.499998987, 0.0754793361, -0.862730443, 0, 0.996194661, 0.087155968, 0.866025984, -0.0435778946, 0.498096317),
         CFrame.new(0.758310795, 0.506792068, -1.07750559, 0.0780267715, 0.542353034, 0.836519599, 0.995831132, -0.0821644962, -0.0396157168, 0.0472465083, 0.836123407, -0.546503007),
         CFrame.new(-1.56371987, -0.0378807485, -0.12044096, 0.892536283, 0.33327353, 0.30382207, -0.157379016, 0.861525297, -0.482707113, -0.422623843, 0.383018374, 0.821392834),
         CFrame.new(0.688273072, -1.83205605, 0.326112747, 0.492402941, -0.0868238136, -0.866025984, 0.173647985, 0.984807849, 0, 0.852869213, -0.150383666, 0.499998987),
         CFrame.new(-0.464390695, -1.92090166, -0.363977104, 0.962945819, 0.0995973051, -0.250631034, -0.0593889765, 0.984808624, 0.163171798, 0.263075113, -0.142240882, 0.954232156),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://186112092", Hitbox, 1, .7)
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, 1)
	parti.Enabled = true
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.23 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(6.67199492e-006, -0.207597449, -0.0868210196, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
         CFrame.new(-2.45868534e-007, 1.4999963, -1.11758425e-008, 0.642787039, -1.63912773e-007, 0.766045034, 9.57827169e-008, 1.00000012, 1.1920929e-007, -0.766045034, -7.4505806e-009, 0.642787039),
         CFrame.new(1.63684285, 0.191258341, 0.0590808541, 0.419205964, -0.896826267, -0.141311735, 0.875504494, 0.440527022, -0.198564485, 0.240329444, -0.0404796004, 0.969847083),
         CFrame.new(-1.44409096, 0.0586332679, 0.28650257, 0.847117305, 0.408219695, 0.340219229, -0.468929112, 0.875426352, 0.117194086, -0.249995977, -0.258815825, 0.93301481),
         CFrame.new(0.598103762, -1.98841107, 0.015527457, 0.981059909, -0.0858310461, -0.17365095, 0.115870565, 0.978432178, 0.171010211, 0.155227691, -0.187892288, 0.969845891),
         CFrame.new(-0.84634155, -1.7162106, -0.315425038, 0.499999523, 0.150383905, 0.852868795, 7.07805157e-007, 0.98480767, -0.17364873, -0.866025805, 0.0868248716, 0.492403209),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	for i = 0, 1, 0.25 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414),
         CFrame.new(-1.40070915e-006, 1.4999963, -1.66893005e-006, 0.76604414, -0.0429935083, 0.6413486, 0, 0.997760653, 0.066885978, -0.642788053, -0.051237613, 0.764328718),
         CFrame.new(1.66817236, 0.999997735, 0.511572003, 0.736215532, -0.634792984, 0.234573662, -0.642445922, -0.546619952, 0.537093997, -0.212720826, -0.546117783, -0.810250103),
         CFrame.new(-1.37409723, 0.400003314, -0.627805173, 0.774178386, 0.211310744, -0.596653819, -0.628698826, 0.366000623, -0.686135113, 0.0733878911, 0.906306386, 0.416200638),
         CFrame.new(0.653213322, -1.99999535, -0.12855646, 0.94284457, -0.0929451212, 0.320008487, 0.0665469989, 0.993487716, 0.0924861878, -0.326520622, -0.0659044906, 0.94288969),
         CFrame.new(-0.640875459, -1.9999963, -0.0123234689, 0.764365256, 0.0739410222, 0.64053005, -0.0661710203, 0.997153461, -0.0361446291, -0.641379297, -0.0147568267, 0.767082214),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 10, 40, 50, BrickColor.new("Really black"), BrickColor.new("Red"), "rbxassetid://199149137", 0)
	CFuncs["Sound"].Create("rbxassetid://199144647", Hitbox, 1, .8)
	CFuncs["Sound"].Create("rbxassetid://199144678", Hitbox, 1, 1)
	parti.Enabled = true
	for i = 0, 1, 0.23 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-1.3038516e-006, -0.390966356, -0.0855526477, 0.499999046, 1.78813579e-007, 0.866026044, -0.150384009, 0.984807789, 0.0868238211, -0.852869093, -0.173648283, 0.492402941),
         CFrame.new(-4.05311584e-006, 1.49999619, 1.60932541e-006, 0.573575735, -0.0713945851, -0.81603545, 6.76140189e-007, 0.99619472, -0.0871561766, 0.819152594, 0.0499901175, 0.571393192),
         CFrame.new(1.28216481, 0.179315746, -0.842360139, 0.633024693, -0.0230962932, -0.773787081, -0.717572212, 0.357540846, -0.597708046, 0.290465295, 0.933612049, 0.209758848),
         CFrame.new(-1.62196672, 0.225311682, 0.0992549062, 0.755533695, 0.605033398, 0.25120458, -0.532469451, 0.790533543, -0.302544594, -0.381635189, 0.0948238969, 0.919436276),
         CFrame.new(0.811682165, -1.60607064, -0.260146618, 0.492403209, -0.0868215263, -0.866026103, 0.173648342, 0.98480773, 2.86102295e-006, 0.852869093, -0.15038538, 0.499998868),
         CFrame.new(-0.546382487, -1.80111504, -0.26132381, 0.984808207, 0.173645854, 6.02006912e-006, -0.142245889, 0.80670774, 0.573575616, 0.0995941162, -0.564862847, 0.819152772),
		}, .43, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)), .5)
	end
	parti.Enabled = false
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 and CurrentMode == "Sheathed" then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 and CurrentMode == "Sheathed" then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 and CurrentMode == "Sheathed" then
		attacktype = 4
		attackthree()
	elseif attack == false and attacktype == 4 and CurrentMode == "Sheathed" then
		attacktype = 5
		attackfour()
	elseif attack == false and attacktype == 5 and CurrentMode == "Sheathed" then
		attacktype = 1
		CurrentMode = "UnSheathed"
		UNSHEATH()
	elseif attack == false and attacktype == 1 and CurrentMode == "UnSheathed" then
		attacktype = 2
		BladeAttackOne()
	elseif attack == false and attacktype == 2 and CurrentMode == "UnSheathed" then
		attacktype = 3
		BladeAttackTwo()
	elseif attack == false and attacktype == 3 and CurrentMode == "UnSheathed" then
		attacktype = 4
		BladeAttackThree()
	elseif attack == false and attacktype == 4 and CurrentMode == "UnSheathed" then
		attacktype = 1
		BladeAttackFour()
	end
end)
local TimeStopped = false
mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'f' and CurrentMode == "Sheathed" then
	CurrentMode = "UnSheathed"
	attacktype = 1
	UNSHEATH()
	elseif attack == false and k == 'f' and CurrentMode == "UnSheathed" then
	CurrentMode = "Sheathed"
	SHEATH()
	elseif attack == false and k == 'z' and CurrentMode == "UnSheathed" then
	Sear()
	elseif attack == false and k == 'x' and CurrentMode == "UnSheathed" then
	Hate_Wave()
	elseif attack == false and k == 'r' and CurrentMode == "Sheathed" and huh == false then
		Corrupt_Guard()
	elseif k == "q" then
        if TimeStopped == false and attack == false then
            TheWorld("World Time Stop")
            TimeStopped = true
            TfwTimeStopped = true
			wait(100)
            if TimeStopped == true then
                TheWorld("Time Start")
                TimeStopped = false
            end
        elseif TimeStopped == true and attack == false then
            TheWorld("Time Start")
            TimeStopped = false
        end
    end
	end)
mouse.KeyUp:connect(function(k)
	k = k:lower()
	if k == 'r' and huh == true and attack == true then
		huh = false
	end
end)
local footstep = Instance.new("Sound",Head)
footstep.SoundId = "http://www.roblox.com/asset/?id=336401972"
footstep.Pitch = 1
footstep.Volume = 0.8
footstep.Looped = true
local footstep1 = Instance.new('Sound',Head)
footstep1.SoundId = "rbxassetid://142665235"
footstep1.Pitch = 1
footstep1.Volume = 0.6
footstep1.Looped = true
Humanoid.Running:connect(function(speed)
	if speed>0 and CurrentMode == "Sheathed" then
		footstep:play()
	else
		footstep:stop()
	end
end)
Humanoid.Running:connect(function(speed)
	if speed>0 and CurrentMode == "UnSheathed" then
		footstep1:play()
	else
		footstep1:stop()
	end
end)

while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Hat") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
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
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.1) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.7, 0.5, .3) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.7, 0.5, .3) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -.9, -.3) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1.8, -.2) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.9, 0.9, .3) * angles(math.rad(-30), math.rad(0), math.rad(80)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.9, 0.9, .3) * angles(math.rad(-30), math.rad(0), math.rad(-80)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1.8, -.2) * angles(math.rad(-10), math.rad(0), math.rad(-5)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false and CurrentMode == "Sheathed" then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -0.1 + .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.05) * angles(math.rad(-5 + 5 * math.cos(sine / 20)), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(5), math.rad(5 + 1 * math.cos(sine / 15))), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(-5 - 1 * math.cos(sine / 15))), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(-5), math.rad(5 - 1 * math.cos(sine / 15))), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(5), math.rad(-5 + 1 * math.cos(sine / 15))), .3)
			elseif attack == false and CurrentMode == "UnSheathed" then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -0.1 + .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(50), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.05) * angles(math.rad(-3 + 3 * math.cos(sine / 20)), math.rad(-50), math.rad(3 + 3 * math.cos(sine / 20))), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.35, 0.5, -.6) * angles(math.rad(90), math.rad(70), math.rad(5 + 1 * math.cos(sine / 15))), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.6, 0.1, 0) * angles(math.rad(0), math.rad(-5), math.rad(-15 - 2 * math.cos(sine / 15))), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(-30), math.rad(5 - 1 * math.cos(sine / 15))), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.6, -1.9 - .1 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(-30), math.rad(-5 + 1 * math.cos(sine / 15))), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false and CurrentMode == "Sheathed" then
				change = 2
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-2), math.rad(-5 * math.cos(sine / 10)), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(2), math.rad(5 * math.cos(sine / 10)), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.4 * math.cos(sine / 10)) * angles(math.rad(20 * math.cos(sine / 10)), math.rad(0), math.rad(5)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0.4 * math.cos(sine / 10)) * angles(math.rad(-20 * math.cos(sine / 10)), math.rad(0), math.rad(-5)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -1.85 - 0.5 * math.cos(sine / 8) / 2, 0 + 1.8 *  math.sin(sine / 8) / 2) * angles(math.rad(-50 *  math.sin(sine / 8)), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1.85 + 0.5 * math.cos(sine / 8) / 2, 0 - 1.8 * math.sin(sine / 8) / 2) * angles(math.rad(50 *  math.sin(sine / 8)), math.rad(0), math.rad(0)), .3)
				
			elseif attack == false and CurrentMode == "UnSheathed" then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-5 * math.cos(sine / 10)), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(5 * math.cos(sine / 10)), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.35, 0.5, -1) * angles(math.rad(90), math.rad(70), math.rad(5 + 1 * math.cos(sine / 15))), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.6, 0.2, 0.5) * angles(math.rad(-50), math.rad(-5), math.rad(-15 - 2 * math.cos(sine / 15))), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -1.8 - 0.5 * math.cos(sine / 8) / 2, 0 + 3 *  math.sin(sine / 8) / 2) * angles(math.rad(-80 *  math.sin(sine / 8)), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1.8 + 0.5 * math.cos(sine / 8) / 2, 0 - 3 * math.sin(sine / 8) / 2) * angles(math.rad(80 *  math.sin(sine / 8)), math.rad(0), math.rad(0)), .3)
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
end

-- pls no lek
