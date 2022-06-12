:ls script.Parent = nil 
 
it = Instance.new
 
v3=Vector3.new
 
bc=BrickColor.new
 
c3=Color3.new
 
cn=CFrame.new
 
ca=CFrame.Angles
 
ca2=function(a,b,c) return ca(math.rad(a),math.rad(b),math.rad(c)) end
 
ti=table.insert
 
tr=table.remove
 
rn=math.random
 
rd=math.rad
 
mf=math.floor
 
ud = UDim2.new
 
inf=math.huge
 
dg=math.deg
 
mdeg=math.deg
 
v310=v3(1/0,1/0,1/0)
 
pi=math.pi
 
w=wait
 
cf=cn
 
bn=bc
 
ts=tostring
 
 
Workspace=game:GetService("Workspace")
 
Players=game:GetService("Players")
 
LocalPlayer=Players.LocalPlayer
 
Lighting=game:GetService("Lighting")
 
Debris=game:GetService("Debris")
 
 
work=Workspace
 
serv=Players
 
tb=LocalPlayer
 
light=Lighting
 
deb=Debris
 
 
asset = "http://www.roblox.com/asset/?id="
 
ds = {}
 
ds.Tile="58426060" -- texture
 
ds.RedDecal='91015882'  
 
ds.RedDecal2='91015899'  
 
ds.RedDecal3='91046114'
 
ds.AnonymousMask="19367193" -- mesh
 
ds.AnonymousMaskTexture="72393530" -- texture
 
ds.Balloon="10207677"
 
ds.CelestialCircle="78036587"
 
ds.SFOTHMoonArc="74132307"
 
ds.Claw = "10681506"
 
ds.Scream = "89487903"
 
ds.Ring = "3270017"
 
ds.Crack = "49173398"
 
ds.Cloud = "1095708"
 
ds.Slash3 = "10209640"
 
ds.Spike = "1033714"
 
ds.ThisIsRobloxSound="96673085"
 
ds.BashMiss="92597296"
 
ds.TelamonsterSword="93180631"
 
ds.TelamonsterSwordT="93180676"
 
ds.Rock = "1290033"
 
ds.Crown = "1323306"
 
ds.Hood = "16952952"
 
ds.Slash = "10209645"
 
ds.Slash2 = "46760716"
 
ds.MadFace = "2235131"
 
ds.BanditMask = "20637493"
 
ds.Hood2 = "25211365"
 
ds.HoodT2 = "64240784"
 
ds.Axe = "12768042"
 
ds.AxeT = "12768034"
 
ds.Fist = "65322375"
 
ds.Tree1 = "1090398"
 
ds.Vine = "13108500"
 
ds.VineT = "17585271"
 
ds.TreeTexture = "2861779"
 
ds.Tug = "31173820" -- sound
 
ds.Fire = "2693346" --"2760979"
 
ds.Hit = "2801263"
 
ds.BulletHole = "64291961"
 
ds.Camo = "4268107"
 
ds.Gradient1 = "70060415"
 
ds.DWrench = "70628302"
 
ds.DHealth = "70635804"
 
ds.Shine="48965808"
 
ds.GothicMusic="27697699"
 
 
qi = function(ttz) -- instance v2
 
 local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2)
 
 if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end
 
 
table.foreach(ds,function(a,b) -- asset loader
 
 if tonumber(b:sub(1,3)) then ds[a] = asset .. b game:service'ContentProvider':Preload(ds[a])  end end)
 
 
q = function(f) -- quick coroutine function
 
 coroutine.resume(coroutine.create(function() f() end)) end
 
 
 
ft = function(tablez,item) -- table finder
 
 for i=1,#tablez do if tablez[i] == item then return i end end  return nil end
 
 
ft2 = function(tablez,item) -- table finder 2
 
 for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end
 
 
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2) -- part maker
 
 local fp=nil
 
 if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then
 
 fp=it("Part",pa)
 
 fp.Shape=sh or "Block"
 
 fp.formFactor="Custom"
 
 elseif sh == "Wedge" then
 
 fp=it("WedgePart",pa)
 
 fp.formFactor="Custom"
 
 elseif sh == "CornerWedge" then
 
 fp=it("CornerWedgePart",pa)
 
 elseif sh == "VehicleSeat" then
 
 fp=it("VehicleSeat",pa)
 
 elseif sh == "Seat" then
 
 fp=it("Seat",pa)
 
 end
 
 fp.Size=v3(x or 4,y or 2,z or 2)
 
 fp.Friction = 2
 
 fp.CanCollide=c or true
 
 fp.Anchored=a or false
 
 fp.BrickColor=bc(bc2 or "")
 
 fp.Transparency=tr or 0
 
 fp.Reflectance=re or 0
 
 fp.BottomSurface=0
 
 fp.Name=pn or "UnNamed"
 
 fp.Locked = true
 
 fp.TopSurface=0
 
 fp.CFrame=cn(0,0,0)
 
 fp:BreakJoints()
 
 fp.Anchored = a
 
 return fp
 
end
 
 
function ClearClass(Object,Class) for _,v in pairs(Object:GetChildren()) do if v:IsA(Class) then v:Destroy() end end end
 
 
function re(par,obj) -- object remover
 
 if par:findFirstChild(obj) then
 
 par[obj]:Remove''
 
 end
 
end
 
 
function invis(o) -- model invisible
 
 for i,v in pairs(o:children()) do
 
 if v:IsA("BasePart") then
 
 v.Transparency=1
 
 end
 
 invis(v)
 
 end
 
end
 
 
FragmentIgnore={}
 
function Fragment(part, pos) -- The part to slice, and the position of the blade(might have to modify it).
 
        if part:IsA("Terrain") or part.Name=="Hitbox" then return end
 
        local s = part.Size
 
        local d = part.CFrame:pointToObjectSpace(pos)
 
        local d = Vector3.new(math.floor(d.x * 2 + 0.5) / 2, math.floor(d.y * 2 + 0.5) / 2, math.floor(d.z / 2 + 0.5) * 2)
 
        if math.abs(d.x)*2 / s.x <= 8 and math.abs(d.y)*2 / s.y <= 8 and math.abs(d.z)*2 / s.z <= 8 then
 
                table.insert(FragmentIgnore,part)
 
                local part1 = part:Clone() -- Top
 
                local part2 = part:Clone() -- Bottom
 
                table.insert(FragmentIgnore,part1)
 
                table.insert(FragmentIgnore,part2)
 
                local size1 = s.y/2 - d.y
 
                local size2 = s.y/2 + d.y
 
                local frame1 = s.y/2 - size1/2
 
                local frame2 = -s.y/2 + size2/2
 
                part1.formFactor = "Custom"
 
                part2.formFactor = "Custom"
 
                part1.Size = Vector3.new(part.Size.x, size1, part.Size.Z)
 
                part2.Size = Vector3.new(part.Size.x, size2, part.Size.Z)
 
                part1.CFrame = part.CFrame * CFrame.new(0, frame1, 0)
 
                part2.CFrame = part.CFrame * CFrame.new(0, frame2, 0)
 
                part2.Parent = Workspace
 
                part1.Parent = Workspace
 
                part2:BreakJoints()
 
                part1:BreakJoints()
 
                part:Destroy()
 
        end
 
end
 
 
function newhats(p,o,o2) -- new hats yeyeyey
 
 for i,v in pairs(p:children()) do
 
 if v:IsA("Hat") then
 
 local np=v.Handle:Clone''
 
 np.Transparency=0
 
 np.Mesh.Scale=np.Mesh.Scale*1.04
 
 np.Parent=o
 
 np.CFrame=v.Handle.CFrame
 
 np.Name="Hat"
 
 stick2(np,o2,o)
 
 end
 
 end
 
end
 
 
fade = function(prt,incr) --brick fader
 
 q(function()  for i=prt.Transparency,1,incr do  prt.Transparency=i wait()  end prt:Remove'' end) end
 
 
 
function weld(pa,p0,p1,x,y,z,a,b,c)
 
 local fw=it("Weld",pa)
 
 fw.Part0=p0
 
 fw.Part1=p1
 
 fw.C0=cn(x,y,z)*ca(a,b,c)
 
 return fw
 
end
 
 
 
stick = function(hit2,hit) -- stick function
 
 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) end
 
 
function stick2(hit2,hit,tostick) -- stick2 function
 
 local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cn(HitPos) local C0=hit2.CFrame:inverse()
 
 
*CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end
 
 
ray = function(Pos, Dir,tab) -- ray cast
 
 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab) end
 
 
 
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end
 
 
sTrail={}
 
function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)
 
local oldpos=(ob.CFrame *ofz).p local lopz2=0
 
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
 
local mag=(oldpos - obp).magnitude
 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true
 
tr.CFrame=cn(oldpos,obp)
 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
 
cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)
 
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end
 
repeat loltr()
 
wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
 
 
Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail
 
 q(function()
 
 local oldpos=(ob.CFrame *ofz).p
 
 for i=1,times do
 
 if effon==true then
 
 local obp=(ob.CFrame *ofz).p
 
 local mag=(oldpos - obp).magnitude
 
 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col)
 
 tr.Anchored=true
 
 tr.CFrame=cn(oldpos,obp)
 
 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
 
 trm=it("CylinderMesh",tr)
 
 trm.Scale=v3(thickz,mag*5,thickz)
 
 q(function()
 
 for i=thickz,0,thickz/10 do
 
 trm.Scale=v3(i,mag*5,i)
 
 wait()
 
 end
 
 tr:Remove''
 
 end)
 
 tr.CFrame=tr.CFrame *ca(rd(90),0,0)
 
 oldpos=obp wait(waitz)
 
 end
 
 end
 
 end)
 
end
 
 
de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris
 
 
GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() -- Glowmesh
 
local spi=pa(rootz,"glowmesh","Block",mv3.X,mv3.Y,mv3.Z,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) spi.CanCollide=false if
 
 
meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim=it("BlockMesh",spi) else
 
 
spim.MeshType="FileMesh" spim.MeshId=meshid2 end
 
if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end
 
for i=l1,l2,l3 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end)
 
end
 
 
DetectSurface = function(pos, part) -- Surface Detector
 
local surface = nil local pospos = part.CFrame
 
local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape
 
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
 
surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}
 
else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}
 
elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right",
 
 
ca(0, 0, rd(-90))}
 
elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca
 
 
(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end
 
 
BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function
 
local Surface = DetectSurface(HitPos, HitObj)
 
local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
 
if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole
 
local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})
 
bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end q(function() wait(5) for i=0,1,0.05 do bl.Size=v3(-i*sc,0,-i*sc) wait() end de(bl,0) end)
 
end
 
 
so = function(id,par,vol,pit) q(function() -- Sound maker
 
local sou = qi({"Sound",par or workspace,Volume=vol,Pitch=pit or 1,SoundId=id})
 
wait() sou:play() wait(6) sou:Remove() end) end
 
 
-- local/so(asset..ds.GothicMusic,workspace,1,2.6)
 
 
function GetRegion(p0,p1,f,f2) q(function()
 
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and
 
 
v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and
 
 
v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end
 
end) end
 
 
 
FindGround = function(pos) -- ground finder
 
 local ax,ay,az = pos:toEulerAnglesXYZ()
 
 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
 
 if bhit and bpos then
 
 return cn(bpos)*ca(ax,ay,az)
 
 end
 
 return nil
 
end
 
 
function NPC(Name, Position) -- npc maker
 
        local Character = Instance.new("Model")
 
        Character.Name = Name
 
        local Humanoid = Instance.new("Humanoid")
 
        Humanoid.Parent = Character
 
        local Template = Instance.new("Part")
 
        Template.FormFactor = "Custom"
 
        Template.Size = Vector3.new(1, 2, 1)
 
        Template.Locked = true
 
        local Head = Template:Clone()
 
        Head.Name = "Head"
 
        Head.TopSurface = "Smooth"
 
        Head.BottomSurface = "Smooth"
 
        Head.Size = Vector3.new(2, 1, 1)
 
        Head.Parent = Character
 
        local Mesh = Instance.new("SpecialMesh")
 
        Mesh.MeshType = "Head"
 
        Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
 
        Mesh.Parent = Head
 
        local Face = Instance.new("Decal")
 
        Face.Name = "face"
 
        Face.Texture = "rbxasset://textures/face.png"
 
        Face.Parent = Head
 
        local Torso = Template:Clone()
 
        Torso.Name = "Torso"
 
        Torso.LeftSurface = "Weld"
 
        Torso.RightSurface = "Weld"
 
        Torso.CFrame = CFrame.new(0, 10000, 0)
 
        Torso.Size = Vector3.new(2, 2, 1)
 
        Torso.Parent = Character
 
        local TShirt = Instance.new("Decal")
 
        TShirt.Name = "roblox"
 
        TShirt.Parent = Torso
 
        local LeftArm = Template:Clone()
 
        LeftArm.Name = "Left Arm"
 
        LeftArm.Parent = Character
 
        local RightArm = Template:Clone()
 
        RightArm.Name = "Right Arm"
 
        RightArm.Parent = Character
 
        local LeftLeg = Template:Clone()
 
        LeftLeg.Name = "Left Leg"
 
        LeftLeg.Parent = Character
 
        local RightLeg = Template:Clone()
 
        RightLeg.Name = "Right Leg"
 
        RightLeg.Parent = Character
 
        Character:BreakJoints()
 
        local Neck = Instance.new("Weld")
 
        Neck.Name = "Neck"
 
        Neck.Part0 = Torso
 
        Neck.Part1 = Head
 
        Neck.C0 = CFrame.new(0, 1.5, 0)
 
        Neck.Parent = Torso
 
        local LeftShoulder = Instance.new("Motor")
 
        LeftShoulder.Name = "Left Shoulder"
 
        LeftShoulder.Part0 = Torso
 
        LeftShoulder.Part1 = LeftArm
 
        LeftShoulder.MaxVelocity = 0.1
 
        LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - RightArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -
 
 
math.pi / 2, 0)
 
        LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftShoulder.Parent = Torso
 
        local RightShoulder = Instance.new("Motor")
 
        RightShoulder.Name = "Right Shoulder"
 
        RightShoulder.Part0 = Torso
 
        RightShoulder.Part1 = RightArm
 
        RightShoulder.MaxVelocity = 0.1
 
        RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0,
 
 
math.pi / 2, 0)
 
        RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightShoulder.Parent = Torso
 
        local LeftHip = Instance.new("Motor")
 
        LeftHip.Name = "Left Hip"
 
        LeftHip.Part0 = Torso
 
        LeftHip.Part1 = LeftLeg
 
        LeftHip.MaxVelocity = 0.1
 
        LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftHip.Parent = Torso
 
        local RightHip = Instance.new("Motor")
 
        RightHip.Name = "Right Hip"
 
        RightHip.Part0 = Torso
 
        RightHip.Part1 = RightLeg
 
        RightHip.MaxVelocity = 0.1
 
        RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightHip.Parent = Torso
 
        local BodyColors = Instance.new("BodyColors")
 
        BodyColors.LeftArmColor = BrickColor.new("Bright yellow")
 
        BodyColors.RightArmColor = BrickColor.new("Bright yellow")
 
        BodyColors.LeftLegColor = BrickColor.new("Br. yellowish green")
 
        BodyColors.RightLegColor = BrickColor.new("Br. yellowish green")
 
        BodyColors.HeadColor = BrickColor.new("Bright yellow")
 
        BodyColors.TorsoColor = BrickColor.new("Bright blue")
 
        BodyColors.Parent = Character
 
        Character.Parent = Workspace
 
        Character:MoveTo(Position)
 
        Character:MoveTo(Torso.Position + Vector3.new(0, 3, 0))
 
        return Character
 
end
 
 
AddBV=function(str,cfr,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBV' then par.LibBV:Remove() end
 
tbbodyvelocity=qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,1/0,1/0),Name='LibBV'} deb:AddItem(tbbodyvelocity,debt)
 
end
 
 
AddBG=function(str,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBG' then par.LibBG:Remove() end
 
tbbodygyro=qi{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Name='LibBG'} deb:AddItem(tbbodygyro,debt)
 
end
 
 
AddBAV=function(vec3,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBAV' then par.LibBAV:Remove() end
 
tbbodyangularvelocity=qi{'BodyAngularVelocity',par,maxTorque=v3(1/0,1/0,1/0),angularvelocity=vec3,Name='LibBAV'} deb:AddItem(tbbodyangularvelocity,debt)
 
end
 
 
Dmg = function(Hum,Dealt,Hitter)
 
local HM=Hum.Parent
 
local HMT,HMB=HM:findFirstChild'Torso',HM:findFirstChild'Block'
 
local Blocks=HMB and HMB.Value>0
 
if HMT then
 
local mm=qi{'Model',HMT} qi{'Humanoid',mm,MaxHealth=0} deb:AddItem(mm,1)
 
local mp= qi{'Part',mm,Name='Head',formFactor="Custom",Anchored=true,CanCollide=false,Size=v3(1,0.2,1),CFrame=HMT.CFrame*cn(rn(-
 
 
100,100)/50,3,rn(-100,100)/50)} qi{'BlockMesh',mp}
 
if Blocks then
 
mm.Name='Block!'
 
mp.BrickColor=bn'Bright blue'
 
HMB.Value=HMB.Value-1
 
else
 
mm.Name=Dealt
 
mp.BrickColor=bn'Bright red'
 
end
 
end
 
if not Blocks then  
 
Hum.Health=Hum.Health-Dealt
 
end
 
end
 
 
GetHum = function(part)
 
local Hum,HT,block
 
for i,v in pairs(part.Parent:children()) do
 
if v:IsA("Humanoid") then
 
Hum=v
 
elseif v.Name=='Torso' then
 
HT=v
 
elseif v.Name=='Block' and v:IsA("NumberValue") then
 
block=v
 
end
 
end
 
return Hum,HT,block
 
end
 
 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness
 
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
 
for i=1,tym do
 
local li = it("Part",c) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = bc(col)
 
li.formFactor = "Custom" li.CanCollide = false li.Size = v3(th,th,magz/tym) local ofz = v3(trz[rn(1,2)],trz[rn(1,2)],trz[rn(1,2)])
 
local trolpos = cn(curpos,p1)*cn(0,0,magz/tym).p+ofz
 
if tym == i then
 
local magz2 = (curpos - p1).magnitude li.Size = v3(th,th,magz2)
 
li.CFrame = cn(curpos,p1)*cn(0,0,-magz2/2)
 
else
 
li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/tym/2)
 
end
 
curpos = li.CFrame*cn(0,0,magz/tym/2).p de(li,0.25)
 
end
 
end
 
 
MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker
 
 q(function()
 
 if not debz then
 
 debz = 5
 
 end
 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0))) if bhit and bpos then
 
 for i=1,tyms do
 
 q(function()
 
 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name)
 
 gr.Material = bhit.Material
 
 gr.TopSurface = bhit.TopSurface
 
 gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40)))
 
 wait(debz)
 
 fade(gr,0.1)
 
 end)
 
 end
 
 end
 
 end)
 
end
 
 
MakeCrack = function(pos,sc,debz,par) -- crackmaker
 
 q(function()
 
 if not debz then
 
 debz = 5
 
 end
 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
 
 if bhit and bpos then
 
local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
 
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
 
 end
 
 end)
 
end
 
 
a = {}
 
a.insw={}
 
function cleanweld(wexx,namzi)
 
 local tn=ft2(a.insw,wexx)
 
 if tn==nil then return end
 
 if namzi=="p0" then
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0
 
 end
 
end
 
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 q(function()
 
 c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 end)
 
end
 
a.Welding=0
 
function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 if ft2(a.insw,wexx)==nil then
 
 ti(a.insw,{wexx,{}})
 
 local tn=ft2(a.insw,wexx)
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ()
 
 end
 
 local tn=ft2(a.insw,wexx)
 
 local xx2,yy2,zz2=0,0,0
 
 local x2,y2,z2=0,0,0
 
 if c0orc1==0 then
 
 xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]
 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]
 
 elseif c0orc1==1 then
 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 
 x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]
 
 else
 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]
 
 end a.Welding=a.Welding + 1
 
 local twa=1
 
 if smmx >= 1 then
 
 else
 
 for i=smmx,0.8,smmx do
 
 twa = 1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 if fu then
 
 q(fu)
 
 end
 
 wait()
 
 end
 
 for i=0.8,1,smmx*0.45 do
 
 twa = 1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 wait()
 
 end
 
 end
 
 local i=1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 a.Welding=a.Welding - 1
 
 local tn=ft2(a.insw,wexx)
 
 if c0orc1==0 then
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 elseif c0orc1==1 then
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 elseif c0orc1==3 then
 
 local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 local x,y,z=wexx.C1:toEulerAnglesXYZ()
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 end
 
end
 
 
Welds={}
 
Ani=function(w,a,b,c,d,e,f,ty,inc,sined)
 
if not Welds[w] then
 
local d0,e0,f0=w.C0:toEulerAnglesXYZ() local d1,e1,f1=w.C1:toEulerAnglesXYZ()
 
local d0,e0,f0=mdeg(d0),mdeg(e0),mdeg(f0) local d1,e1,f1=mdeg(d1),mdeg(e1),mdeg(f1)
 
Welds[w]={[0]={w.C0.x,w.C0.y,w.C0.z,d0,e0,f0},[1]={w.C1.x,w.C1.y,w.C1.z,d1,e1,f1}}
 
end
 
local c0,c1=Welds[w][0],Welds[w][1]
 
c0[1],c0[2],c0[3]=w.C0.x,w.C0.y,w.C0.z
 
c1[1],c1[2],c1[3]=w.C1.x,w.C1.y,w.C1.z
 
local A0,B0,C0,D0,E0,F0 = unpack(c0)
 
local A1,B1,C1,D1,E1,F1 = unpack(c1)
 
local Do = function(i)
 
if ty==0 then
 
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2( D0-((D0-d)*i) , E0-(((E0-e)/1)*i) , F0-((F0-f)*i) )
 
elseif ty==1 then
 
w.C1=cn( A1-((A1-a)*i) , B1-((B1-b)*i) , C1-((C1-c)*i) ) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
 
else
 
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2(D0,E0,F0)
 
w.C1=cn(A1,B1,C1) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
 
end
 
end
 
for i=inc,1,inc do
 
Do(sined and math.sin(math.pi/2*i) or i)
 
wait()
 
end
 
Do(1)
 
if ty==0 then
 
c0[4],c0[5],c0[6]=d,e,f
 
else
 
c1[4],c1[5],c1[6]=d,e,f
 
end
 
end
 
qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined) end) end
 
rAni=function(w)
 
Welds[w]=nil
 
end
 
 
gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function
 
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
 
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
 
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do
 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
 
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end
 
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
 
wait()
 
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
 
if not bhit.Anchored then
 
if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end
 
else if bhit.Name~="Base" then bhit.Anchored=false bhit:BreakJoints() end end bb:Remove()
 
if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
 
end) end
 
 
dive = function(ob2,pro,ite,stof)
 
local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then
 
for i=1,#stof do v[stof[i][1]] = stof[i][2] end else div(v) end end end
 
div(ob2)
 
end
 
 
fc = function(ob,cl)
 
for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end
 
end
 
 
function se(Key,Text)
 
local Values = {}
 
for value in (Text..Key):gmatch("(.-)"..Key) do
 
table.insert(Values,value)
 
end return Values
 
end
 
 
local thefenv = getfenv()
 
getfenv()["rmhelp"] = function()
 
local nus = 0
 
for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)
 
print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")
 
end
 
end
 
end
 
 
for i,v in pairs(thefenv) do
 
_G[i] = v --print(i)
 
end
 
 
_G[" rm".."dx "] = [[
 
for i,v in pairs(_G) do
 
if i ~= "wait" and i ~= "script" then
 
getfenv()[i] = v
 
end
 
end
 
]]
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
script:ClearAllChildren()
 
loadstring(_G[" rmdx "])()
 
 
Player=game:GetService("Players").LocalPlayer
 
Char=Player.Character
 
Backpack=Player.Backpack
 
PlayerGui=Player.PlayerGui
 
Torso=Char.Torso
 
Head=Char.Head
 
Hum=Char.Humanoid
 
Cam=workspace.CurrentCamera
 
Tn="Rocket Launcher"
 
 
pcall(function() Backpack[Tn]:Remove() end)
 
pcall(function() Cam[Tn]:Remove() end)
 
pcall(function() thesuit=Char[''] end)
 
pcall(function() thesuit[Tn]:Remove() end)
 
pcall(function() PlayerGui[Tn]:Remove() end)
 
 
CModel=qi{'Model',Cam,Name=Tn}
 
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
 
Suit=qi{'Model',Char,Name=''}
 
Weapon=qi{'Model',Suit,Name=Tn}
 
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
 
 
Mode="Normal"
 
equip="unequipped"
 
anim=""
 
keys={}
 
fmouse=nil
 
Gyr0z=false
 
LastShot=0
 
 
ids = {}
 
ids.Shoot = 2691586
 
ids.Shoot2 = 10209842
 
ids.Ring =  3270017
 
ids.Fire = 10209821
 
ids.Crown = 20329976
 
ids.Crown2 = 1323306
 
ids.Icon = 52611635
 
ids.Spike = 1033714
 
ids.Hit = 10209590
 
ids.Explode = 2697431
 
ids.Rocket = 103970395
 
 
for i,v in pairs(ids) do
 
if type(v)=='number' then
 
ids[i]='http://www.roblox.com/asset/?id='..v
 
end
 
end
 
 
Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
 
if _G.Limbz then
 
Limbs.LS=Limbs.LS or _G.Limbz.LS
 
Limbs.RS=Limbs.RS or _G.Limbz.RS
 
Limbs.LH=Limbs.LH or _G.Limbz.LH
 
Limbs.RH=Limbs.RH or _G.Limbz.RH
 
end
 
_G.Limbz=Limbs
 
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
 
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
 
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
 
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
 
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
 
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
 
 
pcall(function() thesuit:Remove() end)
 
 
pcall(function() Head.face.Transparency=0 end)
 
Head.Transparency=0.99 Torso.Transparency=1
 
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck
 
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
 
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
 
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1
 
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
 
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.MaxHealth=200 Hum.Health=Hum.MaxHealth
 
 
Armz=false
 
Legz=false
 
Arms = function(on) Armz=on
 
if on then
 
LS.Part1=nil RS.Part1=nil
 
la.Part0=fTorso ra.Part0=fTorso
 
la.Part1=LA ra.Part1=RA
 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0)
 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
 
else
 
LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA
 
la.Part1=nil ra.Part1=nil
 
end
 
end
 
 
Legs = function(on) Legz=on
 
if on then
 
LH.Part1=nil RH.Part1=nil
 
ll.Part0=fTorso rl.Part0=fTorso
 
ll.Part1=LL rl.Part1=RL
 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0)
 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
 
else
 
LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL
 
ll.Part1=nil rl.Part1=nil
 
end
 
end
 
Arms'' Legs''
 
 
WDesign=function()
 
hp=pa(Weapon,"","Block",0,0,0,false,false,1,0) haw=weld(hp,Torso,hp,1,1,0.6,rd(180),0,rd(90))
 
ha=pa(Weapon,"","Block",0.25,0.9,0.4,false,false,0,0,"Br. yellowish orange") weld(ha,hp,ha,0,0,0,0,rd(90),0)
 
p=pa(Weapon,"","Block",0.35,0.5,0.45,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.45+0.25,0,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.4,0.8,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.9+0.25,-0.175,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.05,0.325,rd(180),0,0) qi{'SpecialMesh',p,MeshType="Wedge"}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.25,0.325,0,0,0) qi{'BlockMesh',p}
 
tr=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,"Dark stone grey") weld(tr,ha,tr,0,0.8,-0.35,0,rd(90),0) qi{'SpecialMesh',tr,MeshId=ids.Ring,Scale=v3(0.4,0.4,1)}
 
p=pa(Weapon,"","Block",0.2,0.25,0.2,false,false,0,0,"Dark stone grey") weld(p,tr,p,-0.15,0,0,0,0,rd(10)) qi{'BlockMesh',p,Scale=v3(1,1,0.5)}
 
bp=pa(Weapon,"","Block",0.7,2.5,0.7,false,false,0,0,"Dark stone grey") weld(bp,ha,bp,0,1.6,-0.5-0.125,rd(90),0,0) qi{'CylinderMesh',bp}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,1.25,0,rd(180),0,0) qi{'SpecialMesh',p,Scale=v3(0.4,4,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.9,0.2,0.9,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,2.7,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,3.1,0,0,0,0) qi{'SpecialMesh',p,Scale=v3(0.4,1,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.6,0.5,0.6,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.35,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.25,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.45,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
for i=0,360,360/10 do
 
local p=pa(Weapon,"","Block",0.2,1,0.5,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}pw.C0=cn(0,3.9,0)*ca(0,rd(i),0)*cn(0.5,0,0)*ca(0,0,rd(-35))
 
local p=pa(Weapon,"","Block",0.3,0.2,0.7,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,1)}pw.C0=cn(0,4.3,0)*ca(0,rd(i),0)*cn(0.9,0,0)
 
end
 
bar=pa(Weapon,"","Block",0.65,1.2,0.65,false,false,0,0,"Dark stone grey") weld(bar,bp,bar,0,-1.5,0,0,0,0) qi{'CylinderMesh',bar}
 
p=pa(Weapon,"","Block",0.45,1,0.45,false,false,0,0,"Really black") weld(p,bar,p,0,-0.6,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.02,1)}
 
p=pa(Weapon,"","Block",0.25,1.5,0.4,false,false,0,0,"Br. yellowish orange") weld(p,ha,p,0,0.3,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.5,0.9,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.1,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.2,0.3,0.4,false,false,0,0,"Dark stone grey") weld(p,bar,p,-0.1,0,-0.3,rd(90),0,0) qi{'BlockMesh',p}
 
pb=pa(Weapon,"","Block",0.3,0.2,0.5,false,false,0,0,"Dark stone grey") weld(pb,bar,pb,-0.1,0,-0.5,rd(-90),0,0) qi{'BlockMesh',pb,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,-0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.25,0.6,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.2,0,rd(-15),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.25,0.3,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.6,0,rd(25),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,-0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
pl=pa(Weapon,"","Block",0.2,2,0.7,false,false,0,0,"Dark stone grey") weld(pl,bp,pl,0.6,0,0,0,0,0) qi{'BlockMesh',pl,Scale=v3(0.5,1,1)}
 
p=pa(Weapon,"","Block",0.2,2,0.6,false,false,0,0,"Dark stone grey") weld(p,pl,p,-0.275,0,-0.5,0,rd(60),0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}
 
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
 
end
 
 
WDesign()
 
Arms(false) Legs(false)
 
 
Dealt={20,70}
 
BBD,BBT=0,{}
 
 
function Destroy(Directory,Part,Distance)
 
for i,v in pairs(Directory:GetChildren()) do
 
if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name then
 
if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
 
v.Anchored=false
 
v:BreakJoints()
 
v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0)
 
v.Velocity=cn(Part.Position,v.Position).lookVector*50
 
end
 
elseif v:IsA("Model") or v:IsA("Script") then
 
Destroy(v,Part,Distance)
 
end
 
end
 
end
 
 
SplashDmg=function(Part,Distance)
 
q(function()
 
so(ids.Explode,Part,1,0.4)
 
qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}
 
for i,v in pairs(workspace:GetChildren()) do
 
if v:FindFirstChild("Torso",true) then
 
local vTorso=v:FindFirstChild("Torso",true)
 
if (vTorso.Position-Part.Position).magnitude<=Distance then
 
local vHum=GetHum(vTorso)
 
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
 
BBT[vHum.Parent]=1
 
if rn(1,20)==1 then
 
Dmg(vHum,rn(Dealt[1],Dealt[2])*3)
 
else
 
Dmg(vHum,rn(Dealt[1],Dealt[2]))
 
end
 
if BBD==2 and vTorso then
 
vHum.PlatformStand=true
 
if vHum.Jump then
 
AddBV(140,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
else
 
AddBV(110,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
end
 
if vTorso.Parent~=Char then
 
AddBAV(v3(rn(-25,25),rn(-25,25),rn(-25,25)),vTorso,0.4)
 
end
 
q(function()
 
wait(0.4)
 
vHum.PlatformStand=false
 
end)
 
end
 
so(ids.Hit,vTorso,1,1)
 
BBT[vHum.Parent]=nil
 
end
 
end
 
end
 
end)
 
end
 
 
Fire = function(speed,sc,cff,dest)
 
q(function()
 
bb = pa(workspace,"bullet","Block",0.5*sc,2.8*sc,0.5*sc,false,true,0,0,"Black") qi{"SpecialMesh",bb,MeshId=ids.Rocket} bb.CanCollide=false
 
bb.CFrame = cn(cff.p,dest)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,bar,m,0,-0.825,0.05,rd(180),0,0) fade(m,0.2)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,bar,m,0,-1,0,rd(180),0,0) fade(m,0.2)
 
so(ids.Fire,ha,1,1)
 
for i=1,100 do
 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,0,2)).p)
 
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end
 
bb.CFrame=bb.CFrame*cn(0,0,-speed)
 
GlowMesh(false,"block",Weapon,v3(1,1,1),"Bright red",bb.CFrame*cn(rn(-5,5),rn(-5,5),rn(1,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0.1,1,0.07)
 
wait()
 
end
 
local Surface = DetectSurface(bpos,bhit)
 
local C = cn(bpos) * ca(bhit.CFrame:toEulerAnglesXYZ()) * Surface[2]
 
if Surface[1] == "Anything" then C = Surface[2] end
 
GlowMesh(false,ids.Crown,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
GlowMesh(false,ids.Crown2,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
BBD=2
 
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
 
SplashDmg(bb,12)
 
Destroy(workspace,bb,12)
 
BBD=0
 
game:GetService("Debris"):AddItem(bb,1)
 
end)
 
end
 
 
function Stance(speed)
 
c2(ra,speed,3,1.25,0.5,-0.25,-90,-65,0)
 
c2(la,speed,3,-1.25,0.5,-0.25,-90,-20,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,-65,0)
 
c2(tw,speed,3,0,0,0,0,65,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,0,-1,0.8,-90,-90,0,0,speed,1)
 
end
 
 
function Reset(speed)
 
c2(ra,speed,3,1.5,0.5,0,0,0,0)
 
c2(la,speed,3,-1.5,0.5,0,0,0,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,0,0)
 
c2(tw,speed,3,0,0,0,0,0,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,1,1,0.6,180,0,90,0,speed,1)
 
end
 
 
function Button1Down()
 
if equip=="equipped" and anim=="" and (tick()-LastShot)>=0.8 and Hum.Health>0 then
 
LastShot=tick()
 
Fire(4,1,bar.CFrame*cn(0,-2,0),fmouse.Hit.p)
 
end
 
end
 
 
function KeyDown(key)
 
key=key:lower()
 
keys[key]=true
 
end
 
 
function KeyUp(key)
 
key=key:lower()
 
keys[key]=false
 
end
 
 
function Move()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end
 
 
Tool.Selected:connect(function(mouse)
 
fmouse=mouse Gyr0z=true
 
if equip=="unequipped" and anim=="" then
 
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = RA.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Stance(0.1) equip="equipped"
 
end
 
mouse.Button1Down:connect(Button1Down)
 
mouse.KeyDown:connect(KeyDown)
 
mouse.KeyUp:connect(KeyUp)
 
mouse.Move:connect(Move)
 
end)
 
 
Tool.Deselected:connect(function()
 
fmouse=nil Gyr0z=false
 
if equip=="equipped" and anim=="" then
 
equip="unequipping" c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = Torso.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Reset(0.1)
 
Arms(false) Legs(false) equip="unequipped"
 
end
 
end)
 
 
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
 
game:GetService("RunService").Stepped:connect(function()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end)
 