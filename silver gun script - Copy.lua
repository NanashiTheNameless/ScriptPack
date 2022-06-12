User = game.Players.LocalPlayer

Ammo = 10

Team = "Silver"
Char = User.Character
fps = true
function clonepart(cloning)
if fps == true then
local part = cloning:clone()
part.Parent = workspace.CurrentCamera
part:BreakJoints()
W = Instance.new("Weld", part)
W.Part0 = cloning
W.Part1 = part
W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
end
end





--[[local la = Char["Left Arm"]:clone()
la.Parent = workspace.CurrentCamera
la:BreakJoints()
laW = Instance.new("Weld", la)
laW.Part0 = Char["Left Arm"]
laW.Part1 = la
laW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

local ra = Char["Right Arm"]:clone()
ra.Parent = workspace.CurrentCamera
ra:BreakJoints()
raW = Instance.new("Weld", ra)
raW.Part0 = Char["Right Arm"]
raW.Part1 = ra
raW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))]]--

cen = Instance.new("Part", User.Character)
cen.Material = "SmoothPlastic"
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really black")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
cen2.Material = "SmoothPlastic"
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("Really black")
cen2.Transparency = 1

cenw = Instance.new("Weld", cen)
cenw.Part0 = Char["Torso"]
cenw.Part1 = cen
cenw.C1 = CFrame.new(-1.5,-0.5,0)

cenw2 = Instance.new("Weld", cen2)
cenw2.Part0 = Char["Torso"]
cenw2.Part1 = cen2
cenw2.C1 = CFrame.new(1.5,-0.5,0)



haw = Instance.new("Weld", cen)
haw.Part0 = cen
haw.Part1 = Char["Right Arm"]
haw.C1 = CFrame.new(0,0.5,0)

haw2 = Instance.new("Weld", cen2)
haw2.Part0 = cen2
haw2.Part1 = Char["Left Arm"]
haw2.C1 = CFrame.new(0,0.5,0)

haw.Part1 = nil
haw2.Part1 = nil

gun = Instance.new("Model", Char)

main = Instance.new("Part", gun)
main.Material = "SmoothPlastic"
main.Size = Vector3.new(1,1,1)
main.CanCollide = false
main.BrickColor = BrickColor.new(Team)
main.TopSurface = "Smooth"
main.Transparency = 1
main.BottomSurface = "Smooth"
mainM = Instance.new("BlockMesh", main)
mainM.Scale = Vector3.new(0.5,1,0.5)
main:BreakJoints()
mainW = Instance.new("Weld", main)
mainW.Part0 = Char["Torso"]
mainW.Part1 = main
mainW.C1 = CFrame.new(0.7,0,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(20))

prt1 = Instance.new("Part", gun)
prt1.Material = "SmoothPlastic"
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new(Team)
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("BlockMesh", prt1)
prtM.Scale = Vector3.new(0.51,0.8,0.4)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = main
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),0,math.rad(0))
clonepart(prt1)

prt2 = Instance.new("Part", gun)
prt2.Material = "SmoothPlastic"
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Really black")
prt2TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prt2M = Instance.new("SpecialMesh", prt2)
prt2M.MeshType = "Brick"
prt2M.Scale = Vector3.new(0.5,1,0.5)
prt2:BreakJoints()
prt2W = Instance.new("Weld", prt2)
prt2W.Part0 = main
prt2W.Part1 = prt2
prt2W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),0,math.rad(0))
clonepart(prt2)

prt3 = Instance.new("Part", gun)
prt3.Material = "SmoothPlastic"
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Really black")
prt3TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prt3M = Instance.new("SpecialMesh", prt3)
prt3M.MeshType = "Brick"
prt3M.Scale = Vector3.new(0.5,1.5,0.5)
prt3:BreakJoints()
prt3W = Instance.new("Weld", prt3)
prt3W.Part0 = main
prt3W.Part1 = prt3
prt3W.C1 = CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(90),0,math.rad(0))
clonepart(prt3)

prt32 = Instance.new("Part", gun)
prt32.Material = "SmoothPlastic"
prt32.Size = Vector3.new(1,1,1)
prt32.CanCollide = false
prt32.BrickColor = BrickColor.new("Really black")
prt32TopSurface = "Smooth"
prt32.Transparency = 0
prt32.BottomSurface = "Smooth"
prt32M = Instance.new("CylinderMesh", prt32)
prt32M.Scale = Vector3.new(0.1,1.51,0.1)
prt32:BreakJoints()
prt32W = Instance.new("Weld", prt32)
prt32W.Part0 = main
prt32W.Part1 = prt32
prt32W.C1 = CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(90),0,math.rad(0))
clonepart(prt32)

local smoke = Instance.new("Smoke", prt32)
smoke.Opacity = 0.3
smoke.Size = 1
smoke.Enabled = false

prt4 = Instance.new("Part", gun)
prt4.Material = "SmoothPlastic"
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new(Team)
prt4TopSurface = "Smooth"
prt4.Transparency = 0
prt4.BottomSurface = "Smooth"
prt4M = Instance.new("SpecialMesh", prt4)
prt4M.MeshType = "Brick"
prt4M.Scale = Vector3.new(0.51,1,0.25)
prt4:BreakJoints()
prt4W = Instance.new("Weld", prt4)
prt4W.Part0 = prt3
prt4W.Part1 = prt4
prt4W.C1 = CFrame.new(0,-0.1,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))
clonepart(prt4)

prt5 = Instance.new("Part", gun)
prt5.Material = "SmoothPlastic"
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new(Team)
prt5.TopSurface = "Smooth"
prt5.Transparency = 0
prt5.BottomSurface = "Smooth"
prt5M = Instance.new("SpecialMesh", prt5)
prt5M.MeshType = "Brick"
prt5M.Scale = Vector3.new(0.1,0.1,0.5)
prt5:BreakJoints()
prt5W = Instance.new("Weld", prt5)
prt5W.Part0 = prt3
prt5W.Part1 = prt5
prt5W.C1 = CFrame.new(0,0.5,0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))
clonepart(prt5)

prt6 = Instance.new("Part", gun)
prt6.Material = "SmoothPlastic"
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new(Team)
prt6.TopSurface = "Smooth"
prt6.Transparency = 0
prt6.BottomSurface = "Smooth"
prt6M = Instance.new("BlockMesh", prt6)
prt6M.Scale = Vector3.new(0.1,0.1,0.5)
prt6:BreakJoints()
prt6W = Instance.new("Weld", prt6)
prt6W.Part0 = prt3
prt6W.Part1 = prt6
prt6W.C1 = CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(0),0,math.rad(0))
clonepart(prt6)

Torso = Char.HumanoidRootPart
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Torso
Torsow.Part1 = Char.Torso
Torsow.C1 = CFrame.Angles(0,math.rad(0),0)
Char.Torso["Right Hip"].Part0 = Char.Torso

Char.Torso["Left Hip"].Part0 = Char.Torso

Char["Torso"].Transparency = 0
Torso.Transparency = 1

cenw2.Part0 = Char.Torso
cenw.Part0 = Char.Torso
--------------------------------------------

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

function Equip()
playSound(153647514,main,1,1)
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(-i),0,0)
wait()
end

mainW.Part0 = Char["Right Arm"]
mainW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(-45+i),0,0)
wait()
end

for i = 1,100,10 do
haw.C0 = CFrame.Angles(math.rad(i),0,math.rad(0))
haw.C1 = CFrame.new(i/100,0.5,0)
haw2.C0 = CFrame.Angles(math.rad(i),0,math.rad(i/2))
haw2.C1 = CFrame.new(0,0.5+i/100,0)
wait()
end
end

function UnEquip()
for i = 1,100,10 do
haw.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(0))
haw.C1 = CFrame.new((90/100)-i/100,0.5,0)
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(45-i/2))
haw2.C1 = CFrame.new(0,(0.5+90/100)-i/100,0)
wait()
end

for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(-i),0,0)
wait()
end

mainW.Part0 = Char.Torso
mainW.C1 = CFrame.new(0.7,0,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(20))

for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(-45+i),0,0)
wait()
end

haw.Part1 = nil
haw2.Part1 = nil
end

function NotAim()
aiming = false
for i = 1,35,5 do
Torsow.C1 = CFrame.Angles(0,math.rad(i),0)
haw.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(0))
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(45))
wait()
end
end

function Aim()
for i = 1,35,5 do
Torsow.C1 = CFrame.Angles(0,math.rad(30-i),0)
haw.C0 = CFrame.Angles(math.rad(60+i),0,math.rad(0))
haw2.C0 = CFrame.Angles(math.rad(60+i),0,math.rad(45))
wait()
end
aiming = true
end

function Shoot(m)
if Ammo > 0 then
delay(0, function()
smoke.Enabled = true
wait(0.1)
smoke.Enabled = false
end)
Ammo = Ammo - 1
h.Name = "Ammo: "..Ammo
playSound(131070686,main,1,1)
local pro = Instance.new("Part", workspace)
pro.formFactor = "Custom"
pro.BrickColor = BrickColor.new(Team)
pro.Size = Vector3.new(0.5,0.5,0.5)
pro.TopSurface = "Smooth"
pro.BottomSurface = "Smooth"
pro.CFrame = prt3.CFrame + Char.Torso.CFrame.lookVector
local mesh = Instance.new("SpecialMesh", pro)



mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.5,0.5,0.5)

pro.Touched:connect(function(hit)

if hit.Parent.Name ~= User.Name and hit.Parent:FindFirstChild("Humanoid") then
hit.Parent.Humanoid:TakeDamage(20)
pro:Remove()
end
end)

pro:BreakJoints()
v = Instance.new("BodyVelocity", pro)
v.velocity=(prt3.Position - m).unit* -200 + Vector3.new (0,0,0)
v.maxForce = Vector3.new(2e+75,2e+75,2e+75)


haw.C1 = haw.C1 - Vector3.new(0,0.1,0)
haw2.C1 = haw2.C1 - Vector3.new(0,0.1,0)
haw.C0 = haw.C0 *CFrame.Angles(math.rad(1),0,0)
haw2.C0 = haw2.C0 *CFrame.Angles(math.rad(1),0,0)
delay(0, function()
for i = 1,15,5 do
prt4W.C1 = CFrame.new(0,-0.1+i/50,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))
wait(0.03)
end
end)
wait(0.3)
delay(0, function()
for i = 1,15,5 do
prt4W.C1 = CFrame.new(0,-i/50,-0.2)*CFrame.Angles(math.rad(0),0,math.rad(0))
wait(0.03)
end
end)
haw.C1 = haw.C1 - Vector3.new(0,-0.1,0)
haw2.C1 = haw2.C1 - Vector3.new(0,-0.1,0)
haw.C0 = haw.C0 *CFrame.Angles(math.rad(-1),0,0)
haw2.C0 = haw2.C0 *CFrame.Angles(math.rad(-1),0,0)
delay(0, function()
wait(5)
pro:Remove()
end)

else

end
end

function Reload()
playSound(138109513,main,1,1)
for i = 1,50,5 do
mainW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),math.rad(i),math.rad(0))
wait()
end
local new = Instance.new("Part", gun)
new.Material = "SmoothPlastic"
new.Size = Vector3.new(1,1,1)
new.CanCollide = true
new.BrickColor = BrickColor.new(Team)
new.TopSurface = "Smooth"
new.Transparency = 0
new.BottomSurface = "Smooth"
newM = Instance.new("BlockMesh", new)
newM.Scale = Vector3.new(0.4,0.8,0.4)
new:BreakJoints()
new.CFrame = prt1.CFrame
new:BreakJoints()
delay(0, function()
wait(5)
new:Remove()
end)

for i = 1,70,10 do
haw2.C0 = CFrame.Angles(math.rad(60-i),0,math.rad(45-i/2))
wait()
end
for i = 1,70,10 do
haw2.C0 = CFrame.Angles(math.rad(i),0,math.rad(15+i/2))
wait()
end
Ammo = 10
h.Name = "Ammo: "..Ammo
for i = 1,50,5 do
mainW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),math.rad(45-i),math.rad(0))
wait()
end
end
--------------------------------------------
local _ = false
reloading = false
aiming = false
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Ammo: 10"
script.Parent = h
end


script.Parent.Selected:connect(function(mouse)
Equip()
NotAim()
mouse.Button1Down:connect(function()
if aiming == true then
Shoot(mouse.hit.p)
end
end)
mouse.Button1Up:connect(function()

end)

mouse.KeyDown:connect(function(key)
if key == "q" and reloading == false then
Aim()
aiming = true
elseif key == "r" and reloading == false and aiming == false then
reloading = true
Reload()
reloading = false
end
end)
mouse.KeyUp:connect(function(key)
if key == "q" then
aiming = false
NotAim()
end
end)
end)

script.Parent.Deselected:connect(function()
Torsow.C1 = CFrame.Angles(0,math.rad(0),0)
UnEquip()
end)

--mediafire gtfo password