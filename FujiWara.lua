--[[
    Stand: The King/Jade Emperor
    User: FujiWara Chujo
]]
local Cn=CFrame.new
local CA=CFrame.Angles
local mr=math.rad
local rn=math.random
local mc=math.cos
local Vn=Vector3.new
local NR=NumberRange.new
local NSeq=NumberSequence.new
local plrs=game:service"Players"
local wrk=game:service"Workspace"
local deb=game:service"Debris"
local IS=game:GetService("InsertService")
local p=plrs.LocalPlayer
local cam=wrk.CurrentCamera
local char=p.Character
local mouse=p:GetMouse()
local lam=char["Left Arm"]
local ram=char["Right Arm"]
local llg=char["Left Leg"]
local rlg=char["Right Leg"]
local hed=char.Head
local tor=char.Torso
local larm = lam
local rarm = ram
local lleg = llg
local rleg = rlg
local torso = tor
local hrp=char.HumanoidRootPart
local PlayerSpeed = char.Humanoid.WalkSpeed
local on=false
local noRig=false
local curws=16
local sine=0
local ift={}
local ifxd=false
local run=false
local stance="Cane"
local Speed = 16
local Health = 9000

PlayerSpeed = 16
--[[
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=260998937"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=260361888"
end)
]]
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}

local trappedTorsos = {}

---Functions

function FndHm(flnm)
for i,v in pairs(flnm:GetChildren()) do
if v:IsA("Humanoid") then
return v
end
end
end
local hum=FndHm(char)
--hum.Name=""


function chrDes(inst)
        local ret=nil
        for _,v in pairs(game.Players:GetChildren()) do
                if inst:IsDescendantOf(v) then
                        ret=v
                        break
                end
        end
        return ret
end

--
function get(a)
local cont={}
for i,v in pairs(a:GetChildren()) do
if v==char then
else
table.insert(cont,v)
pcall(function()
for _,b in pairs(get(v)) do
table.insert(cont,b)
end
end)
end
end
return cont
end
for _,v in pairs(get(game.Workspace)) do
if v:IsA("Sparkles") or v:IsA("Fire") then
v:Destroy()
end
end

--
function inT(qur,tbl)
local a=false
for i,v in pairs(tbl) do
if v==qur then
a=true
break
else
a=false
end
end
return a
end

--
function Tween(a,b,c)
return a+(b-a)*c
end

--
function Avg(a,b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end

--
function Lerp(c1,c2,tim)
        local com1={c1.C0.X,c1.C0.Y,c1.C0.Z,c1.C0:toEulerAnglesXYZ()}
        local com2={c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do 
                com1[i]=v+(com2[i]-v)*tim
        end
        return Cn(com1[1],com1[2],com1[3])*CA(select(4,unpack(com1)))
end

function RLerp(c1,c2,tim)
        return c1:lerp(c2,tim)
end

--
function ALerp(c1,c2,tim)
        local com1={c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
        local com2={c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do 
                com1[i]=v+(com2[i]-v)*tim
        end
        return Cn(com1[1],com1[2],com1[3])*CA(select(4,unpack(com1)))
end

--
function Lerprs(ud,ud2,al)
local a,b,c,d=ud.X.Scale,ud.X.Offset,ud.Y.Scale,ud.Y.Offset
local a2,b2,c2,d2=ud2.X.Scale,ud2.X.Offset,ud2.Y.Scale,ud2.Y.Offset
local x,y,z,w=(a+(a2-a)*al),(b+(b2-b)*al),(c+(c2-c)*al),(d+(d2-d)*al)
return UDim2.new(x,y,z,w)
end

--
function newAnim(wld)
        local asd={["Weld"]=wld;["Int"]=0;["Frame"]=1;}
        asd.getFrames=function()
                local num=0
                for _,v in pairs(asd) do
                        pcall(function()
                                num=num+v.Length
                        end)
                end
                return num
        end
        return asd
end

--
function newKF(tab,c0,lng,off)
        off=off or 1
        table.insert(tab,{["C0"]=c0,["Length"]=lng,["Offset"]=off})
end

--
function runKF(tab)
        tab.Int=tab.Int+1
        if tab.Int>=tab[tab.Frame].Length then
                tab.Frame=tab.Frame+1
                tab.Int=0
                if tab.Frame>#tab then
                        tab.Frame=1
                end
        end
        tab.Weld.C0=RLerp(tab.Weld.C0,tab[tab.Frame].C0,(tab[tab.Frame].Offset/tab[tab.Frame].Length)*tab.Int)
end

--
function nwPrt(prnt,siz,cf,col)
        local prt=Instance.new("Part")
        prt.Parent=prnt
        prt.FormFactor=3
        prt.Name="Part"
        prt.Size=siz
        prt.CanCollide=false
        prt.Anchored=true
        prt.Locked=true
        prt.TopSurface=10
        prt.BottomSurface=10
        prt.FrontSurface=10
        prt.BackSurface=10
        prt.LeftSurface=10
        prt.RightSurface=10
        prt:BreakJoints()
        prt.CFrame=cf or CFrame.new(30,10,30)
        prt.Material="SmoothPlastic"
        prt.BrickColor=BrickColor.new(col)
        m=Instance.new("SpecialMesh",prt)
        m.MeshType=6
        return prt
end

--
function nwWdg(prnt,siz,cf,col)
        local prt=Instance.new("WedgePart")
        prt.Parent=prnt
        prt.FormFactor=3
        prt.Name="Part"
        prt.Size=siz
        prt.CanCollide=false
        prt.Anchored=false
        prt.Locked=true
        prt.TopSurface=0
        prt.BottomSurface=0
        prt:BreakJoints()
        prt.CFrame=cf or CFrame.new(30,10,30)
        prt.Material="SmoothPlastic"
        prt.BrickColor=BrickColor.new(col)
        return prt
end

--
function newGui(prnt,clsnm,siz,pos,bsp,bc,bt)
        local gui=Instance.new(clsnm,prnt)
        gui.Size=siz or UDim2.new(0,100,0,100)
        gui.Position=pos or UDim2.new(0,0,0,0)
        gui.BorderSizePixel=bsp or 0
        gui.BackgroundColor3=bc or Color3.new(0,0,0)
        gui.BackgroundTransparency=bt or 1
        return gui
end

--
function nwWld(wp0,wp1,wc0)
wld = Instance.new("Weld",wp1)
wld.Part0=wp0
wld.Part1=wp1
wld.C0=wc0 or Cn(0,0,0)
return wld
end

function newWeld(wp0,wp1,wc0x,wc0y,wc0z)
    local wld = Instance.new("Weld",wp1)
    wld.Part0 = wp0
    wld.Part1 = wp1
    wld.C0 = CFrame.new(wc0x,wc0y,wc0z)
end

--
function nwSnd(prnt,pch,vol,id)
        local s=Instance.new("Sound",prnt)
        s.Pitch=pch
        s.Volume=vol
        s.SoundId="rbxassetid://"..id
        s.PlayOnRemove=true
        return s
end

--
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
end

function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
        local fp=it("Part")
        fp.formFactor=formfactor
        fp.Parent=parent
        fp.Reflectance=reflectance
        fp.Transparency=transparency
        fp.CanCollide=false
        fp.Locked=true
        fp.BrickColor=BrickColor.new(tostring(brickcolor))
        fp.Name=name
        fp.Size=size
        fp.Position=Character.Torso.Position
        nooutline(fp)
        fp.Material=material
        fp:BreakJoints()
        return fp
end

function mesh(Mesh,part,meshtype,meshid,offset,scale)
        local mesh=it(Mesh)
        mesh.Parent=part
        if Mesh=="SpecialMesh" then
                mesh.MeshType=meshtype
                mesh.MeshId=meshid
        end
        mesh.Offset=offset
        mesh.Scale=scale
        return mesh
end

function weld(parent,part0,part1,c0,c1)
        local weld=it("Weld")
        weld.Parent=parent
        weld.Part0=part0
        weld.Part1=part1
        weld.C0=c0
        weld.C1=c1
        return weld
end
TfwTimeStopped = false
function Damagefunc(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                if hit.Parent:findFirstChild("DebounceHit")~=nil then
                        if hit.Parent.DebounceHit.Value==true then
                                return
                        end
                end
                --[[if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                --hs(hit,1.2)
                c=Instance.new("ObjectValue")
                c.Name="creator"
                c.Value=game:service("Players").LocalPlayer
                c.Parent=h
                game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                --h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                        print(block.className)
                        if block.className=="NumberValue" then
                                if block.Value>0 then
                                        blocked=true
                                        if decreaseblock==nil then
                                                block.Value=block.Value-1
                                        end
                                end
                        end
                        if block.className=="IntValue" then
                                if block.Value>0 then
                                        blocked=true
                                        if decreaseblock~=nil then
                                                block.Value=block.Value-1
                                        end
                                end
                        end
                end
                if blocked==false then
                        --h:TakeDamage(Damage)
                        if TfwTimeStopped == false then
                            h.Health=h.Health-Damage
                            ShowDamage((hit.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "MUDA", 1.5, Part.BrickColor.Color)
                        elseif TfwTimeStopped == true then
                            repeat wait() until TfwTimeStopped == false
                            h.Health=h.Health-0.1
                            ShowDamage((hit.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "MUDA", 1.5, Part.BrickColor.Color)
                        end
                else
                        h.Health=h.Health-(Damage/2)
                        ShowDamage((hit.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                        hum=hit.Parent.Humanoid
                        hum.PlatformStand=true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand=false
                        end),hum)
                        local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
                        --hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        local bodvol=Instance.new("BodyVelocity")
                        bodvol.velocity=angle*knockback
                        bodvol.P=500
                        bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodvol.Parent=hit
                        rl = Instance.new("BodyAngularVelocity")
                        rl.P = 3000
                        rl.maxTorque = Vector3.new(500000, 500000, 500000)
                        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                        rl.Parent = hit
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Attract" then
                        hum=hit.Parent.Humanoid
                        hum.PlatformStand=true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand=false
                        end),hum)
                        local angle=(hit.Position-(Property.Position-Vector3.new(0,0,0))).unit
                        --hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        local bodvol=Instance.new("BodyVelocity")
                        bodvol.velocity=-angle*-knockback
                        bodvol.P=500
                        bodvol.maxForce=Vector3.new(-8e+003, -8e+003, -8e+003)
                        bodvol.Parent=hit
                        rl = Instance.new("BodyAngularVelocity")
                        rl.P = 3000
                        rl.maxTorque = Vector3.new(500000, 500000, 500000)
                        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                        rl.Parent = hit
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="MUDA" then
                        hum=hit.Parent.Humanoid
                        hum.PlatformStand=true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand=false
                        end),hum)
                        local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
                        --hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        local bodvol=Instance.new("BodyVelocity")
                        bodvol.velocity=angle*knockback
                        bodvol.P=500
                        bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodvol.Parent=hit
                        rl = Instance.new("BodyAngularVelocity")
                        rl.P = 3000
                        rl.maxTorque = Vector3.new(500000, 500000, 500000)
                        rl.angularvelocity = Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
                        rl.Parent = hit
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                elseif Type == "Killer Queen" then
                        hum=hit.Parent.Humanoid
                        hum.PlatformStand=true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand=false
                        end),hum)
                        local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
                        --hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                        local bodvol=Instance.new("BodyVelocity")
                        bodvol.velocity=angle*knockback
                        bodvol.P=500
                        bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodvol.Parent=hit
                        rl = Instance.new("BodyAngularVelocity")
                        rl.P = 3000
                        rl.maxTorque = Vector3.new(500000, 500000, 500000)
                        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                        rl.Parent = hit
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                        wait(3)
                        KillerQueen = Instance.new("Explosion",hit)
                        KillerQueen.Position = hit.Position
                elseif Type=="Normal" then
                        vp=Instance.new("BodyVelocity")
                        vp.P=500
                        vp.maxForce=Vector3.new(math.huge,0,math.huge)
                        --vp.velocity=Character.Torso.CFrame.lookVector*Knockback
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
                        bodyVelocity.velocity=vt(0,60,0)
                        bodyVelocity.P=5000
                        bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                        bodyVelocity.Parent=hit
                        game:GetService("Debris"):AddItem(bodyVelocity,1)
                        rl=Instance.new("BodyAngularVelocity")
                        rl.P=3000
                        rl.maxTorque=Vector3.new(500000,500000,500000)
                        rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
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
                elseif Type=="Target" then
                        local Targetting = false
                        if Targetting==false then
                                ZTarget=hit.Parent.Torso
                                coroutine.resume(coroutine.create(function(Part)
                                        so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5)
                                        swait(5)
                                        so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5)
                                end),ZTarget)
                                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                                local  targetgui=Instance.new("BillboardGui")
                                targetgui.Parent=ZTarget
                                targetgui.Size=UDim2.new(10,100,10,100)
                                local targ=Instance.new("ImageLabel")
                                targ.Parent=targetgui
                                targ.BackgroundTransparency=1
                                targ.Image="rbxassetid://4834067"
                                targ.Size=UDim2.new(1,0,1,0)
                                cam.CameraType="Scriptable"
                                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                                Targetting=true
                                RocketTarget=ZTarget
                                for i=1,Property do
                                        --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                                        if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                                                swait()
                                        end
                                        --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                                        cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                                        dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                                        cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                                end
                                Targetting=false
                                RocketTarget=nil
                                targetgui.Parent=nil
                                cam.CameraType="Custom"
                        end
                end
                local debounce=Instance.new("BoolValue")
                debounce.Name="DebounceHit"
                debounce.Parent=hit.Parent
                debounce.Value=true
                game:GetService("Debris"):AddItem(debounce,Delay)
                c=Instance.new("ObjectValue")
                c.Name="creator"
                c.Value=Player
                c.Parent=h
                game:GetService("Debris"):AddItem(c,.5)
        end
end

function ShowDamage(Pos, Text, Time, Color)
        local Rate = (1 / 30)
        local Pos = (Pos or Vector3.new(0, 0, 0))
        local Text = (Text or "")
        local Time = (Time or 2)
        local Color = (Color or Color3.new(1, 0, 0))
        local EffectPart = part("Custom",workspace,"Neon",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
        EffectPart.Anchored = true
        local BillboardGui = Instance.new("BillboardGui")
        BillboardGui.Size = UDim2.new(3, 3, 3, 3)
        BillboardGui.Adornee = EffectPart
        local TextLabel = Instance.new("TextLabel")
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(3, 3, 3, 3)
        TextLabel.Text = Text
        TextLabel.TextColor3 = Color
        TextLabel.TextStrokeColor3 = BrickColor.new("Really black").Color
        TextLabel.TextScaled = true
        TextLabel.TextStrokeTransparency = 0
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Parent = BillboardGui
        BillboardGui.Parent = EffectPart
        game.Debris:AddItem(EffectPart, (Time + 0.1))
        EffectPart.Parent = game:GetService("Workspace")
        Delay(0, function()
                local Frames = (Time / Rate)
                for Frame = 1, Frames do
                        wait(Rate)
                        local Percent = (Frame / Frames)
                        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
                        TextLabel.TextTransparency = Percent
                        TextLabel.TextStrokeTransparency = Percent
                end
                if EffectPart and EffectPart.Parent then
                        EffectPart:Destroy()
                end
        end)
end

Player = p
workspace[Player.Name].Archivable=true
pchar = workspace[Player.Name]:Clone() --Create("Model",{Parent=workspace})
pchar.Parent=workspace[Player.Name]
torso=pchar.Torso
humane=pchar.Humanoid
pchar.Name= "The King"
pl=pchar
humane.MaxHealth=Health
wait()
humane.Health=Health
humane.WalkSpeed=Speed

pchar.Head.face:remove()

--m:ClearAllChildren()
---Weld

local law=nwWld(tor,lam,Cn(-1.5,0.5,0))
law.C1=CFrame.new(0,0.5,0)
local raw=nwWld(tor,ram,Cn(1.5,0.5,0))
raw.C1=CFrame.new(0,0.5,0)
local hew=nwWld(tor,hed,Cn(0,1.5,0))
local llw=nwWld(tor,llg,Cn(-0.5,-1,0))
llw.C1=CFrame.new(0,1,0)
local rlw=nwWld(tor,rlg,Cn(0.5,-1,0))
rlw.C1=CFrame.new(0,1,0)
local tow=nwWld(hrp,tor,Cn(0,-1,0))
tow.C1=CFrame.new(0,-1,0)

local hrp2 = pchar.HumanoidRootPart
local tor2 = torso
local hed2 = pchar.Head
local lam2=pchar["Left Arm"]
local ram2=pchar["Right Arm"]
local llg2=pchar["Left Leg"]
local rlg2=pchar["Right Leg"]

local law2=nwWld(tor2,lam2,Cn(-1.5,0.5,0))
law2.C1=CFrame.new(0,0.5,0)
local raw2=nwWld(tor2,ram2,Cn(1.5,0.5,0))
raw2.C1=CFrame.new(0,0.5,0)
local hew2=nwWld(torso,hed2,Cn(0,1.5,0))
local llw2=nwWld(torso,llg2,Cn(-0.5,-1,0))
llw2.C1=CFrame.new(0,1,0)
local rlw2=nwWld(tor2,rlg2,Cn(0.5,-1,0))
rlw2.C1=CFrame.new(0,1,0)
local tow2=nwWld(hrp2,tor2,Cn(0,-1,0))
tow2.C1=CFrame.new(0,-1,0)


local laD=CFrame.new(-1.5,0.5,0)
local raD=CFrame.new(1.5,0.5,0)
local hD=CFrame.new(0,1.5,0)
local tD=CFrame.new(0,-1,0)
local llD=CFrame.new(-0.5,-1,0)
local rlD=CFrame.new(0.5,-1,0)

---Build

---Animations

--Idle
local heid=newAnim(hew)
newKF(heid,hD*CA(mr(-5.5),0,0),50,0.3)
newKF(heid,hD*CA(mr(-4),0,0),40,0.3)
local toid=newAnim(tow)
newKF(toid,tD*Cn(0,2.0125,0)*CA(mr(6),0,0),50,0.3)
newKF(toid,tD*Cn(0,3.0125,0)*CA(mr(5),0,0),40,0.3)
local laid=newAnim(law)
newKF(laid,laD*Cn(0,0.0125,0)*CA(mr(-20),0,mr(0)),10,0.2)
newKF(laid,laD*Cn(0,-0.0125,0)*CA(mr(-20),0,mr(0)),10,0.2)
newKF(laid,laD*Cn(0,0.0125,0)*CA(mr(-20),0,mr(0)),10,0.2)
newKF(laid,laD*Cn(0,-0.0125,0)*CA(mr(-20),0,mr(0)),10,0.2)
local raid=newAnim(raw)
newKF(raid,raD*Cn(0,-0.0125,0)*CA(mr(20),0,mr(0)),50,0.3)
newKF(raid,raD*Cn(0,0.0125,0)*CA(mr(0),0,mr(0)),40,0.3)
local llid=newAnim(llw)
newKF(llid,llD*Cn(0,0.0125,0)*CA(mr(-16),0,0),50,0.3)
newKF(llid,llD*Cn(0,-0.0125,0)*CA(mr(-15),0,mr(0)),40,0.3)
local rlid=newAnim(rlw)
newKF(rlid,rlD*Cn(0,0.0125,0)*CA(mr(-6),0,0),50,0.3)
newKF(rlid,rlD*Cn(0,-0.0125,0)*CA(mr(-5),0,mr(0)),40,0.3)

local heid2=newAnim(hew2)
newKF(heid2,hD*CA(mr(16),0,0),40,0.3)
newKF(heid2,hD*CA(mr(14),0,0),40,0.3)
local toid2=newAnim(tow2)
newKF(toid2,tD*Cn(0,0.5,3)*CA(mr(0),0,0),50,1)
newKF(toid2,tD*Cn(0,1,3)*CA(mr(0),0,0),40,1)
local laid2=newAnim(law2)
newKF(laid2,laD*Cn(0.5,0.0125,-1)*CA(mr(20),mr(50),mr(20)),50,0.3)
newKF(laid2,laD*Cn(0.5,-0.0125,-1)*CA(mr(20),mr(50),mr(20)),40,0.3)
local raid2=newAnim(raw2)
newKF(raid2,raD*Cn(-0.5,-0.0125,-1)*CA(mr(20),mr(-50),mr(-20)),50,0.3)
newKF(raid2,raD*Cn(-0.5,0.0125,-1)*CA(mr(20),mr(-50),mr(-20)),40,0.3)
local llid2=newAnim(llw2)
newKF(llid2,llD*Cn(0,0.0125,0)*CA(mr(0),0,0),50,0.3)
newKF(llid2,llD*Cn(0,-0.0125,0)*CA(mr(0),0,mr(0)),40,0.3)
local rlid2=newAnim(rlw2)
newKF(rlid2,rlD*Cn(0,0.0125,0)*CA(mr(0),0,0),50,0.3)
newKF(rlid2,rlD*Cn(0,-0.0125,0)*CA(mr(0),0,mr(0)),40,0.3)

--Walk
local hewk=newAnim(hew)
newKF(hewk,hD*CA(mr(5),mr(0),0),10,0.2)
newKF(hewk,hD*CA(mr(5),0,0),10,0.2)
newKF(hewk,hD*CA(mr(5),mr(0),0),10,0.2)
newKF(hewk,hD*CA(mr(5),0,0),10,0.2)
local towk=newAnim(tow)
newKF(towk,tD*Cn(0,2.0125,0)*CA(mr(-5),mr(0),0),50,0.4)
newKF(towk,tD*Cn(0,3.0125,0)*CA(mr(-5),mr(0),0),40,0.4)
local lawk=newAnim(law)
newKF(lawk,laD*CA(mr(-40),0,0),20,0.4)
local rawk=newAnim(raw)
newKF(rawk,raD*CA(mr(-40),0,0),20,0.4)
local llwk=newAnim(llw)
newKF(llwk,llD*Cn(0,0.0125,0)*CA(mr(-16),0,0),50,0.3)
newKF(llwk,llD*Cn(0,-0.0125,0)*CA(mr(-15),0,mr(0)),40,0.3)
local rlwk=newAnim(rlw)
newKF(rlwk,rlD*Cn(0,0.0125,0)*CA(mr(-6),0,0),50,0.3)
newKF(rlwk,rlD*Cn(0,-0.0125,0)*CA(mr(-5),0,mr(0)),40,0.3)


--Sprint
local hesp=newAnim(hew)
newKF(hesp,hD*CA(mr(5),mr(0),0),10,0.2)
newKF(hesp,hD*CA(mr(5),0,0),10,0.2)
newKF(hesp,hD*CA(mr(5),mr(0),0),10,0.2)
newKF(hesp,hD*CA(mr(5),0,0),10,0.2)
local tosp=newAnim(tow)
newKF(tosp,tD*Cn(0,2.0125,0)*CA(mr(-5),mr(10),0),10,0.4)
newKF(tosp,tD*Cn(0,3.0125,0)*CA(mr(-5),mr(-10),0),10,0.4)
local lasp=newAnim(law)
newKF(lasp,laD*Cn(0,-0.1,-0.2)*CA(mr(60),0,0),20,0.4)
newKF(lasp,laD*CA(mr(-40),0,0),20,0.4)
local rasp=newAnim(raw)
newKF(rasp,raD*CA(mr(-40),0,0),20,0.4)
newKF(rasp,raD*Cn(0,-0.1,-0.2)*CA(mr(60),0,0),20,0.4)
local llsp=newAnim(llw)
newKF(llsp,llD*Cn(0,0.0125,0)*CA(mr(-16),0,0),50,0.3)
newKF(llsp,llD*Cn(0,-0.0125,0)*CA(mr(-15),0,mr(0)),40,0.3)
local rlsp=newAnim(rlw)
newKF(rlsp,rlD*Cn(0,0.0125,0)*CA(mr(-6),0,0),50,0.3)
newKF(rlsp,rlD*Cn(0,-0.0125,0)*CA(mr(-5),0,mr(0)),40,0.3)

--Jump
local hejp=newAnim(hew)
newKF(hejp,hD*CA(mr(60),0,0),8,0.6)
newKF(hejp,hD*CA(mr(60),0,0),8,0.6)
local tojp=newAnim(tow)
newKF(tojp,tD*CA(mr(0),0,0),8,0.6)
newKF(tojp,tD*CA(mr(0),0,0),8,0.6)
local lajp=newAnim(law)
newKF(lajp,laD*CA(mr(0),0,mr(-5)),16,0.4)
newKF(lajp,laD*CA(mr(0),0,mr(-5)),16,0.4)
local rajp=newAnim(raw)
newKF(rajp,raD*CA(mr(0),0,mr(5)),16,0.4)
newKF(rajp,raD*CA(mr(0),0,mr(5)),16,0.4)
local lljp=newAnim(llw)
newKF(lljp,llD*CA(0,0,mr(-5)),16,0.4)
newKF(lljp,llD*CA(0,0,mr(-5)),16,0.4)
local rljp=newAnim(rlw)
newKF(rljp,rlD*CA(0,0,mr(5)),16,0.4)
newKF(rljp,rlD*CA(0,0,mr(5)),16,0.4)

--Freefall
local heff=newAnim(hew)
newKF(heff,hD*CA(mr(-5),0,0),8,0.6)
newKF(heff,hD*CA(mr(-5),0,0),8,0.6)
local toff=newAnim(tow)
newKF(toff,tD*CA(mr(0),0,0),8,0.6)
newKF(toff,tD*CA(mr(0),0,0),8,0.6)
local laff=newAnim(law)
newKF(laff,laD*CA(mr(140),0,0),16,0.4)
newKF(laff,laD*CA(mr(140),0,0),16,0.4)
local raff=newAnim(raw)
newKF(raff,raD*CA(mr(140),0,0),16,0.4)
newKF(raff,raD*CA(mr(140),0,0),16,0.4)
local llff=newAnim(llw)
newKF(llff,llD*CA(0,0,mr(-5)),16,0.4)
newKF(llff,llD*CA(0,0,mr(-5)),16,0.4)
local rlff=newAnim(rlw)
newKF(rlff,rlD*CA(0,0,mr(5)),16,0.4)
newKF(rlff,rlD*CA(0,0,mr(5)),16,0.4)

--Time Has Stopped
local hesp2=newAnim(hew)
newKF(hesp2,hD*CA(mr(-30),mr(0),mr(0)),10,0.5)
local tosp2=newAnim(tow)
newKF(tosp2,tD*Cn(0,0,0)*CA(mr(30),mr(0),mr(0)),10,0.5)
local lasp2=newAnim(law)
newKF(lasp2,laD*CA(mr(90),mr(0),mr(-60)),20,1.5)
local rasp2=newAnim(raw)
newKF(rasp2,raD*CA(mr(90),mr(0),mr(60)),20,1.5)
local llsp2=newAnim(llw)
newKF(llsp2,llD*Cn(0,0,0)*CA(mr(-30),mr(0),mr(0)),20,0.5)
local rlsp2=newAnim(rlw)
newKF(rlsp2,rlD*Cn(0,0,0)*CA(mr(-30),0,mr(0)),10,0.5)

local hesp3=newAnim(hew2)
newKF(hesp3,hD*CA(mr(-15),mr(0),mr(0)),50,0.2)
local tosp3=newAnim(tow2)
newKF(tosp3,tD*Cn(0,1,3)*CA(mr(0),mr(0),mr(0)),50,0.4)
local lasp3=newAnim(law2)
newKF(lasp3,laD*CA(mr(80),mr(0),mr(65)),30,0.4)
newKF(lasp3,laD*CA(mr(120),mr(0),mr(-60)),50,0.4)
local rasp3=newAnim(raw2)
newKF(rasp3,raD*CA(mr(80),mr(0),mr(-65)),30,0.4)
newKF(rasp3,raD*CA(mr(120),mr(0),mr(60)),50,0.4)
local llsp3=newAnim(llw2)
newKF(llsp3,llD*CA(mr(0),mr(0),mr(1.5)),50,0.4)
local rlsp3=newAnim(rlw2)
newKF(rlsp3,rlD*CA(mr(0),mr(0),mr(-1.5)),50,0.4)

local hesp4=newAnim(hew2)
newKF(hesp4,hD*CA(mr(-10),mr(0),mr(0)),10,0.2)
local tosp4=newAnim(tow2)
newKF(tosp4,tD*Cn(0,1,3)*CA(mr(0),mr(0),mr(0)),10,0.4)
local lasp4=newAnim(law2)
newKF(lasp4,laD*CA(mr(120),mr(0),mr(-60)),20,0.4)
local rasp4=newAnim(raw2)
newKF(rasp4,raD*CA(mr(120),mr(0),mr(60)),20,0.4)
local llsp4=newAnim(llw2)
newKF(llsp4,llD*CA(mr(0),mr(0),mr(1.5)),20,0.4)
local rlsp4=newAnim(rlw2)
newKF(rlsp4,rlD*CA(mr(0),mr(0),mr(-1.5)),10,0.4)

--Let time flow again
local hetoki=newAnim(hew)
newKF(hetoki,hD*CA(mr(0),mr(0),mr(0)),10,0.2)
local totoki=newAnim(tow)
newKF(totoki,tD*Cn(0,0,0)*CA(mr(0),mr(0),mr(0)),10,0.4)
local latoki=newAnim(law)
newKF(latoki,laD*Cn(0,-0.1,-0.2)*CA(mr(0),mr(0),mr(0)),20,0.4)
local ratoki=newAnim(raw)
newKF(ratoki,raD*CA(mr(0),mr(0),mr(0)),20,0.4)
local lltoki=newAnim(llw)
newKF(lltoki,llD*CA(mr(0),mr(0),mr(0)),20,0.4)
local rltoki=newAnim(rlw)
newKF(rltoki,rlD*Cn(0,0,0)*CA(mr(0),mr(0),mr(0)),10,0.4)
--//Example of Keyframe
--[[
local hesp2=newAnim(hew)
newKF(hesp2,hD*CA(mr(0),mr(0),mr(0)),10,0.2)
local tosp2=newAnim(tow)
newKF(tosp2,tD*CA(mr(0),mr(0),mr(0)),10,0.4)
local lasp2=newAnim(law)
newKF(lasp2,laD*CA(mr(0),mr(0),mr(0)),20,0.4)
local rasp2=newAnim(raw)
newKF(rasp2,raD*CA(mr(0),mr(0),mr(0)),20,0.4)
local llsp2=newAnim(llw)
newKF(llsp2,llD*CA(mr(0),mr(0),mr(0)),20,0.4)
local rlsp2=newAnim(rlw)
newKF(rlsp2,rlD*CA(mr(0),mr(0),mr(0)),10,0.4)
]]
function onDamage(Part)
    if Part:findFirstChild("Humanoid") == nil and Part:findFirstChild("BodyVelocity") ~= nil or Part:findFirstChild("Humanoid") == nil and Part:findFirstChild("RocketPropulsion") ~= nil then
        Part.Anchored = true
        if Part:findFirstChild("Mesh") ~= nil then
            z = Part:findFirstChild("Mesh")
            for i = 1,5 do
                z.Scale = z.Scale + Vector3.new(1,1,1)
                wait(0.05)
            end
        end
    end
end

function trappedTorsos:isTrapped(t)
    for nildata, index in next,self do
        if index==t then
            return true
        end
    end
    return false
end

function trappedTorsos:Capture(hit)
    if hit:isA'BasePart' then
        if not trappedTorsos:isTrapped(hit) and not hit:IsDescendantOf(char) then
            table.insert(trappedTorsos, hit)
            hit.Anchored = true --trapped!
            --print'trapped!'
        end
    end
end

function trappedTorsos:ReleasePart(hit)
    if hit:isA'BasePart' then
        if trappedTorsos:isTrapped(hit) and not hit:IsDescendantOf(char) then
            table.remove(trappedTorsos, hit)
            hit.Anchored = false --trapped!
            --print'trapped!'
        end
    end
end

function trappedTorsos:Trip(hit)
    if hit:isA'BasePart' then
        if not hit:IsDescendantOf(char) then
            hit.Parent.Humanoid.PlatformStand = true
        end
    end
end

function trappedTorsos:Repel(hit)
    if hit:isA'BasePart' then
        if not hit:IsDescendantOf(char) then
            Damagefunc(torso,hit,5,15,math.random(100,100),"Knockdown",RootPart,.2,1)
        end
    end
end

function trappedTorsos:Attract(hit)
    if hit:isA'BasePart' then
        if not hit:IsDescendantOf(char) then
            Damagefunc(torso,hit,5,15,math.random(100,100),"Attact",RootPart,.2,1)
        end
    end
end

function trappedTorsos:Target(hit)
    if hit:isA'BasePart' then
        if not hit:IsDescendantOf(char) then
            Target = hit
        end
    end
end

function trappedTorsos:Release()
    for i,v in next, self do
        if type(v)=='userdata' then
            if v:isA('BasePart') then
                v.Anchored = false
                self[i] = nil
            end
        end
    end
end

--Za Warudo
Attacking = false
WasOn = true
function TheWorld(Mode)
    if Mode == "Time Stop" then
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",tor)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(25)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Capture(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        workspace.Gravity = 70
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
        hum.WalkSpeed = 16
     end
     if Mode == "Light Gravity" then
        LightGrav = true
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        AreaOfEffect:Destroy()
        workspace.Gravity = -196.2
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
        HeavyGrav = false
        NormalGrav = false
        hum.WalkSpeed = 16
     end
     if Mode == "Normal Gravity" then
        NormalGrav = true
        LightGrav = false
        HeavyGrav = false
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        AreaOfEffect:Destroy()
        workspace.Gravity = 196.2
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
        hum.WalkSpeed = 16
     end
     if Mode == "Heavy Gravity" then
        HeavyGrav = true
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Trip(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        workspace.Gravity = math.huge
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
        NormalGrav = false
        LightGrav = false
        hum.WalkSpeed = 16
     end
     if Mode == "World Time Stop" then
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Capture(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        workspace.Gravity = 70
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
        hum.WalkSpeed = 16
     end
     if Mode == "Time Start" then
        local TimeStop = Instance.new("Sound",tor)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        TimeStop:Play()
        local AreaOfEffect2 = Instance.new("Part",tor)
        AreaOfEffect2.Position = tor.Position
        AreaOfEffect2.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect2.Anchored = true
        AreaOfEffect2.CanCollide = false
        AreaOfEffect2.Transparency = 1
        AreaOfEffect2.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect2.Transparency = 0.99
        AreaOfEffect2.Shape = "Ball"
        AreaOfEffect2.Material = "Neon"
        AreaOfEffect2.Touched:connect(function(hit)
            if hit ~= "Base" then
                --hit.Anchored = false
            end
        end)
        for i = 1,10 do
            AreaOfEffect2.Size = AreaOfEffect2.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect2.CFrame = char.Torso.CFrame
            wait()
        end
        trappedTorsos:Release()
        AreaOfEffect2:Destroy()
        TfwTimeStopped = false
        workspace.Gravity = 196.2
    end
    if Mode == "Repel" then
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Repel(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
    end
    if Mode == "Attract" then
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Attract(torso)
                end
            
                
            end
        end)()
        AreaOfEffect:Destroy()
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
    end
    if Mode == "Target" then
        hum.Health = AnotherOneBitesZaDusto
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        wait()
        local TimeStop = Instance.new("Sound",char)
        TimeStop.SoundId = "rbxassetid://520743795"
        TimeStop.Looped = false
        TimeStop.Volume = 1
        local AreaOfEffect = Instance.new("Part",char)
        AreaOfEffect.Position = tor.Position
        AreaOfEffect.Size = Vector3.new(0.01,0.01,0.01)
        AreaOfEffect.Anchored = true
        AreaOfEffect.CanCollide = false
        AreaOfEffect.BrickColor = BrickColor.new("Institutional white")
        AreaOfEffect.Transparency = 0.9
        AreaOfEffect.Shape = "Ball"
        AreaOfEffect.Material = "Neon"   
        TimeStop:Play()
        for i = 1,10 do
            AreaOfEffect.Size = AreaOfEffect.Size + Vector3.new(4.1,4.1,4.1)
            AreaOfEffect.CFrame = char.Torso.CFrame
            wait()
        end
        coroutine.wrap(function()
            do local me={}
                
                me.plrs = game:service'Workspace':children''
                
                function me:getNear(mag)
                    local rtn = {}
                        
                    for k,v in next,me.plrs do
                        local chxr = v
                        
                        if chxr then
                            if chxr:findFirstChild'Torso' then
                                local pos = (chxr.Torso.Position-tor.Position).magnitude
                                
                                if pos<=mag then
                                    for a,b in pairs(chxr:children()) do
                                        if b:IsA("BasePart") then
                                            table.insert(rtn, b)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return rtn
                end
            
                for no, torso in ipairs(me:getNear(5555)) do
                    --print(torso:GetFullName())
                    --print(torso:GetFullName())
                    trappedTorsos:Target(torso)
                end
            end
        end)()
        AreaOfEffect:Destroy()
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        for i,v in pairs(pchar:children()) do
            if v:IsA("Part") then
                v.Anchored = false
            end
            if v:IsA("Hat") then
                v.Handle.Anchored = false
            end
        end
        if WasOn == false then
            StandOn = false
            WasOn = true
        end
    end
end

LightGrav = false
NormalGrav = true
HeavyGrav = false

Rapid = false
TimeStopped = false
OneSecond = false
Cha = char
Character = char
it=Instance.new
vt=Vector3.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
RootPart = hrp
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if TimeStopped == false and Attacking == false then
            TheWorld("Time Stop")
            TimeStopped = true
            TfwTimeStopped = true
        elseif TimeStopped == true and Attacking == false then
            TheWorld("Time Start")
            TimeStopped = false
        end
    end
    if key == "p" and TimeStopped == false and Attacking == false then
        TheWorld("World Time Stop")
        TimeStopped = true
        TfwTimeStopped = true
    end
    if key == "z" then
        TheWorld("Light Gravity")
    end
    if key == "x" then
        TheWorld("Normal Gravity")
    end
    if key == "c" then
        TheWorld("Heavy Gravity")
    end
    if key == "f" then
        TheWorld("Repel")
    end
    if key == "g" then
        TheWorld("Attract")
    end
    if key == "v" then
        TheWorld("Target")
    end
    if key == "[" then
        ControlledWorlds = false
    end
    if key == "]" then
        ControlledWorlds = true
    end
    if key == "e" then
        Rapid = true
        Attacking = true
        con1 = ram2.Touched:connect(function(hit) Damagefunc(torso,hit,1,2,math.random(0,0),"MUDA",RootPart,.2,1) end)
        con2 = lam2.Touched:connect(function(hit) Damagefunc(torso,hit,1,2,math.random(0,0),"MUDA",RootPart,.2,1) end)
        while Rapid == true do
            for i = 1, 3 do
                raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(math.random(-20,20)),math.rad(20)), 1.7)
                law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 1.7)
                hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
                tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
                llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
                rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(0),math.rad(-50)), 1.7)
                law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(math.random(-20,20)),math.rad(-20)), 1.7)
                hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 1.3)
                tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 1.3)
                llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 1.3)
                rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(math.random(-20,20)),math.rad(20)), 1.7)
                law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 1.7)
                hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
                tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
                llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
                rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(0),math.rad(-50)), 1.7)
                law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(math.random(-20,20)),math.rad(-20)), 1.7)
                hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 1.3)
                tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 1.3)
                llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 1.3)
                rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 1.3)
                wait()
            end
        end
        con1:disconnect()
        con2:disconnect()
        Attacking = false
    end
    if key == "r" and Attacking == false then
        con1 = ram2.Touched:connect(function(hit)
            trappedTorsos:Capture(hit)
        end)
        ItsHot = false
        Attacking = true
        for i = 1, 3 do
            raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(math.random(-20,20)),math.rad(20)), 1.7)
            law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 1.7)
            hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
            tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
            llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
            rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
            wait()
        end
        wait(1)
        con1:disconnect()
        Attacking = false
    end
    if key == "t" and Attacking == false then
        con1 = ram2.Touched:connect(function(hit)
            trappedTorsos:ReleasePart()
        end)
        ItsHot = false
        Attacking = true
        for i = 1, 3 do
            raw2.C0 = RLerp(raw2.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(90,95)),math.rad(math.random(20,20)),math.rad(20)), 1.7)
            law2.C0 = RLerp(law2.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 1.7)
            hew2.C0 = RLerp(hew2.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
            tow2.C0 = RLerp(tow2.C0, CFrame.new(0, -1, -8) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
            llw2.C0 = RLerp(llw2.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
            rlw2.C0 = RLerp(rlw2.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
            wait()
        end
        wait(3)
        Attacking = false
        con1:disconnect()
    end
end)

mouse.KeyUp:connect(function(key)
    if key == "e" and Rapid == true or key == "v" and Rapid == true then
        Rapid = false
    end
end)

for i, v in pairs(pchar:GetChildren()) do
    if v:IsA('Hat') then
        v.Handle.Transparency=1
    end
    if v:IsA("Part") then
        v.Material = "Neon"
        v.BrickColor = BrickColor.new("Gold")
    end
end

-------------------------------Sprint
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 then
        hum.WalkSpeed = 48
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
        hum.WalkSpeed=16
    end
end)
-------------------------------------
hum.FreeFalling:connect(function(f)
    if f then
        ffing=true
    else
        ffing=false
    end
end)
hum.Jumping:connect(function(j)
    if j then
        jjing=true
    else
        jjing=false
    end
end)
function Lerping(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

 m = Instance.new("Model",char)

 Handle  = Instance.new("Part", m)
            Handle:BreakJoints()
            Handle.TopSurface = "Smooth"
            Handle.Material = "SmoothPlastic"
            Handle.Name = 'Handle'
            Handle.Anchored = true
            Handle.Transparency = 0         Handle.BottomSurface = "Smooth"
            Handle.FormFactor = "Custom" Handle.CanCollide = false
            Handle.BrickColor = BrickColor.new("Really black")
            Handle.Size = Vector3.new(2.31999993, 0.34799999, 0.200000003)
        
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142124, -0.240707397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.232005119, 1.97199249, 0.999999762, -2.87769808e-013, 5.96046448e-008, 5.25801624e-013, 0.999991417, 2.84217094e-014, 0, -1.17239551e-013, 0.999991238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697060108, -0.237798691, 0.696979523, 0.707100153, -7.8854832e-008, -0.707074642, 6.79929997e-008, 0.999963224, -4.47018209e-008, 0.707100153, -2.54248249e-008, 0.707074702)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799088, -0.231980324, 0.985839844, 0.999999762, 5.87768056e-010, 1.80602074e-005, -5.86997118e-010, 0.999974251, -6.33293951e-009, -1.80006027e-005, 6.33261976e-009, 0.99997437)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000141143799, 1.8119812e-005, -1.21799469, 1.81794167e-005, -1.78968406e-007, -0.999964833, 6.0702348e-007, 0.999964714, -1.78957677e-007, 0.999999702, -6.06998185e-007, 1.82688236e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799469, 0.232003212, 0.985847473, 0.999999762, 5.66021896e-010, 1.80602074e-005, -5.65410829e-010, 0.999973297, -6.33274055e-009, -1.80006027e-005, 6.3324741e-009, 0.999973238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.115989685, 0.985801697, 0.999999762, 6.05332673e-010, 1.80602074e-005, -6.04796213e-010, 0.999982834, -6.33284003e-009, -1.80006027e-005, 6.33262687e-009, 0.999982953)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, 0.226189613, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, -0.237810135, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985813141, -0.237781525, 0, 1.80006027e-005, 1.57576963e-007, -0.999979973, 8.91885605e-008, 0.99998039, 2.61884452e-007, 0.999999166, -8.91910901e-008, 1.80602074e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, 0.223287582, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985980988, 0.22618866, 0, -8.94069672e-008, 1.63911707e-007, -0.999990642, 8.97813663e-008, 0.999991119, 2.68218798e-007, 0.999999285, -8.97803574e-008, 5.96046448e-008)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697110176, 0.226187706, 0.697032928, 0.707100391, -7.8857461e-008, -0.707094431, 6.79927936e-008, 0.999991119, -4.4702837e-008, 0.707100332, -2.54258214e-008, 0.707094312)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163582, 0.226187706, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, -0.240706444, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.23197937, -1.52587891e-005, 0.999999762, 2.23820962e-013, 5.96046448e-008, 7.10542736e-015, 0.999991417, -1.03028697e-013, 0, 1.0658141e-014, 0.999991238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163105, -0.237812042, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.232005119, 0.985790253, 0.999999762, 6.06398487e-010, 1.80602074e-005, -6.05488992e-010, 0.999969959, -6.3331953e-009, -1.80006027e-005, 6.33281516e-009, 0.99996984)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142363, 0.223291397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.115994453, 0.985679626, 0.999999762, 6.06839023e-010, 1.80602074e-005, -6.06164008e-010, 0.999978542, -6.33337294e-009, -1.79708004e-005, 6.33308517e-009, 0.999978423)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -5.7220459e-006, 0.985614777, 0.999999762, 6.06938499e-010, 1.80602074e-005, -6.06267037e-010, 0.999978542, -6.33343333e-009, -1.79708004e-005, 6.33315622e-009, 0.999978423)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-3.81469727e-006, -0.231994629, 0.98563385, 0.999999762, 5.88961768e-010, 1.80602074e-005, -5.88052274e-010, 0.999969959, -6.33351505e-009, -1.80006027e-005, 6.3331278e-009, 0.99996984)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-7.62939453e-006, -0.231983185, -0.000392913818, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000408172607, 1.71661377e-005, 1.2179985, 1.81794167e-005, -1.78972357e-007, -0.999982238, 6.07028539e-007, 0.999982357, -1.78961514e-007, 0.999999702, -6.07014329e-007, 1.82688236e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, -0.231983185, 0.985591888, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, 0.232002258, 0.985588074, 0.999999762, 5.78641135e-010, 1.80602074e-005, -5.78168624e-010, 0.999980927, -6.33353991e-009, -1.79708004e-005, 6.33334807e-009, 0.999980807)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.231988907, 1.97200775, 0.999999762, 1.69357861e-011, 5.96046448e-008, -1.6701307e-011, 0.999991179, 2.27373675e-013, 2.98023224e-008, -3.23296945e-013, 0.99999094)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
                     HandleMesh = Instance.new("BlockMesh",Handle)
                HandleMesh.Name = "Mesh"
                HandleMesh.Offset = Vector3.new(0, 0, 0)
                HandleMesh.Scale = Vector3.new(1, 1, 0.579999983)

 m2 = Instance.new("Model",char)

 Handle2  = Instance.new("Part", m2)
            Handle2:BreakJoints()
            Handle2.TopSurface = "Smooth"
            Handle2.Material = "SmoothPlastic"
            Handle2.Name = 'Handle2'
            Handle2.Anchored = true
            Handle2.Transparency = 0         
            Handle2.BottomSurface = "Smooth"
            Handle2.FormFactor = "Custom" 
            Handle2.CanCollide = false
            Handle2.BrickColor = BrickColor.new("Institutional white")
            Handle2.Size = Vector3.new(2.31999993, 0.34799999, 0.200000003)
        
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142124, -0.240707397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.232005119, 1.97199249, 0.999999762, -2.87769808e-013, 5.96046448e-008, 5.25801624e-013, 0.999991417, 2.84217094e-014, 0, -1.17239551e-013, 0.999991238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697060108, -0.237798691, 0.696979523, 0.707100153, -7.8854832e-008, -0.707074642, 6.79929997e-008, 0.999963224, -4.47018209e-008, 0.707100153, -2.54248249e-008, 0.707074702)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799088, -0.231980324, 0.985839844, 0.999999762, 5.87768056e-010, 1.80602074e-005, -5.86997118e-010, 0.999974251, -6.33293951e-009, -1.80006027e-005, 6.33261976e-009, 0.99997437)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000141143799, 1.8119812e-005, -1.21799469, 1.81794167e-005, -1.78968406e-007, -0.999964833, 6.0702348e-007, 0.999964714, -1.78957677e-007, 0.999999702, -6.06998185e-007, 1.82688236e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799469, 0.232003212, 0.985847473, 0.999999762, 5.66021896e-010, 1.80602074e-005, -5.65410829e-010, 0.999973297, -6.33274055e-009, -1.80006027e-005, 6.3324741e-009, 0.999973238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.115989685, 0.985801697, 0.999999762, 6.05332673e-010, 1.80602074e-005, -6.04796213e-010, 0.999982834, -6.33284003e-009, -1.80006027e-005, 6.33262687e-009, 0.999982953)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, 0.226189613, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, -0.237810135, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985813141, -0.237781525, 0, 1.80006027e-005, 1.57576963e-007, -0.999979973, 8.91885605e-008, 0.99998039, 2.61884452e-007, 0.999999166, -8.91910901e-008, 1.80602074e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, 0.223287582, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985980988, 0.22618866, 0, -8.94069672e-008, 1.63911707e-007, -0.999990642, 8.97813663e-008, 0.999991119, 2.68218798e-007, 0.999999285, -8.97803574e-008, 5.96046448e-008)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697110176, 0.226187706, 0.697032928, 0.707100391, -7.8857461e-008, -0.707094431, 6.79927936e-008, 0.999991119, -4.4702837e-008, 0.707100332, -2.54258214e-008, 0.707094312)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163582, 0.226187706, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, -0.240706444, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.23197937, -1.52587891e-005, 0.999999762, 2.23820962e-013, 5.96046448e-008, 7.10542736e-015, 0.999991417, -1.03028697e-013, 0, 1.0658141e-014, 0.999991238)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163105, -0.237812042, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.232005119, 0.985790253, 0.999999762, 6.06398487e-010, 1.80602074e-005, -6.05488992e-010, 0.999969959, -6.3331953e-009, -1.80006027e-005, 6.33281516e-009, 0.99996984)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142363, 0.223291397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.115994453, 0.985679626, 0.999999762, 6.06839023e-010, 1.80602074e-005, -6.06164008e-010, 0.999978542, -6.33337294e-009, -1.79708004e-005, 6.33308517e-009, 0.999978423)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Mid gray")
            Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -5.7220459e-006, 0.985614777, 0.999999762, 6.06938499e-010, 1.80602074e-005, -6.06267037e-010, 0.999978542, -6.33343333e-009, -1.79708004e-005, 6.33315622e-009, 0.999978423)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Really black")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-3.81469727e-006, -0.231994629, 0.98563385, 0.999999762, 5.88961768e-010, 1.80602074e-005, -5.88052274e-010, 0.999969959, -6.33351505e-009, -1.80006027e-005, 6.3331278e-009, 0.99996984)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-7.62939453e-006, -0.231983185, -0.000392913818, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000408172607, 1.71661377e-005, 1.2179985, 1.81794167e-005, -1.78972357e-007, -0.999982238, 6.07028539e-007, 0.999982357, -1.78961514e-007, 0.999999702, -6.07014329e-007, 1.82688236e-005)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, -0.231983185, 0.985591888, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, 0.232002258, 0.985588074, 0.999999762, 5.78641135e-010, 1.80602074e-005, -5.78168624e-010, 0.999980927, -6.33353991e-009, -1.79708004e-005, 6.33334807e-009, 0.999980807)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
                
 Part  = Instance.new("Part", m2)
            Part:BreakJoints()
            Part.TopSurface = "Smooth"
            Part.Material = "SmoothPlastic"
            Part.Name = 'Part'
            Part.Transparency = 0           Part.BottomSurface = "Smooth"
            Part.FormFactor = "Custom" Part.CanCollide = false
            Part.BrickColor = BrickColor.new("Institutional white")
            Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
                 Partweld = Instance.new("Motor6D")
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.231988907, 1.97200775, 0.999999762, 1.69357861e-011, 5.96046448e-008, -1.6701307e-011, 0.999991179, 2.27373675e-013, 2.98023224e-008, -3.23296945e-013, 0.99999094)
    Partweld.Parent = Part      
                     PartMesh = Instance.new("BlockMesh",Part)
                PartMesh.Name = "Mesh"
                PartMesh.Offset = Vector3.new(0, 0, 0)
                PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
                
                     HandleMesh = Instance.new("BlockMesh",Handle2)
                HandleMesh.Name = "Mesh"
                HandleMesh.Offset = Vector3.new(0, 0, 0)
                HandleMesh.Scale = Vector3.new(1, 1, 0.579999983)


CubesOfPower = Instance.new("Model",Workspace.Terrain)

World = Instance.new("Part",CubesOfPower)
World.Size = Vector3.new(3,3,3)
World.Anchored = true
World.Position = workspace.Base.Position
World.Material = "SmoothPlastic"
World.Reflectance = 1

World2 = Instance.new("Part",CubesOfPower)
World2.Size = Vector3.new(3,3,3)
World2.Anchored = true
World2.Position = workspace.Base.Position
World2.Material = "SmoothPlastic"
World2.Reflectance = 1

World3 = Instance.new("Part",CubesOfPower)
World3.Size = Vector3.new(3,3,3)
World3.Anchored = true
World3.Position = workspace.Base.Position
World3.Material = "SmoothPlastic"
World3.Reflectance = 1

World4 = Instance.new("Part",CubesOfPower)
World4.Size = Vector3.new(3,3,3)
World4.Anchored = true
World4.Position = workspace.Base.Position
World4.Material = "SmoothPlastic"
World4.Reflectance = 1

WorldX = Instance.new("Part",CubesOfPower)
WorldX.Size = Vector3.new(3,3,3)
WorldX.Anchored = true
WorldX.Position = workspace.Base.Position
WorldX.Material = "SmoothPlastic"
WorldX.Reflectance = 1

World2X = Instance.new("Part",CubesOfPower)
World2X.Size = Vector3.new(3,3,3)
World2X.Anchored = true
World2X.Position = workspace.Base.Position
World2X.Material = "SmoothPlastic"
World2X.Reflectance = 1

World3X = Instance.new("Part",CubesOfPower)
World3X.Size = Vector3.new(3,3,3)
World3X.Anchored = true
World3X.Position = workspace.Base.Position
World3X.Material = "SmoothPlastic"
World3X.Reflectance = 1

World4X = Instance.new("Part",CubesOfPower)
World4X.Size = Vector3.new(3,3,3)
World4X.Anchored = true
World4X.Position = workspace.Base.Position
World4X.Material = "SmoothPlastic"
World4X.Reflectance = 1

Target = nil

World.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World2.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World3.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World4.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
WorldX.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World2X.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World3X.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)
World4X.Touched:connect(function(hit)
    Damagefunc(torso,hit,0,0,math.random(100,100),"Knockdown",RootPart,.2,1)
end)

StandOn = false
local hrprv=0
angle = 0
angle2 = 0
angle3 = 0
anglespeed = 2
anglespeed2 = 1
anglespeed3 = .4
MyHealth = hum.Health
MyMaxHealth = hum.MaxHealth
MyMaxHealth = humane.Health
MyHealth = humane.Health
humane.Name = "The Worldo"
ItsHot = true
ControlledWorlds = true
jjing=false
Light = false
Dark = true
game:GetService("RunService").Stepped:connect(function()
    for i, v in pairs(pchar:GetChildren()) do
        if v:IsA("Part") then
            v.BrickColor = BrickColor.new("Really black")
        end
    end
    for i,v in ipairs(m:children()) do
        if v:isA'Part' then
            v.CanCollide = false
            v.Reflectance = 0
            if Light == true then
                v.Transparency = 0
            else
                v.Transparency = 1
            end
        end
    end

    for i,v in ipairs(m2:children()) do
        if v:isA'Part' then
            v.CanCollide = false
            v.Reflectance = 0
            if Dark == true then
                v.Transparency = 0
            else
                v.Transparency = 1
            end
        end
    end
    angle = ((angle % 100) + anglespeed/10)
    angle2 = ((angle2 % 100) + anglespeed2/10)
    angle3 = ((angle3 % 100) + anglespeed3/10)
        hrprv=Tween(hrprv,hrp.RotVelocity.Y,0.4)
        sine=sine+1
        if HeavyGrav == true then
            hum.JumpPower = math.huge
        else
            hum.JumpPower = 50
        end
        if StandOn == false then
            for i,v in pairs(pchar:children()) do
                if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                    v.Transparency = 1
                end
            end
        elseif StandOn == true then
            for i,v in pairs(pchar:children()) do
                if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                    v.Transparency = 1
                end
            end
        end
        MyHealth = humane.Health
        humane.Health = MyHealth
        if hum.Sit==true then
                animpose="Sitting"
        elseif hrp.Velocity.y > 1 then
                animpose = "Jumping"
        elseif ffing==true then
                animpose="Freefalling"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude<2 then
                animpose="Idle"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude<20 then
                animpose="Walking"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude>20 then
                animpose="Sprinting"
        end
        if ControlledWorlds == true then
            Handle.CFrame = RLerp(Handle.CFrame,tor.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),.04)
            Handle2.CFrame = RLerp(Handle2.CFrame,tor.CFrame*CFrame.Angles(math.rad(-sine),math.rad(-sine),math.rad(-sine))*CFrame.new(2,2+math.sin(-angle3)*.2,-3)*CFrame.Angles(math.rad(-sine),math.rad(-sine),math.rad(-sine)),.04)
            World.CFrame = RLerp(World.CFrame,workspace.Base.CFrame*CFrame.new(100,10+math.sin(angle3)*.2,0)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.94)
            World2.CFrame = RLerp(World2.CFrame,workspace.Base.CFrame*CFrame.new(-100,10+math.sin(angle3)*.2,0)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.59)
            World3.CFrame = RLerp(World3.CFrame,workspace.Base.CFrame*CFrame.new(0,10+math.sin(angle3)*.2,100)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.04)
            World4.CFrame = RLerp(World4.CFrame,workspace.Base.CFrame*CFrame.new(0,10+math.sin(angle3)*.2,-100)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.34)
            WorldX.CFrame = RLerp(WorldX.CFrame,workspace.Base.CFrame*CFrame.new(50,10+math.sin(angle3)*.2,50)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.64)
            World2X.CFrame = RLerp(World2X.CFrame,workspace.Base.CFrame*CFrame.new(-50,10+math.sin(angle3)*.2,50)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.742)
            World3X.CFrame = RLerp(World3X.CFrame,workspace.Base.CFrame*CFrame.new(50,10+math.sin(angle3)*.2,-50)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.49)
            World4X.CFrame = RLerp(World4X.CFrame,workspace.Base.CFrame*CFrame.new(-50,10+math.sin(angle3)*.2,-50)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(math.cos(angle3),math.sin(angle),math.sin(angle2)),.5)
        elseif ControlledWorlds == false then
            Handle.CFrame = RLerp(Handle.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),.04)
            Handle2.CFrame = RLerp(Handle2.CFrame,Target.CFrame*CFrame.Angles(math.rad(-sine),math.rad(-sine),math.rad(-sine))*CFrame.new(2,2+math.sin(-angle3)*.2,-3)*CFrame.Angles(math.rad(-sine),math.rad(-sine),math.rad(-sine)),.04)
            World.CFrame = RLerp(World.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.04)
            World2.CFrame = RLerp(World2.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.44)
            World3.CFrame = RLerp(World3.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.1)
            World4.CFrame = RLerp(World4.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.094)
            WorldX.CFrame = RLerp(WorldX.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.6)
            World2X.CFrame = RLerp(World2X.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.9)
            World3X.CFrame = RLerp(World3X.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.2)
            World4X.CFrame = RLerp(World4X.CFrame,Target.CFrame*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine))*CFrame.new(2,2+math.sin(angle3)*.2,-3)*CFrame.Angles(math.rad(sine),math.rad(sine),math.rad(sine)),0.05)
        end
        if Attacking == false then
            torso.CFrame = hrp.CFrame*CFrame.new(0,0,3)
            runKF(heid2)
            runKF(toid2)
            runKF(laid2)
            runKF(raid2)
            runKF(llid2)
            runKF(rlid2)
        end
        if noRig==false then
                if animpose=="Idle" then
                    runKF(heid)
                    runKF(toid)
                    runKF(laid)
                    runKF(raid)
                    runKF(llid)
                    runKF(rlid)
                elseif animpose=="Walking" then
                                runKF(hewk)
                                runKF(towk)
                                runKF(lawk)
                                runKF(rawk)
                                runKF(llwk)
                                runKF(rlwk)
                                --tow.C0=tow.C0:lerp(tow.C0*CA(0,0,hrprv/25),0.4)
                                --rlw.C0=rlw.C0:lerp(rlw.C0*CA(0,0,-hrprv/25),0.4)
                                ---llw.C0=llw.C0:lerp(llw.C0*CA(0,0,-hrprv/25),0.4)
                elseif animpose=="Sprinting" then
                                runKF(hesp)
                                runKF(tosp)
                                runKF(lasp)
                                runKF(rasp)
                                runKF(llsp)
                                runKF(rlsp)
                                --tow.C0=tow.C0:lerp(tow.C0*CA(0,0,hrprv/10),0.4)
                                --rlw.C0=rlw.C0:lerp(rlw.C0*CA(0,0,-hrprv/10),0.4)
                                --llw.C0=llw.C0:lerp(llw.C0*CA(0,0,-hrprv/10),0.4)
                elseif animpose=="Freefalling" then
                        runKF(heff)
                        runKF(toff)
                        runKF(laff)
                        runKF(raff)
                        runKF(llff)
                        runKF(rlff)
                        --tow.C0=tow.C0:lerp(tow.C0*CA(0,0,hrprv/10),0.4)
                elseif animpose=="Jumping" then
                        runKF(hejp)
                        runKF(tojp)
                        runKF(lajp)
                        runKF(rajp)
                        runKF(lljp)
                        runKF(rljp)
                end
        end
end)

print(hum.JumpPower)

AnotherOneBitesZaDusto = 1000
hum.MaxHealth = 1000
wait()
hum.Health = 1000
function Switching()
    if Light == true then
        Light = false
        Dark = true
    elseif Dark == true then
        Light = true
        Dark = false
    end
end
while wait(100) do
    AnotherOneBitesZaDusto = hum.Health
    print'Changed'
    Switching()
end