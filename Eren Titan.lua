---
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local ASD = BrickColor.new("Pastel brown")
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
math.randomseed(os.time())
hum.WalkSpeed = 7
char.Health:Destroy()
hum.MaxHealth = 5000000
wait(0.1)
hum.Health = 5000000
z = Instance.new("Sound", char.Torso)
z.SoundId = "rbxassetid://719841541"
z.Looped = true
z.Pitch = 1
z.Volume = 1
----------------------------------------------------
local SM = Instance.new("Smoke",torso)
SM.Size = 15
local S = Instance.new("Part",char)
S.Size = Vector3.new(1,1,1)
S.Material = "Neon"
S.BrickColor = BrickColor.new("Deep orange")
S.Transparency = 0
S.Anchored = true
S.CFrame = torso.CFrame*CFrame.new(0,0,0)
local Ring = Instance.new("Part",S)
Ring.Size = Vector3.new(1,1,1)
Ring.BrickColor = BrickColor.new("Deep orange")
Ring.Anchored = true
Ring.CanCollide = false
Ring.CFrame = S.CFrame*CFrame.new(0,0,0)*CFrame.Angles(1.55,0,0)
local Ring2 = Instance.new("SpecialMesh",Ring)
Ring2.MeshId = "rbxassetid://3270017"
Ring2.Scale = Vector3.new(0.1,0.1,0.1)
local S2 = Instance.new("SpecialMesh",S)
S2.MeshType = "Sphere"
S2.Scale = Vector3.new(1,1,1)
v = Instance.new("Sound")
v.SoundId = "rbxassetid://821439273"
v.Parent = char.Torso
v.Looped = false
v.Pitch = 1
v.Volume = 1
wait(.01)
v:Play()
local partasdeff = Instance.new("ParticleEmitter",S)
partasdeff.Color = ColorSequence.new(Color3.new(0,0,0), Color3.new(204,130,2))
partasdeff.LightEmission = .1
partasdeff.Size = NumberSequence.new(0.2)
partasdeff.Texture = "http://www.roblox.com/asset/?ID=300899516"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdeff.Transparency = bbb
partasdeff.Size = aaa
partasdeff.ZOffset = .9
partasdeff.Acceleration = Vector3.new(0, -5, 0)
partasdeff.LockedToPart = false
partasdeff.EmissionDirection = "Top"
partasdeff.Lifetime = NumberRange.new(1, 2)
partasdeff.Rate = 1000
partasdeff.Rotation = NumberRange.new(-100, 100)
partasdeff.RotSpeed = NumberRange.new(-100, 100)
partasdeff.Speed = NumberRange.new(10)
partasdeff.VelocitySpread = 300
partasdeff.Enabled = true
for i = 1,100 do
	Ring2.Scale = Ring2.Scale + Vector3.new(2,2,2)
	Ring.Transparency = Ring.Transparency + 0.01
	S2.Scale = S2.Scale + Vector3.new(0.3,0.3,0.3)
	S.Transparency = S.Transparency + 0.01
	game:GetService("RunService").RenderStepped:wait()
end
S:remove()
wait(1)
SM:remove()
hed.face.Texture = "rbxassetid://141107361"
char.Shirt.ShirtTemplate = "rbxassetid://270992313"
char.Pants:remove()
v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = torso
        v.Looped = false
        v.Pitch = 1.04
        v.Volume = 1
        wait(.01)
        v:Play()
z:Play()
----------------------------------------------------
Debounces = {
on = false;
ks = false;
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Grabbing = false;
Grabbed = false;
}
local Touche = {char.Name, }
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
    if not (t < 0 or t == 0 or t > 0) then     -- Failsafe
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
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs(hed:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
larm.Size = larm.Size * 5
rarm.Size = rarm.Size * 5
lleg.Size = lleg.Size * 5
rleg.Size = rleg.Size * 5
torso.Size = torso.Size * 5
hed.Size = hed.Size * 5
root.Size = root.Size * 5
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
local Part = Instance.new("Part",hed)
Part.BrickColor = BrickColor.new("Really black")
Part.Size = Vector3.new(1,1,1)
Part.CanCollide = false
Part.Material = "Neon"
local M = Instance.new("SpecialMesh",Part)
M.MeshId = "rbxassetid://62246019"
M.Scale = Vector3.new(5,5,5)
local Part2 = Instance.new("Weld",Part)
Part2.Part0 = hed
Part2.Part1 = Part
Part2.C0 = CFrame.new(-0.2,1.5,0.8)
----------------------------------------------------
----------------------------------------------------
----------------------------------------------------

----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end
----------------------------------------------------
mod5 = Instance.new("Model",char)

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

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,0.2,1)
            end
        part.Parent = nil
    end))
end
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

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

----------------------------------------------------

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
		for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.6,1,-3) * CFrame.Angles(1.3,0,0),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.6,1,0) * CFrame.Angles(-0.5,0,0),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(0,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -8, 0) * CFrame.Angles(-0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -3.3,-3.5) *CFrame.Angles(0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6,0.5) * CFrame.Angles(-1.1,0,0),.3)
        if Debounces.on == false then break end
    wait()
		end
		local HitBox = Instance.new("Part",char)
HitBox.Size = Vector3.new(5,5,5)
HitBox.CanCollide = false
HitBox.Transparency = math.huge
local HitBox2 = Instance.new("Weld",HitBox)
HitBox2.Part0 = rarm
HitBox2.Part1 = HitBox
HitBox2.C0 = CFrame.new(0,-4.5,0)
HitBox.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= nil then
		if not DD then DD = true
		hit.Parent.Humanoid.PlatformStand = true
		local We = Instance.new("Weld",hit.Parent.Torso)
		We.Part0 = rarm
		We.Part1 = hit.Parent.Torso
		We.C0 = CFrame.new(0,-5,0)*CFrame.Angles(-1.55,0,0)
		wait(1)
		for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.6,4,0) * CFrame.Angles(3.1,0,1),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.6,4,0) * CFrame.Angles(-3.1,0,-1),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(1,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -8, 0) * CFrame.Angles(-0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -3.3,-3.5) *CFrame.Angles(0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6,0.5) * CFrame.Angles(-1.1,0,0),.3)
        if Debounces.on == false then break end
    	wait()
		end
		hit.Parent.Humanoid:TakeDamage(20)
		for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(6,4,-1) * CFrame.Angles(1.55,0,-1),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-6,4,-1) * CFrame.Angles(1.55,0,1),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(-0.4,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -8, 0) * CFrame.Angles(-0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -3.3,-3.5) *CFrame.Angles(0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6,0.5) * CFrame.Angles(-1.1,0,0),.3)
        if Debounces.on == false then break end
    	wait()
		end
		for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(5,4,-1) * CFrame.Angles(1.55,0,-1.3),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-5,4,-1) * CFrame.Angles(1.55,0,1.3),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(-0.4,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -8, 0) * CFrame.Angles(-0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -3.3,-3.5) *CFrame.Angles(0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6,0.5) * CFrame.Angles(-1.1,0,0),.3)
        if Debounces.on == false then break end
    	wait()
		end
		local partasdeff = Instance.new("ParticleEmitter",hit.Parent.Torso)
			partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 0, 0))
			partasdeff.LightEmission = .1
			partasdeff.Size = NumberSequence.new(0.2)
			partasdeff.Texture = "http://www.roblox.com/asset/?ID=380529823"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			partasdeff.Transparency = bbb
			partasdeff.Size = aaa
			partasdeff.ZOffset = .9
			partasdeff.Acceleration = Vector3.new(0, -5, 0)
			partasdeff.LockedToPart = false
			partasdeff.EmissionDirection = "Top"
			partasdeff.Lifetime = NumberRange.new(1, 2)
			partasdeff.Rate = 1000
			partasdeff.Rotation = NumberRange.new(-100, 100)
			partasdeff.RotSpeed = NumberRange.new(-100, 100)
			partasdeff.Speed = NumberRange.new(10)
			partasdeff.VelocitySpread = 300
			partasdeff.Enabled = true
			wait(1.5)
		hit.Parent:BreakJoints()
		We:remove()
		partasdeff.Enabled = false
		if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
		end
		wait(1313)
		DD = false
		end
	end
end)
---ANIMATION REPLAY
	end
	end
end)
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.6,1,0) * CFrame.Angles(0.5,0,0),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.6,1,0) * CFrame.Angles(-0.5,0,0),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(0,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(-0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8, -2) *CFrame.Angles(0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6, 1.2) * CFrame.Angles(-1.5,0,0),.3)
        if Debounces.on == false then break end
    wait()
end
local HitBox = Instance.new("Part",char)
HitBox.Size = Vector3.new(5,5,5)
HitBox.CanCollide = false
HitBox.Transparency = math.huge
local HitBox2 = Instance.new("Weld",HitBox)
HitBox2.Part0 = rleg
HitBox2.Part1 = HitBox
HitBox2.C0 = CFrame.new(0,-1.1,0)
local SFXZ = Instance.new("Sound",torso)
		SFXZ.SoundId = "rbxassetid://169259383"
		SFXZ.Volume = math.huge
		SFXZ.Pitch = 0.5
		SFXZ.Looped = false
		wait(0.01)
		SFXZ:Play()
HitBox.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= nil then
		local SFXZ = Instance.new("Sound",torso)
			SFXZ.SoundId = "rbxassetid://743886825"
			SFXZ.Volume = 1
			SFXZ.Pitch = 0.5
			SFXZ.Looped = false
			SFXZ:Play()
		HitBox:remove()
		hit.Parent.Humanoid:TakeDamage(44)
		hit.Parent.Humanoid.PlatformStand = true
		local Fl = Instance.new("BodyVelocity",hit.Parent.Torso)
			Fl.maxForce = Vector3.new(math.huge,math.huge,math.huge)
			Fl.velocity = rleg.CFrame.lookVector*350
			wait(0.1)
			Fl:remove()
	end
end)
for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.6,1,0) * CFrame.Angles(-0.5,0,0),.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.6,1,0) * CFrame.Angles(0.5,0,0),.3)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0) * CFrame.Angles(0,0,0),.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(0.5,0,0),.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8, 2) *CFrame.Angles(-0.5,0,0),.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -7.6, -1.2) * CFrame.Angles(1.5,0,0),.3)
        if Debounces.on == false then break end
    wait()
end
if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
HitBox:remove()
            end
end
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 then
        char.Humanoid.WalkSpeed = 34
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
        char.Humanoid.WalkSpeed = 5
    end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
local x = Instance.new("Sound", char.Torso)
x.SoundId = "http://www.roblox.com/asset/?id=273962540"
x.Looped = true
x.Volume = 1
x.Pitch = 1
local footsteps = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
rarm.BrickColor = ASD
larm.BrickColor = ASD
rleg.BrickColor = ASD
lleg.BrickColor = ASD
hed.BrickColor = ASD
torso.BrickColor = ASD
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(8,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-8,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-3, -8.8, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(3, -8.8, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.3, .9, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -8.8, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.8, 0.9, .5) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(50)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.8, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -8.8+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
end
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(8,1,0)*CFrame.Angles(0,0,0-.1*math.sin(tick()*1))*CFrame.Angles(0,0,0.3),.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-8,1,0)*CFrame.Angles(0,0,0+.1*math.sin(tick()*1))*CFrame.Angles(0,0,-0.3),.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-3, -8.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(3, -8.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, .9, -1)*CFrame.Angles(math.rad(78+1*math.cos(sine/14)), math.rad(0), math.rad(50)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.3,0.8,0)*CFrame.Angles(0-.5*math.sin(tick()*2/0.7),0,0),.3)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.3,0.8,0)*CFrame.Angles(0+.5*math.sin(tick()*2/0.7),0,0),.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0)*CFrame.Angles(-0.2,0,0),.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0,-2.2,0)*CFrame.new(0,0-.1*math.sin(tick()*2),0)*CFrame.Angles(0,0,0),.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8-0.3*math.cos(sine/16)/4, -.05 + math.sin(sine/16)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/16)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -8.8+0.3*math.cos(sine/16)/4, -.05 + -math.sin(sine/16)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/16)/2.3, 0, 0), .4)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(7.8,0.5,0)*CFrame.Angles(0-.5*math.sin(tick()*7),0,0),.3)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-7.8,0.5,0)*CFrame.Angles(0+.5*math.sin(tick()*7),0,0),.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,7.5,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-2.5, -8.8-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(2.5, -8.8+0.44*math.cos(sine/8 )/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
end
end
if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
elseif animpose == "Running" then
    x.Pitch = 1.2
    if footsteps == false then
        x:Play()
        footsteps = true
    end
end
end)