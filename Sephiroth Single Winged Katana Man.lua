-- Roblox.LUA | Seph by FantasyOrchid | Fixed by Cass.

p=game.Players.LocalPlayer
c=p.Character
m=p:GetMouse()
Player = game:GetService("Players").LocalPlayer
mouse=Player:GetMouse()
Cha = Player.Character
Character = Cha
torso = Cha.Torso
Mouse = mouse
curaga = false
equip = false
on = false
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
Color1 = torso.BrickColor
Torso = torso
Effects = {}

---------------------------------------Clothes
game.Players.LocalPlayer.Character["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Head"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
game.Players.LocalPlayer.Character["Torso"].BrickColor = BrickColor.new("Pastel brown")
Cha.Shirt:Remove()
Cha.Pants:Remove()

Shirt = Instance.new("Shirt",Character)
Shirt.Parent = Cha
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=276413699"
Pant = Instance.new("Pants",Character)
Pant.Parent = Cha
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=276414504"

---------------------------------------Taunts n Stuff
local Taunts = {"Come on. Ya scared?"}
local raisechats = { "Descend, Heartless Angel!" , "I'm... the chosen one!","I will lead you to the Promised Land","The Planet and I are to be one!","That was true power","Come power!","Prepare yourself!","No mercy","No more games... show me what you've got!"}
local final = {"Show me your strength" , "That's enough"}
---------------------------------------Chat Gui n stuff

so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end


function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part2(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3})
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part2(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder2",delay,x3,y3,z3})
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part2(3,workspace,0,0,brickcolor,"Effect",vt())
if Type~=2 then
prt.Anchored=true
end
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,dur) 
local wld=nil
if dur==2 then
wld=weld(Part,Part,parent,euler(0,0,0)*cf(0,0,0))
end
for i=0,1,delay do
wait()
if dur==1 then
Part.CFrame=Part.CFrame
elseif dur==2 then
wld.C0=cframe
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,Type)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part2(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,mshtype)
local prt=part2(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local thetype=""
if mshtype==1 then
thetype="http://www.roblox.com/asset/?id=20329976"
elseif mshtype==2 then
thetype="http://www.roblox.com/asset/?id=1323306"
end
msh=mesh("SpecialMesh",prt,"FileMesh",thetype,vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end


function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part2(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock,Slash)
        if hit.Parent==nil then
                return
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
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                if Slash==1 then
                so("http://www.roblox.com/asset/?id=10209590",hit,1,1)
                MagicCircle(Color1,hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.2,.2,6,.2,0.1)
                end
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
                end
                end
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
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,30,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Charge" then
                Charge=Charge+1
                coroutine.resume(coroutine.create(function(Part,Hum)
                swait(30)
                for i=1,5 do
                swait()
                so("rbxasset://sounds\\unsheath.wav",hit,1,2)
                MagicCircle(Color1,hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.1,.2,8,.1,0.05)
                newdam=math.random(1,5)
                if blocked==false then
                Hum:TakeDamage(newdam)
                showDamage(hit.Parent,newdam,.5,BrickColor:Red())
                else
                Hum:TakeDamage(newdam/2)
                showDamage(hit.Parent,newdam,.5,BrickColor.new("Bright blue"))
                end
                end
                end),hit,h)
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(math.floor(Dealt))
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
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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


repeat wait() until game:getService("Players").LocalPlayer.Character ~= nil;

local Services = setmetatable({}, {  __index = function(Self, Request)  return game:getService(Request) or nil  end  })
local Player = Services.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Backpack = Player.Backpack
local Character = Player.Character
local PlayerGui = Player.PlayerGui
local Camera = Workspace.CurrentCamera
local RunService = Services.RunService
local Head = Character:findFirstChild("Head")
local Torso = Character:findFirstChild("Torso")
local RootPart = Character:findFirstChild("HumanoidRootPart")
local RightArm = Character:findFirstChild("Right Arm")
local LeftArm = Character:findFirstChild("Left Arm")
local RightLeg = Character:findFirstChild("Right Leg")
local LeftLeg = Character:findFirstChild("Left Leg")
local Humanoid = Character:findFirstChild("Humanoid")
local Neck = Torso:findFirstChild("Neck")
local RootJoint = RootPart:findFirstChild("RootJoint")
local RightSH = Torso:findFirstChild("Right Shoulder")
local LeftSH = Torso:findFirstChild("Left Shoulder")
local RightHip = Torso:findFirstChild("Right Hip")
local LeftHip = Torso:findFirstChild("Left Hip")
local it = Instance.new
local vt = Vector3.new
local bc = BrickColor.new
local c3 = Color3.new
local UD2 = UDim2.new
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local angles = CFrame.Angles
local bc = BrickColor.new
local c3 = Color3.new
local deg = math.deg
local inf = math.huge
local rad = math.rad
local pi = math.pi
local random = math.random

local IDs = {
        --Meshes
        ["This"] = 0,
        
        --Textures
        ["House of Gremory"] = 198026609,
        ["House of Phenex"] = 197704664,
        ["Electric"] = 255514024,
        
        --Audio
        ["MVC3 Wesker Theme"] = 193889412,
        ["Resident Evil Movie Wesker Theme"] = 163237084,
        
}
                
local Tn = "New" 
local KeyDown = {}
local KeyLastDown = {}
local httpasset = "http://www.roblox.com/Asset/?id="
local rbxassetid = "rbxassetid://"
local rbxasset = "rbxasset://"
local IsAttacking = false
local IsSprinting = false
local IsEquipping = false
local IsBlocking = false
local IsEquipped = false
local AttackDebounce = false
local RootCF = euler(-1.57, 0, 3.14)
local NeckC0 = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local NeckC1 = cf(0, -0.5, 0)
local Combo = 0 
local ContinueCombo = false
local RMB = false
local LMB = false
local Hold = false
local blcf = nil
local scfr = nil

function Preload(AssetID)
        Services.ContentProvider:Preload(AssetID)
end

function PreloadAssets()
        for _, Assets in pairs(IDs) do
                Preload(httpasset .. Assets)
        end
end

PreloadAssets()

function newSound(Parent,ID,Pitch,Volume,Looped)
        Sound = it("Sound",Parent)
        Sound.SoundId = ID
        Sound.Pitch = Pitch
        Sound.Volume = Volume
        Sound.Looped = Looped

        return Sound
end

function NoOutline(Part)
        Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

Lerp = function(a,b,c)
        return a+(b-a)*c
end

function ctlerp(c1,c2,al)
        local com1 = {c1:components()}
        local com2 = {c2:components()}
        for i,v in pairs(com1) do
                com1[i] = lerp(v,com2[i],al)
        end
        return CFrame.new(unpack(com1))
end

do
    local function QuaternionFromCFrame(cf) 
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
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
        local function QuaternionSlerp(a, b, t) 
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
    function clerp(a,b,t) 
            local qa = {QuaternionFromCFrame(a)}
            local qb = {QuaternionFromCFrame(b)} 
            local ax, ay, az = a.x, a.y, a.z 
            local bx, by, bz = b.x, b.y, b.z  
            local _t = 1-t 
            return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
    end 

end
--[[
local CFrameInterpolate=function(s,e,a,r,i,n,g)
        g,r=CFrame,{{s:toEulerAnglesXYZ()},{e:toEulerAnglesXYZ()}}
        for _=1,3 do 
                i,n=r[1][_],r[2][_]r[1][_]=i+a*(n-i)
        end 
        return(g.new(s.p:lerp(e.p,a))*g.Angles(unpack(r[1])))
end]]

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
        return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
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
        fp.Material = "SmoothPlastic"
        fp:BreakJoints()
        
        NoOutline(fp)
        return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,scale)
        local mesh = it(Mesh) 
        mesh.Parent = part
        if Mesh=="SpecialMesh" then
                mesh.MeshType = meshtype
                mesh.MeshId = meshid
        end
        mesh.Scale=scale
        return mesh
end
 
function weld(parent,part0,part1,c0,c1)
        local weld = it("Motor") 
        weld.Parent = parent
        weld.Part0 = part0 
        weld.Part1 = part1 
        weld.C0 = c0
        if c1 ~= nil then
                weld.C1 = c1
        end
        return weld
end

for i, v in pairs(Character:GetChildren()) do 
        if v:IsA("LocalScript") and v.Name == string.lower(tostring(Tn)) then 
                v:Destroy()
        end 
end 

for i, v in pairs(Backpack:GetChildren()) do 
        if v:IsA("HopperBin") and v.Name == tostring(Tn) then 
                v:Destroy()
        end 
end 

for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Model") and v.Name == tostring(Tn) then
                v:Destroy()
        end
end
        
local Main = it("Model", Character)
Main.Name = Tn

local MagicBin = it("Model", Main)
MagicBin.Name = "MagicBin"

local EffectsBin = it("Model", Main)
EffectsBin.Name = "EffectsBin"
Hilt17=part(3,Main,0,0,bc("Medium stone grey"),"Hilt17",vt(0.200000003, 0.200000003, 0.200000003))
Hilt11=part(3,Main,0,0,bc("Medium stone grey"),"Hilt11",vt(0.289999992, 0.200000003, 0.200000003))
Hilt15=part(3,Main,0,0,bc("Medium stone grey"),"Hilt15",vt(0.200000003, 0.200000003, 0.200000003))
Hilt12=part(3,Main,0,0,bc("Medium stone grey"),"Hilt12",vt(0.200000003, 0.200000003, 0.200000003))
Hilt14=part(3,Main,0,0,bc("Medium stone grey"),"Hilt14",vt(0.200000003, 0.200000003, 0.200000003))
Hilt16=part(3,Main,0,0,bc("Medium stone grey"),"Hilt16",vt(0.200000003, 0.200000003, 0.200000003))
Hilt3=part(3,Main,0,0,bc("Medium stone grey"),"Hilt3",vt(0.200000003, 0.200000003, 0.200000003))
Hilt13=part(3,Main,0,0,bc("Medium stone grey"),"Hilt13",vt(0.200000003, 0.200000003, 0.200000003))
Blade9=part(3,Main,0.25,0,bc("White"),"Blade9",vt(0.5200001, 5.10000038, 0.200000003))
Hilt5=part(3,Main,0,0,bc("Medium stone grey"),"Hilt5",vt(0.289999992, 0.200000003, 0.200000003))
Hilt10=part(3,Main,0,0,bc("Medium stone grey"),"Hilt10",vt(0.200000003, 0.200000003, 0.200000003))
Hilt6=part(3,Main,0,0,bc("Medium stone grey"),"Hilt6",vt(0.200000003, 0.200000003, 0.200000003))
Handle15=part(3,Main,0,0,bc("White"),"Handle15",vt(0.200000003, 0.200000003, 0.200000003))
Handle13=part(3,Main,0,0,bc("White"),"Handle13",vt(0.200000003, 0.200000003, 0.200000003))
Handle8=part(3,Main,0,0,bc("Black"),"Handle8",vt(0.400000036, 2.19000006, 0.400000006))
Handle14=part(3,Main,0,0,bc("White"),"Handle14",vt(0.200000003, 0.200000003, 0.200000003))
Handle12=part(3,Main,0,0,bc("White"),"Handle12",vt(0.200000003, 0.200000003, 0.200000003))
Handle7=part(3,Main,0,0,bc("White"),"Handle7",vt(0.200000003, 0.200000003, 0.200000003))
Handle2=part(3,Main,0,0,bc("Medium stone grey"),"Handle2",vt(0.200000003, 0.280000001, 0.400000006))
Handle1=part(3,Main,0,0,bc("White"),"Handle1",vt(0.200000003, 0.200000003, 0.200000003))
Handle3=part(3,Main,0,0,bc("White"),"Handle3",vt(0.200000003, 0.200000003, 0.200000003))
Handle=part(3,Main,0,0,bc("Black"),"Handle",vt(0.200000003, 2.19999981, 0.400000006))
Handle4=part(3,Main,0,0,bc("White"),"Handle4",vt(0.200000003, 0.200000003, 0.200000003))
Handle11=part(3,Main,0,0,bc("White"),"Handle11",vt(0.200000003, 0.200000003, 0.200000003))
Handle5=part(3,Main,0,0,bc("Medium stone grey"),"Handle5",vt(0.400000036, 0.280000001, 0.400000006))
Handle10=part(3,Main,0,0,bc("White"),"Handle10",vt(0.200000003, 0.200000003, 0.200000003))
Handle6=part(3,Main,0,0,bc("Medium stone grey"),"Handle6",vt(0.400000036, 0.280000001, 0.400000006))
Hilt7=part(3,Main,0,0,bc("Medium stone grey"),"Hilt7",vt(0.75, 0.200000003, 0.400000006))
Handle9=part(3,Main,0,0,bc("Black"),"Handle9",vt(0.400000036, 2.19999981, 0.400000006))
Hilt2=part(3,Main,0,0,bc("Medium stone grey"),"Hilt2",vt(0.600000024, 0.200000003, 0.600000024))
Hilt1=part(3,Main,0,0,bc("Medium stone grey"),"Hilt1",vt(0.600000024, 0.200000003, 0.200000003))
Hilt9=part(3,Main,0,0,bc("Medium stone grey"),"Hilt9",vt(0.200000003, 0.200000003, 0.200000003))
Hilt4=part(3,Main,0,0,bc("Medium stone grey"),"Hilt4",vt(0.200000003, 0.200000003, 0.200000003))
Hilt8=part(3,Main,0,0,bc("Medium stone grey"),"Hilt8",vt(0.200000003, 0.200000003, 0.200000003))
Blade1=part(3,Main,0.25,0,bc("White"),"Blade1",vt(0.200000003, 0.579999924, 0.540000081))
Blade10=part(3,Main,0.25,0,bc("White"),"Blade10",vt(0.600000083, 3.81000042, 0.200000003))
Blade11=part(3,Main,0.25,0,bc("White"),"Blade11",vt(0.490000039, 0.469999969, 0.200000003))
Blade12=part(3,Main,0.25,0,bc("White"),"Blade12",vt(0.490000039, 0.469999969, 0.200000003))
Blade13=part(3,Main,0.25,0,bc("White"),"Blade13",vt(0.230000004, 0.200000003, 0.200000003))
Blade14=part(3,Main,0.25,0,bc("White"),"Blade14",vt(0.230000004, 0.200000003, 0.200000003))
Blade15=part(3,Main,0.25,0,bc("White"),"Blade15",vt(0.200000003, 0.200000003, 0.200000003))
Blade16=part(3,Main,0.25,0,bc("White"),"Blade16",vt(0.200000003, 0.219999999, 0.200000003))
Blade17=part(3,Main,0.25,0,bc("White"),"Blade17",vt(0.200000003, 1.18999994, 0.49000001))
Blade18=part(3,Main,0.25,0,bc("White"),"Blade18",vt(0.200000003, 0.200000003, 0.200000003))
Blade2=part(3,Main,0.25,0,bc("White"),"Blade2",vt(0.200000003, 0.200000003, 0.200000003))
Blade3=part(3,Main,0.25,0,bc("White"),"Blade3",vt(0.200000003, 1.66999996, 0.479999989))
Blade4=part(3,Main,0.25,0,bc("White"),"Blade4",vt(0.25999999, 1.69000018, 0.200000003))
Blade5=part(3,Main,0.25,0,bc("White"),"Blade5",vt(0.420000076, 2.75, 0.200000003))
Blade6=part(3,Main,0.25,0,bc("White"),"Blade6",vt(0.25999999, 1.06000018, 0.200000003))
Blade7=part(3,Main,0.25,0,bc("White"),"Blade7",vt(0.25999999, 1.35000014, 0.200000003))
Blade8=part(3,Main,0.25,0,bc("White"),"Blade8",vt(0.420000076, 2.32000017, 0.200000003))
Hitbox=part(3,Main,0,1,bc("Medium stone grey"),"Hitbox",vt(0.810000002, 8.5199995, 0.200000003))

Hilt17Mesh=mesh("CylinderMesh",Hilt17,nil,nil,vt(1, 0.5, 0.25))
Hilt11Mesh=mesh("BlockMesh",Hilt11,nil,nil,vt(1, 0.5, 0.25))
Hilt15Mesh=mesh("CylinderMesh",Hilt15,nil,nil,vt(1, 0.5, 0.25))
Hilt12Mesh=mesh("BlockMesh",Hilt12,nil,nil,vt(0.5, 0.5, 0.25))
Hilt14Mesh=mesh("CylinderMesh",Hilt14,nil,nil,vt(1, 0.5, 1))
Hilt16Mesh=mesh("BlockMesh",Hilt16,nil,nil,vt(0.5, 0.5, 0.25))
Hilt3Mesh=mesh("CylinderMesh",Hilt3,nil,nil,vt(1, 0.5, 1))
Hilt13Mesh=mesh("CylinderMesh",Hilt13,nil,nil,vt(1, 0.5, 1))
Blade9Mesh=mesh("BlockMesh",Blade9,nil,nil,vt(0.899999976, 1, 0.5))
Hilt5Mesh=mesh("BlockMesh",Hilt5,nil,nil,vt(1, 0.5, 0.25))
Hilt10Mesh=mesh("CylinderMesh",Hilt10,nil,nil,vt(1, 0.5, 0.25))
Hilt6Mesh=mesh("CylinderMesh",Hilt6,nil,nil,vt(1, 0.5, 1))
Handle15Mesh=mesh("SpecialMesh",Handle15,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle13Mesh=mesh("SpecialMesh",Handle13,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle8Mesh=mesh("CylinderMesh",Handle8,nil,nil,vt(1, 1, 0.600000024))
Handle14Mesh=mesh("SpecialMesh",Handle14,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle12Mesh=mesh("SpecialMesh",Handle12,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle7Mesh=mesh("SpecialMesh",Handle7,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle2Mesh=mesh("BlockMesh",Handle2,nil,nil,vt(1, 1, 0.649999976))
Handle1Mesh=mesh("SpecialMesh",Handle1,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle3Mesh=mesh("SpecialMesh",Handle3,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
HandleMesh=mesh("BlockMesh",Handle,nil,nil,vt(1, 1, 0.600000024))
Handle4Mesh=mesh("SpecialMesh",Handle4,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle11Mesh=mesh("SpecialMesh",Handle11,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle5Mesh=mesh("CylinderMesh",Handle5,nil,nil,vt(1, 1, 0.649999976))
Handle10Mesh=mesh("SpecialMesh",Handle10,Enum.MeshType.FileMesh,"rbxassetid://9756362",vt(0.165000007, 0.165000007, 0.00999999978))
Handle6Mesh=mesh("CylinderMesh",Handle6,nil,nil,vt(1, 1, 0.649999976))
Hilt7Mesh=mesh("BlockMesh",Hilt7,nil,nil,vt(1, 0.5, 1))
Handle9Mesh=mesh("CylinderMesh",Handle9,nil,nil,vt(1, 1, 0.600000024))
Hilt2Mesh=mesh("BlockMesh",Hilt2,nil,nil,vt(0.899999976, 0.5, 1))
Hilt1Mesh=mesh("BlockMesh",Hilt1,nil,nil,vt(1, 1, 0.75))
Hilt9Mesh=mesh("BlockMesh",Hilt9,nil,nil,vt(0.5, 0.5, 0.25))
Hilt4Mesh=mesh("CylinderMesh",Hilt4,nil,nil,vt(1, 0.5, 0.25))
Hilt8Mesh=mesh("BlockMesh",Hilt8,nil,nil,vt(0.5, 0.5, 0.25))
Blade1Mesh=mesh("SpecialMesh",Blade1,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade10Mesh=mesh("BlockMesh",Blade10,nil,nil,vt(0.899999976, 1, 0.5))
Blade11Mesh=mesh("BlockMesh",Blade11,nil,nil,vt(0.899999976, 1, 0.5))
Blade12Mesh=mesh("BlockMesh",Blade12,nil,nil,vt(0.899999976, 1, 0.5))
Blade13Mesh=mesh("BlockMesh",Blade13,nil,nil,vt(0.899999976, 1, 0.5))
Blade14Mesh=mesh("BlockMesh",Blade14,nil,nil,vt(0.899999976, 1, 0.5))
Blade15Mesh=mesh("SpecialMesh",Blade15,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade16Mesh=mesh("BlockMesh",Blade16,nil,nil,vt(0.899999976, 1, 0.5))
Blade17Mesh=mesh("SpecialMesh",Blade17,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade18Mesh=mesh("SpecialMesh",Blade18,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade2Mesh=mesh("SpecialMesh",Blade2,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade3Mesh=mesh("SpecialMesh",Blade3,Enum.MeshType.Wedge,"",vt(0.5, 1, 1))
Blade4Mesh=mesh("BlockMesh",Blade4,nil,nil,vt(0.899999976, 1, 0.5))
Blade5Mesh=mesh("BlockMesh",Blade5,nil,nil,vt(0.899999976, 1, 0.5))
Blade6Mesh=mesh("BlockMesh",Blade6,nil,nil,vt(0.899999976, 1, 0.5))
Blade7Mesh=mesh("BlockMesh",Blade7,nil,nil,vt(0.899999976, 1, 0.5))
Blade8Mesh=mesh("BlockMesh",Blade8,nil,nil,vt(0.899999976, 1, 0.5))
Hilt1Mesh=mesh("BlockMesh",Hitbox,nil,nil,vt(1, 1, 0.75))

Hilt17Weld=weld(Hilt17,Handle,Hilt17,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.457622528, -1.11945462, -0.145050049, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt11Weld=weld(Hilt11,Handle,Hilt11,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.0037612915, -1.12150526, -0.461910248, -1.06936568e-005, 5.77834871e-005, -0.999996424, -7.43104756e-005, 1.00008583, 5.77949249e-005, 1.00007868, 7.44559511e-005, -9.76776937e-006))
Hilt15Weld=weld(Hilt15,Handle,Hilt15,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.457572937, -1.11945891, 0.141166687, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt12Weld=weld(Hilt12,Handle,Hilt12,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.404922485, -1.11943936, -0.145050049, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt14Weld=weld(Hilt14,Handle,Hilt14,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.273647308, -1.12032151, 0.201026917, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt16Weld=weld(Hilt16,Handle,Hilt16,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.404937744, -1.11946464, 0.141155243, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt3Weld=weld(Hilt3,Handle,Hilt3,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.273616791, -1.12033963, -0.198993683, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt13Weld=weld(Hilt13,Handle,Hilt13,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.275409698, -1.12033486, 0.200931549, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Blade9Weld=weld(Blade9,Handle,Blade9,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.0333178043, 3.8683424, 0.000338554382, 1.00010002, 0.000703109195, -9.48159723e-005, 0.000706287858, -1.00008559, -4.03726153e-006, -9.35117641e-005, 3.24808389e-006, -0.999996305))
Hilt5Weld=weld(Hilt5,Handle,Hilt5,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.00389099121, 1.11949492, -0.46629715, -9.87974199e-005, 7.27375082e-005, -0.999996424, 7.42931588e-005, -1.00008583, -7.27541628e-005, -1.00007868, -7.444519e-005, 9.78631724e-005))
Hilt10Weld=weld(Hilt10,Handle,Hilt10,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.46213913, 1.12150216, 0.14138031, -1.00007868, -4.81130833e-008, 8.74186662e-005, -1.08400428e-007, -1.00008583, -0.000138106014, 8.83466491e-005, -0.000138102478, 0.999996424))
Hilt6Weld=weld(Hilt6,Handle,Hilt6,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.275440216, -1.12034822, -0.19909668, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle15Weld=weld(Handle15,Handle,Handle15,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-2.67028809e-005, -0.801521063, 0.121692657, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle13Weld=weld(Handle13,Handle,Handle13,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-2.28881836e-005, -0.400797606, 0.121746063, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle8Weld=weld(Handle8,Handle,Handle8,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.100402832, -0.0031414032, -0.000217437744, 1.00007868, 6.75279625e-006, -6.48646019e-005, -6.61071726e-006, 1.00008583, -3.46608649e-005, 6.57905184e-005, 3.46802844e-005, 0.999996424))
Handle14Weld=weld(Handle14,Handle,Handle14,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-5.7220459e-005, -0.801545382, -0.121162415, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle12Weld=weld(Handle12,Handle,Handle12,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(1.52587891e-005, -0.400773525, -0.121177673, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle7Weld=weld(Handle7,Handle,Handle7,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(4.19616699e-005, 0.400630951, 0.121704102, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle2Weld=weld(Handle2,Handle,Handle2,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(1.90734863e-005, 1.21269119, 1.90734863e-005, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle1Weld=weld(Handle1,Handle,Handle1,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-6.10351563e-005, 0.801368952, 0.12171936, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle3Weld=weld(Handle3,Handle,Handle3,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(7.62939453e-006, 0.400652409, -0.121212006, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle4Weld=weld(Handle4,Handle,Handle4,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-8.01086426e-005, 0.801396608, -0.121200562, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle11Weld=weld(Handle11,Handle,Handle11,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-3.05175781e-005, -8.48770142e-005, 0.121711731, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle5Weld=weld(Handle5,Handle,Handle5,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.100139618, 1.21268964, -0.000148773193, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle10Weld=weld(Handle10,Handle,Handle10,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-6.10351563e-005, -8.58306885e-005, -0.121185303, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle6Weld=weld(Handle6,Handle,Handle6,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.100006104, 1.21272635, 2.67028809e-005, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt7Weld=weld(Hilt7,Handle,Hilt7,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.0011138916, -1.12035966, -0.000301361084, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Handle9Weld=weld(Handle9,Handle,Handle9,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.100112915, -8.27312469e-005, -1.52587891e-005, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt2Weld=weld(Hilt2,Handle,Hilt2,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.0011138916, -1.12035966, -0.000301361084, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt1Weld=weld(Hilt1,Handle,Hilt1,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.00114059448, -1.25527358, -0.000255584717, 1.00007868, 7.21568938e-008, 4.60386218e-007, 7.21566451e-008, 1.00008583, 7.9307938e-009, 4.6038258e-007, 7.93806976e-009, 0.999996424))
Hilt9Weld=weld(Hilt9,Handle,Hilt9,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.409454346, 1.12153077, -0.144813538, -1.00007868, -4.81130833e-008, 8.74186662e-005, -1.08400428e-007, -1.00008583, -0.000138106014, 8.83466491e-005, -0.000138102478, 0.999996424))
Hilt4Weld=weld(Hilt4,Handle,Hilt4,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.462165833, 1.12153316, -0.144828796, -1.00007868, -4.81130833e-008, 8.74186662e-005, -1.08400428e-007, -1.00008583, -0.000138106014, 8.83466491e-005, -0.000138102478, 0.999996424))
Hilt8Weld=weld(Hilt8,Handle,Hilt8,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.409484863, 1.12151933, 0.141399384, -1.00007868, -4.81130833e-008, 8.74186662e-005, -1.08400428e-007, -1.00008583, -0.000138106014, 8.83466491e-005, -0.000138102478, 0.999996424))
Blade1Weld=weld(Blade1,Handle,Blade1,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.000437736511, -9.34721851, 0.827681899, 0.000351174298, -0.000148526902, 0.999995887, -0.106138475, 0.994437933, 0.000185434037, -0.99444443, -0.106136039, 0.000333891279))
Blade10Weld=weld(Blade10,Handle,Blade10,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.00660872459, 4.51431751, 8.77380371e-005, 1.00009, 0.000703894009, -9.4286981e-005, 0.000705496001, -1.00008559, -3.86945794e-006, -9.40407408e-005, 3.41546001e-006, -0.999996305))
Blade11Weld=weld(Blade11,Handle,Blade11,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.06901801, -7.80190563, -0.000305175781, 0.989713788, 0.14376092, 3.26523987e-005, -0.143766329, 0.989699125, 1.40180964e-005, -3.16402184e-005, -1.78200462e-005, 0.999996305))
Blade12Weld=weld(Blade12,Handle,Blade12,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.226474524, 2.80856323, -0.000195503235, 0.997143149, -0.0768536478, -9.97968309e-005, -0.0768516213, -0.997128606, 2.88784577e-007, -9.82304191e-005, 6.65828702e-006, -0.999996245))
Blade13Weld=weld(Blade13,Handle,Blade13,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.568722963, -7.9933815, -0.000526428223, 0.998305798, 0.0599297546, 2.65152848e-005, -0.0599343963, 0.998288512, 1.29768741e-005, -2.73143451e-005, -1.37269999e-005, 0.999996006))
Blade14Weld=weld(Blade14,Handle,Blade14,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.171463251, 2.68863964, -6.19888306e-005, 1.00007272, 0.00736879185, -9.45004576e-005, 0.00737197511, -1.00005865, -4.21920777e-006, -9.33028423e-005, 2.81876601e-006, -0.999996126))
Blade15Weld=weld(Blade15,Handle,Blade15,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.000944137573, 7.56833935, 0.275351524, -0.000437307142, 0.00014346448, -0.999995887, 0.0202673767, -0.999880552, -0.000153110537, -0.99989754, -0.0202635806, 0.000435784314))
Blade16Weld=weld(Blade16,Handle,Blade16,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.864399433, -7.489645, -0.000500679016, 0.992487252, -0.12313544, 1.14010618e-005, 0.123134181, 0.992476463, 8.45576506e-006, -1.32677669e-005, -6.39483005e-006, 0.999996305))
Blade17Weld=weld(Blade17,Handle,Blade17,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.000581741333, -7.55102921, -0.13477993, -0.00034879928, 0.000129672044, -0.999996185, -0.0202675145, 0.999880493, 0.000137549418, 0.999897897, 0.0202635974, -0.000347658846))
Blade18Weld=weld(Blade18,Handle,Blade18,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.000557899475, 7.52509022, 0.275359869, -0.000437307142, 0.00014346448, -0.999995887, 0.0202673767, -0.999880552, -0.000153110537, -0.99989754, -0.0202635806, 0.000435784314))
Blade2Weld=weld(Blade2,Handle,Blade2,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.00057888031, 7.48215389, 0.275330186, -0.000437307142, 0.00014346448, -0.999995887, 0.0202673767, -0.999880552, -0.000153110537, -0.99989754, -0.0202635806, 0.000435784314))
Blade3Weld=weld(Blade3,Handle,Blade3,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.000393867493, -7.04902267, 0.0776619911, 0.000349696755, -0.000144917256, 0.999996126, -0.0201287661, 0.999883413, 0.000152739129, -0.999900341, -0.0201249551, 0.000348230271))
Blade4Weld=weld(Blade4,Handle,Blade4,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.345176935, -7.19837856, -0.00014591217, 0.999677896, 0.0291204583, 2.30636306e-005, -0.0291243587, 0.999661684, 1.2259512e-005, -2.42160258e-005, -1.21488301e-005, 0.999996483))
Blade5Weld=weld(Blade5,Handle,Blade5,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.0613408089, -6.66463852, -0.000297546387, 1.00008607, 0.00572431087, 2.27986129e-005, -0.00572792487, 1.0000695, 1.18127937e-005, -2.42688948e-005, -1.11469435e-005, 0.999996006))
Blade6Weld=weld(Blade6,Handle,Blade6,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.830851674, -8.54523373, -0.000294685364, 0.996045947, 0.0899090096, 2.84904072e-005, -0.0899123698, 0.996036172, 1.33077137e-005, -2.80210697e-005, -1.52425491e-005, 0.999996364))
Blade7Weld=weld(Blade7,Handle,Blade7,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.112965345, 1.97472, 0.000140190125, 0.999840677, -0.0226954129, -9.64816718e-005, -0.0226928778, -0.999828398, -2.81470602e-006, -9.53230483e-005, 4.35582297e-006, -0.999996305))
Blade8Weld=weld(Blade8,Handle,Blade8,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.385430336, -8.07253075, -0.000302314758, 0.997883201, 0.0665779561, 2.74792801e-005, -0.0665825158, 0.997867644, 1.30069748e-005, -2.8088989e-005, -1.40299308e-005, 0.999996066))
HitboxWeld=weld(Hitbox,Handle,Hitbox,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.106161118, -5.41620255, -0.000254631042, 1.00046325, -6.90831803e-006, -1.75475213e-006, -3.0976953e-006, 1.00042915, 1.63710138e-006, -8.52004405e-007, 7.30804459e-007, 0.999981821))
--[[
HandleWeld=weld(Handle,Torso,Handle,euler(0,0,rad(140))*cf(0,-2.5,0.5))
HandleWeld.Part0 = RightArm
HandleWeld.C0 = euler(-rad(90),rad(90),0)*cf(0.95,0,0)
]]
local Wing=it("Model",Main)
Wing.Name = "Wing"

WingBase1=part(3,Wing,0.5,0,bc("Black"),"WingBase1",vt(0.419999987, 0.349999994, 0.349999994))
WingBase2=part(3,Wing,0.5,0,bc("Black"),"WingBase2",vt(0.409999967, 0.349999994, 0.349999994))
WingBase18=part(3,Wing,0.5,0,bc("Black"),"WingBase18",vt(0.349999994, 0.200000003, 0.75000006))
WingBase16=part(3,Wing,0.5,0,bc("Black"),"WingBase16",vt(0.350000054, 0.200000003, 0.300000012))
WingBase13=part(3,Wing,0.5,0,bc("Black"),"WingBase13",vt(0.200000003, 0.349999994, 0.200000003))
WingBase17=part(3,Wing,0.5,0,bc("Black"),"WingBase17",vt(0.349999994, 0.200000003, 0.350000054))
WingBase6=part(3,Wing,0.5,0,bc("Black"),"WingBase6",vt(0.639999986, 0.349999994, 0.349999994))
WingBase19=part(3,Wing,0.5,0,bc("Black"),"WingBase19",vt(0.349999994, 0.200000003, 0.75000006))
WingBase12=part(3,Wing,0.5,0,bc("Black"),"WingBase12",vt(0.349999994, 0.200000003, 0.280000001))
WingBase10=part(3,Wing,0.5,0,bc("Black"),"WingBase10",vt(0.300000012, 0.349999994, 0.270000011))
WingBase14=part(3,Wing,0.5,0,bc("Black"),"WingBase14",vt(0.350000054, 0.209999993, 0.200000003))
WingBase9=part(3,Wing,0.5,0,bc("Black"),"WingBase9",vt(0.289999962, 0.349999994, 0.460000008))
WingBase11=part(3,Wing,0.5,0,bc("Black"),"WingBase11",vt(0.350000054, 0.309999973, 0.400000006))
WingBase5=part(3,Wing,0.5,0,bc("Black"),"WingBase5",vt(0.409999967, 0.349999994, 0.349999994))
WingBase8=part(3,Wing,0.5,0,bc("Black"),"WingBase8",vt(0.879999995, 0.349999994, 0.349999994))
WingBase4=part(3,Wing,0.5,0,bc("Black"),"WingBase4",vt(0.419999987, 0.349999994, 0.349999994))
WingBase15=part(3,Wing,0.5,0,bc("Black"),"WingBase15",vt(0.349999994, 0.200000003, 0.350000054))
WingBase20=part(3,Wing,0.5,0,bc("Black"),"WingBase20",vt(0.350000054, 0.209999993, 0.400000006))
WingBase3=part(3,Wing,0.5,0,bc("Black"),"WingBase3",vt(0.399999976, 0.349999994, 0.349999994))
WingBase7=part(3,Wing,0.5,0,bc("Black"),"WingBase7",vt(1.04999995, 0.349999994, 0.350000024))
Feather1=part(3,Wing,0,0,bc("Black"),"Feather1",vt(0.419999987, 0.349999994, 1.00999999))
Feather2=part(3,Wing,0,0,bc("Black"),"Feather2",vt(0.419999987, 0.349999994, 1.06999993))
Feather3=part(3,Wing,0,0,bc("Black"),"Feather3",vt(0.419999987, 0.349999994, 1.06999993))
Feather4=part(3,Wing,0,0,bc("Black"),"Feather4",vt(0.419999987, 0.349999994, 1.06999993))
Feather5=part(3,Wing,0,0,bc("Black"),"Feather5",vt(0.419999987, 0.349999994, 0.969999969))
Feather6=part(3,Wing,0,0,bc("Black"),"Feather6",vt(0.419999987, 0.349999994, 0.919999957))
Feather7=part(3,Wing,0,0,bc("Black"),"Feather7",vt(0.419999987, 0.349999994, 0.969999969))
Feather8=part(3,Wing,0,0,bc("Black"),"Feather8",vt(0.419999987, 0.349999994, 0.889999986))
Feather9=part(3,Wing,0,0,bc("Black"),"Feather9",vt(0.419999987, 0.349999994, 1.46000004))
Feather10=part(3,Wing,0,0,bc("Black"),"Feather10",vt(0.419999987, 0.349999994, 1.46000004))
Feather11=part(3,Wing,0,0,bc("Black"),"Feather11",vt(0.419999987, 0.349999994, 1.32000005))
Feather12=part(3,Wing,0,0,bc("Black"),"Feather12",vt(0.419999987, 0.349999994, 1.46000004))
Feather13=part(3,Wing,0,0,bc("Black"),"Feather13",vt(0.419999987, 0.349999994, 1.13999999))
Feather14=part(3,Wing,0,0,bc("Black"),"Feather14",vt(0.419999987, 0.349999994, 1.24000001))
Feather15=part(3,Wing,0,0,bc("Black"),"Feather15",vt(0.419999987, 0.349999994, 1.46000004))
Feather16=part(3,Wing,0,0,bc("Black"),"Feather16",vt(0.419999987, 0.349999994, 1.46000004))
Feather17=part(3,Wing,0,0,bc("Black"),"Feather17",vt(0.419999987, 0.349999994, 1.46000004))
Feather18=part(3,Wing,0,0,bc("Black"),"Feather18",vt(0.419999987, 0.349999994, 1.46000004))
Feather19=part(3,Wing,0,0,bc("Black"),"Feather19",vt(0.419999987, 0.349999994, 1.46000004))
Feather20=part(3,Wing,0,0,bc("Black"),"Feather20",vt(0.419999987, 0.349999994, 1.46000004))
Feather21=part(3,Wing,0,0,bc("Black"),"Feather21",vt(0.419999987, 0.349999994, 1.46000004))
Feather22=part(3,Wing,0,0,bc("Black"),"Feather22",vt(0.419999987, 0.349999994, 1.46000004))
Feather23=part(3,Wing,0,0,bc("Black"),"Feather23",vt(0.419999987, 0.349999994, 1.46000004))
Feather24=part(3,Wing,0,0,bc("Black"),"Feather24",vt(0.419999987, 0.349999994, 1.46000004))
Feather25=part(3,Wing,0,0,bc("Black"),"Feather25",vt(0.419999987, 0.349999994, 1.46000004))
Feather26=part(3,Wing,0,0,bc("Black"),"Feather26",vt(0.419999987, 0.349999994, 1.46000004))
Feather27=part(3,Wing,0,0,bc("Black"),"Feather27",vt(0.419999987, 0.349999994, 1.46000004))
Feather28=part(3,Wing,0,0,bc("Black"),"Feather28",vt(0.419999987, 0.349999994, 1.46000004))
Feather29=part(3,Wing,0,0,bc("Black"),"Feather29",vt(0.419999987, 0.349999994, 1.46000004))
Feather30=part(3,Wing,0,0,bc("Black"),"Feather30",vt(0.419999987, 0.349999994, 1.46000004))
Feather31=part(3,Wing,0,0,bc("Black"),"Feather31",vt(0.419999987, 0.349999994, 1.18000007))
Feather32=part(3,Wing,0,0,bc("Black"),"Feather32",vt(0.419999987, 0.349999994, 1.19000006))
Feather33=part(3,Wing,0,0,bc("Black"),"Feather33",vt(0.419999987, 0.349999994, 1.20000005))

WingBase1Mesh=mesh("BlockMesh",WingBase1,nil,nil,vt(1, 0.75, 1))
WingBase2Mesh=mesh("BlockMesh",WingBase2,nil,nil,vt(1, 0.75, 1))
WingBase18Mesh=mesh("SpecialMesh",WingBase18,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase16Mesh=mesh("SpecialMesh",WingBase16,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase13Mesh=mesh("BlockMesh",WingBase13,nil,nil,vt(1, 0.75, 1))
WingBase17Mesh=mesh("SpecialMesh",WingBase17,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase6Mesh=mesh("BlockMesh",WingBase6,nil,nil,vt(1, 0.75, 1))
WingBase19Mesh=mesh("SpecialMesh",WingBase19,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase12Mesh=mesh("SpecialMesh",WingBase12,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase10Mesh=mesh("BlockMesh",WingBase10,nil,nil,vt(1, 0.75, 1))
WingBase14Mesh=mesh("SpecialMesh",WingBase14,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase9Mesh=mesh("BlockMesh",WingBase9,nil,nil,vt(1, 0.75, 1))
WingBase11Mesh=mesh("SpecialMesh",WingBase11,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase5Mesh=mesh("BlockMesh",WingBase5,nil,nil,vt(1, 0.75, 1))
WingBase8Mesh=mesh("BlockMesh",WingBase8,nil,nil,vt(1, 0.75, 1))
WingBase4Mesh=mesh("BlockMesh",WingBase4,nil,nil,vt(1, 0.75, 1))
WingBase15Mesh=mesh("SpecialMesh",WingBase15,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase20Mesh=mesh("SpecialMesh",WingBase20,Enum.MeshType.Wedge,"",vt(0.75, 1, 1))
WingBase3Mesh=mesh("BlockMesh",WingBase3,nil,nil,vt(1, 0.75, 1))
WingBase7Mesh=mesh("BlockMesh",WingBase7,nil,nil,vt(1, 0.75, 1))
Feather1Mesh=mesh("SpecialMesh",Feather1,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather2Mesh=mesh("SpecialMesh",Feather2,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather3Mesh=mesh("SpecialMesh",Feather3,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather4Mesh=mesh("SpecialMesh",Feather4,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather5Mesh=mesh("SpecialMesh",Feather5,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather6Mesh=mesh("SpecialMesh",Feather6,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather7Mesh=mesh("SpecialMesh",Feather7,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather8Mesh=mesh("SpecialMesh",Feather8,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather9Mesh=mesh("SpecialMesh",Feather9,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather10Mesh=mesh("SpecialMesh",Feather10,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather11Mesh=mesh("SpecialMesh",Feather11,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather12Mesh=mesh("SpecialMesh",Feather12,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather13Mesh=mesh("SpecialMesh",Feather13,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather14Mesh=mesh("SpecialMesh",Feather14,Enum.MeshType.Sphere,"",vt(1, 0.75, 1))
Feather15Mesh=mesh("SpecialMesh",Feather15,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather16Mesh=mesh("SpecialMesh",Feather16,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather17Mesh=mesh("SpecialMesh",Feather17,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather18Mesh=mesh("SpecialMesh",Feather18,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather19Mesh=mesh("SpecialMesh",Feather19,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather20Mesh=mesh("SpecialMesh",Feather20,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather21Mesh=mesh("SpecialMesh",Feather21,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather22Mesh=mesh("SpecialMesh",Feather22,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather23Mesh=mesh("SpecialMesh",Feather23,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather24Mesh=mesh("SpecialMesh",Feather24,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather25Mesh=mesh("SpecialMesh",Feather25,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather26Mesh=mesh("SpecialMesh",Feather26,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather27Mesh=mesh("SpecialMesh",Feather27,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather28Mesh=mesh("SpecialMesh",Feather28,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather29Mesh=mesh("SpecialMesh",Feather29,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather30Mesh=mesh("SpecialMesh",Feather30,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather31Mesh=mesh("SpecialMesh",Feather31,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather32Mesh=mesh("SpecialMesh",Feather32,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))
Feather33Mesh=mesh("SpecialMesh",Feather33,Enum.MeshType.Sphere,"",vt(0.75, 0.5, 1))

WingBase2Weld=weld(WingBase2,WingBase1,WingBase2,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.355962753, -5.34057617e-005, -0.0460422039, 0.965922117, -6.4935989e-007, -0.258824944, 9.45273655e-007, 1.00000358, 6.96481266e-007, 0.258822531, -7.75792159e-007, 0.96592319))
WingBase18Weld=weld(WingBase18,WingBase1,WingBase18,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-7.82012939e-005, 1.71768296, -0.0596590042, 2.14519696e-006, 1.00000286, 3.59664432e-006, -0.25884521, -2.85406827e-006, 0.965918303, 0.965916634, -2.88861565e-006, 0.258844018))
WingBase16Weld=weld(WingBase16,WingBase1,WingBase16,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(6.48498535e-005, 1.31769586, 0.584618092, -3.92836546e-006, -1.00000286, 3.26387226e-006, -0.258847058, 4.23423035e-006, 0.965917826, -0.965916038, 2.8351908e-006, -0.258845866))
WingBase13Weld=weld(WingBase13,WingBase1,WingBase13,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.534636021, -5.34057617e-005, 1.50768614, 0.965918958, 5.23543804e-007, 0.258833051, -2.02715682e-007, 1.00000358, -7.13421912e-007, -0.258834541, 7.17566309e-007, 0.965921044))
WingBase17Weld=weld(WingBase17,WingBase1,WingBase17,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-9.53674316e-006, 1.31768668, -0.259648323, 2.14519696e-006, 1.00000286, 3.59664432e-006, -0.25884521, -2.85406827e-006, 0.965918303, 0.965916634, -2.88861565e-006, 0.258844018))
WingBase6Weld=weld(WingBase6,WingBase1,WingBase6,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.45269644, -7.62939453e-005, -1.00459003, 0.258845925, -2.64582059e-006, -0.965917945, 3.66035738e-006, 1.00000358, -1.67449002e-006, 0.965915799, -2.9591165e-006, 0.258844495))
WingBase19Weld=weld(WingBase19,WingBase1,WingBase19,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(7.82012939e-005, -1.91767323, -0.0596580505, -2.31264426e-006, -1.00000322, -3.57980252e-006, 0.258846998, 2.78636048e-006, -0.965917766, 0.965915859, -3.03169782e-006, 0.258845687))
WingBase12Weld=weld(WingBase12,WingBase1,WingBase12,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-6.86645508e-005, 1.9176805, -1.05459642, 2.20304946e-006, 1.00000322, 3.3807587e-006, -0.25884515, -2.62247454e-006, 0.965918303, 0.965916336, -2.87430998e-006, 0.258843809))
WingBase10Weld=weld(WingBase10,WingBase1,WingBase10,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.58458424, -7.2479248e-005, 1.88266897, 0.965918958, 5.23543804e-007, 0.258833051, -2.02715682e-007, 1.00000358, -7.13421912e-007, -0.258834541, 7.17566309e-007, 0.965921044))
WingBase14Weld=weld(WingBase14,WingBase1,WingBase14,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-6.86645508e-005, -1.52269363, 0.634617329, 4.18074433e-006, 1.00000322, -3.18485695e-006, 0.25884515, -4.23132315e-006, -0.965918303, -0.965916336, 3.08512517e-006, -0.258843809))
WingBase9Weld=weld(WingBase9,WingBase1,WingBase9,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.33960438, -6.67572021e-005, 1.78767776, 0.965918958, 5.23543804e-007, 0.258833051, -2.02715682e-007, 1.00000358, -7.13421912e-007, -0.258834541, 7.17566309e-007, 0.965921044))
WingBase11Weld=weld(WingBase11,WingBase1,WingBase11,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.000116348267, 1.86269534, 1.91455078, -3.92937591e-006, -1.00000322, 3.26764257e-006, -0.258847028, 4.24622749e-006, 0.965917766, -0.965915859, 2.8208849e-006, -0.258845717))
WingBase5Weld=weld(WingBase5,WingBase1,WingBase5,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.19561648, -7.43865967e-005, -0.672100067, 0.500008821, -2.24392556e-006, -0.866019726, 3.48486537e-006, 1.00000358, -5.31528201e-007, 0.866017342, -2.5930683e-006, 0.500007927))
WingBase8Weld=weld(WingBase8,WingBase1,WingBase8,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-2.03245592, -8.01086426e-005, 0.0426003933, 0.837390959, -1.4928147e-006, -0.54660207, 2.30550995e-006, 1.00000358, 7.36536492e-007, 0.546599805, -1.71642284e-006, 0.837391019))
WingBase4Weld=weld(WingBase4,WingBase1,WingBase4,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.973057508, -6.29425049e-005, -0.387414217, 0.707102954, -1.74793638e-006, -0.707109332, 2.81738471e-006, 1.00000358, 3.43376826e-007, 0.707106888, -2.07064977e-006, 0.707102656))
WingBase15Weld=weld(WingBase15,WingBase1,WingBase15,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(9.53674316e-006, -1.5176872, -0.259640694, -2.31264426e-006, -1.00000322, -3.57980252e-006, 0.258846998, 2.78636048e-006, -0.965917766, 0.965915859, -3.03169782e-006, 0.258845687))
WingBase20Weld=weld(WingBase20,WingBase1,WingBase20,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(6.67572021e-005, 1.91268194, 0.634614944, -3.92937591e-006, -1.00000322, 3.26764257e-006, -0.258847028, 4.24622749e-006, 0.965917766, -0.965915859, 2.8208849e-006, -0.258845717))
WingBase3Weld=weld(WingBase3,WingBase1,WingBase3,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.683662415, -5.91278076e-005, -0.18256712, 0.866019964, -1.37188908e-006, -0.500006676, 2.09364907e-006, 1.00000358, 7.94631831e-007, 0.50000447, -1.57662748e-006, 0.866020083))
WingBase7Weld=weld(WingBase7,WingBase1,WingBase7,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.959616661, -6.29425049e-005, 1.73267627, 0.965918958, 5.23543804e-007, 0.258833051, -2.02715682e-007, 1.00000358, -7.13421912e-007, -0.258834541, 7.17566309e-007, 0.965921044))
Feather1Weld=weld(Feather1,WingBase1,Feather1,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.540187359, -7.05718994e-005, -0.598245144, 0.866019964, -1.37188908e-006, -0.500006676, 2.09364907e-006, 1.00000358, 7.94632115e-007, 0.50000447, -1.57662771e-006, 0.866020083))
Feather2Weld=weld(Feather2,WingBase1,Feather2,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.718423367, -7.43865967e-005, -0.832182407, 0.707102954, -1.91576464e-006, -0.707109332, 3.02501803e-006, 1.00000358, 3.13665907e-007, 0.707106888, -2.19646176e-006, 0.707102656))
Feather3Weld=weld(Feather3,WingBase1,Feather3,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.740187645, -7.43865967e-005, -0.622644901, 0.866019964, -1.37188908e-006, -0.500006676, 2.09364907e-006, 1.00000358, 7.94632115e-007, 0.50000447, -1.57662771e-006, 0.866020083))
Feather4Weld=weld(Feather4,WingBase1,Feather4,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.00674868, -8.77380371e-005, -0.832184792, 0.707102954, -1.91576464e-006, -0.707109332, 3.02501803e-006, 1.00000358, 3.13665907e-007, 0.707106888, -2.19646176e-006, 0.707102656))
Feather5Weld=weld(Feather5,WingBase1,Feather5,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.474379539, -5.91278076e-005, -0.418046474, 0.965922058, -7.55705571e-007, -0.258825064, 1.06738821e-006, 1.00000358, 7.41331633e-007, 0.25882259, -8.50720994e-007, 0.965923071))
Feather6Weld=weld(Feather6,WingBase1,Feather6,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.198741913, -5.53131104e-005, -0.270505488, 0.999997318, -1.0920968e-007, -9.23871994e-007, 2.26462532e-007, 1.00000358, 1.83415111e-007, -1.1920929e-006, -6.82173891e-008, 0.999998987))
Feather7Weld=weld(Feather7,WingBase1,Feather7,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.254669189, -6.10351563e-005, -0.357559443, 0.965922058, -7.55705571e-007, -0.258825064, 1.06738821e-006, 1.00000358, 7.41331633e-007, 0.25882259, -8.50720994e-007, 0.965923071))
Feather8Weld=weld(Feather8,WingBase1,Feather8,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.00175094604, -3.05175781e-005, -0.255502999, 0.999997318, -1.0920968e-007, -9.23871994e-007, 2.26462532e-007, 1.00000358, 1.83415111e-007, -1.1920929e-006, -6.82173891e-008, 0.999998987))
Feather9Weld=weld(Feather9,WingBase1,Feather9,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.10341501, -0.000112533569, -2.11767769, 0.02479285, -2.77653771e-006, -0.999691665, 3.23537552e-006, 1.00000358, -2.58485534e-006, 0.999689817, -3.05024196e-006, 0.0247907937))
Feather10Weld=weld(Feather10,WingBase1,Feather10,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.20839906, -0.000104904175, -2.38045979, -0.0195948482, -2.78577659e-006, -0.999807, 3.11053736e-006, 1.00000358, -2.72977104e-006, 0.999805212, -3.04847504e-006, -0.0195969343))
Feather11Weld=weld(Feather11,WingBase1,Feather11,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.28466725, -9.72747803e-005, -1.48626804, 0.344489813, -2.56149156e-006, -0.938789427, 3.70431189e-006, 1.00000358, -1.29701994e-006, 0.938787222, -2.88101978e-006, 0.344488561))
Feather12Weld=weld(Feather12,WingBase1,Feather12,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.45404506, -0.000108718872, -1.65424347, 0.282669187, -2.62445383e-006, -0.959216833, 3.6791389e-006, 1.00000358, -1.57118575e-006, 0.959214747, -2.9399539e-006, 0.282667816))
Feather13Weld=weld(Feather13,WingBase1,Feather13,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.23247051, -9.53674316e-005, -0.984697342, 0.639259934, -2.0823777e-006, -0.76899004, 3.27914222e-006, 1.00000358, 3.57500198e-008, 0.768987298, -2.38069083e-006, 0.639259219))
Feather14Weld=weld(Feather14,WingBase1,Feather14,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.16015279, -8.77380371e-005, -1.32011509, 0.418463826, -2.47104867e-006, -0.908232927, 3.68704877e-006, 1.00000358, -9.60744728e-007, 0.908230603, -2.79198321e-006, 0.418462664))
Feather15Weld=weld(Feather15,WingBase1,Feather15,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.10644126, -0.000137329102, -2.78042984, -0.0195948482, -2.78577659e-006, -0.999807, 3.11053736e-006, 1.00000358, -2.72977104e-006, 0.999805212, -3.04847504e-006, -0.0195969343))
Feather16Weld=weld(Feather16,WingBase1,Feather16,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.18360949, -0.000131607056, -2.594666, 0.0685354769, -2.76265814e-006, -0.997647822, 3.34555079e-006, 1.00000358, -2.43218915e-006, 0.997645974, -3.04614036e-006, 0.0685334802))
Feather17Weld=weld(Feather17,WingBase1,Feather17,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.40957952, -0.000133514404, -2.28203964, 0.221879438, -2.67591008e-006, -0.975073338, 3.6216411e-006, 1.00000358, -1.83167879e-006, 0.975071311, -2.98508553e-006, 0.221877888))
Feather18Weld=weld(Feather18,WingBase1,Feather18,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.12435305, -0.00012588501, -2.29955244, 0.182672456, -2.70384044e-006, -0.983173072, 3.56828878e-006, 1.00000358, -1.99370947e-006, 0.983171165, -3.007749e-006, 0.182670817))
Feather19Weld=weld(Feather19,WingBase1,Feather19,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.770295978, -0.000104904175, -1.73867226, 0.344052047, -2.56197973e-006, -0.938949943, 3.70425846e-006, 1.00000358, -1.29899013e-006, 0.938947797, -2.88148544e-006, 0.344050765))
Feather20Weld=weld(Feather20,WingBase1,Feather20,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.729023933, -8.01086426e-005, -1.25784135, 0.612863302, -2.14008992e-006, -0.790188193, 3.35976074e-006, 1.00000358, -7.82527536e-008, 0.79018569, -2.44365083e-006, 0.612862706))
Feather21Weld=weld(Feather21,WingBase1,Feather21,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.30062783, -0.000102996826, -1.74829721, 0.414175808, -2.47676689e-006, -0.910196245, 3.68953033e-006, 1.00000358, -9.80394589e-007, 0.91019398, -2.79772644e-006, 0.414174676))
Feather22Weld=weld(Feather22,WingBase1,Feather22,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-1.15844178, -0.000110626221, -2.05048847, 0.268546164, -2.63731226e-006, -0.963266253, 3.66859877e-006, 1.00000358, -1.63260677e-006, 0.963264048, -2.95154655e-006, 0.268544674))
Feather23Weld=weld(Feather23,WingBase1,Feather23,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.77013582, -0.000104904175, -1.89136219, 0.260025412, -2.64480036e-006, -0.965601146, 3.66140216e-006, 1.00000358, -1.6694114e-006, 0.96559906, -2.95821246e-006, 0.260023952))
Feather24Weld=weld(Feather24,WingBase1,Feather24,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.884355307, -0.000112533569, -1.56190538, 0.485016644, -2.37426093e-006, -0.874504387, 3.62381297e-006, 1.00000358, -6.54962321e-007, 0.874501944, -2.69298084e-006, 0.485015661))
Feather25Weld=weld(Feather25,WingBase1,Feather25,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.628379941, -9.72747803e-005, -1.47733831, 0.449624032, -2.42765259e-006, -0.893217325, 3.66330869e-006, 1.00000358, -8.17663818e-007, 0.89321506, -2.74798163e-006, 0.449622989))
Feather26Weld=weld(Feather26,WingBase1,Feather26,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.593516827, -9.15527344e-005, -1.09148264, 0.651592493, -2.05413653e-006, -0.758568466, 3.23810764e-006, 1.00000358, 8.80448283e-008, 0.758565724, -2.34970616e-006, 0.651591718))
Feather27Weld=weld(Feather27,WingBase1,Feather27,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.459043741, -6.67572021e-005, -1.0271709, 0.648452342, -2.06140771e-006, -0.76125443, 3.2487651e-006, 1.00000358, 7.47939453e-008, 0.761251688, -2.35769448e-006, 0.648451626))
Feather28Weld=weld(Feather28,WingBase1,Feather28,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.149277449, -7.05718994e-005, -0.906393528, 0.684335113, -1.97486679e-006, -0.729166448, 3.11822487e-006, 1.00000358, 2.23289931e-007, 0.729164004, -2.26219709e-006, 0.684334636))
Feather29Weld=weld(Feather29,WingBase1,Feather29,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.224815845, -7.82012939e-005, -1.00763488, 0.617459416, -2.13029875e-006, -0.786601841, 3.34641459e-006, 1.00000358, -5.82169832e-008, 0.786599398, -2.4330061e-006, 0.61745894))
Feather30Weld=weld(Feather30,WingBase1,Feather30,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.207231283, -6.29425049e-005, -0.737761736, 0.788794637, -1.67079304e-006, -0.614655077, 2.6154537e-006, 1.00000358, 6.02931607e-007, 0.614652693, -1.92026801e-006, 0.788794756))
Feather31Weld=weld(Feather31,WingBase1,Feather31,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(0.0187997818, -5.7220459e-005, -0.673555136, 0.943573236, -9.38967958e-007, -0.33115828, 1.35717062e-006, 1.00000358, 8.12734413e-007, 0.331156015, -1.06879338e-006, 0.94357419))
Feather32Weld=weld(Feather32,WingBase1,Feather32,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.295625687, -6.10351563e-005, -0.791354895, 0.926542044, -1.05369168e-006, -0.376186669, 1.54661279e-006, 1.00000358, 8.34736738e-007, 0.376184434, -1.20439813e-006, 0.92654264))
Feather33Weld=weld(Feather33,WingBase1,Feather33,cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.0655574799, -5.7220459e-005, -0.770354033, 0.910740137, -1.14779505e-006, -0.412976056, 1.70568967e-006, 1.00000358, 8.38895687e-007, 0.412973911, -1.31509762e-006, 0.910740376))

WingBase1Weld=weld(WingBase1,Torso,WingBase1,euler(rad(90),0,rad(25))*cf(0.75,0.25,-0.5))

wait(1 / 60)



Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor



Humanoid.MaxHealth = 1500
wait()
Humanoid.Health = 1500
print(Humanoid.Health.."/"..Humanoid.MaxHealth)

--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "Sephiroth"
Weapon_Name = "Masmune"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional white"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional white"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional white"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional white"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional white"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional white"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional white"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional white"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional white"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional white"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional white"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional white"); --Background for the abilities.
}

Mana_Bar_Background_Transparency = 0 --Transparency for the background of the mana bar.
Secondary_Mana_Bar_Background_Transparency = 0 --Transparency for the background of the secondary mana bar.
Health_Bar_Background_Transparency = 0 --Transparency for the background of the health bar.
Stun_Bar_Background_Transparency = 0 --Transparency for the background of the stun bar.
Ability_Background_Transparency = 0  --Transparency for the background of the abilities.
Stat_Background_Transparency = 0 --Transparency for the background of the stats.

Player_Size = 1 --Size of the player.
Animation_Speed = 2 * Player_Size
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

Enable_Gui = false --Enables or disables the Weapon Gui. Also functions as hiding or showing the Gui.
Enable_Stats = false --Enables or disables stats.
Put_Stats_In_Character = false --Places stats in Character.
Enable_Stagger_Hit = false --Enables or disables staggering when hitting a hitbox of some sort.
Play_Hitbox_Hit_Sound = true --Plays a hit sound when hitting a hitbox of some sort.
Enable_Stagger = false --Enables or disables staggering.
Enable_Stun = false --Enables or disables the stun mechanic.
Enable_Abilities = false --Enables abilites with cooldowns and mana costs.
Enable_Secondary_Bar = false --Enables the secondary mana bar, if true.

Start_Equipped = false --Starts the player equipped with their weapon.
Start_Equipped_With_Equipped_Animation = false --Used in conjunction with the above option. Starts your equip animation.
Can_Equip_Or_Unequip = true --Enables or disables the ability to unequip or equip your weapon.
Disable_Animator = true --Disables the Animator in the humanoid.
Disable_Animate = true --Disables the Animate script in the character.
Disable_Moving_Arms = false --Keeps the arms from moving around.
Use_Motors_Instead_Of_Welds = false --Uses motors instead of welds to disable moving arms.
Walkspeed_Depends_On_Movement_Value = false --Walkspeed depends on movement value. Self-explanatory.
Disable_Jump = false --Disables jumping.
Use_HopperBin = false --Uses a hopperbin to do things.

Cooldown_1 = 0 --Cooldowns for abilites.
Cooldown_2 = 0
Cooldown_3 = 0
Cooldown_4 = 0
Skill_1_Mana_Cost = 0 --How much mana is required to use the skill.
Skill_2_Mana_Cost = 0
Skill_3_Mana_Cost = 0
Skill_4_Mana_Cost = 0
Max_Mana = 0 --Maximum amount of mana you can have.
Max_Secondary_Mana = 0 --Maximum amount of secondary mana you can have.
Mana_Name = "Mana" --Name for the mana bar.
Secondary_Mana_Name = "Block" --Name for the secondary mana bar.
Max_Stun = 1 --Maximum amount of stun you can have.
Recover_Mana = 0 --How much mana you gain.
Mana_Regen_Mode = "1" --Basically switches from one mana regen system to another.
Secondary_Mana_Regen_Mode = "1" --Basically switches from one secondary mana regen system to another.
Stun_Lose_Mode = "1" --Basically switches from one secondary stun loss system to another.
Recover_Secondary_Mana = 0 --How much secondary mana you gain.
Lose_Stun = 0 --How much stun you lose.
Stun_Wait = 0 --Delay between losing stun.
Mana_Wait = 0 --Delay between gaining mana.
Secondary_Mana_Wait = 0 --Delay between gaining secondary mana.
Menu_Update_Speed = 0 --How fast the Weapon Gui will update.
Constant_Update = false --Removes the delay between updating the Weapon GUI.
Show_Stats = false --Hides or shows stats.
Stat_Offset = 0.74 --For cosmetic purposes. {0.74, 0.78}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//


local Snap = Instance.new("Sound",Character.Torso)
Snap.SoundId = "rbxassetid://242076158"
Snap.Looped = false
Snap.Volume = 4
Snap.Pitch = 1 / Player_Size


--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DISABLEJUMPING = false
local HASBEENBLOCKED = false
local STUNDELAYNUMBER = 0
local MANADELAYNUMBER = 0
local SECONDARYMANADELAYNUMBER = 0
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", nil)
WEAPONGUI.Name = "Weapon GUI"
local WEAPONTOOL = IT("HopperBin", nil)
WEAPONTOOL.Name = Weapon_Name
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}

--//=================================\\
--\\=================================//





--//=================================\\
--||			  STATS
--\\=================================//

if Character:FindFirstChild("Stats") ~= nil then
Character:FindFirstChild("Stats").Parent = nil
end

local Stats = IT("Folder", nil)
Stats.Name = "Stats"
local ChangeStat = IT("Folder", Stats)
ChangeStat.Name = "ChangeStat"
local Defense = IT("NumberValue", Stats)
Defense.Name = "Defense"
Defense.Value = 1
local Movement = IT("NumberValue", Stats)
Movement.Name = "Movement"
Movement.Value = 1
local Damage = IT("NumberValue", Stats)
Damage.Name = "Damage"
Damage.Value = 1
local Mana = IT("NumberValue", Stats)
Mana.Name = "Mana"
Mana.Value = 0
local SecondaryMana = IT("NumberValue", Stats)
SecondaryMana.Name = "SecondaryMana"
SecondaryMana.Value = 0
local CanCrit = IT("BoolValue", Stats)
CanCrit.Name = "CanCrit"
CanCrit.Value = false
local CritChance = IT("NumberValue", Stats)
CritChance.Name = "CritChance"
CritChance.Value = 20
local CanPenetrateArmor = IT("BoolValue", Stats)
CanPenetrateArmor.Name = "CanPenetrateArmor"
CanPenetrateArmor.Value = false
local AntiTeamKill = IT("BoolValue", Stats)
AntiTeamKill.Name = "AntiTeamKill"
AntiTeamKill.Value = false
local Rooted = IT("BoolValue", Stats)
Rooted.Name = "Rooted"
Rooted.Value = false
local Block = IT("BoolValue", Stats)
Block.Name = "Block"
Block.Value = false
local RecentEnemy = IT("ObjectValue", Stats)
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Value = nil
local StaggerHit = IT("BoolValue", Stats)
StaggerHit.Name = "StaggerHit"
StaggerHit.Value = false
local Stagger = IT("BoolValue", Stats)
Stagger.Name = "Stagger"
Stagger.Value = false
local Stun = IT("BoolValue", Stats)
Stun.Name = "Stun"
Stun.Value = false
local StunValue = IT("NumberValue", Stats)
StunValue.Name = "StunValue"
StunValue.Value = 0

if Enable_Stats == true and Put_Stats_In_Character == true then
	Stats.Parent = Character
end

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	     DEBUFFS / BUFFS
--\\=================================//

local DEFENSECHANGE1 = IT("NumberValue", ChangeStat)
DEFENSECHANGE1.Name = "ChangeDefense"
DEFENSECHANGE1.Value = 0

local MOVEMENTCHANGE1 = IT("NumberValue", nil)
MOVEMENTCHANGE1.Name = "ChangeMovement"
MOVEMENTCHANGE1.Value = 0

--//=================================\\
--\\=================================//





--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = C3(255, 255, 255)
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = true
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NoOutlines(NEWPART)
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

function CreateSound(ID, PARENT, VOLUME, PITCH)
	coroutine.resume(coroutine.create(function()
		local NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function Lightning(POSITION1, POSITION2, MULTIPLIERTIME, LIGHTNINGDELAY, OFFSET, BRICKCOLOR, MATERIAL, SIZE, TRANSPARENCY, LASTINGTIME)
	local MAGNITUDE = (POSITION1 - POSITION2).magnitude 
	local CURRENTPOSITION = POSITION1
	local LIGHTNINGOFFSET = {-OFFSET, OFFSET}
	coroutine.resume(coroutine.create(function()
		for i = 1, MULTIPLIERTIME do 
			local LIGHTNINGPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR,"Effect", VT(SIZE * Player_Size, SIZE * Player_Size, MAGNITUDE / MULTIPLIERTIME))
			LIGHTNINGPART.Anchored = true
			local LIGHTNINGOFFSET2 = VT(LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)]) 
			local LIGHTNINGPOSITION1 = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME).p + LIGHTNINGOFFSET2
			if MULTIPLIERTIME == i then 
				local LIGHTNINGMAGNITUDE1 = (CURRENTPOSITION - POSITION2).magnitude
				LIGHTNINGPART.Size = VT(SIZE * Player_Size, SIZE * Player_Size, LIGHTNINGMAGNITUDE1)
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, -LIGHTNINGMAGNITUDE1 / 2)
			else
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, LIGHTNINGPOSITION1) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2)
			end
			CURRENTPOSITION=LIGHTNINGPART.CFrame * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2).p
			game.Debris:AddItem(LIGHTNINGPART, LASTINGTIME)
			coroutine.resume(coroutine.create(function()
				while LIGHTNINGPART.Transparency ~= 1 do
					--local StartTransparency = tra
					for i=0, 1, LASTINGTIME do
						Swait()
						LIGHTNINGPART.Transparency = LIGHTNINGPART.Transparency + (0.1 / LASTINGTIME)
					end
				end
			end))
		Swait(LIGHTNINGDELAY / Animation_Speed)
		end
	end))
end

function MagicBlock(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSphere(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Sphere", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCylinder(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("CylinderMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicHead(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Head", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicRing(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "3270017", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicWave(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "20329976", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), VT(0, 0, (-0.1 * Z1)) + (OFFSET * Player_Size))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Offset = VT(0, 0, (-0.1 * MESH.Scale.Z))
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCrystal(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "9756362", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSwirl(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1051557", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSharpCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1778999", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1033714", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSpikedCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1323306", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1078075", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSkull(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function ElectricEffect(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X * Player_Size, Y * Player_Size, Z * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local XVALUE = MRANDOM()
	local YVALUE = MRANDOM()
	local ZVALUE = MRANDOM()
	coroutine.resume(coroutine.create(function(PART, MESH, THEXVALUE, THEYVALUE, THEZVALUE)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			THEXVALUE = THEXVALUE - 0.1 * (delay * 10)
			THEYVALUE = THEYVALUE - 0.1 * (delay * 10)
			THEZVALUE = THEZVALUE - 0.1 * (delay * 10)
			MESH.Scale = MESH.Scale + VT(THEXVALUE * Player_Size, THEYVALUE * Player_Size, THEZVALUE * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH, XVALUE, YVALUE, ZVALUE)
end

function TrailEffect(BRICKCOLOR, MATERIAL, CURRENTCFRAME, OLDCFRAME, MESHTYPE, REFLECTANCE, SIZE, ROTATION, X, Y, Z, delay)
	local MAGNITUDECFRAME = (CURRENTCFRAME.p - OLDCFRAME.p).magnitude
	if MAGNITUDECFRAME > (1 / 100) then
		local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT(1, MAGNITUDECFRAME, 1))
		EFFECTPART.Anchored = true
		EFFECTPART.CFrame = CF((CURRENTCFRAME.p + OLDCFRAME.p) / 2, OLDCFRAME.p) * ANGLES(RAD(90), 0, 0)
		local THEMESHTYPE = "BlockMesh"
		if MESHTYPE == "Cylinder" then
			THEMESHTYPE = "CylinderMesh"
		end
		local EFFECTMESH = CreateMesh(THEMESHTYPE, EFFECTPART, "", "", "", VT(0 + SIZE * Player_Size, 1, 0 + SIZE * Player_Size), VT(0, 0, 0))
		game:GetService("Debris"):AddItem(EFFECTPART, 10)
		coroutine.resume(coroutine.create(function(PART, MESH)
			for i = 0, 1, delay do
				Swait()
				PART.CFrame = PART.CFrame * ROTATION
				PART.Transparency = i
				MESH.Scale = MESH.Scale + VT(X * Player_Size, Y * Player_Size, Z * Player_Size)
			end
			PART.Parent = nil
		end), EFFECTPART, EFFECTMESH)
	end
end

function ClangEffect(BRICKCOLOR, MATERIAL, CFRAME, ANGLE, DURATION, SIZE, POWER, REFLECTANCE, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 1, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(0, 0, 0), VT(0, 0, 0))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local THELASTPOINT = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, DURATION do
			Swait()
			PART.CFrame = PART.CFrame * ANGLES(RAD(ANGLE), 0, 0) * CF(0, POWER * Player_Size, 0)
			TrailEffect(BRICKCOLOR, MATERIAL, PART.CFrame, THELASTPOINT, "Cylinder", REFLECTANCE, SIZE * Player_Size, ANGLES(0, 0, 0), X * Player_Size, Y * Player_Size, Z * Player_Size, delay)
			THELASTPOINT = PART.CFrame
		end
		PART.Parent = nil
	end), EFFECTPART)
end

--local list={}
function Triangle(Color, Material, a, b, c, delay)
	local edge1 = (c - a):Dot((b - a).unit)
	local edge2 = (a - b):Dot((c - b).unit)
	local edge3 = (b - c):Dot((a - c).unit)
	if edge1 <= (b - a).magnitude and edge1 >= 0 then
		a, b, c=a, b, c
	elseif edge2 <= (c - b).magnitude and edge2 >= 0 then
		a, b, c=b, c, a
	elseif edge3 <= (a - c).magnitude and edge3 >= 0 then
		a, b, c=c, a, b
	else
		assert(false, "unreachable")
	end
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, - (b - a).unit)
	if len1 > 1 / 100 then
		local sz = VT(0.2, width, len1)
		local w1 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w1, "Wedge", "", "", VT(0, 1, 1) * sz / w1.Size, VT(0, 0, 0))
		w1.Anchored = true
		w1.CFrame = maincf * ANGLES(math.pi, 0, math.pi / 2) * CF(0, width / 2, len1 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w1.Transparency = i
			end
			w1.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w1, 10)
		--table.insert(list, w1)
	end
	if len2 > 1 / 100 then
		local sz = VT(0.2, width, len2)
		local w2 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w2, "Wedge", "", "", VT(0, 1, 1) * sz / w2.Size, VT(0, 0, 0))
		w2.Anchored = true
		w2.CFrame = maincf * ANGLES(math.pi, math.pi, -math.pi / 2) * CF(0, width / 2, -len1 - len2 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w2.Transparency = i
			end
			w2.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w2, 10)
		--table.insert(list, w2)
	end
	--return unpack(list)
end

--[[Usage:
	local Pos = Part
	local Offset = Part.CFrame * CF(0, 0, 0)
	local Color = "Institutional white"
	local Material = "Neon"
	local TheDelay = 0.01
	local Height = 4
	BLCF = Offset
	if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
		local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		SCFR = BLCF
	elseif not SCFR then
		SCFR = BLCF
	end
--
BLCF = nil
SCFR = nil
--]]

--//=================================\\
--\\=================================//





--//=================================\\
--||	      RESIZE PLAYER
--\\=================================//

if Player_Size ~= 1 then
RootPart.Size = RootPart.Size * Player_Size
Torso.Size = Torso.Size * Player_Size
Head.Size = Head.Size * Player_Size
RightArm.Size = RightArm.Size * Player_Size
LeftArm.Size = LeftArm.Size * Player_Size
RightLeg.Size = RightLeg.Size * Player_Size
LeftLeg.Size = LeftLeg.Size * Player_Size
RootJoint.Parent = RootPart
Neck.Parent = Torso
RightShoulder.Parent = Torso
LeftShoulder.Parent = Torso
RightHip.Parent = Torso
LeftHip.Parent = Torso
	
RootJoint.C0 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	RootJoint.C1 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C0 = NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180))
	RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0
	LeftShoulder.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0
	if Disable_Moving_Arms == false then
		RightShoulder.C1 = ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
		LeftShoulder.C1 = ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
	else
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
	end
	RightHip.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	RightHip.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
end


--//=================================\\
--\\=================================//





--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local HandlePart = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Handle", VT(0, 0, 0))
local HandleMesh = CreateMesh("SpecialMesh", HandlePart, "FileMesh", "93180631", "93180676", VT(1, 1, 1), VT(0, 3.1 * Player_Size, 0))
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", Handle, Torso, Handle, CF(2 * Player_Size, 2 * Player_Size, 0.6 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(135)), CF(0, 0, 0))

local HitboxPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Hitbox", VT(0, 0, 0))
local HitboxWeld = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, HitboxPart, CF(0 * Player_Size, 4 * Player_Size, 0 * Player_Size), CF(0, 0, 0))

local AttachmentX = Instance.new("Attachment",HitboxPart)
AttachmentX.CFrame = CFrame.new(0,6 * Player_Size,0)
local AttachmentY = Instance.new("Attachment",HitboxPart)
AttachmentY.CFrame = CFrame.new(0,-3 * Player_Size,0)
local Trail = Instance.new("Trail",HitboxPart)
Trail.Attachment0 = AttachmentX
Trail.Attachment1 = AttachmentY
Trail.Lifetime = 0.5
Trail.MinLength = 0
Trail.LightEmission = 1
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5,0),NumberSequenceKeypoint.new(1,1,0)})
Trail.Enabled = false

local EffectPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Effect Part", VT(0, 0, 0))
local EffectWeld = CreateWeldOrSnapOrMotor("Weld", EffectPart, Handle, EffectPart, CF(0 * Player_Size, 7 * Player_Size, 0 * Player_Size), CF(0, 0, 0))

if Player_Size ~= 1 then
	for _, v in pairs (Weapon:GetChildren()) do
		if v.ClassName == "Motor" or v.ClassName == "Weld" or v.ClassName == "Snap" then
			local p1 = v.Part1
			v.Part1 = nil
			local cf1, cf2, cf3, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12 = v.C1:components()
			v.C1 = CF(cf1 * Player_Size, cf2 * Player_Size, cf3 * Player_Size, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12)
			v.Part1 = p1
		elseif v.ClassName == "Part" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "SpecialMesh" or b.ClassName == "BlockMesh" then
					b.Scale = VT(b.Scale.x * Player_Size, b.Scale.y * Player_Size, b.Scale.z * Player_Size)
				end
			end
		end
	end
end

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end
for _, c in pairs(Main:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

if Start_Equipped == true and Start_Equipped_With_Equipped_Animation == false then
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

print(Class_Name.." loaded.")

--//=================================\\
--\\=================================//





--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SourceSans"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 0
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end

function IncreaseOrDecreaseStat(LOCATION, STAT, AMOUNT, DURATION, SHOWTHESTAT)
	if LOCATION:FindFirstChild("Stats") ~= nil then
		if LOCATION.Stats:FindFirstChild("Block") ~= nil then
			if LOCATION.Stats:FindFirstChild("Block").Value == true then
				return
			end
		end
		if LOCATION.Stats:FindFirstChild("ChangeStat") ~= nil and LOCATION.Stats:FindFirstChild("Block").Value == false then
			local NewStatChange = IT("NumberValue")
			NewStatChange.Value = AMOUNT
			if STAT == "Defense" then
				NewStatChange.Name = "ChangeDefense"
			elseif STAT == "Damage" then
				NewStatChange.Name = "ChangeDamage"
			elseif STAT == "Movement" then
				NewStatChange.Name = "ChangeMovement"
			end
			if SHOWTHESTAT == true then
				if AMOUNT < 0 then
					StatLabel("Debuff", LOCATION.Head.CFrame * CF(0, 0 + (LOCATION.Head.Size.z - 1), 0), "-"..STAT, C3(1, 1, 1))
				elseif AMOUNT > 0 then
					StatLabel("Debuff", LOCATION.Head.CFrame * CF(0, 0 + (LOCATION.Head.Size.z - 1), 0), "+"..STAT, C3(1, 1, 1))
				end
			end
			if DURATION ~= nil and DURATION ~= 0 then
				local StatDuration = IT("NumberValue")
				StatDuration.Name = "Duration"
				StatDuration.Value = DURATION
				StatDuration.Parent = NewStatChange
			end
			NewStatChange.Parent = LOCATION.Stats:FindFirstChild("ChangeStat")
		end
	end
end

--Usage: DamageFunction(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, hit, false, 5, 10, MRANDOM(5, 10), "Normal", Part, 0.5, false, true, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
function DamageFunction(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, HIT, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, DECREASETHESTAT, DECREASEAMOUNT, DECREASEDURATION, SHOWDECREASEDSTAT)
	if HIT.Parent == nil then
		return
	end
	local HITHUMANOID = HIT.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(HIT.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			HITHUMANOID = v
		end
	end
	if HIT.Name == "Hitbox" and RANGED ~= true and HIT.Parent ~= Weapon and Enable_Stagger_Hit == true then
		StaggerHit.Value = true
		if Play_Hitbox_Hit_Sound == true then
			if HITWEAPONSOUND ~= "" and HITWEAPONSOUND ~= "nil" then
				CreateSound(HITWEAPONSOUND, HIT, 1, HITWEAPONSOUNDPITCH)
			end
		end
		return
	end
	if HIT.Parent.Parent:FindFirstChild("Torso") ~= nil or HIT.Parent.Parent:FindFirstChild("UpperTorso") ~= nil then
		HITHUMANOID = HIT.Parent.Parent:FindFirstChild("Humanoid")
	end
	if HIT.Parent.ClassName == "Hat" or HIT.ClassName == "Accessory" then
		HIT = HIT.Parent.Parent:FindFirstChild("Head")
	end
	if HITHUMANOID ~= nil and HIT.Parent.Name ~= Character.Name and (HIT.Parent:FindFirstChild("Torso") ~= nil or HIT.Parent:FindFirstChild("UpperTorso") ~= nil) then
		if HIT.Parent:FindFirstChild("DebounceHit") ~= nil then
			if HIT.Parent.DebounceHit.Value == true then
				return
			end
		end
		if AntiTeamKill.Value == true then
			if Player.Neutral == false and game.Players:GetPlayerFromCharacter(HIT.Parent) ~= nil then
				if game.Players:GetPlayerFromCharacter(HIT.Parent).TeamColor == Player.TeamColor then
					return
				end
			end
		end
		if HITEVENWHENDEAD == false then
			if HIT.Parent:FindFirstChild("Humanoid") ~= nil then
				if HIT.Parent:FindFirstChild("Humanoid").Health <= 0 then
					return
				end
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("StunValue") ~= nil then
				HIT.Parent.Stats:FindFirstChild("StunValue").Value = HIT.Parent.Stats:FindFirstChild("StunValue").Value + INCREASESTUN
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Stagger") ~= nil then
				if STAGGER == true and Enable_Stagger == true then
					HIT.Parent.Stats:FindFirstChild("Stagger").Value = true
				end
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Block") ~= nil then
				if HIT.Parent.Stats:FindFirstChild("Block").Value == true then
					HASBEENBLOCKED = true
					if HIT.Parent.Stats:FindFirstChild("Block"):FindFirstChild("BlockDebounce") == nil then
						StatLabel("Interruption", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Blocked!", C3(0, 100 / 255, 255 / 255))
						if RANGED ~= true then
							if HITBLOCKSOUND ~= "" and HITBLOCKSOUND ~= "nil" then
								CreateSound(HITBLOCKSOUND, HIT, 1, HITBLOCKSOUNDPITCH)
							end
						end
						local BlockDebounce = IT("BoolValue", HIT.Parent.Stats:FindFirstChild("Block"))
						BlockDebounce.Name = "BlockDebounce"
						BlockDebounce.Value = true
						if RANGED ~= true then
							game:GetService("Debris"):AddItem(BlockDebounce, 0.5)
						else
							game:GetService("Debris"):AddItem(BlockDebounce, 0.1)
						end
					end
					if RANGED ~= true and Enable_Stagger == true then
						HIT.Parent.Stats:FindFirstChild("Block").Value = false
						Stagger.Value = true
					end
					return
				end
			end
		end
		if DECREASETHESTAT ~= nil then
			if HIT.Parent:FindFirstChild("Stats") ~= nil then
				IncreaseOrDecreaseStat(HIT.Parent, DECREASETHESTAT, DECREASEAMOUNT, DECREASEDURATION, SHOWDECREASEDSTAT)
			end
		end
		local DAMAGE = MRANDOM(MINIMUMDAMAGE,MAXIMUMDAMAGE) * Damage.Value
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Defense") ~= nil then
				if CanPenetrateArmor.Value == true then
					DAMAGE = DAMAGE
				else
					DAMAGE = DAMAGE / HIT.Parent.Stats:FindFirstChild("Defense").Value
				end
			elseif HIT.Parent.Stats:FindFirstChild("Defense") == nil then
				DAMAGE = DAMAGE
			end
		end
		if CanCrit.Value == true then
			CRITCHANCENUMBER = MRANDOM(1, CritChance.Value)
			if CRITCHANCENUMBER == 1 then
				DAMAGE = DAMAGE * 2
			end
		end
		DAMAGE = math.floor(DAMAGE)
		if HASBEENBLOCKED == false then
			HITHUMANOID.Health = HITHUMANOID.Health - DAMAGE * Player_Size
		end
		if DAMAGE <= 3 and HASBEENBLOCKED == false then
			if STAGGERHIT == true and Enable_Stagger_Hit == true and RANGED ~= true then
				StaggerHit.Value = true
			end
			if HITARMORSOUND ~= "" and HITARMORSOUND ~= "nil" then
				CreateSound(HITARMORSOUND, HIT, 1, HITARMORSOUNDPITCH)
			end
		elseif DAMAGE > 3 and HASBEENBLOCKED == false then
			if HITPLAYERSOUND ~= "" and HITPLAYERSOUND ~= "nil" then
				CreateSound(HITPLAYERSOUND, HIT, 1, HITPLAYERSOUNDPITCH)
			end
		end
		if DAMAGE > 3 and DAMAGE < 20 and HASBEENBLOCKED == false then
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE * Player_Size, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE * Player_Size, C3(255/255, 220/255, 0))
			end
		elseif DAMAGE >= 20 and HASBEENBLOCKED == false then
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE * Player_Size, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE * Player_Size, C3(255/255, 0, 0))
			end
		elseif DAMAGE <= 3 and HASBEENBLOCKED == false then
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE * Player_Size, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE * Player_Size, C3(225/255, 225/255, 225/255))
			end
		end
		if TYPE == "Normal" then
			local vp = IT("BodyVelocity")
			vp.P=500
			vp.maxForce = VT(math.huge, 0, math.huge)
			if KNOCKBACKTYPE == 1 then
				vp.Velocity = PROPERTY.CFrame.lookVector * KNOCKBACK + PROPERTY.Velocity / 1.05
			elseif KNOCKBACKTYPE == 2 then
				vp.Velocity = PROPERTY.CFrame.lookVector * KNOCKBACK
			end
			if KNOCKBACK > 0 and HASBEENBLOCKED == false then
				vp.Parent = HIT--.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, 0.5)
		end
		HASBEENBLOCKED = false
		RecentEnemy.Value = HIT.Parent
		local DebounceHit = IT("BoolValue", HIT.Parent)
		DebounceHit.Name = "DebounceHit"
		DebounceHit.Value = true
		game:GetService("Debris"):AddItem(DebounceHit, DELAY)
	end
end

Apoc = false
GodSlash = false

--Usage: MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, Part, 5, true, 5, 10, MRANDOM(5, 10), "Normal", Part, 0.5, false, true, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
function MagnitudeDamage(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, PART, MAGNITUDE, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, MAGNITUDEDECREASETHESTAT, MAGNITUDEDECREASEAMOUNT, MAGNITUDEDECREASEDURATION, MAGNITUDESHOWDECREASEDSTAT)
	--[[if Apoc == true then
		Explosions = Instance.new("Explosion", PART)
		Explosions.Visible = false
		Explosions.BlastPressure = 1000
		Explosions.BlastRadius = 8
		Explosions.Position = PART.Position
		Explosions.DestroyJointRadiusPercent = 0
		Explosions.ExplosionType = "CratersAndDebris"
	elseif GodSlash == true then
		Explosions = Instance.new("Explosion", PART)
		Explosions.Visible = false
		Explosions.BlastPressure = 1000
		Explosions.BlastRadius = 10
		Explosions.Position = PART.Position
		Explosions.DestroyJointRadiusPercent = 0
		Explosions.ExplosionType = "CratersAndDebris"
	else
		Explosions = Instance.new("Explosion", PART)
		Explosions.Visible = false
		Explosions.BlastPressure = 1000
		Explosions.BlastRadius = 5
		Explosions.Position = PART.Position
		Explosions.DestroyJointRadiusPercent = 0
		Explosions.ExplosionType = "CratersAndDebris"
	end]]
	for _, c in pairs(workspace:GetChildren()) do
		local HUMANOID = c:FindFirstChild("Humanoid")
		local HEAD = nil
		if HUMANOID ~= nil then
			for _, d in pairs(c:GetChildren()) do
				if d.ClassName == "Model" and RANGED ~= true then
					HEAD = d:FindFirstChild("Hitbox")
					if HEAD ~= nil then
						local THEMAGNITUDE = (HEAD.Position - PART.Position).magnitude
						if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
							if Play_Hitbox_Hit_Sound == true then
								local HitRefpart = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
								HitRefpart.Anchored = true
								HitRefpart.CFrame = CF(HEAD.Position)
								CreateSound(HITWEAPONSOUND, HitRefpart, 1, HITWEAPONSOUNDPITCH)
							end
							if Enable_Stagger_Hit == true then
								StaggerHit.Value = true
							end
						end
					end
				elseif d:IsA"BasePart" then
					HEAD = d
					if HEAD ~= nil then
						local THEMAGNITUDE = (HEAD.Position - PART.Position).magnitude
						if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
							DamageFunction(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, HEAD, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, MAGNITUDEDECREASETHESTAT, MAGNITUDEDECREASEAMOUNT, MAGNITUDEDECREASEDURATION, MAGNITUDESHOWDECREASEDSTAT)
						end
					end
				end
			end
		end
	end
end

--Usage: MagnitudeBuffOrDebuff(Part, 5, "Defense", -0.1, 3, true, true)
function MagnitudeBuffOrDebuff(PART, MAGNITUDE, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF, APPLYTOOTHERSINSTEAD)
	if Player.Neutral == true then
		IncreaseOrDecreaseStat(Character, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
	end
	for _, c in pairs(workspace:GetChildren()) do
		local HUMANOID = c:FindFirstChild("Humanoid")
		local THEHEAD = nil
		if HUMANOID ~= nil then
			if c:FindFirstChild("Torso") ~= nil then
				THEHEAD = c:FindFirstChild("Torso")
			elseif c:FindFirstChild("UpperTorso") ~= nil then
				THEHEAD = c:FindFirstChild("UpperTorso")
			end
			if THEHEAD ~= nil then
				local THEMAGNITUDE = (THEHEAD.Position - PART.Position).magnitude
				print("yes 1")
				if APPLYTOOTHERSINSTEAD == true then
					if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
						if Player.Neutral == false and game.Players:GetPlayerFromCharacter(THEHEAD.Parent) ~= nil then
							if game.Players:GetPlayerFromCharacter(THEHEAD.Parent).TeamColor == Player.TeamColor then
								IncreaseOrDecreaseStat(THEHEAD.Parent, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
							end
						end
					end
				elseif APPLYTOOTHERSINSTEAD == false then
					if THEMAGNITUDE <= (MAGNITUDE * Player_Size) then
						if Player.Neutral == false and game.Players:GetPlayerFromCharacter(THEHEAD.Parent) ~= nil then
							if game.Players:GetPlayerFromCharacter(THEHEAD.Parent).TeamColor == Player.TeamColor then
								IncreaseOrDecreaseStat(THEHEAD.Parent, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--\\=================================//





--//=================================\\
--||			WEAPON GUI
--\\=================================//

local MANABAR = CreateFrame(WEAPONGUI, Mana_Bar_Background_Transparency, 2, UD2(0.23, 0, 0.82, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_8.r, Custom_Colors.Custom_Color_8.g, Custom_Colors.Custom_Color_8.b), C3(0, 0, 0),"Mana Bar") 
local MANACOVER = CreateFrame(MANABAR, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_5.r, Custom_Colors.Custom_Color_5.g, Custom_Colors.Custom_Color_5.b), C3(0, 0, 0),"Mana Cover")
local MANATEXT = CreateLabel(MANABAR, Mana_Name.." ["..FLOOR(Mana.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Mana Text")

local HEALTHBAR = CreateFrame(WEAPONGUI, Health_Bar_Background_Transparency, 2, UD2(0.5, 0, 0.82, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_11.r, Custom_Colors.Custom_Color_11.g, Custom_Colors.Custom_Color_11.b), C3(0, 0, 0), "Health Bar")
local HEALTHCOVER = CreateFrame(HEALTHBAR, 0, 2,UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_6.r, Custom_Colors.Custom_Color_6.g, Custom_Colors.Custom_Color_6.b), C3(0, 0, 0), "Health Cover")
local HEALTHTEXT = CreateLabel(HEALTHBAR, "Health ["..FLOOR(Humanoid.Health).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Health Text")

local STUNFRAME = CreateFrame(nil, Stun_Bar_Background_Transparency, 2, UD2(0.5, 0, 0.78, 0),UD2(0.26, 0, 0, 0),C3(Custom_Colors.Custom_Color_10.r, Custom_Colors.Custom_Color_10.g, Custom_Colors.Custom_Color_10.b), C3(0, 0, 0), "Stun Frame")
local STUNBAR = CreateFrame(STUNFRAME, 0, 2, UD2(0, 0, 0, 0),UD2(0, 0, 1, 0),C3(Custom_Colors.Custom_Color_7.r, Custom_Colors.Custom_Color_7.g, Custom_Colors.Custom_Color_7.b), C3(0, 0, 0), "Stun Bar")
local STUNTEXT = CreateLabel(STUNFRAME, "Stun ["..FLOOR(StunValue.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Stun Text")

local SECONDARYMANABAR = CreateFrame(nil, Secondary_Mana_Bar_Background_Transparency, 2, UD2(0.23, 0, 0.78, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_9.r, Custom_Colors.Custom_Color_9.g, Custom_Colors.Custom_Color_9.b), C3(0, 0, 0),"Secondary Mana Bar") 
local SECONDARYMANACOVER = CreateFrame(SECONDARYMANABAR, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_4.r, Custom_Colors.Custom_Color_4.g, Custom_Colors.Custom_Color_4.b), C3(0, 0, 0),"Secondary Mana Cover")
local SECONDARYMANATEXT = CreateLabel(SECONDARYMANABAR, Secondary_Mana_Name.." ["..FLOOR(SecondaryMana.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Secondary Mana Text")

local DEFENSEFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.23, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(100 / 255, 100 / 255, 255 / 255), C3(0, 0, 0),"Defense Frame")
local DEFENSETEXT = CreateLabel(DEFENSEFRAME, "Defense ["..(Defense.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Defense Text")

local DAMAGEFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.456, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(255 / 255, 100 / 255, 100 / 255), C3(0, 0, 0),"Damage Frame")
local DAMAGETEXT = CreateLabel(DAMAGEFRAME, "Damage ["..(Damage.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Damage Text")

local MOVEMENTFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.685, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(100 / 255, 255 / 255, 100 / 255), C3(0, 0, 0),"Movement Frame")
local MOVEMENTTEXT = CreateLabel(MOVEMENTFRAME, "Movement ["..(Movement.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Movement Text")

local SKILL1FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.23, 0, 0.86, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.50, 0, 0.86, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.50, 0, 0.93, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 4 Frame")

local SKILL1BAR = CreateFrame(SKILL1FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 1 Bar")
local SKILL2BAR = CreateFrame(SKILL2FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 2 Bar")
local SKILL3BAR = CreateFrame(SKILL3FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 3 Bar")
local SKILL4BAR = CreateFrame(SKILL4FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 4 Bar")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Ability 1", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[X] Ability 2", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Ability 3", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Ability 4", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 4")

if Enable_Gui == true then
	WEAPONGUI.Parent = PlayerGui
end

if Enable_Stats == true and Show_Stats == true then
	DEFENSEFRAME.Parent = WEAPONGUI
	DAMAGEFRAME.Parent = WEAPONGUI
	MOVEMENTFRAME.Parent = WEAPONGUI
end

if Enable_Secondary_Bar == true then
	SECONDARYMANABAR.Parent = WEAPONGUI
end

if Enable_Abilities == true then
	SKILL1FRAME.Parent = WEAPONGUI
	SKILL2FRAME.Parent = WEAPONGUI
	SKILL3FRAME.Parent = WEAPONGUI
	SKILL4FRAME.Parent = WEAPONGUI
end

if Enable_Stun == true then
	STUNFRAME.Parent = WEAPONGUI
end

function UpdateGUI()
	MANABAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	MANACOVER:TweenSize(UD2(1 * (Mana.Value / Max_Mana), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	MANATEXT.Text = Mana_Name.." ["..FLOOR(Mana.Value).."]"
	HEALTHBAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	HEALTHCOVER:TweenSize(UD2(1 * (Humanoid.Health / Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	HEALTHTEXT.Text = "Health ["..FLOOR(Humanoid.Health).."]"
	if Enable_Abilities == true then
		SKILL1FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL2FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL3FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL4FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL1BAR:TweenSize(UD2(1 * (CO1 / Cooldown_1), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL2BAR:TweenSize(UD2(1 * (CO2 / Cooldown_2), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL3BAR:TweenSize(UD2(1 * (CO3 / Cooldown_3), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL4BAR:TweenSize(UD2(1 * (CO4 / Cooldown_4), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	end
	if Enable_Stats == true and Show_Stats == true then
		DEFENSEFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		DEFENSETEXT.Text = "Defense ["..(Defense.Value * 100).."%]"
		DAMAGEFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		DAMAGETEXT.Text = "Damage ["..(Damage.Value * 100).."%]"
		MOVEMENTFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		MOVEMENTTEXT.Text = "Movement ["..(Movement.Value * 100).."%]"
	end
	if Enable_Stun == true then
		STUNFRAME:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		STUNBAR:TweenSize(UD2(1 * (StunValue.Value / Max_Stun), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		STUNTEXT.Text = "Stun ["..FLOOR(StunValue.Value).."]"
	end
	if Enable_Secondary_Bar == true then
		SECONDARYMANABAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SECONDARYMANACOVER:TweenSize(UD2(1 * (SecondaryMana.Value / Max_Secondary_Mana), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SECONDARYMANATEXT.Text = Secondary_Mana_Name.." ["..FLOOR(SecondaryMana.Value).."]"
	end
end

if Enable_Gui == true then
	UpdateGUI()
	for _, v in pairs (WEAPONGUI:GetChildren()) do
		if v.ClassName == "Frame" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "TextLabel" then
					coroutine.resume(coroutine.create(function(THETEXTLABEL)
						wait(Menu_Update_Speed)
						for i = 1, 0, -0.1 do
							Swait()
							THETEXTLABEL.TextTransparency = i
							THETEXTLABEL.TextStrokeTransparency = i
							end
						THETEXTLABEL.TextTransparency = 0
						THETEXTLABEL.TextStrokeTransparency = 0
					end), b)
				end
			end
		end
	end
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	     SKILL FUNCTIONS
--\\=================================//

function UpdateSkillsAndStuff()
	if Mana_Regen_Mode == "1" then
		if Mana.Value >= Max_Mana then
			Mana.Value = Max_Mana
		elseif Mana.Value < 0 then
			Mana.Value = 0
		else
			if MANADELAYNUMBER <= Mana_Wait then
				MANADELAYNUMBER = MANADELAYNUMBER + 1
			else
				MANADELAYNUMBER = 0
				Mana.Value = Mana.Value + Recover_Mana
			end
		end
	elseif Mana_Regen_Mode == "2" then
		if Mana.Value <= Max_Mana then
			Mana.Value = Mana.Value + (Recover_Mana / 30) / Animation_Speed
		elseif Mana.Value >= Max_Mana then
			Mana.Value = Max_Mana
		elseif Mana.Value < 0 then
			Mana.Value = 0
		end
	end
	if Enable_Secondary_Bar == true then
		if Secondary_Mana_Regen_Mode == "1" then
			if SecondaryMana.Value >= Max_Secondary_Mana then
				SecondaryMana.Value = Max_Secondary_Mana
			elseif SecondaryMana.Value < 0 then
				SecondaryMana.Value = 0
			else
				if SECONDARYMANADELAYNUMBER <= Secondary_Mana_Wait then
					SECONDARYMANADELAYNUMBER = SECONDARYMANADELAYNUMBER + 1
				else
					SECONDARYMANADELAYNUMBER = 0
					SecondaryMana.Value = SecondaryMana.Value + Recover_Secondary_Mana
				end
			end
		elseif Secondary_Mana_Regen_Mode == "2" then
			if SecondaryMana.Value <= Max_Secondary_Mana then
				SecondaryMana.Value = SecondaryMana.Value + (Recover_Secondary_Mana / 30) / Animation_Speed
			elseif SecondaryMana.Value >= Max_Secondary_Mana then
				SecondaryMana.Value = Max_Secondary_Mana
			elseif SecondaryMana.Value < 0 then
				SecondaryMana.Value = 0
			end
		end
	else
		SecondaryMana.Value = 0
	end
	if Enable_Stun == true then
		if Stun_Lose_Mode == "1" then
			if StunValue.Value > Max_Stun then
				StunValue.Value = Max_Stun
			elseif StunValue.Value <= 0 then
				StunValue.Value = 0
			else
				if STUNDELAYNUMBER <= Stun_Wait then
					STUNDELAYNUMBER = STUNDELAYNUMBER + 1
				else
					STUNDELAYNUMBER = 0
					StunValue.Value = StunValue.Value - Lose_Stun
				end
			end
		elseif Stun_Lose_Mode == "2" then
			if StunValue.Value <= Max_Stun and StunValue.Value > 0 then
				StunValue.Value = StunValue.Value - (Lose_Stun / 30) / Animation_Speed
			elseif StunValue.Value > Max_Stun then
				StunValue.Value = Max_Stun
			elseif StunValue.Value <= 0 then
				StunValue.Value = 0
			end
		end
	else
		StunValue.Value = 0
	end
	if Enable_Abilities == true then
		if CO1 <= Cooldown_1 then
			CO1 = CO1 + (1 / 30) / Animation_Speed
		elseif CO1 >= Cooldown_1 then
			CO1 = Cooldown_1
		end
		if CO2 <= Cooldown_2 then
			CO2 = CO2 + (1 / 30) / Animation_Speed
		elseif CO2 >= Cooldown_2 then
			CO2 = Cooldown_2
		end
		if CO3 <= Cooldown_3 then
			CO3 = CO3 + (1 / 30) / Animation_Speed
		elseif CO3 >= Cooldown_3 then
			CO3 = Cooldown_3
		end
		if CO4 <= Cooldown_4 then
			CO4 = CO4 + (1 / 30) / Animation_Speed
		elseif CO4 >= Cooldown_4 then
			CO4 = Cooldown_4
		end
	end
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function EquipWeapon()
	--ATTACK = true
	DEFENSECHANGE1.Parent = nil
	MOVEMENTCHANGE1.Parent = ChangeStat
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(210), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0))
	CreateSound("174884033", HitboxPart, 1, 1.5)
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(80)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-70), RAD(90), RAD(0)), 0.3 / Animation_Speed)
	end
	LASTPOINT = EffectPart.CFrame
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		LASTPOINT = EffectPart.CFrame
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(80)) * ANGLES(RAD(-60), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-140), RAD(90), RAD(0)), 0.3 / Animation_Speed)
	end
	LASTPOINT = nil
	Trail.Enabled = false
	--ATTACK = false
end

function UnequipWeapon()
	--ATTACK = true
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0)), 0.3 / Animation_Speed)
	end
	CreateSound("245542809", HitboxPart, 1, 1.2)
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(210), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0)), 0.3 / Animation_Speed)
	end
	HandleWeld.Part0 = Torso
	HandleWeld.C0 = CF(2 * Player_Size, 2 * Player_Size, 0.6 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(135))
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		if Disable_Moving_Arms == false then
			RightShoulder.C1 = Clerp(RightShoulder.C1, ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5), 0.3 / Animation_Speed)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1, ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5), 0.3 / Animation_Speed)
		else
			RightShoulder.C1 = Clerp(RightShoulder.C1, CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size), 0.3 / Animation_Speed)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1, CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size), 0.3 / Animation_Speed)
		end
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	RootJoint.C0 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	RootJoint.C1 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C0 = NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180))
	RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0
	LeftShoulder.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0
	if Disable_Moving_Arms == false then
		RightShoulder.C1 = ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
		LeftShoulder.C1 = ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
	else
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
	end
	RightHip.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	RightHip.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	--ATTACK = false
	DEFENSECHANGE1.Parent = ChangeStat
	MOVEMENTCHANGE1.Parent = nil
end

function StaggerHitAnimation()
	ATTACK = true
	if Weapon:FindFirstChild("Hitbox") ~= nil then
		for i = 1, MRANDOM(2, 4) do
			ClangEffect("Bright yellow", "Neon", CF(Weapon:FindFirstChild("Hitbox").Position) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 20, 5, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(30)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-30), RAD(0), RAD(60)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-20)) * ANGLES(RAD(0), RAD(20), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.9 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1.1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(10)), 0.3 / Animation_Speed)
		if Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end

function StaggerAnimation()
	ATTACK = true
	if Weapon:FindFirstChild("Hitbox") ~= nil then
		for i = 1, MRANDOM(2, 4) do
			ClangEffect("Bright yellow", "Neon", CF(Weapon:FindFirstChild("Hitbox").Position) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 20, 5, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	DISABLEJUMPING = true
	COMBO = 1
	StatLabel("Interruption", Head.CFrame * CF(0, 0 + (Head.Size.z - 1), 0), "Staggered!", C3(255 / 255, 255 / 255, 0))
	local STAGGERVELOCITY = Instance.new("BodyVelocity",Torso)
	STAGGERVELOCITY.P = 500
	STAGGERVELOCITY.maxForce = VT(math.huge, 0, math.huge)
	if Rooted.Value == false then
		STAGGERVELOCITY.Velocity = RootPart.CFrame.lookVector * -40
	end
	for i = 0, 1, 0.35 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size,0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size,0 * Player_Size) * ANGLES(RAD(-7.5), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size,0 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size,0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.2 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-7.5), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(50)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.4 / Animation_Speed)
	end
	STAGGERVELOCITY.Parent = nil
	for i = 1, 50 * Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1.8 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-20)) * ANGLES(RAD(-5), RAD(-5), RAD(0)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(5), RAD(0)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(-20), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.4 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(30), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-10)), 0.3 / Animation_Speed)
	end
	DISABLEJUMPING = false
	ATTACK = false
end

function StunAnimation()
	ATTACK = true
	DISABLEJUMPING = true
	COMBO = 1
	StatLabel("Interruption", Head.CFrame * CF(0, 0 + (Head.Size.z - 1), 0), "Stunned!", C3(255 / 255, 255 / 255, 0))
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(-150)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-10), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(20)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(-180)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(50)), 0.4 / Animation_Speed)
	end
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(75), RAD(0), RAD(-180)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10), RAD(0), RAD(-80)) * ANGLES(RAD(0), RAD(-40), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(10)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(80)), 0.4 / Animation_Speed)
	end
	for i = 1, 70 * Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -2.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-180)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(-10), RAD(90)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.2 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1.5 * Player_Size) * ANGLES(RAD(20), RAD(0), RAD(100)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(-10), RAD(30)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(80), RAD(0), RAD(20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(70)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.25 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
	end
	DISABLEJUMPING = false
	ATTACK = false
end

function EAbility()
	ATTACK = true
	ATTACK = false
end

function SwordAttack1()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.25 * Player_Size, 0.5 * Player_Size, -0.75 * Player_Size) * ANGLES(RAD(160), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461842", HitboxPart, 1.2, MRANDOM(8, 9) / 10)
	local HASHITFLOOR = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		local SWORDHIT, SWORDPOS = Raycast(EffectPart.Position, (CF(EffectPart.Position, EffectPart.Position + VT(0, -1, 0))).lookVector, 1 * Player_Size, Character)
		if SWORDHIT ~= nil and HASHITFLOOR == false and SWORDHIT.Parent:FindFirstChild("Humanoid") == nil then
			HASHITFLOOR = true
			--print(SWORDHIT.Material)
			if SWORDHIT.Material == Enum.Material.Grass or SWORDHIT.Material == Enum.Material.Ice or SWORDHIT.Material == Enum.Material.Fabric or SWORDHIT.Material == Enum.Material.SmoothPlastic or SWORDHIT.Material == Enum.Material.Sand or SWORDHIT.Material == Enum.Material.Plastic or SWORDHIT.Material == Enum.Material.Neon or SWORDHIT.Material == Enum.Material.Foil then
				CreateSound("525717773", EffectPart, 1.2 , MRANDOM(8, 12) / 10)
			elseif SWORDHIT.Material == Enum.Material.Metal or SWORDHIT.Material == Enum.Material.Concrete or SWORDHIT.Material == Enum.Material.Brick or SWORDHIT.Material == Enum.Material.CorrodedMetal or SWORDHIT.Material == Enum.Material.Slate or SWORDHIT.Material == Enum.Material.Marble or SWORDHIT.Material == Enum.Material.Granite or SWORDHIT.Material == Enum.Material.DiamondPlate or SWORDHIT.Material == Enum.Material.Pebble or SWORDHIT.Material == Enum.Material.Cobblestone then
				CreateSound("470790670", EffectPart, 1 , MRANDOM(8, 12) / 10)
				for i = 1, MRANDOM(2, 4) do
					ClangEffect("Bright yellow", "Neon", CF(SWORDPOS) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 10, 3, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
				end
			elseif SWORDHIT.Material == Enum.Material.Wood or SWORDHIT.Material == Enum.Material.WoodPlanks then
				CreateSound("514586161", EffectPart, 1 , MRANDOM(8, 12) / 10)
			end
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		if HASHITFLOOR == true then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(40), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0 * Player_Size, 0.25 * Player_Size, -0.75 * Player_Size) * ANGLES(RAD(20), RAD(0), RAD(55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-132.5), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0 * Player_Size, 0.25 * Player_Size, -0.75 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-150), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		end
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
	Trail.Enabled = false
end

function SwordAttack2()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
	Trail.Enabled = false
end
function SwordAttack3()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(130), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(100), RAD(0), RAD(-71)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(110), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
	Trail.Enabled = false
end
function SwordAttack4()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(130), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
	for i=0, 1.5, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		Humanoid.Jump = true
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Up", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(180), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(110), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
	Trail.Enabled = false
end
function SwordAttack5()
	ATTACK = true
	Animation_Speed = 0.8 * Player_Size
	for i = 1,4 do
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(130), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Trail.Enabled = true
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 10, 10, 10, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(100), RAD(0), RAD(-71)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(110), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	end
	Animation_Speed = 2 * Player_Size
	BLCF = nil
	SCFR = nil
	ATTACK = false
	Trail.Enabled = false
end
function ShootFireball(POSITION1, POSITION2, SPEED, SIZE, DURATION, LOWDAMAGE, HIGHDAMAGE)
	local POS1 = POSITION1
	local POS2 = POSITION2
	local MOUSELOOK = CF((POS1 + POS2) / 2, POS2)
	local FIREBALLSPEED = SPEED * Player_Size
	local FIREBALLDURATION = DURATION
	local FIREBALLCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	local FIREBALLHITSOUNDS = {"522282998", "527535379", "304448425"}
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			local FIREBALLHIT, FIREBALLPOS = Raycast(POS1, MOUSELOOK.lookVector, FIREBALLSPEED, Character)
			POS1 = POS1 + (MOUSELOOK.lookVector * FIREBALLSPEED)
			MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", CF(POS1) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / -10, SIZE / -10, SIZE / -10, 0.1)
			if FIREBALLHIT ~= nil or FIREBALLDURATION <= 0.1 then
				FIREBALLDURATION = 0
				local FireballHitRefpart = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
				FireballHitRefpart.Anchored = true
				FireballHitRefpart.CFrame = CF(FIREBALLPOS)
				game:GetService("Debris"):AddItem(FireballHitRefpart, 5)
				CreateSound(FIREBALLHITSOUNDS[MRANDOM(1, #FIREBALLHITSOUNDS)], FireballHitRefpart, 1.4, MRANDOM(14, 16) / 10)
				for i = 1, MRANDOM(4, 8) do
					MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))), CF(0, MRANDOM(5, 7) / 10 * Player_Size, 0), VT(0, 0, 0), 10, 10, 10, 0, 0, 0, MRANDOM(3, 5) / 100)
				end
				MagicBlock("Bright red", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / 3, SIZE / 3, SIZE / 3, 0.05)
				MagicBlock("Bright orange", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 0.5, SIZE * 0.5, SIZE * 0.5, SIZE / 4, SIZE / 4, SIZE / 4, 0.05)
				MagicBlock("Bright yellow", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 0.25, SIZE * 0.25, SIZE * 0.25, SIZE / 5, SIZE / 5, SIZE / 5, 0.05)
				MagnitudeDamage("", "", "", "", 10, 10, 10, 1, FireballHitRefpart, SIZE / 2, false, LOWDAMAGE, HIGHDAMAGE, 0, "Normal", RootPart, 0, 1, MRANDOM(10, 15), nil, false, true, nil, 0, 0, false)
			else
				FIREBALLDURATION = FIREBALLDURATION - (1 / 30) / Animation_Speed
			end
		until FIREBALLHIT ~= nil or FIREBALLDURATION <= 0
	end))
end
function ShootOmegaFireball(POSITION1, POSITION2, SPEED, SIZE, DURATION, LOWDAMAGE, HIGHDAMAGE)
	local POS1 = POSITION1
	local POS2 = POSITION2
	local MOUSELOOK = CF((POS1 + POS2) / 2, POS2)
	local FIREBALLSPEED = SPEED * Player_Size
	local FIREBALLDURATION = DURATION * Player_Size
	local FIREBALLCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	local FIREBALLHITSOUNDS = {"522282998", "527535379", "304448425"}
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			local FIREBALLHIT, FIREBALLPOS = Raycast(POS1, MOUSELOOK.lookVector, FIREBALLSPEED, Character)
			POS1 = POS1 + (MOUSELOOK.lookVector * FIREBALLSPEED)
			MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", CF(POS1) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / -10, SIZE / -10, SIZE / -10, 0.1)
			if FIREBALLHIT ~= nil or FIREBALLDURATION <= 0.1 then
				FIREBALLDURATION = 0
				local FireballHitRefpart = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
				FireballHitRefpart.Anchored = true
				FireballHitRefpart.CFrame = CF(FIREBALLPOS)
				game:GetService("Debris"):AddItem(FireballHitRefpart, 5)
				CreateSound(FIREBALLHITSOUNDS[MRANDOM(1, #FIREBALLHITSOUNDS)], FireballHitRefpart, 1.4, MRANDOM(14, 16) / 10)
				for i = 1, MRANDOM(4, 8) do
					MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))), CF(0, MRANDOM(5, 7) / 10 * Player_Size, 0), VT(0, 0, 0), 10, 10, 10, 0, 0, 0, MRANDOM(3, 5) / 100)
				end
				for i = 1,1 do
					MagicBlock("Bright red", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / 3, SIZE / 3, SIZE / 3, 0.05)
					MagicBlock("Bright orange", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 5, SIZE * 5, SIZE * 5, SIZE / 4, SIZE / 4, SIZE / 4, 0.05)
					MagicBlock("Bright yellow", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 5, SIZE * 5, SIZE * 5, SIZE / 5, SIZE / 5, SIZE / 5, 0.05)
					MagnitudeDamage("", "", "", "", 10, 10, 10, 1, FireballHitRefpart, SIZE / 2, false, LOWDAMAGE, HIGHDAMAGE, 0, "Normal", RootPart, 0, 1, MRANDOM(10, 15), nil, false, true, nil, 0, 0, false)
				end
			else
				FIREBALLDURATION = FIREBALLDURATION - (1 / 30) / Animation_Speed
			end
		until FIREBALLHIT ~= nil or FIREBALLDURATION <= 0
	end))
end
function FirePillar(POSITION1, POSITION2, SIZE, RISE, RANGE, LOWDAMAGE, HIGHDAMAGE, LASTINGTIME)
	local POS1 = POSITION1
	local POS2 = POSITION2
	local MOUSELOOK = CF((POS1 + POS2) / 2, POS2)
	local FIREPILLARHITSOUNDS = {"171378971", --[["646619365",--]] "472579737"--[[, "144140670"--]]}
	local FIREPILLARCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	local FIREPILLAR1HIT, FIREPILLAR1POS = Raycast(POS1, MOUSELOOK.lookVector, RANGE * Player_Size, Character)
	local FirePillarRefpart1 = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	FirePillarRefpart1.Anchored = true
	FirePillarRefpart1.CFrame = CF(FIREPILLAR1POS) * CF(0, 10, 0)
	game:GetService("Debris"):AddItem(FirePillarRefpart1, 5)
	local FIREPILLAR2HIT, FIREPILLAR2POS = Raycast(FirePillarRefpart1.Position, CF(FirePillarRefpart1.Position, FirePillarRefpart1.Position + VT(0, -1, 0)).lookVector, 999, Character)
	if FIREPILLAR2HIT ~= nil then
		FirePillarRefpart1.Parent = nil
		local FirePillarRefpart2 = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
		FirePillarRefpart2.Anchored = true
		FirePillarRefpart2.CFrame = CF(FIREPILLAR2POS)
		game:GetService("Debris"):AddItem(FirePillarRefpart2, 5)
		CreateSound(FIREPILLARHITSOUNDS[MRANDOM(1, #FIREPILLARHITSOUNDS)], FirePillarRefpart2, 1.2, MRANDOM(11, 13) / 10)
		for i = 1, MRANDOM(5, 10) do
			MagicBlock(FIREPILLARCOLORS[MRANDOM(1, #FIREPILLARCOLORS)], "Neon", FirePillarRefpart2.CFrame * ANGLES(RAD(MRANDOM(-60, 60)), 0, RAD(MRANDOM(-60, 60))), CF(0, MRANDOM(5, 7) / 10 * Player_Size, 0), VT(0, 0, 0), 30, 30, 30, 0, 0, 0, MRANDOM(3, 5) / 100)
		end
		for i = 1, MRANDOM(15, 20) do
			local FIREEFFECTSIZE = MRANDOM(1, 2)
			MagicBlock(FIREPILLARCOLORS[MRANDOM(1, #FIREPILLARCOLORS)], "Neon", FirePillarRefpart2.CFrame, CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-20, 20)), 0), VT(MRANDOM(SIZE / 6, SIZE / 4), 0, 0), FIREEFFECTSIZE, FIREEFFECTSIZE, FIREEFFECTSIZE, -0.02, -0.02, -0.02, MRANDOM(1, 2) / 100)
		end
		MagicCylinder("Bright red", "Neon", CF(FIREPILLAR2POS), ANGLES(0, 0, 0), VT(0, 0, 0), SIZE, 0.1, SIZE, 1.5, 0, 1.5, LASTINGTIME)
		MagicSphere("Bright red", "Neon", FirePillarRefpart2.CFrame, ANGLES(0, 0, 0), VT(0, 0, 0), SIZE, 0.1, SIZE, 1.5, RISE, 1.5, LASTINGTIME)
		MagicSphere("Bright orange", "Neon", FirePillarRefpart2.CFrame, ANGLES(0, 0, 0), VT(0, 0, 0), SIZE * 0.5, 0.1, SIZE * 0.5, 1.5, RISE * 0.75, 1.5, LASTINGTIME)
		MagicSphere("Bright yellow", "Neon", FirePillarRefpart2.CFrame, ANGLES(0, 0, 0), VT(0, 0, 0), SIZE * 0.25, 0.1, SIZE * 0.25, 1.5, RISE * 0.375, 1.5, LASTINGTIME)
		MagnitudeDamage("", "", "", "", 10, 10, 10, 1, FirePillarRefpart2, SIZE / 3, false, LOWDAMAGE, HIGHDAMAGE, 0, "Normal", RootPart, 0, 1, MRANDOM(10, 15), nil, false, true, "Movement", -0.1, 3, true)
	end
end

function Attack1()
	ATTACK = true
	local FIREEFFECTCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		for i = 1, 2 do
			MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0, MRANDOM(-10, 10) / 10 * Player_Size, 0) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, 0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(5), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	Snap:Play()
	CreateSound("154324879", LeftArm, 1.4, 1.5)
	ShootFireball((LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size)).p, Mouse.hit.p, 1, 100, 2.1, 5, 10)
	MagicBlock("Bright red", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.05)
	MagicBlock("Bright orange", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
	MagicBlock("Bright yellow", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.05, 0.05, 0.05, 0.5, 0.5, 0.5, 0.05)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(50)) * ANGLES(RAD(2.5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25 * Player_Size, 0.25 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-12.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.9 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end

function Attack2()
	ATTACK = true
	local FIREEFFECTCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RootPart.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", Head.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftLeg.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightLeg.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(35)) * ANGLES(RAD(2.5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.75 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(50)) * ANGLES(RAD(80), RAD(-20), RAD(-30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	Snap:Play()
	CreateSound("549224856", LeftArm, 1, MRANDOM(11, 13) / 10)
	FirePillar(RootPart.Position, mouse.Hit.p, 2500, 700.5, 1, 20, 24, 0.025)
	MagicBlock("Bright red", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.05)
	MagicBlock("Bright orange", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
	MagicBlock("Bright yellow", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.05, 0.05, 0.05, 0.5, 0.5, 0.5, 0.05)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RootPart.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", Head.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftLeg.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightLeg.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(25)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.25 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-20 + MRANDOM(-2.5, 2.5))) * ANGLES(RAD(70 + MRANDOM(-2.5, 2.5)), RAD(40), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-12.5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		--[[
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-30)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-10 + MRANDOM(-2.5, 2.5))) * ANGLES(RAD(40 + MRANDOM(-2.5, 2.5)), RAD(70), RAD(20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(10)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		--]]
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end
FireballBarrage = false
function Attack3()
	ATTACK = true
	FireballBarrage = true
	local FIREEFFECTCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		for i = 1, 2 do
			MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0, MRANDOM(-10, 10) / 10 * Player_Size, 0) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, 0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(5), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	Snap:Play()
	CreateSound("154324879", LeftArm, 1.4, 1.5)
	while FireballBarrage == true do
		ShootOmegaFireball((LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size)).p, Torso.Position + Vector3.new(math.random(-20,-10),math.random(0,0),math.random(-20,-10)), 5, 20, 2.1, 5, 10)
		MagicBlock("Bright red", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.05)
		MagicBlock("Bright orange", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
		MagicBlock("Bright yellow", "Neon", LeftArm.CFrame * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), 0.05, 0.05, 0.05, 0.5, 0.5, 0.5, 0.05)
		wait()
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(50)) * ANGLES(RAD(2.5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25 * Player_Size, 0.25 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-12.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.9 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end

function Attack4()
	ATTACK = true
	local FIREEFFECTCOLORS = {"Bright red", "Bright orange", "Bright yellow"}
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RootPart.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", Head.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftLeg.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightLeg.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(35)) * ANGLES(RAD(2.5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.75 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(50)) * ANGLES(RAD(80), RAD(-20), RAD(-30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	Snap:Play()
	wait(1)
	for i = 1,10 do
		for i=1,15 do
			CreateSound("549224856", LeftArm, 1, MRANDOM(11, 13) / 10)
			FirePillar(RootPart.Position, RootPart.Position + Vector3.new(math.random(-1000,1000),math.random(-100,100),math.random(-1000,1000)), 250, math.random(70,7000), 2000, 1, 2, 0.025)
			wait()
		end
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RootPart.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", Head.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftLeg.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightLeg.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		Swait()
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RootPart.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightArm.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", Head.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", LeftLeg.CFrame * CF(0 * Player_Size, MRANDOM(-15, -10) / 10 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), 0, RAD(MRANDOM(-360, 360))), CF(0, 0, -0.1) * ANGLES(0, 0, RAD(MRANDOM(-20, 20))), VT(0, 1, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		MagicBlock(FIREEFFECTCOLORS[MRANDOM(1, #FIREEFFECTCOLORS)], "Neon", RightLeg.CFrame * CF(0 * Player_Size, MRANDOM(-2, 2) * Player_Size, 0 * Player_Size) * ANGLES(0, RAD(MRANDOM(-360, 360)), 0), CF(0, MRANDOM(5, 10) / 100, 0) * ANGLES(0, RAD(MRANDOM(-10, 10)), 0), VT(MRANDOM(20, 40) / 10, 0, 0), 10, 10, 10, -0.05, -0.05, -0.05, 0.05)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(25)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.25 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-20 + MRANDOM(-2.5, 2.5))) * ANGLES(RAD(70 + MRANDOM(-2.5, 2.5)), RAD(40), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-12.5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		--[[
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-30)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-10 + MRANDOM(-2.5, 2.5))) * ANGLES(RAD(40 + MRANDOM(-2.5, 2.5)), RAD(70), RAD(20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(10)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		--]]
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end

function Move1()
	ATTACK = true
	ATTACK = false
end

function Move2()
	ATTACK = true
	ATTACK = false
end

function Move3()
	ATTACK = true
	ATTACK = false
end

function Move4()
	ATTACK = true
	ATTACK = false
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	      SET THINGS UP
--\\=================================//

if Start_Equipped == true then
	ATTACK = true
	EQUIPPED = true
	if Disable_Animate == true then
		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()
	end
	if Disable_Animator == true then
		ANIMATOR.Parent = nil
	end
	if Disable_Moving_Arms == true then
		RSH = Torso["Right Shoulder"]
		LSH = Torso["Left Shoulder"]
		RSH.Parent = nil
		LSH.Parent = nil
		if Use_Motors_Instead_Of_Welds == true then
			RightShoulder = IT("Motor")
			LeftShoulder = IT("Motor")
		else
			RightShoulder = IT("Weld")
			LeftShoulder = IT("Weld")
		end
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = Torso
		RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) 
		RightShoulder.Part1 = Character["Right Arm"]
		RightShoulder.Parent = Torso
		LeftShoulder.Name = "Left Shoulder"
		LeftShoulder.Part0 = Torso
		LeftShoulder.C0=CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1=CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.Part1 = Character["Left Arm"]
		LeftShoulder.Parent = Torso
		RIGHTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
		LEFTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	end
	if Start_Equipped_With_Equipped_Animation == true then
		Swait()
		EquipWeapon()
	end
	ATTACK = false
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

function MouseDown(Mouse)
	if ATTACK == true or EQUIPPED == false then
		return
	end
	HOLD = true
	if COMBO == 1 then
		COMBO = 2
		SwordAttack1()
	elseif COMBO == 2 then
		COMBO = 3
		SwordAttack2()
	elseif COMBO == 3 then
		COMBO = 4
		SwordAttack3()
	elseif COMBO == 4 then
		COMBO = 5
		SwordAttack4()
	elseif COMBO == 5 then
		COMBO = 1
		SwordAttack5()
	end
	coroutine.resume(coroutine.create(function()
		for i=1, 50 do
			if ATTACK == false then
				Swait()
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	if Key == "f" and Can_Equip_Or_Unequip == true and ATTACK == false then
		ATTACK = true
		COMBO = 1
		if EQUIPPED == false then
			EQUIPPED = true
			if Disable_Animate == true then
				ANIMATE.Parent = nil
				local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
				IDLEANIMATION:Play()
			end
			if Disable_Animator == true then
				ANIMATOR.Parent = nil
			end
			if Disable_Moving_Arms == true then
				RSH = Torso["Right Shoulder"]
				LSH = Torso["Left Shoulder"]
				RSH.Parent = nil
				LSH.Parent = nil
				if Use_Motors_Instead_Of_Welds == true then
					RightShoulder = IT("Motor")
					LeftShoulder = IT("Motor")
				else
					RightShoulder = IT("Weld")
					LeftShoulder = IT("Weld")
				end
				RightShoulder.Name = "Right Shoulder"
				RightShoulder.Part0 = Torso
				RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) 
				RightShoulder.Part1 = Character["Right Arm"]
				RightShoulder.Parent = Torso
				LeftShoulder.Name = "Left Shoulder"
				LeftShoulder.Part0 = Torso
				LeftShoulder.C0=CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				LeftShoulder.C1=CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				LeftShoulder.Part1 = Character["Left Arm"]
				LeftShoulder.Parent = Torso
				RIGHTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
				LEFTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
			end
			Swait()
			EquipWeapon()
		elseif EQUIPPED == true then
			EQUIPPED = false
			UnequipWeapon()
			if Disable_Animator == true then
				ANIMATOR.Parent = Humanoid
			end
			if Disable_Animate == true then
				ANIMATE.Parent = Character
			end
			Swait()
			if Disable_Moving_Arms == true then
				RightShoulder.Parent = nil
				LeftShoulder.Parent = nil
				RSH.Parent = Torso
				LSH.Parent = Torso
			end
		end
		ATTACK = false
	end
	if Key == "e" and EQUIPPED == true and ATTACK == false then
		GodSlash = true
		Attack1()
		GodSlash = false
	end
	if Key == "q" and EQUIPPED == true and ATTACK == false then
		Attack2()
	end
	if Key == "r" and EQUIPPED == true and ATTACK == false and FireballBarrage == false then
		Apoc = true
		Attack3()
		Apoc = false
	end
	if Key == "t" and EQUIPPED == true and ATTACK == false then
		Apoc = true
		Attack4()
		Apoc = false
	end
end

function KeyUp(Key)
	if Key == "r" and FireballBarrage == true then
		FireballBarrage = false
	end
end

if Use_HopperBin == false then

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

elseif Use_HopperBin == true then
	WEAPONTOOL.Parent = Backpack
	script.Parent = WEAPONTOOL
	function SelectTool(Mouse)
		Mouse.Button1Down:connect(function()
			MouseDown(Mouse)
		end)
		Mouse.Button1Up:connect(function()
			MouseUp(Mouse)
		end)
		Mouse.KeyDown:connect(KeyDown)
		Mouse.KeyUp:connect(KeyUp)
	end
	function DeselectTool(Mouse)
	end
	WEAPONTOOL.Selected:connect(SelectTool)
	WEAPONTOOL.Deselected:connect(DeselectTool)
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

while true do
	Swait()
	if HitboxPart ~= nil and ATTACK == false and StaggerHit.Value == false and Stagger.Value == false and Stun.Value == false then
		HitboxPart.Name = "NilHitbox"
	else
		HitboxPart.Name = "Hitbox"
	end
	if Enable_Gui == true then
		UpdateGUI()
	end
	UpdateSkillsAndStuff()
	if Walkspeed_Depends_On_Movement_Value == true then
		if Movement.Value < 0 or StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true or Rooted.Value == true then
			Humanoid.WalkSpeed = 0
		else
			Humanoid.WalkSpeed = 16 * Movement.Value * Player_Size
		end
	end
	if Enable_Stun == true and StunValue.Value >= Max_Stun then
		StunValue.Value = 0
		Stun.Value = true
	end
	if Enable_Stagger_Hit == true then
		if StaggerHit.Value == true and STAGGERHITANIM == false then
			coroutine.resume(coroutine.create(function()
				STAGGERHITANIM = true
				while ATTACK == true do
					Swait()
				end
				StaggerHitAnimation()
				StaggerHit.Value = false
				STAGGERHITANIM = false
			end))
		end
	else
		StaggerHit.Value = false
	end
	if Enable_Stagger == true then
		if Stagger.Value == true and STAGGERANIM == false then
			coroutine.resume(coroutine.create(function()
				STAGGERANIM = true
				while ATTACK == true do
					Swait()
				end
				StaggerAnimation()
				Stagger.Value = false
				STAGGERANIM = false
			end))
		end
	else
		Stagger.Value = false
	end
	if Enable_Stun == true then
		if Stun.Value == true and STUNANIM == false then
			coroutine.resume(coroutine.create(function()
				StunValue.Value = 0
				STUNANIM = true
				while ATTACK == true do
					Swait()
				end
				StunAnimation()
				Stun.Value = false
				STUNANIM = false
			end))
		end
	else
		StunValue.Value = 0
		Stun.Value = false
	end
	if DONUMBER >= .5 then
		HANDIDLE = true
	elseif DONUMBER <= 0 then
		HANDIDLE = false
	end
	if HANDIDLE == false then
		DONUMBER = DONUMBER + 0.003 / Animation_Speed
	else
		DONUMBER = DONUMBER - 0.003 / Animation_Speed
	end
	if ATTACK == false then
		IDLENUMBER = IDLENUMBER + 1
	else
		IDLENUMBER = 0
	end
	if Enable_Stats == true then
		for _, v in pairs (ChangeStat:GetChildren()) do
			if v:FindFirstChild("Duration") ~= nil then
				v:FindFirstChild("Duration").Value = v:FindFirstChild("Duration").Value - (1 / 30) / Animation_Speed
				if v:FindFirstChild("Duration").Value <= 0 then
					v.Parent = nil
				end
			end
			if v.Name == "ChangeDefense" then
				CHANGEDEFENSE = CHANGEDEFENSE + v.Value
			elseif v.Name == "ChangeDamage" then
				CHANGEDAMAGE = CHANGEDAMAGE + v.Value
			elseif v.Name == "ChangeMovement" then
				CHANGEMOVEMENT = CHANGEMOVEMENT + v.Value
			end
		end
		Defense.Value = 1 + (CHANGEDEFENSE)
		if Defense.Value <= 0.01 then
			Defense.Value = 0.01
		end
		Damage.Value = 1 + (CHANGEDAMAGE)
		if Damage.Value <= 0 then
			Damage.Value = 0
		end
		Movement.Value = 1 + (CHANGEMOVEMENT)
		if Movement.Value <= 0 then
			Movement.Value = 0
		end
	CHANGEDEFENSE = 0
	CHANGEDAMAGE = 0
	CHANGEMOVEMENT = 0
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and EQUIPPED == true and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk" and EQUIPPED == true) or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.15 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		WALK = WALK + 1 / Animation_Speed
		if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
			WALK = 0
			if WALKINGANIM == true then
				WALKINGANIM = false
			elseif WALKINGANIM == false then
				WALKINGANIM = true
			end
		end
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0.05 * COS(SINE / WALKSPEEDVALUE) * Player_Size, 0 * Player_Size, -0.1 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(40)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(45 + 2.5 * SIN(SINE / (WALKSPEEDVALUE / 2)))) * RIGHTSHOULDERC0, 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-45 + 2.5 * SIN(SINE / (WALKSPEEDVALUE / 2)))) * ANGLES(RAD(-2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(0.95 * Player_Size, -1 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(130), RAD(0)) * ANGLES(RAD(-1.25 - 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.9 * Player_Size, 0.25 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-2.5 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		end
	end

end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--