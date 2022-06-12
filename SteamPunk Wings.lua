Player = game:GetService("Players").rigletto 
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
it=Instance[game.workspace.CurrentCamera.PootisValue.Value]
vt=Vector3[game.workspace.CurrentCamera.PootisValue.Value]
cf=CFrame[game.workspace.CurrentCamera.PootisValue.Value]
euler=CFrame[game.workspace.CurrentCamera.PootisValue2.Value]
angles=CFrame[game.workspace.CurrentCamera.PootisValue3.Value]
act = {key = {}}
hold=false
MMouse=nil
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
grabbed=false
speed=1
jumpcount=0
doinganimation=false
moveforward=false
movebackward=false
moveleft=false
moveright=false
doflying=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW , RWL, LWL = it("Weld"), it("Weld"), it("Weld"), it("Weld")
--what anim 
anim = "none" 

bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
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
fp:BreakJoints()
return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

if Character:findFirstChild("Steampunk Wings",true) ~= nil then 
Character:findFirstChild("Steampunk Wings",true).Parent = nil 
end 

local modelzorz = it("Model") 
modelzorz.Name = "Steampunk Wings"
modelzorz.Parent = Character 

local part1 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part1",vt(1,1,1))
local part2 = part(1,modelzorz,0,0,BrickColor.new("Dark green"),"Part2",vt(1,1,1))
local part3 = part(1,modelzorz,0,0,Torso.BrickColor,"Part3",vt(1,1,1))
local part4 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part4",vt(1,1,1))
local part5 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part5",vt(1,1,1))
local part6 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part6",vt(1,1,1))
local part7 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part7",vt(1,1,1))
local part8 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part8",vt(1,1,1))
local part9 = part(1,modelzorz,0,0,BrickColor.new("Bright green"),"Part9",vt(1,1,1))
local part10 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part10",vt(1,1,1))
local part11 = part(1,modelzorz,0,1,BrickColor.new("Black"),"Part11",vt(1,1,1))
local part12 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part12",vt(1,1,1))
local part13 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part13",vt(1,1,1))
local part14 = part(1,modelzorz,0,1,BrickColor.new("Black"),"Part14",vt(1,1,1))
local part15 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part15",vt(1,1,1))

local mesh1 = mesh("BlockMesh",part1,"","",vt(0,0,0),vt(2.1,0.5,1.1))
local mesh2 = mesh("BlockMesh",part2,"","",vt(0,0,0),vt(1.3,1.3,0.8))
local mesh3 = mesh("CylinderMesh",part3,"","",vt(0,0,0),vt(0.9,0.3,0.9))
local mesh4 = mesh("BlockMesh",part4,"","",vt(0,0,0),vt(0.3,1.6,0.3))
local mesh5 = mesh("BlockMesh",part5,"","",vt(0,0,0),vt(0.3,1.6,0.3))
local mesh6 = mesh("BlockMesh",part6,"","",vt(0,0,0),vt(0.3,1.8,0.3))
local mesh7 = mesh("BlockMesh",part7,"","",vt(0,0,0),vt(0.3,2,0.3))
local mesh8 = mesh("BlockMesh",part8,"","",vt(0,0,0),vt(0.3,2,0.3))
local mesh9 = mesh("BlockMesh",part9,"","",vt(0,0,0),vt(0.6,2.5,0.6))
local mesh10 = mesh("BlockMesh",part10,"","",vt(0,0,0),vt(0.1,1.5,2))
local mesh11 = mesh("BlockMesh",part11,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local mesh12 = mesh("SpecialMesh",part12,"Wedge","",vt(0,0,0),vt(0.1,1.5,2))
local mesh13 = mesh("BlockMesh",part13,"","",vt(0,0,0),vt(0.1,1.5,2))
local mesh14 = mesh("BlockMesh",part14,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local mesh15 = mesh("SpecialMesh",part15,"Wedge","",vt(0,0,0),vt(0.1,1.5,2))

local weld1 = it("Weld") 
weld1.Parent = part1
weld1.Part0 = part1 
weld1.Part1 = Torso
weld1.C0 = euler(0,0,0) * cf(0,0,0) 
local weld2 = it("Weld") 
weld2.Parent = part2
weld2.Part0 = part2
weld2.Part1 = part1
weld2.C0 = euler(0,0,0) * cf(0,0,-0.9) 
local weld3 = it("Weld") 
weld3.Parent = part3
weld3.Part0 = part3
weld3.Part1 = part2
weld3.C0 = euler(1.57,0,0) * cf(0,0,-0.3) 
local weld4 = it("Weld") 
weld4.Parent = part4
weld4.Part0 = part4
weld4.Part1 = part2
weld4.C0 = euler(-0.7,0,0) * cf(0,-0.8,-0.9) 
local weld5 = it("Weld") 
weld5.Parent = part5
weld5.Part0 = part5
weld5.Part1 = part2
weld5.C0 = euler(-1.1,0,0) * cf(0,-1.1,-0.6) 
local weld6 = it("Weld") 
weld6.Parent = part6
weld6.Part0 = part6
weld6.Part1 = part2
weld6.C0 = euler(0,0,1.57) * cf(0,-0.5,0) 
local weld7 = it("Weld") 
weld7.Parent = part7
weld7.Part0 = part7
weld7.Part1 = part6
weld7.C0 = euler(0,0,-0.5) * cf(0.6,-0.5,-0.8) 
weld7.C1 = euler(1,0,0)
local weld8 = it("Weld") 
weld8.Parent = part8
weld8.Part0 = part8
weld8.Part1 = part6
weld8.C0 = euler(0,0,0.5) * cf(0.6,0.5,-0.8) 
weld8.C1 = euler(-1,0,0)
local weld9 = it("Weld") 
weld9.Parent = part9
weld9.Part0 = part9
weld9.Part1 = part2
weld9.C0 = euler(-1.4,0,0) * cf(0,-1.5,-1.6) 
local weld10 = it("Weld") 
weld10.Parent = part10
weld10.Part0 = part10
weld10.Part1 = part9
weld10.C0 = cf(0,-0.59,1.2) * euler(0,1.57,0)
weld10.C1 = euler(0,-0.3,0)
local weld11 = it("Weld") 
weld11.Parent = part11
weld11.Part0 = part11
weld11.Part1 = part10
weld11.C0 = cf(0,0,1) * euler(0,0,0)
local weld12 = it("Weld") 
weld12.Parent = part12
weld12.Part0 = part12
weld12.Part1 = part11
weld12.C0 = cf(0,0,1) * euler(0,0,3.14)
weld12.C1 = euler(0,-0.5,0)
local weld13 = it("Weld") 
weld13.Parent = part13
weld13.Part0 = part13
weld13.Part1 = part9
weld13.C0 = cf(0,-0.59,-1.2) * euler(0,1.57,0)
weld13.C1 = euler(0,0.3,0)
local weld14 = it("Weld") 
weld14.Parent = part14
weld14.Part0 = part14
weld14.Part1 = part13
weld14.C0 = cf(0,0,-1) * euler(0,0,0)
local weld15 = it("Weld") 
weld15.Parent = part15
weld15.Part0 = part15
weld15.Part1 = part14
weld15.C0 = cf(0,0,1) * euler(0,3.14,3.14)
weld15.C1 = euler(0,0.5,0)

local refpart = part(1,modelzorz,0,0,BrickColor.new("White"),"ReferencePart",vt(1,1,1))

derp=0
for i=1,4 do
local part = part(1,modelzorz,0,0,Torso.BrickColor,"PartGear",vt(1,1,1))
local mesh = mesh("BlockMesh",part,"","",vt(0,0,0),vt(1.1,0.3,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part3
weld.C0 = euler(0,derp,0) * cf(0,0,0) 
derp = derp + math.rad(45) 
end
derp=0
for i=1,8 do
local part = part(1,modelzorz,0,0,Torso.BrickColor,"Part",vt(1,1,1))
local mesh = mesh("BlockMesh",part,"","",vt(0,0,0),vt(0.61,0.1,0.61))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part9
weld.C0 = euler(0,0,0) * cf(0,1.3-derp,0) 
derp = derp + 0.3
end
derp=0
for i=1,7 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part10
weld.C0 = euler(0,0,1.57) * cf(0,-0.8,-1+derp) 
derp = derp + 0.3
end
derp=0
for i=1,5 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part12
weld.C0 = euler(0,0,1.57) * cf(0,0.8,-1+0.3+derp) 
derp = derp + 0.3
end
derp=0
for i=1,7 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part13
weld.C0 = euler(0,0,1.57) * cf(0,-0.8,-1+derp) 
derp = derp + 0.3
end
derp=0
for i=1,5 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part15
weld.C0 = euler(0,0,1.57) * cf(0,0.8,-1+0.3+derp) 
derp = derp + 0.3
end

BP=nil
doflying=false
--[[
bv.velocity = mouse.Hit.lookVector * 40 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
bv.Parent = Torso
bf.Parent = Torso
bf.force = Vector3.new(0, 190 * Torso:GetMass(), 0) 
]]
bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(4e+020, 4e+020, 4e+020) 
bf = Instance.new("BodyForce") 
bf.force = Vector3.new(0, 196 * Torso:GetMass(), 0) 
local bodpos=Instance.new("BodyPosition")
bodpos.maxForce = vt(80000,40000,80000)
bodpos.Name = "BP"
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 2000
m = Player:GetMouse()
m.KeyDown:connect(function(k) 
if k=="w" then
if doflying==true then
moveforward=true
while moveforward==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(-0.5,0,0)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="s" then
if doflying==true then
movebackward=true
while movebackward==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0.5,0,0)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*-25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="a" then
if doflying==true then
moveleft=true
while moveleft==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0,-1.57,0.5)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="d" then
if doflying==true then
moveright=true
while moveright==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0,1.57,-0.5)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k:byte() == 32 then 
print(doflying)
jumpcount=jumpcount+1
coroutine.resume(coroutine.create(function()
wait(1)
jumpcount=0
end))
if jumpcount==2 then
if doflying==false then
--print("YUNOWORK")
doflying=true
bg.Parent=Torso
bodpos.Parent=Torso
bodpos.position=Torso.Position+vt(0,10,0)
BP=bodpos.position
--print(mouse.Hit.p)
print(bodpos.Parent)
print("FLY PUPA, FLYYYYYYY")
coroutine.resume(coroutine.create(function()
while doflying==true do
wait()
doinganimation=true
for i=0,1,0.1*speed do
wait()
bodpos.position=BP+vt(0,-4*i,0)
weld10.C1 = euler(0,-0.3+0.5*i,0)
weld12.C1 = euler(0,-0.5+0.7*i,0)
weld13.C1 = euler(0,0.3-0.5*i,0)
weld15.C1 = euler(0,0.5-0.7*i,0)
end
for i=0,1,0.2*speed do
wait()
bodpos.position=BP+vt(0,-4-2*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6*i,0)
weld13.C1 = euler(0,0.3-0.5-0.4*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6*i,0)
end
for i=0,1,0.2*speed do
wait()
bodpos.position=BP+vt(0,-4-2+7*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4-1.6*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6-1.4*i,0)
weld13.C1 = euler(0,0.3-0.5-0.4+1.6*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6+1.4*i,0)
end
for i=0,1,0.1*speed do
wait()
bodpos.position=BP+vt(0,-4-2+7-1*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4-1.6+0.6*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6-1.8,0)
weld13.C1 = euler(0,0.3-0.5-0.4+1.6-0.6*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6+1.8,0)
end
doinganimation=false
end
end))
elseif doflying==true then
doflying=false
bg.Parent=nil
bv.Parent = nil
bf.Parent = nil
bodpos.Parent=nil
wait()
while doinganimation==true do
wait()
end
for i=0,1,0.1 do
weld10.C1 = euler(0,-0.3,0)
weld12.C1 = euler(0,-0.5,0)
weld13.C1 = euler(0,0.3,0)
weld15.C1 = euler(0,0.5,0)
wait()
end
end
end
end 
end)
m.KeyUp:connect(function(k)
if k=="w" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveforward=false
end
end
if k=="s" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
movebackward=false
end
end
if k=="a" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveleft=false
end
end
if k=="d" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveright=false
end
end
end)

coroutine.resume(coroutine.create(function()
while true do
wait()
if moveforward==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(-0.5,0,0)
elseif movebackward==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0.5,0,0)
elseif moveleft==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0,0,0.5)
elseif moveright==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0,0,-0.5)
else
bg.cframe = workspace.CurrentCamera.CoordinateFrame
end
end
end))
--(string.byte(k)==32)
-- lego mediafire 