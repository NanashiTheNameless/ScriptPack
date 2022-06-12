--[[
Uloe model and design by DahNoob. Scripted by Fenrier.
And Leaked by DarkMystrik because of some idiot called OMGshadeslayer
]] 

wait(0.2)
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
Mode="Unactive"
blcf=nil
scfr=nil
sit=false
HeroCharge=0
InfCharge=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
 
if Character:findFirstChild("Uloe",true) ~= nil then 
Character:findFirstChild("Uloe",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
 
 
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
 
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "WeaponGUI" 
local fenframeice = it("Frame") 
fenframeice.Parent = fengui
fenframeice.BackgroundColor3 = Color3.new(255,255,255) 
fenframeice.BackgroundTransparency = 1 
fenframeice.BorderColor3 = Color3.new(17,17,17) 
fenframeice.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframeice.Position=UDim2.new(0.4,0,0.73,0)
local fenbarice1 = it("TextLabel") 
fenbarice1.Parent = fenframeice 
fenbarice1.Text = " " 
fenbarice1.BackgroundTransparency = 0 
fenbarice1.BackgroundColor3 = Color3.new(0,0,0) 
fenbarice1.SizeConstraint = "RelativeXY" 
fenbarice1.TextXAlignment = "Center" 
fenbarice1.TextYAlignment = "Center" 
fenbarice1.Position = UDim2.new(0,0,0,0)
fenbarice1.Size = UDim2.new(4,0,0.2,0)
local fenbarice2 = it("TextLabel") 
fenbarice2.Parent = fenframeice 
fenbarice2.Text = " " 
fenbarice2.BackgroundTransparency = 0 
fenbarice2.BackgroundColor3 = Color3.new(0.5,0.5,1) 
fenbarice2.SizeConstraint = "RelativeXY" 
fenbarice2.TextXAlignment = "Center" 
fenbarice2.TextYAlignment = "Center" 
fenbarice2.Position = UDim2.new(0,0,0,0)
fenbarice2.Size = UDim2.new(HeroCharge/100,0,0.2,0)
local fenbarice3 = it("TextLabel") 
fenbarice3.Parent = fenframeice 
fenbarice3.Text = " " 
fenbarice3.BackgroundTransparency = 0.5 
fenbarice3.BackgroundColor3 = Color3.new(1,1,1) 
fenbarice3.SizeConstraint = "RelativeXY" 
fenbarice3.TextXAlignment = "Center" 
fenbarice3.TextYAlignment = "Center" 
fenbarice3.Position = UDim2.new(2,0,0,0)
fenbarice3.Size = UDim2.new(0.05,0,0.2,0)
local fenbarice4 = it("TextLabel") 
fenbarice4.Parent = fenframeice 
fenbarice4.Text = "Hero("..HeroCharge..")"
fenbarice4.BackgroundTransparency = 1 
fenbarice4.BackgroundColor3 = Color3.new(0,0,0) 
fenbarice4.SizeConstraint = "RelativeXY" 
fenbarice4.TextXAlignment = "Center" 
fenbarice4.TextYAlignment = "Center" 
fenbarice4.Position = UDim2.new(0,0,-0.3,0)
fenbarice4.Size = UDim2.new(4,0,0.2,0)
fenbarice4.FontSize = "Size9"
fenbarice4.TextStrokeTransparency = 0
fenbarice4.TextColor = BrickColor.new("White")
local fenframeinf = it("Frame") 
fenframeinf.Parent = fengui
fenframeinf.BackgroundColor3 = Color3.new(255,255,255) 
fenframeinf.BackgroundTransparency = 1 
fenframeinf.BorderColor3 = Color3.new(17,17,17) 
fenframeinf.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframeinf.Position=UDim2.new(0.4,0,0.8,0)
local fenbarinf1 = it("TextLabel") 
fenbarinf1.Parent = fenframeinf 
fenbarinf1.Text = " " 
fenbarinf1.BackgroundTransparency = 0 
fenbarinf1.BackgroundColor3 = Color3.new(0,0,0) 
fenbarinf1.SizeConstraint = "RelativeXY" 
fenbarinf1.TextXAlignment = "Center" 
fenbarinf1.TextYAlignment = "Center" 
fenbarinf1.Position = UDim2.new(0,0,0,0)
fenbarinf1.Size = UDim2.new(4,0,0.2,0)
local fenbarinf2 = it("TextLabel") 
fenbarinf2.Parent = fenframeinf 
fenbarinf2.Text = " " 
fenbarinf2.BackgroundTransparency = 0 
fenbarinf2.BackgroundColor3 = Color3.new(1,0,0) 
fenbarinf2.SizeConstraint = "RelativeXY" 
fenbarinf2.TextXAlignment = "Center" 
fenbarinf2.TextYAlignment = "Center" 
fenbarinf2.Position = UDim2.new(0,0,0,0)
fenbarinf2.Size = UDim2.new(InfCharge/100,0,0.2,0)
local fenbarinf3 = it("TextLabel") 
fenbarinf3.Parent = fenframeinf 
fenbarinf3.Text = " " 
fenbarinf3.BackgroundTransparency = 0.5 
fenbarinf3.BackgroundColor3 = Color3.new(1,1,1) 
fenbarinf3.SizeConstraint = "RelativeXY" 
fenbarinf3.TextXAlignment = "Center" 
fenbarinf3.TextYAlignment = "Center" 
fenbarinf3.Position = UDim2.new(2,0,0,0)
fenbarinf3.Size = UDim2.new(0.05,0,0.2,0)
local fenbarinf4 = it("TextLabel") 
fenbarinf4.Parent = fenframeinf
fenbarinf4.Text = "Infamous("..InfCharge..")"
fenbarinf4.BackgroundTransparency = 1 
fenbarinf4.BackgroundColor3 = Color3.new(0,0,0) 
fenbarinf4.SizeConstraint = "RelativeXY" 
fenbarinf4.TextXAlignment = "Center" 
fenbarinf4.TextYAlignment = "Center" 
fenbarinf4.Position = UDim2.new(0,0,-0.3,0)
fenbarinf4.Size = UDim2.new(4,0,0.2,0)
fenbarinf4.FontSize = "Size9"
fenbarinf4.TextStrokeTransparency = 0
fenbarinf4.TextColor = BrickColor.new("White")
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Uloe" 
 
local prt1=part(1,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,2.4,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part2",vt(1,2.4,1))
local prt3=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part3",vt(1,1.2,1))
local prt4=part(1,modelzorz,0.3,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part5",vt(1,2.4,1))
local prt6=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part6",vt(1,1.2,2))
local prt7=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part7",vt(1,1.2,1))
local prt8=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part8",vt(1,1.2,1))
local prt9=part(1,modelzorz,0,0,BrickColor.new("White"),"Part9",vt(1,1.2,1))
local prt10=part(1,modelzorz,0.3,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))
local prt11=part(1,modelzorz,0.3,0,BrickColor.new("Really black"),"Part11",vt(1,1,1))
local prtref1=part(1,modelzorz,0,1,BrickColor.new("Black"),"ReferencePart",vt(1,1,1))
local prt12=part("Symmetric",modelzorz,0.3,0,BrickColor.new("Medium stone grey"),"Part12",vt(1,1,1))
local prt13=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part13",vt(1,1.2,1))
local prt14=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part14",vt(1,1.2,1))
local prtref2=part(1,modelzorz,0,1,BrickColor.new("Black"),"ReferencePart",vt(1,1,1))
local prt15=part("Symmetric",modelzorz,0.3,0,BrickColor.new("Medium stone grey"),"Part15",vt(1,1,1))
local prt16=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part16",vt(1,1.2,1))
local prtref3=part(1,modelzorz,0,1,BrickColor.new("Black"),"ReferencePart",vt(1,1,1))
local prt17=part("Symmetric",modelzorz,0.3,0,BrickColor.new("Medium stone grey"),"Part17",vt(1,1,1))
local prt18=part(1,modelzorz,0,0,BrickColor.new("Mid gray"),"Part18",vt(1,1.2,1))
local prtref4=part(1,modelzorz,0,1,BrickColor.new("Black"),"ReferencePart",vt(1,1,1))
local prt19=part("Symmetric",modelzorz,0.3,0,BrickColor.new("Medium stone grey"),"Part19",vt(1,1,1))
local hitbox=part(1,modelzorz,0,1,BrickColor.new("Black"),"Hitbox",vt(0.1,3.5,1.5))
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(0.35,0.5,0.55))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.3,0.75,0.5))
local msh3=mesh("CylinderMesh",prt3,"","",vt(0,0,0),vt(0.75,0.3,0.6))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.35,1,0.35))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.3,1,0.5))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.255,0.3,1))
local msh7=mesh("SpecialMesh",prt7,"Wedge","",vt(0,0,0),vt(0.25,0.2,0.35))
local msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(0.25,0.2,0.35))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.55,0.27,3))
local msh10=mesh("SpecialMesh",prt10,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.5,0.5,0.6))
local msh11=mesh("SpecialMesh",prt11,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.5,0.5,0.6))
local msh12=mesh("SpecialMesh",prt12,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.35,1,0.35))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh15=mesh("SpecialMesh",prt15,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.35,1,0.35))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh17=mesh("SpecialMesh",prt17,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.35,1,0.35))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(0.3,1,0.3))
local msh19=mesh("SpecialMesh",prt19,"FileMesh","http://www.roblox.com/Asset/?id=9756362",vt(0,0,0),vt(0.35,1,0.35))
 
local wld1=weld(prt1,prt1,Torso,euler(-2.5,1.57,0)*cf(-1,-1,-0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,0.8,0))
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,0.1,0))
local wld5=weld(prt5,prt5,prt2,euler(0,0,0)*cf(0,-1.5,0))
local wld6=weld(prt6,prt6,prt2,euler(0,0,0)*cf(0,-1,0))
local wld7=weld(prt7,prt7,prt6,euler(-1.57,0,3.14)*cf(0,0,-1.12))
local wld8=weld(prt8,prt8,prt6,euler(1.57,0,0)*cf(0,0,1.12))
local wld9=weld(prt9,prt9,prt6,euler(0,0,1.57)*cf(0,0,0))
local wld10=weld(prt10,prt10,prt9,euler(0,0.3,0)*cf(0,0,0))
local wld11=weld(prt11,prt11,prt9,euler(0,0.3+0.785,0)*cf(0,0,0))
local wldref1=weld(prtref1,prtref1,prt6,euler(0,0,0)*cf(0,-1.4,0))
local wld12=weld(prt12,prt12,prtref1,euler(0,0.785,0)*cf(0,0,0))
local wld13=weld(prt13,prt13,prtref1,cf(0,-0.7,0)*euler(-0.785,0,0))
local wld14=weld(prt14,prt14,prtref1,cf(0,-0.7,0)*euler(0.785,0,0))
local wldref2=weld(prtref2,prtref2,prt13,euler(-0.785,0,0)*cf(0,-0.5,0))
local wld15=weld(prt15,prt15,prtref2,euler(0,0.785,0)*cf(0,0,0))
local wld16=weld(prt16,prt16,prtref2,cf(0,0.7,0)*euler(-0.785,0,0))
local wldref3=weld(prtref3,prtref3,prt14,euler(0.785,0,0)*cf(0,-0.5,0))
local wld17=weld(prt17,prt17,prtref3,euler(0,0.785,0)*cf(0,0,0))
local wld18=weld(prt18,prt18,prtref3,cf(0,0.7,0)*euler(0.785,0,0))
local wldref4=weld(prtref4,prtref4,prt18,euler(0.785,0,0)*cf(0,0.5,0))
local wld19=weld(prt19,prt19,prtref4,euler(0,0.785,0)*cf(0,0,0))
local hitboxwld=weld(hitbox,hitbox,prt6,euler(0,0,0)*cf(0,-1.5,0))
 
local IceModel = Instance.new("Model") 
IceModel.Parent = nil
IceModel.Name = "HeroUloe" 
local iceprt=part(3,modelzorz,0,0,BrickColor.new("White"),"Ice Part",vt(0.5,0.5,0.5))
iceprt.Parent=nil
local icemsh=mesh("SpecialMesh",iceprt,"FileMesh","http://www.roblox.com/Asset/?id=19251107",vt(0,0,0),vt(0.5,0.5,0.5))
local FireModel = Instance.new("Model") 
FireModel.Parent = nil
FireModel.Name = "InfamousUloe" 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Uloe" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
 
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
 
function hideanim() 
equipped=false
Torso.Neck.C0=necko
RootJoint.C0=RootCF
wld1.Part1=Torso
wld1.C0=euler(-2.5,1.57,0)*cf(-1,-1,-0.6)
end 
 
function equipanim() 
equipped=true
wld1.Part1=RightArm
if Mode=="Unactive" then
Torso.Neck.C0=necko*euler(0,0.2,1)
RootJoint.C0=RootCF*euler(0,0,-1)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
LW.C0=cf(-1,0.5,-0.5)*euler(0.6,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1,0,-0.5)
RW.C1=cf(0,0.5,0)*euler(0,0.7,0)
elseif Mode=="Hero" then
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.4)
RootJoint.C0=RootCF*euler(0,0,0.4)
LW.C0=cf(-1,0.5,-0.5)*euler(1,0,0.2)
LW.C1=cf(0,0.5,0)*euler(0,-1,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.5,0,-0.2)
RW.C1=cf(0,0.5,0)*euler(0,-1,0)
elseif Mode=="Infamous" then
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.2,0,-0.5)
RootJoint.C0=RootCF*euler(0,0,0.5)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
end 
 
function attackone()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0.5*i)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(0,0.2-0.2*i,1+0.2*i)
RootJoint.C0=RootCF*euler(0,0,-1-0.2*i)
LW.C0=cf(-1+0.2*i,0.5,-0.5-0.2*i)*euler(0.6+0.5*i,0,0.7+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1+0.4*i,0,-0.5+0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7+0.4*i,0)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.6) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(30,80),"Knockdown",hitbox) end) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
Torso.Neck.C0=necko*euler(0,-0.2*i,1.2-1.8*i)
RootJoint.C0=RootCF*euler(0,0,-1.2+2*i)
LW.C0=cf(-0.8,0.5,-0.7+0.5*i)*euler(1.1-0.8*i,0,0.9-0.3*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1.4-0.8*i,0,-0.1-0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,1.1-0.6*i,0)
end
con1:disconnect()
for i=0,1,0.1 do
wait()
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
Torso.Neck.C0=necko*euler(0,-0.2,-0.6-0.1*i)
RootJoint.C0=RootCF*euler(0,0,0.8+0.2*i)
end
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0.5-0.5*i)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(-0.2*i,-0.2,-0.7+0.2*i)
RootJoint.C0=RootCF*euler(0,0,1-0.2*i)
LW.C0=cf(-0.8,0.5,-0.2)*euler(0.3+3*i,0,0.6-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1-1*i,0.5+0.5*i,-0.5)*euler(0.6+3*i,0,-0.5-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0.5-0.5*i,0)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.7) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(50,150),"Knockdown",hitbox) end) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+0.5*i,0,0)*cf(0,1,-0.3+0.3*i)
Torso.Neck.C0=necko*euler(-0.2+0.4*i,-0.2+0.2*i,-0.5+0.8*i)
RootJoint.C0=RootCF*euler(0,0,0.8-1.5*i)
LW.C0=cf(-0.8,0.5,-0.2)*euler(3.3-3*i,0,0.1+0.4*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(0.5*i,1-0.5*i,-0.5)*euler(3.6-3*i,0,-0.7+0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,-0.5*i,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(2.07+0.2*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.2,0,0.3+0.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.7-0.2*i)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
con1:disconnect()
attack=false
end
 
function Sit1()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(-0.4*i,0.2-0.2*i,1-1*i)
RootJoint.C0=RootCF*cf(0,0,-2*i)*euler(0.4*i,0,-1+1*i)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
LW.C0=cf(-1,0.5,-0.5)*euler(0.6+0.4*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1,0,-0.5)
RW.C1=cf(0,0.5,0)*euler(0,0.7-2*i,0)
LH.C0=LHC0*cf(0,0,0)*euler(0,0.5*i,-2*i)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5*i,2*i)
end
end
 
function UnSit()
Humanoid.WalkSpeed=16
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(0,0.2,1)
RootJoint.C0=RootCF*euler(0,0,-1)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
LW.C0=cf(-1,0.5,-0.5)*euler(0.6,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1,0,-0.5)
RW.C1=cf(0,0.5,0)*euler(0,0.7,0)
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
attack=false
end
 
function Sledge()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,-0.785*i)*cf(0,1,-0.3+0.3*i)
Torso.Neck.C0=necko*euler(-0.3*i,0.2-0.2*i,1-1*i)
RootJoint.C0=RootCF*euler(0,0,-1+1*i)
LW.C0=cf(-1,0.5+1*i,-0.5+0.5*i)*euler(0.6+2.5*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5+1*i,-0.5+0.5*i)*euler(1+2.1*i,0,-0.5-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7-0.7*i,0)
end
so("http://www.roblox.com/asset/?id=160772554",hitbox,1,1) 
for i=0,1,0.05 do
wait()
MagicBlock(BrickColor.new("White"),prt12.CFrame*cf(0,1,0),0.5,0.5,0.5,0.5,0.5,0.5)
LW.C0=cf(-1,1.5,0)*euler(3.1+0.2*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,1.5,0)*euler(3.1+0.2*i,0,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
MagicBlock(BrickColor.new("White"),prt12.CFrame*cf(0,1,0),0.5,0.5,0.5,0.5,0.5,0.5)
Torso.Neck.C0=necko*euler(-0.3+0.5*i,0,0)
LW.C0=cf(-1,1.5-1*i,-0.5*i)*euler(3.3-3*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,1.5-1*i,-0.5*i)*euler(3.3-3*i,0,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - prt12.Position+vt(0,-1,0)
local mag = targ.magnitude
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc(head,10,20,math.random(50,150),"Knockdown",prt12)
end
end
end
end
so("http://www.roblox.com/asset/?id=2697431",hitbox,1,0.3) 
for i=1,2 do
MagicBlock(BrickColor.new("White"),prt12.CFrame*cf(0,1,0),0.5,0.5,0.5,2,2,2)
end
MagicCircle(BrickColor.new("White"),prt12.CFrame*cf(0,1,0),0.5,0.5,0.5,1.5,1.5,1.5,0.05)
for i=0,1,0.2 do
wait()
LW.C0=cf(-1,0.5,-0.5)*euler(0.3-0.2*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.3-0.2*i,0,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,-0.785+0.785*i)*cf(0,1,-0.3*i)
Torso.Neck.C0=necko*euler(0.2-0.2*i,0.2*i,1*i)
RootJoint.C0=RootCF*euler(0,0,-1*i)
LW.C0=cf(-1,0.5,-0.5)*euler(0.1+0.5*i,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.1+0.9*i,0,-0.7+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7*i,0)
end
attack=false
end
 
function UnactivetoHero()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.5*i,0,0)*cf(0,1,-0.3+0.3*i)
Torso.Neck.C0=necko*euler(-0.2*i,0.2-0.2*i,1-1.2*i)
RootJoint.C0=RootCF*euler(0,0,-1+1.2*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(0.6-0.8*i,0,0.7-0.9*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1+1*i,0,-0.5+0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7-0.7*i,0)
end
IceModel.Parent=modelzorz
for _,v in pairs(modelzorz:children()) do
coroutine.resume(coroutine.create(function(Part)
if Part.Name=="Part19" then
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=1
end
end),v)
if v.className~="Model" and v.Name~="Hitbox" and v.Name~="Part1" and v.Name~="ReferencePart" and v.Name~="Part19" then
cl=v:Clone()
cl.Parent=IceModel
if v.Name=="Part7" and v.Name=="Part8" then
end
if v.Name=="Part9" then
cl.BrickColor=BrickColor.new("White")
elseif v.Name=="Part10" or v.Name=="Part11" then
cl.BrickColor=BrickColor.new("Deep blue")
elseif v.Name=="Part6" or v.Name=="Part7" or v.Name=="Part8" then
cl.BrickColor=BrickColor.new("Pastel light blue")
elseif v.Name=="Part3" then
cl.BrickColor=BrickColor.new("Medium blue")
elseif v.Name=="Part4" then
cl.BrickColor=BrickColor.new("Light blue")
elseif v.Name=="Part12" or v.Name=="Part15" or v.Name=="Part17" or v.Name=="Part19" then
cl.BrickColor=BrickColor.new("Light blue")
else
cl.BrickColor=BrickColor.new("Cyan")
end
cl.Transparency=1
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=0
end),cl)
clmsh=cl.Mesh
clmsh.Scale=clmsh.Scale+vt(0.01,0.01,0.01)
clwld=Instance.new("Weld")
clwld.Parent=cl
clwld.Part0=cl
clwld.Part1=v
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
end
end
so("http://roblox.com/asset/?id=25605551",hitbox,1,1) 
for i=0,1,0.1 do
wait()
MagicBlock(BrickColor.new("Bright blue"),hitbox.CFrame*cf(math.random(-1,1),math.random(-3,3),math.random(-1,1)),0.2,0.2,0.2,0.2,0.2,0.2)
wld13.C0=cf(0,-0.7,0)*euler(-0.785+0.385*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(0.785-0.385*i,0,0)
end
for i=0,1,0.1 do
wait()
MagicBlock(BrickColor.new("Bright blue"),hitbox.CFrame*cf(math.random(-1,1),math.random(-3,3),math.random(-1,1)),0.2,0.2,0.2,0.2,0.2,0.2)
wld16.C0=cf(0,0.7,0)*euler(-0.785-2.455*i,0,0)
wld18.C0=cf(0,0.7,0)*euler(0.785+2.455*i,0,0)
wld15.C0=cf(0,-1.3*i,0)*euler(-0.1*i,0.785-0.785*i,0)
wld17.C0=cf(0,-1.3*i,0)*euler(0.1*i,0.785-0.785*i,0)
wldref2.C0=euler(-0.785+0.785*i,0,0)*cf(0,-0.5,0)
wldref3.C0=euler(0.785-0.785*i,0,0)*cf(0,-0.5,0)
end
iceprt.Transparency=0
iceprt.Parent=IceModel
local icewld=weld(iceprt,iceprt,hitbox,euler(0,0,1.57)*cf(0,-2,0))
so("http://www.roblox.com/asset/?id=136847657",iceprt,1,1)
MagicBlock(BrickColor.new("Bright blue"),iceprt.CFrame,0.2,0.2,0.2,0.5,0.5,0.5)
MagicCircle(BrickColor.new("Cyan"),iceprt.CFrame,0.5,0.5,0.5,1,1,1,0.05)
for i=1,5 do
BreakEffect(BrickColor.new("White"),iceprt.CFrame,0.2,math.random(1,5),0.2)
end
coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait()
--Weld.C1=Weld.C1*euler(0.2,0,0)
end
end),iceprt,icewld)
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
BreakEffect(BrickColor.new("White"),Part.CFrame,0.2,math.random(1,5),0.2)
end
end),iceprt)
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.5-0.5*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(-0.2+0.2*i,0,-0.2)
RW.C0=cf(1.5,0.5,0)*euler(2-1*i,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.2-0.2*i)
RootJoint.C0=RootCF*euler(0,0,0.2+0.2*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.2+1.2*i,0,-0.2+0.4*i)
LW.C1=cf(0,0.5,0)*euler(0,-1*i,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1-0.5*i,0,-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,-1*i,0)
end
attack=false
end
 
function UnactivetoInfamous()
attack=true
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.2*i,0.2-0.2*i,1-1*i)
RootJoint.C0=RootCF*euler(0,0,-1+1*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(0.6+0.4*i,0,0.7-0.7*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1+0.57*i,0,-0.5+0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7-2.27*i,0)
end
infprt16=nil
infprt18=nil
FireModel.Parent=modelzorz
for _,v in pairs(modelzorz:children()) do
if v.className~="Model" and v.Name~="Hitbox" and v.Name~="Part1" and v.Name~="ReferencePart" then
cl=v:Clone()
cl.Parent=FireModel
if v.Name=="Part16" then
infprt16=cl
elseif v.Name=="Part18" then
infprt18=cl
end
if v.Name=="Part7" and v.Name=="Part8" then
end
if v.Name=="Part9" then
cl.BrickColor=BrickColor.new("White")
elseif v.Name=="Part3" then
cl.BrickColor=BrickColor.new("Dusty Rose")
elseif v.Name=="Part4" then
cl.BrickColor=BrickColor.new("Really red")
elseif v.Name=="Part6" or v.Name=="Part7" or v.Name=="Part8" then
cl.BrickColor=BrickColor.new("Bright orange")
elseif v.Name=="Part12" or v.Name=="Part15" or v.Name=="Part17" or v.Name=="Part19" then
cl.BrickColor=BrickColor.new("Really red")
else
cl.BrickColor=BrickColor.new("Bright red")
end
cl.Transparency=1
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=0
end),cl)
clmsh=cl.Mesh
clmsh.Scale=clmsh.Scale+vt(0.01,0.01,0.01)
clwld=Instance.new("Weld")
clwld.Parent=cl
clwld.Part0=cl
clwld.Part1=v
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
end
end
infmsh16=infprt16.Mesh
infmsh18=infprt18.Mesh
infwld16=infprt16.Weld
infwld18=infprt18.Weld
so("http://www.roblox.com/asset/?id=151244228",hitbox,1,1) 
for i=0,1.05,0.05 do
wait()
MagicBlock(BrickColor.new("Bright red"),hitbox.CFrame*cf(math.random(-1,1),math.random(-3,3),math.random(-1,1)),0.2,0.2,0.2,0.2,0.2,0.2)
infmsh16.Scale=vt(0.31,1+0.5*i,0.31)
infmsh18.Scale=vt(0.31,1+0.5*i,0.31)
infwld16.C0=cf(0,0.2*i,0)
infwld18.C0=cf(0,0.2*i,0)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3+0.3*i)
wld13.C0=cf(0,-0.7,0)*euler(-0.785-1.5*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(0.785+1.5*i,0,0)
wld15.C0=euler(0,0.785,0)*cf(0,0,0.3*i)
wld17.C0=euler(0,0.785,0)*cf(0,0,-0.3*i)
wld16.C0=cf(0,0.7,0)*euler(-0.785+1.785*i,0,0)
wld18.C0=cf(0,0.7,0)*euler(0.785-1.785*i,0,0)
wldref2.C0=euler(-0.785-0.785*i,0,0)*cf(0,-0.5+0.3*i,0)
wldref3.C0=euler(0.785+0.785*i,0,0)*cf(0,-0.5+0.3*i,0)
wldref4.C0=euler(0.785-0.5*i,0,0)*cf(0,0.5+0.6*i,0.1785*i)
end
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright red"),hitbox.CFrame,0.2,0.2,0.2,1,1,1)
MagicCircle(BrickColor.new("Bright orange"),hitbox.CFrame,0.3,1,0.3,0.7,1.2,0.7,0.05)
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1-1.2*i,0,-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.77*i,0,0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57+1.57*i,0)
end
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.5-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.2-0.2*i,0,0.5+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.4-0.2*i,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4+0.6*i,0,-0.7+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.4+0.4*i,0,0.7-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
coroutine.resume(coroutine.create(function(Arm) 
while Mode=="Infamous" do
wait(math.random(0,1)+math.random())
if math.random(1,2)==1 then
MagicFire(BrickColor.new("Bright red"),Arm.CFrame*cf(0,-1,0),1.5,1.5,1.5)
else
MagicFire(BrickColor.new("Bright yellow"),Arm.CFrame*cf(0,-1,0),1.5,1.5,1.5)
end
end
end),LeftArm)
attack=false
end
 
function heroattackone()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,-0.5*i)*cf(0,1,0)
Torso.Neck.C0=necko*euler(-0.2*i,0,-0.4-0.4*i)
RootJoint.C0=RootCF*euler(0,0,0.4+0.4*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1+0.8*i,0,0.2-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,-1+0.5*i,0) 
RW.C0=cf(1-1*i,0.5,-0.5)*euler(0.5+1.5*i,0,-0.2-0.8*i)
RW.C1=cf(0,0.5,0)*euler(0,-1+0.5*i,0)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.9) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(10,30),"Normal") end) 
--con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,10,30,math.random(50,150),hitbox) end) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+0.2*i,0,-0.5-0.3*i)*cf(0,1,0)
Torso.Neck.C0=necko*euler(-0.2+0.6*i,0,-0.8+1*i)
RootJoint.C0=RootCF*euler(0,0,0.8-1*i)
LW.C0=cf(-1.5+1*i,0.5,-0.5*i)*euler(1.8-1.6*i,0,0.6*i)
LW.C1=cf(0,0.5,0)*euler(0,-0.5,0) 
RW.C0=cf(1*i,0.5,-0.5)*euler(2-1.5*i,0,-1+0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,-0.5,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
for i=0,1,0.2 do
wld1.C0=euler(1.57+0.2-0.2*i,0,-0.8+0.4*i)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.4,0,0.2+0.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.2-0.2*i)
LW.C0=cf(-0.5+0.5*i,0.5,-0.5)*euler(0.2-0.4*i,0,0.6+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,-0.5,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.5-0.6*i,0,-0.5+0.7*i)
RW.C1=cf(0,0.5,0)*euler(0,-0.5,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
wait()
end
con1:disconnect()
wait()
attack=false
end
 
function heroattacktwo()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,-0.4)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.4,0,0.4-0.4*i)
RootJoint.C0=RootCF*euler(0,0,-0.4+0.4*i)
LW.C0=cf(-0.5*i,0.5,-0.5)*euler(-0.2+0.4*i,0,0.8-0.4*i)
LW.C1=cf(0,0.5,0)*euler(0,-0.5+0.5*i,0) 
RW.C0=cf(1,0.5,-0.5)*euler(-0.1+0.3*i,0,0.2-0.6*i)
RW.C1=cf(0,0.5,0)*euler(0,-0.5+0.5*i,0)
end
local icprt=part(3,workspace,0,1,BrickColor.new("Bright blue"),"Icicle Part",vt(1,1,1))
icprt.Anchored=true
icprt.CFrame=Torso.CFrame*cf(0,0,-10)
game:GetService("Debris"):AddItem(icprt,5)
CreateIcicle(icprt.CFrame,true)
for i=1,math.random(5,8) do
local freezepart=part(3,workspace,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
freezepart.Anchored=true
freezepart.CFrame=icprt.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,7)
coroutine.resume(coroutine.create(function(Part) 
wait(2)
Part.Anchored=false
Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
wait(5)
Part.Parent=nil
end),freezepart)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.7) 
blcf=nil
scfr=nil
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(20,60),"Normal") end) 
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - icprt.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc(head,20,30,math.random(10,30),"Up")
end
end
end
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.4-0.8*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
LW.C0=cf(-0.5,0.5+0.5*i,-0.5)*euler(0.2+2.8*i,0,0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5+0.5*i,-0.5)*euler(0.2+2.8*i,0,-0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
con1:disconnect()
wait()
attack=false
end
 
function heroattackthree()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0,-0.4+0.4*i)*cf(0,1,0)
Torso.Neck.C0=necko*euler(-0.4+0.4*i,0,-1*i)
RootJoint.C0=RootCF*euler(0,0,1*i)
LW.C0=cf(-0.5-1*i,1-0.5*i,-0.5+0.5*i)*euler(3-2*i,0,0.4-1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,1-0.5*i,-0.5)*euler(3-1.43*i,0,-0.4)
RW.C1=cf(0,0.5,0)*euler(0,-1.57*i,0)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.9) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-1-0.57*i)
RootJoint.C0=RootCF*euler(0,0,1+0.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(1,0,-0.6-0.9*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.5,0,-0.4+2.3*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
local icprt=part(3,workspace,0,1,BrickColor.new("Bright blue"),"Icicle Part",vt(1,1,1))
icprt.Anchored=true
icprt.CFrame=RootPart.CFrame*cf(0,0,-10)
so("http://www.roblox.com/asset/?id=41763367",iceprt,1,1) 
so("http://www.roblox.com/asset/?id=136847657",iceprt,1,0.7) 
game:GetService("Debris"):AddItem(icprt,5)
for i=1,math.random(8,15) do
local freezepart=part(3,workspace,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
freezepart.Anchored=true
freezepart.CFrame=icprt.CFrame*cf(math.random(-5,4)+math.random(),-2.5,math.random(-5,4)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,7)
coroutine.resume(coroutine.create(function(Part) 
wait(2.5)
Part.Anchored=false
Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
wait(5)
Part.Parent=nil
end),freezepart)
end
local freezepart=part(3,workspace,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(10,10,10))
freezepart.Anchored=true
freezepart.CanCollide=true
freezepart.CFrame=icprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,7)
coroutine.resume(coroutine.create(function(Part) 
wait(1.5)
for i=1,6 do
p=Part:Clone()
p.Parent=workspace
p.Size=vt(math.random(1,5),math.random(1,5),math.random(1,5))
p.CFrame=Part.CFrame*cf(math.random(-5,5),math.random(-2,5),math.random(-5,5))
p.Anchored=false
p.Velocity=vt(math.random(-40,40),math.random(-10,40),math.random(-40,40))
game:GetService("Debris"):AddItem(p,5)
end
so("http://www.roblox.com/asset/?id=87015121",Part,1,2) 
Part.Transparency=1
Part.CanCollide=false
wait(2)
Part.Parent=nil
end),freezepart)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - icprt.Position
local mag = targ.magnitude
if mag <= 8 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc(head,10,20,math.random(10,30),"Freeze")
end
end
end
end
--wait(2)
attack=false
end
 
function HerotoUnactive()
attack=true
prt19.Transparency=0
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright blue"),iceprt.CFrame,0.2,0.2,0.2,0.5,0.5,0.5)
MagicCircle(BrickColor.new("Cyan"),iceprt.CFrame,0.5,0.5,0.5,1,1,1,0.05)
for i=1,5 do
BreakEffect(BrickColor.new("White"),iceprt.CFrame,0.2,math.random(1,5),0.2)
end
coroutine.resume(coroutine.create(function(Part)
for i=1,10 do
wait()
BreakEffect(BrickColor.new("White"),Part.CFrame,0.2,math.random(1,5),0.2)
end
end),iceprt)
iceprt.Parent=nil
for _,v in pairs(IceModel:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),v)
end
end
for i=0,1,0.1 do
wait()
wld13.C0=cf(0,-0.7,0)*euler(-0.4-0.385*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(0.4+0.385*i,0,0)
wld16.C0=cf(0,0.7,0)*euler(-3.24+2.455*i,0,0)
wld18.C0=cf(0,0.7,0)*euler(3.24-2.455*i,0,0)
wld15.C0=cf(0,-1.3+1.3*i,0)*euler(-0.1+0.1*i,0.785*i,0)
wld17.C0=cf(0,-1.3+1.3*i,0)*euler(0.1-0.1*i,0.785*i,0)
wldref2.C0=euler(-0.785*i,0,0)*cf(0,-0.5,0)
wldref3.C0=euler(0.785*i,0,0)*cf(0,-0.5,0)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3*i)
Torso.Neck.C0=necko*euler(0,0.2*i,-0.4+1.4*i)
RootJoint.C0=RootCF*euler(0,0,0.4-1.4*i)
LW.C0=cf(-1,0.5,-0.5)*euler(1-0.4*i,0,0.2+0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,-1+1*i,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.5+0.5*i,0,-0.2-0.3*i)
RW.C1=cf(0,0.5,0)*euler(0,-1+1.7*i,0)
end
IceModel.Parent=nil
attack=false
end
 
function HerotoInfamous()
attack=true
prt19.Transparency=0
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright blue"),iceprt.CFrame,0.2,0.2,0.2,0.5,0.5,0.5)
MagicCircle(BrickColor.new("Cyan"),iceprt.CFrame,0.5,0.5,0.5,1,1,1,0.05)
for i=1,5 do
BreakEffect(BrickColor.new("White"),iceprt.CFrame,0.2,math.random(1,5),0.2)
end
coroutine.resume(coroutine.create(function(Part)
for i=1,10 do
wait()
BreakEffect(BrickColor.new("White"),Part.CFrame,0.2,math.random(1,5),0.2)
end
end),iceprt)
iceprt.Parent=nil
for _,v in pairs(IceModel:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),v)
end
end
infprt16=nil
infprt18=nil
FireModel.Parent=modelzorz
for _,v in pairs(modelzorz:children()) do
if v.className~="Model" and v.Name~="Hitbox" and v.Name~="Part1" and v.Name~="ReferencePart" then
cl=v:Clone()
cl.Parent=FireModel
if v.Name=="Part16" then
infprt16=cl
elseif v.Name=="Part18" then
infprt18=cl
end
if v.Name=="Part7" and v.Name=="Part8" then
end
if v.Name=="Part9" then
cl.BrickColor=BrickColor.new("White")
elseif v.Name=="Part3" then
cl.BrickColor=BrickColor.new("Dusty Rose")
elseif v.Name=="Part4" then
cl.BrickColor=BrickColor.new("Really red")
elseif v.Name=="Part6" or v.Name=="Part7" or v.Name=="Part8" then
cl.BrickColor=BrickColor.new("Bright orange")
elseif v.Name=="Part12" or v.Name=="Part15" or v.Name=="Part17" or v.Name=="Part19" then
cl.BrickColor=BrickColor.new("Really red")
else
cl.BrickColor=BrickColor.new("Bright red")
end
cl.Transparency=1
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=0
end),cl)
clmsh=cl.Mesh
clmsh.Scale=clmsh.Scale+vt(0.01,0.01,0.01)
clwld=Instance.new("Weld")
clwld.Parent=cl
clwld.Part0=cl
clwld.Part1=v
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
end
end
infmsh16=infprt16.Mesh
infmsh18=infprt18.Mesh
infwld16=infprt16.Weld
infwld18=infprt18.Weld
infmsh16.Scale=vt(0.31,1.5,0.31)
infmsh18.Scale=vt(0.31,1.5,0.31)
infwld16.C0=cf(0,0.2,0)
infwld18.C0=cf(0,0.2,0)
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright red"),hitbox.CFrame,0.2,0.2,0.2,1,1,1)
MagicCircle(BrickColor.new("Bright orange"),hitbox.CFrame,0.3,1,0.3,0.7,1.2,0.7,0.05)
coroutine.resume(coroutine.create(function(Arm) 
while Mode=="Infamous" do
wait(math.random(0,1)+math.random())
if math.random(1,2)==1 then
MagicFire(BrickColor.new("Bright red"),Arm.CFrame*cf(0,-1,0),1.5,1.5,1.5)
else
MagicFire(BrickColor.new("Bright yellow"),Arm.CFrame*cf(0,-1,0),1.5,1.5,1.5)
end
end
end),LeftArm)
for i=0,1,0.1 do
wait()
wld13.C0=cf(0,-0.7,0)*euler(-0.4-1.885*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(0.4+1.885*i,0,0)
wld15.C0=cf(0,-1.3+1.3*i,0)*euler(-0.1+0.1*i,0,0)*euler(0,0.785*i,0)*cf(0,0,0.3*i)
wld16.C0=cf(0,0.7,0)*euler(-3.24+4.24*i,0,0)
wld17.C0=cf(0,-1.3+1.3*i,0)*euler(0.1-0.1*i,0,0)*euler(0,0.785*i,0)*cf(0,0,-0.3*i)
wld18.C0=cf(0,0.7,0)*euler(3.24-4.24*i,0,0)
wldref2.C0=euler(-1.57*i,0,0)*cf(0,-0.5+0.3*i,0)
wldref3.C0=euler(1.57*i,0,0)*cf(0,-0.5+0.3*i,0)
wldref4.C0=euler(0.785-0.5*i,0,0)*cf(0,0.5+0.6*i,0.1785*i)
Torso.Neck.C0=necko*euler(0.2*i,0,-0.4-0.1*i)
RootJoint.C0=RootCF*euler(0,0,0.4+0.1*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1-0.8*i,0,0.2-0.7*i)
LW.C1=cf(0,0.5,0)*euler(0,-1+1*i,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(0.5-0.5*i,0,-0.2+0.7*i)
RW.C1=cf(0,0.5,0)*euler(0,-1+1*i,0)
end
IceModel.Parent=nil
attack=false
end
 
function infattackone()
attack=true
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.2,0,-0.5-0.2*i)
RootJoint.C0=RootCF*euler(0,0,0.5+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.4*i,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(2*i,0,0.5-1*i)
RW.C1=cf(0,0.5,0)*euler(0,-1*i,0)
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,1) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal") end) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.2,0,-0.7+1*i)
RootJoint.C0=RootCF*euler(0,0,0.7-1*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(2-2*i,0,-0.5+1*i)
RW.C1=cf(0,0.5,0)*euler(0,-1+1*i,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,-1,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
con1:disconnect()
for i=0,1,0.2 do
Torso.Neck.C0=necko*euler(0.2,0,0.3+0.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.3-0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.2*i,0,0.5+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,-1,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
wait()
end
attack=false
end
 
function infattacktwo()
attack=true
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.2-0.2*i,0,0.5+1.07*i)
RootJoint.C0=RootCF*euler(0,0,-0.5-1.07*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+1.77*i,0,-0.5-1.07*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
local frprt=part(3,workspace,0,1,BrickColor.new("Bright red"),"Fire Part",vt(1,1,1))
frprt.Anchored=true
frprt.CFrame=RootPart.CFrame*cf(0,0,-5)
game:GetService("Debris"):AddItem(frprt,5)
so("http://www.roblox.com/asset/?id=2691586",frprt,1,0.5) 
MagicBlock(BrickColor.new("Bright red"),frprt.CFrame,1,1,1,1,1,1)
MagicCircle(BrickColor.new("Bright yellow"),frprt.CFrame,1,1,1,1,1,1,0.05)
for i=1,math.random(8,15) do
if math.random(1,2)==1 then
MagicBlock2(BrickColor.new("Bright red"),frprt.CFrame,1,1,1,0.1,0.1,0.1)
else
MagicBlock2(BrickColor.new("Bright yellow"),frprt.CFrame,1,1,1,0.1,0.1,0.1)
end
end
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - frprt.Position
local mag = targ.magnitude
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc(head,20,30,math.random(30,50),"Knockdown",Torso)
end
end
end
end
attack=false
end
 
function infattackthree()
attack=true
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,-0.2*i,1.57-0.47*i)
RootJoint.C0=RootCF*euler(0,0,-1.57+0.47*i)
RootJoint.C1=RootCF*euler(0,-0.2*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-0.5*i,0,-1.57+0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.8*i,0,0.6-0.3*i)
RW.C1=cf(0,0.5,0)*euler(0,3.14*i,0)
end
Humanoid.WalkSpeed=30
so("http://roblox.com/asset/?id=143501853",hitbox,1,1.1) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(5,10),"Normal") end) 
blcf=nil
scfr=nil
for i=0,1,0.15 do
wait()
wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,-0.2,1.1-2.1*i)
RootJoint.C0=RootCF*euler(0,0,-1.1+2.1*i)
RootJoint.C1=RootCF*euler(0,-0.2+0.4*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.07,0,-1.07)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5-1*i,0.5,-0.5*i)*euler(0.6+1.2*i,0,0.3-0.9*i)
RW.C1=cf(0,0.5,0)*euler(0,3.14-1.4*i,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,-1,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.57-1*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,-0.2,-1)
RootJoint.C0=RootCF*euler(0,0,1)
RootJoint.C1=RootCF*euler(0,0.2,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.07,0,-1.07-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(0.5,0.5,-0.5)*euler(1.8,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,1.74-3.31*i,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,-1,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
so("http://roblox.com/asset/?id=143501853",hitbox,1,0.9) 
for i=0,1,0.15 do
wait()
wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,-0.2,-1+2*i)
RootJoint.C0=RootCF*euler(0,0,1-2*i)
RootJoint.C1=RootCF*euler(0,0.2-0.6*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.07,0,-1.57+1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(0.5+1*i,0.5,-0.5+0.5*i)*euler(1.8,0,-0.6+2.07*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
local blcf = hitbox.CFrame*CFrame.new(-.125,-1,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
con1:disconnect()
Humanoid.WalkSpeed=16
for i=0,1,0.2 do
wait()
RootJoint.C1=RootCF*euler(0,-0.4+0.4*i,0)
end
RootJoint.C1=RootCF
attack=false
end
 
function InfamoustoUnactive()
attack=true
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright red"),hitbox.CFrame,0.2,0.2,0.2,1,1,1)
MagicCircle(BrickColor.new("Bright orange"),hitbox.CFrame,0.3,1,0.3,0.7,1.2,0.7,0.05)
for _,v in pairs(FireModel:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),v)
end
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.2-0.2*i,0.2*i,-0.5+1.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5-1.5*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0.2+0.4*i,0,-0.5+1.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1*i,0,0.5-1*i)
RW.C1=cf(0,0.5,0)*euler(0,0.7*i,0)
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
wld13.C0=cf(0,-0.7,0)*euler(-2.285+1.5*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(2.285-1.5*i,0,0)
wld15.C0=euler(0,0.785,0)*cf(0,0,0.3-0.3*i)
wld17.C0=euler(0,0.785,0)*cf(0,0,-0.3+0.3*i)
wld16.C0=cf(0,0.7,0)*euler(1-1.785*i,0,0)
wld18.C0=cf(0,0.7,0)*euler(-1+1.785*i,0,0)
wldref2.C0=euler(-1.57+0.785*i,0,0)*cf(0,-0.2-0.3*i,0)
wldref3.C0=euler(1.57-0.785*i,0,0)*cf(0,-0.2-0.3*i,0)
wldref4.C0=euler(0.285+0.5*i,0,0)*cf(0,1.1-0.6*i,0.1785-0.1785*i)
end
FireModel.Parent=nil
attack=false
end
 
function InfamoustoHero()
attack=true
so("http://www.roblox.com/asset/?id=136847657",hitbox,1,1) 
MagicBlock(BrickColor.new("Bright red"),hitbox.CFrame,0.2,0.2,0.2,1,1,1)
MagicCircle(BrickColor.new("Bright orange"),hitbox.CFrame,0.3,1,0.3,0.7,1.2,0.7,0.05)
for _,v in pairs(FireModel:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),v)
end
end
IceModel.Parent=modelzorz
for _,v in pairs(modelzorz:children()) do
coroutine.resume(coroutine.create(function(Part)
if Part.Name=="Part19" then
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=1
end
end),v)
if v.className~="Model" and v.Name~="Hitbox" and v.Name~="Part1" and v.Name~="ReferencePart" and v.Name~="Part19" then
cl=v:Clone()
cl.Parent=IceModel
if v.Name=="Part7" and v.Name=="Part8" then
end
if v.Name=="Part9" then
cl.BrickColor=BrickColor.new("White")
elseif v.Name=="Part10" or v.Name=="Part11" then
cl.BrickColor=BrickColor.new("Deep blue")
elseif v.Name=="Part6" or v.Name=="Part7" or v.Name=="Part8" then
cl.BrickColor=BrickColor.new("Pastel light blue")
elseif v.Name=="Part3" then
cl.BrickColor=BrickColor.new("Medium blue")
elseif v.Name=="Part4" then
cl.BrickColor=BrickColor.new("Light blue")
elseif v.Name=="Part12" or v.Name=="Part15" or v.Name=="Part17" or v.Name=="Part19" then
cl.BrickColor=BrickColor.new("Light blue")
else
cl.BrickColor=BrickColor.new("Cyan")
end
cl.Transparency=1
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.1 do
wait()
Part.Transparency=i
end
Part.Transparency=0
end),cl)
clmsh=cl.Mesh
clmsh.Scale=clmsh.Scale+vt(0.01,0.01,0.01)
clwld=Instance.new("Weld")
clwld.Parent=cl
clwld.Part0=cl
clwld.Part1=v
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
if v.Name=="Part7" then
clwld.C0=cf(0,-0.01,0)
elseif v.Name=="Part8" then
clwld.C0=cf(0,-0.01,0)
end
end
end
so("http://roblox.com/asset/?id=25605551",hitbox,1,1) 
iceprt.Transparency=0
iceprt.Parent=IceModel
local icewld=weld(iceprt,iceprt,hitbox,euler(0,0,1.57)*cf(0,-2,0))
so("http://www.roblox.com/asset/?id=136847657",iceprt,1,1) 
MagicBlock(BrickColor.new("Bright blue"),iceprt.CFrame,0.2,0.2,0.2,0.5,0.5,0.5)
MagicCircle(BrickColor.new("Cyan"),iceprt.CFrame,0.5,0.5,0.5,1,1,1,0.05)
for i=1,5 do
BreakEffect(BrickColor.new("White"),iceprt.CFrame,0.2,math.random(1,5),0.2)
end
coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait()
--Weld.C1=Weld.C1*euler(0.2,0,0)
end
end),iceprt,icewld)
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
BreakEffect(BrickColor.new("White"),Part.CFrame,0.2,math.random(1,5),0.2)
end
end),iceprt)
for i=0,1,0.1 do
wait()
wld13.C0=cf(0,-0.7,0)*euler(-2.285+1.885*i,0,0)
wld14.C0=cf(0,-0.7,0)*euler(2.285-1.885*i,0,0)
wld15.C0=euler(0,0.785-0.785*i,0)*cf(0,0,0.3-0.3*i)*cf(0,-1.3*i,0)*euler(-0.1*i,0,0)
wld17.C0=euler(0,0.785-0.785*i,0)*cf(0,0,-0.3+0.3*i)*cf(0,-1.3*i,0)*euler(0.1-0.1*i,0,0)
wld16.C0=cf(0,0.7,0)*euler(1-4.24*i,0,0)
wld18.C0=cf(0,0.7,0)*euler(-1+4.24*i,0,0)
wldref2.C0=euler(-1.57+1.57*i,0,0)*cf(0,-0.2-0.3*i,0)
wldref3.C0=euler(1.57-1.57*i,0,0)*cf(0,-0.2-0.3*i,0)
wldref4.C0=euler(0.285,0,0)*cf(0,1.1,0.1785)
Torso.Neck.C0=necko*euler(0.2-0.2*i,0,-0.5+0.1*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.1*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0.2+0.8*i,0,-0.5+0.7*i)
LW.C1=cf(0,0.5,0)*euler(0,-1*i,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(0.5*i,0,0.5-0.7*i)
RW.C1=cf(0,0.5,0)*euler(0,-1*i,0)
end
wld13.C0=cf(0,-0.7,0)*euler(-0.4,0,0)
wld14.C0=cf(0,-0.7,0)*euler(0.4,0,0)
wld16.C0=cf(0,0.7,0)*euler(-3.24,0,0)
wld18.C0=cf(0,0.7,0)*euler(3.24,0,0)
wld15.C0=cf(0,-1.3,0)*euler(-0.1,0,0)
wld17.C0=cf(0,-1.3,0)*euler(0.1,0,0)
wldref2.C0=euler(0,0,0)*cf(0,-0.5,0)
wldref3.C0=euler(0,0,0)*cf(0,-0.5,0)
wldref4.C0=euler(0.785,0,0)*cf(0,0.5,0)
FireModel.Parent=nil
attack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local ppart = Instance.new("Part")
ppart.Material = "SmoothPlastic"
ppart.TopSurface,ppart.BottomSurface = 0,0
ppart.FormFactor = "Custom"
ppart.Size = Vector3.new(.2,.2,.2)
ppart:BreakJoints()
ppart.TopSurface = "SmoothNoOutlines"
ppart.BottomSurface = "SmoothNoOutlines"
ppart.RightSurface = "SmoothNoOutlines"
ppart.LeftSurface = "SmoothNoOutlines"
ppart.CanCollide = false
 
 
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end
 
function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else 
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
if Mode=="Unactive" then
w1.BrickColor = ppart.BrickColor
elseif Mode=="Hero" then
w1.BrickColor = BrickColor.new("Bright blue")
elseif Mode=="Infamous" then
w1.BrickColor = BrickColor.new("Bright red")
end
w1.Transparency = ppart.Transparency
w1.Reflectance = ppart.Reflectance
w1.Material = ppart.Material
w1.CanCollide = ppart.CanCollide
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.03
end
end),w1)
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
if Mode=="Unactive" then
w2.BrickColor = ppart.BrickColor
elseif Mode=="Hero" then
w2.BrickColor = BrickColor.new("Bright blue")
elseif Mode=="Infamous" then
w2.BrickColor = BrickColor.new("Bright red")
end
w2.Transparency = ppart.Transparency
w2.Reflectance = ppart.Reflectance
w2.Material = ppart.Material
w2.CanCollide = ppart.CanCollide
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.03
end
end),w2)
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=Frame*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=1,8 do
wait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=Part.Transparency+0.09
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
num=math.random(5,20)
coroutine.resume(coroutine.create(function(Part,Mesh,CF2,Num) 
for i=0,1.05,0.05 do
wait()
Part.CFrame=CF2*cf(0,i*Num,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,CF,num)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
rand1=math.random()/5
for i=0,1,rand1 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
Part.CFrame=Part.CFrame*cf(0,0.3,0)
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
wait(5)
Part.Parent=nil
end),prt,msh)
end
 
function CreateIcicle(BaseCFrame)
local basepart=part(3,workspace,0,1,BrickColor.new("Black"),"BasePart",vt(1,1,1))
so("http://www.roblox.com/asset/?id=136847657",basepart,1,1) 
basepart.Anchored=true
game:GetService("Debris"):AddItem(basepart,0.2)
local icepart=part(3,workspace,0.5,0.5,BrickColor.new("Bright blue"),"IceSword",vt(2,6,2))
icepart.CanCollide=true
icepart.Anchored=true
local icemesh=mesh("SpecialMesh",icepart,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(4,10,4))
basepart.CFrame=BaseCFrame
icepart.CFrame=basepart.CFrame*cf(0,-10,0)
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait()
for i=1,math.random(1,2) do
BreakEffect(BrickColor.new("Bright blue"),Part.CFrame*cf(0,2,0),0.2,math.random(1,5),0.2)
end
Part.CFrame=Part.CFrame*cf(0,0.8,0)
end
wait(1)
for i=1,math.random(5,10) do
BreakEffect(BrickColor.new("Bright blue"),Part.CFrame*cf(0,3,0),0.5,math.random(5,10),0.5)
end
Part.Parent=nil
end),icepart)
end
 
function MagicFire(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=cf(Part.Position+vt(0,0.5,0))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.1,0.1)
end
Part.Parent=nil
end),prt,msh)
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
 
function findNearestTorso(pos)
        local list = game:service("Workspace"):children()
        local torso = nil
        local dist = 50
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                                if (temp.Position - pos).magnitude < dist then
                                        torso = temp
                                        dist = (temp.Position - pos).magnitude
                                end
                        end
                end
        end
        return torso
end
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                if Mode=="Hero" then
                HeroCharge=HeroCharge+Damage
                elseif Mode=="Infamous" then
                InfCharge=InfCharge+Damage
                end
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
wait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=RootPart.CFrame.lookVector*knockback+RootPart.Velocity/1.05
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,20,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                elseif Type=="Freeze" then
                BodPos=Instance.new("BodyPosition")
                BodPos.P=50000
                BodPos.D=1000
                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos.position=hit.Parent.Torso.Position
                BodPos.Parent=hit.Parent.Torso
                BodGy = it("BodyGyro") 
                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy.P = 20e+003 
                BodGy.Parent=hit.Parent.Torso
                BodGy.cframe = hit.Parent.Torso.CFrame
                hit.Parent.Torso.Anchored=true
                coroutine.resume(coroutine.create(function(Part) 
                wait(1.5)
                Part.Anchored=false
                end),hit.Parent.Torso)
                game:GetService("Debris"):AddItem(BodPos,3)
                game:GetService("Debris"):AddItem(BodGy,3)
                end
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
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
 
combo=0
function ob1d(mouse) 
if attack==true then return end
hold=true
if Mode=="Unactive" then
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=0
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(0,0.2,1)
RootJoint.C0=RootCF*euler(0,0,-1)
LW.C0=cf(-1,0.5,-0.5)*euler(0.6,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1,0.5,-0.5)*euler(1,0,-0.5)
RW.C1=cf(0,0.5,0)*euler(0,0.7,0)
end
end))
elseif Mode=="Hero" then
if combo==0 then
combo=1
heroattackone()
elseif combo==1 then
combo=2
heroattacktwo()
elseif combo==2 then
combo=3
heroattackthree()
elseif combo==3 then
combo=0
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.4)
RootJoint.C0=RootCF*euler(0,0,0.4)
LW.C0=cf(-1,0.5,-0.5)*euler(1,0,0.2)
LW.C1=cf(0,0.5,0)*euler(0,-1,0) 
RW.C0=cf(1,0.5,-0.5)*euler(0.5,0,-0.2)
RW.C1=cf(0,0.5,0)*euler(0,-1,0)
end
end))
elseif Mode=="Infamous" then
if combo==0 then
combo=1
infattackone()
elseif combo==1 then
combo=2
infattacktwo()
elseif combo==2 then
combo=3
infattackthree()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.2,0,-0.5)
RootJoint.C0=RootCF*euler(0,0,0.5)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
end))
end
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if key=="e" and sit==true then
sit=false
UnSit()
return end
if attack == true then return end 
if Mode=="Unactive" then
if key=="e" then
if sit==false then
sit=true
Sit1()
end
end
if key=="f" then
Sledge()
end
if key=="z" then
Mode="Hero"
UnactivetoHero()
end
if key=="x" then
Mode="Infamous"
UnactivetoInfamous()
end
elseif Mode=="Hero" then
if key=="z" then
Mode="Unactive"
HerotoUnactive()
end
if key=="x" then
Mode="Infamous"
HerotoInfamous()
end
elseif Mode=="Infamous" then
if key=="z" then
Mode="Hero"
InfamoustoHero()
end
if key=="x" then
Mode="Unactive"
InfamoustoUnactive()
end
end
end 
 
function key2(key) 
 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
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
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Uloe loaded.")
 
DecCharge=0
while true do
wait(0.1)
DecCharge=DecCharge+1
fenbarice2.Size = UDim2.new(HeroCharge/100,0,0.2,0)
fenbarice4.Text = "Hero("..math.ceil(HeroCharge)..")"
fenbarinf2.Size = UDim2.new(InfCharge/100,0,0.2,0)
fenbarinf4.Text = "Infamous("..math.ceil(InfCharge)..")"
if DecCharge==10 then
print(DecCharge)
DecCharge=0
if Mode=="Hero" then
print(HeroCharge)
if HeroCharge<0 then
HeroCharge=HeroCharge-1
end
elseif Mode=="Infamous" then
print(InfCharge)
if InfCharge<0 then
InfCharge=InfCharge-1
end
end
end
end
--[[ 
Copyrighted (C) Fenrier 2014
]] 