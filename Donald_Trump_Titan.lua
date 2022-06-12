---------------------------
local MaxMana = 5000000 -- Max Mana You Can Get
local Mana = 5000000 -- Mana You Start With
local ManaGain = 40000 -- How Much Mana You Gain Per Second
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
	if id == 400832473 then
		s.Looped = true
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
ra.Size = ra.Size * 4.5
la.Size = la.Size * 4.5
ll.Size = ll.Size * 4.5
rl.Size = rl.Size * 4.5
tr.Size = tr.Size * 4.5
hd.Size = hd.Size * 4.5
rp.Size = rp.Size * 4.5
--
local tw = xWeld(rp,tr)
tw.C1 = cn(0,0,0)
local law = xWeld(tr,la)
law.C0 = cn(-6.5,.7,0)
law.C1 = cn(0,.7,0)
local raw = xWeld(tr,ra)
raw.C0 = cn(6.5,.7,0)
raw.C1 = cn(0,.7,0)
local llw = xWeld(tr,ll)
llw.C0 = cn(-2.5,-6,0)
llw.C1 = cn(0,3.5,0)
local rlw = xWeld(tr,rl)
rlw.C0 = cn(2.5,-6,0)
rlw.C1 = cn(0,3.5,0)
local hw = xWeld(tr,hd)
hw.C1 = cn(0,-6.5,0)
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
REGEN_SPEED = 5
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
	Handle = xPart{Pack,0.54285717, 4.96428585, 1.02857149} Handle.BrickColor = BrickColor.new('Light orange') Handle.Material = Enum.Material.Plastic; haw = xWeld(ra,Handle); LastMade.C1 = ca(90,0,180)*cn(0,3,0) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	
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
	Flame.Texture = "http://www.roblox.com/asset/?id=343377229"
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
		xSound(400832473,workspace,0.9)
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
Char.Humanoid.WalkSpeed = 50
Char.Humanoid.JumpPower = 190

Human.Health = Human.MaxHealth

---------------------------------------------------------------ExtraMorphing-------------
----------------------------------------------------------------------------------------

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
["Name"] = "BETA",
["Parent"] = mas,
})
o2 = Create("Model",{
["Name"] = "Chest",
["Parent"] = o1,
})
o3 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o2,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4665.64014, -10.7899675),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4665.64014, -10.7899675, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(9.28780556, 9.28781509, 4.6439023),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o4 = Create("ParticleEmitter",{
["Parent"] = o3,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o5 = Create("ParticleEmitter",{
["Parent"] = o3,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o6 = Create("Part",{
["Name"] = "Bluesteel Bathelm",
["Parent"] = o2,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4657.74463, -10.8262482),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4657.74463, -10.8262482, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(5.19318867, 3.9473207, 3.94731259),
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o7 = Create("ParticleEmitter",{
["Parent"] = o6,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o8 = Create("ParticleEmitter",{
["Parent"] = o6,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o9 = Create("SpecialMesh",{
["Parent"] = o6,
["MeshId"] = "http://www.roblox.com/asset/?id=16150814",
["Scale"] = Vector3.new(5.18085146, 5.18085623, 5.18084764),
["TextureId"] = "http://www.roblox.com/asset/?id=343377229",
["MeshType"] = Enum.MeshType.FileMesh,
})
o10 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(79.0394669, 8.73715496, 16.0058537),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.950079143, -0.272535861, 0.151901796, 0.195775941, 0.141641304, -0.970365703, 0.242943838, 0.951662958, 0.187926412),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o11 = Create("ParticleEmitter",{
["Parent"] = o10,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o12 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(86.3597412, -13.5106392, 95.9657364),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.101057455, -0.967060804, -0.233625919, 0.0873805359, 0.225292891, -0.970364809, 0.991035938, -0.11847695, 0.0617347658),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o13 = Create("ParticleEmitter",{
["Parent"] = o12,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o14 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.543137, 6.23166227, -116.861259),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.449161828, 0.886832237, 0.108548716, 0.145867065, 0.192651749, -0.970365107, -0.881462872, -0.420017153, -0.215891346),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o15 = Create("ParticleEmitter",{
["Parent"] = o14,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o16 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.543076, 6.23150969, -164.84436),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.959516287, 0.259897143, 0.108546063, -0.0454919189, 0.237321198, -0.970365584, -0.277955443, -0.936019421, -0.215890288),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o17 = Create("ParticleEmitter",{
["Parent"] = o16,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o18 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.543114, 6.2315917, -99.8779907),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.170537025, 0.979354262, 0.108547494, 0.195777684, 0.141642377, -0.970365226, -0.96570617, -0.144232035, -0.215890929),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o19 = Create("ParticleEmitter",{
["Parent"] = o18,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o20 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.543205, 6.23175573, -132.792969),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.675336957, 0.729477286, 0.10855034, 0.0873827487, 0.225293115, -0.970364571, -0.732314408, -0.645837605, -0.215892449),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o21 = Create("ParticleEmitter",{
["Parent"] = o20,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o22 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.543076, 6.23157644, -152.474472),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.881565154, 0.45941323, 0.108547226, 0.00640271604, 0.241557747, -0.970365405, -0.472019136, -0.854745209, -0.215890348),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o23 = Create("ParticleEmitter",{
["Parent"] = o22,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o24 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(93.5509491, 13.533741, -115.702736),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.421659291, 0.876036167, 0.234017938, -0.045491308, 0.237320334, -0.970365763, -0.905612469, -0.41980958, -0.060216248),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o25 = Create("ParticleEmitter",{
["Parent"] = o24,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o26 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(93.5508499, 13.5340061, -83.6512985),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.107508615, 0.966268897, 0.234022439, 0.087382853, 0.225292057, -0.970364869, -0.990356684, 0.124772049, -0.0602144599),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o27 = Create("ParticleEmitter",{
["Parent"] = o26,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o28 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(93.5508728, 13.5338879, -67.7195816),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.368611872, 0.899644494, 0.234020427, 0.145866781, 0.192650631, -0.970365226, -0.918067813, 0.391823798, -0.0602149367),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o29 = Create("ParticleEmitter",{
["Parent"] = o28,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o30 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(93.5509109, 13.5338335, -50.7363472),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.615315795, 0.752742767, 0.234019518, 0.195777208, 0.141641498, -0.970365524, -0.763582349, 0.642896652, -0.0602156073),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o31 = Create("ParticleEmitter",{
["Parent"] = o30,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o32 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(93.5509033, 13.5337915, -103.332832),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.224203944, 0.946027577, 0.234018788, 0.00640313327, 0.241556808, -0.970365584, -0.974521399, -0.216061294, -0.0602154732),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o33 = Create("ParticleEmitter",{
["Parent"] = o32,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o34 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(87.5872192, 13.7778225, -25.8519192),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.874030232, 0.42350024, 0.238157541, 0.195776746, 0.14164117, -0.970365703, -0.444682926, 0.894754469, 0.0408871919),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o35 = Create("ParticleEmitter",{
["Parent"] = o34,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o36 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(87.5871582, 13.7778587, -42.8351593),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.712212801, 0.660328567, 0.238158152, 0.145866409, 0.192650288, -0.970365465, -0.686641216, 0.725845814, 0.0408882648),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o37 = Create("ParticleEmitter",{
["Parent"] = o36,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o38 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(87.5872955, 13.7777548, -90.8183365),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.0138711762, 0.971127868, 0.238156393, -0.0454913229, 0.237319738, -0.970365882, -0.998868525, -0.0242941976, 0.0408859849),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o39 = Create("ParticleEmitter",{
["Parent"] = o38,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o40 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(87.5872269, 13.7777824, -78.4484177),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.194488198, 0.951554537, 0.23815687, 0.00640301406, 0.241556317, -0.970365763, -0.980884075, 0.190249637, 0.0408870727),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o41 = Create("ParticleEmitter",{
["Parent"] = o40,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o42 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(87.5870895, 13.7779512, -58.7668457),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.503602087, 0.830460906, 0.238159731, 0.0873826072, 0.22529155, -0.970364928, -0.859505475, 0.509488642, 0.0408894569),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o43 = Create("ParticleEmitter",{
["Parent"] = o42,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o44 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(86.3596802, -13.5104132, 76.2841797),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.230545193, -0.944600403, -0.233622074, 0.00640067458, 0.241556659, -0.970365644, 0.973040581, 0.222217858, 0.0617358685),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o45 = Create("ParticleEmitter",{
["Parent"] = o44,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o46 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(86.3597107, -13.5105181, 111.897423),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.36262551, -0.902176857, -0.233623862, 0.1458648, 0.192652062, -0.970365405, 0.920449078, -0.385956615, 0.0617353171),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o47 = Create("ParticleEmitter",{
["Parent"] = o46,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o48 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(86.3596725, -13.5104551, 128.880707),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.61033088, -0.756912768, -0.233622789, 0.195775732, 0.141643152, -0.970365465, 0.767573178, -0.637981534, 0.0617359728),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o49 = Create("ParticleEmitter",{
["Parent"] = o48,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o50 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(86.3596344, -13.5103664, 63.9142685),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.427547663, -0.873283744, -0.233621284, -0.0454937071, 0.237319678, -0.970365882, 0.902847409, 0.425505877, 0.0617365986),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o51 = Create("ParticleEmitter",{
["Parent"] = o50,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o52 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.621109, -6.0702033, -168.148773),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.973196864, 0.204219759, -0.105746955, 0.145866275, 0.192652568, -0.970364988, -0.177795321, -0.959780931, -0.217277646),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o53 = Create("ParticleEmitter",{
["Parent"] = o52,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o54 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.620941, -6.07024574, 143.868088),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.80313319, -0.586340189, -0.105747685, -0.0454930514, 0.237321064, -0.970365524, 0.594060361, -0.774521887, -0.217274785),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o55 = Create("ParticleEmitter",{
["Parent"] = o54,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o56 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.620995, -6.07021284, 156.237991),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.910095572, -0.40067938, -0.105747119, 0.00640164688, 0.241557866, -0.970365405, 0.414349347, -0.883802176, -0.217275634),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o57 = Create("ParticleEmitter",{
["Parent"] = o56,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o58 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.621033, -6.07022762, -151.165482),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.871104538, 0.479577303, -0.105747372, 0.195777193, 0.141643211, -0.970365286, -0.450386614, -0.865992486, -0.21727632),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o59 = Create("ParticleEmitter",{
["Parent"] = o58,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o60 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(102.621223, -6.07019854, 175.919556),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, -0.991872668, -0.0707581863, -0.105746865, 0.0873818323, 0.225293636, -0.970364571, 0.0924853384, -0.971718192, -0.217279553),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o61 = Create("ParticleEmitter",{
["Parent"] = o60,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o62 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(76.1906204, -2.22199559, 30.1629696),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.863949716, -0.50208348, -0.0387714207, 0.0873808563, 0.22529152, -0.970365107, 0.495939046, 0.834958911, 0.238513038),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o63 = Create("ParticleEmitter",{
["Parent"] = o62,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o64 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(76.1907578, -2.22186089, 63.077919),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.452438056, -0.890953004, -0.0387690663, 0.19577527, 0.141642034, -0.970365763, 0.87004137, 0.431440324, 0.238510787),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o65 = Create("ParticleEmitter",{
["Parent"] = o64,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o66 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(76.190712, -2.22191787, 46.0946541),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.692947745, -0.719944835, -0.0387700647, 0.145864815, 0.192650661, -0.970365703, 0.706078768, 0.666757405, 0.238511443),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o67 = Create("ParticleEmitter",{
["Parent"] = o66,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o68 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(76.1908188, -2.22179508, -1.88847733),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.998705685, 0.032929413, -0.0387679189, -0.0454927385, 0.237318829, -0.970366061, -0.0227532424, 0.970873654, 0.2385097),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o69 = Create("ParticleEmitter",{
["Parent"] = o68,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o70 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(76.1907883, -2.22185564, 10.4814234),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.982574821, -0.181779981, -0.0387689769, 0.00640141964, 0.241555661, -0.970365882, 0.185757935, 0.953208923, 0.238510132),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o71 = Create("ParticleEmitter",{
["Parent"] = o70,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o72 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(79.039566, 8.73714828, -48.9605522),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.648959339, 0.745505035, 0.151901692, -0.0454917476, 0.237319022, -0.97036618, -0.75946182, 0.622817814, 0.187924758),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o73 = Create("ParticleEmitter",{
["Parent"] = o72,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o74 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(79.0392761, 8.73716068, -16.9090633),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.945665002, 0.287478387, 0.151901901, 0.0873818249, 0.225291193, -0.970365167, -0.313181132, 0.930913687, 0.187929645),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o75 = Create("ParticleEmitter",{
["Parent"] = o74,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o76 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(79.039505, 8.73712921, -36.5906372),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.793597758, 0.589176536, 0.151901364, 0.00640243944, 0.241555661, -0.970365882, -0.608409464, 0.771052539, 0.18792586),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o77 = Create("ParticleEmitter",{
["Parent"] = o76,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o78 = Create("Part",{
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Light orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(3925.69946, -4678.13916, -11.0854521),
["Rotation"] = Vector3.new(79.0393982, 8.7371397, -0.977389395),
["Anchored"] = true,
["CFrame"] = CFrame.new(3925.69946, -4678.13916, -11.0854521, 0.988252044, 0.0168598946, 0.151901543, 0.145865604, 0.19265008, -0.970365644, -0.0456241071, 0.981122792, 0.187927589),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(4, 1, 2),
})
o79 = Create("ParticleEmitter",{
["Parent"] = o78,
["Size"] = NumberSequence.new(2.5,2.5),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Acceleration"] = Vector3.new(0, -1.29999995, 0),
})
o80 = Create("Model",{
["Name"] = "Arm1",
["Parent"] = o1,
})
o81 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o80,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4665.64014, -17.7558212),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4665.64014, -17.7558212, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.64390278, 9.28781509, 4.6439023),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o82 = Create("ParticleEmitter",{
["Parent"] = o81,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o83 = Create("ParticleEmitter",{
["Parent"] = o81,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o84 = Create("Model",{
["Name"] = "Arm2",
["Parent"] = o1,
})
o85 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o84,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4665.64014, -3.8241148),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4665.64014, -3.8241148, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.64390278, 9.28781509, 4.6439023),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o86 = Create("ParticleEmitter",{
["Parent"] = o85,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o87 = Create("ParticleEmitter",{
["Parent"] = o85,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o88 = Create("Part",{
["Parent"] = o84,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3935.67017, -4667.5542, -3.13911486),
["Rotation"] = Vector3.new(90, -82.368454, 90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(3935.67017, -4667.5542, -3.13911486, -1.44198635e-008, -0.132802665, -0.991142571, 1.18167613e-007, 0.991142571, -0.132802665, 1, -1.19035953e-007, 1.40083323e-009),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1.47390282, 1.33999991, 36.1239014),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o89 = Create("ParticleEmitter",{
["Parent"] = o88,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o90 = Create("Part",{
["Parent"] = o84,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(3947.09888, -4665.76025, -3.20606613),
["Rotation"] = Vector3.new(90, -82.368454, 90.0000076),
["Anchored"] = true,
["CFrame"] = CFrame.new(3947.09888, -4665.76025, -3.20606613, -1.44198635e-008, -0.132802665, -0.991142571, 1.18167613e-007, 0.991142571, -0.132802665, 1, -1.19035953e-007, 1.40083323e-009),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 7.81999969, 31.2939014),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o91 = Create("ParticleEmitter",{
["Parent"] = o90,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o92 = Create("Part",{
["Parent"] = o84,
["Material"] = Enum.Material.Neon,
["BrickColor"] = BrickColor.new("Institutional white"),
["Position"] = Vector3.new(3963.30298, -4662.56982, -3.20606613),
["Rotation"] = Vector3.new(-90.000061, -44.0050316, -90.0000305),
["Anchored"] = true,
["CFrame"] = CFrame.new(3963.30298, -4662.56982, -3.20606613, -4.02258507e-007, 0.719278812, -0.69472152, 6.60829357e-007, 0.69472152, 0.719278812, 1, -1.69756362e-007, -7.54778171e-007),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.200000003, 7.81999969, 7.0639019),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o93 = Create("ParticleEmitter",{
["Parent"] = o92,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o94 = Create("Model",{
["Name"] = "Leg1",
["Parent"] = o1,
})
o95 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o94,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4674.92725, -13.1119194),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4674.92725, -13.1119194, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.64390278, 9.28781509, 4.6439023),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o96 = Create("ParticleEmitter",{
["Parent"] = o95,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o97 = Create("ParticleEmitter",{
["Parent"] = o95,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o98 = Create("Model",{
["Name"] = "Leg2",
["Parent"] = o1,
})
o99 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o98,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Light orange"),
["Position"] = Vector3.new(3923.3938, -4674.92725, -8.46801567),
["Rotation"] = Vector3.new(-0, -90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3923.3938, -4674.92725, -8.46801567, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(4.64390278, 9.28781509, 4.6439023),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o100 = Create("ParticleEmitter",{
["Parent"] = o99,
["Size"] = NumberSequence.new(1,0.9375,1.7500001192093,0.87499976158142,2.8749995231628,1.25,2.0625,1.1874997615814,2.9375,1.3124996423721,2.8749995231628,5.6875),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(1,1),
["Rate"] = 40,
["RotSpeed"] = NumberRange.new(30,30),
["Speed"] = NumberRange.new(0,0),
})
o101 = Create("ParticleEmitter",{
["Parent"] = o99,
["Transparency"] = NumberSequence.new(0,0.85000002384186,0.375,0.13749998807907,0.58124995231628,0.018750011920929,0.11874997615814,0.14999997615814,0.58749997615814,0.125,0.83749997615814,0.050000011920929,0.94999998807907,0.25),
["Size"] = NumberSequence.new(1.5644174814224,1.8124997615814,2.7499997615814,1.4999997615814,1.8124997615814,2.6875,1.875,4.25),
["Texture"] = "http://www.roblox.com/asset/?id=343377229",
["Lifetime"] = NumberRange.new(2,2),
["Rate"] = 30,
["RotSpeed"] = NumberRange.new(400,400),
["Speed"] = NumberRange.new(3,3),
})
o102 = Create("Part",{
["Name"] = "Head",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(3930.82446, -4678.17822, -1.96655464),
["Rotation"] = Vector3.new(0, 90, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(3930.82446, -4678.17822, -1.96655464, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["CanCollide"] = false,
["Locked"] = true,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.928780496, 0.928781509, 0.928780496),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
})
o103 = Create("Script",{
["Name"] = "Arm1",
["Parent"] = o102,
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
			if C[i].className == "Part" then
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
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o103)
end))
o104 = Create("Script",{
["Name"] = "Leg1",
["Parent"] = o102,
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
			if C[i].className == "Part" then
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
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o104)
end))
o105 = Create("Script",{
["Name"] = "HatRemover",
["Parent"] = o102,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit) 
	local d = hit.Parent:GetChildren() 
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i]:remove() 
		end 
	end
end 

script.Parent.Touched:connect(onTouched) 
end,o105)
end))
o106 = Create("Script",{
["Name"] = "ChangeShirt/Pants",
["Parent"] = o102,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--theRal

worker = false
part = script.Parent

function onTouch(hit)
	local human = hit.Parent:FindFirstChild("Humanoid")
	if (human ~= nil) and (worker == false) then
		print ("Success")
		worker = true
		wait(.1)
		local pant = hit.Parent:GetChildren()
		for i=1,#pant do
		if (pant[i].className == "Pants") then
			pant[i].PantsTemplate = ""
			end
		end
		local shirt = hit.Parent:GetChildren()
		for i=1,#shirt do
		if (shirt[i].className == "Shirt") then
			shirt[i].ShirtTemplate = ""
			wait(1)
			worker = false
			end
		end
	end
end

script.Parent.Touched:connect(onTouch)
end,o106)
end))
o107 = Create("Script",{
["Parent"] = o102,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouch(part) 
local human = part.Parent:findFirstChild("Humanoid") 
if human ~= nil then 
part.Parent:findFirstChild("Head").BrickColor = BrickColor.new(125)
part.Parent:findFirstChild("Head").Transparency = 0
part.Parent:findFirstChild("Torso").BrickColor = BrickColor.new(1)
part.Parent:findFirstChild("Torso").Transparency = 1
part.Parent:findFirstChild("Left Arm").BrickColor = BrickColor.new(1)
part.Parent:findFirstChild("Left Arm").Transparency = 1
part.Parent:findFirstChild("Right Arm").BrickColor = BrickColor.new(1)
part.Parent:findFirstChild("Right Arm").Transparency = 1
part.Parent:findFirstChild("Left Leg").BrickColor = BrickColor.new(1)
part.Parent:findFirstChild("Left Leg").CanCollide = true
part.Parent:findFirstChild("Left Leg").Transparency = 1
part.Parent:findFirstChild("Right Leg").BrickColor = BrickColor.new(1)
part.Parent:findFirstChild("Right Leg").CanCollide = true
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


end,o107)
end))
o108 = Create("Script",{
["Name"] = "WalkSpeed Script",
["Parent"] = o102,
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

end,o108)
end))
o109 = Create("Script",{
["Name"] = "Leg2",
["Parent"] = o102,
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
			if C[i].className == "Part" then
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
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o109)
end))
o110 = Create("Script",{
["Name"] = "Arm2",
["Parent"] = o102,
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
			if C[i].className == "Part" then
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
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o110)
end))
o111 = Create("Script",{
["Name"] = "Torso",
["Parent"] = o102,
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
			if C[i].className == "Part" then
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
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end
end

script.Parent.Touched:connect(onTouched)

end,o111)
end))
o112 = Create("Script",{
["Name"] = "Cframe",
["Parent"] = o102,
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

me.Head.Transparency = 1

p:Remove()
end,o112)
end))
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