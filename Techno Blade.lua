Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=15789533"
Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=15792046"
if Head:findFirstChild("face") then 
Head:findFirstChild("face"):Destroy()
end
if Torso:findFirstChild("roblox") then 
Torso:findFirstChild("roblox"):Destroy()
end
player = nil
 
RSH, LSH = nil, nil
 
RW, LW = Instance.new("Weld"), Instance.new("Weld")
 
anim = "none"
running = false
 
if Character:findFirstChild("Sword",true) ~= nil then
Character:findFirstChild("Sword",true).Parent = nil
end
mode = "Swing1"
category = 1
Ran = false
eq = false
Activated = false
effect = false
deb = false
 
for iii,eee in pairs(Character:GetChildren()) do
if eee.className == "Hat" then
eee.Handle.Mesh.VertexColor = Vector3.new(0.1,0.1,0.1)
end
end
 
for iii,eee in pairs(Character:GetChildren()) do
if eee.className == "Part" and eee.Name ~= "Head" then
eee.BrickColor = BrickColor.new("White")
end
end
 
Head.BrickColor = BrickColor.new("Dark stone grey")
 
 
--\Assets
local asset = "http://roblox.com/asset/?id=" 
meshids = {
    ["penguin"] = 15853464, 
    ["ring"] = 3270017,
    ["spike"] = 1033714,
    ["cone"] = 1082802,
    ["crown"] = 20329976,
    ["crossbow"] = 15886761,
    ["cloud"] = 1095708,
    ["mjolnir"] = 1279013,
    ["diamond"] = 9756362, 
    ["hand"] = 37241605,
    ["fist"] = 65322375,
    ["skull"] = 36869983,
    ["totem"] = 35624068,
    ["spikeb"] = 9982590,
    ["dragon"] = 58430372,
    ["fish"] = 31221717, 
    ["coffee"] = 15929962,
    ["spiral"] = 1051557,
    ["ramen"] = 19380188,
    ["lightning"] = 72583597,
    ["bullet"]=2697549,
    ["Ares"]=50798664,
    ["Tex"]=52389512
}
--\Sounds
local sounds = {
    Gun = "2760979", 
    Gun2 = "10209859", 
    Click = "12222076", 
    Imbue = "2785493", 
    Ele = "2800815", 
    Curse = "13775494", 
    Slash = "rbxasset://sounds/swordslash.wav", 
    Bow = "16211041" ,
    SpellCharge = "1369158",
    SpellDischarge = "2974000",
    Rocket = "rbxasset://sounds/Rocket shot.wav"
} 
--\Sound function
function sound(id) 
    local sound = Instance.new("Sound", Torso) 
    sound.SoundId = id 
    sound.Volume = 0.5 
    sound:play() 
    sound:stop() 
    wait() 
    sound:play() 
        coroutine.resume(coroutine.create(function() 
        wait(1) 
        sound:remove() 
    end)) 
end 
--\Part creation function
function create(prt, parent, siz, cf, can, col, anc, brea, tran, ref, form, weld, part1, cf2, mesh, sca, type, id, bckup) 
    part = Instance.new(prt) 
    part.formFactor = form 
    part.BrickColor = BrickColor.new(col) 
    part.Size = siz 
    part.Anchored = anc 
    part.Transparency = tran 
    part.Name = "ShipPart" 
    part.Reflectance = ref 
    part.CFrame = cf 
    part.CanCollide = can 
    part.TopSurface = "Smooth" 
    part.BottomSurface = "Smooth" 
        if brea == true then 
        part:BreakJoints() 
    end 
        if weld == true then 
    weld = Instance.new("Weld") 
    weld.Part0 = part 
    weld.Part1 = part1 
    weld.C1 = cf2 
    weld.Parent = part 
    end 
        if mesh ~= nil then 
        mesh = Instance.new(mesh) 
        mesh.Scale = sca 
            if bckup == true then 
            mesh.MeshType = "Sphere" 
        end 
            if mesh == "SpecialMesh" then 
            mesh.MeshType = type 
                pcall(function() 
                    if type == "Wedge" then 
                    mesh.MeshType = "Wedge" 
                end 
                    if type == "FileMesh" then 
                    mesh.MeshType = "FileMesh" 
                    mesh.MeshId = id 
                end 
            end)
        end 
    mesh.Parent = part 
end 
part.Parent = parent 
        return part,weld 
end 
 
 
 
 
 
 
local swordholder = Instance.new("Model")
swordholder.Name = "Sword"
swordholder.Parent = Character
 
 
local handle = Instance.new("Part")
handle.formFactor = 1
handle.CanCollide = false
handle.Name = "Handle1"
handle.Locked = true
handle.Size = Vector3.new(1,1,1)
handle.Parent = swordholder
local msh1 = Instance.new("SpecialMesh")
msh1.Scale = Vector3.new(0.4,1,0.2)
msh1.Parent = handle
msh1.MeshType = "Brick"
handle.Transparency = 0
handle.Reflectance = 0.3
handle.BrickColor = BrickColor.new("Mid grey")
 
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = handle
w1.Part1 = Torso
w1.C0 = CFrame.new(-0.7, -2, -0.7) --* CFrame.Angles(0, 0, 1) 
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 3.7) 
 
function Swing1(hit)
if hit.Parent:findFirstChild("Humanoid") then
if Activated == true then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(math.random(10,50))
end
end
end
handle.Touched:connect(Swing1)
 
function fk2()
 ------HEAD----------
 
local handlea = Instance.new("Part")
handlea.formFactor = 1
handlea.CanCollide = false
handlea.Name = "Handle1"
handlea.Locked = true
handlea.Size = Vector3.new(1,1,1)
handlea.Parent = swordholder
local msh1a = Instance.new("SpecialMesh")
msh1a.Parent = handlea
msh1a.MeshType = "Head"
msh1a.Scale = Vector3.new(3,0.8,1.1)
handlea.Transparency = 0
handlea.Reflectance = 0.05
--CapandScarf
handlea.BrickColor = BrickColor.new("White")
 
local w1a = Instance.new("Weld")
w1a.Parent = handlea
w1a.Part0 = handlea
w1a.Part1 = Head
w1a.C0 = CFrame.new(0,0.2,0.1) --* CFrame.Angles(0, 0, 1) 
w1a.C0 = w1a.C0 * CFrame.Angles(0, 0, 0) 
 
 
local handlea = Instance.new("Part")
handlea.formFactor = 1
handlea.CanCollide = false
handlea.Name = "Handle1"
handlea.Locked = true
handlea.Size = Vector3.new(1,1,1)
handlea.Parent = swordholder
local msh1a = Instance.new("SpecialMesh")
msh1a.Parent = handlea
msh1a.MeshType = "Head"
msh1a.Scale = Vector3.new(3,0.8,1.1)
handlea.Transparency = 0
handlea.Reflectance = 0.05
--CapandScarf
handlea.BrickColor = BrickColor.new("White")
 
local w1a = Instance.new("Weld")
w1a.Parent = handlea
w1a.Part0 = handlea
w1a.Part1 = Head
w1a.C0 = CFrame.new(-0.1,0.1,0) --* CFrame.Angles(0, 0, 1) 
w1a.C0 = w1a.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
local handlea = Instance.new("Part")
handlea.formFactor = 1
handlea.CanCollide = false
handlea.Name = "Handle1"
handlea.Locked = true
handlea.Size = Vector3.new(1,1,1)
handlea.Parent = swordholder
local msh1a = Instance.new("SpecialMesh")
msh1a.Parent = handlea
msh1a.MeshType = "Head"
msh1a.Scale = Vector3.new(3,0.8,1.1)
handlea.Transparency = 0
handlea.Reflectance = 0.05
--CapandScarf
handlea.BrickColor = BrickColor.new("White")
 
local w1a = Instance.new("Weld")
w1a.Parent = handlea
w1a.Part0 = handlea
w1a.Part1 = Head
w1a.C0 = CFrame.new(0.1,0.1,0) --* CFrame.Angles(0, 0, 1) 
w1a.C0 = w1a.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local handlea = Instance.new("Part")
handlea.formFactor = 1
handlea.CanCollide = false
handlea.Name = "Handle1"
handlea.Locked = true
handlea.Size = Vector3.new(1,1,1)
handlea.Parent = swordholder
local msh1a = Instance.new("SpecialMesh")
msh1a.Parent = handlea
msh1a.MeshType = "Head"
msh1a.Scale = Vector3.new(3,0.8,1.1)
handlea.Transparency = 0
handlea.Reflectance = 0.05
--CapandScarf
handlea.BrickColor = BrickColor.new("White")
 
local w1a = Instance.new("Weld")
w1a.Parent = handlea
w1a.Part0 = handlea
w1a.Part1 = Head
w1a.C0 = CFrame.new(0,0.2,-0.1) --* CFrame.Angles(0, 0, 1) 
w1a.C0 = w1a.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
 
 
 
 
end
 
fk2()
 
 
function ht2(hit)
if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= Character.Name then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(math.random(20,30))
hit.Parent:findFirstChild("Humanoid").Sit = true
end
end
 
---------------------------------
function t()
local p19 = Instance.new("Part")
p19.formFactor = 1
p19.CanCollide = false
p19.Name = "p19"
p19.Locked = true
p19.Size = Vector3.new(1,1,1)
p19.Parent = swordholder
local msh39 = Instance.new("SpecialMesh")
msh39.Scale = Vector3.new(2,1.2,2.5)
msh39.Parent = p19
msh39.MeshId = "http://www.roblox.com/asset/?id=50798664"
msh39.TextureId = "http://www.roblox.com/asset/?id=52389512"
p19.Transparency = 0
p19.Reflectance = 0.3
p19.BrickColor = BrickColor.new("Mid grey")
p19.Touched:connect(ht2)
local w29 = Instance.new("Weld")
w29.Parent = p19
w29.Part0 = p19
w29.Name = "W29"
w29.Part1 = Torso
w29.C0 = CFrame.new(-0.7, 1.2, -1)
w29.C0 = w29.C0 * CFrame.Angles(-0.2, -0.5, 1.3) 
 
 
 
end
 
 
 
t()
------------------------------------------------------
 
local p1 = Instance.new("Part")
p1.formFactor = 1
p1.CanCollide = false
p1.Name = "p1"
p1.Locked = true
p1.Size = Vector3.new(1,1,1)
p1.Parent = swordholder
local msh3 = Instance.new("SpecialMesh")
msh3.Scale = Vector3.new(1.5,0.3,0.2)
msh3.Parent = p1
msh3.MeshType = "Brick"
p1.Transparency = 0
p1.Reflectance = 0.3
p1.BrickColor = BrickColor.new("Mid grey")
 
local w2 = Instance.new("Weld")
w2.Parent = p1
w2.Part0 = p1
w2.Part1 = handle
w2.C0 = CFrame.new(0, 0.7, 0) --* CFrame.Angles(0, 0, 1) 
w2.C0 = w2.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local p2 = Instance.new("Part")
p2.formFactor = 1
p2.CanCollide = false
p2.Name = "p2"
p2.Locked = true
p2.Size = Vector3.new(1,1,1)
p2.Parent = swordholder
local msh4 = Instance.new("SpecialMesh")
msh4.Scale = Vector3.new(0.3,0.25,0.1)
msh4.Parent = p2
msh4.MeshType = "Wedge"
p2.Transparency = 0
p2.Reflectance = 0.3
p2.BrickColor = BrickColor.new("Mid grey")
 
local w3 = Instance.new("Weld")
w3.Parent = p2
w3.Part0 = p2
w3.Part1 = p1
w3.C0 = CFrame.new(0.85, -0.25, 0.04) --* CFrame.Angles(0, 0, 1) 
w3.C0 = w3.C0 * CFrame.Angles(3.15, 0, 0) 
 
local p22 = Instance.new("Part")
p22.formFactor = 1
p22.CanCollide = false
p22.Name = "p22"
p22.Locked = true
p22.Size = Vector3.new(1,1,1)
p22.Parent = swordholder
local msh44 = Instance.new("SpecialMesh")
msh44.Scale = Vector3.new(0.3,0.25,0.1)
msh44.Parent = p22
msh44.MeshType = "Wedge"
p22.Transparency = 0
p22.Reflectance = 0.3
p22.BrickColor = BrickColor.new("Mid grey")
 
local w33 = Instance.new("Weld")
w33.Parent = p22
w33.Part0 = p22
w33.Part1 = p1
w33.C0 = CFrame.new(-0.85, -0.25, 0.04) --* CFrame.Angles(0, 0, 1) 
w33.C0 = w33.C0 * CFrame.Angles(3.15, 3.15, 0) 
 
 
local p3 = Instance.new("Part")
p3.formFactor = 1
p3.CanCollide = false
p3.Name = "p3"
p3.Locked = true
p3.Size = Vector3.new(1,1,1)
p3.Parent = swordholder
local msh5 = Instance.new("BlockMesh")
msh5.Scale = Vector3.new(0.3,0.25,0.1)
msh5.Parent = p3
p3.Transparency = 0
p3.Reflectance = 0.3
p3.BrickColor = BrickColor.new("Mid grey")
 
local w4 = Instance.new("Weld")
w4.Parent = p3
w4.Part0 = p3
w4.Part1 = p1
w4.C0 = CFrame.new(0.85, 0, 0) --* CFrame.Angles(0, 0, 1) 
w4.C0 = w4.C0 * CFrame.Angles(0, 0, 0) 
 
 
local p33 = Instance.new("Part")
p33.formFactor = 1
p33.CanCollide = false
p33.Name = "p3"
p33.Locked = true
p33.Size = Vector3.new(1,1,1)
p33.Parent = swordholder
local msh55 = Instance.new("BlockMesh")
msh55.Scale = Vector3.new(0.3,0.25,0.1)
msh55.Parent = p33
p33.Transparency = 0
p33.Reflectance = 0.3
p33.BrickColor = BrickColor.new("Mid grey")
 
local w44 = Instance.new("Weld")
w44.Parent = p33
w44.Part0 = p33
w44.Part1 = p1
w44.C0 = CFrame.new(-0.85, 0, 0) --* CFrame.Angles(0, 0, 1) 
w44.C0 = w44.C0 * CFrame.Angles(0, 0, 0) 
 
 
local p222 = Instance.new("Part")
p222.formFactor = 1
p222.CanCollide = false
p222.Name = "p222"
p222.Locked = true
p222.Size = Vector3.new(1,1,1)
p222.Parent = swordholder
local msh444 = Instance.new("SpecialMesh")
msh444.Scale = Vector3.new(0.3,0.25,0.1)
msh444.Parent = p222
msh444.MeshType = "Wedge"
p222.Transparency = 0
p222.Reflectance = 0.3
p222.BrickColor = BrickColor.new("Mid grey")
 
local w333 = Instance.new("Weld")
w333.Parent = p222
w333.Part0 = p222
w333.Part1 = p1
w333.C0 = CFrame.new(0.85, -0.25, 0.04) --* CFrame.Angles(0, 0, 1) 
w333.C0 = w333.C0 * CFrame.Angles(3.15, 3.15, 0) 
 
local p2222 = Instance.new("Part")
p2222.formFactor = 1
p2222.CanCollide = false
p2222.Name = "p2222"
p2222.Locked = true
p2222.Size = Vector3.new(1,1,1)
p2222.Parent = swordholder
local msh4444 = Instance.new("SpecialMesh")
msh4444.Scale = Vector3.new(0.3,0.25,0.1)
msh4444.Parent = p2222
msh4444.MeshType = "Wedge"
p2222.Transparency = 0
p2222.Reflectance = 0.3
p2222.BrickColor = BrickColor.new("Mid grey")
 
local w3333 = Instance.new("Weld")
w3333.Parent = p2222
w3333.Part0 = p2222
w3333.Part1 = p1
w3333.C0 = CFrame.new(-0.85, -0.25, 0.04) --* CFrame.Angles(0, 0, 1) 
w3333.C0 = w3333.C0 * CFrame.Angles(3.15, 0, 0) 
 
 
 
local p4 = Instance.new("Part")
p4.formFactor = 1
p4.CanCollide = false
p4.Name = "p4"
p4.Locked = true
p4.Size = Vector3.new(1,1,1)
p4.Parent = swordholder
local msh5 = Instance.new("BlockMesh")
msh5.Scale = Vector3.new(1.5,4.5,0.15)
msh5.Parent = p4
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4.Transparency = 0
p4.Reflectance = 0.2
p4.BrickColor = BrickColor.new("Dark stone grey")
 
 
 
local w5 = Instance.new("Weld")
w5.Parent = p4
w5.Part0 = p4
w5.Part1 = p1
w5.C0 = CFrame.new(0, 2.8, 0) --* CFrame.Angles(0, 0, 1) 
w5.C0 = w5.C0 * CFrame.Angles(0, 0, 0) 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(1.6,0.9,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.9,0.4)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(1.58,0,-0.6)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.9,0.4)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(-0.2,0,-0.6)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.5,0.45,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(1.45,0,-0.3)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
 
 
 
local p5 = Instance.new("Part")
p5.formFactor = 1
p5.CanCollide = false
p5.Name = "p5"
p5.Locked = true
p5.Size = Vector3.new(1,1,1)
p5.Parent = swordholder
local msh6 = Instance.new("SpecialMesh")
msh6.Scale = Vector3.new(0.15,1,1.5)
msh6.Parent = p5
msh6.MeshType = "Wedge"
--msh6.TextureId = "http://www.roblox.com/asset/?id=12352036"
p5.Transparency = 0
p5.Reflectance = 0.2
p5.BrickColor = BrickColor.new("Dark stone grey")
 
local w6 = Instance.new("Weld")
w6.Parent = p5
w6.Part0 = p5
w6.Part1 = p4
w6.C0 = CFrame.new(0, -3.295, -0.02) --* CFrame.Angles(0, 0, 1) 
w6.C0 = w6.C0 * CFrame.Angles(0, 1.575, 3.15) 
 
 
 
 
 
 
 
----PARTS
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.4,0.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 0.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
local p4bb = Instance.new("Part")
p4bb.formFactor = 1
p4bb.CanCollide = false
p4bb.Name = "p4b"
p4bb.Locked = true
p4bb.Size = Vector3.new(1,1,1)
p4bb.Parent = swordholder
local msh5bb = Instance.new("BlockMesh")
msh5bb.Scale = Vector3.new(0.15,0.5,0.17)
msh5bb.Parent = p4bb
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4bb.Transparency = 0
p4bb.Reflectance = 0.4
p4bb.BrickColor = BrickColor.new("Black")
 
 
 
local w5bb = Instance.new("Weld")
w5bb.Parent = p4bb
w5bb.Part0 = p4bb
w5bb.Part1 = p4b
w5bb.C0 = CFrame.new(-0.1, 0.6, 0) --* CFrame.Angles(0, 0, 1) 
w5bb.C0 = w5bb.C0 * CFrame.Angles(0, 0, 0.9) 
 
 
local p4bb = Instance.new("Part")
p4bb.formFactor = 1
p4bb.CanCollide = false
p4bb.Name = "p4b"
p4bb.Locked = true
p4bb.Size = Vector3.new(1,1,1)
p4bb.Parent = swordholder
local msh5bb = Instance.new("BlockMesh")
msh5bb.Scale = Vector3.new(0.15,0.5,0.17)
msh5bb.Parent = p4bb
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4bb.Transparency = 0
p4bb.Reflectance = 0.4
p4bb.BrickColor = BrickColor.new("Black")
 
 
 
local w5bb = Instance.new("Weld")
w5bb.Parent = p4bb
w5bb.Part0 = p4bb
w5bb.Part1 = p4b
w5bb.C0 = CFrame.new(0.1, 0.6, 0) --* CFrame.Angles(0, 0, 1) 
w5bb.C0 = w5bb.C0 * CFrame.Angles(0, 0, -0.9) 
 
 
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.6, 1.35, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.6, 1.35, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.15,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-1.7, 0.65, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0.9) 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.15,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(1.7, 0.65, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, -0.9) 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,1.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.4, 2.35, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,1.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.4, 2.35, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
local p4bb = Instance.new("Part")
p4bb.formFactor = 1
p4bb.CanCollide = false
p4bb.Name = "p4bb"
p4bb.Locked = true
p4bb.Size = Vector3.new(1,1,1)
p4bb.Parent = swordholder
local msh5bb = Instance.new("SpecialMesh")
msh5bb.Scale = Vector3.new(0.5,0.4,0.5)
msh5bb.Parent = p4bb
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5bb.MeshType = "Sphere"
p4bb.Transparency = 0
p4bb.Reflectance = 0.5
p4bb.BrickColor = BrickColor.new("Black")
 
 
 
local w5bb = Instance.new("Weld")
w5bb.Parent = p4bb
w5bb.Part0 = p4bb
w5bb.Part1 = p1
w5bb.C0 = CFrame.new(0, 1.2, 0) --* CFrame.Angles(0, 0, 1) 
w5bb.C0 = w5bb.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.99,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0.1
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.28,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.99,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0.1
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(-0.28,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535)
 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.99,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0.1
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(1.09,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535)
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("BlockMesh")
msh5a.Scale = Vector3.new(0.2,0.99,0.2)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4a.Transparency = 0
p4a.Reflectance = 0.1
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(1.66,0,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535)
 
 
----Spheres
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.19,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535)
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.17,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.2,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.05,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.1,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
 
 
local p4a = Instance.new("Part")
p4a.formFactor = 1
p4a.CanCollide = false
p4a.Name = "p4a"
p4a.Locked = true
p4a.Size = Vector3.new(1,1,1)
p4a.Parent = swordholder
local msh5a = Instance.new("SpecialMesh")
msh5a.Scale = Vector3.new(0.6,0.55,0.6)
msh5a.Parent = p4a
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
msh5a.MeshType = "Sphere"
p4a.Transparency = 0
p4a.Reflectance = 0
p4a.BrickColor = BrickColor.new("Black")
 
local w5a = Instance.new("Weld")
w5a.Parent = p4a
w5a.Part0 = p4a
w5a.Part1 = Torso
w5a.C0 = CFrame.new(0.695,-0.275,-0.7)
w5a.C0 = w5a.C0 * CFrame.Angles(0, 0, 0.535) 
 
------------------------
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.2,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.25, 3.23, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.2,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.25, 3.23, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.5,0.15,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.5, 3.6, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.5,0.15,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.5, 3.6, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.1,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 3.13, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.05,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.2, 3.59, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.05,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.2, 3.59, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0) 
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.04,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.6, 3.27, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.04,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.6, 3.27, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.5, 3.99, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.5,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.5, 3.99, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.22,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.285, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.22,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.285, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.05,0.05,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.6, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.05,0.05,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.6, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.03,0.05,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.41, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.03,0.05,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.41, 3.89, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.15,0.13,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 4.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.38,0.025,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.2, 4.0835, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.38,0.025,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.2, 4.0835, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.025,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 4.25, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.025,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 4.55, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.12,0.025,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.15, 4.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.12,0.025,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.15, 4.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.009,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 4.13, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.009,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 4.67, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.009,0.25,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.25, 4.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.009,0.25,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.25, 4.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(1,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0, 5.4, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.585,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.28, 5, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
function fk()
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.35,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.18, 5.139, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.25,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.03, 5.208, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.1,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.40, 5.3, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.06,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.1, 5.315, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.4,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.03, 5.11, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.2,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.2, 5.23, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.01,0.18,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.35, 5.25, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.65, 5.2, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.65, 4.9, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.65, 4.6, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.65, 5.2, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.65, 4.9, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.21,0.08,0.17)
msh5b.Parent = p4b
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Black")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.65, 4.6, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(0.3,0.25,0.16)
msh5b.Parent = p4b
msh5b.MeshType = "Head"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(0.3, 0, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(1.5, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(0.3,0.25,0.16)
msh5b.Parent = p4b
msh5b.MeshType = "Head"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.3, 0, 0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(1.5, 0, 0)
 
 
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(0.5,0.165,0.5)
msh5b.Parent = p4b
msh5b.MeshType = "Head"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.45, 0.06, 6) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(1.56, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(0.1,0.165,0.1)
msh5b.Parent = p4b
msh5b.MeshType = "Head"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.67, 0.06, 6.17) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(1.56, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(0.2,0.17,0.2)
msh5b.Parent = p4b
msh5b.MeshType = "Head"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0.4
p4b.BrickColor = BrickColor.new("Institutional white")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = p1
w5b.C0 = CFrame.new(-0.5, 0.06, 6.05) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(1.56, 0, 0)
 
 
 
 
 
 
 
 
----------------------------Stuff
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("SpecialMesh")
msh5b.Scale = Vector3.new(1.3,0.5,0.6)
msh5b.Parent = p4b
msh5b.MeshType = "Sphere"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0
p4b.BrickColor = BrickColor.new("Reddish brown")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = Torso
w5b.C0 = CFrame.new(-0.7, 0.7, -0.7) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(1.15,0.18,0.4)
msh5b.Parent = p4b
--msh5b.MeshType = "Sphere"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0
p4b.BrickColor = BrickColor.new("Reddish brown")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = Torso
w5b.C0 = CFrame.new(-0.7, 0.5, -0.7) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Instance.new("BlockMesh")
msh5b.Scale = Vector3.new(0.1,0.1,0.1)
msh5b.Parent = p4b
--msh5b.MeshType = "Sphere"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0
p4b.Reflectance = 0
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = Torso
w5b.C0 = CFrame.new(-0.7, 0.5, -0.9) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
local p4b = Instance.new("Part")
 
 
for i = 1, 20 do
 
local p4b = Instance.new("Part")
p4b.formFactor = 1
p4b.CanCollide = false
p4b.Name = "p4b"
p4b.Locked = true
p4b.Size = Vector3.new(1,1,1)
p4b.Parent = swordholder
local msh5b = Head.Mesh:clone()
msh5b.Scale = Head.Mesh.Scale + Vector3.new(0.01+i*2/100,0.01,0.01+i*2/100)
msh5b.Parent = p4b
--msh5b.MeshType = "Sphere"
--msh5.TextureId = "http://www.roblox.com/asset/?id=12352036"
--msh3.MeshType = "Brick"
p4b.Transparency = 0.56+i/10/2
p4b.Reflectance = 0
p4b.BrickColor = BrickColor.new("White")
 
 
 
local w5b = Instance.new("Weld")
w5b.Parent = p4b
w5b.Part0 = p4b
w5b.Part1 = Head
w5b.C0 = CFrame.new(0,0,0) --* CFrame.Angles(0, 0, 1) 
w5b.C0 = w5b.C0 * CFrame.Angles(0, 0, 0)
 
wait()
end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
--shurikens
 
local shuriken1 = Instance.new("Part")
shuriken1.formFactor = 1
shuriken1.CanCollide = false
shuriken1.Name = "shuriken1"
shuriken1.Locked = true
shuriken1.Size = Vector3.new(1,1,1)
shuriken1.Parent = swordholder
local shmesh = Instance.new("SpecialMesh")
shmesh.Scale = Vector3.new(0.5,0.5,0.5)
shmesh.Parent = shuriken1
--shmesh.MeshType = "FileMesh"
shmesh.MeshId = "http://www.roblox.com/asset/?id=22768172"
--msh3.MeshType = "Brick"
shuriken1.Transparency = 0.8
shuriken1.Reflectance = 0
shuriken1.BrickColor = BrickColor.new("Bright blue")
 
 
 
local shw = Instance.new("Weld")
shw.Parent = shuriken1
shw.Part0 = shuriken1
shw.Part1 = Torso
shw.Name = "SWeld1"
shw.C0 = CFrame.new(-0.6, 0.5, -0.2) --* CFrame.Angles(0, 0, 1) 
shw.C0 = shw.C0 * CFrame.Angles(1.5, 0, 0)
 
local shuriken2 = Instance.new("Part")
shuriken2.formFactor = 1
shuriken2.CanCollide = false
shuriken2.Name = "shuriken2"
shuriken2.Locked = true
shuriken2.Size = Vector3.new(1,1,1)
shuriken2.Parent = swordholder
local shmesh2 = Instance.new("SpecialMesh")
shmesh2.Scale = Vector3.new(0.5,0.5,0.5)
shmesh2.Parent = shuriken2
--shmesh2.MeshType = "FileMesh"
shmesh2.MeshId = "http://www.roblox.com/asset/?id=22768172"
--msh3.MeshType = "Brick"
shuriken2.Transparency = 0.7
shuriken2.Reflectance = 0
shuriken2.BrickColor = BrickColor.new("Bright blue")
 
 
 
local shw2 = Instance.new("Weld")
shw2.Parent = shuriken2
shw2.Part0 = shuriken2
shw2.Name = "SWeld2"
shw2.Part1 = shuriken1
shw2.C0 = CFrame.new(0,0,0) --* CFrame.Angles(0, 0, 1) 
shw2.C0 = shw2.C0 * CFrame.Angles(0, 0.8, 0)
 
 
local shuriken3 = Instance.new("Part")
shuriken3.formFactor = 1
shuriken3.CanCollide = false
shuriken3.Name = "shuriken3"
shuriken3.Locked = true
shuriken3.Size = Vector3.new(1,1,1)
shuriken3.Parent = swordholder
local shmesh3 = Instance.new("SpecialMesh")
shmesh3.Scale = Vector3.new(0.5,0.5,0.5)
shmesh3.Parent = shuriken3
--shmesh3.MeshType = "FileMesh"
shmesh3.MeshId = "http://www.roblox.com/asset/?id=22768172"
--msh3.MeshType = "Brick"
shuriken3.Transparency = 0.6
shuriken3.Reflectance = 0
shuriken3.BrickColor = BrickColor.new("Bright blue")
 
 
 
local shw3 = Instance.new("Weld")
shw3.Parent = shuriken3
shw3.Part0 = shuriken3
shw3.Name = "SWeld3"
shw3.Part1 = shuriken1
shw3.C0 = CFrame.new(0,0,0) --* CFrame.Angles(0, 0, 1) 
shw3.C0 = shw3.C0 * CFrame.Angles(0, 0.8, 0)
 
--------------------
 
 
 
-----------End
 
 
 
 
 
 
end
 
fk()
 
 
 
 
 
 
 
 
 
 
 
 
 
-------
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
-----------
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
--function runlikeabitch()
--wait()
--if Ran == true then
--j = Instance.new("Part")
--j.Parent = workspace
--j.Size = Vector3.new(1,2,1)
--j.CFrame = p5.CFrame
--j.CanCollide = false
--j.Anchored = false
--j.CFrame = j.CFrame * CFrame.Angles(math.random(1,10),math.random(1,10),math.random(1,10))
--j.Transparency = 0.2
--j.BrickColor = BrickColor.new("Bright orange")
--jj = Instance.new("BlockMesh")
--jj.Parent = j
--jj.Scale = Vector3.new(0.2,0.8,0.2)
--end
--end
--Character.Humanoid.running:connect(runlikeabitch)
 
deb = false
 
function runlikeabitch2(hit)
if deb == false then
deb = true
wait()
if Ran == true then
if effect == true then
jl = Instance.new("Part")
jl.BrickColor = BrickColor.new("Dark stone grey")
jl.Parent = workspace
jl.Size = Vector3.new(1,4,1)
jl.Name = "effect"
jl.CFrame = p5.CFrame
jl.CanCollide = false
jl.Anchored = false
jl.CFrame = jl.CFrame * CFrame.Angles(math.random(1,5),math.random(1,5),math.random(1,5))
jl.Material = "Slate"
--jl.Velocity = jl.Velocity + jl.CFrame.lookVector *-50
--jj = Instance.new("BlockMesh")
--jj.Parent = jl
--jj.Scale = Vector3.new(1.2,1.5,1.2)
--jl.Transparency = 0
deb = false
end
end
end
end
p5.Touched:connect(runlikeabitch2)
 
 
 
 
function unequipweld()
w1.Part1 = Torso
w1.C0 = CFrame.new(-0.7, -2, -0.7) --* CFrame.Angles(0, 0, 1) 
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 3.7) 
end
 
 
function equipweld()
w1.Part1 = RightArm
w1.C0 = CFrame.new(0, 1.5, 0) --* CFrame.Angles(0, 0, 1) 
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 0) 
end
 
function ht(hit)
if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= Character.Name then
hit.Parent:findFirstChild("Humanoid"):TakeDamage(math.random(20,30))
hit.Parent:findFirstChild("Humanoid").Sit = true
end
end
 
 
 
 
 
function equips()
swordholder.shuriken1["SWeld1"].Part1 = Character["Right Arm"]
swordholder.shuriken2["SWeld2"].Part1 = Character["Right Arm"]
swordholder.shuriken3["SWeld3"].Part1 = Character["Right Arm"]
 
swordholder.shuriken1["SWeld1"].C0 = CFrame.new(0,1.4,0)
swordholder.shuriken2["SWeld2"].C0 = CFrame.new(0,1.4,0)
swordholder.shuriken3["SWeld3"].C0 = CFrame.new(0,1.4,0)
 
swordholder.shuriken1["SWeld1"].C0 = swordholder.shuriken1["SWeld1"].C0 * CFrame.Angles(0, 0, 0)
swordholder.shuriken2["SWeld2"].C0 = swordholder.shuriken2["SWeld2"].C0 * CFrame.Angles(0, 0.4, 0)
swordholder.shuriken3["SWeld3"].C0 = swordholder.shuriken3["SWeld3"].C0 * CFrame.Angles(0, 0.6, 0)
end
 
function unequips()
swordholder.shuriken1["SWeld1"].Part1 = Character["Torso"]
swordholder.shuriken2["SWeld2"].Part1 = swordholder.shuriken1
swordholder.shuriken3["SWeld3"].Part1 = swordholder.shuriken1
 
swordholder.shuriken1["SWeld1"].C0 = CFrame.new(-0.6, 0.5, -0.2)
swordholder.shuriken2["SWeld2"].C0 = CFrame.new(0,0,0)
swordholder.shuriken3["SWeld3"].C0 = CFrame.new(0,0,0)
 
swordholder.shuriken1["SWeld1"].C0 = swordholder.shuriken1["SWeld1"].C0 * CFrame.Angles(1.5, 0, 0)
swordholder.shuriken2["SWeld2"].C0 = swordholder.shuriken2["SWeld2"].C0 * CFrame.Angles(0, 0.8, 0)
swordholder.shuriken3["SWeld3"].C0 = swordholder.shuriken3["SWeld3"].C0 * CFrame.Angles(0, 0.8, 0)
end
 
function throws1()
 
        for i = 0 , 1 , 0.17 do
                wait()
swordholder.shuriken2["SWeld2"].C0 = swordholder.shuriken2["SWeld2"].C0 * CFrame.Angles(0, 0.4+2*i*5, 0)
swordholder.shuriken3["SWeld3"].C0 = swordholder.shuriken3["SWeld3"].C0 * CFrame.Angles(0, 0.8+2*i*5, 0)
swordholder.shuriken1.Mesh.Scale = swordholder.shuriken1.Mesh.Scale - Vector3.new(0.001+1*i/3,0.001+0.5*i/2,0.001+1*i/3)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken2.Mesh.Scale - Vector3.new(0.005+1*i/2,0.01+0.5*i/2,0.005+1*i/2)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken3.Mesh.Scale - Vector3.new(0.01+1*i/2,0.01+0.5*i/2,0.01+1*i/2)
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,5-4*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
ss = Instance.new("Sound")
ss.Parent = Torso
ss.Pitch = 0.9
ss.SoundId = "rbxasset://sounds/swordslash.wav"
ss.Volume = 2
ss:Play()
ss:Play()
swordholder.shuriken1.Transparency = 1
swordholder.shuriken2.Transparency = 1
swordholder.shuriken3.Transparency = 1
s1 = swordholder.shuriken1:clone()
s2 = swordholder.shuriken2:clone()
s3 = swordholder.shuriken3:clone()
s1.CanCollide = false
s1.Name = "WSH1"
s2.CanCollide = false
s3.CanCollide = false
s1.CFrame = Torso.CFrame + Vector3.new(-1.5,1,-1)
s1.Transparency = 0.5
s1.Parent = workspace
--s1.SWeld1:Destroy()
--s1.Velocity = s1.Velocity + s1.CFrame.lookVector *700
s2.CFrame = Torso.CFrame + Vector3.new(-1.5,1,-1)
s2.Transparency = 0.6
s2.Name = "WSH2"
s2.Parent = workspace
--s2.SWeld2:Destroy()
--s2.Velocity = s1.Velocity
s3.CFrame = Torso.CFrame + Vector3.new(-1.5,1,-1)
s3.Transparency = 0.7
s3.Parent = workspace
--s3.SWeld3:Destroy()
--s3.Velocity = s1.Velocity
s1.Mesh.Scale = Vector3.new(1,1,1)
s2.Mesh.Scale = Vector3.new(1.2,1.2,1.2)
s3.Name = "WSH3"
s3.Mesh.Scale = Vector3.new(1.3,1.3,1.3)
 
b = Instance.new("BodyPosition")
b.Parent = s1
b.D = 1000
b.P = 3000
b.maxForce = Vector3.new(4000,210,4000)
b.position = b.position + Head.CFrame.lookVector * 300
b = Instance.new("BodyPosition")
b.Parent = s2
b.D = 1000
b.P = 3000
b.maxForce = Vector3.new(4000,210,4000)
b.position = b.position + Head.CFrame.lookVector * 300
b = Instance.new("BodyPosition")
b.Parent = s3
b.D = 1000
b.P = 3000
b.maxForce = Vector3.new(4000,210,4000)
b.position = b.position + Head.CFrame.lookVector * 300
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
wait(0.7)
s = Instance.new("Sound")
s.Parent = s1
s.Pitch = 0.5
s.SoundId = "http://roblox.com/asset/?id=2760979"
s.Volume = 2
s:Play()
s:Play()
s = Instance.new("Sound")
s.Parent = s1
s.Pitch = 0.5
s.SoundId = "rbxasset://sounds/Rocket shot.wav"
s.Volume = 2
s:Play()
s:Play()
er = Instance.new("Explosion")
er.Parent = workspace
er.Position = s1.Position
er.BlastRadius = 30
er.BlastPressure = 10000
 
hhh = Instance.new("Part")
hhh.Parent = workspace
hhh.Size = Vector3.new(1,1,1)
hhh.CFrame = s1.CFrame
hhh.BrickColor = BrickColor.new("Bright blue")
hhh.CanCollide = false
hhh.Anchored = true
hhh.Transparency = 0.3
wm = Instance.new("SpecialMesh")
wm.Parent = hhh
wm.MeshId = "http://www.roblox.com/asset/?id=1051557"
wm.Scale = Vector3.new(1,1,1)
 
hhh2 = Instance.new("Part")
hhh2.Parent = workspace
hhh2.Size = Vector3.new(1,1,1)
hhh2.CFrame = s1.CFrame
hhh2.BrickColor = BrickColor.new("Bright blue")
hhh2.CanCollide = false
hhh2.Anchored = true
hhh2.Transparency = 0.3
wm2 = Instance.new("SpecialMesh")
wm2.Parent = hhh2
wm2.MeshType = "Sphere"
wm2.Scale = Vector3.new(1.25,1,1.25)
 
s1.Anchored = true
s2.Anchored = true
s3.Anchored = true
local wx = Instance.new("Weld")
wx.Parent = hhh
wx.Part0 = hhh
wx.Name = "wx"
wx.Part1 = s1
wx.C0 = CFrame.new(0,0,0) 
wx.C0 = wx.C0 * CFrame.Angles(0, 0, 0)
 
local wx2 = Instance.new("Weld")
wx2.Parent = hhh2
wx2.Part0 = hhh2
wx2.Name = "wx2"
wx2.Part1 = s1
wx2.C0 = CFrame.new(0,0,0) 
wx2.C0 = wx2.C0 * CFrame.Angles(0, 0, 0)
 
for i=1, 25 do
wait()
er = Instance.new("Explosion")
er.Parent = workspace
er.Position = s1.Position
er.BlastRadius = 30-i
er.BlastPressure = 10000
s1.Mesh.Scale = s1.Mesh.Scale + Vector3.new(0.001+1*i/6,0.001+0.5*i/4,0.001+1*i/6)
s2.Mesh.Scale = s2.Mesh.Scale + Vector3.new(0.005+1*i/5,0.01+0.5*i/4,0.005+1*i/5)
s3.Mesh.Scale = s3.Mesh.Scale + Vector3.new(0.01+1*i/4,0.01+0.5*i/4,0.01+1*i/4)
 
 
 
 
 
 
 
wm.Scale = wm.Scale + Vector3.new(1*i/2,1*i/2,1*i/2)
wm2.Scale = wm2.Scale + Vector3.new(1.25*i/2,1*i/2,1.25*i/2)
wx.C0 = wx.C0 * CFrame.Angles(2+2*i*5/2, 0, 0)
wx2.C0 = wx2.C0 * CFrame.Angles(2+2*i*5/2, 0, 0)
end
hhh:Destroy()
hhh2:Destroy()
s1:Destroy()
s2:Destroy()
s3:Destroy()
 
 
 
 
 
        --for i = 0 , 1 , 0.17 do
                --wait()
        --RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,2.93+1*i) ----math.rad(260)-math.rad(260)*i
                --RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        --end
wait()
 
unequips()
swordholder.shuriken1.Mesh.Scale = Vector3.new(0.5,0.5,0.5)
swordholder.shuriken2.Mesh.Scale = Vector3.new(0.5,0.5,0.5)
swordholder.shuriken3.Mesh.Scale = Vector3.new(0.5,0.5,0.5)
swordholder.shuriken1.Transparency = 0.8
swordholder.shuriken2.Transparency = 0.7
swordholder.shuriken3.Transparency = 0.6
eq = false
deb = false
Ran = false
for i,e in pairs(workspace:GetChildren()) do
if e.Name == "effect" then
e:Destroy()
end
end
 
end
 
 
function hideanim()
 
        for i = 0 , 1 , 0.075 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*-i*-3.2,-1 ,0-1.9*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(1-2.5*i, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.55-1.6*i,0 ,0,0525-0.7*i)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
 
 
w1.Part1 = Torso
w1.C0 = CFrame.new(-0.7, -2, -0.7) --* CFrame.Angles(0, 0, 1) 
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 3.7) 
unequips()
        for i = 0 , 1 , 0.085 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-1.2+1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
end
 
 
function equipanim()
 
        for i = 0 , 1 , 0.085 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-1+1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
wait(0.1)
 
        for i = 0 , 1 , 0.075 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i*3.2,-1 ,0+1.9*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(0,0.5, -1) * CFrame.fromEulerAnglesXYZ(0.25*i*3.2,0 ,0+1.5*i)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
end
 
function equipanim2()
        for i = 0 , 1 , 0.075 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0.25*i*3.2,-1 ,0+1.9*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(0,0.5, -1) * CFrame.fromEulerAnglesXYZ(0.25*i*3.2,0 ,0+1.5*i)
                LW.C1 = CFrame.new(0, 0.5, 0)
        end
end
 
 
 
-----------------
function attack1()
if eq == true then
eq = false
hideanim()
Ran = false
unequipweld()
        wait()    
end
 
 
        for i = 0 , 1 , 0.085 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-0.915-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
equips()
 
        for i = 0 , 1 , 0.085 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-1+1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
swordholder.shuriken2["SWeld2"].C0 = swordholder.shuriken2["SWeld2"].C0 * CFrame.Angles(0, 0.4+1*i*5, 0)
swordholder.shuriken3["SWeld3"].C0 = swordholder.shuriken3["SWeld3"].C0 * CFrame.Angles(0, 0.8+1*i*5, 0)
swordholder.shuriken1.Mesh.Scale = swordholder.shuriken1.Mesh.Scale + Vector3.new(0.001+1*i/3,0.001+0.5*i/3,0.001+1*i/3)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken2.Mesh.Scale + Vector3.new(0.005+1*i/2,0.01+0.5*i/2,0.005+1*i/2)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken3.Mesh.Scale + Vector3.new(0.01+1*i/2,0.01+0.5*i/2,0.01+1*i/2)
        end
 
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 
        for i = 0 , 1 , 0.17 do
                wait()
swordholder.shuriken2["SWeld2"].C0 = swordholder.shuriken2["SWeld2"].C0 * CFrame.Angles(0, 0.4+1*i*5, 0)
swordholder.shuriken3["SWeld3"].C0 = swordholder.shuriken3["SWeld3"].C0 * CFrame.Angles(0, 0.8+1*i*5, 0)
swordholder.shuriken1.Mesh.Scale = swordholder.shuriken1.Mesh.Scale - Vector3.new(0.001+1*i/2,0.01+0.5*i/2,0.001+1*i/2)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken2.Mesh.Scale - Vector3.new(0.005+1*i/2,0.01+0.5*i/2,0.005+1*i/2)
swordholder.shuriken2.Mesh.Scale = swordholder.shuriken3.Mesh.Scale - Vector3.new(0.01+1*i/2,0.01+0.5*i/2,0.01+1*i/2)
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,2.93+1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
throws1()
end
 
 
-------------
 
 
function attack2()
if eq == true then
eq = false
Ran = false
unequipweld()
        wait()    
end
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 2
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
        for i = 0 , 1 , 0.27 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-1.15-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, -1,-2.915-1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
x =RW.C0
y = LW.C1
wait(1)
swordholder.p19.W29.Part1 = LeftArm
swordholder.p19.W29.C0 = CFrame.new(0,0,0)
swordholder.p19.W29.C0 = swordholder.p19.W29.C0 * CFrame.Angles(0,-1.5,0) 
 
        for i = 0 , 1 , 0.3 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,3-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, -1,3+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
v = swordholder.p19:clone()
v.Parent = workspace
v.CanCollide = true
v.Transparency = 0
b = Instance.new("BodyPosition")
b.Parent = v
b.D = 1000
b.P = 3000
b.maxForce = Vector3.new(4000,210,4000)
b.position = b.position + Head.CFrame.lookVector * 300
swordholder.p19.Transparency = 1
v.Touched:connect(ht)
s = Instance.new("Sound")
s.Parent = v
s.Pitch = 4
s.SoundId = "http://roblox.com/asset/?id=2785493"
s.Volume = 2
s:Play()
        for i = 0 , 1 , 0.3 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0-i*2, 1,2-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0-i*2, -1,4+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
wait(3)
v:Destroy()
swordholder.p19.Transparency = 0
swordholder.p19.W29.Part1 = Torso
swordholder.p19.W29.C0 = CFrame.new(-0.7, 1.2, -1)
swordholder.p19.W29.C0 = swordholder.p19.W29.C0 * CFrame.Angles(-0.2, -0.5, 1.3) 
 
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
end
 
 
 
 
 
 
 
 
 
 
 
 
function attack3()
if eq == true then
eq = false
Ran = false
unequipweld()
        wait()    
end
parts = {}
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 2
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
function dllt()
v = swordholder.p19:clone()
v.Parent = Character
v.CanCollide = true
v.Transparency = 1
v.Touched:connect(ht)
 
swordholder.p19.Transparency = 1
wv = Instance.new("Weld")
wv.Parent = v
wv.Part0 = v
wv.Part1 = Torso
wv.C0 = CFrame.new(0,0,-5) 
wv.C0 = wv.C0 * CFrame.Angles(0, 0, 0) 
 
v2 = swordholder.p19:clone()
v2.Parent = Character
v2.CanCollide = true
v2.Transparency = 1
v2.Touched:connect(ht)
wv2 = Instance.new("Weld")
wv2.Parent = v2
wv2.Part0 = v2
wv2.Part1 = Torso
wv2.C0 = CFrame.new(0,0,-5) 
wv2.C0 = wv.C0 * CFrame.Angles(0, 0, 1.5) 
 
 
v3 = swordholder.p19:clone()
v3.Parent = Character
v3.CanCollide = true
v3.Transparency = 1
v3.Touched:connect(ht)
wv3 = Instance.new("Weld")
wv3.Parent = v3
wv3.Part0 = v3
wv3.Part1 = Torso
wv3.C0 = CFrame.new(0,0,-5) 
wv3.C0 = wv3.C0 * CFrame.Angles(0, 1.6, 0) 
v4 = swordholder.p19:clone()
v4.Parent = Character
v4.CanCollide = true
v4.Transparency = 1
v4.Touched:connect(ht)
wv4 = Instance.new("Weld")
wv4.Parent = v4
wv4.Part0 = v4
wv4.Part1 = v3
wv4.C0 = CFrame.new(0,0,0) 
wv4.C0 = wv4.C0 * CFrame.Angles(0, 0, 1.5) 
 
 
v5 = swordholder.p19:clone()
v5.Parent = Character
v5.CanCollide = true
v5.Transparency = 1
v5.Touched:connect(ht)
wv5 = Instance.new("Weld")
wv5.Parent = v5
wv5.Part0 = v5
wv5.Part1 = Torso
wv5.C0 = CFrame.new(0,0,-5) 
wv5.C0 = wv5.C0 * CFrame.Angles(0, -1.6, 0) 
v6 = swordholder.p19:clone()
v6.Parent = Character
v6.CanCollide = true
v6.Transparency = 1
v6.Touched:connect(ht)
wv6 = Instance.new("Weld")
wv6.Parent = v6
wv6.Part0 = v6
wv6.Part1 = v5
wv6.C0 = CFrame.new(0,0,0) 
wv6.C0 = wv6.C0 * CFrame.Angles(0, 0, 1.5) 
 
v7 = swordholder.p19:clone()
v7.Parent = Character
v7.CanCollide = true
v7.Transparency = 1
v7.Touched:connect(ht)
wv7 = Instance.new("Weld")
wv7.Parent = v7
wv7.Part0 = v7
wv7.Part1 = Torso
wv7.C0 = CFrame.new(0,0,-5) 
wv7.C0 = wv7.C0 * CFrame.Angles(0, -3.1, 0) 
v8 = swordholder.p19:clone()
v8.Parent = Character
v8.CanCollide = true
v8.Transparency = 1
v8.Touched:connect(ht)
wv8 = Instance.new("Weld")
wv8.Parent = v8
wv8.Part0 = v8
wv8.Part1 = v7
wv8.C0 = CFrame.new(0,0,0) 
wv8.C0 = wv8.C0 * CFrame.Angles(0, 0, -1.5) 
 
 
v9 = swordholder.p19:clone()
v9.Parent = Character
v9.CanCollide = true
v9.Transparency = 1
v9.Touched:connect(ht)
wv9 = Instance.new("Weld")
wv9.Parent = v9
wv9.Part0 = v9
wv9.Part1 = Torso
wv9.C0 = CFrame.new(0,0,-5) 
wv9.C0 = wv9.C0 * CFrame.Angles(0, -4.2, 0) 
v10 = swordholder.p19:clone()
v10.Parent = Character
v10.CanCollide = true
v10.Transparency = 1
v10.Touched:connect(ht)
wv10 = Instance.new("Weld")
wv10.Parent = v10
wv10.Part0 = v10
wv10.Part1 = v9
wv10.C0 = CFrame.new(0,0,0) 
wv10.C0 = wv10.C0 * CFrame.Angles(0, 0, -1.5) 
 
 
v11 = swordholder.p19:clone()
v11.Parent = Character
v11.CanCollide = true
v11.Transparency = 1
v11.Touched:connect(ht)
wv11 = Instance.new("Weld")
wv11.Parent = v11
wv11.Part0 = v11
wv11.Part1 = Torso
wv11.C0 = CFrame.new(0,0,-5) 
wv11.C0 = wv11.C0 * CFrame.Angles(0, -3.65, 0) 
v12 = swordholder.p19:clone()
v12.Parent = Character
v12.CanCollide = true
v12.Transparency = 1
v12.Touched:connect(ht)
wv12 = Instance.new("Weld")
wv12.Parent = v12
wv12.Part0 = v12
wv12.Part1 = v11
wv12.C0 = CFrame.new(0,0,0) 
wv12.C0 = wv12.C0 * CFrame.Angles(0, 0, -1.5) 
 
 
 
v13 = swordholder.p19:clone()
v13.Parent = Character
v13.CanCollide = true
v13.Transparency = 1
v13.Touched:connect(ht)
wv13 = Instance.new("Weld")
wv13.Parent = v13
wv13.Part0 = v13
wv13.Part1 = Torso
wv13.C0 = CFrame.new(0,0,-5) 
wv13.C0 = wv13.C0 * CFrame.Angles(0, -0.95, 0) 
v14 = swordholder.p19:clone()
v14.Parent = Character
v14.CanCollide = true
v14.Transparency = 1
v14.Touched:connect(ht)
wv14 = Instance.new("Weld")
wv14.Parent = v14
wv14.Part0 = v14
wv14.Part1 = v13
wv14.C0 = CFrame.new(0,0,0) 
wv14.C0 = wv14.C0 * CFrame.Angles(0, 0, -1.5) 
 
v15 = swordholder.p19:clone()
v15.Parent = Character
v15.CanCollide = true
v15.Transparency = 1
v15.Touched:connect(ht)
wv15 = Instance.new("Weld")
wv15.Parent = v15
wv15.Part0 = v15
wv15.Part1 = Torso
wv15.C0 = CFrame.new(0,0,-5) 
wv15.C0 = wv15.C0 * CFrame.Angles(0, -0.4, 0) 
v16 = swordholder.p19:clone()
v16.Parent = Character
v16.CanCollide = true
v16.Transparency = 1
v16.Touched:connect(ht)
wv16 = Instance.new("Weld")
wv16.Parent = v16
wv16.Part0 = v16
wv16.Part1 = v15
wv16.C0 = CFrame.new(0,0,0) 
wv16.C0 = wv16.C0 * CFrame.Angles(0, 0, -1.5) 
 
v17 = swordholder.p19:clone()
v17.Parent = Character
v17.CanCollide = true
v17.Transparency = 1
v17.Touched:connect(ht)
wv17 = Instance.new("Weld")
wv17.Parent = v17
wv17.Part0 = v17
wv17.Part1 = Torso
wv17.C0 = CFrame.new(0,0,-5) 
wv17.C0 = wv17.C0 * CFrame.Angles(0, -2.05, 0) 
v18 = swordholder.p19:clone()
v18.Parent = Character
v18.CanCollide = true
v18.Transparency = 1
v18.Touched:connect(ht)
wv18 = Instance.new("Weld")
wv18.Parent = v18
wv18.Part0 = v18
wv18.Part1 = v17
wv18.C0 = CFrame.new(0,0,0) 
wv18.C0 = wv18.C0 * CFrame.Angles(0, 0, -1.5) 
 
v19 = swordholder.p19:clone()
v19.Parent = Character
v19.CanCollide = true
v19.Transparency = 1
v19.Touched:connect(ht)
wv19 = Instance.new("Weld")
wv19.Parent = v19
wv19.Part0 = v19
wv19.Part1 = Torso
wv19.C0 = CFrame.new(0,0,-5) 
wv19.C0 = wv19.C0 * CFrame.Angles(0, -2.6, 0) 
v20 = swordholder.p19:clone()
v20.Parent = Character
v20.CanCollide = true
v20.Transparency = 1
v20.Touched:connect(ht)
wv20 = Instance.new("Weld")
wv20.Parent = v20
wv20.Part0 = v20
wv20.Part1 = v19
wv20.C0 = CFrame.new(0,0,0) 
wv20.C0 = wv20.C0 * CFrame.Angles(0, 0, -1.5) 
 
v21 = swordholder.p19:clone() -----test
v21.Parent = Character
v21.CanCollide = true
v21.Transparency = 1
v21.Touched:connect(ht)
wv21 = Instance.new("Weld")
wv21.Parent = v21
wv21.Part0 = v21
wv21.Part1 = Torso
wv21.C0 = CFrame.new(0,0,-5) 
wv21.C0 = wv21.C0 * CFrame.Angles(0, 1, 0) 
 
v22 = swordholder.p19:clone()
v22.Parent = Character
v22.CanCollide = true
v22.Transparency = 1
v22.Touched:connect(ht)
wv22 = Instance.new("Weld")
wv22.Parent = v22
wv22.Part0 = v22
wv22.Part1 = v21
wv22.C0 = CFrame.new(0,0,0) 
wv22.C0 = wv22.C0 * CFrame.Angles(0, 0, 1.5) 
 
 
v23 = swordholder.p19:clone()
v23.Parent = Character
v23.CanCollide = true
v23.Transparency = 1
v23.Touched:connect(ht)
wv23 = Instance.new("Weld")
wv23.Parent = v23
wv23.Part0 = v23
wv23.Part1 = Torso
wv23.C0 = CFrame.new(0,0,-5) 
wv23.C0 = wv23.C0 * CFrame.Angles(0, -3.1, 0) 
v24 = swordholder.p19:clone()
v24.Parent = Character
v24.CanCollide = true
v24.Transparency = 1
v24.Touched:connect(ht)
wv24 = Instance.new("Weld")
wv24.Parent = v24
wv24.Part0 = v24
wv24.Part1 = v23
wv24.C0 = CFrame.new(0,0,0) 
wv24.C0 = wv24.C0 * CFrame.Angles(0, 0, -1.5) 
 
 
v25 = swordholder.p19:clone()
v25.Parent = Character
v25.CanCollide = true
v25.Transparency = 1
v25.Touched:connect(ht)
wv25 = Instance.new("Weld")
wv25.Parent = v25
wv25.Part0 = v25
wv25.Part1 = Torso
wv25.C0 = CFrame.new(0,0,-5) 
wv25.C0 = wv25.C0 * CFrame.Angles(0, 1.6, 0) 
v26 = swordholder.p19:clone()
v26.Parent = Character
v26.CanCollide = true
v26.Transparency = 1
v26.Touched:connect(ht)
wv26 = Instance.new("Weld")
wv26.Parent = v26
wv26.Part0 = v26
wv26.Part1 = v25
wv26.C0 = CFrame.new(0,0,0) 
wv26.C0 = wv26.C0 * CFrame.Angles(0, 0, 1.5) 
 
v27 = swordholder.p19:clone()
v27.Parent = Character
v27.CanCollide = true
v27.Transparency = 1
v27.Touched:connect(ht)
wv27 = Instance.new("Weld")
wv27.Parent = v27
wv27.Part0 = v27
wv27.Part1 = Torso
wv27.C0 = CFrame.new(0,0,-5) 
wv27.C0 = wv27.C0 * CFrame.Angles(0, -1.6, 0) 
v28 = swordholder.p19:clone()
v28.Parent = Character
v28.CanCollide = true
v28.Transparency = 1
v28.Touched:connect(ht)
wv28 = Instance.new("Weld")
wv28.Parent = v28
wv28.Part0 = v28
wv28.Part1 = v27
wv28.C0 = CFrame.new(0,0,0) 
wv28.C0 = wv28.C0 * CFrame.Angles(0, 0, 1.5) 
 
 
v29 = swordholder.p19:clone()
v29.Parent = Character
v29.CanCollide = true
v29.Transparency = 1
v29.Touched:connect(ht)
wv29 = Instance.new("Weld")
wv29.Parent = v29
wv29.Part0 = v29
wv29.Part1 = Torso
wv29.C0 = CFrame.new(0,0,-5) 
wv29.C0 = wv29.C0 * CFrame.Angles(0, 2.08, 0) 
v30 = swordholder.p19:clone()
v30.Parent = Character
v30.CanCollide = true
v30.Transparency = 1
v30.Touched:connect(ht)
wv30 = Instance.new("Weld")
wv30.Parent = v30
wv30.Part0 = v30
wv30.Part1 = v29
wv30.C0 = CFrame.new(0,0,0) 
wv30.C0 = wv32.C0 * CFrame.Angles(0, 0, 1.5) 
 
v31 = swordholder.p19:clone()
v31.Parent = Character
v31.CanCollide = true
v31.Transparency = 1
v31.Touched:connect(ht)
wv31 = Instance.new("Weld")
wv31.Parent = v31
wv31.Part0 = v31
wv31.Part1 = Torso
wv31.C0 = CFrame.new(0,0,-5) 
wv31.C0 = wv31.C0 * CFrame.Angles(0, 2.7, 0) 
v32 = swordholder.p19:clone()
v32.Parent = Character
v32.CanCollide = true
v32.Transparency = 1
v32.Touched:connect(ht)
wv32 = Instance.new("Weld")
wv32.Parent = v32
wv32.Part0 = v32
wv32.Part1 = v31
wv32.C0 = CFrame.new(0,0,0) 
wv32.C0 = wv32.C0 * CFrame.Angles(0, 0, 1.5) 
 
v33 = swordholder.p19:clone() -----test
v33.Parent = Character
v33.CanCollide = true
v33.Transparency = 1
v33.Touched:connect(ht)
wv33 = Instance.new("Weld")
wv33.Parent = v33
wv33.Part0 = v33
wv33.Part1 = Torso
wv33.C0 = CFrame.new(0,0,-5) 
wv33.C0 = wv33.C0 * CFrame.Angles(0, 1, 0) 
 
v34 = swordholder.p19:clone()
v34.Parent = Character
v34.CanCollide = true
v34.Transparency = 1
v34.Touched:connect(ht)
wv34 = Instance.new("Weld")
wv34.Parent = v34
wv34.Part0 = v34
wv34.Part1 = v34
wv34.C0 = CFrame.new(0,0,0) 
wv34.C0 = wv34.C0 * CFrame.Angles(0, 0, 1.5) 
 
v35 = swordholder.p19:clone() -----test
v35.Parent = Character
v35.CanCollide = true
v35.Transparency = 1
v35.Touched:connect(ht)
wv35 = Instance.new("Weld")
wv35.Parent = v35
wv35.Part0 = v35
wv35.Part1 = Torso
wv35.C0 = CFrame.new(0,0,-5) 
wv35.C0 = wv34.C0 * CFrame.Angles(0, 1.55, 0) 
 
v36 = swordholder.p19:clone()
v36.Parent = Character
v36.CanCollide = true
v36.Transparency = 1
v36.Touched:connect(ht)
wv36 = Instance.new("Weld")
wv36.Parent = v36
wv36.Part0 = v36
wv36.Part1 = v36
wv36.C0 = CFrame.new(0,0,0) 
wv36.C0 = wv36.C0 * CFrame.Angles(0, 0, 1.5) 
 
 
end
dllt()
function trs()
v.Transparency = v.Transparency -i
v2.Transparency = v2.Transparency -i
v3.Transparency = v3.Transparency -i
v4.Transparency = v4.Transparency -i
v5.Transparency = v5.Transparency -i
v6.Transparency = v6.Transparency -i
v7.Transparency = v7.Transparency -i
v8.Transparency = v8.Transparency -i
v9.Transparency = v9.Transparency -i
v10.Transparency = v10.Transparency -i
v11.Transparency = v11.Transparency -i
v12.Transparency = v12.Transparency -i
v13.Transparency = v13.Transparency -i
v14.Transparency = v14.Transparency -i
v15.Transparency = v15.Transparency -i
v16.Transparency = v16.Transparency -i
v17.Transparency = v17.Transparency -i
v18.Transparency = v18.Transparency -i
v19.Transparency = v19.Transparency -i
v20.Transparency = v20.Transparency -i
v21.Transparency = v21.Transparency -i
v22.Transparency = v22.Transparency -i
v23.Transparency = v23.Transparency -i
v24.Transparency = v24.Transparency -i
v25.Transparency = v25.Transparency -i
v26.Transparency = v26.Transparency -i
v27.Transparency = v27.Transparency -i
v28.Transparency = v28.Transparency -i
v29.Transparency = v29.Transparency -i
v30.Transparency = v30.Transparency -i
v31.Transparency = v31.Transparency -i
v32.Transparency = v32.Transparency -i
v33.Transparency = v33.Transparency -i
v34.Transparency = v34.Transparency -i
v35.Transparency = v35.Transparency -i
v36.Transparency = v36.Transparency -i
end
 
        for i = 0 , 1 , 0.05 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,-1.15-1*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, -1,-2.915-1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
v.Transparency = 0
v2.Transparency = 0
v3.Transparency = 0
v4.Transparency = 0
v5.Transparency = 0
v6.Transparency = 0
v7.Transparency = 0
v8.Transparency = 0
v9.Transparency = 0
v10.Transparency = 0
v11.Transparency = 0
v12.Transparency = 0
v13.Transparency = 0
v14.Transparency = 0
v15.Transparency = 0
v16.Transparency = 0
 
v17.Transparency = 0
v18.Transparency = 0
v19.Transparency = 0
v20.Transparency = 0
v21.Transparency = 0
v22.Transparency = 0
v23.Transparency = 0
v24.Transparency = 0
v25.Transparency = 0
v26.Transparency = 0
v27.Transparency = 0
v28.Transparency = 0
v29.Transparency = 0
v30.Transparency = 0
v31.Transparency = 0
v32.Transparency = 0
v33.Transparency = 0
v34.Transparency = 0
v35.Transparency = 0
v36.Transparency = 0
wait(1)
 
        for i = 0 , 1 , 0.3 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, 1,3-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, -1,3+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
 
 
function dlt2()
for ii = 1, 30 do 
wait()
v.Weld.C0 = v.Weld.C0 + v.CFrame.lookVector *20
v3.Weld.C0 = v3.Weld.C0 + v3.CFrame.lookVector *20
v5.Weld.C0 = v5.Weld.C0 + v5.CFrame.lookVector *20
v7.Weld.C0 = v7.Weld.C0 + v7.CFrame.lookVector *20
v9.Weld.C0 = v9.Weld.C0 + v9.CFrame.lookVector *20
v11.Weld.C0 = v11.Weld.C0 + v11.CFrame.lookVector *20
v13.Weld.C0 = v13.Weld.C0 + v13.CFrame.lookVector *20
v15.Weld.C0 = v15.Weld.C0 + v15.CFrame.lookVector *20
v17.Weld.C0 = v17.Weld.C0 + v17.CFrame.lookVector *20
v19.Weld.C0 = v19.Weld.C0 + v19.CFrame.lookVector *20
v21.Weld.C0 = v21.Weld.C0 + v21.CFrame.lookVector *20
v23.Weld.C0 = v23.Weld.C0 + v23.CFrame.lookVector *20
v25.Weld.C0 = v25.Weld.C0 + v25.CFrame.lookVector *20
v27.Weld.C0 = v27.Weld.C0 + v27.CFrame.lookVector *20
v29.Weld.C0 = v29.Weld.C0 + v29.CFrame.lookVector *20
v31.Weld.C0 = v31.Weld.C0 + v31.CFrame.lookVector *20
v33.Weld.C0 = v33.Weld.C0 + v33.CFrame.lookVector *20
v35.Weld.C0 = v35.Weld.C0 + v35.CFrame.lookVector *20
v.Transparency = v.Transparency + 0.03
v3.Transparency = v3.Transparency + 0.03
v5.Transparency = v5.Transparency + 0.03
v7.Transparency = v7.Transparency + 0.03
v9.Transparency = v9.Transparency + 0.03
v11.Transparency = v11.Transparency + 0.03
v13.Transparency = v13.Transparency + 0.03
v15.Transparency = v15.Transparency + 0.03
v4.Transparency = v4.Transparency + 0.03
v6.Transparency = v6.Transparency + 0.03
v8.Transparency = v8.Transparency + 0.03
v10.Transparency = v10.Transparency + 0.03
v12.Transparency = v12.Transparency + 0.03
v14.Transparency = v14.Transparency + 0.03
v16.Transparency = v16.Transparency + 0.03
v17.Transparency = v17.Transparency + 0.03
v18.Transparency = v18.Transparency + 0.03
v19.Transparency = v19.Transparency + 0.03
v20.Transparency = v20.Transparency + 0.03
v21.Transparency = v21.Transparency + 0.03
v22.Transparency = v22.Transparency + 0.03
v23.Transparency = v23.Transparency + 0.03
v24.Transparency = v24.Transparency + 0.03
v25.Transparency = v25.Transparency + 0.03
v26.Transparency = v26.Transparency + 0.03
v27.Transparency = v27.Transparency + 0.03
v28.Transparency = v28.Transparency + 0.03
v29.Transparency = v29.Transparency + 0.03
v30.Transparency = v30.Transparency + 0.03
v31.Transparency = v31.Transparency + 0.03
v32.Transparency = v32.Transparency + 0.03
v33.Transparency = v33.Transparency + 0.03
v34.Transparency = v34.Transparency + 0.03
v35.Transparency = v35.Transparency + 0.03
v36.Transparency = v36.Transparency + 0.03
s = Instance.new("Sound")
s.Parent = v
s.Pitch = 4
s.SoundId = "http://roblox.com/asset/?id=2785493"
s.Volume = 2
s:Play()
end
end
dlt2()
 
        for i = 0 , 1 , 0.3 do
                wait()
        RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0-i*2, 1,2-1*i) ----math.rad(260)-math.rad(260)*i
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0-i*2, -1,4+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
wait(3)
function dlt3()
v:Destroy()
v2:Destroy()
v3:Destroy()
v4:Destroy()
v5:Destroy()
v6:Destroy()
v7:Destroy()
v8:Destroy()
v9:Destroy()
v10:Destroy()
v11:Destroy()
v12:Destroy()
v13:Destroy()
v14:Destroy()
v15:Destroy()
v16:Destroy()
v17:Destroy()
v18:Destroy()
v19:Destroy()
v20:Destroy()
v21:Destroy()
v22:Destroy()
v23:Destroy()
v24:Destroy()
v25:Destroy()
v26:Destroy()
v27:Destroy()
v28:Destroy()
v29:Destroy()
v30:Destroy()
v31:Destroy()
v32:Destroy()
v33:Destroy()
v34:Destroy()
v35:Destroy()
v36:Destroy()
end
dlt3()
swordholder.p19.Transparency = 0
 
 
 
 
 
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
function attack()
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 0.5
s.SoundId = "http://roblox.com/asset/?id=1369158"
s.Volume = 2
s:Play()
s:Play()
attack1()
end
 
function shockwave()
pp=Instance.new("Part") 
pp.TopSurface=0 
pp.BottomSurface=0 
pp.Reflectance=0
pp.formFactor="Symmetric" 
pp.BrickColor=BrickColor.new("Black") 
pp.Size=Vector3.new(1,2,1) 
pp.Anchored=true 
pp.CanCollide=false 
pp.Name="Blast" 
pp.CFrame=Torso.CFrame - Vector3.new(-1.5,2.8,-1)
pp.Parent=workspace 
oldpos = Torso.CFrame - Vector3.new(-1.5,2.8,-1)
pp.Transparency=1 
pp.CanCollide=false 
pp.Touched:connect(ht)
 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=pp 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Bottom" 
d.Parent=pp 
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 0.15
s.SoundId = "http://roblox.com/asset/?id=13775494"
s.Volume = 2
s:Play()
s = Instance.new("Sound")
s.Parent = Head
s.Pitch = 0.14
s.SoundId = "http://roblox.com/asset/?id=13775494"
s.Volume = 2
s:Play()
for i,e in pairs(game.Workspace:GetChildren()) do
if e:findFirstChild("Humanoid") and e.Name ~= Character.Name then
if (pp.Position - e.Torso.Position).magnitude <=30 then
e:findFirstChild("Humanoid"):TakeDamage(math.random(50,60))
e:findFirstChild("Humanoid").Sit = true
end
end
end
 
for i=1, 7 do
pp.Size = pp.Size + Vector3.new(11,0,11)
pp.CFrame = oldpos
wait()
end
pp:Destroy()
end
 
 
 
 
function shockwave2()
pp=Instance.new("Part") 
pp.TopSurface=0 
pp.BottomSurface=0 
pp.Reflectance=0
pp.formFactor="Symmetric" 
pp.BrickColor=BrickColor.new("Black") 
pp.Size=Vector3.new(1,2,1) 
pp.Anchored=true 
pp.CanCollide=false 
pp.Name="Blast" 
pp.CFrame=Torso.CFrame - Vector3.new(-1.5,2.8,-1)
pp.Parent=workspace 
oldpos = Torso.CFrame - Vector3.new(-1.5,2.8,-1)
pp.Transparency=1 
pp.CanCollide=false 
pp.Touched:connect(ht)
 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Top" 
d.Parent=pp 
d=Instance.new("Decal") 
d.Texture="http://www.roblox.com/asset/?id=11187115" 
d.Face="Bottom" 
d.Parent=pp 
 
for i,e in pairs(game.Workspace:GetChildren()) do
if e:findFirstChild("Humanoid") and e.Name ~= Character.Name then
if (pp.Position - e.Torso.Position).magnitude <=30 then
e:findFirstChild("Humanoid"):TakeDamage(math.random(50,60))
e:findFirstChild("Humanoid").Sit = true
end
end
end
 
for i=1, 20 do
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 0.14
s.SoundId = "http://roblox.com/asset/?id=13775494"
s.Volume = 2
s:Play()
pp.Size = pp.Size + Vector3.new(18,0,18)
pp.CFrame = oldpos
wait()
end
pp:Destroy()
end
 
function eff()
for i = 1, math.random(2,3) do
local Px = Instance.new("Part") 
Px.Name = "Effect" 
Px.formFactor = 0 
Px.Size = Vector3.new(math.random(4,8),math.random(2,5),math.random(5,10))
Px.CFrame = Torso.CFrame - Vector3.new(-1.5,6,-1)
Px.CFrame = Px.CFrame - Vector3.new(math.random(1,2),0,0)
Px.CFrame = Px.CFrame * CFrame.Angles(math.random(2,6),math.random(2,6),math.random(2,6))
Px.Parent = game.Workspace 
Px.BrickColor = workspace.Base.BrickColor
Px.Transparency = 0
Px.Reflectance = 0
Px.Anchored = true
Px.CanCollide = true
Px.FrontSurface = "Smooth"
Px.BackSurface = "Smooth"
Px.LeftSurface = "Smooth"
Px.RightSurface = "Smooth"
Px.TopSurface = "Studs"
Px.BottomSurface = "Smooth"
end
 
end
 
function eff2()
for i = 1, math.random(50,60) do
local Px = Instance.new("Part") 
Px.Name = "Effect" 
Px.formFactor = 0 
Px.Size = Vector3.new(math.random(15,18),math.random(2,5),math.random(15,18))
Px.CFrame = Torso.CFrame - Vector3.new(-1.5,6,-1)
Px.CFrame = Px.CFrame - Vector3.new(math.random(0-120,120),0,math.random(0-120,120))
Px.CFrame = Px.CFrame * CFrame.Angles(math.random(2,6),math.random(2,6),math.random(2,6))
Px.Parent = game.Workspace 
Px.BrickColor = workspace.Base.BrickColor
Px.Transparency = 0
Px.Reflectance = 0
Px.Anchored = true
Px.CanCollide = true
Px.FrontSurface = "Smooth"
Px.BackSurface = "Smooth"
Px.LeftSurface = "Smooth"
Px.RightSurface = "Smooth"
Px.TopSurface = "Studs"
Px.BottomSurface = "Smooth"
end
 
end
 
function eff3()
for i = 1, math.random(2,5) do
local Px = Instance.new("Part") 
Px.Name = "Effect" 
Px.formFactor = 0 
Px.Size = Vector3.new(math.random(2,6),math.random(1,3),math.random(2,6))
Px.CFrame = Torso.CFrame - Vector3.new(0,5,0)
Px.CFrame = Px.CFrame - Vector3.new(math.random(0-2,2),math.random(0-2,0),math.random(0-2,2))
Px.Parent = game.Workspace 
Px.BrickColor = workspace.Base.BrickColor
Px.Transparency = 0
Px.Reflectance = 0
Px.Anchored = true
Px.CanCollide = true
Px.FrontSurface = "Smooth"
Px.BackSurface = "Smooth"
Px.LeftSurface = "Smooth"
Px.RightSurface = "Smooth"
Px.TopSurface = "Studs"
Px.BottomSurface = "Smooth"
sb = Instance.new("SelectionBox")
sb.Parent = Px
sb.Adornee = Px
sb.Color = BrickColor.new("White")
sb.Transparency = 0.2
end
for i = 1, math.random(3,6) do
local Px = Instance.new("Part") 
Px.Name = "Effect" 
Px.formFactor = 0 
Px.Size = Vector3.new(math.random(2,6),math.random(1,2),math.random(5,10))
Px.CFrame = Torso.CFrame - Vector3.new(0,5,0)
Px.CFrame = Px.CFrame - Vector3.new(math.random(0-2,2),math.random(0-2,0),0)
Px.CFrame = Px.CFrame * CFrame.new(0,0+i,0-i*4)
Px.Parent = game.Workspace 
Px.BrickColor = workspace.Base.BrickColor
Px.Transparency = 1
Px.Reflectance = 0
Px.Anchored = true
Px.CanCollide = true
Px.FrontSurface = "Smooth"
Px.BackSurface = "Smooth"
Px.LeftSurface = "Smooth"
Px.RightSurface = "Smooth"
Px.TopSurface = "Studs"
Px.BottomSurface = "Smooth"
sb = Instance.new("SelectionBox")
sb.Parent = Px
sb.Adornee = Px
sb.Color = BrickColor.new("White")
sb.Transparency = 0.2
end
end
 
function stop()
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 1
s.SoundId = "http://roblox.com/asset/?id=2785493"
s.Volume = 2
s:Play()
for i=1, 32 do
wait()
Character.Humanoid.WalkSpeed = 16 - i/2
end
end
 
function stop2()
for i=1, 7 do
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 0.7
s.SoundId = "http://roblox.com/asset/?id=2785493"
s.Volume = 2
s:Play()
wait()
Character.Humanoid.WalkSpeed = 16 - i*2
end
end
 
function default()
for i=1, 16 do
wait()
Character.Humanoid.WalkSpeed = i
end
end
 
deb = false
 
function swing()
stop()
        for i = 0 , 1 , 0.2 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.6-i*3.9, -2+i/2,13.3-0.5*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2-i,0,2.2-i*1.5)
                LW.C1 = CFrame.new(0, 0.5, 0)
w1.C0 = CFrame.new(1, 1.5-i, 0)
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 0-i*1.6) 
        end
eff()
shockwave()
wait(1)
        --for i = 0 , 1 , 0.5 do
                --wait()
                --RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0+i*3.9, 0,0)
                --LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0+i,0,0+i*1.5)
        --end
equipweld()
equipanim2()
default()
end
 
--[[
        --for i = 0 , 1 , 0.2 do
                --wait()
                --RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(-10-i*2,1.5 ,13.3-0.5*i)
                --RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                --LW.C0 = CFrame.new(0,0.5, -1) * CFrame.fromEulerAnglesXYZ(0,0,0)
                --LW.C1 = CFrame.new(0, 0.5, 0)
       --end
 
--]]
 
 
function swing2()
        for i = 0 , 1 , 0.2 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.6-i*3.9, -2+i/2,13.3-0.5*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2-i,0,2.2-i*1.5)
                LW.C1 = CFrame.new(0, 0.5, 0)
w1.C0 = CFrame.new(1, 1.5-i, 0)
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 0-i*1.6) 
        end
eff3()
wait(1)
        --for i = 0 , 1 , 0.5 do
                --wait()
                --RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0+i*3.9, 0,0)
                --LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0+i,0,0+i*1.5)
        --end
equipweld()
equipanim2()
end
 
function swing3()
stop2()
wait(2)
        for i = 0 , 1 , 0.2 do
                wait()
                RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.6-i*3.9, -2+i/2,13.3-0.5*i)
                RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2-i,0,2.2-i*1.5)
                LW.C1 = CFrame.new(0, 0.5, 0)
w1.C0 = CFrame.new(1, 1.5-i, 0)
w1.C0 = w1.C0 * CFrame.Angles(0, 0, 0-i*1.6) 
        end
eff2()
shockwave2()
wait(1)
        --for i = 0 , 1 , 0.5 do
                --wait()
                --RW.C0 = CFrame.new(1.5,0.5, 0) * CFrame.fromEulerAnglesXYZ(0+i*3.9, 0,0)
                --LW.C0 = CFrame.new(0,0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0+i,0,0+i*1.5)
        --end
equipweld()
equipanim2()
default()
end
 
function equip()
Ran = true
deb = false
    player = Player
            ch = Character
    RSH = ch.Torso["Right Shoulder"]
    LSH = ch.Torso["Left Shoulder"]
    
    RSH.Parent = nil
    LSH.Parent = nil
    
    RW.Part0 = ch.Torso
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
    RW.C1 = CFrame.new(0, 0.5, 0)
    RW.Part1 = ch["Right Arm"]
    RW.Parent = ch.Torso
    _G.R = RW
    
    LW.Part0 = ch.Torso
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
    LW.C1 = CFrame.new(0, 0.5, 0)
    LW.Part1 = ch["Left Arm"]
    LW.Parent = ch.Torso
    _G.L = LW    
equipweld()
        equipanim()
end
 
function test()
 
        for i = 0 , 1 , 0.27 do
                wait()
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0, -1,-6.915+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
wait(1)
end
 
fly = false
deb = false
cust = false
function LClick(mouse)
if mode == "shuriken" then
attack()
end
if mode == "dagger" then
if category == 1 then
attack2()
end
if category == 2 then
attack3()
end
if category == 3 then
attack4()
end
end
if mode == "swing" then
if category == 1 then
swing()
end
if category == 2 then
swing2()
end
if category == 3 then
swing3()
end
end
if mode == "custom" then
-- Player declarations
player = Player
char = Character
-- Body parts
torso = Torso
lArm = LeftArm
if cust == false then
cust = true
test()
wait(1)
swordholder.p19.W29.Part1 = LeftArm
swordholder.p19.W29.C0 = CFrame.new(-1.2,0,-2.5)
swordholder.p19.W29.C0 = swordholder.p19.W29.C0 * CFrame.Angles(-1.5,0,1.5) 
end
swordholder.p19.W29.Part1 = LeftArm
swordholder.p19.W29.C0 = CFrame.new(-1.2,0,-2.5)
swordholder.p19.W29.C0 = swordholder.p19.W29.C0 * CFrame.Angles(-1.5,0,1.5) 
function main()
                -- torso["Right Shoulder"]:Destroy()
                
                
                LW.Part0 = torso
                LW.Part1 = lArm
                --LW.Name = "Right Shoulder"
                LW.Parent = torso
                
                -- if char:FindFirstChild("Orb") then
                        -- char.Orb:Remove()
                -- end
                
                -- local orb = Instance.new("Part")
                -- orb.FormFactor = "Symmetric"
                -- orb.Shape = "Ball"
                -- orb.TopSurface = "Smooth"
                -- orb.BottomSurface = "Smooth"
                -- orb.Size = Vector3.new(1, 1, 1)
                -- orb.BrickColor = BrickColor.new("Teal")
                -- orb.Transparency = 0.5
                -- orb.CanCollide = false
                -- orb.Parent = char
                -- orb.Name = "Orb"
                
                -- local orbWeld = Instance.new("Weld")
                -- orbWeld.Part0 = rArm
                -- orbWeld.Part1 = orb
                -- orbWeld.C0 = CFrame.new(0, -1.25, 0)
                -- orbWeld.Parent = rArm
                
                lArmFrame = CFrame.Angles(math.rad(10), math.rad(10), math.rad(10))
        
        -- Loop
        
-- Random number
function r(min, max)
        return math.random() * (max - min) + min
end
-- Linear interpolation
function lerp(a, b, t)
        return a + (b - a)*t
end
-- Spherical interpolation
function slerp(a, b, t)
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end
        -- Matrix interpolation
function matrixInterpolate(a, b, t)
        ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        v0 =  lerp(Vector3.new(ax , ay , az ), Vector3.new(bx , by , bz) , t) -- Position
        v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector right
        v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector up
        v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector back
                
        t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then
                return CFrame.new()
        end
        return CFrame.new(
                v0.x, v0.y, v0.z,
                v1.x, v1.y, v1.z,
                v2.x, v2.y, v2.z,
                v3.x, v3.y, v3.z)
                
        
end        
end
                main()
                look = CFrame.new(torso.Position, torso.Position + mouse.Hit.lookVector)
                hold = true
torso = Torso
                while hold do
                wait()
                look = CFrame.new(torso.Position, torso.Position + mouse.Hit.lookVector)
                
                        frameRel = (torso.CFrame - torso.CFrame.p):toObjectSpace(mouse.Hit - mouse.Hit.p)
                        
                        dir = frameRel.lookVector
                        yRot = math.deg(math.atan2(-dir.x, -dir.z))
                        xRot = math.deg(math.asin(dir.y))
                        
                        if yRot > 50 then
                                yRot = -50
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 1
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
                        elseif yRot > 25 then
                                yRot = 25
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 1
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
                        elseif yRot < -50 then
                                yRot = -50
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 1
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
                        end
                        
                        if xRot < -17.5 then
                                xRot = -17.5
                        elseif xRot > 20 then
                                xRot = 20
                        end
                        
                        -- orb.Transparency = 0.5 + math.abs(5 - ticks)/10
                        
                --        print( math.floor(xRot) .. ", " .. math.floor(yRot) .. ", 0" )
                        
                        frameRel = CFrame.Angles(0, math.rad(yRot), 0) * CFrame.Angles(math.rad(xRot), 0, 0)
                        
                        if not hold then
                                frameRel =
                                        CFrame.Angles(-math.pi/2, 0, 0) *
                                        CFrame.new(0.25, 0, 1) *
                                        CFrame.Angles(0, math.rad(-20), 0)
                        end
                        
                        LW.C0 = matrixInterpolate(lArmFrame, frameRel, 1.6)
 
                        LW.C0 =
                                CFrame.new(-1.5, 0.5, 0) *
                                LW.C0 *
                                CFrame.Angles(math.pi/2, 0, 0) *
                                CFrame.new(0, -1, 0)
 
                end
        end
end
 
 
deb = false
function keydown(key)
if key == "r" then
for i,e in pairs(workspace:GetChildren()) do
if e.Name == "effect" and e.className == "Part" then
e:Remove()
end
end
end
if key == "e" then
mode = "shuriken"
if eq == true then
eq = false
hideanim()
Ran = false
unequipweld()
        wait()    
end
end
if key == "f" then
mode = "hold"
if eq == false then
eq = true
equip()
end
end
if key == "g" then
mode = "dagger"
if eq == false then
eq = true
end
end
if key == "h" then
mode = "swing"
end
if key == "j" then
mode = "custom"
if cust == false then
hideanim()
unequipweld()
end
eq = true
end
--if mode == "custom" then
--if eq == true then
--eq = false
--end
--end
if key == "b" then
category = category -1
if category <1 then
category = 3
end
print(category)
end
if key == "n" then
category = category +1
if category >3 then
category = 1
end
print(category)
end
end
 
function LRelease(mouse)
hold = false
if mode == "custom" then
eq = false
            for i = 0 , 1 , 0.3 do
                wait()
s = Instance.new("Sound")
s.Parent = Torso
s.Pitch = 1
s.SoundId = "rbxasset://sounds/swordslash.wav"
s.Volume = 1.3
s:Play()
        LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0-i*2, -1,4+1*i)
                LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        end
 
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
swordholder.p19.W29.Part1 = Torso
swordholder.p19.W29.C0 = CFrame.new(-0.7, 1.2, -1)
swordholder.p19.W29.C0 = swordholder.p19.W29.C0 * CFrame.Angles(-0.2, -0.5, 1.3) 
end
fly = false
end
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Sword" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
 
 
 
function Sel(mouse) 
mouse.Button1Down:connect(function() LClick(mouse) end) 
mouse.Button1Up:connect(function() LRelease(mouse) end) 
    mouse.KeyDown:connect(keydown)
eq = true
deb = false
equipweld()
Ran = true
    player = Player
            ch = Character
    RSH = ch.Torso["Right Shoulder"]
    LSH = ch.Torso["Left Shoulder"]
    
    RSH.Parent = nil
    LSH.Parent = nil
    
    RW.Part0 = ch.Torso
    RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
    RW.C1 = CFrame.new(0, 0.5, 0)
    RW.Part1 = ch["Right Arm"]
    RW.Parent = ch.Torso
    _G.R = RW
    
    LW.Part0 = ch.Torso
    LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
    LW.C1 = CFrame.new(0, 0.5, 0)
    LW.Part1 = ch["Left Arm"]
    LW.Parent = ch.Torso
    _G.L = LW    
equipweld()
        equipanim()
 
end 
 
function Des(mouse) 
eq = false
deb = false
hideanim()
Ran = false
unequipweld()
for i,e in pairs(workspace:GetChildren()) do
if e.Name == "effect" then
e:Destroy()
end
end
        wait(0.05)
    RW.Parent = nil
    LW.Parent = nil
    RSH.Parent = player.Character.Torso
    LSH.Parent = player.Character.Torso
 
end 
Bin.Selected:connect(Sel) 
Bin.Deselected:connect(Des) 

--mediafire
 
