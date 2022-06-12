who = "rigletto" -- mediafire gtfo password

Camera = Workspace[who]

Gui = Instance.new("ScreenGui")
Gui.Parent = nil
Gui.Name = "Halucinate"

Images = {
"http://www.roblox.com/asset/?id=46116132", -- picture of fruit
"http://www.roblox.com/asset/?id=37208920", -- symbol for man
"http://www.roblox.com/asset/?id=37208973", -- female symbol
"http://www.roblox.com/asset/?id=37755588", -- roblox symbol
"http://www.roblox.com/asset/?id=37755613", -- Lua symbol
"http://www.roblox.com/asset/?id=28905242", -- picture of yoshi running
"http://www.roblox.com/asset/?id=48101300", -- picture of a cat
"http://www.roblox.com/asset/?id=48093464", -- picture of a rabbit with an epic face
"http://www.roblox.com/asset/?id=48082343", -- freaky
}
--[[

function LLAMA(ImageId) -- xD
    local image = Instance.new("ImageLabel")
    image.Parent = Gui
    image.BackgroundTransparency = 1
    image.Image = ImageId
    coroutine.resume(coroutine.create(function()
    -- COLLA!
    end))
    pcall(function()
    image:Remove()
    end)
end

]]
MeshIds = {
"http://www.roblox.com/asset/?id=9419831", -- duck
"http://www.roblox.com/asset/?id=35241870", -- rainbow
"rbxasset://fonts/sword.mesh", -- sword
"rbxasset://fonts/rocketlauncher.mesh", -- rocket launcher
"http://www.roblox.com/asset/?id=16198309", -- hammer
"rbxasset://fonts/timebomb.mesh", -- bomb
"http://www.roblox.com/asset/?id=1237207", -- gift
"http://www.roblox.com/asset/?id=1279013", -- mjolner hammer
"http://www.roblox.com/asset/?id=15954259", -- tape measure
"http://www.roblox.com/asset/?id=10913794", -- atom/molecule
"http://www.roblox.com/asset/?id=1577360", -- clockwork shades
"http://www.roblox.com/asset/?id=42583785", -- car
"http://www.roblox.com/asset/?id=46356653", -- Lepprecon
"http://www.roblox.com/Asset/?id=10207236", -- Grenade
"http://www.roblox.com/asset/?id=4770583", -- Skull
"http://www.roblox.com/asset/?id=21057296", -- Mouse/Rat
"http://www.roblox.com/asset/?id=16657069", -- Sack
"http://www.roblox.com/asset/?id=21342275", -- Foam Finger
"http://www.roblox.com/asset/?id=24388358", -- Spiky Ball
"http://www.roblox.com/asset/?id=3270017", -- Ring
"http://www.roblox.com/asset/?id=15393082", -- Monkey/Chimp
"http://www.roblox.com/asset/?id=26416050", -- Pwny
"http://www.roblox.com/asset/?id=1095752", --Satellite
"http://www.roblox.com/asset/?id=16606212", --Gravity Coil
}

MeshTypes = {"Sphere","Brick","Cylinder","Head"}

for i = 1,#MeshIds do
table.insert(MeshTypes,"FileMesh")
end

function Minutes(time) -- Why this? -- I'm too lazy to put x60 with the seconds :3 -- lol
    return time * 60
end

function Hallucinate(size,position) -- must enter Vector3 values
    local Part = Instance.new("Part")
    Part.BottomSurface = ("Smooth")
    Part.TopSurface = ("Smooth")
    Part.formFactor = ("Custom")
    Part.Parent = Camera
    Part.Size = size
    Part.Anchored = true
    Part.CanCollide = false
    Part.Locked  = true
    Part.CFrame = CFrame.new(position) * CFrame.Angles(math.random(),math.random(),math.random()) -- right here
    local Sizez = math.random(1,10)
    local Mesh = Instance.new("SpecialMesh")
    Mesh.MeshType = MeshTypes[math.random(1,#MeshTypes)]
    Mesh.MeshId = MeshIds[math.random(1,#MeshIds)]
    Mesh.Scale = Vector3.new(Sizez,Sizez,Sizez)
    Mesh.Parent = Part
    game:GetService("Debris"):AddItem(Part,Minutes(2))
    coroutine.resume(coroutine.create(function() -- this part is blehblehbleh <_>
    
    while Part ~= nil do wait()
    
    for i = 1,10 do
    Part.Color = Color3.new(math.random(),math.random(),math.random())
    wait()
    Part.CFrame = Part.CFrame * CFrame.new(0.242134124,0,0) * CFrame.Angles(math.random() * .1,math.random()* .1,math.random()* .1) -- otherwise, its weird
    end
    
    for i = 1,10 do
    Part.Color = Color3.new(math.random(),math.random(),math.random())
    wait()
    Part.CFrame = Part.CFrame * CFrame.new(0.242134124,0,0) * CFrame.Angles(math.random()*.1,math.random()*.1,math.random()*.1)
    end
    
    Part.Color = Color3.new(math.random(),math.random(),math.random())
    end
    
    end))
end

function RunH()
for i = 1,math.random(30,70) do
    Hallucinate(Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10)),Vector3.new(math.random(-256,256),math.random(2,60),math.random(-256,256)))
    wait()
end
end
    
LastNight = {
    }

if script.Parent.className ~= "HopperBin" then

Tool = Instance.new("HopperBin")
Tool.Name = "Zippo"
Tool.Parent = game.Players[who].Backpack
script.Parent = Tool

vip = game.Players[who]
char = vip.Character

Colors = {21,24,106,105}

LighterOn = false

function Flicker()
coroutine.resume(coroutine.create(function()
while true do wait(0.1)
pcall(function()
char.Lighter.Flame.BrickColor = BrickColor.new(Colors[math.random(1,table.maxn(Colors))])
end)
if LighterOn == false then
CloseLighter()
elseif LighterOn == true then
OpenLighter()
end
end
end))
end

function Burn(part)
if part.Parent:findFirstChild("Humanoid") ~= nil then
if LighterOn then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - (part.Parent.Humanoid.MaxHealth/10)
end
end
end

function SmokeOn()
wait(3)
pcall(function()
if LighterOn and not LockLight then
char.Cig.Part.Smoke.Enabled = true
end
end)
coroutine.resume(coroutine.create(function()
for i = 1,40 do wait(0.2)
char.Cig.Part.Mesh.Bevel = char.Cig.Part.Mesh.Bevel - 0.0025
end
while char.Cig.Part.Transparency == 0 do
char.Cig.Part.Mesh.Scale = char.Cig.Part.Mesh.Scale - Vector3.new(0,0.01,0)
if char.Cig.Part.Mesh.Scale.y < 0 then SmokeOff() RunH() return end
wait(0.5)
end
RunH()
SmokeOff()
return
end))
end

function SmokeOff()
pcall(function()
char.Cig.Part.Smoke.Enabled = false
char.Cig.Part.Transparency = 1
char.Cig.Part.Mesh.Scale = Vector3.new(0.1,1.4,0.1)
char.Cig.Part.Mesh.Bevel = 0.1
end)
end

pcall(function()
Bag = Instance.new("Model")
Bag.Name = "Bag"
Bag.Parent = char
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.CanCollide = false
Main.Transparency = 0.5
Main.Reflectance = 0.01
Main.Parent = Bag
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.11
Mesh.Scale = Vector3.new(1,1,0.3)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Right Leg"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,0.4,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.CanCollide = false
Main.Transparency = 0
Main.Reflectance = 0.01
Main.Parent = Bag
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.11
Mesh.Scale = Vector3.new(1.01,0.1,0.31)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Right Leg"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,0.8,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new("Earth green")
Main.CanCollide = false
Main.Transparency = 0
Main.Reflectance = 0.1
Main.Parent = Bag
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.11
Mesh.Scale = Vector3.new(0.9,0.5,0.25)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Right Leg"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,0.2,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new("Bright green")
Main.CanCollide = false
Main.Transparency = 0
Main.Reflectance = 0.1
Main.Parent = Bag
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.11
Mesh.Scale = Vector3.new(0.9,0.5,0.25)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Right Leg"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,0.2,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
----
Lighter = Instance.new("Model")
Lighter.Name = "Lighter"
Lighter.Parent = char
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new("Dark stone grey")
Main.CanCollide = false
Main.Transparency = 0
Main.Reflectance = 0.1
Main.Parent = Lighter
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.05
Mesh.Scale = Vector3.new(0.4,0.6,0.7)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Left Arm"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,-1,-0.3) * CFrame.fromEulerAnglesXYZ(0,0,0)
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Name = "Cap"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new("Dark stone grey")
Main.CanCollide = false
Main.Transparency = 0
Main.Reflectance = 0.1
Main.Parent = Lighter
Mesh = Instance.new("BlockMesh")
Mesh.Bevel = 0.05
Mesh.Scale = Vector3.new(0.4,0.6,0.4)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Left Arm"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,-0.44,-0.78) * CFrame.fromEulerAnglesXYZ(0,0,0)
--pcall(function() Weld.C0 = CFrame.new(0,-1,-0.8) * CFrame.fromEulerAnglesXYZ(0,0,0) end)
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new(Colors[math.random(1,table.maxn(Colors))])
Main.Name = "Flame"
Main.CanCollide = false
Main.Transparency = 0.2
Main.Reflectance = 0.01
Main.Parent = Lighter
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(0.35,0.55,0.9)
Mesh.Parent = Main
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Left Arm"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
----
Dope = Instance.new("Model")
Dope.Name = "Cig"
Dope.Parent = char
Main = Instance.new("Part")
Main.formFactor = "Symmetric"
Main.Anchored = false
Main.Size = Vector3.new(1,1,1)
Main.Locked = true
Main.TopSurface = 0
Main.BottomSurface = 0
Main.BrickColor = BrickColor.new("Reddish brown")
Main.CanCollide = false
Main.Transparency = 0
Main.Parent = Dope
Main.Touched:connect(Burn)
Mesh = Instance.new("CylinderMesh")
Mesh.Bevel = 0.1
Mesh.Scale = Vector3.new(0.1,1.4,0.1)
Mesh.Parent = Main
Mesh.Offset = Vector3.new(0,0.6,0)
smoke = Instance.new("Smoke")
smoke.Parent = Main
smoke.Name = "Smoke"
smoke.RiseVelocity = 0
smoke.Size = 2--0.1
smoke.Opacity = 0.1
smoke.Enabled = false
smoke.Color = Color3.new(77,77,77)
Weld = Instance.new("Weld")
Weld.Parent = Main
Weld.Part0 = char["Head"]
Weld.Part1 = Main
Weld.C0 = CFrame.new(0,-0.35,-1.2) * CFrame.fromEulerAnglesXYZ(math.pi/2-0.2,0,0)
end)
end

function OpenLighter()
coroutine.resume(coroutine.create(function() char.Lighter.Cap.Weld.C0 = CFrame.new(0,-0.44,-0.78) * CFrame.Angles(0,0,0) end)) 
end

function CloseLighter()
coroutine.resume(coroutine.create(function() char.Lighter.Cap.Weld.C0 = CFrame.new(0,-1,-0.8) * CFrame.Angles(0,0,0) end)) 
end

LockLight = true

pi = math.pi

function Clicked(Mouse)

coroutine.resume(coroutine.create(function()
LighterOn = true
if LighterOn and LockLight then
LockLight = false -- LockLight = false
sho = char.Torso["Left Shoulder"]
sho.Parent = nil
ArmW = Instance.new("Snap")
ArmW.Parent = Bag
ArmW.Part0 = char.Torso
ArmW.Part1 = char["Left Arm"]
if char.Cig.Part.Transparency == 1 then
ArmW.C0 = CFrame.new(-1.5,0.5,-0.5) * CFrame.Angles(pi/2,0,0)
else
ArmW.C0 = CFrame.new(-0.9,0.5,-0.5) * CFrame.Angles(pi/2-0.1,-pi/2/2/2/2,pi/2/2)
end
end
end))
if char.Cig.Part.Transparency == 1 then
return else
SmokeOn()
end
end 

function UnClicked(Mouse)
if LockLight then return end
coroutine.resume(coroutine.create(function()
ArmW:Remove()
sho.Parent = char.Torso
--char:MakeJoints()
animate = char.Animate
new = animate:Clone()
animate:Remove()
new.Parent = char
LockLight = true
LighterOn = false
return
end))
end

function onKeyDown(key,Mouse)
if key == "q" then 
if not LockLight then return end
if LighterOn then -- Here
LighterOn = false
elseif not LighterOn then
LighterOn = true
end
end
if key == "e" then
if char.Cig.Part.Transparency == 1 then
char.Cig.Part.Transparency = 0
else
SmokeOff()
end
end
if key == "" then
for i,v in pairs(Camera:GetChildren()) do v:Remove() end
end
end

function Selected(Mouse) 
Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end 

function Deselected(Mouse)
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 

Flicker()
SmokeOff()
