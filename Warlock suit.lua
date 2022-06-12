User = game.Players.ace28545
 
Char = User.Character
--Char.Humanoid.MaxHealth = math.huge
User = game.Players.ace28545
Char = User.Character
PrimaryColor = "Really black"
SecondaryColor = "Silver"
ThirdColor = "Gold"
SkinColor = "Pastel brown"
 
for i,v in pairs(Char:GetChildren()) do
        if v:IsA("CharacterMesh") then
                v:Remove()
        elseif v.Name == "Shirt" then
                v:Remove()
        elseif v.Name == "Pants" then
        elseif v.Name == "Torso" then
                if v:FindFirstChild("roblox") then
                        v.roblox:Remove()
                end
                
                
        elseif v:IsA("Hat") then
                v:Remove()
        elseif v.Name == "Head" then
                v.BrickColor = BrickColor.new(SkinColor)
                if v:FindFirstChild("face") ~= nil then
                        v.face:Remove()
                end
        
        end
end
 
 
local h = Instance.new("Part",Char)
h.Name = "Hood"
h.formFactor = "Custom"
h.Size = Vector3.new(1,1,1)
h.TopSurface = 0
h.Reflectance = 0
h.BottomSurface = 0
h.Position = h.Parent.Head.Position
h.BrickColor = BrickColor.new(PrimaryColor)
local x = Instance.new("Weld",h)
x.Part0 = h
x.Part1 = Char:FindFirstChild("Head")
x.C0 = x.C0 + Vector3.new(0,-0.3,0)
local sp = Instance.new("SpecialMesh",h)
sp.MeshType = "FileMesh"
sp.MeshId = "http://www.roblox.com/asset/?id=16952952"
 
--torso
prt1 = Instance.new("Part", Char)
prt1.formFactor = "Symmetric"
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new(PrimaryColor)
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("BlockMesh", prt1)
prtM.Scale = Vector3.new(0.76,2.02,1.025)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0.625,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
prt2 = Instance.new("Part", Char)
prt2.formFactor = "Symmetric"
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new(PrimaryColor)
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prt2M = Instance.new("BlockMesh", prt2)
prt2M.Scale = Vector3.new(0.76,2.02,1.025)
prt2:BreakJoints()
prt2W = Instance.new("Weld", prt2)
prt2W.Part0 = Char["Torso"]
prt2W.Part1 = prt2
prt2W.C1 = CFrame.new(-0.625,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
prt3 = Instance.new("Part", Char)
prt3.formFactor = "Symmetric"
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new(SecondaryColor)
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prt3M = Instance.new("BlockMesh", prt3)
prt3M.Scale = Vector3.new(2,2.01,1.01)
prt3:BreakJoints()
prt3W = Instance.new("Weld", prt3)
prt3W.Part0 = Char["Torso"]
prt3W.Part1 = prt3
prt3W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
 
_prt1 = Instance.new("Part", Char)
_prt1.formFactor = "Symmetric"
_prt1.Size = Vector3.new(1,1,1)
_prt1.CanCollide = false
_prt1.BrickColor = BrickColor.new(ThirdColor)
_prt1.TopSurface = "Smooth"
_prt1.Transparency = 0
_prt1.BottomSurface = "Smooth"
_prt1M = Instance.new("BlockMesh", _prt1)
_prt1M.Scale = Vector3.new(0.1,2.03,1.03)
_prt1:BreakJoints()
_prt1W = Instance.new("Weld", _prt1)
_prt1W.Part0 = prt1
_prt1W.Part1 = _prt1
_prt1W.C1 = CFrame.new(-0.15,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
_prt2 = Instance.new("Part", Char)
_prt2.formFactor = "Symmetric"
_prt2.Size = Vector3.new(1,1,1)
_prt2.CanCollide = false
_prt2.BrickColor = BrickColor.new(ThirdColor)
_prt2.TopSurface = "Smooth"
_prt2.Transparency = 0
_prt2.BottomSurface = "Smooth"
_prt2M = Instance.new("BlockMesh", _prt2)
_prt2M.Scale = Vector3.new(0.1,2.03,1.03)
_prt2:BreakJoints()
_prt2W = Instance.new("Weld", _prt2)
_prt2W.Part0 = prt2
_prt2W.Part1 = _prt2
_prt2W.C1 = CFrame.new(0.15,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
--legs
 
prt4 = Instance.new("Part", Char)
prt4.formFactor = "Symmetric"
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new(PrimaryColor)
prt4.TopSurface = "Smooth"
prt4.Transparency = 0
prt4.BottomSurface = "Smooth"
prt4M = Instance.new("BlockMesh", prt4)
prt4M.Scale = Vector3.new(1.01,2.01,1.01)
prt4:BreakJoints()
prt4W = Instance.new("Weld", prt4)
prt4W.Part0 = Char["Right Leg"]
prt4W.Part1 = prt4
prt4W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
prt5 = Instance.new("Part", Char)
prt5.formFactor = "Symmetric"
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new(PrimaryColor)
prt5.TopSurface = "Smooth"
prt5.Transparency = 0
prt5.BottomSurface = "Smooth"
prt5M = Instance.new("BlockMesh", prt5)
prt5M.Scale = Vector3.new(1.01,2.01,1.01)
prt5:BreakJoints()
prt5W = Instance.new("Weld", prt5)
prt5W.Part0 = Char["Left Leg"]
prt5W.Part1 = prt5
prt5W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
prt6 = Instance.new("Part", Char)
prt6.formFactor = "Symmetric"
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new(PrimaryColor)
prt6.TopSurface = "Smooth"
prt6.Transparency = 0
prt6.BottomSurface = "Smooth"
prt6M = Instance.new("BlockMesh", prt6)
prt6M.Scale = Vector3.new(1.01,2.01,1.01)
prt6:BreakJoints()
prt6W = Instance.new("Weld", prt6)
prt6W.Part0 = Char["Right Leg"]
prt6W.Part1 = prt6
prt6W.C1 = CFrame.new(-0.25,0.05,0)*CFrame.Angles(math.rad(0),0,math.rad(-15))
 
prt7 = Instance.new("Part", Char)
prt7.formFactor = "Symmetric"
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new(PrimaryColor)
prt7.TopSurface = "Smooth"
prt7.Transparency = 0
prt7.BottomSurface = "Smooth"
prt7M = Instance.new("BlockMesh", prt7)
prt7M.Scale = Vector3.new(1.01,2.01,1.01)
prt7:BreakJoints()
prt7W = Instance.new("Weld", prt7)
prt7W.Part0 = Char["Left Leg"]
prt7W.Part1 = prt7
prt7W.C1 = CFrame.new(0.25,0.05,0)*CFrame.Angles(math.rad(0),0,math.rad(15))
 
 
_prt3 = Instance.new("Part", Char)
_prt3.formFactor = "Symmetric"
_prt3.Size = Vector3.new(1,1,1)
_prt3.CanCollide = false
_prt3.BrickColor = BrickColor.new(ThirdColor)
_prt3.TopSurface = "Smooth"
_prt3.Transparency = 0
_prt3.BottomSurface = "Smooth"
_prt3M = Instance.new("BlockMesh", _prt3)
_prt3M.Scale = Vector3.new(0.1,2.03,1.03)
_prt3:BreakJoints()
_prt3W = Instance.new("Weld", _prt3)
_prt3W.Part0 = prt6
_prt3W.Part1 = _prt3
_prt3W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
_prt4 = Instance.new("Part", Char)
_prt4.formFactor = "Symmetric"
_prt4.Size = Vector3.new(1,1,1)
_prt4.CanCollide = false
_prt4.BrickColor = BrickColor.new(ThirdColor)
_prt4.TopSurface = "Smooth"
_prt4.Transparency = 0
_prt4.BottomSurface = "Smooth"
_prt4M = Instance.new("BlockMesh", _prt4)
_prt4M.Scale = Vector3.new(0.1,2.03,1.03)
_prt4:BreakJoints()
_prt4W = Instance.new("Weld", _prt4)
_prt4W.Part0 = prt7
_prt4W.Part1 = _prt4
_prt4W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
--arms
 
prt8 = Instance.new("Part", Char)
prt8.formFactor = "Symmetric"
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new(PrimaryColor)
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8M = Instance.new("BlockMesh", prt8)
prt8M.Scale = Vector3.new(1.01,2.01,1.01)
prt8:BreakJoints()
prt8W = Instance.new("Weld", prt8)
prt8W.Part0 = Char["Right Arm"]
prt8W.Part1 = prt8
prt8W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
prt9 = Instance.new("Part", Char)
prt9.formFactor = "Symmetric"
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new(PrimaryColor)
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9M = Instance.new("BlockMesh", prt9)
prt9M.Scale = Vector3.new(1.01,2.01,1.01)
prt9:BreakJoints()
prt9W = Instance.new("Weld", prt9)
prt9W.Part0 = Char["Left Arm"]
prt9W.Part1 = prt9
prt9W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
function debris(part)
delay(0, function()
repeat wait(0.5)
 
local deb = Instance.new("Part", part)
deb.Size = Vector3.new(1,1,1)
deb.CanCollide = false
deb.BrickColor = BrickColor.new("Gold")
deb.TopSurface = "Smooth"
deb.Transparency = 0
deb.Anchored = true
deb.BottomSurface = "Smooth"
local debM = Instance.new("BlockMesh", flakef)
debM.Scale = Vector3.new(math.random(1,10)/10,math.random(1,10)/10,math.random(1,10)/10)
deb:BreakJoints()
deb.CFrame = part.CFrame + Vector3.new(math.random(-50,50)/10,math.random(-50,50)/10,math.random(-50,50)/10)
 
for i = 1,10 do
deb.CFrame = deb.CFrame + Vector3.new(0,1,0)
deb.CFrame = deb.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
deb.Transparency = deb.Transparency + 0.1
wait()
end
 
until part.Parent ~= workspace
end)
end
 
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really black")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
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
 
--------------------------------------------
function MoveOne()
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(-i),0,0)
haw2.C0 = CFrame.Angles(math.rad(-i),0,0)
wait()
end
for i = 1,100,10 do
haw.C0 = CFrame.Angles(math.rad(-45+i),0,0)
haw2.C0 = CFrame.Angles(math.rad(-45+i),0,0)
wait()
end
delay(0, function()
for i = 1,50,5 do
haw.C0 = CFrame.Angles(math.rad(45-i),0,0)
haw2.C0 = CFrame.Angles(math.rad(45-i),0,0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
end)
local ps = Char.Torso.CFrame
local flakef = Instance.new("Part", Char)
flakef.Size = Vector3.new(5,5,5)
flakef.CanCollide = false
flakef.BrickColor = BrickColor.new("Gold")
flakef.TopSurface = "Smooth"
flakef.Transparency = 0.5
flakef.Anchored = true
flakef.BottomSurface = "Smooth"
local flakeMf = Instance.new("SpecialMesh", flakef)
flakeMf.MeshType = "FileMesh"
flakeMf.Scale = Vector3.new(5,5,5)
flakeMf.MeshId = "http://www.roblox.com/asset/?id=20329976"
flakef:BreakJoints()
flakef.CFrame = (ps - Vector3.new(0,3,0)) + ps.lookVector*2
 
flakef.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= User.Name then
hit.Parent:BreakJoints()
end
end)
 
for i = 1,50 do
 
flakef.CFrame = (ps - Vector3.new(0,3,0)) + ps.lookVector*(i*2)
 
local gho = flakef:clone()
gho.Parent = Char
gho.Anchored = true
gho.CFrame = flakef.CFrame
 
delay(0,function()
for i = 1,10 do
gho.Mesh.Scale = gho.Mesh.Scale + Vector3.new(0.1,0.1,0.1)
gho.Transparency = gho.Transparency + 0.05
wait()
end
gho:Remove()
end)
wait()
end
local ring = flakef:clone()
ring.Parent = Char
ring.Anchored = true
ring.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
ring.CFrame = flakef.CFrame
ring.CFrame = ring.CFrame*CFrame.Angles(math.rad(90),0,0)
for i = 1,10 do
ring.Mesh.Scale = ring.Mesh.Scale + Vector3.new(5,5,5)
ring.Transparency = ring.Transparency + 0.05
flakef.Transparency = flakef.Transparency + 0.05
flakef.Mesh.Scale = flakef.Mesh.Scale + Vector3.new(2,2,2)
wait()
end
ring:Remove()
flakef:Remove()
end
 
 
function HandCharge()
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
 
for i = 1,130,5 do
haw.C0 = CFrame.Angles(0,0,math.rad(i))
haw2.C0 = CFrame.Angles(0,0,math.rad(-i))
wait()
end
 
local sph1 = Instance.new("Part", Char)
sph1.formFactor = "Symmetric"
sph1.Size = Vector3.new(1,1,1)
sph1.CanCollide = false
sph1.BrickColor = BrickColor.new("Gold")
sph1.TopSurface = "Smooth"
sph1.Transparency = 0.5
sph1.BottomSurface = "Smooth"
local sphM = Instance.new("SpecialMesh", sph1)
sphM.MeshType = "Sphere"
sphM.Scale = Vector3.new(2,2,2)
sph1:BreakJoints()
local sphW = Instance.new("Weld", sph1)
sphW.Part0 = Char["Right Arm"]
sphW.Part1 = sph1
sphW.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
local sph2 = Instance.new("Part", Char)
sph2.formFactor = "Symmetric"
sph2.Size = Vector3.new(1,1,1)
sph2.CanCollide = false
sph2.BrickColor = BrickColor.new("Gold")
sph2.TopSurface = "Smooth"
sph2.Transparency = 0.5
sph2.BottomSurface = "Smooth"
local sphM2 = Instance.new("SpecialMesh", sph2)
sphM2.MeshType = "Sphere"
sphM2.Scale = Vector3.new(2,2,2)
sph2:BreakJoints()
local sphW2 = Instance.new("Weld", sph2)
sphW2.Part0 = Char["Left Arm"]
sphW2.Part1 = sph2
sphW2.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
local sph3 = Instance.new("Part", Char)
sph3.formFactor = "Symmetric"
sph3.Size = Vector3.new(1,1,1)
sph3.CanCollide = false
sph3.BrickColor = BrickColor.new("Gold")
sph3.TopSurface = "Smooth"
sph3.Transparency = 0.5
sph3.BottomSurface = "Smooth"
local sphM3 = Instance.new("BlockMesh", sph3)
sphM3.Scale = Vector3.new(.75,.75,.75)
sph3:BreakJoints()
local sphW3 = Instance.new("Weld", sph3)
sphW3.Part0 = sph1
sphW3.Part1 = sph3
sphW3.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
local sph4 = Instance.new("Part", Char)
sph4.formFactor = "Symmetric"
sph4.Size = Vector3.new(1,1,1)
sph4.CanCollide = false
sph4.BrickColor = BrickColor.new("Gold")
sph4.TopSurface = "Smooth"
sph4.Transparency = 0.5
sph4.BottomSurface = "Smooth"
local sphM4 = Instance.new("BlockMesh", sph4)
sphM4.Scale = Vector3.new(.75,.75,.75)
sph4:BreakJoints()
local sphW4 = Instance.new("Weld", sph4)
sphW4.Part0 = sph2
sphW4.Part1 = sph4
sphW4.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
 
 
delay(0, function()
for i = 1,25 do
local new = Instance.new("Part", Char)
new.formFactor = "Symmetric"
new.Size = Vector3.new(1,1,1)
new.CanCollide = false
new.BrickColor = BrickColor.new("Gold")
new.TopSurface = "Smooth"
new.Transparency = 1
new.BottomSurface = "Smooth"
local newM = Instance.new("SpecialMesh", new)
newM.MeshType = "Sphere"
newM.Scale = Vector3.new(0.5,2,0.5)
new:BreakJoints()
local newW = Instance.new("Weld", new)
newW.Part0 = sph1
newW.Part1 = new
newW.C1 = CFrame.new(0,10,0)*CFrame.Angles(math.rad(math.random(1,360)),0,math.rad(math.random(1,360)))
delay(0, function()
for i = 1,10 do
sphW4.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
 
newW.C1 = newW.C1 - Vector3.new(0,1,0)
new.Transparency = new.Transparency - 0.05
wait()
end
new:Remove()
end)
wait(0.2)
end
end)
 
 
for i = 1,25 do
local new = Instance.new("Part", Char)
new.formFactor = "Symmetric"
new.Size = Vector3.new(1,1,1)
new.CanCollide = false
new.BrickColor = BrickColor.new("Gold")
new.TopSurface = "Smooth"
new.Transparency = 1
new.BottomSurface = "Smooth"
local newM = Instance.new("SpecialMesh", new)
newM.MeshType = "Sphere"
newM.Scale = Vector3.new(0.5,2,0.5)
new:BreakJoints()
local newW = Instance.new("Weld", new)
newW.Part0 = sph2
newW.Part1 = new
newW.C1 = CFrame.new(0,10,0)*CFrame.Angles(math.rad(math.random(1,360)),0,math.rad(math.random(1,360)))
 
new.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= User.Name then
hit.Parent:BreakJoints()
end
end)
 
delay(0, function()
for i = 1,10 do
sphW3.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
newW.C1 = newW.C1 - Vector3.new(0,1,0)
new.Transparency = new.Transparency - 0.05
wait()
end
new:Remove()
end)
wait(0.2)
end
 
delay(0, function()
for i = 1,50 do
sph1.Transparency = sph1.Transparency + 0.01
sphM.Scale = sphM.Scale + Vector3.new(0.1,0.1,0.1)
sph2.Transparency = sph2.Transparency + 0.01
sphM2.Scale = sphM2.Scale + Vector3.new(0.1,0.1,0.1)
sph3.Transparency = sph3.Transparency + 0.01
sphM3.Scale = sphM3.Scale + Vector3.new(0.05,0.05,0.05)
sph4.Transparency = sph4.Transparency + 0.01
sphM4.Scale = sphM4.Scale + Vector3.new(0.05,0.05,0.05)
wait()
end
end)
 
local tring = Instance.new("Part", Char)
tring.formFactor = "Symmetric"
tring.Size = Vector3.new(1,1,1)
tring.CanCollide = false
tring.BrickColor = BrickColor.new("Gold")
tring.TopSurface = "Smooth"
tring.Transparency = 0.5
tring.BottomSurface = "Smooth"
local tringM = Instance.new("SpecialMesh", tring)
tringM.MeshType = "FileMesh"
tringM.MeshId = "http://www.roblox.com/asset/?id=3270017"
tringM.Scale = Vector3.new(1,1,1)
tring:BreakJoints()
local tringW = Instance.new("Weld", tring)
tringW.Part0 = Char["Torso"]
tringW.Part1 = tring
tringW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
for i = 1,100 do
ag = i
tringM.Scale = Vector3.new(i,i,i)
tring.Transparency = tring.Transparency + 0.5/100
 
delay(0, function()
for i,v in pairs(workspace:GetChildren()) do
if v:FindFirstChild("Humanoid") and v.Name ~= User.Name and v:FindFirstChild("Head") and (v.Head.Position - Char.Head.Position).magntiude < ag/2 then
v:BreakJoints()
else
end
end
end)
 
wait()
end
tring:Remove()
 
sph1:Remove()
sph2:Remove()
sph3:Remove()
sph4:Remove()
 
for i = 1,130,5 do
haw.C0 = CFrame.Angles(0,0,math.rad(125-i))
haw2.C0 = CFrame.Angles(0,0,math.rad(-125+i))
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
end
--------------------------------------------
local _ = false
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "watah"
script.Parent = h
end
 
 
script.Parent.Selected:connect(function(mouse)
 
mouse.Button1Down:connect(function()
 
end)
 
mouse.KeyDown:connect(function(key)
if key == "q" and _ == false then
_ = true
MoveOne()
_ = false
elseif key == "e" and _ == false then
_ = true
HandCharge()
_ = false
end
end)
end)
 
script.Parent.Deselected:connect(function()
 
end)
