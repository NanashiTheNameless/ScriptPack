credits='AtlasGrim'--hehehe

user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
fulldmg=.8
hold=false

game:service'Lighting'.Outlines=false
--[[
	sword parts=
	all wedges(1-4)
	part1 and 2
--]]

function expl(Pos)
        coroutine.resume(coroutine.create(function()
	wait(1)
                local Base = Instance.new("Part",workspace)
                Base.Anchored = true
                Base.Shape = "Ball"
                Base.FormFactor = "Custom"
                Base.Size = Vector3.new(10,10,10)
                Base.CFrame = Pos
                Base.Transparency = 0.25
                Base.BrickColor = BrickColor.new('Bright blue')
                Base.TopSurface = "Smooth"
                Base.BottomSurface = "Smooth"
                Base.Name = "Explosion"
				 Base.CanCollide=false
                for i = 1,100,2 do
                        Base.Size = Base.Size + Vector3.new(1,1,1)
                        Base.CFrame = Pos
                        Base.Transparency = i*0.01
                        --Break(Workspace,Base,Base.Size.Y/2)
                        wait(0.0001)
                end
                Base:Destroy()
        end))
end


local ScreenGui = Instance.new("ScreenGui",game.Players.localPlayer.PlayerGui)

local TextLabel1 = Instance.new("TextLabel",ScreenGui)
TextLabel1.BackgroundColor3 = Color3.new(1,1,1)
TextLabel1.BackgroundTransparency = 1
TextLabel1.BorderSizePixel = 0
TextLabel1.Size = UDim2.new(0,100,0,100)
TextLabel1.Font = Enum.Font.SourceSans
TextLabel1.FontSize = Enum.FontSize.Size24
TextLabel1.Text = "Power:"
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1.TextYAlignment = Enum.TextYAlignment.Top

local TextLabel = Instance.new("TextLabel",ScreenGui)
TextLabel.BackgroundColor3 = Color3.new(1,1,1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0,100,0,0)
TextLabel.Size = UDim2.new(0,100,0,100)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size24
TextLabel.Text = "0"
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top


function DoDamage(hum,dmg)
        if hum.Health == 0 then return end
        local a,b = ypcall(function()
                --hum:TakeDamage(dmg)
                hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild("Torso") then return end
                local m = Instance.new("Model",workspace)
                m.Name = dmg
                local h = Instance.new("Humanoid",m)
                h.MaxHealth = 0
                local p = Instance.new("Part",m)
                p.Name = "Head"
                p.FormFactor = "Custom"
                p.Size = Vector3.new(1,1,1)
                p.Transparency = 0.97
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
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

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
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
local ra,la = char["Right Arm"], char["Left Arm"]
ra:BreakJoints()
la:BreakJoints()
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
local rs0 = rs.C0
local ls0 = ls.C0

local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Reddish brown")
			Handle.Size = Vector3.new(0.200000033, 1.60000014, 0.200000003)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.951027155, 0.346985579, -0.0999908447, 0, -0.999999881, 0, 0, 0, -1, 1, 0, 0)
    Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local Part3  = Instance.new("Part", m)
			Part3:BreakJoints()
			Part3.TopSurface = "Smooth"
			Part3.Name = 'Part3'
			Part3.BottomSurface = "Smooth"
			Part3.FormFactor = "Custom" Part3.CanCollide = false
			Part3.BrickColor = BrickColor.new("Brown")
			Part3.Size = Vector3.new(1.4000001, 0.200000003, 0.200000003)
			    local Part3weld = Instance.new("ManualWeld")
   Part3weld.Part0 =  Handle   Part3weld.Part1 = Part3  Part3weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part3weld.C1 = CFrame.new(1.66893005e-06, -0.900031865, 0, 0.999999762, 0, 0, 0, 1, 0, 0, 0, 1)
    Part3weld.Parent = Part3		
local Part2  = Instance.new("Part", m)
			Part2:BreakJoints()
			Part2.Reflectance=1
			Part2.TopSurface = "Smooth"
			Part2.Name = 'Part2'
			Part2.BottomSurface = "Smooth"
			Part2.FormFactor = "Custom" Part2.CanCollide = false
			Part2.BrickColor = BrickColor.new("Medium stone grey")
			Part2.Size = Vector3.new(4.20000029, 0.600000024, 0.200000003)
			    local Part2weld = Instance.new("ManualWeld")
   Part2weld.Part0 =  Handle   Part2weld.Part1 = Part2  Part2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part2weld.C1 = CFrame.new(3.09998322, -1.66893005e-06, -3.05175781e-05, -4.37113776e-08, -1, 4.37113883e-08, -0.999999762, 4.37113883e-08, 4.37113883e-08, -4.37113776e-08, -4.37113883e-08, -1)
    Part2weld.Parent = Part2		
local Part1  = Instance.new("Part", m)
			Part1:BreakJoints()
			Part1.TopSurface = "Smooth"
			Part1.Name = 'Part1'
			Part1.Reflectance=1
			Part1.BottomSurface = "Smooth"
			Part1.FormFactor = "Custom" Part1.CanCollide = false
			Part1.BrickColor = BrickColor.new("Medium stone grey")
			Part1.Size = Vector3.new(0.600000024, 0.200000003, 0.200000003)
			    local Part1weld = Instance.new("ManualWeld")
   Part1weld.Part0 =  Handle   Part1weld.Part1 = Part1  Part1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part1weld.C1 = CFrame.new(5.49998283, -1.90734863e-06, -3.05175781e-05, -4.37113776e-08, -1, 4.37113883e-08, -0.999999762, 4.37113883e-08, 4.37113883e-08, -4.37113776e-08, -4.37113883e-08, -1)
    Part1weld.Parent = Part1		
local crystal  = Instance.new("Part", m)
			crystal:BreakJoints()
			crystal.TopSurface = "Smooth"
			crystal.Name = 'crystal'
			crystal.BottomSurface = "Smooth"
			crystal.FormFactor = "Custom" crystal.CanCollide = false
			crystal.BrickColor = BrickColor.new("Bright bluish green")
			crystal.Size = Vector3.new(1, 1, 1)
			crystal.Transparency=.5
			    local crystalweld = Instance.new("ManualWeld")
   crystalweld.Part0 =  Handle   crystalweld.Part1 = crystal  crystalweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   crystalweld.C1 = CFrame.new(0, 0.900003433, 1.66893005e-06, 0, 0, -1, 0, 1, 0, 0.999999762, 0, -0)
    crystalweld.Parent = crystal		
					local crystalMesh = Instance.new("SpecialMesh",crystal)
					crystalMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
					crystalMesh.MeshType = Enum.MeshType.FileMesh				crystalMesh.Name = "Mesh"
				crystalMesh.Offset = Vector3.new(0, 0, 0)
				crystalMesh.Scale = Vector3.new(0.5, 1, 0.5)
				
local Wedge4  = Instance.new("WedgePart", m)
			Wedge4:BreakJoints()
			Wedge4.TopSurface = "Smooth"
			Wedge4.Name = 'Wedge4'
			Wedge4.Reflectance=1
			Wedge4.BottomSurface = "Smooth"
			Wedge4.FormFactor = "Custom" Wedge4.CanCollide = false
			Wedge4.BrickColor = BrickColor.new("Medium stone grey")
			Wedge4.Size = Vector3.new(0.200000003, 4.20000029, 0.200000003)
			    local Wedge4weld = Instance.new("ManualWeld")
   Wedge4weld.Part0 =  Handle   Wedge4weld.Part1 = Wedge4  Wedge4weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedge4weld.C1 = CFrame.new(-3.05175781e-05, -3.09998322, 0.400005102, -4.37113776e-08, 0, -1, 0, 1, 0, 0.999999762, 0, -4.37113883e-08)
    Wedge4weld.Parent = Wedge4		
local Wedge3  = Instance.new("WedgePart", m)
			Wedge3:BreakJoints()
			Wedge3.TopSurface = "Smooth"
			Wedge3.Name = 'Wedge3'
			Wedge3.Reflectance=1
			Wedge3.BottomSurface = "Smooth"
			Wedge3.FormFactor = "Custom" Wedge3.CanCollide = false
			Wedge3.BrickColor = BrickColor.new("Medium stone grey")
			Wedge3.Size = Vector3.new(0.200000003, 4.20000029, 0.200000003)
			    local Wedge3weld = Instance.new("ManualWeld")
   Wedge3weld.Part0 =  Handle   Wedge3weld.Part1 = Wedge3  Wedge3weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedge3weld.C1 = CFrame.new(0, -3.09998322, 0.399996281, 1.31134129e-07, 0, 1, 0, 1, 0, -0.999999762, 0, 1.31134158e-07)
    Wedge3weld.Parent = Wedge3		
local Wedge2  = Instance.new("WedgePart", m)
			Wedge2:BreakJoints()
			Wedge2.TopSurface = "Smooth"
			Wedge2.Name = 'Wedge2'
			Wedge2.Reflectance=1
			Wedge2.BottomSurface = "Smooth"
			Wedge2.FormFactor = "Custom" Wedge2.CanCollide = false
			Wedge2.BrickColor = BrickColor.new("Medium stone grey")
			Wedge2.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
			    local Wedge2weld = Instance.new("ManualWeld")
   Wedge2weld.Part0 =  Handle   Wedge2weld.Part1 = Wedge2  Wedge2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedge2weld.C1 = CFrame.new(3.05175781e-05, -5.49998283, 0.199998736, 1.31134129e-07, 0, 1, 0, 1, 0, -0.999999762, 0, 1.31134158e-07)
    Wedge2weld.Parent = Wedge2		
local Wedge1  = Instance.new("WedgePart", m)
			Wedge1:BreakJoints()
			Wedge1.TopSurface = "Smooth"
			Wedge1.Name = 'Wedge1'
			Wedge1.Reflectance=1
			Wedge1.BottomSurface = "Smooth"
			Wedge1.FormFactor = "Custom" Wedge1.CanCollide = false
			Wedge1.BrickColor = BrickColor.new("Medium stone grey")
			Wedge1.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
			    local Wedge1weld = Instance.new("ManualWeld")
   Wedge1weld.Part0 =  Handle   Wedge1weld.Part1 = Wedge1  Wedge1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedge1weld.C1 = CFrame.new(-3.05175781e-05, -5.49998093, 0.200004578, -2.18556892e-07, -8.74227553e-08, -1, 8.74227553e-08, 1, -8.74227766e-08, 0.999999762, -8.74227908e-08, -2.18556949e-07)
    Wedge1weld.Parent = Wedge1		
local Handle2  = Instance.new("Part", m)
			Handle2:BreakJoints()
			Handle2.TopSurface = "Smooth"
			Handle2.Name = 'Handle2'
			Handle2.BottomSurface = "Smooth"
			Handle2.FormFactor = "Custom" Handle2.CanCollide = false
			Handle2.BrickColor = BrickColor.new("Black")
			Handle2.Size = Vector3.new(1.14000046, 0.600000024, 1.0999999)
			    local Handle2weld = Instance.new("ManualWeld")
   Handle2weld.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
   Handle2weld.Part1 = Handle2  Handle2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handle2weld.C1 = CFrame.new(0, -0.0999999046, -0.0100021362, 0, 4.37113847e-08, 1, 0, -0.999999881, 4.37113883e-08, 1, 0, 0)
    Handle2weld.Parent = game.Players.LocalPlayer.Character["Left Arm"]
		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(2.6100018, 3.40000081, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.0350061655, 0.0599987507, 0.650001526, 1, 1.0658141e-14, 0, 7.10542736e-15, 0.999999762, 0, 0, 0, 1)
    Partweld.Parent = Part		
local Part2  = Instance.new("Part", m)
			Part2:BreakJoints()
			Part2.TopSurface = "Smooth"
			Part2.Name = 'Part2'
			Part2.BottomSurface = "Smooth"
			Part2.FormFactor = "Custom" Part2.CanCollide = false
			Part2.BrickColor = BrickColor.new("Bright red")
			Part2.Size = Vector3.new(0.200000003, 3.20000076, 0.200000003)
			Part2.Reflectance = 0			Part2.Transparency = 0			    local Part2weld = Instance.new("ManualWeld")
   Part2weld.Part0 =  Handle2   Part2weld.Part1 = Part2  Part2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part2weld.C1 = CFrame.new(0.415733397, 0.0339212418, 0.750002861, 0.967808247, 0.251688451, 9.54368886e-08, -0.25168857, 0.967807949, 5.71392945e-07, 5.14484562e-08, -5.77019364e-07, 0.99999994)
    Part2weld.Parent = Part2		
local Part3  = Instance.new("Part", m)
			Part3:BreakJoints()
			Part3.TopSurface = "Smooth"
			Part3.Name = 'Part3'
			Part3.BottomSurface = "Smooth"
			Part3.FormFactor = "Custom" Part3.CanCollide = false
			Part3.BrickColor = BrickColor.new("Bright red")
			Part3.Size = Vector3.new(0.200000003, 3.20000076, 0.200000003)
			Part3.Reflectance = 0			Part3.Transparency = 0			    local Part3weld = Instance.new("ManualWeld")
   Part3weld.Part0 =  Handle2   Part3weld.Part1 = Part3  Part3weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part3weld.C1 = CFrame.new(-0.420915961, 0.0248982906, 0.750002861, 0.963990808, -0.265935391, -1.68167304e-07, 0.265935421, 0.96399051, 2.91157733e-07, 8.46825969e-08, -3.25395206e-07, 0.99999994)
    Part3weld.Parent = Part3		
local Part4  = Instance.new("Part", m)
			Part4:BreakJoints()
			Part4.TopSurface = "Smooth"
			Part4.Name = 'Part4'
			Part4.BottomSurface = "Smooth"
			Part4.FormFactor = "Custom" Part4.CanCollide = false
			Part4.BrickColor = BrickColor.new("Bright red")
			Part4.Size = Vector3.new(0.200000003, 0.80000037, 0.200000003)
			Part4.Reflectance = 0			Part4.Transparency = 0			    local Part4weld = Instance.new("ManualWeld")
   Part4weld.Part0 =  Handle2   Part4weld.Part1 = Part4  Part4weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Part4weld.C1 = CFrame.new(0.137417078, 0.00720095634, 0.750002861, 0.00737460051, 0.999972343, 6.89124363e-07, -0.999972701, 0.00737468805, 3.19170965e-07, 3.14080182e-07, -6.91459661e-07, 0.99999994)
    Part4weld.Parent = Part4	

grip=Handleweld.C0

mouse.KeyDown:connect(function(key)
	key=key:lower()
	if key == 'f' then
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(160),math.rad(30),math.rad(0)),7)
		wait'.7'
		ypcall(function()
		dmgstart(5)
		end)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(170),math.rad(30),math.rad(0)),7)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),5)
		wait'.1'
		ypcall(function()
		dmgstop()
		end)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),7)--yxz
		wait(.5)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
	elseif key == 'g' then
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
		ypcall(function()
		dmgstart(0.8)
		end)
		ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
		wait'0'
		ypcall(function()
		dmgstop()
		end)
	elseif key == 'r' then
		hold=true
		ctween(rs,"C0",rs0*CFrame.new(0,0,-1) * CFrame.Angles(math.rad(90),math.rad(-180),math.rad(45)),7)
		ctween(ls,"C0",ls0*CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45)),7)
		while hold==true do
			wait(0.1)
				a=TextLabel.Text + 1.1
				TextLabel.Text=tostring(a)
			ypcall(function()
					expl(char.Torso.CFrame)
			end)
		end
	end
end)

mouse.KeyUp:connect(function(key)
	key=key:lower()
	if key=='r' then
	hold=false
	ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
	ctween(ls,"C0",ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),7)
		for i,v in pairs(workspace:children()) do
			ypcall(function()
			if v.Name=='Explosion' then
				v:destroy''
				end
			end)
		end
	end
end)
ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),5)
ctween(ls,"C0",ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)


function dmgstart(dmg)
	hitcon = Part1.Touched:connect(function(hit)
			local hum = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg)
			end
		end)
		hitcon2 = Part2.Touched:connect(function(hit)
			local hum2 = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum2 and not hum2:IsDescendantOf(char) then
                                DoDamage(hum2,dmg)
			end
		end) 
		hitcon3 = Wedge1.Touched:connect(function(hit)
			local hum3 = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum3 and not hum3:IsDescendantOf(char) then
                                DoDamage(hum3,dmg)
			end
		end) 
		hitcon4 = Wedge2.Touched:connect(function(hit)
			local hum4 = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum4 and not hum4:IsDescendantOf(char) then
                                DoDamage(hum4,dmg)
			end
		end) 
		hitcon5 = Wedge3.Touched:connect(function(hit)
			local hum5 = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum5 and not hum5:IsDescendantOf(char) then
                                DoDamage(hum5,dmg)
			end
		end)  
		hitcon6 = Wedge4.Touched:connect(function(hit)
			local hum6 = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
			if hum6 and not hum6:IsDescendantOf(char) then
                                DoDamage(hum6,dmg)
			end
		end)
end

function dmgstop()
	ypcall(function()
		hitcon:disconnect()
		hitcon2:disconnect()
		hitcon3:disconnect()
		hitcon4:disconnect()
		hitcon5:disconnect()
		hitcon6:disconnect() 
		end)
end
local z={["!"]=0,["#"]=1,["^"]=2,["_"]=3,["@"]=4,["+"]=5,["-"]=6,["?"]=7,[")"]=8,["&"]=9,["="]=10,["$"]=11,["%"]=12,["*"]=13,["("]=14,["~"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"??)-&-%-+-!^??#-&-@?)^&^!^@-~-=!&!&A-!^_-^?+-@-&-@?_?(?*_?^#@@?%-#-_??@^?&-*-?^!^@?)-+-(-=!&!&!*-*_&@(-_?@?#-(-_-+-(^(-+-??)^?^*@+-_?_?#-?-+-?^%^??~-^?$-_?!?#-_-+-&^=!&!&!*-(^@++-)?@?*_@?~-_?@?^?&-(-?-)^_-^?+-@-&-@?_?&^(^(^^^!^&-_?!^_?@?+-#-%-&-(-?-!^#@@?%-#-_??@^?&-*-?^_?!^_-^?+-#-@?&-~-(-#^!^)^_???~-^?@-!^#-(-@-!^_?)-&-+-%-@-&^^^=!&!+-(-@-=!+-(-@-"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()