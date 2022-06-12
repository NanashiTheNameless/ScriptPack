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
 
canfinger=true
 
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
 
mana=400
 
Charging=0
 
Did=0
 
colors={"Really black","Gold"}
 
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
 
CF=cf(-1.5,0.5,0) * euler(0.7,0,-0.3) 
 
 
 
if Character:findFirstChild("Scirave",true) ~= nil then 
 
Character:findFirstChild("Scirave",true).Parent = nil 
 
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
 
 
--[[
if Player.userId~=209911 and Player.userId~=17613036 then 
 
script.Parent = Character 
 
local h = it("Hint") 
 
h.Parent = workspace 
 
h.Text = "UR NOT FEN!" 
 
wait(1) 
 
h.Text = "U MUST DAI!!" 
 
wait(0.5) 
 
if Character:findFirstChild("ForceField") ~= nil then 
 
Character:findFirstChild("ForceField").Parent = nil 
 
end 
 
Character:BreakJoints() 
 
local m = it("Explosion") 
 
m.Parent = workspace 
 
m.Position = Torso.Position 
 
wait(3) 
 
h.Parent = nil 
 
script.Parent = nil 
 
wait(9001) 
 
while true do 
 
wait() 
 
end 
 
end 
 
]]
 
 
 
qi = function(ttz) local qii = it(ttz[1],ttz[2]) table.foreach(ttz,function(oi,oi2) if oi ~= 1 and oi ~= 2 then qii[oi] = oi2 end end) return qii end
 
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp=nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp=it("Part",pa) fp.Shape=sh fp.formFactor="Custom" elseif sh == "Wedge" then fp=it("WedgePart",pa) fp.formFactor="Custom"
 
elseif sh == "CornerWedge" then fp=it("CornerWedgePart",pa) end fp.Size=v3(x,y,z) fp.CanCollide=c fp.Anchored=false fp.BrickColor=bc(bc2) fp.Transparency=tr fp.Reflectance=re fp.BottomSurface=0 fp.Name=pn --fp.FrontSurface="Hinge"
 
fp.TopSurface=0 fp:BreakJoints() fp.Anchored = a return fp end 
 
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
 
local fp = it("Part")

fp.Material = "SmoothPlastic"
 
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
 
 
 
local ball=part(1,nil,0,0.5,BrickColor.new("Really black"),"DarkBall",vt(1,1,1))
 
local bmesh=mesh("SpecialMesh",ball,"Sphere","",vt(0,0,0),vt(1.3,1.1,1.3))
 
local bweld=weld(ball,ball,nil,cf(0,0,0))
 
local ball2=part(1,nil,0,0.5,BrickColor.new("Gold"),"DarkBall",vt(2,2,2))
 
local bmesh2=mesh("SpecialMesh",ball2,"Sphere","",vt(0,0,0),vt(1,0.8,1))
 
local bweld2=weld(ball2,ball2,nil,cf(0,0,0))
 
local bigsword=part(1,workspace,0,0,BrickColor.new("Gold"),"Sword",vt(70,500,20))
 
bigsword.Parent=nil
 
local sword1=part(1,workspace,0,0.5,BrickColor.new("Gold"),"Sword",vt(2,2,2))
 
sword1.Parent=nil
 
local sword2=part(1,workspace,0,0.5,BrickColor.new("Gold"),"Sword",vt(2,2,2))
 
sword2.Parent=nil
 
 
 
coroutine.resume(coroutine.create(function()
 
while true do
 
wait()
 
for i=0,1,0.1 do
 
wait()
 
bmesh.Scale=bmesh.Scale-vt(0.05,0.05,0.05)
 
end
 
for i=0,1,0.1 do
 
wait()
 
bmesh.Scale=bmesh.Scale+vt(0.05,0.05,0.05)
 
end
 
end
 
end)) 
 
coroutine.resume(coroutine.create(function()
 
while true do
 
wait()
 
for i=0,1,0.2 do
 
wait()
 
bmesh2.Scale=bmesh2.Scale-vt(0.05,0.05,0.05)
 
end
 
for i=0,1,0.2 do
 
wait()
 
bmesh2.Scale=bmesh2.Scale+vt(0.05,0.05,0.05)
 
end
 
end
 
end)) 
 
 
 
local modelzorz = it("Model") 
 
modelzorz.Name = "Scirave" 
 
modelzorz.Parent = Character 
 
--[[
 
local handle=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part1",vt(0.35, 4, 0.35))
 
 
 
local mesh1=mesh("CylinderMesh",handle,"","",vt(0,0,0),vt(1,1,1))
 
 
 
local weld1=weld(handle,handle,Torso,cf(3,0,0)*euler(0,0,0))
 
]]
 
 
 
---- TUT01LOL
 
Decs={}
 
Decs.Totem = "35624068" Decs.Tornado = "1051557" Decs.SpikeBall = "9982590" Decs.Fist = "65322375" Decs.RedCliffT = "49754754" Decs.RedCliff = "49754655" Decs.Chakram = "18430887" Decs.Chakram2 = "47260990" Decs.Chakram3 = "19251107" Decs.Diamond = "9756362" Decs.Sword1 = "rbxasset://fonts/s" .. "word.mesh" Decs.EF1 = "64467174" Decs.TSkull1="36869975" Decs.Skull1="36869983" Decs.Shield1="60120613" Decs.Ring="3270017" Decs.Shine="48965808" Decs.Crack="49173398" Decs.Cloud="1095708" Decs.Spike="1033714" Decs.Rock="1290033" Decs.Crown="20329976" Decs.Crown2="1323306"
 
Decs.SplinteredSkyT="50798688" Decs.SplinteredSky="50798664"
 
asset="http://www.roblox.com/asset/?id="
 
table.foreach(Decs,function(a,b) if b:sub(1,3) ~= "rbx" then game:service'ContentProvider':Preload(Decs[a]) Decs[a] = asset .. Decs[a] game:service'ContentProvider':Preload(Decs[a]) end end)
 
q = function(f) coroutine.resume(coroutine.create(function() f() end)) end
 
v3=Vector3.new
 
bc=BrickColor.new
 
cn=CFrame.new
 
rd=math.rad
 
rn=math.random
 
ca=CFrame.Angles
 
su=modelzorz
 
t=Torso
 
han = pa(su,"","Block",0.4,0.4,0.4,false,false,1,0,"Gold") it('CylinderMesh',han)
 
print(han.Parent)
 
hanw = qi({"Weld",han,Part0=t,Part1=han,C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)})
 
han2 = pa(su,"","Block",0.35,4,0.35,false,false,0,0,"Really black") it('CylinderMesh',han2)
 
han2w = qi({"Weld",han2,Part0=han,Part1=han2,C0=cn(0,1,0)})
 
han3 = pa(su,"","Block",0,0,0,false,false,0,0,"Gold") qi({"SpecialMesh",han3,MeshType="Sphere",Scale=v3(0.4,0.4,0.4)*5})
 
han3w = qi({"Weld",han2,Part0=han2,Part1=han3,C0=cn(0,-2,0)})
 
han4 = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",han4,MeshType="Sphere",Scale=v3(0.5,0.7,0.2)*5})
 
han4w = qi({"Weld",han2,Part0=han3,Part1=han4,C0=ca(0,rd(90),0)})
 
for i=1,10 do 
 
des = pa(su,"","Block",0.4,0.2,0.4,false,false,0,0,"Gold") it('CylinderMesh',des).Scale = v3(1,0.4,1)
 
desw = qi({"Weld",han,Part0=han2,Part1=des,C0=cn(0,-1.8+(i/3),0)*ca(rd(0),0,rd(0))})
 
end
 
for i=0,270,90 do 
 
des = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.1,0.4,0.1),MeshId=Decs.Spike})
 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=ca(0,rd(i),0)*cn(0,1.8,0.3)*ca(rd(90),0,0)})
 
end
 
han5 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",han5,MeshType="Sphere",Scale=v3(0.35,0.6,0.35)*5})
 
han5w = qi({"Weld",han2,Part0=han2,Part1=han5,C0=cn(0,2,0)})
 
han6 = pa(su,"","Wedge",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",han6,MeshType="Wedge",Scale=v3(0.1,1,0.5)*5})
 
han6w = qi({"Weld",han2,Part0=han2,Part1=han6,C0=cn(0,2.4,0.05)*ca(rd(10),0,0)})
 
han7 = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",han7,MeshType="FileMesh",Scale=v3(0.75,0.75,2),MeshId=Decs.Ring})
 
han7w = qi({"Weld",han2,Part0=han2,Part1=han7,C0=cn(0,2.9,0)*ca(0,rd(90),0)})
 
han8 = pa(su,"","Block",0,0,0,false,false,0.3,0.1,"Gold") qi({"SpecialMesh",han8,MeshType="Sphere",Scale=v3(0.7,0.7,0.7)*5})
 
han8w = qi({"Weld",han2,Part0=han2,Part1=han8,C0=cn(0,2.9,0)*ca(0,0,0)})
 
han9 = pa(su,"","Block",0,0,0,false,false,0,0,"Silver") qi({"SpecialMesh",han9,Scale=v3(0.25,1,0.25),MeshType="FileMesh",MeshId = Decs.Chakram3})
 
han9w = qi({"Weld",han2,Part0=han2,Part1=han9,C0=cn(0,2.9,0)*ca(0,0,rd(90))})
 
q(function() while true do wait(0.035) han9w.C0 = han9w.C0 *ca(0,rd(10),0) end end)
 
for i=0,2 do 
 
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond})
 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,2.1+(i/2.1),0.6+(i/5))*ca(rd(150-(i*30)),0,0)})
 
end
 
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond})
 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,3.6,0.7)*ca(rd(50),0,0)})
 
bla = pa(su,"","Wedge",0.2,1,2,false,false,0,0.05,"") qi({"SpecialMesh",bla,Scale=v3(0.56,1,1),MeshType="Wedge"})
 
blaw = qi({"Weld",han2,Part0=han8,Part1=bla,C0=cn(0,0.5,-1.2)*ca(rd(30),0,0)})
 
bla2 = pa(su,"","Wedge",0.2,0.7,2,false,false,0,0.05,"") qi({"SpecialMesh",bla2,Scale=v3(0.53,1,1),MeshType="Wedge"})
 
bla2w = qi({"Weld",han2,Part0=bla,Part1=bla2,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)})
 
bla3 = pa(su,"","Wedge",0.2,0.4,2,false,false,0,0.05,"") qi({"SpecialMesh",bla3,Scale=v3(0.5,1,1),MeshType="Wedge"})
 
bla3w = qi({"Weld",han2,Part0=bla2,Part1=bla3,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)})
 
 
 
han10 = pa(su,"","Block",0,0,0,false,false,0,1,"Really black") it('CylinderMesh',han10).Scale = v3(1.2,0.57,1.2)
 
han10 = qi({"Weld",han2,Part0=bla,Part1=han10,C0=cn(0,-0.37,1.35)*ca(0,0,rd(90))})
 
 
 
han11 = pa(su,"","Block",0.2,0.37,0.7,false,false,0,0,"") it('BlockMesh',han11).Scale = v3(0.48,1,0.9)
 
han11 = qi({"Weld",han2,Part0=bla,Part1=han11,C0=cn(0,-0.32,1.3)})
 
 
 
raa = RightArm
 
laa = LeftArm
 
 
 
clawa1 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
 
clawa1w = qi({"Weld",han2,Part0=laa,Part1=clawa1,C0=ca(rd(180),0,0)*cn(-0.2,1.25,0)})
 
clawa2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
 
clawa2w = qi({"Weld",han2,Part0=laa,Part1=clawa2,C0=ca(rd(180),0,0)*cn(0.2,1.25,0)})
 
clawb1 = pa(su,"","Block",0,0,0,false,false,0,0.4,"Gold") qi({"SpecialMesh",clawb1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
 
clawb1w = qi({"Weld",han2,Part0=clawa1,Part1=clawb1,C0=cn(0,0.15,0)})
 
clawb2 = pa(su,"","Block",0,0,0,false,false,0,0.4,"Gold") qi({"SpecialMesh",clawb2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike})
 
clawb2w = qi({"Weld",han2,Part0=clawa2,Part1=clawb2,C0=cn(0,0.15,0)})
 
 
 
badge = pa(su,"","Block",0,0,0,false,false,0,0,"Gold") qi({"SpecialMesh",badge,MeshType="FileMesh",Scale=v3(0.15,1,0.5),MeshId=Decs.Diamond})
 
badgew = qi({"Weld",han2,Part0=laa,Part1=badge,C0=cn(-0.5,0,0)*ca(rd(25),0,0)})
 
badge2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",badge2,MeshType="FileMesh",Scale=v3(0.149,1,0.495),MeshId=Decs.Diamond})
 
badge2w = qi({"Weld",han2,Part0=badge,Part1=badge2})
 
 
 
ef = pa(su,"","Block",0,0,0,false,true,1,0,"Gold") qi({"SpecialMesh",ef,MeshType="FileMesh",Scale=v3(7,7,4),MeshId=Decs.Chakram2})
 
--efw = qi({"Weld",han2,Part0=t,Part1=ef,C0=cn(0,-2.9,0)*ca(rd(90),0,0)})
 
 
 
db1 = pa(su,"","Block",0,0,0,false,false,1,0,"Really black") qi({"SpecialMesh",db1,MeshType="Sphere",Scale=v3(1,1,1)*5})
 
db1w = qi({"Weld",han2,Part0=laa,Part1=db1,C0=cn(0,-2,0)})
 
db2 = pa(su,"","Block",0,0,0,false,false,1,0.1,"Gold") qi({"SpecialMesh",db2,MeshType="Sphere",Scale=v3(1.2,1.2,1.2)*5})
 
db2w = qi({"Weld",han2,Part0=db1,Part1=db2,C0=cn(0,0,0)})
 
 
 
local ebs = false
 
function eb(wutarm,aa,siz) if not siz then siz = 1 end q(function() db1.Mesh.Scale=v3(siz,siz,siz)*5 db1w.Part0 = wutarm db1w.C0 = cn(0,-1+(-siz/1.25),0) if not ebs then ebs = true
 
if aa then db1.Transparency = 0.1 else for i=1,0.1,-0.1 do db1.Transparency = i wait() end  end
 
else
 
ebs = false if aa then db1.Transparency = 1 else  for i=0.1,1,0.1 do db1.Transparency = i wait() end end
 
end end) end 
 
 
 
local efm = ef.Mesh.Scale
 
function e(aa) if aa ~= nil then ef.Mesh.Scale=efm*aa else ef.Mesh.Scale=efm end if ef.Transparency < 0.4 then
 
for i=0.3,1,0.1 do ef.Transparency = i wait() end
 
else
 
q(function() for i=1,0.3,-0.1 do ef.Transparency = i wait() end end)
 
end end 
 
 
 
q(function() while true do if ebs then for i=0.4,0.7,0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i wait() db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) end 
 
for i=0.7,0.4,-0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) wait() end else db2.Transparency = 1 db2.Mesh.Scale = v3(1.2,1.2,1.2)*5 end wait() end end)
 
q(function() while true do for i=0,1,0.05 do badge.Transparency = i wait() end badge.Transparency = 1 wait(1) for i=1,0,-0.05 do badge.Transparency = i wait() end wait(4) end end)
 
 
 
sho = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",sho,Scale=v3(1.1,1.1,1.1)*5,MeshType="Wedge"}) 
 
show = qi({"Weld",han2,Part0=raa,Part1=sho,C0=cn(0,0.545,0)*ca(rd(180),rd(90),0)})
 
 
 
chak = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",chak,Scale=v3(0.09,0.09,0.24)*5,MeshType="FileMesh",MeshId=Decs.Chakram}) 
 
chakw = qi({"Weld",han2,Part0=raa,Part1=chak,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)})
 
chak2 = pa(su,"","Block",0,0,0,false,false,0.1,0.1,"Gold") qi({"SpecialMesh",chak2,Scale=v3(0.15,0.15,0.05)*5,MeshType="FileMesh",MeshId=Decs.Chakram2}) 
 
chak2w = qi({"Weld",han2,Part0=raa,Part1=chak2,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)})
 
--[[
 
local efww = 0
 
q(function() while true do wait() if FindGround(to.CFrame) then efww = efww+25 ef.CFrame = FindGround(to.CFrame)*ca(0,rd(efww),0)*ca(rd(90),0,0) else ef.CFrame=cn(10000,10000,10000) end  end end)
 
]]
 
q(function() while true do wait(0.035)  if canfinger==true then chak2w.C0 = chak2w.C0*ca(0,0,rd(25)) end end end)
 
 
 
spiking=false
 
local spike=part(1,nil,0,0.5,BrickColor.new("Really black"),"DarkBall",vt(1,1,1))
 
spike.Anchored=true
 
local spmesh=mesh("SpecialMesh",spike,"FileMesh",Decs.SpikeBall,vt(0,0,0),vt(0.5,0.3,0.5))
 
 
 
local LastPoint = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0) 
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
 
 
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
 
Tool.Name = "Scirave" 
 
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
 
--[[local SlashS = game.Lighting["lolslash"]:Clone()
 
SlashS.Parent = Head
 
SlashS.Volume = 1 
 
SlashS.Pitch = 1
 
local DarkWaveS = game.Lighting["loldarkwave"]:Clone()
 
DarkWaveS.Parent = Head
 
DarkWaveS.Volume = 1 
 
DarkWaveS.Pitch = 0.7
 
local BlastS = game.Lighting["lolblast"]:Clone()
 
BlastS.Parent = Head
 
BlastS.Volume = 1 
 
BlastS.Pitch = 0.4
 
local BlewmS = game.Lighting["lolblewm"]:Clone()
 
BlewmS.Parent = Head
 
BlewmS.Volume = 1 
 
BlewmS.Pitch = 0.2
 
local BigBlastS = game.Lighting["lolbigblast"]:Clone()
 
BigBlastS.Parent = Head
 
BigBlastS.Volume = 1 
 
BigBlastS.Pitch = 0.6
 
local AbscondS = game.Lighting["lolabscond"]:Clone()
 
AbscondS.Parent = Head
 
AbscondS.Volume = 1 
 
AbscondS.Pitch = 1]]
 
 
 
function unequipweld() 
 
--[[for i=0,1,0.1 do
 
wait()
 
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+0.5*i,0,0) 
 
end]]
 
end 
 
 
 
function equipweld() 
 
for i=0,1,0.1 do
 
wait()
 
--weld1.C0=cf(2*i,-4-1*i,-0.7-0.8*i)*euler(0,0,-0.8+0.8*i)
 
Torso.Neck.C0=necko*euler(0,0,0)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
 
end
 
end 
 
 
 
function hideanim() 
 
equipped=false
 
Torso.Neck.C0=necko*euler(0,0,0)
 
unequipweld() 
 
end 
 
 
 
function equipanim(mouse) 
 
equipped=true
 
equipweld() 
 
wait(1)
 
--Torso.Neck.C0=necko*euler(0,0,0)
 
end 
 
 
 
function Stance()
 
 
 
end
 
 
 
function SwordDrive()
 
attack=true
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(5.5*i,0,-0.2*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
hanw.Part0=RightArm
 
hanw.C0=cf(-0.5,-1,0)*euler(-0.8,0.7,1.57)
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(5.5-2.06*i,0,-0.2+0.2*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(-0.5+0.5*i,-1,0)*euler(-0.8+1.6*i,0.7+2.44*i,1.57+1.57*i)
 
end 
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=0
 
Chat.Visible=true
 
Chat2.Size=UDim2.new(0,0,0.5,0)
 
Chat2.Visible=true
 
while SDhold==true do
 
wait()
 
if Charging<10 then
 
GroundEffect(Torso,0,1.5,0,math.random(-5,5),-3,math.random(-5,5),0,0,0,BrickColor.new("Really black")) 
 
Charging=Charging+0.2
 
else
 
if Charging<=10.2 then
 
GroundEffect(Torso,8,8,8,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
Charging=Charging+0.2
 
end
 
end
 
if Charging<=10 then
 
Chat2.Size=Chat2.Size+UDim2.new(0.1,0,0,0)
 
end
 
end
 
Chat.Visible=false
 
Chat2.Size=UDim2.new(0,0,0.5,0)
 
Chat2.Visible=false
 
Character.Humanoid.WalkSpeed=Walk
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5*i,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(3.44-2.5*i,0,0) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(0.8-0.5*i,0.7+2.44,1.57+1.57)
 
end 
 
GroundEffect(bla2,1,0.1,1,0,1,0,0,0,0,BrickColor.new("Gold")) 
 
inc=-5
 
if Charging>=10 then
 
for i=1,8 do
 
wait(0)
 
SummonSword(Torso,CFrame.new(0,-5,inc)*CFrame.fromEulerAnglesXYZ(-2,0,1.57),CFrame.new(0,0,0.8),20,10)
 
inc=inc-7
 
end
 
else
 
for i=1,5 do
 
wait(0)
 
SummonSword(Torso,CFrame.new(0,-5,inc)*CFrame.fromEulerAnglesXYZ(-2,0,1.57),CFrame.new(0,0,0.8),10,5)
 
inc=inc-7
 
end
 
end
 
wait() 
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0.94+4.56*i,0,-0.2*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(-0.5*i,-1,0)*euler(0.3-1.1*i,3.14-2.44*i,3.14-1.57*i)
 
end 
 
hanw.Part0=Torso
 
hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(5.5-5.5*i,0,-0.2+0.2*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
attack=false
 
end
 
 
 
function DarkClaw()
 
attack=true
 
local LastPoint = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
local LastPoint2 = bla3.CFrame * CFrame.new(1,bla3.Size.Y/2,0)
 
local LastPoint3 = bla3.CFrame * CFrame.new(-1,bla3.Size.Y/2,0)
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
hanw.Part0=RightArm
 
hanw.C0=cf(0,-1,0)*euler(0.9,0,1.3)
 
hanw.C1=euler(0,-2,0)
 
for i = 0,1,0.2 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,1.57*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+0.5*i,0,-0.5+1*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(0.9+0.67*i,0,1.3-1.3*i)
 
hanw.C1=euler(0,-2+2*i,0)
 
end 
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=0
 
Chat.Visible=true
 
Chat2.Size=UDim2.new(0,0,0.5,0)
 
Chat2.Visible=true
 
while DChold==true do
 
wait()
 
if Charging<10 then
 
GroundEffect(Torso,0,1.5,0,math.random(-5,5),-3,math.random(-5,5),0,0,0,BrickColor.new("Really black")) 
 
Charging=Charging+0.1
 
else
 
if Charging<=10.1 then
 
GroundEffect(Torso,8,8,8,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
Charging=Charging+0.1
 
end
 
end
 
if Charging<=10 then
 
Chat2.Size=Chat2.Size+UDim2.new(0.05,0,0,0)
 
end
 
end
 
Chat.Visible=false
 
Chat2.Size=UDim2.new(0,0,0.5,0)
 
Chat2.Visible=false
 
Character.Humanoid.WalkSpeed=Walk
 
if Charging>=10 then
 
con1=han2.Touched:connect(function(hit) Damagefunc2(hit,30,50) end) 
 
con2=bla3.Touched:connect(function(hit) Damagefunc2(hit,30,50) end) 
 
elseif Charging>=5 then
 
con1=han2.Touched:connect(function(hit) Damagefunc2(hit,10,10) end) 
 
con2=bla3.Touched:connect(function(hit) Damagefunc2(hit,10,10) end) 
 
else
 
con1=han2.Touched:connect(function(hit) Damagefunc2(hit,5,20) end) 
 
con2=bla3.Touched:connect(function(hit) Damagefunc2(hit,5,20) end) 
 
end
 
local vel = Instance.new("BodyVelocity")
 
vel.Parent = Torso
 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
 
if Charging>=10 then
 
vel.velocity = Head.CFrame.lookVector * 40 
 
else
 
vel.velocity = Head.CFrame.lookVector * 20 
 
end
 
for i = 0,1,0.1 do 
 
wait() 
 
if Charging>=10 then
 
Sword(Torso,0,0,-10,3.14,0,1.57,10,3,5)
 
MMMAGIC(bla3,3,3,3,0,-2,0,BrickColor.new("Really black")) 
 
MMMAGIC2(bla3,1,3,1,0,-2,0,BrickColor.new("Really black")) 
 
end
 
if Charging>=5 then
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
local Point2 = bla3.CFrame * CFrame.new(1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint2,Point2)
 
LastPoint2 = Point2
 
local Point3 = bla3.CFrame * CFrame.new(-1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint3,Point3)
 
LastPoint3 = Point3
 
else
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
end
 
gyro.cframe=Head.CFrame*euler(0,3.14*i,0)
 
Torso.Neck.C0=necko*euler(0,0,1.57)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57+1.07*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5+1.07*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(1.57+2.5*i,3.14*i,0)
 
hanw.C1=euler(0,0,0)
 
--hanw.C0=euler(1.57,3.14*i,0)*cf(0,-1,1-2*i)
 
end 
 
if Charging>=10 then
 
for i=0,1,0.2 do
 
wait()
 
Sword(Torso,0,0,-10,3.14,0,1.57,10,3,5)
 
end
 
else
 
wait(0.2)
 
end
 
for i = 0,1,0.1 do 
 
wait() 
 
if Charging>=10 then
 
Sword(Torso,0,0,-10,3.14,0,1.57,10,3,5)
 
MMMAGIC(bla3,3,3,3,0,-2,0,BrickColor.new("Really black")) 
 
MMMAGIC2(bla3,1,3,1,0,-2,0,BrickColor.new("Really black")) 
 
end
 
if Charging>=5 then
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
local Point2 = bla3.CFrame * CFrame.new(1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint2,Point2)
 
LastPoint2 = Point2
 
local Point3 = bla3.CFrame * CFrame.new(-1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint3,Point3)
 
LastPoint3 = Point3
 
else
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
end
 
gyro.cframe=Head.CFrame*euler(0,3.14*i,0)
 
end
 
vel.Parent=nil
 
for i = 0,1,0.1 do 
 
wait() 
 
if Charging>=5 then
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
local Point2 = bla3.CFrame * CFrame.new(1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint2,Point2)
 
LastPoint2 = Point2
 
local Point3 = bla3.CFrame * CFrame.new(-1,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint3,Point3)
 
LastPoint3 = Point3
 
else
 
local Point = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
effect("Really black",0.5,LastPoint,Point)
 
LastPoint = Point
 
end
 
end
 
for i = 0,1,0.1 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,1.57-1.57*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5+0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,1.57-2.07*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(4.07-3.17*i,3.14-3.14*i,1.3*i)
 
hanw.C1=euler(0,-2*i,0)
 
end 
 
con1:disconnect()
 
con2:disconnect()
 
hanw.Part0=Torso
 
hanw.C1=euler(0,0,0)
 
hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
 
attack=false
 
end
 
 
 
function SoulEdge()
 
attack=true
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
hanw.Part0=RightArm
 
hanw.C0=cf(0,-1,0)*euler(0.9,0,1.3)
 
hanw.C1=euler(0,-2,0)
 
for i = 0,1,0.1 do 
 
wait() 
 
hanw.C0=cf(0,-1,0)*euler(0.9-2.1*i,0,1.3-(1+6.28)*i)
 
hanw.C1=euler(0,-2+2.4*i,0)
 
LW.C0 = cf(-1.5+0.5*i,0.5+0.8*i,-0.5*i) * euler(2.5*i,0,0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5+0.8*i,-0.5*i) * euler(-0.5+3*i,0,-0.5) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
Character.Humanoid.Jump=true
 
wait(0.1)
 
con1=han2.Touched:connect(function(hit) Damagefunc2(hit,15,50) end) 
 
con2=bla3.Touched:connect(function(hit) Damagefunc2(hit,15,50) end) 
 
local vel = Instance.new("BodyVelocity")
 
vel.Parent = Torso
 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
 
vel.velocity = Head.CFrame.lookVector * 40 
 
for i = 0,1,0.1 do 
 
wait() 
 
MMMAGIC3(bla3,2,4,6,0,-2,0,1.57,0,0,BrickColor.new("Really black")) 
 
gyro.cframe=Head.CFrame*euler(-3.14*i,0,0)
 
hanw.C0=cf(0,-1,0)*euler(0.9-2.1,0,0.3)
 
hanw.C1=euler(2,-2+2.4,0)
 
LW.C0 = cf(-1,1.3-0.8*i,-0.5) * euler(2.5-1*i,0,0.5) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1,1.3-0.8*i,-0.5) * euler(2.5-1*i,0,-0.5) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
wait(0.2)
 
vel.velocity = Head.CFrame.lookVector * 60 
 
for i=0,1,0.1 do
 
wait()
 
MMMAGIC3(bla3,2,4,6,0,-2,0,1.57,0,0,BrickColor.new("Really black")) 
 
gyro.cframe=Head.CFrame*euler(-3.14*i,0,0)
 
end
 
vel.Parent=nil
 
for i=0,0.5,0.1 do
 
wait()
 
MMMAGIC3(bla3,2,4,6,0,-2,0,1.57,0,0,BrickColor.new("Really black")) 
 
end
 
wait(0.2)
 
con1:disconnect()
 
con2:disconnect()
 
for i = 0,1,0.1 do 
 
wait() 
 
hanw.C0=cf(0,-1,0)*euler(0.9-2.1+2.1*i,0,0.3+(1+6.28)*i)
 
hanw.C1=euler(2-2*i,-2+2.4-2.4*i,0)
 
LW.C0 = cf(-1-0.5*i,0.5,-0.5+0.5*i) * euler(1.5-1.5*i,0,0.5-0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1+0.5*i,0.5,-0.5+0.5*i) * euler(1.5-2*i,0,-0.5) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
hanw.Part0=Torso
 
hanw.C1=euler(0,0,0)
 
hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
 
attack=false
 
end
 
 
 
function SwordCombo()
 
attack=true
 
local LastPoint = bla3.CFrame * CFrame.new(0,bla3.Size.Y/2,0)
 
local LastPoint2 = bla3.CFrame * CFrame.new(1,bla3.Size.Y/2,0)
 
local LastPoint3 = bla3.CFrame * CFrame.new(-1,bla3.Size.Y/2,0)
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
hanw.Part0=RightArm
 
hanw.C0=cf(0,-1,0)*euler(0.9,0,1.3)
 
hanw.C1=euler(0,-2,0)
 
for i = 0,1,0.2 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,1.57*i)
 
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(1.57*i,0,1*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+0.5*i,0,-0.5+1*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(0.9+0.67*i,0,1.3-1.3*i)
 
hanw.C1=euler(0,-2+2*i,0)
 
end 
 
wait(0.2)
 
for i=0,1,0.1 do
 
wait()
 
--gyro.P = 100000
 
Torso.Neck.C0=necko*euler(0,0,1.57-3.14*i)
 
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(1.57-1.57*i,0,1-2.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0.5*i,0.5+1.07*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
hanw.C0=cf(0,-1,0)*euler(1.57+2.5*i,3.14*i,0)
 
hanw.C1=euler(0,0,0)
 
Sword(Torso,0,0,-10,3.14,0,1.57,10,3,5)
 
end
 
wait(1)
 
hanw.Part0=Torso
 
hanw.C1=euler(0,0,0)
 
hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)
 
attack=false
 
end
 
 
 
function Astral()
 
MaxHealth2=Character.Humanoid.MaxHealth
 
Health2=Character.Humanoid.Health
 
Character.Humanoid.MaxHealth=math.huge
 
attack=true
 
tempcf=gyro.cframe
 
coroutine.resume(coroutine.create(function() 
 
while attack==true do
 
wait()
 
gyro.cframe=tempcf
 
end
 
end))
 
GroundEffect(Torso,8,8,8,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=0
 
count=0
 
coroutine.resume(coroutine.create(function() 
 
        amb=game.Lighting.Ambient
 
        ambr=amb.r
 
        ambg=amb.g
 
        ambb=amb.b
 
        print(ambr)
 
        desr=5/255
 
        desg=5/255
 
        desb=5/255
 
        print(desr)
 
        difr=ambr-desr
 
        difg=ambg-desg
 
        difb=ambb-desb
 
        difr=difr/255/.1
 
        difg=difg/255/.1
 
        difb=difb/255/.1
 
        print(difr)
 
        EM=0
 
        bri=game.Lighting.Brightness
 
        lightning=false
 
coroutine.resume(coroutine.create(function() 
 
for i=0,40 do
 
cloud=part(1,workspace,0,1,BrickColor.new("Really black"),"Cloud",Vector3.new(50,5,50))
 
cloud.CFrame=Torso.CFrame*CFrame.new(math.random(-500,500),500,math.random(-500,500))
 
cloud.Anchored=true
 
cloudm=mesh("SpecialMesh",cloud,"FileMesh","http://www.roblox.com/asset/?id=1095708",Vector3.new(0,0,0),Vector3.new(400,100,400))
 
cloudm.TextureId="http://www.roblox.com/asset/?id=1095709"
 
cloudm.VertexColor=Vector3.new(0.5,0.5,0.5)
 
coroutine.resume(coroutine.create(function() 
 
Pos=Torso.Position+Vector3.new(0,500,0)
 
Pos2=Torso.Position
 
if lightning==true then return end
 
if lightning==false then
 
lightning=true
 
while attack==true do
 
wait(math.random())
 
Lightning(Pos+Vector3.new(math.random(-250,250),0,math.random(-250,250)),Pos2+Vector3.new(math.random(-250,250),0,math.random(-250,250)),5,5,"White",1,0.1)
 
end
 
end
 
end))
 
coroutine.resume(coroutine.create(function(Part) 
 
wait(math.random())
 
for i=0,1,0.05 do
 
wait()
 
Part.Transparency=Part.Transparency-0.05
 
end
 
while attack==true do
 
wait()
 
end
 
wait(math.random())
 
for i=0,1,0.05 do
 
wait()
 
Part.Transparency=i
 
end
 
Part.Parent=nil
 
end),cloud)
 
end
 
end))
 
                for i=1, 20 do
 
                wait()
 
                game.Lighting.Brightness=game.Lighting.Brightness-(bri/20)
 
                game.Lighting.Ambient=Color3.new(amb.r-difr/2*i,amb.g-difg/2*i,amb.b-difb/2*i)
 
                end
 
                while attack==true do
 
                wait()
 
                end
 
                for i=1, 20 do
 
                wait()
 
                game.Lighting.Brightness=game.Lighting.Brightness+(bri/20)
 
                game.Lighting.Ambient=Color3.new((amb.r-difr*10)+difr*(i*.5),(amb.g-difg*10)+difg*(i*.5),(amb.b-difb*10)+difb*(i*.5))
 
                end
 
        game.Lighting.Brightness=bri
 
        game.Lighting.Ambient=amb
 
end))
 
for i=0,1,0.1 do
 
wait()
 
MMMAGIC(LeftArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
MMMAGIC(RightArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
GroundEffect(LeftArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
GroundEffect(RightArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
if count==3 then
 
WaveEffect2(Torso,3,8,3,0,-2,0,0,0,0,BrickColor.new("Really black")) 
 
count=0
 
end
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
count=count+1
 
end
 
for i=0,2,0.1 do
 
wait()
 
MMMAGIC(LeftArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
MMMAGIC(RightArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
GroundEffect(LeftArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
GroundEffect(RightArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
if count==3 then
 
WaveEffect2(Torso,3,8,3,0,-2,0,0,0,0,BrickColor.new("Really black")) 
 
count=0
 
end
 
count=count+1
 
end
 
hitted=false
 
TargetPers=nil
 
con1=LeftArm.Touched:connect(function(hit) 
 
if hit.Parent.Name~=Character.Name and hit.Parent:findFirstChild("Humanoid")~=nil and hitted==false then
 
hitted=true
 
TargetPers=hit.Parent
 
TargetPers.Torso.Anchored=true
 
print("Derp") 
 
end
 
end) 
 
con2=RightArm.Touched:connect(function(hit) 
 
if hit.Parent.Name~=Character.Name and hit.Parent:findFirstChild("Humanoid")~=nil and hitted==false then
 
hitted=true
 
TargetPers=hit.Parent
 
TargetPers.Torso.Anchored=true
 
print("Derp") 
 
end
 
end) 
 
for i=0,1,0.2 do
 
wait()
 
MMMAGIC(LeftArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
MMMAGIC(RightArm,1,1,1,0,-1,0,BrickColor.new("Really black")) 
 
GroundEffect(LeftArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
GroundEffect(RightArm,0.1,0.1,0.1,math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),0,0,0,BrickColor.new("Really black")) 
 
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(1.37*i,0,-1.57+2*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(1.77*i,0,1.57-2*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
bod2 = it("BodyPosition")
 
wait(0.5)
 
if TargetPers~=nil then
 
TargetTors=TargetPers.Torso
 
MMMAGIC(TargetTors,8,8,8,0,0,0,BrickColor.new("Really black")) 
 
MMMAGIC(TargetTors,5,5,5,0,0,0,BrickColor.new("Gold")) 
 
for i=0,1,0.2 do
 
wait()
 
TargetTors.CFrame=Torso.CFrame*CFrame.new(0,0,-3-12*i)*CFrame.fromEulerAnglesXYZ(0,3.14,0)
 
MMMAGIC(TargetTors,5,5,5,0,0,0,BrickColor.new("Really black")) 
 
MMMAGIC(TargetTors,3,3,3,0,0,0,BrickColor.new("Gold")) 
 
end
 
TorsPos=TargetTors.CFrame
 
coroutine.resume(coroutine.create(function() 
 
while attack==true do
 
wait(0.1)
 
TargetTors.CFrame=TorsPos
 
MMMAGIC(TargetTors,5,5,5,0,0,0,BrickColor.new("Really black")) 
 
MMMAGIC(TargetTors,3,3,3,0,0,0,BrickColor.new("Gold")) 
 
end
 
end))
 
TargetPers.Torso.Anchored=false
 
wait(0.2)
 
for i=0,1,0.1 do
 
wait()
 
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(1.37-1.37*i,0,-1.57+2-1.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1.77-1.77*i,0,1.57-2+1.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
WaveEffect(Torso,1,2,1,0,0,0,-1.57,0,0,BrickColor.new("Really black")) 
 
Torso.CFrame=Torso.CFrame*CFrame.new(0,0,10)
 
wait(0.3)
 
for i=0,1,0.1 do
 
wait()
 
LW.C0 = cf(-1.5,0.5,0) * euler(2.5*i,0,-1.07+1.07*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,1.07-0.57*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
blackhoel=part(1,workspace,0,1.11,BrickColor.new("Really black"),"Hole Thingy",Vector3.new(50,5,50))
 
blackhoel.CFrame=Torso.CFrame*CFrame.new(0,450,0)*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
 
blackhoel.Anchored=true
 
blackhoelm=mesh("SpecialMesh",blackhoel,"FileMesh","http://www.roblox.com/asset/?id=1185246",Vector3.new(0,0,0),Vector3.new(700,700,0))
 
blackhoelm.TextureId="http://www.roblox.com/asset/?id=21315275"
 
blackhoelm.VertexColor=Vector3.new(0,0,0.4)
 
coroutine.resume(coroutine.create(function() 
 
while attack==true do
 
wait()
 
for i=0,1,0.1 do
 
wait()
 
blackhoel.CFrame=blackhoel.CFrame*CFrame.fromEulerAnglesXYZ(0,0,6.28*i)
 
end
 
end
 
for i=0,1,0.1 do
 
wait()
 
blackhoel.Transparency=i
 
blackhoelm.Scale=blackhoelm.Scale+Vector3.new(100,100,0)
 
end
 
blackhoel.Parent=nil
 
end))
 
for i=0,1,0.1 do
 
wait()
 
blackhoel.Transparency=blackhoel.Transparency-0.1
 
end
 
bigsword.Transparency=0
 
bigsword.Parent=workspace
 
bigsword.Anchored=true
 
bigsword.CanCollide=true
 
local smesh=mesh("SpecialMesh",bigsword,"FileMesh","http://www.roblox.com/asset/?id=71378055",vt(0,0,0),vt(100,100,100))
 
smesh.TextureId="http://www.roblox.com/asset/?id=71377225"
 
smesh.VertexColor=Vector3.new(0, 0, 0.8)
 
bigsword.CFrame=Torso.CFrame*CFrame.new(0,450,0)*CFrame.fromEulerAnglesXYZ(3.14+0.05,0,0)
 
bigsword.CFrame=bigsword.CFrame*CFrame.new(0,-400,0)
 
for i=0,1,0.1 do
 
wait()
 
bigsword.CFrame=bigsword.CFrame*CFrame.new(0,30,0)
 
end
 
for i=0,1,0.1 do
 
wait()
 
LW.C0 = cf(-1.5,0.5,0) * euler(2.5-1*i,0,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5,0,0.5) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
local ddcon=bigsword.Touched:connect(function(hit) hit:BreakJoints() end) 
 
for i=0,2,0.1 do
 
wait()
 
bigsword.CFrame=bigsword.CFrame*CFrame.new(0,8*i*i,0)
 
end
 
TargetPers:BreakJoints()
 
WaveEffect3(TargetTors,40,50,20,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
MakeCrater(TargetTors.Position+v3(0,-2,0),10,20,10) 
 
local d=part(1,workspace,0,0,BrickColor.new("Gold"),"Poot",vt(1,1,1))
 
d.CFrame=TargetTors.CFrame*CFrame.new(20,0,0)
 
MakeCrater(d.Position+v3(0,-2,0),10,20,10) 
 
d.CFrame=TargetTors.CFrame*CFrame.new(-20,0,0)
 
MakeCrater(d.Position+v3(0,-2,0),10,20,10)
 
d.Parent=nil
 
for i=0,1,0.1 do
 
wait()
 
bigsword.CFrame=bigsword.CFrame*CFrame.new(0,15,0)
 
end
 
coroutine.resume(coroutine.create(function() 
 
wait(1)
 
ddcon:disconnect()
 
for i=0,1,0.01 do
 
wait()
 
bigsword.Transparency=i
 
end
 
bigsword.Parent=nil
 
end))
 
end
 
con1:disconnect()
 
con2:disconnect()
 
wait(1)
 
Character.Humanoid.MaxHealth=MaxHealth2
 
Character.Humanoid.Health=Health2
 
bod2.Parent=nil
 
Character.Humanoid.WalkSpeed=Walk
 
attack=false
 
end
 
 
 
function Guard()
 
attack=true
 
for i = 0,1,0.1 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,-1*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(1.57*i,0,-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
for i=0,1,0.1 do
 
wait()
 
chak2.Mesh.Scale=chak2.Mesh.Scale+v3(1,1,0)
 
end
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=Character.Humanoid.WalkSpeed/2
 
coroutine.resume(coroutine.create(function()
 
while guarding==true do
 
wait(0.2)
 
ChakClone()
 
end
 
end))
 
humanoid = Character.Humanoid 
 
lhh = humanoid.Health
 
 
 
while guarding==true do
 
wait()
 
 
 
if humanoid.Health < lhh then
 
 
 
print(lhh - humanoid.Health) 
 
test = lhh - humanoid.Health 
 
humanoid.Health = lhh - (test * 0.25) 
 
lhh = humanoid.Health
 
end
 
end
 
Character.Humanoid.WalkSpeed=Walk
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0,-1+1*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5+0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1.57-1.57*i,0,-0.5+0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
chak2.Mesh.Scale=chak2.Mesh.Scale-v3(1,1,0)
 
end
 
attack=false
 
end
 
 
 
function FingerOfDeath()
 
attack=true
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=0
 
for i=0,1,0.1 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0,1*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
DarkBall(RightArm)
 
for i=0,4,0.1 do
 
wait()
 
Lightning(ball.Position,ball.Position+Vector3.new(math.random(-4,4),math.random(-4,4),math.random(-4,4)),3,5,"Gold",0.3,0.1)
 
MMMAGIC(RightArm,1,1,1,0,-1,0,BrickColor.new("Gold")) 
 
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new("Really black"))
 
end
 
gyro.P = 20e+003 *10
 
for i=0,1,0.2 do
 
wait()
 
Torso.Neck.C0=necko*euler(0,0,1-2.57*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5+1.07*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
Lightning(ball.Position,ball.Position+Vector3.new(math.random(-4,4),math.random(-4,4),math.random(-4,4)),3,5,"Gold",0.3,0.1)
 
MMMAGIC(RightArm,1,1,1,0,-1,0,BrickColor.new("Gold")) 
 
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new("Really black"))
 
end
 
wait(0.1)
 
local p1 = (ball.CFrame * CFrame.new(0,-ball.Size.y/2,0)).p
 
local dir = CFrame.new((p1+MMouse.Hit.p)/2,MMouse.Hit.p)
 
--local hit,pos = rayCast(p1,dir.lookVector,10,Character)
 
hit2,pos = rayCast(ball.Position,dir.lookVector,1000,modelzorz)
 
if hit2~=nil then
 
if hit2.Parent:findFirstChild("Humanoid")~=nil then
 
--hit2:BreakJoints()
 
count=0
 
count2=0
 
for i=0,5,0.1 do
 
wait()
 
if count==6 then
 
Damagefunc5(hit2,5,1) 
 
MMMAGIC(hit2,5,5,5,0,0,0,BrickColor.new("Gold"))
 
count=0
 
end
 
if count2==10 then
 
coroutine.resume(coroutine.create(function()
 
ChakClone()
 
end))
 
count1=0
 
end
 
count=count+1
 
count2=count2+1
 
Lightning(ball.Position,hit2.Position,5,2,"Gold",0.3,0.1)
 
end
 
else
 
for i=0,5,0.1 do
 
wait()
 
Lightning(ball.Position,pos+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)),5,math.random(1,10),"Gold",0.3,0.1)
 
end
 
end
 
end
 
StopBall()
 
wait(1)
 
Character.Humanoid.WalkSpeed=Walk
 
gyro.P = 20e+003 
 
attack=false
 
end
 
 
 
function EnergyBall()
 
attack=true
 
DarkBall(LeftArm)
 
for i=0,1,0.1 do
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,-1*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,1.57*i,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler((-1.57+offset)*i,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
for i = 0,1,0.2 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,-1+2.57*i)
 
--Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(-offset,0,0) 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,1.57,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(-1.57+offset,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
wait(0.2)
 
shoottrail2(LeftArm,20) 
 
while ballhold==true do
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,1.57,0) 
 
LW.C1 = cf(0, 0.5, 0) * euler(-1.57+offset,0,0) 
 
end
 
shoottrail2(LeftArm,20) 
 
end
 
StopBall()
 
for i = 0,1,0.1 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,1.57-1.57*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57+1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
attack=false
 
end
 
 
 
function DarkDrive()
 
attack=true
 
for i = 0,1,0.1 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,1.57*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
--GroundEffect(Torso,1,0,1,0,0,0,0,1.57,0,BrickColor.new("Really black")) 
 
WaveEffect(Torso,3,1,3,0,0,0,0,0,-1.57,BrickColor.new("Really black")) 
 
Torso.Neck.C0=necko*euler(0,0,-1)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0.5,1.57) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
Torso.CFrame=Torso.CFrame*CFrame.new(-10,0,0)
 
--[[for i=0,3 do
 
wait()
 
gyro.P = 100000
 
end]]
 
gyro.P = 100000
 
wait()
 
local vel = Instance.new("BodyVelocity")
 
vel.Parent = Torso
 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
 
vel.velocity = Head.CFrame.lookVector * 60 
 
--DarkWaveS:Play()
 
for i=0,1,0.1 do
 
wait()
 
local dd=part(1,workspace,0,0,BrickColor.new("Really black"),"Part",Vector3.new(1,1,1))
 
dd.Anchored=true
 
dd.CFrame=RightArm.CFrame*cf(0,-1,0)
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
 local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - dd.Position;
 
local mag = targ.magnitude;
 
if mag <= 10 and c[i].Name ~= Player.Name then 
 
Damagefunc3(head,1,10) 
 
end 
 
end 
 
end 
 
end 
 
dd.Parent=nil
 
MMMAGIC(RightArm,3,3,3,math.random(-3,3),math.random(-5,1),math.random(-3,3),BrickColor.new("Gold")) 
 
MMMAGIC(RightArm,5,5,5,math.random(-3,3),math.random(-5,1),math.random(-3,3),BrickColor.new("Really black"))
 
end
 
vel.Parent=nil
 
wait(0.1)
 
for i = 0,1,0.2 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,-1+1*i)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57+1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0.5-0.5*i,1.57-1.57*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
attack=false
 
end
 
 
 
function BlazingUpper()
 
attack=true
 
for i = 0,1,0.1 do 
 
wait() 
 
Torso.Neck.C0=necko*euler(0,0,0)
 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
local vel = Instance.new("BodyVelocity")
 
vel.Parent = Torso
 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
 
vel.velocity = vt(0,60,0)
 
--vel.velocity = vt(0,50,0)
 
CF=Torso.CFrame
 
--BlastS:Play()
 
for i=0,2,0.1 do
 
--for i=0,10,0.1 do
 
wait()
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - Torso.Position;
 
local mag = targ.magnitude;
 
if mag <= 10 and c[i].Name ~= Player.Name then 
 
Damagefunc5(head,1,60) 
 
end 
 
end 
 
end 
 
end 
 
MMMAGIC(Torso,3,3,3,math.random(-3,3),math.random(-1,5),math.random(-3,3),BrickColor.new("Gold")) 
 
MMMAGIC(Torso,5,5,5,math.random(-3,3),math.random(-1,5),math.random(-3,3),BrickColor.new("Really black"))
 
gyro.cframe=Head.CFrame*euler(0,4.71*i,0)
 
--Torso.CFrame=Torso.CFrame
 
end
 
Torso.Anchored=true
 
wait(0.1)
 
Torso.Anchored=false
 
vel.Parent=nil
 
attack=false
 
end
 
 
 
function DarknessFury()
 
attack=true
 
tempcf=gyro.cframe
 
coroutine.resume(coroutine.create(function() 
 
while attack==true do
 
wait()
 
gyro.cframe=tempcf
 
end
 
end))
 
coroutine.resume(coroutine.create(function() 
 
        amb=game.Lighting.Ambient
 
        ambr=amb.r
 
        ambg=amb.g
 
        ambb=amb.b
 
        print(ambr)
 
        desr=5/255
 
        desg=5/255
 
        desb=5/255
 
        print(desr)
 
        difr=ambr-desr
 
        difg=ambg-desg
 
        difb=ambb-desb
 
        difr=difr/255/.1
 
        difg=difg/255/.1
 
        difb=difb/255/.1
 
        print(difr)
 
        EM=0
 
        bri=game.Lighting.Brightness
 
        lightning=false
 
                for i=1, 20 do
 
                wait()
 
                game.Lighting.Brightness=game.Lighting.Brightness-(bri/20)
 
                game.Lighting.Ambient=Color3.new(amb.r-difr/2*i,amb.g-difg/2*i,amb.b-difb/2*i)
 
                end
 
                while attack==true do
 
                wait()
 
                end
 
                for i=1, 20 do
 
                wait()
 
                game.Lighting.Brightness=game.Lighting.Brightness+(bri/20)
 
                game.Lighting.Ambient=Color3.new((amb.r-difr*10)+difr*(i*.5),(amb.g-difg*10)+difg*(i*.5),(amb.b-difb*10)+difb*(i*.5))
 
                end
 
        game.Lighting.Brightness=bri
 
        game.Lighting.Ambient=amb
 
end))
 
Walk=Character.Humanoid.WalkSpeed
 
Character.Humanoid.WalkSpeed=0
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5+0.5*i,0.5+0.3*i,-0.5*i) * euler(2*i,0,0.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5+0.3*i,-0.5*i) * euler(2*i,0,-0.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
wait(0.3)
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5+0.5-0.5*i,0.5+0.3-0.3*i,-0.5+0.5*i) * euler(2-2.5*i,0,0.5-1*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5+0.5*i,0.5+0.3-0.3*i,-0.5+0.5*i) * euler(2-2.5*i,0,-0.5+1*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
count=0
 
for i=0,4,0.1 do
 
wait()
 
MMMAGIC(Torso,2,2,2,math.random(-7,7),math.random(-7,7),math.random(-7,7),BrickColor.new("Gold")) 
 
MMMAGIC(Torso,4,4,4,math.random(-7,7),math.random(-7,7),math.random(-7,7),BrickColor.new("Really black"))
 
GroundEffect(Torso,0.1,2,0.1,math.random(-10,10),math.random(-6,-2),math.random(-10,10),0,0,0,BrickColor.new("Really black")) 
 
count=count+1
 
if count==5 then
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - Torso.Position;
 
local mag = targ.magnitude;
 
if mag <= 19 and c[i].Name ~= Player.Name then 
 
attackdebounce=false
 
Damagefunc5(head,1,1) 
 
end 
 
end 
 
end 
 
end 
 
GroundEffect(Torso,3.5,3.5,3.5,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
count=0
 
end
 
end
 
for i=0,1,0.1 do
 
wait()
 
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(-0.5+2*i,0,-0.5+1*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(-0.5+2*i,0,0.5-1*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
for i=0,1,0.2 do
 
wait()
 
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(1.5,0,0.5-2.5*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1.5,0,-0.5+2.5*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end
 
for i=1,5 do
 
GroundEffect(Torso,0.1,2,0.1,math.random(-10,10),math.random(-6,-2),math.random(-10,10),0,0,0,BrickColor.new("Really black")) 
 
end
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - Torso.Position;
 
local mag = targ.magnitude;
 
if mag <= 19 and c[i].Name ~= Player.Name then 
 
attackdebounce=false
 
Damagefunc5(head,10,100) 
 
end 
 
end 
 
end 
 
end 
 
MMMAGIC(Torso,9,9,9,0,0,0,BrickColor.new("Gold")) 
 
MMMAGIC(Torso,12,12,12,0,0,0,BrickColor.new("Really black"))
 
GroundEffect(Torso,3.5,3.5,3.5,0,0,0,0,0,0,BrickColor.new("Really black")) 
 
wait(1)
 
Character.Humanoid.WalkSpeed=Walk
 
attack=false
 
end
 
 
 
function SwordWave()
 
attack=true
 
derpsword=true
 
hitted=false
 
tempcf=gyro.cframe
 
coroutine.resume(coroutine.create(function() 
 
while attack==true do
 
wait()
 
gyro.cframe=tempcf
 
end
 
gyro.P = 20e+003 
 
end))
 
wait(0.2)
 
local vel = Instance.new("BodyVelocity")
 
vel.Parent = Torso
 
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
 
vel.velocity = Head.CFrame.lookVector * 60 
 
coroutine.resume(coroutine.create(function() 
 
sword1.Parent=workspace
 
sword1.Transparency=1
 
local smesh=mesh("SpecialMesh",sword1,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(2,2/1.5,2))
 
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
 
smesh.VertexColor=Vector3.new(0, 0, 0.8)
 
local sweld=weld(sword1,sword1,LeftArm,euler(-1.57,0,0)*cf(0,4,0))
 
sword2.Parent=workspace
 
sword2.Transparency=1
 
local smesh=mesh("SpecialMesh",sword2,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(2,2/1.5,2))
 
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
 
smesh.VertexColor=Vector3.new(0, 0, 0.8)
 
local sweld=weld(sword2,sword2,RightArm,euler(-1.57,0,0)*cf(0,4,0))
 
for i=0,1,0.1 do
 
wait()
 
sword1.Transparency=sword1.Transparency-0.05
 
sword2.Transparency=sword2.Transparency-0.05
 
end
 
while derpsword==true do wait() end
 
for i=0,1,0.1 do
 
wait()
 
sword1.Transparency=sword1.Transparency+0.05
 
sword2.Transparency=sword2.Transparency+0.05
 
end
 
sword1.Parent=nil
 
sword2.Parent=nil
 
end))
 
for i = 0,1,0.1 do 
 
wait() 
 
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(2*i,0,1*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(2*i,0,-1*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
vel.Parent=nil
 
con1=sword1.Touched:connect(function(hit) Damagefunc1(hit,10,10) if hit.Parent:findFirstChild("Humanoid")~= nil and hitted==false then hitted=true comboee=hit.Parent MMMAGIC(hit,2,2,2,0,0,0,BrickColor.new("Gold")) end end) 
 
con2=sword2.Touched:connect(function(hit) Damagefunc1(hit,10,10) if hit.Parent:findFirstChild("Humanoid")~= nil and hitted==false then hitted=true comboee=hit.Parent MMMAGIC(hit,2,2,2,0,0,0,BrickColor.new("Gold")) end end) 
 
for i = 0,1,0.2 do 
 
wait() 
 
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(2-0.5*i,0,1-3*i) 
 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(2-0.5*i,0,-1+3*i) 
 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
 
end 
 
wait(0.5)
 
if hitted==true then
 
print("lolno")
 
end
 
derpsword=false
 
con1:disconnect()
 
con2:disconnect()
 
wait(0.5)
 
attack=false
 
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
 
 
 
 
 
function DarkBall(Part)
 
ball.Parent=modelzorz
 
bweld.Parent=ball
 
bweld.Part1=Part
 
bweld.C0=cf(0,2,0)
 
ball2.Parent=modelzorz
 
bweld2.Parent=ball2
 
bweld2.Part1=ball
 
coroutine.resume(coroutine.create(function()
 
ball.Transparency=1
 
ball2.Transparency=1
 
for i=0,1,0.1 do
 
wait()
 
ball.Transparency=ball.Transparency-0.05
 
ball2.Transparency=ball2.Transparency-0.05
 
end
 
end))
 
end
 
 
 
function StopBall()
 
coroutine.resume(coroutine.create(function()
 
ball.Transparency=0.5
 
ball2.Transparency=0.5
 
for i=0,1,0.1 do
 
wait()
 
ball.Transparency=ball.Transparency+0.05
 
ball2.Transparency=ball2.Transparency+0.05
 
end
 
ball.Parent=nil
 
ball2.Parent=nil
 
end))
 
end
 
 
 
function ChakClone()
 
clo=chak2:Clone()
 
clo.Parent=workspace
 
clo.Anchored=true
 
clo.Reflectance=0
 
for i=0,1,0.1 do
 
wait()
 
clo.Transparency=clo.Transparency+0.1
 
clo.Mesh.Scale=clo.Mesh.Scale+v3(1,1,0)
 
end
 
clo.Parent=nil
 
end
 
 
 
function effect(Color,Ref,LP,P1,returnn)
 
local effectsmsh = Instance.new("BlockMesh")
 
effectsmsh.Scale = Vector3.new(1,1,1)
 
effectsmsh.Name = "Mesh"
 
local effectsg = Instance.new("Part")
 
effectsg.formFactor = 3
 
effectsg.CanCollide = false
 
effectsg.Name = "Eff"
 
effectsg.Locked = true
 
effectsg.Anchored = true
 
effectsg.Size = Vector3.new(0.2,1,0.2)
 
effectsg.Parent = modelzorz
 
effectsmsh.Parent = effectsg
 
effectsg.BrickColor = BrickColor.new(Color)
 
effectsg.Reflectance = Ref
 
local point1 = P1
 
local mg = (LP.p - point1.p).magnitude
 
effectsg.Size = Vector3.new(0.2,mg,0.2)
 
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
 
if returnn then return effectsg end
 
coroutine.resume(coroutine.create(function()
 
if not returnn then
 
for i = 0 , 1 , 0.1 do
 
wait()
 
effectsg.Transparency = 1*i
 
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
 
end
 
wait()
 
effectsg.Parent = nil
 
end
 
end))
 
end
 
 
 
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2) end 
 
function fade(prt,incr) coroutine.resume(coroutine.create(function() for i=prt.Transparency,1,incr do prt.Transparency=i wait() end prt:Remove'' end)) end
 
 
 
function MakeCrater(pos,sc,tyms,debz) 
 
local bhit,bpos=ray(pos,pos - (pos + Vector3.new(0,200,0)))
 
print("NOU")
 
for i=1,tyms do 
 
coroutine.resume(coroutine.create(function()
 
local gr = pa(modelzorz,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) gr.Material = bhit.Material gr.TopSurface = bhit.TopSurface
 
print(gr.Parent)
 
gr.CFrame = cn(bpos+Vector3.new(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) wait(debz) fade(gr,5)
 
end))
 
end
 
end
 
 
 
function SummonSword(Part,cframe1,cframe2,Damage,Size)
 
coroutine.resume(coroutine.create(function() 
 
 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Gold"),"Sword",vt(3,3,3))
 
sword.Anchored=true
 
--con1=sword.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(Size,Size/1.5,Size))
 
--smesh.Parent=nil
 
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
 
smesh.VertexColor=Vector3.new(0, 0, 0.8)
 
sword.CFrame=Part.CFrame*cframe1
 
MakeCrater(sword.Position+v3(0,4,0),3,3,3)
 
for i=0,1,0.2 do
 
wait()
 
local dir = sword.CFrame.lookVector*-1
 
hit2,pos = rayCast(sword.Position,dir,5,Character)
 
if hit2~=nil then
 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
 
hum = hit2.Parent.Humanoid
 
Damagefunc2(hit2,Damage,10)
 
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
 
hum = hit2.Parent.Parent.Humanoid
 
Damagefunc2(hit2,Damage,10)
 
end
 
end
 
sword.CFrame=sword.CFrame*cframe2
 
end
 
coroutine.resume(coroutine.create(function() 
 
wait(1)
 
for i=0,1,0.05 do
 
wait()
 
sword.Transparency=sword.Transparency+0.05
 
end
 
sword.Parent=nil
 
end))
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
 local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - sword.Position;
 
local mag = targ.magnitude;
 
if mag <= 5 and c[i].Name ~= Player.Name then 
 
Damagefunc1(head,Damage,10) 
 
end 
 
end 
 
end 
 
end 
 
end))
 
end
 
 
 
function Sword(Part,x1,y1,z1,x2,y2,z2,times,speed,Damage)
 
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Gold"),"Sword",vt(3,3,3))
 
sword.Anchored=true
 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3/1.5,3))
 
smesh.TextureId="http://www.roblox.com/asset/?id=50798688"
 
smesh.VertexColor=Vector3.new(0, 0, 0.8)
 
sword.CFrame=Part.CFrame*CFrame.new(x1,y1,z1)*CFrame.fromEulerAnglesXYZ(x2,y2,z2)
 
 
 
GroundEffect(sword,3,3,3,0,0,0,0,0,0,BrickColor.new("Gold")) 
 
coroutine.resume(coroutine.create(function() 
 
while sword.Parent~=nil do
 
wait(0.1)
 
MMMAGIC(sword,1,1,1,0,0,-3,BrickColor.new("Really black")) 
 
end
 
end))
 
wait(0.5)
 
WaveEffect(sword,1,1,1,0,0,0,-1.57,0,0,BrickColor.new("Really black")) 
 
for i=0,times do
 
wait()
 
sword.CFrame=sword.CFrame*CFrame.new(0,0,speed)
 
local c = game.Workspace:GetChildren();
 
for i = 1, #c do
 
 local hum = c[i]:findFirstChild("Humanoid")
 
if hum ~= nil and hum.Health ~= 0 then
 
local head = c[i]:findFirstChild("Head");
 
if head ~= nil then
 
local targ = head.Position - sword.Position;
 
local mag = targ.magnitude;
 
if mag <= 5 and c[i].Name ~= Player.Name then 
 
Damagefunc1(head,Damage,10) 
 
end 
 
end 
 
end 
 
end 
 
end
 
GroundEffect(sword,1,1,1,0,0,0,0,0,0,BrickColor.new("Gold")) 
 
sword.Parent=nil
 
end))
 
end
 
 
 
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
 
local pderp=part(1,modelzorz,0,1,BrickColor.new("Really black"),"DarkBall",vt(1,1,1))
 
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
 
effectsg.BrickColor = BrickColor.new("Gold") 
 
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
 
effectsg.BrickColor = BrickColor.new("Really black") 
 
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
 
MMMAGIC(effectsg,3,3,3,0,0,0,BrickColor.new("Really black")) 
 
MMMAGIC(effectsg,5,5,5,0,0,0,BrickColor.new("Gold")) 
 
for i=1,5 do
 
MMMAGIC2(effectsg,1,3,1,0,0,0,BrickColor.new("Really black")) 
 
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
 
 
 
 
 
DarkRiftF=function(par) --Made by Saz (turdulator)
 
coroutine.resume(coroutine.create(function() 
 
PWN={}
 
for _,v in pairs(workspace:children()) do
 
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
 
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
 
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
 
table.insert(PWN,v.Torso)
 
end
 
end
 
end
 
end
 
for _,t in pairs(PWN) do
 
Mag=(par.Position-t.Position).magnitude/2
 
t.Parent.Humanoid:TakeDamage(.6)
 
rl=Instance.new("BodyAngularVelocity")
 
rl.P=3000
 
rl.maxTorque=Vector3.new(500000,500000,500000)*5000
 
rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
 
rl.Parent=t
 
game:GetService("Debris"):AddItem(rl,.1)
 
if Mag<=2 then
 
t.Parent.Humanoid:TakeDamage(.3)
 
else
 
vl=Instance.new("BodyVelocity")
 
vl.P=3000
 
vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
 
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
 
vl.Parent=t
 
game:GetService("Debris"):AddItem(vl,.1)
 
end
 
end
 
wait(.08)
 
end))
 
end
 
 
 
 
 
--[[function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
 
 
 
local sword=part(1,modelzorz,0,0.5,BrickColor.new("Gold"),"Sword",vt(3,3,3))
 
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
 
--        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
 
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
 
 
 
function StopCombo()
 
coroutine.resume(coroutine.create(function()
 
for i=0,2,0.1 do
 
if attack==false then
 
wait()
 
end
 
end
 
if attack==false then
 
Combo=""
 
print("END")
 
end
 
end))
 
end
 
 
 
function Attack()
 
if Combo=="<^> [Heavy]" then
 
print("SwordDrive")
 
SDhold=true
 
SwordDrive()
 
Combo=""
 
elseif Combo=="<v> [Heavy]" then
 
print("DarkClaw")
 
DChold=true
 
DarkClaw()
 
elseif Combo==">v<^ [Heavy]" then
 
print("SwordCombo")
 
SwordCombo()
 
elseif Combo=="^^v [Light]" then
 
print("BlazingUpper")
 
BlazingUpper()
 
elseif Combo=="vv^ [Light]" then
 
print("DarkDrive")
 
DarkDrive()
 
elseif Combo=="<^><^> [Drive]" then
 
print("Astral")
 
Astral()
 
elseif Combo=="^^vv [Drive]" then
 
print("DarknessFury")
 
DarknessFury()
 
elseif Combo==">^<v [Drive]" then
 
print("FingerOfDeath")
 
FingerOfDeath()
 
end
 
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
 
        if h~=nil and hit.Parent.Name~="ace28545" and hit.Parent:FindFirstChild("Torso")~=nil then
 
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
 
--                        critsound(2) 
 
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
 
        if h~=nil and hit.Parent.Name~="ace28545" and hit.Parent:FindFirstChild("Torso")~=nil then
 
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
 
--                        critsound(2) 
 
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
 
        if h~=nil and hit.Parent.Name~="ace28545" and hit.Parent:FindFirstChild("Torso")~=nil then
 
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
 
--                        critsound(2) 
 
--[[                        Knockback=Knockback*2
 
                        r=it("BodyAngularVelocity")
 
                        r.P=3000
 
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
 
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
 
                        r.Parent=hit.Parent.Torso]]
 
        
 
                end
 
                Damage=Damage+math.random(0,5)
 
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
 
                h:TakeDamage(Damage)
 
                showDamage(hit.Parent,Damage,.5)
 
                vp=it("BodyVelocity")
 
                vp.P=500
 
                vp.maxForce=vt(math.huge,math.huge,math.huge)
 
--                vp.velocity=Head.CFrame.lookVector*Knockback
 
                vp.velocity=(Head.CFrame.lookVector*Knockback+Head.Velocity/2) + Vector3.new(math.random(-30,30),5,math.random(-30,30))
 
                vp.Parent=hit.Parent.Torso
 
--[[        if Knockback>0 then
 
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
 
        if h~=nil and hit.Parent.Name~="ace28545" and hit.Parent:FindFirstChild("Torso")~=nil then
 
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
 
--                        critsound(2) 
 
--[[                        Knockback=Knockback*2
 
                        r=it("BodyAngularVelocity")
 
                        r.P=3000
 
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
 
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
 
                        r.Parent=hit.Parent.Torso]]
 
        
 
                end
 
                Damage=Damage+math.random(0,5)
 
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
 
                h:TakeDamage(Damage)
 
                showDamage(hit.Parent,Damage,.5)
 
                vp=it("BodyVelocity")
 
                vp.P=500
 
                vp.maxForce=vt(math.huge,math.huge,math.huge)
 
--                vp.velocity=Head.CFrame.lookVector*Knockback
 
                vp.velocity=Vector3.new(0,Knockback,0)
 
                vp.Parent=hit.Parent.Torso
 
--[[        if Knockback>0 then
 
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
 
        if h~=nil and hit.Parent.Name~="ace28545" and hit.Parent:FindFirstChild("Torso")~=nil then
 
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
 
gyro.Parent=Head
 
--[[if key=="q" then
 
Combo=Combo.." [Drive]"
 
print(Combo)
 
Attack()
 
Combo=""
 
end
 
if key=="c" then
 
Combo=Combo.." [Heavy]"
 
print(Combo)
 
Attack()
 
Combo=""
 
end
 
if key=="x" then
 
Combo=Combo.." [Light]"
 
print(Combo)
 
Attack()
 
Combo=""
 
end
 
if key=="w" then
 
Combo=Combo.."^"
 
print(Combo)
 
StopCombo()
 
end
 
if key=="a" then
 
Combo=Combo.."<"
 
print(Combo)
 
StopCombo()
 
end
 
if key=="s" then
 
Combo=Combo.."v"
 
print(Combo)
 
StopCombo()
 
end
 
if key=="d" then
 
Combo=Combo..">"
 
print(Combo)
 
StopCombo()
 
end]]
 
if key=="h" then
 
Astral()
 
end
 
if key=="z" then
 
Lightning(Torso.Position,MMouse.Hit.p,5,5,"White",1,0.1)
 
end
 
if key=="x" then
 
if canfinger==true then
 
canfinger=false
 
else
 
canfinger=true
 
coroutine.resume(coroutine.create(function()
 
ChakClone()
 
end))
 
end
 
end
 
if key=="q" then
 
SDhold=true
 
SwordDrive()
 
end
 
if key=="e" then
 
DChold=true
 
DarkClaw()
 
end
 
if key=="r" then
 
SChold=true
 
SwordCombo()
 
end
 
if key=="f" then
 
guarding=true
 
Guard()
 
end
 
if key=="z" then
 
 
 
end
 
if key=="c" then
 
DDhold=true
 
DarkDrive()
 
end
 
if key=="v" then
 
BUhold=true
 
BlazingUpper()
 
end
 
if key=="j" then
 
DFhold=true
 
DarknessFury()
 
end
 
if key=="k" then
 
--SWhold=true
 
--SwordWave()
 
FingerOfDeath()
 
end
 
Charging=0
 
gyro.Parent=nil
 
Torso.Neck.C0=necko
 
gyro.Parent=nil
 
RW.Parent = nil 
 
LW.Parent = nil 
 
for i=0,1,0.1 do
 
RSH.Parent = player.Character.Torso 
 
LSH.Parent = player.Character.Torso 
 
end
 
end 
 
 
 
function Key2(key,mouse) 
 
if key=="q" then
 
SDhold=false
 
end
 
if key=="e" then
 
DChold=false
 
end
 
if key=="r" then
 
SChold=false
 
end
 
if key=="f" then
 
guarding=false
 
end
 
if key=="c" then
 
DDhold=false
 
end
 
if key=="v" then
 
BUhold=false
 
end
 
if key=="j" then
 
DFhold=false
 
end
 
end 
 
function s(mouse) 
 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
 
MMouse = mouse 
 
sheathed = false 
 
equipanim(mouse) 
 
coroutine.resume(coroutine.create(function()
 
while sheathed==false do
 
wait()
 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
 
gyro.P = 10000
 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
 
gyro.cframe = CFrame.new(Head.Position,pos4) * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) --CFrame.new(Torso.Position,MMouse.Hit.p) * 
 
 
 
CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
 
offset=((Head.Position.y-MMouse.Hit.p.y)/60 )+0.02
 
mag=(Head.Position-MMouse.Hit.p).magnitude/80 
 
offset=offset/mag 
 
end
 
end))
 
end 
 
 
 
function ds(mouse) 
 
sheathed = true 
 
guardy = false 
 
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
 
--[[
 
function onRunning(speed)
 
if skill == true then return end 
 
        if speed>0 then 
 
walking = true 
 
for i = 0 ,1 , 0.1 do 
 
wait(0)  
 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
 
if attack == false then 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
 
end 
 
end 
 
        else 
 
walking = false 
 
for i = 0 ,1 , 0.1 do 
 
wait(0)  
 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.8*i-0.8,0,0) 
 
if attack == false then 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.8*i-0.8,0,0) 
 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
 
end 
 
        end 
 
end 
 
end 
 
Character.Humanoid.Running:connect(onRunning) ]]
 
--mediafire