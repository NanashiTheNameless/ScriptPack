local p = game.Players.localPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game.Lighting
local stanceToggle = "Assertive"
local CanAttack = true
local Daytime = true
local animpose = "Idle"
local lastanimpose = "Idle"
local nosword=false
RootPart=char.HumanoidRootPart
local Effects={}
local attack=false
idle=0
Anim='Idle'
equipped=true
char.Humanoid.WalkSpeed=10
colorscheme=BrickColor.new('Black')
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
m=Instance.new('Model',char)
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles


function swait(num)
	if num==0 or num==nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i=0,num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end

function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
-----------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)

local function weldBetween(a, b)
    local weldd = Instance.new("ManualWeld")
    weldd.Part0 = a
    weldd.Part1 = b
    weldd.C0 = CFrame.new()
    weldd.C1 = b.CFrame:inverse() * a.CFrame
    weldd.Parent = a
    return weldd
end

it=Instance.new

function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function paart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
	fp.Position=torso.Position 
	nooutline(fp)
	fp.Material="SmoothPlastic"
	fp:BreakJoints()
	return fp 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

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

Face=hed.face

function Cloak()
--so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=nil
cloaked=true
for _,v in pairs(torso.Parent:children()) do
if v.className=="Part" and v.Name~="HumanoidRootPart" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
if v.className=="Hat" then
hatp=v.Handle
coroutine.resume(coroutine.create(function(derp) 
for i=0,1,0.2 do
wait()
derp.Transparency=i
end
derp.Transparency=1
end),hatp)
end
end
for _,v in pairs(m:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
end
end
magix=true
function UnCloak()
	--so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
	Face.Parent=hed 
	cloaked=false
	for _,v in pairs(torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
		end
		--[[if v.className~="Hat" then
			hatp=v.Handle
			coroutine.resume(coroutine.create(function(derp) 
				for i=0,1,0.1 do
					wait()
					derp.Transparency=derp.Transparency-0.1
				end
				derp.Transparency=0
			end),hatp)
		end]]
	end
	if magix==false then
	for _,v in pairs(m:children()) do
		if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat' then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
			v.Transparency=0
		end
	end
else
		for _,v in pairs(m:children()) do
		if v.className=="Part" and v.ClassName~='Weld' and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat'then
			coroutine.resume(coroutine.create(function() 
				for i=0,1,0.1 do
					wait()
					v.Transparency=v.Transparency-0.1
				end
				v.Transparency=0
			end))
			v.Transparency=0
		end
	end
end
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
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
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Hitbox.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
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
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
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
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

mouse.Button1Down:connect(function()
	if attack==false and attacktype == 1 then
		if attacktype==1 then
		attacktype = 1
		
		end
	end
end)

mouse.KeyDown:connect(function(k)
if attack == false and k == '' then

end
end)

--[[bodvel=it("BodyVelocity")
bodvel.Parent=root
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=root.CFrame.lookVector*60
--]]
local sine = 0
local change = 1
local val = 0

larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
----------------------------------------------------
newWeld(torso, larm, -3, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 3, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
hed.Weld.C1 = CFrame.new(0, -1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(.5, 3, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(-.5, 3, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

while true do
	swait()
	sine = sine + change
	local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
	local velderp=RootPart.Velocity.y
	hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,50,0))).lookVector,50,char)
	if equipped==true or equipped==false then
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
			Anim="Jump"
			if attack==false then
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
			Anim="Fall"
			if attack==false then
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			end
		elseif torvel<1 and hitfloor~=nil then
			Anim="Idle"
			if attack==false then
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				end
		elseif torvel>2 and hitfloor~=nil then
			Anim="Walk"
			if attack==false then
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			end
		end
	end
	if #Effects>0 then
	--table.insert(Effects,{prt,"Block1",delay})
	for e=1,#Effects do
	if Effects[e]~=nil then
	--for j=1,#Effects[e] do
	local Thing=Effects[e]
	if Thing~=nil then
	local Part=Thing[1]
	local Mode=Thing[2]
	local Delay=Thing[3]
	local IncX=Thing[4]
	local IncY=Thing[5]
	local IncZ=Thing[6]
	if Thing[2]=="DecreaseStat" then
	Thing[5]=Thing[5]-1
	if Thing[5]<=0 then
	if Thing[1]:findFirstChild("Stats")~=nil then
	Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
	end
	table.remove(Effects,e)
	end
	end
	if Thing[2]=="Shoot" then
	local Look=Thing[1]
	local hit,pos = rayCast(Thing[4],Look,20,m)
	local mag=(Thing[4]-pos).magnitude
	MagicHead(BrickColor.new("Really red"),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,0.1)
	Thing[4]=Thing[4]+(Look*20)
	Thing[3]=Thing[3]-1
	if hit~=nil then
	Thing[3]=0
	if Thing[8]==1 then
	Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,5),nil,nil,true)
	elseif Thing[8]==2 then
	Damagefunc(hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,0,2,math.random(1,5),nil,nil,true)
	end
	ref=part(3,workspace,0,1,BrickColor.new("Really red"),"Reference",vt())
	ref.Anchored=true
	ref.CFrame=cf(pos)
	MagicCircle(BrickColor.new("Really red"),cf(pos),5,5,5,1,1,1,0.03)
	game:GetService("Debris"):AddItem(ref,1)
	end
	if Thing[3]<=0 then
	table.remove(Effects,e)
	end
	end
	if Thing[2]=="CylinderClang" then
	if Thing[3]<=1 then
	Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0)
	Thing[7]=Thing[1].CFrame
	effect("New Yeller",0,Thing[8],Thing[7])
	Thing[8]=Thing[7]
	Thing[3]=Thing[3]+Thing[4]
	else
	Part.Parent=nil
	table.remove(Effects,e)
	end
	--[[Mesh=Thing[7]
	Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
	end
	if Thing[2]~="Shoot" and Thing[2]~="DecreaseStat" then
	if Thing[1].Transparency<=1 then
	if Thing[2]=="Block1" then
	Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	Mesh=Thing[7]
	Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	elseif Thing[2]=="Block2" then
	Thing[1].CFrame=Thing[1].CFrame
	Mesh=Thing[7]
	Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	elseif Thing[2]=="Cylinder" then
	Mesh=Thing[7]
	Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	elseif Thing[2]=="Blood" then
	Mesh=Thing[7]
	Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
	Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	elseif Thing[2]=="Elec" then
	Mesh=Thing[7]
	Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	elseif Thing[2]=="Disappear" then
	Thing[1].Transparency=Thing[1].Transparency+Thing[3]
	end
	else
	Part.Parent=nil
	table.remove(Effects,e)
	end
	end
	end
	end
	end
	end
	end