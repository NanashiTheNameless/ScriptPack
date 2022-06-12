Player = game:GetService("Players").LocalPlayer
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
sheathed = true 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ 
angles=CFrame.Angles 
mRad=math.rad
mPi=math.pi
act = {key = {}}
walking = false 
hold=false
MMouse=nil
equipped=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
con1=nil
con2=nil
con3=nil
mana=400
Charging=0
Did=0
colors={"Black","Navy blue"}
random=nil
Combo=""
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW , RWL, LWL = it("Weld"), it("Weld"), it("Weld"), it("Weld")
RW.Name="Right Shoulder"
LW.Name="Left Shoulder"
RWL.Name="Right Hip"
LWL.Name="Left Hip"
RW2, LW2 = it("Weld"), it("Weld") 
--what anim 
anim = "none" 
local gyro = it("BodyGyro")
gyro.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gyro.P = 20e+003 
bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 
Enemy=nil
briefcase=false
object1=false
object2=false
object3=false
object4=false
object5=false
CF=cf(-1.5,0.5,0) * euler(0.7,0,-0.3) 
ch=Character
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]
function RWLFunc()
    RWL.Part1 = ch["Right Leg"]
    RHL.Part1 = nil
    ch["Right Leg"].Name = "RightLeg"
    RightLeg.CanCollide = false
end
function LWLFunc()
    LWL.Part1 = ch["Left Leg"]
    LHL.Part1 = nil
    ch["Left Leg"].Name = "LeftLeg"
    LeftLeg.CanCollide = true
end
function RWLRem()
    RightLeg.Name = "Right Leg"
    RWL.Part1 = nil
    RHL.Part1 = ch["Right Leg"]
    RightLeg.CanCollide = false
end
function LWLRem()
    LeftLeg.Name = "Left Leg"
    LWL.Part1 = nil
    LHL.Part1 = ch["Left Leg"]
    LeftLeg.CanCollide = false
end
    RWL.Part0 = ch.Torso
    RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
    RWL.C1 = CFrame.new(0.5, 1, 0)
    RWL.Parent = Character
    --
    LWL.Part0 = ch.Torso
    LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
    LWL.C1 = CFrame.new(-0.5, 1, 0)
    LWL.Parent = Character
 
if Character:findFirstChild("Suitcase",true) ~= nil then 
Character:findFirstChild("Suitcase",true).Parent = nil 
end 
if Character:findFirstChild("Weapon",true) ~= nil then 
Character:findFirstChild("Weapon",true).Parent = nil 
end 
if Character.Torso:findFirstChild("ChargeGui",true) ~= nil then 
Character.Torso:findFirstChild("ChargeGui",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 
if PlayerGui:findFirstChild("SuitcaseGUI") ~= nil then
PlayerGui:findFirstChild("SuitcaseGUI").Parent = nil
end
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "SuitcaseGUI"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.3,0)
frame.Position = UDim2.new(0.8,0,0.4,0)
frame.BackgroundColor3 = BrickColor.new("Brown").Color
local Ammotext = Instance.new("TextLabel",frame)
Ammotext.Size = UDim2.new(1,0,0.35,0)
Ammotext.BackgroundTransparency = 1
Ammotext.Text = "Suitcase Status"
Ammotext.FontSize = "Size18"
Ammotext.TextColor3 = BrickColor.new("White").Color
local backing1 = Instance.new("ImageLabel",frame)
backing1.Size = UDim2.new(0.4,0,0.15,0)
backing1.Image = "http://www.roblox.com/asset/?id=48965808"
backing1.Position = UDim2.new(0.1,0,0.35,0)
backing1.BackgroundColor3 = BrickColor.new("Black").Color
local img1 = Instance.new("ImageLabel",backing1)
img1.Size = UDim2.new(1,0,1,0)
img1.Image = "http://www.roblox.com/asset/?id=48965808"
img1.Position = UDim2.new(0,0,0,0)
img1.BackgroundColor3 = BrickColor.new("Brown").Color
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.4,0,0.15,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.3,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Brown").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = "Tesla Coil"
percent.FontSize = "Size14"
--[[local currentam = Instance.new("TextLabel",frame)
currentam.Size = UDim2.new(0.5,0,0.25,0)
currentam.Position = UDim2.new(0,0,1,0)
currentam.BackgroundTransparency = 0
currentam.BackgroundColor3 = BrickColor.new("Brown").Color
currentam.TextColor3 = BrickColor.new("White").Color
currentam.Text = CurrentAmmo
currentam.FontSize = "Size18"]]
bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 
local GUI = Instance.new("BillboardGui") 
GUI.Adornee = Torso
GUI.Parent = Torso
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = Vector3.new(0, 4, 0) 
GUI.Name="ChargeGui"
local Chat = Instance.new("TextBox") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.BackgroundColor3=Color3.new(0,0,0)
Chat.Position = UDim2.new(-1.5, 0, 0, 0) 
Chat.Size = UDim2.new(5,0,0.5,0)
Chat.Visible = false
Chat.Text = " " 
local Chat2 = Instance.new("TextBox") 
Chat2.Parent = GUI 
Chat2.FontSize = "Size12" 
Chat2.BackgroundColor3=Color3.new(0,0,0.4)
Chat2.Position = UDim2.new(-1.5, 0, 0, 0) 
Chat2.Size = UDim2.new(0,0,0.5,0)
Chat2.Visible = false
Chat2.Text = " " 
 
 
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
fp.Locked=true
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
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local modelzorz = it("Model") 
modelzorz.Name = "Suitcase" 
modelzorz.Parent = Character 
 
local handle=part(1,modelzorz,0,1,BrickColor.new("Black"),"Handle",vt(1,1,1))
local part1=part(1,modelzorz,0,1,BrickColor.new("Black"),"Part1",vt(1,1,1))
local part2=part(1,modelzorz,0,1,BrickColor.new("Black"),"Part2",vt(1,1,1))
local part3=part(1,modelzorz,0,1,BrickColor.new("Really black"),"Part3",vt(1,1,1))
 
local handlem=mesh("CylinderMesh",handle,"","",vt(0,0,0),vt(0.2,1,0.2))
local mesh1=mesh("CylinderMesh",part1,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local mesh2=mesh("CylinderMesh",part2,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local mesh3=mesh("BlockMesh",part3,"","",vt(0,0,0),vt(0.5,1.2,1.2))
 
local handlew=weld(handle,handle,LeftArm,euler(1.57,0,0)*cf(0,1,0))
local weld1=weld(part1,part1,handle,euler(1.57,0,0)*cf(0,0.4,0.2))
local weld2=weld(part2,part2,handle,euler(1.57,0,0)*cf(0,-0.4,0.2))
local weld3=weld(part3,part3,handle,euler(0,0,0)*cf(0,0,0.8))
 
 
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = it("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
 
local bg = it("BodyGyro") 
bg.Parent = nil 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Suitcase" 
script.Parent = Tool 
end 
Bin = script.Parent 
if Bin:findFirstChild("ManaBar",true) ~= nil then 
mana=Bin.ManaBar.Value
Bin:findFirstChild("ManaBar",true).Parent = nil 
end 
local bar=Instance.new("IntValue")
bar.Parent=Bin
bar.Name="ManaBar"
bar.Value=mana
 
function GetCase()
attack=true
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.5*i,0,0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5*i,0,0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
handle.Transparency=0
part1.Transparency=0
part2.Transparency=0
part3.Transparency=0
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0.5-0.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,0.5-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
--wait(1)
attack=false
end
 
function Transform()
attack=true
gyro.Parent=Torso
gyro.cframe=Torso.CFrame
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P + 10000
local CF = Torso.CFrame
bp.position = CF.p
bp.Parent = Torso
RWLFunc()
LWLFunc()
for i=0,1,0.1 do
wait()
bp.position = CF.p - Vector3.new(0,3,0)
handlew.C0=euler(1.57,1.57*i,0)*cf(-0.8*i,1,0)
handlew.C1=euler(0,0,-0.5*i)*cf(0,0,0)
Torso.Neck.C0=necko*euler(0.5*i,0,0)
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(1*i,0,0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(1*i,0,-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
    RWL.C0 = cf(1, -1, 0)*euler(-1.57*i,0,0)
    LWL.C0 = cf(-1, -1+1*i, -1*i)*euler(0,0,0)
end
handlew.C0=euler(1.57,0,0)*cf(0,1,0)
handlew.C1=euler(0,0,0)*cf(0,0,0)
bp.Parent=nil
gyro.Parent=nil
object1=true
local lesentri=Instance.new("Model")
lesentri.Parent=workspace
lesentri.Name="Tesla Coil"
Sentry=part3:Clone()
local sgyro = it("BodyGyro")
sgyro.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
sgyro.P = 20e+003 
sgyro.Parent=Sentry
sgyro.cframe=cf(0,0,0)*euler(0,0,1.57)
sbod = it("BodyPosition")
sbod.Parent=Sentry
sbod.position = Sentry.Position+Vector3.new(0,-5,0)
sbod.maxForce = vt(8e+080, 8e+080, 8e+080) 
bp.P = 10000000
sbod.position=Sentry.Position
Sentry.Parent=lesentri
Sentry.CanCollide=true
Sentry.CFrame=part3.CFrame
coroutine.resume(coroutine.create(function()
wait(1)
Sentry.Anchored=true
local part1=part(1,lesentri,0,0,BrickColor.new("Black"),"Head",vt(1,1,1))
Sentry.Name="Torso"
part1.CFrame=Sentry.CFrame
local mesh1=mesh("BlockMesh",part1,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local weld1=weld(part1,part1,Sentry,euler(0,0,0)*cf(0,0,0))
local h=Instance.new("Humanoid")
h.Parent=lesentri
for i=0,2,0.1 do
wait()
--weld1.C0=cf(10*i,0,0)
Sentry.Mesh.Scale=Sentry.Mesh.Scale+vt(0.3,0.1,0.1)
mesh1.Scale=mesh1.Scale+vt(1,0,0)
end
for i=0,1,0.1 do
wait()
mesh1.Scale=mesh1.Scale+vt(0,0.05,0.05)
end
Sentry.Anchored=false
coroutine.resume(coroutine.create(function()
count=0
Sentry.Anchored=true
for i=1,3 do
wait()
local part=part(1,lesentri,0.5,0,BrickColor.new("Black"),"Part",vt(1,1,1))
part.CFrame=part1.CFrame*CFrame.new(-5-count,0,0)
part.CanCollide=true
local mesh=mesh("SpecialMesh",part,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0,0,0))
local weld=weld(part,part,part1,euler(0,1.57,0)*cf(-5-count,0,0))
for i=0,1,0.1 do
wait()
mesh.Scale=mesh.Scale+Vector3.new(0.3,0.3,0.3)
end
coroutine.resume(coroutine.create(function(Part)
while Part.Parent~=nil do
wait()
for i=0,1,0.05 do
wait()
Part.Reflectance=Part.Reflectance+0.05
end
for i=0,1,0.05 do
wait()
Part.Reflectance=Part.Reflectance-0.05
end
end
end),part)
count=count+2
end
count=count+2.5
local part=part(1,lesentri,0,0.2,BrickColor.new("White"),"Part",vt(1,1,1))
part.CFrame=part1.CFrame*CFrame.new(-3-count,0,0)
local mesh=mesh("SpecialMesh",part,"Sphere","",vt(0,0,0),vt(0,0,0))
local weld=weld(part,part,part1,euler(0,1.57,0)*cf(-3-count,0,0))
for i=0,1,0.1 do
wait()
mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
end
coroutine.resume(coroutine.create(function(Part)
while Part.Parent~=nil do
wait(0.8)
print("durr")
local c = game.Workspace:GetChildren();
for i = 1, #c do
print("1")
 local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
print("2")
local head = c[i]:findFirstChild("Head");
if head ~= nil then
print("3")
local targ = head.Position - Part.Position;
local mag = targ.magnitude;
if mag <= 30 and c[i].Name ~= Player.Name and c[i].Name ~= Part.Parent.Name then 
--Lightning(p0,p1,tym,ofs,col,th,tra)
for i=1,5 do
Lightning(Part.Position,head.Parent.Torso.Position,3,2,"White",0.5,0.1)
end
attackdebounce=false
Damagefunc1(head,10,0)
end 
end 
end 
end 
end
end),part)
coroutine.resume(coroutine.create(function(Part)
while Part.Parent~=nil do
wait()
for i=0,1,0.05 do
wait()
Part.Reflectance=Part.Reflectance+0.05
end
for i=0,1,0.05 do
wait()
Part.Reflectance=Part.Reflectance-0.05
end
Part.Reflectance=0
end
end),part)
end))
coroutine.resume(coroutine.create(function(Model)
local Humoid=Model.Humanoid
durp=true
--while Humoid.Parent~=nil or Humoid.Health>=0 or object1==true do
while durp==true do
if Humoid.Parent==nil then
durp=false
end
if Model.Parent==nil then
durp=false
end
if Humoid.Health<=0 then
durp=false
end
if object1==false then
durp=false
end
wait()
end
print("dosh")
object1=false
Model:BreakJoints()
local c = Model:GetChildren()
for i=1,#c do
if c[i].className=="Part" then
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.01 do
wait()
Part.Transparency=Part.Transparency+0.01
end
Model.Parent=nil
Part.Parent=nil
end),c[i])
end
end
end),lesentri)
end))
part3.Transparency=1
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0)
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(1-1*i,0,0.5-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1-1*i,0,-0.5+0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
    RWL.C0 = cf(1, -1, 0)*euler(-1.57+1.57*i,0,0)
    LWL.C0 = cf(-1, -1+1-1*i, -1+1*i)*euler(0,0,0)
end
wait()
d=handle:Clone()
d.Parent=workspace
game.Debris:AddItem(d,4)
d=part1:Clone()
d.Parent=workspace
game.Debris:AddItem(d,4)
d=part2:Clone()
d.Parent=workspace
game.Debris:AddItem(d,4)
handle.Transparency=1
part1.Transparency=1
part2.Transparency=1
RWLRem()
LWLRem()
attack=false
end
 
function BreakFirst()
object1=false
print(object1)
end
 
function BreakSecond()
object2=false
print(object2)
end
 
function BreakThird()
object3=false
print(object3)
end
 
function BreakFourth()
object4=false
print(object4)
end
 
function BreakFifth()
object5=false
print(object5)
end
 
local RoarSound = it("Sound") 
RoarSound.SoundId = "http://www.roblox.com/asset/?id=1089403" 
RoarSound.Parent = Head
RoarSound.Volume = 1 
RoarSound.Pitch = pitch 
RoarSound.PlayOnRemove = true 
genroarsound=function(iter,start,conv)
    RoarSound.Volume=10/iter
    RoarSound.Pitch=start
    for k=1, iter do
     RoarSound.Pitch=RoarSound.Pitch-conv
    RoarSound:Play()
   end
end
 
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2) end 
function fade(prt,incr) coroutine.resume(coroutine.create(function() for i=prt.Transparency,1,incr do prt.Transparency=i wait() end prt:Remove'' end)) end
 
function shoottrail2(pos1,Damage) 
shot=true
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 300
rangepower = 10
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) --* (pos1.Position).magnitude/100
--local dir = Head.CFrame.lookVector+spreadvector 
--[[print(Head.CFrame.lookVector)
print(MMouse.Hit.p)]]
local pderp=part(1,modelzorz,0,1,BrickColor.new("Black"),"DarkBall",vt(1,1,1))
pderp.CFrame=LeftArm.CFrame*euler(-1.57,0,0)
local dir = pderp.CFrame.lookVector
pderp.Parent=nil
--local dir=MMouse.Hit.p
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,modelzorz)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
--[[local Smok=it("Smoke")
Smok.Parent=effectsg
Smok.Color=Color3.new(0,0,1)
Smok.Opacity=0.2
Smok.RiseVelocity=10
Smok.Size=0.2]]
local Fir=it("Fire")
Fir.Parent=effectsg
Fir.Color=Color3.new(0,0,1)
Fir.SecondaryColor=Color3.new(1,1,1)
Fir.Heat=20
Fir.Size=10
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(5,5,5)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Navy blue") 
effectsg.Transparency = 0.5
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
--effectsmsh.Scale = vt(1,mg*5,1)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
wait()
--Smok.Enabled=false
Fir.Enabled=false
effectsg.Transparency = 1
wait(1)
Fir.Parent=nil
effectsg:Remove()
end))
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
--[[local Smok=it("Smoke")
Smok.Parent=effectsg
Smok.Color=Color3.new(0,0,1)
Smok.Opacity=0.2
Smok.RiseVelocity=10
Smok.Size=0.2]]
local Fir=it("Fire")
Fir.Parent=effectsg
Fir.Color=Color3.new(0,0,1)
Fir.SecondaryColor=Color3.new(1,1,1)
Fir.Heat=20
Fir.Size=10
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(3,3,3)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black") 
effectsg.Transparency = 0.5
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
--effectsmsh.Scale = vt(1,mg*5,1)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
wait()
--Smok.Enabled=false
Fir.Enabled=false
effectsg.Transparency = 1
wait(1)
Fir.Parent=nil
effectsg:Remove()
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
--dir = dir
ammount=ammount-3
--print(Damg)
if decr == 2 then
Damg = Damg/2
decr=0
end
hit2,pos = rayCast(newpos,dir,inc,modelzorz)
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
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsg.BrickColor = BrickColor.new("Cyan") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait()
effectsg.Parent = nil 
end))
effectsg.Anchored = true 
MMMAGIC(effectsg,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(effectsg,5,5,5,0,0,0,BrickColor.new("Navy blue")) 
for i=1,5 do
MMMAGIC2(effectsg,1,3,1,0,0,0,BrickColor.new("Black")) 
end
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc2(hit2,math.floor(Damg*2),5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc2(hit2,math.floor(Damg*2),5)
end
end
end))
end
 
 
--[[function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
 
local sword=part(1,modelzorz,0,0.5,BrickColor.new("Navy blue"),"Sword",vt(3,3,3))
    local S=part(0,workspace,0,0,color,"Effect",vt(x1,y1,z1))
    local msh1=mesh("BlockMesh",S,"","",vt(0,0,0),vt(0.5,0.5,0.5))
    S.TopSurface=0
    S.BottomSurface=0
    S.Anchored=true
    S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end ]]
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
 
function GroundEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = it("SpecialMesh") 
    msh1.Scale = vt(0.5,0.5,0.5) 
    msh1.MeshType = "Sphere" 
    S=it("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=vt(1,1,1)
    S.BrickColor=color
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=CFrame.new(part.Position)*CFrame.new(x2,y2,z2)
--    S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(x1,y1,z1) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(x1,1,z1)
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
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0,y1,0) Part.CFrame=Part.CFrame Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(x1,1,z1)
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
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0,y1,0) Part.CFrame=Part.CFrame Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.CFrame=part.CFrame*CFrame.fromEulerAnglesXYZ(x3,y3,z3)*CFrame.new(x2,y2,z2)
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.5,-0.1,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
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
    S.CFrame=part.CFrame*CFrame.fromEulerAnglesXYZ(x3,y3,z3)*CFrame.new(x2,y2,z2)
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 8 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(2,-1.1,2) Part.Transparency=i*.2 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect3(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
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
    S.CFrame=part.CFrame*CFrame.fromEulerAnglesXYZ(x3,y3,z3)*CFrame.new(x2,y2,z2)
    S.Parent=workspace
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 18 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.5,0.2,0.5) Part.Transparency=i*.05 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,0.25)
end
end
 
print("Y U NU GIVE CREDIT.") 
 
DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
    if hit.Parent==nil then
        return
    end
    h=hit.Parent:FindFirstChild("Humanoid")
    t=hit.Parent:FindFirstChild("Torso")
    if h~=nil and t~=nil then
    if attackdebounce2 == false then 
    attackdebounce2 = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce2 = false 
    end)) 
    elseif attackdebounce2==true then return end
        if h.Parent==Character then
            return
        end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        if math.random(0,99)+math.random()<=7.8 then
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            s=it("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s.PlayOnRemove=true
            s.Parent=nil
    
        end
        h:TakeDamage(Damage) 
        showDamage(hit.Parent,Damage,.5) 
        game:GetService("Debris"):AddItem(vl,.2)
        rl=it("BodyAngularVelocity")
        rl.P=3000
        rl.maxTorque=vt(500000,500000,500000)*50000000000000
        rl.angularvelocity=vt(math.random(-3,3),math.random(-3,3),math.random(-3,3))
        rl.Parent=t
        game:GetService("Debris"):AddItem(rl,.05)
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=Pos.Position
        f.Parent=t
        game:GetService("Debris"):AddItem(f,.1)
    else
        if hit.CanCollide==false then
            return
        end
        MagicCom:disconnect()
--        DBExplode(DB)
    end
end
 
Damagefunc1=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="RawFullz0r" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
        Damage=Damage
        if Enemy==nil then
        Enemy=hit.Parent
        HP=Enemy.Humanoid.Health
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        if attack==false and Enemy~=nil and Enemy:findFirstChild("Humanoid")~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            if mana<400 then
            mana=mana+math.random(10,20)
            else
            mana=400
            end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*2
--            critsound(2) 
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=it("BodyVelocity")
        vp.P=500
        vp.maxForce=vt(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        vp.Parent=hit.Parent.Torso
--[[    if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end]]
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=it("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=vt(500000000,50000000000,500000000)*50000
        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        r.Parent=hit.Parent.Torso]]
        game:GetService("Debris"):AddItem(r,.5)
                c=it("ObjectValue")
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
 
Damagefunc2=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="RawFullz0r" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
        Damage=Damage
        if Enemy==nil then
        Enemy=hit.Parent
        HP=Enemy.Humanoid.Health
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        if attack==false and Enemy~=nil and Enemy:findFirstChild("Humanoid")~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            if mana<400 then
            mana=mana+math.random(10,20)
            else
            mana=400
            end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*2
--            critsound(2) 
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=it("BodyVelocity")
        vp.P=500
        vp.maxForce=vt(math.huge,0,math.huge)
--        vp.velocity=Head.CFrame.lookVector*Knockback
        vp.velocity=Head.CFrame.lookVector*Knockback
        vp.Parent=hit.Parent.Torso
--[[    if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end]]
        game:GetService("Debris"):AddItem(vp,.5)
--[[        r=it("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=vt(500000000,50000000000,500000000)*50000
        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        r.Parent=hit.Parent.Torso]]
        game:GetService("Debris"):AddItem(r,.5)
                c=it("ObjectValue")
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
 
Damagefunc3=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="RawFullz0r" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
        Damage=Damage
        if Enemy==nil then
        Enemy=hit.Parent
        HP=Enemy.Humanoid.Health
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        if attack==false and Enemy~=nil and Enemy:findFirstChild("Humanoid")~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            if mana<400 then
            mana=mana+math.random(10,20)
            else
            mana=400
            end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*2
--            critsound(2) 
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
    
        end
        Damage=Damage+math.random(0,5)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=it("BodyVelocity")
        vp.P=500
        vp.maxForce=vt(math.huge,math.huge,math.huge)
--        vp.velocity=Head.CFrame.lookVector*Knockback
        vp.velocity=(Head.CFrame.lookVector*Knockback+Head.Velocity/2) + Vector3.new(math.random(-30,30),5,math.random(-30,30))
        vp.Parent=hit.Parent.Torso
--[[    if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end]]
        game:GetService("Debris"):AddItem(vp,.5)
        r=it("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=vt(500000000,50000000000,500000000)*50000
        r.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
        r.Parent=hit.Parent.Torso
        game:GetService("Debris"):AddItem(r,.5)
                c=it("ObjectValue")
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
 
Damagefunc5=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="RawFullz0r" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
        Damage=Damage
        if Enemy==nil then
        Enemy=hit.Parent
        HP=Enemy.Humanoid.Health
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        if attack==false and Enemy~=nil and Enemy:findFirstChild("Humanoid")~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            if mana<400 then
            mana=mana+math.random(10,20)
            else
            mana=400
            end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*2
--            critsound(2) 
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
    
        end
        Damage=Damage+math.random(0,5)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=it("BodyVelocity")
        vp.P=500
        vp.maxForce=vt(math.huge,math.huge,math.huge)
--        vp.velocity=Head.CFrame.lookVector*Knockback
        vp.velocity=Vector3.new(0,Knockback,0)
        vp.Parent=hit.Parent.Torso
--[[    if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end]]
        game:GetService("Debris"):AddItem(vp,.5)
        r=it("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=vt(500000000,50000000000,500000000)*50000
        r.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
        r.Parent=hit.Parent.Torso
        game:GetService("Debris"):AddItem(r,.5)
                c=it("ObjectValue")
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
 
 
Damagefunc4=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="RawFullz0r" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce3 == false then 
    attackdebounce3 = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce3 = false 
    end)) 
        Damage=Damage
        if Enemy==nil then
        Enemy=hit.Parent
        HP=Enemy.Humanoid.Health
        end
        coroutine.resume(coroutine.create(function() 
        wait(1)
        if attack==false and Enemy~=nil then
        Did=HP-Enemy.Humanoid.Health
        print("Did "..Did.." Damage")
        Enemy=nil
        HP=0
        end
        end))
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            if mana<400 then
            mana=mana+math.random(10,20)
            else
            mana=400
            end
            c=it("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*2
            critsound(2) 
--[[            Knockback=Knockback*2
            r=it("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=vt(500000000,50000000000,500000000)*50000
            r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=it("BodyVelocity")
        vp.P=500
        vp.maxForce=vt(math.huge,math.huge,math.huge)
--        vp.velocity=Head.CFrame.lookVector*Knockback
        vp.velocity=Vector3.new(0,-40,0)
        vp.Parent=hit.Parent.Torso
--[[    if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end]]
        game:GetService("Debris"):AddItem(vp,.2)
        r=it("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=vt(500000000,50000000000,500000000)*50000
        r.angularvelocity=vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        r.Parent=hit.Parent.Torso
        game:GetService("Debris"):AddItem(r,.5)
                c=it("ObjectValue")
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
    m=it("Model")
    m.Name=tostring(Dealt)
    h=it("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=it("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=vt(1,.4,1)
    ms=it("CylinderMesh")
    ms.Scale=vt(.8,.8,.8)
    if CRIT==true then
        ms.Scale=vt(1.25,1.5,1.25)
    end
    ms.Parent=c
    c.Reflectance=0
    it("BodyGyro").Parent=c
    c.Parent=m
    c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
    f=it("BodyPosition")
    f.P=2000
    f.D=100
    f.maxForce=vt(math.huge,math.huge,math.huge)
    f.position=c.Position+vt(0,3,0)
    f.Parent=c
    game:GetService("Debris"):AddItem(m,.5+du)
    c.CanCollide=false
    m.Parent=workspace
    c.CanCollide=false
end
 
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
 
hold = false 
combo=0
 
function ob1d(mouse) 
hold = true 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function Key(key,mouse) 
if attack == true then return end 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = cf(-0.5, -1.5, 0) * euler(0,0,0) 
RHP.C1 = cf(0, 0.5, 0) 
LHP.C0 = cf(0.5, -1.5, 0) * euler(0,0,0) 
LHP.C1 = cf(0, 0.5, 0) ]]
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) --* euler(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
if key=="f" then
if briefcase==false then
briefcase=true
GetCase()
else
briefcase=false
Transform()
end
end
if key=="z" then
BreakFirst()
end
if key=="x" then
BreakSecond()
end
if key=="c" then
BreakThird()
end
if key=="v" then
BreakFourth()
end
if key=="b" then
BreakFifth()
end
Torso.Neck.C0=necko
RW.Parent = nil 
LW.Parent = nil 
for i=0,1,0.1 do
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end
end 
 
function Key2(key,mouse) 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
MMouse = mouse 
sheathed = false  
end 
 
function ds(mouse) 
sheathed = true 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
coroutine.resume(coroutine.create(function()
while true do
wait()
print("Derp1")
backing1.Position = UDim2.new(0.1,0,0.3,0)
while object1==false do
wait()
end
for i=0,1,0.1 do
wait()
backing1.Position = backing1.Position + UDim2.new(0,0,0.005,0)
end
while object1==true do
wait()
end
for i=0,1,0.1 do
wait()
backing1.Position = backing1.Position - UDim2.new(0,0,0005,0)
end
end
end))
 
 
-- lego This acts as a chat filter. Don't ask why I do it. I just do >.> 
-- mediafire STOOPID ROBLOX, Y U ALLOW LEGO NAO
--[[ 
Copyrighted (C) Fenrier 2012 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
 
