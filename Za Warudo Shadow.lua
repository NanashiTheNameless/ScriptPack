Services = setmetatable({},{__index=function(s,r) return game:service(r) end})
Player = Services.Players.LocalPlayer
wait()script.Parent=nil
BodyParts={}
abs = function(int)
	if int < 0 then return -int else return int end
end
rad = function(deg)
	return deg * math.pi / 180
end
deg = function(rad)
	return rad * 180 / math.pi
end
dist = function(p1,p2)
	r,e = ypcall(function()
		p1 = p1.Position
	end)
	if not r then p1 = p1 end
	r,e = ypcall(function()
		p2 = p2.Position
	end)
	if not r then p1 = p1 end
	return math.sqrt( (p2.X-p1.X)^2 + (p2.Y-p1.Y)^2 + (p2.Z-p1.Z)^2 ) 
end

function GetChar()
	return Player.Character
end
function GetHum()
	for i,v in pairs(GetChar():children'') do
		if v.ClassName == 'Humanoid' then
			return v
		end
	end
end

function Died()
	for i,v in pairs(GetChar():children'') do
		if v.ClassName == 'Part' then
			table.insert(BodyParts,{v.CFrame,v})
		elseif v.ClassName == 'Hat' then
			v.Parent=workspace
			table.insert(BodyParts,{v.Handle.CFrame,v.Handle,1})
		end
	end
	
	wait(3)
	for i,v in pairs(BodyParts) do 
		v[2].Anchored=true 
		if v[2].Name == 'Torso' then pos = v[1] end
	end
	
	for i,v in pairs(BodyParts) do
		coroutine.resume(coroutine.create(function()
			repeat Services.RunService.Heartbeat:wait()
				v[2].CFrame = v[2].CFrame:lerp(v[1],.1)
			until dist(v[2],v[1]) < .05
			v[2].CFrame=v[1]
		end))
	end
end

Player.CharacterAdded:connect(function(char)
	char:WaitForChild('Torso')
	for i,v in pairs(BodyParts) do
		if v[3] then
			v[2]:Remove()
		end
	end
	BodyParts={}
	char.Torso.CFrame=pos or CFrame.new(0,12,0)
	GetHum().Died:connect(Died)
end)
GetHum().Died:connect(Died)
print'rannering'

--[[
    Stand: The World
    User: DIO
]]

---Declarations
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

ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=298260655"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=298260668"
end)

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
                            ShowDamage((hit.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                        elseif TfwTimeStopped == true then
                            repeat wait() until TfwTimeStopped == false
                            h.Health=h.Health-0.1
                            ShowDamage((hit.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
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
                        game:GetService("Debris"):AddItem(bodvol,.5)
                        game:GetService("Debris"):AddItem(rl,.5)
                        wait(3)
                       
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
                        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
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

--[[local Player = game:service("Players").LocalPlayer
repeat wait() until Player.Character ~= nil

local Char = Player.Character
local mouse = Player:GetMouse()
local Backpack = Player.Backpack
local PlayerGui = Player.PlayerGui
local Camera = workspace.CurrentCamera
local Humanoid = Char:findFirstChild("Humanoid")
local Torso = Char:findFirstChild("Torso")
local Head = Char:findFirstChild("Head")
local ra = Char:findFirstChild("Right Arm")
local la = Char:findFirstChild("Left Arm")
local rl = Char:findFirstChild("Right Leg")
local ll = Char:findFirstChild("Left Leg")
local rs = Torso:findFirstChild("Right Shoulder")
local ls = Torso:findFirstChild("Left Shoulder")
local rh = Torso:findFirstChild("Right Hip")
local lh = Torso:findFirstChild("Left Hip")
local neck = Torso:findFirstChild("Neck")
local rootpart = Char:findFirstChild("HumanoidRootPart")
local rj = rootpart:findFirstChild("RootJoint")
local anim = Char:findFirstChild("Animate")
local RunService = game:GetService("RunService")
local UIA = game:GetService("UserInputService")
local CF = CFrame.new
local CA = CFrame.Angles
local FEA = CFrame.fromEulerAnglesXYZ
local FAA = CFrame.fromAxisAngle
local V3 = Vector3.new
local CN = Color3.new
local Ice = Instance.new
local BC = BrickColor.new
local UD2 = UDim2.new
local C3 = Color3.new
local MR = math.rad
local MP = math.pi
local MD = math.deg
local MH = math.huge
local MS = math.sin
local MC = math.cos
local MT = math.tan
local MAS = math.asin
local MAC = math.acos
local MAT = math.atan
local components = CF().components

local State = {}
State["Calm"] = "Active"

function Tweenz(a,b,i)
return a:lerp(b,i)
end

function Create(Instanc,prop)
local p=Instance.new(Instanc)
for i,v in pairs(prop) do
p[i]=v
end
return p
end

local c0 = {
RightArm = CF(1.5,0.5,0),
LeftArm = CF(-1.5,0.5,0),
RightLeg = CF(0.5,-1,0),
LeftLeg = CF(-0.5,-1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,1,0)
}
local c1 = {
RightArm = CF(0,0.5,0),
LeftArm = CF(0,0.5,0),
RightLeg = CF(0,1,0),
LeftLeg = CF(0,1,0),
RootJoint = CF(0,0,0),
Neck = CF(0,-0.5,0)
}


--RightArm = Create("Snap",{Parent=Torso,C0=c0.RightArm,C1=c1.RightArm,Part0=Torso,Part1=ra})
--LeftArm = Create("Snap",{Parent=Torso,C0=c0.LeftArm,C1=c1.LeftArm,Part0=Torso,Part1=la})
RightLeg = Create("Snap",{Parent=Torso,C0=c0.RightLeg,C1=c1.RightLeg,Part0=Torso,Part1=rl})
LeftLeg = Create("Snap",{Parent=Torso,C0=c0.LeftLeg,C1=c1.LeftLeg,Part0=Torso,Part1=ll})

neck.C0 = c0.Neck
neck.C1 = c1.Neck

local Spread = 12
local Smooth = 1

local angle = tick()
game:GetService("RunService").Stepped:connect(function()
local lefth = (Torso.CFrame*c0.LeftLeg)
local righth = (Torso.CFrame*c0.RightLeg)
angle = angle+0.2*Smooth
local speed = V3(Torso.Velocity.X,0,Torso.Velocity.Z)
local TiltOnAxis = (rootpart.CFrame-rootpart.CFrame.p):inverse()*speed/100
rj.C0 = Tweenz(rj.C0,CFrame.Angles(MR(-90)+TiltOnAxis.Z,TiltOnAxis.X,MR(180)+-TiltOnAxis.X),.1)
--[[local offset = CFrame.new(0,5,0)
rj.C0 = CF(V3(),(mouse.hit.p-rootpart.CFrame.p).unit*100)*CFrame.Angles(MR(-90),0,MR(180))
local h = (rootpart.CFrame*offset).p
local d = CFrame.new(h,mouse.Hit.p)
local e = rootpart.CFrame*CFrame.new(h)
neck.C0 = ((d-d.p):inverse()*(e-e.p)):inverse()*CFrame.new(0,1,0)]]
--[[local AnglePR = (righth-righth.p):inverse()*speed/100
local AnglePL = (lefth-lefth.p):inverse()*speed/100
if speed.magnitude < 2 then
--RightArm.C0 = Tweenz(RightArm.C0,c0.RightArm*CFrame.Angles(0,0,0),.1)
--LeftArm.C0 = Tweenz(LeftArm.C0,c0.LeftArm*CFrame.Angles(0,0,0),.1)
elseif speed.magnitude > 2 then
RightLeg.C0 = Tweenz(RightLeg.C0,CF(0.5,-1+math.cos(angle)*.5,-0.2+-math.sin(angle)*.1)*CFrame.Angles(math.sin(angle)*Spread*-AnglePR.Z,AnglePR.X,math.sin(angle)*Spread*AnglePR.X),.1)
LeftLeg.C0 = Tweenz(LeftLeg.C0,CF(-0.5,-1+-math.cos(angle)*.5,-0.2+math.sin(angle)*.1)*CFrame.Angles(math.sin(angle)*Spread*AnglePL.Z,AnglePL.X,math.sin(angle)*Spread*-AnglePL.X),.1)
--RightArm.C0 = Tweenz(RightArm.C0,c0.RightArm*CFrame.Angles(math.sin(angle)*Spread*AnglePL.Z,0,0),.1)
--LeftArm.C0 = Tweenz(LeftArm.C0,c0.LeftArm*CFrame.Angles(-math.sin(angle)*Spread*AnglePL.Z,0,0),.1)
end
end)
]]--
Player = p
workspace[Player.Name].Archivable=true
pchar = workspace[Player.Name]:Clone() --Create("Model",{Parent=workspace})
pchar.Parent=workspace[Player.Name]
torso=pchar.Torso
humane=pchar.Humanoid
pchar.Name= "Za Warudo"
pl=pchar
humane.MaxHealth=Health
wait()
humane.Health=Health
humane.WalkSpeed=Speed

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
newKF(heid,hD*CA(mr(-15.5),0,0),50,0.3)
newKF(heid,hD*CA(mr(-14),0,0),40,0.3)
local toid=newAnim(tow)
newKF(toid,tD*Cn(0,-0.0125,0)*CA(mr(16),0,0),50,0.3)
newKF(toid,tD*Cn(0,0.0125,0)*CA(mr(15),0,0),40,0.3)
local laid=newAnim(law)
newKF(laid,laD*Cn(1,0.0125,-0.764)*CA(mr(80),0,mr(85)),50,0.3)
newKF(laid,laD*Cn(1,-0.0125,-0.764)*CA(mr(70),0,mr(85)),40,0.3)
local raid=newAnim(raw)
newKF(raid,raD*Cn(-1,-0.0125,-0.764)*CA(mr(80),0,mr(-85)),50,0.3)
newKF(raid,raD*Cn(-1,0.0125,-0.764)*CA(mr(70),0,mr(-85)),40,0.3)
local llid=newAnim(llw)
newKF(llid,llD*Cn(0,0.0125,0)*CA(mr(-16),0,0),50,0.3)
newKF(llid,llD*Cn(0,-0.0125,0)*CA(mr(-15),0,mr(0)),40,0.3)
local rlid=newAnim(rlw)
newKF(rlid,rlD*Cn(0,0.0125,0)*CA(mr(-16),0,0),50,0.3)
newKF(rlid,rlD*Cn(0,-0.0125,0)*CA(mr(-15),0,mr(0)),40,0.3)

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
newKF(hewk,hD*CA(mr(-5.5),0,0),12,0.4)
newKF(hewk,hD*CA(mr(-5),mr(-3),0),13,0.4)
newKF(hewk,hD*CA(mr(-5.5),0,0),12,0.4)
newKF(hewk,hD*CA(mr(-5),mr(3),0),13,0.4)
local towk=newAnim(tow)
newKF(towk,tD*Cn(0,0.1,0)*CA(mr(15),0,0),12,0.2)
newKF(towk,tD*CA(mr(15),mr(5),0),13,0.4)
newKF(towk,tD*Cn(0,0.1,0)*CA(mr(15),0,0),12,0.2)
newKF(towk,tD*CA(mr(15),mr(-5),0),13,0.4)
local lawk=newAnim(law)
newKF(lawk,laD*CA(mr(30),0,0),25,0.4)
newKF(lawk,laD*CA(mr(-30),0,0),25,0.4)
local rawk=newAnim(raw)
newKF(rawk,raD*CA(mr(-30),0,0),25,0.4)
newKF(rawk,raD*CA(mr(30),0,0),25,0.4)
local llwk=newAnim(llw)
newKF(llwk,llD*CA(mr(-40),mr(-10),mr(-2)),25,0.4)
newKF(llwk,llD*Cn(0,0.3,0)*CA(mr(-5),0,mr(-3)),12,0.4)
newKF(llwk,llD*Cn(0,-0.2,-0.25)*CA(mr(40),mr(10),mr(-3)),13,0.4)
local rlwk=newAnim(rlw)
newKF(rlwk,rlD*Cn(0,0.3,0)*CA(mr(-5),0,mr(3)),12,0.4)
newKF(rlwk,rlD*Cn(0,-0.2,-0.25)*CA(mr(40),mr(-10),mr(3)),13,0.4)
newKF(rlwk,rlD*CA(mr(-40),mr(10),mr(2)),25,0.4)

--Sprint
local hesp=newAnim(hew)
newKF(hesp,hD*CA(mr(5),mr(-10),0),10,0.2)
newKF(hesp,hD*CA(mr(10),0,0),10,0.2)
newKF(hesp,hD*CA(mr(5),mr(10),0),10,0.2)
newKF(hesp,hD*CA(mr(10),0,0),10,0.2)
local tosp=newAnim(tow)
newKF(tosp,tD*Cn(0,0.1,0)*CA(mr(-5),mr(10),0),10,0.4)
newKF(tosp,tD*CA(mr(-10),0,0),10,0.4)
newKF(tosp,tD*Cn(0,0.1,0)*CA(mr(-5),mr(-10),0),10,0.4)
newKF(tosp,tD*CA(mr(-10),0,0),10,0.4)
local lasp=newAnim(law)
newKF(lasp,laD*Cn(0,-0.1,-0.2)*CA(mr(60),0,0),20,0.4)
newKF(lasp,laD*CA(mr(-40),0,0),20,0.4)
local rasp=newAnim(raw)
newKF(rasp,raD*CA(mr(-40),0,0),20,0.4)
newKF(rasp,raD*Cn(0,-0.1,-0.2)*CA(mr(60),0,0),20,0.4)
local llsp=newAnim(llw)
newKF(llsp,llD*CA(mr(-50),mr(-10),mr(-2)),20,0.4)
newKF(llsp,llD*Cn(0,0.5,0)*CA(mr(15),0,mr(-3)),10,0.4)
newKF(llsp,llD*Cn(0,-0.4,-0.25)*CA(mr(70),mr(10),mr(-3)),10,0.4)
local rlsp=newAnim(rlw)
newKF(rlsp,rlD*Cn(0,0.3,0)*CA(mr(15),0,mr(3)),10,0.4)
newKF(rlsp,rlD*Cn(0,-0.4,-0.25)*CA(mr(70),mr(-10),mr(3)),10,0.4)
newKF(rlsp,rlD*CA(mr(-50),mr(10),mr(2)),20,0.4)

--Freefall
local heff=newAnim(hew)
newKF(heff,hD*CA(mr(-5),0,0),8,0.6)
newKF(heff,hD*CA(mr(-5),0,0),8,0.6)
local toff=newAnim(tow)
newKF(toff,tD*CA(mr(10),0,0),8,0.6)
newKF(toff,tD*CA(mr(10),0,0),8,0.6)
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
        noRig = true
        Attacking = true
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        hum.WalkSpeed = 0
        for i = 1,30 do
            runKF(hesp2)
            runKF(tosp2)
            runKF(lasp2)
            runKF(rasp2)
            runKF(llsp2)
            runKF(rlsp2)
            runKF(hesp3)
            runKF(tosp3)
            runKF(lasp3)
            runKF(rasp3)
            runKF(llsp3)
            runKF(rlsp3)
            wait()
        end
        wait()
        local ZAWARUDO = Instance.new("Sound",tor)
        ZAWARUDO.SoundId = "rbxassetid://290807377"
        ZAWARUDO.Volume = 1
        ZAWARUDO.Looped = false
        ZAWARUDO:Play()
        local TimeStop = Instance.new("Sound",tor)
        TimeStop.SoundId = "rbxassetid://290807425"
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
        
        for i = 1,10 do
            runKF(hesp4)
            runKF(tosp4)
            runKF(lasp4)
            runKF(rasp4)
            runKF(llsp4)
            runKF(rlsp4)
            wait()
        end
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
        local TimeHasStopped = Instance.new("Sound",tor)
        TimeHasStopped.SoundId = "rbxassetid://290807397"
        TimeHasStopped.Looped = false
        TimeHasStopped.Volume = 1
        wait(1.3)
        TimeHasStopped:Play()
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
        noRig = false
        Attacking = false
     end
     if Mode == "World Time Stop" then
        noRig = true
        Attacking = true
        if WasOn == true and StandOn == false then
            StandOn = true
            WasOn = false
        end
        hum.WalkSpeed = 0
        for i = 1,30 do
            runKF(hesp2)
            runKF(tosp2)
            runKF(lasp2)
            runKF(rasp2)
            runKF(llsp2)
            runKF(rlsp2)
            runKF(hesp3)
            runKF(tosp3)
            runKF(lasp3)
            runKF(rasp3)
            runKF(llsp3)
            runKF(rlsp3)
            wait()
        end
        wait()
        local ZAWARUDO = Instance.new("Sound",tor)
        ZAWARUDO.SoundId = "rbxassetid://290807377"
        ZAWARUDO.Volume = 1
        ZAWARUDO.Looped = false
        ZAWARUDO:Play()
        local TimeStop = Instance.new("Sound",tor)
        TimeStop.SoundId = "rbxassetid://290807425"
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
        
        for i = 1,10 do
            runKF(hesp4)
            runKF(tosp4)
            runKF(lasp4)
            runKF(rasp4)
            runKF(llsp4)
            runKF(rlsp4)
            wait()
        end
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
        local TimeHasStopped = Instance.new("Sound",tor)
        TimeHasStopped.SoundId = "rbxassetid://290807397"
        TimeHasStopped.Looped = false
        TimeHasStopped.Volume = 1
        wait(1.3)
        TimeHasStopped:Play()
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
        noRig = false
        Attacking = false
     end
     if Mode == "Time Start" then
        local Toki = Instance.new("Sound",tor)
        Toki.SoundId = "rbxassetid://290810519"
        Toki.Volume = 1
        Toki.Looped = false
        Toki:Play()
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
    if Mode == "Wry" then
        local WWRRRYYYYY = Instance.new("Sound",tor)
        WWRRRYYYYY.SoundId = "rbxassetid://499932933"
        WWRRRYYYYY.Volume = 1
        WWRRRYYYYY.Looped = false
        WWRRRYYYYY:Play()
    end
end

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
            --[[wait(10)
            if TimeStopped == true then
                TheWorld("Time Start")
                TimeStopped = false
            end]]
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
    if key == "f" then
        if StandOn then
            StandOn = false
        else
            StandOn = true
            TheWorld("Wry")
        end
    end
    if key == "t" and OneSecond == false then
        OneSecond = true
        for i, v in pairs(Cha:GetChildren()) do
            if v:IsA('Hat') then
                v.Handle.Transparency=1
            end
        end
        Cha.Head.Transparency = 0.2
        Cha.Torso.Transparency = 0.2
        Cha["Right Arm"].Transparency = 0.2
        Cha["Left Arm"].Transparency = 0.2
        Cha["Right Leg"].Transparency = 0.2
        Cha["Left Leg"].Transparency = 0.2
        wait()
        Cha.Head.Transparency = 0.4
        Cha.Torso.Transparency = 0.4
        Cha["Right Arm"].Transparency = 0.4
        Cha["Left Arm"].Transparency = 0.4
        Cha["Right Leg"].Transparency = 0.4
        Cha["Left Leg"].Transparency = 0.4
        wait()
        Cha.Head.Transparency = 0.6
        Cha.Torso.Transparency = 0.6
        Cha["Right Arm"].Transparency = 0.6
        Cha["Left Arm"].Transparency = 0.6
        Cha["Right Leg"].Transparency = 0.6
        Cha["Left Leg"].Transparency = 0.6
        wait()
        Cha.Head.Transparency = 0.8
        Cha.Torso.Transparency = 0.8
        Cha["Right Arm"].Transparency = 0.8
        Cha["Left Arm"].Transparency = 0.8
        Cha["Right Leg"].Transparency = 0.8
        Cha["Left Leg"].Transparency = 0.8
        wait()
        Cha.Head.Transparency = 1
        Cha.Torso.Transparency = 1
        Cha["Right Arm"].Transparency = 1
        Cha["Left Arm"].Transparency = 1
        Cha["Right Leg"].Transparency = 1
        Cha["Left Leg"].Transparency = 1
        
        Targ = CFrame.new(Vector3.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z))
        print("ZA WARUDO!")

        Player.Character.Torso.CFrame = Targ

        wait()
        for i, v in pairs(Cha:GetChildren()) do
            if v:IsA('Hat') then
                v.Handle.Transparency=0
            end
        end
        Cha.Head.Transparency = 0.8
        Cha.Torso.Transparency = 0.8
        Cha["Right Arm"].Transparency = 0.8
        Cha["Left Arm"].Transparency = 0.8
        Cha["Right Leg"].Transparency = 0.8
        Cha["Left Leg"].Transparency = 0.8
        wait()
        Cha.Head.Transparency = 0.6
        Cha.Torso.Transparency = 0.6
        Cha["Right Arm"].Transparency = 0.6
        Cha["Left Arm"].Transparency = 0.6
        Cha["Right Leg"].Transparency = 0.6
        Cha["Left Leg"].Transparency = 0.6
        wait()
        Cha.Head.Transparency = 0.4
        Cha.Torso.Transparency = 0.4
        Cha["Right Arm"].Transparency = 0.4
        Cha["Left Arm"].Transparency = 0.4
        Cha["Right Leg"].Transparency = 0.4
        Cha["Left Leg"].Transparency = 0.4
        wait()
        Cha.Head.Transparency = 0.2
        Cha.Torso.Transparency = 0.2
        Cha["Right Arm"].Transparency = 0.2
        Cha["Left Arm"].Transparency = 0.2
        Cha["Right Leg"].Transparency = 0.2
        Cha["Left Leg"].Transparency = 0.2
        wait()
        Cha.Head.Transparency = 0
        Cha.Torso.Transparency = 0
        Cha["Right Arm"].Transparency = 0
        Cha["Left Arm"].Transparency = 0
        Cha["Right Leg"].Transparency = 0
        Cha["Left Leg"].Transparency = 0

        wait()
        OneSecond = false
    end
    if key == "v" then
        Rapid = true
        local ORA = Instance.new("Sound",char)
        ORA.SoundId = "rbxassetid://291088692"
        ORA.Volume = 1
        ORA.Looped = false
        ORA:Play()
        Attacking = true
        con1 = ram2.Touched:connect(function(hit) Damagefunc(torso,hit,1,4,math.random(0,0),"Killer Queen",RootPart,.2,1) end)
        con2 = lam2.Touched:connect(function(hit) Damagefunc(torso,hit,4,2,math.random(0,0),"Killer Queen",RootPart,.2,1) end)
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
        local MIDORA = Instance.new("Sound",char)
        MIDORA.SoundId = "rbxassetid://291088797"
        MIDORA.Looped = false
        MIDORA:Play()
        ORA:Stop()
        Attacking = false
    end
    if key == "e" then
        if StandOn == true then
        Rapid = true
        local ORA = Instance.new("Sound",char)
        ORA.SoundId = "rbxassetid://291088692"
        ORA.Volume = 1
        ORA.Looped = false
        ORA:Play()
        Attacking = true
        con1 = ram2.Touched:connect(function(hit) Damagefunc(torso,hit,3,1,math.random(0,0),"Normal",RootPart,.2,1) end)
        con2 = lam2.Touched:connect(function(hit) Damagefunc(torso,hit,1,3,math.random(0,0),"Normal",RootPart,.2,1) end)
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
        local MIDORA = Instance.new("Sound",char)
        MIDORA.SoundId = "rbxassetid://291088797"
        MIDORA.Looped = false
        MIDORA:Play()
        ORA:Stop()
        Attacking = false
        elseif StandOn == false then
        Rapid = true
        local ORA = Instance.new("Sound",char)
        ORA.SoundId = "rbxassetid://291088692"
        ORA.Volume = 1
        ORA.Looped = false
        ORA:Play()
        con1 = ram.Touched:connect(function(hit) Damagefunc(torso,hit,4,1,math.random(0,0),"Normal",RootPart,.2,1) end)
        con2 = lam.Touched:connect(function(hit) Damagefunc(torso,hit,1,5,math.random(0,0),"Normal",RootPart,.2,1) end)
        while Rapid == true do
            for i = 1, 3 do
                raw.C0 = RLerp(raw.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(math.random(-20,20)),math.rad(20)), 1.7)
                law.C0 = RLerp(law.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 1.7)
                hew.C0 = RLerp(hew.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
                tow.C0 = RLerp(tow.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
                llw.C0 = RLerp(llw.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
                rlw.C0 = RLerp(rlw.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw.C0 = RLerp(raw.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(0),math.rad(-50)), 1.7)
                law.C0 = RLerp(law.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(math.random(-20,20)),math.rad(-20)), 1.7)
                hew.C0 = RLerp(hew.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 1.3)
                tow.C0 = RLerp(tow.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 1.3)
                llw.C0 = RLerp(llw.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 1.3)
                rlw.C0 = RLerp(rlw.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw.C0 = RLerp(raw.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(math.random(-20,20)),math.rad(20)), 1.7)
                law.C0 = RLerp(law.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 1.7)
                hew.C0 = RLerp(hew.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 1.3)
                tow.C0 = RLerp(tow.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 1.3)
                llw.C0 = RLerp(llw.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 1.3)
                rlw.C0 = RLerp(rlw.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 1.3)
                wait()
            end
            for i = 1, 3 do
                raw.C0 = RLerp(raw.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(math.random(60,90)),math.rad(0),math.rad(-50)), 1.7)
                law.C0 = RLerp(law.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(math.random(-20,20)),math.rad(-20)), 1.7)
                hew.C0 = RLerp(hew.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 1.3)
                tow.C0 = RLerp(tow.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 1.3)
                llw.C0 = RLerp(llw.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 1.3)
                rlw.C0 = RLerp(rlw.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 1.3)
                wait()
            end
        end
        con1:disconnect()
        con2:disconnect()
        local MIDORA = Instance.new("Sound",char)
        MIDORA.SoundId = "rbxassetid://291088797"
        MIDORA.Looped = false
        MIDORA:Play()
        ORA:Stop()
        end
    end
    if key == "r" and Attacking == false then
        con1 = ram2.Touched:connect(function(hit) Damagefunc(torso,hit,4,2,math.random(100,100),"Knockdown",RootPart,.2,1) end)
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
        local MIDORA = Instance.new("Sound",char)
        MIDORA.SoundId = "rbxassetid://291088797"
        MIDORA.Looped = false
        MIDORA:Play()
        wait(1)
        con1:disconnect()
        Attacking = false
    end
    if key == "g" and Attacking == false then
        con1 = ram2.Touched:connect(function(hit) 
            Damagefunc(torso,hit,5,15,math.random(100,100),"Killer Queen",RootPart,.2,1) 
        end)
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
        local MIDORA = Instance.new("Sound",char)
        MIDORA.SoundId = "rbxassetid://291088797"
        MIDORA.Looped = false
        MIDORA:Play()
        wait(1)
        con1:disconnect()
        Attacking = false
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
        v.BrickColor = BrickColor.new("Really black")
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
StandOn = true
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
game:GetService("RunService").Stepped:connect(function()
    angle = ((angle % 100) + anglespeed/10)
    angle2 = ((angle2 % 100) + anglespeed2/10)
    angle3 = ((angle3 % 100) + anglespeed3/10)
        hrprv=Tween(hrprv,hrp.RotVelocity.Y,0.4)
        sine=sine+1
        if StandOn == false then
            for i,v in pairs(pchar:children()) do
                if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                    v.Transparency = 1
                end
            end
        elseif StandOn == true then
            for i,v in pairs(pchar:children()) do
                if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
                    v.Transparency = 0
                end
            end
        end
        MyHealth = humane.Health
        humane.Health = MyHealth
        if hum.Sit==true then
                animpose="Sitting"
        elseif ffing==true then
                animpose="Freefalling"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude<2 then
                animpose="Idle"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude<20 then
                animpose="Walking"
        elseif (hrp.Velocity*Vn(1,0,1)).magnitude>20 then
                animpose="Sprinting"
        end
        if Attacking == false then
            torso.CFrame = hrp.CFrame*CFrame.new(0,0,2)
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
                end
        end
end)