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
attack = false 
attacktype = 1 
damage = 10000
oridamage = 10000
attackdebounce = false 
MMouse=nil
combo=0
Charge=0
con1=nil
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
if Character:findFirstChild("Rocket Hammer",true) ~= nil then 
Character:findFirstChild("Rocket Hammer",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
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
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "WeaponGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0,1300,0,300)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = " " 
fentext.BackgroundTransparency = 0 
fentext.BackgroundColor3 = Color3.new(0,0,0) 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,0,0,0)
fentext.Size = UDim2.new(0.710000306,0,2.79999995,0)
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(1,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,0,2.8,0)
fentext2.Size = UDim2.new(0.710000306,0,-2.8*Charge,0)
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Rocket Hammer" 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part1",vt(0.5,0.5,0.5))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part2",vt(0.5,0.5,0.5))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part3",vt(0.5,0.5,0.5))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part4",vt(0.5,0.5,0.5))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part5",vt(0.5,0.5,0.5))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part6",vt(0.5,0.5,0.5))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part7",vt(0.5,0.5,0.5))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part8",vt(0.5,0.5,0.5))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Really Royal purple"),"Part9",vt(0.5,0.5,0.5))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part10",vt(0.5,0.5,0.5))
local prt11=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part11",vt(0.5,0.5,0.5))
local prt12=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part12",vt(0.5,0.5,0.5))
local prt13=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part13",vt(0.5,0.5,0.5))
local prt14=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part14",vt(0.5,0.5,0.5))
local prt15=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part15",vt(0.5,0.5,0.5))
local prt16=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part16",vt(0.5,0.5,0.5))
local prt17=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part17",vt(0.5,0.5,0.5))
local prt17b=part(3,modelzorz,0,1,BrickColor.new("Bright yellow"),"Part17b",vt(0.5,0.5,0.5))
local prt18=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part18",vt(0.5,0.5,0.5))
local prt19=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part19",vt(0.5,0.5,0.5))
local prt20=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part20",vt(0.5,0.5,0.5))
local prt21=part(3,modelzorz,0,0,BrickColor.new("Really Royal purple"),"Part21",vt(0.5,0.5,0.5))
local prt22=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part22",vt(0.5,0.5,0.5))
local prt23=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"Part23",vt(0.5,0.5,0.5))
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(1,2,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.7,3,0.7))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1,1.5,1.3))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(1.5,1.5,1.5))
local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(1,1.6,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.3,3,0.3))
local msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(1.5,2.5,1.5))
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1.6,1.5,1.6))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(1.2,2.51,1.2))
local msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.5,2,0.5))
local msh11=mesh("CylinderMesh",prt11,"","",vt(0,0,0),vt(0.5,2,0.5))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(1,5,1))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,4,2))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(2,2,2.1))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(2.5,1,2.5))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(2.5,1,3))
local msh17=mesh("CylinderMesh",prt17,"","",vt(0,0,0),vt(3,3,3))
local msh17b=mesh("CylinderMesh",prt17b,"","",vt(0,0,0),vt(3.001,3,3.01))
local msh18=mesh("CylinderMesh",prt18,"","",vt(0,0,0),vt(3.2,1.5,3.2))
local msh19=mesh("CylinderMesh",prt19,"","",vt(0,0,0),vt(3.2,1,3.2))
local msh20=mesh("CylinderMesh",prt20,"","",vt(0,0,0),vt(3.2,1,3.2))
local msh21=mesh("CylinderMesh",prt21,"","",vt(0,0,0),vt(2.5,1,2.5))
local msh22=mesh("CylinderMesh",prt22,"","",vt(0,0,0),vt(0.5,2,0.5))
local msh23=mesh("CylinderMesh",prt23,"","",vt(0,0,0),vt(0.5,2.1,0.5))
local wld1=weld(prt1,prt1,Torso,euler(3.14,-1.57,0)*cf(0,-4,-0.5))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,1,0))
local wld4=weld(prt4,prt4,prt3,euler(0,0,1.57)*cf(0,0.5,-0.1))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,0,0))
local wld6=weld(prt6,prt6,prt3,euler(1.57,0,0)*cf(0,0,0))
local wld7=weld(prt7,prt7,prt6,euler(1.57,0,0)*cf(0,-0.8,0))
local wld8=weld(prt8,prt8,prt7,euler(0,0,0)*cf(0,0,0))
local wld9=weld(prt9,prt9,prt7,euler(0,0,0)*cf(0,0,0))
local wld10=weld(prt10,prt10,prt7,euler(-0.2,0,0)*cf(0,1,0))
local wld11=weld(prt11,prt11,prt1,euler(1.57+0.3,0,0)*cf(0,-0.5,0.3))
local wld12=weld(prt12,prt12,prt1,euler(0,0,0)*cf(0,-2,0))
local wld13=weld(prt13,prt13,prt12,euler(0,0,0)*cf(0,-1.75,0))
local wld14=weld(prt14,prt14,prt13,euler(0,0,0)*cf(0,-1,0))
local wld15=weld(prt15,prt15,prt14,euler(0,0,0)*cf(0,-0.6,0.4))
local wld16=weld(prt16,prt16,prt14,euler(1.57,0,0)*cf(0,0.4,0.77))
local wld17=weld(prt17,prt17,prt14,euler(1.57,0,0)*cf(0,0,-1.4))
local wld17b=weld(prt17b,prt17b,prt17,euler(0,0,0)*cf(0,0,0))
local wld18=weld(prt18,prt18,prt17,euler(0,0,0)*cf(0,0,0))
local wld19=weld(prt19,prt19,prt17,euler(0,0,0)*cf(0,0.8,0))
local wld20=weld(prt20,prt20,prt17,euler(0,0,0)*cf(0,-0.8,0))
local wld21=weld(prt21,prt21,prt19,euler(0,0,0)*cf(0,0.01,0))
local wld22=weld(prt22,prt22,prt13,euler(0.5,0,0)*cf(0,1.2,-0.6))
local wld23=weld(prt23,prt23,prt22,euler(-1.2,0,0)*cf(0,0.6,0.5))
local hitbox=part(3,modelzorz,0,1,BrickColor.new("Royal purple"),"Hitbox",vt(3,3,3))
local hitboxwld=weld(hitbox,hitbox,prt14,euler(0,0,0)*cf(0,0,0))
local BoosterFire = Instance.new("Fire")
BoosterFire.Parent = prt19
BoosterFire.Heat = -25
BoosterFire.Size = 1
function MakeRocketPart(x,y,z)
local prt=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"RocketPart",vt(0.5,0.5,0.5))
local prta=part(3,modelzorz,0,0,BrickColor.new("Royal purple"),"RocketPart",vt(0.5,0.5,0.5))
local prtb=part(3,modelzorz,0,0,BrickColor.new("Bright yellow"),"RocketPart",vt(0.5,0.5,0.5))
local prtc=part(3,modelzorz,0,0,BrickColor.new("Really Royal purple"),"RocketPart",vt(0.5,0.5,0.5))
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(1.5,2.5,1.5))
local msha=mesh("CylinderMesh",prta,"","",vt(0,0,0),vt(1.6,1.5,1.6))
local mshb=mesh("SpecialMesh",prtb,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.55,0.3,0.55))
local mshc=mesh("CylinderMesh",prtc,"","",vt(0,0,0),vt(1.3,2.5,1.3))
local wld=weld(prt,prt,prt14,euler(1.57,0,0)*cf(x,y,z))
local wlda=weld(prta,prta,prt,euler(0,0,0)*cf(0,0,0))
local wldb=weld(prtb,prtb,prt,euler(0,0,0)*cf(0,-0.8,0))
local wldc=weld(prtc,prtc,prt,euler(0,0,0)*cf(0,0.01,0))
local BoosterFire = Instance.new("Fire")
BoosterFire.Parent = prt
BoosterFire.Heat = -25
BoosterFire.Size = 0.2
end
MakeRocketPart(0.8,0,0.5)
MakeRocketPart(-0.8,0,0.5)
MakeRocketPart(0,-0.8,0.5)
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Rocket Hammer" 
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
wld1.C0=euler(3.14,-1.57,0)*cf(0,-4,-0.5)
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
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
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
                so("http://www.roblox.com/asset/?id=2697431",hit,5,0.4) 
                MagicCircle(BrickColor.new("Royal purple"),hit.CFrame,1,1,1,0,0,0,2,2,2)
--                h:TakeDamage(Damage)
--                showDamage(hit.Parent,Damage,.5)
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
                block.Value=block.Value-10
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
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
bodyVelocity.velocity=angle*40
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.3) 
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
function MagicBlock(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(0.2,0.2,0.2)
end
prt.Parent=nil
end))
end
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
function SwirlEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)*euler(1.57,0,0)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.07 do
wait()
prt.CFrame=prt.CFrame*cf(0,0.5,0)*euler(0,0.5,0)
prt.Transparency=i
msh.Scale=msh.Scale+vt(0.4,1,0.4)
end
prt.Parent=nil
end))
end
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.Transparency=i
msh.Scale=msh.Scale+vt(0.05,0.05,0.05)
end
prt.Parent=nil
end))
end
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function oneslash()
attack=true
combo=1
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1+0.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6-0.97*i,-0.2+1.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37*i)
LW.C1=cf(0, 0.5, 0) * euler(0.5*i,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,30,40) end) 
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.6) 
for i=0,1,0.2 do
wait()
for i=1,3 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
wld1.C0=euler(1.57+0.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,1-2.5*i)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0,0,-1.57)
LW.C1=cf(0, 0.5, 0) * euler(0.5-2.5*i,0,0)
end
con1:disconnect()
for i=0,1,0.1 do
wait()
wld1.C0=euler(2.07,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.5-0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(0,0,-1.57)
LW.C1=cf(0, 0.5, 0) * euler(0.5-2.5-0.2*i,0,0)
end
attack=false
end
function twoslash()
attack=true
combo=2
for i=0,1,0.1 do
wait()
eul=1*i
Torso.Neck.C0=necko*euler(0,0,-1*i)
wld1.C0=euler(2.07-0.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.7+2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(0,0,-1.57)
LW.C1=cf(0, 0.5, 0) * euler(0.5-2.7,0,0)
end
con1=Torso.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.4) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*70
for i=0,1,0.1 do
wait(0)
MagicBlock(BrickColor.new("Bright stone grey"),Torso.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
con1:disconnect()
vel2.Parent=nil
attack=false
end
function threeslash()
attack=true
combo=3
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*20
for i=0,1,0.1 do
wait()
eul=1-6.32*i
end
vel2.Parent=nil
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,30,60) end) 
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.7) 
for i=0,1,0.15 do
wait()
for i=1,3 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
eul=1-2*i
Torso.Neck.C0=necko*euler(0,0,-1+2*i)
wld1.C0=euler(1.57+0.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,0.3-2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(0,0,-1.57)
LW.C1=cf(0, 0.5, 0) * euler(-2.2,0,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,0.3-2-0.1*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(0,0,-1.57)
LW.C1=cf(0, 0.5, 0) * euler(-2.2,0,0)
end
con1:disconnect()
attack=false
end
function GrandSlam()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait(0)
wld1.C0=euler(1.57+0.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.3*i,0,-0.2)
end
coroutine.resume(coroutine.create(function(v) 
wait()
while attack==true do
wait(0)
bg.Parent = Torso
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4) * euler(0,eul,0) * cf(0,0,0) 
end
eul=0
bg.Parent=nil
end))
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.5) 
for i=0,1,0.1 do
wait(0)
for i=1,3 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
eul=1*i
Torso.Neck.C0=necko*euler(0,0,-1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(3.2-1.63*i,0,1*i)
RW.C1=cf(0, 0.5, 0) * euler(1.2*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0.4-0.9*i,0,-0.2)
end
Charge=Charge+0.2
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - hitbox.Position;
local mag = targ.magnitude;
if mag <= 20 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,40,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",hitbox,5,0.2) 
MagicCircle(BrickColor.new("Royal purple"),hitbox.CFrame,2,2,2,0,0,0,6,6,6)
SwirlEffect(BrickColor.new("Royal purple"),hitbox.CFrame,10,10,10,0,0,0)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,2,2,2,math.random(-9,9),math.random(-9,9),math.random(-9,9))
end
wait(0.2)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,2,2,2,math.random(-20,20),math.random(-20,20),math.random(-20,20))
end
attack=false
wait(0)
attack=true
wait(0.3)
for i=0,1,0.1 do
wait(0)
wld1.C0=euler(1.57+0.5-0.5*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,1)
RW.C1=cf(0, 0.5, 0) * euler(1.2-0.1*i,0,0)
end
for i=0,1,0.1 do
wait(0)
Torso.Neck.C0=necko*euler(0,0,-1+1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.57*i,0,1-1*i)
RW.C1=cf(0, 0.5, 0) * euler(1.1-1.1*i,-0.6*i,-0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-0.2)
end
Humanoid.WalkSpeed=16
attack=false
end
function HammerCharge()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1+0.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6-0.97*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57*i,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,15,40) end) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*30
repeat
wait(0)
vel2.velocity = Head.CFrame.lookVector*30
Charge=Charge+0.005
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
until dashing==false 
con1:disconnect()
vel2.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+0.97*i,-0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
function SuperbSlam()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1-1.1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.2)
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.7) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.1+2*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wld1.Part1=nil
local basepart=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart",vt(0.5,0.5,0.5))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,35,-10)
bodypos=Instance.new("BodyPosition")
bodypos.Parent=prt12
bodypos.position = basepart.Position
bodypos.maxForce = Vector3.new(4e+080, 4e+080, 4e+080) 
local bg2 = it("BodyGyro") 
bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg2.P = 20e+003 
bg2.Parent=prt12
bg2.cframe = Head.CFrame
coroutine.resume(coroutine.create(function(gyro) 
while gyro.Parent~=nil do
wait()
for i=0,1,0.1 do
wait()
gyro.cframe=gyro.cframe*euler(0.5,0,0)
end
end
end),bg2)
wait(1)
bodypos2=Instance.new("BodyPosition")
bodypos2.Parent=RightArm
bodypos2.position = basepart.Position
bodypos2.maxForce = Vector3.new(4e+080, 4e+080, 4e+080) 
wait(0.5)
bodypos2.Parent=nil
basepart.Parent=nil
bg2.Parent=nil
wld1.Part1=RightArm
bodypos.Parent=nil
boom=false
coroutine.resume(coroutine.create(function() 
while boom==false do
wait()
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
end))
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.1+2-1.9*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
coroutine.resume(coroutine.create(function()
floor=false
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
Charge=Charge+0.999
so("http://www.roblox.com/asset/?id=2697431",hitbox,5,0.5) 
MagicCircle2(BrickColor.new("Royal purple"),hitbox.CFrame*euler(1.57,0,0),300,4,300,0,-1.5,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - hitbox.Position;
local mag = targ.magnitude;
if mag <= 70 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,1,80)
end 
end 
end 
end 
wait(0.5)
local basepart=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart",vt(0.5,0.5,0.5))
basepart.Anchored=true
basepart.CFrame=Torso.CFrame*cf(0,0,-50)*euler(-1.57,0,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart.Position;
local mag = targ.magnitude;
if mag <= 40 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,60,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart,5,0.2) 
MagicCircle(BrickColor.new("Royal purple"),basepart.CFrame,5,5,5,0,0,0,7,7,7)
SwirlEffect(BrickColor.new("Royal purple"),basepart.CFrame,15,15,15,0,0,0)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),basepart.CFrame,2,2,2,math.random(-9,9),math.random(-9,9),math.random(-9,9))
end
wait(0.2)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),basepart.CFrame,2,2,2,math.random(-25,25),math.random(-25,25),math.random(-25,25))
end
basepart.Parent=nil
boom=true
wait(1)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6*i,-0.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4+0.4*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end))
end
function HammerSmash()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.2*i,0,-0.8*i)*cf(0,1,0)
RW.C0=cf(1.5-0.5*i, 0.5+0.5*i, -0.5*i) * euler(1+1.5*i,0,-0.8*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.5*i, 0.5+0.5*i, -0.5*i) * euler(2.5*i,0,-0.2+1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
so("http://roblox.com/asset/?id=10209640",hitbox,5,0.5) 
bg.Parent=Torso
bg.cframe=Torso.CFrame
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 10000
local CF = Torso.CFrame
bp.position = CF.p
bp.Parent=Torso
for i=0,1,0.2 do
wait()
for i=1,3 do
MagicBlock(BrickColor.new("Royal purple"),hitbox.CFrame,1,1,1,math.random(-2,2),math.random(-2,2),math.random(-2,2))
end
bp.position = CF.p - Vector3.new(0,2,0)
Torso["Left Hip"].C0=LHC0*cf(-1*i,1.5*i,0)
Torso["Right Hip"].C0=RHC0*cf(0,1.5*i,0)*euler(0,0,-0.5*i)
wld1.C0=euler(1.57+0.2+0.3*i,0,-0.8)*cf(0,1,0)
RW.C0=cf(1, 1-0.5*i, -0.5) * euler(2.5-2*i,0,-0.8)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1, 1-0.5*i, -0.5) * euler(2.5-2*i,0,0.8)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Charge=Charge+0.4
local basepart=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart",vt(0.5,0.5,0.5))
basepart.Anchored=true
basepart.CFrame=hitbox.CFrame
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart.Position;
local mag = targ.magnitude;
if mag <= 20 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,40,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart,5,0.2) 
MagicCircle(BrickColor.new("Royal purple"),basepart.CFrame,5,5,5,0,0,0,7,7,7)
SwirlEffect(BrickColor.new("Royal purple"),basepart.CFrame,15,15,15,0,0,0)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),basepart.CFrame,2,2,2,math.random(-9,9),math.random(-9,9),math.random(-9,9))
end
coroutine.resume(coroutine.create(function(MainPart) 
numb=0
for i=1,10 do
wait(0.1)
numb=numb+9
local basepart2=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart2",vt(0.5,0.5,0.5))
basepart2.Anchored=true
basepart2.CFrame=MainPart.CFrame*cf(numb,0,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart2.Position;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,10,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart2,5,0.3) 
MagicCircle(BrickColor.new("Royal purple"),basepart2.CFrame,1,1,1,0,0,0,5,5,5)
SwirlEffect(BrickColor.new("Royal purple"),basepart2.CFrame,3,3,3,0,0,0)
coroutine.resume(coroutine.create(function(Part) 
wait(2)
Part.Parent=nil
end),basepart2)
end
MainPart.Parent=nil
end),basepart)
coroutine.resume(coroutine.create(function(MainPart) 
numb2=0
for i=1,10 do
wait(0.1)
numb2=numb2+9
local basepart2=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart2",vt(0.5,0.5,0.5))
basepart2.Anchored=true
basepart2.CFrame=MainPart.CFrame*cf(-numb2,0,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart2.Position;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,10,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart2,5,0.3) 
MagicCircle(BrickColor.new("Royal purple"),basepart2.CFrame,1,1,1,0,0,0,5,5,5)
SwirlEffect(BrickColor.new("Royal purple"),basepart2.CFrame,3,3,3,0,0,0)
coroutine.resume(coroutine.create(function(Part) 
wait(2)
Part.Parent=nil
end),basepart2)
end
MainPart.Parent=nil
end),basepart)
coroutine.resume(coroutine.create(function(MainPart) 
numb3=0
for i=1,10 do
wait(0.1)
numb3=numb3+9
local basepart2=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart2",vt(0.5,0.5,0.5))
basepart2.Anchored=true
basepart2.CFrame=MainPart.CFrame*cf(0,numb3,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart2.Position;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,10,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart2,5,0.3) 
MagicCircle(BrickColor.new("Royal purple"),basepart2.CFrame,1,1,1,0,0,0,5,5,5)
SwirlEffect(BrickColor.new("Royal purple"),basepart2.CFrame,3,3,3,0,0,0)
coroutine.resume(coroutine.create(function(Part) 
wait(2)
Part.Parent=nil
end),basepart2)
end
MainPart.Parent=nil
end),basepart)
coroutine.resume(coroutine.create(function(MainPart) 
numb4=0
for i=1,10 do
wait(0.1)
numb4=numb4+9
local basepart2=part(3,workspace,0,1,BrickColor.new("Royal purple"),"BasePart2",vt(0.5,0.5,0.5))
basepart2.Anchored=true
basepart2.CFrame=MainPart.CFrame*cf(0,-numb4,0)
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - basepart2.Position;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,10,80)
end 
end 
end 
end 
so("http://www.roblox.com/asset/?id=2697431",basepart2,5,0.3) 
MagicCircle(BrickColor.new("Royal purple"),basepart2.CFrame,1,1,1,0,0,0,5,5,5)
SwirlEffect(BrickColor.new("Royal purple"),basepart2.CFrame,3,3,3,0,0,0)
coroutine.resume(coroutine.create(function(Part) 
wait(2)
Part.Parent=nil
end),basepart2)
end
MainPart.Parent=nil
end),basepart)
wait(0.2)
for i=1,8 do
MagicBlock(BrickColor.new("Royal purple"),basepart.CFrame,2,2,2,math.random(-25,25),math.random(-25,25),math.random(-25,25))
end
wait(1)
bp.Parent=nil
bg.Parent=nil
for i=0,1,0.1 do
wait()
Torso["Left Hip"].C0=LHC0*cf(-1+1*i,1.5-1.5*i,0)
Torso["Right Hip"].C0=RHC0*cf(0,1.5-1.5*i,0)*euler(0,0,-0.5+0.5*i)
wld1.C0=euler(1.57+0.5-0.5*i,0,-0.8+0.8*i)*cf(0,1,0)
RW.C0=cf(1+0.5*i, 0.5, -0.5+0.5*i) * euler(0.5+0.5*i,0,-0.8+0.8*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6*i,-0.2*i)
LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(0.5-0.5*i,0,0.8-1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Torso["Left Hip"].C0=LHC0
Torso["Right Hip"].C0=RHC0
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
attack=false
end
function HammerSpin()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1,1*i,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.6*i,-0.2+1.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
combo=0
function ob1d(mouse) 
if attack == true then return end 
attackdebounce=false
hold=true
coroutine.resume(coroutine.create(function(v) 
wait()
while attack==true do
wait(0)
bg.Parent = Torso
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4) * euler(0,eul,0) * cf(0,0,0) 
end
bg.Parent=nil
end))
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
elseif combo==2 then
threeslash()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
eul=0
Torso.Neck.C0=necko
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end))
--[[wait(1)
eul=0
Torso.Neck.C0=necko
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)]]
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
eul=0
function key(key) 
if attack == true then return end 
if key=="z" then
GrandSlam()
end
if key=="x" then
dashing=true
HammerCharge()
end
if key=="c" then
HammerSmash()
end
if key=="v" then
HammerSpin()
end
if key=="f" then
SuperbSlam()
end
end 
function key2(key) 
if key=="x" then
dashing=false
end
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
print("Fenrier's Rocket Hammer loaded.")
blownup=false
while blownup==false do
wait(0)
prt17b.Transparency=1-Charge
hitbox.Transparency=1
if Charge>0 and attack==false then
Charge=Charge-0.001
end
if Charge>=1 and blownup==false then
blownup=true
Charge=1
BOOM=Instance.new("Explosion")
BOOM.Parent=workspace
BOOM.Position=hitbox.Position
BOOM.BlastRadius=20
so("http://www.roblox.com/asset/?id=2101148",hit,5,0.4) 
print("Good job taking care of your hammer. It blew up.")
end
fentext2.Size = UDim2.new(0.710000306,0,-2.8*Charge,0)
end
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]--
