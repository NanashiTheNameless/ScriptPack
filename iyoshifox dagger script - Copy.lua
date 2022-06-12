----------------------------------------------------------------------
--Copyright 2014 iYoshiFox ©
----------------------------------------------------------------------
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local cam = game.Workspace.CurrentCamera
----------------------------------------------------------------------
function Weld(p1, p0, c0, c1)
local w = Instance.new("Weld", p1)
w.Part1 = p1
w.Part0 = p0
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end
----------------------------------------------------------------------

function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= char.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(math.random(-3,3),math.random(3,5),math.random(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Dark stone grey").Color TL.TextStrokeColor3 = BrickColor.new("Cyan").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end
----------------------------------------------------------------------
local u = Instance.new("Model", char)
----------------------------------------------------------------------
function clerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------------------------
function Part(properties)
local abs = Instance.new("Part", u)
abs.Material = "SmoothPlastic"
abs.TopSurface = "SmoothNoOutlines"
abs.BottomSurface = "SmoothNoOutlines"
abs.LeftSurface = "SmoothNoOutlines"
abs.RightSurface = "SmoothNoOutlines"
for i, v in pairs(properties) do
if abs[i] ~= nil then
abs[i] = v
end
end
return abs
end
----------------------------------------------------------------------
function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end
----------------------------------------------------------------------
local h = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, 1.4, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
})
local kdsj = Weld(h, char["Torso"], CFrame.new(1.1, -1.1, -.4) * CFrame.Angles(math.rad(90), 0, 0))
----------------------------------------------------------------------
local hp = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .3, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
})
Weld(hp, h, CFrame.new(0, .25, 0) * CFrame.Angles(math.rad(90), 0, 0))
----------------------------------------------------------------------
local hpa = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
})
local ma = Instance.new("SpecialMesh", hpa)
ma.MeshType = "Wedge"
Weld(hpa, hp, CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(180), 0, 0))
----------------------------------------------------------------------
local hpb = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
})
local mb = Instance.new("SpecialMesh", hpb)
mb.MeshType = "Wedge"
Weld(hpb, hp, CFrame.new(0, .25, 0) * CFrame.Angles(0, 0, 0))
----------------------------------------------------------------------
local hpc = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .22, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Dark stone grey");
})
local mc = Instance.new("CylinderMesh", hpc)
Weld(hpc, hp, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(90)))

local hpd = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .24, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Cyan");
})
local md = Instance.new("CylinderMesh", hpd)
md.Scale = Vector3.new(.8, 1, .8)
Weld(hpd, hp, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(90)))
Glow = Instance.new("PointLight")
Glow.Range = 7.5
Glow.Brightness = 2
Glow.Color = Color3.new(0,170,255)
Glow.Parent = hpd
----------------------------------------------------------------------
local ha = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Dark stone grey");
})
local jk = Instance.new("BlockMesh", ha)
jk.Scale = Vector3.new(.8, 1.2, 1.2)
Weld(ha, h, CFrame.new(0, .75, 0) * CFrame.Angles(0, 0, math.rad(90)))
----------------------------------------------------------------------
local ha2 = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Dark stone grey");
})
local jk2 = Instance.new("BlockMesh", ha2)
jk2.Scale = Vector3.new(.4, 1.2, 1.2)
Weld(ha2, h, CFrame.new(0, .39, 0) * CFrame.Angles(0, 0, math.rad(90)))
----------------------------------------------------------------------
local hab = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, 1.2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Dark stone grey");
})
local jk3 = Instance.new("BlockMesh", hab)
jk3.Scale = Vector3.new(1.1, .9, .7)
Weld(hab, h, CFrame.new(0, -.15, 0) * CFrame.Angles(0, 0, 0))
----------------------------------------------------------------------
local hpy = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Medium stone grey");
})
local mb = Instance.new("SpecialMesh", hpy)
mb.MeshType = "Wedge"
Weld(hpy, h, CFrame.new(0, -.8, 0) * CFrame.Angles(math.rad(270), 0, 0))
----------------------------------------------------------------------
local hpy2 = Part({
FormFactor = 3; 
TopSurface = 0;
BottomSurface = 0;
Anchored = false;
Size = Vector3.new(.2, .2, .2);
CFrame = CFrame.new(0, 10, 0);
Transparency = 0;
BrickColor = BrickColor.new("Dark stone grey");
})
local mb2 = Instance.new("SpecialMesh", hpy2)
mb2.MeshType = "Wedge"
mb2.Scale = Vector3.new(1.1, .7, .7)
Weld(hpy2, hpy, CFrame.new(0, 0, .04) * CFrame.Angles(0, 0, 0))
----------------------------------------------------------------------
function _G.QuaternionFromCFrame(cf)
local mx, my, mz,
m00, m01, m02,
m10, m11, m12,
m20, m21, m22 = cf:components()
local trace = m00 + m11 + m22
if trace > 0 then
local s = math.sqrt(1 + trace)
local recip = 0.5/s
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
else
local i = 0
if m11 > m00 then i = 1 end
if m22 > (i == 0 and m00 or m11) then i = 2 end
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
local recip = 0.5/s
return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
end
end
end
------------------------------------------
function _G.QuaternionToCFrame(px, py, pz, x, y, z, w)
local xs, ys, zs = x + x, y + y, z + z
local wx, wy, wz = w*xs, w*ys, w*zs
--
local xx = x*xs
local xy = x*ys
local xz = x*zs
local yy = y*ys
local yz = y*zs
local zz = z*zs
--
return CFrame.new(px, py, pz,
1-(yy+zz), xy - wz, xz + wy,
xy + wz, 1-(xx+zz), yz - wx,
xz - wy, yz + wx, 1-(xx+yy))
end
------------------------------------------
function _G.QuaternionSlerp(a, b, t)
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
return a[1]*startInterp + b[1]*finishInterp,
a[2]*startInterp + b[2]*finishInterp,
a[3]*startInterp + b[3]*finishInterp,
a[4]*startInterp + b[4]*finishInterp	
end
------------------------------------------
function LerpC0(weld, a, b, length)
local qa = {_G.QuaternionFromCFrame(a)}
local qb = {_G.QuaternionFromCFrame(b)}
local ax, ay, az = a.x, a.y, a.z
local bx, by, bz = b.x, b.y, b.z
--
local c = 0
local tot = 0
--
local startTime = tick()
while true do
wait()
local t = (tick()-startTime)/length
local _t = 1-t
if t > 1 then break end
local startT = tick()
local cf = _G.QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,
_G.QuaternionSlerp(qa, qb, t))
tot = tot+(tick()-startT)
c = c + 1
weld.C0 = cf
end
end
------------------------------------------
function LerpC1(weld, a, b, length)
local qa = {_G.QuaternionFromCFrame(a)}
local qb = {_G.QuaternionFromCFrame(b)}
local ax, ay, az = a.x, a.y, a.z
local bx, by, bz = b.x, b.y, b.z
--
local c = 0
local tot = 0
--
local startTime = tick()
while true do
wait()
local t = (tick()-startTime)/length
local _t = 1-t
if t > 1 then break end
local startT = tick()
local cf = _G.QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,
_G.QuaternionSlerp(qa, qb, t))
tot = tot+(tick()-startT)
c = c + 1
weld.C1 = cf
end
end
------------------------------------------
function Weld(p1, p0, c0, c1)
local w = Instance.new("Weld", p1)
w.Part1 = p1
w.Part0 = p0
w.C0 = c0
w.C1 = c1 or CFrame.new()
return w
end
------------------------------------------
local Idle = {
[1] = {};
[2] = {};
[3] = {};
[4] = {};
[5] = {};
[6] = {};
}
------------------------------------------
local Stab = {
[1] = {};
[2] = {};
[3] = {};
[4] = {};
[5] = {};
[6] = {};
}
------------------------------------------
function CreateKeyframe(c0, c1, len, index, wa, anim)
table.insert(anim[index], {C0 = c0 or CFrame.new(), C1 = c1 or CFrame.new(), Len = len, Wait = wa})
end
------------------------------------------
function RunAnim(weld, index, anim)
coroutine.wrap(function()
for _, v in pairs(anim[index]) do
LerpC0(weld, weld.C0, v.C0, v.Len)
wait(v.Wait)
end
end)()
for _, v in pairs(anim[index]) do
LerpC1(weld, weld.C1, v.C1, v.Len)
wait(v.Wait)
end
end
------------------------------------------
local sws = kdsj
local hed = Weld(char["Head"], char.Torso, CFrame.new(0, 1, 0), CFrame.new(0, -0.5, 0))
local ra = Weld(char["Right Arm"], char.Torso, CFrame.new(1.5, 0.5, 0), CFrame.new(0, 0.5, 0))
local la = Weld(char["Left Arm"], char.Torso, CFrame.new(-1.5, 0.5, 0), CFrame.new(0, 0.5, 0))
------------------------------------------
CreateKeyframe(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(30), math.rad(-10)), CFrame.new(0, 0.5, 0), .4, 2, 0, Idle)
CreateKeyframe(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), CFrame.new(0, 0.5, 0), .4, 3, 0, Idle)
------------------------------------------
CreateKeyframe(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(80), math.rad(90), math.rad(-10)), CFrame.new(0, 0.5, 0), .1, 2, .3, Stab)
CreateKeyframe(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-20)), CFrame.new(0, 0.5, 0), .1, 3, .3, Stab)
CreateKeyframe(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-30)), CFrame.new(0, 0.5, 0), .1, 2, 0, Stab)
CreateKeyframe(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-20)), CFrame.new(0, 0.5, 0), .1, 3, 0, Stab)
------------------------------------------
local deb = true
function Equip()
sws.Part0 = char["Right Arm"]
sws.C0 = CFrame.new(0, -1.1, -.8) * CFrame.Angles(math.rad(90), 0, 0)
coroutine.wrap(function() RunAnim(ra, 2, Idle) end)()
coroutine.wrap(function() RunAnim(la, 3, Idle) end)()
end

function Stabr()
if deb == false then return end
deb = false
sws.Part0 = char["Right Arm"]
sws.C0 = CFrame.new(0, -1.1, -.8) * CFrame.Angles(math.rad(90), 0, 0)
playSound(91154708,hp,1,1)
local Var = hp.Touched:connect(function(Hit) playSound(91154954,hp,1,1) damage(Hit.Parent,math.random(30,45),1) end)
coroutine.wrap(function() RunAnim(ra, 2, Stab) end)()
RunAnim(la, 3, Stab)
Equip()
wait(.4)
Var:disconnect()
deb = true
end

Equip()

mouse.Button1Down:connect(function()
if deb == true then
Stabr()
end
end)

print("Right Behind You.")