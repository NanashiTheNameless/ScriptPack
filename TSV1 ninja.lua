p = game.Players.LocalPlayer
pc = p.Character

pc["Left Leg"].Transparency = 1
pc["Right Leg"].Transparency = 1
pc["Right Arm"].Transparency = 1
pc["Left Arm"].Transparency = 1
pc.Torso.Transparency = 1
pc.Humanoid.WalkSpeed = 55

local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(1,2,1) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
wLL = Instance.new("Weld") 
wLL.Parent = pc["Left Leg"]
wLL.Part0 = pc["Left Leg"]
wLL.Part1 = a 
wLL.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,0,0)
local m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(1,0.8,1)
local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(1,2,1) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
wRL = Instance.new("Weld") 
wRL.Parent = pc["Right Leg"]
wRL.Part0 = pc["Right Leg"]
wRL.Part1 = a 
wRL.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,0,0)
local m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(1,0.8,1)
local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(1,2,1) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
wLA = Instance.new("Weld") 
wLA.Parent = pc["Left Arm"]
wLA.Part0 = pc["Left Arm"]
wLA.Part1 = a 
wLA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
local m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(1,0.8,1)
local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(1,2,1) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
wRA = Instance.new("Weld") 
wRA.Parent = pc["Right Arm"]
wRA.Part0 = pc["Right Arm"]
wRA.Part1 = a 
wRA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
local m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(1,0.8,1)
local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(2,2,1) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
weld = Instance.new("Weld") 
weld.Parent = pc.Torso
weld.Part0 = pc.Torso
weld.Part1 = a 
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
local m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(1,0.8,1)
local a = Instance.new("Part")
a.Parent = pc.Head
a.Size = Vector3.new(2,2,2) 
a.CFrame = pc.Head.CFrame
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth"
a.Color = Color3.new(Black)
a.Transparency = 0
weld = Instance.new("Weld") 
weld.Parent = pc.Head
weld.Part0 = pc.Head
weld.Part1 = a 
weld.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,0,0)
local m = Instance.new("SpecialMesh")
m.Parent = a
m.Scale = Vector3.new(1.2,1.2,1.2)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1286427"
m.TextureId = "http://www.roblox.com/asset/?id=1309894"
local aW = Instance.new("Part")
aW.Parent = pc.Head
aW.Size = Vector3.new(1,6,1) 
aW.CFrame = pc.Head.CFrame
aW.TopSurface = "Smooth" 
aW.BottomSurface = "Smooth"
aW.Color = Color3.new(Black)
aW.Transparency = 0
WW = Instance.new("Weld")
WW.Parent = pc.Torso
WW.Part0 = pc.Torso
WW.Part1 = aW 
WW.C0 = CFrame.new(0,0,0.7) * CFrame.Angles(0,0,1)
local m = Instance.new("CylinderMesh")
m.Parent = aW
m.Scale = Vector3.new(0.4,1,0.4)
button1 = Instance.new("ScreenGui") 
button1.Parent = p.PlayerGui 
button1.Name = "GrabWeapon" 
TestButton = Instance.new("TextButton") 
TestButton.Name = "TB" 
TestButton.Parent = button1 
TestButton.Position = UDim2.new(0, 20, 0, 600) 
TestButton.Size = UDim2.new(0, 100, 0, 100) 
TestButton.Text = "Grab Weapon" 
TestButton.BorderColor3 = Color3.new(1,1,1) 
TestButton.BackgroundColor3 = Color3.new(1, 1, 1) 
function Clicked() 
Torso = pc.Torso
Torso["Right Shoulder"].Part1 = nil
local right = Instance.new("Weld", Torso)
right.Part0 =Torso
right.Part1 = pc["Right Arm"]
right.C0 = CFrame.new(1.5, 0, 0)
right.C1 = CFrame.new(0, 0, 0)

for i = 1, 10 do
     right.C0 = right.C0 * CFrame.Angles(math.rad(27), 0, 0)
    wait(0.1)
end

WW.Part0 = pc["Right Arm"]
WW.C0 = CFrame.new(0,-0.9,0) * CFrame.Angles(1.55,0,0)

wait(0.3)

for e = 1, 10 do
    right.C0 = right.C0 * CFrame.Angles(math.rad(-27), 0, 0)
    wait(0.1)
end
end 
TestButton.MouseButton1Click:connect(Clicked)