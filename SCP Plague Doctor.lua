targettedOn = false
function onTouched(hit)
hole:Play()
hit.CanCollide=false
wait(.5)
hit.CanCollide = true
debounce = true

end

	dft = {} 

function GetPlayers()
local c = game.Players:GetChildren() 
for i = 1, #c do 
table.insert(dft, c[i].Name) 
end 
end

function Randomize()
GetPlayers()
local d = math.random(1, #dft)
	s = d 
	
	
	
	end

playertarg = game.Players.LocalPlayer
chara = playertarg.Character
Mouse = playertarg:GetMouse()
targetted = nil

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end



crosshair = Instance.new("BillboardGui",chara)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://160506713"
imgl.BackgroundTransparency = 1
imgl.ImageTransparency = .7
imgl.ImageColor3 = Color3.new(0,0,0)

CV="Maroon"
	Player = game.Players.LocalPlayer
	Character = Player.Character
	local txt = Instance.new("BillboardGui", Character)
	txt.Adornee = Character .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-9, 8, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Bodoni"
	text.TextStrokeColor3 = Color3.new(255,255,255)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=Player.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=Character.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(0,0,0)
	v.Shape="Block"
	text.Text = "SCP - 049"
	-----------------------------------------

function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",chara,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end

TargetSnd = LoadSnd(167191994,false,2.2,.8)


function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person

for i = 0,30,10 do
wait(.05)
crosshair.Size = UDim2.new(40-i,0,40-i,0)
end
end
end)
dd()
end



function LockOn()
if Mouse.Target.Parent ~= chara and Mouse.Target.Parent.Parent ~= chara and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
TargetSnd:Play()
else end
end









ZomWait = false
ZomWait2 = false
ZomSyle = false


Target1 =script.Parent.Name
Target2 = game.Players[Target1]
Target2.Character.archivable = true
clone4 = Target2.Character:Clone()
			clone4.Parent = game.Lighting			





clone4.Torso["Left Shoulder"].DesiredAngle = -1.5
clone4.Torso["Right Shoulder"].DesiredAngle = 1.5









Glow1 = Color3.new(.5,0,0)
Glow2 = Color3.new(0,0,0)

GlowParticle = Instance.new("ParticleEmitter",clone4.Torso)
GlowParticle.LightEmission = 0
GlowParticle.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle.Size = NumberSequence.new(2,0)
GlowParticle.Texture = "http://www.roblox.com/asset/?id=118641183"
GlowParticle.Transparency = NumberSequence.new(.3,.8)
GlowParticle.LockedToPart = false
GlowParticle.Lifetime = NumberRange.new(.5,.6)
GlowParticle.Rate= 100
GlowParticle.Speed =NumberRange.new(6)
GlowParticle.VelocitySpread = 360



for i,v in pairs(clone4:GetChildren()) do


	                  if v:IsA("ShirtGraphic") then
                    v:Destroy()
					end

                  if v:IsA("Pants") then
                    v:Destroy()
                  end
                  if v:IsA("Shirt") then
                    v:Destroy()
                  end
                  if v:IsA("Hat") then
                    v:Destroy()

end
                  if v:IsA("Accessory") then
                    v:Destroy()
end

end

clone4["Body Colors"]:Destroy()
clone4.Head.face.Texture = "rbxassetid://97880283"

wait()
Zombie = clone4:Clone()

wait()

clone4:Destroy()

wait()


Player=game:GetService("Players").LocalPlayer
Character=Player.Character 


-------------------------------------------------------
local Orbd = Instance.new("Part", Character)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("Really black")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.3, 0.3, 0.3)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = Character.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.26, -0.24, 0.55)

--------------------------------------------------------
local Orbvc = Instance.new("Part", Character)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
Orbvc.BrickColor = BrickColor.new("Really black")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.3, 0.3, 0.3)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = Character.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.26, -0.24, 0.55)
---------------------------------------------------------
local Mask = Instance.new("Part", Character)
Mask.Name = "Mask"
Mask.CanCollide = false
Mask.BrickColor = BrickColor.new("Mid gray")
Mask.Transparency = 0
Mask.Material = "Plastic"
Mask.Size = Vector3.new(0.1, 0.1, 0.1)
Mask.TopSurface = Enum.SurfaceType.Smooth
Mask.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Mask)
Weld.Part0 = Character.Head
Weld.Part1 = Mask
Weld.C1 = CFrame.new(0, -0.1, 0.8)

local M1 = Instance.new("SpecialMesh")
M1.Parent = Mask
M1.MeshId = "http://www.roblox.com/asset/?id=62679079"
M1.Scale = Vector3.new( 1, 1, 2)
----------------------------------------------------------
local Hood = Instance.new("Part", Character)
Hood.Name = "Hood"
Hood.CanCollide = false
Hood.BrickColor = BrickColor.new("Really black")
Hood.Transparency = 0
Hood.Material = "Plastic"
Hood.Size = Vector3.new(0.1, 0.1, 0.1)
Hood.TopSurface = Enum.SurfaceType.Smooth
Hood.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Hood)
Weld.Part0 = Character.Head
Weld.Part1 = Hood
Weld.C1 = CFrame.new(0, -0.2, 0)

local M2 = Instance.new("SpecialMesh")
M2.Parent = Hood
M2.MeshId = "http://www.roblox.com/asset/?id=83499032"
M2.Scale = Vector3.new( 1, 1.2, 1.1)
------------------------------------------------------

p = game.Players.LocalPlayer
char049 = p.Character

char049.Shirt:Remove()
for i,v in pairs(char049:GetChildren()) do if v:IsA("Pants") then v:Remove() end end
wait()shirt = Instance.new("Shirt", char049)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char049)
pants.Name = "Pants"

char049.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=648758131"
char049.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=472675863"
-------------------------------------------------
---- Orbd,Orbvc,Mask,Hood

--[[NIGHTOWLACE_WEAPONRY]]--
maincolor = game.Players.LocalPlayer.Character.Torso.BrickColor.Name
secondcolor = "Really black"

wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
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

function clerp(a, b, t) 
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	} 
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

function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.RenderStepped:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.RenderStepped:wait(0)
		end
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
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
		wait() 
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

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("Hitz")
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
						wait(1)
						for i = 0, 1, .1 do
							wait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = 'Hitz',
				}
				if HSound ~= nil and HPitch ~= nil then
					CreateSound(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end


function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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


	

	for i = 0, 1, 0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
	attack = false



game:GetService'RunService'.Stepped:connect(function()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(30)), .1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-30)), .1)
					RH.C0 = clerp(RH.C0, cn(1, -.9, -.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.7, -.5) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .1)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), .1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), .1)
					RH.C0 = clerp(RH.C0, cn(1, -1, -.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.8, -.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(5)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(-5)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5 - 3 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(4)), .2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
					RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(50 * math.cos(sine / 4))), .3)
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
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
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
end)


local lp = game.Players.LocalPlayer
local chr = lp.Character
local mouseV2 = lp:GetMouse()
local euler = CFrame.fromEulerAnglesXYZ
local rad = math.rad
local trso = chr.Torso

























hum = chr.Humanoid



function CreateMesh(parent, id, x, y, z, texture)
local m=Instance.new("SpecialMesh", parent)
m.MeshType = "FileMesh"
m.MeshId="http://www.roblox.com/asset/?id="..id
if texture ~= nil then
m.TextureId="http://www.roblox.com/asset/?id="..texture
end
m.Scale = Vector3.new(x,y,z)
end



Hat=function()
hat = Instance.new("Part", chr)
hat.Transparency = 1
hat.Name = "Top hat"
hat.Locked = true
hat.BrickColor = BrickColor.new("Really black")
hat.CanCollide=true
hat.Size=Vector3.new(1,1,1)
hatw = Instance.new("Weld",hat)
hatw.Part0=hat
hatw.Part1=chr['Head']
hatw.C0=CFrame.new(0,-1.7,0)
hatw.C1=euler(rad(0),rad(0),rad(0))
end

Hat()



function Name(msg)
        if hat.Parent then
        pcall(function()
        local Gui = Instance.new('BillboardGui', hat)
        Gui.ExtentsOffset = Vector3.new(0,1.5,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
        Txt.FontSize = 'Size24'
        Txt.Text = msg
        Txt.TextColor3 = BrickColor.new("Really black").Color
        Txt.TextStrokeColor3 = Color3.new(1,0,0)
        Txt.TextStrokeTransparency = 0
        Txt.TextWrapped = true
        Txt.TextScaled = false
        end)
        else
        end
end

function Chat(msg) -- Credit to jillmiles1, kthxbye
        if hat.Parent then
        pcall(function()
		if hat:FindFirstChild("Fazbear Chat Gui") then
		hat['Fazbear Chat Gui']:destroy()
		end
        local Gui = Instance.new('BillboardGui', hat)
		Gui.Name = "Fazbear Chat Gui"
        Gui.ExtentsOffset = Vector3.new(0,3,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
		Txt.Name = "ChatGui"
        Txt.FontSize = 'Size24'
        Txt.Text = ''
        Txt.TextColor3 = BrickColor.new("Really black").Color
        Txt.TextStrokeColor3 = Color3.new(1,1,1)
        Txt.TextStrokeTransparency = .5
        Txt.TextWrapped = true
        Txt.TextScaled = false

        delay(wait(),function()
                for v = 1, #msg do
                        Txt.Text=string.sub(msg,1,v)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.009)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.009)
  Gui.ExtentsOffset = Vector3.new(0,3,0)   
                end;
                
          

           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)
           Gui.ExtentsOffset = Vector3.new(.1,2.9,0)
wait(.03)
        Gui.ExtentsOffset = Vector3.new(0,3,-0.1)                    
 wait(.03)
  Gui.ExtentsOffset = Vector3.new(0,3,0)  
wait(.03)

 Txt.TextStrokeTransparency = .6
wait()
 Txt.TextStrokeTransparency = .7
wait()
 Txt.TextStrokeTransparency = .8
wait()
 Txt.TextStrokeTransparency = .9
wait()
 Txt.TextStrokeTransparency = 1
wait()

      for v = 1, #Txt.Text do
                        Txt.Text=string.sub(msg,-1,v)


             




   end;
                Gui:remove()
        end)
        end)
        else
        end
end




function PlaySound(id, pitch, looped)
        epicsound = Instance.new("Sound")
        epicsound.Name = "FazbearSound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = 2
     epicsound.Pitch = pitch
	 if looped == nil then
	 looped = true
	 else
	 looped = looped
	 end
	 wait()
  epicsound.Looped = looped
  epicsound.Parent = workspace
  if epicsound.SoundId=="rbxassetid://tt" then -- TELL ME, TELL ME, WHERE DA FREAKS AT!
      epicsound.SoundId="rbxassetid://181158033"
  elseif epicsound.SoundId=="rbxassetid://fabulous" then -- FA-FA-FABULOUS!
      epicsound.SoundId="rbxassetid://191819419"
     elseif epicsound.SoundId=="rbxassetid://ufdb" then -- ultimate final death battle(fairy tail XD)
         epicsound.SoundId="rbxassetid://153085393"
        elseif epicsound.SoundId=="rbxassetid://nnm" then
           epicsound.SoundId="rbxassetid://210189234" 
       elseif epicsound.SoundId=="rbxassetid://tun" then -- tunak tunak tun
           epicsound.SoundId="rbxassetid://162682002"
       elseif epicsound.SoundId=="rbxassetid://zelda" then
           epicsound.SoundId="rbxassetid://158215156"
       elseif epicsound.SoundId=="rbxassetid://cc" then
           epicsound.SoundId="rbxassetid://177080835"
     end
  es=epicsound:clone()
  es:Stop()
  es.Parent = chr
  wait()
  es:Play()
end



 
lp.Chatted:connect(function(msg)
        Chat(msg)
end)

goldie=true


function StopMusic()
	if chr:FindFirstChild("FazbearSound") then
		if chr.FazbearSound.ClassName == "Sound" then
			chr.FazbearSound:Stop()
			wait()
			chr.FazbearSound:Destroy()
		end
	end
end

Name("")


mouseV2.KeyDown:connect(function(key)
if key == "g" then
if goldie==false then
goldie=true

elseif goldie==true then
goldie=false

end
elseif key == "j" then -- Plays a song
StopMusic()
PlaySound(150456585, 1.1, true)
elseif key == "k" then -- Plays a song
StopMusic()
PlaySound(260170583, 1, true)
Chat("Heh...")
elseif key == "p" then -- Stops any sound(s) playing from your torso
StopMusic()
Chat("All sounds stopped!")
end
end)



hum.Died:connect(function()
	es.Pitch = 10
	wait()
	es:Pause()
	es:Stop()
	es.Name = "Ded"
	wait()
	es:Destroy()
end)






p = (game.Players.LocalPlayer.Name)
char = game.Players.LocalPlayer.Character


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

for i,v in pairs(char:GetChildren()) do
   if v.ClassName == 'Accessory' then
       v:Destroy()
   end
end

ScarySound1 = Instance.new("Sound")
ScarySound1.Parent = char.Torso
ScarySound1.SoundId = "rbxassetid://161964276"
ScarySound1.Volume = .5

ScarySound2 = Instance.new("Sound")
ScarySound2.Parent = char.Torso
ScarySound2.SoundId = "rbxassetid://669623416"
ScarySound2.Volume = 2
ScarySound2.Looped = true

ScarySound3 = Instance.new("Sound")
ScarySound3.Parent = char.Torso
ScarySound3.SoundId = "rbxassetid://483810543"
ScarySound3.Volume = 0.3
ScarySound3.Looped = true

ScarySound4 = Instance.new("Sound")
ScarySound4.Parent = char.Torso
ScarySound4.SoundId = "rbxassetid://177113856"
ScarySound4.Volume = 2
ScarySound4.Looped = false

Punch = Instance.new("Sound")
Punch.Parent = char.Torso
Punch.SoundId = "rbxassetid://146938349"
Punch.Volume = 1.5
Punch.Looped = false
Punch.Pitch = 0.8

hole = Instance.new("Sound")
hole.Parent = char.Torso
hole.SoundId = "rbxassetid://224339308"
hole.Volume = .3


game.Players.LocalPlayer.Character.Sound:Destroy()

function Normal()
	ScarySound3:Play()
	char.Humanoid.WalkSpeed = 18
char.Head.face.Texture = "rbxassetid://0"
char["Left Leg"].Transparency = 0
char["Head"].Transparency = 0
char["Right Leg"].Transparency = 0
char["Torso"].Transparency = 0
char["Left Arm"].Transparency = 0
char["Right Arm"].Transparency = 0
end

function GoInvisible()
	ScarySound3:Stop()
ScarySound1:Stop()
	char.Humanoid.WalkSpeed = 120
	char.Head.face.Transparency = 1
char["Left Leg"].Transparency = 0.5
char["Head"].Transparency = 0.5
char["Right Leg"].Transparency = 0.5
char["Torso"].Transparency = 0.5
char["Left Arm"].Transparency = 0.5
char["Right Arm"].Transparency = 0.5
Hood.Transparency = 0.5
Mask.Transparency = 0.5
Orbvc.Transparency = 0.5
Orbd.Transparency = 0.5
Orbvc.BrickColor = BrickColor.new("Really red")
Orbd.BrickColor = BrickColor.new("Really red")
wait(0.001)
char["Left Leg"].Transparency = 0.6
char["Head"].Transparency = 0.6
char["Right Leg"].Transparency = 0.6
char["Torso"].Transparency = 0.6
char["Left Arm"].Transparency = 0.6
char["Right Arm"].Transparency = 0.6
Hood.Transparency = 0.6
Mask.Transparency = 0.6
Orbvc.Transparency = 0.6
Orbd.Transparency = 0.6
wait(0.001)
char["Left Leg"].Transparency = 0.7
char["Head"].Transparency = 0.7
char["Right Leg"].Transparency = 0.7
char["Torso"].Transparency = 0.7
char["Left Arm"].Transparency = 0.7
char["Right Arm"].Transparency = 0.7
Hood.Transparency = 0.7
Mask.Transparency = 0.7
Orbvc.Transparency = 0.7
Orbd.Transparency = 0.7
wait(0.001)
char["Left Leg"].Transparency = 1
char["Head"].Transparency = 1
char["Right Leg"].Transparency = 1
char["Torso"].Transparency = 1
char["Left Arm"].Transparency = 1
char["Right Arm"].Transparency = 1
Hood.Transparency = 1
Mask.Transparency = 1
Orbvc.Transparency = 1
Orbd.Transparency = 1
end

function GoVisible()
	ScarySound3:Play()
	char.Humanoid.WalkSpeed = 16
	ScarySound1:Play()
	char.Head.face.Transparency = 0
Orbvc.BrickColor = BrickColor.new("Really black")
Orbd.BrickColor = BrickColor.new("Really black")
	char["Left Leg"].Transparency = 0.9
char["Head"].Transparency = 0.9
char["Right Leg"].Transparency = 9
char["Torso"].Transparency = 0.9
char["Left Arm"].Transparency = 0.9
char["Right Arm"].Transparency = 0.9
Hood.Transparency = 0.9
Mask.Transparency = 0.9
Orbvc.Transparency = 0.9
Orbd.Transparency = 0.9
wait(0.001)
char["Left Leg"].Transparency = 0.7
char["Head"].Transparency = 0.7
char["Right Leg"].Transparency = 0.7
char["Torso"].Transparency = 0.7
char["Left Arm"].Transparency = 0.7
char["Right Arm"].Transparency = 0.7
Hood.Transparency = 0.7
Mask.Transparency = 0.7
Orbvc.Transparency = 0.7
Orbd.Transparency = 0.7
wait(0.001)
char["Left Leg"].Transparency = 0
char["Head"].Transparency = 0
char["Right Leg"].Transparency = 0
char["Torso"].Transparency = 0
char["Left Arm"].Transparency = 0
char["Right Arm"].Transparency = 0
Hood.Transparency = 0
Mask.Transparency = 0
Orbvc.Transparency = 0
Orbd.Transparency = 0
end

Normal()

Music1 = New("Sound",chara,"Music",{SoundId = "rbxassetid://293341992",Volume = 2,Looped = true})
Music1.Pitch = 1
musicon = false
mouse.KeyDown:connect(function(key)
	if key == "z" then
		if char.Head.Transparency == 0 then
		GoInvisible()
		
		elseif char.Head.Transparency == 1 then
		GoVisible()
		Chat("...")
	end
end end)

mouse.KeyDown:connect(function(key)
	if key == "x" then
		if ScarySound2.IsPlaying == false then
			ScarySound2:Play()
		elseif ScarySound2.IsPlaying == true then
			ScarySound2:Stop()
			
			
	end
end end)

mouse.KeyDown:connect(function(key)
	if key == "r" then
		if ScarySound4.IsPlaying == false then
			ScarySound4:Play()
Chat("Hello...")
wait(1.5)		
Chat("greetings...")	
wait(2)
Chat("o my...")
wait(1.5)
Chat("he have another victim of the disease")
wait(3)		
Chat("you are not a doctor...")	
wait(2)
Chat("i sense the the disease in you")
wait(2.3)
Chat("i am the cure...")
wait(2)		
Chat("do not be afraid")	
wait(2)
Chat("i am the cure")
wait(2)
Chat("stop resisting...")	
wait(1.8)		
Chat("i am here to cure you...")	


	
		
	end
end end)
mouse.KeyDown:connect(function(key)
	if key == "u" then
   for _, z in pairs(workspace:GetChildren()) do
      
        if z.Name == "Zombie" then
Chat("Clean...")
z:Destroy()

	end
end
	end
end)


mouse.KeyDown:connect(function(key)
    if key == "m" then
if musicon == true then  
Music1:Stop()
musicon = false
Chat("Auto Target: Deactivated")
else
Chat("Auto Target: Activated")
Music1:Play()
musicon = true	
	
    end
end
end) 

Virus = true


mouse.KeyDown:connect(function(key)
    if key == "v" then
if Virus == true then  
Chat("Infection: Deactivated")
Virus = false

else

Virus = true	
Chat("Infection: Activated")	
    end
end
end) 



mouse.KeyDown:connect(function(key)
	if key == "h" then
   for _, z in pairs(workspace:GetChildren()) do
      
        if z.Name == "Zombie" then



end
end
	end
end)




mouse.KeyDown:connect(function(key)
	if key == "f" then
if targetted == nil then
targetted = char
else

targetted = nil
end


	end
end)





function SpawnZombie()
	

if ZomWait == false and ZomWait2 == false then
Zombie.Parent = game.Lighting
Zombie2 = Zombie:Clone()
Zombie3 = Zombie:Clone()

Zombie:Destroy()
----------------------------
ZomWait2 = true
wait()
ZomWait = true
end



if ZomWait == true and ZomWait2 == false then
Zombie3.Parent = game.Lighting
Zombie2 = Zombie3:Clone()
Zombie = Zombie3:Clone()

Zombie3:Destroy()
----------------------------
ZomWait2 = true
wait()
ZomWait = false
end
Zombie2.Parent = game.Workspace

end




function ResetZombie()
wait(4)
ZomSyle = false
ZomWait2 = false

end
waitV2 = false
function onTouch(part)

local humanoid = part.Parent:findFirstChild("Humanoid")
local model = part.Parent
local torso = part.Parent:FindFirstChild("Torso")
local head = part.Parent:findFirstChild("Head")
local leftleg = part.Parent:findFirstChild("Left Leg")
local rightleg = part.Parent:findFirstChild("Right Leg")
local leftarm = part.Parent:findFirstChild("Left Arm")
local rightarm = part.Parent:findFirstChild("Right Arm")
	if model.Name == 'Zombie' == false and model.Name == ''..p == false and Virus == true and waitV2 == false then
	waitV2 = true
	wait(.2)	
waitV2 = false

	
	

if (humanoid ~=nil) then

--humanoid.Health = 0

	
 ---------------------------R15-------------------------------------------------
if part.Parent:FindFirstChild("Torso") == nil and model.Humanoid.Health == 0 == false then
local torso2 = part.Parent:FindFirstChild("UpperTorso")
torso2:Destroy()
end
-------------------------------------------------------------------------------     



humanoid.Sit = true
wait(0.5)
torso.Anchored = true
wait(.3)
zomchar = humanoid.Parent
e=Instance.new('Part', model)
e.Size = Vector3.new(2.25,2.25,2.25)
e.Transparency = 1
e.Anchored = true
e.CFrame = CFrame.new(torso.Position)



wait(1)
torso:Destroy()
q=Instance.new('ParticleEmitter', e)
q.Size = NumberSequence.new(2,.0)
q.Rate = 500
q.Transparency = NumberSequence.new(0,1)
q.Speed = NumberRange.new(7)
q.VelocitySpread = 100
q.Lifetime = NumberRange.new(0.1,1)
q.Texture = 'rbxassetid://164417280'
wait(.1)
torso.Anchored = true
rightleg.Anchored = true
leftleg.Anchored = true
rightarm.Anchored = true
leftarm.Anchored = true
ded = Instance.new("Sound")
ded.Parent = e
ded.SoundId = "rbxassetid://130976109"
ded.Volume = 3
ded.Looped = false
wait()
	
ded:Play()

wait(1)
leftleg.Transparency = 0.5
head.Transparency = 0.5
rightleg.Transparency = 0.5
torso.Transparency = 0.5
leftarm.Transparency = 0.5
rightarm.Transparency = 0.5


wait(0.001)
leftleg.Transparency = 0.6
head.Transparency = 0.6
rightleg.Transparency = 0.6
torso.Transparency = 0.6
leftarm.Transparency = 0.6
rightarm.Transparency = 0.6

wait(0.001)
leftleg.Transparency = 0.7
head.Transparency = 0.7
rightleg.Transparency = 0.7
torso.Transparency = 0.7
leftarm.Transparency = 0.7
rightarm.Transparency = 0.7

                  
                    
                   


wait(0.001)
leftleg.Transparency = 1
head.Transparency = 1
rightleg.Transparency = 1
torso.Transparency = 1
leftarm.Transparency = 1
rightarm.Transparency = 1
wait()

SpawnZombie()
Zombie2.Torso.Touched:connect(onTouch)
Zombie2.Name = 'Zombie'
 function AutoJump()
Zombie2.Humanoid.Jump = true
end
Zombie2.Torso.Touched:connect(AutoJump)
wait()
Zombie2:MoveTo(zomchar.Head.Position + Vector3.new(math.random(0,1),0,math.random(0,1)))
----------------------

	if ZomSyle == false then
		ZomSyle = true
	


	




Zombie2.archivable = false


skin = zomchar["Body Colors"]:Clone()
skin.Parent = Zombie2
wait()


Character= Zombie2
plr = Zombie2
Headmaker = Character.Head
Headcol1 = Headmaker.BrickColor
Headmat = Headmaker.Material
Headsize = Headmaker.Size
Headsize2 = Headmaker.Mesh.Scale
 hed = Character.Head
hed.Transparency = 1

local Headnr1 = Instance.new("Model",Character.Head)
Headnr1.Name = "Lmao"
local Headnr2 = Instance.new("Model",Headnr1)
Headnr2.Name = ""..zomchar.Name


----------------------------------------------------------
wait()
local Mask = Instance.new("Part", Headnr2)
Mask.Name = "Head"
Mask.CanCollide = false
Mask.BrickColor = Headcol1
Mask.Transparency = 0
Mask.Material = Headmat
Mask.Size = Headsize
Mask.TopSurface = Enum.SurfaceType.Smooth
Mask.BottomSurface = Enum.SurfaceType.Smooth
local Weld = Instance.new("Weld", Mask)
Weld.Part0 = Character.Head
Weld.Part1 = Mask
Weld.C1 = CFrame.new(0,0,0)

local M1 = Instance.new("SpecialMesh")
M1.Parent = Mask
M1.MeshType='Head'
M1.Scale = Headsize2
----------------------------------------------------------
local Name2 = Instance.new("Humanoid",Headnr2)

wait()

for i,v in pairs(zomchar:GetChildren()) do
                  if v:IsA("CharacterMesh") then
                    v:clone().Parent = Zombie2
                  end 
	
	                  if v:IsA("ShirtGraphic") then
                    v:clone().Parent = Zombie2
					end

                  if v:IsA("Pants") then
                    v:clone().Parent = Zombie2
                  end
                  if v:IsA("Shirt") then
                    v:clone().Parent = Zombie2

end 


                  if v:IsA("Accessory") then
                    v:clone().Parent = Zombie2
end

                  if v:IsA("Hat") then
                    v:clone().Parent = Zombie2
end

end

	
	
	end
	
		





----------------------
wait()
leftleg:Destroy()
head:Destroy()
rightleg:Destroy()
leftarm:Destroy()
rightarm:Destroy()
ResetZombie()
end
end
end



char.Torso.Touched:connect(onTouch)

mouse.KeyDown:connect(function(key)
	if key == "c" then
		
LockOn()
			
			
			
			
			
	end
end)


debounce = false

function onTouched(hit)
hole:Play()
hit.CanCollide=false
wait(.5)
hit.CanCollide = true
debounce = true

end
game.Players.LocalPlayer.Character.Torso.Touched:connect(onTouched)



game:GetService("RunService"):BindToRenderStep("ew", 0, function()


if targetted == nil	and musicon == true then
	print('Waiting For A Target...')
	wait()
	GetPlayers()
local d = math.random(1, #dft) 
local s = d 
print(''..dft[s]..'?')

	
	
   for _, z in pairs(workspace:GetChildren()) do
      
        if z.Name == ""..dft[s] then





targetted = z

if z.Name == ''..p then

	targetted = nil

print('Wait a sec is that not me!')	
	
end
	end
end
	
	
end

if musicon == true and targetted.Humanoid.Health == 0 then
targetted = nil	
	
end

   for _, z in pairs(workspace:GetChildren()) do
      
        if z.Name == "Zombie" then

z.Humanoid:MoveTo(targetted.Head.Position)

	end
end
   for _, z in pairs(workspace:GetChildren()) do
      
        if z.Name == "Zombie" then 
if z.Humanoid.Health == 0 then
	z.Head.face.Transparency = 1
z["Left Leg"].Transparency = 0.5
z["Head"].Transparency = 0.5
z["Right Leg"].Transparency = 0.5
z["Torso"].Transparency = 0.5
z["Left Arm"].Transparency = 0.5
z["Right Arm"].Transparency = 0.5
wait(0.1)
z:Destroy()
	end
end
end



-------------------
end)



print('Loaded...')
print('---------------------')
print('Made by 123jl123')
print('---------------------')
print('do not leak...')
print('Have a nice day :)')
print('---------------------')
while  wait() do



	char["Left Leg"].BrickColor = BrickColor.new("Really black")
	char["Head"].BrickColor = BrickColor.new("Really black")
	char["Right Leg"].BrickColor = BrickColor.new("Really black")
	char["Torso"].BrickColor = BrickColor.new("Really black")
	char["Left Arm"].BrickColor = BrickColor.new("Black")
	char["Right Arm"].BrickColor = BrickColor.new("Black")
	imgl.Rotation = imgl.Rotation + 1
	if targetted ~= nil then
crosshair.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
crosshair.Enabled = true

	elseif targetted == nil then

crosshair.Adornee = nil
crosshair.Enabled = false

	end
	
 










end


------------------------------------------------------------------------