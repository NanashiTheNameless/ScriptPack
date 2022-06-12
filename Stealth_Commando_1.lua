----------------------------------Darkend

---------------------------
wait(1)
local MaxMana = 5000000 
local Mana = 5000000 
local ManaGain = 40000 
---------------------------
game.Workspace.YourTrueEnd.Humanoid.Hipheight = 20
---------------------------
repeat game:GetService('RunService').Stepped:wait() until game:GetService('Players').LocalPlayer.Character
----190470714
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
wait(0)
----
----
local mananum=0
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
it=Instance.new
Torso=Char.Torso
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=it("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=it("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Torso.Color
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*Mana/MaxMana,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=it("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Energy("..Mana..")"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")

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
	if id == 190470714 then
		s.Looped = false
		s.Name = "Music"
	end
end

----
xSound(190470714,workspace,1.5)
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
if Char:findFirstChild("Health") then
	Char.Health:Destroy()
end
wait(0)
----
--hd.Mesh.Scale = Vector3.new(hd.Mesh.Scale.X * 3,hd.Mesh.Scale.Y * 3,hd.Mesh.Scale.Z * 3)
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
		v.Humanoid.MaxHealth = 100
		v.Humanoid.Health = v.Humanoid.Health - 1000000000
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
							v.Humanoid.MaxHealth = 100
							v.Humanoid.Health = v.Humanoid.Health - 300000000000
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
			Human.WalkSpeed = 50
			coroutine.wrap(function()
				wait(0)
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
				Char.Head.Velocity=Char.Head.CFrame.lookVector*100
				Mesh.Scale = Mesh.Scale + v3(1,.5,1)
				Explosion.Transparency = Explosion.Transparency + .05
				wait()
			until Explosion.Transparency >= 1
			Explosion:Destroy()
		end
		coroutine.wrap(function()
			wait(0)
			Human.WalkSpeed = 80
			Char.Head.Velocity=Char.Head.CFrame.lookVector*200
			for _=1, 10 do
				coroutine.wrap(Exp)()
				local Hit = NewHitbox(10,Char.Torso.Position)
				for _,v in pairs(Hit) do
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 100000000000
				end
				wait(0)
				xSound('10730819',tr,.8)
				Char.Head.Velocity=Char.Head.CFrame.lookVector*100
			end
			Human.WalkSpeed = 50
			State = 'Idle'
		end)()
		--
		for _=0,1,.05 do
			Char.Head.Velocity=Char.Head.CFrame.lookVector*100
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
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 300000000000
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
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 3000000000000
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
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 300000000000
					Already[v] = true
				end
			end
		end
		wait(.2)
		State = 'Idle'
		Human.WalkSpeed = 50
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
		v.Humanoid.MaxHealth = 100
		v.Humanoid.Health = v.Humanoid.Health - 100000000000
		if sit then
			v.Humanoid.Sit = true
		end
		end
		wait(0)
		State = 'Idle'
		Human.WalkSpeed = 50
	end
end
--
CanBoom = true
function Fire(Part)
	local Flame = Instance.new("ParticleEmitter",Part)
	Flame.LightEmission = 0.21
	Flame.Size = NumberSequence.new(15)
	Flame.Texture = "http://www.roblox.com/asset/?id=366803190"
	Flame.Transparency = NumberSequence.new(0.5)
	Flame.LockedToPart = true
	Flame.Lifetime = NumberRange.new(0.1,0.8)
	Flame.Rate = 40
	Flame.VelocitySpread = 2
end
Mouse.KeyDown:connect(function(key)
	if key == ' ' then
		if State == 'Walking' or State == 'Idle' then
			if JumpDB == false then
				JumpDB = true
				State = 'Jumping'
				Human.Jump = true
				Human.WalkSpeed = 50
				wait(0)
				State = 'Falling'
				coroutine.wrap(function()
					wait(0)
					JumpDB = false
				end)()
			end
		end
	elseif key == 'z' and Mana >= 400 then
		Mana = Mana-400
		Combo()
	elseif key == 'x' and Mana >= 300 then
		Mana = Mana-300
		Charge()
	elseif key == 'c' and Mana >= 250 then
		Mana = Mana-250
		SwordSlam()
	elseif key == 'v' and Mana >= 100 then
		Mana = Mana-100
		Stomp()
	elseif key == "p" and Mana >= 1000 then
		Mana = Mana-1000
		Stomp()
		wait()
		SwordSlam()
		wait()
		Combo()
		wait()
		Combo()
	elseif key == "f" and Mana >= 800 and CanBoom then
		Mana = Mana - 800
		CanBoom = false
		local P = Instance.new("Part",Char)
		P.Name = "Boom"
		P.Anchored = true
		P.Transparency = 1
		Fire(P)
		P.Material = "Neon"
		P.BrickColor = BrickColor.new("Crimson")
		P.TopSurface = "Smooth"
		P.CFrame = Torso.CFrame
		P.CanCollide = false
		xSound(161451748,workspace,0.9)
		function Hit(hit)
			if hit.Parent and hit.Parent:findFirstChild("Humanoid") then
				if hit.Parent:findFirstChild("Torso") and hit.Parent.Name ~= Player.Character.Name and hit.Parent:findFirstChild("Flamed") == nil then
					local Z = Instance.new("StringValue",hit.Parent)
					Z.Name = "Flamed"
					local Torsoo = hit.Parent:findFirstChild("Torso")
					Torsoo.Anchored = true
					for i,v in pairs(hit.Parent:GetChildren()) do
						Fire(v)
					end
					if hit.Parent:findFirstChild("Humanoid") then
						local H = hit.Parent:findFirstChild("Humanoid")
						H.MaxHealth = math.huge
						H.WalkSpeed = 0
						H.JumpPower = 0
						wait()
						Torsoo.Anchored = false
						H:remove()
						if hit.Parent then
							hit.Parent:BreakJoints()
						end
					end
				end
			end
		end
		P.Touched:connect(Hit)
		for i=1,100 do
			wait(0.1)
			P.CFrame = Torso.CFrame
			P.Size = Vector3.new(P.Size.X + 0.5,P.Size.Y + 0.5,P.Size.Z + 0.5)
			P.CFrame = Torso.CFrame
		end
		P:remove()
		wait(0)
		CanBoom = true
		
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
		Human.WalkSpeed = 50
		FallTime = 0
	end
end)
--
wait(0)
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
	fenbarmana2:TweenSize(UDim2.new(4*Mana/MaxMana,0,0.2,0),nil,1,0.4,true)
	fenbarmana4.Text="[Mana]->                   [->  "..Mana.." <-]                    <-[Mana]"
	if Mana>=MaxMana then
		Mana=MaxMana
	else
		if mananum<=8 then
			mananum=mananum+1
		else
			mananum=0
			Mana=Mana+ManaGain
			Char.Humanoid.Health = Char.Humanoid.Health + 1000
		end
	end
	if Mana <= MaxMana/2 then
		fenbarmana2.BackgroundColor = BrickColor.new("Bright red")
		Char.Humanoid.MaxHealth = 40000
		Human.Health = Human.MaxHealth
	else
		fenbarmana2.BackgroundColor = BrickColor.new("Royal purple")
		Char.Humanoid.MaxHealth = 50000
		Human.Health = Human.MaxHealth
	end
end)
--
Char.Humanoid.WalkSpeed = 5
Char.Humanoid.JumpPower = 10

Human.Health = Human.MaxHealth
game.Players.LocalPlayer.Character.Grandark:Remove()
Create = function(itemClass,tabl)
local item = Instance.new(itemClass)
for i,v in pairs(tabl) do
local a,b = ypcall(function() return item[i] end)
if a then
item[i] = tabl[i]
end
end
return item
end
function runDummyScript(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Create("Model",{
["Name"] = "",
["Parent"] = mas,
})
o2 = Create("Model",{
["Name"] = "Leg2",
["Parent"] = o1,
})
o3 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o2,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Dark indigo"),
["Position"] = Vector3.new(8221.66797, -527.146423, 22.0741081),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.66797, -527.146423, 22.0741081, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.94941998, 5.89883947, 2.94942212),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.239216, 0.0823529, 0.521569),
})
o4 = Create("Model",{
["Name"] = "Leg1",
["Parent"] = o1,
})
o5 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o4,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Dark indigo"),
["Position"] = Vector3.new(8218.72168, -527.146423, 21.9709091),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8218.72168, -527.146423, 21.9709091, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.94941998, 5.89883947, 2.94942212),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.239216, 0.0823529, 0.521569),
})
o6 = Create("Model",{
["Name"] = "Chest",
["Parent"] = o1,
})
o7 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o6,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.19824, -521.250122, 21.9186649),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.19824, -521.250122, 21.9186649, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.89883995, 5.89883947, 2.94942212),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o8 = Create("BodyForce",{
["Parent"] = o7,
["force"] = Vector3.new(0, 700000, 0),
})
o9 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(8220.20117, -516.82843, 21.8405418),
["Rotation"] = Vector3.new(178.987961, 2.01760173, -179.968552),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.20117, -516.82843, 21.8405418, -0.999379992, 0.000548702199, 0.0352065153, -7.28807281e-005, 0.999844193, -0.017651625, -0.0352107175, -0.0176432449, -0.999224186),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.89883995, 2.94941974, 2.94942212),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o10 = Create("SpecialMesh",{
["Parent"] = o9,
["Scale"] = Vector3.new(1.25, 1.25, 1.25),
})
o11 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8220.20117, -515.878235, 21.8409729),
["Rotation"] = Vector3.new(2.84583784e-005, 10.9299402, 0.000165357516),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.20117, -515.878235, 21.8409729, 0.981859803, -2.8336799e-006, 0.189608544, 2.98021018e-006, 1, -4.87682314e-007, -0.189608544, 1.04390904e-006, 0.981859803),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.89999914, 5.8999958, 5.90000153),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o12 = Create("SpecialMesh",{
["Parent"] = o11,
["MeshId"] = "http://www.roblox.com/asset/?id=16627529",
["Scale"] = Vector3.new(3.09749913, 3.09749746, 3.09750056),
["VertexColor"] = Vector3.new(1, 1, 5),
["MeshType"] = Enum.MeshType.FileMesh,
})
o13 = Create("Part",{
["Name"] = "Virtual",
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.20117, -516.828186, 21.840971),
["Rotation"] = Vector3.new(-1.80360057e-005, -1.08855966e-005, 0.000173314853),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.20117, -516.828186, 21.840971, 1, -3.0249148e-006, -1.89989493e-007, 3.0249148e-006, 1, 3.14787684e-007, 1.89988498e-007, -3.14788252e-007, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.60000134, 3.29999971, 6.60000181),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o14 = Create("SpecialMesh",{
["Parent"] = o13,
["MeshId"] = "http://www.roblox.com/asset/?id=38965549",
["Scale"] = Vector3.new(3.30000067, 3.29999971, 3.30000091),
["MeshType"] = Enum.MeshType.FileMesh,
})
o15 = Create("BodyForce",{
["Parent"] = o13,
["force"] = Vector3.new(0, 4000, 0),
})
o16 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o6,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.59766, -521.697205, 24.6427689),
["Rotation"] = Vector3.new(-1.01449859, -2.0144918, -45.0338783),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.59766, -521.697205, 24.6427689, 0.7062518, 0.707087517, -0.0351522714, -0.706974089, 0.707018077, 0.0176944733, 0.0373648331, 0.0123549895, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(7.29884005, 5.89883947, 2.34942245),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o17 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Dark indigo"),
["Position"] = Vector3.new(8203.87109, -537.178467, 25.6286907),
["Rotation"] = Vector3.new(-180, -1.46400407e-005, 174.82843),
["Anchored"] = true,
["CFrame"] = CFrame.new(8203.87109, -537.178467, 25.6286907, -0.995929241, -0.0901384205, -2.55516909e-007, -0.0901384205, 0.995929301, 1.80209305e-008, 2.52852459e-007, 4.09795078e-008, -1),
["Size"] = Vector3.new(6.0999999, 0.830000043, 0.669999957),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.239216, 0.0823529, 0.521569),
})
o18 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8214.67773, -523.644653, 25.5337009),
["Rotation"] = Vector3.new(-179.999908, -4.86225108e-005, 135.694885),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.67773, -523.644653, 25.5337009, -0.715630293, -0.698479354, -8.48622904e-007, -0.698479354, 0.715630293, 1.60013553e-006, -5.10361531e-007, 1.73785088e-006, -1),
["Size"] = Vector3.new(25.2899971, 0.969999254, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o19 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8202.5791, -532.480713, 25.5336876),
["Rotation"] = Vector3.new(-180, -1.51904396e-005, 176.259644),
["Anchored"] = true,
["CFrame"] = CFrame.new(8202.5791, -532.480713, 25.5336876, -0.997869909, -0.0652351826, -2.65123191e-007, -0.0652351826, 0.997869968, 1.15199214e-007, 2.57043382e-007, 1.32249227e-007, -1),
["Size"] = Vector3.new(6.73999977, 0.859999239, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o20 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8200.17676, -535.894714, 25.5336895),
["Rotation"] = Vector3.new(-180, -1.51904396e-005, 176.259644),
["Anchored"] = true,
["CFrame"] = CFrame.new(8200.17676, -535.894714, 25.5336895, -0.997869909, -0.0652351826, -2.65123191e-007, -0.0652351826, 0.997869968, 1.15199214e-007, 2.57043382e-007, 1.32249227e-007, -1),
["Size"] = Vector3.new(1.5, 6.11999893, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o21 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8214.92383, -530.36261, 25.5336838),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.92383, -530.36261, 25.5336838, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(20.9599991, 1.86999929, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o22 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8203.48242, -534.917847, 25.5336895),
["Rotation"] = Vector3.new(-180, -1.19210645e-005, 175.856644),
["Anchored"] = true,
["CFrame"] = CFrame.new(8203.48242, -534.917847, 25.5336895, -0.997386396, -0.0722524375, -2.0806182e-007, -0.07225243, 0.997386456, 4.28219842e-008, 2.04424012e-007, 5.77431223e-008, -1),
["Size"] = Vector3.new(5.42999983, 4.11999941, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o23 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8233.12695, -510.936218, 25.4880276),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8233.12695, -510.936218, 25.4880276, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(14.1099997, 1, 1.28999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o24 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8231.875, -509.684692, 25.4880276),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8231.875, -509.684692, 25.4880276, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(14.1099997, 1, 1.28999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o25 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.36035, -517.383118, 25.4460144),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.36035, -517.383118, 25.4460144, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(5, 0.819999993, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o26 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8236.97754, -505.777863, 25.4980202),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8236.97754, -505.777863, 25.4980202, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(3.49000025, 3.04999995, 1.78999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o27 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8232.64258, -510.451904, 25.5030251),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8232.64258, -510.451904, 25.5030251, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(14.1099997, 1.50999999, 0.75999999),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o28 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8231.62109, -511.134216, 25.4980145),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8231.62109, -511.134216, 25.4980145, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(1.46000004, 3.04999995, 1.78999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o29 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.32227, -518.344727, 25.4460125),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.32227, -518.344727, 25.4460125, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(5, 0.819999993, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o30 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8229.30176, -513.453613, 25.4980316),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8229.30176, -513.453613, 25.4980316, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(1.46000004, 3.04999995, 1.78999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o31 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8222.64941, -519.080139, 25.446022),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8222.64941, -519.080139, 25.446022, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(0.919999957, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o32 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.57617, -520.077148, 25.4460144),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.57617, -520.077148, 25.4460144, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(0.860000134, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o33 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.70703, -517.022461, 25.4460125),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.70703, -517.022461, 25.4460125, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o34 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8227.10938, -515.64563, 25.4980392),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.10938, -515.64563, 25.4980392, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(1.46000004, 3.04999995, 1.78999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o35 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.66895, -517.984131, 25.4460068),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.66895, -517.984131, 25.4460068, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Shape"] = Enum.PartType.Cylinder,
["Size"] = Vector3.new(4, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o36 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8233.84082, -508.913879, 25.4980278),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8233.84082, -508.913879, 25.4980278, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(1.46000004, 3.04999995, 1.78999996),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o37 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.DiamondPlate,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8203.87891, -537.957581, 25.5336819),
["Rotation"] = Vector3.new(-180, -1.51904396e-005, 176.259644),
["Anchored"] = true,
["CFrame"] = CFrame.new(8203.87891, -537.957581, 25.5336819, -0.997869909, -0.0652351826, -2.65123191e-007, -0.0652351826, 0.997869968, 1.15199214e-007, 2.57043382e-007, 1.32249227e-007, -1),
["Size"] = Vector3.new(8.61999989, 1.51999927, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o38 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.71387, -528.152893, 25.5336857),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.71387, -528.152893, 25.5336857, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(20.9599991, 3.19999957, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o39 = Create("Part",{
["Parent"] = o6,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.0166, -519.625122, 25.5336781),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.0166, -519.625122, 25.5336781, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(5.82999992, 5.70999956, 0.200000003),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o40 = Create("Part",{
["Parent"] = o6,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Dark indigo"),
["Position"] = Vector3.new(8214.13184, -529.570618, 25.6136799),
["Rotation"] = Vector3.new(180, -1.35833752e-005, 135.000092),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.13184, -529.570618, 25.6136799, -0.707107961, -0.707105637, -2.37074616e-007, -0.707105637, 0.707107961, -1.05362963e-008, 1.75087521e-007, 1.60186488e-007, -1),
["Size"] = Vector3.new(20.9599991, 0.769999981, 0.680000007),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.239216, 0.0823529, 0.521569),
})
o41 = Create("Model",{
["Name"] = "Arm1",
["Parent"] = o1,
})
o42 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o41,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Position"] = Vector3.new(8215.77832, -521.249939, 21.7633686),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.77832, -521.249939, 21.7633686, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(2.94941998, 5.89883947, 2.94942212),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o43 = Create("ParticleEmitter",{
["Parent"] = o42,
["Size"] = NumberSequence.new(2,2),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0)),
["LightEmission"] = -10,
["Speed"] = NumberRange.new(0,0),
})
o44 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8215.27148, -521.192383, 21.6802559),
["Rotation"] = Vector3.new(-88.5104904, 1.22399068, 89.3576508),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.27148, -521.192383, 21.6802559, 0.0112082632, -0.99970901, 0.0213610437, 0.0257528834, 0.0216438938, 0.999434114, -0.999605536, -0.010651811, 0.0259879809),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.15906143, 3.15906024, 0.631812632),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o45 = Create("CylinderMesh",{
["Parent"] = o44,
})
o46 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.54102, -523.377075, 21.6077709),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.54102, -523.377075, 21.6077709, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.85405469, 0.631812096, 3.47496915),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o47 = Create("BlockMesh",{
["Parent"] = o46,
})
o48 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8214.66797, -522.805847, 21.6285439),
["Rotation"] = Vector3.new(63.8046303, 88.6173248, -62.3219795),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.66797, -522.805847, 21.6285439, 0.0112082632, 0.0213685092, 0.999708831, 0.0257528834, 0.999433935, -0.0216513574, -0.999605536, 0.025988061, 0.0106516164),
["CanCollide"] = false,
["Size"] = Vector3.new(3.38019586, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o49 = Create("BlockMesh",{
["Parent"] = o48,
})
o50 = Create("Part",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.4248, -519.781067, 19.6490421),
["Rotation"] = Vector3.new(136.920944, -0.35561949, 91.6492081),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.4248, -519.781067, 19.6490421, -0.0287795458, -0.999566555, -0.0062066908, -0.729987323, 0.0252587851, -0.682993829, 0.682854533, -0.0151254442, -0.730397761),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o51 = Create("BlockMesh",{
["Parent"] = o50,
["Scale"] = Vector3.new(0.800000012, 1.01999998, 0.800000012),
})
o52 = Create("Part",{
["Name"] = "Open2",
["Parent"] = o41,
["Material"] = Enum.Material.DiamondPlate,
["Position"] = Vector3.new(8215.53516, -524.247925, 20.8779259),
["Rotation"] = Vector3.new(4.23354292, -0.700000763, -1.19132614),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.53516, -524.247925, 20.8779259, 0.999709308, 0.0207895152, -0.0122170141, -0.0216360278, 0.997037172, -0.0738165453, 0.0106462063, 0.0740594119, 0.997197092),
["CanCollide"] = false,
["Size"] = Vector3.new(2.71679378, 0.631812274, 2.62202334),
})
o53 = Create("BlockMesh",{
["Parent"] = o52,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o54 = Create("Part",{
["Name"] = "Open1",
["Parent"] = o41,
["Material"] = Enum.Material.DiamondPlate,
["Position"] = Vector3.new(8215.56934, -524.278748, 22.291214),
["Rotation"] = Vector3.new(-0.440670282, -0.600076675, -1.24524188),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.56934, -524.278748, 22.291214, 0.99970901, 0.0217306688, -0.0104731219, -0.0216506869, 0.999736071, 0.00769064995, 0.010637478, -0.00746166194, 0.9999156),
["CanCollide"] = false,
["Size"] = Vector3.new(2.71679378, 0.631812274, 2.62202334),
})
o55 = Create("BlockMesh",{
["Parent"] = o54,
["Scale"] = Vector3.new(1, 1, 0.5),
})
o56 = Create("Part",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.44238, -517.84613, 21.7182751),
["Rotation"] = Vector3.new(46.9107246, -1.64942753, 89.6432648),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.44238, -517.84613, 21.7182751, 0.00622360734, -0.999566257, -0.028783964, 0.682992995, 0.0252735745, -0.729987502, 0.730398357, -0.015116089, 0.682854056),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o57 = Create("BlockMesh",{
["Parent"] = o56,
["Scale"] = Vector3.new(0.800000012, 1.01999998, 0.800000012),
})
o58 = Create("Part",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.34277, -521.848755, 21.5837975),
["Rotation"] = Vector3.new(46.9107246, -1.64942753, 89.6432648),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.34277, -521.848755, 21.5837975, 0.00622360734, -0.999566257, -0.028783964, 0.682992995, 0.0252735745, -0.729987502, 0.730398357, -0.015116089, 0.682854056),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o59 = Create("BlockMesh",{
["Parent"] = o58,
["Scale"] = Vector3.new(0.800000012, 1.01999998, 0.800000012),
})
o60 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8217.18164, -522.237244, 21.6265163),
["Rotation"] = Vector3.new(-178.095703, 0.914753497, 91.4184647),
["Anchored"] = true,
["CFrame"] = CFrame.new(8217.18164, -522.237244, 21.6265163, -0.0247511119, -0.999566197, 0.0159647819, -0.999128342, 0.02527095, 0.0332261547, -0.0336151868, -0.0151284803, -0.999320388),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.30815744, 0.769385517, 3.84693217),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o61 = Create("BlockMesh",{
["Parent"] = o60,
["Scale"] = Vector3.new(1, 0.00999999978, 1.00999999),
})
o62 = Create("WedgePart",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8214.50879, -521.40033, 21.6115036),
["Rotation"] = Vector3.new(59.1183815, 88.3128662, 122.797653),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.50879, -521.40033, 21.6115036, -0.0159494281, -0.0247508921, 0.999566495, -0.0332334451, -0.999128103, -0.0252703242, 0.999320328, -0.0336220823, 0.0151129672),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 0.769385636, 2.30815887),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o63 = Create("SpecialMesh",{
["Parent"] = o62,
["Scale"] = Vector3.new(1.00999999, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o64 = Create("WedgePart",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.31543, -519.882263, 21.6749859),
["Rotation"] = Vector3.new(-120.881615, -88.3128662, -122.797653),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.31543, -519.882263, 21.6749859, -0.0159494281, 0.0247508921, -0.999566495, -0.0332334451, 0.999128103, 0.0252703242, 0.999320328, 0.0336220823, -0.0151129672),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 2.30815673, 3.84693217),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o65 = Create("SpecialMesh",{
["Parent"] = o64,
["Scale"] = Vector3.new(1.00999999, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o66 = Create("WedgePart",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8216.79688, -522.227295, 21.6205692),
["Rotation"] = Vector3.new(-88.0726547, 1.41775942, 89.0858459),
["Anchored"] = true,
["CFrame"] = CFrame.new(8216.79688, -522.227295, 21.6205692, 0.0159494281, -0.999566615, 0.0247420445, 0.0332334451, 0.0252614766, 0.999128342, -0.999320328, -0.0151132615, 0.0336219557),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 0.769385636, 2.30815887),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o67 = Create("SpecialMesh",{
["Parent"] = o66,
["Scale"] = Vector3.new(1.00999999, 1, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o68 = Create("WedgePart",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8216.04688, -521.439148, 21.6350441),
["Rotation"] = Vector3.new(-120.881615, -88.3128662, 57.2023468),
["Anchored"] = true,
["CFrame"] = CFrame.new(8216.04688, -521.439148, 21.6350441, 0.0159494281, -0.0247508921, -0.999566495, 0.0332334451, -0.999128103, 0.0252703242, -0.999320328, -0.0336220823, -0.0151129672),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 0.769385636, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o69 = Create("SpecialMesh",{
["Parent"] = o68,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o70 = Create("CornerWedgePart",{
["Name"] = "Spike",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.62598, -520.63562, 20.7813683),
["Rotation"] = Vector3.new(-92.4835129, -19.2228851, 66.9341507),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.62598, -520.63562, 20.7813683, 0.369944602, -0.868757427, -0.329243809, 0.0890051201, -0.319614917, 0.943358123, -0.924780548, -0.378294587, -0.04091594),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o71 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8215.97363, -520.113892, 21.6778984),
["Rotation"] = Vector3.new(-87.8259354, 16.415802, -90.9525833),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.97363, -520.113892, 21.6778984, -0.0159471985, 0.959103584, 0.282606006, -0.0332353525, -0.282994241, 0.958545625, 0.999320328, 0.00589360716, 0.0363891087),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 1.53877139, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o72 = Create("SpecialMesh",{
["Parent"] = o71,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o73 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.39258, -519.82843, 21.6545067),
["Rotation"] = Vector3.new(-43.0790825, 0.355639905, 88.3507767),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.39258, -519.82843, 21.6545067, 0.0287797991, -0.999566495, 0.00620704703, 0.729987085, 0.0252592061, 0.682994008, -0.682854772, -0.0151253678, 0.730397582),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.53877294),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o74 = Create("BlockMesh",{
["Parent"] = o73,
["Scale"] = Vector3.new(0.899999976, 1.02499998, 0.899999976),
})
o75 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.4248, -519.781067, 19.6490421),
["Rotation"] = Vector3.new(136.920944, -0.35561949, 91.6492081),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.4248, -519.781067, 19.6490421, -0.0287795458, -0.999566555, -0.0062066908, -0.729987323, 0.0252587851, -0.682993829, 0.682854533, -0.0151254442, -0.730397761),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o76 = Create("BlockMesh",{
["Parent"] = o75,
["Scale"] = Vector3.new(1, 1.00999999, 1),
})
o77 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.36035, -519.914185, 23.6528034),
["Rotation"] = Vector3.new(136.920944, -0.35561949, 91.6492081),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.36035, -519.914185, 23.6528034, -0.0287795458, -0.999566555, -0.0062066908, -0.729987323, 0.0252587851, -0.682993829, 0.682854533, -0.0151254442, -0.730397761),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o78 = Create("BlockMesh",{
["Parent"] = o77,
["Scale"] = Vector3.new(1, 1.00999999, 1),
})
o79 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.44238, -517.84613, 21.7182751),
["Rotation"] = Vector3.new(46.9107246, -1.64942753, 89.6432648),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.44238, -517.84613, 21.7182751, 0.00622360734, -0.999566257, -0.028783964, 0.682992995, 0.0252735745, -0.729987502, 0.730398357, -0.015116089, 0.682854056),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o80 = Create("BlockMesh",{
["Parent"] = o79,
["Scale"] = Vector3.new(1, 1.00999999, 1),
})
o81 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.34277, -521.848755, 21.5837975),
["Rotation"] = Vector3.new(46.9107246, -1.64942753, 89.6432648),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.34277, -521.848755, 21.5837975, 0.00622360734, -0.999566257, -0.028783964, 0.682992995, 0.0252735745, -0.729987502, 0.730398357, -0.015116089, 0.682854056),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o82 = Create("BlockMesh",{
["Parent"] = o81,
["Scale"] = Vector3.new(1, 1.00999999, 1),
})
o83 = Create("Part",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.36035, -519.914185, 23.6528034),
["Rotation"] = Vector3.new(136.920944, -0.35561949, 91.6492081),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.36035, -519.914185, 23.6528034, -0.0287795458, -0.999566555, -0.0062066908, -0.729987323, 0.0252587851, -0.682993829, 0.682854533, -0.0151254442, -0.730397761),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o84 = Create("BlockMesh",{
["Parent"] = o83,
["Scale"] = Vector3.new(0.800000012, 1.01999998, 0.800000012),
})
o85 = Create("Part",{
["Name"] = "CGlove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.04688, -519.834534, 21.6388969),
["Rotation"] = Vector3.new(-133.093399, 2.04970527, 90.3730316),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.04688, -519.834534, 21.6388969, -0.00650648912, -0.999338984, 0.0357664749, -0.683005035, 0.0305656027, 0.729773879, -0.730384648, -0.0196804143, -0.68275249),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.769385874, 0.769385517, 5.38570452),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o86 = Create("SpecialMesh",{
["Parent"] = o85,
["MeshId"] = "http://www.roblox.com/Asset/?id=9756362",
["Scale"] = Vector3.new(0.384692937, 0.384692758, 4.23162508),
["MeshType"] = Enum.MeshType.FileMesh,
})
o87 = Create("Part",{
["Name"] = "CGlove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.04688, -519.825195, 21.6490021),
["Rotation"] = Vector3.new(-43.0803947, 0.372397125, 87.9509506),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.04688, -519.825195, 21.6490021, 0.0357542671, -0.999339521, 0.00649951026, 0.729770303, 0.0305518117, 0.683009446, -0.682756901, -0.0196773522, 0.730380654),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.769385874, 0.769385517, 5.38570452),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o88 = Create("SpecialMesh",{
["Parent"] = o87,
["MeshId"] = "http://www.roblox.com/Asset/?id=9756362",
["Scale"] = Vector3.new(0.384692937, 0.384692758, 4.23162508),
["MeshType"] = Enum.MeshType.FileMesh,
})
o89 = Create("BodyForce",{
["Parent"] = o87,
["force"] = Vector3.new(0, 4000, 0),
})
o90 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8216.07617, -519.590698, 21.6968002),
["Rotation"] = Vector3.new(-88.0725403, 1.41776621, -90.9140244),
["Anchored"] = true,
["CFrame"] = CFrame.new(8216.07617, -519.590698, 21.6968002, -0.0159472004, 0.999566734, 0.0247421619, -0.0332354978, -0.0252615549, 0.999128222, 0.999320328, 0.0151109817, 0.0336239487),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 2.30815697, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o91 = Create("SpecialMesh",{
["Parent"] = o90,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o92 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8215.65625, -519.59552, 21.6901226),
["Rotation"] = Vector3.new(-88.3158875, -13.5802345, -90.9400253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.65625, -519.59552, 21.6901226, -0.0159471668, 0.971911252, -0.234806806, -0.0332355909, 0.234191656, 0.971622229, 0.999320328, 0.0232985653, 0.0285673514),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 3.07754254, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o93 = Create("SpecialMesh",{
["Parent"] = o92,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o94 = Create("CornerWedgePart",{
["Name"] = "SNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(8212.62012, -519.100098, 22.4307632),
["Rotation"] = Vector3.new(88.1291428, -22.1828289, 68.6674576),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.62012, -519.100098, 22.4307632, 0.336854726, -0.862539768, -0.377563298, -0.106866829, 0.363383234, -0.92549026, 0.93547225, 0.352104753, 0.0302304681),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(1, 0, 0),
})
o95 = Create("CornerWedgePart",{
["Name"] = "SNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(8212.64551, -519.04834, 20.8694153),
["Rotation"] = Vector3.new(-2.76416516, -21.508091, 66.20121),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.64551, -519.04834, 20.8694153, 0.375426739, -0.851255178, -0.366632581, 0.921038389, 0.386878997, 0.0448669568, 0.103649206, -0.354526907, 0.929283321),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(1, 0, 0),
})
o96 = Create("CornerWedgePart",{
["Name"] = "SNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(8212.60645, -520.612366, 20.8053493),
["Rotation"] = Vector3.new(-92.4835129, -19.2228851, 66.9341507),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.60645, -520.612366, 20.8053493, 0.369944602, -0.868757427, -0.329243809, 0.0890051201, -0.319614917, 0.943358123, -0.924780548, -0.378294587, -0.04091594),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(1, 0, 0),
})
o97 = Create("CornerWedgePart",{
["Name"] = "Spike",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.59961, -520.690308, 22.4239998),
["Rotation"] = Vector3.new(178.354996, -19.8872585, 69.3663864),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.59961, -520.690308, 22.4239998, 0.331375599, -0.880042255, -0.340170443, -0.938908517, -0.343106776, -0.026994938, -0.0929580927, 0.328334332, -0.939976275),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o98 = Create("CornerWedgePart",{
["Name"] = "Spike",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.63965, -519.077942, 22.4550915),
["Rotation"] = Vector3.new(88.1291428, -22.1828289, 68.6674576),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.63965, -519.077942, 22.4550915, 0.336854726, -0.862539768, -0.377563298, -0.106866829, 0.363383234, -0.92549026, 0.93547225, 0.352104753, 0.0302304681),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o99 = Create("CornerWedgePart",{
["Name"] = "Spike",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.66504, -519.024597, 20.8468552),
["Rotation"] = Vector3.new(-2.76416516, -21.508091, 66.20121),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.66504, -519.024597, 20.8468552, 0.375426739, -0.851255178, -0.366632581, 0.921038389, 0.386878997, 0.0448669568, 0.103649206, -0.354526907, 0.929283321),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o100 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8212.93848, -519.952637, 21.5575733),
["Rotation"] = Vector3.new(-108.229202, -87.9837418, -152.630569),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.93848, -519.952637, 21.5575733, -0.03124604, 0.0161752701, -0.999380887, -0.699158013, 0.714185774, 0.0334187597, 0.714284062, 0.699769378, -0.0110064056),
["Size"] = Vector3.new(0.631812334, 0.631812274, 0.631812871),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o101 = Create("BlockMesh",{
["Parent"] = o100,
["Offset"] = Vector3.new(0, 0.0500000007, 0),
["Scale"] = Vector3.new(1.29999995, 1.29999995, 0.400000006),
})
o102 = Create("Part",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.39258, -519.844971, 21.6536446),
["Rotation"] = Vector3.new(-43.0790825, 0.355639905, 88.3507767),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.39258, -519.844971, 21.6536446, 0.0287797991, -0.999566495, 0.00620704703, 0.729987085, 0.0252592061, 0.682994008, -0.682854772, -0.0151253678, 0.730397582),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.53877175, 0.769385517, 1.53877294),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o103 = Create("BlockMesh",{
["Parent"] = o102,
["Scale"] = Vector3.new(0.600000024, 1.03999996, 0.600000024),
})
o104 = Create("Part",{
["Name"] = "Glove",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.39258, -519.833618, 21.6460285),
["Rotation"] = Vector3.new(46.9107246, -1.64942753, 89.6432648),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.39258, -519.833618, 21.6460285, 0.00622360734, -0.999566257, -0.028783964, 0.682992995, 0.0252735745, -0.729987502, 0.730398357, -0.015116089, 0.682854056),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(2.30815744, 0.769385517, 2.30815887),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o105 = Create("BlockMesh",{
["Parent"] = o104,
["Scale"] = Vector3.new(1, 1.00999999, 1),
})
o106 = Create("CornerWedgePart",{
["Name"] = "SNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(8212.58105, -520.665588, 22.4009781),
["Rotation"] = Vector3.new(178.354996, -19.8872585, 69.3663864),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.58105, -520.665588, 22.4009781, 0.331375599, -0.880042255, -0.340170443, -0.938908517, -0.343106776, -0.026994938, -0.0929580927, 0.328334332, -0.939976275),
["Size"] = Vector3.new(0.769385874, 1.53877127, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(1, 0, 0),
})
o107 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8214.56152, -519.247864, 21.6841831),
["Rotation"] = Vector3.new(-88.5929108, -28.5779305, -91.0405121),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.56152, -519.247864, 21.6841831, -0.0159469973, 0.878022552, -0.47835362, -0.0332358703, 0.477684647, 0.877902567, 0.999320328, 0.0298984125, 0.0215642061),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 2.30815697, 0.769386351),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o108 = Create("SpecialMesh",{
["Parent"] = o107,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o109 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.68262, -522.110229, 21.5749531),
["Rotation"] = Vector3.new(88.8071899, 73.5569687, 93.2293396),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.68262, -522.110229, 21.5749531, -0.0159456413, -0.282612443, 0.959101677, -0.0332332477, -0.958543777, -0.283000588, 0.999320447, -0.0363866873, 0.00589246629),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 3.07754254, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o110 = Create("SpecialMesh",{
["Parent"] = o109,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o111 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8214.83594, -522.139221, 21.5925598),
["Rotation"] = Vector3.new(-86.4183578, 61.4050217, -91.9097366),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.83594, -522.139221, 21.5925598, -0.0159498472, 0.478349119, 0.878024936, -0.0332329571, -0.877905071, 0.477680117, 0.999320388, -0.0215604398, 0.0298994072),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 3.07754254, 0.76938647),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o112 = Create("SpecialMesh",{
["Parent"] = o111,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o113 = Create("WedgePart",{
["Name"] = "GNeon",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8214.82129, -522.363464, 21.5847435),
["Rotation"] = Vector3.new(-88.5930328, -28.5780468, -91.040451),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.82129, -522.363464, 21.5847435, -0.0159460437, 0.878021538, -0.478355408, -0.0332332104, 0.477686435, 0.877901673, 0.999320447, 0.0298963394, 0.021562269),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(3.84692955, 0.769385695, 1.5387727),
["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o114 = Create("SpecialMesh",{
["Parent"] = o113,
["Scale"] = Vector3.new(1.005, 1, 1.00999999),
["MeshType"] = Enum.MeshType.Wedge,
})
o115 = Create("Part",{
["Name"] = "CenterJoint",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8212.58008, -523.844666, 21.5128784),
["Rotation"] = Vector3.new(92.634285, -1.23305249, 90.1502914),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.58008, -523.844666, 21.5128784, -0.00262249098, -0.999765038, -0.0215191636, -0.0459041633, 0.0216169097, -0.998712003, 0.998942435, -0.0016312938, -0.04595007),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o116 = Create("SpecialMesh",{
["Parent"] = o115,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1.5),
["MeshType"] = Enum.MeshType.Wedge,
})
o117 = Create("Part",{
["Name"] = "CenterTip",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8212.4873, -528.145874, 21.3150845),
["Rotation"] = Vector3.new(-87.3657303, 1.23305845, 89.8497086),
["Anchored"] = true,
["CFrame"] = CFrame.new(8212.4873, -528.145874, 21.3150845, 0.0026225613, -0.999764979, 0.0215192679, 0.0459040254, 0.021617014, 0.998712003, -0.998942435, -0.00163136225, 0.0459499359),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o118 = Create("SpecialMesh",{
["Parent"] = o117,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o119 = Create("Part",{
["Name"] = "IndexJoint",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.09277, -523.934937, 23.2347794),
["Rotation"] = Vector3.new(92.6342926, -1.23303723, 55.7736816),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.09277, -523.934937, 23.2347794, 0.562332988, -0.826630831, -0.0215188973, -0.0500922799, -0.00807780586, -0.998712003, 0.825392246, 0.562686563, -0.0459502488),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o120 = Create("SpecialMesh",{
["Parent"] = o119,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1.29999995),
["MeshType"] = Enum.MeshType.Wedge,
})
o121 = Create("Part",{
["Name"] = "IndexTip",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.01563, -527.390381, 23.0819511),
["Rotation"] = Vector3.new(-87.3657074, 1.23303127, 124.226318),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.01563, -527.390381, 23.0819511, -0.562332988, -0.82663095, 0.021518793, 0.0500921756, -0.00807785336, 0.998711944, -0.825392306, 0.562686563, 0.0459501855),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o122 = Create("SpecialMesh",{
["Parent"] = o121,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 0.699999988),
["MeshType"] = Enum.MeshType.Wedge,
})
o123 = Create("Part",{
["Name"] = "PinkieJoint",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.50781, -524.125488, 18.7483444),
["Rotation"] = Vector3.new(92.6342697, -1.23304045, -179.850143),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.50781, -524.125488, 18.7483444, -0.999765038, 0.00261503039, -0.0215189531, 0.0216163546, 0.0459041446, -0.998712003, -0.00162385311, -0.998942494, -0.0459498875),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o124 = Create("SpecialMesh",{
["Parent"] = o123,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o125 = Create("Part",{
["Name"] = "PinkieTip",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8215.45117, -526.692078, 18.6347523),
["Rotation"] = Vector3.new(-87.3657455, 1.23305047, -0.149871036),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.45117, -526.692078, 18.6347523, 0.999765098, 0.0026151347, 0.0215191282, -0.0216165353, 0.0459039137, 0.998712003, 0.00162395427, -0.998942494, 0.0459496602),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o126 = Create("SpecialMesh",{
["Parent"] = o125,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 0.5),
["MeshType"] = Enum.MeshType.Wedge,
})
o127 = Create("Part",{
["Name"] = "RingJoint",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8213.10156, -523.776733, 19.7927074),
["Rotation"] = Vector3.new(92.6342773, -1.23303366, 124.526566),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.10156, -523.776733, 19.7927074, -0.566657007, -0.823672771, -0.0215188358, -0.025681518, 0.0437597707, -0.998711944, 0.823553503, -0.565374494, -0.0459499434),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o128 = Create("SpecialMesh",{
["Parent"] = o127,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1.29999995),
["MeshType"] = Enum.MeshType.Wedge,
})
o129 = Create("Part",{
["Name"] = "RingTip",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8213.02539, -527.200623, 19.6405754),
["Rotation"] = Vector3.new(-87.3657303, 1.2330488, 55.4734344),
["Anchored"] = true,
["CFrame"] = CFrame.new(8213.02539, -527.200623, 19.6405754, 0.566657066, -0.823672712, 0.0215191003, 0.0256812796, 0.0437599309, 0.998712003, -0.823553443, -0.565374553, 0.0459498465),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o130 = Create("SpecialMesh",{
["Parent"] = o129,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 0.699999988),
["MeshType"] = Enum.MeshType.Wedge,
})
o131 = Create("Part",{
["Name"] = "ThumbJoint",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.50098, -524.034485, 24.2712746),
["Rotation"] = Vector3.new(92.6342773, -1.23304701, 0.149869204),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.50098, -524.034485, 24.2712746, 0.999765098, -0.00261510257, -0.0215190686, -0.0216164757, -0.0459042452, -0.998712003, 0.00162391749, 0.998942494, -0.0459499881),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o132 = Create("SpecialMesh",{
["Parent"] = o131,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o133 = Create("Part",{
["Name"] = "ThumbTip",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8215.44531, -526.615234, 24.1525326),
["Rotation"] = Vector3.new(-87.3657227, 1.23303843, 179.850143),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.44531, -526.615234, 24.1525326, -0.999765098, -0.00261511304, 0.0215189196, 0.0216163266, -0.0459042303, 0.998712003, -0.00162393518, 0.998942494, 0.0459499732),
["CanCollide"] = false,
["Size"] = Vector3.new(3.4454143, 4.13449192, 3.44541478),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o134 = Create("SpecialMesh",{
["Parent"] = o133,
["Scale"] = Vector3.new(0.200000003, 0.200000003, 0.5),
["MeshType"] = Enum.MeshType.Wedge,
})
o135 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Quill grey"),
["Position"] = Vector3.new(8215.33496, -521.176514, 21.6497631),
["Rotation"] = Vector3.new(-88.5104904, 1.22399068, 89.3576508),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.33496, -521.176514, 21.6497631, 0.0112082632, -0.99970901, 0.0213610437, 0.0257528834, 0.0216438938, 0.999434114, -0.999605536, -0.010651811, 0.0259879809),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.15906143, 3.15906024, 2.3061161),
["Color"] = Color3.new(0.87451, 0.87451, 0.870588),
})
o136 = Create("CylinderMesh",{
["Parent"] = o135,
})
o137 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(8215.5498, -522.065002, 21.5816212),
["Rotation"] = Vector3.new(63.8054962, 88.6176071, -62.3224182),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.5498, -522.065002, 21.5816212, 0.0112068811, 0.0213662703, 0.999708951, 0.0257603936, 0.999433756, -0.0216491651, -0.999605417, 0.0259955134, 0.0106501309),
["Size"] = Vector3.new(2.11657119, 2.59043026, 3.1590631),
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o138 = Create("CylinderMesh",{
["Parent"] = o137,
})
o139 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.51563, -522.739258, 20.8021793),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.51563, -522.739258, 20.8021793, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o140 = Create("BlockMesh",{
["Parent"] = o139,
})
o141 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.59863, -519.208862, 21.7157974),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.59863, -519.208862, 21.7157974, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.79087377, 0.631812096, 3.47496915),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o142 = Create("BlockMesh",{
["Parent"] = o141,
})
o143 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.5127, -522.753662, 22.5715771),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.5127, -522.753662, 22.5715771, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.72769284, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o144 = Create("BlockMesh",{
["Parent"] = o143,
})
o145 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.53223, -522.115845, 20.5184498),
["Rotation"] = Vector3.new(91.4895096, -1.22399068, 0.64228344),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.53223, -522.115845, 20.5184498, 0.99970901, -0.0112071689, -0.0213610437, -0.0216438659, -0.0257529076, -0.999434114, 0.0106507177, 0.999605536, -0.0259879809),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.20044279, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o146 = Create("BlockMesh",{
["Parent"] = o145,
})
o147 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8216.40723, -519.794983, 21.7098179),
["Rotation"] = Vector3.new(63.8046303, 88.6173248, -62.3219795),
["Anchored"] = true,
["CFrame"] = CFrame.new(8216.40723, -519.794983, 21.7098179, 0.0112082632, 0.0213685092, 0.999708831, 0.0257528834, 0.999433935, -0.0216513574, -0.999605536, 0.025988061, 0.0106516164),
["CanCollide"] = false,
["Size"] = Vector3.new(3.41178679, 1.57953, 0.631812632),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o148 = Create("BlockMesh",{
["Parent"] = o147,
})
o149 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.56152, -519.78302, 22.553875),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.56152, -519.78302, 22.553875, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o150 = Create("BlockMesh",{
["Parent"] = o149,
})
o151 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.58008, -519.768921, 20.7846642),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.58008, -519.768921, 20.7846642, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o152 = Create("BlockMesh",{
["Parent"] = o151,
})
o153 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8214.64063, -519.662292, 21.7092018),
["Rotation"] = Vector3.new(63.8046303, 88.6173248, -62.3219795),
["Anchored"] = true,
["CFrame"] = CFrame.new(8214.64063, -519.662292, 21.7092018, 0.0112082632, 0.0213685092, 0.999708831, 0.0257528834, 0.999433935, -0.0216513574, -0.999605536, 0.025988061, 0.0106516164),
["CanCollide"] = false,
["Size"] = Vector3.new(3.38019633, 1.32680523, 0.631812632),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o154 = Create("BlockMesh",{
["Parent"] = o153,
})
o155 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.5459, -520.358948, 22.8390751),
["Rotation"] = Vector3.new(91.4895096, -1.22399068, 0.64228344),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.5459, -520.358948, 22.8390751, 0.99970901, -0.0112071689, -0.0213610437, -0.0216438659, -0.0257529076, -0.999434114, 0.0106507177, 0.999605536, -0.0259879809),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.20044279, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o156 = Create("BlockMesh",{
["Parent"] = o155,
})
o157 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.33496, -521.177917, 21.6813335),
["Rotation"] = Vector3.new(-88.5104904, 1.22399068, 89.3576508),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.33496, -521.177917, 21.6813335, 0.0112082632, -0.99970901, 0.0213610437, 0.0257528834, 0.0216438938, 0.999434114, -0.999605536, -0.010651811, 0.0259879809),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.15906143, 3.15906024, 0.789765775),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o158 = Create("CylinderMesh",{
["Parent"] = o157,
})
o159 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8216.4375, -522.812622, 21.6482067),
["Rotation"] = Vector3.new(63.8046303, 88.6173248, -62.3219795),
["Anchored"] = true,
["CFrame"] = CFrame.new(8216.4375, -522.812622, 21.6482067, 0.0112082632, 0.0213685092, 0.999708831, 0.0257528834, 0.999433935, -0.0216513574, -0.999605536, 0.025988061, 0.0106516164),
["CanCollide"] = false,
["Size"] = Vector3.new(3.38019586, 1.67430186, 0.631812632),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o160 = Create("BlockMesh",{
["Parent"] = o159,
})
o161 = Create("Part",{
["Name"] = "Smooth Block Model",
["Parent"] = o41,
["BrickColor"] = BrickColor.new("Black"),
["Position"] = Vector3.new(8215.55664, -521.172485, 21.5854778),
["Rotation"] = Vector3.new(63.8054962, 88.6176071, -62.3224182),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.55664, -521.172485, 21.5854778, 0.0112068811, 0.0213662703, 0.999708951, 0.0257603936, 0.999433756, -0.0216491651, -0.999605417, 0.0259955134, 0.0106501309),
["Size"] = Vector3.new(2.46406817, 5.74949169, 3.15906358),
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o162 = Create("CylinderMesh",{
["Parent"] = o161,
})
o163 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.57129, -520.329468, 20.4700871),
["Rotation"] = Vector3.new(91.4895096, -1.22399068, 0.64228344),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.57129, -520.329468, 20.4700871, 0.99970901, -0.0112071689, -0.0213610437, -0.0216438659, -0.0257529076, -0.999434114, 0.0106507177, 0.999605536, -0.0259879809),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.20044279, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o164 = Create("BlockMesh",{
["Parent"] = o163,
})
o165 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Lily white"),
["Position"] = Vector3.new(8215.50684, -522.145325, 22.8874454),
["Rotation"] = Vector3.new(91.4895096, -1.22399068, 0.64228344),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.50684, -522.145325, 22.8874454, 0.99970901, -0.0112071689, -0.0213610437, -0.0216438659, -0.0257529076, -0.999434114, 0.0106507177, 0.999605536, -0.0259879809),
["CanCollide"] = false,
["Size"] = Vector3.new(3.6961019, 1.20044279, 0.631812632),
["Color"] = Color3.new(0.929412, 0.917647, 0.917647),
})
o166 = Create("BlockMesh",{
["Parent"] = o165,
})
o167 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.56738, -521.372437, 21.6755123),
["Rotation"] = Vector3.new(1.47579086, -0.642136991, -1.22406769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.56738, -521.372437, 21.6755123, 0.99970901, 0.0213610437, -0.0112071699, -0.0216438659, 0.999434114, -0.0257529449, 0.0106507177, 0.0259880181, 0.999605536),
["CanCollide"] = false,
["Size"] = Vector3.new(3.50655866, 6.47607422, 3.25383449),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o168 = Create("BlockMesh",{
["Parent"] = o167,
})
o169 = Create("Part",{
["Parent"] = o41,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8215.77734, -521.207642, 21.7633705),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8215.77734, -521.207642, 21.7633705, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.07524276, 6.15048504, 3.07524538),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o170 = Create("ParticleEmitter",{
["Parent"] = o169,
["Size"] = NumberSequence.new(0.5,0.5),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0)),
["LightEmission"] = -10,
["Speed"] = NumberRange.new(0,0),
})
o171 = Create("Part",{
["Name"] = "Head",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8203.09375, -528.68396, 11.6878204),
["Rotation"] = Vector3.new(-179.886169, -88.998291, -179.887955),
["Anchored"] = true,
["CFrame"] = CFrame.new(8203.09375, -528.68396, 11.6878204, -0.0174821224, 3.41876585e-005, -0.999847174, -3.07331102e-005, 1, 3.47302448e-005, 0.999847174, 3.1335574e-005, -0.0174821205),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.262356371, 0.2623564, 0.262356371),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o172 = Create("Script",{
["Name"] = "Arm1",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm1") == nil then
		local g = script.Parent.Parent.Arm1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" or C[i].className == "UnionOperation" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" or C[i].className == "UnionOperation" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o172)
end))
o173 = Create("Script",{
["Name"] = "Leg1",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg1") == nil then
		local g = script.Parent.Parent.Leg1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" or C[i].className == "UnionOperation" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" or C[i].className == "UnionOperation" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o173)
end))
o174 = Create("Script",{
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouch(part) 
local human = part.Parent:findFirstChild("Humanoid") 
if human ~= nil then 
part.Parent:findFirstChild("Head").Transparency = 0.98
part.Parent:findFirstChild("Torso").Transparency = 1
part.Parent:findFirstChild("Left Arm").Transparency = 1
part.Parent:findFirstChild("Right Arm").Transparency = 1
part.Parent:findFirstChild("Left Leg").Transparency = 1
part.Parent:findFirstChild("Right Leg").Transparency = 1
end 
end 
script.Parent.Touched:connect(onTouch) 

--COLORS

--1 = white
--208 = Light stone grey
--194 = Medium stone grey
--199 = Dark stone grey
--26 = Black
--21 = Bright red
--24 = Bright yellow
--226 = Cool yellow
--23 = Bright blue
--107 = Bright bluish green
--102 = Medium blue
--11 = Pastel blue
--45 = Light blue
--135 = Sand blue
--106 = Bright orange
--105 = Br. yellowish orange
--141 = Earth green
--28 = Dark green
--37 = Bright green
--119 = Br. yellowish green
--29 = Medium green
--151 = Sand green
--38 = Dark orange
--192 = Reddish brown
--104 = Bright violet
--9 = Light reddish violet
--101 = Medium red
--5 = Brick Yellow
--153 = Sand red
--217 = Brown
--18 = Nougat
--125 = Light orange


end,o174)
end))
o175 = Create("Script",{
["Name"] = "WalkSpeed Script",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local debounce = false 

function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human ~= nil) and debounce == false then 

debounce = true 

human.WalkSpeed = 16-- or whatever number 

wait(2) 
debounce = false 
end 
end 


script.Parent.Touched:connect(onTouch) 

end,o175)
end))
o176 = Create("Script",{
["Name"] = "Leg2",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg2") == nil then
		local g = script.Parent.Parent.Leg2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" or C[i].className == "UnionOperation" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" or C[i].className == "UnionOperation" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o176)
end))
o177 = Create("Script",{
["Name"] = "Arm2",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm2") == nil then
		local g = script.Parent.Parent.Arm2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" or C[i].className == "UnionOperation" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" or C[i].className == "UnionOperation" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o177)
end))
o178 = Create("Script",{
["Name"] = "Torso",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Chest") == nil then
		local g = script.Parent.Parent.Chest:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" or C[i].className == "UnionOperation" or C[i].className == "WedgePart" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent.Torso
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" or  h[i].className == "UnionOperation" or C[i].className == "WedgePart" then  
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end
end

script.Parent.Touched:connect(onTouched)

end,o178)
end))
o179 = Create("BlockMesh",{
["Parent"] = o171,
["Scale"] = Vector3.new(0.634021521, 0.644858301, 0.634021878),
})
o180 = Create("Script",{
["Name"] = "Cframe",
["Parent"] = o171,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

wait(2)

local p = script.Parent
local me = game.Players.LocalPlayer.Character


p.Shape = "Ball"

game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end)

wait(0.5)
p:Remove()
end,o180)
end))
o181 = Create("Model",{
["Name"] = "Arm2",
["Parent"] = o1,
})
o182 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o181,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8224.91895, -521.19989, 22.0735416),
["Rotation"] = Vector3.new(-1.01458299, -2.01446819, -0.0339433253),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.91895, -521.19989, 22.0735416, 0.99938184, 0.000592056662, -0.0351518616, 3.00999909e-005, 0.999843419, 0.0176959448, 0.0351568349, -0.0176860616, 0.999225318),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.57829022, 7.15658188, 3.57829332),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o183 = Create("SpecialMesh",{
["Parent"] = o182,
["MeshId"] = "rbxassetid://74653388",
["Scale"] = Vector3.new(4.2462635, 4.24626541, 4.24626446),
["MeshType"] = Enum.MeshType.FileMesh,
})
o184 = Create("BodyForce",{
["Parent"] = o182,
["force"] = Vector3.new(0, 4000, 0),
})
o185 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8227.6875, -541.605591, 1.22839546),
["Rotation"] = Vector3.new(-90.1177902, -14.5180264, 3.81167769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.6875, -541.605591, 1.22839546, 0.965927422, -0.0643545687, -0.250684589, 0.249992877, -0.0187160224, 0.968066812, -0.0669913366, -0.997751594, -0.00199013599),
["CanCollide"] = false,
["Size"] = Vector3.new(1.62817752, 2.35425043, 3.9037354),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o186 = Create("SpecialMesh",{
["Parent"] = o185,
["MeshType"] = Enum.MeshType.Wedge,
})
o187 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8219.60352, -509.646484, 3.92631912),
["Rotation"] = Vector3.new(89.8822327, 14.5180264, -3.81144714),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.60352, -509.646484, 3.92631912, 0.96592766, 0.0643506795, 0.250684589, 0.249992952, 0.0187147204, -0.968066812, -0.0669872463, 0.997751832, 0.00198984868),
["CanCollide"] = false,
["Size"] = Vector3.new(1.62817752, 2.35425043, 3.9037354),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o188 = Create("SpecialMesh",{
["Parent"] = o187,
["MeshType"] = Enum.MeshType.Wedge,
})
o189 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8227.03418, -538.552734, 4.11643219),
["Rotation"] = Vector3.new(72.8068085, 14.9891233, 0.567220628),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.03418, -538.552734, 4.11643219, 0.96592766, -0.00956286862, 0.25863567, 0.249992311, 0.293134123, -0.922808945, -0.0669902265, 0.956023514, 0.285537034),
["CanCollide"] = false,
["Size"] = Vector3.new(3.21843386, 4.64196205, 3.69810534),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o190 = Create("SpecialMesh",{
["Parent"] = o189,
["MeshType"] = Enum.MeshType.Wedge,
})
o191 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8219.7793, -511.54425, 0.188097),
["Rotation"] = Vector3.new(15.4267683, 7.7278223, 12.8950272),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.7793, -511.54425, 0.188097, 0.96592766, -0.221138731, 0.134467378, 0.249992222, 0.931678057, -0.263590634, -0.0669902042, 0.288225293, 0.955216467),
["CanCollide"] = false,
["Size"] = Vector3.new(3.21843386, 3.71357036, 3.69810534),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o192 = Create("SpecialMesh",{
["Parent"] = o191,
["MeshType"] = Enum.MeshType.Wedge,
})
o193 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.52441, -527.436829, -6.07302475),
["Rotation"] = Vector3.new(-0.600355089, 3.81242561, -165.482101),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.52441, -527.436829, -6.07302475, -0.965927064, 0.250127882, 0.0664902851, -0.249994382, -0.968190908, 0.0104547944, 0.0669903234, -0.00652363244, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(2.21267295, 3.20295405, 2.6149776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o194 = Create("SpecialMesh",{
["Parent"] = o193,
["MeshType"] = Enum.MeshType.Wedge,
})
o195 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.4375, -534.621155, -4.0265007),
["Rotation"] = Vector3.new(-17.0468979, -0.54803288, -165.010071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.4375, -534.621155, -4.0265007, -0.965927124, 0.258637667, -0.00956483185, -0.249994323, -0.922806203, 0.293140948, 0.0669908077, 0.285543919, 0.956021369),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o196 = Create("SpecialMesh",{
["Parent"] = o195,
["MeshType"] = Enum.MeshType.Wedge,
})
o197 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8222.73145, -524.294006, -6.01432228),
["Rotation"] = Vector3.new(-0.600343764, 3.81242299, 14.5179052),
["Anchored"] = true,
["CFrame"] = CFrame.new(8222.73145, -524.294006, -6.01432228, 0.965927184, -0.250127822, 0.0664902404, 0.249994397, 0.968190849, 0.010454597, -0.066990234, 0.0065238094, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(2.21267295, 3.31126714, 2.66139746),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o198 = Create("SpecialMesh",{
["Parent"] = o197,
["MeshType"] = Enum.MeshType.Wedge,
})
o199 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8226.5293, -538.611633, -2.58097076),
["Rotation"] = Vector3.new(-30.1943741, -4.01679182, -165.536209),
["Anchored"] = true,
["CFrame"] = CFrame.new(8226.5293, -538.611633, -2.58097076, -0.965927124, 0.249154761, -0.070048824, -0.249994248, -0.828130662, 0.501699626, 0.066991277, 0.502117038, 0.862201035),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.45448148, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o200 = Create("SpecialMesh",{
["Parent"] = o199,
["MeshType"] = Enum.MeshType.Wedge,
})
o201 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.2334, -530.331665, -5.35383606),
["Rotation"] = Vector3.new(-17.0468979, -0.54803288, -165.010071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.2334, -530.331665, -5.35383606, -0.965927124, 0.258637667, -0.00956483185, -0.249994323, -0.922806203, 0.293140948, 0.0669908077, 0.285543919, 0.956021369),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o202 = Create("SpecialMesh",{
["Parent"] = o201,
["MeshType"] = Enum.MeshType.Wedge,
})
o203 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8219.99219, -512.872009, -2.53695297),
["Rotation"] = Vector3.new(29.4820881, 10.6333084, 10.6409216),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.99219, -512.872009, -2.53695297, 0.965927362, -0.181482539, 0.184522748, 0.249994054, 0.838771105, -0.483700335, -0.0669891909, 0.513348877, 0.855561376),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.45448148, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o204 = Create("SpecialMesh",{
["Parent"] = o203,
["MeshType"] = Enum.MeshType.Wedge,
})
o205 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.41797, -514.812683, -3.33558464),
["Rotation"] = Vector3.new(16.0058575, 7.85876465, 12.8166285),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.41797, -514.812683, -3.33558464, 0.965927184, -0.21974808, 0.13673164, 0.249994308, 0.928920984, -0.273145944, -0.0669895932, 0.298021197, 0.952205777),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o206 = Create("SpecialMesh",{
["Parent"] = o205,
["MeshType"] = Enum.MeshType.Wedge,
})
o207 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.89258, -516.892456, -3.95376205),
["Rotation"] = Vector3.new(16.0058575, 7.85876465, 12.8166285),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.89258, -516.892456, -3.95376205, 0.965927184, -0.21974808, 0.13673164, 0.249994308, 0.928920984, -0.273145944, -0.0669895932, 0.298021197, 0.952205777),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o208 = Create("SpecialMesh",{
["Parent"] = o207,
["MeshType"] = Enum.MeshType.Wedge,
})
o209 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8221.39453, -518.969604, -4.60606766),
["Rotation"] = Vector3.new(16.0058575, 7.85876465, 12.8166285),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.39453, -518.969604, -4.60606766, 0.965927184, -0.21974808, 0.13673164, 0.249994308, 0.928920984, -0.273145944, -0.0669895932, 0.298021197, 0.952205777),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o210 = Create("SpecialMesh",{
["Parent"] = o209,
["MeshType"] = Enum.MeshType.Wedge,
})
o211 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8221.88574, -520.97168, -5.26045418),
["Rotation"] = Vector3.new(15.4267387, 7.72781801, 12.8951559),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.88574, -520.97168, -5.26045418, 0.965927184, -0.221140906, 0.134467304, 0.249994308, 0.93167758, -0.263590157, -0.0669895932, 0.288224965, 0.955216646),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o212 = Create("SpecialMesh",{
["Parent"] = o211,
["MeshType"] = Enum.MeshType.Wedge,
})
o213 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8227.09766, -539.815247, 0.134143829),
["Rotation"] = Vector3.new(-107.193199, -14.9891233, -0.567220628),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.09766, -539.815247, 0.134143829, 0.96592766, 0.00956286862, -0.25863567, 0.249992311, -0.293134123, 0.922808945, -0.0669902265, -0.956023514, -0.285537034),
["CanCollide"] = false,
["Size"] = Vector3.new(3.21843386, 3.71357036, 3.69810534),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o214 = Create("SpecialMesh",{
["Parent"] = o213,
["MeshType"] = Enum.MeshType.Wedge,
})
o215 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8220.35059, -512.643982, 4.13327599),
["Rotation"] = Vector3.new(-72.8103561, -12.7759762, -172.074844),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.35059, -512.643982, 4.13327599, -0.96592766, 0.134465829, -0.22113961, -0.249992222, -0.263584107, 0.931679785, 0.0669902042, 0.955218494, 0.288218588),
["CanCollide"] = false,
["Size"] = Vector3.new(3.21843386, 4.64196205, 3.69810534),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o216 = Create("SpecialMesh",{
["Parent"] = o215,
["MeshType"] = Enum.MeshType.Wedge,
})
o217 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.21387, -525.756836, -3.36365891),
["Rotation"] = Vector3.new(-105.000732, 75.0005264, 14.8861771),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.21387, -525.756836, -3.36365891, 0.250124127, -0.0664882734, 0.965928197, -0.968191743, -0.0104540559, 0.249990717, -0.00652358541, -0.997732401, -0.0669882149),
["CanCollide"] = false,
["Size"] = Vector3.new(6.18929577, 3.71357036, 3.09464836),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o218 = Create("BlockMesh",{
["Parent"] = o217,
})
o219 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.99609, -536.687866, -3.38724327),
["Rotation"] = Vector3.new(-17.0468979, -0.54803288, -165.010071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.99609, -536.687866, -3.38724327, -0.965927124, 0.258637667, -0.00956483185, -0.249994323, -0.922806203, 0.293140948, 0.0669908077, 0.285543919, 0.956021369),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o220 = Create("SpecialMesh",{
["Parent"] = o219,
["MeshType"] = Enum.MeshType.Wedge,
})
o221 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.84961, -532.557556, -4.66513443),
["Rotation"] = Vector3.new(-17.0468979, -0.54803288, -165.010071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.84961, -532.557556, -4.66513443, -0.965927124, 0.258637667, -0.00956483185, -0.249994323, -0.922806203, 0.293140948, 0.0669908077, 0.285543919, 0.956021369),
["CanCollide"] = false,
["Size"] = Vector3.new(1.03670681, 1.31522262, 1.16049314),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o222 = Create("SpecialMesh",{
["Parent"] = o221,
["MeshType"] = Enum.MeshType.Wedge,
})
o223 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8221.37988, -518.276245, -1.89409637),
["Rotation"] = Vector3.new(-105.000755, 75.0005264, 31.3021469),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.37988, -518.276245, -1.89409637, 0.221137702, -0.134465173, 0.965928197, -0.931678295, 0.263591111, 0.249990642, -0.288225085, -0.955216706, -0.066988349),
["CanCollide"] = false,
["Size"] = Vector3.new(10.7384281, 3.71357036, 3.09464836),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o224 = Create("BlockMesh",{
["Parent"] = o223,
})
o225 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8222.76172, -524.288391, -5.66841888),
["Rotation"] = Vector3.new(-0.60035038, 3.8123641, 14.5179396),
["Anchored"] = true,
["CFrame"] = CFrame.new(8222.76172, -524.288391, -5.66841888, 0.965927064, -0.250128418, 0.0664892197, 0.249994963, 0.96819073, 0.0104547124, -0.0669892728, 0.00652348157, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(2.29004073, 3.31126714, 2.66140294),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o226 = Create("SpecialMesh",{
["Parent"] = o225,
["MeshType"] = Enum.MeshType.Wedge,
})
o227 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8223.5625, -527.429382, -5.7276535),
["Rotation"] = Vector3.new(-0.60035044, 3.81236792, -165.482071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.5625, -527.429382, -5.7276535, -0.965927124, 0.25012821, 0.0664892867, -0.24999477, -0.968190789, 0.0104547134, 0.0669893324, -0.00652348297, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(2.3055141, 3.20295358, 2.61498356),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o228 = Create("SpecialMesh",{
["Parent"] = o227,
["MeshType"] = Enum.MeshType.Wedge,
})
o229 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8223.875, -526.899841, 1.69887161),
["Rotation"] = Vector3.new(179.399628, -3.81237721, -14.5387154),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.875, -526.899841, 1.69887161, 0.965836227, 0.250478625, -0.0664894506, 0.250345975, -0.968100011, -0.0104549397, -0.0669871718, -0.00654760702, -0.997732401),
["CanCollide"] = false,
["Size"] = Vector3.new(3.18748927, 2.18172264, 6.39046288),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o230 = Create("SpecialMesh",{
["Parent"] = o229,
["MeshType"] = Enum.MeshType.Wedge,
})
o231 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8223.37891, -524.790649, 1.72620964),
["Rotation"] = Vector3.new(179.399612, -3.81235552, 165.461288),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.37891, -524.790649, 1.72620964, -0.965836406, -0.250478506, -0.0664890707, -0.250345856, 0.968100071, -0.0104553066, 0.0669869184, 0.00654714694, -0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(3.18748927, 2.18172264, 6.39046288),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o232 = Create("SpecialMesh",{
["Parent"] = o231,
["MeshType"] = Enum.MeshType.Wedge,
})
o233 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.93848, -527.163391, 1.7516098),
["Rotation"] = Vector3.new(179.399628, -3.81237721, -14.5387154),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.93848, -527.163391, 1.7516098, 0.965836227, 0.250478625, -0.0664894506, 0.250345975, -0.968100011, -0.0104549397, -0.0669871718, -0.00654760702, -0.997732401),
["CanCollide"] = false,
["Size"] = Vector3.new(3.01728368, 2.81612372, 7.14865303),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o234 = Create("SpecialMesh",{
["Parent"] = o233,
["MeshType"] = Enum.MeshType.Wedge,
})
o235 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.3252, -524.557617, 1.81269836),
["Rotation"] = Vector3.new(179.399612, -3.81235552, 165.461288),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.3252, -524.557617, 1.81269836, -0.965836406, -0.250478506, -0.0664890707, -0.250345856, 0.968100071, -0.0104553066, 0.0669869184, 0.00654714694, -0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(2.90897083, 2.66139221, 7.21054697),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o236 = Create("SpecialMesh",{
["Parent"] = o235,
["MeshType"] = Enum.MeshType.Wedge,
})
o237 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8224.53516, -531.378479, -4.87168884),
["Rotation"] = Vector3.new(-17.0468903, -0.548092663, -165.010056),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.53516, -531.378479, -4.87168884, -0.965927064, 0.258637756, -0.00956587493, -0.24999474, -0.922806084, 0.293140858, 0.066989854, 0.285544038, 0.956021488),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o238 = Create("SpecialMesh",{
["Parent"] = o237,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o239 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8220.52246, -515.115845, -3.11357117),
["Rotation"] = Vector3.new(29.4820843, 10.6332798, 10.6409864),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.52246, -515.115845, -3.11357117, 0.965927243, -0.181483641, 0.184522241, 0.24999471, 0.838770986, -0.483700305, -0.0669882149, 0.513348877, 0.855561495),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.20157385, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o240 = Create("SpecialMesh",{
["Parent"] = o239,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o241 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8222.08691, -521.807068, -5.36353302),
["Rotation"] = Vector3.new(15.4267445, 7.7277751, 12.8952007),
["Anchored"] = true,
["CFrame"] = CFrame.new(8222.08691, -521.807068, -5.36353302, 0.965927124, -0.221141696, 0.134466559, 0.249994889, 0.931677341, -0.263590276, -0.0669886544, 0.288224936, 0.955216706),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o242 = Create("SpecialMesh",{
["Parent"] = o241,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o243 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8221.2666, -518.437195, -4.28399849),
["Rotation"] = Vector3.new(16.0058594, 7.85872173, 12.8166752),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.2666, -518.437195, -4.28399849, 0.965927124, -0.219748899, 0.136730909, 0.249994889, 0.928920746, -0.273146003, -0.0669886544, 0.298021108, 0.952205896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o244 = Create("SpecialMesh",{
["Parent"] = o243,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o245 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8224.02637, -529.539673, -5.44063187),
["Rotation"] = Vector3.new(-17.0468903, -0.548092663, -165.010056),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.02637, -529.539673, -5.44063187, -0.965927064, 0.258637756, -0.00956587493, -0.24999474, -0.922806084, 0.293140858, 0.066989854, 0.285544038, 0.956021488),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o246 = Create("SpecialMesh",{
["Parent"] = o245,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o247 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8225.92285, -536.379944, -3.14991951),
["Rotation"] = Vector3.new(-30.1943779, -4.01685572, -165.536209),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.92285, -536.379944, -3.14991951, -0.965927064, 0.249154612, -0.0700499415, -0.24999465, -0.828130543, 0.501699686, 0.0669902936, 0.502117336, 0.862200975),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.20157385, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o248 = Create("SpecialMesh",{
["Parent"] = o247,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o249 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8225.48242, -534.790527, -3.81600571),
["Rotation"] = Vector3.new(-17.0468903, -0.548092663, -165.010056),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.48242, -534.790527, -3.81600571, -0.965927064, 0.258637756, -0.00956587493, -0.24999474, -0.922806084, 0.293140858, 0.066989854, 0.285544038, 0.956021488),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o250 = Create("SpecialMesh",{
["Parent"] = o249,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o251 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8221.68066, -520.153198, -4.82287025),
["Rotation"] = Vector3.new(16.0058594, 7.85872173, 12.8166752),
["Anchored"] = true,
["CFrame"] = CFrame.new(8221.68066, -520.153198, -4.82287025, 0.965927124, -0.219748899, 0.136730909, 0.249994889, 0.928920746, -0.273146003, -0.0669886544, 0.298021108, 0.952205896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o252 = Create("SpecialMesh",{
["Parent"] = o251,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o253 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8220.87402, -516.719055, -3.77331924),
["Rotation"] = Vector3.new(16.0058594, 7.85872173, 12.8166752),
["Anchored"] = true,
["CFrame"] = CFrame.new(8220.87402, -516.719055, -3.77331924, 0.965927124, -0.219748899, 0.136730909, 0.249994889, 0.928920746, -0.273146003, -0.0669886544, 0.298021108, 0.952205896),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o254 = Create("SpecialMesh",{
["Parent"] = o253,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o255 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8225.02051, -533.083374, -4.34407425),
["Rotation"] = Vector3.new(-17.0468903, -0.548092663, -165.010056),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.02051, -533.083374, -4.34407425, -0.965927064, 0.258637756, -0.00956587493, -0.24999474, -0.922806084, 0.293140858, 0.066989854, 0.285544038, 0.956021488),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.962515712, 1.08652949, 0.962515771),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o256 = Create("SpecialMesh",{
["Parent"] = o255,
["Scale"] = Vector3.new(0.889796078, 1, 0.996042013),
["MeshType"] = Enum.MeshType.Wedge,
})
o257 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8223.28516, -525.915344, -3.34346581),
["Rotation"] = Vector3.new(-89.6140137, -14.4849911, 3.93770361),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.28516, -525.915344, -3.34346581, 0.965927541, -0.066488944, -0.250126362, 0.249992847, -0.0104554333, 0.968191206, -0.0669891983, -0.997732341, 0.00652256981),
["CanCollide"] = false,
["Size"] = Vector3.new(3.21843672, 3.82188153, 4.39441013),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o258 = Create("BlockMesh",{
["Parent"] = o257,
})
o259 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8222.62402, -524.774597, -9.44047928),
["Rotation"] = Vector3.new(-0.60035038, 3.8123641, 14.5179396),
["Anchored"] = true,
["CFrame"] = CFrame.new(8222.62402, -524.774597, -9.44047928, 0.965927064, -0.250128418, 0.0664892197, 0.249994963, 0.96819073, 0.0104547124, -0.0669892728, 0.00652348157, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(1.62817752, 2.35425043, 8.31743813),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o260 = Create("SpecialMesh",{
["Parent"] = o259,
["MeshType"] = Enum.MeshType.Wedge,
})
o261 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8219.4375, -509.641846, 1.62689209),
["Rotation"] = Vector3.new(89.8822098, 14.5180244, 176.188553),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.4375, -509.641846, 1.62689209, -0.96592766, -0.0643505529, 0.250684559, -0.249992907, -0.0187150333, -0.968066812, 0.0669872016, -0.997751832, 0.00199018605),
["CanCollide"] = false,
["Size"] = Vector3.new(1.63917887, 2.27724218, 3.82431293),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o262 = Create("SpecialMesh",{
["Parent"] = o261,
["MeshType"] = Enum.MeshType.Wedge,
})
o263 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8227.84375, -541.612915, 3.52858734),
["Rotation"] = Vector3.new(-90.1178131, -14.5180244, -176.188324),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.84375, -541.612915, 3.52858734, -0.965927422, 0.0643544793, -0.250684559, -0.249992818, 0.0187163893, 0.968066812, 0.0669913441, 0.997751594, -0.00199051714),
["CanCollide"] = false,
["Size"] = Vector3.new(1.63917887, 2.27724218, 3.82431293),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o264 = Create("SpecialMesh",{
["Parent"] = o263,
["MeshType"] = Enum.MeshType.Wedge,
})
o265 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8223.98535, -525.160461, 24.9452477),
["Rotation"] = Vector3.new(-89.6146851, -14.4845095, 3.93794441),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.98535, -525.160461, 24.9452477, 0.965929449, -0.0664931536, -0.250118226, 0.249983907, -0.0104676532, 0.968193412, -0.0669963956, -0.997731984, 0.00651120208),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 1.56899214, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o266 = Create("Fire",{
["Parent"] = o265,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o267 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.40332, -524.81488, 28.0130367),
["Rotation"] = Vector3.new(-89.6149139, -14.484499, -176.062119),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.40332, -524.81488, 28.0130367, -0.965929508, 0.0664922446, -0.250118077, -0.249983504, 0.0104714846, 0.968193591, 0.0669964775, 0.997731984, 0.00650724769),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 4.74824047, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o268 = Create("Fire",{
["Parent"] = o267,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o269 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.5332, -526.328308, 28.4842148),
["Rotation"] = Vector3.new(90.3853378, 14.4844837, -3.93795466),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.5332, -526.328308, 28.4842148, 0.965929508, 0.0664933324, 0.250117809, 0.249983504, 0.0104672825, -0.968193591, -0.0669964775, 0.997731924, -0.0065115788),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 5.54098845, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o270 = Create("Fire",{
["Parent"] = o269,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o271 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.16406, -525.131165, 27.6271725),
["Rotation"] = Vector3.new(74.9976883, -75.0010071, -14.8869848),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.16406, -525.131165, 27.6271725, 0.250115722, 0.0664898157, -0.965930343, -0.968194127, 0.0104674455, -0.249981388, -0.00651039416, 0.997732162, 0.0669931173),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 3.80685258, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o272 = Create("Fire",{
["Parent"] = o271,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o273 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.64258, -526.032532, 26.9214916),
["Rotation"] = Vector3.new(-105.003304, 75.0009232, -165.112045),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.64258, -526.032532, 26.9214916, -0.250115722, 0.0664942935, 0.965929985, 0.968194127, 0.010468604, 0.249981329, 0.00651039416, 0.997731924, -0.0669977441),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 2.57644248, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o274 = Create("Fire",{
["Parent"] = o273,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o275 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.50391, -526.052979, 24.8533993),
["Rotation"] = Vector3.new(90.3850861, 14.4845467, 176.062119),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.50391, -526.052979, 24.8533993, -0.96592927, -0.0664922521, 0.250118881, -0.249984279, -0.0104715759, -0.968193352, 0.0669964924, -0.997731984, -0.00650721788),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 1.56899214, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o276 = Create("Fire",{
["Parent"] = o275,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o277 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.29688, -526.36676, 24.9371758),
["Rotation"] = Vector3.new(74.9967651, -75.0008698, 165.112137),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.29688, -526.36676, 24.9371758, -0.250116646, -0.0664941967, -0.965929747, 0.968193889, -0.0104687661, -0.249982238, 0.00651027681, -0.997731924, 0.0669976845),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 1.56899214, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o278 = Create("Fire",{
["Parent"] = o277,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o279 = Create("CornerWedgePart",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.19238, -524.846802, 24.8615456),
["Rotation"] = Vector3.new(-105.002266, 75.000946, 14.8869352),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.19238, -524.846802, 24.8615456, 0.250116348, -0.0664897487, 0.965930104, -0.968193948, -0.0104675805, 0.249981999, -0.00651028939, -0.997732162, -0.0669930875),
["CanCollide"] = false,
["Size"] = Vector3.new(1.25519538, 1.56899214, 1.25519776),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o280 = Create("Fire",{
["Parent"] = o279,
["Size"] = 30,
["Color"] = Color3.new(0, 0, 1),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 1, 1),
})
o281 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8224.04395, -525.791931, 10.8319187),
["Rotation"] = Vector3.new(-89.6140289, -14.484992, 3.93770051),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.04395, -525.791931, 10.8319187, 0.965927541, -0.0664888918, -0.250126392, 0.249992847, -0.0104556596, 0.968191206, -0.0669891983, -0.997732341, 0.00652233837),
["CanCollide"] = false,
["Size"] = Vector3.new(0.891049922, 9.87853146, 1.37507951),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o282 = Create("CylinderMesh",{
["Parent"] = o281,
})
o283 = Create("Fire",{
["Parent"] = o281,
["Size"] = 30,
["Color"] = Color3.new(1, 1, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o284 = Create("Script",{
["Parent"] = o283,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o284)
end))
o285 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.74414, -525.638062, 19.0309868),
["Rotation"] = Vector3.new(-89.6140289, -14.484992, 3.93770051),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.74414, -525.638062, 19.0309868, 0.965927541, -0.0664888918, -0.250126392, 0.249992847, -0.0104556596, 0.968191206, -0.0669891983, -0.997732341, 0.00652233837),
["CanCollide"] = false,
["Size"] = Vector3.new(1.19906712, 13.9927521, 0.836048424),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o286 = Create("CylinderMesh",{
["Parent"] = o285,
})
o287 = Create("Fire",{
["Parent"] = o285,
["Size"] = 30,
["Color"] = Color3.new(1, 1, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o288 = Create("Script",{
["Parent"] = o287,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o288)
end))
o289 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8224.1748, -525.755188, 10.3921623),
["Rotation"] = Vector3.new(-89.6140289, -14.484992, 3.93770051),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.1748, -525.755188, 10.3921623, 0.965927541, -0.0664888918, -0.250126392, 0.249992847, -0.0104556596, 0.968191206, -0.0669891983, -0.997732341, 0.00652233837),
["CanCollide"] = false,
["Size"] = Vector3.new(1.19906712, 13.9927521, 1.37507951),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o290 = Create("CylinderMesh",{
["Parent"] = o289,
})
o291 = Create("Fire",{
["Parent"] = o289,
["Size"] = 30,
["Color"] = Color3.new(1, 1, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o292 = Create("Script",{
["Parent"] = o291,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o292)
end))
o293 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8224.36523, -525.709229, 10.8372736),
["Rotation"] = Vector3.new(-89.6140289, -14.484992, 3.93770051),
["Anchored"] = true,
["CFrame"] = CFrame.new(8224.36523, -525.709229, 10.8372736, 0.965927541, -0.0664888918, -0.250126392, 0.249992847, -0.0104556596, 0.968191206, -0.0669891983, -0.997732341, 0.00652233837),
["CanCollide"] = false,
["Size"] = Vector3.new(0.891049922, 9.88953114, 1.37507951),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o294 = Create("CylinderMesh",{
["Parent"] = o293,
})
o295 = Create("Fire",{
["Parent"] = o293,
["Size"] = 30,
["Color"] = Color3.new(1, 1, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o296 = Create("Script",{
["Parent"] = o295,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o296)
end))
o297 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Royal purple"),
["Position"] = Vector3.new(8223.33789, -526.984802, -7.30395126),
["Rotation"] = Vector3.new(-0.60035044, 3.81236792, -165.482071),
["Anchored"] = true,
["CFrame"] = CFrame.new(8223.33789, -526.984802, -7.30395126, -0.965927124, 0.25012821, 0.0664892867, -0.24999477, -0.968190789, 0.0104547134, 0.0669893324, -0.00652348297, 0.997732341),
["CanCollide"] = false,
["Size"] = Vector3.new(1.63917887, 2.27724218, 3.82431293),
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o298 = Create("SpecialMesh",{
["Parent"] = o297,
["MeshType"] = Enum.MeshType.Wedge,
})
o299 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8225.23145, -533.166748, -1.92535019),
["Rotation"] = Vector3.new(-105.000732, 75.0005264, -2.11827469),
["Anchored"] = true,
["CFrame"] = CFrame.new(8225.23145, -533.166748, -1.92535019, 0.258633465, 0.00956626236, 0.965928197, -0.922807217, -0.293140829, 0.249990731, 0.285544455, -0.956021428, -0.0669882149),
["CanCollide"] = false,
["Size"] = Vector3.new(10.7384281, 3.71357036, 3.09464836),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o300 = Create("BlockMesh",{
["Parent"] = o299,
})
o301 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8219.36816, -508.718323, 4.254179),
["Rotation"] = Vector3.new(90.8895798, 14.4508905, -4.06341124),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.36816, -508.718323, 4.254179, 0.96592766, 0.0686185732, 0.249550089, 0.249992922, 0.0021946989, -0.968245149, -0.066987291, 0.99764055, -0.0150342379),
["CanCollide"] = false,
["Size"] = Vector3.new(1.33737612, 3.17528701, 5.3324523),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o302 = Create("SpecialMesh",{
["Parent"] = o301,
["MeshType"] = Enum.MeshType.Wedge,
})
o303 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8219.24902, -509.139832, 1.04199791),
["Rotation"] = Vector3.new(90.8895569, 14.4508905, 175.9366),
["Anchored"] = true,
["CFrame"] = CFrame.new(8219.24902, -509.139832, 1.04199791, -0.96592766, -0.068618454, 0.249550104, -0.249992892, -0.00219510309, -0.968245208, 0.0669872761, -0.99764055, -0.0150338169),
["CanCollide"] = false,
["Size"] = Vector3.new(1.35625207, 3.28266406, 6.15496778),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o304 = Create("SpecialMesh",{
["Parent"] = o303,
["MeshType"] = Enum.MeshType.Wedge,
})
o305 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8228.04785, -542.374878, 3.97638512),
["Rotation"] = Vector3.new(-90.1178131, -14.5180244, -176.188324),
["Anchored"] = true,
["CFrame"] = CFrame.new(8228.04785, -542.374878, 3.97638512, -0.965927422, 0.0643544793, -0.250684559, -0.249992818, 0.0187163893, 0.968066812, 0.0669913441, 0.997751594, -0.00199051714),
["CanCollide"] = false,
["Size"] = Vector3.new(1.33737612, 3.17528701, 5.3324523),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o306 = Create("SpecialMesh",{
["Parent"] = o305,
["MeshType"] = Enum.MeshType.Wedge,
})
o307 = Create("Part",{
["Parent"] = o181,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8227.73926, -542.02063, 0.768709183),
["Rotation"] = Vector3.new(-90.1177902, -14.5180264, 3.81167769),
["Anchored"] = true,
["CFrame"] = CFrame.new(8227.73926, -542.02063, 0.768709183, 0.965927422, -0.0643545687, -0.250684589, 0.249992877, -0.0187160224, 0.968066812, -0.0669913366, -0.997751594, -0.00199013599),
["CanCollide"] = false,
["Size"] = Vector3.new(1.35625207, 3.28266406, 6.15496778),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o308 = Create("SpecialMesh",{
["Parent"] = o307,
["MeshType"] = Enum.MeshType.Wedge,
})
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
