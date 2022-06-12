wait(1/60)
--[[                                                                                                        
Disc Master script made by Fenrier.
Made for an upcoming game I will be making. Don't expect it to be out anytime soon though.
And hello hacker :D
Have fun with my scripts by the way c:
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
attack = false 
attacktype = 1 
damage = 5 
oridamage = 50 
attackdebounce = false 
ssdebounce=false
MMouse=nil
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Disc",true) ~= nil then 
Character:findFirstChild("Disc",true).Parent = nil 
end 
if Character:findFirstChild("Block",true) ~= nil then 
Character:findFirstChild("Block",true).Parent = nil 
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
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Disc" 
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0.2,0,Torso.BrickColor,"Part3",vt(1,1,1))
local prt3a=part(3,modelzorz,0,1,Torso.BrickColor,"Part3a",vt(1,1,1))
local prt3b=part(3,modelzorz,0,1,Torso.BrickColor,"Part3b",vt(1,1,1))
local prt4=part(3,modelzorz,0,1,Torso.BrickColor,"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,1,BrickColor.new("Black"),"Part5",vt(1,0.5,1))
local prt11=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local prt21=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local prt31=part(3,modelzorz,0.2,0,Torso.BrickColor,"Part31",vt(1,1,1))
local prt3a1=part(3,modelzorz,0,1,Torso.BrickColor,"Part3a1",vt(1,1,1))
local prt3b1=part(3,modelzorz,0,1,Torso.BrickColor,"Part3b1",vt(1,1,1))
local prt41=part(3,modelzorz,0,1,Torso.BrickColor,"Part41",vt(1,1,1))
local prt51=part(3,modelzorz,0,1,BrickColor.new("Black"),"Part51",vt(1,0.5,1))
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.01,0.1,1.01))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local msh3=mesh("SpecialMesh",prt3,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh3a=mesh("CylinderMesh",prt3a,"","",vt(0,0,0),vt(1,0.05,1))
local msh3b=mesh("CylinderMesh",prt3b,"","",vt(0,0,0),vt(0.5,0.05,0.5))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(1,0.05,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1.01,0.1,1.01))
local msh21=mesh("CylinderMesh",prt21,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local msh31=mesh("SpecialMesh",prt31,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh3a1=mesh("CylinderMesh",prt3a1,"","",vt(0,0,0),vt(1,0.05,1))
local msh3b1=mesh("CylinderMesh",prt3b1,"","",vt(0,0,0),vt(0.5,0.05,0.5))
local msh41=mesh("CylinderMesh",prt41,"","",vt(0,0,0),vt(1,0.05,1))
local msh51=mesh("BlockMesh",prt51,"","",vt(0,0,0),vt(1,1,1))
 
local wld1=weld(prt1,prt1,LeftArm,euler(0,0,0)*cf(0,0.6,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,1.57)*cf(0.5,0,0))
local wld3=weld(prt3,prt3,prt2,cf(0,0,0))
local wld3a=weld(prt3a,prt3a,prt3,cf(0,0.2,0))
local wld3b=weld(prt3b,prt3b,prt3a,cf(0,0,0))
local wld4=weld(prt4,prt4,prt3b,cf(0,0,0))
local wld5=weld(prt5,prt5,prt4,cf(0,0,0))
local wld11=weld(prt11,prt11,RightArm,euler(0,3.14,0)*cf(0,0.6,0))
local wld21=weld(prt21,prt21,prt11,euler(0,0,1.57)*cf(0.5,0,0))
local wld31=weld(prt31,prt31,prt21,cf(0,0,0))
local wld3a1=weld(prt3a1,prt3a1,prt31,cf(0,0.2,0))
local wld3b1=weld(prt3b1,prt3b1,prt3a1,cf(0,0,0))
local wld41=weld(prt41,prt41,prt3b1,cf(0,0,0))
local wld51=weld(prt51,prt51,prt41,cf(0,0,0))
 
coroutine.resume(coroutine.create(function()
while true do
wait()
wld4.C0=wld4.C0*euler(0,0.3,0)
wld41.C0=wld41.C0*euler(0,0.3,0)
end
end))
 
numb=0
for i=1,9 do
if i==1 or i==2 or i==4 or i==5 or i==7 or i==8 then
local prt5=part(3,modelzorz,0.2,0.2,Torso.BrickColor,"Part5",vt(1,1,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.1,0.4,0.1))
local wld5=weld(prt5,prt5,prt4,euler(1.57,0,0)*cf(0.5,0,0)*euler(0,numb,0))
local prt51=part(3,modelzorz,0.2,0.2,Torso.BrickColor,"Part51",vt(1,1,1))
local msh51=mesh("BlockMesh",prt51,"","",vt(0,0,0),vt(0.1,0.4,0.1))
local wld51=weld(prt51,prt51,prt41,euler(1.57,0,0)*cf(0.5,0,0)*euler(0,numb,0))
--[[coroutine.resume(coroutine.create(function(Part,Part2)
while Part.Parent~=nil do
b=Part:Clone()
b.Parent=workspace
b.Anchored=true
b.Reflectance=0
b.CFrame=Part.CFrame
b1=Part2:Clone()
b1.Parent=workspace
b1.Anchored=true
b1.Reflectance=0
b1.CFrame=Part2.CFrame
coroutine.resume(coroutine.create(function(Ppart,Ppart2)
game:GetService("Debris"):AddItem(Ppart,.5)
game:GetService("Debris"):AddItem(Ppart2,.5)
for i=0,1,0.2 do
wait()
Ppart.Transparency=i
Ppart2.Transparency=i
end
end),b,b1)
wait(0.6)
end
end),prt5,prt51)]]
end
numb=numb+0.697
end
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Disc" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local bg = it("BodyGyro") 
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P = 20e+003 
bg.Parent = nil 
 
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
wait(0.1) 
bg.Parent=nil
end 
 
function equipanim() 
equipped=true
wait(0.1) 
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.2,0,-0.3)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
 
function oneslash()
attack=true
combo=1
for i=0,1,0.1 do
wait()
LW.C0=cf(-1.5, 0.5, 0) * euler(0.2-0.4*i,0,-0.3-0.5*i)
end
bg.Parent=Head
CF = Head.CFrame 
bg.cframe=CF
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
con1=prt5.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0,0,1.57*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.2+0.2*i,0,-0.8-0.77*i)
end
for i=0,1,0.2 do
wait()
wld3b.C0=cf(-12*i,0,0)
so("http://roblox.com/asset/?id=10209640",prt4,1,3) 
end
for i=0,1,0.2 do
wait()
wld3b.C0=cf(-12+12*i,0,0)
so("http://roblox.com/asset/?id=10209640",prt4,1,3) 
end
con1:disconnect()
wld3b.C0=cf(0,0,0)
attack=false
end
 
function twoslash()
attack=true
combo=2
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt51.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0,0,1.57-3.14*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0.2-0.2*i,0,0.3+1.27*i)
end
for i=0,1,0.2 do
wait()
wld3b1.C0=cf(-12*i,0,0)
so("http://roblox.com/asset/?id=10209640",prt41,1,3) 
end
for i=0,1,0.2 do
wait()
wld3b1.C0=cf(-12+12*i,0,0)
so("http://roblox.com/asset/?id=10209640",prt41,1,3) 
end
con1:disconnect()
wld3b1.C0=cf(0,0,0)
attack=false
end
 
function Throw()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(0.2+0.4*i,0,0.3-1.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.2+0.4*i,0,-0.3+1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
local disc1=part(3,modelzorz,0,0.5,Torso.BrickColor,"Disc Part1",vt(1,0.5,1))
local discmsh1=mesh("CylinderMesh",disc1,"","",vt(0,0,0),vt(1.01,0.1,1.01))
local discwld1=weld(disc1,disc1,prt3a,euler(0,0,0)*cf(0,0,0))
local disc2=part(3,modelzorz,0,0.5,Torso.BrickColor,"Disc Part2",vt(1,0.5,1))
local discmsh2=mesh("CylinderMesh",disc2,"","",vt(0,0,0),vt(1.01,0.1,1.01))
local discwld2=weld(disc2,disc2,prt3a1,euler(0,0,0)*cf(0,0,0))
for i=1,0,-0.1 do
wait()
disc1.Transparency=i
disc2.Transparency=i
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(0.6+0.4*i,0,-0.9-0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,0)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(0.6+0.4*i,0,0.9+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
wait(2)
disc1.Parent=nil
disc2.Parent=nil
attack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=Damage+math.random(0,10)
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
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
                so("http://roblox.com/asset/?id=10209583",hit,1,1) 
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
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
 
function ob1d(mouse) 
if attack == true then return end 
hold=true
--attack=true
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
bg.Parent=nil
Torso.Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.2,0,-0.3)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end 
if key=="z" then
Throw()
end
Torso.Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0.2,0,0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.2,0,-0.3)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
Humanoid.WalkSpeed=16
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
print("Disc Shooter loaded.")
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]] 