local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local cos = math.cos
local pi = math.pi
local cf = CFrame.new
local v3 = Vector3.new
local ca = CFrame.Angles
local player = game.Players.LocalPlayer
local pchar = player.Character
local torso = pchar.Torso
local mouse = player:GetMouse()

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	if Object.ClassName == "Part" then Object.Locked=true end  
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function stick(x, y)
	weld = Instance.new("Motor") 
	weld.Name='mot'
	weld.Part0 = x
	weld.Part1 = y
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end


cPart = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p.Locked=true
    p:BreakJoints()
    return p
end

so = function(id,par,lo,pi,v,tm)
    local s = Instance.new("Sound",par)
    s.Looped=lo
    s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id
wait()
    s:play()
    s.Volume=v
    game.Debris:AddItem(s,tm)
    return s
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
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

Tween = function(Weld, Stop, Step,a)
    ypcall(function()
        local func = function()
            local Start = Weld.C1
            local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
            local Stop = Stop
            local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
            Spawn(function()
                for i = 0, 1, Step or .1 do
                    wait()
                    Weld.C1 = cf( (Start.p.X * (1 - i)) + (Stop.p.X * i),(Start.p.Y * (1 - i)) + (Stop.p.Y * i),(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * ca((X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),(Z1 * (1 - i)) + (Z2 * i) )
                end
                Weld.C1 = Stop
            end)
        end 
        if a then
            coroutine.wrap(func)()
        else
            func()
        end
    end)
end

function ani(val)
    if val==true then
        lp = cPart(.1,.1,.1,'',1,false,false,m)
        rp = cPart(.1,.1,.1,'',1,false,false,m)
        hp = cPart(.1,.1,.1,'',1,false,false,m)
        lw = Weld(lp,torso,-1.5,.5,0,0,0,0,m)
        rw = Weld(rp,torso,1.5,.5,0,0,0,0,m)
        hw = Weld(hp,torso,0,2,0,0,0,0,m)
        Weld(pchar['Right Arm'],rp,0,-.5,0,0,0,0,m)
        Weld(pchar['Left Arm'],lp,0,-.5,0,0,0,0,m)
        Weld(pchar.Head,hp,0,-.5,0,0,0,0,m)
    else
        rp:Destroy()lp:Destroy()hp:Destroy()
    end
end

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude
    local curpos = Start
    local trz = {-Offset,Offset}
    Spawn(function()
        for i=1,Times do
    		local li = Instance.new("Part",workspace)
    		li.TopSurface =0
    		li.BottomSurface = 0
    		li.Anchored = true
    		li.Transparency = Transparency or 0.4
    		li.BrickColor = Color
            li.formFactor = "Custom"
            li.Material="Neon"
            li.CanCollide = false
            li.Size = Vector3.new(1,1,1)
            Instance.new('BlockMesh',li).Scale = Vector3.new(Thickness,Thickness,magz/Times)
            local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
    		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
            if Times == i then 
                local magz2 = (curpos - End).magnitude
                li.Mesh.Scale = Vector3.new(Thickness,Thickness,magz2)
                li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
            else
                li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
            end
            curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
            Spawn(function() for i=1,10 do
                li.Transparency = li.Transparency+.1
                wait()
                end li:Destroy() end)
            game:service'RunService'.RenderStepped:wait()
        end
    end)
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end

Model = New("Model",nil,"Model",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.428408563, 2.60113001, -2.81294632e-007, -3.14286694e-008, -1, 0.422627836, -0.906303346, -9.03990198e-008, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.432083547, 2.48788691, 2.23633254e-008, 2.58886388e-008, -1, -0.258809, -0.965928495, -3.07944106e-008, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.438928545, 2.54661798, 5.95999765e-008, 4.3114224e-007, -1, -1.08331387e-005, 1, 4.31141586e-007, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.398711383, 2.6493783, 9.79360308e-008, 2.3466815e-007, -1, -0.731360972, 0.681990564, 8.84148719e-008, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.412047565, 2.43121576, 2.99642437e-007, -7.04890795e-008, 1, 0.438361406, -0.898798764, -1.94707184e-007, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.373307407, 2.38923883, 2.94742506e-007, 8.87759271e-008, 1, 0.829031587, -0.559201777, -1.94707184e-007, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.213498443, 2.1391778, 2.31476037e-007, -2.02911721e-007, 1, -0.0349100009, -0.999390483, -1.94707184e-007, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.313416392, 2.6970315, -2.3463771e-007, 2.12774381e-007, 1, 0.882952511, 0.469462305, 1.07284414e-007, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.222962469, 2.22924948, -2.7610605e-007, 1.3608728e-007, 1, -0.224940658, 0.974372447, -1.94707184e-007, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.264073431, 2.30621576, -9.03049227e-008, -2.3090044e-007, 1, -0.681990683, 0.731360912, 1.07284414e-007, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.331287533, 2.36249018, 2.1974769e-007, -2.24058603e-008, 1, 0.829031587, -0.559201717, -1.94707184e-007, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.230269268, 2.7502389, 1, 8.50270226e-007, 1.11928387e-007, 8.03294597e-007, -0.882952869, -0.46946162, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12575293, 0.220183462, 2.73538446, -1, 5.52494953e-007, -1.26850765e-007, -5.47378647e-007, -0.882953167, 0.469461083, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550910123, -0.0104071051, 0.00370845757),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13348699, 0.0499871336, 1.45394063, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.115384616, 1.46153843, 0.230769232),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550869517, -0.0103901131, 0.00416984223),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13347721, 0.0499842726, 1.53088689, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.346153855, 0.346153855, 0.384615391),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550950989, -0.0104240859, 0.00324740447),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13348544, 0.0499861799, 1.37705159, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.230769232, 0.0615384616, 0.215384617),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551164113, -0.0103543159, 0.00515723787),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13348818, 0.226900429, 1.68472028, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.761538446, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550578758, -0.0102711953, 0.0073984582),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13344312, 0.0499567352, 2.06931353, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.346153855, 0.346153855, 0.384615391),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550723784, -0.0103306565, 0.00578406453),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13348925, 0.0499861799, 1.80008638, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.230769232, 0.538461566, 0.184615389),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0540136322, -0.0103321169, 0.00531507097),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.956509531, 0.049956616, 1.72315824, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.692307711, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0561393574, -0.010363169, 0.00533067621),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.31036258, 0.0499827228, 1.72317541, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.692307711, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.854514658, 0.320475608, 2.54661798, -7.04611284e-006, 0.654581189, -0.755991578, -8.22877882e-006, 0.755991578, 0.654581189, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.872110903, 0.300153494, 2.43121576, 0.286943316, -0.588336766, 0.755991995, 0.331397384, -0.679484308, -0.654580832, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.858995497, 0.315300137, 2.48788691, -0.169411585, -0.632279038, -0.755992055, -0.195657507, -0.730234444, 0.654580653, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.861401796, 0.312520891, 2.60113001, 0.276643753, -0.593248665, -0.755992055, 0.319503486, -0.685157657, 0.654580593, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.936673343, 0.225587696, 2.6970315, 0.577963591, 0.307301223, 0.755992055, 0.667505324, 0.354909331, -0.654580593, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.88084054, 0.290070057, 2.6493783, -0.478735179, 0.446418136, -0.755991995, -0.552903056, 0.515579283, 0.654580832, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.897469163, 0.270865917, 2.38923883, 0.542668879, -0.366042614, 0.755991995, 0.626741052, -0.422751904, -0.654580832, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.991099417, 0.162729308, 2.7502389, 0.755992174, -0.577963948, -0.307300359, -0.654580057, -0.667506218, -0.354909062, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.968971431, 0.188285887, 2.30621576, -0.446418196, 0.47873494, 0.755992055, -0.515579641, 0.552902639, -0.654580593, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.924975097, 0.2390991, 2.36249018, 0.54266876, -0.366042525, 0.755991995, 0.626740932, -0.422751606, -0.654580832, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.997701049, 0.155104965, 2.73538446, -0.755992174, -0.577964187, 0.307299972, 0.654580295, -0.667506397, 0.354908705, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.995882213, 0.15720579, 2.22924948, -0.14724201, 0.637805939, 0.755991995, -0.170053065, 0.736617923, -0.654580832, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.00207722, 0.150050372, 2.1391778, -0.0228512455, -0.654182136, 0.755991995, -0.026391834, -0.755530894, -0.654580832, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28872395e-013, 0.0149862235, -2.18515202e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12955296, 0.0535458885, 2.5646987, -1, -0.000115339273, -0.000104585139, -0.000115336377, 1, -2.76410392e-005, 0.000104588333, -2.76289757e-005, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28881665e-013, 0.0149862235, -2.1851512e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12953699, 0.0535449348, 2.53775167, -0.999993086, -0.000116226001, -0.000108489985, -0.0001133857, 0.999996603, -2.6241185e-005, 0.000105720035, -2.56245876e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28884186e-013, 0.0149862235, -2.18496228e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12953699, 0.0534478985, 2.47436285, -0.999993086, -0.000116083022, -0.000108519809, -0.000113242742, 0.999996603, -2.60325705e-005, 0.000105749838, -2.54159859e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28929397e-013, 0.0149862235, -2.18512274e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12956798, 0.0535299145, 2.39199495, -1, -0.000115398296, -0.000104585131, -0.000115395393, 1, -2.77602703e-005, 0.000104588333, -2.77481995e-005, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28908987e-013, 0.0149862235, -2.18510973e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12956798, 0.053523954, 2.4468503, -0.999993086, -0.000116186893, -0.00010854959, -0.000113346585, 0.999996603, -2.62560934e-005, 0.00010577964, -2.56394924e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28918582e-013, 0.0149862235, -2.18510973e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.129583, 0.053523954, 2.41927481, -1, -0.000115398296, -0.000104585131, -0.000115395393, 1, -2.77602703e-005, 0.000104588333, -2.77481995e-005, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28862339e-013, 0.0149862235, -2.18514659e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.129583, 0.0535427891, 2.59195089, -0.999993086, -0.00011756266, -0.000106791034, -0.000114722199, 0.999996603, -2.81185403e-005, 0.000104021332, -2.75020066e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28903159e-013, 0.0149862235, -2.18525122e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12955296, 0.0535969101, 2.50570059, -0.999993086, -0.000116012809, -0.000108638924, -0.00011317242, 0.999996603, -2.69639168e-005, 0.000105869061, -2.63473303e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28958128e-013, 0.0149862235, -2.18528917e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12956798, 0.0536157452, 2.35892057, -0.999993086, -0.000116083022, -0.000108519809, -0.000113242742, 0.999996603, -2.60325705e-005, 0.000105749838, -2.54159859e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.29061887e-013, 0.0149862235, -2.18546589e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12956798, 0.0537068211, 2.11317968, 0.999993086, 0.000108489701, 0.000116191353, 0.000113350776, 2.87301664e-005, -0.999996603, -0.000105720042, 1.00000107, 2.81135835e-005),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.40909633, 1.12272739, 0.286363959),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.29007026e-013, 0.0149862235, -2.18557702e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.12956798, 0.0537647568, 2.30387545, -0.999993086, -0.000116016978, -0.00010875817, -0.000113176611, 0.999996603, -2.67404139e-005, 0.000105988271, -2.61238092e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28968943e-013, 0.0149862235, -2.18530218e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.129583, 0.0536228977, 2.33167505, -0.999993086, -0.000116219948, -0.000108489985, -0.000113379647, 0.999996603, -2.62113808e-005, 0.000105720035, -2.55947853e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Tip = New("Part",Model,"Tip",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.29084086e-013, 0.0149862235, -2.18544827e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.129583, 0.0536977611, 2.0440917, -0.000119767217, -0.000112900772, -0.999993086, 0.999996603, -2.61075893e-005, -0.000116926822, -2.54901042e-005, -1.00000107, 0.000110130932),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Tip,"Mesh",{Scale = Vector3.new(0.0409090891, 0.13636364, 0.0409090891),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28994639e-013, 0.0149862235, -2.18527534e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.129583, 0.053608831, 2.24982214, -0.999993086, -0.000116083022, -0.000108519809, -0.000113242742, 0.999996603, -2.60325705e-005, 0.000105749838, -2.54159859e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.29005535e-013, 0.0149862235, -2.18528917e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.1295979, 0.0536157452, 2.22257948, -0.999993086, -0.000116219948, -0.000108489985, -0.000113379647, 0.999996603, -2.62113808e-005, 0.000105720035, -2.55947853e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.28987619e-013, 0.0149862235, -2.18529947e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.1295979, 0.053621944, 2.27713919, -0.999993086, -0.000116219948, -0.000108489985, -0.000113379647, 0.999996603, -2.62113808e-005, 0.000105720035, -2.55947853e-005, -1.00000107),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0909090936, 0.0909090936, 0.227272734),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",RotVelocity = Vector3.new(-1.94082624e-013, -3.47809648e-016, -2.006519e-013),Velocity = Vector3.new(2.29013152e-013, 0.0149862235, -2.1849078e-013),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.1295979, 0.0534197651, 2.087358, 0.999993086, -0.000108459892, -0.000116170399, 0.000113329821, -2.87748662e-005, 0.999996603, -0.000105690233, -1.00000107, -2.81582888e-005),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.40909633, 0.863636553, 0.190909341),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.40169525, 0.313272744, 2.60113001, -0.272938639, 0.585302174, -0.763495743, 0.322674453, -0.691958666, -0.645812929, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.40848982, 0.321305305, 2.54661798, 7.04168406e-006, -0.645812511, -0.763496161, -8.23256505e-006, 0.763496161, -0.645812511, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.39112985, 0.300781488, 2.43121576, -0.283099145, 0.580455303, 0.763496041, 0.334687352, -0.686229229, 0.64581269, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.32743251, 0.22547707, 2.6970315, -0.57022208, -0.303184599, 0.763495743, 0.674130321, 0.358432591, 0.645812929, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.4040693, 0.31607905, 2.48788691, 0.167142123, 0.62380904, -0.763495803, -0.197599575, -0.737482548, -0.645812929, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.38251674, 0.290599465, 2.6493783, 0.472322315, -0.440438092, -0.763495982, -0.558390975, 0.520697296, -0.645812809, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.3661114, 0.271203756, 2.38923883, -0.535398841, 0.361139715, 0.763496041, 0.632962465, -0.426948041, 0.64581269, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.33897412, 0.239121512, 2.36249018, -0.535398901, 0.361139566, 0.763496041, 0.632962465, -0.4269481, 0.64581269, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.27373493, 0.161994502, 2.7502389, 0.763495445, 0.570222735, 0.30318445, 0.645813346, -0.674130321, -0.358431816, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.26290345, 0.149190262, 2.1391778, 0.022545496, 0.645418882, 0.763496041, -0.0266534891, -0.76303041, 0.64581269, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.26722121, 0.154293984, 2.73538446, -0.763495743, 0.570222855, -0.303184092, -0.645813286, -0.674130738, 0.358431369, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.29556644, 0.18780452, 2.30621576, 0.4404383, -0.472322255, 0.763495743, -0.520697236, 0.558390796, 0.645812929, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.26901686, 0.156415552, 2.22924948, 0.14526926, -0.62926203, 0.763496041, -0.171741426, 0.743929684, 0.64581269, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0539895743, -0.0104793683, 0.00129285082),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.956525922, -0.226899296, 1.06933427, -0.173681542, -0.984800875, -7.7960096e-005, -5.78355466e-005, 8.93633987e-005, -1, 0.98479712, -0.173680574, -7.24770725e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.769230783, 0.230769232, 0.461538464),MeshId = "http://www.roblox.com/asset/?id=40883083",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551841557, -0.0105573051, -0.000346595421),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13349414, 0.311545044, 0.761658669, 3.15689176e-005, -5.74740261e-005, 0.999999046, 0.68198061, -0.73137027, -6.3564381e-005, 0.731365442, 0.681975901, 1.61077187e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.299999982, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13348651, 0.0500172935, 0.992435634, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.230769232, 0.461538464, 0.215384617),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551621728, -0.0104603898, 0.00228534825),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.1334945, 0.31926623, 1.20011449, -7.83198047e-005, 0.999998987, 2.83015597e-005, -0.642840624, -7.20262688e-005, 0.765999913, 0.765995145, 4.17994597e-005, 0.642835855),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.299999982, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550407134, -0.0103579592, 0.00502726436),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13344216, -0.126958489, 1.68470502, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.761538446, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.055072777, -0.0105712656, -0.000772180036),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13350976, -0.219180003, 0.723185539, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.15384616, 0.307692319, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550871938, -0.0105619794, -0.000513281673),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13350987, -0.142314672, 0.761647224, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.384615391, 0.15384616, 0.230769232),})
Part = New("Part",Model,"Part",{RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0561154149, -0.0105104242, 0.00130837783),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.3104229, -0.226900488, 1.06933808, -0.173741654, 0.984790266, 8.30644276e-005, 2.2724023e-006, 8.47481133e-005, -1, -0.98478651, -0.173740685, -1.69620707e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.769230783, 0.230769232, 0.461538464),MeshId = "http://www.roblox.com/asset/?id=40883083",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551431105, -0.0105936574, -0.00135382079),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13349152, 0.0807750523, 0.60781765, 4.94765118e-010, 3.0518062e-005, -0.999999046, -1, 3.05152626e-005, 4.96584107e-010, 3.05150661e-005, 0.999995232, 3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.384615391, 0.230769232, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.15661848, -0.235735446, 2.36249018, -0.0759265944, 0.0512142032, -0.995796502, -0.825547099, 0.556850851, 0.0915844142, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.15046275, -0.168802351, 2.30621576, 0.0624596775, -0.0669809654, -0.995797038, 0.679124296, -0.728286862, 0.0915842652, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.40634358, -0.181502208, 2.43121576, -0.3160882, 0.64809382, -0.692865074, -0.303725153, 0.622745872, 0.721066654, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.42078996, -0.195383653, 2.48788691, 0.186618775, 0.696499288, 0.692865193, 0.179319799, 0.669258237, -0.721066356, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.889563382, -0.229661256, 2.43121576, 0.251257032, -0.515167654, -0.819434345, -0.359208167, 0.736505866, -0.573174298, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.37840903, -0.154660836, 2.38923883, -0.597787857, 0.403221458, -0.692865074, -0.574406922, 0.387450874, 0.721066654, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.3481102, -0.125544667, 2.36249018, -0.597787976, 0.403221488, -0.692865074, -0.574406683, 0.387450635, 0.721066654, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.935852945, -0.163483948, 2.36249018, 0.475179374, -0.320519894, -0.819434345, -0.679336548, 0.45822826, -0.573174298, 0.559201717, 0.829031587, -1.04308128e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.911766231, -0.197916374, 2.38923883, 0.475179315, -0.320519984, -0.819434345, -0.679336488, 0.458228081, -0.573174298, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.14669776, -0.127864242, 2.22924948, 0.0206013117, -0.0892378986, -0.995796502, 0.223995402, -0.970278144, 0.0915844142, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.880186021, -0.243068248, 2.60113001, 0.242239416, -0.519470334, 0.819433928, -0.346314996, 0.742655098, 0.573174596, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.14583039, -0.118440956, 2.1391778, 0.00319699175, 0.0915286392, -0.995796502, 0.0347633399, 0.995189846, 0.0915844142, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.42572701, -0.200126186, 2.54661798, 7.7701261e-006, -0.721066773, 0.692864835, 7.54888151e-006, -0.692864835, -0.721066773, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.897207081, -0.218733206, 2.6493783, -0.41919747, 0.390899569, 0.819434464, 0.599301577, -0.558846712, 0.573174238, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.41813993, -0.192836866, 2.60113001, -0.304742813, 0.653505147, 0.692865193, -0.292824328, 0.627945781, -0.721066356, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.974377513, -0.108406633, 2.30621576, -0.390899777, 0.419197321, -0.819433928, 0.558846653, -0.599301457, -0.573174596, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.27000046, -0.050490953, 2.22924948, 0.162197411, -0.70258832, -0.692865074, 0.155853286, -0.675109148, 0.721066654, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.29964375, -0.0789755583, 2.30621576, 0.49176088, -0.527360439, -0.692865193, 0.472528011, -0.506734312, 0.721066356, -0.731360912, -0.681990683, -2.23517418e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.39672649, -0.172258928, 2.6493783, 0.527360499, -0.491760612, 0.692865074, 0.50673449, -0.472527444, -0.721066654, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.997941256, -0.0747193098, 2.22924948, -0.128929853, 0.558485508, -0.819434345, 0.184323967, -0.798433959, -0.573174298, -0.974372447, -0.224940658, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.00336707, -0.0669634044, 2.1391778, -0.0200096965, -0.572824776, -0.819434345, 0.0286062472, 0.818933606, -0.573174298, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.26317596, -0.0439327732, 2.1391778, 0.0251722783, 0.720627606, -0.692865074, 0.0241880864, 0.692442954, 0.721066654, 0.999390483, -0.0349100009, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.500008583, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.15498161, -0.217938796, 2.6970315, -0.0808643997, -0.0429957658, -0.995797038, -0.879241526, -0.467489362, 0.0915842652, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.14644384, -0.125097632, 2.73538446, 0.995796978, 0.0808643177, -0.0429952592, -0.0915838853, 0.879242301, -0.467488229, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.946095645, -0.148839831, 2.6970315, 0.506085634, 0.269083351, -0.819433928, -0.723520875, -0.384692967, -0.573174596, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.3352232, -0.113162845, 2.6970315, -0.636667728, -0.338513881, -0.692865193, -0.611767888, -0.325273871, 0.721066356, -0.469462305, 0.882952511, -2.98023252e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.818190515, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.999535203, -0.0724413395, 2.73538446, 0.81943363, -0.506086528, 0.269083142, 0.573175132, 0.723521411, -0.384692013, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.26799583, -0.0485646501, 2.73538446, 0.692865968, 0.636668444, -0.33851251, -0.721066296, 0.611768484, -0.325273544, 1.47371566e-007, 0.469461083, 0.882953167),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.993753433, -0.0807064772, 2.7502389, -0.819433391, -0.506086528, -0.26908347, -0.573175192, 0.723521173, 0.384692401, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.14736688, -0.135140538, 2.7502389, -0.995796919, 0.0808638409, 0.0429953746, 0.091583617, 0.879242063, 0.467488676, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.27526903, -0.0555525683, 2.7502389, -0.692865491, 0.636668324, 0.338512987, 0.721065819, 0.611768544, 0.325273573, -3.00341753e-007, 0.46946162, -0.882952869),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.227273569, 0.181817874, 0.0909095332),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.663635075, 0.200000003, 0.336363614),CFrame = CFrame.new(-1.08532584, -0.016047962, 0.287914425, 0, 4.37113883e-008, -1, 0, 1, 4.37113883e-008, 1, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.499999732, 1),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.209091991, 0.336363405, 0.200000003),CFrame = CFrame.new(-1.08532584, -0.0160517767, 0.615186691, 0, 1, 8.74227766e-008, 0, -8.74227766e-008, 1, 1, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.463636398),})
handl = New("Part",Model,"Handle",{BrickColor = BrickColor.new("Brown"),Material = "Wood",RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551769733, -0.0111557906, -0.0166577883),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13355029, -0.396025956, -1.91519976, -0.999999046, -1.26419463e-005, 3.05184476e-005, 3.05193935e-005, -6.31804578e-005, 1, -1.26400901e-005, 0.999995172, 6.31803923e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("SpecialMesh",handl,"Mesh",{Scale = Vector3.new(0.15384616, 0.846153855, 0.230769232),MeshType = Enum.MeshType.Wedge,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Brown"),Material = "Wood",RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552345626, -0.01115302, -0.0165589377),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13355124, -0.126798034, -1.91520548, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.846153855, 0.15384616),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Brown"),Material = "Wood",RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552211925, -0.0110299084, -0.0132096764),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13352811, -0.049898006, -1.36136007, 6.0436425e-005, -2.85362257e-005, 0.999999046, -0.939704537, -0.341987312, 4.70332889e-005, 0.341984957, -0.939699769, -4.74837434e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.230769232, 0.615384638, 0.15384616),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Brown"),Material = "Wood",RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0550938472, -0.0106647797, -0.00331181753),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.1334914, -0.226868302, 0.300120473, 6.10318384e-005, -3.05199392e-005, 0.999999046, -1, 3.05180183e-005, 6.10327952e-005, -3.05196045e-005, -0.999995232, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.384615391, 0.692307711, 0.384615391),})
pluser = New("Part",Model,"Part",{BrickColor = BrickColor.new("Teal"),Reflectance = 0.20000000298023,Transparency = 0.35000002384186,Transparency = 0.35000002384186,RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551638119, -0.0106786005, -0.00366006792),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13349783, 0.0808041394, 0.22320959, 4.94765118e-010, 3.0518062e-005, -0.999999046, -1, 3.05152626e-005, 4.96584107e-010, 3.05150661e-005, 0.999995232, 3.05177746e-005),Anchored = true,CanCollide = false,Material = "Neon",BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0705882, 0.933333, 0.831373),})
Mesh = New("CylinderMesh",pluser,"Mesh",{Scale = Vector3.new(0.384615391, 0.692307711, 0.307692319),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551449172, -0.0106623266, -0.00322427321),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13350415, 0.01159418, 0.300129056, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.15384616, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Brown"),Material = "Wood",FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.1335094, -0.142248273, 0.300128102, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.692307711, 0.15384616, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.16046751, -0.277578235, 2.38923883, -0.0759268105, 0.0512141436, -0.995796502, -0.825547457, 0.556851149, 0.0915844142, 0.559201777, 0.829031587, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.40909946, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.1658504, -0.336107582, 2.48788691, 0.0237028357, 0.088464126, 0.99579668, 0.257721305, 0.961868763, -0.0915844664, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.16401505, -0.31615606, 2.43121576, -0.0401474051, 0.0823161677, -0.995796502, -0.436518759, 0.895021915, 0.0915844142, 0.898798764, 0.438361406, -2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.87415576, -0.251687765, 2.54661798, -6.25811163e-006, 0.573174, 0.819434285, 8.84286965e-006, -0.819434285, 0.573174, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-0.878078938, -0.246079251, 2.48788691, -0.148342699, -0.553645551, 0.819434106, 0.212076649, 0.791514635, 0.573174596, -0.965928495, 0.258809, -1.49011612e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.16647589, -0.342922628, 2.54661798, 9.32799935e-007, -0.0915848985, 0.995796561, 1.079306e-005, -0.995796561, -0.0915848985, 1, 1.08331387e-005, 5.96046448e-008),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.16551328, -0.332448453, 2.60113001, -0.0387059227, 0.0830030516, 0.9957968, -0.420851707, 0.902493536, -0.0915843397, -0.906303346, -0.422627836, 2.68220873e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = "Metal",FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.16279387, -0.302875072, 2.6493783, 0.0669810623, -0.0624598041, 0.995796442, 0.728287041, -0.679124177, -0.0915843695, 0.681990564, 0.731360972, 2.38418579e-007),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.318190336, 0.181817874, 0.218182191),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.209091991, 0.336363405, 0.200000003),CFrame = CFrame.new(-1.0825938, -0.0160517767, -0.0484502837, 0, 1, 8.74227766e-008, 0, -8.74227766e-008, 1, 1, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.502272725),})
Part = New("Part",Model,"Part",{RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0546151027, -0.0107533662, -0.00591981038),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.05657995, -0.411507577, -0.122936927, 6.10336683e-005, -0.999999046, -1.36606104e-009, -6.10364805e-005, -1.35332812e-009, -1, 0.999995232, 6.10341085e-005, -6.10352145e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.615384638, 0.384615391, 0.769230783),MeshId = "http://www.roblox.com/asset/?id=40883083",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551512018, -0.0107565541, -0.00578934979),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13350654, -0.0653478801, -0.122935019, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.15384616, 0.615384638, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-1.13349354, 0.233146623, -0.238262892, -3.05171307e-005, 3.05179383e-005, 0.999999046, 3.05180074e-005, 1, -3.05171452e-005, -0.999995232, 3.05170015e-005, -3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.884615362, 0.0230769236, 0.0230769236),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552120842, -0.0107879955, -0.00662142318),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13349307, 0.180812895, -0.276778966, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.307692319, 0.615384638),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-1.09506297, -0.434544653, -0.507555664, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.484615356, 0.0769230723, 0.323076904),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Black"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0549144708, -0.0108393859, -0.00814241543),FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-1.09502792, -0.188393578, -0.507540405, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.484615356, 0.0769230723, 0.323076904),})
bulb3 = New("Part",Model,"bulb3",{BrickColor = BrickColor.new("Bright yellow"),Material = "Neon",Reflectance = 0.34999999403954,Transparency = 0.10000002384186,Transparency = 0.10000002384186,RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0535687692, -0.0107742082, -0.00691192411),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.864260077, 0.0500475727, -0.31525296, -1.33604772e-009, 0.999999046, 6.10364368e-005, -6.10346542e-005, -6.10356801e-005, 1, 0.999995232, -1.32718014e-009, 6.103337e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",bulb3,"Mesh",{Scale = Vector3.new(0.230769232, 0.307692319, 0.230769232),MeshId = "http://www.roblox.com/asset/?id=1376459 ",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552171171, -0.0108565027, -0.0084861489),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13350415, 0.126980528, -0.584459007, 4.94765118e-010, 3.0518062e-005, -0.999999046, -1, 3.05152626e-005, 4.96584107e-010, 3.05150661e-005, 0.999995232, 3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.230769232, 1.07692313, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0548586659, -0.0108420812, -0.00823849533),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.09506273, -0.449923575, -0.507547081, 4.94765118e-010, 3.0518062e-005, -0.999999046, -1, 3.05152626e-005, 4.96584107e-010, 3.05150661e-005, 0.999995232, 3.05177746e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.461538464, 0.307692319),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0561071262, -0.0108842254, -0.00888076145),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.27968788, 0.165464923, -0.653685272, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.923076928, 0.0769230798, 0.0769230798),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Black"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0548882149, -0.0108406544, -0.00818763766),FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(-1.09506285, -0.311467797, -0.507549942, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.484615356, 0.0769230723, 0.323076904),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552257672, -0.0108440584, -0.00814354513),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13352025, 0.180812538, -0.530611694, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.307692319, 0.615384638),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0548997298, -0.0108401012, -0.00816787872),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.09504652, -0.257597804, -0.507546127, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.461538464, 0.384615391, 0.307692319),})
bulb2 = New("Part",Model,"bulb2",{BrickColor = BrickColor.new("Bright yellow"),Reflectance = 0.34999999403954,Material = "Neon",Transparency = 0.10000002384186,Transparency = 0.10000002384186,RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0535812303, -0.0108251739, -0.00829563197),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.864263475, 0.0500476919, -0.546000183, -1.33604772e-009, 0.999999046, 6.10364368e-005, -6.10346542e-005, -6.10356801e-005, 1, 0.999995232, -1.32718014e-009, 6.103337e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",bulb2,"Mesh",{Scale = Vector3.new(0.230769232, 0.307692319, 0.230769232),MeshId = "http://www.roblox.com/asset/?id=1376459 ",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551966429, -0.0108746802, -0.00898976624),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13354254, 0.0116242208, -0.66137284, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.923076928, 0.307692319, 0.384615391),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0543510988, -0.0108585712, -0.00889357924),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.987364054, 0.165433928, -0.653695762, 2.1465039e-006, -1.26401355e-005, 0.999999046, 3.05180256e-005, 1, 1.26399982e-005, -0.999995172, 3.051764e-005, 2.14701231e-006),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.923076928, 0.0769230798, 0.0769230798),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552398264, -0.010901819, -0.00971178617),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13351059, 0.180844843, -0.792145431, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.307692319, 0.615384638),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
blub1 = New("Part",Model,"blub1",{BrickColor = BrickColor.new("Bright yellow"),Material = "Neon",Reflectance = 0.34999999403954,Transparency = 0.10000002384186,Transparency = 0.10000002384186,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-0.864275396, 0.0500475727, -0.77676934, -1.33604772e-009, 0.999999046, 6.10364368e-005, -6.10346542e-005, -6.10356801e-005, 1, 0.999995232, -1.32718014e-009, 6.103337e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.960784, 0.803922, 0.188235),})
Mesh = New("SpecialMesh",blub1,"Mesh",{Scale = Vector3.new(0.230769232, 0.307692319, 0.230769232),MeshId = "http://www.roblox.com/asset/?id=1376459 ",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Dark stone grey"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.055176165, -0.0109272301, -0.0104300119),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13353062, -0.14221108, -0.892143965, -1.33604772e-009, 0.999999046, 6.10364368e-005, -6.10346542e-005, -6.10356801e-005, 1, 0.999995232, -1.32718014e-009, 6.103337e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.461538464, 0.230769232, 0.461538464),})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Sand red"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0552535057, -0.0109578799, -0.0112338504),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13351762, 0.18084532, -1.0459801, -0.999999046, 9.00399755e-010, 8.64702088e-010, 9.62245394e-010, 1, 6.10351999e-005, -1.00112629e-009, 6.1034767e-005, -0.999995232),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.584314, 0.47451, 0.466667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.307692319, 0.307692319, 0.615384638),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Brown"),RotVelocity = Vector3.new(8.93669203e-005, -0.006007032, 0.000220447837),Velocity = Vector3.new(-0.0551994294, -0.0110429907, -0.01357497),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-1.13354754, -0.165253967, -1.41521502, -0.999999046, -1.26419463e-005, 3.05184476e-005, 3.05193935e-005, -6.31804578e-005, 1, -1.26400901e-005, 0.999995172, 6.31803923e-005),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.486275, 0.360784, 0.27451),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.15384616, 0.15384616, 0.230769232),MeshType = Enum.MeshType.Wedge,})
Folder = New("Folder",Model,"Folder",{})
mainp = New("Part",Folder,"mainp",{BrickColor = BrickColor.new("Burnt Sienna"),Material = Enum.Material.Pebble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.29426193, 0.0242230818, 0.526954651, 3.57739327e-006, -0.997141063, -0.075552173, -1, 1.05649651e-005, -0.000186853285, 0.000187117839, 0.075552173, -0.997141063),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.415686, 0.223529, 0.0352941),})
Mesh = New("CylinderMesh",mainp,"Mesh",{Scale = Vector3.new(0.290913343, 0.649998844, 0.540909469),})
Part = New("Part",Folder,"Part",{BrickColor = BrickColor.new("Black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.218181789),CFrame = CFrame.new(-0.985307276, 0.0242230818, 0.503878593, -3.56560026e-009, -0.997106612, -0.0760023296, -1, 1.03987163e-009, 3.32719239e-008, -3.30966294e-008, 0.0760023296, -0.997106612),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.909096301, 0.218180105, 0.629999995),})
Part = New("Part",Folder,"Part",{BrickColor = BrickColor.new("Burnt Sienna"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.272727281, 0.200000003, 0.272727281),CFrame = CFrame.new(-1.24365246, 0.0242230818, 0.523571014, -3.07874792e-009, -0.997106612, 0.0760023296, 1, 1.03987163e-009, 5.41508598e-008, -5.40732614e-008, 0.0760023296, 0.997106612),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.415686, 0.223529, 0.0352941),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.0681818202, 0.636363626, 0.0681818202),VertexColor = Vector3.new(3.00000003e+015, 2.99999995e+031, 3.00000003e+015),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
m=Model
c = m:children()
for n = 1, #c do
	if (c[n].className == "Part") then
		if (c[n].Name ~= "Handle") then
			stick(c[n], m.Handle)
			c[n].CanCollide = false
			c[n].Anchored = false
		end
	end
end
m2=Folder
c = m2:children()
for n = 1, #c do
	if (c[n].className == "Part") then
		if (c[n].Name ~= "mainp") then
			stick(c[n], m2.mainp)
			c[n].CanCollide = false
			c[n].Anchored = false
		end
	end
end
handl.Anchored=false
mainp.Anchored=false
mainp.CanCollide=false
handl.CanCollide=false
mwl= Weld(handl,pchar.Torso,-.4,2,.65,rad(180),-rad(90),0,m)
m.Parent = pchar
slw=Weld(mainp,handl,-.25,2.5,.375,0,0,-pi/2,m)
a=false

function onKeyDown(key)
    key = key:lower()
    if deb==true then return end
    if key == "r" then
    	if a then
	    	deb=true
	    	so('131961146',handl,false,1,1,5)
	    	wait(.5)
	    	ammo=3
	    	Tween(slw,cf(-.25,1.9,.375)*ca(0,0,-pi/2),.1)
	    	Tween(lw,cf(-.75,.5,-.75)*ca(rad(90),0,rad(40)),.1)
	    	wait(.5)
	    	a=blub1:Clone()
	    	a.Parent=workspace
	    	a.CanCollide=true
	    	a:BreakJoints()
	    	a2=bulb2:Clone()
	    	a2.Parent=workspace
	    	a2.CanCollide=true
	    	a2:BreakJoints()
	    	a3=bulb3:Clone()
	    	a3.Parent=workspace
	    	a3.CanCollide=true
	    	a3:BreakJoints()
	    	blub1.Transparency=1
	    	bulb2.Transparency=1
	    	bulb3.Transparency=1
	    	game.Debris:AddItem(a,3)
	    	game.Debris:AddItem(a2,3)
	    	game.Debris:AddItem(a3,3)
	    	pluser.Material="SmoothPlastic"
	    	Tween(lw,cf(-1.5,.5,0)*ca(-rad(10),0,0,.2),.1)
	    	wait(.5)
	    	Tween(lw,cf(-1.5,.5,0)*ca(-rad(10),rad(10),rad(20),.2),.1)
	    	wait(.5)
	    	Tween(lw,cf(-.75,.5,-.75)*ca(rad(90),0,rad(40)),.1)
	    	wait(.5)
	    	blub1.Transparency=.1
	    	blub1.BrickColor=BrickColor.new('Bright yellow')
	    	bulb2.Transparency=.1
	    	bulb2.BrickColor=BrickColor.new('Bright yellow')
	    	bulb3.Transparency=.1
	    	bulb3.BrickColor=BrickColor.new('Bright yellow')
	    	Tween(slw,cf(-.25,2.5,.375)*ca(0,0,-pi/2),.1)
	    	Tween(lw,cf(-.75,.5,-1.25)*ca(rad(90),0,rad(40)),.1)
	    	wait(.5)
	    	Tween(slw,cf(-.25,1.9,.375)*ca(0,0,-pi/2),.2)
	    	Tween(lw,cf(-.75,.5,-.75)*ca(rad(90),0,rad(40)),.2)
	    	wait(.35)
	    	Tween(slw,cf(-.25,2.5,.375)*ca(0,0,-pi/2),.1)
	    	Tween(lw,cf(-.75,.5,-1.25)*ca(rad(90),0,rad(40)),.1)
	    	wait(1)
	    	pluser.Material="Neon"
	    	deb=false
    	end
    elseif key == "q" then a=not a
        if a then
        	deb=true
        	ani(true)
        	Tween(rw,cf(.5,.5,0)*ca(rad(100),0,-rad(60)),.1)
        	wait(.5)
        	mwl.Part1=pchar['Right Arm']
        	Tween(mwl,cf(-.5,-0.25,-.2)*ca(rad(180),0,-rad(20)),.2)
        	Tween(rw,cf(1.5,.5,.5)*ca(rad(90),0,-rad(20)),.1)
        	Tween(lw,cf(-.75,.5,-1.25)*ca(rad(90),0,rad(40)),.1)
        	wait(.5)
        	deb=false
        else
        	deb=true
        	Tween(rw,cf(.5,.5,0)*ca(rad(100),0,-rad(60)),.1)
        	Tween(lw,cf(-1.5,0.5,0),.1)
        	Tween(mwl,cf(-.4,2,.65)*ca(rad(180),-rad(90),0),.1)
        	wait(.25)
        	mwl.Part1=torso
        	wait(.25)
        	Tween(rw,cf(1.5,.5,0),.1)
        	wait(.5)
        	ani(false)
        	deb=false
        end
    end
end

function spread(p1,last)
	for i,v in pairs(workspace:children()) do
	    if v:IsA("Model") and v:findFirstChild("Humanoid") then
	        if v:findFirstChild("Head") and v:findFirstChild("Torso") and v.Humanoid.Health > 0 then
	            if (v:findFirstChild("Torso").Position - p1).magnitude < 20 and v.Name ~= pchar.Name then
	            	if last==nil then else
		            	for i=1,5 do
							local goto=v.Torso.Position+Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	        				Lightning(last,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Electric blue',.1)
	       					wait()
	    				end
	    			end
	    			so('157325701',handl,false,1.25,.1,1)
	            	v:BreakJoints()
	                spread(v.Torso.Position,v.Torso.Position)
	            end
	        end
	    end
    end
end

ammo=3
mouse.Button1Down:connect(function()
	if deb==true or ammo==0 then return end
	if a then
		if ammo==3 then blub1.Transparency=.5 blub1.BrickColor=BrickColor.new('White') end
		if ammo==2 then bulb2.Transparency=.5 bulb2.BrickColor=BrickColor.new('White') end
		if ammo==1 then bulb3.Transparency=.5 bulb3.BrickColor=BrickColor.new('White') end
		deb=true
		ammo=ammo-1
		so('131166206',handl,false,1,1,1)
		Tween(rw,cf(1.5,.5,.5)*ca(rad(120),0,-rad(20)),.3)
	    Tween(lw,cf(-.75,.5,-1.25)*ca(rad(120),0,rad(40)),.3)
	    Spawn(function() wait(.2)
	    	Tween(rw,cf(1.5,.5,.5)*ca(rad(90),0,-rad(20)),.1)
	       	Tween(lw,cf(-.75,.5,-1.25)*ca(rad(90),0,rad(40)),.1)
	    end)
		for i=1,5 do 
			local goto=mouse.Hit.p+Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	        Lightning(Tip.Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Electric blue',.1)
	       	wait()
	    end
	    spread(mouse.Hit.p,mouse.Hit.p)
	    deb=false
	end
end)

mouse.KeyDown:connect(onKeyDown)