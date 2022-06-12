
--[[
~mFen 
Copyrighted Fenrier.
]] 
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
attackdebounce2 = false 
attackdebounce3 = false 
swordattack=false
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
slash=false
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
shootmode=false
mana=400
offset=nil
ammo=3
currentam=0
KABOOM=false
canusepenumbra=true
kicking=false
Did=0
shot=false
Enemy=nil
HP=0
grabbed=false
colors={"Black","Navy blue"}
random=nil
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
bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 
summon=false
Enemy=nil
floateffect=true
CF=cf(-1.5,0.5,0) * euler(0.7,0,-0.3) 
 
if Character:findFirstChild("Grande",true) ~= nil then 
Character:findFirstChild("Grande",true).Parent = nil 
end 
if Character:findFirstChild("Weapon",true) ~= nil then 
Character:findFirstChild("Weapon",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
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
modelzorz.Name = "Grande" 
modelzorz.Parent = Character 
 
 
local basep=part(1,modelzorz,0,1,BrickColor.new("Black"),"BasePart",vt(1,1,1))
basep.Parent=nil
local basew=Instance.new("Weld")
 
local handle=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local part2=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part2",vt(1,1,1))
local part3=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(1,1,1))
local part4=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
local part5=part(1,modelzorz,0,1,BrickColor.new("Black"),"Part5",vt(3,5,1))
local part6=part(1,modelzorz,0.2,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local part7=part(1,modelzorz,0.2,0,BrickColor.new("Light stone grey"),"Part7",vt(1,1,1))
local part8=part(1,modelzorz,0.2,0,BrickColor.new("Navy blue"),"Part8",vt(1,1,1))
local part9=part(1,modelzorz,0.1,0,BrickColor.new("Navy blue"),"Part9",vt(1,1,1))
local part10=part(1,modelzorz,0.1,0,BrickColor.new("Navy blue"),"Part10",vt(1,1,1))
local part11=part(1,modelzorz,0.1,0,BrickColor.new("Navy blue"),"Part11",vt(1,1,1))
local part12=part(1,modelzorz,0.1,0,BrickColor.new("Navy blue"),"Part12",vt(1,1,1))
local part13=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part13",vt(1,1,1))
local part14=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part14",vt(1,1,1))
local part15=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part15",vt(1,1,1))
 
local mesh1=mesh("CylinderMesh",handle,"","",vt(0,0,0),vt(0.7, 2, 0.7))
local mesh2=mesh("SpecialMesh",part2,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(2,2,3))
local mesh3=mesh("CylinderMesh",part3,"","",vt(0,0,0),vt(1.5, 0.2, 1.5))
local mesh4=mesh("BlockMesh",part4,"","",vt(0,0,0),vt(0.4, 1.8, 0.2))
local mesh5=mesh("BlockMesh",part5,"","",vt(0,0,0),vt(1, 1, 1))
local mesh6=mesh("BlockMesh",part6,"","",vt(0,0,0),vt(1.3, 3.4, 0.5))
local mesh7=mesh("BlockMesh",part7,"","",vt(0,0,0),vt(2, 2.9, 0.1))
local mesh8=mesh("BlockMesh",part8,"","",vt(0,0,0),vt(2.1, 0.7, 0.2))
local mesh9=mesh("SpecialMesh",part9,"Wedge","",vt(0,0,0),vt(0.1,1.5,1.5))
local mesh10=mesh("SpecialMesh",part10,"Wedge","",vt(0,0,0),vt(0.1,1.5,1.5))
local mesh11=mesh("CylinderMesh",part11,"","",vt(0,0,0),vt(0.1,0.084,0.1))
local mesh12=mesh("BlockMesh",part12,"","",vt(0,0,0),vt(0.1,0.084,1.3))
local mesh13=mesh("BlockMesh",part13,"","",vt(0,0,0),vt(0.8, 2, 0.7))
local mesh14=mesh("CylinderMesh",part14,"","",vt(0,0,0),vt(0.71, 1, 0.71))
local mesh15=mesh("SpecialMesh",part15,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.7,0.7,0.7))
 
local weld1=weld(handle,handle,Torso,cf(0,-4,-0.7)*euler(0,0,-0.8))
local weld2=weld(part2,part2,handle,euler(0,0,0) * cf(0,2,0))
local weld3=weld(part3,part3,handle,euler(1.57,0,0) * cf(0,2,0))
local weld4=weld(part4,part4,handle,euler(0,0,0) * cf(0,2,0))
local weld5=weld(part5,part5,handle,euler(0,0,0) * cf(0,4,0))
local weld6=weld(part6,part6,handle,euler(0,0,0) * cf(0,4.9,0))
local weld7=weld(part7,part7,handle,euler(0,0,0) * cf(0,4.65,0))
local weld8=weld(part8,part8,handle,euler(0,0,0) * cf(0,6,0))
local weld9=weld(part9,part9,handle,euler(0,-1.57,3.14) * cf(-0.8,6.8,0))
local weld10=weld(part10,part10,handle,euler(0,1.57,3.14) * cf(0.8,6.8,0))
local weld11=weld(part11,part11,handle,euler(1.57,0,0) * cf(0,7.68,0))
local weld12=weld(part12,part12,handle,euler(1.57,0,0) * cf(0,7,0))
local weld13=weld(part13,part13,handle,euler(0,0,0) * cf(0,4,0))
local weld14=weld(part14,part14,handle,euler(0,0,0) * cf(0,0,0))
local weld15=weld(part15,part15,handle,euler(0,0,0) * cf(0,-1.2,0))
 
inc=0
for i=1,8 do
local part=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part",vt(1,1,1))
local mesh=mesh("SpecialMesh",part,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.7,0.3))
local weld=weld(part,part,part2,cf(0,1.25,0)*euler(0,0,inc))
inc=inc+0.785
--9756362
end
 
--[[
bodypos=Instance.new("BodyPosition")
bodypos.Parent=handle
bodypos.P=5000
bodypos.D=500
bodypos.maxForce=Vector3.new(500000000000000,500000000000000,5000000000000000)*500000000
bodygy=Instance.new("BodyGyro")
bodygy.maxTorque=Vector3.new(50000000000000000,50000000000000000000000,50000000000000000000)*500
bodygy.P=5000
bodygy.D=500
bodygy.Parent=handle
coroutine.resume(coroutine.create(function()
while true do
wait()
bodypos.Parent=handle
bodypos.P=500000
bodypos.D=5000
bodypos.maxForce=Vector3.new(500000000000000,500000000000000,5000000000000000)*500000000
bodygy.maxTorque=Vector3.new(50000000000000000,50000000000000000000000,50000000000000000000)*500
bodygy.P=5000
bodygy.D=500
bodygy.Parent=handle
bodypos.position=(Torso.CFrame*CFrame.new(2,0,0)).p-Torso.CFrame.lookVector*4.25+Vector3.new(0,5+math.cos(time())*.1,0)
bodygy.cframe=CFrame.new(handle.Position,handle.Position+Torso.CFrame.lookVector*50)
--bodypos.Parent=nil
--bodygy.Parent=nil
end
end))
coroutine.resume(coroutine.create(function()
while true do
wait(1)
bodypos.Parent=nil
bodygy.Parent=nil
end
end))
]]
 
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
Tool.Name = "Grande" 
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
 
function unequipweld() 
--[[for i=0,1,0.1 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+0.5*i,0,0) 
end]]
end 
 
function equipweld() 
basep.Parent=modelzorz
basew.Parent=basep
basew.Part0=basep
basew.Part1=Torso
basew.C0=cf(2,-5,-1.5)*euler(0,0,0)
weld1.Part0=handle
weld1.Part1=basep
weld1.C0=cf(0,0,0)*euler(0,0,0)
for i=0,1,0.1 do
wait()
--weld1.C0=cf(2*i,-4-1*i,-0.7-0.8*i)*euler(0,0,-0.8+0.8*i)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.7*i,0,-0.2*i) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,0) 
end
end 
 
function hideanim() 
equipped=false
Torso.Neck.C0=necko*euler(0,0,0)
unequipweld() 
wait(0.2) 
basep.Parent=nil
weld1.Parent=handle
weld1.Part0=handle
weld1.Part1=Torso
weld1.C0=cf(0,-4,-0.7)*euler(0,0,-0.8)
Torso.Neck.C0=necko*euler(0,0,0)
end 
 
function equipanim(mouse) 
equipped=true
equipweld() 
wait(1)
--Torso.Neck.C0=necko*euler(0,0,0)
end 
 
function Stance()
 
end
 
function Say(type)
--[[
if type==1 then
Sayings={"That didn't do much.","What?","Derp."}
if Did>=25 and Did<50 then
Sayings={"You can do better.","Not done yet."}
elseif Did>=50 and Did<75 then
Sayings={"That's gotta hurt.","I'm just getting started."}
elseif Did>=75 and Did<100 then
Sayings={"Oh, you're still alive?","Might as well just give up now.","Make this more exciting will you?"}
elseif Did>=100 then
Sayings={"And you're dead.","Well that was disappointing.","To hell with you!","I'm having too much fun."}
end
c=math.random(1,3)
if Did>25 then c=1 end
if c==1 then
game:GetService("Chat"):Chat(Character,Sayings[math.random(1,#Sayings)],2)
end
elseif type==2 then
Sayings={"Come at me, bro.","Show me what you got.","Come on, i'm getting bored."}
game:GetService("Chat"):Chat(Character,Sayings[math.random(1,#Sayings)],2)
end
]]
end
 
function oneslash()
attack=true
for i=0,1,0.1 do
wait()
basew.C0=euler(0,0,0)*cf(2-2*i,-5,-1.5+2*i)
weld1.C0=cf(0,0,0)*euler(0,1.57*i,0)
weld1.C1=cf(0,0,0)*euler(-1*i,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+3*i,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
ss(0.8)
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.1 do
wait()
basew.C0=euler(0,0,0)*cf(0,-5+5*i,-1.5+2+2*i)
weld1.C0=cf(0,0,0)*euler(0,1.57,0)
weld1.C1=cf(0,0,0)*euler(-1-4*i,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+3-2*i,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
wait(0.2)
con1:disconnect()
attack=false
end
 
function twoslash()
attack=true
for i=0,1,0.1 do
wait()
--4.71
basew.C0=euler(0,0,0)*cf(1.5*i,-1*i,2.5+0.5*i)
weld1.C0=cf(0,0,0)*euler(0,1.57-1.57*i,0)
weld1.C1=cf(0,0,0)*euler(-5+0.29*i,0,1.57*i)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.5+1.07*i,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
bod.Parent = Torso
bod.position = Torso.Position 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
gyro.P = gyro.P + 2000
local CF = Torso.CFrame
gyro.cframe = CF
gyro.Parent = Torso
ss(0.6)
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
for i=0,1,0.05 do
wait()
gyro.cframe = CF * CFrame.Angles(0,math.rad(360*i),0)
basew.C0=cf(1.5,-1,3)*euler(0,-1.57*i,0)
weld1.C0=cf(0,0,0)*euler(0,0,0)
weld1.C1=cf(0,0,0)*euler(-4.71,0,1.57-1.57*i)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57,0,-1.57*i) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
con1:disconnect()
attack=false
coroutine.resume(coroutine.create(function()
wait(0.5)
gyro.Parent=nil
bod.Parent=nil
end))
end
 
function threeslash()
attack=true
for i=0,1,0.1 do
wait()
basew.C0=cf(1.5-1.5*i,-1-4*i,3-5*i)*euler(0,-1.57+1.57*i,0)
weld1.C0=cf(0,0,0)*euler(0,0,0)
weld1.C1=cf(0,0,0)*euler(-4.71-0.5*i,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(1.57+0.43*i,0,-1.57+2.07*i) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
wait(0.2)
ss(0.7)
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,20,30) end) 
for i=0,1,0.2 do
wait()
basew.C0=cf(0,-5+4*i,-2+7*i)*euler(0,0,0)
weld1.C0=cf(0,0,0)*euler(0,0,0)
weld1.C1=cf(0,0,0)*euler(-5.21-0.3*i,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(2-1*i,0,0.5-0.5*i) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
con1:disconnect()
wait(0.5)
attack=false
end
 
function SlashCombo1()
attack=true
attack=false
end
 
function Summon1()
attack=true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 5000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57*i)
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+3.64*i,0,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(3.14,0,1.57*i) 
end
wait(0.1)
SummonSword(RightArm,CFrame.fromEulerAnglesXYZ(1.47,0,0),CFrame.new(0,0,5))
SummonSword(RightArm,CFrame.fromEulerAnglesXYZ(1.67,0,0),CFrame.new(0,0,5))
attack=false
end
 
function Summon2()
attack=true
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(3.14,0,1.57*i) 
end
SummonSword(RightArm,CFrame.fromEulerAnglesXYZ(1.57,0,1.57),CFrame.new(0,0,3))
attack=false
end
 
function Summon3()
attack=true
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(3.14,0,1.57*i) 
end
inc=-2
for i=1,5 do
wait(0)
SummonSword(RightArm,CFrame.fromEulerAnglesXYZ(0,-1.57,0)*CFrame.new(0,inc,-5),CFrame.new(0,0,3))
inc=inc-5
end
attack=false
end
 
function Summon4()
attack=true
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(3.14,0,1.57*i) 
end
inc=0
for i=1,8 do
SummonSword(RightArm,CFrame.new(0,-20,0)*CFrame.fromEulerAnglesXYZ(inc,0,0),CFrame.new(0,0,3))
inc=inc+0.785
end
attack=false
end
 
function Summon5()
attack=true
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(3.14,0,1.57*i) 
end
if Enemy~=nil then
for i=1,8 do
coroutine.resume(coroutine.create(function()
SummonSword(Enemy.Torso,CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),0)*CFrame.new(0,0,-20),CFrame.new(0,0,4))
end))
end
else
local tpart=part(1,workspace,0,0.5,BrickColor.new("Black"),"Nope",vt(2,2,2))
tpart.CFrame=RightArm.CFrame*CFrame.new(0,-20,0)
tpart.Anchored=true
for i=1,8 do
coroutine.resume(coroutine.create(function()
SummonSword(tpart,CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),0)*CFrame.new(0,0,-20),CFrame.new(0,0,4))
end))
end
tpart.Parent=nil
end
--[[]]
attack=false
end
 
function SummonCombo1()
attack=true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 3000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+2.5*i,0,-0.5*i) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
RW.C0 = cf(1.5,0.5,0) * euler(2-1*i,0,-0.5) 
end
SummonSword(Head,cf(0,-1,-5)*euler(0,3.14,0),CFrame.new(0,0,3))
wait(0.2)
attack=false
end
 
function SummonCombo2()
attack=true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 3000
bg.Parent = Head
bg.cframe=Head.CFrame
bg.P = 9000
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(2-1,0,-0.5+2.07) 
wait(0.3)
if Enemy~=nil then
SummonSword2(Enemy.Torso,CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),0)*CFrame.new(0,0,-15),CFrame.new(0,0,5))
end
attack=false
end
 
function SummonCombo3()
attack=true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 3000
bg.Parent = Head
bg.cframe=Head.CFrame
bg.P = 9000
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.57)
RW.C0 = cf(1.5,0.5,0) * euler(1,0,1.57) 
wait(0.3)
if Enemy~=nil then
SummonSword3(Enemy.Torso,Vector3.new(0,30,0),Vector3.new(0,-5,0))
end
attack=false
end
 
 
function Impulse()
attack=true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 3000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new(random)) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,-1*i) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5-0.5*i,0,0) 
end
for i=0,1,0.1 do
wait(0)
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Head.CFrame.lookVector*30
bg.P = 100000
for i=0,1,0.2 do
wait()
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new(random)) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1-2.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1) 
RW.C0 = cf(1.5,0.5,0) * euler(-1+1*i,0,1.57*i) 
end
vel.Parent=nil
for i=0,1,0.15 do
wait(0)
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
MMMAGIC(RightArm,4,4,4,0,-1,0,BrickColor.new("Navy blue")) 
MMMAGIC(RightArm,4,4,4,0,-1,0,BrickColor.new("Black")) 
lacf=RightArm.CFrame
coroutine.resume(coroutine.create(function() 
local derppart=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(1,1,1))
derppart.Anchored=true
derppart.CFrame=lacf*CFrame.new(0,-1,0)
for i=1,50 do
wait()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - derppart.Position;
local mag = targ.magnitude;
if mag <= 7 and c[i].Name ~= Player.Name then 
DOHHit(head,math.random(1,3),derppart)
end 
end 
end 
end 
MMMAGIC2(lacf,3,3,3,0,-1,0,BrickColor.new(random)) 
MMMAGIC3(lacf,1,4,1,0,-1,0,BrickColor.new(random)) 
end
derppart.Parent=nil
end))
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Head.CFrame.lookVector*-30
bg.P = 100000
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1-2.57+2.57*i)
end
vel.Parent=nil
bg.Parent=nil
attack=false
end
 
function ss(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .4 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = Head
--game:service'Lighing'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function thwack(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=46153268" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 
 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
 
function SummonSword(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Navy blue"),"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
smesh.VertexColor=Vector3.new(0, 0, 0.8)
sword.CFrame=Part.CFrame*cframe1
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
for i=0,1,0.2 do
wait()
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
Damagefunc2(hit2,5,1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
Damagefunc2(hit2,5,1)
end
end
sword.CFrame=sword.CFrame*cframe2
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
sword.Parent=nil
end))
end
 
function SummonSword2(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Navy blue"),"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc3(hit,1,10) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
smesh.VertexColor=Vector3.new(0, 0, 0.8)
sword.CFrame=Part.CFrame*cframe1
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
for i=0,1,0.2 do
wait()
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
Damagefunc3(hit2,1,10)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
Damagefunc3(hit2,1,10)
end
end
sword.CFrame=sword.CFrame*cframe2
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
sword.Parent=nil
end))
end
 
function SummonSword3(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Navy blue"),"Sword",vt(4,4,4))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc4(hit,30,0) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(10,10,10))
--smesh.Parent=nil
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
smesh.VertexColor=Vector3.new(0, 0, 0.8)
--sword.CFrame=Part.CFrame*cframe1
sword.CFrame=CFrame.new(Part.Position+cframe1)*CFrame.fromEulerAnglesXYZ(1.57,0,0)
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
for i=0,6,0.2 do
wait()
WaveEffect(sword,1,1,1,0,0,8,-1.57,0,0,BrickColor.new("Navy blue")) 
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Name=="Base" then sword.Anchored=true EVENMOARMAGIX(sword,6,6,6,0,0,0,0,0,0,BrickColor.new("Navy blue")) coroutine.resume(coroutine.create(function() wait(5) for i=0,1,0.1 do wait() sword.Transparency=sword.Transparency+0.1 end sword.Parent=nil end)) return end
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
Damagefunc4(hit2,20,0)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
Damagefunc4(hit2,20,0)
end
end
sword.CFrame=CFrame.new(sword.Position+cframe2)*CFrame.fromEulerAnglesXYZ(1.57,0,0)
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
sword.Parent=nil
end))
end
 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        print(S.Parent)
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.1,0) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.3,0) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(x1,y1,z1) 
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
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=it("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=vt(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*cf(0,cframe,0)
                p2.Parent=Character
                m=it("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-vt(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*cf(dir)*euler(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.15 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function EVENMOARMAGIX3(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
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
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function ChargeEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
 
function ChargeEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position+vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
 
print("Y U NU GIVE CREDIT.") 
 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
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
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
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
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.5,0.8,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
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
--[[                        Knockback=Knockback*2
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
--                DBExplode(DB)
        end
end
 
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
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
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
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
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*2
                        critsound(2) 
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                vp.Parent=hit.Parent.Torso
--[[        if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end]]
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
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
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
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
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
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
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*2
                        critsound(2) 
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.Parent=hit.Parent.Torso
--[[        if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end]]
                game:GetService("Debris"):AddItem(vp,.5)
--[[                r=it("BodyAngularVelocity")
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
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
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
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
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
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*2
                        critsound(2) 
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,math.huge,math.huge)
--                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.velocity=Vector3.new(0,40,0)
                vp.Parent=hit.Parent.Torso
--[[        if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end]]
                game:GetService("Debris"):AddItem(vp,.2)
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
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
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
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
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
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*2
                        critsound(2) 
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,math.huge,math.huge)
--                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.velocity=Vector3.new(0,-40,0)
                vp.Parent=hit.Parent.Torso
--[[        if Knockback>0 then
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
 
function Norm()
wait(0.5)
if attack==false then Say(1) end
if Did~=0 then print("Did "..Did.." units of damage") Did=0 end
Enemy=nil
HP=0
swordattack=false
Torso.Neck.C0=necko
basew.C0=euler(0,0,0)*cf(2,-5,-1.5)
weld1.C0=cf(0,0,0)*euler(0,0,0)
weld1.C1=cf(0,0,0)*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0.7,0,-0.3) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
end
 
hold = false 
combo=0
 
function ob1d(mouse) 
swordattack=true
if attack == true then return end 
bg.Parent=nil
if combo==0 then
combo=1
oneslash()
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Norm()
end
end))
elseif combo==1 then
combo=2
twoslash()
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Norm()
end
end))
elseif combo==2 then
combo=0
threeslash()
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Norm()
end
end))
end
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function Key(key,mouse) 
if attack == true then return end 
if key=="q" then
Impulse()
end
if key=="e" then
if Enemy==nil then
interval=0
SummonCombo1()
else
if interval<10 then
interval=interval+1
print(interval)
SummonCombo2()
else
print("ENDED")
interval=0
SummonCombo3()
Enemy=nil
wait(1)
Enemy=nil
return
end
end
end
if key=="z" then
if summon==false then
summon=true
Summon1()
else
Summon2()
end
end
if summon==true then
if key=="x" then
Summon3()
end
if key=="c" then
Summon4()
end
if key=="v" then
Summon5()
end
end
coroutine.resume(coroutine.create(function() 
for i=0,2,0.1 do
if attack==false then
wait()
end
end
if attack==false then
wait()
summon=false
bg.Parent=nil
--basew.C0=euler(0,0,0)*cf(2,-5,-1.5)
weld1.C0=cf(0,0,0)*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = CF
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0) 
return end
end))
combo=0
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
 
equipanim(mouse) 
end 
 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
increase=0
coroutine.resume(coroutine.create(function()
while true do
wait()
random=colors[math.random(1,#colors)]
RH.Part0 = Torso
LH.Part0 = Torso
if mana < 0 then 
mana = 0
end 
if mana >= 400 then 
mana=400 
end
increase = increase + 1 
if increase == 5 then 
if mana < 400 then 
mana = mana + 1 
end 
increase = 0 
end 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Dark Energy("..mana..")" 
end 
end))
 
CF=cf(-1.5,0.5,0) * euler(0.7,0,-0.2) 
coroutine.resume(coroutine.create(function()
while true do
wait()
if sheathed==false and floateffect==true and swordattack==false then
for i=0,1,0.01 do
if swordattack==false then
wait()
CF=cf(-1.5,0.5,0) * euler(0.7+0.5*i,0,-0.2) 
LW.C0 = CF
basew.C0=euler(0,0,0)*cf(2,-4.5-1*i,-1.5)
end
end
for i=0,1,0.01 do
if swordattack==false then
wait()
CF=cf(-1.5,0.5,0) * euler(0.7+0.5-0.5*i,0,-0.2) 
LW.C0 = CF
basew.C0=euler(0,0,0)*cf(2,-5.5+1*i,-1.5)
end
end
end
end
end))
-- lego mediafire This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2012 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
 
