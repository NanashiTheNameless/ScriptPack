
user=game:service'Players'.localPlayer
char=user.Character
mouse=user:GetMouse()
user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
hold=false
deb = false
Game.Lighting.Outlines = false
Anim = 'None'

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
                p.BrickColor = BrickColor.new('Really black')
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

ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(70),math.rad(-20),math.rad(50)),5)

--construction
local Handle  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Handle:BreakJoints()
			Handle.Material = "SmoothPlastic"
			Handle.Transparency = 1
			Handle.TopSurface = "Smooth"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Medium stone grey")
			Handle.Size = Vector3.new(0.685749531, 0.68574959, 0.685749531)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.114501953, 0.786820889, -0.0211935043, 5.27895681e-020, 4.47034765e-008, 1, 1.93350978e-012, 0.999999881, -4.47034836e-008, -1, -1.94467489e-012, 3.28244525e-020)
    Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
		
					local HandleMesh = Instance.new("SpecialMesh",Handle)
					HandleMesh.MeshId = ""
					HandleMesh.MeshType = Enum.MeshType.Brick				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1.67275953, 0.331239998, 0.182181984)
				
local Hitbox  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Hitbox:BreakJoints()
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = 1
			Hitbox.TopSurface = "Smooth"
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Mid gray")
			Hitbox.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.270582199, 6.18315887, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("SpecialMesh",Hitbox)
					HitboxMesh.MeshId = ""
					HitboxMesh.MeshType = Enum.MeshType.Brick				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(2.36599994, 7.098001, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, -0.440738082, 4.93405151, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.364000022, 2.00200009)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.151121378, 2.49862671, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.378279686, 2.49850464, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497517943, 0.00567424297, -2.95291901, 3.31555725e-008, -1, 3.65483629e-007, -2.98013862e-008, -3.6547587e-007, -1, 1, 3.31555725e-008, -2.98013703e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264691353, 3.06073761, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 0.364000142, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, -0.00567483902, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-007, 3.11734009, 0.303098917, 1.13114545e-007, 8.29843941e-007, -1, 1, -2.38421308e-007, 1.13114368e-007, -2.38421308e-007, -1, -8.29836324e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135855675, -0.00567471981, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.43051147e-006, -0.497528672, 6.75119019, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.611099243, 6.18334198, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264875412, 3.230896, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(2.36600018, 0.18200013, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.270464897, 3.62836456, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 1.09200025, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264688492, 1.6468277, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156986475, 5.95611572, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 5.27800131, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.2703619, -1.64687347, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497519851, -0.00567495823, -2.95278168, 3.31555725e-008, -1, 3.65480531e-007, -2.98016278e-008, -3.654728e-007, -1, 1, 3.31555157e-008, -2.98016261e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156858683, 4.02594757, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264676094, -0.2840271, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 7.46199799, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.31130219e-006, -0.383954763, 6.18333435, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, 3.11735535, -0.832516909, 1.13096782e-007, 8.2971161e-007, -1, 1, -2.38420967e-007, 1.13096576e-007, -2.38420853e-007, -1, -8.29703993e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264650345, -2.89612579, 0, -4.47035973e-008, -1, 3.88935021e-012, 1, -4.47035973e-008, 6.56493379e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1.27400005, 0.909998953, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-6.86645508e-005, 0.27036202, 0, 1, 0, -1.06898864e-019, 0, 1, -3.8781851e-012, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(5.11419773, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.213638544, 4.19618225, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.364000022, 0.364000022, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(8.34465027e-007, -0.49752593, 4.13903046, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, 0.00567436218, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135846138, 0.00567448139, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.497527599, 5.72904205, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667873383, -4.82103729, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.78813934e-006, -0.667873621, -5.50247192, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874575, -4.59389496, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874217, -4.93460846, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.31130219e-006, -0.611171007, -3.62844849, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.182000026, 1.09200001)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.43051147e-006, -0.667875767, -4.36675262, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874694, -5.38889313, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(2.38418579e-007, -0.486158729, -2.89600372, 1.63910173e-007, -3.98652617e-007, -1, 1.56316617e-006, -1, 3.9866066e-007, -1, -1.56316628e-006, -1.63909561e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874098, -5.04817963, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Dark stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.54972076e-006, -0.497528315, 7.31904602, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874694, -4.48031616, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Mid gray")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.90734863e-006, -0.156997681, 8.00041962, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 1.27400005)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.189658165, -2.83934021, 1.06898864e-019, 3.8781851e-012, -1, 1.19209403e-007, 1, -3.90795903e-012, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874455, -4.70746613, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874813, -5.27532196, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.183947563, 3.12332916, 5.96037069e-008, -3.87638706e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, 5.96037211e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667873979, -5.16175842, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.718988419, -2.83938599, 2.66438555e-015, 5.95998024e-008, 1, -1.19209403e-007, -1, 5.96075864e-008, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.713309407, 3.12332916, 1.48411445e-007, 3.87428031e-007, -1, -9.90880835e-008, -1, -3.87420187e-007, -1, 9.90880835e-008, -1.48411431e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, 0.0375139713, -2.89582062, -2.98018392e-008, -3.85066198e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, -2.98018392e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
TrailDeb = false
				
mouse.Button1Down:connect((function()
if Anim == 'Idle' then Anim = 'Basic slash'
						
						if TrailDeb == false then
							TrailDeb = true
						end
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()


hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)


						playSound(10209645,Hitbox,1,0.9)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						wait'0'
						Anim = 'Idle'
						hitcon:disconnect()
				        if TrailDeb == true then
TrailDeb = false
end
						end
	
end))
					
mouse.KeyDown:connect(function(key)
					key=key:lower()
					key=key:lower()
					if key == 'f' then
						if Anim == 'Idle' then Anim = 'Stab'
						if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(-30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(0)),4)
						--wait'.7'
						playSound(154965929,Blade2,1,0.7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						Anim = 'Idle'
						hitcon:disconnect()
					   if TrailDeb == true then
						TrailDeb = false
					end
					end
					end
end)


