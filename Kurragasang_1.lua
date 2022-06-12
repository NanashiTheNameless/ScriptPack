--[[The Weapon Of the vaktovian lieutenant Mellisa D. Exanine]]--

user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
hold=false
deb = false
Game.Lighting.Outlines = false
Anim = 'None'
--[[char.Humanoid.MaxHealth=500
char.Humanoid.Health=500
pcall(function()
char.Shirt:remove()
char.Pants:remove()
char.Head.face:remove()
char["Body Colors"].HeadColor = BrickColor.new("Mid gray")
char["Body Colors"].LeftArmColor = BrickColor.new("Mid gray")
char["Body Colors"].RightArmColor = BrickColor.new("Mid gray")
char["Body Colors"].TorsoColor = BrickColor.new("Mid gray")
char.Head.Material = "SmoothPlastic"
char.Torso.Material = "SmoothPlastic"
char["Left Arm"].Material = "SmoothPlastic"
char["Right Arm"].Material = "SmoothPlastic"
char["Left Leg"].Material = "SmoothPlastic"
char["Right Leg"].Material = "SmoothPlastic"
end)

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

game:service'InsertService':LoadAsset(14815761):children()[1].Parent = char
game:service'InsertService':LoadAsset(22588983):children()[1].Parent = char
game:service'InsertService':LoadAsset(25737682):children()[1].Parent = char
game:service'InsertService':LoadAsset(134681557):children()[1].Parent = char
game:service'InsertService':LoadAsset(128341119):children()[1].Parent = char
game:service'InsertService':LoadAsset(13038375):children()[1].Parent = char.Head

pcall(function()
char["Spy Shades"].Handle.Transparency = 0.1
end)

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v.Handle.Material = "SmoothPlastic"
        v.Handle.BrickColor = BrickColor.new("Really black")
        v.Handle.Mesh.TextureId = ""
    end
end]]--

function DoDamage(hum,dmg)
        if hum.Health == 0 then return end
        local a,b = ypcall(function()
                hum:TakeDamage(dmg)
                --hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild('Torso') then return end
                local m = Instance.new('Model',workspace)
                m.Name = dmg
                local h = Instance.new('Humanoid',m)
                h.MaxHealth = 0
                local p = Instance.new('Part',m)
                p.Material = 'SmoothPlastic'
                p.BrickColor = BrickColor.new('Really red')
                p.Name = 'Head'
                p.FormFactor = 'Custom'
                p.Size = Vector3.new(1,1,1)
                p.Transparency = 0.5
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
                local pmsh = Instance.new('SpecialMesh',p)
                pmsh.MeshType = 'FileMesh'
                pmsh.Scale = Vector3.new(1,1,1)
                pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
                game.Debris:AddItem(m,5)
                p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),2.5,math.random(-2,2))
                local rAm = math.random(3,6)/100
                coroutine.wrap(function()
                for i=1,300 do 
                p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
                wait()
                end 
                p:Destroy()
                end)()
        end)
        if not a then print(b) end
end


function playSound(id,parent,volume,pitch)
        local sound = Instance.new('Sound',parent or workspace)
        sound.SoundId = 'http://www.roblox.com/asset?id='..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new('Weld',p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char['Right Arm'], char['Left Arm']
ra:BreakJoints()
la:BreakJoints()
Anim = 'Idle'
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
local rs0 = rs.C0
local ls0 = ls.C0

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
pmsh = Instance.new('SpecialMesh')
pmsh.MeshType = 'FileMesh'
pmsh.Scale = Vector3.new(1,1,1)
pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
S=Instance.new("Part")
S.Material = "SmoothPlastic"
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(x1,y1,z1)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Parent=char
pmsh.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 


function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Material = "SmoothPlastic"
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=char
	SL = Instance.new("PointLight",S)
	SL.Range = 10
	SL.Brightness = 2
	SL.Color = Color3.new(255,0,0)
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Material = "SmoothPlastic"
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=char
	SL = Instance.new("PointLight",S)
	SL.Range = 60
	SL.Brightness = 60
	SL.Color = Color3.new(255,0,0)
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function Wave() 
playSound(161006182,la,1,1)
--playSound(161006163,la,1,1)
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("Really black") 
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(2,2,2) 
wav1.CFrame = char['Left Arm'].CFrame 
meh1 = Instance.new('SpecialMesh',wav1)
meh1.MeshType = 'FileMesh'
meh1.Scale = Vector3.new(1,1,1)
meh1.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
local wav2 = Instance.new("Part") 
wav2.Parent = workspace 
wav2.BrickColor = BrickColor.new("Really red") 
wav2.CanCollide = false 
wav2.Anchored = true 
wav2.Size = Vector3.new(2,2,2) 
wav2.CFrame = char['Left Arm'].CFrame 
meh2 = Instance.new('SpecialMesh',wav2)
meh2.MeshType = 'FileMesh'
meh2.Scale = Vector3.new(1,1,1)
meh2.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav2.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= user.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		--Damagefunc1(head,5,0)
		hitcon = wav1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 5)
			end
		end)
		end
end
end
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,0.5,0.5) 
meh2.Scale = meh2.Scale + Vector3.new(0.5,0.5,0.5) 
wav1.CFrame = wav1.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav2.CFrame = wav2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav1.Transparency = wav1.Transparency + 0.1 
wav2.Transparency = wav2.Transparency + 0.1 
end 
wav1.Parent = nil 
wav2.Parent = nil 
end)) 
end 

function Wave2() 
--sss(ExciPart2,1) 
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("Really red") 
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(5,5,5) 
wav1.CFrame = la.CFrame
local wav2 = Instance.new("Part") 
wav2.Parent = workspace 
wav2.BrickColor = BrickColor.new("Really black") 
wav2.CanCollide = false 
wav2.Anchored = true 
wav2.Size = Vector3.new(5,5,5) 
wav2.CFrame = la.CFrame
SL = Instance.new("PointLight",wav1)
	SL.Range = 60
	SL.Brightness = 60
	SL.Color = Color3.new(255,0,0)
local meh1 = Instance.new("SpecialMesh") 
meh1.Parent = wav1 
meh1.MeshId = "http://www.roblox.com/asset/?id=9756362" 
meh1.Scale = Vector3.new(1,1,1) 
local meh2 = Instance.new("SpecialMesh") 
meh2.Parent = wav2 
meh2.MeshId = "http://www.roblox.com/asset/?id=9756362" 
meh2.Scale = Vector3.new(0.5,0.5,0.5) 
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav1.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= user.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		--Damagefunc2(head,5,10)
		hitcon = wav1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 80)

			end
		
		end)
		end
end
	end 
	
	hitcon = wav2.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 80)
			end
	end)
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,1,0.5) 
wav1.CFrame = wav1.CFrame 
meh2.Scale = meh1.Scale + Vector3.new(0.5,1,0.5) 
wav2.CFrame = wav1.CFrame 
end 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.3,0.3,0.3) 
wav1.CFrame = wav1.CFrame 
wav1.Transparency = wav1.Transparency + 0.1 
meh2.Scale = meh1.Scale + Vector3.new(0.3,0.3,0.3) 
wav2.CFrame = wav1.CFrame 
wav2.Transparency = wav1.Transparency + 0.1 
end 
wav1.Parent = nil 
wav2.Parent = nil 
end)) 
end

--[[local Handle  = Instance.new('Part', m)
			Handle:BreakJoints()
			Handle.Material = 'SmoothPlastic'
			Handle.TopSurface = 'Smooth'
			Handle.Name = 'Handle'
			Handle.BottomSurface = 'Smooth'
			Handle.FormFactor = 'Custom' Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new('Bright red')
			Handle.Size = Vector3.new(0.722727716, 0.789999843, 0.200000003)
			Handle.Transparency = 0			Handle.Reflectance = 0.30000001192093			    local Handleweld = Instance.new('ManualWeld')
   Handleweld.Part0 = game.Players.LocalPlayer.Character['Left Arm']
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.0331363678, 0.0529589653, -0.408006668, 6.81079018e-06, 0.00025291738, -0.999999702, 3.55311636e-06, -0.999999762, -0.000252768397, -1, -3.51419908e-06, -6.73527984e-06)
    Handleweld.Parent = game.Players.LocalPlayer.Character['Left Arm']
		
					local HandleMesh = Instance.new('BlockMesh',Handle)
				HandleMesh.Name = 'Mesh'
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 0.909090996, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0313539505, -0.120179176, -1.30525064, 0.707112193, -0.707090795, 2.99402245e-06, -7.28645136e-06, -3.92117954e-06, 0.999991059, -0.707095981, -0.707107723, -8.44711576e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30909085, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.0212306976, -0.210647583, 0.707409859, 0.707267463, 0.706945777, 8.99063525e-06, -7.35625599e-06, -5.47161471e-06, 1, 0.706945777, -0.707267761, 1.3028889e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local dmg4  = Instance.new('Part', m)
			dmg4:BreakJoints()
			dmg4.Material = 'SmoothPlastic'
			dmg4.TopSurface = 'Smooth'
			dmg4.Name = 'dmg4'
			dmg4.BottomSurface = 'Smooth'
			dmg4.FormFactor = 'Custom' dmg4.CanCollide = false
			dmg4.BrickColor = BrickColor.new('Really black')
			dmg4.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg4.Reflectance = 0.60000002384186			dmg4.Transparency = 0			    local dmg4weld = Instance.new('ManualWeld')
   dmg4weld.Part0 =  Handle   dmg4weld.Part1 = dmg4  dmg4weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg4weld.C1 = CFrame.new(0.0771980286, 1.55718255, 0.120207787, 0.999999762, -0.000210092607, 7.73429019e-06, -0.000209943508, -0.99999994, -4.11334122e-06, 7.81155177e-06, 4.14893066e-06, -1)
    dmg4weld.Parent = dmg4		
					local dmg4Mesh = Instance.new('SpecialMesh',dmg4)
					dmg4Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg4Mesh.MeshType = Enum.MeshType.FileMesh				dmg4Mesh.Name = 'Mesh'
				dmg4Mesh.Offset = Vector3.new(0, 0, 0)
				dmg4Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272725, 0.200000003, 2.27272725)
			Part.Reflectance = 1			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.031167984, -0.120185852, -0.0782046318, 0.707112491, -0.707100987, 2.91848369e-06, -7.68709378e-06, -3.5206408e-06, 1, -0.707100689, -0.707112491, -7.84470467e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.530406475, -0.210646629, 0.613744736, -0.707312346, -0.706900775, -7.95247797e-06, -7.48035245e-06, -3.87872569e-06, 1, -0.706900775, 0.707312644, -2.5167119e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(1, 0.909090936, 0.200000003)
			Part.Reflectance = 0.5			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0777702332, -0.0460093021, 0.302001953, 0.999999642, -0.000477507012, 7.92336414e-06, -0.000477357826, -0.999999821, -3.88359558e-06, 8.00161615e-06, 3.91702588e-06, -1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=21057410'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.315454543, 0.322727233, 0.0954545364)
				
local dmg3  = Instance.new('Part', m)
			dmg3:BreakJoints()
			dmg3.Material = 'SmoothPlastic'
			dmg3.TopSurface = 'Smooth'
			dmg3.Name = 'dmg3'
			dmg3.BottomSurface = 'Smooth'
			dmg3.FormFactor = 'Custom' dmg3.CanCollide = false
			dmg3.BrickColor = BrickColor.new('Really black')
			dmg3.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg3.Reflectance = 0.60000002384186			dmg3.Transparency = 0			    local dmg3weld = Instance.new('ManualWeld')
   dmg3weld.Part0 =  Handle   dmg3weld.Part1 = dmg3  dmg3weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg3weld.C1 = CFrame.new(-0.0118477345, 1.71327496, 0.120187759, 0.000210615312, 0.99999994, 4.11333212e-06, 0.999999762, -0.00021076441, 7.82369352e-06, 7.90095874e-06, 4.14889746e-06, -1)
    dmg3weld.Parent = dmg3		
					local dmg3Mesh = Instance.new('SpecialMesh',dmg3)
					dmg3Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg3Mesh.MeshType = Enum.MeshType.FileMesh				dmg3Mesh.Name = 'Mesh'
				dmg3Mesh.Offset = Vector3.new(0, 0, 0)
				dmg3Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.759212971, -0.210639954, -0.674391747, -0.707368433, -0.706844687, -7.95271262e-06, -7.48040202e-06, -3.87872615e-06, 1, -0.706844628, 0.707368731, -2.51611527e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.76154232, -0.211082458, 0.633905411, -0.707312286, -0.706900835, -7.95247979e-06, -7.48035336e-06, -3.87872706e-06, 1, -0.706900835, 0.707312584, -2.51671258e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local dmg1  = Instance.new('Part', m)
			dmg1:BreakJoints()
			dmg1.Material = 'SmoothPlastic'
			dmg1.TopSurface = 'Smooth'
			dmg1.Name = 'dmg1'
			dmg1.BottomSurface = 'Smooth'
			dmg1.FormFactor = 'Custom' dmg1.CanCollide = false
			dmg1.BrickColor = BrickColor.new('Really black')
			dmg1.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg1.Reflectance = 0.60000002384186			dmg1.Transparency = 0			    local dmg1weld = Instance.new('ManualWeld')
   dmg1weld.Part0 =  Handle   dmg1weld.Part1 = dmg1  dmg1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg1weld.C1 = CFrame.new(0.0770072937, -1.62387848, 0.120163918, 0.999999762, -0.000210092607, 7.73429019e-06, -0.000209943508, -0.99999994, -4.11334122e-06, 7.81155177e-06, 4.14893066e-06, -1)
    dmg1weld.Parent = dmg1		
					local dmg1Mesh = Instance.new('SpecialMesh',dmg1)
					dmg1Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg1Mesh.MeshType = Enum.MeshType.FileMesh				dmg1Mesh.Name = 'Mesh'
				dmg1Mesh.Offset = Vector3.new(0, 0, 0)
				dmg1Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.200000003, 2.27272701, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.14925289, -0.0314512253, -0.119760513, 0.707107484, 0.707105696, -1.10258406e-06, -0.707105577, 0.707107782, -2.91853394e-06, -1.36046719e-06, 2.80614677e-06, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909090996, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0779085159, -1.25864029, -0.120201111, 0.707106888, 0.707106173, -1.10259089e-06, -0.707106113, 0.707107246, -2.91852757e-06, -1.36046037e-06, 2.80614677e-06, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090996, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30000031, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.0424022675, -0.211091042, -0.783349037, 0.707326114, -0.706887186, 2.96844019e-06, -7.71655777e-06, -3.48280605e-06, 1, -0.706886947, -0.707326174, -7.83788892e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090996)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0780677795, 0.12019062, 1.19586754, 0.707118928, 0.707094312, 1.81161104e-05, 7.81187282e-06, 1.79219624e-05, -1, -0.707094252, 0.707119226, 7.17693956e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local dmg2  = Instance.new('Part', m)
			dmg2:BreakJoints()
			dmg2.Material = 'SmoothPlastic'
			dmg2.Material = 'SmoothPlastic'
			dmg2.TopSurface = 'Smooth'
			dmg2.Name = 'dmg2'
			dmg2.BottomSurface = 'Smooth'
			dmg2.FormFactor = 'Custom' dmg2.CanCollide = false
			dmg2.BrickColor = BrickColor.new('Really black')
			dmg2.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg2.Reflectance = 0.60000002384186			dmg2.Transparency = 0			    local dmg2weld = Instance.new('ManualWeld')
   dmg2weld.Part0 =  Handle   dmg2weld.Part1 = dmg2  dmg2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg2weld.C1 = CFrame.new(-0.0120446682, -1.55901527, 0.120191574, 0.000210615312, 0.99999994, 4.11333212e-06, 0.999999762, -0.00021076441, 7.82369352e-06, 7.90095874e-06, 4.14889746e-06, -1)
    dmg2weld.Parent = dmg2		
					local dmg2Mesh = Instance.new('SpecialMesh',dmg2)
					dmg2Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg2Mesh.MeshType = Enum.MeshType.FileMesh				dmg2Mesh.Name = 'Mesh'
				dmg2Mesh.Offset = Vector3.new(0, 0, 0)
				dmg2Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30000031, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.111002922, -0.210646629, -0.622792721, -0.707281172, 0.706932306, -1.97609234e-06, -6.91269224e-06, -4.08157621e-06, 1, 0.706932008, 0.707281291, 7.69329836e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090996)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.21818173, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.208874702, -0.211090088, 0.659489632, -0.707189023, -0.707024276, -7.83939322e-06, -7.35447929e-06, -3.84530495e-06, 1, -0.707024217, 0.707189262, -2.45273873e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.603512764, -0.210655212, -0.69993782, -0.707424462, -0.706788659, -7.95294545e-06, -7.48044977e-06, -3.87872569e-06, 1, -0.706788599, 0.7074247, -2.51551978e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)]]--
				

local Handle2  = Instance.new('Part', m)
			Handle2:BreakJoints()
			Handle2.Material = 'SmoothPlastic'
			Handle2.TopSurface = 'Smooth'
			Handle2.Name = 'Handle2'
			Handle2.BottomSurface = 'Smooth'
			Handle2.FormFactor = 'Custom' Handle2.CanCollide = false
			Handle2.BrickColor = BrickColor.new('Really black')
			Handle2.Size = Vector3.new(0.200000003, 1.3636378, 0.272727251)
			Handle2.Transparency = 0			Handle2.Reflectance = 0			    local Handle2weld = Instance.new('ManualWeld')
   Handle2weld.Part0 = game.Players.LocalPlayer.Character['Right Arm']
   Handle2weld.Part1 = Handle2  Handle2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handle2weld.C1 = CFrame.new(0.115003586, 0.0987281799, 0.977676153, 1, 9.5066456e-24, 2.8596127e-22, -2.86119345e-22, -0.0332261063, -0.999447882, 0, 0.999447763, -0.03322611)
    Handle2weld.Parent = game.Players.LocalPlayer.Character['Right Arm']
		
					local Handle2Mesh = Instance.new('CylinderMesh',Handle2)
				Handle2Mesh.Name = 'Mesh'
				Handle2Mesh.Offset = Vector3.new(0, 0, 0)
				Handle2Mesh.Scale = Vector3.new(0.909090996, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000169754028, -3.45175743, -0.138971567, 0.999999821, 7.21236529e-06, 1.62003744e-11, -7.21235847e-06, 0.99999994, -1.04308128e-07, -1.65242091e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.454545468, 0.931817949)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.200000003, 0.454545468, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000362634659, 0.903982162, -0.00256919861, -2.40126044e-11, 0, -1, 3.12099401e-05, 1, 0, 1, -3.1209951e-05, -2.70574674e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.477272719, 0.454545468, 1.18636358)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.36363733, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000408172607, -3.2703228, -0.000365972519, 1, -1.5167876e-05, -1.11981535e-11, 1.51678742e-05, 1, 0, 1.20082199e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.545454502)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00299835205, -0.460396767, -0.688175201, 1, -3.1209951e-05, -2.70574674e-11, 2.20687416e-05, 0.70710665, -0.707106709, 2.2068778e-05, 0.707106709, 0.70710665)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.272728473, 0.272727251)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000371932983, 0.356336594, -0.000364780426, 1, -3.1209951e-05, -2.70574674e-11, 3.12099401e-05, 1, 0, 2.40126044e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.954545557, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00179100037, -1.27498245, -0.138988495, 1, 0.000120599419, 5.1841198e-11, -0.000120599441, 1, 0, -6.70744987e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.545454562, 0.454545468, 0.931818128)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-9.91821289e-05, -1.2742815, 0.140503168, 1, 0.000112032132, 2.11457518e-11, -0.000112032118, 1, 0, -2.74188762e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.52272743, 0.454545468, 0.954545379)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(4.57763672e-05, -3.45203209, 0.138261795, 1, -1.52991538e-06, 4.80326889e-12, 1.52991197e-06, 1, 0, -4.60346778e-12, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.454545468, 0.931818128)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.636363626)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00229072571, -0.776579857, -0.000361442566, 1, -9.22312756e-06, -1.07149845e-11, 9.22312756e-06, 1, 0, 1.20083362e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000368356705, -2.36870098, -0.00256919861, -2.40126044e-11, 0, -1, 3.12099401e-05, 1, 0, 1, -3.1209951e-05, -2.70574674e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.390000015, 0.454545468, 0.767272711)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.272728473, 0.272727251)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000370025635, -0.370936394, -0.000362873077, 1, -3.1209951e-05, -2.70574674e-11, 3.12099401e-05, 1, 0, 2.40126044e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.954545557, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.27272952, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00159645081, -1.50010109, -0.0003657341, 1, 3.54497861e-05, -1.38697942e-11, -3.54497824e-05, 1, 0, 1.20212876e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.545454681, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.905099869, 0.00036406517, 0.00200653076, 5.48139869e-05, 1, 0, -1.19917904e-11, 0, -1, -1, 5.48139869e-05, 7.38964445e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.409090906, 0.409090906, 0.586363614)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.454545587)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000259399414, 0.183724165, 3.18167973, 1, -2.18232981e-06, 2.27445227e-08, -2.27447376e-08, -5.96046448e-08, 1, -2.18232526e-06, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.477272779, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.363636345)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00379371643, 0.185991049, 1.50038528, 1, 0.000136076589, 2.28828867e-08, -2.28776322e-08, -5.96046448e-08, 1, 0.00013607656, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.568181872, 0.5, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.36226559, 0.000361204147, 0.0470504761, 6.11958749e-05, 1, 0, -1.19900192e-11, 0, -1, -0.99999994, 6.11958749e-05, 1.15960574e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.363636374, 0.363636374, 0.363636374)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.36418152, 0.000360488892, -0.0429668427, 4.18317832e-05, 1, 0, -1.19900635e-11, 0, -1, -1, 4.18317723e-05, 1.25055521e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.363636374, 0.363636374, 0.363636374)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.545454502)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00299835205, -0.460906029, 0.687661171, 1, -3.1209951e-05, -2.70574674e-11, 2.20687743e-05, 0.707106769, 0.707106709, -2.20687416e-05, -0.707106709, 0.707106769)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.363636345)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00389862061, -0.184457302, 1.50272179, 1, 0.000130918532, 2.28174031e-08, -2.28287895e-08, -5.96046448e-08, 1, 0.000130918561, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.568181872, 0.477272749, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.454545379)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000366210938, -0.184444427, 3.18046188, 0.999999821, 1.56519236e-05, 2.27635155e-08, -2.27637464e-08, -5.96046448e-08, 1, 1.56519145e-05, -0.999999762, 3.7252903e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.477272749, 1)
				
local Blade1  = Instance.new('Part', m)
			Blade1:BreakJoints()
			Blade1.Material = 'SmoothPlastic'
			Blade1.TopSurface = 'Smooth'
			Blade1.Name = 'Blade1'
			Blade1.BottomSurface = 'Smooth'
			Blade1.FormFactor = 'Custom' Blade1.CanCollide = false
			Blade1.BrickColor = BrickColor.new('Light stone grey')
			Blade1.Size = Vector3.new(0.200000003, 3.0909102, 0.454545468)
			Blade1.Reflectance = 0			Blade1.Transparency = 0.10000002384186			    local Blade1weld = Instance.new('ManualWeld')
   Blade1weld.Part0 =  Handle2   Blade1weld.Part1 = Blade1  Blade1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Blade1weld.C1 = CFrame.new(-0.00213432312, -2.41007614, -0.00036406517, 1, -2.84128078e-06, -1.15534249e-11, 2.84128328e-06, 1, 0, 1.20101819e-11, 0, 1)
    Blade1weld.Parent = Blade1		
					local Blade1Mesh = Instance.new('BlockMesh',Blade1)
				Blade1Mesh.Name = 'Mesh'
				Blade1Mesh.Offset = Vector3.new(0, 0, 0)
				Blade1Mesh.Scale = Vector3.new(0.454545468, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.427272916, 0.200000003, 0.454545468)
			Part.Reflectance = 0			Part.Transparency = 0.10000002384186			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00492072105, 0.000297546387, -2.36869526, -2.40126044e-11, 0, -1, -0.999999702, 3.11503318e-05, 2.09183781e-11, 3.11503245e-05, 0.999999702, -8.94069672e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.477272749, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.905103683, 0.000364303589, 0.00214767456, 5.48139869e-05, 1, 0, -1.19917904e-11, 0, -1, -1, 5.48139869e-05, 7.38964445e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.454545468, 0.454545468, 0.476363629)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.18181872, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.777746201, -0.000360012054, -0.00230026245, 3.12098346e-05, 0.999996424, -1.60187483e-07, 2.40125246e-11, 1.60187483e-07, 0.999996424, 0.999993324, -3.12097327e-05, -2.29647412e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.293636382, 1.2881819, 0.0972727239)
				
local Wedge  = Instance.new('WedgePart', m)
			Wedge:BreakJoints()
			Wedge.Material = 'SmoothPlastic'
			Wedge.TopSurface = 'Smooth'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = 'Smooth'
			Wedge.FormFactor = 'Custom' Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new('Really red')
			Wedge.Size = Vector3.new(0.200000003, 0.27272734, 0.200000003)
			Wedge.Reflectance = 0			Wedge.Transparency = 0			    local Wedgeweld = Instance.new('ManualWeld')
   Wedgeweld.Part0 =  Handle2   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00407028198, -4.08790874, -0.000361204147, 1, 1.63042296e-05, -1.25623956e-11, -1.63042369e-05, 1, 0, 1.20158449e-11, 0, 1)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new('SpecialMesh',Wedge)
					WedgeMesh.MeshId = ''
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = 'Mesh'
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.522727311, 1, 0.454545468)
				
local Blade2  = Instance.new('WedgePart', m)
			Blade2:BreakJoints()
			Blade2.Material = 'SmoothPlastic'
			Blade2.TopSurface = 'Smooth'
			Blade2.Name = 'Blade2'
			Blade2.BottomSurface = 'Smooth'
			Blade2.FormFactor = 'Custom' Blade2.CanCollide = false
			Blade2.BrickColor = BrickColor.new('Light stone grey')
			Blade2.Size = Vector3.new(0.200000003, 0.909091055, 0.454545379)
			Blade2.Reflectance = 0			Blade2.Transparency = 0.10000002384186			    local Blade2weld = Instance.new('ManualWeld')
   Blade2weld.Part0 =  Handle2   Blade2weld.Part1 = Blade2  Blade2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Blade2weld.C1 = CFrame.new(-0.00219154358, -4.40787601, -0.000361442566, 1, 3.54056488e-06, -1.19229071e-11, -3.54056465e-06, 1, 0, 1.20120285e-11, 0, 1)
    Blade2weld.Parent = Blade2		
					local Blade2Mesh = Instance.new('SpecialMesh',Blade2)
					Blade2Mesh.MeshId = ''
					Blade2Mesh.MeshType = Enum.MeshType.Wedge				Blade2Mesh.Name = 'Mesh'
				Blade2Mesh.Offset = Vector3.new(0, 0, 0)
				Blade2Mesh.Scale = Vector3.new(0.454545468, 1, 1)
Magick = true				
coroutine.resume(coroutine.create(function() 
while Magick == true do 
wait(0.1)  
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really red")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really red")) 
end 
end)) 
				
mouse.Button1Down:connect((function()
if Anim == 'Idle' then Anim = 'Basic slash'
						if deb == false then
							deb = true
						end
coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-190),math.rad(370),math.rad(0)),6)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(400),math.rad(-370),math.rad(0)),4)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-420),math.rad(-370),math.rad(0)),4)
						--ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(310),math.rad(30),math.rad(190)),3)
						--ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-360),math.rad(70),math.rad(0)),7)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
	
end))

					mouse.KeyDown:connect(function(key)
					key=key:lower()
					if key == 'f' then
						if Anim == 'Idle' then Anim = 'Great Slash'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(160),math.rad(30),math.rad(0)),7)
						--wait'.7'
						ypcall(function()
							dmgstart(math.random(8,10))
							if deb == true then 
						
						deb = false
					end
						end)
						playSound(154965929,Blade2,1,0.7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(170),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),5)
						--wait'.1'
						ypcall(function()
							dmgstop()
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),7)--yxz
						wait(.5)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						Anim = 'Idle'
						end
					elseif key == 'g' then
						if Anim == 'Idle' then Anim = 'Slash'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
						elseif key == 't' then
						if Anim == 'Idle' then Anim = 'Stun'
						if deb == false then
							deb = true
						end
						playSound(154965929,Blade2,1,1)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0)),7)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(-90)),3) Wave()  EVENMOARMAGIX(char['Left Arm'],5,3,5,0,0,0,0,0,0,BrickColor.new("Really red"))
						ypcall(function()
							--dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							--dmgstop()
						end)
						end
						elseif key == 'h' then
						if Anim == 'Idle' then Anim = 'Special'
						if deb == false then
							deb = true
						end
						EVENMOARMAGIX(char['Left Arm'],5,3,5,0,0,0,0,0,0,BrickColor.new("Really red"))
						playSound(161006157,la,1,1)
						playSound(161006131,la,1,1.5)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),math.rad(0)),8)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0)),8)
						--ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(-90)),8)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-150),math.rad(150),math.rad(-90)),8)
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave2()
						playSound(161006093,la,1,1)
						playSound(161006163,la,1,1)
						ypcall(function()
							--dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							--dmgstop()
						end)
						end
					elseif key == 'r' then
						if Anim == 'Idle' then Anim = 'Stab'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						playSound(154965929,Blade2,1,1.2)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(630),math.rad(-90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
						elseif key == 'q' then
						if Anim == 'Idle' then Anim = '360 Parry'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(730),math.rad(-90),math.rad(-40)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-360),math.rad(-230),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
					elseif key == 'e' then
						if Anim == 'Idle' then Anim = 'Slash 2'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(380),math.rad(-390),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(520),math.rad(-390),math.rad(70)),6)
						playSound(154965929,Blade2,1,1.3)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),5)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
					--[[elseif key == 'v' then
						if Anim == 'Idle' then Anim = 'Shield Slash'
						if deb == false then
							deb = true
						end
						dmgstart2(math.random(5,10))
						 ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-690),math.rad(30),math.rad(0)),7)
						wait(.7)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-180),math.rad(-190)),5)
						wait(1)
						dmgstop2()
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
						Anim = 'Idle'
					end
					if deb == true then 
						
						deb = false
					end]]--
					end
				end)
				--[[
				mouse.KeyUp:connect(function(key)
					key=key:lower()
					if key == 'r' then
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),5)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
					end
				end)
				]]
				
				
				ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),5)
				ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
				
				
		
				
				function dmgstart(dmg)
	hitcon = Blade1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 5)
			end
	end)
	hitcon2 = Blade2.Touched:connect(function(hit)
			local hum2 = hit.Parent:FindFirstChild('Humanoid')
			if hum2 and not hum2:IsDescendantOf(char) then
                                DoDamage(hum2,dmg or 5)
			end
		end)
				end
				

function dmgstop()
	ypcall(function()
		hitcon:disconnect()
		hitcon2:disconnect()
	end)
end


				function dmgstart2(dmg)
	hitcon = dmg1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg)
			end
	end)
	hitcon2 = dmg2.Touched:connect(function(hit)
			local hum2 = hit.Parent:FindFirstChild('Humanoid')
			if hum2 and not hum:IsDescendantOf(char) then
                                DoDamage(hum2,dmg)
			end
	end)
	hitcon3 = dmg3.Touched:connect(function(hit)
			local hum3 = hit.Parent:FindFirstChild('Humanoid')
			if hum3 and not hum:IsDescendantOf(char) then
                                DoDamage(hum3,dmg)
			end
	end)
	
	hitcon4 = dmg4.Touched:connect(function(hit)
			local hum4 = hit.Parent:FindFirstChild('Humanoid')
			if hum4 and not hum:IsDescendantOf(char) then
                                DoDamage(hum4,dmg)
			end
		end)
end

function dmgstop2()
	ypcall(function()
		hitcon:disconnect()
		hitcon2:disconnect()
	end)
end

print('Credits')
print('W8X for the compiler')
print('AtlasGrim for the Weapon Template and 2 moves')
print('TheSpadesCross (ace28545) for the design, sounds and 6 moves')
print('Antiboomz0r for the playsound function')