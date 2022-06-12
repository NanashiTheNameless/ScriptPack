--Revolvar u derpnobs
--[[By madiik and don't even steal eet durp or i'll make an another skrept
that will insult Yoo and i'll follow yoo everywhere, so don't even try nub
nobs = stealarz]]--
local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local neck = torso:findFirstChild("Neck")

local spread = -1
local spread2 = 1
local used = false
local shootdebounce = false
local sound = Instance.new("Sound", head)
local ammo = 6
sound.SoundId = "http://roblox.com/asset/?id=10209875"
sound.Volume = 0.5
local sound2 = Instance.new("Sound", head)
sound2.SoundId = "http://roblox.com/asset/?id=10209590"
sound2.Volume = 1
local Screen = Instance.new("ScreenGui", plr:findFirstChild("PlayerGui"))
local TextBox = Instance.new("TextLabel", Screen)
TextBox.Position = UDim2.new(0.1, 0, 0.95, 0)
TextBox.Size = UDim2.new(0, 200, 0.05, 0)
TextBox.BackgroundTransparency = 1
game:service'RunService'.Stepped:connect(function()
TextBox.Text = ("Ammo: "..ammo)
end)
TextBox.Font = "SourceSansBold"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.FontSize = "Size36"
TextBox.TextStrokeTransparency = 0
TextBox.BackgroundColor = BrickColor.new("Navy blue")
pcall(function()
char:findFirstChild("REVOLVER24/7"):Destroy()
end)
local main = Instance.new("Model", char)
main.Name = "REVOLVER24/7"
function part(parent, size, formfactor, color, collide, transparency)
local p=Instance.new("Part", parent)
p.FormFactor=formfactor
p.CanCollide=false
p.Size=size
p.Locked=true
p.Transparency=transparency
p.Position=torso.Position
p.BrickColor=color
p.FrontSurface="SmoothNoOutlines" 
p.BackSurface="SmoothNoOutlines" 
p.LeftSurface="SmoothNoOutlines" 
p.BottomSurface="SmoothNoOutlines" 
p.TopSurface="SmoothNoOutlines" 
p.RightSurface="SmoothNoOutlines" 
return p
end
function wedge(parent, size, formfactor, color, collide)
local p=Instance.new("Wedge", parent)
p.FormFactor=formfactor
p.CanCollide=false
p.Size=size
p.Locked=true
p.Position = torso.Position
p.BrickColor=color
p.FrontSurface="SmoothNoOutlines" 
p.BackSurface="SmoothNoOutlines" 
p.LeftSurface="SmoothNoOutlines" 
p.BottomSurface="SmoothNoOutlines" 
p.TopSurface="SmoothNoOutlines" 
p.RightSurface="SmoothNoOutlines"
return p
end 
function weld(c0, c1, part1, part0)
local wel=Instance.new("Weld", main)
wel.Part0 = part0
wel.Part1 = part1
wel.C0 = c0
wel.C1 = c1
return wel
end
function specialmesh(parent, meshType, scale, meshId, texture)
local mesh = Instance.new("SpecialMesh", parent)
mesh.Scale = scale
mesh.MeshType = meshType
mesh.MeshId = meshId
mesh.TextureId = texture
return mesh
end


local p = part(main, Vector3.new(0.3, 0.9, 0.3), "Custom", BrickColor.Black(), false, 0)
local w = weld(CFrame.new(0, -.2, 0.9) * CFrame.Angles(math.rad(105), 0, 0), CFrame.new(), ra, p)
local p1 = part(main, Vector3.new(0.3, 0.5, 0.3), "Custom", BrickColor.Black(), false, 0)
local w1 = weld(CFrame.new(0, -.4, -.1) * CFrame.Angles(math.rad(30), 0, 0), CFrame.new(), p, p1)
local p2 = part(main, Vector3.new(0.2, 1, 0.4), "Custom", BrickColor.Gray(), false, 0)
local w2 = weld(CFrame.new(0, -.2, 0.9) * CFrame.Angles(math.rad(105), 0, 0), CFrame.new(), ra, p2)
local p3 = part(main, Vector3.new(0.2, 0.6, 0.4), "Custom", BrickColor.Gray(), false, 0)
local w3 = weld(CFrame.new(0, -.4, -.1) * CFrame.Angles(math.rad(30), 0, 0), CFrame.new(), p2, p3)
local p4 = part(main, Vector3.new(0.205, 1.2, 0.3), "Custom", BrickColor.Gray(), false, 0)
local w4 = weld(CFrame.new(0, 1.65, 0.55), CFrame.new(), ra, p4)
local p5 = part(main, Vector3.new(0.2, 1.2, 0.2), "Custom", BrickColor.Gray(), false, 0)
local w5 = weld(CFrame.new(0, 0.05, 0.1), CFrame.new(), p4, p5)
local p6 = part(main, Vector3.new(0.2, 1.2, 0.2), "Custom", BrickColor.Black(), false, 0)
Instance.new("CylinderMesh", p6).Scale = Vector3.new(0.5, 1, 0.5)
local w6 = weld(CFrame.new(0, 0.002, 0.02), CFrame.new(), p5, p6)
local p7 = part(main, Vector3.new(0.34, 0.37, 0.34), "Custom", BrickColor.Gray(), false, 0)
local p7mesh = Instance.new("CylinderMesh", p7)
local w7 = weld(CFrame.new(0, 0, 0), CFrame.new(), p6, p7)
local p8 = part(main, Vector3.new(0.2, 1.2, 0.2), "Custom", BrickColor.Gray(), false, 0)
local p8mesh = Instance.new("CylinderMesh", p8)
local w8 = weld(CFrame.new(0, -0.01, 0.05), CFrame.new(), p6, p8)


function equip()
ar = Instance.new("Part", main)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar:breakJoints()


fakel = Instance.new("Weld", main)
fakel.Part0 = char.Torso
fakel.Part1 = ar
fakel.C0 = CFrame.new(1.5, 0.5, 0)
welditbro = Instance.new("Weld", main)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = ra
welditbro.Part1 = ar

coroutine.wrap(function()
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(0, 0, -math.rad(10))
wait()
end
end)()
coroutine.wrap(function()
for i = 0, 90, 10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(i), 0, math.rad(i))
wait()
end
end)()

bg2 = Instance.new("BodyGyro", torso)
bg2.P = 9999
bg2.D = 2000
bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge

for i = 0, 90, 10 do
bg2.cframe = CFrame.new(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(i), 0)
wait()
end
coroutine.wrap(function()
while used do
bg2.cframe = CFrame.new(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(90), 0)
game:service'RunService'.Stepped:wait()
end
end)()
debounce = false
end


function reload()
if not used then return end
local ar2 = Instance.new("Part", main)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.CanCollide = false
ar2.Locked = true
ar2:breakJoints()


local fakel2 = Instance.new("Weld", main)
fakel2.Part0 = char.Torso
fakel2.Part1 = ar2
fakel2.C0 = CFrame.new(-1.5, 0.5, 0)
local welditbro2 = Instance.new("Weld", main)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = la
welditbro2.Part1 = ar2

coroutine.wrap(function()
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(0, 0, math.rad(10))
wait()
end
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(math.rad(5), 0, 0)
wait()
end
end)()
coroutine.wrap(function()
for angle = 90, -60, -10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle + 80), 0, math.rad(angle))
wait()
end
end)()
for angle = 0, 60, 10 do
fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), 0, math.rad(angle))
wait()
end
wait(2)
ammo = 6
coroutine.wrap(function()
for angle = -60, 90, 10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle + 80), 0, math.rad(angle))
wait()
end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90))
end)()
coroutine.wrap(function()
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(-math.rad(5), 0, 0)
wait()
end
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(0, 0,-math.rad(10))
wait()
end
end)()
for angle = 60, 0, -10 do
fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), 0, math.rad(angle))
wait()
end
pcall(function()
ar2:Destroy()
fakel2:Destory()
welditbro2:Destroy()
end)
shootdebounce = false

end
function unequip()
coroutine.wrap(function()
for angle = 0, 70, 10 do
neck.C0 = neck.C0 * CFrame.Angles(0, 0, math.rad(10))
wait()
end
end)()
coroutine.wrap(function()
for i = 90, 0, -10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(i), 0, math.rad(i))
wait()
end
end)()
for i = 90, 0, -10 do
bg2.cframe = CFrame.new(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(i), 0)
wait()
end
pcall(function()
bg2:Destroy()
fakel:Destroy()
welditbro:Destroy()
ar:Destroy()
end)
end


mouse.KeyDown:connect(function(key)
if key == "q" then
if shootdebounce then return end
if debounce then return end
used = not used
if used then
debounce = true
equip()
else
debounce = true
used = false
unequip()
debounce = false
end

end
if key == "r" then
if shootdebounce then return end
if debounce then return end
if not used then return end
shootdebounce = true
reload()
end
end)


mouse.Button1Down:connect(function(mouse)
if not used then return end
if shootdebounce then return end
if ammo < 1 then sound2:play() return end
if debounce then return end
shootdebounce = true
coroutine.wrap(function()
sound:play()

ammo = ammo - 1
local muz = part(main, Vector3.new(0.8, 1.2, 0.8), "Custom", BrickColor.Yellow(), false, 0)
muz.Transparency = 0.2
specialmesh(muz, "Sphere", Vector3.new(1, 1, 1), "", "")
local localweld = weld(CFrame.new(0, 1.2, 0), CFrame.new(), p5, muz)
local muzflash = Instance.new("PointLight", muz)
muzflash.Color = Color3.new(1, 1, 0)
muzflash.Range = 19

pcall(function()
local ray = Ray.new(muz.CFrame.p, ((plr:GetMouse().Hit.p + Vector3.new(math.random(spread,spread2), math.random(spread,spread2), math.random(spread,spread2))/4) - muz.CFrame.p).unit*1000)
local hit, position = game.Workspace:FindPartOnRay(ray, char)


--do damage to any humanoids hit
pcall(function()

if hit.Parent:IsA("Hat") then
hit.Parent.Parent:findFirstChild("Humanoid"):TakeDamage(30)
end
if hit:IsA("Part") and hit.Name == "Head" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(50)
end

if hit:IsA("Part") and hit.Name == "Torso" then
coroutine.wrap(function()
local restored = hit.Parent:findFirstChild("Humanoid").WalkSpeed
hit.Parent:findFirstChild("Humanoid"):TakeDamage(30)
hit.Parent:findFirstChild("Humanoid").PlatformStand = true
wait(1)
hit.Parent:findFirstChild("Humanoid").WalkSpeed = 4
hit.Parent:findFirstChild("Humanoid").PlatformStand = false
wait(8)
hit.Parent:findFirstChild("Humanoid").WalkSpeed = restored
end)()
end

if hit:IsA("Part") and hit.Name == "Left Leg" or hit.Name == "Right Leg" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(10)
hit.Parent:findFirstChild("Humanoid").WalkSpeed = hit.Parent:findFirstChild("Humanoid").WalkSpeed - 1
end
if hit:IsA("Part") and hit.Name == "Left Arm" or hit.Name == "Right Arm" then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(10)
hit.Parent:findFirstChild("Humanoid").WalkSpeed = hit.Parent:findFirstChild("Humanoid").WalkSpeed - 0.2
end
end)

--draw the ray

local distance = (position - muz.CFrame.p).magnitude
local rayPart = Instance.new("Part", char)
rayPart.Name = "RayPart"
rayPart.BrickColor = BrickColor.new("White")
rayPart.Transparency = 0
rayPart.Anchored = true
rayPart.CanCollide = false

rayPart.TopSurface = Enum.SurfaceType.Smooth
rayPart.BottomSurface = Enum.SurfaceType.Smooth
rayPart.formFactor = Enum.FormFactor.Custom
rayPart.Size = Vector3.new(0.2, distance, 0.2)
Instance.new("CylinderMesh", rayPart)
rayPart.CFrame = CFrame.new(position, muz.CFrame.p) * CFrame.new(0, 0, -distance/2) * CFrame.Angles(math.pi/2, 0, 0)


coroutine.wrap(function()
for i = 0, 30 do
if rayPart == nil then return end
rayPart.Transparency = rayPart.Transparency + 0.1
if muz == nil then return end
muz.Transparency = muz.Transparency + 0.2
wait()
end
end)()
end)
wait(0.05)
muz:Destroy()
localweld:Destroy()
game:service'Debris':AddItem(rayPart, 0)
end)()
for i = 0, 30, 15 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(i), math.rad(90))
wait()
end
wait()
for i = 30, 0, -10 do
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(i), math.rad(90))
wait()
end
shootdebounce = false

end)
