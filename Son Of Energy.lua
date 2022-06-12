--------------------------This is an Official script from Duelist--------------------------  
                           ---{--------------------                        -------------------}---
                           ---{--------------------         / \           -------------------}---
                            ---{--------------------         II            -------------------}---
                             ---{--------------------        II            -------------------}---
                             ---{--------------------        II            -------------------}---
                        ---{--------------------  A========A   -------------------}---      
                               ---{--------------------      II             -------------------}---
                               ---{--------------------      II             -------------------}---
                                ---{--------------------     W           -------------------}---
-------------------------------------------------------------------------------------------------------------
local p = game.Players.LocalPlayer
--300899323
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local RootPart = char.HumanoidRootPart
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
math.randomseed(os.time())
hum.JumpPower = 70
hed.face:Remove()
local euler = CFrame.fromEulerAnglesXYZ
----------------------------------------------------
local Character = char
---------------------------------------------------
local Effects = {}
wait(0.016666666666667)
equipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
unequipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local player = game.Players.localPlayer
local humanoid = char.Humanoid
local mouse = player:GetMouse()
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

vt = Vector3.new
local m = Instance.new("Model", char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1

it = Instance.new
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 10
local co2 = 15
local co3 = 20
local co4 = 35
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 10
local skill2stam = 20
local skill3stam = 35
local skill4stam = 50
local recovermana = 5
local defensevalue = 1
local speedvalue = 1
local mindamage = 5
local maxdamage = 7
local damagevalue = 1
local maramistcutterchance = 25
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
F1 = Instance.new("Folder", char)
F1.Name = "Effects Folder"
F2 = Instance.new("Folder", F1)
F2.Name = "Effects"
----------------------------------------------------
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end
 
function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
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

----------------------------------------------------
Debounces = {
Doe = false;
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
ks = false;
}
local myVars = {
	false, -- Unsheathed 1
	nil, -- Grabbed Entity 2
	0, -- Attack number 3
	false, -- Running 4
	false, --Powers Mode  5
	false, -- 6
}
----------------------------------------------------

function GetParts(obj)
	for i, v in pairs(obj:GetChildren())do
		if ( v:IsA'BasePart' ) then
			if v.Name ~= "Trail" then
			Instance.new("ForceField", v);
			end
		end
		GetParts(v);
	end
end
--GetParts(char)

function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
	NoOutline(fp)
	fp.Material="Neon"
	fp:BreakJoints()
	return fp
end
--------------------------------------
Character.Archivable = true
local yellow = Character:Clone()
yellow.Name = ""
for _,c in pairs(yellow:children()) do
  if c.className == "Model" or c.className == "Script" or c.className == "BodyColors" or c.className == "Hat" or c.Name == "Stats" then
    c.Parent = nil
  end
  if c.className == "Part" then
    NoOutline(c)
    c.CanCollide = false
    c.Transparency = 1
    if c.Name == "HumanoidRootPart" then
      c.Transparency = 1
    end
    c.BrickColor = BrickColor.new("New Yeller")
    for _,d in pairs(c:children()) do
      if d.className == "Weld" or d.className == "Motor" or d.className == "Motor6D" or d.className == "Decal" then
        d.Parent = nil
      end
    end
  end
  do
    do
      if c.className == "Humanoid" then
        c.Parent = nil
      end
    end
  end
end
yellow.Parent = Character
if yellow:findFirstChild("HumanoidRootPart") ~= nil then
  yellow.HumanoidRootPart.Anchored = true
end
shed = yellow.Head
storso = yellow.Torso
sroot = yellow.HumanoidRootPart
slarm = yellow["Left Arm"]
srarm = yellow["Right Arm"]
slleg = yellow["Left Leg"]
srleg = yellow["Right Leg"]
storso.Size = storso.Size + Vector3.new(.2,.1,.2)
slarm.Size = slarm.Size + Vector3.new(.2,.1,.2)
srarm.Size = srarm.Size + Vector3.new(.2,.1,.2)
slleg.Size = slleg.Size + Vector3.new(.2,.1,.2)
srleg.Size = srleg.Size + Vector3.new(.2,.1,.2)
shed.Size = shed.Size + Vector3.new(.2,.1,.2)
newWeld(storso, slarm, -1.5, 0.5, 0)
slarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(storso, srarm, 1.5, 0.5, 0)
srarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(storso, shed, 0, 1.5, 0)
newWeld(storso, slleg, -0.5, -1, 0)
slleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(storso, srleg, 0.5, -1, 0)
srleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(sroot, storso, 0, -1, 0)
storso.Weld.C1 = CFrame.new(0, -1, 0)
Character.Archivable = false
local forms = {
	yellow
}
---------------------------------------------
function parto(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
		fp.Position=char.Torso.Position
		NoOutline(fp)
		fp.Material="Neon"
		fp:BreakJoints()
		return fp
	end

local PowerBrickColor = BrickColor.new("Really red")
function Showdamage(Pos, Text, Time, Color)
        local Rate = (1 / 30)
        local Pos = (Pos or Vector3.new(0, 0, 0))
        local Text = (Text or "")
        local Time = (Time or 2)
        local Color = (Color or Color3.new(1, 0, 0))
        local EffectPart = parto("Custom", workspace, "Neon", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
        EffectPart.Anchored = true
        local BillboardGui = Instance.new("BillboardGui")
                BillboardGui.Size = UDim2.new(3, 0, 3, 0)
                BillboardGui.Adornee = EffectPart
                BillboardGui.Parent = EffectPart
        
        local TextLabel = Instance.new("TextLabel")
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = Text
                TextLabel.TextColor3 = Color
                TextLabel.TextScaled = true
                TextLabel.Font = Enum.Font.SourceSansBold
                TextLabel.Parent = BillboardGui
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextTransparency = 0.2
				
        
        game.Debris:AddItem(EffectPart, (Time + 0.1))
        EffectPart.Parent = game:GetService("Workspace")
        delay(0, function()
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

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
        if hit.Parent == nil then
                return
        end
        local h = hit.Parent:FindFirstChild("Humanoid")
        for _, v in pairs(hit.Parent:children()) do
                if v:IsA("Humanoid") then
                        h = v
                end
        end
        if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
                if hit.Parent:findFirstChild("DebounceHit") ~= nil then
                        if hit.Parent.DebounceHit.Value == true then
                                return
                        end
                end
                if h.MaxHealth >= math.huge then
                        hit:BreakJoints()
                end
                local c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = game:service("Players").LocalPlayer
                        c.Parent = h
                
                game:GetService("Debris"):AddItem(c, .5)
                if HitSound ~= nil and HitPitch ~= nil then
                        --so(HitSound, hit, 1, HitPitch) 
                end
                local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
                local blocked = false
                local block = hit.Parent:findFirstChild("Block")
                if block ~= nil then
                        if block.className == "IntValue" then
                                if block.Value > 0 then
                                        blocked = true
                                        block.Value = block.Value - 1
                                        print(block.Value)
                                end
                        end
                end
                if blocked == false then
--                h:TakeDamage(Damage)
                        h.Health = h.Health - Damage
                        if Damage ~= 0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1, PowerBrickColor.Color)
                        end
                else
                        h.Health = h.Health - (Damage / 2)
                        if Damage ~=0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1, PowerBrickColor.Color)
                        end
                end
                if Type == "Knockdown" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand = false
                        end), hum)
                        local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
                        local bodvol = Instance.new("BodyVelocity")
                                bodvol.velocity = angle * knockback
                                bodvol.P = 5000
                                bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodvol.Parent = hit
                        
                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodvol, .5)
                        game:GetService("Debris"):AddItem(rl, .5)
                elseif Type == "Plat" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                wait(0.8)
                                HHumanoid.PlatformStand = false
                        end), hum)

                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(100, 100, 100) * 500
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit

                        game:GetService("Debris"):AddItem(rl, .5)

						local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)

                elseif Type == "Normal" then
                        local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
				elseif Type == "Gravitate" then
						local tor = hit.Parent.Torso
                        local bp = Instance.new("BodyPosition",tor)
                                bp.P = 500
                                bp.maxForce = Vector3.new(4000, 1000, 4000)
                                bp.Position = char.Torso.Position
                        game:GetService("Debris"):AddItem(bp, Delay)
                elseif Type == "Up" then
                        local bodyVelocity = Instance.new("BodyVelocity")
                                bodyVelocity.velocity = vt(0, 20, 0)
                                bodyVelocity.P = 5000
                                bodyVelocity.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodyVelocity.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodyVelocity, .5)
                elseif Type == "Snare" then
                        local bp = Instance.new("BodyPosition")
                                bp.P = 2000
                                bp.D = 100
                                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                bp.position = hit.Parent.Torso.Position
                                bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)

                elseif Type == "Freeze" then
                        local BodPos = Instance.new("BodyPosition")
                                BodPos.P = 50000
                                BodPos.D = 1000
                                BodPos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                BodPos.position = hit.Parent.Torso.Position
                                BodPos.Parent = hit.Parent.Torso
                        
                        local BodGy = Instance.new("BodyGyro") 
                                BodGy.maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge 
                                BodGy.P = 20e+003
                                BodGy.Parent = hit.Parent.Torso
                                BodGy.cframe = hit.Parent.Torso.CFrame
                        
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part) 
                                swait(1.5)
                                Part.Anchored = false
                        end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                
                
                        elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                --so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                --so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                if Humanoid.Health>0 and char.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
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
                
                local debounce = Instance.new("BoolValue")
                debounce.Name = "DebounceHit"
                debounce.Parent = hit.Parent
                debounce.Value = true
                game:GetService("Debris"):AddItem(debounce, Delay)
                c = Instance.new("ObjectValue")
                c.Name = "creator"
                c.Value = Player
                c.Parent = h
                game:GetService("Debris"):AddItem(c, .5)
        end
end
MousePlane = function()
	local mouse = game.Players.LocalPlayer:GetMouse()
	local buttspoop = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mouse.Hit.p).unit
	return -Vector3.new(buttspoop.x,0,buttspoop.z).unit
end

NewPart = function(size, cframe, color, meshtype, meshscale)
  local par = Instance.new("Part")
  par.formFactor = "Custom"
  par.TopSurface = 0
  par.BottomSurface = 0
  par.Size = size
  par.CFrame = cframe
  par.Material = "Neon"
  par.BrickColor = BrickColor.new(color)
  do
    if meshtype then
      local m = Instance.new(meshtype, par)
      m.Scale = meshscale
    end
    return par
  end
end
MousePlane = function()
	local mouse = game.Players.LocalPlayer:GetMouse()
	local buttspoop = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mouse.Hit.p).unit
	return -Vector3.new(buttspoop.x,0,buttspoop.z).unit
end

function giant(p, size)	
	local pchar = p.Character
	if pchar then
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA("Accessory") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    Head.Mesh.Scale = Vector3.new(scl + .25, scl + .25, scl + .25)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					print("FOUND ACCESSORY")
					for ii,vi in pairs(v:GetChildren()) do
						if vi:IsA("Mesh") then
							vi.Scale = Vector3.new(scl, scl, scl)
						elseif vi:IsA("Part") then
							print("FOUND PART")
							for iii,vii in pairs(vi:GetChildren()) do
								if vii:IsA("Mesh") then
									vii.Scale = Vector3.new(scl, scl, scl)
								end
							end
						end
					end
				end
			end
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = "Neck"
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = "Left Shoulder"
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = "Right Shoulder"
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = "Left Hip"
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = "Right Hip"
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, size)
		pchar.Humanoid.WalkSpeed = 15 * size
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Accessory") then
					for ii,vi in pairs(v:GetChildren()) do
						if vi:IsA("Part") then
							print("FOUND PART")
							for iii,vii in pairs(vi:GetChildren()) do
								if vii:IsA("SpecialMesh") then
									print(vii)
									vii.Scale = Vector3.new(size, size, size)
								end
							end
						end
					end
				v.Parent = pchar
			end
		end
	end
end

rayCast = function(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end

  MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder1", delay, x3, y3, z3, msh})
end
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)

local mesh = function(Mesh,part,meshtype,meshid,offset,scale)
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
local prt=part(3,F2,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh,dur)
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end
local Neons = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}
local neonazi = "Bright red", "Bright orange", "Bright yellow", "Bright green", "Bright blue", "Bright violet", "Royal purple"
  local effects = Instance.new("Model", char)
  effects.Name = "Effects"
  do2 = function(brickcolor)


local mesh = function(Mesh,part,meshtype,meshid,offset,scale)
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
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = -0.05
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = 0.1
    --so("341336144", larm, 1, 1)
    --so("341336144", rarm, 1, 1)
    sbreaker = true
    local sbref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld1 = weld(sbref1, sbref1, larm, cf(0, 1, 0))
    local sbref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld2 = weld(sbref2, sbref2, rarm, cf(0, 1, 0))
    local sref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    TehM = nil
    TehM = torso.Position
              MouseLook = cf(RootPart.Position)
              local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, char)
              rand = cf(math.random(0, 0) / 100, 10, math.random(0, 0) / 100)
              sref.CFrame = cf(RootPart.Position)*rand
              local hit2, pos2 = rayCast(sref.Position, CFrame.new(sref.Position, sref.Position - Vector3.new(0, 1, 0)).lookVector, 999, char)
              local d1 = part(3, effects, 0, 0.5, BrickColor.new("White"), "Effect", vt())
              d1.Anchored = true
              d1.CFrame = cf(RootPart.Position)
              d1.Material = "Neon"
              msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(50, 5, 50))
              d2 = d1:Clone()
              d2.Transparency = 1
              d2.Parent = d1
              d2.CFrame = cf(d1.Position)
              d2.BrickColor = brickcolor
                              refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                              refda.Anchored = true
                              refda.CFrame = cf(d1.Position) * cf(0, 500, 0)
                              game:GetService("Debris"):AddItem(refda, 1)
                              local mag = (refda.Position - d1.Position).magnitude
                              --MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + d1.Position) / 2, d1.Position) * angles(1.57, 0, 0), 40, mag * 5, 40, 0, 0, 0, 0.3)
                              Lightning(refda.Position, d1.Position, 15, 5, brickcolor.Color, 3.5, 0.2, 0.05)
                              MagicBlock(brickcolor, cf(d1.Position), 40, 40, 40, -1, -1, -1, 0.08, 1)
                              refda.CFrame = cf(d1.Position)
                              --MagniDamage(refda, 5, 10, 12, 0, "Knockdown2", refda, 0.1, 1, (math.random(10, 12)), nil, nil, true)
                              refda.CFrame = cf(d1.Position) * cf(0, 3, 0)
                              --MagniDamage(refda, 5, 10, 12, 0, "Knockdown2", refda, 0.1, 1, (math.random(10, 12)), nil, nil, true)
                              refda.CFrame = cf(d1.Position)
                              --so("341336446", refda, 1, math.random(100, 120) / 100)
                              --so("341336459", refda, 1, math.random(100, 120) / 100)
    rara1.Parent = nil
    rara2.Parent = nil
    sbrwld1.Parent = nil
    sbrwld2.Parent = nil
    sbref1.Anchored = true
    sbref2.Anchored = true
    game:GetService("Debris"):AddItem(d1, 0)
    game:GetService("Debris"):AddItem(d2, 0)
    game:GetService("Debris"):AddItem(sbref1, 0)
    game:GetService("Debris"):AddItem(sbref2, 0)
end
function fly(hite, knockback)
				if hite:FindFirstChild('Humanoid') ~= nil then
                        local hum = hite.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                wait(0.8)
                                HHumanoid.PlatformStand = false
                        end), hum)
                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(100, 100, 100) * 500
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-20, 20), math.random(-10, 10))
                                rl.Parent = hite.Torso
                        game:GetService("Debris"):AddItem(rl, .5)

				local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 100, math.huge)
                                vp.velocity = RootPart.CFrame.lookVector * knockback + RootPart.Velocity / 1.05
                        if knockback > 0 then
                                vp.Parent = hite.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
				elseif hite.className == 'Part' then
                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(100, 100, 100) * 500
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-20, 20), math.random(-10, 10))
                                rl.Parent = hite
                        game:GetService("Debris"):AddItem(rl, .5)

						local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 100, math.huge)
                                vp.velocity = RootPart.CFrame.lookVector * knockback + RootPart.Velocity / 1.05
                        if knockback > 0 then
                                vp.Parent = hite
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
				end
end
function ap(arg1)
	if arg1 == 1 then
		for i,v in pairs(yellow:children()) do
			if v:IsA'Part' then
				storso.CFrame = torso.CFrame
				Debounces.Doe = true
				v.Transparency = 0.7
				yellow.HumanoidRootPart.Transparency = 1
			end
		end
	end
end
function dap(arg1)
	if arg1 == 1 then
		for i,v in pairs(yellow:children()) do
			if v:IsA'Part' then
				Debounces.Doe = false
				v.Transparency = 1
			end
		end
	end
end
---------------------------------------------------
local modes = {
	['cannon'] = true,
	['lightning'] = false,
	['beam'] = false
}
--Attacks
function attack1(brickcolor)
	Debounces.CanAttack = false
	Debounces.NoIdl = true
	Debounces.on = true
	sroot.Anchored = false
	coroutine.resume(coroutine.create(function()
		for i=1,10 do
			--wait(0.01)
			srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(120)), 0.2)
			slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-20)), 0.2)
			shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-80),0), 0.2)
			storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-25), 0), 0.2)
			slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.8, -1, 0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
			srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.7, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), 0.2)
			rs:wait(0)
			sroot.CFrame = torso.CFrame
		end
		for i=1,10 do
			--wait(0.01)
			srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-90),math.rad(-60),math.rad(120)), 0.7)
			slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-30)), 0.7)
			shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-80),0), 0.7)
			storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-20), 0), 0.7)
			slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.8, -1, 0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
			srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.7, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), 0.7)
			rs:wait(0)
			sroot.CFrame = torso.CFrame
		end
		sroot.Anchored = true
	end))
		for i=1,10 do
			--wait(0.01)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(120)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-80),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(65), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, -1, 0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), 0.2)
			rs:wait(0)
		end
		for i=1,10 do
			--wait(0.01)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-90),math.rad(-60),math.rad(120)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-30)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-80),0), 0.7)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(55), 0), 0.7)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, -1, 0.3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), 0.7)
			rs:wait(0)
		end
		MagicBlock(brickcolor, cf(rarm.CFrame.p), 10, 10, 10, -1, -1, -1, 0.08, 1)
	for i,v in pairs(modes) do
		if v == true and i == 'cannon' then
			print(i)
			Lightning(rarm.Position, mouse.Hit.p, 1, 5, "Bright yellow", 2, 0.1, 0.03)
		end
		if v == true and i == 'lightning' then
			print(i)
			Lightning(rarm.Position, mouse.Hit.p, 5, 5, "Bright yellow", 0.4, 0.1, 0.03)
			MagicBlock(brickcolor, cf(mouse.Hit.p), 40, 40, 40, -1, -1, -1, 0.08, 1)
			if mouse.Target.className ~= 'Terrain' then
				mouse.Target:BreakJoints()
				fly(mouse.Target, 100)
			end
		end
		if v == true and i == 'beam' then
			print(i)
			Lightning(rarm.Position, mouse.Hit.p, 1, 5, "Bright yellow", 0.5, 0.1, 0.03)
		end
	end
	Debounces.CanAttack = true
	Debounces.NoIdl = false
	Debounces.on = false
end
function handcannon(brickcolor)
	Debounces.CanAttack = false
	Debounces.NoIdl = true
	Debounces.on = true
	sroot.Anchored = false
	coroutine.resume(coroutine.create(function()
	for i = 1, 10 do
		srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(-20)), 0.4)
		slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.4)
		slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.5, -1, -.3) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
		sroot.CFrame = torso.CFrame
	end
	for i = 1, 10 do
		srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(-20)), 0.4)
		slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)), 0.4)
		shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.4)
		slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.5, -1, -.3) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
		sroot.CFrame = torso.CFrame
	end
	sroot.Anchored = true
	end))
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(-20)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.3) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
--(Part0,Part1,Times,Offset,Color,Thickness,Trans)
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(-20)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.3) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i,v in pairs(modes) do
		if v == true and i == 'cannon' then
			print(i)
			Lightning(larm.Position, mouse.Hit.p, 1, 5, "Bright yellow", 2, 0.1, 0.03)
		end
		if v == true and i == 'lightning' then
			print(i)
			Lightning(larm.Position, mouse.Hit.p, 5, 5, "Bright yellow", 0.4, 0.1, 0.03)
			MagicBlock(brickcolor, cf(mouse.Hit.p), 40, 40, 40, -1, -1, -1, 0.08, 1)
			if mouse.Target.className ~= 'Terrain' then
				mouse.Target:BreakJoints()
				fly(mouse.Target, 100)
			end
		end
		if v == true and i == 'beam' then
			print(i)
			Lightning(larm.Position, mouse.Hit.p, 1, 5, "Bright yellow", 0.5, 0.1, 0.03)
		end
	end
	Debounces.CanAttack = true
	Debounces.NoIdl = false
	Debounces.on = false
end
function transform()
	if not Debounces.Doe then
	Debounces.CanAttack = false
	Debounces.NoIdl = true
	Debounces.on = true
--charge up
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-40)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,-.2)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.1)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.3) * CFrame.Angles(math.rad(40), 0, math.rad(-4)), 0.4)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40), 0, math.rad(4)), 0.4)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(0.05)
--transform
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(40)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,-.2)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.1)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.3, -.3) * CFrame.Angles(math.rad(-50), 0, math.rad(-4)), 0.4)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.3, 0) * CFrame.Angles(math.rad(-50), 0, math.rad(4)), 0.4)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	Debounces.CanAttack = true
	Debounces.NoIdl = false
	Debounces.on = false
	do2(BrickColor.new("Bright yellow"))
	for i=0,#forms do
		ap(i)
	end
	else
		for i=0,#forms do
			dap(i)
		end
		do2(BrickColor.new("Institutional white"))
	end
end
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "0" then
		if myVars[4] ~= true then
			myVars[4] = true
			char.Humanoid.WalkSpeed = 50
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "0" then
		if myVars[4] ~= true then
			return
		else
			myVars[4] = false
			char.Humanoid.WalkSpeed = 25
		end
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "k" then
		transform()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "p" then
		for i,v in pairs(modes) do
			if v == true and i == 'cannon' then
				print(i)
				modes['cannon'] = false
				modes['lightning'] = true
				return
			end
			if v == true and i == 'lightning' then
				print(i)
				modes['lightning'] = false
				modes['beam'] = true
				return
			end
			if v == true and i == 'beam' then
				print(i)
				modes['beam'] = false
				modes['cannon'] = true
				return
			end
		end
	end
end)
mouse.Button1Down:connect(function(key)
	if Debounces.Doe then
		if not myVars[5] then
			myVars[5] = true
			attack1(BrickColor.new("Bright yellow"))
		end
	end
end)

mouse.Button1Up:connect(function(key)
	if Debounces.Doe then
		if myVars[5] then
			myVars[5] = false
		end
	end
end)
----------------------------------------------------
local jump = false
cf = CFrame.new
	char.Humanoid.MaxHealth = math.huge
	char.Humanoid.Health = math.huge
local rara = 0
local ffing = false
game:GetService("RunService"):BindToRenderStep("anims", Enum.RenderPriority.Camera.Value+1, function()
	if myVars[5] then
		--handcannon(BrickColor.new("Bright yellow"))
	end
	if char.Humanoid.Jump == true then
		if not jump then
			jump = true
		end
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			if ffing then 
				ffing = false
				animpose = "Walking"
			end
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 40 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 60 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			end
			--fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				if not myVars[6] then
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
					rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
					larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.1)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
					torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
				if Debounces.Doe then
					--yellow:MoveTo(torso.CFrame.p)
					storso.CFrame = torso.CFrame
					srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
					srarm.Weld.C1 = Lerp(srarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
					slarm.Weld.C1 = Lerp(slarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
					shed.Weld.C1 = Lerp(shed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.1)
					storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
					storso.Weld.C1 = Lerp(storso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
					slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					slleg.Weld.C1 = Lerp(slleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
					srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					srleg.Weld.C1 = Lerp(srleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
				end
				else --if giant
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(12+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
					rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(-.6, 0.5, -.2)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-12-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
					larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(.6, 0.5, .2)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,2.3,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.1)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
					torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.7, -2.2, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -2.2, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
					rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
				end
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			elseif stanceToggle == "Grabbed" then
				grab = true
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(175),math.rad(0),math.rad(15-2*math.cos(sine/3))), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, 0) * CFrame.Angles(math.rad(175), 0, math.rad(-15+2*math.cos(sine/3))), 0.1)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0,-1, 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.1)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)

			elseif stanceToggle ~= "Grabbed" then
					if myVars[4] then --if running
				if Debounces.Doe then
					--yellow:MoveTo(torso.CFrame.p)
					storso.CFrame = torso.CFrame
					srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
					srarm.Weld.C1 = Lerp(srarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
					slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
					slarm.Weld.C1 = Lerp(slarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
					shed.Weld.C1 = Lerp(shed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
					storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
					storso.Weld.C1 = Lerp(storso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
					slleg.Weld.C0 = Lerp(slleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
					slleg.Weld.C1 = Lerp(slleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
					srleg.Weld.C0 = Lerp(srleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
					srleg.Weld.C1 = Lerp(srleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				end
					change = 1
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
					rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
					larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
					torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
					lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
					rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)

					else --if not running
				if Debounces.Doe then
					--yellow:MoveTo(torso.CFrame.p)
					storso.CFrame = torso.CFrame
					srarm.Weld.C0 = Lerp(srarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
					srarm.Weld.C1 = Lerp(srarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
					slarm.Weld.C0 = Lerp(slarm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
					slarm.Weld.C1 = Lerp(slarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
					shed.Weld.C0 = Lerp(shed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
					shed.Weld.C1 = Lerp(shed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
					storso.Weld.C0 = Lerp(storso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
					storso.Weld.C1 = Lerp(storso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
					slleg.Weld.C0 = slleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
					slleg.Weld.C1 = Lerp(srleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
					srleg.Weld.C0 = srleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
					srleg.Weld.C1 = Lerp(srleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				end
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
					rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
					larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
					torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
					lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
					lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
					rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
					rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
					end		
				end
		elseif animpose == "Running" then
			change = 1
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Jumping" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Freefalling" then
			if myVars[6] then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.7+0.05*math.cos(sine/10),1.3+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(120+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(30+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(-.6, 0.5, -.2)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.7-0.05*math.cos(sine/10),1.3+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(120-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-26-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(.6, 0.5, .2)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,2.3,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-30+1*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.3)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.6, -1.8, -.6) * CFrame.Angles(math.rad(60), 0, math.rad(-5)), 0.3)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.6, -2.2, 0) * CFrame.Angles(math.rad(10), 0, math.rad(5)), 0.3)
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
	if Thing[1].Transparency<=1 then

            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
	      print('RAN!')
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Block2" then
                		Thing[1].CFrame = Thing[1].CFrame
                		Mesh = Thing[7]
                		Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                		Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            elseif Thing[2] == "SatelliteStrike2" then
                              if Thing[5] < 100 then
                                Thing[5] = Thing[5] + 2
                                Thing[6] = Thing[6] + 1
                                if 2 < Thing[6] then
                                  Thing[6] = 0
                                  if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("Really red")
                                  else
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("New Yeller")
                                  end
                                end
                              else
                                refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                refda.Anchored = true
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                                game:GetService("Debris"):AddItem(refda, 1)
                                local mag = (refda.Position - Thing[1].Position).magnitude
                                MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 60, mag * 5, 60, 0, 0, 0, 0.1)
                                Lightning(refda.Position, Thing[1].Position, 25, 5, "Bright yellow", 5, 0.2, 0.03)
                                MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 80, 80, 80, -1, -1, -1, 0.06, 1)
                                refda.CFrame = cf(Thing[1].Position)
                                --MagniDamage(refda, 10, 14, 16, 0, "Knockdown2", refda, 0.1, 1, (math.random(14, 18)), nil, nil, true)
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                                --MagniDamage(refda, 10, 14, 16, 0, "Knockdown2", refda, 0.1, 1, (math.random(14, 18)), nil, nil, true)
                                refda.CFrame = cf(Thing[1].Position)
                                so("341336446", refda, 1, math.random(70, 90) / 100)
                                so("341336459", refda, 1, math.random(50, 80) / 100)
                                Thing[1].Parent = nil
                                table.remove(Effects, e)
                              end
						elseif Thing[2]=="Block1" then
							Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
							Mesh=Thing[1]:FindFirstChild("Mesh")
							if not Mesh then
								Mesh = Instance.new("BlockMesh")
							end
							Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
						elseif Thing[2]=="Block2" then
               						 Thing[1].CFrame = Thing[1].CFrame
                					Mesh = Thing[7]
                					Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                					Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
						elseif Thing[2]=="Cylinder" then
							Mesh=Thing[1]:FindFirstChild("Mesh")
							if not Mesh then
								Mesh = Instance.new("BlockMesh")
							end
							Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
                                                    elseif Thing[2] == "Cylinder1" then
                                                      Mesh = Thing[7]
                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2]=="Blood" then
							Mesh=Thing[1]:FindFirstChild("Mesh")
							if not Mesh then
								Mesh = Instance.new("BlockMesh")
							end
							Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
							Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
						elseif Thing[2]=="Elec" then
							Mesh=Thing[1]:FindFirstChild("Mesh")
							if not Mesh then
								Mesh = Instance.new("BlockMesh")
							end
							Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
						elseif Thing[2]=="Disappear" then
							Thing[1].Transparency=Thing[1].Transparency+Thing[3]
						end
					else
						Part.Parent=nil
						game:GetService("Debris"):AddItem(Part, 0)
						table.remove(Effects,e)
					end
				end
			end
		end
	end
end
end)
char:FindFirstChild("Humanoid").Died:connect(function()
	game:GetService("RunService"):UnbindFromRenderStep("anims")
	print("John Doe died!!!")
end)