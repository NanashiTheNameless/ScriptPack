--[[CHROMIUM_WEAPONRY]]--
--[[Liron Red Dagger Edit]]--
local p = game.Players.LocalPlayer--300899323
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
hum.JumpPower = 100
hed.face:Remove()
----------------------------------------------------
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
}
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function NewPart(prnt,siz,cf,trans,anc,mat,col)
	local prt=Instance.new("Part")
	prt.Parent=prnt
	prt.Name="Part"
	prt.Size=siz
	prt.CanCollide=false
	prt.Anchored=anc
	prt.Locked=true
	prt.Transparency = trans
	prt.TopSurface=10
	prt.BottomSurface=10
	prt.FrontSurface=10
	prt.BackSurface=10
	prt.LeftSurface=10
	prt.RightSurface=10
	prt:BreakJoints()
	prt.CFrame=cf or CFrame.new(30,10,30)
	prt.Material=mat
	prt.BrickColor=BrickColor.new(col)
	m=Instance.new("SpecialMesh",prt)
	m.MeshType=6
	return prt
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
z = Instance.new("Sound",char) --Smile: print("�?�")
z.SoundId = "rbxassetid://403445112"--410761150, 411368002
z.Looped = true
z.Pitch = 0.72
z.Volume = 1
wait(0.1)
z:Play()
----------------------------------------------------
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
----------------------------------------------------
--Left Arm
m = Instance.new("Model")
m.Name = "LeftArm"

p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.SmoothPlastic
p4.Name = "LeftArmPlate"
p4.Size = Vector3.new(1, 2, 1)
p4.Transparency = 1
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)





w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "LeftArmPlate_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(1.5, -18.1000156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(1.5, -17.9000149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(1.5, -18.2000179, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(1.5, -18.5000172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(1.5, -18.950016, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(1.5, -18.6500149, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(1.5, -18.3500156, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(1.5, -18.0500126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(1.5, -17.7500172, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(1.5, -18.8000126, -22.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(1.49142683, -27.338007, 3.81166649, 1, -2.04123751e-007, -6.57511308e-008, 1.67448022e-007, 0.500000119, 0.866025329, -1.06342185e-007, -0.866025269, 0.5)

m.Parent = larm
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", larm.LeftArm)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 1, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", larm.LeftArm)
weld1.Part0 = cor
weld1.Part1 = larm.LeftArm.LeftArmPlate
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
--Right Arm
m2 = Instance.new("Model")
m2.Name = "RightArm"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Really red")
p1.Material = Enum.Material.Neon
p1.CFrame = CFrame.new(3.5, -9.44201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.200000048, 1)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Really red")
p2.Material = Enum.Material.Neon
p2.CFrame = CFrame.new(3.5, -9.74201393, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 0.200000048, 1)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Really red")
p3.Material = Enum.Material.Neon
p3.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 0.200000048, 1)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Really red")
p4.Material = Enum.Material.Neon
p4.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 0.200000048, 1)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.05999994, 0.699999988, 1.05999994)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Really red")
p5.Material = Enum.Material.Neon
p5.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.200000048, 1)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Really red")
p6.Material = Enum.Material.Neon
p6.CFrame = CFrame.new(3.5, -8.84201622, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1, 1, 1)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "RightArmPlate"
p7.CFrame = CFrame.new(3.5, -9.54201603, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 2, 1)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Really red")
p8.Material = Enum.Material.Neon
p8.CFrame = CFrame.new(3.5, -9.14201164, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 0.200000048, 1)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(3.5, -8.69201183, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 0.349999994, 1)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.12, 1.01999998, 1.12)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Metal
p10.CFrame = CFrame.new(3.5, -8.99201584, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 0.25, 1)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.CFrame = CFrame.new(3.5, -9.29201508, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 0.25, 1)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Metal
p12.CFrame = CFrame.new(3.5, -9.59201431, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 0.25, 1)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Really red")
p13.Material = Enum.Material.Neon
p13.CFrame = CFrame.new(3.5, -9.44201088, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 0.200000048, 1)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.CFrame = CFrame.new(3.5, -9.89201069, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 0.25, 1)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p14)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.03999996, 0.400000006, 1.03999996)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Really red")
p15.Material = Enum.Material.Neon
p15.CFrame = CFrame.new(3.5, -9.74201298, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 0.200000048, 1)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p15)
b15.MeshType = Enum.MeshType.Brick
b15.Name = "Mesh"
b15.Scale = Vector3.new(1.03999996, 1.01999998, 1.03999996)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.01999998, 0.300000012, 1.01999998)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p16)
b16.MeshType = Enum.MeshType.Brick
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.00999999, 0.400000036, 1.00999999)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p17)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.SmoothPlastic
p19.CFrame = CFrame.new(3.5, -10.1420107, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(1.02999997, 0.200000003, 1.02999997)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.02999997, 0.50999999, 1.02999997)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p3
w2.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6 = Instance.new("Weld", p6)
w6.Name = "RightArmPlate_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-3.5, -4.80001688, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-3.5, -4.10001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-3.5, -4.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-3.5, -4.95002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p10
w9.C1 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-3.5, -4.65001678, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p11
w10.C1 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-3.5, -4.35001707, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p12
w11.C1 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-3.5, -4.05001783, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p13
w12.C1 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-3.5, -4.20002079, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p14
w13.C1 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-3.5, -3.75002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-3.5, -3.90001893, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p16
w15.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(-3.5, -3.50002098, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = rarm
m2:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", rarm.RightArm)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(1, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = rarm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", rarm.RightArm)
weld2.Part0 = cor2
weld2.Part1 = rarm.RightArm.RightArmPlate
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))


--Zyrodoxa
m8 = Instance.new("Model")
m8.Name = "Zyrodoxa"
p1 = Instance.new("Part", m8)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Metal
p1.Reflectance = 0.40000000596046
p1.Name = "Block"
p1.CFrame = CFrame.new(2.70000019e-005, -11.6870832, 1.45529819, 1, -1.44446419e-008, -1.27813706e-008, -1.84925408e-008, -0.906311333, -0.422620147, -5.47969492e-009, 0.422620773, -0.906312048)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p2 = Instance.new("Part", m8)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Metal
p2.Reflectance = 0.40000000596046
p2.Name = "Block"
p2.CFrame = CFrame.new(2.7e-005, -11.9090996, 0.428020298, 1, -1.85014493e-008, -5.47575318e-009, -1.85010585e-008, -1.00000393, -1.49011612e-007, -5.47616175e-009, 4.91738319e-007, -1.00000477)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p3 = Instance.new("Part", m8)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Metal
p3.Reflectance = 0.40000000596046
p3.Name = "Block"
p3.CFrame = CFrame.new(2.7e-005, -11.9091024, 0.959298849, 1, -1.85014493e-008, -5.47575318e-009, -1.85010585e-008, -1.00000393, -1.49011612e-007, -5.47616175e-009, 4.91738319e-007, -1.00000477)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p4 = Instance.new("Part", m8)
p4.BrickColor = BrickColor.new("Really red")
p4.Material = Enum.Material.Metal
p4.Name = "Block"
p4.CFrame = CFrame.new(2.69999982e-005, -11.8500671, -1.24697566, 1, -4.30586944e-008, -5.26493444e-008, -5.9326311e-008, -0.173648626, -0.984811544, 3.32618768e-008, 0.984812438, -0.173648432)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p5 = Instance.new("Part", m8)
p5.BrickColor = BrickColor.new("Really red")
p5.Material = Enum.Material.Neon
p5.Reflectance = 0.40000000596046
p5.Name = "Block"
p5.CFrame = CFrame.new(2.69999982e-005, -11.9034386, -0.304960132, 1, -1.92584508e-008, 1.18294885e-009, -1.85012432e-008, -0.939696193, 0.342021227, -5.47556045e-009, -0.342021167, -0.939697087)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.334640861, 0.200784534, 0.669281721)
p6 = Instance.new("Part", m8)
p6.BrickColor = BrickColor.new("Parsley green")
p6.Material = Enum.Material.Metal
p6.Name = "Block"
p6.CFrame = CFrame.new(2.69999982e-005, -11.8500729, -0.678800821, 1, -4.08902388e-008, -5.95267018e-008, -5.9526478e-008, 1.1920929e-007, -1.0000037, 4.08900789e-008, 1.00000453, 5.36441803e-007)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p7 = Instance.new("Part", m8)
p7.BrickColor = BrickColor.new("Really red")
p7.Material = Enum.Material.Neon
p7.Reflectance = 0.40000000596046
p7.Name = "Block"
p7.CFrame = CFrame.new(2.69999982e-005, -11.957509, 0.917527318, 1, -2.28536976e-008, 8.68393135e-010, -2.22993837e-008, -0.965929389, 0.258820087, -5.07656006e-009, -0.258819878, -0.965930223)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p8 = Instance.new("Part", m8)
p8.BrickColor = BrickColor.new("Really red")
p8.Material = Enum.Material.Neon
p8.Reflectance = 0.40000000596046
p8.Name = "Block"
p8.CFrame = CFrame.new(2.7e-005, -11.8956118, 0.105731606, 1, -1.92584473e-008, 1.1829453e-009, -1.85012521e-008, -0.939696133, 0.342021048, -5.47555823e-009, -0.342020899, -0.939696968)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p9 = Instance.new("Part", m8)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Metal
p9.Reflectance = 0.40000000596046
p9.Name = "Block"
p9.CFrame = CFrame.new(2.69999982e-005, -11.7615223, 0.959302187, 1, -1.85016091e-008, -5.47516965e-009, -1.85012485e-008, -1.00000358, -1.1920929e-007, -5.47556001e-009, 5.36441803e-007, -1.00000429)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p10 = Instance.new("Part", m8)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Metal
p10.Reflectance = 0.40000000596046
p10.Name = "Block"
p10.CFrame = CFrame.new(2.69999982e-005, -11.5473213, 1.65489614, 1, -9.20203203e-009, -1.69509313e-008, -1.84925799e-008, -0.707108974, -0.70710963, -5.47968293e-009, 0.707110405, -0.707109272)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p11 = Instance.new("Part", m8)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Metal
p11.Name = "Circle"
p11.CFrame = CFrame.new(2.7e-005, -11.6729841, -0.582877517, 1, -3.82200724e-008, -1.58314464e-008, -1.58310698e-008, 1.78813934e-007, -1.00000358, 3.82198735e-008, 1.00000429, 4.17232513e-007)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.236122593, 0.220499977, 0.265637904)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("CylinderMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(1, 0.401569068, 1)
p12 = Instance.new("Part", m8)
p12.BrickColor = BrickColor.new("Really red")
p12.Material = Enum.Material.Neon
p12.Reflectance = 0.40000000596046
p12.Name = "Block"
p12.CFrame = CFrame.new(2.7e-005, -11.8956079, 0.673061967, 1, -1.56491176e-008, -8.14766423e-008, -1.31608857e-008, 0.939695954, -0.342021048, 8.1915303e-008, 0.342021108, 0.939696789)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p13 = Instance.new("Part", m8)
p13.BrickColor = BrickColor.new("Really red")
p13.Material = Enum.Material.Metal
p13.Name = "Block"
p13.CFrame = CFrame.new(2.7e-005, -11.85007, -1.195328, 1, -4.3058666e-008, -5.26493267e-008, -5.93263003e-008, -0.173648536, -0.984811068, 3.32618555e-008, 0.984811902, -0.173648447)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p14 = Instance.new("Part", m8)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Metal
p14.Reflectance = 0.40000000596046
p14.Name = "Block"
p14.CFrame = CFrame.new(2.7e-005, -11.6456089, 1.7017076, 1, -9.79658932e-009, -1.66229128e-008, -1.85012112e-008, -0.731357634, -0.681998909, -5.47637935e-009, 0.681999564, -0.731357992)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.220499977, 0.220499977, 0.332047403)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.267712682, 0.535425484, 1)
p15 = Instance.new("Part", m8)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Metal
p15.Reflectance = 0.40000000596046
p15.Name = "Block"
p15.CFrame = CFrame.new(2.7e-005, -11.761528, 0.162387252, 1, -1.85015949e-008, -5.47519008e-009, -1.85012503e-008, -1.00000322, -4.47054163e-008, -5.47555512e-009, 3.27827877e-007, -1.00000393)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p16 = Instance.new("Part", m8)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Metal
p16.Name = "Handle"
p16.CFrame = CFrame.new(2.7e-005, -11.8500671, -1.1215378, 1, -4.08902174e-008, -5.95266769e-008, -5.95264673e-008, 4.47054163e-008, -1.00000322, 4.08900469e-008, 1.00000393, 3.27827877e-007)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.220499977, 0.97400558, 0.220499977)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.602353573, 1, 0.602353573)
p17 = Instance.new("Part", m8)
p17.BrickColor = BrickColor.new("Really red")
p17.Material = Enum.Material.Neon
p17.Reflectance = 0.40000000596046
p17.Name = "Block"
p17.CFrame = CFrame.new(2.7e-005, -11.9214983, 1.1695174, 1, -3.32851862e-008, -1.92677874e-009, -3.32848948e-008, -1.00000322, 5.51342964e-007, -1.92714822e-009, -2.68220901e-007, -1.00000393)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p18 = Instance.new("Part", m8)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Metal
p18.Name = "Block"
p18.CFrame = CFrame.new(2.70000019e-005, -11.9708652, -1.76740301, 1, -9.71849161e-008, 2.00753263e-007, -1.30568921e-007, -0.984810889, 0.173648641, 1.80827797e-007, -0.173648477, -0.984811544)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.334640861, 0.133856371, 0.50196135)
p19 = Instance.new("Part", m8)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Metal
p19.Reflectance = 0.40000000596046
p19.Name = "Block"
p19.CFrame = CFrame.new(2.7e-005, -11.9090967, -0.10325551, 1, -1.85013889e-008, -5.47580603e-009, -1.85010975e-008, -1.0000031, -5.21540642e-008, -5.47609691e-009, 3.20374966e-007, -1.0000037)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p20 = Instance.new("Part", m8)
p20.BrickColor = BrickColor.new("Really red")
p20.Material = Enum.Material.Metal
p20.Name = "Block"
p20.CFrame = CFrame.new(2.69999982e-005, -11.8500719, -0.937063575, 1, -4.21245474e-008, -5.61353133e-008, -5.9592935e-008, -0.0871559381, -0.996197701, 3.70716151e-008, 0.996198356, -0.0871557295)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p21 = Instance.new("Part", m8)
p21.BrickColor = BrickColor.new("Really black")
p21.Material = Enum.Material.Metal
p21.Name = "Block"
p21.CFrame = CFrame.new(2.69999982e-005, -11.7520199, -1.68255222, 1, 1.93163316e-008, -6.95866973e-008, -5.9526478e-008, 0.766046822, -0.642789543, 4.08900966e-008, 0.642789721, 0.766047418)
p21.CanCollide = false
p21.Locked = true
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.334640861, 0.133856371, 0.50196135)
p22 = Instance.new("Part", m8)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Metal
p22.Reflectance = 0.40000000596046
p22.Name = "Block"
p22.CFrame = CFrame.new(2.69999964e-005, -11.7615223, -0.368889451, 1, -1.85015665e-008, -5.4752185e-009, -1.85012787e-008, -1.0000031, -5.96046448e-008, -5.47550449e-009, 3.87430191e-007, -1.0000037)
p22.CanCollide = false
p22.Locked = true
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p23 = Instance.new("Part", m8)
p23.BrickColor = BrickColor.new("Really red")
p23.Material = Enum.Material.Marble
p23.Name = "Block"
p23.CFrame = CFrame.new(2.69999964e-005, -11.85007, -0.641908407, 1, -4.0890189e-008, -5.95266485e-008, -5.95264922e-008, 5.96046448e-008, -1.0000031, 4.08900895e-008, 1.0000037, 3.87430191e-007)
p23.CanCollide = false
p23.Locked = true
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.220499977, 0.220499977, 0.236122593)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("BlockMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.803138018, 0.133856371, 1)
p24 = Instance.new("Part", m8)
p24.BrickColor = BrickColor.new("Really black")
p24.Material = Enum.Material.Metal
p24.Name = "Block"
p24.CFrame = CFrame.new(2.69999964e-005, -11.948123, -1.6825552, 1, -7.18838464e-008, -6.93700386e-009, -5.95250889e-008, -0.766046762, -0.642789662, 4.08918908e-008, 0.642790258, -0.766046941)
p24.CanCollide = false
p24.Locked = true
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.334640861, 0.133856371, 0.50196135)
p25 = Instance.new("Part", m8)
p25.BrickColor = BrickColor.new("Really red")
p25.Material = Enum.Material.Marble
p25.Name = "Block"
p25.CFrame = CFrame.new(2.69999964e-005, -11.8500681, -1.59377992, 1, -4.08901926e-008, -5.95266414e-008, -5.95264957e-008, 5.96046448e-008, -1.0000031, 4.0890086e-008, 1.00000358, 3.57627869e-007)
p25.CanCollide = false
p25.Locked = true
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("BlockMesh", p25)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p26 = Instance.new("Part", m8)
p26.BrickColor = BrickColor.new("Really black")
p26.Material = Enum.Material.Metal
p26.Reflectance = 0.40000000596046
p26.Name = "Block"
p26.CFrame = CFrame.new(2.69999982e-005, -11.7615213, 0.428021312, 1, -1.85015523e-008, -5.47521495e-009, -1.85012912e-008, -1.0000031, -5.96046448e-008, -5.47550272e-009, 3.57627869e-007, -1.00000358)
p26.CanCollide = false
p26.Locked = true
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p27 = Instance.new("Part", m8)
p27.BrickColor = BrickColor.new("Really red")
p27.Material = Enum.Material.Metal
p27.Name = "Block"
p27.CFrame = CFrame.new(2.69999982e-005, -11.850069, -0.782109976, 1, -4.36853398e-008, -4.90951173e-008, -5.8728709e-008, -0.258819818, -0.965928853, 2.94898914e-008, 0.965929329, -0.25881961)
p27.CanCollide = false
p27.Locked = true
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p28 = Instance.new("Part", m8)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.SmoothPlastic
p28.Reflectance = 0.0099999997764826
p28.Name = "Circle"
p28.CFrame = CFrame.new(2.69999964e-005, -11.7615204, -0.52384901, 1, -3.82200298e-008, -1.58313824e-008, -1.58311213e-008, 5.96046448e-008, -1.0000031, 3.82198913e-008, 1.00000346, 3.57627869e-007)
p28.CanCollide = false
p28.Locked = true
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("CylinderMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.803138018, 0.401569068, 0.803138137)
p29 = Instance.new("Part", m8)
p29.BrickColor = BrickColor.new("Really black")
p29.Material = Enum.Material.Metal
p29.Reflectance = 0.40000000596046
p29.Name = "Block"
p29.CFrame = CFrame.new(2.69999964e-005, -11.8228655, 1.48447084, 1, -1.48910964e-008, -1.22697976e-008, -1.85012574e-008, -0.920508504, -0.390730202, -5.47632872e-009, 0.39073059, -0.920508862)
p29.CanCollide = false
p29.Locked = true
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.220499977, 0.220499977, 0.31728977)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.267712682, 0.803138077, 1)
p30 = Instance.new("Part", m8)
p30.BrickColor = BrickColor.new("Really red")
p30.Material = Enum.Material.Metal
p30.Name = "Block"
p30.CFrame = CFrame.new(2.69999928e-005, -11.850069, -1.35027885, 1, -4.36853398e-008, -4.90951102e-008, -5.87287019e-008, -0.25881964, -0.965928614, 2.94898825e-008, 0.96592921, -0.258819699)
p30.CanCollide = false
p30.Locked = true
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("BlockMesh", p30)
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p31 = Instance.new("Part", m8)
p31.BrickColor = BrickColor.new("Really red")
p31.Material = Enum.Material.Neon
p31.Reflectance = 0.40000000596046
p31.Name = "Block"
p31.CFrame = CFrame.new(2.69999928e-005, -11.8927851, 0.869306803, -1, -7.71367752e-008, 3.05927976e-008, 7.41768247e-008, -0.996197402, -0.0871561319, 3.71997153e-008, -0.0871560946, 0.996197999)
p31.CanCollide = false
p31.Locked = true
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("BlockMesh", p31)
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.334640861, 0.133856371, 0.870066345)
p32 = Instance.new("Part", m8)
p32.BrickColor = BrickColor.new("Really red")
p32.Material = Enum.Material.Metal
p32.Name = "Block"
p32.CFrame = CFrame.new(2.6999991e-005, -11.850071, -1.29862738, 1, -3.936497e-008, -6.27974615e-008, -5.91275011e-008, 0.0871559605, -0.996197343, 4.46881891e-008, 0.996197939, 0.0871561021)
p32.CanCollide = false
p32.Locked = true
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p33 = Instance.new("Part", m8)
p33.BrickColor = BrickColor.new("Really black")
p33.Material = Enum.Material.Metal
p33.Reflectance = 0.40000000596046
p33.Name = "Block"
p33.CFrame = CFrame.new(2.69999928e-005, -11.7615213, 0.693662167, 1, -1.8501531e-008, -5.47520784e-009, -1.85013107e-008, -1.00000262, -1.49011612e-007, -5.47550894e-009, 2.38418579e-007, -1.00000322)
p33.CanCollide = false
p33.Locked = true
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p34 = Instance.new("Part", m8)
p34.BrickColor = BrickColor.new("Really red")
p34.Material = Enum.Material.Metal
p34.Name = "Block"
p34.CFrame = CFrame.new(2.69999928e-005, -11.850069, -0.988716245, 1, -4.08901997e-008, -5.9526613e-008, -5.95264993e-008, 1.49011612e-007, -1.00000262, 4.08900576e-008, 1.00000322, 2.38418579e-007)
p34.CanCollide = false
p34.Locked = true
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p35 = Instance.new("Part", m8)
p35.BrickColor = BrickColor.new("Really red")
p35.Material = Enum.Material.Metal
p35.Name = "Block"
p35.CFrame = CFrame.new(2.69999928e-005, -11.8500662, -1.50523794, 1, -4.08901997e-008, -5.95266094e-008, -5.95265028e-008, 1.49011612e-007, -1.00000262, 4.08900576e-008, 1.00000322, 2.38418579e-007)
p35.CanCollide = false
p35.Locked = true
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p36 = Instance.new("Part", m8)
p36.BrickColor = BrickColor.new("Really red")
p36.Material = Enum.Material.Metal
p36.Name = "Block"
p36.CFrame = CFrame.new(2.69999928e-005, -11.8500719, -1.86679816, 1, -1.85015203e-008, -5.47520784e-009, -1.85013214e-008, -1.00000262, -1.49011612e-007, -5.47550938e-009, 2.38418579e-007, -1.00000322)
p36.CanCollide = false
p36.Locked = true
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("BlockMesh", p36)
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.401568979, 0.200784534, 0.267712682)
p37 = Instance.new("Part", m8)
p37.BrickColor = BrickColor.new("Really red")
p37.Material = Enum.Material.Marble
p37.Name = "Circle"
p37.CFrame = CFrame.new(2.6999991e-005, -11.7319965, -0.523848772, 1, -3.82200369e-008, -1.58313576e-008, -1.58311444e-008, 1.49011612e-007, -1.00000262, 3.8219877e-008, 1.00000322, 2.38418579e-007)
p37.CanCollide = false
p37.Locked = true
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("CylinderMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.936994374, 0.133856371, 0.936994612)
p38 = Instance.new("Part", m8)
p38.BrickColor = BrickColor.new("Really black")
p38.Material = Enum.Material.Metal
p38.Name = "Block"
p38.CFrame = CFrame.new(2.69999928e-005, -11.8021069, -1.64543033, 1, -4.08901997e-008, -5.95266023e-008, -5.95265099e-008, 1.49011612e-007, -1.00000262, 4.08900576e-008, 1.00000322, 2.38418579e-007)
p38.CanCollide = false
p38.Locked = true
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("BlockMesh", p38)
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.334640861, 0.133856371, 0.234248638)
p39 = Instance.new("Part", m8)
p39.BrickColor = BrickColor.new("Really black")
p39.Material = Enum.Material.Metal
p39.Name = "Block"
p39.CFrame = CFrame.new(2.6999991e-005, -11.8980207, -1.64543033, 1, -4.08901997e-008, -5.95265988e-008, -5.95265135e-008, 1.49011612e-007, -1.00000262, 4.08900576e-008, 1.00000322, 2.38418579e-007)
p39.CanCollide = false
p39.Locked = true
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.334640861, 0.133856371, 0.234248638)
p40 = Instance.new("Part", m8)
p40.BrickColor = BrickColor.new("Really black")
p40.Material = Enum.Material.Metal
p40.Name = "Block"
p40.CFrame = CFrame.new(2.6999991e-005, -11.9044991, -1.84857893, 1, 2.62652719e-007, 4.66475456e-007, -2.72653665e-007, -0.500001431, 0.866027534, 4.6070295e-007, -0.866027951, -0.500001788)
p40.CanCollide = false
p40.Locked = true
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p41 = Instance.new("Part", m8)
p41.BrickColor = BrickColor.new("Really red")
p41.Material = Enum.Material.Neon
p41.Reflectance = 0.40000000596046
p41.Name = "Block"
p41.CFrame = CFrame.new(2.6999991e-005, -11.8956079, 0.422182083, 1, -1.56492277e-008, -8.1476486e-008, -1.31610101e-008, 0.939694941, -0.34202069, 8.19153172e-008, 0.34202072, 0.939695537)
p41.CanCollide = false
p41.Locked = true
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("BlockMesh", p41)
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p42 = Instance.new("Part", m8)
p42.BrickColor = BrickColor.new("Earth green")
p42.Material = Enum.Material.Metal
p42.Name = "Block"
p42.CFrame = CFrame.new(2.69999928e-005, -11.85007, -0.664048076, 1, -4.0890118e-008, -5.95265348e-008, -5.95265384e-008, 1.49011612e-007, -1.00000226, 4.08901286e-008, 1.00000286, 3.42726707e-007)
p42.CanCollide = false
p42.Locked = true
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("BlockMesh", p42)
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.736209869, 0.0669281855, 0.736209989)
p43 = Instance.new("Part", m8)
p43.BrickColor = BrickColor.new("Really black")
p43.Material = Enum.Material.Metal
p43.Name = "Block"
p43.CFrame = CFrame.new(2.69999964e-005, -11.7292862, -1.76739728, 1, 6.57225172e-008, -2.99325187e-008, -5.95263288e-008, 0.984809816, 0.173648655, 4.08903809e-008, -0.173648939, 0.984810352)
p43.CanCollide = false
p43.Locked = true
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("BlockMesh", p43)
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.334640861, 0.133856371, 0.50196135)
p44 = Instance.new("Part", m8)
p44.BrickColor = BrickColor.new("Really red")
p44.Material = Enum.Material.Marble
p44.Name = "Circle"
p44.CFrame = CFrame.new(2.69999946e-005, -11.968133, -0.641907811, 1, -3.82199516e-008, -1.58312723e-008, -1.58311995e-008, 1.49011612e-007, -1.00000203, 3.8219941e-008, 1.00000262, 3.27825546e-007)
p44.CanCollide = false
p44.Locked = true
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("CylinderMesh", p44)
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.803138018, 0.133856371, 0.803138137)
p45 = Instance.new("Part", m8)
p45.BrickColor = BrickColor.new("Really red")
p45.Material = Enum.Material.Neon
p45.Reflectance = 0.40000000596046
p45.Name = "Block"
p45.CFrame = CFrame.new(2.69999964e-005, -11.8956099, -0.0648244023, 1, -1.56492419e-008, -8.14764718e-008, -1.31610207e-008, 0.939694583, -0.342020601, 8.19152959e-008, 0.342020601, 0.93969512)
p45.CanCollide = false
p45.Locked = true
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("BlockMesh", p45)
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p46 = Instance.new("Part", m8)
p46.BrickColor = BrickColor.new("Really black")
p46.Material = Enum.Material.Metal
p46.Name = "Block"
p46.CFrame = CFrame.new(2.69999946e-005, -11.8500729, -0.582874656, 1, -4.08901037e-008, -5.95265135e-008, -5.95265313e-008, 1.34110451e-007, -1.00000191, 4.08901215e-008, 1.00000238, 2.83122063e-007)
p46.CanCollide = false
p46.Locked = true
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.236122593, 0.220499977, 0.354183882)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("BlockMesh", p46)
b46.Name = "Mesh"
b46.Scale = Vector3.new(1, 0.401569068, 1)
p47 = Instance.new("Part", m8)
p47.BrickColor = BrickColor.new("Earth green")
p47.Material = Enum.Material.Metal
p47.Name = "Block"
p47.CFrame = CFrame.new(2.69999946e-005, -11.850071, -1.56426501, 1, -4.08901037e-008, -5.95265099e-008, -5.95265348e-008, 1.34110451e-007, -1.00000191, 4.08901215e-008, 1.00000238, 2.83122063e-007)
p47.CanCollide = false
p47.Locked = true
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("BlockMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.736209869, 0.0669281855, 0.736209989)
p48 = Instance.new("Part", m8)
p48.BrickColor = BrickColor.new("Really red")
p48.Material = Enum.Material.Metal
p48.Name = "Block"
p48.CFrame = CFrame.new(2.69999964e-005, -11.8500748, -1.04036665, 1, -3.75603939e-008, -6.5922805e-008, -5.83990385e-008, 0.173648417, -0.984809697, 4.84371583e-008, 0.984810054, 0.173648626)
p48.CanCollide = false
p48.Locked = true
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p49 = Instance.new("Part", m8)
p49.BrickColor = BrickColor.new("Really red")
p49.Material = Enum.Material.Metal
p49.Name = "Block"
p49.CFrame = CFrame.new(2.69999928e-005, -11.8500729, -0.730450988, 1, -3.7560401e-008, -6.59227979e-008, -5.83990456e-008, 0.173648179, -0.984809756, 4.84371476e-008, 0.984810114, 0.173648387)
p49.CanCollide = false
p49.Locked = true
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("BlockMesh", p49)
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p50 = Instance.new("Part", m8)
p50.BrickColor = BrickColor.new("Really black")
p50.Material = Enum.Material.Metal
p50.Reflectance = 0.40000000596046
p50.Name = "Block"
p50.CFrame = CFrame.new(2.69999928e-005, -11.9042749, 1.22774267, 1, -1.79535924e-008, -7.06764602e-009, -1.85012361e-008, -0.996196568, -0.0871560201, -5.47609824e-009, 0.0871561989, -0.996196926)
p50.CanCollide = false
p50.Locked = true
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.220499977, 0.220499977, 0.287774384)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.267712682, 0.936994493, 1)
p51 = Instance.new("Part", m8)
p51.BrickColor = BrickColor.new("Really red")
p51.Material = Enum.Material.Metal
p51.Name = "Block"
p51.CFrame = CFrame.new(2.69999928e-005, -11.8500719, -1.40193033, 1, -3.93648811e-008, -6.27973264e-008, -5.91275438e-008, 0.0871558785, -0.996196568, 4.46882424e-008, 0.996196926, 0.0871560574)
p51.CanCollide = false
p51.Locked = true
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p52 = Instance.new("Part", m8)
p52.BrickColor = BrickColor.new("Really red")
p52.Material = Enum.Material.Metal
p52.Name = "Block"
p52.CFrame = CFrame.new(2.69999928e-005, -11.850071, -1.09201384, 1, -4.21244408e-008, -5.61351641e-008, -5.95929883e-008, -0.0871557593, -0.996196628, 3.70716471e-008, 0.996196985, -0.0871556401)
p52.CanCollide = false
p52.Locked = true
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("BlockMesh", p52)
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p53 = Instance.new("Part", m8)
p53.BrickColor = BrickColor.new("Really black")
p53.Material = Enum.Material.Metal
p53.Name = "Block"
p53.CFrame = CFrame.new(2.69999928e-005, -11.7956429, -1.84857762, 1, 6.51748948e-008, 3.11061044e-008, -5.95261795e-008, 0.500001013, 0.866027117, 4.08900611e-008, -0.866027415, 0.500001013)
p53.CanCollide = false
p53.Locked = true
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("BlockMesh", p53)
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.334640861, 0.133856371, 0.669281721)
p54 = Instance.new("Part", m8)
p54.BrickColor = BrickColor.new("Really black")
p54.Material = Enum.Material.SmoothPlastic
p54.Reflectance = 0.0099999997764826
p54.Name = "Circle"
p54.CFrame = CFrame.new(2.69999928e-005, -11.9386101, -0.523846626, 1, -3.82199445e-008, -1.58312456e-008, -1.58311995e-008, 1.04308441e-007, -1.00000203, 3.82199303e-008, 1.00000226, 2.75671823e-007)
p54.CanCollide = false
p54.Locked = true
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("CylinderMesh", p54)
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.803138018, 0.401569068, 0.803138137)
p55 = Instance.new("Part", m8)
p55.BrickColor = BrickColor.new("Really black")
p55.Material = Enum.Material.Metal
p55.Reflectance = 0.40000000596046
p55.Name = "Block"
p55.CFrame = CFrame.new(2.69999928e-005, -11.7615232, -0.103249788, 1, -1.85014084e-008, -5.47530199e-009, -1.85013729e-008, -1.00000203, -1.04308441e-007, -5.47541257e-009, 2.75671823e-007, -1.00000226)
p55.CanCollide = false
p55.Locked = true
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("BlockMesh", p55)
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p56 = Instance.new("Part", m8)
p56.BrickColor = BrickColor.new("Really black")
p56.Material = Enum.Material.Metal
p56.Reflectance = 0.40000000596046
p56.Name = "Block"
p56.CFrame = CFrame.new(2.69999928e-005, -11.9091034, -0.368891358, 1, -1.8501229e-008, -5.47589352e-009, -1.85011935e-008, -1.00000203, -1.04308441e-007, -5.47600409e-009, 2.75671823e-007, -1.00000226)
p56.CanCollide = false
p56.Locked = true
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("BlockMesh", p56)
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p57 = Instance.new("Part", m8)
p57.BrickColor = BrickColor.new("Really black")
p57.Material = Enum.Material.Metal
p57.Reflectance = 0.40000000596046
p57.Name = "Block"
p57.CFrame = CFrame.new(2.69999928e-005, -11.9091005, 0.693658948, 1, -1.8501229e-008, -5.47589352e-009, -1.85011935e-008, -1.00000203, -1.04308441e-007, -5.47600409e-009, 2.75671823e-007, -1.00000226)
p57.CanCollide = false
p57.Locked = true
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("BlockMesh", p57)
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p58 = Instance.new("Part", m8)
p58.BrickColor = BrickColor.new("Really red")
p58.Material = Enum.Material.Marble
p58.Name = "Block"
p58.CFrame = CFrame.new(2.69999928e-005, -11.850071, -0.523846745, 1, -4.08901073e-008, -5.95264922e-008, -5.95265384e-008, 1.04308441e-007, -1.00000203, 4.08901144e-008, 1.00000226, 2.75671823e-007)
p58.CanCollide = false
p58.Locked = true
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.220499977, 0.220499977, 0.236122593)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("BlockMesh", p58)
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.936994374, 0.133856371, 1)
p59 = Instance.new("Part", m8)
p59.BrickColor = BrickColor.new("Really red")
p59.Material = Enum.Material.Metal
p59.Name = "Block"
p59.CFrame = CFrame.new(2.69999928e-005, -11.850071, -1.62329435, 1, -1.85014031e-008, -5.47530021e-009, -1.85013782e-008, -1.00000203, -1.04308441e-007, -5.47540946e-009, 2.75671823e-007, -1.00000226)
p59.CanCollide = false
p59.Locked = true
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("BlockMesh", p59)
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.602353573, 0.200784534, 0.468497276)
p60 = Instance.new("Part", m8)
p60.BrickColor = BrickColor.new("Really red")
p60.Material = Enum.Material.Marble
p60.Name = "Circle"
p60.CFrame = CFrame.new(2.69999928e-005, -11.9755096, -0.523859799, 1, -3.82199445e-008, -1.58312403e-008, -1.58312048e-008, 1.04308441e-007, -1.00000203, 3.82199339e-008, 1.00000226, 2.75671823e-007)
p60.CanCollide = false
p60.Locked = true
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("CylinderMesh", p60)
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.936994374, 0.133856371, 0.936994612)
p61 = Instance.new("Part", m8)
p61.BrickColor = BrickColor.new("Really black")
p61.Material = Enum.Material.Metal
p61.Name = "Circle"
p61.CFrame = CFrame.new(2.69999928e-005, -12.0271645, -0.582878888, 1, -3.82199445e-008, -1.58312403e-008, -1.58312048e-008, 1.04308441e-007, -1.00000203, 3.82199339e-008, 1.00000226, 2.75671823e-007)
p61.CanCollide = false
p61.Locked = true
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.236122593, 0.220499977, 0.265637904)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("CylinderMesh", p61)
b61.Name = "Mesh"
b61.Scale = Vector3.new(1, 0.401569068, 1)
p62 = Instance.new("Part", m8)
p62.BrickColor = BrickColor.new("Really red")
p62.Material = Enum.Material.Metal
p62.Name = "Block"
p62.CFrame = CFrame.new(2.69999928e-005, -11.850069, -0.833758533, 1, -4.08901002e-008, -5.95264851e-008, -5.95265455e-008, -4.47034836e-008, -1.00000203, 4.08901002e-008, 1.00000226, 1.2665987e-007)
p62.CanCollide = false
p62.Locked = true
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("BlockMesh", p62)
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p63 = Instance.new("Part", m8)
p63.BrickColor = BrickColor.new("Really red")
p63.Material = Enum.Material.Metal
p63.Name = "Block"
p63.CFrame = CFrame.new(2.69999928e-005, -11.8500719, -1.14366531, 1, -3.93648811e-008, -6.27973264e-008, -5.91275438e-008, 0.0871558636, -0.996196747, 4.4688246e-008, 0.996196866, 0.0871560499)
p63.CanCollide = false
p63.Locked = true
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("BlockMesh", p63)
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p64 = Instance.new("Part", m8)
p64.BrickColor = BrickColor.new("Really black")
p64.Material = Enum.Material.SmoothPlastic
p64.Reflectance = 0.0099999997764826
p64.Name = "Block"
p64.CFrame = CFrame.new(2.69999928e-005, -11.85007, -0.523846924, 1, -4.08901002e-008, -5.95264957e-008, -5.95265419e-008, 1.04308128e-007, -1.00000203, 4.0890118e-008, 1.00000215, 2.83122063e-007)
p64.CanCollide = false
p64.Locked = true
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("BlockMesh", p64)
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.803138018, 0.401569068, 0.803138137)
p65 = Instance.new("Part", m8)
p65.BrickColor = BrickColor.new("Really red")
p65.Material = Enum.Material.Metal
p65.Name = "Block"
p65.CFrame = CFrame.new(2.69999928e-005, -11.850069, -0.885411739, 1, -3.75603939e-008, -6.59227908e-008, -5.83990456e-008, 0.173648402, -0.984809816, 4.84371547e-008, 0.984809875, 0.173648596)
p65.CanCollide = false
p65.Locked = true
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("BlockMesh", p65)
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p66 = Instance.new("Part", m8)
p66.BrickColor = BrickColor.new("Really black")
p66.Material = Enum.Material.Metal
p66.Reflectance = 0.40000000596046
p66.Name = "Block"
p66.CFrame = CFrame.new(2.69999946e-005, -11.7501383, 1.2199297, 1, -1.79537896e-008, -7.06697278e-009, -1.85013764e-008, -0.996196747, -0.0871560127, -5.47540502e-009, 0.0871562064, -0.996196806)
p66.CanCollide = false
p66.Locked = true
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("BlockMesh", p66)
b66.Name = "Mesh"
b66.Scale = Vector3.new(0.267712682, 0.468497276, 1)
p67 = Instance.new("Part", m8)
p67.BrickColor = BrickColor.new("Really red")
p67.Material = Enum.Material.Metal
p67.Name = "Block"
p67.CFrame = CFrame.new(2.69999928e-005, -11.8500738, -1.45358396, 1, -4.36852119e-008, -4.90949965e-008, -5.87287552e-008, -0.258819461, -0.96592778, 2.94899358e-008, 0.965927899, -0.258819312)
p67.CanCollide = false
p67.Locked = true
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("BlockMesh", p67)
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.669281721, 0.200784534, 0.669281721)
p68 = Instance.new("Part", m8)
p68.BrickColor = BrickColor.new("Really black")
p68.Material = Enum.Material.Metal
p68.Reflectance = 0.40000000596046
p68.Name = "Block"
p68.CFrame = CFrame.new(2.69999946e-005, -11.9090977, 0.162382364, 1, -1.85012148e-008, -5.47590062e-009, -1.85012077e-008, -1.00000191, -1.1920929e-007, -5.47599832e-009, 2.98023224e-007, -1.00000203)
p68.CanCollide = false
p68.Locked = true
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.220499977, 0.220499977, 0.265637904)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("BlockMesh", p68)
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.267712682, 0.870066345, 1)
p69 = Instance.new("Part", m8)
p69.BrickColor = BrickColor.new("Earth green")
p69.Material = Enum.Material.Metal
p69.Name = "Block"
p69.CFrame = CFrame.new(2.69999946e-005, -11.8500662, -1.6085372, 1, -4.08901002e-008, -5.9526478e-008, -5.95265455e-008, 1.1920929e-007, -1.00000191, 4.08901073e-008, 1.00000203, 2.98023224e-007)
p69.CanCollide = false
p69.Locked = true
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("BlockMesh", p69)
b69.Name = "Mesh"
b69.Scale = Vector3.new(0.736209869, 0.0669281855, 0.736209989)
p70 = Instance.new("Part", m8)
p70.BrickColor = BrickColor.new("Really red")
p70.Material = Enum.Material.Marble
p70.Name = "Circle"
p70.CFrame = CFrame.new(2.69999946e-005, -11.7320013, -0.641902268, 1, -3.82199374e-008, -1.58312261e-008, -1.5831219e-008, 1.1920929e-007, -1.00000191, 3.82199268e-008, 1.00000203, 2.98023224e-007)
p70.CanCollide = false
p70.Locked = true
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("CylinderMesh", p70)
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.803138018, 0.133856371, 0.803138137)
p71 = Instance.new("WedgePart", m8)
p71.BrickColor = BrickColor.new("Really red")
p71.Material = Enum.Material.Neon
p71.Reflectance = 0.40000000596046
p71.Name = "Wedge"
p71.CFrame = CFrame.new(2.69999946e-005, -11.8880224, 0.31500864, -1, 5.94633809e-009, -9.26972419e-008, -8.91409044e-008, -0.342020452, 0.939694583, -2.61165116e-008, 0.939694643, 0.342020303)
p71.CanCollide = false
p71.Locked = true
p71.FormFactor = Enum.FormFactor.Custom
p71.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p71)
b71.MeshType = Enum.MeshType.Wedge
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p72 = Instance.new("WedgePart", m8)
p72.BrickColor = BrickColor.new("Really red")
p72.Material = Enum.Material.Neon
p72.Reflectance = 0.40000000596046
p72.Name = "Wedge"
p72.CFrame = CFrame.new(2.69999964e-005, -11.8783607, 0.789086521, 1, -5.68298901e-008, -8.86828389e-011, -5.04137887e-009, -0.0871561319, -0.996196628, 5.66059342e-008, 0.996196628, -0.0871559829)
p72.CanCollide = false
p72.Locked = true
p72.FormFactor = Enum.FormFactor.Custom
p72.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p72)
b72.MeshType = Enum.MeshType.Wedge
b72.Name = "Mesh"
b72.Scale = Vector3.new(0.334640861, 0.267712742, 0.334640861)
p73 = Instance.new("WedgePart", m8)
p73.BrickColor = BrickColor.new("Really red")
p73.Material = Enum.Material.Neon
p73.Reflectance = 0.40000000596046
p73.Name = "Wedge"
p73.CFrame = CFrame.new(2.69999946e-005, -11.9179726, -0.200317383, -1, 8.86055176e-008, -9.63062732e-008, 1.2080335e-007, 0.342020512, -0.939694524, -5.03233473e-008, -0.939694524, -0.342020392)
p73.CanCollide = false
p73.Locked = true
p73.FormFactor = Enum.FormFactor.Custom
p73.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p73)
b73.MeshType = Enum.MeshType.Wedge
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p74 = Instance.new("WedgePart", m8)
p74.BrickColor = BrickColor.new("Really red")
p74.Material = Enum.Material.Neon
p74.Reflectance = 0.40000000596046
p74.Name = "Wedge"
p74.CFrame = CFrame.new(2.69999946e-005, -11.8857021, 0.788440466, 1, -3.05928971e-008, 8.75114523e-008, -8.45122159e-008, 0.087156117, 0.996196568, -3.81037424e-008, -0.996196568, 0.0871560276)
p74.CanCollide = false
p74.Locked = true
p74.FormFactor = Enum.FormFactor.Custom
p74.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p74)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p75 = Instance.new("WedgePart", m8)
p75.BrickColor = BrickColor.new("Really red")
p75.Material = Enum.Material.Neon
p75.Reflectance = 0.40000000596046
p75.Name = "Wedge"
p75.CFrame = CFrame.new(2.69999946e-005, -11.8681011, -0.402033836, 1, -8.62400213e-008, 8.8834895e-009, 2.11481392e-008, 0.342020482, 0.939694464, -8.40776622e-008, -0.939694464, 0.342020422)
p75.CanCollide = false
p75.Locked = true
p75.FormFactor = Enum.FormFactor.Custom
p75.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("SpecialMesh", p75)
b75.MeshType = Enum.MeshType.Wedge
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.334640861, 0.267712742, 0.200784534)
p76 = Instance.new("WedgePart", m8)
p76.BrickColor = BrickColor.new("Really red")
p76.Material = Enum.Material.Neon
p76.Reflectance = 0.40000000596046
p76.Name = "Wedge"
p76.CFrame = CFrame.new(2.69999946e-005, -11.8880215, -0.171991348, -1, 5.94633143e-009, -9.26972206e-008, -8.91408973e-008, -0.342020363, 0.939694405, -2.61165383e-008, 0.939694405, 0.342020303)
p76.CanCollide = false
p76.Locked = true
p76.FormFactor = Enum.FormFactor.Custom
p76.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("SpecialMesh", p76)
b76.MeshType = Enum.MeshType.Wedge
b76.Name = "Mesh"
b76.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p77 = Instance.new("WedgePart", m8)
p77.BrickColor = BrickColor.new("Really red")
p77.Material = Enum.Material.Neon
p77.Reflectance = 0.40000000596046
p77.Name = "Wedge"
p77.CFrame = CFrame.new(2.69999946e-005, -11.9557362, 1.02495766, -1, 8.82909745e-008, -9.99014986e-008, 1.1934894e-007, 0.258819342, -0.965927422, -5.94261955e-008, -0.965927422, -0.258819282)
p77.CanCollide = false
p77.Locked = true
p77.FormFactor = Enum.FormFactor.Custom
p77.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("SpecialMesh", p77)
b77.MeshType = Enum.MeshType.Wedge
b77.Name = "Mesh"
b77.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p78 = Instance.new("WedgePart", m8)
p78.BrickColor = BrickColor.new("Really red")
p78.Material = Enum.Material.Neon
p78.Reflectance = 0.40000000596046
p78.Name = "Wedge"
p78.CFrame = CFrame.new(2.69999946e-005, -11.8602781, -0.161903143, -1, 8.14764078e-008, 5.27443866e-009, 2.29101609e-008, 0.342020273, -0.939694166, -7.83668526e-008, -0.939694166, -0.342020243)
p78.CanCollide = false
p78.Locked = true
p78.FormFactor = Enum.FormFactor.Custom
p78.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("SpecialMesh", p78)
b78.MeshType = Enum.MeshType.Wedge
b78.Name = "Mesh"
b78.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p79 = Instance.new("WedgePart", m8)
p79.BrickColor = BrickColor.new("Really red")
p79.Material = Enum.Material.Neon
p79.Reflectance = 0.40000000596046
p79.Name = "Wedge"
p79.CFrame = CFrame.new(2.69999964e-005, -11.9133091, 0.0700842142, 1, -1.68899177e-007, 5.27444577e-009, -5.28105097e-008, -0.342020273, -0.939694166, 1.60517516e-007, 0.939694166, -0.342020243)
p79.CanCollide = false
p79.Locked = true
p79.FormFactor = Enum.FormFactor.Custom
p79.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p79)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(0.334640861, 0.535425484, 0.401569068)
p80 = Instance.new("WedgePart", m8)
p80.BrickColor = BrickColor.new("Really black")
p80.Material = Enum.Material.Metal
p80.Reflectance = 0.40000000596046
p80.Name = "Wedge"
p80.CFrame = CFrame.new(2.69999964e-005, -11.9147787, 1.51684833, -1, 1.58138e-008, 2.8589703e-008, 3.25942473e-008, 0.422618747, 0.906309128, 2.24968311e-009, 0.906309128, -0.422618806)
p80.CanCollide = false
p80.Locked = true
p80.FormFactor = Enum.FormFactor.Custom
p80.Size = Vector3.new(0.220499977, 0.324668586, 0.220499977)
p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b80 = Instance.new("SpecialMesh", p80)
b80.MeshType = Enum.MeshType.Wedge
b80.Name = "Mesh"
b80.Scale = Vector3.new(0.267712682, 1, 0.133856341)
p81 = Instance.new("WedgePart", m8)
p81.BrickColor = BrickColor.new("Really red")
p81.Material = Enum.Material.Neon
p81.Reflectance = 0.40000000596046
p81.Name = "Wedge"
p81.CFrame = CFrame.new(2.69999964e-005, -11.8880205, -0.00143384933, 1, -8.62400285e-008, 8.88349216e-009, 2.11481286e-008, 0.342020214, 0.939694047, -8.40776266e-008, -0.939694047, 0.342020124)
p81.CanCollide = false
p81.Locked = true
p81.FormFactor = Enum.FormFactor.Custom
p81.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b81 = Instance.new("SpecialMesh", p81)
b81.MeshType = Enum.MeshType.Wedge
b81.Name = "Mesh"
b81.Scale = Vector3.new(0.334640861, 0.267712742, 0.401569068)
p82 = Instance.new("WedgePart", m8)
p82.BrickColor = BrickColor.new("Really black")
p82.Material = Enum.Material.Metal
p82.Reflectance = 0.40000000596046
p82.Name = "Wedge"
p82.CFrame = CFrame.new(2.69999964e-005, -11.1964474, 1.88168073, 1, -2.43563321e-008, -1.04780362e-007, -1.2949517e-008, 0.939693809, -0.342020929, 1.06791781e-007, 0.342020839, 0.939693809)
p82.CanCollide = false
p82.Locked = true
p82.FormFactor = Enum.FormFactor.Custom
p82.Size = Vector3.new(0.220499977, 0.314338177, 0.220499977)
p82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b82 = Instance.new("SpecialMesh", p82)
b82.MeshType = Enum.MeshType.Wedge
b82.Name = "Mesh"
b82.Scale = Vector3.new(0.261019886, 1, 0.307869673)
p83 = Instance.new("WedgePart", m8)
p83.BrickColor = BrickColor.new("Really black")
p83.Material = Enum.Material.Metal
p83.Reflectance = 0.40000000596046
p83.Name = "Wedge"
p83.CFrame = CFrame.new(2.69999982e-005, -11.1028252, 1.9750396, -1, -2.43563356e-008, 1.73575856e-008, -1.695091e-008, 0.939693809, 0.342020959, -2.46411389e-008, 0.34202081, -0.939693809)
p83.CanCollide = false
p83.Locked = true
p83.FormFactor = Enum.FormFactor.Custom
p83.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b83 = Instance.new("SpecialMesh", p83)
b83.MeshType = Enum.MeshType.Wedge
b83.Name = "Mesh"
b83.Scale = Vector3.new(0.261019886, 0.337987304, 0.204131007)
p84 = Instance.new("WedgePart", m8)
p84.BrickColor = BrickColor.new("Really red")
p84.Material = Enum.Material.Neon
p84.Reflectance = 0.40000000596046
p84.Name = "Wedge"
p84.CFrame = CFrame.new(2.69999964e-005, -11.9309464, 0.202805281, -1, -1.18273746e-009, 8.8834895e-009, 8.75221495e-009, -0.342020243, 0.939694047, 1.92697125e-009, 0.939694047, 0.342020094)
p84.CanCollide = false
p84.Locked = true
p84.FormFactor = Enum.FormFactor.Custom
p84.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b84 = Instance.new("SpecialMesh", p84)
b84.MeshType = Enum.MeshType.Wedge
b84.Name = "Mesh"
b84.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p85 = Instance.new("WedgePart", m8)
p85.BrickColor = BrickColor.new("Really black")
p85.Material = Enum.Material.Metal
p85.Reflectance = 0.40000000596046
p85.Name = "Wedge"
p85.CFrame = CFrame.new(2.69999964e-005, -11.7129288, 1.75927424, -1, -2.76164442e-008, 9.79634507e-009, -1.16697887e-008, 0.681997418, 0.731356382, -2.68784923e-008, 0.731356263, -0.681997478)
p85.CanCollide = false
p85.Locked = true
p85.FormFactor = Enum.FormFactor.Custom
p85.Size = Vector3.new(0.220499977, 0.324668586, 0.220499977)
p85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b85 = Instance.new("SpecialMesh", p85)
b85.MeshType = Enum.MeshType.Wedge
b85.Name = "Mesh"
b85.Scale = Vector3.new(0.267712682, 1, 0.264366329)
p86 = Instance.new("WedgePart", m8)
p86.BrickColor = BrickColor.new("Really red")
p86.Material = Enum.Material.Neon
p86.Reflectance = 0.40000000596046
p86.Name = "Wedge"
p86.CFrame = CFrame.new(2.7e-005, -11.9805536, 1.1176064, -1, -8.68188743e-010, 1.24787238e-008, 1.22781785e-008, -0.258819252, 0.965927005, 2.39117615e-009, 0.965927005, 0.258819193)
p86.CanCollide = false
p86.Locked = true
p86.FormFactor = Enum.FormFactor.Custom
p86.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b86 = Instance.new("SpecialMesh", p86)
b86.MeshType = Enum.MeshType.Wedge
b86.Name = "Mesh"
b86.Scale = Vector3.new(0.334640861, 0.602353632, 0.133856341)
p87 = Instance.new("WedgePart", m8)
p87.BrickColor = BrickColor.new("Really red")
p87.Material = Enum.Material.Neon
p87.Reflectance = 0.40000000596046
p87.Name = "Wedge"
p87.CFrame = CFrame.new(2.69999982e-005, -11.8886356, 0.251966357, -1, 8.14764007e-008, 5.27445554e-009, 2.29101431e-008, 0.342020154, -0.939693749, -7.83667886e-008, -0.939693749, -0.342020094)
p87.CanCollide = false
p87.Locked = true
p87.FormFactor = Enum.FormFactor.Custom
p87.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b87 = Instance.new("SpecialMesh", p87)
b87.MeshType = Enum.MeshType.Wedge
b87.Name = "Mesh"
b87.Scale = Vector3.new(0.334640861, 0.267712742, 0.334640861)
p88 = Instance.new("WedgePart", m8)
p88.BrickColor = BrickColor.new("Really red")
p88.Material = Enum.Material.Neon
p88.Reflectance = 0.40000000596046
p88.Name = "Wedge"
p88.CFrame = CFrame.new(2.7e-005, -11.869071, 0.470699608, -1, 8.14764007e-008, 5.27445554e-009, 2.29101431e-008, 0.342020154, -0.939693749, -7.83667886e-008, -0.939693749, -0.342020094)
p88.CanCollide = false
p88.Locked = true
p88.FormFactor = Enum.FormFactor.Custom
p88.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b88 = Instance.new("SpecialMesh", p88)
b88.MeshType = Enum.MeshType.Wedge
b88.Name = "Mesh"
b88.Scale = Vector3.new(0.334640861, 0.602353632, 0.267712682)
p89 = Instance.new("WedgePart", m8)
p89.BrickColor = BrickColor.new("Really red")
p89.Material = Enum.Material.Neon
p89.Reflectance = 0.40000000596046
p89.Name = "Wedge"
p89.CFrame = CFrame.new(2.69999982e-005, -11.9583426, -0.0893729925, -1, -1.18272325e-009, 8.88348239e-009, 8.75221673e-009, -0.342020214, 0.93969357, 1.92696215e-009, 0.93969357, 0.342020154)
p89.CanCollide = false
p89.Locked = true
p89.FormFactor = Enum.FormFactor.Custom
p89.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b89 = Instance.new("SpecialMesh", p89)
b89.MeshType = Enum.MeshType.Wedge
b89.Name = "Mesh"
b89.Scale = Vector3.new(0.334640861, 0.803138077, 0.133856341)
p90 = Instance.new("WedgePart", m8)
p90.BrickColor = BrickColor.new("Really red")
p90.Material = Enum.Material.Neon
p90.Reflectance = 0.40000000596046
p90.Name = "Wedge"
p90.CFrame = CFrame.new(2.69999982e-005, -11.8805695, 0.729635715, 1, -3.05929149e-008, 8.75114452e-008, -8.45121022e-008, 0.0871560574, 0.996195555, -3.81037033e-008, -0.996195555, 0.0871560574)
p90.CanCollide = false
p90.Locked = true
p90.FormFactor = Enum.FormFactor.Custom
p90.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b90 = Instance.new("SpecialMesh", p90)
b90.MeshType = Enum.MeshType.Wedge
b90.Name = "Mesh"
b90.Scale = Vector3.new(0.334640861, 0.267712742, 0.401569068)
p91 = Instance.new("WedgePart", m8)
p91.BrickColor = BrickColor.new("Really black")
p91.Material = Enum.Material.Metal
p91.Reflectance = 0.40000000596046
p91.Name = "Wedge"
p91.CFrame = CFrame.new(2.69999982e-005, -11.2718382, 1.82602453, -1, 1.16832744e-007, -9.28606454e-008, -1.69508567e-008, -0.707107246, -0.707107663, -1.4827576e-007, -0.707107663, 0.707107246)
p91.CanCollide = false
p91.Locked = true
p91.FormFactor = Enum.FormFactor.Custom
p91.Size = Vector3.new(0.220499977, 0.401408434, 0.220499977)
p91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b91 = Instance.new("SpecialMesh", p91)
b91.MeshType = Enum.MeshType.Wedge
b91.Name = "Mesh"
b91.Scale = Vector3.new(0.267712682, 1, 0.200784534)
p92 = Instance.new("WedgePart", m8)
p92.BrickColor = BrickColor.new("Really red")
p92.Material = Enum.Material.Neon
p92.Reflectance = 0.40000000596046
p92.Name = "Wedge"
p92.CFrame = CFrame.new(2.69999982e-005, -11.984252, 1.01731598, -1, -8.68163763e-010, 1.24787114e-008, 1.22781865e-008, -0.258819163, 0.965926766, 2.39115083e-009, 0.965926766, 0.258819163)
p92.CanCollide = false
p92.Locked = true
p92.FormFactor = Enum.FormFactor.Custom
p92.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b92 = Instance.new("SpecialMesh", p92)
b92.MeshType = Enum.MeshType.Wedge
b92.Name = "Mesh"
b92.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p93 = Instance.new("WedgePart", m8)
p93.BrickColor = BrickColor.new("Really red")
p93.Material = Enum.Material.Neon
p93.Reflectance = 0.40000000596046
p93.Name = "Wedge"
p93.CFrame = CFrame.new(2.69999964e-005, -11.9214983, 0.99980092, 1, -8.93497187e-008, 2.29101715e-008, -2.29101325e-008, 2.98023224e-007, 1.00000083, -8.9349804e-008, -1.00000083, 2.98023224e-007)
p93.CanCollide = false
p93.Locked = true
p93.FormFactor = Enum.FormFactor.Custom
p93.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b93 = Instance.new("SpecialMesh", p93)
b93.MeshType = Enum.MeshType.Wedge
b93.Name = "Mesh"
b93.Scale = Vector3.new(0.334640861, 0.870066345, 0.133856341)
p94 = Instance.new("WedgePart", m8)
p94.BrickColor = BrickColor.new("Really red")
p94.Material = Enum.Material.Neon
p94.Reflectance = 0.40000000596046
p94.Name = "Wedge"
p94.CFrame = CFrame.new(2.69999964e-005, -11.9032125, 0.212900162, -1, 8.8605475e-008, -9.63062732e-008, 1.20803207e-007, 0.342020005, -0.93969363, -5.03233366e-008, -0.93969363, -0.342020005)
p94.CanCollide = false
p94.Locked = true
p94.FormFactor = Enum.FormFactor.Custom
p94.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b94 = Instance.new("SpecialMesh", p94)
b94.MeshType = Enum.MeshType.Wedge
b94.Name = "Mesh"
b94.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p95 = Instance.new("WedgePart", m8)
p95.BrickColor = BrickColor.new("Really black")
p95.Material = Enum.Material.Metal
p95.Reflectance = 0.40000000596046
p95.Name = "Wedge"
p95.CFrame = CFrame.new(2.69999964e-005, -11.361845, 1.9233377, -1, -2.94099678e-008, 5.43784395e-009, -1.69508834e-008, 0.707107186, 0.707107663, -2.46411602e-008, 0.707107663, -0.707107186)
p95.CanCollide = false
p95.Locked = true
p95.FormFactor = Enum.FormFactor.Custom
p95.Size = Vector3.new(0.220499977, 0.391078025, 0.222102806)
p95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b95 = Instance.new("SpecialMesh", p95)
b95.MeshType = Enum.MeshType.Wedge
b95.Name = "Mesh"
b95.Scale = Vector3.new(0.261019886, 1, 1)
p96 = Instance.new("WedgePart", m8)
p96.BrickColor = BrickColor.new("Really red")
p96.Material = Enum.Material.Neon
p96.Reflectance = 0.40000000596046
p96.Name = "Wedge"
p96.CFrame = CFrame.new(2.69999982e-005, -11.9530287, 1.26521814, -1, -3.29206387e-008, 2.51881929e-008, 1.58094231e-008, 0.258819431, 0.965926588, -3.83181202e-008, 0.965926588, -0.258819431)
p96.CanCollide = false
p96.Locked = true
p96.FormFactor = Enum.FormFactor.Custom
p96.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b96 = Instance.new("SpecialMesh", p96)
b96.MeshType = Enum.MeshType.Wedge
b96.Name = "Mesh"
b96.Scale = Vector3.new(0.334640861, 0.736209989, 0.133856341)
p97 = Instance.new("WedgePart", m8)
p97.BrickColor = BrickColor.new("Really red")
p97.Material = Enum.Material.Neon
p97.Reflectance = 0.40000000596046
p97.Name = "Wedge"
p97.CFrame = CFrame.new(2.69999964e-005, -11.9457083, -0.210409045, -1, -1.18269794e-009, 8.88346818e-009, 8.75222206e-009, -0.342020214, 0.939693332, 1.92694349e-009, 0.939693332, 0.342020214)
p97.CanCollide = false
p97.Locked = true
p97.FormFactor = Enum.FormFactor.Custom
p97.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b97 = Instance.new("SpecialMesh", p97)
b97.MeshType = Enum.MeshType.Wedge
b97.Name = "Mesh"
b97.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p98 = Instance.new("WedgePart", m8)
p98.BrickColor = BrickColor.new("Really red")
p98.Material = Enum.Material.Neon
p98.Reflectance = 0.40000000596046
p98.Name = "Wedge"
p98.CFrame = CFrame.new(2.7e-005, -11.9322329, 0.816780686, 1, -1.68899135e-007, 5.27447064e-009, -5.2810492e-008, -0.342020094, -0.939693272, 1.60517359e-007, 0.939693272, -0.342020094)
p98.CanCollide = false
p98.Locked = true
p98.FormFactor = Enum.FormFactor.Custom
p98.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b98 = Instance.new("SpecialMesh", p98)
b98.MeshType = Enum.MeshType.Wedge
b98.Name = "Mesh"
b98.Scale = Vector3.new(0.334640861, 0.669281721, 0.267712682)
p99 = Instance.new("WedgePart", m8)
p99.BrickColor = BrickColor.new("Really red")
p99.Material = Enum.Material.Neon
p99.Reflectance = 0.40000000596046
p99.Name = "Wedge"
p99.CFrame = CFrame.new(2.69999982e-005, -11.9055624, 1.3254329, -1, -3.49906557e-008, 2.22318874e-008, 1.58180669e-008, 0.173648253, 0.984808207, -3.83196053e-008, 0.984808207, -0.173648253)
p99.CanCollide = false
p99.Locked = true
p99.FormFactor = Enum.FormFactor.Custom
p99.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b99 = Instance.new("SpecialMesh", p99)
b99.MeshType = Enum.MeshType.Wedge
b99.Name = "Mesh"
b99.Scale = Vector3.new(0.334640861, 0.803138077, 0.133856341)
p100 = Instance.new("WedgePart", m8)
p100.BrickColor = BrickColor.new("Really red")
p100.Material = Enum.Material.Neon
p100.Reflectance = 0.40000000596046
p100.Name = "Wedge"
p100.CFrame = CFrame.new(2.69999982e-005, -11.9114323, 1.08247674, -1, 1.18015713e-007, 8.75114381e-008, 7.68926611e-008, -0.0871561319, 0.996195078, 1.2519385e-007, 0.996195078, 0.0871561319)
p100.CanCollide = false
p100.Locked = true
p100.FormFactor = Enum.FormFactor.Custom
p100.Size = Vector3.new(0.220499977, 0.236122593, 0.220499977)
p100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b100 = Instance.new("SpecialMesh", p100)
b100.MeshType = Enum.MeshType.Wedge
b100.Name = "Mesh"
b100.Scale = Vector3.new(0.334640861, 1, 0.133856341)
p101 = Instance.new("WedgePart", m8)
p101.BrickColor = BrickColor.new("Really red")
p101.Material = Enum.Material.Neon
p101.Reflectance = 0.40000000596046
p101.Name = "Wedge"
p101.CFrame = CFrame.new(2.69999982e-005, -11.8602819, 0.575987279, -1, 8.14763652e-008, 5.27446709e-009, 2.29101644e-008, 0.342020035, -0.939693093, -7.83667531e-008, -0.939693093, -0.342020035)
p101.CanCollide = false
p101.Locked = true
p101.FormFactor = Enum.FormFactor.Custom
p101.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b101 = Instance.new("SpecialMesh", p101)
b101.MeshType = Enum.MeshType.Wedge
b101.Name = "Mesh"
b101.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p102 = Instance.new("WedgePart", m8)
p102.BrickColor = BrickColor.new("Really red")
p102.Material = Enum.Material.Neon
p102.Reflectance = 0.40000000596046
p102.Name = "Wedge"
p102.CFrame = CFrame.new(2.69999982e-005, -11.8709736, -0.283571124, -1, 8.14763652e-008, 5.27447064e-009, 2.29101609e-008, 0.342020035, -0.939693093, -7.83667531e-008, -0.939693093, -0.342020035)
p102.CanCollide = false
p102.Locked = true
p102.FormFactor = Enum.FormFactor.Custom
p102.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b102 = Instance.new("SpecialMesh", p102)
b102.MeshType = Enum.MeshType.Wedge
b102.Name = "Mesh"
b102.Scale = Vector3.new(0.334640861, 0.736209989, 0.334640861)
p103 = Instance.new("WedgePart", m8)
p103.BrickColor = BrickColor.new("Really red")
p103.Material = Enum.Material.Neon
p103.Reflectance = 0.40000000596046
p103.Name = "Wedge"
p103.CFrame = CFrame.new(2.69999982e-005, -11.9097681, 0.739346266, 1, -8.65546141e-008, 1.24786919e-008, 1.03484972e-008, 0.258819103, 0.965926111, -8.68351009e-008, -0.965926111, 0.258819103)
p103.CanCollide = false
p103.Locked = true
p103.FormFactor = Enum.FormFactor.Custom
p103.Size = Vector3.new(0.220499977, 0.221364915, 0.220499977)
p103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b103 = Instance.new("SpecialMesh", p103)
b103.MeshType = Enum.MeshType.Wedge
b103.Name = "Mesh"
b103.Scale = Vector3.new(0.334640861, 1, 0.133856341)
p104 = Instance.new("WedgePart", m8)
p104.BrickColor = BrickColor.new("Really red")
p104.Material = Enum.Material.Neon
p104.Reflectance = 0.40000000596046
p104.Name = "Wedge"
p104.CFrame = CFrame.new(2.69999964e-005, -11.9271755, 0.55203414, 1, -1.68899149e-007, 5.27447863e-009, -5.28104778e-008, -0.342019916, -0.939692855, 1.60517274e-007, 0.939692855, -0.342019916)
p104.CanCollide = false
p104.Locked = true
p104.FormFactor = Enum.FormFactor.Custom
p104.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b104 = Instance.new("SpecialMesh", p104)
b104.MeshType = Enum.MeshType.Wedge
b104.Name = "Mesh"
b104.Scale = Vector3.new(0.334640861, 0.535425484, 0.267712682)
p105 = Instance.new("WedgePart", m8)
p105.BrickColor = BrickColor.new("Really black")
p105.Material = Enum.Material.Metal
p105.Reflectance = 0.40000000596046
p105.Name = "Wedge"
p105.CFrame = CFrame.new(2.69999982e-005, -11.3177481, 1.88445807, -1, -2.94099785e-008, 5.43784395e-009, -1.69508549e-008, 0.707106531, 0.707107127, -2.46411282e-008, 0.707107127, -0.707106531)
p105.CanCollide = false
p105.Locked = true
p105.FormFactor = Enum.FormFactor.Custom
p105.Size = Vector3.new(0.220499977, 0.383699238, 0.220499977)
p105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b105 = Instance.new("SpecialMesh", p105)
b105.MeshType = Enum.MeshType.Wedge
b105.Name = "Mesh"
b105.Scale = Vector3.new(0.267712682, 1, 0.468497276)
p106 = Instance.new("WedgePart", m8)
p106.BrickColor = BrickColor.new("Really red")
p106.Material = Enum.Material.Neon
p106.Reflectance = 0.40000000596046
p106.Name = "Wedge"
p106.CFrame = CFrame.new(2.69999964e-005, -11.8602819, 0.325106204, -1, 8.14763723e-008, 5.27446709e-009, 2.29101538e-008, 0.342019886, -0.939692736, -7.83667247e-008, -0.939692736, -0.342019886)
p106.CanCollide = false
p106.Locked = true
p106.FormFactor = Enum.FormFactor.Custom
p106.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b106 = Instance.new("SpecialMesh", p106)
b106.MeshType = Enum.MeshType.Wedge
b106.Name = "Mesh"
b106.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p107 = Instance.new("WedgePart", m8)
p107.BrickColor = BrickColor.new("Really red")
p107.Material = Enum.Material.Neon
p107.Reflectance = 0.40000000596046
p107.Name = "Wedge"
p107.CFrame = CFrame.new(2.69999982e-005, -11.9731445, 1.13999915, 1, -8.93497187e-008, 2.29101502e-008, -2.29101129e-008, 3.87430248e-007, 1, -8.93497258e-008, -1, 3.87430276e-007)
p107.CanCollide = false
p107.Locked = true
p107.FormFactor = Enum.FormFactor.Custom
p107.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b107 = Instance.new("SpecialMesh", p107)
b107.MeshType = Enum.MeshType.Wedge
b107.Name = "Mesh"
b107.Scale = Vector3.new(0.334640861, 0.468497276, 0.133856341)
p108 = Instance.new("WedgePart", m8)
p108.BrickColor = BrickColor.new("Black")
p108.Material = Enum.Material.Metal
p108.Reflectance = 0.40000000596046
p108.Name = "Wedge"
p108.CFrame = CFrame.new(2.69999982e-005, -12.0124025, 1.01832807, 1, 3.82198948e-008, 2.11711555e-008, -2.11711537e-008, -2.98023224e-008, 1, 3.82198913e-008, -1, -2.98023224e-008)
p108.CanCollide = false
p108.Locked = true
p108.FormFactor = Enum.FormFactor.Custom
p108.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b108 = Instance.new("SpecialMesh", p108)
b108.MeshType = Enum.MeshType.Wedge
b108.Name = "Mesh"
b108.Scale = Vector3.new(0.267712682, 0.669281721, 0.0669281706)
p109 = Instance.new("WedgePart", m8)
p109.BrickColor = BrickColor.new("Really red")
p109.Material = Enum.Material.Neon
p109.Reflectance = 0.40000000596046
p109.Name = "Wedge"
p109.CFrame = CFrame.new(2.7e-005, -11.9461164, 0.330772072, -1, -1.18270771e-009, 8.88346818e-009, 8.75223805e-009, -0.342019796, 0.939692795, 1.92694571e-009, 0.939692795, 0.342019796)
p109.CanCollide = false
p109.Locked = true
p109.FormFactor = Enum.FormFactor.Custom
p109.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b109 = Instance.new("SpecialMesh", p109)
b109.MeshType = Enum.MeshType.Wedge
b109.Name = "Mesh"
b109.Scale = Vector3.new(0.334640861, 0.870066345, 0.133856341)
p110 = Instance.new("WedgePart", m8)
p110.BrickColor = BrickColor.new("Really red")
p110.Material = Enum.Material.Neon
p110.Reflectance = 0.40000000596046
p110.Name = "Wedge"
p110.CFrame = CFrame.new(2.69999982e-005, -11.8880196, 0.565889001, -1, 5.94638294e-009, -9.26972632e-008, -8.91407268e-008, -0.342019916, 0.939692736, -2.61165312e-008, 0.939692736, 0.342019916)
p110.CanCollide = false
p110.Locked = true
p110.FormFactor = Enum.FormFactor.Custom
p110.Size = Vector3.new(0.220499977, 0.220499977, 0.220499977)
p110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b110 = Instance.new("SpecialMesh", p110)
b110.MeshType = Enum.MeshType.Wedge
b110.Name = "Mesh"
b110.Scale = Vector3.new(0.334640861, 0.267712742, 0.133856341)
p111 = Instance.new("Part", m8)
p111.BrickColor = BrickColor.new("Really black")
p111.Material = Enum.Material.Metal
p111.Transparency = 1
p111.Name = "Hitbox"
p111.CFrame = CFrame.new(2.7e-005, -11.550066, 0.678469002, 1, -4.08900576e-008, -5.9526446e-008, -5.9526446e-008, 0, -1, 4.08900576e-008, 1, -2.43403981e-015)
p111.CanCollide = false
p111.Locked = true
p111.FormFactor = Enum.FormFactor.Custom
p111.Size = Vector3.new(0.22, 2.57, 1.22)
p111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b111 = Instance.new("BlockMesh", p111)
b111.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Block_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-2.69832744e-005, -0.186136514, 1.51893806, 1, -1.84926652e-008, -5.47947643e-009, -1.44443195e-008, -0.906307817, 0.4226183, -1.2781431e-008, -0.42261833, -0.906307876)
w1.Part1 = p2
w1.C1 = CFrame.new(-2.69930079e-005, 0.251219004, 0.42801699, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w2 = Instance.new("Weld", p2)
w2.Name = "Block_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-2.69930079e-005, 0.251219004, 0.42801699, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w2.Part1 = p3
w2.C1 = CFrame.new(-2.69900993e-005, 0.251215994, 0.959293008, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w3 = Instance.new("Weld", p3)
w3.Name = "Block_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-2.69900993e-005, 0.251215994, 0.959293008, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w3.Part1 = p4
w3.C1 = CFrame.new(-2.69401171e-005, 1.28190136, 0.0890034437, 1, -5.93262826e-008, 3.3261891e-008, -4.3058467e-008, -0.173648134, 0.984807849, -5.26491242e-008, -0.984807849, -0.173648119)
w4 = Instance.new("Weld", p4)
w4.Name = "Block_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-2.69401171e-005, 1.28190136, 0.0890034437, 1, -5.93262826e-008, 3.3261891e-008, -4.3058467e-008, -0.173648134, 0.984807849, -5.26491242e-008, -0.984807849, -0.173648119)
w4.Part1 = p5
w4.C1 = CFrame.new(-2.69969169e-005, 0.137085795, -0.374426812, 1, -1.85013622e-008, -5.47535173e-009, -1.92582732e-008, -0.939692676, -0.342020124, 1.18268995e-009, 0.342020094, -0.939692676)
w5 = Instance.new("Weld", p5)
w5.Name = "Block_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-2.69969169e-005, 0.137085795, -0.374426812, 1, -1.85013622e-008, -5.47535173e-009, -1.92582732e-008, -0.939692676, -0.342020124, 1.18268995e-009, 0.342020094, -0.939692676)
w5.Part1 = p6
w5.C1 = CFrame.new(-2.69537759e-005, 0.678798974, 0.310245991, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w6 = Instance.new("Weld", p6)
w6.Name = "Block_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-2.69537759e-005, 0.678798974, 0.310245991, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w6.Part1 = p7
w6.C1 = CFrame.new(-2.69908196e-005, 0.433371782, 0.833767056, 1, -2.22994831e-008, -5.07635534e-009, -2.28535058e-008, -0.965925813, -0.258819252, 8.68153105e-010, 0.258819252, -0.965925813)
w7 = Instance.new("Weld", p7)
w7.Name = "Block_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-2.69908196e-005, 0.433371782, 0.833767056, 1, -2.22994831e-008, -5.07635534e-009, -2.28535058e-008, -0.965925813, -0.258819252, 8.68153105e-010, 0.258819252, -0.965925813)
w7.Part1 = p8
w7.C1 = CFrame.new(-2.69945249e-005, 0.284905016, 0.00881863385, 1, -1.85013658e-008, -5.47534995e-009, -1.92582768e-008, -0.939692736, -0.342019945, 1.1826895e-009, 0.342019945, -0.939692736)
w8 = Instance.new("Weld", p8)
w8.Name = "Block_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-2.69945249e-005, 0.284905016, 0.00881863385, 1, -1.85013658e-008, -5.47534995e-009, -1.92582768e-008, -0.939692736, -0.342019945, 1.1826895e-009, 0.342019945, -0.939692736)
w8.Part1 = p9
w8.C1 = CFrame.new(-2.6987369e-005, 0.398795992, 0.959297001, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w9 = Instance.new("Weld", p9)
w9.Name = "Block_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-2.6987369e-005, 0.398795992, 0.959297001, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w9.Part1 = p10
w9.C1 = CFrame.new(-2.69795964e-005, -0.736729562, 1.60363591, 1, -1.84926936e-008, -5.47947465e-009, -9.20173093e-009, -0.70710659, 0.707107067, -1.69508851e-008, -0.707107008, -0.707106531)
w10 = Instance.new("Weld", p10)
w10.Name = "Circle_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-2.69795964e-005, -0.736729562, 1.60363591, 1, -1.84926936e-008, -5.47947465e-009, -9.20173093e-009, -0.70710659, 0.707107067, -1.69508851e-008, -0.707107008, -0.707106531)
w10.Part1 = p11
w10.C1 = CFrame.new(-2.69700085e-005, 0.582876027, 0.487334013, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w11 = Instance.new("Weld", p11)
w11.Name = "Block_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-2.69700085e-005, 0.582876027, 0.487334013, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w11.Part1 = p12
w11.C1 = CFrame.new(-2.70516502e-005, -0.478946328, -0.541931212, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w12 = Instance.new("Weld", p12)
w12.Name = "Block_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-2.70516502e-005, -0.478946328, -0.541931212, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w12.Part1 = p13
w12.C1 = CFrame.new(-2.69418342e-005, 1.23103857, 0.0979698896, 1, -5.93262826e-008, 3.3261891e-008, -4.3058467e-008, -0.173648134, 0.984807849, -5.26491242e-008, -0.984807849, -0.173648119)
w13 = Instance.new("Weld", p13)
w13.Name = "Block_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-2.69418342e-005, 1.23103857, 0.0979698896, 1, -5.93262826e-008, 3.3261891e-008, -4.3058467e-008, -0.173648134, 0.984807849, -5.26491242e-008, -0.984807849, -0.173648119)
w13.Part1 = p14
w13.C1 = CFrame.new(-2.6981159e-005, -0.784118533, 1.59557724, 1, -1.85013231e-008, -5.47617596e-009, -9.79630865e-009, -0.731355369, 0.681996644, -1.6622872e-008, -0.681996644, -0.731355369)
w14 = Instance.new("Weld", p14)
w14.Name = "Block_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-2.6981159e-005, -0.784118533, 1.59557724, 1, -1.85013231e-008, -5.47617596e-009, -9.79630865e-009, -0.731355369, 0.681996644, -1.6622872e-008, -0.681996644, -0.731355369)
w14.Part1 = p15
w14.C1 = CFrame.new(-2.69917327e-005, 0.398790002, 0.162386, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w15 = Instance.new("Weld", p15)
w15.Name = "Handle_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-2.69917327e-005, 0.398790002, 0.162386, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w15.Part1 = p16
w15.C1 = CFrame.new(-2.69356715e-005, 1.12153399, 0.310250998, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w16 = Instance.new("Weld", p16)
w16.Name = "Block_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-2.69356715e-005, 1.12153399, 0.310250998, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w16.Part1 = p17
w16.C1 = CFrame.new(-2.69897973e-005, 0.238820702, 1.16951191, 1, -3.32849588e-008, -1.92696081e-009, -3.32849588e-008, -1, -5.96046448e-007, -1.92694105e-009, 5.96046448e-007, -1)
w17 = Instance.new("Weld", p17)
w17.Name = "Block_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-2.69897973e-005, 0.238820702, 1.16951191, 1, -3.32849588e-008, -1.92696081e-009, -3.32849588e-008, -1, -5.96046448e-007, -1.92694105e-009, 5.96046448e-007, -1)
w17.Part1 = p18
w17.C1 = CFrame.new(-2.66556708e-005, -0.120330438, -1.77344465, 1, -1.30568679e-007, 1.80827243e-007, -9.71847456e-008, -0.984807849, -0.173648149, 2.00753092e-007, 0.173648149, -0.984807849)
w18 = Instance.new("Weld", p18)
w18.Name = "Block_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-2.66556708e-005, -0.120330438, -1.77344465, 1, -1.30568679e-007, 1.80827243e-007, -9.71847456e-008, -0.984807849, -0.173648149, 2.00753092e-007, 0.173648149, -0.984807849)
w18.Part1 = p19
w18.C1 = CFrame.new(-2.69959182e-005, 0.251221001, -0.103256002, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w19 = Instance.new("Weld", p19)
w19.Name = "Block_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-2.69959182e-005, 0.251221001, -0.103256002, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w19.Part1 = p20
w19.C1 = CFrame.new(-2.69467728e-005, 0.96053493, 0.227395192, 1, -5.95928924e-008, 3.70716009e-008, -4.21243946e-008, -0.0871557295, 0.99619472, -5.6135125e-008, -0.99619472, -0.0871557295)
w20 = Instance.new("Weld", p20)
w20.Name = "Block_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-2.69467728e-005, 0.96053493, 0.227395192, 1, -5.95928924e-008, 3.70716009e-008, -4.21243946e-008, -0.0871557295, 0.99619472, -5.6135125e-008, -0.99619472, -0.0871557295)
w20.Part1 = p21
w20.C1 = CFrame.new(-2.69068951e-005, 0.768746018, 1.55135453, 1, -5.95264353e-008, 4.08900647e-008, 1.93162606e-008, 0.766044378, 0.642787635, -6.95864628e-008, -0.642787635, 0.766044378)
w21 = Instance.new("Weld", p21)
w21.Name = "Block_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-2.69068951e-005, 0.768746018, 1.55135453, 1, -5.95264353e-008, 4.08900647e-008, 1.93162606e-008, 0.766044378, 0.642787635, -6.95864628e-008, -0.642787635, 0.766044378)
w21.Part1 = p22
w21.C1 = CFrame.new(-2.69946413e-005, 0.398795009, -0.368889004, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w22 = Instance.new("Weld", p22)
w22.Name = "Block_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-2.69946413e-005, 0.398795009, -0.368889004, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w22.Part1 = p23
w22.C1 = CFrame.new(-2.69552838e-005, 0.641906977, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w23 = Instance.new("Weld", p23)
w23.Name = "Block_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-2.69552838e-005, 0.641906977, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w23.Part1 = p24
w23.C1 = CFrame.new(-2.69185657e-005, 1.24407315, -1.15251172, 1, -5.95250427e-008, 4.08918623e-008, -7.1883612e-008, -0.766044438, 0.642787635, -6.93698077e-009, -0.642787635, -0.766044438)
w24 = Instance.new("Weld", p24)
w24.Name = "Block_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-2.69185657e-005, 1.24407315, -1.15251172, 1, -5.95250427e-008, 4.08918623e-008, -7.1883612e-008, -0.766044438, 0.642787635, -6.93698077e-009, -0.642787635, -0.766044438)
w24.Part1 = p25
w24.C1 = CFrame.new(-2.69163629e-005, 1.59377503, 0.310250014, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w25 = Instance.new("Weld", p25)
w25.Name = "Block_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-2.69163629e-005, 1.59377503, 0.310250014, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w25.Part1 = p26
w25.C1 = CFrame.new(-2.69902794e-005, 0.398795992, 0.428018987, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w26 = Instance.new("Weld", p26)
w26.Name = "Block_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-2.69902794e-005, 0.398795992, 0.428018987, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w26.Part1 = p27
w26.C1 = CFrame.new(-2.69587144e-005, 0.835756719, 0.0972530842, 1, -5.87286522e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949752e-008, -0.965925872, -0.258819073)
w27 = Instance.new("Weld", p27)
w27.Name = "Circle_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-2.69587144e-005, 0.835756719, 0.0972530842, 1, -5.87286522e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949752e-008, -0.965925872, -0.258819073)
w27.Part1 = p28
w27.C1 = CFrame.new(-2.69736647e-005, 0.523847997, 0.398797005, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w28 = Instance.new("Weld", p28)
w28.Name = "Block_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-2.69736647e-005, 0.523847997, 0.398797005, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w28.Part1 = p29
w28.C1 = CFrame.new(-2.69856282e-005, -0.269396931, 1.4983108, 1, -1.85013231e-008, -5.47617596e-009, -1.48908761e-008, -0.920505881, 0.39072898, -1.22698536e-008, -0.390728921, -0.920505762)
w29 = Instance.new("Weld", p29)
w29.Name = "Block_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-2.69856282e-005, -0.269396931, 1.4983108, 1, -1.85013231e-008, -5.47617596e-009, -1.48908761e-008, -0.920505881, 0.39072898, -1.22698536e-008, -0.390728921, -0.920505762)
w29.Part1 = p30
w29.C1 = CFrame.new(-2.69419597e-005, 1.38456392, -0.0497993827, 1, -5.87286557e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949787e-008, -0.965925872, -0.258819073)
w30 = Instance.new("Weld", p30)
w30.Name = "Block_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-2.69419597e-005, 1.38456392, -0.0497993827, 1, -5.87286557e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949787e-008, -0.965925872, -0.258819073)
w30.Part1 = p31
w30.C1 = CFrame.new(2.69478169e-005, 0.342279971, -0.842677951, -1, 7.41767252e-008, 3.71994631e-008, -7.71366189e-008, -0.99619472, -0.0871560574, 3.05929575e-008, -0.0871560574, 0.99619472)
w31 = Instance.new("Weld", p31)
w31.Name = "Block_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(2.69478169e-005, 0.342279971, -0.842677951, -1, 7.41767252e-008, 3.71994631e-008, -7.71366189e-008, -0.99619472, -0.0871560574, 3.05929575e-008, -0.0871560574, 0.99619472)
w31.Part1 = p32
w31.C1 = CFrame.new(-2.69236225e-005, 1.26664269, 0.422248751, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w32 = Instance.new("Weld", p32)
w32.Name = "Block_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-2.69236225e-005, 1.26664269, 0.422248751, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w32.Part1 = p33
w32.C1 = CFrame.new(-2.69888242e-005, 0.398795992, 0.693659008, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w33 = Instance.new("Weld", p33)
w33.Name = "Block_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-2.69888242e-005, 0.398795992, 0.693659008, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w33.Part1 = p34
w33.C1 = CFrame.new(-2.6941103e-005, 0.98871398, 0.310249001, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w34 = Instance.new("Weld", p34)
w34.Name = "Block_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-2.6941103e-005, 0.98871398, 0.310249001, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w34.Part1 = p35
w34.C1 = CFrame.new(-2.69199827e-005, 1.505234, 0.310252011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w35 = Instance.new("Weld", p35)
w35.Name = "Block_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(-2.69199827e-005, 1.505234, 0.310252011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w35.Part1 = p36
w35.C1 = CFrame.new(-2.70044802e-005, 0.310245991, -1.86679304, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w36 = Instance.new("Weld", p36)
w36.Name = "Circle_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-2.70044802e-005, 0.310245991, -1.86679304, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w36.Part1 = p37
w36.C1 = CFrame.new(-2.69731972e-005, 0.523847997, 0.428321004, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w37 = Instance.new("Weld", p37)
w37.Name = "Block_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-2.69731972e-005, 0.523847997, 0.428321004, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w37.Part1 = p38
w37.C1 = CFrame.new(-2.69113971e-005, 1.64542603, 0.358211011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w38 = Instance.new("Weld", p38)
w38.Name = "Block_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(-2.69113971e-005, 1.64542603, 0.358211011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w38.Part1 = p39
w38.C1 = CFrame.new(-2.69171051e-005, 1.64542603, 0.262297004, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w39 = Instance.new("Weld", p39)
w39.Name = "Block_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(-2.69171051e-005, 1.64542603, 0.262297004, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w39.Part1 = p40
w39.C1 = CFrame.new(-2.60786092e-005, -1.47300267, -1.1458329, 1, -2.72653097e-007, 4.60701557e-007, 2.62652719e-007, -0.50000006, -0.866025448, 4.66475342e-007, 0.866025448, -0.50000006)
w40 = Instance.new("Weld", p40)
w40.Name = "Block_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(-2.60786092e-005, -1.47300267, -1.1458329, 1, -2.72653097e-007, 4.60701557e-007, 2.62652719e-007, -0.50000006, -0.866025448, 4.66475342e-007, 0.866025448, -0.50000006)
w40.Part1 = p41
w40.C1 = CFrame.new(-2.70310993e-005, -0.393140078, -0.306183338, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w41 = Instance.new("Weld", p41)
w41.Name = "Block_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(-2.70310993e-005, -0.393140078, -0.306183338, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w41.Part1 = p42
w41.C1 = CFrame.new(-2.69543798e-005, 0.664047003, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w42 = Instance.new("Weld", p42)
w42.Name = "Block_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(-2.69543798e-005, 0.664047003, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w42.Part1 = p43
w42.C1 = CFrame.new(-2.69020748e-005, -0.731388211, 1.66569459, 1, -5.95262364e-008, 4.08903134e-008, 6.57224319e-008, 0.984807849, -0.173648149, -2.99324796e-008, 0.173648149, 0.984807849)
w43 = Instance.new("Weld", p43)
w43.Name = "Circle_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(-2.69020748e-005, -0.731388211, 1.66569459, 1, -5.95262364e-008, 4.08903134e-008, 6.57224319e-008, 0.984807849, -0.173648149, -2.99324796e-008, 0.173648149, 0.984807849)
w43.Part1 = p44
w43.C1 = CFrame.new(-2.69724242e-005, 0.641906977, 0.192185998, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w44 = Instance.new("Weld", p44)
w44.Name = "Block_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(-2.69724242e-005, 0.641906977, 0.192185998, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w44.Part1 = p45
w44.C1 = CFrame.new(-2.69912071e-005, -0.226573661, 0.151451379, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w45 = Instance.new("Weld", p45)
w45.Name = "Block_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(-2.69912071e-005, -0.226573661, 0.151451379, 1, -1.31610367e-008, 8.19151467e-008, -1.56492952e-008, 0.939692736, 0.342020065, -8.14764007e-008, -0.342020065, 0.939692736)
w45.Part1 = p46
w45.C1 = CFrame.new(-2.69576976e-005, 0.582874, 0.310245991, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w46 = Instance.new("Weld", p46)
w46.Name = "Block_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(-2.69576976e-005, 0.582874, 0.310245991, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w46.Part1 = p47
w46.C1 = CFrame.new(-2.69175689e-005, 1.56426203, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w47 = Instance.new("Weld", p47)
w47.Name = "Block_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(-2.69175689e-005, 1.56426203, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w47.Part1 = p48
w47.C1 = CFrame.new(-2.69314914e-005, 0.970686257, 0.486187935, 1, -5.83989497e-008, 4.84370801e-008, -3.75603548e-008, 0.17364794, 0.984807789, -6.5922741e-008, -0.984807789, 0.17364794)
w48 = Instance.new("Weld", p48)
w48.Name = "Block_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(-2.69314914e-005, 0.970686257, 0.486187935, 1, -5.83989497e-008, 4.84370801e-008, -3.75603548e-008, 0.17364794, 0.984807789, -6.5922741e-008, -0.984807789, 0.17364794)
w48.Part1 = p49
w48.C1 = CFrame.new(-2.69465017e-005, 0.665479422, 0.432373643, 1, -5.83989532e-008, 4.8437073e-008, -3.75603655e-008, 0.173647717, 0.984807909, -6.5922741e-008, -0.984807909, 0.173647717)
w49 = Instance.new("Weld", p49)
w49.Name = "Block_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(-2.69465017e-005, 0.665479422, 0.432373643, 1, -5.83989532e-008, 4.8437073e-008, -3.75603655e-008, 0.173647717, 0.984807909, -6.5922741e-008, -0.984807909, 0.173647717)
w49.Part1 = p50
w49.C1 = CFrame.new(-2.69885404e-005, 0.14806518, 1.24538279, 1, -1.85012112e-008, -5.4760374e-009, -1.79535409e-008, -0.99619472, 0.0871557295, -7.06768599e-009, -0.0871557295, -0.99619472)
w50 = Instance.new("Weld", p50)
w50.Name = "Block_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(-2.69885404e-005, 0.14806518, 1.24538279, 1, -1.85012112e-008, -5.4760374e-009, -1.79535409e-008, -0.99619472, 0.0871557295, -7.06768599e-009, -0.0871557295, -0.99619472)
w50.Part1 = p51
w50.C1 = CFrame.new(-2.69190059e-005, 1.36955345, 0.431252241, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w51 = Instance.new("Weld", p51)
w51.Name = "Block_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(-2.69190059e-005, 1.36955345, 0.431252241, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w51.Part1 = p52
w51.C1 = CFrame.new(-2.69410284e-005, 1.11489654, 0.213892281, 1, -5.95928924e-008, 3.70716009e-008, -4.21243946e-008, -0.0871557295, 0.99619472, -5.6135125e-008, -0.99619472, -0.0871557295)
w52 = Instance.new("Weld", p52)
w52.Name = "Block_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(-2.69410284e-005, 1.11489654, 0.213892281, 1, -5.95928924e-008, 3.70716009e-008, -4.21243946e-008, -0.0871557295, 0.99619472, -5.6135125e-008, -0.99619472, -0.0871557295)
w52.Part1 = p53
w52.C1 = CFrame.new(-2.69027041e-005, -1.78324997, 0.608468652, 1, -5.95260872e-008, 4.08900078e-008, 6.51748309e-008, 0.500000119, -0.866025329, 3.11060901e-008, 0.866025329, 0.500000119)
w53 = Instance.new("Weld", p53)
w53.Name = "Circle_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(-2.69027041e-005, -1.78324997, 0.608468652, 1, -5.95260872e-008, 4.08900078e-008, 6.51748309e-008, 0.500000119, -0.866025329, 3.11060901e-008, 0.866025329, 0.500000119)
w53.Part1 = p54
w53.C1 = CFrame.new(-2.69764678e-005, 0.523845971, 0.221708998, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w54 = Instance.new("Weld", p54)
w54.Name = "Block_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(-2.69764678e-005, 0.523845971, 0.221708998, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w54.Part1 = p55
w54.C1 = CFrame.new(-2.69931879e-005, 0.398795009, -0.103249997, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w55 = Instance.new("Weld", p55)
w55.Name = "Block_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(-2.69931879e-005, 0.398795009, -0.103249997, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w55.Part1 = p56
w55.C1 = CFrame.new(-2.69973734e-005, 0.251215011, -0.368891001, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w56 = Instance.new("Weld", p56)
w56.Name = "Block_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(-2.69973734e-005, 0.251215011, -0.368891001, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w56.Part1 = p57
w56.C1 = CFrame.new(-2.69915545e-005, 0.251217991, 0.693656981, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w57 = Instance.new("Weld", p57)
w57.Name = "Block_Weld"
w57.Part0 = p57
w57.C0 = CFrame.new(-2.69915545e-005, 0.251217991, 0.693656981, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w57.Part1 = p58
w57.C1 = CFrame.new(-2.69601114e-005, 0.523845971, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w58 = Instance.new("Weld", p58)
w58.Name = "Block_Weld"
w58.Part0 = p58
w58.C0 = CFrame.new(-2.69601114e-005, 0.523845971, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w58.Part1 = p59
w58.C1 = CFrame.new(-2.70031469e-005, 0.310247988, -1.62329102, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w59 = Instance.new("Weld", p59)
w59.Name = "Circle_Weld"
w59.Part0 = p59
w59.C0 = CFrame.new(-2.70031469e-005, 0.310247988, -1.62329102, 1, -1.85013622e-008, -5.47535173e-009, -1.85013622e-008, -1, 1.94523586e-023, -5.47535173e-009, 1.01301455e-016, -1)
w59.Part1 = p60
w59.C1 = CFrame.new(-2.69770535e-005, 0.523859024, 0.184808999, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w60 = Instance.new("Weld", p60)
w60.Name = "Circle_Weld"
w60.Part0 = p60
w60.C0 = CFrame.new(-2.69770535e-005, 0.523859024, 0.184808999, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w60.Part1 = p61
w60.C1 = CFrame.new(-2.69756147e-005, 0.582877994, 0.133154005, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w61 = Instance.new("Weld", p61)
w61.Name = "Block_Weld"
w61.Part0 = p61
w61.C0 = CFrame.new(-2.69756147e-005, 0.582877994, 0.133154005, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w61.Part1 = p62
w61.C1 = CFrame.new(-2.69474403e-005, 0.833757043, 0.310248882, 1, -5.95264495e-008, 4.08900434e-008, -4.08900505e-008, -1.49011626e-007, 1, -5.95264424e-008, -1, -1.49011626e-007)
w62 = Instance.new("Weld", p62)
w62.Name = "Block_Weld"
w62.Part0 = p62
w62.C0 = CFrame.new(-2.69474403e-005, 0.833757043, 0.310248882, 1, -5.95264495e-008, 4.08900434e-008, -4.08900505e-008, -1.49011626e-007, 1, -5.95264424e-008, -1, -1.49011626e-007)
w62.Part1 = p63
w62.C1 = CFrame.new(-2.69305474e-005, 1.11227143, 0.40874204, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w63 = Instance.new("Weld", p63)
w63.Name = "Block_Weld"
w63.Part0 = p63
w63.C0 = CFrame.new(-2.69305474e-005, 1.11227143, 0.40874204, 1, -5.91274514e-008, 4.46881785e-008, -3.93648421e-008, 0.0871555805, 0.99619472, -6.27972767e-008, -0.99619472, 0.0871555805)
w63.Part1 = p64
w63.C1 = CFrame.new(-2.69601114e-005, 0.523845971, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w64 = Instance.new("Weld", p64)
w64.Name = "Block_Weld"
w64.Part0 = p64
w64.C0 = CFrame.new(-2.69601114e-005, 0.523845971, 0.310247988, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w64.Part1 = p65
w64.C1 = CFrame.new(-2.69389948e-005, 0.818084598, 0.459285259, 1, -5.83989497e-008, 4.84370801e-008, -3.75603548e-008, 0.17364794, 0.984807789, -6.5922741e-008, -0.984807789, 0.17364794)
w65 = Instance.new("Weld", p65)
w65.Name = "Block_Weld"
w65.Part0 = p65
w65.C0 = CFrame.new(-2.69389948e-005, 0.818084598, 0.459285259, 1, -5.83989497e-008, 4.84370801e-008, -3.75603548e-008, 0.17364794, 0.984807789, -6.5922741e-008, -0.984807789, 0.17364794)
w65.Part1 = p66
w65.C1 = CFrame.new(-2.69857319e-005, 0.302294523, 1.25103426, 1, -1.85013569e-008, -5.47535173e-009, -1.79537469e-008, -0.99619472, 0.0871557295, -7.06701586e-009, -0.0871557295, -0.99619472)
w66 = Instance.new("Weld", p66)
w66.Name = "Block_Weld"
w66.Part0 = p66
w66.C0 = CFrame.new(-2.69857319e-005, 0.302294523, 1.25103426, 1, -1.85013569e-008, -5.47535173e-009, -1.79537469e-008, -0.99619472, 0.0871557295, -7.06701586e-009, -0.0871557295, -0.99619472)
w66.Part1 = p67
w66.C1 = CFrame.new(-2.69389129e-005, 1.48434854, -0.0765417814, 1, -5.87286557e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949787e-008, -0.965925872, -0.258819073)
w67 = Instance.new("Weld", p67)
w67.Name = "Block_Weld"
w67.Part0 = p67
w67.C0 = CFrame.new(-2.69389129e-005, 1.48434854, -0.0765417814, 1, -5.87286557e-008, 2.94899092e-008, -4.36851586e-008, -0.258819073, 0.965925872, -4.90949787e-008, -0.965925872, -0.258819073)
w67.Part1 = p68
w67.C1 = CFrame.new(-2.6994463e-005, 0.251219988, 0.162382007, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w68 = Instance.new("Weld", p68)
w68.Name = "Block_Weld"
w68.Part0 = p68
w68.C0 = CFrame.new(-2.6994463e-005, 0.251219988, 0.162382007, 1, -1.85011828e-008, -5.47594325e-009, -1.85011828e-008, -1, 9.72723004e-024, -5.47594325e-009, 1.01311427e-016, -1)
w68.Part1 = p69
w68.C1 = CFrame.new(-2.6915759e-005, 1.60853398, 0.310252011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w69 = Instance.new("Weld", p69)
w69.Name = "Circle_Weld"
w69.Part0 = p69
w69.C0 = CFrame.new(-2.6915759e-005, 1.60853398, 0.310252011, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w69.Part1 = p70
w69.C1 = CFrame.new(-2.69686861e-005, 0.641901016, 0.42831701, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w70 = Instance.new("Weld", p70)
w70.Name = "Wedge_Weld"
w70.Part0 = p70
w70.C0 = CFrame.new(-2.69686861e-005, 0.641901016, 0.42831701, 1, -1.58311995e-008, 3.82198948e-008, -3.82198948e-008, -5.62437252e-023, 1, -1.58311995e-008, -1, -6.05066816e-016)
w70.Part1 = p71
w70.C1 = CFrame.new(2.70324999e-005, -0.202880055, -0.363613576, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w71 = Instance.new("Weld", p71)
w71.Name = "Wedge_Weld"
w71.Part0 = p71
w71.C0 = CFrame.new(2.70324999e-005, -0.202880055, -0.363613576, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w71.Part1 = p72
w71.C1 = CFrame.new(-2.70432465e-005, -0.761507869, 0.349658668, 1, -5.04138598e-009, 5.66058631e-008, -5.68298475e-008, -0.087156117, 0.996194661, -8.86544171e-011, -0.996194661, -0.087156117)
w72 = Instance.new("Weld", p72)
w72.Name = "Wedge_Weld"
w72.Part0 = p72
w72.C0 = CFrame.new(-2.70432465e-005, -0.761507869, 0.349658668, 1, -5.04138598e-009, 5.66058631e-008, -5.68298475e-008, -0.087156117, 0.996194661, -8.86544171e-011, -0.996194661, -0.087156117)
w72.Part1 = p73
w72.C1 = CFrame.new(2.69606426e-005, -0.271123618, 0.159218371, -1, 1.20803122e-007, -5.03232513e-008, 8.86054821e-008, 0.342020035, -0.939692736, -9.6306259e-008, -0.939692736, -0.342020005)
w73 = Instance.new("Weld", p73)
w73.Name = "Wedge_Weld"
w73.Part0 = p73
w73.C0 = CFrame.new(2.69606426e-005, -0.271123618, 0.159218371, -1, 1.20803122e-007, -5.03232513e-008, 8.86054821e-008, 0.342020035, -0.939692736, -9.6306259e-008, -0.939692736, -0.342020005)
w73.Part1 = p74
w73.C1 = CFrame.new(-2.69467491e-005, 0.761504233, -0.342288256, 1, -8.45120525e-008, -3.81036713e-008, -3.05929326e-008, 0.087156117, -0.996194661, 8.75114239e-008, 0.996194661, 0.087156117)
w74 = Instance.new("Weld", p74)
w74.Name = "Wedge_Weld"
w74.Part0 = p74
w74.C0 = CFrame.new(-2.69467491e-005, 0.761504233, -0.342288256, 1, -8.45120525e-008, -3.81036713e-008, -3.05929326e-008, 0.087156117, -0.996194661, 8.75114239e-008, 0.996194661, 0.087156117)
w74.Part1 = p75
w74.C1 = CFrame.new(-2.70399814e-005, -0.477731556, -0.137090862, 1, 2.11481037e-008, -8.40774845e-008, -8.62400782e-008, 0.342020035, -0.939692736, 8.88346285e-009, 0.939692736, 0.342020005)
w75 = Instance.new("Weld", p75)
w75.Name = "Wedge_Weld"
w75.Part0 = p75
w75.C0 = CFrame.new(-2.70399814e-005, -0.477731556, -0.137090862, 1, 2.11481037e-008, -8.40774845e-008, -8.62400782e-008, 0.342020035, -0.939692736, 8.88346285e-009, 0.939692736, 0.342020005)
w75.Part1 = p76
w75.C1 = CFrame.new(2.70197816e-005, 0.254749686, -0.197051153, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w76 = Instance.new("Weld", p76)
w76.Name = "Wedge_Weld"
w76.Part0 = p76
w76.C0 = CFrame.new(2.70197816e-005, 0.254749686, -0.197051153, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w76.Part1 = p77
w76.C1 = CFrame.new(2.70364926e-005, 0.937081754, 0.462889194, -1, 1.19348783e-007, -5.94260889e-008, 8.8290939e-008, 0.258819073, -0.965925872, -9.99014702e-008, -0.965925872, -0.258819073)
w77 = Instance.new("Weld", p77)
w77.Name = "Wedge_Weld"
w77.Part0 = p77
w77.C0 = CFrame.new(2.70364926e-005, 0.937081754, 0.462889194, -1, 1.19348783e-007, -5.94260889e-008, 8.8290939e-008, 0.258819073, -0.965925872, -9.99014702e-008, -0.965925872, -0.258819073)
w77.Part1 = p78
w77.C1 = CFrame.new(2.69804386e-005, -0.254758716, 0.226571351, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w78 = Instance.new("Weld", p78)
w78.Name = "Wedge_Weld"
w78.Part0 = p78
w78.C0 = CFrame.new(2.69804386e-005, -0.254758716, 0.226571351, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w78.Part1 = p79
w78.C1 = CFrame.new(-2.69982065e-005, 0.0186245665, 0.256082684, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w79 = Instance.new("Weld", p79)
w79.Name = "Wedge_Weld"
w79.Part0 = p79
w79.C0 = CFrame.new(-2.69982065e-005, 0.0186245665, 0.256082684, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w79.Part1 = p80
w79.C1 = CFrame.new(2.69885841e-005, -1.4784987, 0.418512583, -1, 3.25942331e-008, 2.24966534e-009, 1.58138018e-008, 0.422618091, 0.906307936, 2.85896622e-008, 0.906307936, -0.422618091)
w80 = Instance.new("Weld", p80)
w80.Name = "Wedge_Weld"
w80.Part0 = p80
w80.C0 = CFrame.new(2.69885841e-005, -1.4784987, 0.418512583, -1, 3.25942331e-008, 2.24966534e-009, 1.58138018e-008, 0.422618091, 0.906307936, 2.85896622e-008, 0.906307936, -0.422618091)
w80.Part1 = p81
w80.C1 = CFrame.new(-2.7005879e-005, -0.0944784805, -0.255385041, 1, 2.11480753e-008, -8.40774845e-008, -8.6240064e-008, 0.342019796, -0.939692736, 8.88347085e-009, 0.939692736, 0.342019796)
w81 = Instance.new("Weld", p81)
w81.Name = "Wedge_Weld"
w81.Part0 = p81
w81.C0 = CFrame.new(-2.7005879e-005, -0.0944784805, -0.255385041, 1, 2.11480753e-008, -8.40774845e-008, -8.6240064e-008, 0.342019796, -0.939692736, 8.88347085e-009, 0.939692736, 0.342019796)
w81.Part1 = p82
w81.C1 = CFrame.new(-2.71884655e-005, -1.54931295, -1.43853581, 1, -1.29495401e-008, 1.0679166e-007, -2.43563569e-008, 0.939692497, 0.342020541, -1.04780334e-007, -0.342020512, 0.939692497)
w82 = Instance.new("Weld", p82)
w82.Name = "Wedge_Weld"
w82.Part0 = p82
w82.C0 = CFrame.new(-2.71884655e-005, -1.54931295, -1.43853581, 1, -1.29495401e-008, 1.0679166e-007, -2.43563569e-008, 0.939692497, 0.342020541, -1.04780334e-007, -0.342020512, 0.939692497)
w82.Part1 = p83
w82.C1 = CFrame.new(2.70665932e-005, -1.66921949, 1.49424386, -1, -1.69508478e-008, -2.46411371e-008, -2.43563605e-008, 0.939692497, 0.342020541, 1.73575518e-008, 0.342020512, -0.939692497)
w83 = Instance.new("Weld", p83)
w83.Name = "Wedge_Weld"
w83.Part0 = p83
w83.C0 = CFrame.new(2.70665932e-005, -1.66921949, 1.49424386, -1, -1.69508478e-008, -2.46411371e-008, -2.43563605e-008, 0.939692497, 0.342020541, 1.73575518e-008, 0.342020512, -0.939692497)
w83.Part1 = p84
w83.C1 = CFrame.new(2.69976008e-005, -0.112124957, -0.284901589, -1, 8.75223805e-009, 1.92694216e-009, -1.18270493e-009, -0.342019796, 0.939692736, 8.8834673e-009, 0.939692736, 0.342019796)
w84 = Instance.new("Weld", p84)
w84.Name = "Wedge_Weld"
w84.Part0 = p84
w84.C0 = CFrame.new(2.69976008e-005, -0.112124957, -0.284901589, -1, 8.75223805e-009, 1.92694216e-009, -1.18270493e-009, -0.342019796, 0.939692736, 8.8834673e-009, 0.939692736, 0.342019796)
w84.Part1 = p85
w84.C1 = CFrame.new(2.7052507e-005, -1.59177017, 0.872617722, -1, -1.1669739e-008, -2.68784888e-008, -2.76164496e-008, 0.681996524, 0.731355488, 9.79630865e-009, 0.731355488, -0.681996524)
w85 = Instance.new("Weld", p85)
w85.Name = "Wedge_Weld"
w85.Part0 = p85
w85.C0 = CFrame.new(2.7052507e-005, -1.59177017, 0.872617722, -1, -1.1669739e-008, -2.68784888e-008, -2.76164496e-008, 0.681996524, 0.731355488, 9.79630865e-009, 0.731355488, -0.681996524)
w85.Part1 = p86
w85.C1 = CFrame.new(2.69951215e-005, -1.03299725, -0.462896198, -1, 1.22781962e-008, 2.39114684e-009, -8.68160988e-010, -0.258819073, 0.965925872, 1.24787025e-008, 0.965925872, 0.258819073)
w86 = Instance.new("Weld", p86)
w86.Name = "Wedge_Weld"
w86.Part0 = p86
w86.C0 = CFrame.new(2.69951215e-005, -1.03299725, -0.462896198, -1, 1.22781962e-008, 2.39114684e-009, -8.68160988e-010, -0.258819073, 0.965925872, 1.24787025e-008, 0.965925872, 0.258819073)
w86.Part1 = p87
w86.C1 = CFrame.new(2.70135206e-005, 0.143849969, 0.34147498, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w87 = Instance.new("Weld", p87)
w87.Name = "Wedge_Weld"
w87.Part0 = p87
w87.C0 = CFrame.new(2.70135206e-005, 0.143849969, 0.34147498, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w87.Part1 = p88
w87.C1 = CFrame.new(2.70302153e-005, 0.342700183, 0.434671164, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w88 = Instance.new("Weld", p88)
w88.Name = "Wedge_Weld"
w88.Part0 = p88
w88.C0 = CFrame.new(2.70302153e-005, 0.342700183, 0.434671164, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w88.Part1 = p89
w88.C1 = CFrame.new(2.69984048e-005, 0.153062999, -0.159228027, -1, 8.75223449e-009, 1.92694394e-009, -1.18270438e-009, -0.342020035, 0.939692736, 8.88346463e-009, 0.939692736, 0.342020005)
w89 = Instance.new("Weld", p89)
w89.Name = "Wedge_Weld"
w89.Part0 = p89
w89.C0 = CFrame.new(2.69984048e-005, 0.153062999, -0.159228027, -1, 8.75223449e-009, 1.92694394e-009, -1.18270438e-009, -0.342020035, 0.939692736, 8.88346463e-009, 0.939692736, 0.342020005)
w89.Part1 = p90
w89.C1 = CFrame.new(-2.69485572e-005, 0.70247668, -0.342276633, 1, -8.45120454e-008, -3.81036642e-008, -3.05929255e-008, 0.087156117, -0.996194661, 8.75114168e-008, 0.996194661, 0.087156117)
w90 = Instance.new("Weld", p90)
w90.Name = "Wedge_Weld"
w90.Part0 = p90
w90.C0 = CFrame.new(-2.69485572e-005, 0.70247668, -0.342276633, 1, -8.45120454e-008, -3.81036642e-008, -3.05929255e-008, 0.087156117, -0.996194661, 8.75114168e-008, 0.996194661, 0.087156117)
w90.Part1 = p91
w90.C1 = CFrame.new(2.7285816e-005, 1.91944361, -0.662942171, -1, -1.69507981e-008, -1.48275618e-007, 1.16832759e-007, -0.707106471, -0.707107067, -9.28606312e-008, -0.707107067, 0.707106471)
w91 = Instance.new("Weld", p91)
w91.Name = "Wedge_Weld"
w91.Part0 = p91
w91.C0 = CFrame.new(2.7285816e-005, 1.91944361, -0.662942171, -1, -1.69507981e-008, -1.48275618e-007, 1.16832759e-007, -0.707106471, -0.707107067, -9.28606312e-008, -0.707107067, 0.707106471)
w91.Part1 = p92
w91.C1 = CFrame.new(2.69954071e-005, -0.937081456, -0.433368206, -1, 1.22781891e-008, 2.39114151e-009, -8.68164096e-010, -0.258819073, 0.965925872, 1.24786936e-008, 0.965925872, 0.258819073)
w92 = Instance.new("Weld", p92)
w92.Name = "Wedge_Weld"
w92.Part0 = p92
w92.C0 = CFrame.new(2.69954071e-005, -0.937081456, -0.433368206, -1, 1.22781891e-008, 2.39114151e-009, -8.68164096e-010, -0.258819073, 0.965925872, 1.24786936e-008, 0.965925872, 0.258819073)
w92.Part1 = p93
w92.C1 = CFrame.new(-2.69051961e-005, 0.999799907, -0.238821417, 1, -2.29101147e-008, -8.93497187e-008, -8.93497116e-008, 4.1723257e-007, -1, 2.29101538e-008, 1, 4.17232599e-007)
w93 = Instance.new("Weld", p93)
w93.Name = "Wedge_Weld"
w93.Part0 = p93
w93.C0 = CFrame.new(-2.69051961e-005, 0.999799907, -0.238821417, 1, -2.29101147e-008, -8.93497187e-008, -8.93497116e-008, 4.1723257e-007, -1, 2.29101538e-008, 1, 4.17232599e-007)
w93.Part1 = p94
w93.C1 = CFrame.new(2.69796546e-005, 0.112124898, 0.314417601, -1, 1.20803122e-007, -5.03232727e-008, 8.8605475e-008, 0.342019796, -0.939692736, -9.6306259e-008, -0.939692736, -0.342019796)
w94 = Instance.new("Weld", p94)
w94.Name = "Wedge_Weld"
w94.Part0 = p94
w94.C0 = CFrame.new(2.69796546e-005, 0.112124898, 0.314417601, -1, 1.20803122e-007, -5.03232727e-008, 8.8605475e-008, 0.342019796, -0.939692736, -9.6306259e-008, -0.939692736, -0.342019796)
w94.Part1 = p95
w94.C1 = CFrame.new(2.70609289e-005, -1.92461061, 0.795396745, -1, -1.69508478e-008, -2.46411371e-008, -2.94099767e-008, 0.707106471, 0.707107067, 5.43784262e-009, 0.707107067, -0.707106471)
w95 = Instance.new("Weld", p95)
w95.Name = "Wedge_Weld"
w95.Part0 = p95
w95.C0 = CFrame.new(2.70609289e-005, -1.92461061, 0.795396745, -1, -1.69508478e-008, -2.46411371e-008, -2.94099767e-008, 0.707106471, 0.707107067, 5.43784262e-009, 0.707107067, -0.707106471)
w95.Part1 = p96
w95.C1 = CFrame.new(2.70452038e-005, -1.2757566, 0.127234697, -1, 1.58094302e-008, -3.83180883e-008, -3.29206458e-008, 0.258819193, 0.965925872, 2.51881946e-008, 0.965925872, -0.258819193)
w96 = Instance.new("Weld", p96)
w96.Name = "Wedge_Weld"
w96.Part0 = p96
w96.C0 = CFrame.new(2.70452038e-005, -1.2757566, 0.127234697, -1, 1.58094302e-008, -3.83180883e-008, -3.29206458e-008, 0.258819193, 0.965925872, 2.51881946e-008, 0.965925872, -0.258819193)
w96.Part1 = p97
w96.C1 = CFrame.new(2.69985267e-005, 0.271121085, -0.129704311, -1, 8.75223449e-009, 1.92694216e-009, -1.18270604e-009, -0.342020035, 0.939692736, 8.88346374e-009, 0.939692736, 0.342020005)
w97 = Instance.new("Weld", p97)
w97.Name = "Wedge_Weld"
w97.Part0 = p97
w97.C0 = CFrame.new(2.69985267e-005, 0.271121085, -0.129704311, -1, 8.75223449e-009, 1.92694216e-009, -1.18270604e-009, -0.342020035, 0.939692736, 8.88346374e-009, 0.939692736, 0.342020005)
w97.Part1 = p98
w97.C1 = CFrame.new(-2.7119062e-005, -0.689512253, 0.493685782, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w98 = Instance.new("Weld", p98)
w98.Name = "Wedge_Weld"
w98.Part0 = p98
w98.C0 = CFrame.new(-2.7119062e-005, -0.689512253, 0.493685782, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w98.Part1 = p99
w98.C1 = CFrame.new(2.70467608e-005, -1.34953368, -0.0207269192, -1, 1.58180704e-008, -3.83196088e-008, -3.49906735e-008, 0.173648149, 0.984807849, 2.22318892e-008, 0.984807849, -0.173648149)
w99 = Instance.new("Weld", p99)
w99.Name = "Wedge_Weld"
w99.Part0 = p99
w99.C0 = CFrame.new(2.70467608e-005, -1.34953368, -0.0207269192, -1, 1.58180704e-008, -3.83196088e-008, -3.49906735e-008, 0.173648149, 0.984807849, 2.22318892e-008, 0.984807849, -0.173648149)
w99.Part1 = p100
w99.C1 = CFrame.new(2.68453441e-005, -1.05666494, -0.342283309, -1, 7.68926398e-008, 1.25193765e-007, 1.18015699e-007, -0.087156117, 0.996194661, 8.75114381e-008, 0.996194661, 0.087156117)
w100 = Instance.new("Weld", p100)
w100.Name = "Wedge_Weld"
w100.Part0 = p100
w100.C0 = CFrame.new(2.68453441e-005, -1.05666494, -0.342283309, -1, 7.68926398e-008, 1.25193765e-007, 1.18015699e-007, -0.087156117, 0.996194661, 8.75114381e-008, 0.996194661, 0.087156117)
w100.Part1 = p101
w100.C1 = CFrame.new(2.70382643e-005, 0.438632488, 0.478940666, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w101 = Instance.new("Weld", p101)
w101.Name = "Wedge_Weld"
w101.Part0 = p101
w101.C0 = CFrame.new(2.70382643e-005, 0.438632488, 0.478940666, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w101.Part1 = p102
w101.C1 = CFrame.new(2.69711491e-005, -0.365431041, 0.17490752, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w102 = Instance.new("Weld", p102)
w102.Name = "Wedge_Weld"
w102.Part0 = p102
w102.C0 = CFrame.new(2.69711491e-005, -0.365431041, 0.17490752, -1, 2.29101573e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447419e-009, -0.939692736, -0.342019916)
w102.Part1 = p103
w102.C1 = CFrame.new(-2.69383909e-005, 0.649306595, -0.433368623, 1, 1.03484936e-008, -8.68350583e-008, -8.65546141e-008, 0.258819073, -0.965925872, 1.24786919e-008, 0.965925872, 0.258819073)
w103 = Instance.new("Weld", p103)
w103.Name = "Wedge_Weld"
w103.Part0 = p103
w103.C0 = CFrame.new(-2.69383909e-005, 0.649306595, -0.433368623, 1, 1.03484936e-008, -8.68350583e-008, -8.65546141e-008, 0.258819073, -0.965925872, 1.24786919e-008, 0.965925872, 0.258819073)
w103.Part1 = p104
w103.C1 = CFrame.new(-2.70762976e-005, -0.43900317, 0.407888472, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w104 = Instance.new("Weld", p104)
w104.Name = "Wedge_Weld"
w104.Part0 = p104
w104.C0 = CFrame.new(-2.70762976e-005, -0.43900317, 0.407888472, 1, -5.28104849e-008, 1.60517274e-007, -1.68899149e-007, -0.342019916, 0.939692736, 5.27447774e-009, -0.939692736, -0.342019916)
w104.Part1 = p105
w104.C1 = CFrame.new(2.70607179e-005, -1.92829955, 0.736725867, -1, -1.69508478e-008, -2.46411371e-008, -2.94099767e-008, 0.707106471, 0.707107067, 5.43784262e-009, 0.707107067, -0.707106471)
w105 = Instance.new("Weld", p105)
w105.Name = "Wedge_Weld"
w105.Part0 = p105
w105.C0 = CFrame.new(2.70607179e-005, -1.92829955, 0.736725867, -1, -1.69508478e-008, -2.46411371e-008, -2.94099767e-008, 0.707106471, 0.707107067, 5.43784262e-009, 0.707107067, -0.707106471)
w105.Part1 = p106
w105.C1 = CFrame.new(2.70186029e-005, 0.202881783, 0.393133432, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w106 = Instance.new("Weld", p106)
w106.Name = "Wedge_Weld"
w106.Part0 = p106
w106.C0 = CFrame.new(2.70186029e-005, 0.202881783, 0.393133432, -1, 2.29101609e-008, -7.83667318e-008, 8.14763794e-008, 0.342019916, -0.939692736, 5.27447064e-009, -0.939692736, -0.342019916)
w106.Part1 = p107
w106.C1 = CFrame.new(-2.68938547e-005, 1.13999891, -0.187172472, 1, -2.29101147e-008, -8.93497187e-008, -8.93497116e-008, 4.1723257e-007, -1, 2.29101538e-008, 1, 4.17232599e-007)
w107 = Instance.new("Weld", p107)
w107.Name = "Wedge_Weld"
w107.Part0 = p107
w107.C0 = CFrame.new(-2.68938547e-005, 1.13999891, -0.187172472, 1, -2.29101147e-008, -8.93497187e-008, -8.93497116e-008, 4.1723257e-007, -1, 2.29101538e-008, 1, 4.17232599e-007)
w107.Part1 = p108
w107.C1 = CFrame.new(-2.70357887e-005, 1.01832795, -0.147913992, 1, -2.1171159e-008, 3.82198948e-008, 3.82198948e-008, 7.52150727e-023, -1, 2.1171159e-008, 1, 8.09159563e-016)
w108 = Instance.new("Weld", p108)
w108.Name = "Wedge_Weld"
w108.Part0 = p108
w108.C0 = CFrame.new(-2.70357887e-005, 1.01832795, -0.147913992, 1, -2.1171159e-008, 3.82198948e-008, 3.82198948e-008, 7.52150727e-023, -1, 2.1171159e-008, 1, 8.09159563e-016)
w108.Part1 = p109
w108.C1 = CFrame.new(2.6997488e-005, -0.237563431, -0.314412773, -1, 8.75224337e-009, 1.92694216e-009, -1.18270693e-009, -0.342019796, 0.939692736, 8.88347174e-009, 0.939692736, 0.342019796)
w109 = Instance.new("Weld", p109)
w109.Name = "Wedge_Weld"
w109.Part0 = p109
w109.C0 = CFrame.new(2.6997488e-005, -0.237563431, -0.314412773, -1, 8.75224337e-009, 1.92694216e-009, -1.18270693e-009, -0.342019796, 0.939692736, 8.88347174e-009, 0.939692736, 0.342019796)
w109.Part1 = p110
w109.C1 = CFrame.new(2.70390519e-005, -0.43863076, -0.44942081, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w110 = Instance.new("Weld", p110)
w110.Name = "Hitbox_Weld"
w110.Part0 = p110
w110.C0 = CFrame.new(2.7, -0.44, -0.6, -1, -8.91407197e-008, -2.61165312e-008, 5.94638472e-009, -0.342019916, 0.939692736, -9.26972632e-008, 0.939692736, 0.342019916)
w110.Part1 = p111
w110.C1 = CFrame.new(-2.7, -0.68, 0.61, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
m8.Parent = rarm
m8:MakeJoints()
----------------------------------------------------
local cor8 = Instance.new("Part", rarm.Zyrodoxa)
cor8.Name = "Thingy"
cor8.Locked = true
cor8.BottomSurface = 0
cor8.CanCollide = false
cor8.Size = Vector3.new(1, 1, 1)
cor8.Transparency = 1
cor8.TopSurface = 0
corw8 = Instance.new("Weld", cor8)
corw8.Part0 = rarm
corw8.Part1 = cor8
corw8.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180))
corw8.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld8 = Instance.new("Weld", rarm.Zyrodoxa)
weld8.Part0 = cor8
weld8.Part1 = rarm.Zyrodoxa.Handle
weld8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
models = {m,m2,m3,m4,m5,m6,m7,m8}
parts = {}
Stepped:connect(function()
	for i,v in pairs(models) do
		for _, a in pairs(v:GetChildren()) do
			if v:IsA("Part") and v.Name ~= "Thingy" then
				table.insert(parts, a)
				for i,v in pairs(parts) do
					v.CanCollide = false
				end
			end
		end
	end
end)
----------------------------------------------------
local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
--[[local hitbox = rarm.Zyrodoxa.Hitbox--Zyrodoxa is the name of the dagger k

function FindHumanoids()
	local function c_region(Position, Size)
		local SizeOffset = Size/2
	 	local Point1 = Position - SizeOffset
   		local Point2 = Position + SizeOffset
   		local a = Instance.new("Part", workspace)
   		a.Anchored = true
   		a.Size = Size
   		a.Position = Position
   		print("Hey!, I'm making a part!")
   		return Region3.new(Point1, Point2)
  	end
  	
    local a = c_region((hitbox.CFrame * CFrame.new(0, -1.285, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local b = c_region((hitbox.CFrame * CFrame.new(0, -0.6425, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local c = c_region((hitbox.CFrame * CFrame.new(0, 0.6425, 0)), Vector3.new(0.22, 0.6425, 1.22))
    local d = c_region((hitbox.CFrame * CFrame.new(0, 1.285, 0)), Vector3.new(0.22, 0.6425, 1.22))
    
    local regions = {a, b, c, d}
    
    local found_humanoids = {}
    local already_found = {char.Name}
    
    for _, region in pairs(regions) do
        for _, part in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(region, rarm.Zyrodoxa:GetChildren(), 100)) do
        	print(part, part.Parent, part.Name) ---nope
            if part.Parent:FindFirstChild("Humanoid") ~= nil and part.Parent.ClassName == "Model" and not part:isDescendantOf(char) then
                local humanoid = part.Parent:FindFirstChild("Humanoid")
                local name = humanoid.Parent.Name
                local exists = false
                for _, n in pairs(already_found) do
                    if n == name then
                        exists = true
                    end
                end
                if not exists then
                    table.insert(already_found, name)
                    table.insert(found_humanoids, humanoid)
                end
            elseif part.Parent.Parent:FindFirstChild("Humanoid") ~= nil and part.Parent.Parent.ClassName == "Model" and not part:isDescendantOf(char) then
                local humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
                local name = humanoid.Parent.Parent.Name
                local exists = false
                for _, n in pairs(already_found) do
                    if n == name then
                        exists = true
                    end
                end
                if not exists then
                    table.insert(already_found, name)
                    table.insert(found_humanoids, humanoid)
                end
            end
        end
    end
    return found_humanoids
end

local humanoids = FindHumanoids()
if #humanoids == 0 then
	for i, v in pairs(humanoids) do
		print(v.Parent.Name)
		if Debounces.Slashing == true then
			v:TakeDamage(math.random(10,20) * math.random(1,3)) --max 60 damage?
		elseif Debounces.Slashing == false then
			wait()
		end
	end
	wait(0.3)
end]]--
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
	if key == "f" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			for i = 1, 20 do
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				CR.Joint.C1 = Lerp(CR.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(-4),0,0),0.1)
				CR2.Joint.C1 = Lerp(CR2.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR3.Joint.C1 = Lerp(CR3.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR4.Joint.C1 = Lerp(CR4.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				CR5.Joint.C1 = Lerp(CR5.Joint.C1, CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),0.1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6,0.6,-0.2)*CFrame.Angles(math.rad(8),math.rad(22),math.rad(15)), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6,0.6,0.2)*CFrame.Angles(math.rad(-8),math.rad(12),math.rad(-12)), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(5)), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(-5)), 0.1)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
		end
	end
end)]]--
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Slam()
    local part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    local part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",larm)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x1 = Instance.new("Sound",larm)
    x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
    x1.Pitch = ptez[math.random(1,#ptez)]
    x1.Volume = 1
    wait(.1)
	x:Play()
    x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(30,45))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------
wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
end

Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

local function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z,
    right.x, top.x, back.x,
    right.y, top.y, back.y,
    right.z, top.z, back.z)
end

function Triangle(a, b, c)
    local edg1 = (c-a):Dot((b-a).unit)
    local edg2 = (a-b):Dot((c-b).unit)
    local edg3 = (b-c):Dot((a-c).unit)
    if edg1 <= (b-a).magnitude and edg1 >= 0 then
        a, b, c = a, b, c
    elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
        a, b, c = b, c, a
    elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
        a, b, c = c, a, b
    else 
        print("unreachable")
    end
    local len1 = (c-a):Dot((b-a).unit)
    local len2 = (b-a).magnitude - len1
    local width = (a + (b-a).unit*len1 - c).magnitude
    local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
    local list = {}
    if len1 > 0.01 then
        local w1 = wPart(0,0,0,'Really red',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Mesh(w1,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                fat.Event:wait()
                w1.Transparency=w1.Transparency+0.03
            end
        end)
        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        table.insert(list,w1)
    end
    if len2 > 0.01 then
        local w2 = wPart(0,0,0,'Really red',0.5,false,true,char)
        local sz = Vector3.new(0.2, width, len2) 
        w2.Size = sz
        local sp = Mesh(w2,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w2.Size
        w2:BreakJoints()
        w2.Anchored = true
        w2.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                fat.Event:wait()
                w2.Transparency=w2.Transparency+0.03
            end
        end)
        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        table.insert(list,w2)
    end
    return unpack(list)
end

function trail(p,t,h)
	Spawn(function()
		local blcf = p.CFrame
		local scfr = blcf
		for i=1,t do
			local blcf = p.CFrame
			if scfr and (p.Position-scfr.p).magnitude > .1 then
				local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
			fat.Event:wait()
		end
		scfr=nil
	end)
end
--trail(char.Sword.Blade,1e1000,5)
----------------------------------------------------
function Dmg()
	local partofdeath = rarm.Zyrodoxa.Hitbox
	local function CreateRegion3FromLocAndSize(Position, Size)
		local SizeOffset = Size/2
		local Point1 = Position - SizeOffset
		local Point2 = Position + SizeOffset
		return Region3.new(Point1, Point2)
	end
	local reg = CreateRegion3FromLocAndSize(partofdeath.Position, partofdeath.Size)
	for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
		Spawn(function()
			if Debounces.Slashing == true and Debounces.Slashed == false then
				Debounces.Slashed = true
				ypcall(function()
					local humanoid = v.Parent:FindFirstChild("Humanoid") or v.Parent.Parent:FindFirstChild("Humanoid")
					humanoid:TakeDamage(math.random(10,18))
				end)
				wait(.4)
				Debounces.Slashed = false
			end
		end)
	end
end
----------------------------------------------------
pts = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
ptz = {0.7, 0.8, 0.9, 1}
idz = {"161006212", "161006195"}
function attackone()
	for i = 1, 13 do
		corw8.C0 = Lerp(corw8.C0, CFrame.new(-0.3, -1, -0.3) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.8)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(30), math.rad(0)), 0.8)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.3)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(-10)), 0.3)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0.4)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(-10)), 0.5)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-40),math.rad(0)), 0.5)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(0),math.rad(-50),0), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.5)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.7)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(18), math.rad(0), math.rad(15)), 0.7)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.4, -1.3, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(15)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -0.9, -0.4) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
	trail(rarm.Zyrodoxa.Hitbox,20,2)
	Debounces.Slashing = true
	wait(0.2)
	--[[z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
	z.Pitch = ptz[math.random(1,#ptz)]
	z.Volume = 1
	wait(.01)
	z:Play()]]--
	for i = 1, 14 do
		Dmg()
		corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.8)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(30), math.rad(0)), 0.8)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0.4)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(100)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(0)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, -0.3)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-20)), 0.4)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(0)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(0),math.rad(40),0), 0.7)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-10), math.rad(-40), 0), 0.4)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.7, -0.9, -0.4) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-14), math.rad(0), math.rad(15)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(8), math.rad(0), math.rad(-10)), 0.5)
		if Debounces.on == false then break end
		rs:wait()
	end
	Debounces.Slashing = false
end
function attacktwo()
	Debounces.Slashing = true
	for i = 1, 14 do
		Dmg()
		corw8.C0 = Lerp(corw8.C0, CFrame.new(-0.37, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.4)
		corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(80)), 0.7)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad (-70)), 0.5)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-90), math.rad(0)), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -2) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		rs:wait()
	end
end
----------------------------------------------------
ComboNum = 0
mouse.Button1Down:connect(function()
	if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.NoIdl = true
		Debounces.on = true
		if ComboNum == 0 then
			attackone()
		elseif ComboNum == 1  then
			attacktwo()
		--[[elseif ComboNum == 2 then
			attackthree()]]--
		end
		ComboNum = ComboNum + 1
		Debounces.CanAttack = true
		Debounces.on = false
		wait(.5)
		if Debounces.CanAttack == true then
			ComboNum = 0
			Debounces.NoIdl = false
		end
	end
end)
----------------------------------------------------
definition = 5
bc = {}
bezierparts = {}
function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
function draw(p,d)
	for i=1,d do 
		local t = i/d
		bc[i] = p[1]*(1-t)^2+2*p[2]*(1-t)*t+p[3]*t^2
	end

	Spawn(function() fat.Event:wait()
		for i,v in pairs(bezierparts) do
			v.Transparency = 1
		end
	end)
end
--local points = {larm.Position,rarn.Position,invisipart.Position}
--draw(points,definition)

				fat.Event:wait()

			rpart = Instance.new("Part",rarm)
			NoOutline(rpart)
			rpart.Anchored = false
			rpart.Size = Vector3.new(1,1,1)
			rpart.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
			rpart.Transparency = 1
			newWeld(rarm, rpart, 0, 0, 0)
			rpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			lpart = Instance.new("Part",larm)
			NoOutline(lpart)
			lpart.Anchored = false
			lpart.Size = Vector3.new(1,1,1)
			lpart.CFrame = larm.CFrame * CFrame.new(0,-1,0)
			lpart.Transparency = 1
			newWeld(larm, lpart, 0, 0, 0)
			lpart.Weld.C1 = CFrame.new(0, 1.1, 0)
			invisipart = Instance.new("Part",torso)
			NoOutline(invisipart)
			invisipart.Anchored = false
			invisipart.Size = Vector3.new(1,1,1)
			invisipart.Transparency = 1
			invisipart.CFrame = torso.CFrame
			newWeld(torso, invisipart, 0, 0, 0)
			invisipart.Weld.C1 = CFrame.new(0, 0, 6)
			table.insert(bezierparts, rpart)
			table.insert(bezierparts, lpart)
			table.insert(bezierparts, invisipart)
			for i = 1, 40 do
				local points = {lpart.Position,invisipart.Position,rpart.Position}
				draw(points,definition)
				--invisipart.Weld.C1 = invisipart.Weld.C1 + Vector3.new(0,0,0.6)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90)), 0.1)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0), math.rad(0)), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(-10)), 0.2)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(0), 0, math.rad(10)), 0.2)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
			for i,v in pairs(bezierparts) do
				v:Destroy()
			end
			--draw(points,definition)
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end

----------------------------------------------------
pitches = {0.85, 0.9, 0.95, 1, 1.05, 1.1}
IDs = {"415880409","415880478"}
mouse.KeyDown:connect(function(key)
    if key == "h" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://"..IDs[math.random(1,#IDs)]
			z.Pitch = 1
			z.Volume = 1
			z1 = Instance.new("Sound",hed)
			z1.SoundId = z.SoundId
			z1.Pitch = 1
			z1.Volume = 1
			wait()
			z:Play()
			z1:Play()
			wait(20)
			z:Destroy()
			z1:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://415859013"
			z.Pitch = pitches[math.random(1,#pitches)]
			z.Volume = 1
			wait()
			z:Play()
			wait(2)
			z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" then
		if Debounces.CanJoke == true then
			Debounces.CanJoke = false
			z = Instance.new("Sound",hed)
			z.SoundId = "rbxassetid://415859085"
			z.Pitch = pitches[math.random(1,#pitches)]
			z.Volume = 1
			wait()
			z:Play()
			wait(2)
			z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
        end
        con1=larm.LeftArm.LeftArmPlate.Touched:connect(function(hit)
		ht = hit.Parent
			for i,v in pairs(ht:GetChildren()) do 
				if v:IsA("Part") then
					v.CanCollide = false
					v.CustomPhysicalProperties = PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
				end
			end
			hum1=ht:FindFirstChild('Humanoid')
			if hum1 ~= nil then
				if Debounces.ks==true then
					z = Instance.new("Sound",hed)
					z.SoundId = "rbxassetid://169380525"
					z.Volume = 1
					z:Play()
					Debounces.ks=false
				end
				hum1.PlatformStand=true
				hum1:ChangeState'Physics'
				gp = ht
				Grab = true
				asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,0.6),CFrame.new(0,0,0))
				asd.Parent = larm
				asd.Name = "asd"
				asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"
			--[[elseif hum1 == nil then
				con1:disconnect()
				wait() return]]--
			end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then break end
            fat.Event:wait()
        end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		elseif Grab == true then
        Grab = false
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.3)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), 0.3)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.3)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		for i = 1, 12 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.6)
            rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.3,-0.1)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-32)), 0.6)
            larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(40), math.rad(14)),0.6)
            hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.6)
            torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(40),math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.6)
            lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.4, .2, -0.8) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.4)
			if Debounces.on == false then end
			rs:wait()
		end
		Slam()
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
				if v:IsA("Part") then
					v.CanCollide = true
					v.CustomPhysicalProperties = PhysicalProperties.new(1,1,1,1,1)
				end
			end
		end
		stanceToggle = "Idle1"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
			Grab = false
			Debounces.on = false
			Debounces.NoIdl = false
        end
    end
end)
----------------------------------------------------
Change = false
mouse.KeyDown:connect(function(key)
    if key == "n" then
        if Change == false then
            Change = true
        stanceToggle = "Idle2"
    elseif Change == true then
        Change = false
        stanceToggle = "Idle1"
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 2
        char.Humanoid.WalkSpeed = 28
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
		Swing = 1
        char.Humanoid.WalkSpeed = 16
    end
end)
----------------------------------------------------

jump = false
rs:connect(function()
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			end
			fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05+0.03*math.cos(sine/5), 0-0.1*math.cos(sine/10)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+8*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.3)

				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			elseif stanceToggle == "Idle2" then

				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			elseif stanceToggle == "Grabbed" then
				grab = true
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(90+4*math.cos(sine/14)),math.rad(0),math.rad(-80+4*math.cos(sine/14))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			elseif stanceToggle ~= "Grabbed" then
				change = 1
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				--lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9-0.24*math.cos(sine/4)/2.8, -0.05 + math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)-math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				--rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9+0.24*math.cos(sine/4)/2.8, -0.05 + -math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)+math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Running" then
			change = 1
			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Jumping" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Freefalling" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(50)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(110),math.rad(-20),math.rad(-30)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.6) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		end
	end
end)
hum.MaxHealth = 5000
wait(3)
hum.Health = 5000