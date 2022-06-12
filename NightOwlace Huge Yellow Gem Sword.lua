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
local FPS = 0
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

Humanoid.Animator:Destroy()

Character.Animate:Destroy()

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

--[[ Credits to Fenrier for Outline-Remover, Part, Mesh, Weld, Raycase and Sound Creation functions ]]--

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

function CreateBillBoardGui(Img, Pos, Siz)
	local billpar = Create("Part"){
		Transparency = 1,
		Size = Vector3.new(1, 1, 1),
		Anchored = true,
		CanCollide = false,
		CFrame = CFrame.new(Pos),
		Name = "BillboardGuiPart",
	}
	local bill = Create("BillboardGui"){
		Parent = billpar,
		Adornee = billpar,
		Size = UDim2.new(1, 0, 1, 0),
		SizeOffset = Vector2.new(Siz, Siz),
	}
	local d = Create("ImageLabel"){
		Parent = bill,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Image = Img,
	}
	return billpar
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local S = Create("Sound"){
			Volume = vol,
			Pitch = pit or 1,
			SoundId = id,
			Parent = par or workspace,
		}
		swait() 
		S:play() 
		game:GetService("Debris"):AddItem(S, 6)
	end))
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

--[[ Credits to Kert109 (Ninja_Deer) for the Damage function. Fenrier for the Magnitude Damage ]]--

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("DebounceHit")
			if not find then
				if v.Parent:findFirstChild("Head") then
					local BillG = Create("BillboardGui"){
						Parent = v.Parent.Head,
						Size = UDim2.new(1, 0, 1, 0),
						Adornee = v.Parent.Head,
						StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
					}
					local TL = Create("TextLabel"){
						Parent = BillG,
						Size = UDim2.new(3, 3, 3, 3),
						BackgroundTransparency = 1,
						Text = tostring(damage).."-",
						TextColor3 = Color1.Color,
						TextStrokeColor3 = Color2.Color,
						TextStrokeTransparency = 0,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						FontSize = Enum.FontSize.Size18,
						Font = "ArialBold",
					}
					coroutine.resume(coroutine.create(function()
						swait(1)
						for i = 0, 1, .1 do
							swait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = "DebounceHit",
				}
				if HSound ~= nil and HPitch ~= nil then
					CreateSound(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end

function MagnitudeDamage(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damage(head.Parent, math.random(mindam, maxdam), 0.5, Color1, Color2, HSound, HPitch)
				end
			end
		end
	end
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.247690827, 0.247690827, 1.3622998))
HandleWeld = CreateWeld(m, RightArm, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.969390154, 0.0237579346, 0.0184631348, 5.57207386e-007, 1.00000489, 3.67389002e-005, -1.00000536, 5.56462226e-007, 2.02237861e-005, 2.02239025e-005, -3.67386638e-005, 1.00000536))
CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.247690827, 0.247690827, 0.866918027))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 2.33122311e-012, -2.54655963e-010, -2.33122289e-012, 1, 1.36422748e-010, 2.54655963e-010, -1.36422748e-010, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00110316277, 0.188598633, 1.73465538, 1, -1.33092526e-005, -6.24464064e-007, 1.33094445e-005, 1, 0.000308631978, 6.20356332e-007, -0.000308631978, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.188521147, 0.191574097, 2.39408302, 1, -1.33098038e-005, -7.5721556e-007, 1.33100375e-005, 1, 0.000309941563, 7.53090262e-007, -0.000309941563, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000229597092, 0.192855835, 2.1683979, 1, -1.32994983e-005, 1.40335729e-007, 1.32994537e-005, 1, 0.000310581992, -1.44466298e-007, -0.000310581992, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 0.999999762))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.990763307))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.166858673, 0.193122864, 3.03533554, 1, -1.3308736e-005, -7.63502271e-007, 1.33089716e-005, 1, 0.000309986674, 7.59376633e-007, -0.000309986674, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000804185867, 0.191688538, 3.530653, 1, -1.32933828e-005, -7.70716213e-007, 1.32936202e-005, 1, 0.000310064468, 7.66594326e-007, -0.000310064468, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0668115616, 0.193061829, 2.66375923, 1, -1.33050789e-005, -7.68771201e-007, 1.33053163e-005, 1, 0.00030988935, 7.64648007e-007, -0.00030988935, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0606665611, 0.19329834, 3.40699768, 1, -1.33046351e-005, -7.62628588e-007, 1.33048707e-005, 1, 0.000310042378, 7.58503518e-007, -0.000310042378, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000129699707, 0.247808456, 0.557387114, -5.9976137e-006, 1, -0.000146096165, 3.62919782e-005, 0.000146096383, 1, 1, 5.99231134e-006, -3.62928549e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.74307245))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000212430954, 0.193084717, 2.78758621, 1, -1.3292115e-005, -7.64836386e-007, 1.32923506e-005, 1, 0.000310028787, 7.60715409e-007, -0.000310028787, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.619227171))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.308891535, -0.187049866, 2.35425568, -1, 1.3369232e-005, 7.36294751e-005, -1.33432222e-005, -1, 0.000353228592, 7.36341899e-005, 0.000353227602, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0619214773, 0.191596985, 3.40710258, -1, 1.32957066e-005, 7.36529764e-005, -1.3269686e-005, -1, 0.000353274547, 7.36576621e-005, 0.000353273557, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0619431734, -7.62939453e-005, 0.000659942627, 1, -1.68903443e-006, 8.89021976e-006, 1.68857855e-006, 1, 5.12837323e-005, -8.89030616e-006, -5.12837178e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.11490631, -0.00323486328, 1.67312813, 1, -0.000138553733, -0.000419682416, 0.000137725976, 0.999998093, -0.00197177241, 0.000419954857, 0.00197171443, 0.999997973))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.991118193, -0.00169372559, 1.48683739, 1, -0.000101248152, -0.00022811057, 0.000101037585, 0.999999642, -0.000922926934, 0.000228203935, 0.000922903942, 0.999999523))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.495381653, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.34057617e-005, 0.433038712, -0.0619231462, -2.52258587e-006, 1, 2.79730593e-005, -4.88260957e-006, 2.79730466e-005, -1, -1, -2.52272253e-006, 4.88253909e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.990632772, -0.0030670166, 1.8580513, 1, -0.000118695381, -0.000317307538, 0.000118231939, 0.999998927, -0.00146017398, 0.000317480502, 0.00146013638, 0.999998927))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.743072569, 0.247690827, 0.743072331))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000508785248, 0.00109100342, 2.0442524, -1, 1.33380454e-005, 7.45448124e-005, -1.33118829e-005, -1, 0.000350935239, 7.45494835e-005, 0.00035093425, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381653, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000866889954, 0.001121521, 3.77840996, -1, 1.33271451e-005, 7.36375587e-005, -1.33011281e-005, -1, 0.000353290816, 7.36422589e-005, 0.000353289826, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00114440918, 0.30999887, -1.61071396, 1.6959948e-005, 0.999999881, -0.000451041211, 1, -1.70482672e-005, -0.000195812056, -0.000195819724, -0.000451037864, -0.999999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00279998779, 0.928339005, -0.247846246, -3.92906186e-005, 0.999999762, -0.000709121872, 0.000201649789, -0.000709113898, -0.999999762, -1, -3.94335984e-005, -0.000201621879))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.990763307))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.165537477, 0.19140625, 3.03529739, -1, 1.33110079e-005, 7.36406728e-005, -1.32849882e-005, -1, 0.000353315816, 7.36453658e-005, 0.000353314826, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00210404396, 0.190086365, 3.77833557, -1, 1.32964278e-005, 7.36489019e-005, -1.3270409e-005, -1, 0.00035326372, 7.36535876e-005, 0.000353262731, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690931, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.742649555, -0.0013885498, 1.67229462, 1, -8.82273453e-005, -0.000161774136, 8.81285523e-005, 0.999999881, -0.00061057962, 0.000161827964, 0.000610565359, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00286865234, -0.185919642, -1.60950089, -3.92204311e-005, 0.999999762, -0.000697126321, -1, -3.93492046e-005, -0.000184709235, -0.000184736622, 0.000697119045, 0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.68093133, -0.000267028809, 0.000720977783, -1, 4.23705826e-009, 4.49069048e-005, 1.62090985e-009, -1, 0.000130446933, 4.49069048e-005, 0.000130446933, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0619175434, -2.28881836e-005, 0.0006275177, 1, -1.93019245e-009, -1.74402679e-008, 1.93019134e-009, 1, -6.47823626e-008, 1.74402679e-008, 6.47823626e-008, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.39419365, 0.191398621, 0.00150156021, -7.33580455e-005, -0.000353180192, -1, -1.33773237e-005, -1, 0.000353181182, -1, 1.34032325e-005, 7.33533234e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.990495205, -0.00230407715, 1.48653221, 1, -0.000109517518, -0.0002704215, 0.000109191846, 0.999999285, -0.00120404549, 0.000270553137, 0.00120401604, 0.999999285))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000204086304, 0.186882019, 1.73465347, -1, 1.33091526e-005, 7.37850569e-005, -1.32831719e-005, -1, 0.000352080271, 7.37897353e-005, 0.000352079282, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.495079279, 0.00174713135, 1.73439598, -1, 3.50335831e-005, 0.000185529163, -3.49047332e-005, -0.999999762, 0.00069447147, 0.00018555345, 0.00069446495, 0.999999762))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381653, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00030875206, 0.00182342529, 1.54870415, -1, 2.08286492e-005, 0.000112248432, -2.07657504e-005, -0.999999881, 0.00056032429, 0.000112260081, 0.00056032202, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.307963133, 0.191383362, 2.54010391, -1, 1.33195472e-005, 7.36448419e-005, -1.32935256e-005, -1, 0.0003533095, 7.36495422e-005, 0.000353308511, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00179290771, 0.556857824, -1.48676109, -5.08429412e-006, -0.999999642, 0.000901209831, -1, 5.22914752e-006, 0.000160729367, -0.000160734009, -0.000901208958, -0.999999642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00209212303, 0.190002441, 3.53058434, -1, 1.32964278e-005, 7.36489019e-005, -1.3270409e-005, -1, 0.00035326372, 7.36535876e-005, 0.000353262731, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00057220459, 0.557849884, -1.48679352, -4.95573522e-006, 1, -1.02608137e-005, 1, 4.95534641e-006, -3.78899822e-005, -3.78899313e-005, -1.02610011e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0618767738, 1.52587891e-005, -0.433105469, 1, 2.50671542e-006, -6.88336877e-006, -2.50681364e-006, 1, -1.42808267e-005, 6.88333284e-006, 1.4280844e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0681250095, 0.191375732, 2.66373825, -1, 1.33106169e-005, 7.36430156e-005, -1.32845971e-005, -1, 0.000353308016, 7.36477086e-005, 0.000353307027, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.990997553, -0.00234985352, 1.85845184, 1, -0.000110424822, -0.000274999184, 0.000110100511, 0.999999285, -0.00117905519, 0.00027512919, 0.00117902481, 0.999999285))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.495724082, 0.00152587891, 1.73449898, -1, 3.25681576e-005, 0.000172944114, -3.24685716e-005, -0.999999881, 0.000575776852, 0.000172962827, 0.000575771206, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, -0.06194067, 0.432926178, 5.24920142e-006, -1, 5.18751731e-005, -1, -5.24848474e-006, 1.38180048e-005, -1.38177329e-005, -5.18752458e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.681120753, -0.000106811523, 0.248102188, -1, -2.47496041e-006, 3.89538436e-005, 2.48052584e-006, -1, 0.00014287587, 3.89534907e-005, 0.000142875972, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.74307245))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00164175034, 0.191452026, 2.78791428, -1, 1.35603477e-005, 7.36123766e-005, -1.35342088e-005, -1, 0.000355070399, 7.36171787e-005, 0.000355069409, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0618710518, -2.28881836e-005, -0.434087753, 1, -1.85937279e-006, -1.07714395e-005, -1.85879389e-006, -1, 5.3738735e-005, -1.07715396e-005, -5.37387132e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.334382623))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.49273777, 0.191368103, -1.76835442, 0.706996918, -0.000258998916, -0.70721668, -1.33023404e-005, -1, 0.000352924631, -0.70721674, -0.000240108973, -0.706996858))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.187193274, 0.189857483, 2.39420891, -1, 1.33216954e-005, 7.36430229e-005, -1.32956748e-005, -1, 0.000353311858, 7.36477232e-005, 0.000353310868, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.619227171))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.310225487, -0.185340881, 2.35414505, 1, -1.33645162e-005, -7.77957325e-007, 1.33647563e-005, 1, 0.000309900934, 7.738156e-007, -0.000309900934, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.743629098, -0.000610351563, 1.67239761, 1, -7.55085566e-005, -9.65813233e-005, 7.54888024e-005, 1, -0.000204520751, 9.65967629e-005, 0.000204513461, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.9904989, 1.67323685, -0.0032119751, -0.999999881, 7.36065122e-005, 0.000557966821, 0.000558087428, 0.00164893596, 0.99999845, 7.26863509e-005, 0.999998689, -0.0016489767))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.999998987))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.0962162, 0.191581726, 1.75837994, -0.707149565, -0.000239748144, -0.707063913, -1.33609119e-005, -1, 0.000352438132, -0.707063973, 0.000258673506, 0.707149506))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.849999845))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381653, 0.247690827, 1.98152661))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000880718231, 0.186889648, 2.78758049, -1, 1.33135281e-005, 7.36409784e-005, -1.3287513e-005, -1, 0.000353256211, 7.36456714e-005, 0.000353255222, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00116729736, 0.309170961, -1.61066818, -1.69450541e-005, -0.999999881, 0.000451442495, -1, 1.7014514e-005, 0.000153862828, -0.000153870496, -0.000451439875, -0.999999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.188795328, 0.189880371, 2.39418983, -1, 1.33152962e-005, 7.36653092e-005, -1.32892701e-005, -1, 0.000353282056, 7.36700022e-005, 0.000353281066, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.495381653, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000297546387, 0.433422089, -0.0619153976, -2.49747882e-006, -1, -0.000131416484, 3.1104646e-005, -0.000131416557, 1, -1, 2.49339109e-006, 3.11049735e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.311312437, 0.19140625, 2.53988266, -1, 1.33059357e-005, 7.31936016e-005, -1.32800815e-005, -1, 0.000353218755, 7.31982946e-005, 0.000353217794, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.99999994))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0619368553, 0.191368103, 2.66374397, -1, 1.33101421e-005, 7.36426082e-005, -1.32841224e-005, -1, 0.000353313837, 7.36473012e-005, 0.000353312847, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000244140625, -0.0619339943, 0.433427811, 3.85240446e-006, 1, 1.2272877e-005, -1, 3.85240855e-006, -3.51944919e-007, -3.51992213e-007, -1.22728761e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.990763307))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.187454224, 0.191436768, 3.03534126, -1, 1.33020139e-005, 7.36424045e-005, -1.32759969e-005, -1, 0.000353269774, 7.36470975e-005, 0.000353268784, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000243663788, 0.193305969, 3.6547718, 1, -1.32862997e-005, -7.6634916e-007, 1.32865362e-005, 1, 0.000310115516, 7.62228808e-007, -0.000310115516, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 0.999999762))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381653, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000418424606, 0.188621521, 3.77864075, 1, -1.32869609e-005, -7.67920028e-007, 1.32871974e-005, 1, 0.000310049101, 7.63800358e-007, -0.000310049101, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.557305932, -0.000114440918, 0.000429153442, -1, 8.0966646e-007, 4.74247499e-005, -8.01799331e-007, -1, 0.000165886348, 4.74248845e-005, 0.000165886304, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0632312298, 0.193077087, 2.66373253, 1, -1.33104968e-005, -7.63095329e-007, 1.33107324e-005, 1, 0.00030998615, 7.58969179e-007, -0.00030998615, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.309295893, 0.193122864, 2.53986931, 1, -1.33006552e-005, -3.11467687e-007, 1.33007507e-005, 1, 0.000310291536, 3.07340571e-007, -0.000310291536, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.619226933))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.619212627, -0.000137329102, 0.619649887, -1, -8.45575016e-007, 3.35914337e-005, 8.48105856e-007, -1, 7.5342723e-005, 3.35913683e-005, 7.53427521e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536195))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00330352783, -0.247553468, 1.23799133, 3.87230066e-005, -0.999999762, 0.000660604914, -1, -3.88496228e-005, -0.000191655956, 0.000191681582, -0.000660597463, -0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0620065928, -0.00280761719, -1.60949707, -1, -3.76856733e-005, -0.00018668588, 3.75624622e-005, -0.999999762, 0.000659967307, -0.00018671072, 0.000659960264, 0.999999762))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.866917908))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00325775146, -2.10489273, -0.185760498, -5.13143023e-005, 0.999999642, -0.000865006004, -0.000231964877, 0.000864994072, 0.999999642, 1, 5.15149331e-005, 0.000231920407))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.315805823))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.48728561, 0.191368103, 1.78308105, -0.707104802, -0.000240302994, -0.707108676, -1.34214242e-005, -1, 0.000353260111, -0.707108736, 0.000259282358, 0.707104743))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.371536225, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.002784729, -0.557448983, 0.928377151, 4.02227524e-005, -0.999999762, 0.000710713095, -1, -4.03686317e-005, -0.000205246339, 0.000205274977, -0.000710704771, -0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000122070313, 0.557321548, 0.247251511, -9.42541703e-007, 1, -0.000166789963, 1, 9.34249044e-007, -4.97194014e-005, -4.9719245e-005, -0.000166790007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000144958496, 0.557320476, 0.24813652, -3.92958412e-007, -1, 0.000153886998, 1, -4.00390405e-007, -4.82949945e-005, 4.82950563e-005, 0.000153886984, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00288391113, -1.73334312, -0.495317936, -5.04821692e-005, 0.999999762, -0.000682739366, -0.000221890848, 0.000682728132, 0.999999762, 1, 5.06336473e-005, 0.000221856331))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.681127787, -0.000106811523, -0.247243881, -1, 3.41237097e-007, 5.13576015e-005, -3.31482056e-007, -1, 0.000189943312, 5.13576633e-005, 0.000189943297, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309980512, 0.193069458, 2.53992081, 1, -1.33072435e-005, -7.60684486e-007, 1.33074782e-005, 1, 0.00030986857, 7.56560951e-007, -0.000309868599, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00292205811, -0.0617733002, 1.60946274, -3.95313764e-005, 0.999999762, -0.000704344187, 1, 3.96602009e-005, 0.000182890581, 0.000182918462, -0.000704336911, -0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.619219065, -8.39233398e-005, -0.55680275, -1, 3.07345499e-006, 2.4152765e-005, -3.07262803e-006, -1, 3.42357525e-005, 2.41528705e-005, 3.42356798e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.495344639, -0.00273132324, -1.60951614, -1, -4.32704437e-005, -0.000205324031, 4.31482877e-005, -0.999999881, 0.000594908604, -0.000205349716, 0.000594899757, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00200462341, 0.18952179, 2.29196739, -1, 1.33013664e-005, 7.27510269e-005, -1.32757077e-005, -1, 0.000352677627, 7.27557126e-005, 0.000352676667, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.990957499, 1.67230797, -0.00337219238, -0.999999881, 6.26529509e-005, 0.000501456612, 0.000501560862, 0.00167399284, 0.99999845, 6.18134218e-005, 0.999998569, -0.00167402416))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.999998987))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0019967556, 0.189422607, 2.04428673, -1, 1.33136045e-005, 7.27493098e-005, -1.32879441e-005, -1, 0.000352713425, 7.27539955e-005, 0.000352712465, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00206851959, 0.189872742, 3.15900421, -1, 1.33080266e-005, 7.36563452e-005, -1.32820041e-005, -1, 0.00035328159, 7.36610382e-005, 0.0003532806, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00137329102, -0.185977221, -1.239048, 2.03192176e-005, 0.999999881, -0.000605922542, 1, -2.03909458e-005, -0.000118371034, -0.000118383352, -0.000605920155, -0.999999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00152468681, 0.191596985, 3.65489769, -1, 1.32958085e-005, 7.36549555e-005, -1.3269786e-005, -1, 0.000353291311, 7.36596412e-005, 0.000353290321, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 0.999999762))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381653, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00107645988, 0.187004089, 3.77929497, -1, 1.3337256e-005, 7.37154187e-005, -1.33112053e-005, -1, 0.000353367563, 7.3720119e-005, 0.000353366573, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.619227171))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.308855891, 0.186897278, 2.35409737, -1.00000501, 1.33138828e-005, 7.36005895e-005, -1.32878713e-005, -1.00000536, 0.000353312818, 7.36055154e-005, 0.000353311683, 1.00000525))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0623910427, 0.191474915, 3.40841293, -1, 1.40818593e-005, 7.35299182e-005, -1.4055483e-005, -1, 0.000358688354, 7.35349604e-005, 0.000358687306, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00285339355, 0.742742538, -0.433599949, -4.1262203e-005, 0.999999762, -0.000714544964, 0.000205045886, -0.000714536465, -0.999999762, -1, -4.14087044e-005, -0.000205016346))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690886, 0.495381624))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.371316075, 0.00424957275, 3.03333664, 0.999999881, -1.24385888e-005, -0.000539329718, 1.26199056e-005, 1, 0.000336189871, 0.000539325469, -0.000336196652, 0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.866918027))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.79657197, -0.000457763672, 1.23912621, 1, -7.55095461e-005, -9.43516861e-005, 7.54903085e-005, 1, -0.000203847434, 9.43670748e-005, 0.000203840304, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48714173, 0.000709533691, -1.48652267, 1, 7.60997573e-005, 2.34951131e-005, 7.60949624e-005, -1, 0.000203936186, 2.35106327e-005, -0.000203934396, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.866918027))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.79505086, -0.000129699707, 1.23971939, -1, 7.54754874e-005, -2.17175111e-005, -7.54719149e-005, -1, -0.00016432695, -2.1729913e-005, -0.00016432532, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48562217, 0.000328063965, -1.48713684, -1, -7.61550109e-005, 9.75060757e-005, -7.61389747e-005, 1, 0.000164414902, -9.75185976e-005, 0.00016440748, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253883183, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.503623962, 0.0622558594, -1.71896935, -0.799873829, 6.9738795e-005, -0.600168169, -0.00010891477, 1, 0.000261354871, 0.600168169, 0.000274418097, -0.799873829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 0.524999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253883183, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.505185127, 0.0625762939, -1.71940613, 0.799824417, -9.35049175e-005, -0.600234151, 0.000108948712, -1, 0.000300957123, -0.600234151, -0.000306107569, -0.799824357))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 0.524999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.513958633, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.95330262, -0.000457763672, 1.74576187, -0.970192313, 1.74502311e-005, 0.242336482, -9.14737175e-005, -1, -0.00029420614, 0.242336467, -0.000307603914, 0.970192254))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.377728641, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515367508, 0.000640869141, -1.72204971, -0.799869299, 7.03162295e-005, -0.600174308, -0.000108606044, 1, 0.000261902023, 0.600174308, 0.000274669932, -0.799869299))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.54839134, -0.0026473999, 1.23791289, -0.000276352104, 0.00190176722, -0.999998212, -0.000136300208, -0.999998212, -0.00190172961, -1, 0.000135774419, 0.000276610808))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.495381653, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00303649902, -0.371338844, -1.9810276, 7.24736892e-005, -0.999999762, 0.000702528516, 1, 7.26030776e-005, 0.000184151417, -0.000184202378, 0.000702515128, 0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253883183, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.504732132, -0.0623703003, -1.7189579, -0.799868882, 6.99175071e-005, -0.600174844, -0.000108895903, 1, 0.000261623703, 0.600174844, 0.000274621241, -0.799868822))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 0.524999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.377728641, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.516949654, 0.000961303711, -1.72250366, 0.799833179, -9.38912926e-005, -0.600222349, 0.000108701613, -1, 0.000301279069, -0.600222349, -0.000306218135, -0.799833179))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.79608536, -0.00315093994, 1.23797464, -0.00027726707, 0.00190181122, -0.999998212, -0.000136313553, -0.999998212, -0.0019017735, -1, 0.000135786002, 0.000277525804))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253883183, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.506304741, -0.0620269775, -1.71940804, 0.799824417, -9.34985801e-005, -0.600234151, 0.000108976732, -1, 0.000300983927, -0.600234151, -0.000306145812, -0.799824357))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 0.524999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.11313415, -0.00297546387, 1.67298317, -1, 0.000138517324, -0.000345920096, -0.000137848692, -0.999998212, -0.00193214533, -0.000346187124, -0.0019320976, 0.999998093))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381773, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48541355, -0.000198364258, 1.92092133, -1, 7.54625289e-005, -2.07465037e-005, -7.54591165e-005, -1, -0.00016450182, -2.07589164e-005, -0.000164500249, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.371536225, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000205993652, -0.557310581, 1.05290985, -4.81295046e-006, 1, -8.98493163e-005, -1, -4.81001416e-006, 3.26787849e-005, 3.2678352e-005, 8.98494691e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381653, 0.247690827, 0.495381415))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000240802765, 1.54867744, -0.00131225586, -1, 1.48606614e-005, 7.76818706e-005, 7.76872621e-005, 0.000363575062, 1, 1.4832417e-005, 1, -0.000363576226))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00282287598, 0.309498787, 1.60951233, 4.4355631e-005, -0.999999762, 0.000654438336, -1, -4.44850084e-005, -0.000197679707, 0.000197708781, -0.000654429547, -0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.91821289e-005, 0.867271423, -0.433469415, 2.92316577e-006, -1, 9.99441836e-005, 2.23311254e-005, 9.99442491e-005, 1, -1, -2.92093387e-006, 2.23314182e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00337982178, -0.68111515, 2.10490799, -5.0455601e-005, 0.999999642, -0.000923445623, 1, 5.06511969e-005, 0.000211782608, 0.000211829305, -0.000923435029, -0.999999523))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.50000006))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0018157959, 1.05317688, -0.247763395, 3.12255543e-005, -0.999999642, 0.000903923064, -0.000153509347, 0.000903918175, 0.999999642, -1, -3.13643068e-005, -0.000153481073))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.0979414, 0.19153595, -1.739748, 0.707016051, -0.000259299733, -0.707197487, -1.35437094e-005, -1, 0.00035311791, -0.707197547, -0.00024008195, -0.707015991))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.774999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.79623222, -0.00341033936, 1.23974657, 0.000203515723, -0.00194054097, -0.999998093, 0.000136196119, 0.999998093, -0.00194051326, 1, -0.000135800918, 0.000203779622))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00143027306, 0.19102478, 2.1685009, -1, 1.33138838e-005, 7.27450024e-005, -1.32882224e-005, -1, 0.000352746138, 7.27496881e-005, 0.000352745177, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 0.999999762))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.371536285, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.30956912, -0.00276947021, -1.48566055, -1, -4.26459119e-005, -0.000202132534, 4.25200051e-005, -0.999999881, 0.000622836291, -0.000202159077, 0.000622827734, 0.999999762))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00298309326, 1.67143631, 0.681066036, -4.54477195e-005, 0.999999762, -0.000753513421, 0.000210019469, -0.000753503817, -0.999999762, -1, -4.56059606e-005, -0.00020998517))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.50000006))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.743072331))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.6450882e-005, -0.000358581543, 1.0532589, -1, 8.83427037e-006, 4.96116663e-005, -8.82299628e-006, -1, 0.000227226919, 4.96136709e-005, 0.000227226483, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.5485363, -0.00293731689, 1.23968863, 0.000203516727, -0.00194068218, -0.999998093, 0.000136173883, 0.999998093, -0.00194065447, 1, -0.000135778653, 0.000203780597))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.371536285, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00288391113, -0.30950141, -1.36177444, 4.38604839e-005, -0.999999762, 0.000669403991, 1, 4.399514e-005, 0.000201150862, -0.000201180272, 0.000669395144, 0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00186920166, -0.247685313, 1.30096054, -2.98526793e-005, 0.999999642, -0.000904403627, -1, -2.99883341e-005, -0.000149979925, -0.000150006977, 0.000904399087, 0.999999642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000797510147, 0.191337585, 2.29202271, 1, -1.33008243e-005, 1.32535732e-007, 1.33007816e-005, 1, 0.000310569187, -1.36666543e-007, -0.000310569187, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00284576416, 1.485672, 0.557206631, -4.4492368e-005, 0.999999762, -0.000681578706, 0.000201935763, -0.000681569683, -0.999999762, -1, -4.46299891e-005, -0.000201905379))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.50000006))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.09719944, 0.193260193, 1.75732803, 0.707067311, 0.000208956335, -0.707146227, 1.35675764e-005, 1, 0.000309058436, 0.707146287, -0.000228119403, 0.707067192))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.849999845))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000792503357, 0.191261292, 2.04424858, 1, -1.33008243e-005, 1.32535732e-007, 1.33007816e-005, 1, 0.000310569187, -1.36666543e-007, -0.000310569187, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.39406013, 0.193099976, 0.000214099884, -4.34639418e-007, 0.000309490104, -1, 1.34488218e-005, 1, 0.000309490104, 1, -1.34486872e-005, -4.3880172e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.180000007, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.371536285))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00286865234, -0.247582197, -1.23792839, 4.37966009e-005, -0.999999762, 0.000667605666, 1, 4.3930675e-005, 0.000200821407, -0.0002008507, 0.00066759676, 0.999999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381653, 0.247690827, 1.98152661))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000374555588, 0.188667297, 2.78773499, 1, -1.32921732e-005, 1.2566997e-007, 1.32921332e-005, 1, 0.000310569914, -1.2979811e-007, -0.000310569914, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.315805823))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.48793221, 0.193283081, 1.78194427, 0.707071066, 0.000209860023, -0.707142532, 1.36983354e-005, 1, 0.000310468837, 0.707142591, -0.000229210185, 0.707071006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690827, 0.619227171))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.310157299, 0.188697815, 2.35419655, 1, -1.32894374e-005, 8.53329993e-008, 1.32894093e-005, 1, 0.000310595031, -8.94606202e-008, -0.000310595031, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690886))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.681152821, -0.00276184082, -1.91911507, -1, -3.8811806e-005, -0.000215099019, 3.86841348e-005, -0.999999881, 0.000593517325, -0.000215121996, 0.000593509059, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.866917908))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.67843628e-005, -0.000534057617, -1.11418533, -1, 1.2106294e-005, 6.81507299e-005, -1.20886925e-005, -1, 0.000258270185, 6.81538513e-005, 0.000258269371, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.09687424, 0.193237305, -1.74069786, -0.707097709, 0.00022855321, -0.70711571, 1.35359896e-005, 1, 0.000309683237, 0.707115769, 0.000209404825, -0.70709765))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 0.774999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.371536285, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0620560646, -0.00337219238, -1.98107719, -1, -3.80977544e-005, -0.000187559024, 3.79371122e-005, -0.999999642, 0.000856418163, -0.000187591591, 0.000856411061, 0.999999642))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.185862303, -0.002784729, -1.79525757, -1, -3.49257753e-005, -0.000186260993, 3.4802837e-005, -0.999999762, 0.000660007412, -0.000186284014, 0.000660000893, 0.999999762))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690886, 0.495381624))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.368971109, 0.000350952148, 3.03347969, -0.999999881, 1.24267981e-005, -0.00046556053, -1.26019795e-005, -1, 0.000376282231, -0.000465555757, 0.000376288081, 0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.495381773, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.4869312, -0.000541687012, 1.9202652, 1, -7.55280926e-005, -9.47543958e-005, 7.55087676e-005, 1, -0.00020390749, 9.47697918e-005, 0.00020390033, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.513958633, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.9546175, -0.000801086426, 1.74478722, 0.970211089, -7.91056027e-006, 0.242261231, 9.14532284e-005, 1, -0.000333600095, -0.242261231, 0.000345818087, 0.970211029))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.371536285))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00323486328, -3.34338379, 0.435493708, 7.36304537e-006, -1, -0.000324164837, 0.000201475705, 0.000324166322, -1, 1, 7.2977341e-006, 0.000201478091))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.495381773, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00325775146, 3.03406906, 0.559362888, -7.68178325e-006, 1, 0.000355171738, -0.000199735863, -0.000355173252, 1, 1, 7.61084266e-006, 0.000199738584))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690886))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00366973877, 2.66241837, 0.373332977, -7.63143544e-006, 1, 0.000319665269, -0.000175729976, -0.000319666608, 1, 1, 7.5752605e-006, 0.000175732421))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000823974609, -1.73399353, 1.48743987, -2.70637629e-005, -1, 0.000362212217, 0.000203833813, -0.000362217717, -1, 1, -2.69899301e-005, 0.000203843621))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000625610352, 1.73535538, -1.48509121, -2.76470164e-005, 1, 0.000322755368, -0.000199553018, -0.000322760869, 1, 1, 2.75826078e-005, 0.000199561939))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000938415527, 1.72250366, -0.266145706, 1.11064855e-005, -1, 0.000374556868, 0.600233316, 0.000306246424, 0.799824953, -0.799824953, 0.000215938315, 0.600233316))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0009765625, -0.766689301, -1.7225132, 1.09544681e-005, -1, 0.000374748051, -0.799815059, 0.000216179658, 0.600246429, -0.600246489, -0.000306304515, -0.799815059))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.371536285, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00048828125, 1.11607933, -1.48516917, -2.76516294e-005, 1, 0.000322688778, -0.000198196765, -0.00032269425, 1, 1, 2.75876719e-005, 0.000198205686))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.495381653, 0.247690886))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000778198242, -1.92123032, 1.85655236, -2.4074041e-005, 1, 0.000324455439, 0.000200208946, 0.000324460241, -1, -1, -2.40090812e-005, -0.00020021676))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000717163086, -2.10687447, -1.4850018, 2.7652577e-005, -1, -0.000324085966, 0.000199057467, 0.000324091467, -1, 1, 2.75880629e-005, 0.000199066431))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00048828125, -1.73461151, 1.48592472, 2.70341698e-005, 1, 0.000322810258, -0.000278278341, 0.000322817796, -0.999999881, -1, 2.69443353e-005, 0.000278287043))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.990763545, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000709533691, 1.17814636, 1.91860342, 2.34845065e-005, -1, -0.000336600962, -0.000200170907, -0.000336605648, 1, -1, -2.34171293e-005, -0.000200178809))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.495381773, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000625610352, 3.03403091, 0.556950569, 7.72340172e-006, -1, 0.000395528012, 0.000273488666, 0.000395530165, 0.999999881, -1, -7.61522824e-006, 0.000273491692))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.990763545, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00104522705, 1.17756271, 1.92012513, -2.35129883e-005, 1, -0.000375983538, 0.000273265876, 0.000375989999, 0.999999881, 1, 2.34102445e-005, -0.000273274694))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000595092773, 1.72206688, -0.264558792, -1.1042338e-005, 1, 0.000335063087, -0.600175858, -0.000274633639, 0.799867988, 0.799868047, -0.000192264371, 0.600175858))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.18863678, 1.73467445, 0.186023235, 3.3962715e-005, -1, -0.000311887619, -0.000198894748, -0.000311894371, 1, -1, -3.39006801e-005, -0.000198905342))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.18711853, -2.78806114, 0.37029326, 3.34549186e-005, -1, 0.000355183292, -0.000271850004, -0.000355192402, -0.999999881, 1, 3.3358363e-005, -0.00027186182))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000419616699, -2.53974533, 0.310022593, -3.33881035e-005, 1, 0.000311674288, 0.000188052902, 0.000311680546, -1, -1, -3.33294956e-005, -0.000188063306))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.186935425, 1.73470497, 0.184723973, -3.40049555e-005, 1, -0.000355334312, 0.00027326963, 0.000355343625, 0.999999881, 1, 3.39078506e-005, -0.000273281679))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000633239746, -0.765111923, -1.72207069, -1.10202991e-005, 1, 0.000335367949, 0.799854636, -0.00019247114, 0.600193858, 0.600193918, 0.000274859893, -0.799854577))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000419616699, 0.744663239, -1.79495144, -1.18248772e-005, 1, 0.000337178761, -0.000202641168, -0.000337181147, 1, 1, 1.17565496e-005, 0.000202645155))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000755310059, 0.74407196, -1.79647696, 1.18177932e-005, -1, 0.000376558863, 0.000275736063, 0.000376562151, 0.999999881, -1, -1.17139625e-005, 0.000275740487))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.500000119, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.371536285))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000648498535, -3.34320831, 0.433139563, -7.45957959e-006, 1, -0.000364456238, -0.000275554135, -0.000364458334, -0.999999881, -1, -7.35915137e-006, 0.000275556813))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.188720703, 1.92053032, 0.309884787, 3.39672224e-005, -1, -0.000312594289, -0.000200092079, -0.000312601071, 1, -1, -3.3904671e-005, -0.000200102702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.185203552, 2.35418701, 0.434367895, 3.40411971e-005, -1, -0.000313596625, -8.29518103e-005, -0.000313599448, 1, -1, -3.40151855e-005, -8.29624842e-005))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000427246094, -2.53964424, 0.309142232, 3.32453346e-005, -1, -0.000312155258, 0.000179933137, 0.000312161224, -1, 1, 3.31891642e-005, 0.000179943512))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.186904907, 1.73467064, 0.186476469, 3.40675942e-005, -1, 0.000352484349, 0.000264750939, 0.0003524934, 0.999999881, -1, -3.39742728e-005, 0.00026476293))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.186950684, 2.35396004, 0.432430625, -3.40012957e-005, 1, -0.000355346652, 0.000273273385, 0.000355355936, 0.999999881, 1, 3.39041871e-005, -0.000273285434))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.186943054, 1.92046547, 0.308576822, -3.40050065e-005, 1, -0.000355335156, 0.000273269688, 0.00035534444, 0.999999881, 1, 3.39079015e-005, -0.000273281737))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.185333252, 1.92058372, 0.309802294, 3.38986029e-005, -1, -0.000311782962, -0.000198943773, -0.000311789685, 1, -1, -3.38365717e-005, -0.000198954338))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.188690186, -2.78732109, 0.371850252, -3.36315534e-005, 1, 0.000312416611, 0.000199445625, 0.000312423304, -1, -1, -3.35692421e-005, -0.000199456132))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.188613892, 1.73464394, 0.185191035, -3.41408559e-005, 1, 0.000309033901, -0.000190374762, -0.000309040392, 1, 1, 3.40820225e-005, 0.000190385312))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.186935425, -2.78732491, 0.370507479, 3.36441481e-005, -1.00000536, 0.000355346128, -0.000273130892, -0.000355355209, -1.00000536, 1.00000501, 3.35470977e-005, -0.00027314265))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.187019348, 2.35417557, 0.432470918, -3.39720282e-005, 1, -0.000355283904, 0.000273341546, 0.000355293188, 0.999999881, 1, 3.38749123e-005, -0.000273353595))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.185325623, -2.78745079, 0.371905565, -3.3493794e-005, 1, 0.000311937969, 0.000199073867, 0.000311944634, -1, -1, -3.34316937e-005, -0.000199084316))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.188926697, 2.35410309, 0.433963537, 3.41559389e-005, -1, -0.000314530509, -0.000199287664, -0.00031453729, 1, -1, -3.40932565e-005, -0.000199298403))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.187133789, 1.92072296, 0.308557987, -3.39876497e-005, 1, -0.000354580261, 0.00027248793, 0.000354589516, 0.999999881, 1, 3.38910286e-005, -0.00027249995))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690886))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000228881836, 2.6623745, 0.370985985, 7.58594888e-006, -1, 0.000359957397, 0.000249806937, 0.000359959289, 0.999999881, -1, -7.4960285e-006, 0.000249809644))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000953674316, 1.73472786, -1.48660803, 2.76562714e-005, -1, 0.000362008839, 0.000272645761, 0.000362016406, 0.999999881, -1, -2.75575694e-005, 0.000272655743))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.495381653, 0.247690886))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00109863281, -1.92061234, 1.85806489, 2.41345278e-005, -1, 0.000363810221, -0.000273357495, -0.000363816827, -0.999999881, 1, 2.40350764e-005, -0.000273366255))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00106811523, -2.1062603, -1.48652124, -2.77389463e-005, 1, -0.00036336761, -0.000272608479, -0.000363375206, -0.999999881, -1, -2.7639886e-005, 0.000272618519))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.371536285, 0.495381653))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000831604004, 1.11549187, -1.4866997, 2.76358387e-005, -1, 0.000362149964, 0.000272647652, 0.000362157531, 0.999999881, -1, -2.75370967e-005, 0.000272657635))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BladePivotConnectorL = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePivotConnectorL", Vector3.new(0.371536285, 0.247690827, 0.371536225))
BladePivotConnectorLweld = CreateWeld(m, FakeHandle, BladePivotConnectorL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.308720708, -0.0040512085, 3.4677887, -1, 1.3214737e-005, 6.75022966e-005, -1.31907673e-005, -1, 0.000355066528, 6.75069823e-005, 0.000355065626, 1))
CreateMesh("CylinderMesh", BladePivotConnectorL, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
BladePivotConnectorR = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePivotConnectorR", Vector3.new(0.371536285, 0.247690827, 0.371536225))
BladePivotConnectorRweld = CreateWeld(m, FakeHandle, BladePivotConnectorR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.310429096, -0.00403594971, 3.46793175, -1, 1.32228588e-005, 6.72361348e-005, -1.31989655e-005, -1, 0.000355331489, 6.72408278e-005, 0.000355330587, 1))
CreateMesh("CylinderMesh", BladePivotConnectorR, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381653, 0.247690827, 1.36229968))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000501155853, 0.00108337402, 3.09711075, -1, 1.33724952e-005, 8.53550009e-005, -1.33425383e-005, -1, 0.000350955816, 8.53596866e-005, 0.00035095468, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.990763307))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.186136246, 0.193145752, 3.03526497, 1, -1.33078356e-005, -7.80745268e-007, 1.33080766e-005, 1, 0.000309948839, 7.76620482e-007, -0.000309948839, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.187473178, 0.191551208, 2.39419556, 1, -1.33089743e-005, -7.62078002e-007, 1.3309209e-005, 1, 0.000309847703, 7.57954183e-007, -0.000309847703, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000795841217, 0.191558838, 3.15894699, 1, -1.33088142e-005, -7.57739656e-007, 1.3309048e-005, 1, 0.000309980154, 7.53614131e-007, -0.000309980154, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000810146332, 0.191795349, 3.77830505, 1, -1.32863097e-005, -7.61983131e-007, 1.32865443e-005, 1, 0.000310082454, 7.57863234e-007, -0.000310082454, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.174999997))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.334382623))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.49175072, 0.193077087, -1.76910877, -0.707022309, 0.000228062621, -0.707191229, 1.31857378e-005, 1, 0.000309308147, 0.707191169, 0.00020936293, -0.707022309))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000144958496, 0.247215271, 0.557320237, 1.06156972e-006, -1, 0.000167151549, -5.07536024e-005, -0.000167151607, -1, 1, 1.05308618e-006, -5.07537807e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
CreateMesh("BlockMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.495381653))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0632066727, 0.19329071, 3.40708733, 1, -1.32846963e-005, -7.76305853e-007, 1.32849354e-005, 1, 0.000310126867, 7.72185842e-007, -0.000310126867, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0850000158, 0.5, 1))
BladePivotHandleL = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Handle", Vector3.new(0.371536285, 0.247690827, 0.371536225))
BladePivotHandleLWeld = CreateWeld(m, BladePivotConnectorL, BladePivotHandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00382983685, -0.00672149658, 0.000461578369, -1, -9.4571476e-008, 6.09643139e-005, 1.35436181e-007, -0.999999762, 0.00067030557, 6.09642375e-005, 0.00067030557, 0.999999762))
CreateMesh("CylinderMesh", BladePivotHandleL, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, -0.185916424, 0.000293731689, -0.000321241532, -1, -1.63796612e-005, -0.999999881, 0.000321246509, -0.000304220739, 0.000304225978, 1.62819324e-005, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.619227171, 0.247690827, 1.11460888))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.246473074, 0.00468444824, 1.73266602, 0.999999881, 6.24898064e-007, -0.000536414795, -6.13195425e-007, 1, 2.18167024e-005, 0.000536414795, -2.18163696e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 2.22921777))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0606770515, 0.00470733643, 3.40501404, 0.999999881, 6.24894483e-007, -0.000536421081, -6.13187979e-007, 1, 2.18236873e-005, 0.000536421081, -2.18233545e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690886, 0.371536165))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.370448232, 0.00416564941, -0.868558884, 0.999999881, 4.6155418e-007, -0.000534705119, -4.50118762e-007, 1, 2.13865223e-005, 0.000534705119, -2.13862786e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.371536285, 0.247690886, 0.743072569))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.124539018, -0.00437927246, -1.91851425, 0.999999881, 2.67052674e-005, 0.000494205044, 2.67160212e-005, -1, -2.17526158e-005, 0.000494204462, 2.1765818e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.742982507, 0.00289154053, -0.806814194, 1, 2.00866452e-005, 0.000220448826, -2.00101113e-005, 1, -0.000347168971, -0.000220455768, 0.000347164547, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.25, 0.999997854))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.371536285, 0.247690886, 0.866917908))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.494098663, 0.00444030762, -0.249221802, 0.999999881, 4.61677672e-007, -0.000534340972, -4.50306629e-007, 1, 2.12806171e-005, 0.000534340972, -2.12803716e-005, 0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690886, 0.247690827, 0.99076283))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.804904938, 0.00289154053, -0.187576294, 1, 2.00866452e-005, 0.000220448826, -2.00101113e-005, 1, -0.000347168971, -0.000220455768, 0.000347164547, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 0.866918027))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432239175, 0.00466918945, 0.741693497, 0.999999881, 6.24604866e-007, -0.000537288608, -6.12738859e-007, 1, 2.20852417e-005, 0.000537288608, -2.20849088e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.371536285, 0.247690886, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.124514699, -0.00399017334, -0.741659164, 0.999999881, 2.67642954e-005, 0.000493824948, 2.67749983e-005, -1, -2.16675562e-005, 0.000493824366, 2.16807748e-005, -0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.495381653, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0625777245, -0.00417327881, -0.989473343, 0.999999881, 2.67051582e-005, 0.000493869069, 2.67159485e-005, -1, -2.18441273e-005, 0.000493868487, 2.18573186e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 1.11460829))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.61921382, 0.00286865234, 1.73202896, 1, 2.00258291e-005, 0.000216827277, -1.99505921e-005, 1, -0.000346978573, -0.000216834203, 0.000346974237, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690961, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00276947021, -1.05333328, 0.741454124, -1.43659508e-005, 1, -0.000367720815, 0.000239220433, 0.00036772422, 1, 1, 1.42779836e-005, -0.000239225716))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00280761719, 0.741514206, 0.249804616, 1.49917869e-005, -1, 0.00036783173, 0.000240286405, 0.00036783531, 1, -1, -1.49034013e-005, 0.00024029192))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00279998779, -4.39685822, 0.741093874, 1.4053031e-005, -1, 0.000367652101, -0.000235291227, -0.00036765539, -1, 1, 1.39665253e-005, -0.000235296393))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.990763545, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00276947021, -0.186388016, 1.05107069, -1.43659508e-005, 1, -0.000367720815, 0.000239220433, 0.00036772422, 1, 1, 1.42779836e-005, -0.000239225716))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.866918027))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00384521484, -0.740545034, 0.745422363, 2.00018803e-005, -1, -8.68129155e-006, -1, -2.00000632e-005, -0.000209250575, 0.0002092504, 8.68547704e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00419616699, 0.184076309, -0.184657812, 2.07915782e-005, -1, -1.01406013e-005, -0.00020968738, -1.01449605e-005, 1, -1, -2.07894518e-005, -0.000209687583))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.11460888, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.002784729, -1.73328972, 0.927217603, 1.40530346e-005, -1, 0.000367751258, -0.000239500179, -0.000367754605, -1, 1, 1.39649574e-005, -0.000239505345))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.743072569))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00431060791, -0.431772232, 0.680168629, 2.04339558e-005, -1, -1.02862386e-005, 0.000208878409, 1.02905069e-005, -1, 1, 2.04318058e-005, 0.000208878613))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690961, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.002784729, -0.805643082, 0.865296662, -1.43659508e-005, 1, -0.000367720815, 0.000239220433, 0.00036772422, 1, 1, 1.42779836e-005, -0.000239225716))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.371536344, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00275421143, 0.123243332, 1.11299777, -1.43659508e-005, 1, -0.000367720815, 0.000239220433, 0.00036772422, 1, 1, 1.42779836e-005, -0.000239225716))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00382995605, -0.554768562, 1.30274391, 2.00018803e-005, -1, -8.68129155e-006, -1, -2.00000632e-005, -0.000209250575, 0.0002092504, 8.68547704e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.866917908, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00462341309, -0.741413116, 0.80474788, 2.03743493e-005, -1, -1.0544205e-005, 0.000209861464, 1.05484805e-005, -1, 1, 2.03721356e-005, 0.000209861682))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.866918027, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00277709961, -0.742488861, 1.17491615, 1.40530346e-005, -1, 0.000367751258, -0.000239500179, -0.000367754605, -1, 1, 1.39649574e-005, -0.000239505345))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690886, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00457000732, 0.555904388, 0.125345826, 6.76992477e-006, -1, -1.00563229e-005, 0.000220883827, -1.00548268e-005, 1, -1, -6.77214575e-006, 0.000220883754))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.11460888, 0.990763545))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0027923584, -5.07739067, 0.183799863, 1.40530228e-005, -1, 0.000367337954, -0.000239165631, -0.000367341301, -1, 1, 1.39651675e-005, -0.000239170797))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.495381773))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00453186035, -4.82940292, 0.0616351366, 2.04339449e-005, -1, -1.05580521e-005, 0.000209577469, 1.0562334e-005, -1, 1, 2.04317312e-005, 0.000209577687))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00473022461, -0.0604268312, 1.23728371, 2.83213958e-005, 1, 7.73369356e-006, -1, 2.83196896e-005, 0.000220349029, 0.000220348811, -7.73993361e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0040435791, -0.741500854, 0.246572137, 2.02998635e-005, -1, -9.84842427e-006, 0.000206477125, 9.85261522e-006, -1, 1, 2.02978299e-005, 0.000206477329))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.50000006))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690931, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00464630127, -2.41388893, 0.434007883, 2.04339485e-005, -1, -1.05022264e-005, 0.000209788297, 1.05065128e-005, -1, 1, 2.04317439e-005, 0.000209788515))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.743072569))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00477600098, -0.122374654, 1.91857719, 2.82915917e-005, 1, 8.10899746e-006, -1, 2.82897981e-005, 0.000221084847, 0.000221084614, -8.11525206e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.98152661, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.002784729, -3.28095436, 0.741219521, 1.40530319e-005, -1, 0.000367661589, -0.000239281158, -0.000367664936, -1, 1, 1.39650565e-005, -0.000239286324))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0048828125, -0.0604587793, -1.48500443, -2.82916099e-005, -1, -8.78526771e-006, -1, 2.82897363e-005, 0.000213154417, -0.00021315417, 8.79129766e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00465393066, 0.741756439, 0.122399807, -4.13546586e-005, 1, 1.08682407e-005, 0.000204781012, -1.08597715e-005, 1, 1, 4.13568814e-005, -0.000204780561))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00422668457, -0.741495132, -0.122838378, 1.4121003e-005, 1, 1.0431374e-005, 0.000208564306, 1.04284281e-005, -1, -1, 1.41231776e-005, -0.000208564161))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.371536285, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00280761719, 4.08693886, 0.74113673, -1.39338317e-005, 1, -0.000367917994, 0.000235374333, 0.000367921253, 1, 1, 1.38472324e-005, -0.000235379455))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00411224365, -0.370334864, 1.11664391, 2.01806888e-005, -1, -8.6848986e-006, -1, -2.01788735e-005, -0.000208961865, 0.00020896169, 8.68911502e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00417327881, -0.556165695, 0.868906021, 2.02104911e-005, -1, -8.76309605e-006, -1, -2.02086594e-005, -0.000208830083, 0.000208829908, 8.7673161e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 2.22921777, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00465393066, -3.40468979, 0.37208128, 2.04339485e-005, -1, -1.05022264e-005, 0.000209788297, 1.05065128e-005, -1, 1, 2.04317439e-005, 0.000209788515))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.371536285, 0.990763307))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00399780273, -0.865847468, 0.187496185, 2.02104729e-005, -1, -9.30042643e-006, -1, -2.02085521e-005, -0.000206360768, 0.000206360579, 9.30459646e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.371536285, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00486755371, 0.125347614, 2.47602654, 2.82916026e-005, 1, 8.2134693e-006, -1, 2.82897818e-005, 0.000221443464, 0.000221443232, -8.2197339e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00463104248, -1.29873657, 0.618975043, 2.03743493e-005, -1, -1.0544205e-005, 0.000209861464, 1.05484805e-005, -1, 1, 2.03721356e-005, 0.000209861682))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 0.5))
HitboxL = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "HitboxL", Vector3.new(1.6099906, 0.247690886, 7.05918884))
HitboxLweld = CreateWeld(m, BladePivotHandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.494061589, 0.0044631958, 2.10412979, 0.999999881, 4.65858022e-007, -0.000534694002, -4.54479334e-007, 1, 2.12809355e-005, 0.000534694002, -2.12806881e-005, 0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.184415698, 0.00437164307, 0.493959427, 0.999999881, 6.24812117e-007, -0.000536303443, -6.13090776e-007, 1, 2.18560472e-005, 0.000536303443, -2.18557161e-005, 0.999999881))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.186464787, -0.00434112549, -1.36106873, 0.999999881, 2.67052674e-005, 0.000494190957, 2.67160194e-005, -1, -2.1751046e-005, 0.000494190375, 2.17642464e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 0.866917312))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.866829276, 0.00287628174, 0.741283417, 1, 2.00866452e-005, 0.000220448826, -2.00101113e-005, 1, -0.000347168971, -0.000220455768, 0.000347164547, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690827, 0.495381564))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.555775166, 0.00381469727, -0.930810928, 0.999999881, 4.61591412e-007, -0.00053459499, -4.50185837e-007, 1, 2.13350977e-005, 0.00053459499, -2.13348521e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.371536285, 0.247690886, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.494163394, 0.0044708252, 0.246307373, 0.999999881, 4.61749835e-007, -0.000534116756, -4.5038783e-007, 1, 2.12726427e-005, 0.000534116756, -2.12723971e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 3.71536207))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.248008728, 0.00287628174, 2.6616993, 1, 2.00255927e-005, 0.000216115965, -1.99506048e-005, 1, -0.000346972025, -0.000216122891, 0.000346967689, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 2.22921681))
Partweld = CreateWeld(m, BladePivotHandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.495249629, 0.00287628174, 3.40436935, 1, 2.00258601e-005, 0.000216907603, -1.99505303e-005, 1, -0.000347275956, -0.00021691453, 0.00034727162, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
BladePivotHandleR = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Handle", Vector3.new(0.371536285, 0.247690827, 0.371536225))
BladePivotHandleRWeld = CreateWeld(m, BladePivotConnectorR, BladePivotHandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229e-005, -0.000183105469, 0.000383377075, 1, 4.25061514e-011, 4.30332108e-008, -4.25060057e-011, 1, -3.40511042e-009, -4.30332108e-008, 3.40511042e-009, 1))
CreateMesh("CylinderMesh", BladePivotHandleR, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.371536285, 0.247690886, 0.743072569))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.124484062, -0.00435638428, -1.91855621, 0.999999881, 2.6867694e-005, 0.000494156673, 2.68784479e-005, -1, -2.17555626e-005, 0.000494156091, 2.17688412e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.495381653, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0625228882, -0.00411987305, -0.989505768, 0.999999881, 2.68676977e-005, 0.000493820698, 2.68784897e-005, -1, -2.18469577e-005, 0.000493820116, 2.18602272e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.371536285, 0.247690886, 0.866917908))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.494158268, 0.00440216064, -0.249176025, 0.999999881, 5.70859129e-007, -0.000534389343, -5.59485613e-007, 1, 2.12834075e-005, 0.000534389343, -2.12831037e-005, 0.999999881))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.371536285, 0.247690886, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.124455452, -0.00396728516, -0.741697311, 0.999999881, 2.69112697e-005, 0.000493780652, 2.69219727e-005, -1, -2.16704539e-005, 0.00049378007, 2.16837434e-005, -0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 1.11460829))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.619267941, 0.00282287598, 1.73207283, 1, 2.00599734e-005, 0.000216778877, -1.99847564e-005, 1, -0.00034697575, -0.000216785818, 0.000346971414, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 3.71536207))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.247954369, 0.00284576416, 2.66174126, 1, 2.0039337e-005, 0.000216067579, -1.99643673e-005, 1, -0.000346969202, -0.000216074506, 0.000346964865, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690827, 0.247690886, 0.371536165))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.370497227, 0.00412750244, -0.868522644, 0.999999881, 4.61234549e-007, -0.00053475349, -4.4979663e-007, 1, 2.13893145e-005, 0.00053475349, -2.13890708e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Part", Vector3.new(0.247690827, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.186411619, -0.00429534912, -1.36111259, 0.999999881, 2.68690164e-005, 0.000494142703, 2.68797685e-005, -1, -2.17539327e-005, 0.000494142121, 2.17672114e-005, -0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 2.22921681))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.495298386, 0.00283050537, 3.40441322, 1, 2.00563336e-005, 0.000216859204, -1.99810238e-005, 1, -0.000347273162, -0.000216866145, 0.000347268826, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690827, 0.495381564))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.555823803, 0.00380706787, -0.930767059, 0.999999881, 5.61592515e-007, -0.000534643361, -5.50184495e-007, 1, 2.13378553e-005, 0.000534643361, -2.1337557e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.371536285, 0.247690827, 0.866917312))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.866874456, 0.00283813477, 0.7413311, 1, 2.00751838e-005, 0.00022040047, -1.99986662e-005, 1, -0.000347166177, -0.000220407412, 0.000347161753, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 2.22921777))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0607361794, 0.00466156006, 3.405056, 0.999999881, 7.20584808e-007, -0.000536469626, -7.08875632e-007, 1, 2.18266487e-005, 0.000536469626, -2.1826263e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.743072569))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00427246094, -0.431812286, 0.68022275, 2.05037977e-005, -1, -1.02888444e-005, 0.000208807629, 1.02931253e-005, -1, 1, 2.05016477e-005, 0.000208807833))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00380706787, -0.554823875, 1.30269814, 2.00914092e-005, -1, -8.68398001e-006, -1, -2.0089592e-005, -0.000209202291, 0.000209202117, 8.68818279e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.866918027, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00273895264, -0.742534637, 1.17496729, 1.40559459e-005, -1, 0.000367748493, -0.000239571091, -0.00036775184, -1, 1, 1.39678432e-005, -0.000239576257))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00273895264, -4.39690399, 0.741145372, 1.4079932e-005, -1, 0.000367649249, -0.000235361949, -0.000367652538, -1, 1, 1.39934009e-005, -0.00023536713))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.371536344, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00276184082, 0.123292923, 1.1130383, -1.44964961e-005, 1, -0.000367718079, 0.000239291345, 0.000367721514, 1, 1, 1.44085034e-005, -0.000239296671))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.866917908, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00459289551, -0.741453171, 0.804798603, 2.04676398e-005, -1, -1.05468625e-005, 0.000209790756, 1.05511563e-005, -1, 1, 2.04654261e-005, 0.000209790975))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.990763545, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00273895264, -0.186347961, 1.05111265, -1.44964961e-005, 1, -0.000367718079, 0.000239291345, 0.000367721514, 1, 1, 1.44085034e-005, -0.000239296671))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690961, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00274658203, -0.805599213, 0.865345716, -1.44964961e-005, 1, -0.000367718079, 0.000239291345, 0.000367721514, 1, 1, 1.44085034e-005, -0.000239296671))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.866918027))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00379180908, -0.740592241, 0.74537468, 2.00914092e-005, -1, -8.68398001e-006, -1, -2.0089592e-005, -0.000209202291, 0.000209202117, 8.68818279e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00417327881, 0.184127808, -0.184720516, 2.08712154e-005, -1, -1.01432033e-005, -0.000209616614, -1.0147578e-005, 1, -1, -2.0869089e-005, -0.000209616832))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690886, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00456237793, 0.555967331, 0.125293732, 6.90964362e-006, -1, -1.00589696e-005, 0.000220950635, -1.00574425e-005, 1, -1, -6.91186597e-006, 0.000220950562))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.11460888, 0.247690886))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00273895264, -1.73334122, 0.927274227, 1.40559459e-005, -1, 0.000367748493, -0.000239571091, -0.00036775184, -1, 1, 1.39678432e-005, -0.000239576257))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690961, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00275421143, -1.05328941, 0.741500616, -1.44964961e-005, 1, -0.000367718079, 0.000239291345, 0.000367721514, 1, 1, 1.44085034e-005, -0.000239296671))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00276947021, 0.74155426, 0.249756813, 1.51331151e-005, -1, 0.000367828907, 0.0002403572, 0.000367832516, 1, -1, -1.5044704e-005, 0.000240362773))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0046081543, 0.741798401, 0.122451544, -4.14838614e-005, 1, 1.087083e-005, 0.000204851502, -1.08623317e-005, 1, 1, 4.14860879e-005, -0.000204851051))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00459289551, -1.29877663, 0.619029284, 2.04676398e-005, -1, -1.05468625e-005, 0.000209790756, 1.05511563e-005, -1, 1, 2.04654261e-005, 0.000209790975))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.371536285, 0.990763307))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00397491455, -0.865891695, 0.187450409, 2.02299289e-005, -1, -9.30307033e-006, -1, -2.0228008e-005, -0.000206312543, 0.000206312354, 9.307244e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 0.371536285, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00274658203, 4.08699989, 0.741179466, -1.39444401e-005, 1, -0.000367915229, 0.000235444953, 0.000367918488, 1, 1, 1.38578152e-005, -0.00023545009))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00408172607, -0.370390654, 1.11660767, 2.01418497e-005, -1, -8.68752613e-006, -1, -2.01400344e-005, -0.000208913698, 0.000208913523, 8.69173346e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00413513184, -0.556214333, 0.868865967, 2.02096981e-005, -1, -8.7657445e-006, -1, -2.02078663e-005, -0.000208781799, 0.000208781625, 8.76996364e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.743072569))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00473022461, -0.122433186, 1.91861153, 2.83248646e-005, 1, 8.11140308e-006, -1, 2.83230693e-005, 0.000221132941, 0.000221132708, -8.11766677e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.98152661, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00274658203, -3.28100586, 0.741266489, 1.40689253e-005, -1, 0.000367658795, -0.000239351997, -0.000367662142, -1, 1, 1.39809245e-005, -0.000239357163))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.247690931, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00464630127, -2.41392517, 0.434052944, 2.04872649e-005, -1, -1.05049512e-005, 0.000209717546, 1.05092477e-005, -1, 1, 2.04850603e-005, 0.000209717764))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 0.619227111, 0.495381773))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00450897217, -4.82944489, 0.0616877079, 2.04818371e-005, -1, -1.05607187e-005, 0.000209506776, 1.05650097e-005, -1, 1, 2.04796233e-005, 0.000209506994))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00484466553, -0.0605146885, -1.48504448, -2.83101817e-005, -1, -8.7878816e-006, -1, 2.83083064e-005, 0.000213202424, -0.000213202176, 8.79391609e-006, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.247690827, 1.11460888, 0.990763545))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00277709961, -5.07744789, 0.183848381, 1.40733973e-005, -1, 0.000367335131, -0.00023923628, -0.000367338478, -1, 1, 1.39855165e-005, -0.000239241446))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.371536285, 0.371536285))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00485229492, 0.125293016, 2.4760685, 2.83293593e-005, 1, 8.21593221e-006, -1, 2.83275385e-005, 0.000221491558, 0.000221491326, -8.22220682e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep orange", "Wedge", Vector3.new(0.247690886, 0.247690886, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00469207764, -0.060479641, 1.23732567, 2.83462359e-005, 1, 7.73621741e-006, -1, 2.83445297e-005, 0.000220397109, 0.000220396891, -7.74246473e-006, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0041809082, -0.741542816, -0.122895241, 1.40420234e-005, 1, 1.04340334e-005, 0.00020849354, 1.04311048e-005, -1, -1, 1.4044198e-005, -0.000208493395))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.247690827, 2.22921777, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00463104248, -3.40472412, 0.372137308, 2.04872649e-005, -1, -1.05049512e-005, 0.000209717546, 1.05092477e-005, -1, 1, 2.04850603e-005, 0.000209717764))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.50000006, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.247690886, 0.247690827, 0.247690827))
Wedgeweld = CreateWeld(m, BladePivotHandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00401306152, -0.741533279, 0.246629477, 2.0443651e-005, -1, -9.8509272e-006, 0.000206406403, 9.85514635e-006, -1, 1, 2.04416174e-005, 0.000206406607))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.50000006))
HitboxR = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "HitboxR", Vector3.new(1.6099906, 0.247690886, 7.05918884))
HitboxRweld = CreateWeld(m, BladePivotHandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.492876291, -0.00238800049, 2.10687065, -0.999999881, -9.14376017e-007, -0.000473333028, 5.87026818e-007, -0.999999762, 0.000691582798, -0.000473333552, 0.000691582507, 0.999999642))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690886, 0.247690827, 0.99076283))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.804953337, 0.00283813477, -0.187534332, 1, 2.00751838e-005, 0.00022040047, -1.99986662e-005, 1, -0.000347166177, -0.000220407412, 0.000347161753, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.25, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.247690886, 0.247690886, 0.371536285))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.184463501, 0.00436401367, 0.494009018, 0.999999881, 6.69738483e-007, -0.000536360487, -6.58014415e-007, 1, 2.18588648e-005, 0.000536360487, -2.18585101e-005, 0.999999881))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-005, -0.185973406, 0.000246047974, -0.000321138854, -1, -1.63825807e-005, -0.999999881, 0.000321143831, -0.000304172456, 0.000304177694, 1.62848992e-005, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.371536285, 0.247690886, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.494213343, 0.00444030762, 0.246347427, 0.999999881, 5.47459308e-007, -0.00053416501, -5.36094774e-007, 1, 2.12754785e-005, 0.00053416501, -2.12751875e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.247690827, 0.247690827, 0.247690827))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.743037224, 0.00283050537, -0.806776047, 1, 2.00751838e-005, 0.00022040047, -1.99986662e-005, 1, -0.000347166177, -0.000220407412, 0.000347161753, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.25, 0.999997854))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495381773, 0.247690827, 0.866918027))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432293653, 0.00464630127, 0.741735458, 0.999999881, 7.42392047e-007, -0.00053733692, -7.30523425e-007, 1, 2.20880956e-005, 0.00053733692, -2.20876991e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.619227171, 0.247690827, 1.11460888))
Partweld = CreateWeld(m, BladePivotHandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.246534586, 0.00464630127, 1.73272514, 0.999999881, 7.24393772e-007, -0.000536463107, -7.12688404e-007, 1, 2.18196656e-005, 0.000536463107, -2.18192781e-005, 0.999999881))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))

numLerp = function(start, goal, alpha)
	return (((goal - start) * alpha) + start)
end

CFrameZero = function()
	return CFrame.new(Vector3.new())
end

CFAngles = function(Vector)
	return CFrame.Angles(math.rad(Vector.x), math.rad(Vector.y), math.rad(Vector.z))
end

AnimStat = {
	lerpSpeed = .2;
}

Joints = {
	Character.HumanoidRootPart.RootJoint;
	Character.Torso.Neck;
	Character.Torso['Right Shoulder'];
	Character.Torso['Left Shoulder'];
	Character.Torso['Right Hip'];
	Character.Torso['Left Hip'];
	FakeHandleWeld;
	BladePivotHandleRWeld;
	BladePivotHandleLWeld;
}

JointTargets = {
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
	CFrameZero();
}

setJointCFrames = function(table)
	for i = 1, #table do
		JointTargets[i] = table[i]
	end
end

setLerp = function(speed)
	AnimStat.lerpSpeed = speed
end

for i, v in pairs (Joints) do
	v.C1 = CFrameZero()
end

--[[ Credits to Fenrier for the Effect Functions. ]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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

function SlashEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.5, .5, .5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh, num) 
		for i = 0, 1, delay do
			swait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

--[[ Attack Functions ]]--

function attackone()
	attack = true
	con1 = HitboxR.Touched:connect(function(hit) 
		
		Damage(hit.Parent, math.random(20, 30), 0.2, BrickColor.new("Navy blue"), BrickColor.new("Deep orange"), "rbxassetid://199149137" ,  .7)
		con1:disconnect()
	end) 
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -55, 0));
		CFrame.new(Vector3.new(-0.016, 1.535, -0.152)) * CFAngles(Vector3.new(-6.792, 46.287, 3.09));
		CFrame.new(Vector3.new(1.897, 0.454, 0.282)) * CFAngles(Vector3.new(3.21, -25.942, 75.245));
		CFrame.new(Vector3.new(-1.695, 0.525, -0.692)) * CFAngles(Vector3.new(55.331, -44.297, -39.112));
		CFrame.new(Vector3.new(0.694, -2.013, 0.178)) * CFAngles(Vector3.new(-15.703, 22.753, 3.174));
		CFrame.new(Vector3.new(-0.729, -1.978, -0.179)) * CFAngles(Vector3.new(-3.654, 43.988, -4.411));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -180, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxR, 1, .7)
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 80, 0));
		CFrame.new(Vector3.new(0.055, 1.532, -0.139)) * CFAngles(Vector3.new(-14.049, -49.103, -7.262));
		CFrame.new(Vector3.new(1.645, 0.377, -0.714)) * CFAngles(Vector3.new(-23.518, 65.061, 99.396));
		CFrame.new(Vector3.new(-1.753, 0.235, 0.263)) * CFAngles(Vector3.new(-5.081, 26.84, -51.509));
		CFrame.new(Vector3.new(0.673, -2.02, 0.012)) * CFAngles(Vector3.new(-4.758, -45.926, -3.011));
		CFrame.new(Vector3.new(-0.758, -1.974, 0.079)) * CFAngles(Vector3.new(-3.046, -29.709, -5.439));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 10, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	con1:disconnect()
	attack = false
end

function attacktwo()
	attack = true
	setLerp(.4)
	con1 = HitboxR.Touched:connect(function(hit) 
		
		Damage(hit.Parent, math.random(20, 30), 0.2, BrickColor.new("Navy blue"), BrickColor.new("Deep orange"), "rbxassetid://199149137" ,  .7)
		con1:disconnect()
	end) 
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 80, 0));
		CFrame.new(Vector3.new(0.045, 1.538, -0.134)) * CFAngles(Vector3.new(-14.279, -47.198, -11.634));
		CFrame.new(Vector3.new(1.233, 0.062, -0.828)) * CFAngles(Vector3.new(156.018, 77.026, -95.941));
		CFrame.new(Vector3.new(-1.734, 0.437, 0.461)) * CFAngles(Vector3.new(-12.866, 40.384, -62.165));
		CFrame.new(Vector3.new(0.733, -2.017, -0.047)) * CFAngles(Vector3.new(2.611, -45.958, 2.288));
		CFrame.new(Vector3.new(-0.725, -1.977, 0.098)) * CFAngles(Vector3.new(-3.046, -29.709, -5.439));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 10, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxL, 1, 0.8)
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -80, 0));
		CFrame.new(Vector3.new(-0.004, 1.538, -0.131)) * CFAngles(Vector3.new(-13.606, 44.565, 8.582));
		CFrame.new(Vector3.new(1.647, 0.805, 0.363)) * CFAngles(Vector3.new(-1.54, -23.757, 110.54));
		CFrame.new(Vector3.new(-1.811, 0.399, -0.458)) * CFAngles(Vector3.new(18.743, -30.056, -65.737));
		CFrame.new(Vector3.new(0.526, -2.02, -0.187)) * CFAngles(Vector3.new(0.776, 6.763, 1.602));
		CFrame.new(Vector3.new(-0.87, -1.965, -0.04)) * CFAngles(Vector3.new(4.644, 46.466, -6.865));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 50, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	con1:disconnect()
	attack = false
end

function attackthree()
	attack = true
	con1 = HitboxR.Touched:connect(function(hit) 
		
		Damage(hit.Parent, math.random(20, 30), 0.2, BrickColor.new("Navy blue"), BrickColor.new("Deep orange"), "rbxassetid://199149137" ,  .7)
		con1:disconnect()
	end) 
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -40, 0));
		CFrame.new(Vector3.new(-0.037, 1.497, 0.024)) * CFAngles(Vector3.new(-3.139, 26.26, 0));
		CFrame.new(Vector3.new(1.373, 1.389, 0.289)) * CFAngles(Vector3.new(-160.264, -19.457, -5.426));
		CFrame.new(Vector3.new(-0.722, 0.382, -0.902)) * CFAngles(Vector3.new(81.391, -9.118, 43.625));
		CFrame.new(Vector3.new(0.659, -1.981, 0.222)) * CFAngles(Vector3.new(-13.126, 23.083, 7.411));
		CFrame.new(Vector3.new(-0.708, -2.001, -0.268)) * CFAngles(Vector3.new(-3.063, 30.058, -0.495));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -20, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxL, 1, 0.5)
	setLerp(.5)
	setJointCFrames({
		CFrame.new(Vector3.new(0, -.5, 0)) * CFAngles(Vector3.new(0, 0, 0));
        CFrame.new(Vector3.new(-0.014, 1.49, -0.137)) * CFAngles(Vector3.new(-12.751, -0.538, -1.417));
        CFrame.new(Vector3.new(0.925, 0.154, -0.894)) * CFAngles(Vector3.new(57.567, 6.384, -4.734));
        CFrame.new(Vector3.new(-1.77, 0.206, 0.357)) * CFAngles(Vector3.new(-45.001, 0, -24.978));
        CFrame.new(Vector3.new(0.659, -1.5, 0.392)) * CFAngles(Vector3.new(-21.248, -8.267, 6.821));
        CFrame.new(Vector3.new(-0.521, -1.5, -0.295)) * CFAngles(Vector3.new(-3.255, 7.413, -0.432));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-5, 70, 5));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	con1:disconnect()
	attack = false
end

function attackfour()
	attack = true
	con1 = HitboxR.Touched:connect(function(hit) 
		
		Damage(hit.Parent, math.random(20, 30), 0.2, BrickColor.new("Navy blue"), BrickColor.new("Deep orange"), "rbxassetid://199149137" ,  .7)
		con1:disconnect()
	end) 
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 80, 0));
        CFrame.new(Vector3.new(0.018, 1.492, -0.132)) * CFAngles(Vector3.new(-18.019, -58.875, -16.889));
        CFrame.new(Vector3.new(0.925, 0.154, -0.894)) * CFAngles(Vector3.new(158.964, 59.715, -91.349));
        CFrame.new(Vector3.new(-1.773, 0.315, 0.248)) * CFAngles(Vector3.new(-45, -0.001, -36.715));
        CFrame.new(Vector3.new(0.743, -2.019, -0.029)) * CFAngles(Vector3.new(-0.445, -47.718, 6.45));
        CFrame.new(Vector3.new(-0.947, -1.957, 0.19)) * CFAngles(Vector3.new(-42.216, -38.563, -31.271));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 30, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxR, 1, .7)
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -80, 0));
        CFrame.new(Vector3.new(-0.035, 1.492, -0.137)) * CFAngles(Vector3.new(-11.809, 38.617, 6.104));
        CFrame.new(Vector3.new(1.792, 0.699, 0.122)) * CFAngles(Vector3.new(-3.214, -14.186, 98.936));
        CFrame.new(Vector3.new(-0.828, 0.513, -0.966)) * CFAngles(Vector3.new(-172.955, -33.64, 103.96));
        CFrame.new(Vector3.new(0.827, -1.995, 0.166)) * CFAngles(Vector3.new(-7.088, 23.2, 12.015));
        CFrame.new(Vector3.new(-0.669, -1.931, -0.225)) * CFAngles(Vector3.new(-9.979, 41.79, 2.021));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 50, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(8)
	con1:disconnect()
	attack = false
end

local charge = false

local Counter = false

function SLAY()
	attack = true
	Character.Humanoid.WalkSpeed = 5
	while true do
		swait()
		if charge == true then
	setLerp(.8)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
        CFrame.new(Vector3.new(-0.012, 1.5, 0.01)) * CFAngles(Vector3.new(-0.001, 1.446, 0));
        CFrame.new(Vector3.new(1.301, 0.767, -0.661)) * CFAngles(Vector3.new(105.91, 59.1, -6.255));
        CFrame.new(Vector3.new(-1.498, 0.012, -0.513)) * CFAngles(Vector3.new(51.137, -7.204, -5.77));
        CFrame.new(Vector3.new(0.567, -2.005, 0.316)) * CFAngles(Vector3.new(-21.791, -13.545, 2.883));
        CFrame.new(Vector3.new(-0.547, -1.998, -0.177)) * CFAngles(Vector3.new(-0.605, 13.112, -1.803));
		CFrame.new(Vector3.new(0, -.2, .2)) * CFAngles(Vector3.new(50, -3, -90));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
		elseif charge == false then
			break
		end
	end
	con1 = HitboxR.Touched:connect(function(hit) 
		CreateSound("http://roblox.com/asset/?id=206082273", hit.Parent.Head, 1, 1)
		Damage(hit.Parent, math.random(20, 30), 0.2, BrickColor.new("Navy blue"), BrickColor.new("Deep orange"), "rbxassetid://199149137" ,  .7)
		for i = 1, 10 do
			BreakEffect(BrickColor.new("Really red"), hit.Parent:WaitForChild("Head").CFrame, 0.5, math.random(5, 20), 0.5)
		end
		con1:disconnect()
	end) 
	if charge == false then
	setLerp(.4)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(20, 0, 0));
CFrame.new(Vector3.new(-0.011, 1.493, -0.041)) * CFAngles(Vector3.new(-10, 0.331, 0));
CFrame.new(Vector3.new(0.579, 1.57, -0.851)) * CFAngles(Vector3.new(147.19, 9.426, -29.255));
CFrame.new(Vector3.new(-0.578, 1.542, -0.913)) * CFAngles(Vector3.new(148.824, -2.845, 30.01));
CFrame.new(Vector3.new(0.567, -2.005, .4)) * CFAngles(Vector3.new(-50, -9.094, 1.886));
CFrame.new(Vector3.new(-0.611, -1.998, .4)) * CFAngles(Vector3.new(-50, 5.328, -4.905));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-2, -8, 50));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(7)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxR, 1, .7)
	CreateSound("http://roblox.com/asset/?id=320557563", HitboxL, 1, .8)
	setLerp(.5)
	setJointCFrames({
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
CFrame.new(Vector3.new(-0.011, 1.509, -0.151)) * CFAngles(Vector3.new(-14.66, 0.331, 0));
CFrame.new(Vector3.new(0.649, 0.02, -0.851)) * CFAngles(Vector3.new(57.19, 9.426, -29.255));
CFrame.new(Vector3.new(-0.648, -0.048, -0.913)) * CFAngles(Vector3.new(58.824, -2.845, 30.01));
CFrame.new(Vector3.new(0.567, -2.005, 0.336)) * CFAngles(Vector3.new(-28.626, -9.094, 1.886));
CFrame.new(Vector3.new(-0.611, -1.998, -0.439)) * CFAngles(Vector3.new(-4.339, 10.351, -5.303));
		CFrame.new(Vector3.new(0, 0, -.1)) * CFAngles(Vector3.new(-80, 55, 80));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
		CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
	})
	swait(5)
	end
	Counter = false
	Humanoid.JumpPower = 50
	attack = false
	con1:disconnect()
	Character.Humanoid.WalkSpeed = 16
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 4
		attackthree()
	elseif attack == false and attacktype == 4 then
		attacktype = 1
		attackfour()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'r' and charge == false then
	charge = true
	SLAY()
	end
end)

mouse.KeyUp:connect(function(k)
	k = k:lower()
	if attack == true and k == 'r' and charge == true then
	charge = false
	end
end)

--[[ Credits to Fenrier for the Movement Detection and Effects table. ]]--

while true do
	swait()
	FPS = 1 / game:GetService("RunService").Heartbeat:wait()
	local FPSLerp = AnimStat.lerpSpeed / (FPS / 60)
	for i = 1, #Joints do
		Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
		Joints[i].C1 = CFrameZero()
	end
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
				setLerp(.3)
				setJointCFrames({
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(-0.007, 1.536, -0.105)) * CFAngles(Vector3.new(-12.077, -3.507, 0));
					CFrame.new(Vector3.new(1.771, 0.317, -0.117)) * CFAngles(Vector3.new(10.537, 3.207, 31.739));
					CFrame.new(Vector3.new(-1.772, 0.325, -0.278)) * CFAngles(Vector3.new(18.191, -10.425, -37.978));
					CFrame.new(Vector3.new(0.515, -1.34, -0.448)) * CFAngles(Vector3.new(-10.97, -6.145, 0.586));
					CFrame.new(Vector3.new(-0.522, -1.922, 0.127)) * CFAngles(Vector3.new(-19.103, 6.555, 0.301));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(190, 30, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
				})
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				setLerp(.3)
				setJointCFrames({
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(-0.007, 1.555, -0.309)) * CFAngles(Vector3.new(-21.347, -3.507, 0));
					CFrame.new(Vector3.new(1.692, 0.513, 0.379)) * CFAngles(Vector3.new(-4.37, -23.033, 59.089));
					CFrame.new(Vector3.new(-1.891, 0.751, -0.161)) * CFAngles(Vector3.new(18.191, -10.425, -67.978));
					CFrame.new(Vector3.new(0.53, -1.739, -0.475)) * CFAngles(Vector3.new(4.108, -5.783, 2.161));
					CFrame.new(Vector3.new(-0.562, -1.846, -0.263)) * CFAngles(Vector3.new(11.068, 5.824, -3.029));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(190, -20, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
				})
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				setLerp(.3)
				setJointCFrames({
					CFrame.new(Vector3.new(0, -.1 + .1 * math.sin(sine / 27), 0)) * CFAngles(Vector3.new(0, -40, 0));
					CFrame.new(Vector3.new(-0.038, 1.5, 0.016)) * CFAngles(Vector3.new(-2 - 3 * math.sin(sine / 26), 37.43, 0));
					CFrame.new(Vector3.new(1.5, 0, -0.161)) * CFAngles(Vector3.new(10.537, 3.207, 16.739 - 3 * math.sin(sine / 26)));
					CFrame.new(Vector3.new(-1.498, 0.012, -0.113)) * CFAngles(Vector3.new(6.417, -1.04, -9.162 + 3 * math.sin(sine / 26)));
					CFrame.new(Vector3.new(0.567, -1.9 - .1 * math.sin(sine / 27), 0.086)) * CFAngles(Vector3.new(0.242, 24.101, 3.041 + 1 * math.sin(sine / 28)));
					CFrame.new(Vector3.new(-0.651, -1.9 - .1 * math.sin(sine / 27), -0.089)) * CFAngles(Vector3.new(-0.001, 30, -3.028 - 1 * math.sin(sine / 28)));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(190, 2, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
				})
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				setLerp(.3)
				change = 2.5
				setJointCFrames({
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-10, 0 + 2 * math.sin(sine / 8), 0));
					CFrame.new(Vector3.new(0, 1.5, 0)) * CFAngles(Vector3.new(5, 0 - 2 * math.sin(sine / 8), -0.001));
					CFrame.new(Vector3.new(1.5, 0, -.22)) * CFAngles(Vector3.new(20 + 1 * math.sin(sine / 8), 0, 10 + 1 * math.sin(sine / 17)));
					CFrame.new(Vector3.new(-1.45 + .05 * math.sin(sine / 10), 0 , -.2 * math.sin(sine / 10))) * CFAngles(Vector3.new(10 * math.sin(sine / 10), 0, 1 * math.sin(sine / 10)));
					CFrame.new(Vector3.new(0.5, -1.9 - 0.4 * math.cos(sine / 8) / 2, 0 + 1.4 * math.sin(sine / 8) / 2)) * CFAngles(Vector3.new(-40 * math.sin(sine / 8), 0, 2));
					CFrame.new(Vector3.new(-0.5, -1.9 + 0.4 * math.cos(sine / 8) / 2, 0 - 1.4 * math.sin(sine / 8) / 2)) * CFAngles(Vector3.new(40 * math.sin(sine / 8), 0, -2));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(180, -2 - 1 * math.sin(sine / 8), 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 180));
				})
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