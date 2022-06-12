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


if Character:findFirstChild("Staff",true) ~= nil then
Character:findFirstChild("Staff",true).Parent = nil
end


function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.Material = "SmoothPlastic"
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
fp.BottomSurface="SmoothNoOutlines"
fp.TopSurface="SmoothNoOutlines"
fp.LeftSurface="SmoothNoOutlines"
fp.RightSurface="SmoothNoOutlines"
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
modelzorz.Name = "Staff"

local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Institutional white"),"Part2",vt(0.5,5,0.5))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.55,0.5,0.55))
local prt7=part(3,modelzorz,0,0.3,BrickColor.new("Really black"),"Part7",vt(1,1,1))
local prt8b=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Skill Crystal Reference",vt(0.2,0.2,0.2))
local prt8=part(3,modelzorz,0,0.5,BrickColor.new("Bright red"),"Skill Crystal 1",vt(1,1,1))
local prt9b=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Skill Crystal Reference",vt(0.2,0.2,0.2))
local prt9=part(3,modelzorz,0,0.5,BrickColor.new("Bright blue"),"Skill Crystal 2",vt(1,1,1))
local prt10b=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Skill Crystal Reference",vt(0.2,0.2,0.2))
local prt10=part(3,modelzorz,0,0.5,BrickColor.new("Bright green"),"Skill Crystal 3",vt(1,1,1))
local prt11b=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Skill Crystal Reference",vt(0.2,0.2,0.2))
local prt11=part(3,modelzorz,0,0.5,BrickColor.new("Really black"),"Skill Crystal 4",vt(1,1,1))
local prt14b=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Skill Crystal Reference",vt(0.2,0.2,0.2))
local prt14=part(3,modelzorz,0,0.5,BrickColor.new("Dark green"),"Skill Crystal 5",vt(1,1,1))
local prt12=part(3,modelzorz,0,0,BrickColor.new("Bright yellow"),"Part12",vt(0.6,0.5,0.6))
local prt13=part(3,modelzorz,0,1,BrickColor.new("Bright yellow"),"Hitbox",vt(1,7,1))

local msh1=mesh("SpecialMesh",prt1,"Head","",vt(0,0,0),vt(0.6,1.8,0.6))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(1,1,1))
local msh3=mesh("SpecialMesh",prt3,"Head","",vt(0,0,0),vt(1,1,1))
local msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(1,1,1))
local msh8=mesh("SpecialMesh",prt8,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.5,0.3))
local msh9=mesh("SpecialMesh",prt9,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.5,0.3))
local msh10=mesh("SpecialMesh",prt10,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.5,0.3))
local msh11=mesh("SpecialMesh",prt11,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.4,0.6,0.4))
local msh12=mesh("SpecialMesh",prt12,"Head","",vt(0,0,0),vt(1,1,1))
local msh14=mesh("SpecialMesh",prt14,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.3,0.5,0.3))

local wld1=weld(prt1,prt1,Torso,euler(0,0,0.5)*cf(0,0,-0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,-2.4,0))
local wld7=weld(prt7,prt7,prt2,euler(0,0,0)*cf(0,-3.5,0))
local wld8b=weld(prt8b,prt8b,prt7,euler(0,0,0)*cf(1,0,0))
local wld8=weld(prt8,prt8,prt8b,euler(0,0,0)*cf(0,0,0))
local wld9b=weld(prt9b,prt9b,prt7,euler(0,0,0)*cf(0,0,1))
local wld9=weld(prt9,prt9,prt9b,euler(0,0,0)*cf(0,0,0))
local wld14b=weld(prt14b,prt14b,prt7,euler(0,0,0)*cf(0,0,0.5))
local wld14=weld(prt14,prt14,prt14b,euler(0,0,0)*cf(0,0,0))
local wld10b=weld(prt10b,prt10b,prt7,euler(0,0,0)*cf(-1,0,0))
local wld10=weld(prt10,prt10,prt10b,euler(0,0,0)*cf(0,0,0))
local wld11b=weld(prt11b,prt11b,prt7,euler(0,0,0)*cf(0,0,-1))
local wld11=weld(prt11,prt11,prt11b,euler(0,0,0)*cf(0,0,0))
local wld12=weld(prt12,prt12,prt2,euler(0,0,0)*cf(0,2.4,0))
local wld13=weld(prt13,prt13,prt1,euler(0,0,0)*cf(0,-0.5,0))
coroutine.resume(coroutine.create(function()
while true do
wait()
wld8b.C0=wld8b.C0*euler(0,0.05,0)
wld9b.C0=wld9b.C0*euler(0,0.05,0)
wld10b.C0=wld10b.C0*euler(0,0.05,0)
wld11b.C0=wld11b.C0*euler(0,0.05,0)
wld14b.C0=wld14b.C0*euler(0,-0.05,0)
end
end))

for i=1,4 do
if i==1 then
numb=1
numb2=-1.5
numb3=0
numb4=0
elseif i==2 then
numb=-1
numb2=1.5
elseif i==3 then
numb=0
numb2=0
numb3=1
numb4=-1.5
elseif i==4 then
numb3=-1
numb4=1.5
end
local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(0.2,0.8,0.2))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part5",vt(0.2,0.2,0.2))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(0.2,0.8,0.2))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(1,1,1))
local wld4=weld(prt4,prt4,prt3,cf(0,-0.4,0)*euler(numb,0,numb3))
local wld5=weld(prt5,prt5,prt4,cf(0,-0.4,0))
local wld6=weld(prt6,prt6,prt5,cf(0,-0.4,0)*euler(numb2,0,numb4))
end

if (script.Parent.className ~= "HopperBin") then
Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Staff"
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

function unequipweld()
wld1.Part1=Torso
wld1.C0=euler(0,0,0.5)*cf(0,0,-0.6)
wld1.C1=euler(0,0,0)
end

function equipweld()
wld1.Part1=RightArm
wld1.C0=euler(1,0,0)*cf(0,1,0)
end

function hideanim()
equipped=false
wait(0.1)
bg.Parent=nil
unequipweld()
end

function equipanim()
equipped=true
wait(0.1)
equipweld()
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 12
glow.Brightness = 16
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end


function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 20
glow.Brightness = 20
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 10
glow.Brightness = 16
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 100
glow.Brightness = 100
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
glow.Range=glow.Range+1
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 10
glow.Brightness = 16
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.03 do
wait()
prt.CFrame=prt.CFrame
glow.Range = glow.Range + 1
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function SpecialEffect()
local prt=part(3,workspace,1,0,BrickColor.new("Really black"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=Torso.CFrame
glow = Instance.new("PointLight")
glow.Parent = prt
glow.Color = prt.Color
glow.Range = 10
glow.Brightness = 16
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.2 do
wait(0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(10,10,10)
end
prt.Parent=nil
end),prt,msh)
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

Damagefunc2=function(hit,Damage,Base)
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
       blocked=false
       h=hit.Parent:FindFirstChild("Humanoid")
       if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
               Damage=Damage
                       c=it("ObjectValue")
                       c.Name="creator"
                       c.Value=game.Players.LocalPlayer
                       c.Parent=h
                       game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
--[[                if math.random(0,99)+math.random()<=7.8 then
                       CRIT=true
                       Damage=Damage*2
                       s=it("Sound")
                       s.SoundId="http://www.roblox.com/asset/?id=2801263"
                       s.Volume=1
                       s.Pitch=2
                       s.Parent=hit
                       s.PlayOnRemove=true
                       s.Parent=nil
       
               end]]
               Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
               blocked=false
               block=hit.Parent:findFirstChild("Block")
               if block~=nil then
               print("herp")
               if block.Value>0 then
               blocked=true
               block.Value=block.Value-3
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
--if blocked==false then
local angle = (hit.Position-(Base.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
               rl=Instance.new("BodyAngularVelocity")
               rl.P=3000
               rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
               rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
               rl.Parent=hit
coroutine.resume(coroutine.create(function(vel)
wait(1)
vel:Remove()
end),rl)
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel)
wait(0.7)
Vel:Remove()
end),bodyVelocity)
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
freezeDamagefunc=function(hit,Damage,Knockback)
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
               if math.random(1,1)==1 then
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
               showDamage(hit.Parent,"Freeze!",5)
               so("http://www.roblox.com/asset/?id=41763367",hit,1,2)
               for i=1,10 do
               local freezepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
               freezepart.Anchored=true
               freezepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
               coroutine.resume(coroutine.create(function(Part)
               wait(5)
               Part.Anchored=false
               Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
               wait(5)
               Part.Parent=nil
               end),freezepart)
               end
               coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted)
               wait(5)
               BodyPos.Parent=nil
               BodyGy.Parent=nil
               so("http://www.roblox.com/asset/?id=87015121",Hitted,1,2)
               end),BodPos,BodGy,hit)
               end
               vp=Instance.new("BodyVelocity")
               vp.P=500
               vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
               vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
               if Knockback>0 then
                       vp.Parent=hit.Parent.Torso
               end
               game:GetService("Debris"):AddItem(vp,.25)
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

pickleDamagefunc=function(hit,Damage,Knockback)
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
               Damage=Damage+math.random(0,15)
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
               if math.random(1,1)==1 then
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
               showDamage(hit.Parent,"Pickled!",5)
               so("http://www.roblox.com/asset/?id=41763367",hit,1,2)
               for i=1,10 do
               local picklepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Dark green"),"Pickle Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
               picklepart.Anchored=true
               picklepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-0.5,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
               local picklemsh=mesh("SpecialMesh",picklepart,"Sphere","",vt(0,0,0),vt(0.75,0.85,0.75))
               coroutine.resume(coroutine.create(function(Part)
               wait(5)
               Part.Anchored=false
               Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
               wait(5)
               Part.Parent=nil
               end),picklepart)
               end
               coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted)
               wait(5)
               BodyPos.Parent=nil
               BodyGy.Parent=nil
               so("http://www.roblox.com/asset/?id=87015121",Hitted,1,2)
               end),BodPos,BodGy,hit)
               end
               vp=Instance.new("BodyVelocity")
               vp.P=500
               vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
               vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
               if Knockback>0 then
                       vp.Parent=hit.Parent.Torso
               end
               game:GetService("Debris"):AddItem(vp,.25)
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
       c.Material = "SmoothPlastic"
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

function CrystalEffect(crystal)
clone=crystal:Clone()
crystal.Transparency=1
clone.Parent=workspace
clone.Anchored=true
clone.CFrame=crystal.CFrame
Mesh=clone.Mesh
coroutine.resume(coroutine.create(function()
for i=0.5,1,0.05 do
wait()
clone.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.3,0.3,0.3)
end
clone.Parent=nil
end))
end

function ChangeBaseColor(Colorr)
clonee=prt7:Clone()
clonee.Parent=prt7.Parent
clonee.BrickColor=BrickColor.new(Colorr)
if clonee:findFirstChild("Mesh")~=nil then
clonee.Mesh.Scale=vt(1.4,1.4,1.4)
end
clonewld=weld(clonee,clonee,prt7,cf(0,0,0))
coroutine.resume(coroutine.create(function(Part)
for i=1,0.2,-0.05 do
wait()
Part.Transparency=i
end
while attack==true do
wait()
end
for i=0.2,1,0.05 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),clonee)
end

function Explode()
local basepart=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,0,-20)
MagicCircle(BrickColor.new("Bright red"),basepart.CFrame,1,1,1,0,0,0,10,10,10)
MagicRing(BrickColor.new("Bright red"),basepart.CFrame*euler(1.57,0,0),1,1,1,0,0,0,3,3,3)
b=Instance.new("Explosion")
b.Parent=workspace
b.Position=basepart.Position
b.BlastRadius=10
b.BlastPressure=0
so("http://www.roblox.com/asset/?id=2101148",basepart,1,0.6)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - basepart.Position
local mag = targ.magnitude
if mag <= 20 and c[i].Name ~= Player.Name then
attackdebounce=false
Damagefunc2(head,10,basepart)
end
end
end
end
game:GetService("Debris"):AddItem(basepart,1)
end

function CreateIceSword(BaseCFrame)
local basepart=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
so("http://www.roblox.com/asset/?id=32656754",basepart,0.5,1)
basepart.Anchored=true
game:GetService("Debris"):AddItem(basepart,0.2)
local icepart=part(3,workspace,0.5,0.5,BrickColor.new("Bright blue"),"IceSword",vt(2,6,2))
icepart.CanCollide=true
icepart.Anchored=true
local icemesh=mesh("SpecialMesh",icepart,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(4,10,4))
glow = Instance.new("PointLight")
glow.Color = icepart.Color
glow.Parent = icepart
glow.Range = 7
glow.Brightness = 10
basepart.CFrame=BaseCFrame
icepart.CFrame=basepart.CFrame*cf(0,-10,0)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - basepart.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then
attackdebounce=false
freezeDamagefunc(head,10,10)
end
end
end
end
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.8,0)
end
wait(1)
Part.Parent=nil
end),icepart)
end

function CreatePickle(BaseCFrame)
local basepart=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
so("http://www.roblox.com/asset/?id=32656754",basepart,0.2,0)
basepart.Anchored=true
game:GetService("Debris"):AddItem(basepart,0.2)
local pickle=part(3,workspace,0.3,0.3,BrickColor.new("Dark green"),"Pickle",vt(2,6,2))
pickle.CanCollide=true
pickle.Anchored=true
local picklemsh=mesh("SpecialMesh",pickle,"Sphere","",vt(0,0,0),vt(0.65,0.8,0.65))
glow = Instance.new("PointLight")
glow.Color = pickle.Color
glow.Parent = pickle
glow.Range = 7
glow.Brightness = 10
basepart.CFrame=BaseCFrame
pickle.CFrame=basepart.CFrame*cf(0,-10,0)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - basepart.Position
local mag = targ.magnitude
if mag <= 5 and c[i].Name ~= Player.Name then
attackdebounce=false
pickleDamagefunc(head,10,10)
end
end
end
end
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.8,0)
end
wait(1)
Part.Parent=nil
end),pickle)
end

function Rock()
local rock=part(3,workspace,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(1,3)+math.random(),math.random(1,3)+math.random(),math.random(1,3)+math.random()))
rock.Material="Slate"
rock.Anchored=true
rock.CanCollide=true
glow = Instance.new("PointLight")
glow.Color = rock.Color
glow.Parent = rock
glow.Range = 6
glow.Brightness = 10
rock.CFrame=Torso.CFrame*cf(math.random(-20,20),math.random(-15,-10)-math.random(),math.random(-20,20))
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
Part.CFrame=Part.CFrame*cf(0,1,0)
end
while rockthrow==false do
wait()
end
Part.Anchored=false
Part.Velocity=(Torso.CFrame.lookVector*90)+vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
con1=Part.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent~=Character then
Part.Parent=nil
for i=1,math.random(2,5) do
minirock=part(3,workspace,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(0,1)+math.random(),math.random(0,1)+math.random(),math.random(0,1)+math.random()))
minirock.Material="Slate"
minirock.CanCollide=true
minirock.CFrame=Part.CFrame
minirock.Velocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
game:GetService("Debris"):AddItem(minirock,5)
end
h=hit.Parent.Humanoid
Damage=math.random(10,20)
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
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
vp.velocity=Torso.CFrame.lookVector*20+Torso.Velocity/1.05
vp.Parent=hit.Parent.Torso
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
rl.Parent=hit
game:GetService("Debris"):AddItem(vp,.25)
game:GetService("Debris"):AddItem(rl,.25)
end
end)
game:GetService("Debris"):AddItem(Part,7)
--[[wait(5)
Part.Parent=nil]]
end),rock)
end

function RockShards()
local rockshard=part(3,workspace,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(1,3)+math.random(),math.random(1,3)+math.random(),math.random(1,3)+math.random()))
rockshard.Material="Slate"
rockshard.Anchored=true
rockshard.CanCollide=true
glow = Instance.new("PointLight")
glow.Color = rockshard.Color
glow.Parent = rockshard
glow.Range = 6
glow.Brightness = 10
rockshard.CFrame=Torso.CFrame*cf(math.random(-10,-5),math.random(-15,-10)-math.random(),-5)
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
Part.CFrame=Part.CFrame*cf(0,math.random(1,10)-math.random(),0)
end
while rockthrow==false do
wait()
end
Part.Anchored=false
Part.Velocity=(Torso.CFrame.lookVector*90)+vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
con1=Part.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent~=Character then
Part.Parent=nil
for i=1,math.random(2,5) do
minirock=part(3,hit.Parent,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(0,1)+math.random(),math.random(0,1)+math.random(),math.random(0,1)+math.random()))
minirock.Material="Slate"
minirock.CanCollide=true
minirock.CFrame=Part.CFrame
minirock.Velocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
game:GetService("Debris"):AddItem(minirock,5)
end
h=hit.Parent.Humanoid
Damage=math.random(10,20)
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
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
vp.velocity=Torso.CFrame.lookVector*20+Torso.Velocity/1.05
vp.Parent=hit.Parent.Torso
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
rl.Parent=hit
game:GetService("Debris"):AddItem(vp,.25)
game:GetService("Debris"):AddItem(rl,.25)
end
end)
game:GetService("Debris"):AddItem(Part,7)
--[[wait(5)
Part.Parent=nil]]
end),rockshard)
end

function RockSide1()
local rock=part(3,workspace,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(1,3)+math.random(),math.random(1,3)+math.random(),math.random(1,3)+math.random()))
rock.Material="Slate"
rock.Anchored=true
rock.CanCollide=true
glow = Instance.new("PointLight")
glow.Color = rock.Color
glow.Parent = rock
glow.Range = 6
glow.Brightness = 10
rock.CFrame=Torso.CFrame*cf(math.random(-20,20),math.random(-15,-10)-math.random(),math.random(-20,20))
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
Part.CFrame=Part.CFrame*cf(0,1,0)
end
while rockthrow==false do
wait()
end
Part.Anchored=false
Part.Velocity=(Torso.CFrame.lookVector*-90)+vt(math.random(-20,20),math.random(0,0),math.random(0,0))
con1=Part.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent~=Character then
Part.Parent=nil
for i=1,math.random(2,5) do
minirock=part(3,workspace,0,0,BrickColor.new("Bright green"),"Rock",vt(math.random(0,1)+math.random(),math.random(0,1)+math.random(),math.random(0,1)+math.random()))
minirock.Material="Slate"
minirock.CanCollide=true
minirock.CFrame=Part.CFrame
minirock.Velocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
game:GetService("Debris"):AddItem(minirock,5)
end
h=hit.Parent.Humanoid
Damage=math.random(10,20)
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
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
vp.velocity=Torso.CFrame.lookVector*20+Torso.Velocity/1.05
vp.Parent=hit.Parent.Torso
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
rl.Parent=hit
game:GetService("Debris"):AddItem(vp,.25)
game:GetService("Debris"):AddItem(rl,.25)
end
end)
game:GetService("Debris"):AddItem(Part,7)
--[[wait(5)
Part.Parent=nil]]
end),rock)
end

function Mountain()
local mnt=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount",vt(math.random(30,35)+math.random(),math.random(30,35)+math.random(),math.random(30,35)+math.random()))
mnt.Material="Slate"
mnt.Anchored=true
mnt.CanCollide=true
mnt.CFrame=Torso.CFrame*cf(math.random(-20,-20),math.random(-20,-15)-math.random(),math.random(0,0))
local mnt1=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount1",vt(math.random(30,35)+math.random(),math.random(30,35)+math.random(),math.random(30,35)+math.random()))
mnt1.Material="Slate"
mnt1.Anchored=true
mnt1.CanCollide=true
mnt1.CFrame=Torso.CFrame*cf(math.random(20,20),math.random(-20,-15)-math.random(),math.random(0,0))
local mnt2=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount2",vt(math.random(30,35)+math.random(),math.random(30,35)+math.random(),math.random(30,35)+math.random()))
mnt2.Material="Slate"
mnt2.Anchored=true
mnt2.CanCollide=true
mnt2.CFrame=Torso.CFrame*cf(math.random(0,0),math.random(-20,-15)-math.random(),math.random(-20,-20))
local mnt3=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount3",vt(math.random(30,35)+math.random(),math.random(30,35)+math.random(),math.random(30,35)+math.random()))
mnt3.Material="Slate"
mnt3.Anchored=true
mnt3.CanCollide=true
mnt3.CFrame=Torso.CFrame*cf(math.random(0,0),math.random(-20,-15)-math.random(),math.random(20,20))
local mnt4=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount4",vt(math.random(30,35)+math.random(),math.random(70,75)+math.random(),math.random(30,35)+math.random()))
mnt4.Material="Slate"
mnt4.Anchored=true
mnt4.CanCollide=true
mnt4.CFrame=Torso.CFrame*cf(math.random(0,0),math.random(-60,-55)-math.random(),math.random(0,0))
coroutine.resume(coroutine.create(function(Part)
for i=1,17 do
wait()
mnt4.CFrame=mnt4.CFrame*cf(0,3,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
mnt3.CFrame=mnt3.CFrame*cf(0,1,0)*CFrame.fromEulerAnglesXYZ(0.01,0,0)
mnt2.CFrame=mnt2.CFrame*cf(0,1,0)*CFrame.fromEulerAnglesXYZ(-0.01,0,0)
mnt1.CFrame=mnt1.CFrame*cf(0,1,0)*CFrame.fromEulerAnglesXYZ(0,0,-0.01)
Part.CFrame=Part.CFrame*cf(0,1,0)*CFrame.fromEulerAnglesXYZ(0,0,0.01)
end
while rockthrow==false do
wait()
end
Part.Anchored=true
Part.Velocity=(Torso.CFrame.lookVector*1)+vt(math.random(0,0),math.random(0,0),math.random(0,0))
con1=Part.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent~=Character then
Part.Parent=nil
end
h=hit.Parent.Humanoid
vp=Instance.new("BodyVelocity")
vp.P=0
vp.maxForce=Vector3.new(math.huge,0,math.huge)
vp.velocity=Torso.CFrame.lookVector*1+Torso.Velocity/1
vp.Parent=hit.Parent.Torso
rl=Instance.new("BodyAngularVelocity")
rl.P=0
rl.maxTorque=Vector3.new(0,0,0)*1
rl.angularvelocity=Vector3.new(math.random(0,0),math.random(0,0),math.random(0,0))
rl.Parent=hit
game:GetService("Debris"):AddItem(vp,.25)
game:GetService("Debris"):AddItem(rl,.25)
end)
game:GetService("Debris"):AddItem(Part,5)
game:GetService("Debris"):AddItem(mnt1,5)
game:GetService("Debris"):AddItem(mnt2,5)
game:GetService("Debris"):AddItem(mnt3,5)
game:GetService("Debris"):AddItem(mnt4,5)
for i=1,17 do
wait()
Part.CFrame=Part.CFrame*cf(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,-0.01)
mnt1.CFrame=mnt1.CFrame*cf(0,-1.3,0)*CFrame.fromEulerAnglesXYZ(0,0,0.01)
mnt2.CFrame=mnt2.CFrame*cf(0,-1.3,0)*CFrame.fromEulerAnglesXYZ(0.01,0,0)
mnt3.CFrame=mnt3.CFrame*cf(0,-1.3,0)*CFrame.fromEulerAnglesXYZ(-0.01,0,0)
mnt4.CFrame=mnt4.CFrame*cf(0,-3.3,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
end
--[[wait(3)
Part.Parent=nil]]
end),mnt)
end

function Shield()
local mnt=part(3,workspace,0,0,BrickColor.new("Brown"),"Mount",vt(math.random(5,10)+math.random(),math.random(5,10)+math.random(),math.random(1,2)+math.random()))
mnt.Material="Slate"
mnt.Anchored=true
mnt.CanCollide=true
mnt.CFrame=Torso.CFrame*cf(0,math.random(-15,-10)-math.random(),math.random(4,5))
coroutine.resume(coroutine.create(function(Part)
for i=1,20 do
wait()
Part.CFrame=Part.CFrame*cf(0,1,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
end
while rockthrow==false do
wait()
end
Part.Anchored=true
Part.Velocity=(Torso.CFrame.lookVector*8)+vt(math.random(0,0),math.random(0,0),math.random(0,0))
con1=Part.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent~=Character then
Part.Parent=nil
end
h=hit.Parent.Humanoid
vp=Instance.new("BodyVelocity")
vp.P=0
vp.maxForce=Vector3.new(math.huge,0,math.huge)
vp.velocity=Torso.CFrame.lookVector*1+Torso.Velocity/1
vp.Parent=hit.Parent.Torso
rl=Instance.new("BodyAngularVelocity")
rl.P=0
rl.maxTorque=Vector3.new(0,0,0)*1
rl.angularvelocity=Vector3.new(math.random(0,0),math.random(0,0),math.random(0,0))
rl.Parent=hit
game:GetService("Debris"):AddItem(vp,.25)
game:GetService("Debris"):AddItem(rl,.25)
end)
game:GetService("Debris"):AddItem(Part,5)
for i=1,17 do
wait()
--Part.CFrame=Part.CFrame*cf(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,-0.01)
Part.Transparency=Part.Transparency-0.1
end
--[[wait(3)
Part.Parent=nil]]
end),Part)
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

DarkRiftF=function(par,DemMags)
while rifting==true do
wait()
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=DemMags then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(1)
rl=it("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.5)
else
vl=it("BodyVelocity")
vl.P=3000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
end

function VoidSun(p0,p1,tym,ofs,col,th,tra)
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

DarkRiftF=function(par,DemMags)
while rifting==true do
wait()
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=DemMags then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(1)
rl=it("BodyAngularVelocity")
rl.P=2000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.5)
else
vl=it("BodyVelocity")
vl.P=2000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
end

function SunExplosion()
local basepart=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,50,0)
MagicCircle2(BrickColor.new("White"),basepart.CFrame,1,1,1,0,0,0,30,30,30)
MagicRing(BrickColor.new("White"),Torso.CFrame*euler(1.57,0,0),1,1,1,0,0,0,8,8,8)
so("http://www.roblox.com/asset/?id=2101148",basepart,1,0.6)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - basepart.Position
local mag = targ.magnitude
if mag <= 280 and c[i].Name ~= Player.Name then
attackdebounce=false
Damagefunc2(head,10,basepart)
end
end
end
end
game:GetService("Debris"):AddItem(basepart,1)
end

function thwack()
attack=true
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1+2.5*i,0,0)
end
so("http://roblox.com/asset/?id=10209640",RightArm,1,1.1)
con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,5,20) end)
for i=0,1,0.2 do
wait()
wld1.C0=euler(1+1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.5-3*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2)
end
con1:disconnect()
attack=false
end

function Explosion()
--SpecialEffect()
attack=true
CrystalEffect(prt8)
ChangeBaseColor("Bright red")
for i=0,1,0.1 do
wait()
wld1.C0=euler(1+0.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+2.5*i,0,0)
end
so("http://roblox.com/asset/?id=10209640",RightArm,1,1.1)
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.5-4*i,0,0)
if i==0.8 then
print("KABOOM")
Explode()
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57-0.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+1.5*i,0,0)
end
attack=false
end

function Pickle()
attack=true
CrystalEffect(prt14)
ChangeBaseColor("Dark green")
for i=0,1,0.1 do
wait()
wld1.C0=euler(1+0.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1-1.5*i,0,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+2*i,0,0)
end
numb=-5
for i=1,5 do
CreatePickle(Torso.CFrame*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,0.3,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,0.6,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,0.9,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,1.2,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,1.5,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,1.8,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,2.1,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,2.4,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,2.7,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,3,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,3.3,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,3.6,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,3.9,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,4.2,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,4.5,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,4.8,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,5.1,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,5.4,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,5.7,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,6,0)*cf(0,0,numb))
CreatePickle(Torso.CFrame*euler(0,6.3,0)*cf(0,0,numb))
numb=numb-5
wait(0.2)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.57-1.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5-0.5*i,0,0)
end
attack=false
end

function IceSword()
attack=true
CrystalEffect(prt9)
ChangeBaseColor("Bright blue")
for i=0,1,0.1 do
wait()
wld1.C0=euler(1+0.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1-1.5*i,0,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+2*i,0,0)
end
numb=-10
for i=1,5 do
CreateIceSword(Torso.CFrame*cf(0,0,numb))
CreateIceSword(Torso.CFrame*euler(0,0.5,0)*cf(0,0,numb))
CreateIceSword(Torso.CFrame*euler(0,1,0)*cf(0,0,numb))
CreateIceSword(Torso.CFrame*euler(0,-0.5,0)*cf(0,0,numb))
CreateIceSword(Torso.CFrame*euler(0,-1,0)*cf(0,0,numb))
numb=numb-10
wait(0.2)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.57-1.57*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5-0.5*i,0,0)
end
attack=false
end

function RockSwarm()
attack=true
rockthrow=false
CrystalEffect(prt10)
ChangeBaseColor("Really black")
for i=0,1,0.1 do
wait()
wld1.C0=euler(1+1.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+1.5*i,0,0)
end
Mountain()
for i=10,50 do
Rock()
RockSide1()
wait(0.1)
end
wait(0.5)
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.5-1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-2*i,0,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.5+1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1*i,0,0)
end
rockthrow=true
game:GetService("Chat"):Chat(Character,"AVALANCHE!",2)
wait(1)
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.5-1.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5-0.5*i,0,0)
end
attack=false
end

function RockShard()
attack=true
rockthrow=false
CrystalEffect(prt10)
ChangeBaseColor("Bright green")
for i=0,1,0.1 do
wait()
wld1.C0=euler(1+1.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+1.5*i,0,0)
end
Shield()
for i=10,20 do
RockShards()
wait(0.1)
end
wait(0.5)
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.5-1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-2*i,0,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.5+1*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1*i,0,0)
end
rockthrow=true
game:GetService("Chat"):Chat(Character,"DIE!",2)
wait(1)
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.5-1.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5-0.5*i,0,0)
end
attack=false
end

function Void()
attack=true
print("Mage SS initiated.")
CrystalEffect(prt11)
ChangeBaseColor("Really black")
local basepart=part(3,workspace,0,0.1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
local basemesh=mesh("SpecialMesh",basepart,"Sphere","",vt(0,0,0),vt(0,0,0))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,0,-30)
numb=0
coroutine.resume(coroutine.create(function()
for i=0,1,0.05 do
wait()
wld1.C0=euler(1+2*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+0.5*i,0,0)
end
end))
for i=1,60 do
wait()
basemesh.Scale=basemesh.Scale+vt(0.1,0.1,0.1)
Lightning(prt7.Position,basepart.Position+vt(math.random(-numb,numb),math.random(-numb,numb),math.random(-numb,numb)),5,1,"Really black",0.3,0.1)
numb=numb+0.05
end
if Humanoid.Health==0 then
basepart.Parent=nil
return
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(3,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5+1.5*i,0,0)
end
rifting=true
coroutine.resume(coroutine.create(function(Part)
coroutine.resume(coroutine.create(function(Partt)
for i=1,300 do
wait()
MagicBlock(BrickColor.new("Really black"),Partt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,0.2,10,0.2)
MagicCircle(BrickColor.new("Really black"),Partt.CFrame*cf(math.random(-50,50),-8,math.random(-50,50)),1,1,1,0,0,0,0.2,5,0.2)
end
rifting=false
basepart.Parent=nil
end),Part)
DarkRiftF(Part,100)
end),basepart)
wait(1)
for i=0,1,0.1 do
wait()
wld1.C0=euler(3-2*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3-2*i,0,0)
end
attack=false
end

function WhiteSun()
attack=true
print("Mage SS initiated.")
CrystalEffect(prt7)
ChangeBaseColor("Really black")
local basepart=part(3,workspace,0,0.1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
local basemesh=mesh("SpecialMesh",basepart,"Sphere","",vt(0,0,0),vt(22,22,22))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,50,0)
numb=0
coroutine.resume(coroutine.create(function()
for i=0,1,0.05 do
wait()
wld1.C0=euler(1+1.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+1.5*i,0,0)
end
end))
for i=1,75 do
wait()
basemesh.Scale=basemesh.Scale+vt(0.1,0.1,0.1)
VoidSun(prt7.Position,basepart.Position+vt(math.random(-numb,numb),math.random(-numb,numb),math.random(-numb,numb)),5,1,"White",0.3,0.1)
numb=numb+0.05
end
if Humanoid.Health==0 then
basepart.Parent=nil
return
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(3,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5+1.5*i,0,0)
end
rifting=true
coroutine.resume(coroutine.create(function(Part)
coroutine.resume(coroutine.create(function(Partt)
game:GetService("Chat"):Chat(Character,"Heaven and Hell's Fall!...",2)
for i=1,300 do
wait()
MagicBlock2(BrickColor.new("Really black"),Partt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),-1,-1,-1,0.2,10,0.2)
MagicCircle(BrickColor.new("Really black"),Partt.CFrame*cf(math.random(-50,50),-8,math.random(-50,50)),1,1,1,0,0,0,0.2,5,0.2)
basemesh.Scale=basemesh.Scale+vt(-0.1,-0.1,-0.1)
end
game:GetService("Chat"):Chat(Character,"...Sun of Heaven and Hell!!!!!!!",2)
for i=1,20 do
wait()
MagicCircle2(BrickColor.new("Really black"),Partt.CFrame*cf(0,0,0),1,1,1,0,0,0,50,50,50)
SunExplosion()
end
game:GetService("Chat"):Chat(Character,"GATES OF PURGATORY!!!",2)
rifting=false
basepart.Parent=nil
end),Part)
DarkRiftF(Part,300)
end),basepart)
wait(1)
for i=0,1,0.1 do
wait()
wld1.C0=euler(3-2*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3-2*i,0,0)
end
attack=false
end

function ob1d(mouse)
if attack == true then return end
hold=true
repeat
thwack()
until hold==false
coroutine.resume(coroutine.create(function()
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(1,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end))
end

function ob1u(mouse)
hold = false
end

buttonhold = false

explosiondb=false
icesworddb=false
rockswarmdb=false
pickledb=false
voiddb=false
sundb=false
rocksharddb=false
function key(key)
if attack == true then return end
Humanoid.WalkSpeed=0
if key=="z" and explosiondb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,1,1.5)
explosiondb=true
Explosion()
coroutine.resume(coroutine.create(function()
wait(5)
explosiondb=false
prt8.Transparency=0.5
end))
end
if key=="b" and pickledb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,1,1.3)
pickledb=true
Pickle()
coroutine.resume(coroutine.create(function()
wait(10)
pickledb=false
prt14.Transparency=0.5
end))
end
if key=="x" and icesworddb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,1,1.3)
icesworddb=true
IceSword()
coroutine.resume(coroutine.create(function()
wait(10)
icesworddb=false
prt9.Transparency=0.5
end))
end
if key=="c" and rockswarmdb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,1,1.3)
rockswarmdb=true
RockSwarm()
coroutine.resume(coroutine.create(function()
wait(15)
rockswarmdb=false
prt10.Transparency=0.5
end))
end
if key=="m" and rocksharddb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,1,1.3)
rocksharddb=true
RockShard()
coroutine.resume(coroutine.create(function()
wait(15)
rocksharddb=false
prt10.Transparency=0.5
end))
end
if key=="v" and voiddb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,3,0.5)
voiddb=true
Void()
coroutine.resume(coroutine.create(function()
wait(30)
voiddb=false
prt11.Transparency=0.5
end))
end
if key=="n" and sundb==false then
so("http://www.roblox.com/asset/?id=2101137",RightArm,3,0.5)
sundb=true
WhiteSun()
coroutine.resume(coroutine.create(function()
wait(30)
sundb=false
prt7.Transparency=0.5
end))
end
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
print("Staff loaded.")
-- mediafire
--[[
Copyrighted (C) Fenrier 2013
]]