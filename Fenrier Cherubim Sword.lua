--[[
Made by Fenrier.
]] 

-- http://hastebin.com/raw/rifurejunu

Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck=Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
MMouse=nil
combo=0
local hitfloor,posfloor=nil,nil
local idle=0
local Anim="Idle"
local Effects={}
local Weapon={}
local Welds={}
local decreaseatk=0
local decreasedef=0
local decreasemvmt=0
local Mode="Defensive"
local GuardStance=false
local Target=nil
local manualguardend=false
local Fly=false
local prop=Instance.new("RocketPropulsion")
local move1="(Z)\
Support Wave"
local move2="(X)\
Guardian Dash"
local move3="(C)\
Decimate"
local move4="(V)\
Critical Point"
local cooldowns={}
local cooldown1=0 table.insert(cooldowns,cooldown1)
local cooldown2=0 table.insert(cooldowns,cooldown2)
local cooldown3=0 table.insert(cooldowns,cooldown3)
local cooldown4=0 table.insert(cooldowns,cooldown4)
local cooldownsadd={}
local cooldownadd1=.35 table.insert(cooldownsadd,cooldownadd1)
local cooldownadd2=.15 table.insert(cooldownsadd,cooldownadd2)
local cooldownadd3=.25 table.insert(cooldownsadd,cooldownadd3)
local cooldownadd4=.06 table.insert(cooldownsadd,cooldownadd4)
local cooldownmax=100
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Motor"), Instance.new("Motor") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
--[[TorsoBlue=TorsoColor.Color.b
NewCol=Color3.new(.5,.5,TorsoBlue)
print(BrickColor.new(.5,.5,TorsoBlue))]]
TorsoRed=TorsoColor.Color.r
TorsoGreen=TorsoColor.Color.g
NewCol=Color3.new(TorsoRed,TorsoGreen,1)
if Player:findFirstChild("Color1")~=nil then
NewCol=Player.Color1.Value
end
print(BrickColor.new(NewCol))
local mdec=Instance.new("NumberValue",Decrease)
mdec.Name="DecreaseDef"
mdec.Value=.4
local mdec2=Instance.new("NumberValue",Decrease)
mdec2.Name="DecreaseMvmt"
mdec2.Value=.1

local Animate=Character.Animate
local animation=Instance.new("Animation")
animation.AnimationId="http://www.roblox.com/Asset?ID=180435571"
local animTrack=Humanoid:LoadAnimation(animation)
local canjump=true
function removeControl()
canjump=false
end
function resumeControl()
canjump=true
end
Player.Character.Humanoid.Changed:connect(function()
if canjump==false then
Player.Character.Humanoid.Jump=false
end
end)


function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
game:service'RunService'.Heartbeat:wait(0)
--end
else
for i=0,num do
game:service'RunService'.Heartbeat:wait(0)
--[[if Stagger.Value==true or Stun.Value>=100 then
break
end]]
end
end
end

if Character:findFirstChild("Cherubim",true) ~= nil then 
Character:findFirstChild("Cherubim",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
if Character:findFirstChild("Stats",true) ~= nil then 
Character:findFirstChild("Stats",true).Parent = nil 
end 
local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1
local Block=Instance.new("BoolValue")
Block.Name="Block"
Block.Parent=Stats
Block.Value=false
local Stun=Instance.new("NumberValue")
Stun.Name="Stun"
Stun.Parent=Stats
Stun.Value=0
local Stunned=Instance.new("BoolValue")
Stunned.Name="Stunned"
Stunned.Parent=Stats
Stunned.Value=false
local Stagger=Instance.new("BoolValue")
Stagger.Name="Stagger"
Stagger.Parent=Stats
Stagger.Value=false
local StaggerHit=Instance.new("BoolValue")
StaggerHit.Name="StaggerHit"
StaggerHit.Parent=Stats
StaggerHit.Value=false
local RecentEnemy=Instance.new("ObjectValue")
RecentEnemy.Name="RecentEnemy"
RecentEnemy.Parent=Stats
RecentEnemy.Value=nil
local Decrease=Instance.new("BoolValue")
Decrease.Name="Decrease"
Decrease.Parent=Stats
Decrease.Value=false
local mana=Instance.new("NumberValue")
mana.Name="Mana"
mana.Parent=Stats
mana.Value=0

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

function weld(parent,part0,part1,c0)
local weld=it("Motor") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

function gui(GuiType,parent,text,backtrans,backcol,pos,size)
local gui=it(GuiType) 
gui.Parent=parent
gui.Text=text
gui.BackgroundTransparency=backtrans
gui.BackgroundColor3=backcol
gui.SizeConstraint="RelativeXY" 
gui.TextXAlignment="Center" 
gui.TextYAlignment="Center" 
gui.Position=pos
gui.Size=size
gui.Font="SourceSans"
gui.FontSize="Size14"
gui.TextWrapped=false
gui.TextStrokeTransparency=0
gui.TextColor=BrickColor.new("White")
return gui
end

local Color1=Torso.BrickColor

local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.1,0,0.1,0)
fenframe.Position=UDim2.new(0.95,0,0.7,0)
local fenframe2=it("Frame") 
fenframe2.Parent=fengui
fenframe2.BackgroundColor3=Color3.new(255,255,255) 
fenframe2.BackgroundTransparency=1 
fenframe2.BorderColor3=Color3.new(17,17,17) 
fenframe2.Size=UDim2.new(0.2,0,0.1,0)
fenframe2.Position=UDim2.new(0.4,0,0.85,0)
local fenframe3=it("Frame") 
fenframe3.Parent=fengui
fenframe3.BackgroundColor3=Color3.new(255,255,255) 
fenframe3.BackgroundTransparency=1 
fenframe3.BorderColor3=Color3.new(17,17,17) 
fenframe3.Size=UDim2.new(0.2,0,0.2,0)
fenframe3.Position=UDim2.new(0.8,0,0.8,0)
local fenframe4=it("Frame") 
fenframe4.Parent=fengui
fenframe4.BackgroundColor3=Color3.new(255,255,255) 
fenframe4.BackgroundTransparency=1 
fenframe4.BorderColor3=Color3.new(17,17,17) 
fenframe4.Size=UDim2.new(0.1,0,0.1,0)
fenframe4.Position=UDim2.new(0,0,0.7,0)
local pressedf=false
local fenframe5=it("Frame") 
fenframe5.Parent=fengui
fenframe5.BackgroundColor3=Color3.new(0,0,0) 
fenframe5.BackgroundTransparency=1 
fenframe5.BorderColor3=Color3.new(0,0,0) 
fenframe5.Size=UDim2.new(1,0,1,0)
fenframe5.Position=UDim2.new(0,0,0,0)
fenframe5.ZIndex=2
local tellbar=gui("TextLabel",fenframe5,"Press 'F' to equip your weapon.",1,Color3.new(0,0,0),UDim2.new(.25,0,.25,0),UDim2.new(.5,0,.5,0))
tellbar.Font="Arial"
tellbar.TextScaled=true
tellbar.TextTransparency=1
tellbar.TextStrokeTransparency=1
tellbar.ZIndex=2
local fnumb=0
local fenbarmana1=gui("TextLabel",fenframe,"",0,Color3.new(0,0,0),UDim2.new(0,0,0,0),UDim2.new(.4,0,-4,0))
local fenbarmana2=gui("TextLabel",fenframe,"",0,BrickColor.new(NewCol).Color,UDim2.new(0,0,0,0),UDim2.new(.4,0,0,0))
local fenbarmana4=gui("TextLabel",fenframe,"Mana("..mana.Value..")",1,Color3.new(0,0,0),UDim2.new(0,0,.2,0),UDim2.new(.4,0,.2,0))
local fenbardamage=gui("TextLabel",fenframe2,"Damage",.55,Color3.new(155/255,0,0),UDim2.new(-.23,0,0,0),UDim2.new(.2,0,1,0))
local fenbardef=gui("TextLabel",fenframe2,"Defense",0.55,Color3.new(0,0,155/255),UDim2.new(-.46,0,0,0),UDim2.new(.2,0,1,0))
local fenbarmove=gui("TextLabel",fenframe2,"Walkspeed",0.55,Color3.new(0,155/255,0),UDim2.new(1.03,0,0,0),UDim2.new(.2,0,1,0))
local fenbarhp1=gui("TextLabel",fenframe2,"",0,Color3.new(0,0,0),UDim2.new(-.46,0,1,0),UDim2.new(1.92,0,.4,0))
local fenbarhp2=gui("TextLabel",fenbarhp1,"",0,Color3.new(1,0,0),UDim2.new(0,0,0,0),UDim2.new(0,0,1,0))
local fenbarhp3=gui("TextLabel",fenbarhp1,"(100)",1,Color3.new(0,0,0),UDim2.new(0,0,0,0),UDim2.new(1,0,1,0))
local fenbarstun1=gui("TextLabel",fenframe4,"",0,Color3.new(0,0,0),UDim2.new(.2,0,0,0),UDim2.new(.4,0,-4,0))
local fenbarstun2=gui("TextLabel",fenframe4,"",0,Color3.new(0.960784,0.803922,0.188235),UDim2.new(.2,0,0,0),UDim2.new(.4,0,0,0))
local fenbarstun3=gui("TextLabel",fenframe4,"Stun("..Stun.Value..")",1,Color3.new(0.960784,0.803922,0.188235),UDim2.new(.2,0,.2,0),UDim2.new(.4,0,.2,0))
local fenbarmove1=gui("TextButton",fenframe3,move1,.55,Color3.new(.5,.5,.5),UDim2.new(0.1,0,0.1,0),UDim2.new(.4,0,.4,0))
fenbarmove1.ZIndex=2
local fenbarmove1b=gui("TextLabel",fenbarmove1,"",.55,BrickColor.new(NewCol).Color,UDim2.new(0,0,0,0),UDim2.new(0,0,1,0))
local fenbarmove2=gui("TextButton",fenframe3,move2,.55,Color3.new(.5,.5,.5),UDim2.new(0.6,0,0.1,0),UDim2.new(.4,0,.4,0))
fenbarmove2.ZIndex=2
local fenbarmove2b=gui("TextLabel",fenbarmove2,"",.55,BrickColor.new(NewCol).Color,UDim2.new(0,0,0,0),UDim2.new(0,0,1,0))
local fenbarmove3=gui("TextButton",fenframe3,move3,.55,Color3.new(.5,.5,.5),UDim2.new(0.1,0,0.6,0),UDim2.new(.4,0,.4,0))
fenbarmove3.ZIndex=2
local fenbarmove3b=gui("TextLabel",fenbarmove3,"",.55,BrickColor.new(NewCol).Color,UDim2.new(0,0,0,0),UDim2.new(0,0,1,0))
local fenbarmove4=gui("TextButton",fenframe3,move4,.55,Color3.new(.5,.5,.5),UDim2.new(0.6,0,0.6,0),UDim2.new(.4,0,.4,0))
fenbarmove4.ZIndex=2
local fenbarmove4b=gui("TextLabel",fenbarmove4,"",.55,BrickColor.new(NewCol).Color,UDim2.new(0,0,0,0),UDim2.new(0,0,1,0))

local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Cherubim" 

local handle=part(3,modelzorz,0,0.5,TorsoColor,"Handle",vt())
local prt1=part(3,modelzorz,0,0,TorsoColor,"Part01",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part02",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part03",vt())
local prt4=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part04",vt())
local prt5=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part05",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part06",vt())
local prt7=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"Part07",vt())
local prt11=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part11",vt())
local prt12=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part12",vt())
local prt13=part(3,modelzorz,0,0,BrickColor.new("Teal"),"Part13",vt())
local prt14=part(3,modelzorz,0,0,BrickColor.new(NewCol),"Part14",vt())
local prt15=part(3,modelzorz,0,0,BrickColor.new(NewCol),"Part15",vt())
local prt16=part(3,modelzorz,0,0,BrickColor.new(NewCol),"Part16",vt())
local prt17=part(3,modelzorz,0,0,BrickColor.new(NewCol),"Part17",vt())

local msh1=mesh("SpecialMesh",prt1,"Head","nil",vt(0,0,0),vt(2,25,2))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,30,1))
local msh3=mesh("SpecialMesh",prt3,"Head","nil",vt(0,0,0),vt(2.5,4,2.5))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(2.7,1.5,2.7))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(3,5,8))
local msh6=mesh("SpecialMesh",prt6,"Wedge","nil",vt(0,0,0),vt(3,3,4))
local msh7=mesh("SpecialMesh",prt7,"Wedge","nil",vt(0,0,0),vt(3,3,4))
local msh11=mesh("SpecialMesh",prt11,"Sphere","nil",vt(0,0,0),vt(4,4,3.5))
local msh12=mesh("SpecialMesh",prt12,"Sphere","nil",vt(0,0,0),vt(2,4,2))
local msh13=mesh("SpecialMesh",prt13,"Sphere","nil",vt(0,0,0),vt(2,4,2))
local msh14=mesh("SpecialMesh",prt14,"FileMesh","92135508",vt(0,0,0),vt(.5,.5,.5))
local msh15=mesh("SpecialMesh",prt15,"FileMesh","92135508",vt(0,0,0),vt(.5,.5,.5))
local msh16=mesh("SpecialMesh",prt16,"FileMesh","92135524",vt(0,0,0),vt(.5,.5,.5))
local msh17=mesh("SpecialMesh",prt17,"FileMesh","92135524",vt(0,0,0),vt(.5,.5,.5))

--local wld1=weld(prt1,prt1,Torso,euler(0,0,0)*cf(0,0,5))
--local wld1=weld(prt1,prt1,RightArm,euler(1.57,0,0)*cf(0,1,0))
--local handlewld=weld(handle,handle,RightArm,euler(1.57,0,0)*cf(0,1,0))
local handlewld=weld(handle,handle,Torso,euler(2.1,1.57,0)*cf(1,-1,-.5))
local wld1=weld(prt1,prt1,handle,cf(0,0,0)*euler(0,0,0))
local wld2=weld(prt1,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt1,prt3,prt1,euler(0,0,0)*cf(0,3,0))
local wld4=weld(prt1,prt4,prt3,euler(0,0,0)*cf(0,.25,0))
local wld5=weld(prt1,prt5,prt1,euler(0,0,0)*cf(0,-2.8,0))
local wld6=weld(prt1,prt6,prt5,euler(0,0,0)*cf(0,-.8,.4))
local wld7=weld(prt1,prt7,prt5,euler(0,3.14,0)*cf(0,-.8,-.4))
local wld11=weld(prt1,prt11,prt5,euler(0,0,1.57)*cf(0,-0.2,0))
local wld12=weld(prt1,prt12,prt5,euler(0,0,1.57)*cf(0,0.1,0.5))
local wld13=weld(prt1,prt13,prt5,euler(0,0,1.57)*cf(0,0.1,-0.5))
local wld14=weld(prt1,prt14,prt5,euler(3.14,1.57,0)*cf(0.4,0.6,-2))
local wld15=weld(prt1,prt15,prt5,euler(3.14,-1.57,0)*cf(-0.4,0.6,2))
local wld16=weld(prt1,prt16,prt5,euler(3.14,1.57,0)*cf(0.4,0.6,2))
local wld17=weld(prt1,prt17,prt5,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2))

num=0
num2=0
num3=0
num4=0
num5=2
for i=1,4 do
local prt8=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part08",vt())
local prt9=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part09",vt())
local prt10=part(3,modelzorz,0.7,0,BrickColor.new("Teal"),"Part10",vt())
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(1+num4,5+num,6+num3))
local msh9=mesh("SpecialMesh",prt9,"Wedge","nil",vt(0,0,0),vt(1+num4,4,3+(num3/2)))
local msh10=mesh("SpecialMesh",prt10,"Wedge","nil",vt(0,0,0),vt(1+num4,4,3+(num3/2)))
local wld8=weld(prt1,prt8,prt5,euler(0,0,0)*cf(0,-.8-num2,0))
local wld9=weld(prt1,prt9,prt8,euler(0,0,0)*cf(0,-.9-num*.1,.3+((num3*.1)/2)))
local wld10=weld(prt1,prt10,prt8,euler(0,3.14,0)*cf(0,-.9-num*.1,-.3-((num3*.1)/2)))
num=num+.6
num2=num2+.3*num5
num3=num3-.5
num4=num4-.2
num5=num5+1
end

local wing1=part(3,nil,0,1,BrickColor.new(NewCol),"Wing",vt())
local wmsh1=mesh("SpecialMesh",wing1,"FileMesh","92135508",vt(0,0,0),vt(.8,.8,.8))
local wing2=part(3,nil,0,1,BrickColor.new(NewCol),"Wing",vt())
local wmsh2=mesh("SpecialMesh",wing2,"FileMesh","92135524",vt(0,0,0),vt(.8,.8,.8))

local nr=NumberRange.new
local ns=NumberSequence.new
local cs=ColorSequence.new
local parti=it("ParticleEmitter")
parti.Color=cs(NewCol,NewCol)
parti.LightEmission=0
parti.Size=ns(1)
parti.Texture="http://www.roblox.com/asset/?id=242842525"
sizeseq=ns({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,.2)})
transseq=ns({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)})
parti.Transparency=transseq
parti.Size=sizeseq
parti.Acceleration=vt(0,-.5,0)
parti.Lifetime=nr(5,7)
parti.Rate=1
parti.RotSpeed=nr(30)
parti.Speed=nr(2)
parti.VelocitySpread=90
parti.Parent=hitbox
parti.Enabled=true
parti.Parent=wing1
parti2=parti:Clone()
parti2.Parent=wing2

for _,c in pairs(modelzorz:children()) do
table.insert(Weapon,c)
end
for _,c in pairs(prt1:children()) do
if c.className=="Motor" then
table.insert(Welds,c)
end
end
local hitbox=part(3,modelzorz,0,1,BrickColor.new("Black"),"Hitbox2",vt())
hitbox.Anchored=false
local hbwld=weld(hitbox,hitbox,RootPart,euler(0,0,0)*cf(0,0,0))
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox2.Anchored=true
local hitboxCF=cf(0,0,0)

hboxpos=Instance.new("BodyPosition",nil)
hboxpos.P=2000
hboxpos.D=100
hboxpos.maxForce=Vector3.new(math.huge,math.huge,math.huge)

function hitboxweld()
hbwld.Parent=modelzorz
hbwld.Part0=hitbox
hbwld.Part1=prt5
end

if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Cherubim" 
script.Parent=Tool 
end 
Bin=script.Parent 
if Bin.Name=="Commander" then
Bin.Name="Cherubim"
end

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

so = function(id,par,vol,pit) 
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId="http://www.roblox.com/asset/?id="..id
--swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function hideanim() 
equipped=false
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.5,1.4,0)*euler(0,0,-.8)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-1,0)*euler(0,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.4,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
mdec.Parent=nil
handlewld.Part1=Torso
handlewld.C0=euler(2.1,1.57,0)*cf(1,-1,-.5)
wld1.C0=cf(0,0,0)*euler(0,0,0)
for i=0,1,0.3 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
end
mdec.Parent=Decrease
mdec2.Parent=nil
end 

mdec.Parent=Decrease
function equipanim() 
equipped=true
mdec.Parent=nil
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.3,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
handlewld.Part1=LeftArm
handlewld.C0=euler(1.5,1.4,0)*euler(0,0,-1)*cf(0,1,0)
wld1.C0=cf(0,-1,0)*euler(0,0,0)
mdec2.Parent=Decrease
end 

function StaggerAnim()
attack=true
removeControl()
for i=1,math.random(2,4) do
ClangEffect(BrickColor.new("New Yeller"),cf(hitbox.Position)*euler(math.random(-50,50)/100,math.random(-50,50),math.random(-50,50)/100),0,.1,.2,math.random(150,300)/1000)
end
for i=0,1,0.35 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*-40
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.4,0,.4)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*euler(0,1.57,0)*euler(-.4,-.2,.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
for i=0,1,0.2 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*-40
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.4,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.6,0,.6)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.6,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*euler(0,1.57,0)*euler(-.5,-.2,.5),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.8)*euler(-.2,0,.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4)*euler(0,.3,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.2,0)*euler(-.4,0,1.2),.3)
LH.C0=clerp(LH.C0,cf(-1,.4,-.8)*euler(0,-1.57,0)*euler(0,.2,-.1),.3)
end
for i=1,40 do
swait()
if Stun.Value>=100 then
break
end
end
resumeControl()
combo=0
attack=false
end

function StaggerHitt()
attack=true
for i=1,math.random(2,4) do
ClangEffect(BrickColor.new("New Yeller"),cf(hitbox.Position)*euler(math.random(-50,50)/100,math.random(-50,50),math.random(-50,50)/100),0,.1,.2,math.random(150,300)/1000)
end
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(-.2,0,.6),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.4)*euler(0,.4,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.9)*euler(0,.7,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.2,-.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,.4),.3)
end
attack=false
end

function StunAnim()
attack=true
removeControl()
Stunned.Value=true
showDamage(Character,"Stunned","Interrupt")
local dec=Instance.new("NumberValue",Decrease)
dec.Name="DecreaseMvmt"
dec.Value=10
for i=0,1,0.3 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(.2,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1,0,.4)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.5,0,.3),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.2,0,0),.25)
end
for i=0,1,0.3 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(.8,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.8,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1.2,0,.8)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.5,0,.6),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(.1,0,.7),.25)
end
for i=0,1,0.3 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.3,0,-1),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*euler(1.57,0,-3),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.8,0,1.3),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8)*euler(0,-.1,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(0,1.57,0)*euler(-.2,0,.6),.25)
LH.C0=clerp(LH.C0,cf(-1,-.8,0)*euler(0,-1.57,0)*euler(-.1,0,.3),.25)
end
local gairost=Instance.new("BodyGyro") 
gairost.Parent=RootPart
gairost.maxTorque=Vector3.new(4e+005,0,4e+005)*math.huge 
gairost.P=20e+003 
gairost.cframe=cf(0,0,0)
for i=0,1,0.1 do
swait()
if hitfloor~=nil then
Torso.Velocity=vt(0,0,0)
end
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5)*euler(1.57,0,-3.14),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-1.57,0,1.5)*euler(.2,0,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.5,0,-1.57)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(-.3,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(-.1,.2,0),.3)
end
for i=1,70 do
swait()
gairost.cframe=RootPart.CFrame
if hitfloor~=nil then
Torso.Velocity=vt(0,0,0)
end
end
for i=0,1,0.2 do
swait()
Stun.Value=0
gairost.cframe=RootPart.CFrame
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2)*euler(1,0,-4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-1.57,0,1)*euler(.2,-1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,.2)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(-.3,.5,.4),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-1)*euler(0,-1.57,0)*euler(-.1,.2,1),.3)
end
resumeControl()
gairost.Parent=nil
dec.Parent=nil
Stun.Value=0
combo=0
Stunned.Value=false
attack=false
for i=1,10 do
swait()
Stun.Value=0
end
end

function dattackone()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145095",prt5,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(7,12),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,6,math.random(5,10),"Normal",RootPart,.5,1,math.random(4,8),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.35)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.8,0,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.35)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.3)*euler(.5,0,-.1)*euler(0,.5,0),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.35)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.35)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function dattacktwo()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.8),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-1,0,-.8)*euler(0,-.5,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.8,-1,.4)*euler(0,1.57,0)*euler(0,-.8,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,-.4)*euler(0,-1.57,0)*euler(0,-.8,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145146",prt5,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(20,25),"Normal",RootPart,.5,2,math.random(7,12),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,6,math.random(20,25),"Normal",RootPart,.5,2,math.random(4,8),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.8),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.3)*euler(1,0,-.5)*euler(0,.5,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.8,-1,-.4)*euler(0,1.57,0)*euler(0,.8,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-1,.4)*euler(0,-1.57,0)*euler(0,.8,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function dattackthree()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(2,0,1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145204",prt5,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(5,10),"Normal",RootPart,.5,1,math.random(7,12),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,6,math.random(5,10),"Normal",RootPart,.5,1,math.random(4,8),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-1)*euler(0,-.6,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function dattackfour()
attack=true
so("199145327",prt5,1,1)
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
--wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.2)
wld1.C0=cf(0,-.5+1.5*i,0)*euler(-.57+7*i,0,0)
Neck.C0=clerp(Neck.C0,necko*euler(-.4,0,.2),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.8,0,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
local dec=Instance.new("NumberValue",Decrease)
dec.Name="DecreaseMvmt"
dec.Value=1
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,.2,0)*euler(0,0,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hitfloor,posfloor=rayCast(prt4.Position,(CFrame.new(prt4.Position,prt4.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if hitfloor~=nil then
so("199145264",prt4,1,1)
MagicWave(BrickColor.new("Teal"),cf(prt4.Position),1,1,1,1.2,.4,1.2,.05)
MagicBlock(BrickColor.new("Teal"),cf(prt4.Position),1,1,1,1,1,1,.05,1)
MagniBuff(RootPart,20,"Defense",-.1,100)
MagniDamage(prt4,20,4,6,math.random(30,40),"Knockdown2",RootPart,0,1,math.random(10,15),nil,nil,true,nil,nil,nil)
end
swait(10)
dec.Parent=nil
attack=false
end

function oattackone()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.4)*euler(0,-.4,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.7,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.7,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145146",prt5,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,6,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(5,7),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,8,math.random(5,10),"Normal",RootPart,.5,1,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,0,0)*euler(1,0,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(-.1,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-.4)*euler(1.2,0,-.4)*euler(0,.2,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function oattacktwo()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(2,0,1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145095",prt5,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,6,10,math.random(5,10),"Normal",RootPart,.5,1,math.random(5,7),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,8,math.random(5,10),"Normal",RootPart,.5,1,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.6,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-1)*euler(0,-.6,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function oattackthree()
attack=true
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(1.57,0,1)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145204",prt5,1,.8)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,6,10,math.random(10,20),"Normal",RootPart,.5,2,math.random(5,7),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,8,math.random(10,20),"Normal",RootPart,.5,2,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=RootCF*euler(0,0,-.5+6.28*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,-1.57)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145204",prt5,1,1)
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,8,math.random(10,20),"Normal",RootPart,.5,2,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(1,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.3,0,-1.57)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
attack=false
end

function oattackfour()
attack=true
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,6,10,math.random(-20,-10),"Normal",RootPart,.5,2,math.random(5,7),nil,true) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(1,5,1.7)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
so("199145327",prt5,1,1)
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,4,8,math.random(-20,-10),"Normal",RootPart,.5,2,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.2,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
RootJoint.C0=RootCF*euler(0,0,.5-7.28*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-.5)*euler(.6,0,1)*euler(0,.8,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(30,50),"Normal",RootPart,1,2,math.random(5,7),nil,true) end) 
so("199145146",prt5,1,1)
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,7,8,math.random(30,50),"Normal",RootPart,1,2,math.random(6,10),nil,true)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,0,0)*euler(1.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.57),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0,-1.4)*euler(0,1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.2)*euler(0,1.57,0)*euler(-.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-.5,-1,.2)*euler(0,-1.57,0)*euler(.2,1.57,0),.2)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
else
swait(10)
end
attack=false
end

function ModeChange()
attack=true
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.8,0,-1)*euler(0,1,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.2,0,1.1)*euler(0,-1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
end
if Mode=="Defensive" then
Mode="Offensive"
else
Mode="Defensive"
end
for i=0,1,0.05 do
swait()
if Mode=="Offensive" then
wld14.C0=clerp(wld14.C0,euler(3.14,1.57,0)*cf(0.4,0.6,-2)*euler(0,.5,0),.3)
wld15.C0=clerp(wld15.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,2)*euler(0,.5,0),.3)
wld16.C0=clerp(wld16.C0,euler(3.14,1.57,0)*cf(0.4,0.6,2)*euler(0,-.5,0),.3)
wld17.C0=clerp(wld17.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2)*euler(0,-.5,0),.3)
else
wld14.C0=clerp(wld14.C0,euler(3.14,1.57,0)*cf(0.4,0.6,-2),.3)
wld15.C0=clerp(wld15.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,2),.3)
wld16.C0=clerp(wld16.C0,euler(3.14,1.57,0)*cf(0.4,0.6,2),.3)
wld17.C0=clerp(wld17.C0,euler(3.14,-1.57,0)*cf(-0.4,0.6,-2),.3)
end
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0)*euler(0,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,0)*euler(0,1.57,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,0)*euler(0,1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
attack=false
end

function do1()
if attack==true then return end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then return end
if cooldowns[1]>=cooldownmax and mana.Value>=15 then
--if true then
attack=true
cooldowns[1]=0
mana.Value=mana.Value-15
if Mode=="Defensive" then
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
--wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.2)
wld1.C0=cf(0,-.5+1.5*i,0)*euler(-.57+7*i,0,0)
Neck.C0=clerp(Neck.C0,necko*euler(-.4,0,.2),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.8,0,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.15 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0.785)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,.2,0)*euler(0,0,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,.785),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
while hitfloor==nil do
swait()
end
so("199145350",prt5,1,.8)
MagniDamage(RootPart,40,5,10,math.random(30,40),"Knockdown2",RootPart,0,1,0,nil,nil,true,nil,nil,nil)
MagniBuff(RootPart,40,"Defense",-.2,600)
MagicWave(BrickColor.new("Teal"),cf(RootPart.Position)*cf(0,-2,0),1,1,1,1,.2,1,.02)
MagicBlock(BrickColor.new("Teal"),cf(prt4.Position),1,1,1,1,1,1,.05,1)
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,10)
for i=1,50 do
swait()
ref.CFrame=cf(RootPart.Position)*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
hit,pos=rayCast(ref.Position,(CFrame.new(ref.Position,ref.Position - Vector3.new(0,1,0))).lookVector,20,Character)
if hit~=nil then
MagicCircle(BrickColor.new("White"),cf(pos),1,1,1,.5,7,.5,.1)
end
end
ref.Parent=nil
else
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(1,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.4,0,.2),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.2),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.8,0,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145350",prt5,1,.8)
MagniDamage(RootPart,40,5,10,math.random(30,40),"Knockdown2",RootPart,0,1,0,nil,nil,true,nil,nil,nil)
MagniBuff(RootPart,40,"Damage",-.2,600)
MagicBlock(BrickColor.new("Teal"),cf(prt5.Position),1,1,1,2,2,2,.02,1)
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,10)
for i=1,50 do
swait()
ref.CFrame=cf(RootPart.Position)*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
hit,pos=rayCast(ref.Position,(CFrame.new(ref.Position,ref.Position - Vector3.new(0,1,0))).lookVector,20,Character)
if hit~=nil then
MagicCircle(BrickColor.new("White"),cf(pos),1,1,1,.5,7,.5,.1)
end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
ref.Parent=nil
end
attack=false
end
end

function do2()
if attack==true then return end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then return end
if cooldowns[2]>=cooldownmax and mana.Value>=10 then
--if true then
attack=true
so("199145446",RootPart,1,1)
manualguardend=false
local con1=nil
Fly=false
Target=nil
local dec=Instance.new("NumberValue",Decrease)
dec.Name="DecreaseMvmt"
dec.Value=.5
--local msh16=mesh("SpecialMesh",prt16,"FileMesh","92135524",vt(0,0,0),vt(.5,.5,.5))
wing1.Parent=modelzorz
wing1.Transparency=1
wing2.Parent=modelzorz
wing2.Transparency=1
local wwld1=weld(wing1,wing1,RootPart,euler(0,1.2,0)*cf(-2,-1,-3))
local wwld2=weld(wing2,wing2,RootPart,euler(0,-1.2,0)*cf(2,-1,-3))
for i=1,0.5,-0.05 do
swait()
wing1.Transparency=i
wing2.Transparency=i
wwld1.C0=clerp(wwld1.C0,euler(0,.8,0)*cf(-3,-1,-2),.3)
wwld2.C0=clerp(wwld2.C0,euler(0,-.8,0)*cf(3,-1,-2),.3)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(.5,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.1,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.5,0,-1)*euler(0,-.6,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1.3,-.6,0)*euler(0,1.57,0)*euler(0,-.5,-.3),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*euler(0,-1.57,0)*euler(0,-.5,.4),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
GuardStance=true
while GuardStance==true do
swait()
end
if manualguardend==true then
mana.Value=mana.Value-10
so("199145404",RootPart,1,1)
so("199145433",RootPart,1,1)
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),false,false) end) 
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),false,false)
Torso.Velocity=RootPart.CFrame.lookVector*70
wwld1.C0=clerp(wwld1.C0,euler(0,.6,0)*cf(-3,-1,-1.5),.3)
wwld2.C0=clerp(wwld2.C0,euler(0,-.6,0)*cf(3,-1,-1.5),.3)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-1,0)*euler(1.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.1,0,1.57),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(0,0,1.57)*euler(0.4,0,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,1.4)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-.6,.4)*euler(0,1.57,0)*euler(0,-1.57,-.3),.3)
LH.C0=clerp(LH.C0,cf(-.5,-.9,-.3)*euler(0,-1.57,0)*euler(0,-1.57,.4),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.1 do
swait()
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),false,false)
Torso.Velocity=RootPart.CFrame.lookVector*70
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
--con1:disconnect()
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
DecreaseStat(Character,"Defense",-.2,400)
else
mana.Value=mana.Value-10
so("199145404",RootPart,1,1)
so("199145433",RootPart,1,1)
Fly=true
prop.ThrustP=50
prop.MaxSpeed=100
prop.TurnP=1500
prop.MaxThrust=7000
prop.CartoonFactor=1
prop.Parent=RootPart
prop.Target=Target.Torso
Humanoid.Jump=true
Humanoid.PlatformStand=true
prop:Fire()
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),true,true) end) 
con2=hitbox.Touched:connect(function(hit)
if hit.Parent==Target then
prop.Parent=nil
Fly=false
end
end)
hbwld.Parent=nil
hboxpos.Parent=hitbox
hitbox.Parent=modelzorz
hitbox.Size=vt(.5,4.5,1.2)
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
for i=0,1,0.1 do
swait()
mana.Value=mana.Value-1
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),true,true)
Torso.Velocity=RootPart.CFrame.lookVector*70
wwld1.C0=clerp(wwld1.C0,euler(0,1,0)*cf(-2.5,-1,-1.5),.3)
wwld2.C0=clerp(wwld2.C0,euler(0,-1,0)*cf(2.5,-1,-1.5),.3)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-1,0)*euler(1.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.1,0,1.57),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(0,0,1.57)*euler(0.4,0,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,1.4)*euler(0,-1.57,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-.6,.4)*euler(0,1.57,0)*euler(0,-1.57,-.3),.3)
LH.C0=clerp(LH.C0,cf(-.5,-.9,-.3)*euler(0,-1.57,0)*euler(0,-1.57,.4),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
drain=0
manadec=1
while Fly==true and mana.Value>0 do
swait()
drain=drain+1
if drain>=30 then
drain=0
manadec=manadec+1
end
mana.Value=mana.Value-manadec
--print(Target)
if Target~=nil then
local mag=(RootPart.Position-Target.Torso.Position).magnitude
if mag<=5 then
Fly=false
end
else
print("no moar")
end
hitboxCF=prt5.CFrame*cf(0,2.8,0)
hitbox.CFrame=hitboxCF
MagniDamage(hitbox,5,5,10,math.random(5,10),"Normal",RootPart,.5,2,math.random(10,15),true,true)
Humanoid.PlatformStand=true
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
Humanoid.PlatformStand=false
hitbox.Parent=modelzorz
hitbox.Size=vt()
hitboxweld()
hboxpos.Parent=nil
prop.Parent=nil
DecreaseStat(Character,"Defense",-.2,400)
if Target~=nil then
if game.Players:GetPlayerFromCharacter(Target)~=nil then 
if game.Players:GetPlayerFromCharacter(Target).TeamColor==Player.TeamColor then 
if Player.Neutral==false then
DecreaseStat(Target,"Defense",-.2,400)
else
DecreaseStat(Target,"Defense",.2,400)
end
else
DecreaseStat(Target,"Defense",.2,400)
end
else
DecreaseStat(Target,"Defense",.2,400)
end
end
Humanoid.Jump=true
Humanoid.PlatformStand=false
con2:disconnect()
end
coroutine.resume(coroutine.create(function()
for i=.5,1,.05 do
swait()
wing1.Transparency=i
wing2.Transparency=i
end
wing1.Parent=nil
wing2.Parent=nil
end))
dec.Parent=nil
--con1:disconnect()
swait(10)
cooldowns[2]=0
attack=false
end
end

function do3()
if attack==true then return end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then return end
if cooldowns[3]>=cooldownmax and mana.Value>=25 then
--if true then
attack=true
cooldowns[3]=0
mana.Value=mana.Value-25
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.1,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-1)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,-.2)*euler(0,1.57,0)*euler(-.2,0,-.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,-.2)*euler(0,-1.57,0)*euler(-.2,0,.2),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145327",RootPart,1,1)
Humanoid.Jump=true
for i=0,1,0.1 do
swait()
Torso.Velocity=vt(0,1,0)*60
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0.785)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,.2,0)*euler(.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.8,0,0),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.1,0,0),.3)
RootJoint.C0=RootCF*cf(0,0,-.5+2.5*i)*euler(0.1+9.32*i,0,0)
RW.C0=clerp(RW.C0,cf(.8,0.5,-.5)*euler(1.3,0,-.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(2,0,.785)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,-.2)*euler(0,1.57,0)*euler(-.2,0,-.2),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,-.2)*euler(0,-1.57,0)*euler(-.2,0,.2),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
hit=nil
while hit==nil do
--hit,pos=rayCast(prt5.Position,(CFrame.new(prt5.Position,prt5.Position - Vector3.new(0,1,0))).lookVector,6,modelzorz)
hit,pos=rayCast(prt5.Position,(CFrame.new(prt5.Position,prt5.Position - Vector3.new(0,1,0))).lookVector,4,modelzorz)
if hit~=nil then
if hit.Parent.className=="Hat" or hit.Name=="Triangle" then
print("poot")
hit=nil
end
end
swait()
--[[local blcf = prt5.CFrame*cf(0,2.5,0)
if scfr and (prt5.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
else
so("199145477",RootPart,1,1)
so("199145497",RootPart,1,1)
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagicWave(BrickColor.new("Teal"),cf(ref.Position),1,1,1,1.2,.4,1.2,.05)
MagniDamage(ref,20,5,10,math.random(40,60),"Knockdown2",RootPart,0,1,math.random(15,20),nil,nil,true,"Damage",.1,300)
game:GetService("Debris"):AddItem(ref,1)
Torso.Velocity=vt(0,1,0)*100
end
for i=0,1,.5 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(-1.57,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
attack=false
end
end

function do4()
if attack==true then return end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then return end
if cooldowns[4]>=cooldownmax and mana.Value>=50 then
--if true then
attack=true
cooldowns[4]=0
mana.Value=mana.Value-50
local dec=Instance.new("NumberValue",Decrease)
dec.Name="DecreaseMvmt"
dec.Value=10
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.3,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,.2)*euler(0,-1.3,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(.3,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.2,0,.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2,0,-.4)*euler(0,-.2,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
so("199145659",prt5,1,1)
for i=1,20 do
swait()
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,5,.5,.05)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.05 do
swait()
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,5,.5,.05)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(1,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.4),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.2,0,.4),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.5,0,-.5)*euler(0,-.2,0),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
for i=0,1,0.1 do
swait()
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,5,.5,.05)
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.35)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(1.4,0,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.4),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.4),.35)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.6),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0,-.4)*euler(0,0,0),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
else
so("199145534",prt5,1,1)
MagniDamage(prt5,10,10,20,math.random(50,70),"Knockdown2",RootPart,2,1,100,nil,true,false,nil,nil,nil)
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(0,0,0),10,1,10,-.1,6,-.1,.01)
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(1.57,0,0),10,1,10,-.1,6,-.1,.01)
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(0,0,1.57),10,1,10,-.1,6,-.1,.01)
MagicCircle(BrickColor.new("Teal"),cf(prt5.Position)*euler(0,0,1.57),1,1,1,16,16,16,.04)
end
for i=1,10 do
swait()
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
MagniDamage(prt5,30,10,20,math.random(50,70),"Knockdown2",RootPart,2,1,100,nil,true,false,nil,nil,nil)
for i=1,10 do
swait()
if Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
break
end
end
MagniDamage(prt5,40,10,20,math.random(50,70),"Knockdown2",RootPart,2,1,100,nil,true,false,nil,nil,nil)
dec.Parent=nil
attack=false
end
end

function DecreaseStat(Model,Stat,Amount,Duration)
if Model:findFirstChild("Stats")~=nil then
if Model.Stats[Stat]~=nil then
Model.Stats[Stat].Value=Model.Stats[Stat].Value-Amount
d=Instance.new("NumberValue",Model.Stats.Decrease)
dur=Instance.new("NumberValue",d)
dur.Name="Duration"
dur.Value=Duration
game:GetService("Debris"):AddItem(d,20)
if Stat=="Damage" then
d.Name="DecreaseAtk"
elseif Stat=="Defense" then
d.Name="DecreaseDef"
elseif Stat=="Movement" then
d.Name="DecreaseMvmt"
end
if Model:findFirstChild("Torso")~=nil then
display=""
if Stat=="Damage" then
if Amount>0 then
display="-Damage"
else
display="+Damage"
end
elseif Stat=="Defense" then
if Amount>0 then
display="-Defense"
else
display="+Defense"
end
elseif Stat=="Movement" then
if Amount>0 then
display="-Movement"
else
display="+Movement"
end
end
showDamage(Model,display,"Debuff")
end
d.Value=Amount
end
end
end

function GetDist(Part1,Part2,magni)
local targ=Part1.Position-Part2.Position
local mag=targ.magnitude
if mag<=magni then 
return true
else
return false
end
end

function MagniDamage(Part,magni,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=nil
for _,d in pairs(c:children()) do
--if d.Name=="Torso" or d.Name=="Head" or d.Name=="HumanoidRootPart" or d.Name=="HitPart" then
if d.className=="Model" and ranged~=true then
head=d:findFirstChild("Hitbox")
if d.Parent==Character then break end
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(head.Position)
game:GetService("Debris"):AddItem(ref,1)
hitnum=math.random(1,5)
if hitnum==1 then so("199148971",ref,1,1)
elseif hitnum==2 then so("199149025",ref,1,1)
elseif hitnum==3 then so("199149072",ref,1,1)
elseif hitnum==4 then so("199149109",ref,1,1)
elseif hitnum==5 then so("199149119",ref,1,1)
end
StaggerHit.Value=true
end
end
end
if d.className=="Part" then
head=d
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
if stun==nil then
stun=math.random(5,10)
end
local Rang=nil
if Ranged==false then
Rang=true
end
local stag=nil
if shbash==true then
stag=true
end
Damagefunc(head,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
--Damagefunc(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,DecreaseState,DecreaseAmount,Duration)
end
end
end
end
end
end
end

function MagniBuff(Part,magni,Dec,DecAm,Dur,others)
if Player.Neutral==true then
DecreaseStat(Character,Dec,DecAm/2,Dur)
end
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if others==nil then
if mag<=magni then 
if Player.Neutral==false and game.Players:GetPlayerFromCharacter(head.Parent)~=nil then
if game.Players:GetPlayerFromCharacter(head.Parent)~=nil then 
if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor==Player.TeamColor then 
DecreaseStat(head.Parent,Dec,DecAm,Dur)
end
end
end
end
else
if Player.Neutral==false and game.Players:GetPlayerFromCharacter(head.Parent)~=nil then
if mag<=magni and head.Parent~=Character then 
if game.Players:GetPlayerFromCharacter(head.Parent)~=nil then 
if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor==Player.TeamColor then 
DecreaseStat(head.Parent,Dec,DecAm,Dur)
end
end
end
end
end
end
end
end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
if LP==nil or P1==nil then return end
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
NoOutline(effectsg)
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.2,0.01,0,0.01,effectsmsh})
end
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
if Type==1 or Type==nil then
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3,msh})
elseif Type==2 then
table.insert(Effects,{prt,"Block2",delay,x3,y3,z3,msh})
end
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ClangEffect(brickcolor,cframe,duration,decrease,size,power)
local prt=part(3,workspace,0,1,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(5,5,5))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"CylinderClang",duration,decrease,size,power,prt.CFrame,nil})
end

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
if hit.Parent==nil then
return
end
if hit.Name=="Hitbox" and hit.Parent~=modelzorz and ranged~=true then
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(hit.Position)
game:GetService("Debris"):AddItem(ref,1)
hitnum=math.random(1,5)
if hitnum==1 then so("199148971",ref,1,1)
elseif hitnum==2 then so("199149025",ref,1,1)
elseif hitnum==3 then so("199149072",ref,1,1)
elseif hitnum==4 then so("199149109",ref,1,1)
elseif hitnum==5 then so("199149119",ref,1,1)
end
StaggerHit.Value=true
end
h=hit.Parent:FindFirstChild("Humanoid")
for _,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid") then
h=v
end
end
if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
h=hit.Parent.Parent:FindFirstChild("Humanoid")
end
if hit.Parent.className=="Hat" then
hit=hit.Parent.Parent:findFirstChild("Head")
end
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
if Player.Neutral==false and game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
if game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor==Player.TeamColor then return end
end
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game:service("Players").LocalPlayer
c.Parent=h
RecentEnemy.Value=hit.Parent
game:GetService("Debris"):AddItem(c,.5)
minim=minim*Atk.Value
maxim=maxim*Atk.Value
Damage=0
if minim==maxim then
Damage=maxim
else
Damage=math.random(minim,maxim)
end
blocked=false
enblock=nil
Stats=hit.Parent:findFirstChild("Stats")
if Stats~=nil then
invis=Stats:findFirstChild("Invisibility")
isinvis=Stats:findFirstChild("IsInvisible")
if (ranged==false or ranged==nil) and invis~=nil and isinvis.Value==true then
invis.Value=0
end
enblock=Stats:findFirstChild("Block")
if enblock~=nil then
if enblock.Value==true then
blocked=true
end
end
if Stats:findFirstChild("Defense")~=nil then
Damage=Damage/(Stats.Defense.Value)
if Damage<=3 and (ranged==false or ranged==nil) and blocked~=true then
hitnum=math.random(1,5)
if hitnum==1 then so("199149321",hit,1,1)
elseif hitnum==2 then so("199149338",hit,1,1)
elseif hitnum==3 then so("199149367",hit,1,1)
elseif hitnum==4 then so("199149409",hit,1,1)
elseif hitnum==5 then so("199149452",hit,1,1)
end
elseif ranged==false or ranged==nil and blocked~=true then
hitnum=math.random(1,6)
if hitnum==1 then so("199149137",hit,1,1)
elseif hitnum==2 then so("199149186",hit,1,1)
elseif hitnum==3 then so("199149221",hit,1,1)
elseif hitnum==4 then so("199149235",hit,1,1)
elseif hitnum==5 then so("199149269",hit,1,1)
elseif hitnum==6 then so("199149297",hit,1,1)
end
end
if Damage<=3 and staghit==true then
if ranged~=true then
StaggerHit.Value=true
end
end
end
if Stats:findFirstChild("Stun")~=nil then
if blocked==true then
incstun=incstun/2
end
if Stats.Stun.Value<100 then
Stats.Stun.Value=Stats.Stun.Value+incstun
end
end
if Stats:findFirstChild("Stagger")~=nil then
if stagger==true then
Stats.Stagger.Value=true
end
end
end
if blocked==true then
showDamage(hit.Parent,"Block","Damage")
if ranged~=true then
enblock.Value=false
Stagger.Value=true
hitnum=math.random(1,2)
if hitnum==1 then so("199148933",hit,1,1)
elseif hitnum==2 then so("199148947",hit,1,1)
end
end
else
Damage=math.floor(Damage)
coroutine.resume(coroutine.create(function(Hum,Dam)
hit.Parent.Humanoid:TakeDamage(Damage)
end),h,Damage)
showDamage(hit.Parent,Damage,"Damage")
if DecreaseState~=nil then
DecreaseStat(hit.Parent,DecreaseState,DecreaseAmount,Duration)
end
if Type=="NormalDecreaseMvmt1" then
DecreaseStat(hit.Parent,"Movement",.1,200)
end
if Type=="Knockdown" then
hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.2)
game:GetService("Debris"):AddItem(rl,.2)
elseif Type=="Knockdown2" then
hum=hit.Parent.Humanoid
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.2)
elseif Type=="Normal" or Type=="NormalDecreaseMvmt1" then
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
if KnockbackType==1 then
vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
elseif KnockbackType==2 then
vp.velocity=Property.CFrame.lookVector*knockback
end
game:GetService("Debris"):AddItem(vp,.2)
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
end
end
debounce=Instance.new("BoolValue")
debounce.Name="DebounceHit"
debounce.Parent=hit.Parent
debounce.Value=true
game:GetService("Debris"):AddItem(debounce,Delay)
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=Player
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
CRIT=false
end
end

showDamage=function(Char,Dealt,Type)
m=Instance.new("Model")
m.Name="Effect"
c=Instance.new("Part")
c.Transparency=1
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
b=Instance.new("BillboardGui",c)
b.Size=UDim2.new(5,0,5,0)
b.AlwaysOnTop=true
damgui=gui("TextLabel",b,tostring(Dealt),1,Color3.new(0,0,0),UDim2.new(0,0,0,0),UDim2.new(1,0,1,0))
if Type=="Damage" then
damgui.Font="SourceSans"
if Dealt=="Block" then
damgui.TextColor3=BrickColor.new("Bright blue").Color
elseif Dealt<3 then
damgui.TextColor3=BrickColor.new("White").Color
elseif Dealt>=3 and Dealt<20 then
damgui.TextColor3=BrickColor.new("Bright yellow").Color
else
damgui.TextColor3=BrickColor.new("Really red").Color
damgui.Font="SourceSansBold"
end
elseif Type=="Debuff" then
damgui.TextColor3=BrickColor.new("White").Color
elseif Type=="Interrupt" then
damgui.TextColor3=BrickColor.new("New Yeller").Color
end
--damgui.FontSize="Size48"
damgui.TextScaled=true
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
ms.Parent=c
c.Reflectance=0
Instance.new("BodyGyro").Parent=c
c.Parent=m
if Char:findFirstChild("Head")~=nil then
c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
elseif Char.Parent:findFirstChild("Head")~=nil then
c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
end
f=Instance.new("BodyPosition")
f.P=2000
f.D=100
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
if Type=="Damage" then
f.position=c.Position+Vector3.new(0,3,0)
elseif Type=="Debuff" or Type=="Interrupt" then
f.position=c.Position+Vector3.new(0,5,0)
end
f.Parent=c
game:GetService("Debris"):AddItem(m,5)
table.insert(Effects,{m,"showDamage",damgui,f,10,1,15,50,100})
c.CanCollide=false
m.Parent=workspace
c.CanCollide=false
end

combo=0
function ob1d(mouse) 
if GuardStance==true then
if MMouse.Target~=nil then
if MMouse.Target.Parent.Parent:findFirstChild("Humanoid")~=nil and MMouse.Target.Parent.Parent:findFirstChild("Torso")~=nil then
Target=MMouse.Target.Parent.Parent
GuardStance=false
end
if MMouse.Target.Parent:findFirstChild("Humanoid")~=nil and MMouse.Target.Parent:findFirstChild("Torso")~=nil then
Target=MMouse.Target.Parent
GuardStance=false
end
end
end
if attack==true or equipped==false then return end
hold=true
if Mode=="Defensive" then
if combo==0 then
combo=1
dattackone()
elseif combo==1 then
combo=2
dattacktwo()
elseif combo==2 then
combo=3
dattackthree()
elseif combo==3 then
combo=0
dattackfour()
end
else
if combo==0 then
combo=1
oattackone()
elseif combo==1 then
combo=2
oattacktwo()
elseif combo==2 then
combo=3
oattackthree()
elseif combo==3 then
combo=0
oattackfour()
end
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
end
end))
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

fenbarmove1.MouseButton1Click:connect(do1)
fenbarmove2.MouseButton1Click:connect(do2)
fenbarmove3.MouseButton1Click:connect(do3)
fenbarmove4.MouseButton1Click:connect(do4)
eul=0
equipped=false
function key(key) 
if key=="x" and Fly==true then
Fly=false
Target=nil
end
if key==string.char(8) and Fly==true then
Fly=false
Target=nil
end
if key=="x" and GuardStance==true then
manualguardend=true
GuardStance=false
end
if attack==true then return end
if key=="f" then
pressedf=true
fnumb=0
attack=true
if equipped==false then
equipped=true
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
--
Animate.Parent=nil
animTrack:Play()
equipanim() 
else
equipped=false
hideanim() 
LH.C1=LHC1
RH.C1=RHC1
animTrack:Stop()
Animate.Parent=Character
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end
attack=false
end
if equipped==false then return end
--[[if key=="q" then
attack=true
for i=0,1,0.1 do
swait()
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.3)
wld1.C0=clerp(wld1.C0,cf(0,0,0)*euler(1.4,0,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.57),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.57),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0,-1.4)*euler(0,1,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.2)*euler(0,1.57,0)*euler(-.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-.5,-1,.2)*euler(0,-1.57,0)*euler(.2,1.57,0),.2)
end
swait(200)
attack=false
end]]
if key=="e" then
ModeChange()
end
if key=="z" then
do1()
end
if key=="x" then
do2()
end
if key=="c" then
do3()
end
if key=="v" then
do4()
end
if key=="h" then
--mana=100
end
if attack==false then
RecentEnemy.Value=nil
end
end 

function key2(key) 


end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 

player=Player 
ch=Character 
MMouse=mouse 
end 

function ds(mouse) 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Commander loaded.")

local mananum=0
local donum=0
local stunnum=0
local staggeranim=false
local stunanim=false
local passivenum=0
local walk=0
local walkforw=true
while true do
swait()
if Humanoid.Health<=0 then
attack=true
resumeControl()
modelzorz.Parent=workspace
game:GetService("Debris"):AddItem(modelzorz,30)
for i=1,#Weapon do
Weapon[i].Parent=modelzorz
Weapon[i].CanCollide=true
end
for i=1,#Welds do
if Welds[i].Part0.Parent==Character or Welds[i].Part1.Parent==Character then
Welds[i].Parent=nil
else
Welds[i].Parent=prt1
end
end
end
if fnumb<21 then
fnumb=fnumb+1
if pressedf==false then
fenframe5.BackgroundTransparency=fenframe5.BackgroundTransparency-.025
tellbar.TextTransparency=tellbar.TextTransparency-.05
tellbar.TextStrokeTransparency=tellbar.TextStrokeTransparency-.05
else
if fnumb==20 then
fenframe5.Parent=nil
print("daigui")
end
fenframe5.BackgroundTransparency=fenframe5.BackgroundTransparency+.025
tellbar.TextTransparency=tellbar.TextTransparency+.05
tellbar.TextStrokeTransparency=tellbar.TextStrokeTransparency+.05
end
end
if hbwld.Parent==nil then
hitbox2.Name="Hitbox"
else
hitbox2.Name="Hitbox2"
end
hitbox2.Parent=hitbox.Parent
hitbox2.Size=hitbox.Size
hitbox2.CFrame=hitboxCF
hboxpos.position=hitbox2.Position+vt(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
if passivenum>=300 then
passivenum=0
Max=Humanoid.MaxHealth
Cur=Humanoid.Health
Val=(((Max-Cur)/250)+1)*((Max/Cur)*(Cur/100))
Val=Val-1
print(Val)
if Val>0 then
if Mode=="Defensive" then
MagniBuff(RootPart,60,"Defense",-Val,9999,true)
else
MagniBuff(RootPart,60,"Damage",-Val,9999,true)
end
end
else
passivenum=passivenum+1
end
if Stagger.Value==true and staggeranim==false then
coroutine.resume(coroutine.create(function()
staggeranim=true
while attack==true do
swait()
end
StaggerAnim()
StaggerHit.Value=false
Stagger.Value=false
staggeranim=false
end))
end
if StaggerHit.Value==true and staggeranim==false then
coroutine.resume(coroutine.create(function()
staggeranim=true
while attack==true do
swait()
end
StaggerHitt()
StaggerHit.Value=false
Stagger.Value=false
staggeranim=false
end))
end
if Mvmt.Value<0 or Stagger.Value==true or Stun.Value>=100 or StaggerHit.Value==true then
Humanoid.WalkSpeed=0
else
Humanoid.WalkSpeed=16*Mvmt.Value
end
if Stun.Value>=100 and stunanim==false then
coroutine.resume(coroutine.create(function()
stunanim=true
while attack==true do
swait()
end
StunAnim()
Stun.Value=0
stunanim=false
end))
end
local stunnum2=20
if Mode=="Defensive" then
stunnum2=20
else
stunnum2=60
end
if stunnum>=stunnum2 then
if Stun.Value>0 then
Stun.Value=Stun.Value-1
end
stunnum=0
end
stunnum=stunnum+1
if donum>=.5 then
handidle=true
elseif donum<=0 then
handidle=false
end
if handidle==false then
donum=donum+0.003
else
donum=donum-0.003
end
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if Anim=="Walk" then
if walkforw==true then
RH.C1=clerp(RH.C1,RHC1*cf(.2,-.2,0)*euler(0,0,1),(Mvmt.Value*10)/50)
LH.C1=clerp(LH.C1,LHC1*cf(.1,.2,0)*euler(0,0,1),(Mvmt.Value*10)/50)
else
RH.C1=clerp(RH.C1,RHC1*cf(-.1,.2,0)*euler(0,0,-1),(Mvmt.Value*10)/50)
LH.C1=clerp(LH.C1,LHC1*cf(-.2,-.2,0)*euler(0,0,-1),(Mvmt.Value*10)/50)
end
else
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.4,0,.2),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.2,0,.8),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.8),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if Mode=="Defensive" then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.15)
wld1.C0=clerp(wld1.C0,cf(0,-.5,0)*euler(-.57,0,0),.15)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.15)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.15)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2+(donum/3)),.15)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,0,0-(donum/2))*euler(0,0+donum/1.5,0),.15)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.15)
RH.C0=clerp(RH.C0,RHC0,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
else
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,1,0)*euler(-.2,0,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,.5),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.5-(donum/2),0,.5-(donum/2)),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.4+(donum/2)),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.2)
end
end
elseif torvel>2 and torvel<30 and hitfloor~=nil then
Anim="Walk"
walk=walk+1
if walk>=15-(5*Mvmt.Value) then
walk=0
if walkforw==true then
walkforw=false
elseif walkforw==false then
walkforw=true
end
end
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(1.57,0,0)*cf(0,1,0),.2)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0),.2)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,1),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(.6,-1,.5)*euler(0,1.57,0)*euler(0,-1,-.2),.2)
LH.C0=clerp(LH.C0,cf(-.6,-1,-.5)*euler(0,-1.57,0)*euler(0,-1,-.2),.2)
end
elseif torvel>=30 and hitfloor~=nil then
Anim="Run"
if attack==false then
handlewld.C0=clerp(handlewld.C0,euler(-1.57,0,0)*cf(0,1,0),.4)
wld1.C0=clerp(wld1.C0,cf(0,1.5,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,0),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(.3,0,0),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.87,0,-.8)*euler(0,0,0),.4)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.87,0,.8)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-.7,0)*euler(0,1.57,0)*euler(-.2,0,.2),.4)
LH.C0=clerp(LH.C0,cf(-1,-.7,0)*euler(0,-1.57,0)*euler(-.2,0,-.2),.4)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("New Yeller",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
--[[Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
end
if Thing[2]=="showDamage" then
--[[
1=model
2=showdamage
3=gui
4=bodypos
5=10
6=1
7=60
8=90
9=120
]]
if Thing[6]<Thing[5] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[7] then
Thing[4].position=Thing[4].position+vt(0,-.2,0)
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[8] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[9] then
Thing[6]=Thing[6]+1
Thing[4].position=Thing[4].position+vt(0,.2,0)
Thing[3].TextStrokeTransparency=Thing[3].TextStrokeTransparency+.1
Thing[3].TextTransparency=Thing[3].TextTransparency+.1
else
Thing[1].Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]~="DecreaseStat" and Thing[2]~="showDamage" then
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
--end
end
end
end
fenbarmana2:TweenSize(UDim2.new(.4,0,-4*mana.Value/100,0),nil,1,0.4,true)
fenbarmana4.Text="Mana("..mana.Value..")"
fenbarhp2.BackgroundColor3=Color3.new(Humanoid.Health/Humanoid.MaxHealth,0,0)
fenbarhp2:TweenSize(UDim2.new(Humanoid.Health/Humanoid.MaxHealth,0,1,0),nil,1,0.4,true)
fenbarhp3.Text="("..math.floor(Humanoid.Health)..")"
fenbarmove1b:TweenSize(UDim2.new(1*cooldowns[1]/cooldownmax,0,1,0),nil,1,0.4,true)
fenbarmove2b:TweenSize(UDim2.new(1*cooldowns[2]/cooldownmax,0,1,0),nil,1,0.4,true)
fenbarmove3b:TweenSize(UDim2.new(1*cooldowns[3]/cooldownmax,0,1,0),nil,1,0.4,true)
fenbarmove4b:TweenSize(UDim2.new(1*cooldowns[4]/cooldownmax,0,1,0),nil,1,0.4,true)
for _,c in pairs(Decrease:children()) do
if c:findFirstChild("Duration")~=nil then
c.Duration.Value=c.Duration.Value-1
if c.Duration.Value<=0 then
c.Parent=nil
end
end
if c.Name=="DecreaseAtk" then
decreaseatk=decreaseatk+c.Value
elseif c.Name=="DecreaseDef" then
decreasedef=decreasedef+c.Value
elseif c.Name=="DecreaseMvmt" then
decreasemvmt=decreasemvmt+c.Value
end
end
--[[if Mode=="Defensive" then
Max=Humanoid.MaxHealth
Cur=Humanoid.Health
Val=(((Max-Cur)/150)+1)*((Max/Cur)*(Cur/100))
Atk.Value=1-decreaseatk
Def.Value=Val-decreasedef
Mvmt.Value=1-decreasemvmt
elseif Mode=="Offensive" then
Max=Humanoid.MaxHealth
Cur=Humanoid.Health
Val=(((Max-Cur)/170)+1)*((Max/Cur)*(Cur/100))
Val2=(((Max-Cur)/160)+1)*((Max/Cur)*(Cur/100))
Atk.Value=Val-decreaseatk
Def.Value=1-decreasedef
Mvmt.Value=Val2-decreasemvmt
end]]
Atk.Value=1-decreaseatk
if Atk.Value<=0 then
Atk.Value=0
end
Def.Value=1-decreasedef
if Def.Value<=0 then
Def.Value=0.01
end
Mvmt.Value=1-decreasemvmt
if Mvmt.Value<=0 then
Mvmt.Value=0
end
decreaseatk=0
decreasedef=0
decreasemvmt=0
AtkVal=Atk.Value*100
AtkVal=math.floor(AtkVal)
AtkVal=AtkVal/100
fenbardamage.Text="Damage\
("..(AtkVal)..")"
DefVal=Def.Value*100
DefVal=math.floor(DefVal)
DefVal=DefVal/100
fenbardef.Text="Defense\
("..(DefVal)..")"
MvmtVal=Mvmt.Value*100
MvmtVal=math.floor(MvmtVal)
MvmtVal=MvmtVal/100
fenbarmove.Text="Walkspeed\
("..(MvmtVal)..")"
if Stun.Value>=100 then
fenbarstun2:TweenSize(UDim2.new(.4,0,-4,0),nil,1,0.4,true)
else
fenbarstun2:TweenSize(UDim2.new(.4,0,-4*Stun.Value/100,0),nil,1,0.4,true)
end
fenbarstun3.Text="Stun("..Stun.Value..")"
if mana.Value>=100 then
mana.Value=100
else
if mananum<=9 then
mananum=mananum+1
else
mananum=0
mana.Value=mana.Value+1
end
end
for i=1,#cooldowns do
if cooldowns[i]>=cooldownmax then
cooldowns[i]=cooldownmax
else
cooldowns[i]=cooldowns[i]+cooldownsadd[i]
end
end
end


--[[ 
Copyrighted (C) Fenrier 2015
]] 