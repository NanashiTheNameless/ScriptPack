repeat game:GetService('RunService').Stepped:wait() until game:GetService('Players').LocalPlayer.Character
----
----
sit = true
cn = CFrame.new
v3 = Vector3.new
c3 = Color3.new
bn = BrickColor.new
ca2 = CFrame.Angles
ca = function(x,y,z) return ca2(math.rad(x),math.rad(y),math.rad(z)) end
ud2 = UDim2.new
----
----
local Player = game:GetService('Players').LocalPlayer
local Char = Player.Character
local Human = Char.Humanoid
local Mouse = Player:GetMouse()
----
----
Human.WalkSpeed = 0
print ('Loading...')
wait(.5)
----
----
la = Char['Left Arm']
ra = Char['Right Arm']
ll = Char['Left Leg']
rl = Char['Right Leg']
tr = Char['Torso']
hd = Char['Head']
rp = Char['HumanoidRootPart']
----
----
ram = tr['Right Shoulder']
lam = tr['Left Shoulder']
llm = tr['Left Hip']
rlm = tr['Right Hip']
hm = tr['Neck']
rj = rp['RootJoint']
----
----
InputService = game:GetService('UserInputService')
RunService = game:GetService('RunService')
----
----
LastMade = nil

xNew=function(Table)
	local Obj=Instance.new(Table[1])
	for Ind,Val in pairs(Table) do
		if Ind~=1 and Ind~=2 then 
			Obj[Ind] = Val
		end
	end
	Obj.Parent=Table[2]
	LastMade= Obj
	return Obj
end

xPart=function(tab)
	local v=Instance.new(tab.type or "Part")
	if tab.type~="CornerWedgePart" then v.formFactor="Custom" end
	v.CanCollide=false
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.FrontSurface=10 v.BackSurface=10
	v.Size=v3(tab[2],tab[3],tab[4])
	if tab.co then v.BrickColor=bn(tab.co) end
	if tab.tr then v.Transparency=tab.tr end
	if tab.rf then v.Reflectance=tab.rf end
	if tab.cf then v.CFrame=tab.cf end
	if tab.an then v.Anchored=tab.an end
	if tab.mt then v.Material=tab.mt end
	if tab.ca then v.CanCollide=tab.ca end
	v.Parent=tab[1]
	LastMade= v
	return v
end

xWeld = function(a,b,between,type)
	local Weld = xNew{type or 'Weld',a,Part0 = a,Part1 = b, C0 = cn()}
	if between then
		Weld.C1 = b.CFrame:inverse() * a.CFrame
	else
		Weld.C1 = cn()
	end
	return Weld
end

function xSound(id,parent,pitch)
	local s = xNew{'Sound', PlayOnRemove = true, SoundId = 'http://roblox.com/asset/?id='..id,Pitch = pitch}
	s.Parent = parent
	s:Destroy()
end

----
----
do local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp end function clerp(a,b,t) local qa = {QuaternionFromCFrame(a)} local qb = {QuaternionFromCFrame(b)} local ax, ay, az = a.x, a.y, a.z local bx, by, bz = b.x, b.y, b.z local _t = 1-t return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) end end
function xlerp(weld,to,tim)
	if weld.C1 ~= to then
	--weld.C1 = clerp(weld.C1,to,tim)
	weld.C1 = weld.C1:lerp(to,tim)
	end
end
function lerp(a,b,c)return a+(b-a)*c end
----
----
Char.Health:Destroy()
wait(.25)
----
ra.Size = ra.Size * 3
la.Size = la.Size * 3
ll.Size = ll.Size * 3
rl.Size = rl.Size * 3
tr.Size = tr.Size * 3
hd.Size = hd.Size * 3
rp.Size = rp.Size * 3
--
local tw = xWeld(rp,tr)
tw.C1 = cn(0,0,0)
local law = xWeld(tr,la)
law.C0 = cn(-4.5,.5,0)
law.C1 = cn(0,.5,0)
local raw = xWeld(tr,ra)
raw.C0 = cn(4.5,.5,0)
raw.C1 = cn(0,.5,0)
local llw = xWeld(tr,ll)
llw.C0 = cn(-1.5,-5,0)
llw.C1 = cn(0,1,0)
local rlw = xWeld(tr,rl)
rlw.C0 = cn(1.5,-5,0)
rlw.C1 = cn(0,1,0)
local hw = xWeld(tr,hd)
hw.C1 = cn(0,-4.5,0)
ras = raw.C1
las = law.C1
lls = llw.C1
rls = rlw.C1
ts = tw.C1
hs = hw.C1
-----
for _,Part in pairs(Char:GetChildren()) do
	if Part:IsA('BasePart') then
		Part.CustomPhysicalProperties = PhysicalProperties.new(0, .3, .5)
	end
end
--------------------------------------------------------
--------------------------------------------------------
-----------------------CONSTANTS------------------------
--------------------------------------------------------
--------------------------------------------------------
REGEN_SPEED = 0
WEAPON_NAME = 'Grandark'
----------------------------------------------------
----------------------------------------------------
-----------------------MODEL------------------------
----------------------------------------------------
----------------------------------------------------
local Handle
local Blade
local haw
Pack = Instance.new('Model', Char)
Pack.Name = WEAPON_NAME
do
	Handle = xPart{Pack,0.54285717, 4.96428585, 1.02857149} Handle.BrickColor = BrickColor.new('Black') Handle.Material = Enum.Material.Plastic; haw = xWeld(ra,Handle); LastMade.C1 = ca(90,0,180)*cn(0,3,0) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Handle,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -3.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.521428645, 0.1, 4.92857265} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -2.59285641, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.221428677, 5.65714407} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -2.57142735, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.01428556, 1.02857149} Part.BrickColor = BrickColor.new('Really red') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -1.4428587, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.FileMesh, MeshId = 'http://www.roblox.com/Asset/?id=9756362', TextureId = '', Scale = v3(0.714285731, 1.42857146, 0.714285731), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142878, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857018, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857208, -1, 0, 8.74227695e-008, 0, 1, 0, -8.74227695e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.11428583, 0.371428579} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.23928523, 0.699998856, 1, -8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, -8.74227695e-008, -8.74227766e-008, 8.74227766e-008, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.11428583, 0.371428579} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.23928547, 0.700000763, -1, 8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, 8.74227695e-008, -8.74227695e-008, 8.74227766e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.342857182, 0.585714281, 0.514285684} Part.BrickColor = BrickColor.new('Really red') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(2.91071415, 0, 0.257143021, -5.96046377e-008, 1, 1.49781926e-007, -1, -5.96046306e-008, -3.92309403e-008, -3.92309296e-008, -1.49781926e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'CylinderMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.342857182, 0.585714281, 0.514285684} Part.BrickColor = BrickColor.new('Really red') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(2.91071415, 0, -0.257143021, -5.96046377e-008, 1, 1.49781926e-007, -1, -5.96046306e-008, -3.92309403e-008, -3.92309296e-008, -1.49781926e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'CylinderMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 0.257142901, 0.514285743} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.35357094, 0.257143021, -1, 8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, 8.74227695e-008, -8.74227695e-008, 8.74227766e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 0.257142901, 0.514285743} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.35357118, 0.257141113, 1, 3.51124925e-008, -2.6822093e-007, -3.51123965e-008, 1, 3.53819075e-007, 2.6822093e-007, -3.53819075e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 1.73571444, 0.200000003} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 1.50000012, 0.0714263916, 1, 3.51124925e-008, -2.6822093e-007, -3.51123965e-008, 1, 3.53819075e-007, 2.6822093e-007, -3.53819075e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 0.714285672), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 1.73571444, 0.200000003} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 1.49999988, 0.0714321136, -1, 6.27284535e-008, 3.87430191e-007, 6.27285388e-008, 1, 2.26830267e-007, -3.87430163e-007, 2.26830295e-007, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 0.714285672), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857208, -1, 0, 8.74227695e-008, 0, 1, 0, -8.74227695e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.48571396, -1.96071529, 1, -4.47536763e-009, -5.65906291e-008, -5.65906291e-008, -1.58996982e-023, -1, 4.47536763e-009, 1, -2.53263884e-016) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Dark orange') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.48571205, -1.96071529, -1, -1.90377425e-009, 5.96046377e-008, 5.96046377e-008, 6.53269716e-010, 1, -1.90377425e-009, 1, -6.53269605e-010) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	Blade = xPart{Pack,0.285714328, 12.2071428, 2.38571548} Blade.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Blade) LastMade.C1 = CFrame.new(0, -8.56428432, 0.649999619, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Blade,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -4.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -5.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -6.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -7.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -11.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -8.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -9.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -10.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -12.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -13.2214279, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 2.01428699} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 14.1928558, 1.5357151, 1, 1.06776947e-016, 2.85758261e-009, 1.39271539e-016, -1, -1.13713643e-008, 2.85758261e-009, 1.13713643e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.15714407} Part.BrickColor = BrickColor.new('Smoky grey') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 14.1928558, 2.3214283, -1, 2.33221598e-009, 0, -2.33221553e-009, -1, -4.92687668e-010, 0, -4.92687668e-010, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
end
has = haw.C1

for _,v in pairs(Pack:GetChildren()) do
	v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end
--------------------------------------------------------
--------------------------------------------------------
-----------------------VARIABLES------------------------
--------------------------------------------------------
--------------------------------------------------------
State = 'Idle'
FallTime = 0
Walk = 0
WalkReverse = false
StompDB = false
JumpDB = false
--
function NewHitbox(Radius,Position)
	local Returning = {}
	for _,v in pairs(workspace:GetChildren()) do
		if v~=Char and v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') then
			local Mag = (v.Torso.Position - Position).magnitude
			if Mag < Radius then
				table.insert(Returning,v)
			end
		end
	end
	return Returning
end
--
function UpdateState()
	if (rp.Velocity*v3(1, 0, 1)).magnitude > 5 then
		if State == 'Idle' then State = 'Walking' end
	else
		if State == 'Walking' then State = 'Idle'; end
	end
	if WalkReverse then
		Walk = Walk - .5
	else
		Walk = Walk + .5
	end
	if Walk >= 10 then
		WalkReverse = true
	elseif Walk <= -10 then
		WalkReverse = false
	end
end
--
function JumpExplode()
	local Hit = NewHitbox(35,Char.Torso.Position)
	for _,v in pairs(Hit) do
		v.Humanoid.Health = v.Humanoid.Health - 15
		if sit then
			v.Humanoid.Sit = true
		end
	end
	xSound('2233908',tr,1)
	coroutine.wrap(function()
		local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('Earth green')}
		local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
		Explosion.CFrame = Char.Torso.CFrame * cn(0,-20,0)
		Mesh.Scale = v3(1,7,1)
		repeat
			Mesh.Scale = Mesh.Scale + v3(1,0,1)
			Explosion.Transparency = Explosion.Transparency + .025
			wait()
		until Explosion.Transparency >= 1
		Explosion:Destroy()
	end)()
end
--
function Stomp()
	if State == 'Walking' or State == 'Idle' then
		if StompDB == false then
			StompDB = true
			State = 'Attacking'
			Human.WalkSpeed = 0
			--
			xSound('138186576',Char.Head,1)
			for _=0,1,.05 do
				xlerp(tw,ts,.2)
				xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.2)
				xlerp(rlw,rls*ca(20,0,0),.2)
				xlerp(llw,lls*cn(0,-2,1.25),.2)
				xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.2)
				xlerp(law,las*ca(20,0,0),.2)
				wait()
			end
			coroutine.wrap(function()
				local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('Earth green')}
				local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=3270017'}
				Explosion.CFrame = rp.CFrame * cn(0,-7,0)*ca(90,0,0)
				Mesh.Scale = v3(5,5,10)
				repeat
					Mesh.Scale = Mesh.Scale + v3(2,2,.5)
					Explosion.Transparency = Explosion.Transparency + .01
					wait()
				until Explosion.Transparency >= 1
				Explosion:Destroy()
			end)()
			coroutine.wrap(function()
				local Already = {}
				for i=1,50,2 do
					wait(.1)
					local Hit = NewHitbox(i*2,Char.Torso.Position)
					for _,v in pairs(Hit) do
						if not Already[v] then
							v.Humanoid.Health = v.Humanoid.Health - 30
							if sit then
								v.Humanoid.Sit = true
							end
							Already[v] = true
						end
					end
				end
			end)()
			--attack
			for _=0,1,.05 do
				xlerp(tw,ts,.3)
				xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.3)
				xlerp(rlw,rls*ca(20,0,0),.3)
				xlerp(llw,lls*cn(0,0,1.25),.3)
				xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.3)
				xlerp(law,las*ca(20,0,0),.3)
				wait()
			end
			State = 'Idle'
			Human.WalkSpeed = 7
			coroutine.wrap(function()
				wait(15)
				StompDB = false
			end)()
		end
	end
end
--
function Charge()
	if State == 'Walking' or State == 'Idle' then
		State = 'Charge'
		for _, controller in pairs(game:GetService("ControllerService"):GetChildren()) do
			controller.Parent = workspace
		end
		local function Exp()
			local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('White')}
			local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
			Explosion.CFrame = rp.CFrame * cn(0,0,-15)*ca(70,0,0)
			Mesh.Scale = v3(1,6,1)
			repeat
				Mesh.Scale = Mesh.Scale + v3(1,.5,1)
				Explosion.Transparency = Explosion.Transparency + .05
				wait()
			until Explosion.Transparency >= 1
			Explosion:Destroy()
		end
		coroutine.wrap(function()
			wait(.25)
			Human.WalkSpeed = 60
			for _=1, 10 do
				coroutine.wrap(Exp)()
				local Hit = NewHitbox(10,Char.Torso.Position)
				for _,v in pairs(Hit) do
					v.Humanoid.Health = v.Humanoid.Health - 20
				end
				wait(.15)
				xSound('10730819',tr,.8)
			end
			Human.WalkSpeed = 7
			State = 'Idle'
		end)()
		--
		for _=0,1,.05 do
			xlerp(tw,ts*ca(0,-90,0),.4)
			xlerp(hw,hs*ca(0,90,0),.4)
			xlerp(raw,ras*ca(-90,0,-90)*cn(0,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(0,0,10)*cn(1,0,0),.4)
			xlerp(llw,lls*ca(0,0,10)*cn(1,0,0),.4)
			wait()
		end
		--
	end
end
function Combo()
	if State == 'Idle' or State == 'Walking' then
		State = 'Attacking'
		Human.WalkSpeed = 3
		for _=0,1,.2 do
			xlerp(tw,ts*ca(0,20,0),.4)
			xlerp(hw,hs*ca(0,30,0),.4)
			xlerp(raw,ras*ca(0,180,-90)*cn(-1,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		local Already = {}
		xSound('231731980',tr,1.3)
		for _=0,1,.1 do
			xlerp(tw,ts*ca(0,-30,0),.4)
			xlerp(hw,hs*ca(0,-50,0),.4)
			xlerp(raw,ras*ca(160,180,-130)*cn(2,-1,1),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			xlerp(haw,has*ca(40,0,0),.4)
			wait()
			local Hit = NewHitbox(15,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.Health = v.Humanoid.Health - 10
					Already[v] = true
				end
			end
		end
		----Combo2
		for _=0,1,.2 do
			xlerp(tw,ts*ca(0,-35,0),.4)
			xlerp(haw,has,.4)
			xlerp(hw,hs*ca(0,-30,0),.4)
			xlerp(raw,ras*ca(-120,0,-70)*cn(1,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		xSound('231731980',tr,1)
		local Already = {}
		for _=0,1,.1 do
			xlerp(tw,ts*ca(0,20,0),.4)
			xlerp(hw,hs*ca(0,30,0),.4)
			xlerp(raw,ras*ca(30,0,-90)*cn(0,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
			local Hit = NewHitbox(15,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.Health = v.Humanoid.Health - 10
					Already[v] = true
				end
			end
		end
		--Combo 3
		for _=0,1,.1 do
			xlerp(tw,ts,.3)
			xlerp(hw,hs,.3)
			xlerp(haw,has,.3)
			xlerp(raw,ras*ca(-140,0,0)*cn(0,-1.5,0),.3)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.3)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.3)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		xSound('231731980',tr,.8)
		local Already = {}
		for _=0,1,.1 do
			xlerp(tw,ts*ca(15,0,0)*cn(0,1.5,0),.4)
			xlerp(hw,hs,.4)
			xlerp(raw,ras*ca(-20,0,0)*cn(0,0,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(haw,has*ca(20,0,0),.4)
			wait()
			local Hit = NewHitbox(10,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.Health = v.Humanoid.Health - 20
					Already[v] = true
				end
			end
		end
		wait(.2)
		State = 'Idle'
		Human.WalkSpeed = 7
	end
end
--
function SwordSlam()
	if State == 'Walking' or State == 'Idle' then
		State = 'Attacking'
		Human.WalkSpeed = 0
		for _=0,1,.05 do
			xlerp(tw,ts,.2)
			xlerp(hw,hs,.2)
			xlerp(raw,ras*ca(-140,0,0)*cn(0,-1.5,0),.2)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.2)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.2)
			xlerp(llw,lls*cn(0,0,1.25),.2)
			wait()
		end
		coroutine.wrap(function()
		wait()
		xSound('10730819',tr,.5)
		local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('dsasda')}
		local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
		Explosion.CFrame = rp.CFrame * cn(0,-5,-20)
		Mesh.Scale = v3(1,5,1)
		repeat
			Mesh.Scale = Mesh.Scale + v3(1,1,1)
			Explosion.Transparency = Explosion.Transparency + .025
			wait()
		until Explosion.Transparency >= 1
		Explosion:Destroy()
		end)()
		for _=0,1,.15 do
			xlerp(tw,ts*ca(15,0,0)*cn(0,1.5,0),.4)
			xlerp(hw,hs,.4)
			xlerp(raw,ras*ca(-20,0,0)*cn(0,0,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(haw,has*ca(20,0,0),.4)
			wait()
		end
		local Hit = NewHitbox(40,(rp.CFrame * cn(0,-5,-20)).p)
		for _,v in pairs(Hit) do
		v.Humanoid.Health = v.Humanoid.Health - 40
		if sit then
			v.Humanoid.Sit = true
		end
		end
		wait(.5)
		State = 'Idle'
		Human.WalkSpeed = 7
	end
end
--
Mouse.KeyDown:connect(function(key)
	if key == ' ' then
		if State == 'Walking' or State == 'Idle' then
			if JumpDB == false then
				JumpDB = true
				State = 'Jumping'
				Human.Jump = true
				Human.WalkSpeed = 50
				wait(.5)
				State = 'Falling'
				coroutine.wrap(function()
					wait(5)
					JumpDB = false
				end)()
			end
		end
	elseif key == 'z' then
		Combo()
	elseif key == 'x' then
		Charge()
	elseif key == 'c' then
		SwordSlam()
	elseif key == 'v' then
		Stomp()
	end
end)
--
Human.Changed:connect(function()
	if State ~= 'Jumping' then
		Human.Jump = false
	end
end)

Human.FreeFalling:connect(function(a)
	if a then
		if State == 'Walking' or State == 'Idle' then
			State = 'Falling'
		end
	elseif State == 'Jumping' or State == 'Falling' then
		State = 'Idle'
		if FallTime > 10 then
			print('Boom!')
			JumpExplode()
		end
		Human.WalkSpeed = 7
		FallTime = 0
	end
end)
--
wait(1)
game:GetService('RunService').RenderStepped:connect(function()
	UpdateState()
	if State == 'Jumping' or State == 'Falling' then
		FallTime = FallTime + .1
		xlerp(tw,ts,.3)
		xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.2)
		xlerp(raw,ras*ca(0,0,-90)*cn(-1,-1,0),.2)
		xlerp(law,las*ca(0,0,90)*cn(1,-1,0),.2)
		xlerp(rlw,rls*ca(20,0,0),.2)
		xlerp(llw,lls*cn(0,-.5,1.25),.2)
	elseif State == 'Idle' then
		xlerp(tw,ts*ca(0,25,0),.1)
		xlerp(hw,hs*ca(0,-25,0),.1)
		xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.1)
		xlerp(law,las*ca(20,0,0),.1)
		xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.1)
		xlerp(llw,lls*cn(0,0,1.25),.1)
		xlerp(haw,has,.4)
	elseif State == 'Walking' then
		xlerp(tw,ts,.15)
		xlerp(hw,hs,.15)
		--xlerp(law,las*ca(30,0,0),.3)
		--xlerp(raw,ras*ca(20,0,-40)*cn(-1,-.5,0),.15)
		xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.1)
		xlerp(law,las*ca(20,0,0),.1)
		if WalkReverse then
			xlerp(rlw,rls*ca(30,0,0)*cn(0,-1,-1.5),.05)
			xlerp(llw,lls*ca(-30,0,0)*cn(0,-1,1.5),.05)
		else
			xlerp(rlw,rls*ca(-30,0,0)*cn(0,-1,1.5),.05)
			xlerp(llw,lls*ca(30,0,0)*cn(0,-1,-1.5),.05)
		end
	end
end)
--
Human.WalkSpeed = 7
Human.JumpPower = 250
Human.MaxHealth = 500
Human.Health = 500
print 'salty sieg loaded'