--[[NIGHTOWLACE_WEAPONRY]]--
wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
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
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
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
clerp = function(a, b, t)
  
  return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  
  tf = tf + s
  if frame <= tf then
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
end
)
swait = function(num)
  
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
RemoveOutlines = function(part)
  
  part.TopSurface = 10
end
coroutine.resume(coroutine.create(function()
if script.ClassName == "LocalScript" then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Credits!";
		Color = Color3.new(0, 1, 1);
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size24;
	})
	wait(2)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Decompiling - Blyat";
		Color = Color3.new(1, 0, 1);
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size24;
	})
	wait(2)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Fixing - electroz";
		Color = Color3.new(1, 1, 0);
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size24;
	})
	wait(2)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Please don't remove the credits, or atleast not the ones at the top";
		Color = Color3.new(1, 1, 1);
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size24;
	})
end
end))


CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

CreateBillBoardGui = function(Img, Pos, Siz)
  
  local billpar = Create("Part")({Transparency = 1, Size = Vector3.new(1, 1, 1), Anchored = true, CanCollide = false, CFrame = CFrame.new(Pos), Name = "BillboardGuiPart"})
  local bill = Create("BillboardGui")({Parent = billpar, Adornee = billpar, Size = UDim2.new(1, 0, 1, 0), SizeOffset = Vector2.new(Siz, Siz)})
  local d = Create("ImageLabel")({Parent = bill, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Image = Img})
  return billpar
end

rayCast = function(Position, Direction, Range, Ignore)
  
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

local GetNearest = function(obj, distance)
  
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
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
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "ArialBold"})
            coroutine.resume(coroutine.create(function()
    
    swait(1)
    for i = 0, 1, 0.1 do
      swait(0.1)
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
    end
    BillG:Destroy()
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
            end
            game:GetService("Debris"):AddItem(bool, cooldown)
            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_STMT

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

BowHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BowHandle", Vector3.new(0.225280017, 0.788480043, 0.220000014))
BowHandleWeld = CreateWeld(m, Character["Left Arm"], BowHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.985027075, -0.0129547119, 0.179504395, -4.25198756e-08, -1, 4.70876694e-06, 2.4576444e-08, 4.70876694e-06, 1, -1, 4.25199929e-08, 2.45762433e-08))
CreateMesh("CylinderMesh", BowHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.512000144))
BowFakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BowFakeHandle", Vector3.new(0.225280017, 0.788480043, 0.220000014))
BowFakeHandleWeld = CreateWeld(m, BowHandle, BowFakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, -1.51575529e-15, 0, 1, 0, -1.51575529e-15, 0, 1))
CreateMesh("CylinderMesh", BowFakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.512000144))
FakeArrow = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "FakeArrow", Vector3.new(0.220000014, 0.220000014, 3.82976031))
FakeArrowWeld = CreateWeld(m, BowFakeHandle, FakeArrow, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000701904297, -3.05175781e-05, -1.28746033e-05, 0.000362217397, -0.999999881, -0.000362451508, -4.614364e-07, 0.000362451421, -1, 1, 0.000362217601, -3.30150129e-07))
CreateMesh("SpecialMesh", FakeArrow, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 0.675840139, 1.68960023))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.220000014, 0.225280017))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.423294067, -0.000366210938, -0.701477051, 0.70710665, 0.707106948, -3.29177752e-08, 7.15684365e-08, -2.50156571e-08, 1, 0.707106948, -0.70710665, -6.82952788e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 1.68960023, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.78413391, 2.0454483, 6.94149378e-08, -2.71691221e-08, 1, 0.707106888, 0.707106709, -2.9872318e-08, -0.707106709, 0.707106888, 6.82952432e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.788480043, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.09571838, 0.423282623, 6.94149378e-08, -2.71691221e-08, 1, 0.707106292, -0.707107365, -6.8295229e-08, 0.707107365, 0.707106292, -2.98723606e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.450560033, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16461945, 0, -2.0454483, -0.707106888, -0.707106709, 6.27209218e-08, -7.15714066e-08, -1.71293646e-08, -1, 0.707106709, -0.707106888, -3.84963315e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.450560033))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.12782288, 0, 0.742296457, -6.40749931e-07, -1, -2.27882158e-08, 6.94149449e-08, -2.27882619e-08, 1, -1, 6.40749931e-07, 6.94149662e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000366210938, 0.168947458, -0.338066101, -6.94149804e-08, -3.24350893e-08, -1, -1, 4.61936452e-07, 6.9414952e-08, 4.61936452e-07, 1, -3.24351248e-08))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.225280017, 0.225280017, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.529953e-06, -0.281555176, 0.001953125, 1, 0, -1.51575529e-15, 0, 1, 0, -1.51575529e-15, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.588800073))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.563200057, 0.220000014, 0.675840139))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.445208549, 0, 3.3405304, -1, 6.40749931e-07, 6.93517848e-08, 6.93517705e-08, -2.71691203e-08, 1, 6.40749931e-07, 1, 2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.225280017, 0.225280017, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.24520874e-06, 0.281600952, 0.001953125, 1, 0, -1.51575529e-15, 0, 1, 0, -1.51575529e-15, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.588800073))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.450560033))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.445208549, 0, 3.3405304, -1, 6.40749931e-07, 6.93517848e-08, 6.93517705e-08, -2.71691203e-08, 1, 6.40749931e-07, 1, 2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.23904014, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.00939178, 0, -2.04543304, -0.707106888, -0.707106709, 6.27209218e-08, -7.15714066e-08, -1.71293646e-08, -1, 0.707106709, -0.707106888, -3.84963315e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.220000014, 0.518144011))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.450569153, 0, 0.146412134, 4.61936452e-07, 1, 2.01980033e-08, -1.0781276e-07, 2.01980548e-08, -1, -1, 4.61936452e-07, 1.07812767e-07))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 1.68960023, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000366210938, 1.78420258, 2.04552078, -6.94149804e-08, -3.24350893e-08, -1, 0.707106173, -0.707107425, -2.61486655e-08, -0.707107425, -0.707106173, 7.20188922e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.337890625, 0, 0.315387607, 4.61936452e-07, 1, 2.01980033e-08, -1.0781276e-07, 2.01980548e-08, -1, -1, 4.61936452e-07, 1.07812767e-07))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 0.819200039))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.269084811, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99462128, 1.2387228, 0, -0.176393285, -0.984319806, -1.01567883e-08, -0.984319806, 0.17639327, 7.22781337e-08, -6.93531845e-08, 2.27469013e-08, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961045921, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.489984065, 0.220000014, 0.405504048))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.751953125, -0.000366210938, 0.20273602, -7.4505806e-07, -1, 3.6816779e-08, 3.10171231e-08, 3.68167683e-08, 1, -1, 7.4505806e-07, 3.10171053e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.788480163, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.70729828, -0.736948133, 6.94149378e-08, -2.71691221e-08, 1, -6.40749931e-07, -1, -2.71690759e-08, 1, -6.40749931e-07, -6.94149662e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.675840139, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000366210938, -1.65105438, -0.736956716, -6.94149804e-08, -3.24350893e-08, -1, 6.40749931e-07, 1, -3.24351319e-08, 1, -6.40749931e-07, -6.9414952e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.225280017, 0.220000014, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.05311584e-06, 6.10351563e-05, 0.001953125, 1, 0, -1.51575529e-15, 0, 1, 0, -1.51575529e-15, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 0.588800073))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.33792007, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.870513916, -0.000366210938, -0.423362732, -0.707107067, -0.707106471, 1.80172606e-08, 5.54801183e-08, -2.99998959e-08, 1, -0.707106471, 0.707107067, 6.04434973e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.269084811, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99471283, 1.23874283, -0.000366210938, -0.176392093, 0.984319985, 3.46585622e-08, -0.984319985, -0.176392093, 6.05221331e-08, 6.56866419e-08, -2.34394903e-08, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961045921, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.788480163, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000366210938, -1.70736694, -0.736947894, -6.94149804e-08, -3.24350893e-08, -1, 6.40749931e-07, 1, -3.24351319e-08, 1, -6.40749931e-07, -6.9414952e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.450560033, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.26467896, 0, -0.423290253, -0.707106292, 0.707107365, 9.49445536e-08, -1.09325214e-07, 2.49467114e-08, -1, -0.707107365, -0.707106292, 5.96646856e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.450560033, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.26478195, -0.000366210938, -0.42338562, -0.707107067, -0.707106471, 1.80172606e-08, 5.54801183e-08, -2.99998959e-08, 1, -0.707106471, 0.707107067, 6.04434973e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.341503143, -1.47247314, 1.42978507e-07, -9.15196949e-08, 1, -0.925511479, -0.378719747, 9.76679502e-08, 0.378719717, -0.92551142, -1.38851306e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.511992276, 0.944333315, 0.395894557))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.563200057, 0.220000014, 0.675840139))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.433936357, 0.000366210938, 3.32937622, -1, 6.40749931e-07, 6.93517848e-08, -6.93517705e-08, 2.71691221e-08, -1, -6.40749931e-07, -1, -2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.788480163, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.70729828, -0.736961126, 6.94149378e-08, -2.71691221e-08, 1, -6.40749931e-07, -1, -2.71690759e-08, 1, -6.40749931e-07, -6.94149662e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.220000014, 0.518144011))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.450660706, -0.000366210938, 0.146410823, -7.4505806e-07, -1, 3.6816779e-08, 3.10171231e-08, 3.68167683e-08, 1, -1, 7.4505806e-07, 3.10171053e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.450560033))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.433936357, 0.000366210938, 3.32937622, -1, 6.40749931e-07, 6.93517848e-08, -6.93517705e-08, 2.71691221e-08, -1, -6.40749931e-07, -1, -2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.338058472, -0.000366210938, 0.315390348, -7.4505806e-07, -1, 3.6816779e-08, 3.10171231e-08, 3.68167683e-08, 1, -1, 7.4505806e-07, 3.10171053e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 0.819200039))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.23904014, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.00945282, -0.000366210938, -2.04550171, -0.707106113, 0.707107484, -2.42653826e-08, 6.00121624e-08, 9.43284562e-08, 1, 0.707107484, 0.707106113, -1.09135279e-07))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.450560033, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16465759, -0.000381469727, -2.04548264, -0.707106113, 0.707107484, -2.42653826e-08, 6.00121624e-08, 9.43284562e-08, 1, 0.707107484, 0.707106113, -1.09135279e-07))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.489984065, 0.220000014, 0.405504048))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.75189209, 0, 0.202737808, 4.61936452e-07, 1, 2.01980033e-08, -1.0781276e-07, 2.01980548e-08, -1, -1, 4.61936452e-07, 1.07812767e-07))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.450560033))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.12789917, 0.000366210938, 0.742304683, 6.40749931e-07, 1, -3.68167576e-08, -6.94149733e-08, -3.68167079e-08, -1, -1, 6.40749931e-07, 6.9414952e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.33792007, 0.220000014, 0.563200057))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.870441437, 0, -0.423290253, -0.707106292, 0.707107365, 9.49445536e-08, -1.09325214e-07, 2.49467114e-08, -1, -0.707107365, -0.707106292, 5.96646856e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.220000014, 0.225280017))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.423347473, 0, -0.701530457, 0.707105875, -0.707107723, -1.24747032e-07, -1.51243015e-07, 2.51760834e-08, -1, 0.707107723, 0.707105875, -8.91429579e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.220000014, 0.788480043, 0.220000014))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000366210938, -1.09579849, 0.423362732, -6.94149804e-08, -3.24350893e-08, -1, 0.707107067, 0.707106531, -7.20188709e-08, 0.707106531, -0.707107067, -2.6148701e-08))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.563200057, 1, 0.512000144))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.33792007))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.736960649, 0.000366210938, 1.36945343, -1, 6.40749931e-07, 6.93517848e-08, -6.93517705e-08, 2.71691221e-08, -1, -6.40749931e-07, -1, -2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.33792007, 0.220000014, 0.33792007))
PartWeld = CreateWeld(m, BowFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.736959338, 0, 1.36940765, -1, 6.40749931e-07, 6.93517848e-08, 6.93517705e-08, -2.71691203e-08, 1, 6.40749931e-07, 1, 2.71690741e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.563200057, 1))
PivotConnector1 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "PivotConnector1", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PivotConnector1Weld = CreateWeld(m, BowFakeHandle, PivotConnector1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.17164612, -0.614725113, -0.000137329102, 8.04664523e-07, 1, 4.06052386e-05, -1, 8.04658157e-07, 1.50166912e-07, 1.50134269e-07, -4.06052495e-05, 1))
CreateMesh("SpecialMesh", PivotConnector1, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.214015961, 0.225279838, 0.585727811))
PivotConnector2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "PivotConnector2", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PivotConnector2Weld = CreateWeld(m, BowFakeHandle, PivotConnector2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.22834778, -0.614701271, 0.000122070313, 8.04664523e-07, 1, 4.06052386e-05, -1, 8.04658157e-07, 1.50166912e-07, 1.50134269e-07, -4.06052495e-05, 1))
CreateMesh("SpecialMesh", PivotConnector2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.214015961, 0.225279838, 0.585727811))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.341524124, 1.5585022, -1.42978507e-07, 9.15196949e-08, -1, -0.92551136, -0.378719926, 9.76679004e-08, -0.378719926, 0.92551136, 1.3885132e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.511992276, 0.944333315, 0.386422455))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000366210938, 0.341472626, 1.55859375, -4.1486472e-09, -2.71666636e-08, 1, -0.925510883, 0.378721058, 6.4489738e-09, -0.378721058, -0.925510883, -2.67142202e-08))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.511992276, 0.944333315, 0.386422455))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000381469727, 0.341506958, -1.47248077, 4.1486472e-09, 2.71666636e-08, -1, -0.925510943, 0.37872082, 6.44896758e-09, 0.37872085, 0.925511003, 2.67142219e-08))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.511992276, 0.944333315, 0.395894557))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
WedgeWeld = CreateWeld(m, BowFakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.168949723, -0.337890625, 6.94149378e-08, -2.71691221e-08, 1, -1, 6.40749931e-07, 6.94149662e-08, -6.40749931e-07, -1, -2.71690759e-08))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 0.512000144))
QuiverHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "QuiverHandle", Vector3.new(2.20000029, 0.200000003, 0.600000024))
QuiverHandleWeld = CreateWeld(m, Character.Torso, QuiverHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.554016113, -0.356391907, 0.391426086, -0.965925872, -0.258818924, 2.59800936e-09, -1.29173223e-08, 5.82460693e-08, 1, -0.258818924, 0.965925872, -5.96046306e-08))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.454208374, -0.680118561, 1.68037415, 0.00025648062, 0.70736295, -0.706850469, 0.000258313463, 0.70685041, 0.707363009, 1, -0.000364014471, -1.44539092e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 1.12168884, 7.62939453e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.76008606, 0.617675781, 0.496002197, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 1.15999997))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.11997986, 0.440233231, -0.440826416, 1.00000012, 1.30545388e-08, -8.94069672e-08, -6.14417175e-08, -0.707106829, -0.707106769, -5.77675756e-08, 0.707106769, -0.707106888))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000263214111, 0.8020401, 1.68035889, 6.25847804e-07, -0.000362336723, 1, -0.000361986837, -0.999999881, -0.000362336461, 1, -0.000361986604, -7.45036459e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 1.16000009, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.1199646, 0.621688843, 3.81469727e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320037842, 0.0585784912, -0.440793991, 1.00000012, -2.64309392e-08, -8.94069672e-08, -4.28664144e-08, 0.707106888, -0.707106709, 9.12440399e-08, 0.707106709, 0.707106888))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.76008606, 0.617675781, -0.504001617, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.642028809, 0.000205993652, 1.68029785, 0.000362732593, 0.99999994, 0.000362407387, -1.63913711e-07, -0.000362407329, 1, 0.99999994, -0.000362732622, 4.47251054e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.64214325, -0.319789886, 1.68029785, 0.000362732593, 0.99999994, 0.000362407387, -1.63913711e-07, -0.000362407329, 1, 0.99999994, -0.000362732622, 4.47251054e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, -0.12512207, -3.81469727e-06, 1, -4.4408921e-16, -1.54853386e-16, -4.4408921e-16, 1, 0, -1.54853386e-16, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.453760147, 0.680397034, 1.68035889, 0.000254766986, 0.706850529, 0.70736289, -0.000260369823, -0.707362831, 0.706850588, 1.00000012, -0.00036425679, 3.82962025e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.39233398e-05, 0.322044373, 1.68017578, -1.9222507e-06, -0.000362336548, 1, -0.000367632718, -0.999999881, -0.000362337218, 1, -0.000367633445, 1.80306245e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.642089844, -0.159805298, 1.68029785, 0.000362732593, 0.99999994, 0.000362407387, -1.63913711e-07, -0.000362407329, 1, 0.99999994, -0.000362732622, 4.47251054e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.7600708, 1.12168884, 7.62939453e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.641914368, 0.320201874, 1.68029785, 0.000362732593, 0.99999994, 0.000362407387, -1.63913711e-07, -0.000362407329, 1, 0.99999994, -0.000362732622, 4.47251054e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.7600708, 0.440826416, 0.940238953, 1, 2.1234964e-08, -1.78813934e-07, 1.47174546e-07, -0.707106829, 0.707106769, -1.21046355e-07, -0.707106769, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320037842, 0.617675781, -0.504001617, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 1.1680001))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.1199646, 0.617675781, 3.81469727e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 1.15999997))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.11997986, 0.440826416, 0.440233231, 1, 2.1234964e-08, -1.78813934e-07, 1.47174546e-07, -0.707106829, 0.707106769, -1.21046355e-07, -0.707106769, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.76008606, -0.440818787, 0.0586128235, 1.00000012, -2.64309392e-08, -8.94069672e-08, -4.28664144e-08, 0.707106888, -0.707106709, 9.12440399e-08, 0.707106709, 0.707106888))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.480000019, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.12969971, 1.3600769, -8.94069672e-08, -5.96046377e-08, -1.00000012, 2.59801936e-09, 1, -5.96046306e-08, 1.00000012, -2.59802602e-09, -8.94069672e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.7600708, 0.940246582, 0.440822601, 1, 2.1234964e-08, -1.78813934e-07, 1.47174546e-07, -0.707106829, 0.707106769, -1.21046355e-07, -0.707106769, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000316619873, -0.962043762, 1.68040466, 2.60770412e-06, 0.000362485851, -1.00000012, 0.00035897718, 0.99999994, 0.000362486753, 1, -0.000358978083, 2.50341645e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 0.940238953, 0.440828323, 1, 2.1234964e-08, -1.78813934e-07, 1.47174546e-07, -0.707106829, 0.707106769, -1.21046355e-07, -0.707106769, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.641975403, 0.160209656, 1.68029785, 0.000362732593, 0.99999994, 0.000362407387, -1.63913711e-07, -0.000362407329, 1, 0.99999994, -0.000362732622, 4.47251054e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.7600708, -0.12512207, -3.81469727e-06, 1, -4.4408921e-16, -1.54853386e-16, -4.4408921e-16, 1, 0, -1.54853386e-16, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, -0.440818787, 0.0586090088, 1.00000012, -2.64309392e-08, -8.94069672e-08, -4.28664144e-08, 0.707106888, -0.707106709, 9.12440399e-08, 0.707106709, 0.707106888))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000152587891, -0.482032776, 1.68025208, -2.10106282e-06, 0.000362470717, -0.99999994, 0.00036824515, 0.99999994, 0.000362469931, 0.999999881, -0.000368244306, -2.2053498e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(2.07999992, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 0.121658325, 7.62939453e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.480000019, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.121658325, 1.3600769, -8.94069672e-08, -5.96046377e-08, -1.00000012, 2.59801936e-09, 1, -5.96046306e-08, 1.00000012, -2.59802602e-09, -8.94069672e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.200000003, 0.200000003, 0.480000019))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.76010132, 0.05859375, -0.44080162, 1.00000012, -2.64309392e-08, -8.94069672e-08, -4.28664144e-08, 0.707106888, -0.707106709, 9.12440399e-08, 0.707106709, 0.707106888))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 0.440834045, 0.940233231, 1, 2.1234964e-08, -1.78813934e-07, 1.47174546e-07, -0.707106829, 0.707106769, -1.21046355e-07, -0.707106769, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(2.07999992, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 1.12969971, 7.62939453e-06, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.480000019, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -0.121658325, -0.719848633, -8.94069672e-08, -5.96046377e-08, -1.00000012, 2.59801936e-09, 1, -5.96046306e-08, 1.00000012, -2.59802602e-09, -8.94069672e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.72000003, 0.480000019, 0.200000003))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320022583, 0.617675781, 0.495986938, 1.00000012, -5.19595522e-09, -2.5331974e-07, -5.19594989e-09, -1, 2.12064819e-08, -2.5331974e-07, -2.12064926e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "Part", Vector3.new(0.480000019, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -1.12969971, -0.719848633, -8.94069672e-08, -5.96046377e-08, -1.00000012, 2.59801936e-09, 1, -5.96046306e-08, 1.00000012, -2.59802602e-09, -8.94069672e-08))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.453941345, 0.227851868, 1.68025208, 0.000255497143, 0.706850588, 0.707362831, -0.000258075044, -0.707362771, 0.706850648, 1, -0.000363150437, 1.68385282e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.44000006))
PartWeld = CreateWeld(m, QuiverHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.454055786, -0.227571487, 1.68025208, 0.000257970736, 0.70736295, -0.706850469, 0.000255273626, 0.706850469, 0.70736295, 1, -0.000362918596, 1.77325978e-06))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=15887356", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.960000038, 2.4000001))
PivotHandle1 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "PivotHandle1", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PivotHandle1Weld = CreateWeld(m, PivotConnector1, PivotHandle1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, -7.27595761e-12, 0, 1, -2.67841305e-14, -7.27595761e-12, -2.67841305e-14, 1))
CreateMesh("SpecialMesh", PivotHandle1, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.214015961, 0.225279838, 0.585727811))
String1 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "String1", Vector3.new(0.220000014, 3.37920046, 0.220000014))
String1Weld = CreateWeld(m, PivotHandle1, String1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0047981739, -1.87628937, 0, 8.04664523e-07, -1, 1.50134269e-07, 1, 8.04658157e-07, -4.06052495e-05, 4.06052386e-05, 1.50166912e-07, 1))
CreateMesh("CylinderMesh", String1, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 0.153600037))
PivotHandle2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Cool yellow", "PivotHandle2", Vector3.new(0.220000014, 0.220000014, 0.220000014))
PivotHandle2Weld = CreateWeld(m, PivotConnector2, PivotHandle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, -7.27595761e-12, 0, 1, -2.67841305e-14, -7.27595761e-12, -2.67841305e-14, 1))
CreateMesh("SpecialMesh", PivotHandle2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.214015961, 0.225279838, 0.585727811))
String2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "String2", Vector3.new(0.220000014, 3.49184012, 0.220000014))
String2Weld = CreateWeld(m, PivotHandle2, String2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00483489037, 1.87658691, 0, 8.04664523e-07, -1, 1.50134269e-07, 1, 8.04658157e-07, -4.06052495e-05, 4.06052386e-05, 1.50166912e-07, 1))
CreateMesh("CylinderMesh", String2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 0.153600037))
KnifeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "KnifeHandle", Vector3.new(0.200000003, 0.600000024, 1.19999993))
KnifeHandleWeld = CreateWeld(m, Character["Right Arm"], KnifeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.10351563e-05, 1.01999998, -7.62939453e-06, -1, 0, 0, 0, 1, 0, 0, 0, -1))
KnifeFakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "KnifeFakeHandle", Vector3.new(0.200000003, 0.600000024, 0.799999952))
KnifeFakeHandleWeld = CreateWeld(m, KnifeHandle, KnifeFakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
KnifeMeshPrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "KnifeMeshPrt", Vector3.new(0.200000003, 0.600000024, 3))
KnifeMeshPrtWeld = CreateWeld(m, KnifeFakeHandle, KnifeMeshPrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -0.900001526, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", KnifeMeshPrt, Enum.MeshType.FileMesh, "rbxassetid://433000323", Vector3.new(0, 0, 0), Vector3.new(0.00200000009, 0.00200000009, 0.00200000009))
KnifeHitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "KnifeHitbox", Vector3.new(0.200000003, 0.600000024, 1.80000007))
KnifeHitboxWeld = CreateWeld(m, KnifeFakeHandle, KnifeHitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -1.50000381, 1, 0, 0, 0, 1, 0, 0, 0, 1))
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

spread = 100
range = 250
rangepower = 20
local SpecialTypeArrow = false
Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  prt.Material = "Neon"
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    
    for i = 0, 1, delay do
      swait()
      if SpecialTypeArrow == true then
        BlockEffect(BrickColor.new("Black"), CFrame.new(prt.Position) * CFrame.new(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 1, 1, 1, 0.5, 0.5, 0.5, 0.05, 1)
      end
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

shoottrail = function(mouse, SpreadAmount)
  
  local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
  local MainPos = BowHandle.Position
  local MainPos2 = mouse.Hit.p + SpreadVectors
  local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
  local speed = 50
  local num = 50
  coroutine.resume(coroutine.create(function()
    
    repeat
      swait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
      local mag = (MainPos - pos).magnitude
      Laser(BrickColor.new("Black"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
      MainPos = MainPos + MouseLook.lookVector * speed
      num = num - 1
      MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
      if hit ~= nil then
        num = 0
        local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
        refpart.Anchored = true
        refpart.CFrame = CFrame.new(pos)
        if SpecialTypeArrow == true then
          WaveEffect(BrickColor.new("Black"), refpart.CFrame, 0.1, 0.1, 0.1, 1, 1, 1, 0.08)
          BlockEffect(BrickColor.new("Black"), refpart.CFrame, 0.1, 0.1, 0.1, 2, 2, 2, 0.05, 1)
        end
        game:GetService("Debris"):AddItem(refpart, 2)
      end
      do
        if num <= 0 then
          local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
          refpart.Anchored = true
          refpart.CFrame = CFrame.new(pos)
          if SpecialTypeArrow == false then
            MagnitudeDamage(refpart, 5, 5, 15, BrickColor.new("Black"), BrickColor.new("Brick yellow"), "rbxassetid://199149137", 1.3)
          else
            if SpecialTypeArrow == true then
              MagnitudeDamage(refpart, 5, 20, 35, BrickColor.new("Black"), BrickColor.new("Brick yellow"), "rbxassetid://199149137", 1.3)
            end
          end
          local newpos = hit.Position
          local effectsmsh = Instance.new("SpecialMesh")
          effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
          effectsmsh.TextureId = "http://www.roblox.com/asset/?id=15886781"
          effectsmsh.Scale = Vector3.new(1, 1, 2.5)
          local effectsg = Instance.new("Part")
          effectsg.formFactor = 3
          effectsg.CanCollide = false
          effectsg.Name = "Arrow"
          effectsg.Material = "SmoothPlastic"
          effectsg.Locked = true
          effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
          effectsg.Parent = workspace
          effectsmsh.Parent = effectsg
          effectsg.CFrame = CFrame.new(newpos, pos) + CFrame.new(newpos, pos).lookVector
          local weld = Instance.new("Weld")
          weld.Part0 = effectsg
          weld.Part1 = hit
          local HitPos = effectsg.Position + CFrame.new(newpos, pos).lookVector
          local CJ = CFrame.new(HitPos)
          local C0 = effectsg.CFrame:inverse() * CJ
          local C1 = hit.CFrame:inverse() * CJ
          weld.C0 = C0
          weld.C1 = C1
          weld.Parent = effectsg
          game:GetService("Debris"):AddItem(refpart, 0)
          game:GetService("Debris"):AddItem(effectsg, 2)
        end
      end
    until num <= 0
  end
))
end

local Hold = false
CFA = function(x, y, z)
  
  return CFrame.fromEulerAnglesXYZ(math.rad(x), math.rad(y), math.rad(z))
end

attackone = function()
  attack = true
  change = 1
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-65)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(65)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.49, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  CreateSound("rbxassetid://188569331", BowHandle, 1, 1.2)
  FakeArrow.Transparency = 0
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-65)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(65)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
    BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(-1.3, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  do
        while 1 do
          swait()
          if Hold == true then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-65)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(65)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3) * CFA(math.random(-0.6, 0.6), math.random(-0.5, 0.5), math.random(-0.5, 0.5))
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
            BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
            PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3) * CFA(0, 0, math.random(-0.6, 0.6))
            PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3) * CFA(0, 0, math.random(-0.6, 0.6))
            FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(-1.3, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            if Torsovelocity < 1 then
              RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
              LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
              -- DECOMPILER ERROR at PC1108: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1108: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC1108: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1108: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      if Hold == false then
        break
	  end
    end
    CreateSound("rbxassetid://166032326", BowHandle, 1, 1.2)
    FakeArrow.Transparency = 1
    shoottrail(mouse, 0)
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(130), math.rad(0), math.rad(20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
      PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-4)), 0.5) * CFA(0, 0, math.random(-0.6, 0.6))
      PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(4)), 0.5) * CFA(0, 0, math.random(-0.6, 0.6))
      FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      if Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      else
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
    end
    Humanoid.WalkSpeed = 18
    attack = false
  end
end

Shank = function()
  
  attack = true
  KnifeMeshPrt.Transparency = 0
  local HitCon = KnifeHitbox.Touched:connect(function(hit)
    
    Damage(hit.Parent, math.random(15, 20), 0.2, BrickColor.new("Black"), BrickColor.new("Brick yellow"), "rbxassetid://199149221", 1.2)
  end
)
  for i = 0, 1, 0.3 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(-50), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-70)), 0.3)
    KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  CreateSound("http://roblox.com/asset/?id=320557413", KnifeHitbox, 1, 1.1)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  for i = 0, 1, 0.3 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  CreateSound("http://roblox.com/asset/?id=320557413", KnifeHitbox, 1, 1.2)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(70)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
    KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  HitCon:disconnect()
  KnifeMeshPrt.Transparency = 1
  attack = false
end

SpecialArrow = function()
  
  attack = true
  change = 1
  Humanoid.WalkSpeed = 5
  SpecialTypeArrow = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(10), math.rad(-20), math.rad(-65)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(65)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.49, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(0), math.rad(10), math.rad(-20)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -0.7 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.7 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  CreateSound("rbxassetid://188569331", BowHandle, 1, 1)
  FakeArrow.Transparency = 0
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(10), math.rad(-20), math.rad(-65)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(65)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
    BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(-1.3, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity < 1 then
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(0), math.rad(10), math.rad(-20)), 0.33)
    else
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(1, -0.7 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.7 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
      end
    end
  end
  do
    while 1 do
          swait()
          if Hold == true then
            BlockEffect(BrickColor.new("Black"), BowHandle.CFrame * CFrame.new(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100), 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.05, 1)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(10), math.rad(-20), math.rad(-65)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(10), math.rad(65)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(110), math.rad(0), math.rad(-50)), 0.3) * CFA(math.random(-0.6, 0.6), math.random(-0.5, 0.5), math.random(-0.5, 0.5))
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(110), math.rad(0), math.rad(-10)), 0.3)
            BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(40), math.rad(-60), math.rad(40)), 0.3)
            PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3) * CFA(0, 0, math.random(-0.6, 0.6))
            PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3) * CFA(0, 0, math.random(-0.6, 0.6))
            FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(-1.3, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            if Torsovelocity < 1 then
              RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.33)
              LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(0), math.rad(10), math.rad(-20)), 0.33)
              -- DECOMPILER ERROR at PC1148: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1148: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC1148: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC1148: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -0.7 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -0.7 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
     	if Hold == false then
     	   break
      	end
    end
    CreateSound("rbxassetid://166032326", BowHandle, 1, 0.8)
    FakeArrow.Transparency = 1
    shoottrail(mouse, 0)
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(10), math.rad(-20), math.rad(-65)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(10), math.rad(65)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.49, 0) * angles(math.rad(130), math.rad(0), math.rad(20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.49, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
      PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-4)), 0.5) * CFA(0, 0, math.random(-0.6, 0.6))
      PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(4)), 0.5) * CFA(0, 0, math.random(-0.6, 0.6))
      FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      if Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(0), math.rad(10), math.rad(-20)), 0.33)
      else
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
    end
    SpecialTypeArrow = false
    Humanoid.WalkSpeed = 18
    attack = false
  end
end

mouse.Button1Down:connect(function()
  
  if attack == false and attacktype == 1 and Hold == false then
    Hold = true
    attackone()
  end
end
)
mouse.Button1Up:connect(function(k)
  
  if attack == true and Hold == true then
    Hold = false
  end
end
)
mouse.KeyDown:connect(function(k)
  
  k = k:lower()
  if attack == false and k == "q" then
    Shank()
  else
    if attack == false and k == "e" and Hold == false then
      Hold = true
      SpecialArrow()
    end
  end
end
)
mouse.KeyUp:connect(function(k)
  
  if attack == true and k == "e" and Hold == true then
    Hold = false
  end
end
)
Humanoid.WalkSpeed = 18
while 1 do
  swait()
  if Hold == true then
    local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
    local direction = aim.lookVector
    local headingA = math.atan2(direction.x, direction.z)
    headingA = math.deg(headingA)
    Humanoid.AutoRotate = false
    RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
  else
    do
      Humanoid.AutoRotate = true
      for i,v in pairs(Character:GetChildren()) do
        if v:IsA("Part") then
          v.Material = "SmoothPlastic"
        else
          if v:IsA("Hat") then
            v:WaitForChild("Handle").Material = "SmoothPlastic"
          end
        end
      end
      Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      velocity = RootPart.Velocity.y
      sine = sine + change
      local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if 1 < RootPart.Velocity.y and hit == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(80 + 2 * math.sin((sine) / 25))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.7, -0.5) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
            BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hit == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(80 + 2 * math.sin((sine) / 25))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * RHCF * angles(math.rad(-3 + 1 * math.cos((sine) / 23)), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * LHCF * angles(math.rad(-3 + 1 * math.cos((sine) / 23)), math.rad(0), math.rad(0)), 0.3)
              BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          else
            if Torsovelocity < 1 and hit ~= nil then
              Anim = "Idle"
              if attack == false then
                change = 1
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.sin((sine) / 27)) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 5 * math.sin((sine) / 25)), math.rad(0), math.rad(30 + 3 * math.sin((sine) / 25))), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(80 + 2 * math.sin((sine) / 25))), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-35 + 1 * math.sin((sine) / 25))), 0.3)
                RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * RHCF * angles(math.rad(-5 + 1 * math.sin((sine) / 25)), math.rad(20), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * LHCF * angles(math.rad(-5 + 1 * math.sin((sine) / 25)), math.rad(20), math.rad(0)), 0.3)
                BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            else
              if 2 < Torsovelocity and hit ~= nil then
                Anim = "Walk"
                if attack == false then
                  change = 3
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-30 + 5 * math.sin((sine) / 10))), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(-5), math.rad(30 - 5 * math.sin((sine) / 10))), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(80)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-25 + 2 * math.sin((sine) / 25))), 0.3)
                  RH.C0 = clerp(RH.C0, cn(1, -1 - 0.1 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(20), math.rad(-10) - math.sin((sine) / 8)), 0.3)
                  LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(20), math.rad(10) - math.sin((sine) / 8)), 0.3)
                  BowFakeHandleWeld.C0 = clerp(BowFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  PivotHandle1Weld.C0 = clerp(PivotHandle1Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  PivotHandle2Weld.C0 = clerp(PivotHandle2Weld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  FakeArrowWeld.C0 = clerp(FakeArrowWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  KnifeFakeHandleWeld.C0 = clerp(KnifeFakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
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
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Block2" then
                    Thing[1].CFrame = Thing[1].CFrame
                    Mesh = Thing[7]
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Cylinder" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Blood" then
                        Mesh = Thing[7]
                        Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Elec" then
                          Mesh = Thing[1].Mesh
                          Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Disappear" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Shatter" then
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                              Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                              Thing[6] = Thing[6] + Thing[5]
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
          end
        end
      end
      -- DECOMPILER ERROR at PC9067: LeaveBlock: unexpected jumping out DO_STMT

      -- DECOMPILER ERROR at PC9067: LeaveBlock: unexpected jumping out IF_ELSE_STMT

      -- DECOMPILER ERROR at PC9067: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
end
