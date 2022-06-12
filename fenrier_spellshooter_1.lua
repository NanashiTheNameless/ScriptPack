--[[
Spellshooter script made by Fenrier.
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
MMouse=nil
combo=0
Loaded=false
AmmoType="None"
BulletTable={}
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
if Character:findFirstChild("Blitz",true) ~= nil then 
Character:findFirstChild("Blitz",true).Parent = nil 
end 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Material = "SmoothPlastic"
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.CFrame = Torso.CFrame
fp.BottomSurface="SmoothNoOutlines"
fp.TopSurface="SmoothNoOutlines"
fp.RightSurface="SmoothNoOutlines"
fp.LeftSurface="SmoothNoOutlines"
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
modelzorz.Name = "Blitz" 
BaseColour=BrickColor.new("Navy blue")
local prt1=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Part1",vt(0.5,0.5,0.5))
local prt2=part(3,modelzorz,0,0,BaseColour,"Part2",vt(0.3,1,0.3))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.5,1,0.5))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(0.7,0.7,0.7))
local prt5=part(3,modelzorz,0,0,BaseColour,"Part5",vt(0.3,0.7,0.3))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(0.7,0.7,0.9))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(0.5,0.3,0.2))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(0.3,1,0.3))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(0.8,1,0.8))
local prt9b=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part9b",vt(0.6,1.01,0.6))
local prt10=part(3,modelzorz,0,0,BaseColour,"Part10",vt(0.6,0.6,1.5))
local prt11=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(0.61,0.61,0.2))
local prt12=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part12",vt(0.62,0.62,0.45))
local prt13=part(3,modelzorz,0,0,BaseColour,"Part13",vt(0.6,0.6,1.6))
local prt14=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(0.61,0.61,0.2))
local prt15=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part15",vt(0.62,0.62,0.45))
local prt16=part(3,modelzorz,0,0,BaseColour,"Part16",vt(0.6,0.2,0.6))
local prt17=part(3,modelzorz,0,0,BaseColour,"Part17",vt(0.6,0.6,0.2))
local prt18=part(3,modelzorz,0,1,BaseColour,"Part18",vt(0.5,0.5,0.5))
local prt19=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(0.1,0.2,2))
local prt20=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part20",vt(0.1,0.2,2))
local prt22=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part22",vt(1,1,1))
local prt22b=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part22b",vt(0.8,1.01,0.8))
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,1,1))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"Sphere","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(1,1,1))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(1,1,1))
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1,1,1))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(1,1,1))
local msh9b=mesh("CylinderMesh",prt9b,"","",vt(0,0,0),vt(1,1,1))
local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(1,1,1))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1,1,1))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(1,1,1))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,1,1))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(1,1,1))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(1,1,1))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(1,1,1))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(1,1,1))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(1,1,1))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(1,1,1))
local msh20=mesh("BlockMesh",prt20,"","",vt(0,0,0),vt(1,1,1))
local msh22=mesh("CylinderMesh",prt22,"","",vt(0,0,0),vt(1,1,1))
local msh22b=mesh("CylinderMesh",prt22b,"","",vt(0,0,0),vt(1,1,1))
local wld1=weld(prt1,prt1,Torso,euler(2.5,1.57,0)*cf(-0.5,-1,-0.7))
local wld2=weld(prt2,prt2,prt1,euler(0.5,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0.8,0,0)*cf(0,0.6,-0.2))
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,0.5,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,1.57)*cf(0,0,0))
local wld6=weld(prt6,prt6,prt2,euler(-0.5,0,0)*cf(0,-0.7,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0.5,0.35))
local wld8=weld(prt8,prt8,prt6,euler(0,0,1.57)*cf(0,0,0.3))
local wld9=weld(prt9,prt9,prt6,euler(1.57,0,0)*cf(0,-0.3,-0.4))
local wld9b=weld(prt9b,prt9b,prt9,euler(0,0,0)*cf(0,0,0))
local wld10=weld(prt10,prt10,prt6,euler(0,0,0)*cf(0,0,1))
local wld11=weld(prt11,prt11,prt10,euler(0,0,0)*cf(0,0,0.1))
local wld12=weld(prt12,prt12,prt10,euler(0,0,0)*cf(0,0,0.55))
local wld13=weld(prt13,prt13,prt6,euler(0,0,0)*cf(0,-0.65,0.8))
local wld14=weld(prt14,prt14,prt13,euler(0,0,0)*cf(0,0,0.3))
local wld15=weld(prt15,prt15,prt13,euler(0,0,0)*cf(0,0,0.75))
local wld16=weld(prt16,prt16,prt13,euler(0,0,0)*cf(0,-0.2,-1))
local wld17=weld(prt17,prt17,prt13,euler(0,0,0)*cf(0,0.2,-1.2))
local wld18=weld(prt18,prt18,prt6,euler(0,0,0)*cf(0,0,0.8))
local wld19=weld(prt19,prt19,prt18,euler(0,0,0)*cf(0.4,-0.3,0))
local wld20=weld(prt20,prt20,prt18,euler(0,0,0)*cf(-0.4,-0.3,0))
local wld22=weld(prt22,prt22,prt6,euler(1.57,0,0)*cf(0,-0.3,1.6))
local wld22b=weld(prt22b,prt22b,prt22,euler(0,0,0)*cf(0,0,0))
numb=-0.8
for i=1,9 do
local prt21=part(3,modelzorz,0,0,BaseColour,"Part21",vt(0.5,0.5,0.5))
local msh21=mesh("SpecialMesh",prt21,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.8,0.8,0.8))
local wld21=weld(prt21,prt21,prt18,euler(0,0,0)*cf(0,-0.3,numb))
numb=numb+0.2
end
function MakeBullet(Color)
model=Instance.new("Model")
model.Parent=modelzorz
model.Name="Bullet"
local bulletbase=part(3,model,0,0,BrickColor.new("Really black"),"BulletBase",vt(0.5,0.5,0.5))
bulletbase.CFrame=prt22.CFrame
local bullet1=part(3,model,0,0,BrickColor.new(Color),"Bullet1",vt(0.51,0.1,0.51))
local bullet2=part(3,model,0,0,BrickColor.new(Color),"Bullet2",vt(0.5,0.5,0.5))
local bullet3=part(3,model,0,0,BrickColor.new(Color),"Bullet3",vt(0.5,0.5,0.5))
local bullet4=part(3,model,0,0,BrickColor.new("Really black"),"Bullet4",vt(0.5,0.5,0.5))
local bulmsh=mesh("CylinderMesh",bulletbase,"","",vt(0,0,0),vt(1.5,1,1.5))
local bulmsh1=mesh("CylinderMesh",bullet1,"","",vt(0,0,0),vt(1.5,0.5,1.5))
local bulmsh2=mesh("SpecialMesh",bullet2,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.55,0.2,0.55))
local bulmsh3=mesh("CylinderMesh",bullet3,"","",vt(0,0,0),vt(1,0.5,1))
local bulmsh4=mesh("CylinderMesh",bullet4,"","",vt(0,0,0),vt(1.5,0.2,1.5))
local bulwld1=weld(bullet1,bullet1,bulletbase,euler(0,0,0)*cf(0,0.1,0))
local bulwld2=weld(bullet2,bullet2,bulletbase,euler(3.14,0,0)*cf(0,0.4,0))
local bulwld3=weld(bullet3,bullet3,bulletbase,euler(0,0,0)*cf(0,-0.3,0))
local bulwld4=weld(bullet4,bullet4,bulletbase,euler(0,0,0)*cf(0,-0.35,0))
bulletbase.CFrame=prt22.CFrame
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
end
end),bulletbase)
return bulletbase,model
end
--[[local bullet=MakeBullet("Bright red")
local wldbul=weld(bullet,bullet,Torso,euler(0,0,0)*cf(0,-5,0))]]
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Blitz" 
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
wld1.C0=euler(2.5,1.57,0)*cf(-0.5,-1,-0.7)
end 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
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
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
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
function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.3,0)
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
wait(5)
Part.Parent=nil
end),prt,msh)
end
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
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
Damagefunc1=function(hit,Damage,Type)
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
                        game:GetService("Debris"):AddItem(c,100)
                Damage=Damage+math.random(0,100)
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,100)
                if Type=="" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*10
                vp.velocity=Head.CFrame.lookVector*10+Head.Velocity/1.05
                if 10>0 then
                        vp.Parent=hit.Parent.Torso
                end
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
--                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
                game:GetService("Debris"):AddItem(vp,.25)
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Explosion" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,40,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                end
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,100)
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
                Damage=Damage+math.random(0,100)
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
                showDamage(hit.Parent,Damage,100)
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
                showDamage(hit.Parent,"Freeze!",3)
                so("http://www.roblox.com/asset/?id=41763367",hit,1,2) 
                for i=1,10 do
                local freezepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
                freezepart.Anchored=true
                freezepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                coroutine.resume(coroutine.create(function(Part) 
                wait(3)
                Part.Anchored=false
                Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
                wait(5)
                Part.Parent=nil
                end),freezepart)
                end
                coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted) 
                wait(3)
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
Damagefunc2=function(hit,Damage,Knockback)
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
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(1) 
Vel:Remove() 
end),bodyVelocity) 
                game:GetService("Debris"):AddItem(vp,1)
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
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Material = "SmoothPlastic"
        c.BottomSurface="SmoothNoOutlines"
        c.TopSurface="SmoothNoOutlines"
        c.RightSurface="SmoothNoOutlines"
        c.LeftSurface="SmoothNoOutlines"
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("New Yeller")
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
        wait(2)
        c:remove()
end
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
spread=0
range=500
rangepower=10
function shoottrail(mouse,baseprt,Type)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range
BulletType=Type
NewCol="White"
if BulletType=="Explosion" then
NewCol="Bright red"
elseif BulletType=="Freeze" then
NewCol="Bright blue"
elseif BulletType=="Tornado" then
NewCol="Pastel Blue"
end
local ShootBullet,ShootModel=MakeBullet(NewCol)
ShootBullet.Anchored=false
ShootBullet.CFrame=baseprt.CFrame
local shodderp=weld(ShootBullet,ShootBullet,prt22,euler(3.14,0,0)*cf(0,0,0))
shodderp.Parent=nil
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.Material = "SmoothPlastic"
effectsg.TopSurface = "SmoothNoOutlines"
effectsg.BottomSurface = "SmoothNoOutlines"
effectsg.RightSurface = "SmoothNoOutlines"
effectsg.LeftSurface = "SmoothNoOutlines"
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(NewCol)
effectsg.Reflectance = 0.25
effectsg.Transparency = 1
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1.5,mg*5,1.5)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
ShootBullet.CFrame=effectsg.CFrame*euler(3.14,0,0)
local shodderp=weld(ShootBullet,ShootBullet,effectsg,euler(3.14,0,0)*cf(0,0,0))
MagicBlock(BrickColor.new(NewCol),ShootBullet.CFrame,0,0,0,0.5,0.5,0.5)
coroutine.resume(coroutine.create(function()
effectsg.Transparency=1
wait(0.1)
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait(0)
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-0.5),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
TehCF=ShootBullet.CFrame
NewCF=CFrame.new(ShootBullet.Position)
NewPOS=ShootBullet.Position
rand=math.random(1,3)
ShootModel.Parent=nil
if Type=="Explosion" then
MagicCircle(BrickColor.new("Bright red"),TehCF,1,1,1,5,5,5)
coroutine.resume(coroutine.create(function()
for i=1,10 do
wait(0.05)
MagicCircle(BrickColor.new("Bright red"),NewCF*cf(math.random(-5,5),0,math.random(-5,5)),rand,1,rand,1,8,1)
end
end))
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - NewPOS
local mag = targ.magnitude
if mag <= 20 and cc[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,20,"Explosion")
end
end
end
end
elseif Type=="Freeze" then
MagicBlock(BrickColor.new("Bright blue"),NewCF,1,1,1,5,5,5)
for i=1,6 do
MagicFreeze(BrickColor.new("Bright blue"),NewCF,0.5,0.5,0.5,0.1,0.3,0.1)
BreakEffect(BrickColor.new("Bright blue"),NewCF,0.5,math.random(5,15),0.5)
end
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - NewPOS
local mag = targ.magnitude
if mag <= 10 and cc[i].Name ~= Player.Name then 
attackdebounce=false
freezeDamagefunc(head,10,10)
end
end
end
end
elseif Type=="Tornado" then
end
--[[if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc2(hit,20,30)
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc2(hit.Parent.Parent.Torso,20,30)
--ADmg(hum,hit)
end
end]]
end))
end
function Melee()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(0.8+0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+1.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
so("http://roblox.com/asset/?id=10209640",prt22,1,1) 
con1=prt22.Touched:connect(function(hit) Damagefunc1(hit,10,"") end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,1-2.5*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
con1:disconnect()
for i=0,1,0.1 do
wait()
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.5-0.1*i)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-1.6+1.4*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
function Shoot(Model)
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
MainCFX=workspace.CurrentCamera.CoordinateFrame.X
MainCFZ=workspace.CurrentCamera.CoordinateFrame.Z
HeadCF=Head.Position.Y
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
MainCF=cf(Head.Position,pos4) * euler(0,3.14,0)
while attack==true do
wait()
bg.cframe = MainCF
bg.Parent = Head
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0.8+0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.3)
so("http://roblox.com/asset/?id=151776307",prt7,1,1) 
MainModel=BulletTable[1]
table.remove(BulletTable,1)
MainModel.Parent=nil
shoottrail(mouse,prt22,AmmoType)
Loaded=false
AmmoType=""
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,-1.57)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,-1.57)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.3-0.2*i,0,-1.57)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57+1.57*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0.2*i,-1.57+1.37*i)
end
wait(0.2)
Humanoid.WalkSpeed=16
attack=false
end
function LoadExplode(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Bright red")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Explosion"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function LoadFreeze(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Bright blue")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Freeze"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function LoadTornado(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Pastel Blue")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Tornado"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function ob1d(mouse) 
if attack == true then return end 
hold=true
if Loaded==false then
Melee()
else
Shoot(TehModel)
end
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
eul=0
function key(key) 
if attack == true then return end 
if Loaded==false then
if key=="z" then
local Bullet,TehModel=LoadExplode(bullet,BulletModel)
end
if key=="x" then
local Bullet,TehModel=LoadFreeze(bullet,BulletModel)
end
if key=="c" then
local Bullet,TehModel=LoadTornado(bullet,BulletModel)
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
print("Blitz loaded.")
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]