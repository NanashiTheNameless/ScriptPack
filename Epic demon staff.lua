User = game.Players.LocalPlayer
player = User

moving = false

for i,v in pairs(player.Character:GetChildren()) do
    if v:IsA("CharacterMesh") then
        v:Remove()
    elseif v.Name == "Shirt" then
        v:Remove()
    elseif v.Name == "Pants" then
        v:Remove()
    elseif v:IsA("Hat") then
        v:Remove()
    elseif v.Name == "Head" then
        v.Transparency = 1
        local fi = Instance.new("Fire",v)
        fi.Color = BrickColor.new("Toothpaste").Color
        fi.SecondaryColor = BrickColor.new("Magenta").Color
        fi.Size = 3
        if v:FindFirstChild("face") ~= nil then
            v.face:Remove()
        end
    elseif v:IsA("Part") and v.Name ~= "Head" then
        v.Transparency = 1
        local p = Instance.new("Part",v.Parent)
        p.Name = "Replacement"
        p.formFactor = "Custom"
        p.Size = v.Size
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Position = v.Position
        p.Transparency = 0
        p.Reflectance = 0.5
        p.BrickColor = BrickColor.new("Toothpaste")
        p.CanCollide = false
        local Block = Instance.new("BlockMesh",p)
        
        local weld = Instance.new("Weld",p)
        weld.Part0 = v
        weld.Part1 = p
    end
end


local h = Instance.new("Part",player.Character)
h.Name = "Hood"
h.formFactor = "Custom"
h.Size = Vector3.new(1,1,1)
h.TopSurface = 0
h.Reflectance = 0.5
h.BottomSurface = 0
h.Position = h.Parent.Head.Position
h.BrickColor = BrickColor.new("Toothpaste")
local x = Instance.new("Weld",h)
x.Part0 = h
x.Part1 = player.Character:FindFirstChild("Head")
x.C0 = x.C0 + Vector3.new(0,-0.3,0)
local sp = Instance.new("SpecialMesh",h)
sp.MeshType = "FileMesh"
sp.MeshId = "http://www.roblox.com/asset/?id=16952952"


--lego
local Light_ = false
Char = User.Character
Char.Humanoid.MaxHealth = 10000000000000000000000000
wait(0.05)
Char.Humanoid.Health = 10000000000000000000000000
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("White")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("White")
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

--[[haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)--]]

haw.Part1 = nil
haw2.Part1 = nil
--[[
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))
--]]

prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Institutional white")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("CylinderMesh", prt1)
prtM.Scale = Vector3.new(0.15,5,0.15)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Toothpaste")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prt2.Reflectance = 0.5
prtM2 = Instance.new("SpecialMesh", prt2)
prtM2.Scale = Vector3.new(1,2,1)
prtM2.MeshType = "FileMesh"
prtM2.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt1
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,-3.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt2.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= User.Name and moving == true then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth/20
end
end)

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Toothpaste")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prt3.Reflectance = 0.5
prtM3 = Instance.new("SpecialMesh", prt3)
prtM3.Scale = Vector3.new(0.5,1,0.5)
prtM3.MeshType = "FileMesh"
prtM3.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt1
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,3,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("White")
prt4.TopSurface = "Smooth"
prt4.Transparency = 1
prt4.BottomSurface = "Smooth"
prt4.Reflectance = 0
prtM4 = Instance.new("CylinderMesh", prt4)
prtM4.Scale = Vector3.new(0.1,1.05,0.1)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt4)
prtW4.Part0 = prt2
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("White")
prt5.TopSurface = "Smooth"
prt5.Transparency = 1
prt5.BottomSurface = "Smooth"
prt5.Reflectance = 0
prtM5 = Instance.new("CylinderMesh", prt5)
prtM5.Scale = Vector3.new(0.1,1.05,0.1)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt2
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("White")
prt6.TopSurface = "Smooth"
prt6.Transparency = 1
prt6.BottomSurface = "Smooth"
prt6.Reflectance = 0
prtM6 = Instance.new("CylinderMesh", prt6)
prtM6.Scale = Vector3.new(0.1,1.05,0.1)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = prt2
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-180),math.rad(0))

prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("White")
prt7.TopSurface = "Smooth"
prt7.Transparency = 1
prt7.BottomSurface = "Smooth"
prt7.Reflectance = 0
prtM7 = Instance.new("CylinderMesh", prt7)
prtM7.Scale = Vector3.new(0.1,1.05,0.1)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt2
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-270),math.rad(0))

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25,0.5,0.25)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25,0.5,0.25)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25,0.5,0.25)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25,0.5,0.25)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))


-----------------

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

---------------------------------------

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

delay(0, function()
while true do
for i = 1,360 do
prtW7.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+270),math.rad(0))
prtW6.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+180),math.rad(0))
prtW5.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+90),math.rad(0))
prtW4.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
wait()
end
end
end)

----
prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45))

----



-----------
Torso = Instance.new("Part", Char)
Torso.formFactor = "Symmetric"
Torso.BrickColor = BrickColor.new("Toothpaste")
Torso.Size = Char.Torso.Size
Torso.Transparency = 1
Torso.Reflectance = 0.5
Torso:BreakJoints()
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Char["Torso"]
Torsow.Part1 = Torso
Torsow.C1 = CFrame.Angles(0,math.rad(0),0)
Hw = Instance.new("Weld", Torso)
Hw.Part0 = Torso
Hw.Part1 = Char.Head
Hw.C1 = CFrame.new(0,-1.5,0)

------------


if script.Parent.className ~= "HopperBin" then 
knife = Instance.new("HopperBin") 
knife.Parent = User.Backpack 
knife.Name = "Staff" 
script.Parent = knife 
end


function Spin()
haw.Part1 = Char["Right Arm"]


Torso.Transparency = 0
Char.Torso.Transparency = 1
Char.Torso["Right Shoulder"].Part0 = Torso
Char.Torso["Right Hip"].Part0 = Torso
Char.Torso["Left Shoulder"].Part0 = Torso
Char.Torso["Left Hip"].Part0 = Torso
haw.C0 = CFrame.Angles(0,0,math.rad(90))
for i = 1,3 do
for i = 1,380,20 do
Torsow.C1 = CFrame.Angles(0,math.rad(i),0)
wait()
end
end

haw.Part1 = nil

haw.C0 = CFrame.Angles(0,0,math.rad(0))
Torso.Transparency = 1
Char.Torso.Transparency = 0
Char.Torso["Right Shoulder"].Part0 = Char.Torso
Char.Torso["Right Hip"].Part0 = Char.Torso
Char.Torso["Left Shoulder"].Part0 = Char.Torso
Char.Torso["Left Hip"].Part0 = Char.Torso

end

function Equip()

haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-i),math.rad(i),0)
wait()
end

prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45-i),0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
end

function UnEquip()

haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-i),math.rad(i),0)
wait()
end

prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45))

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45-i),0)
wait()
end

haw.Part1 = nil
haw2.Part1 = nil

end


function Lightning(hit, m)

local mag = math.floor((hit - prt2.Position).magnitude)
local part_size = mag/5

if m.Target.Parent:findFirstChild("Humanoid") then
m.Target.Parent.Humanoid.Health = m.Target.Parent.Humanoid.Health - m.Target.Parent.Humanoid.MaxHealth/3
end

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = prt2
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.Position - hit).magnitude) 
P.CFrame = CFrame.new((Place0.Position + hit)/2,Place0.Position) 
P.Parent = Char
P.BrickColor = prt1.BrickColor
P.Transparency = 0
P.Reflectance = 0.5
P.Anchored = true 
P.CanCollide = false 
m6 = Instance.new("BlockMesh", P) 
m6.Scale = Vector3.new(0.6,0.6,1)
wait(0.1)
delay(0, function()
for i = 1,10,2 do
P.Transparency = i/10
P.Reflectance = 0
wait()
end
P:Remove()
end)
end


---------------------------------------------------------------------------------------
function spark(A,B)
    Hit = A.CFrame
    local P = Instance.new("Part") 
    P.Name = "Guideline" 
    local Place0 = B.CFrame 
    P.formFactor = 0 
    P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
    P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
    P.Parent = script.Parent.Parent
    P.BrickColor = BrickColor.Black()
    P.Anchored = true 
    P.CanCollide = false
    P.Transparency = 1
    m = Instance.new("BlockMesh")
    m.Scale = Vector3.new(0.1,0.1,1)
    m.Parent = P
    mh = A.CFrame
    for c1 = 1, 3 do
        oldHit = B.CFrame
        for count = 1, 30 do
            val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
            val2 = P.Size.z / 10
            val3 = P.CFrame.lookVector * -1
            val4 = count * val2
            val5 = val4 * val3
            val6 = B.CFrame.p
            Hit = CFrame.new(val5 + val1 + val6)
            local s = Instance.new("Part") 
            s.Name = "Spark" 
            local Place0 = oldHit
            s.formFactor = 0 
            s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
            s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
            s.Parent = script.Parent
            s.BrickColor = BrickColor.White()
            s.Anchored = true 
            s.CanCollide = false
            m = Instance.new("BlockMesh")
            m.Scale = Vector3.new(0.1,0.1,1)
            m.Parent = s
            clone = s:clone()
            clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
            clone.BrickColor = BrickColor.Blue()
            clone.Transparency = 0.8
            clone.Parent = s.Parent
            oldHit = Hit
        end
        Hit = oldHit
        local s = Instance.new("Part") 
        s.Name = "Spark" 
        local Place0 = mh
        s.formFactor = 0 
        s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
        s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
        s.Parent = script.Parent
        s.BrickColor = BrickColor.White()
        s.Anchored = true 
        s.CanCollide = false
        m = Instance.new("BlockMesh")
        m.Scale = Vector3.new(0.1,0.1,1)
        m.Parent = s
        clone = s:clone()
        clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
        clone.BrickColor = BrickColor.Blue()
        clone.Transparency = 0.8
        clone.Parent = s.Parent
        wait(0.5)
    end
    P:remove()
end
--Lightning = Instance.new("Model", Char)
function PlaceL(BB)
coroutine.resume(coroutine.create(function()
local PA = Instance.new("Part")
PA.Anchored = true
PA.Locked = true
PA.CanCollide = false
PA.Transparency = 1
PA.Size = Vector3.new(0.1,0.1,0.1)
PA.Parent = Lightning
PA.CFrame = CFrame.new(BB.x,BB.y,BB.z)
spark(prt2,PA)
for i = 1,10 do wait()
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Transparency = v.Transparency + 0.1
end
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v:Remove()
end
end
end))
end
---------------------------------------------------------------------------------------

function SlashClick()
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]


for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(i),0)
wait()
end

---
local sound = Instance.new("Sound", Char.Head)
sound.SoundId = "rbxasset://sounds\\swordslash.wav"
sound.Pitch = 0.9
sound.PlayOnRemove = true
wait()
sound.Parent = nil
---
for i = 1,45,5 do
haw.C0 = CFrame.Angles(math.rad(45+i),math.rad(45),0)
wait()
end
for i = 1,135,15 do
haw.C0 = CFrame.Angles(math.rad(90-i),math.rad(45),0)
wait()
end
for i = 1,90,10 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45),0)
wait()
end

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(45-i),math.rad(45-i),0)
wait()
end

haw.Part1 = nil
haw2.Part1 = nil
end


script.Parent.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(k)
if k == "e" and moving == false then
moving = true
SlashClick()
moving = false

--elseif k == "q" and moving == false then
--Spin()
end
end)
mouse.Button1Down:connect(function()
Light_ = true
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(i),0)
wait()
end
repeat wait(0.5)
delay(0, function()
Lightning(mouse.hit.p, mouse)
end)
until Light_ == false
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(45-i),math.rad(45-i),0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
 
end)

mouse.Button1Up:connect(function()
Light_ = false

end)

Equip()
end)

script.Parent.Deselected:connect(function(mouse)
UnEquip()
end)

for i,v in pairs(Char:children()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
end
end

for i,v in pairs(Char:children()) do
if v:IsA("Part") then

for _,o in pairs(v:children()) do
if o:IsA("SpecialMesh") and o.Scale == Vector3.new(0.25/2,0.25,0.25/2) then
v.BrickColor = BrickColor.new("Toothpaste")
end
end

end
end

prt3.BrickColor = BrickColor.new("Toothpaste")

prt2.BrickColor = BrickColor.new("Toothpaste")
