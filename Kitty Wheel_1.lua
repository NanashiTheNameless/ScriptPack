Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",

wait(0.016666666666667)
local Player = game.Players.localPlayer
local Character = Player.Character
local red = 255
local green = 255
local blue = 255
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
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
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local lim = 0
local st = 0
local necko = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local attacktype = 1
local ZTarget, RocketTarget = nil, nil
local euler = CFrame.fromEulerAnglesXYZ

function clerp(a, b, t)
	return a:lerp(b, t)
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local v = game.Players.localPlayer
local torso = v.Character.Torso
local check = v.Character:FindFirstChild("kit")
wait(1)
local p = Instance.new("Part", v.Character)
p.Name = "kit"
p.Anchored = true
p.Transparency = 0
p.Material = "Plastic"
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(0.4, 0.4, 0.4)
p.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local msh = Instance.new("SpecialMesh", p)
msh.Scale = Vector3.new(-2, 2, 2)
msh.MeshId = "http://www.roblox.com/asset/?id=188635159"
msh.TextureId = "http://www.roblox.com/asset/?id=188539332"
msh.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn = Instance.new("Part", v.Character.kit)
pn.Name = "tail"
pn.Anchored = true
pn.Transparency = 0
pn.Material = "Plastic"
pn.CanCollide = false
pn.TopSurface = 0
pn.BottomSurface = 0
pn.Size = Vector3.new(5, 3, 3)
pn.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn = Instance.new("SpecialMesh", pn)
mshn.Scale = Vector3.new(2, 2, 2)
mshn.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn3 = Instance.new("Part", v.Character.kit)
pn3.Name = "tail"
pn3.Anchored = true
pn3.Transparency = 0
pn3.Material = "Plastic"
pn3.CanCollide = false
pn3.TopSurface = 0
pn3.BottomSurface = 0
pn3.Size = Vector3.new(0.2, 0.2, 0.2)
pn3.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn3 = Instance.new("SpecialMesh", pn3)
mshn3.Scale = Vector3.new(2, 2, 2)
mshn3.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn3.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn3.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn4 = Instance.new("Part", v.Character.kit)
pn4.Name = "tail"
pn4.Anchored = true
pn4.Transparency = 0
pn4.Material = "Plastic"
pn4.CanCollide = false
pn4.TopSurface = 0
pn4.BottomSurface = 0
pn4.Size = Vector3.new(0.2, 0.2, 0.2)
pn4.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn4 = Instance.new("SpecialMesh", pn4)
mshn4.Scale = Vector3.new(-2, 2, 2)
mshn4.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn4.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn4.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn5 = Instance.new("Part", v.Character.kit)
pn5.Name = "tail"
pn5.Anchored = true
pn5.Transparency = 0
pn5.Material = "Plastic"
pn5.CanCollide = false
pn5.TopSurface = 0
pn5.BottomSurface = 0
pn5.Size = Vector3.new(0.2, 0.2, 0.2)
pn5.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn5 = Instance.new("SpecialMesh", pn5)
mshn5.Scale = Vector3.new(2, 2, 2)
mshn5.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn5.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn5.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn6 = Instance.new("Part", v.Character.kit)
pn6.Name = "tail"
pn6.Anchored = true
pn6.Transparency = 0
pn6.Material = "Plastic"
pn6.CanCollide = false
pn6.TopSurface = 0
pn6.BottomSurface = 0
pn6.Size = Vector3.new(0.2, 0.2, 0.2)
pn6.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn6 = Instance.new("SpecialMesh", pn6)
mshn6.Scale = Vector3.new(2, 2, 2)
mshn6.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn6.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn6.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn7 = Instance.new("Part", v.Character.kit)
pn7.Name = "tail"
pn7.Anchored = true
pn7.Transparency = 0
pn7.Material = "Plastic"
pn7.CanCollide = false
pn7.TopSurface = 0
pn7.BottomSurface = 0
pn7.Size = Vector3.new(0.2, 0.2, 0.2)
pn7.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn7 = Instance.new("SpecialMesh", pn7)
mshn7.Scale = Vector3.new(2, 2, 2)
mshn7.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn7.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn7.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn8 = Instance.new("Part", v.Character.kit)
pn8.Name = "tail"
pn8.Anchored = true
pn8.Transparency = 0
pn8.Material = "Plastic"
pn8.CanCollide = false
pn8.TopSurface = 0
pn8.BottomSurface = 0
pn8.Size = Vector3.new(0.2, 0.2, 0.2)
pn8.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn8 = Instance.new("SpecialMesh", pn8)
mshn8.Scale = Vector3.new(-2, 2, 2)
mshn8.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn8.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn8.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn9 = Instance.new("Part", v.Character.kit)
pn9.Name = "tail"
pn9.Anchored = true
pn9.Transparency = 0
pn9.Material = "Plastic"
pn9.CanCollide = false
pn9.TopSurface = 0
pn9.BottomSurface = 0
pn9.Size = Vector3.new(0.2, 0.2, 0.2)
pn9.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn9 = Instance.new("SpecialMesh", pn9)
mshn9.Scale = Vector3.new(-2, 2, 2)
mshn9.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn9.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn9.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn0 = Instance.new("Part", v.Character.kit)
pn0.Name = "ears"
pn0.Anchored = true
pn0.Transparency = 0
pn0.Material = "Plastic"
pn0.CanCollide = false
pn0.TopSurface = 0
pn0.BottomSurface = 0
pn0.Size = Vector3.new(0.2, 0.2, 0.2)
pn0.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn0 = Instance.new("SpecialMesh", pn0)
mshn0.Scale = Vector3.new(0.5, 0.5, 0.5)
mshn0.MeshId = "http://www.roblox.com/asset/?id=361948302"
mshn0.TextureId = "http://www.roblox.com/asset/?id=50657528"
mshn0.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
p.Anchored = false
local motor1 = Instance.new("Weld", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor1.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn.Anchored = false
local motor2 = Instance.new("Weld", pn)
motor2.Part0 = pn
motor2.Part1 = torso
motor2.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor2.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn3.Anchored = false
local motor3 = Instance.new("Weld", pn3)
motor3.Part0 = pn3
motor3.Part1 = torso
motor3.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor3.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn4.Anchored = false
local motor4 = Instance.new("Weld", pn4)
motor4.Part0 = pn4
motor4.Part1 = torso
motor4.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor4.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn5.Anchored = false
local motor5 = Instance.new("Weld", pn5)
motor5.Part0 = pn5
motor5.Part1 = torso
motor5.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor5.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn6.Anchored = false
local motor6 = Instance.new("Weld", pn6)
motor6.Part0 = pn6
motor6.Part1 = torso
motor6.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor6.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn7.Anchored = false
local motor7 = Instance.new("Weld", pn7)
motor7.Part0 = pn7
motor7.Part1 = torso
motor7.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor7.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn8.Anchored = false
local motor8 = Instance.new("Weld", pn8)
motor8.Part0 = pn8
motor8.Part1 = torso
motor8.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor8.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn9.Anchored = false
local motor9 = Instance.new("Weld", pn9)
motor9.Part0 = pn9
motor9.Part1 = torso
motor9.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor9.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn0.Anchored = false
local motor0 = Instance.new("Weld", pn0)
motor0.Part0 = pn0
motor0.Part1 = v.Character.Head
motor0.C0 = CFrame.new(0, -0.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))


--[[Fixed Celestial Wheel]]--
wait(1/60)
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
mouse = Player:GetMouse()
RSH, LSH = nil, nil 
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 
 
RSH.Parent = nil 
LSH.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}
----------------------------------------------------
cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
                local p = ins(typ or "Part")
                p.FormFactor = "Custom"
                p.Material = mat
                p.Transparency = tra
                p.CanCollide = canc
                p.Anchored = anc
                p.BrickColor = bc(col)
                p.Size = siz
                p.CFrame = cfr
                p.Parent = prnt
                p.Locked = true
                p.TopSurface,p.BottomSurface = 0,0
                p:BreakJoints()
                return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
                local m = ins(typ or "SpecialMesh")
                if mtyp then m.MeshType = mtyp end
                if mid then m.MeshId = mid end
                if mtx then m.TextureId = mtx end
                if scal then m.Scale = scal end
                m.Parent = prnt
                return m
end
function cylinderOpen(cf,col,col2)
        local p = part(Character,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(Character,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                        for i=.1,1.1,.0125 do
                                        p.Transparency = i
                                        p2.Transparency = i
                                        pm.Scale = pm.Scale + v3(.8,0,.8)
                                        p2m.Scale = p2m.Scale + v3(.5,0,.5)
                                        wait()
                        end
                        p:Destroy()
                        p2:Destroy()
        end)
end

function expandDong()
        local nTarg = Torso
        local Orbi = Instance.new('Part')
        Orbi.Size = Vector3.new(3,3,3)
        Orbi.CanCollide = false
        Orbi.Locked = true
        Orbi.Shape = 'Ball'
        Orbi.Anchored = true
        Orbi.Transparency = .6
        Orbi.TopSurface,Orbi.BottomSurface = 0,0
        Orbi.Name = 'Expand Dong'
        Orbi.BrickColor = BrickColor.new('Really red')
        
        local OrbiMesh = Instance.new('SpecialMesh',Orbi)
        OrbiMesh.Name = 'Dxpand Eong'
        OrbiMesh.Scale = Vector3.new(2, 2, 2)
        OrbiMesh.MeshType = 'Sphere'
        Orbi.Parent = Character
        ypcall(function()
                for i = 3,.35,-1 do 
                        OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(.7, .7, .7)
                        Orbi.CFrame = nTarg.CFrame
                end
                for i = .6,1,.05 do
                wait(0.04)
                        Orbi.Transparency = i
                end
                Orbi:Destroy()
        end)
end


function expandDong2()
        local nTarg = Torso
        local Orbi = Instance.new('Part')
        Orbi.Size = Vector3.new(3,3,3)
        Orbi.CanCollide = false
        Orbi.Locked = true
        Orbi.Shape = 'Ball'
        Orbi.Anchored = true
        Orbi.Transparency = .6
        Orbi.TopSurface,Orbi.BottomSurface = 0,0
        Orbi.Name = 'Expand Dong'
        Orbi.BrickColor = BrickColor.new('Really black')
        
        local OrbiMesh = Instance.new('SpecialMesh',Orbi)
        OrbiMesh.Name = 'Dxpand Eong'
        OrbiMesh.Scale = Vector3.new(2.5, 2.5, 2.5)
        OrbiMesh.MeshType = 'Sphere'
        Orbi.Parent = Character
        ypcall(function()
                for i = 3,0,-1 do 
                        OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(.7, .7, .7)
                        Orbi.CFrame = nTarg.CFrame
                end
                for i = .6,1,.05 do
                wait(0.04)
                        Orbi.Transparency = i
                end
                Orbi:Destroy()
        end)
end
cylinderOpen(Torso.CFrame,"Really red","Really black")
expandDong2()
expandDong()

local co1 = 0--how long it will take for skill to cooldown
local co2 = 0
local co3 = 0
local co4 = 3

local cooldown1 = 16
local cooldown2 = 12
local cooldown3 = 9
local cooldown4 = 15

local maxEnergy = 100
local Energy = 100--Energy you start out with
local skill1stam = 17--how much Energy is needed for a skill
local skill2stam = 15
local skill3stam = 20
local skill4stam = 70
local recovermana = 3--how much mana per second

local skillcolorscheme = BrickColor.new("Really red").Color

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.TextColor3 = Color3.new(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end
framesk1 = makeframe(scrn, .5, UDim2.new(.23, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, UDim2.new(.5, 0, .93, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, UDim2.new(.5, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, UDim2.new(.23, 0, .86, 0), UDim2.new(.26, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[R] Energy Wave')
text2 = makelabel(framesk2, '[F] Energy Cannon')
text3 = makelabel(framesk3, "[E] Energy Rapid-Fire")
text4 = makelabel(framesk4, '[Q] Energy Shots')
Energybar = makeframe(scrn, .5, UDim2.new(.23, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Institutional white").Color)
Energycover = makeframe(Energybar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Really red").Color)
Energytext = makelabel(Energybar, 'Energy')
healthbar = makeframe(scrn, .5, UDim2.new(.5, 0, .82, 0), UDim2.new(.26, 0, .03, 0), BrickColor.new("Institutional white").Color)
healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Really red").Color)
healthtext = makelabel(healthbar, 'Health')

local stats=Instance.new('Folder',Character)
stats.Name='Stats'
local block=Instance.new('BoolValue',stats)
block.Name='Block'
block.Value=false
local stun=Instance.new('BoolValue',stats)
stun.Name='Stun'
stun.Value=false
local defense=Instance.new('NumberValue',stats)
defense.Name='Defence'
defense.Value=1
local speed=Instance.new('NumberValue',stats)
speed.Name='Speed'
speed.Value=1
local damagea=Instance.new('NumberValue',stats)
damagea.Name='Damage'
damagea.Value=1

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Dark stone grey")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
		
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = Sounds[id].Id or id
		swait() 
		sou:play() 
		swait(6) 
		sou:Remove() 
	end))
end
 
function clerp(a, b, t)
	return a:lerp(b, t)
end

--[[Credits to SazErenos for his Artificial ]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
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

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Asset = "http://www.roblox.com/asset/?id="

Sounds = {
	Hit1 = {
		Id = Asset..(199149137)
	},
	Hit2 = {
		Id = Asset..(199149186)
	},
	Hit3 = {
		Id = Asset..(199149221)
	},
	Hit4 = {
		Id = Asset..(199149235)
	},
	Slash1 = {
		Id = Asset..(161006195)
	},
	Slash2 = {
		Id = Asset..(161006212)
	},
	Fire = {
		Id = Asset..(168413145)
	},
	Beam = {
		Id = Asset..(278596476)
	},
	Appear = {
		Id = Asset..(200633077)
	},
	Disappear = {
		Id = Asset..(200633029)
	},
}
 
ContentProvider = game:GetService("ContentProvider")
for _, v in pairs(Sounds) do
	ContentProvider:Preload(v.Id)
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
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
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
--                h:TakeDamage(Damage)
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
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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

Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Handle", Vector3.new(2.20000005, 0.200000003, 2.20000005))
Handleweld = weld(m, Character["Torso"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0396080017, -4.09992504, 0.0598115921, 1, -7.6153174e-011, -2.01268858e-006, 8.22890089e-011, 1, 3.084431e-006, 2.01269063e-006, -3.084431e-006, 1))
mesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.660000086, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(2.44000006, 0.600000003, 1.44000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.14984131e-005, 1.62124634e-005, -1.04904175e-005, 1, 1.23146328e-011, 1.07286201e-006, -1.13079598e-011, 1, -1.07284109e-006, -1.07285791e-006, 1.07284109e-006, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Layer2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Layer2Handle", Vector3.new(0.480000019, 0.200000003, 12.480001062))
Layer2Handleweld = weld(m, Handle, Layer2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000301361084, 2.28881836e-005, -0.000202178955, 1, 2.70082467e-007, -1.75730406e-006, -2.70091959e-007, 1, -8.66388018e-006, 1.7573052e-006, 8.66388655e-006, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.480000019, 2.200000003, 2.720000625))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.14984131e-005, -9.53674316e-007, -2.8800478, 0.999997914, -1.93837602e-011, -1.48245363e-008, 3.90257063e-011, 1, -7.13953341e-011, 1.48336312e-008, 8.91304808e-011, 0.999997914))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.480000019, 2.200000003, 2.720000625))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.19616699e-005, -3.24249268e-005, 2.87992668, 0.999985158, 2.87014509e-012, -1.48093022e-008, 5.66184322e-011, 1, -5.45696821e-012, 1.48470463e-008, 8.04902811e-011, 0.999985158))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.480000019, 0.200000003, 12.04000092))
Partweld = weld(m, Layer2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-005, -9.53674316e-007, -0.0001039505, 0.999987781, -7.77617137e-011, -1.49125299e-008, 1.16872789e-010, 1, -1.96905603e-010, 1.493936e-008, 2.51930032e-010, 0.999987781))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
mesh("BlockMesh", Layer2Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Layer3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Really red", "Layer3Handle", Vector3.new(0.720000029, 0.720000029, 0.200000003))
Layer3Handleweld = weld(m, Handle, Layer3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000802993774, -0.000151634216, 3.05175781e-005, 0.999999404, 4.16033836e-005, 1.96785777e-006, 1.96798396e-006, -2.12107511e-006, -0.999999404, -4.16014955e-005, 1, -2.12118243e-006))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.840223312, 7.5397892, 4.89614176e-005, 5.0135186e-006, 0.999999762, -0.999999046, 1.22189522e-005, 4.8959475e-005, -1.22783813e-005, -0.999998689, 5.01443719e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000864028931, -6.00814819e-005, -7.59964466, -0.999999404, 9.70068322e-006, 3.31623378e-005, 3.31642768e-005, 4.86649742e-006, 1, 9.70056226e-006, 0.999999404, -4.86679755e-006))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.76565552e-005, -0.840137482, 7.54048443, -3.42451713e-005, -5.10578684e-006, -0.99999994, -0.999998927, -1.21146441e-005, 3.4243305e-005, -1.2144611e-005, 0.999998927, -5.10543578e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000713348389, -0.76565552e-005, -7.6005826, -0.999993503, -9.68569748e-006, 5.00400529e-005, -5.00420938e-005, -4.89724516e-006, -0.999999881, 9.62627109e-006, -0.999993503, 4.89690592e-006))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, -0.838525772, 7.54048347, 3.57801182e-005, 5.10578639e-006, 0.99999994, 0.999999046, 1.0341405e-005, -3.57782446e-005, -1.03266702e-005, 0.999998927, -5.10551126e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-006, -0.84022522, 7.53960228, -3.45465851e-005, -1.12046393e-006, -1, 5.82638359e-006, -0.999999225, 1.12023974e-006, -0.999999225, -5.82638404e-006, 3.45446933e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295e-006, -0.839550018, 7.53951263, 3.41143859e-005, 1.04596313e-006, 1, -6.24368704e-006, 0.999999225, -1.04572723e-006, -0.999999225, -6.24369022e-006, 3.41124942e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000238418579, -9.53674316e-006, -7.59959984, 6.28840098e-006, -0.999999225, 1.09042128e-006, -3.40994848e-005, -1.09065854e-006, -1, 0.999999225, 6.2884028e-006, -3.4097593e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.19999998807907, "Really red", "Part", Vector3.new(0.480000019, 0.480000019, 0.200000003))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 3.81469727e-006, 0.999998808, 7.0078163e-011, 1.9098958e-009, 4.0078163e-011, 0.999998808, 2.42152964e-011, 1.9098958e-009, 2.42152964e-011, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(6.58200026, 6.58200002, 2.9532001))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.00543213e-005, -0.838380814, 7.53930187, -4.74264707e-005, -5.02687499e-006, -0.999999762, 0.999999046, -1.03116026e-005, -4.74245317e-005, -1.0311428e-005, -0.999998808, 5.02768307e-006))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Institutional white", "Part", Vector3.new(0.480000019, 7.480000019, 0.200000003))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.999998808, 7.0078163e-011, 5.9098958e-009, 4.0078163e-011, 0.999998808, 2.42152964e-011, 1.9098958e-009, 2.42152964e-011, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(6.60000014, 6.60000014, 6.60000014))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.839694977, 7.53992653, -3.91442991e-005, -8.80631774e-007, -0.999993026, 2.27987925e-006, 0.999991357, -8.80696462e-007, 0.999997556, -2.29477519e-006, -3.92767397e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.20000005, 0.200000003, 0.720000327))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000235557556, -2.38418579e-005, -7.60028458, 1.50501114e-006, -0.999997199, 8.35720812e-007, 3.47488422e-005, 8.35786693e-007, 1, -0.999997199, -1.50502308e-006, 3.47468304e-005))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.600000024, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.480000019, 0.840000391))
Partweld = weld(m, Layer3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-005, -0.840080261, 7.54010582, 3.91591857e-005, 8.0613512e-007, 0.999993026, -2.25008012e-006, -0.999991, 8.06197477e-007, 0.999997556, -2.29477519e-006, -3.92916445e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
HitboxA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxA", Vector3.new(0.200000003, 2.48000002, 0.840000391))
HitboxAweld = weld(m, Layer3Handle, HitboxA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.67572021e-006, -0.039557457, 7.53951645, 3.44422551e-005, 1.04596529e-006, 1, -5.90090622e-006, 0.999999225, -1.04573905e-006, -0.999999225, -5.90090895e-006, 3.44403634e-005))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxB", Vector3.new(0.200000003, 2.48000026, 0.840000391))
HitboxBweld = weld(m, Layer3Handle, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.0402240753, 7.5397892, 4.89614176e-005, 5.0135186e-006, 0.999999762, -0.999999046, 1.22189522e-005, 4.8959475e-005, -1.22783813e-005, -0.999998689, 5.01443719e-006))
HitboxC = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxC", Vector3.new(0.200000003, 2.28000021, 0.840000391))
HitboxCweld = weld(m, Layer3Handle, HitboxC, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.76565552e-005, 0.0598621368, 7.54048443, -3.42451713e-005, -5.10578684e-006, -0.99999994, -0.999998927, -1.21146441e-005, 3.4243305e-005, -1.2144611e-005, 0.999998927, -5.10543578e-006))
mesh("SpecialMesh", HitboxC, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
HitboxD = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxD", Vector3.new(0.200000003, 2.28000021, 0.840000391))
HitboxDweld = weld(m, Layer3Handle, HitboxD, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28881836e-005, 0.0599050522, 7.54010582, 3.91591857e-005, 8.0613512e-007, 0.999993026, -2.25008012e-006, -0.999991, 8.06197477e-007, 0.999997556, -2.29477519e-006, -3.92916445e-005))
mesh("SpecialMesh", HitboxD, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 1, 1))
mesh("SpecialMesh", Layer3Handle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(6, 6, -1.21799994))

local Lite = Create("PointLight"){
	Parent = Handle,
	Color = BrickColor.new("Really red").Color,
	Shadows = true,
	Range = 20,
	Brightness = 0.5,
}

local Spin = Create("Sound"){
Parent = Handle,
SoundId = "rbxassetid://143301643",
Volume = 1,
Pitch = 1,
Looped = true,
}

local Spin2 = Create("Sound"){
Parent = Handle,
SoundId = "rbxassetid://149560784",
Volume = .7,
Pitch = .8,
Looped = true,
}

Spin:Play()

Spin2:Play()

local PE1 = Create("ParticleEmitter"){
Parent = Layer3Handle,
Color = ColorSequence.new(BrickColor.new("Really red").Color),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new(0.2),
Texture = "rbxassetid://320043786",
Lifetime = NumberRange.new(1),
Rate = 200,
VelocitySpread = 180,
Rotation = NumberRange.new(-360, 360),
RotSpeed = NumberRange.new(-180, 180),
Rotation = NumberRange.new(100),
Speed = NumberRange.new(10),
LightEmission = 1000,
Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)}),
}

local PE2 = Create("ParticleEmitter"){
Parent = Handle,
Color = ColorSequence.new(BrickColor.new("Really red").Color),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 2, 0)}),
Texture = "rbxassetid://31727915",
Lifetime = NumberRange.new(1),
Rate = 1000,
VelocitySpread = 30,
Rotation = NumberRange.new(-360, 360),
RotSpeed = NumberRange.new(-180, 180),
Rotation = NumberRange.new(100),
Speed = NumberRange.new(10),
LightEmission = 1000,
EmissionDirection = "Bottom",
Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0), NumberSequenceKeypoint.new(0.8, 0), NumberSequenceKeypoint.new(1, 1)}),
Enabled = false,
}


breakpart=function(part)

away1 = part.Size.x/4

away2 = part.Size.z/4

away3 = part.Size.y/4

if part.Size.x<=4 and part.Size.z<=4 and part.Size.y<=4 then 
part:Destroy(); return 
end

if part.Name~="Base" or part.Name~="Baseplate" then
zx,zy,zz=part.Size.x,part.Size.y,part.Size.z
local part1,part2,part3,part4,part5,part6,part7,part8 = part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone()
part1.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part2.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part3.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part4.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part5.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part6.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part7.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
part8.Size = Vector3.new(part.Size.x/2,part.Size.y,part.Size.z/2)
pare1=part.Parent
--pare2=part.Parent.Parent
part1.Parent=pare1
part2.Parent=pare1
part3.Parent=pare1
part4.Parent=pare1
--part5.Parent=pare1
--part6.Parent=pare1
--part7.Parent=pare1
--part8.Parent=pare1
part1.CFrame=part.CFrame*CFrame.new(-away1,0,-away2)
part2.CFrame=part.CFrame*CFrame.new(away1,0,-away2)
part3.CFrame=part.CFrame*CFrame.new(away1,0,away2)
part4.CFrame=part.CFrame*CFrame.new(-away1,0,away2)
--part5.CFrame=part.CFrame*CFrame.new(-away1,-away3,-away2)
--part6.CFrame=part.CFrame*CFrame.new(away1,-away3,-away2)
--part7.CFrame=part.CFrame*CFrame.new(away1,-away3,away2)
--part8.CFrame=part.CFrame*CFrame.new(-away1,-away3,away2)
part.Anchored = false
part:Destroy()
else
zx,zy,zz=part.Size.x,part.Size.y,part.Size.z
local part1,part2,part3,part4,part5,part6,part7,part8 = part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone(),part:Clone()
part1.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part2.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part3.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part4.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part5.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part6.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part7.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
part8.Size = Vector3.new(part.Size.x/2,part.Size.y/2,part.Size.z/2)
pare1=part.Parent
--pare2=part.Parent.Parent
part1.Parent=pare1
part2.Parent=pare1
part3.Parent=pare1
part4.Parent=pare1
part5.Parent=pare1
part6.Parent=pare1
part7.Parent=pare1
part8.Parent=pare1
part1.CFrame=part.CFrame*CFrame.new(-away1,away3,-away2)
part2.CFrame=part.CFrame*CFrame.new(away1,away3,-away2)
part3.CFrame=part.CFrame*CFrame.new(away1,away3,away2)
part4.CFrame=part.CFrame*CFrame.new(-away1,away3,away2)
part5.CFrame=part.CFrame*CFrame.new(-away1,-away3,-away2)
part6.CFrame=part.CFrame*CFrame.new(away1,-away3,-away2)
part7.CFrame=part.CFrame*CFrame.new(away1,-away3,away2)
part8.CFrame=part.CFrame*CFrame.new(-away1,-away3,away2)
part1.Anchored = false
part2.Anchored = false
part3.Anchored = false
part4.Anchored = false
part5.Anchored = false
part6.Anchored = false
part7.Anchored = false
part8.Anchored = false
part:Destroy()
wait(5)
for i = 1,3 do
 wait(.2)
 part1.Transparency = i
 part2.Transparency = i
 part3.Transparency = i
 part5.Transparency = i
 part6.Transparency = i
 part7.Transparency = i
 part8.Transparency = i
end
end
end

function Reappear()
	for _, i in pairs(m:children()) do
		if i.Name == "Layer3Handle" then
			Part.Transparency = 1
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 0.5
			end), i)
		end
	end
end

function Disappear()
	for _, i in pairs(m:children()) do
		if i.Name == "Layer3Handle" then
			Part.Transparency = .5
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 1
			end), i)
		end
	end
end

function attackone()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
		breakpart(hit)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
		breakpart(hit)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
		breakpart(hit)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
		breakpart(hit)
	end) 
	
--[[HitboxA.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxB.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxC.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxD.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)]]

      
	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(120), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(5, -4, -7) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash1", Handle, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-50)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-2, -4, -8) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end


function attacktwo()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
		breakpart(hit)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
		breakpart(hit)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
		breakpart(hit)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
		breakpart(hit)
	end)
	
--[[HitboxA.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxB.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxC.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxD.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)]]

	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -.5) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-85), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash2", Handle, 1, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-85), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, .5, -8) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end

function attackthree()
	attack = true
	local con1 = HitboxA.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit1", 1)
		breakpart(hit)
	end) 
	local con2 = HitboxB.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit2", 1)
		breakpart(hit)
	end) 
	local con3 = HitboxC.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit3", 1)
		breakpart(hit)
	end) 
	local con4 = HitboxD.Touched:connect(function(hit)
		Damagefunc(HitboxA, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, "Hit4", 1)
		breakpart(hit)
	end) 
	
--[[HitboxA.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxB.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxC.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)
HitboxD.Touched:connect(function(hit)
 if hit.Name == 'Base' then else
  for i = 1,100 do 
  breakpart(hit)
  end
 end
end)]]

      
	Reappear()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.8, -.5) * angles(math.rad(120), math.rad(0), math.rad(-30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-140), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-10, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	so("Slash1", Handle, 1, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(50)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.3, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(140), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		LH.C0 = clerp(LH.C0, cf(-1, -1, .2) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .5)
		Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -5, -10) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
		Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
		Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
	end
	Disappear()
	con1:disconnect()
	con2:disconnect()
	con3:disconnect() 
	con4:disconnect()
	attack = false
end

local hovering = false

local Hover = false

local Animator = Humanoid.Animator

function OnHover()
	so("Appear",Handle,1,1)
	attack = true
	Animator.Parent = nil
	Character.Animate.Disabled = true
	Hover = true
	Humanoid.JumpPower = 0
	Reappear()
	attack = false
end

function OffHover()
	so("Disappear",Handle,1,1)
	attack = true
	Animator.Parent = Humanoid
	Character.Animate.Disabled = false
	Hover = false
	Humanoid.JumpPower = 50
	Disappear()
	attack = false
end

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,"Hit1",1)
end
end
end
end
end

function CylinderEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
end

RocketTarget = RootPart
function ShootCannon(asd)
local MainPos=asd.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
CylinderEffect(BrickColor.new("Really red"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Really red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,5,30,50,1,"Normal")
game:GetService("Debris"):AddItem(ref,5) 
end
until num<=0
end))
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, 0.05 do
			wait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function BlockEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function FireProjectiles()
attack = true
so("Appear",Handle,1,1)
Reappear()
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-30), math.rad(0), math.rad(0)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Humanoid.WalkSpeed = 0
for i = 1,8 do
ShootCannon(Handle)
BlockEffect(BrickColor.new("Really red"),Handle.CFrame,.5,.5,.5,.9,.9,.9,0.05)
so("Beam",Handle,1,1.5)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(30)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(-30)), 0.5)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,1)
Humanoid.WalkSpeed = 16
attack = false
end

function EnergyBurst()
attack = true
so("Appear",Handle,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(130), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(10, -4, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Reappear()
so("Slash1", Handle, 1, 1.2)
for i = 1,2 do
for i = 0,1,0.1 do
swait()
BlockEffect(BrickColor.new("Really red"),Handle.CFrame,.5,.5,.5,.9,.9,.9,0.05)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-50)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-130), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(15, -4, -7) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,1)
so("Fire", Handle, 1, 1.2)
so("Fire", Handle, 1, .8)
MagniDamage(Handle,Handle,30,30,50,1,"Knockdown")
BlastEffect(BrickColor.new("Really red"), Handle.CFrame, .1, .1, .1, 1, 1, 1)
for i = 1,5 do
BlockEffect(BrickColor.new("Really red"),Handle.CFrame,1,1,1,5,5,5,0.05)
end
attack = false
end

function WaveEffect(Part,cframe1,cframe2,Damage,Size)
coroutine.resume(coroutine.create(function() 
local wave=part(1,workspace,"Neon",0,0,BrickColor.new("Really red"),"Effect",vt(3,3,10))
wave.Anchored=true 
wave.CFrame=Part.CFrame*cframe1
so("Beam",wave,1,1.3)
MagniDamage(wave,wave,10,10,30,1,"Normal")
local Msh = Create("SpecialMesh"){
Parent = wave,
MeshType = "Sphere"
}
BlockEffect(BrickColor.new("Really red"),wave.CFrame,1,1,1,3,3,3,0.05)
local PE1 = Create("ParticleEmitter"){
Parent = wave,
Color = ColorSequence.new(BrickColor.new("Really red").Color),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new(1),
Texture = "rbxassetid://249270319",
Lifetime = NumberRange.new(1),
Rate = 50,
VelocitySpread = 180,
Rotation = NumberRange.new(0),
Speed = NumberRange.new(5),
LightEmission = 1000,
}
for i=0,1,0.2 do
wait()
local dir = wave.CFrame.lookVector*-1
local pos = rayCast(wave.Position,dir,5,Character)
wave.CFrame=wave.CFrame*cframe2
Effects[#Effects+1]={wave,"Cylinder",0.01,.03,.03,.03}
end
end))
end

function Wave()
attack = true
Reappear()
so("Appear",Handle,1,.8)
for i = 1,3 do
for i = 0, 1, 0.1 do
	swait()
	BlockEffect(BrickColor.new("Really red"),Handle.CFrame,.1,.1,.1,1,1,1,0.05)
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
	RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
	Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
	Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
end
end
so("Slash2",Handle,1,.4)
local inc=-10
for i=1,8 do
WaveEffect(Torso,CFrame.new(0,-5,inc)*CFrame.fromEulerAnglesXYZ(-2,0,1.57),CFrame.new(0,0,0.8),10,5)
inc=inc-7
end
for i = 1,2 do
for i = 0, 1, 0.1 do
	swait()
	BlockEffect(BrickColor.new("Really red"),Handle.CFrame,.1,.1,.1,1,1,1,0.05)
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), .5)
	RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -.5) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.5)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), 0.5)
	RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(-4, .5, -10) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
	Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -5 * i, math.rad(0)), 0.3)
	Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 5 * i, math.rad(0)), 0.3)
end
end
Disappear()
so("Disappear",Handle,1,.8)
attack = false
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"Neon",0,0.5,BrickColor.new("Really red"),"Effect",vt(5,5,5))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,22)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"Neon",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
BlastEffect(BrickColor.new("Really red"),cf(pos),5,5,5,5,3,5,0.07)
MagicCircle(BrickColor.new("Really red"),cf(pos),5,5,5,5,3,5,0.04)
BlastEffect(BrickColor.new("Really red"),cf(pos),5,5,5,5,3,5,0.07)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,22)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(efprt,efprt,math.huge,math.huge,math.huge,math.huge,1)
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really red"),Part.CFrame,1,mag*5,1,5,5,5,0.25)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function SuperLaser()
attack = true
so("Appear",Handle,1,0.5)
Humanoid.WalkSpeed = 5
Reappear()
for i = 0,1,0.01 do
swait()
BlockEffect(BrickColor.new("Really red"),Handle.CFrame,0,0,0,.2,.2,.2,0.25)

local c = game.Players.LocalPlayer.Character
local radius = 10
local pos = Handle.CFrame
local clrz = {'Really black','Really red'};
for HAAA = 1, 10 do
for i = 1,1 do
local clr = clrz[math.random(1,#clrz)]
pos = Handle.CFrame
local p = Instance.new('Part',c)
local mafc,mafa = math.random(-100000,100000), math.random(-360000,360000)
p.CanCollide = false
p.FormFactor = 3
p.Size = Vector3.new(1,1,1)
local m = Instance.new('SpecialMesh',p)
m.MeshType = 'Brick'
spawn(function()
  for i = 0,50 do
    local int,int2 = .02,.02
    m.Scale = m.Scale - Vector3.new(int,int,int)
	p.Transparency = p.Transparency + int2
	game:service'RunService'.RenderStepped:wait()
  end
  pcall(function()
  	p:Destroy()
  end)
end)
p.BrickColor = BrickColor.new(clr)
p.Material = 'Neon'
p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
local bp = Instance.new('BodyPosition',p)
bp.MaxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 1000
bp.P = 10000
	bp.Position = pos.p
game.Debris:AddItem(p,10)
end
end
wait(.1)
BlastEffect(BrickColor.new("Really red"),Handle.CFrame,0,0,0,.2,.2,.2,0.01)
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), .5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(50)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(85), math.rad(0), math.rad(-50)), 0.5)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.3)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.3)
end
Humanoid.WalkSpeed = 0
LaserBarrage(Handle,Character)
so("Beam",Handle,1,0.8)
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(85), math.rad(0), math.rad(0)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(85), math.rad(0), math.rad(0)), 0.2)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, 1, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.2)
Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -6*i, math.rad(0)), 0.2)
Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6*i, math.rad(0)), 0.2)
end
Disappear()
so("Disappear",Handle,1,.7)
Humanoid.WalkSpeed = 16
attack = false
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CanCollide = false
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

mouse.Button1Down:connect(function()
	if attack == false and Hover == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and Hover == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and Hover == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	end
end)


function subtractEnergy(k)
	if Energy>=k then
		Energy=Energy-k
	end
end

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == ' ' and Anim == "Jump" and Hover == false then
		hovering = true
		OnHover()
		Humanoid.WalkSpeed = 30
		PE2.Enabled = true
	elseif attack == false and k == ' ' and Hover == true then
		hovering = false
		OffHover()
		Humanoid.WalkSpeed = 16
		PE2.Enabled = false
		PE1.EmissionDirection = "Top"
	elseif attack == false and k == 'q' and Hover == false and cooldown1 >= co1 and Energy>=skill1stam then
		subtractEnergy(skill1stam)
		cooldown1=0
	    FireProjectiles()
	elseif attack == false and k == 'e' and Hover == false and cooldown2 >= co2 and Energy>=skill2stam then
		subtractEnergy(skill2stam)
		cooldown2=0
	    EnergyBurst()
	elseif attack == false and k == 'r' and Hover == false and cooldown3 >= co3 and Energy>=skill3stam then
		subtractEnergy(skill3stam)
		cooldown3=0
	    Wave()
	elseif attack == false and k == 'f' and Hover == false and cooldown4 >= co4 and Energy>=skill4stam then
		subtractEnergy(skill4stam)
		cooldown4=0
	    SuperLaser()
	end
end)

function updateskills()
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 1 / 30
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 1 / 30
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 1 / 30
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 1 / 30
	end
	if Energy<=skill1stam then
	bar4.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar4.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill2stam then
	bar3.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar3.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill3stam then
		bar1.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar1.BackgroundColor3=skillcolorscheme
	end
	if Energy<=skill4stam then
		bar2.BackgroundColor3=Color3.new(104/255,104/255,104/255)
	else
		bar2.BackgroundColor3=skillcolorscheme
	end
	if Energy <= maxEnergy then
		Energy = Energy + recovermana / 30
	end
end

local sine = 0
local change = 1
local val = 0
local idle = 0
local donum = 0
local donum2 = 0

while true do
	swait()
	updateskills()
	healthcover:TweenSize(UDim2.new(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), 'Out', 'Quad', .5)
	Energycover:TweenSize(UDim2.new(1 * (Energy / maxEnergy), 0, 1, 0), 'Out', 'Quad', .5)
	bar4:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	sine = sine + change
	torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if donum2 >= .5 then
			handidle = true
		elseif donum2 <= 0 then
			handidle = false
		end
		if handidle == false then
			donum2 = donum2 + 0.003
		else
			donum2 = donum2 - 0.003
		end
		donum = donum + 0.003
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.8, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
        motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-110 + 0 * math.cos(sine / 25))), 0.1)
        motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(110 + 0 * math.cos(sine / 25))), 0.1)
        motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
        motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -.9, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
			elseif attack == false and Hover == true then
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
			if attack == false and Hover == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.8, 0.5, -.7) * angles(math.rad(85), math.rad(0), math.rad(-70)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.5, -.3) * angles(math.rad(70), math.rad(0), math.rad(70)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(0), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-5 + 5 * math.cos(sine / 50)), math.rad(0 + 5 * math.cos(sine / 80)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 70)), math.rad(0 + -5 * math.cos(sine / 50)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 80)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(-50 + 0 * math.cos(sine / 25))), 0.1)
            motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 40)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(-40 + 0 * math.cos(sine / 25))), 0.1)
            motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 60)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(40 + 0 * math.cos(sine / 25))), 0.1)
            motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 35)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 70)), math.rad(0 + 5 * math.cos(sine / 35)), math.rad(-45 + 0 * math.cos(sine / 25))), 0.1)
            motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 55)), math.rad(0 + 5 * math.cos(sine / 55)), math.rad(-10 + 0 * math.cos(sine / 25))), 0.1)
            motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 65)), math.rad(0 + 5 * math.cos(sine / 60)), math.rad(35 + 0 * math.cos(sine / 25))), 0.1)
			elseif attack == false and Hover == true then
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 8+2*math.cos(sine/15)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10+3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, .3) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(2), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-5 + 5 * math.cos(sine / 50)), math.rad(0 + 5 * math.cos(sine / 80)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 70)), math.rad(0 + -5 * math.cos(sine / 50)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 80)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(-50 + 0 * math.cos(sine / 25))), 0.1)
            motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 40)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(-40 + 0 * math.cos(sine / 25))), 0.1)
            motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 60)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(40 + 0 * math.cos(sine / 25))), 0.1)
            motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 35)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 70)), math.rad(0 + 5 * math.cos(sine / 35)), math.rad(-45 + 0 * math.cos(sine / 25))), 0.1)
            motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 55)), math.rad(0 + 5 * math.cos(sine / 55)), math.rad(-10 + 0 * math.cos(sine / 25))), 0.1)
            motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 65)), math.rad(0 + 5 * math.cos(sine / 60)), math.rad(35 + 0 * math.cos(sine / 25))), 0.1)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false and Hover == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40) * math.cos(sine / 7), math.rad(0), math.rad(5)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40) * math.cos(sine / 7), math.rad(0), math.rad(-5)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2), math.rad(0), math.rad(0)), .3)
				Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, .5+0.2*math.cos(sine/15), 0) * angles(math.rad(20), math.rad(0), math.rad(20) - donum2 / 1), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .01, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .03, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
			elseif attack == false and Hover == true then
				change = 1
			    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 8+2*math.cos(sine/15)) * angles(math.rad(30+3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-15-3.5*math.cos(sine/15)), math.rad(0), math.rad(0)), .3)
			    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.45, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
			    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.45, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
			    RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(-30)) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
			    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(40)) * angles(math.rad(3), math.rad(0), math.rad(0)), .3)
			    Handleweld.C0 = clerp(Handleweld.C0, CFrame.new(0, -8, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				Layer2Handleweld.C0 = clerp(Layer2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / .008, math.rad(0)), 0.3)
				Layer3Handleweld.C0 = clerp(Layer3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / .009, math.rad(0)), 0.3)
				motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
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
							Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * cf(0, .5, 0)
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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