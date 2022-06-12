Player = script.Parent.Parent
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
attack = false 
attackdebounce = false 
combo = 0 
mana = 400 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
ammo=true
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("Flute Shooter",true) ~= nil then 
Character:findFirstChild("Flute Shooter",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = Instance.new("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp.Locked=true
fp:BreakJoints()
return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = Instance.new(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

local modelzorz = Instance.new("Model") 
modelzorz.Name = "Flute Shooter" 
modelzorz.Parent = Character 

part1=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",Vector3.new(1,3.6,1))
part2=part(1,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part",Vector3.new(1,3.6,1))
part3=part(1,modelzorz,0.05,0,BrickColor.new("Reddish brown"),"Part",Vector3.new(1, 1, 3))
part4=part(1,modelzorz,0,0,BrickColor.new("Reddish brown"),"Part",Vector3.new(1, 1.2, 1))
part5=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part",Vector3.new(0.2, 2.4, 0.2))
part6=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part",Vector3.new(0.2, 2.4, 0.2))
part7=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part",Vector3.new(0.2, 2.4, 0.2))
part8=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part",Vector3.new(0.2, 2.4, 0.2))
modelzorz:BreakJoints()

mesh1=mesh("CylinderMesh",part1,"","",Vector3.new(0,0,0),Vector3.new(1, 1.001, 0.3))
mesh2=mesh("CylinderMesh",part2,"","",Vector3.new(0,0,0),Vector3.new(1, 1, 0.4))
mesh3=mesh("SpecialMesh",part3,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(0.7, 0.7, 18))
mesh4=mesh("CylinderMesh",part4,"","",Vector3.new(0,0,0),Vector3.new(1, 0.1, 0.7))
mesh5=mesh("SpecialMesh",part5,"FileMesh","http://www.roblox.com/asset/?id=1033714",Vector3.new(0,0,0),Vector3.new(0.1, 4, 0.1))
mesh6=mesh("SpecialMesh",part6,"FileMesh","http://www.roblox.com/asset/?id=1033714",Vector3.new(0,0,0),Vector3.new(0.1, 4, 0.1))
mesh7=mesh("SpecialMesh",part7,"FileMesh","http://www.roblox.com/asset/?id=1033714",Vector3.new(0,0,0),Vector3.new(0.1, 4, 0.1))
mesh8=mesh("SpecialMesh",part8,"FileMesh","http://www.roblox.com/asset/?id=1033714",Vector3.new(0,0,0),Vector3.new(0.1, 4, 0.1))

local wld1 = Instance.new("Weld") 
wld1.Parent = part1 
wld1.Part0 = part1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.37) * CFrame.new(-0.3,0.5,-0.7) 
local wld2 = Instance.new("Weld") 
wld2.Parent = part2 
wld2.Part0 = part2 
wld2.Part1 = part1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = part3 
wld3.Part0 = part3 
wld3.Part1 = Torso 
wld3.C0 = CFrame.fromEulerAnglesXYZ(-0.2,1.57,0) * CFrame.new(0,0.7,-0.7) 
local wld4 = Instance.new("Weld") 
wld4.Parent = part4 
wld4.Part0 = part4 
wld4.Part1 = part3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,-1.5) 
local wld5 = Instance.new("Weld") 
wld5.Parent = part5 
wld5.Part0 = part5 
wld5.Part1 = part3 
wld5.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0.25,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = part6 
wld6.Part0 = part6 
wld6.Part1 = part3 
wld6.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0.15,0.2,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = part7 
wld7.Part0 = part7 
wld7.Part1 = part3 
wld7.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(-0.15,0.2,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = part8 
wld8.Part0 = part8 
wld8.Part1 = part3 
wld8.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0.1,0) 

counter=1
for i=1,4 do
Part=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",Vector3.new(1, 1.2, 1))

Mesh=mesh("CylinderMesh",Part,"","",Vector3.new(0,0,0),Vector3.new(0.2, 0.2, 0.2))

local wld = Instance.new("Weld") 
wld.Parent = Part 
wld.Part0 = Part 
wld.Part1 = part2 
wld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,counter,-0.1) 
counter=counter-0.7
end

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Flute Shooter" 
script.Parent = Tool 
end 
Bin = script.Parent 

function hideanim() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.37) * CFrame.new(-0.3,0.5,-0.7) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 

function equipanim() 
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wld1.Part1 = RightArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.85) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3,3.14,0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(0.45*i,3.14*i,0.85+2*i) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9*i,0.5,-0.9*i) * CFrame.fromEulerAnglesXYZ(2*i,0,-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wld1.Part1=Head
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.25,2) 
end 

function Shoot()
attack=true
shoottrail2(part1,50) 
for i=0,1,0.2 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,0,0) * CFrame.new(0,0.25-0.4*i,2) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.7+0.5*i,0,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9,0.5,-0.9) * CFrame.fromEulerAnglesXYZ(2+0.5*i,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.2 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.3*i,0,0) * CFrame.new(0,0.25-0.4+0.4*i,2) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.7+0.5-0.5*i,0,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9,0.5,-0.9) * CFrame.fromEulerAnglesXYZ(2+0.5-0.5*i,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
attack=false
end

function Reload()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.25,2) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5+0.2*i,0.5,-0.5-0.2*i) * CFrame.fromEulerAnglesXYZ(1.7+0.3*i,0,0.3+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9,0.5,-0.9) * CFrame.fromEulerAnglesXYZ(2,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.25,2) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(2,0,0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9+0.9*i,0.5,-0.9+0.9*i) * CFrame.fromEulerAnglesXYZ(2-2.5*i,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wld1.Part1 = LeftArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(-0.7,3.14,0.3) * CFrame.new(0,1,0) 
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(-0.7+1*i,3.14,0.3+1.5*i) * CFrame.new(0.8*i,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(2-0.5*i,0,0.5+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-2.5,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
DPart=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part",Vector3.new(0.2, 2.4, 0.2))
DMesh=mesh("SpecialMesh",DPart,"FileMesh","http://www.roblox.com/asset/?id=1033714",Vector3.new(0,0,0),Vector3.new(0.1, 4, 0.1))
local DWeld = Instance.new("Weld") 
DWeld.Parent = DPart
DWeld.Part0 = DPart
DWeld.Part1 = RightArm
DWeld.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57,-0.5) * CFrame.new(1,1,0) 
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(-0.7+1,3.14,0.3+1.5) * CFrame.new(0.8,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(2-0.5-0.2*i,0,0.5+0.2) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
DWeld.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57+0.3*i,-0.5-0.2*i) * CFrame.new(1-1*i,1+0.2*i,0.2*i) 
DWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0)
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(-0.7+1,3.14,0.3+1.5) * CFrame.new(0.8,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3,3.14,0.5-0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(2-0.5-0.2,0,0.5+0.2) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5+0.1*i,0,-0.3-0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
DWeld.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1.57+0.3+0.1*i,-0.5-0.2-0.2*i) * CFrame.new(1-1+0.9*i,1+0.2+1.2*i,0.2+0.4*i) 
DWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0)*CFrame.new(0.3*i,0,0)
end
DPart.Parent=nil
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(-0.7+1-0.5*i,3.14,0.3+1.5-1.5*i) * CFrame.new(0.8-1.4*i,1,0.5*i) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3,3.14,0.5-0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.2*i,0.5,-0.7+0.2*i) * CFrame.fromEulerAnglesXYZ(1.3+0.4*i,0,0.7-0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.9*i,0.5,-0.9*i) * CFrame.fromEulerAnglesXYZ(1.1+0.9*i,0,-0.3-0.2+0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wld1.Part1=Head
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.25,2) 
attack=false
end

function onehit() 

end 

function twohit() 

end 

function threehit() 

end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function shoottrail2(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 1000
rangepower = 10
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) --* (pos1.Position).magnitude/100
--local dir = Head.CFrame.lookVector+spreadvector 
local dir = Head.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
local Damg = Damage*2
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,0.4,1)
effectsg.Parent = Character
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Dark orange") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(0.4,mg*5,0.4)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(0.4-0.4*i,mg*5,0.4-0.4*i)
end 
effectsg.Transparency = 1
wait() 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
local Damg = Damage*2
local decr = 0
repeat
wait() 
rangepos = rangepos - 10
dir = dir
--dir = dir 
--print(Damg)
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=1033714"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(0.1,4,0.1)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = Character
effectsg.BrickColor = BrickColor.new("Dark orange") 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local weld = Instance.new("Weld")
weld.Part0 = effectsg
weld.Part1 = hit2
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
local CJ = CFrame.new(HitPos)
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = effectsg
coroutine.resume(coroutine.create(function()
wait()
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg/4),5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg/4),5)
elseif hit2.Parent.Parent.Parent ~= nil and hit2.Parent.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg/4),5)
end
end
end))
end

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
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
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
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
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=color
		p2.Size=Vector3.new(x,y,z)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	if Style == "WingBlade" and element == "Dark" then 
	S.BrickColor=BrickColor.new("Black") 
	end 
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
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
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
	S=Instance.new("Part")
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
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function ss(pitch) 

local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function equipsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function spikesound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if mana < 400 then 
		mana = mana + math.random(10,20)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Bevel=.1
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
		ms.Bevel=.2
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

hold = false 

function ob1d(mouse) 
if attack == true then return end 
if stancing == true then return end 
hold = true 
if combo == 0 then 
combo = 1 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C0 = CFrame.new(0,2,0) * CFrame.fromEulerAnglesXYZ(0,0,0.2)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2,1.1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.8,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
combo = 2 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C0 = CFrame.new(0,2,0) * CFrame.fromEulerAnglesXYZ(0,0,0.2)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2,1.1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.8,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
threehit() 
wait(0.5) 
combo = 0 
wld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C0 = CFrame.new(0,2,0) * CFrame.fromEulerAnglesXYZ(0,0,0.2)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2,1.1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.8,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function Key(key,mouse) 
if attack == true then return end 
if key == "q" then 
if ammo==true then
Shoot()
ammo=false
elseif ammo==false then
Reload()
ammo=true
end
end 
end 

function Key2(key,mouse) 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
--mouse.KeyDown:connect(key,mouse) 
--mouse.KeyUp:connect(key2,mouse) 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim() 
end 

function ds(mouse) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function onRunning(speed)
if attack == true then return end 
	if speed>0 then 
walking = true 
--[[wld.Part1 = LeftArm
wld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C0 = CFrame.new(0,2,0) * CFrame.fromEulerAnglesXYZ(0,0,0.2)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2,1.1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.8,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
	else 
walking = false 
	end 
end 
Character.Humanoid.Running:connect(onRunning) 

while true do 
wait(0)  
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end 

-- mediafire