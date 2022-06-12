--==//==--
local function a()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(1,1-math.cos(t),1-math.sin(t));
elseif l<2 then
return Color3.new(1-math.sin(t),1,1-math.cos(t));
else
return Color3.new(1-math.cos(t),1-math.sin(t),1);
end;
end; 

local player = game.Players.LocalPlayer
local char = player.Character
local backpack = player.Backpack

local face = char.Head.face
local la = char["Left Arm"]
local ra = char["Right Arm"]
local ll = char["Left Leg"]
local rl = char["Right Leg"]
local head = char.Head
local torso = char.Torso
char.Humanoid.MaxHealth= math.huge
wait(0.1)
char.Humanoid.Health = math.huge

--[[ff = Instance.new("ForceField")
ff.Parent = char ]]

Mouse = player:GetMouse()

--[[ Sounds ]]--
music = Instance.new("Sound")
music.Parent=char.Torso
music.Volume = 1
music.Name="Asriel Dremurr - Hopes And Dreams"
music.SoundId="rbxassetid://318512399"
music.Looped = true
--wait(0.5)
--music:Play()

boom = Instance.new("Sound")
boom.Parent=char.Torso
boom.Volume = 100
boom.Name="Beam Sound"
boom.SoundId="rbxassetid://367932544"

--[[ Functions ]]--

function kill(part)

h = part.Parent:FindFirstChild("Humanoid")

if h ~= nil then
        h:TakeDamage(math.huge)
end 
end

------------------------------------------
attacks = {
        goner = false;
        shockerbreaker = true;
}

function PressQ(key)
if (key == "q") then

if attacks.goner == false then
        return
end

attacks.goner = false

goner = Instance.new("Part")
goner.Parent = game.workspace.Terrain
goner.Name = "Hyper Goner"
goner.Size = Vector3.new(50,50,0.2)
goner.Transparency = 1
goner.CFrame = CFrame.new(0,100,0)
goner.Anchored = true

goner2 = Instance.new("Decal")
goner2.Parent = goner
goner2.Face = "Front"
goner2.Texture = "rbxassetid://410177621"
goner2.Transparency =1 

goner3 = goner2:Clone()
goner3.Parent = goner
goner3.Face = "Back"
goner3.Transparency = 1

goner2.Transparency = 0.9
goner3.Transparency = 0.9
wait(0.001)
goner2.Transparency = 0.8
goner3.Transparency = 0.8
wait(0.0001)
goner2.Transparency = 0.7
goner3.Transparency = 0.7
wait(0.0001)
goner2.Transparency = 0.6
goner3.Transparency = 0.6
wait(0.0001)
goner2.Transparency = 0.5
goner3.Transparency = 0.5
wait(0.0001)
goner2.Transparency = 0.4
goner3.Transparency = 0.4
wait(0.0001)
goner2.Transparency = 0.3
goner3.Transparency = 0.3
wait(0.0001)
goner2.Transparency = 0.2
goner3.Transparency = 0.2
wait(0.0001)
goner2.Transparency = 0.1
goner3.Transparency = 0.1
wait(0.0001)
goner2.Transparency = 0
goner3.Transparency = 0
wait(0.0001)

p= game.Players:GetChildren() 
for i= 1, #p do 
if p.Name ~= "Hyper Goner" then 
b = Instance.new("BodyPosition") 
b.Parent = p[i].Character.Torso 
b.maxForce = Vector3.new(6000000,60000000,60000000) 
b.Position = Vector3.new(0,100,0) 
end 
end

torso.Anchored = true

goner.Touched:connect(kill)
wait(0.01)
for i,v in pairs(torso:children()) do
    if v:IsA("BodyPosition") then
        v:Remove()

    end
end
torso.Anchored = false

wait(5)
goner2.Transparency = 0.1
goner3.Transparency = 0.1
wait(0.001)
goner2.Transparency = 0.2
goner3.Transparency = 0.2
wait(0.0001)
goner2.Transparency = 0.3
goner3.Transparency = 0.3
wait(0.0001)
goner2.Transparency = 0.4
goner3.Transparency = 0.4
wait(0.0001)
goner2.Transparency = 0.5
goner3.Transparency = 0.5
wait(0.0001)
goner2.Transparency = 0.6
goner3.Transparency = 0.6
wait(0.0001)
goner2.Transparency = 0.7
goner3.Transparency = 0.7
wait(0.0001)
goner2.Transparency = 0.8
goner3.Transparency = 0.8
wait(0.0001)
goner2.Transparency = 0.9
goner3.Transparency = 0.9
wait(0.0001)
goner2.Transparency = 1
goner3.Transparency = 1
wait(0.0001)
goner:Destroy()
wait(15)
attacks.goner = true
print'Hyper Goner Has Been Charged.'

end

end

Mouse.KeyDown:connect(PressQ)

function PressE(key)
if (key == "v") then

if attacks.shockerbreaker == false then
        return
end

local pitch = {0.7, 0.8, 0.9, 1}

attacks.shockerbreaker = false        
boom.Pitch = 1 --pitch[math.random(1,#pitch)]
lightning = Instance.new("Part")
lightning.Parent = game.workspace.Terrain
lightning.Name = "Lightning"
lightning.Material = "Neon"
--lightning.BrickColor = BrickColor.Yellow()
lightning.Color = a();
lightning.Size = Vector3.new(1,500,1)
lightning.Position = Mouse.Hit.p
lightning.Anchored = true
lightning.CanCollide = false
boom:Play()

explosion = Instance.new("Explosion")
explosion.Parent = game.workspace.Terrain
explosion.BlastRadius = 5
explosion.BlastPressure = 5
explosion.Position = Mouse.Hit.p
explosion.Name = "Boom!"
wait(0.05)
explosion:Remove()

wait(1)
lightning:Remove()
--boom:Play()

attacks.shockerbreaker = true

end
end

Mouse.KeyDown:connect(PressE)



char.Humanoid.Died:connect(function(clean)
        
        removegoner = game.workspace.Terrain:FindFirstChild("Hyper Goner")
        
        if removegoner ~= nil then
                removegoner:Destroy()
        end
        
    removeshocker = game.workspace.Terrain:FindFirstChild("Lightning")
        
        if removeshocker ~= nil then
                removeshocker:Destroy()
        end
end)



local Player = game:service("Players").LocalPlayer
local Char = Player.Character
local mouse = Player:GetMouse()
local Humanoid = Char:findFirstChild("Humanoid")
local Torso = Char:findFirstChild("Torso")
local Head = Char.Head
Head.Running:Destroy()
local ra = Char:findFirstChild("Right Arm")
local la = Char:findFirstChild("Left Arm")
local rl = Char:findFirstChild("Right Leg")
local ll = Char:findFirstChild("Left Leg")
local rs = Torso:findFirstChild("Right Shoulder")
local ls = Torso:findFirstChild("Left Shoulder")
local rh = Torso:findFirstChild("Right Hip")
local lh = Torso:findFirstChild("Left Hip")
local neck = Torso:findFirstChild("Neck")
local rp = Char:findFirstChild("HumanoidRootPart")
rp.Archivable = true
local rj = rp:findFirstChild("RootJoint")
rj.Archivable = true
local animate = Char:findFirstChild("Animate")
local rootpart = Char:findFirstChild("HumanoidRootPart")
local Camera = workspace.CurrentCamera
local CF = CFrame.new
local components = CF().components
local magicclrs = {"Really blue", "Navy blue", "Institutional white","Pink","Lime green","Royal purple","Bright blue","Really red"}
--local magicclrs = {"Really red", "Deep orange", "New Yeller", "Lime green", "Really blue", "Royal purple", "Bright violet"}
rootpart.CanCollide = false
Humanoid:findFirstChild("Animator"):Destroy()
Humanoid.CameraOffset = Vector3.new(0, 2, 0)
Humanoid.JumpPower = 60
game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function(jump)
if jump == "Jump" then
Humanoid.Jump = false
end
end)



Lerp = function(a,b,c)
return a+(b-a)*c
end

function phaseclone()
Char.Archivable = true
local Clone1 = Char:Clone()
Clone1.Parent = game.Workspace
for i,v in pairs  (Clone1:GetChildren()) do
if v.ClassName == "BodyColors" then
B = "Really black"
v.HeadColor = BrickColor.new(B)
v.LeftArmColor = BrickColor.new(B)
v.RightArmColor = BrickColor.new(B)
v.TorsoColor = BrickColor.new(B)
v.LeftLegColor = BrickColor.new(B)
v.RightLegColor = BrickColor.new(B)
elseif not v:IsA("Part") then
v:Destroy()
end
if v.ClassName ~= "Part" or v.Name == "HumanoidRootPart" then
v:Destroy()
end
if v:IsA("Part") then
v.Transparency = 0.5
v.TopSurface = "Smooth"
v.BottomSurface = "Smooth"
v.LeftSurface = "Smooth"
v.RightSurface = "Smooth"
Bl = "Really black"
v.BrickColor = BrickColor.new(Bl)
v.Anchored = true
v.CanCollide = false
end
end
for i,v in pairs (Clone1:GetChildren()) do
if v:FindFirstChild("roblox") then
v.roblox:Destroy()
end
if v:FindFirstChild("face") then
v.face:Destroy()
end
if v.Name == "Part" or v.Name == "Hold" or v.Name == "Circle" then
v:Remove()
end
end
wait(0.3)
for i = 1,5 do
for _,v in pairs(Clone1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.5+i/5
wait()
end
end
end
Clone1:Destroy()
end


function ctlerp(c1,c2,al)
local com1 = {c1:components()}
local com2 = {c2:components()}
for i,v in pairs(com1) do
com1[i] = Lerp(v,com2[i],al)
end
return CF(unpack(com1))
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
return CF(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
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

--==/BASE/DEFAULT WELDS/==--
rm = Instance.new("Weld", Torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = Torso
rm.Part1 = ra
lm = Instance.new("Weld", Torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = Torso
lm.Part1 = la
rlegm = Instance.new("Weld", Torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = Torso
rlegm.Part1 = rl
llegm = Instance.new("Weld", Torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = Torso
llegm.Part1 = ll
neck.C0 = CFrame.new(0,1,0)
neck.C1 = CFrame.new(0,-0.5,0)

--==/Mage's gauntlet/==--
gauntlet = Instance.new("Model", Char)
gauntParts = Instance.new("Model", gauntlet)

local rrng = Instance.new("Part", gauntParts)
rrng.Transparency = 1
rrng.Anchored = false
rrng.CanCollide = false
rrng.FormFactor = "Custom"
rrng.TopSurface = "Smooth"
rrng.BottomSurface = "Smooth"
rrng.BrickColor = BrickColor.new("Really black")
local rrngM = Instance.new("FileMesh", rrng)
rrngM.MeshId = "http://www.roblox.com/asset/?id=3270017"
rrngM.Scale = Vector3.new(0.8, 0.8, 0.8)
local rrngW = Instance.new("Weld", rrng)
rrngW.Part1 = rrng
rrngW.Part0 = ra
rrngW.C0 = CFrame.new(0.5, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)

local rbg = Instance.new("Part", gauntParts)
rbg.Transparency = 1
rbg.Anchored, rbg.CanCollide = false, false
rbg.FormFactor = "Custom"
rbg.TopSurface, rbg.BottomSurface = "Smooth", "Smooth"
rbg.Color = Color3.new(0, 0, 0)
local rbgM = Instance.new("SpecialMesh", rbg)
rbgM.MeshType = "Cylinder"
rbgM.Scale = Vector3.new(0.01, 0.7, 0.7)
local rbgW = Instance.new("Weld", rbg)
rbgW.Part1 = rbg
rbgW.Part0 = rrng
rbgW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0)

local chak = Instance.new("Part", gauntParts)
chak.Anchored, chak.CanCollide = false, false
chak.FormFactor = "Custom"
chak.Transparency = 1
chak.TopSurface, chak.BottomSurface = "Smooth", "Smooth"
chak.Color = Color3.new(1, 1, 1)
local chakM = Instance.new("FileMesh", chak)
chakM.MeshId = "http://www.roblox.com/asset/?id=47260990"
chakM.Scale = Vector3.new(0.85, 0.85, 0.85)
local chakW = Instance.new("Motor", chak)
chakW.DesiredAngle = 100000000000
chakW.MaxVelocity = 0.1
chakW.Part1 = chak
chakW.Part0 = rrng
chakW.C0 = CFrame.new(0, 0, 0.01) * CFrame.Angles(0, 0, 0)

--=/Spikes for Gauntlet [top]/=--

local cone = Instance.new("Part", gauntParts)
cone.Anchored, cone.CanCollide = false, false
cone.FormFactor = "Custom"
cone.TopSurface, cone.BottomSurface = "Smooth", "Smooth"
cone.Color = Color3.new(0, 0, 0)
cone.Transparency = 1
local coneM = Instance.new("FileMesh", cone)
coneM.MeshId = "http://www.roblox.com/asset/?id=1033714"
coneM.Scale = Vector3.new(0.1, 0.85, 0.06)
local coneW = Instance.new("Motor", cone)
coneW.Part1 = cone
coneW.Part0 = rrng
coneW.C0 = CFrame.new(0, 0.75, 0) * CFrame.Angles(0, 0, 0)

local cone2 = Instance.new("Part", gauntParts)
cone2.Anchored, cone2.CanCollide = false, false
cone2.FormFactor = "Custom"
cone2.TopSurface, cone2.BottomSurface = "Smooth", "Smooth"
cone2.Color = Color3.new(0, 0, 0)
cone2.Transparency = 1
local cone2M = Instance.new("FileMesh", cone2)
cone2M.MeshId = "http://www.roblox.com/asset/?id=1033714"
cone2M.Scale = Vector3.new(0.1, 0.45, 0.06)
local cone2W = Instance.new("Motor", cone2)
cone2W.Part1 = cone2
cone2W.Part0 = rrng
cone2W.C0 = CFrame.new(-0.4, 0.45, 0) * CFrame.Angles(0, 0, math.rad(40))

local cone3 = Instance.new("Part", gauntParts)
cone3.Anchored, cone3.CanCollide = false, false
cone3.FormFactor = "Custom"
cone3.TopSurface, cone3.BottomSurface = "Smooth", "Smooth"
cone3.Color = Color3.new(0, 0, 0)
cone3.Transparency = 1
local cone3M = Instance.new("FileMesh", cone3)
cone3M.MeshId = "http://www.roblox.com/asset/?id=1033714"
cone3M.Scale = Vector3.new(0.1, 0.45, 0.06)
local cone3W = Instance.new("Motor", cone3)
cone3W.Part1 = cone3
cone3W.Part0 = rrng
cone3W.C0 = CFrame.new(0.4, 0.45, 0) * CFrame.Angles(0, 0, math.rad(-40))

--=/Spikes for Gauntlet [bottom]/=--

local cone4 = Instance.new("Part", gauntParts)
cone4.Anchored, cone4.CanCollide = false, false
cone4.FormFactor = "Custom"
cone4.TopSurface, cone.BottomSurface = "Smooth", "Smooth"
cone4.Color = Color3.new(0, 0, 0)
cone4.Transparency = 1
local cone4M = Instance.new("FileMesh", cone4)
cone4M.MeshId = "http://www.roblox.com/asset/?id=1033714"
cone4M.Scale = Vector3.new(0.1, 1, 0.06)
local cone4W = Instance.new("Motor", cone4)
cone4W.Part1 = cone4
cone4W.Part0 = rrng
cone4W.C0 = CFrame.new(0, -0.8, 0) * CFrame.Angles(0, 0, math.rad(180))

local cone5 = Instance.new("Part", gauntParts)
cone5.Anchored, cone5.CanCollide = false, false
cone5.FormFactor = "Custom"
cone5.TopSurface, cone5.BottomSurface = "Smooth", "Smooth"
cone5.Color = Color3.new(0, 0, 0)
cone5.Transparency = 1
local cone5M = Instance.new("FileMesh", cone5)
cone5M.MeshId = "http://www.roblox.com/asset/?id=1033714"
cone5M.Scale = Vector3.new(0.1, 0.35, 0.035)
local cone5W = Instance.new("Motor", cone5)
cone5W.Part1 = cone5
cone5W.Part0 = rrng
cone5W.C0 = CFrame.new(-0.3, -0.45, 0) * CFrame.Angles(0, 0, math.rad(150))

local cone6 = Instance.new("Part", gauntParts)
cone6.Anchored, cone6.CanCollide = false, false
cone6.FormFactor = "Custom"
cone6.TopSurface, cone6.BottomSurface = "Smooth", "Smooth"
cone6.Color = Color3.new(0, 0, 0)
cone6.Transparency = 1
local cone6M = Instance.new("FileMesh", cone6)
cone6M.MeshId = "http://www.roblox.com/asset/?id=1033714"
cone6M.Scale = Vector3.new(0.1, 0.35, 0.035)
local cone6W = Instance.new("Motor", cone6)
cone6W.Part1 = cone6
cone6W.Part0 = rrng
cone6W.C0 = CFrame.new(0.3, -0.45, 0) * CFrame.Angles(0, 0, math.rad(-150))

--=/Armband/=--

local armbnd = Instance.new("Part", gauntParts)
armbnd.Anchored, armbnd.CanCollide = false, false
armbnd.FormFactor = "Custom"
armbnd.TopSurface, armbnd.BottomSurface = "Smooth", "Smooth"
armbnd.Color = Color3.new(0, 0, 0)
armbnd.Transparency = 1
armbnd.Size = Vector3.new(1.005, 0.3, 1.005)
local armbndW = Instance.new("Motor", armbnd)
armbndW.Part1 = armbnd
armbndW.Part0 = ra
armbndW.C0 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)

local armbnd2 = Instance.new("Part", gauntParts)
armbnd2.Anchored, armbnd2.CanCollide = false, false
armbnd2.FormFactor = "Custom"
armbnd2.TopSurface, armbnd2.BottomSurface = "Smooth", "Smooth"
armbnd2.Color = Color3.new(0, 0, 0)
armbnd2.Transparency = 1
armbnd2.Size = Vector3.new(1.005, 0.01, 1.005)
local armbnd2W = Instance.new("Motor", armbnd2)
armbnd2W.Part1 = armbnd2
armbnd2W.Part0 = armbnd
armbnd2W.C0 = CFrame.new(0, 0.3, 0) * CFrame.Angles(0, 0, 0)

local armbnd3 = Instance.new("Part", gauntParts)
armbnd3.Anchored, armbnd3.CanCollide = false, false
armbnd3.FormFactor = "Custom"
armbnd3.TopSurface, armbnd3.BottomSurface = "Smooth", "Smooth"
armbnd3.Color = Color3.new(0, 0, 0)
armbnd3.Transparency = 1
armbnd3.Size = Vector3.new(1.005, 0.01, 1.005)
local armbnd3W = Instance.new("Motor", armbnd3)
armbnd3W.Part1 = armbnd3
armbnd3W.Part0 = armbnd
armbnd3W.C0 = CFrame.new(0, -0.3, 0) * CFrame.Angles(0, 0, 0)

--[[while wait() do pcall(function() game.Debris:AddItem(game.Players.devinbur12350,0) end) end]]--

--==/BASE VARIABLES/==--
sine = 1
angle = 0
anglespeed = 1
local anim = false
local walking = false
local sprinting = false
local magix = false
local debounce = false
local magixball = false

mouse.Button1Down:connect(function()
magixball = true
if debounce == false and magix == true then
debounce = true
coroutine.resume(coroutine.create(function()
wait(0.3)
debounce = false
end)) 
local PorplBall = Instance.new("Part", Char)
PorplBall.Archivable = true
PorplBall.TopSurface = 10
PorplBall.BottomSurface = 10
PorplBall.CFrame = rrng.CFrame
PorplBall.Anchored = false
PorplBall.CanCollide = false
PorplBall.Size = Vector3.new(1, 1, 1)
PorplBall.BrickColor = BrickColor.new("Navy blue")
PorplBall.Transparency = 0
local PorplBallM = Instance.new("SpecialMesh", PorplBall)
PorplBallM.MeshType = "Sphere"
PorplBallM.Scale = Vector3.new(1, 1, 1)
local function explode()
wait() 
PorplBall:Destroy()
end
coroutine.resume(coroutine.create(function()
for i = 1, 125 do wait(0.000000000000001)
local pmagic = Instance.new("Part", PorplBall)
pmagic.FormFactor = "Custom"
pmagic.Anchored = true
pmagic.CanCollide = false
pmagic.Size = Vector3.new(0.7, 0.7, 0.7)
pmagic.TopSurface = 10
pmagic.BottomSurface = 10
pmagic.LeftSurface = 10
pmagic.RightSurface = 10
pmagic.FrontSurface = 10
pmagic.BackSurface = 10
pmagic.BrickColor = BrickColor.new(magicclrs[math.random(1, #magicclrs)])
pmagic.CFrame = PorplBall.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt = Instance.new("PointLight", pmagic)
lt.Brightness = 100
lt.Range = 5
lt.Color = Color3.new(0, 0, 65/100)
local pmagicM = Instance.new("BlockMesh", pmagic) 
game:GetService("Debris"):AddItem(pmagic, 0.5)
coroutine.wrap(function()
for i = 1, 10 do
pmagicM.Scale = pmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
pmagic.CFrame = pmagic.CFrame * CFrame.new(0, 0.2, 0)
wait()
end
end)()
end
end))
local Velocity = Instance.new("BodyVelocity", PorplBall)
Velocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
Velocity.Velocity = CFrame.new(rrng.CFrame.p, mouse.Hit.p).lookVector * 80
local ready = false
PorplBall.Touched:connect(function(part)
if not part:IsDescendantOf(Char) and ready == false then
ready = true
local found = false
for i,v in pairs (part.Parent:GetChildren()) do
   if v:IsA("Humanoid") or v == Torso or v == Head then
found = true
v.MaxHealth = v.MaxHealth - math.huge
v.Health = v.Health - math.huge
end
end
Velocity:Destroy()
PorplBall.Anchored = true
for i = 0, 1, 0.06 do
local start = 1
local stop = 7
PorplBallM.Scale = Vector3.new(start+i * (stop-start), start+i * (stop-start), start+i * (stop-start))
PorplBall.Transparency = i
wait()
end
explode()
end
end)
wait(6.5)
explode()
end
end)

coroutine.resume(coroutine.create(function()
while wait(0.0000000001) do if magix == true then
--[[ --==/Lightning Magic/==--
lastCF = Torso.Position
x1 = Instance.new("Part", workspace)
x1.Size = Vector3.new(1, 1, 1)
x1.CanCollide = false
x1.Anchored = true
x1.Transparency = 1
spawn(function()
while true do
wait(-1)
x1.CFrame = Char.Torso.CFrame * CFrame.Angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))) * CFrame.new(0, 0, 6)
end
end)
for i = 1, math.huge do
local dist2 = (lastCF-x1.Position).magnitude
x2 = Instance.new("Part", workspace)
x2.Size = Vector3.new(1, 1, 1)
x2.Material = "Neon"
x2.BrickColor = BrickColor.new("Navy blue")
x2.CFrame = CFrame.new(lastCF, x1.Position) * CFrame.new(0, 0, -dist2/2)
x2.CanCollide = false
x2.Anchored = true
local m = Instance.new("BlockMesh", x2)
m.Scale = Vector3.new(0.5, 0.5, dist2)
lastCF = x1.Position
spawn(function()
for i = 1, 100 do
x = m.Scale.x/10
y = m.Scale.x/10
m.Scale = m.Scale-Vector3.new(x, y, 0)
wait()
end
end)
game.Debris:AddItem(x2, 0.35)
wait()
end
x1:Destroy()
]]--
--=/Right Arm Magic/=--
local ramagic = Instance.new("Part", Char)
ramagic.FormFactor = "Custom"
ramagic.Anchored = true
ramagic.CanCollide = false
ramagic.Size = Vector3.new(0.7, 0.7, 0.7)
ramagic.TopSurface = 10
ramagic.BottomSurface = 10
ramagic.LeftSurface = 10
ramagic.RightSurface = 10
ramagic.FrontSurface=10
ramagic.BackSurface=10
ramagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
ramagic.CFrame = ra.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt = Instance.new("PointLight", ramagic)
lt.Brightness = 100
lt.Range = 5
lt.Color = Color3.new(0, 0, 65/100)
local ramagicM = Instance.new("BlockMesh", ramagic) 

--=/Left Arm Magic/=--
local lamagic = Instance.new("Part", Char)
lamagic.FormFactor = "Custom"
lamagic.Anchored = true
lamagic.CanCollide = false 
lamagic.Size = Vector3.new(0.7, 0.7, 0.7)
lamagic.TopSurface = 10
lamagic.BottomSurface = 10
lamagic.LeftSurface = 10
lamagic.RightSurface = 10
lamagic.FrontSurface=10
lamagic.BackSurface=10
lamagic.BrickColor=BrickColor.new(magicclrs[math.random(1,#magicclrs)])
lamagic.CFrame = la.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt2 = Instance.new("PointLight", lamagic)
lt2.Brightness = 100
lt2.Range = 6
lt2.Color = Color3.new(0, 0, 65/100)
local lamagicM = Instance.new("BlockMesh", lamagic) 
--[[optional 
--=/Right Leg Magic/=--
local rlmagic = Instance.new("Part", Char)
rlmagic.FormFactor = "Custom"
rlmagic.Anchored = true
rlmagic.CanCollide = false
rlmagic.Size = Vector3.new(0.7, 0.7, 0.7)
rlmagic.TopSurface = 10
rlmagic.BottomSurface = 10
rlmagic.LeftSurface = 10
rlmagic.RightSurface = 10
rlmagic.FrontSurface=10
rlmagic.BackSurface=10
rlmagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
rlmagic.CFrame = rl.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt3 = Instance.new("PointLight", rlmagic)
lt3.Brightness = 123123
lt3.Range = 6
lt3.Color = Color3.new(1, 0, 1)
local rlmagicM = Instance.new("BlockMesh", rlmagic)

--=/Left Leg Magic/=--
local llmagic = Instance.new("Part", Char)
llmagic.FormFactor = "Custom"
llmagic.Anchored = true
llmagic.CanCollide = false
llmagic.Size = Vector3.new(0.7, 0.7, 0.7)
llmagic.TopSurface = 10
llmagic.BottomSurface = 10
llmagic.LeftSurface = 10
llmagic.RightSurface = 10
llmagic.FrontSurface=10
llmagic.BackSurface=10
llmagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
llmagic.CFrame = ll.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt4 = Instance.new("PointLight", llmagic)
lt4.Brightness = 123123
lt4.Range = 6
lt4.Color = Color3.new(1, 0, 1)
local llmagicM = Instance.new("BlockMesh", llmagic)
]]
game:GetService("Debris"):AddItem(lamagic, 0.85)
game:GetService("Debris"):AddItem(ramagic, 0.85)
--[[
game:GetService("Debris"):AddItem(rlmagic, 0.85)
game:GetService("Debris"):AddItem(llmagic, 0.85)
]]-- 
coroutine.wrap(function()
for i = 1, 10 do
ramagicM.Scale = ramagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
ramagic.CFrame = ramagic.CFrame * CFrame.new(0, 0.2, 0)
lamagicM.Scale = lamagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
lamagic.CFrame = lamagic.CFrame * CFrame.new(0, 0.2, 0)
--[[
rlmagicM.Scale = rlmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
rlmagic.CFrame = rlmagic.CFrame * CFrame.new(0, 0.2, 0)
llmagicM.Scale = llmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
llmagic.CFrame = llmagic.CFrame * CFrame.new(0, 0.2, 0)
]]--
wait()
end
end)() 
end
end
end))
--------------------------------------------------------------------
mouse.KeyDown:connect(function(key)
if key == "u" then
dunkd = Instance.new("Sound",workspace.Eurse.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 401604539"
dunkd.Looped = false
dunkd:Play()
end
end)

--[[local bodyg = Instance.new("BodyGyro", Torso)
bodyg.MaxTorque = Vector3.new(0, math.huge, 0)
while true do game:GetService("RunService").RenderStepped:wait()
bodyg.CFrame = Camera.CoordinateFrame
end]]--


--[[mouse.KeyDown:connect(function(key)
if key == "0" and sprinting == false then
sprinting = true
Humanoid.WalkSpeed = 60 ]]
--elseif key == "l" and magix == true then
if key == "l" and magix == true then
magix = false
for i = 65/255, 1, -0.1 do wait()
chak.Color = Color3.new(i, i, i)
end
elseif key == "l" and magix == false then
magix = true
for i = 0, 65/255, 0.1 do wait()
chak.Color = Color3.new(0, 0, i)
end
end
--end)

--[[mouse.KeyUp:connect(function(key)
if key == "0" and sprinting == true then
sprinting = false
Humanoid.WalkSpeed = 19
end
end) ]]

--==/GAMEPAD CONTROLS/==--

game:GetService("UserInputService").InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.Gamepad1 then
if input.KeyCode == Enum.KeyCode.ButtonX and magix == false then
magix = true
elseif input.KeyCode == Enum.KeyCode.ButtonX and magix == true then
magix = false
elseif input.KeyCode == Enum.KeyCode.ButtonL2 and sprinting == false then
sprinting = true
end
end
end)

game:GetService("UserInputService").InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.Gamepad1 then
if input.KeyCode == Enum.KeyCode.ButtonL2 and sprinting == true then
sprinting = false
end
end
end)



game:GetService("RunService").Stepped:connect(function()
angle = (angle % 100) + anglespeed/10
rootpart.CanCollide = false
local speed = Vector3.new(rootpart.Velocity.X, 0, rootpart.Velocity.Z).magnitude
if(Humanoid.Jump) and Torso.Velocity.Y > 1 and speed  < 2 then
animpose = "Jump"

elseif speed < 2 then -- idle
animpose = "Idle"

elseif sprinting == true then -- sprinting
animpose = "Sprinting"

elseif speed > 2 then -- walking
walking = true
animpose = "Moving"
end
--==/ANIMATION FUNCTIONS/==--
if animpose == "Idle" and anim == false then -- idle
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.6, -0.15) * CFrame.Angles(math.rad(0) + math.sin(angle) * 0.02, math.rad(15), math.rad(15) + math.sin(angle) * 0.02), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.6, -0.15) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(-15) + -math.sin(angle) * 0.02), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.9, 0) * CFrame.Angles(math.rad(-0), math.rad(-5), -25), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.9, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-6.5), math.rad(-0), math.sin(angle) * 0.01), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(170)), 0.1)

elseif animpose == "Moving" and anim == false and walking == true then -- walk
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-10) + math.sin(angle) * 0.05, math.rad(-12) + math.sin(angle) * 0.02, math.rad(8)), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-10) + math.sin(angle) * 0.05, math.rad(12) + math.sin(angle) * 0.02, math.rad(-8)), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.8, -0) * CFrame.Angles(math.rad(-7), math.rad(-5), 0), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(-7), math.rad(5), 0), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(15), Head.RotVelocity.Y/25, 0), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-110), -rootpart.RotVelocity.Y/25, math.rad(180)), 0.1)
Humanoid.WalkSpeed = 19

elseif animpose == "Sprinting" and anim == false then -- sprint
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(-12) + math.sin(angle) * 0.02, math.rad(8)), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(12) + math.sin(angle) * 0.02, math.rad(-8)), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.65, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), 0), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.65, 0) * CFrame.Angles(math.rad(-15), math.rad(5), 0), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(40), Head.RotVelocity.Y/15, 0), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-135), -rootpart.RotVelocity.Y/15, math.rad(180)), 0.1)
Humanoid.WalkSpeed = 40
end
end)