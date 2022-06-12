--[[Qaeo Armory. ]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local effect = Instance.new('Model', Character)
effect.Name = "Effects"
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
local vt = Vector3.new
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new

local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

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
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

function clerp(a, b, t)
	return a:lerp(b, t)
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
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CreateSound(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
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
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
			for i = 0,1,0.1 do
				swait()
			BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame,5, 5, 5, 1, 1, 1, .08,1)
			end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
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
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "http://www.roblox.com/asset/?id=231917784", 1)
end
end
end
end
end

--[[BUILD]]
Handlee=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","Handlee",Vector3.new(0.33921814, 2.86583948, 0.45149231))
HandleeWeld=CreateWeld(m,Character["Right Arm"],Handlee,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00396728516, 0.0971195698, -0.898794174, -1, 1.79275431e-011, 8.69278336e-014, -8.75166164e-014, -3.28425267e-005, -1, -1.79275397e-011, -1, 3.28425267e-005))
FakeHandle=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","FakeFakeHandle",Vector3.new(0.33921814, 2.86583948, 0.45149231))
FakeHandleWeld=CreateWeld(m,Handlee,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381157011, 6.75965023, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273084641, -5.46626663, 0.00212454796, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.725334167, 0.70440042, 1.80000019))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00212907791, -1.78311992, -0.000768661499, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(m,Enum.Material.Neon,0.20000000298023,1,"Gold","Hitbox",Vector3.new(0.381157011, 7.63965034, 2.29999995))
HitboxWeld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273084641, -5.90626621, -0.0378770828, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.562307775, 0.686548591, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00158071518, -0.016936779, 1.61802387, 2.84741679e-014, 2.26499105e-006, -1, -1, 6.77626358e-020, -2.84731379e-014, 0, 1, 2.26499105e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=4770583",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.129999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0508656502, 1.88350677e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346326828, -0.67087841, 7.25453424, -1, -8.74233308e-008, -3.05309413e-008, 3.0530888e-008, 5.9604281e-007, -1, 8.74233521e-008, -1, -5.9604281e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.38517022, 0.875938654, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.631489635, 0.200000003, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21565604, -0.265296936, -0.00267910957, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.521157026, 1.9596504, 0.600000024))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -2.94859934, 0.00211620331, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.357489645))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273895264, -3.37984514, -4.45166588, 1, -1.98011963e-013, 8.74230821e-008, 6.51354739e-008, 0.666998684, -0.745058894, -5.83109347e-008, 0.745058894, 0.666998684))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.531489611, 0.200000003, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21496511, -0.266952991, -0.00267910957, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268517017, -1.93165433, -0.265628099, -1, 0, 6.14517233e-019, 0, 1, -1.0430449e-007, 6.23584167e-019, -1.0430449e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.346109927))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.38360691, -4.45658588, -1, 0, 6.14517233e-019, 3.32036915e-019, 0.666996896, 0.745060563, 9.48676901e-020, 0.745060563, -0.666996896))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 3.51728535, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.76531887, 0.00210309029, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.800000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273942947, 4.73083782, -4.77182007, 1, -7.28675147e-008, 5.48554837e-008, -7.73224684e-009, -0.667000949, -0.745056868, 9.08791051e-008, 0.745056868, -0.667000949))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.452445388, 1.1920929e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.569196701, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346183777, -0.820907354, -8.92664528, 1, 1.74846832e-007, -3.05309271e-008, -3.05316163e-008, 3.93393566e-006, -1, -1.74846704e-007, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.754144311, -2.86102295e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -2.17975187, -0.875278115, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.848223805, 6.91413879e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.39309406, 9.05990601e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.800000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0027384758, 4.72967196, -4.775455, -1, -7.2867465e-008, 3.25675948e-008, 7.28674507e-008, -0.667002797, 0.745055258, -3.25676055e-008, 0.745055258, 0.667002797))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.34900522, 7.62939453e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.38488925, -0.875276089, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.4134059, 0.0100169182, -0.00267791748, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0325927734, 1.63971984, 0.0875387192, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.769999981))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0325927734, 1.64008033, 0.0875387192, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.109999999, 0.100000001))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.741539001, 0.704558611, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.78379309, 0.875929832, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346279144, -0.674492598, 7.25208664, 1, 8.74232882e-008, 1.17954158e-007, -1.17954109e-007, -5.9604281e-007, 1, 8.74233592e-008, -1, -5.9604281e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.64256525, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273895264, -6.06056881, 0.0283687115, 1, -1.98011963e-013, 8.74230821e-008, -5.52861801e-009, 0.997998238, 0.0632420629, -8.72480967e-008, -0.0632420704, 0.997998297))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.562307775, 0.686548591, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00158119202, -0.016936779, 1.63143444, 2.84741679e-014, 2.26499105e-006, -1, -1, 6.77626358e-020, -2.84731379e-014, 0, 1, 2.26499105e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=4770583",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.129999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 3.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346422195, -0.636483908, -3.86316824, -1, -4.76779206e-013, 1.17954137e-007, 1.17954137e-007, -3.93393566e-006, 1, -1.27550761e-014, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.741539001, 0.704558611, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.78351212, -0.875273943, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.91034889, 0.0100169182, -0.00268530846, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.64256525, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -6.06228876, 0.0318074226, -1, 0, 6.14517233e-019, 5.42101086e-020, 0.997998238, -0.063242048, 7.7588218e-019, -0.063242048, -0.997998238))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.352551818, 5.7220459e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268188953, -1.6106447, 1.15954053, -1, 0, 6.14517233e-019, -1.8973538e-019, 0.748117208, -0.663566589, 7.18283939e-019, -0.663566589, -0.748117268))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.800000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -2.1800313, 0.875934839, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.14153898, 0.725425005, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.125175, 0.00232696533, -0.0026819706, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381156981, 2.60965014, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.39129901, 0.402117372, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.31565273, 1.40666962e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 1.39978409, 0.600000024))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -6.08671904, 0.00209593773, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.569196701, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346231461, -0.824454308, -8.92580223, -1, -1.74847187e-007, 1.17954137e-007, 1.17954826e-007, -3.93393566e-006, 1, -1.74846718e-007, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.33921814, 2.86583948, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.91370201, 0.0100169182, -0.00268602371, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381156981, 2.60965014, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.39130378, -0.397878885, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 2.79978395, 1.07606506))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -8.18650246, 0.00182104111, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.14153898, 0.525424957, 0.599999905))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.9249959, 0.00232696533, -0.00124287605, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.44315326, 7.15255737e-007, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.55528629, 1.8119812e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.29999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 3.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346374512, -0.632480621, -3.86458349, 1, 1.33102405e-013, -3.05309271e-008, -3.05309271e-008, 3.93393566e-006, -1, -1.2995769e-014, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FMotor1=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","FMotor1",Vector3.new(0.259461552, 0.200000003, 0.443275034))
FMotor1Weld=CreateWeld(m,FakeHandle,FMotor1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00290632248, -1.92925274, 0.854816198, -1, 0, 6.14517233e-019, -2.98155597e-019, 0.709292948, -0.704913855, -1.55854062e-019, -0.704913914, -0.709293008))
RageEye=CreatePart(m,Enum.Material.Neon,0.20000000298023,1,"Really red","RageEye",Vector3.new(0.200000003, 0.712047398, 0.730000019))
RageEyeWeld=CreateWeld(m,FMotor1,RageEye,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102686882, -0.00314235687, -1.3797977, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.600527585, 0.248030141))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.19556653, -1.46339369, 1, 2.98155597e-019, 1.55854062e-019, -2.71050543e-020, 0.673291862, -0.739376843, 4.29445704e-019, 0.739376783, 0.673291922))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.436328739))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -2.00194764, 0.593103051, 1, 4.42043486e-008, -3.77835327e-008, -4.96908257e-008, 0.987060785, -0.16034624, 3.02066461e-008, 0.16034621, 0.987061024))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.200000003, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.0995965, -0.408043861, 1, 2.98155597e-019, 1.55854062e-019, -8.13151629e-020, 0.972881794, -0.231302798, -1.01643954e-019, 0.231302828, 0.972881913))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.10068381, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.501687884, 0.0726778507, 1, 2.98155597e-019, 1.55854062e-019, -3.38813179e-020, 0.375714242, -0.92673564, -1.38913403e-019, 0.92673564, 0.375714242))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.821221769, -0.253873348, 1, 4.42043486e-008, -3.77835327e-008, -5.77089665e-008, 0.834391594, -0.551172316, 7.1620474e-009, 0.551172256, 0.834391654))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.373064131, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.411952317, -1.03767943, 1, 2.98155597e-019, 1.55854062e-019, -1.35525272e-019, 0.416366398, -0.909196973, -7.14895807e-019, 0.909196913, 0.416366428))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.952061534, 0.294725686))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.778366327, -1.2443099, 1, 2.98155597e-019, 1.55854062e-019, 4.7433845e-020, 0.889373899, -0.4571805, 2.21075599e-018, 0.4571805, 0.889374018))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.17646503, 1.15327501))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.488228083, -0.354995251, 1, 2.98155597e-019, 1.55854062e-019, 2.98155597e-019, 1, -2.98023224e-008, 1.55854062e-019, -2.98023224e-008, 1.00000012))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.33763683, -0.670316458, 1, 4.42043486e-008, -3.77835327e-008, -5.79921071e-008, 0.709965825, -0.704236209, -4.30528502e-009, 0.704236209, 0.709965944))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.569196641, 1.00732076))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.17435026, 1.52401686, -1, 2.65063633e-008, -1.36255363e-008, 2.94447595e-008, 0.949382961, -0.314121157, 4.60964378e-009, -0.314121097, -0.94938302))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.02115369, -0.608006716, 1, 4.42043486e-008, -3.77835327e-008, -5.78631045e-008, 0.69173193, -0.722154438, -5.78628878e-009, 0.722154379, 0.691731989))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.268951237, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.23027921, 0.23009634, 1, 2.98155597e-019, 1.55854062e-019, -1.62630326e-019, -0.96900475, 0.247042149, -5.65818009e-019, -0.247042149, -0.969004869))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.458210409, 0.356642425))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.970567226, -0.639096141, 1, 2.98155597e-019, 1.55854062e-019, -8.48727013e-019, -0.559193611, -0.829037189, 6.77626358e-021, 0.82903707, -0.559193671))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.49607265, -0.0899274349, 1, 4.42043486e-008, -3.77835327e-008, -5.81333808e-008, 0.776223898, -0.630457461, 1.45951851e-009, 0.630457401, 0.776223958))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.81072438, -0.077657938, 1, 4.42043486e-008, -3.77835327e-008, -5.60886235e-008, 0.904719353, -0.426008195, 1.53520787e-008, 0.426008165, 0.904719412))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.28003705, 0.571619928))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.356689453, -0.728582144, 1, 2.98155597e-019, 1.55854062e-019, -8.13151629e-020, 0.99614352, 0.0877388418, 3.5914197e-019, -0.087738812, 0.996143639))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.200000003, 0.300775915))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.20823431, 0.339283526, 1, 2.98155597e-019, 1.55854062e-019, -5.42948119e-019, -0.637763381, -0.770232379, -2.71050543e-020, 0.77023232, -0.637763441))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.531523347, 0.283741891))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.72980535, -0.736321449, 1, 2.98155597e-019, 1.55854062e-019, -2.71050543e-020, 0.768888652, -0.63938278, 5.74288338e-019, 0.63938272, 0.768888712))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.428865314, 0.344118863))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.39332199, -0.706430078, 1, 2.98155597e-019, 1.55854062e-019, 5.38712954e-019, -0.932153583, -0.36206311, 2.43945489e-019, 0.36206308, -0.932153702))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.50772053, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.0781991482, -1.76508737, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.532047391, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0931437016, -1.64479613, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.868930638, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.369199753, -2.17608976, 1, 2.98155597e-019, 1.55854062e-019, 2.40557357e-019, -0.364952743, -0.931026161, 1.08420217e-019, 0.931026101, -0.364952773))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.597544312, 1.1114403))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.18396139, 0.875913739, -1, 2.65063633e-008, -1.36255363e-008, 1.81542816e-008, 0.90432322, 0.426848531, 2.36360869e-008, 0.426848441, -0.90432322))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.569196641, 1.00732076))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.27721524, 1.0512135, -1, 2.65063633e-008, -1.36255363e-008, 2.40542448e-008, 0.987739205, 0.156113565, 1.75964754e-008, 0.156113476, -0.987739205))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.691829622, 0.283741891))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.27178812, -0.411899328, 1, 2.98155597e-019, 1.55854062e-019, -1.55854062e-019, 0.885339081, -0.464946061, -3.25260652e-019, 0.464945972, 0.885339141))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.373064131, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.41612816, -0.545558929, 1, 2.98155597e-019, 1.55854062e-019, -3.86247024e-019, 0.999909282, -0.0134710371, -6.70850094e-019, 0.013471067, 0.999909341))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.436420828, 0.664406478))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.03324986, -1.60199308, 1, 2.98155597e-019, 1.55854062e-019, -5.42948119e-019, -0.637763381, -0.770232379, -2.71050543e-020, 0.77023232, -0.637763441))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FMotor2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","FMotor2",Vector3.new(0.259461552, 0.200000003, 0.200000003))
FMotor2Weld=CreateWeld(m,FakeHandle,FMotor2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00290679932, 1.82622445, 0.85617125, -1, 7.3226289e-008, 4.2126473e-008, -8.16342691e-008, -0.709288061, -0.704918742, -2.17387814e-008, -0.704918742, 0.709288061))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.200000003, 0.385855377))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0666764975, -0.403775334, 1, 8.16342691e-008, 2.17387814e-008, -7.77657192e-008, 0.990061522, -0.140635222, -3.30033849e-008, 0.140635222, 0.990061522))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.766507268, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.395892262, 0.0961110592, -1, -1.25111498e-007, 5.41066925e-008, -3.13727355e-009, -0.375708461, -0.926738024, 1.36273911e-007, -0.926737905, 0.375708461))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.904061437, -0.65101409, -1, 2.90121633e-008, 6.46912923e-008, -6.62431248e-008, -0.707533002, -0.706680298, 2.52688928e-008, -0.706680298, 0.707533002))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.10823941, 0.454104006))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.819845319, -0.674934268, 1, 0, 0, 0, 0.961301684, 0.275498211, 0, -0.275498241, 0.961301565))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.03876901, 0.674013317))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.419383645, -0.237005532, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -1.0733422, -0.981236577, -1, 2.90121633e-008, 6.46912923e-008, -7.01307243e-008, -0.538731217, -0.842477798, 1.040911e-008, -0.842477798, 0.538731217))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.641204178, -0.47642982, -1, 2.90121633e-008, 6.46912923e-008, -6.54172894e-008, -0.729366958, -0.684122741, 2.73358065e-008, -0.684122682, 0.729366958))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.590918243, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.30236399, -0.911493659, 1, 0, 0, 0, 0.653949142, 0.75653857, 8.8817842e-016, -0.75653857, 0.653949082))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.843790293))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.802678585, 0.250967503))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.172569156, -0.619995952, -1, -1.25111498e-007, 5.41066925e-008, 1.29376076e-007, -0.996143878, 0.0877346098, 4.29214495e-008, 0.0877345502, 0.996143937))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.06645501, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.401060343, 1.55679393, 1, 0, 0, 0, -0.217244983, -0.976117134, 3.55271368e-015, 0.976117134, -0.217244983))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -1.53315496, 0.809414387, -1, 2.90121633e-008, 6.46912923e-008, -2.03953761e-008, -0.991589129, 0.12942645, 6.7902107e-008, 0.129426509, 0.991589129))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.200000003, 0.42394793))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.22161603, -0.936436653, 1, 8.16342691e-008, 2.17387814e-008, 5.91988112e-008, -0.860731065, 0.509060085, 6.02679933e-008, -0.509060085, -0.860731065))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.810738146, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.598063886, 0.576097727))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.12378502, -0.482477665, 1, 0, 0, 0, 0.94315958, 0.332340449, 0, -0.332340449, 0.94315958))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
--[[GAUNTLETBUILD]]--

Handle=CreatePart(m,Enum.Material.Plastic,0,1,"Really black","Handle",Vector3.new(1, 2, 1))
HandleWeld=CreateWeld(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.400000006, 0.200000003, 0.391803533))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00170910358, 0.426063061, 0.250946999, 0, 0, 1, 1, 0, 0, 0, 1, 0))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.258658201, 0.200000003, 0.573440075))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203461885, -0.48864007, -0.0044709444, 4.37113883e-008, -1, -0, -1, -4.37113883e-008, 0, 0, 0, -1))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.409600139, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.440942347))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.426593065, -0.546391964, 0.918878555, 0.999990702, 2.98012779e-008, 8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, -2.98012068e-008, 0.999992967, -4.37075443e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.01365781, -0.767811179, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.40588632e-009, -0.998758912, 0.0496952161, 8.73061055e-008, -0.0496964529, -0.998757422))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.924366355, 0.381782174))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.892453015, -0.807372808, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.4616417e-008, -0.251781702, 0.967776597, 2.19505409e-008, -0.967778385, -0.251782417))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.24958688, 0.652564883))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.63158226, -0.7832129, 0.999991059, -6.17115942e-011, 8.74170212e-008, -3.07645145e-008, -0.936270058, 0.351264119, 8.18248793e-008, -0.351265728, -0.936268985))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.574241579, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.39495039, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.950384974, -0.247115135, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.26662769e-007, 0.876098931, -0.48211813, -7.81493696e-008, 0.482119918, 0.876098156))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.698982835))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 1.05713069, -0.217769146, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.21776424e-007, 0.903293252, -0.429008901, -8.55644799e-008, 0.42901063, 0.903292358))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.920574069, 0.886762559))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428672791, -0.811039448, -0.47626245, -1, 1.39469776e-007, -1.04093033e-007, -1.42407572e-007, -0.999585867, 0.0287777316, -1.00036317e-007, 0.0287777316, 0.999585927))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.354741037, 0.839350581))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.39225781, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.287223339, -0.408565998, 0.999991059, -6.17115942e-011, 8.74170212e-008, -3.4356205e-008, -0.919804037, 0.392362297, 8.03829465e-008, -0.392363966, -0.919803143))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.309666455, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.0923166871, -1.41141391, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.02367452e-008, -0.397548497, 0.917573273, 3.46962281e-008, -0.91757524, -0.397548974))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673029, -1.32678056, 0.36812675, 1, -5.80489399e-008, 8.30497981e-008, 1.15070975e-009, -0.813071191, -0.582164407, 1.01319415e-007, 0.582164347, -0.813071132))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.671622157))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -1.07605505, -0.455021143, 1, -5.80489399e-008, 8.30497981e-008, -5.79590669e-008, -0.999999404, -0.0010817619, 8.31125533e-008, 0.00108176202, -0.999999404))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.419264466, 0.411000073))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.751726627, 0.142127156, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.15858227e-008, -0.709198594, -0.705000579, 6.20399021e-008, 0.705000877, -0.709196687))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.23677887))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.529774725, -1.18722296, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.70623467e-008, -0.0907128751, 0.995869935, 7.86855026e-009, -0.995871544, -0.090713881))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.671763837, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -1.28243613, -0.0307444334, 1, -5.80489399e-008, 8.30497981e-008, -2.68000075e-008, -0.941967368, -0.335704595, 9.77175034e-008, 0.335704595, -0.941967428))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428672791, -1.15294123, 0.528338909, -1, 1.39469776e-007, -1.04093033e-007, -1.67689322e-007, -0.612187386, 0.790712833, 4.65560994e-008, 0.790712833, 0.612187386))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.354741037, 0.839350581))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.341382861, -1.14824247, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.97993611e-008, -0.822267175, 0.569090307, 7.1845605e-008, -0.569092155, -0.822266579))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.78151232, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.402444124, -1.10538316, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.97993611e-008, -0.822267175, 0.569090307, 7.1845605e-008, -0.569092155, -0.822266579))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.818957686, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.446254849, -0.856919527, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.58718039e-008, -0.187891513, 0.982182443, 1.6364524e-008, -0.982184172, -0.187892362))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.70530355, 0.548964381))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673029, -0.922772884, -0.184746742, 1, -5.80489399e-008, 8.30497981e-008, -4.0516845e-008, -0.980331898, -0.197356105, 9.2872682e-008, 0.19735612, -0.980331957))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.23243713, -0.425246477, 0.999991059, -6.17115942e-011, 8.74170212e-008, 7.68518671e-009, -0.996060371, -0.0886164978, 8.70787176e-008, 0.0886154771, -0.996058702))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.818151057, 0.436751723))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 1.06461573, -0.0355733633, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.43504291e-008, 0.861382246, 0.507946849, -7.53313003e-008, -0.50794661, 0.861380279))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.413985074, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.246551782, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.08962464, -0.177579045, 0.999991059, -6.17115942e-011, 8.74170212e-008, 2.56790003e-008, -0.955669105, -0.294424921, 8.35604794e-008, 0.294424295, -0.955667257))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.436751723))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.08597493, 0.0664023161, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.07444974e-008, -0.718631387, -0.695383072, 6.28639185e-008, 0.69538337, -0.718629539))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.574241579, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 1.01148272, -0.690451503, 0.999991059, -7.32925045e-008, 1.2953376e-007, 6.32696171e-008, 0.997121453, 0.0757488385, -1.34713517e-007, -0.0757478103, 0.997119784))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.909575045, 0.259762019))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.273165107, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428760052, -0.259484291, -0.488063812, -0.999991059, 2.26776606e-008, -2.97083602e-009, -1.96902548e-008, -0.91970557, -0.392595381, -1.16357342e-008, -0.392594934, 0.919703662))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.286055744, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428760052, -0.678235769, 0.00904345512, -0.999991059, 2.26776606e-008, -2.97083602e-009, -1.6893523e-008, -0.64479959, 0.764342666, 1.54177044e-008, 0.764344573, 0.644799471))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.386303514))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.339292318, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.914015293, -0.468653083, 0.999991059, -6.17115942e-011, 8.74170212e-008, 2.64092641e-008, -0.953055978, -0.302776843, 8.33325657e-008, 0.302776217, -0.95305407))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.453658611))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.235749483, -0.495378733, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.70623467e-008, -0.0907128751, 0.995869935, 7.86855026e-009, -0.995871544, -0.090713881))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.462971479))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.937824488, -0.711343527, 0.999991059, -6.17115942e-011, 8.74170212e-008, -7.98698352e-008, 0.405826926, 0.913942933, -3.5532743e-008, -0.913943946, 0.405825227))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.660133958, 0.529687405))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.456175089, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.679037333, 0.0586334467, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.67916495e-008, -0.644607663, -0.764506102, 5.63971838e-008, 0.764506519, -0.644605756))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.879870117))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.380059451, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.451583624, 1.13617229, 0.999991059, -7.32925045e-008, 1.2953376e-007, 8.14007706e-009, -0.842098892, -0.53931272, 1.48608592e-007, 0.539312541, -0.842097044))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -0.957550764, -0.448067904, 1, -5.80489399e-008, 8.30497981e-008, -6.00646786e-008, -0.999700367, 0.0244808961, 8.16038153e-008, -0.0244808923, -0.999700308))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.37245035, -0.0176885724, 0.999991059, -6.17115942e-011, 8.74170212e-008, 4.55656846e-008, -0.85303545, -0.521842599, 7.46025108e-008, 0.52184236, -0.853033483))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.579863906, 0.118592024, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.97600626e-008, 0.603199244, -0.797581792, -5.26811164e-008, 0.797583699, 0.603199184))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.593930602))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.370192826, 0.240202487))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.783998132, 0.0905356407, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.43291103e-007, 0.709372401, -0.70482415, -4.02297786e-008, 0.704826057, 0.709372044))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Plastic,0,1,"Medium stone grey","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.422935009, 0.907258272, -0.625602961, -1, 0, 0, 0, 1, 8.19563866e-008, 0, 8.19563866e-008, -1))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.489952087, 0.31979394, -0.105430007, 1, 0, 0, 0, 1, 1.04308128e-007, -0, -1.04308128e-007, 1))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.409600139, 0.163840041, 0.122880042))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.489821911, 0.17368865, -0.259762168, 1, 0, 0, 0, 0.748115599, 0.663568437, -0, -0.663568437, 0.748115599))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.409600139, 0.163840041, 0.327680081))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.217698172, 0.200000003, 0.573440075))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203764915, -0.48931098, -0.0044709444, 4.37113883e-008, -1, -0, -1, -4.37113883e-008, 0, 0, 0, -1))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.409600139, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.539472759))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.406566143, -0.294134498, -0.0367438793, 0.999990702, -1.17223436e-007, -1.5063506e-012, 1.49213975e-012, -4.37074696e-008, 0.999994516, -1.1722318e-007, -0.999992967, -4.37075407e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.739472747))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.424662828, -0.374135852, 0.0636603832, 0.999990702, -1.17223436e-007, -1.5063506e-012, 1.49213975e-012, -4.37074696e-008, 0.999994516, -1.1722318e-007, -0.999992967, -4.37075407e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.260531932, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.390960097, 0.851227045, -0.42659688, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(1.04097319, 0.400000006, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.496125937, -0.426604986, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.313941956, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.142029047, 0.416924, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.899999976))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04089689, 0.321497977, 0.371126413))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374078751, 0.852937937, -0.1445539, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.475822091, 0.471101999))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.535552979, 0.272330999, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.03959084, 0.311371684, 0.440942347))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000395894051, 0.14190793, -0.10928297, 2.98003897e-008, -8.74208013e-008, -0.999994516, -4.37062404e-008, 0.999992967, -8.74209434e-008, 0.999990702, 4.37063434e-008, 2.97998355e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.400000006, 0.417200327))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.497238874, -0.167351007, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000048, 0.200000048, 0.200000048))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00710308552, 0.479765892, 0.533432007, -1.49011612e-007, 0, -1, 0, 1, 0, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=14028428",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.00999999978))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.240531921, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00555408001, 0.851255894, -0.426604986, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.260531902, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389816999, 0.849853992, -0.426613092, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.539472759))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406925201, -0.294096351, -0.0372304916, -0.999990702, -1.17223436e-007, -8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, 1.17223173e-007, -0.999992967, 4.37075514e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.739472747))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.424593925, -0.374097943, 0.0631697178, -0.999990702, -1.17223436e-007, -8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, 1.17223173e-007, -0.999992967, 4.37075514e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(0.851227105, 0.242580935, 0.479655445))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0952759981, 0.894896984, 0.269463062, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5, 0.519942999, 0.0784150362, 0, 1, 0, 1, 0, 0, 0, 0, -1))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.769999981))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Really red","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5, 0.520308971, 0.0784150362, 0, 1, 0, 1, 0, 0, 0, 0, -1))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.109999999, 0.100000001))

--[[Effect Functions]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
local prt=CreatePart(effect,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,effect,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end


function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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

function ExplosionEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://15170610", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Block1",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
function OpenHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://73031750", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
function CloseHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://90718752", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
                                                             --[[ V = The CFraming of the part]]--
--[[EXAMPLE: ExampleWeld.C0 = clerp(ExampleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3) ]]--
                                                                                                  --[[ ^ = The Rotations of the part]]--

--[[Attack Function]]--

function attackone()
	attack = true
			local con = Torso.Touched:connect(function(hit)
		Damagefunc(Torso, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
						RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(100)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,1)
	RingEffect(BrickColor.new("White"),RootPart.CFrame,2,2,1,1,1,0,0.08)
	Torso.Velocity=RootPart.CFrame.lookVector*75
		for i = 0, 1, 0.1 do
			swait()

						RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-60)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(100)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
end
function attacktwo()
	attack = true
	Humanoid.Jump=true
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,.9)
			local con = RightLeg.Touched:connect(function(hit)
		Damagefunc(RightLeg, hit, 15, 25, math.random(10,15), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5,0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -1) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	Torso.Velocity=RootPart.CFrame.lookVector*50
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,1)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5,0) * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -1) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), -1) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-100)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
	end
function attackthree()
	attack = true
			local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
CreateSound("http://www.roblox.com/asset/?id=189505649",Torso,1,1)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(10), math.rad(-10), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(50)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.5,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-35)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(130)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=231917758",Torso,1,1)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.5,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-75)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(80)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
end


function attackfour()
	attack = true
			local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 25, 35, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	SphereEffect(BrickColor.new("White"),FMotor1.CFrame,1,1,1,1,1,1,.07)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.25) * angles(math.rad(70), math.rad(-70), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-70), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.4,  0.5, -0.75) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -.2) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), -.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end
				coroutine.resume(coroutine.create(function()
		hit=nil
		for i=1,1 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
end
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
local ref=CreatePart(effect,"SmoothPlastic",0,0,BrickColor.new("Black"),"Effect",Vector3.new())--part(3,effect,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
Col=hit.BrickColor
local groundpart=CreatePart(effect,hit.Material,0,0,Col,"Ground",Vector3.new(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
CreateSound("http://roblox.com/asset/?id=183763512",ref,.6,1.2) 
WaveEffect(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,9,9,13,math.random(10,20),"Knockdown")
end
local numb=-8
local basecf=RootPart.CFrame
for i=1,4 do
	swait()
local cf2=basecf*cf(0,0,numb)
local ref=CreatePart(effect,"SmoothPlastic",0,1,Col,"Effect",Vector3.new())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+Vector3.new(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=CreatePart(effect,"SmoothPlastic",0,1,Col,"Effect",Vector3.new())
ref2.CFrame=cf(pos)
ref2.Anchored=true
SphereEffect(Col,ref2.CFrame,5,5,5,2,math.random(1,5),2,0.02)
WaveEffect(Col,ref2.CFrame,2,2,2,.5,.5,.5,0.05)
MagniDamage(ref2,20,20,30,math.random(5,20),"Normal",RootPart)
CreateSound("http://www.roblox.com/asset/?id=183763512",ref2,1,1) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
numb=numb-2
end
end))
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.75, 0.5, -0.75) * angles(math.rad(180), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(5)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end		

		for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -0.75) * angles(math.rad(180), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end

			for i = 0, 1, 0.5 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-15), math.rad(15), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -0.75) * angles(math.rad(200), math.rad(0), math.rad(-70)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-15)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(15)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			end
			con:disconnect()
	attack = false
end

--[[Stof]]--
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,100,Character) 
local las=Instance.new("Part",Character) 
las.Material = "SmoothPlastic"
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
rootlook=RootPart.CFrame
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Black") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
	RingEffect(BrickColor.new("Black"),cf(pos)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1,1,1,.07)
ExplosionEffect(BrickColor.new("Black"),cf(pos),1,1,1,1,1,1,.07)
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(hit.Parent.Torso,8,10,10,15,"Knockdown")
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]] 
end 
end 

--[[Skilz]]--
local ded=false
function DeadRain()
	attack = true
coroutine.resume(coroutine.create(function()
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
		local ref=CreatePart(effect,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",Vector3.new())
ref.CFrame=RootPart.CFrame*cf(0,0,0)
ref.Anchored=true
ded=true
while ded do
	
	for i =0,1,.05 do
		swait()
		BlockEffect(BrickColor.new("Black"),LeftArm.CFrame*cf(0,-1,0),5,5,5,.5,.5,.5,0.08,1)	
d=math.random(-5,5)
f=math.random(0,5)
CreateSound("http://www.roblox.com/asset/?id=301031757",ref,0.5,1)
	ref.CFrame=RootPart.CFrame*cf(d,f,-5)
	Laser(ref,10)
	RingEffect(BrickColor.new("Black"),RootPart.CFrame*cf(d,f,-5)*angles(math.rad(0),0,0),1,1,1,.5,.5,0,0.08)
	--CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(d,f,-10)*angles(math.rad(90),math.rad(90),0),20,20,20,1,1,1,0.09)
	end
	end		
--	CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-10)*angles(math.rad(-90),math.rad(0),0),-50,-50,-50,-.5,-.5,-.5,0.08)

--	SphereEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-10),50,50,50,5,5,5,0.03,1)	
end))
end

function DarkGrab()
	attack = true
		local ref=CreatePart(effect,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",Vector3.new())
	RingEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,0,-5),35,35,1,5,5,0,0.05)
		CreateSound("http://www.roblox.com/asset/?id=231917667",ref,1,1)
	coroutine.resume(coroutine.create(function()
	for i =-5,-50,-2.5 do
		swait()
		ref.CFrame=RootPart.CFrame*cf(0,0,i)
		MagniDamage(ref,15,5,10,10,"Knockdown")
	OpenHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(2.5,5,i)*angles(math.rad(90),math.rad(90),0),50,50,50,-1,-1,-1,0.09)
	CylinderEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,i)*angles(1.57,0,0),50,50,50,-.5,1,-0.5,0.05)
	BlockEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,i),50,50,50,1,1,1,0.05,1)	
	end		
	CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60)*angles(math.rad(-90),math.rad(0),0),-50,-50,-50,-.5,-.5,-.5,0.08)
	BlockEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60),50,50,50,5,5,5,0.03,1)	
	ref.CFrame=RootPart.CFrame*cf(0,0,-60)
	CreateSound("http://www.roblox.com/asset/?id=231917784",ref,1,1)
	MagniDamage(ref,50,15,30,30,"Knockdown")
	SphereEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60),50,50,50,5,5,5,0.03,1)		
	end))
ref.Anchored=true
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	attack=false
	end
	function StopRain()
		ded=false
		attack=false
		end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype =2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype =3
		attacktwo()
		elseif attack == false and attacktype == 3 then
		attacktype =4
		attackthree()
		elseif attack == false and attacktype == 4 then
		attacktype =1
		attackfour()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
	DarkGrab()
		elseif attack == false and k == 'x' then
	DeadRain()
	end
end)
mouse.KeyUp:connect(function(k)
	k = k:lower()
if attack == true and k == 'x' then
	ded=false
	StopRain()
	end
end)


--[[Movement Detection]]--

while true do
	swait()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(-10), math.rad(10), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(50)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5+.15*math.cos(sine/9), -0.65) * angles(math.rad(0), math.rad(-160), math.rad(-70)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-45)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(130)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
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