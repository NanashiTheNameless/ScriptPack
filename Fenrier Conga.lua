--[[
Conga Script Made by Fenrier.
]] 
Player = game:GetService("Players").LocalPlayer
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
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
MMouse=nil
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RH, LH = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
RH.Name="Right Hip" LH.Name="Left Hip"
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
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
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "CONGA" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
congaing=it("BoolValue")
congaing.Parent=Character
congaing.Name="Conga-ing"
congaing.Value=false
 
function CongaTouch(hit)
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil and hit.Parent:findFirstChild("CONGA")==nil then
b=Instance.new("BoolValue")
b.Name="CONGA"
b.Parent=hit.Parent
b.Value=true
print("CONGAAAAAA")
s=game.Lighting.CONGASCRIPT:Clone()
s.Parent=hit.Parent
s.Disabled=true
wait(0.5)
s.Disabled=false
--NLS(Game:GetService("HttpService"):GetAsync('http://titanpad.com/ep/pad/export/fen/latest?format=txt',true),game.Players:GetPlayerFromCharacter(hit.Parent))
end
end
 
function EngieConga()
con1=Torso.Touched:connect(function(hit) CongaTouch(hit) end) 
congaing.Value=true
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
LHP=ch.Torso["Left Hip"]
RHP=ch.Torso["Right Hip"]
--
RHP.Parent = nil 
LHP.Parent = nil 
-- 
RH.Part0 = ch.Torso 
RH.C0 = cf(0.5, -1.5, 0)
RH.C1 = cf(0, 0.5, 0) 
RH.Part1 = ch["Right Leg"] 
RH.Parent = ch.Torso 
--_G.R = RW 
-- 
LH.Part0 = ch.Torso 
LH.C0 = cf(-0.5, -1.5, 0)
LH.C1 = cf(0, 0.5, 0) 
LH.Part1 = ch["Left Leg"] 
LH.Parent = ch.Torso 
--_G.L = LW 
--
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1.5,0)*euler(0,0,0)
RH.C1=cf(0,0.5,0)*euler(0,0,0)
LH.C0=cf(-0.5,-1.5,0)*euler(0,0,0)
LH.C1=cf(0,0.5,0)*euler(0,0,0)
Torso.Neck.C0=necko*euler(-0.2,0,-0.1)
RootJoint.C0=RootCF*euler(0,0.1,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.4)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(1.5,0,1)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3,0,0.2)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2,0,-0.3)
coroutine.resume(coroutine.create(function(CanConga)
local vel=Instance.new("BodyVelocity")
vel.Parent=RootPart
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=RootPart.CFrame.lookVector*5
while CanConga.Value==true do
wait()
vel.velocity=RootPart.CFrame.lookVector*5
end
vel.Parent=nil
end),congaing)
while congaing.Value==true do
wait()
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.2+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+1*i,0,0.4-0.6*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.5-1.7*i,0,1-1.4*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5*i,0,0.2+0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.5*i,0,-0.3+0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.2+0.05+0.05*i,0,0.1-0.2*i)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.8-1*i,0,-0.2+0.6*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+1.2*i,0,-0.4+0.4*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5-0.5*i,0,0.2+0.1-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.5+0.5*i,0,-0.3+0.1-0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.6*i,0,0.4-0.3*i)
LW.C0=cf(-1.5,0.5,0)*euler(1-1.4*i,0,-0.2*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5*i,0,0.2-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.7*i,0,-0.3+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05-0.3*i,0,0.1-0.3*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2-0.4*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.4+2.4*i,0,0.1+0.1*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.4+2.8*i,0,-0.2+0.4*i)
RH.C0=cf(0.5+0.1*i,-1.5,0)*euler(0.2-0.3*i,0,0.1+0.4*i)
LH.C0=cf(-0.5-0.4*i,-1.5,0)*euler(-0.5+0.5*i,0,-0.1-0.8*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05-0.3+0.35*i,0,-0.2+0.4*i)
RootJoint.C0=RootCF*euler(0,-0.5+0.7*i,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8-3*i,0,0.2+0.1*i)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(2.4-0.9*i,0,0.2+0.8*i)
RH.C0=cf(0.5+0.1-0.1*i,-1.5,0)*euler(-0.1-0.1*i,0,0.5-0.4*i)
LH.C0=cf(-0.5-0.4+0.4*i,-1.5,0)*euler(0.3*i,0,-0.9+0.7*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1*i,0,0.2-0.3*i)
RootJoint.C0=RootCF*euler(0,0.2-0.3*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.5*i,0,0.3-0.2*i)
LW.C0=cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i)*euler(1.5-1.8*i,0,1-1.3*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.2+0.4*i,0,0.1+0.2*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.3-0.5*i,0,-0.2-0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.3-0.8*i,0,0.1+0.1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.3+1*i,0,-0.3+0.1*i)
RH.C0=cf(0.5,-1.5,0)*euler(0.2-0.5*i,0,0.3-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(-0.2+0.4*i,0,-0.3+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.05-0.2*i,0,0.1-0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.5+2.5*i,0,0.2+0.8*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0.7+1.3*i,0,-0.2+1.2*i)
RH.C0=cf(0.5+0.2*i,-1.5,0)*euler(-0.3+0.3*i,0,0.2+1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.4*i,0,-0.1+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.25+0.05*i,0,-0.1)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(2-2.2*i,0,1-0.6*i)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(2-0.5*i,0,1)
RH.C0=cf(0.5+0.2-0.2*i,-1.5,0)*euler(-0.3*i,0,1.2-1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(-0.2+0.4*i,0,0.1-0.4*i)
end
end
con1:disconnect()
end
 
function UnConga()
congaing.Value=false
wait()
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
RH.Parent = nil 
LH.Parent = nil 
RHP.Parent = player.Character.Torso 
LHP.Parent = player.Character.Torso 
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
RH.C0=cf(0.5,-1.5,0)*euler(0,0,0)
LH.C0=cf(-0.5,-1.5,0)*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
end
 
function CongaOther(OtherCharacter)
othCharacter=OtherCharacter
othTorso=othCharacter.Torso 
othHead=othCharacter.Head 
othHumanoid=othCharacter.Humanoid
othLeftArm=othCharacter["Left Arm"] 
othLeftLeg=othCharacter["Left Leg"] 
othRightArm=othCharacter["Right Arm"] 
othRightLeg=othCharacter["Right Leg"] 
oLS=othTorso["Left Shoulder"] 
oLH=othTorso["Left Hip"] 
oRS=othTorso["Right Shoulder"] 
oRH=othTorso["Right Hip"] 
oNeck=othTorso.Neck
oRootPart=othCharacter.HumanoidRootPart
oRootJoint=oRootPart.RootJoint
oRSH, oLSH = nil, nil 
--welds 
oRW, oLW = Instance.new("Weld"), Instance.new("Weld") 
oRH, oLH = Instance.new("Weld"), Instance.new("Weld") 
oRW.Name="Right Shoulder" oLW.Name="Left Shoulder"
oRH.Name="Right Hip" oLH.Name="Left Hip"
och = othCharacter 
if och.Torso:findFirstChild("Right Shoulder")~=nil then
oRSH = och.Torso["Right Shoulder"] 
oRSH.Parent = nil 
end
if och.Torso:findFirstChild("Left Shoulder")~=nil then
oLSH = och.Torso["Left Shoulder"] 
oLSH.Parent = nil 
end
-- 
-- 
oRW.Part0 = och.Torso 
oRW.C0 = ocf(1.5, 0.5, 0)
oRW.C1 = ocf(0, 0.5, 0) 
oRW.Part1 = och["Right Arm"] 
oRW.Parent = och.Torso 
--_G.R = RW 
-- 
oLW.Part0 = och.Torso 
oLW.C0 = ocf(-1.5, 0.5, 0)
oLW.C1 = ocf(0, 0.5, 0) 
oLW.Part1 = och["Left Arm"] 
oLW.Parent = och.Torso 
--_G.L = LW 
--
if och.Torso:findFirstChild("Left Hip")~=nil then
oLHP=ch.Torso["Left Hip"]
oLHP.Parent = nil 
end
if och.Torso:findFirstChild("Right Hip")~=nil then
oRHP=ch.Torso["Right Hip"]
oRHP.Parent = nil 
end
--
-- 
oRH.Part0 = och.Torso 
oRH.C0 = ocf(0.5, -1.5, 0)
oRH.C1 = ocf(0, 0.5, 0) 
oRH.Part1 = och["Right Leg"] 
oRH.Parent = och.Torso 
--_G.R = RW 
-- 
oLH.Part0 = och.Torso 
oLH.C0 = ocf(-0.5, -1.5, 0)
oLH.C1 = ocf(0, 0.5, 0) 
oLH.Part1 = och["Left Leg"] 
oLH.Parent = och.Torso 
--_G.L = LW 
--
oRW.C0=cf(1.5,0.5,0)*euler(0,0,0)
oRW.C1=cf(0,0.5,0)*euler(0,0,0)
oLW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
oLW.C1=cf(0,0.5,0)*euler(0,0,0)
oRH.C0=cf(0.5,-1.5,0)*euler(0,0,0)
oRH.C1=cf(0,0.5,0)*euler(0,0,0)
oLH.C0=cf(-0.5,-1.5,0)*euler(0,0,0)
oLH.C1=cf(0,0.5,0)*euler(0,0,0)
Torso.Neck.C0=necko*euler(-0.2,0,-0.1)
RootJoint.C0=RootCF*euler(0,0.1,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.4)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(1.5,0,1)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3,0,0.2)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2,0,-0.3)
coroutine.resume(coroutine.create(function(CanConga)
local vel=Instance.new("BodyVelocity")
vel.Parent=RootPart
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
vel.velocity=RootPart.CFrame.lookVector*5
while CanConga.Value==true do
wait()
vel.velocity=RootPart.CFrame.lookVector*5
end
vel.Parent=nil
end),congaing)
while congaing.Value==true do
wait()
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.2+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+1*i,0,0.4-0.6*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.5-1.7*i,0,1-1.4*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5*i,0,0.2+0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.5*i,0,-0.3+0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.2+0.05+0.05*i,0,0.1-0.2*i)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.8-1*i,0,-0.2+0.6*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+1.2*i,0,-0.4+0.4*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5-0.5*i,0,0.2+0.1-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.5+0.5*i,0,-0.3+0.1-0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.6*i,0,0.4-0.3*i)
LW.C0=cf(-1.5,0.5,0)*euler(1-1.4*i,0,-0.2*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.3+0.5*i,0,0.2-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.7*i,0,-0.3+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05-0.3*i,0,0.1-0.3*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2-0.4*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.4+2.4*i,0,0.1+0.1*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.4+2.8*i,0,-0.2+0.4*i)
RH.C0=cf(0.5+0.1*i,-1.5,0)*euler(0.2-0.3*i,0,0.1+0.4*i)
LH.C0=cf(-0.5-0.4*i,-1.5,0)*euler(-0.5+0.5*i,0,-0.1-0.8*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05-0.3+0.35*i,0,-0.2+0.4*i)
RootJoint.C0=RootCF*euler(0,-0.5+0.7*i,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8-3*i,0,0.2+0.1*i)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(2.4-0.9*i,0,0.2+0.8*i)
RH.C0=cf(0.5+0.1-0.1*i,-1.5,0)*euler(-0.1-0.1*i,0,0.5-0.4*i)
LH.C0=cf(-0.5-0.4+0.4*i,-1.5,0)*euler(0.3*i,0,-0.9+0.7*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1*i,0,0.2-0.3*i)
RootJoint.C0=RootCF*euler(0,0.2-0.3*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.5*i,0,0.3-0.2*i)
LW.C0=cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i)*euler(1.5-1.8*i,0,1-1.3*i)
RH.C0=cf(0.5,-1.5,0)*euler(-0.2+0.4*i,0,0.1+0.2*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.3-0.5*i,0,-0.2-0.1*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.1+0.05*i,0,-0.1+0.2*i)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(0.3-0.8*i,0,0.1+0.1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.3+1*i,0,-0.3+0.1*i)
RH.C0=cf(0.5,-1.5,0)*euler(0.2-0.5*i,0,0.3-0.1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(-0.2+0.4*i,0,-0.3+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.05-0.2*i,0,0.1-0.2*i)
RootJoint.C0=RootCF*euler(0,0.1-0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.5+2.5*i,0,0.2+0.8*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0.7+1.3*i,0,-0.2+1.2*i)
RH.C0=cf(0.5+0.2*i,-1.5,0)*euler(-0.3+0.3*i,0,0.2+1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(0.2-0.4*i,0,-0.1+0.2*i)
end
for i=0,1,0.1 do
if congaing.Value==true then
wait()
end
Torso.Neck.C0=necko*euler(-0.25+0.05*i,0,-0.1)
RootJoint.C0=RootCF*euler(0,-0.1+0.2*i,0)
RW.C0=cf(1.5,0.5,0)*euler(2-2.2*i,0,1-0.6*i)
LW.C0=cf(-1.5+0.5,0.5,-0.5)*euler(2-0.5*i,0,1)
RH.C0=cf(0.5+0.2-0.2*i,-1.5,0)*euler(-0.3*i,0,1.2-1*i)
LH.C0=cf(-0.5,-1.5,0)*euler(-0.2+0.4*i,0,0.1-0.4*i)
end
end
con1:disconnect()
end
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function s(mouse) 
--[[mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) ]]
EngieConga()
end 
 
function ds(mouse) 
UnConga()
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Conga loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 
 