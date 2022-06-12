Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
Cha.Torso.Transparency = 1
local new = Instance.new("Part", Player.Character)
new.Name = "Torso"
new.formFactor = "Symmetric"
new.TopSurface = "Smooth"
new.BottomSurface = "Smooth"
new.FormFactor = "Custom"
new.Size = Player.Character.Torso.Size
new.CFrame = Player.Character.Torso.CFrame
new.BrickColor = Player.Character.Torso.BrickColor
local weldT = Instance.new("Weld", Player.Character.Torso)
weldT.Part0 = Player.Character.Torso
weldT.Part1 = new
weldT.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
mouse = game.Players.LocalPlayer:GetMouse()
Tool = Instance.new("HopperBin",Player.Backpack)
Tool.Name = "Fan"
function onClicked(mouse)
if (not vDebounce) then
vDebounce = true
wa = Instance.new("Part",Char)
wa.Transparency=1
wa.CanCollide = false 
wa.Size = Vector3.new(1, 1, 1) 
wa:BreakJoints() 
Weld3 = Instance.new("Weld",wa) 
Weld3.Part0 = Blade
Weld3.Part1 = wa
Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
wa:remove()
vDebounce = false
 
 
end
end
Tool.Selected:connect(function(mouse)
end)
mouse.Button1Down:connect(function() onClicked(mouse) end)
 
 
Handle = Instance.new("Part",Cha)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Really black")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Brick"
HandleMesh.Scale = Vector3.new(0.1, 0.2, 3)
HWeld = Instance.new("Weld",Cha)
HWeld.Part0 = Cha["Right Arm"]
HWeld.Part1 = Handle
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.5, 0)
Handle2 = Instance.new("Part",Cha)
Handle2.TopSurface = "Smooth"
Handle2.BottomSurface = "Smooth"
Handle2.Size = Vector3.new(1, 1, 1)
Handle2.CanCollide = True
Handle2.BrickColor = BrickColor.new("Really black")
Handle2Mesh = Instance.new("SpecialMesh", Handle2)
Handle2Mesh.MeshType = "Brick"
Handle2Mesh.Scale = Vector3.new(0.1, 0.2, 3)
H2Weld = Instance.new("Weld",Cha)
H2Weld.Part0 = Cha["Right Arm"]
H2Weld.Part1 = Handle2
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.5, 0)
Fan = Instance.new("Part",Cha)
Fan.TopSurface = "Smooth"
Fan.BottomSurface = "Smooth"
Fan.Size = Vector3.new(1, 1, 1)
Fan.CanCollide = True
Fan.BrickColor = BrickColor.new("Pastel yellow")
FanMesh = Instance.new("SpecialMesh", Fan)
FanMesh.MeshType = "Brick"
FanMesh.Scale = Vector3.new(0.2, 0.1, 2.9)
FWeld = Instance.new("Weld",Cha)
FWeld.Part0 = Cha["Right Arm"]
FWeld.Part1 = Fan
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.5, 0)
Fan2 = Instance.new("Part",Cha)
Fan2.TopSurface = "Smooth"
Fan2.BottomSurface = "Smooth"
Fan2.Size = Vector3.new(1, 1, 1)
Fan2.CanCollide = True
Fan2.BrickColor = BrickColor.new("Pastel yellow")
Fan2Mesh = Instance.new("SpecialMesh", Fan2)
Fan2Mesh.MeshType = "Brick"
Fan2Mesh.Scale = Vector3.new(0.2, 0.1, 2.9)
F2Weld = Instance.new("Weld",Cha)
F2Weld.Part0 = Cha["Right Arm"]
F2Weld.Part1 = Fan2
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.5, 0)
Fan3 = Instance.new("Part",Cha)
Fan3.TopSurface = "Smooth"
Fan3.BottomSurface = "Smooth"
Fan3.Size = Vector3.new(1, 1, 1)
Fan3.CanCollide = True
Fan3.BrickColor = BrickColor.new("Pastel yellow")
Fan3Mesh = Instance.new("SpecialMesh", Fan3)
Fan3Mesh.MeshType = "Brick"
Fan3Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F3Weld = Instance.new("Weld",Cha)
F3Weld.Part0 = Cha["Right Arm"]
F3Weld.Part1 = Fan3
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.45, 0)
Fan4 = Instance.new("Part",Cha)
Fan4.TopSurface = "Smooth"
Fan4.BottomSurface = "Smooth"
Fan4.Size = Vector3.new(1, 1, 1)
Fan4.CanCollide = True
Fan4.BrickColor = BrickColor.new("Pastel yellow")
Fan4Mesh = Instance.new("SpecialMesh", Fan4)
Fan4Mesh.MeshType = "Brick"
Fan4Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F4Weld = Instance.new("Weld",Cha)
F4Weld.Part0 = Cha["Right Arm"]
F4Weld.Part1 = Fan4
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
Fan5 = Instance.new("Part",Cha)
Fan5.TopSurface = "Smooth"
Fan5.BottomSurface = "Smooth"
Fan5.Size = Vector3.new(1, 1, 1)
Fan5.CanCollide = True
Fan5.BrickColor = BrickColor.new("Pastel yellow")
Fan5Mesh = Instance.new("SpecialMesh", Fan5)
Fan5Mesh.MeshType = "Brick"
Fan5Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F5Weld = Instance.new("Weld",Cha)
F5Weld.Part0 = Cha["Right Arm"]
F5Weld.Part1 = Fan5
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
Fan6 = Instance.new("Part",Cha)
Fan6.TopSurface = "Smooth"
Fan6.BottomSurface = "Smooth"
Fan6.Size = Vector3.new(1, 1, 1)
Fan6.CanCollide = True
Fan6.BrickColor = BrickColor.new("Pastel yellow")
Fan6Mesh = Instance.new("SpecialMesh", Fan6)
Fan6Mesh.MeshType = "Brick"
Fan6Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F6Weld = Instance.new("Weld",Cha)
F6Weld.Part0 = Cha["Right Arm"]
F6Weld.Part1 = Fan6
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
Fan7 = Instance.new("Part",Cha)
Fan7.TopSurface = "Smooth"
Fan7.BottomSurface = "Smooth"
Fan7.Size = Vector3.new(1, 1, 1)
Fan7.CanCollide = True
Fan7.BrickColor = BrickColor.new("Pastel yellow")
Fan7Mesh = Instance.new("SpecialMesh", Fan7)
Fan7Mesh.MeshType = "Brick"
Fan7Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F7Weld = Instance.new("Weld",Cha)
F7Weld.Part0 = Cha["Right Arm"]
F7Weld.Part1 = Fan7
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
Fan8 = Instance.new("Part",Cha)
Fan8.TopSurface = "Smooth"
Fan8.BottomSurface = "Smooth"
Fan8.Size = Vector3.new(1, 1, 1)
Fan8.CanCollide = True
Fan8.BrickColor = BrickColor.new("Pastel yellow")
Fan8Mesh = Instance.new("SpecialMesh", Fan8)
Fan8Mesh.MeshType = "Brick"
Fan8Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F8Weld = Instance.new("Weld",Cha)
F8Weld.Part0 = Cha["Right Arm"]
F8Weld.Part1 = Fan8
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
Fan9 = Instance.new("Part",Cha)
Fan9.TopSurface = "Smooth"
Fan9.BottomSurface = "Smooth"
Fan9.Size = Vector3.new(1, 1, 1)
Fan9.CanCollide = True
Fan9.BrickColor = BrickColor.new("Pastel yellow")
Fan9Mesh = Instance.new("SpecialMesh", Fan9)
Fan9Mesh.MeshType = "Brick"
Fan9Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
F9Weld = Instance.new("Weld",Cha)
F9Weld.Part0 = Cha["Right Arm"]
F9Weld.Part1 = Fan9
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
Fanz = Instance.new("Part",Cha)
Fanz.TopSurface = "Smooth"
Fanz.BottomSurface = "Smooth"
Fanz.Size = Vector3.new(1, 1, 1)
Fanz.CanCollide = True
Fanz.BrickColor = BrickColor.new("Pastel yellow")
FanzMesh = Instance.new("SpecialMesh", Fanz)
FanzMesh.MeshType = "Brick"
FanzMesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZWeld = Instance.new("Weld",Cha)
FZWeld.Part0 = Cha["Right Arm"]
FZWeld.Part1 = Fanz
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
Fanz1 = Instance.new("Part",Cha)
Fanz1.TopSurface = "Smooth"
Fanz1.BottomSurface = "Smooth"
Fanz1.Size = Vector3.new(1, 1, 1)
Fanz1.CanCollide = True
Fanz1.BrickColor = BrickColor.new("Pastel yellow")
Fanz1Mesh = Instance.new("SpecialMesh", Fanz1)
Fanz1Mesh.MeshType = "Brick"
Fanz1Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ1Weld = Instance.new("Weld",Cha)
FZ1Weld.Part0 = Cha["Right Arm"]
FZ1Weld.Part1 = Fanz1
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
Fanz2 = Instance.new("Part",Cha)
Fanz2.TopSurface = "Smooth"
Fanz2.BottomSurface = "Smooth"
Fanz2.Size = Vector3.new(1, 1, 1)
Fanz2.CanCollide = True
Fanz2.BrickColor = BrickColor.new("Pastel yellow")
Fanz2Mesh = Instance.new("SpecialMesh", Fanz2)
Fanz2Mesh.MeshType = "Brick"
Fanz2Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ2Weld = Instance.new("Weld",Cha)
FZ2Weld.Part0 = Cha["Right Arm"]
FZ2Weld.Part1 = Fanz2
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Fanz3 = Instance.new("Part",Cha)
Fanz3.TopSurface = "Smooth"
Fanz3.BottomSurface = "Smooth"
Fanz3.Size = Vector3.new(1, 1, 1)
Fanz3.CanCollide = True
Fanz3.BrickColor = BrickColor.new("Pastel yellow")
Fanz3Mesh = Instance.new("SpecialMesh", Fanz3)
Fanz3Mesh.MeshType = "Brick"
Fanz3Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ3Weld = Instance.new("Weld",Cha)
FZ3Weld.Part0 = Cha["Right Arm"]
FZ3Weld.Part1 = Fanz3
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
Fanz4 = Instance.new("Part",Cha)
Fanz4.TopSurface = "Smooth"
Fanz4.BottomSurface = "Smooth"
Fanz4.Size = Vector3.new(1, 1, 1)
Fanz4.CanCollide = True
Fanz4.BrickColor = BrickColor.new("Pastel yellow")
Fanz4Mesh = Instance.new("SpecialMesh", Fanz4)
Fanz4Mesh.MeshType = "Brick"
Fanz4Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ4Weld = Instance.new("Weld",Cha)
FZ4Weld.Part0 = Cha["Right Arm"]
FZ4Weld.Part1 = Fanz4
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
Fanz5 = Instance.new("Part",Cha)
Fanz5.TopSurface = "Smooth"
Fanz5.BottomSurface = "Smooth"
Fanz5.Size = Vector3.new(1, 1, 1)
Fanz5.CanCollide = True
Fanz5.BrickColor = BrickColor.new("Pastel yellow")
Fanz5Mesh = Instance.new("SpecialMesh", Fanz5)
Fanz5Mesh.MeshType = "Brick"
Fanz5Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ5Weld = Instance.new("Weld",Cha)
FZ5Weld.Part0 = Cha["Right Arm"]
FZ5Weld.Part1 = Fanz5
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
Fanz6 = Instance.new("Part",Cha)
Fanz6.TopSurface = "Smooth"
Fanz6.BottomSurface = "Smooth"
Fanz6.Size = Vector3.new(1, 1, 1)
Fanz6.CanCollide = True
Fanz6.BrickColor = BrickColor.new("Pastel yellow")
Fanz6Mesh = Instance.new("SpecialMesh", Fanz6)
Fanz6Mesh.MeshType = "Brick"
Fanz6Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ6Weld = Instance.new("Weld",Cha)
FZ6Weld.Part0 = Cha["Right Arm"]
FZ6Weld.Part1 = Fanz6
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
Fanz7 = Instance.new("Part",Cha)
Fanz7.TopSurface = "Smooth"
Fanz7.BottomSurface = "Smooth"
Fanz7.Size = Vector3.new(1, 1, 1)
Fanz7.CanCollide = True
Fanz7.BrickColor = BrickColor.new("Pastel yellow")
Fanz7Mesh = Instance.new("SpecialMesh", Fanz7)
Fanz7Mesh.MeshType = "Brick"
Fanz7Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ7Weld = Instance.new("Weld",Cha)
FZ7Weld.Part0 = Cha["Right Arm"]
FZ7Weld.Part1 = Fanz7
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
Fanz8 = Instance.new("Part",Cha)
Fanz8.TopSurface = "Smooth"
Fanz8.BottomSurface = "Smooth"
Fanz8.Size = Vector3.new(1, 1, 1)
Fanz8.CanCollide = True
Fanz8.BrickColor = BrickColor.new("Pastel yellow")
Fanz8Mesh = Instance.new("SpecialMesh", Fanz8)
Fanz8Mesh.MeshType = "Brick"
Fanz8Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ8Weld = Instance.new("Weld",Cha)
FZ8Weld.Part0 = Cha["Right Arm"]
FZ8Weld.Part1 = Fanz8
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
Fanz9 = Instance.new("Part",Cha)
Fanz9.TopSurface = "Smooth"
Fanz9.BottomSurface = "Smooth"
Fanz9.Size = Vector3.new(1, 1, 1)
Fanz9.CanCollide = True
Fanz9.BrickColor = BrickColor.new("Pastel yellow")
Fanz9Mesh = Instance.new("SpecialMesh", Fanz9)
Fanz9Mesh.MeshType = "Brick"
Fanz9Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZ9Weld = Instance.new("Weld",Cha)
FZ9Weld.Part0 = Cha["Right Arm"]
FZ9Weld.Part1 = Fanz9
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
Fanz10 = Instance.new("Part",Cha)
Fanz10.TopSurface = "Smooth"
Fanz10.BottomSurface = "Smooth"
Fanz10.Size = Vector3.new(1, 1, 1)
Fanz10.CanCollide = True
Fanz10.BrickColor = BrickColor.new("Pastel yellow")
Fanz10Mesh = Instance.new("SpecialMesh", Fanz10)
Fanz10Mesh.MeshType = "Brick"
Fanz10Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZSWeld = Instance.new("Weld",Cha)
FZSWeld.Part0 = Cha["Right Arm"]
FZSWeld.Part1 = Fanz10
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
Fanz11 = Instance.new("Part",Cha)
Fanz11.TopSurface = "Smooth"
Fanz11.BottomSurface = "Smooth"
Fanz11.Size = Vector3.new(1, 1, 1)
Fanz11.CanCollide = True
Fanz11.BrickColor = BrickColor.new("Pastel yellow")
Fanz11Mesh = Instance.new("SpecialMesh", Fanz11)
Fanz11Mesh.MeshType = "Brick"
Fanz11Mesh.Scale = Vector3.new(0.1, 0.1, 2.9)
FZS1Weld = Instance.new("Weld",Cha)
FZS1Weld.Part0 = Cha["Right Arm"]
FZS1Weld.Part1 = Fanz11
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.45, 0)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.6, 0.5)
wait()
Tool:Destroy()
 
 
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
mouse.KeyDown:connect(function(key)
key:lower()
if key == "q" then
Chat(Cha.Head,"Close","Really black")
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.45, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.45, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.45, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.45, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if key == "e" then
Chat(Cha.Head,"Open","Really black")
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.0, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
wait()
HWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.5, 0)
H2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.5, 0)
FWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.5, 0)
F2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.5, 0)
F3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.45, 0)
F4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.4, 0)
F5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.35, 0)
F6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.3, 0)
F7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.25, 0)
F8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.2, 0)
F9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.15, 0)
FZWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
FZ1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.05, 0)
FZ2Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
FZ3Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.05, 0)
FZ4Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
FZ5Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.15, 0)
FZ6Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.2, 0)
FZ7Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.25, 0)
FZ8Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.3, 0)
FZ9Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.35, 0)
FZSWeld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.4, 0)
FZS1Weld.C1 = CFrame.new(0, 1, 1)*CFrame.fromEulerAnglesXYZ(0, -0.45, 0)
end
if key == "r" then
Chat(Cha.Head,"Dizzy wind", "Really black")
torso = Player.Character.Torso
bla=Instance.new('Part',Workspace)
bla.Size=Vector3.new(3,3,3)
bla.BrickColor=BrickColor.new("White")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*10
blaMesh = Instance.new("SpecialMesh",bla)
blaMesh.MeshType = "FileMesh" 
blaMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
blaMesh.Scale = Vector3.new(3, 5, 3)
bv3 = Instance.new('BodyVelocity',bla)  
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*100
 
 
local bp = Instance.new("BodyAngularVelocity")
bp.maxTorque = Vector3.new(3, math.huge, 3)
bp.angularvelocity = Vector3.new(0, 100, 0)
bla.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") then
if hit.Parent.Name == game.Players.LocalPlayer.Name then
print("No")
else
bp:clone().Parent = hit.Parent:findFirstChild("Torso")
wait()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
wait(5)
bp.angularvelocity = Vector3.new(0, 0, 0)
end
end
end)
end
if key =="t" then
Chat(Cha.Head,"Dizzy Death","Really black")
Cha.Humanoid.WalkSpeed = 100
Tornado = Instance.new("Part",Cha)
Tornado.TopSurface = "Smooth"
Tornado.BottomSurface = "Smooth"
Tornado.CanCollide = True
Tornado.BrickColor = BrickColor.new("White")
Tornado.Reflectance = 0.3
Tornado.Transparency = 0
local TornadoMesh = Instance.new("SpecialMesh",Tornado)
TornadoMesh.MeshType = "FileMesh" 
TornadoMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
TornadoMesh.Scale = Vector3.new(40, 70, 40)
WeldG = Instance.new("Weld",Cha)
WeldG.Part0 = Cha.Torso
WeldG.Part1 = Tornado
WeldG.C1 = CFrame.new(0, -40, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
bav = Instance.new("BodyAngularVelocity", Tornado)
bav.angularvelocity = Vector3.new(0,15,0)
bav.maxTorque = Vector3.new(4000, 39999999735263250042846025505031847936, 4000)
Tornadof = Instance.new("Part",Cha)
Tornadof.TopSurface = "Smooth"
Tornadof.BottomSurface = "Smooth"
Tornadof.CanCollide = True
Tornadof.BrickColor = BrickColor.new("Really red")
Tornadof.Reflectance = 0.3
Tornadof.Transparency = 1
local TornadofMesh = Instance.new("SpecialMesh",Tornadof)
TornadofMesh.MeshType = "FileMesh" 
TornadofMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
TornadofMesh.Scale = Vector3.new(40, 1, 40)
WeldGf = Instance.new("Weld",Cha)
WeldGf.Part0 = Cha.Torso
WeldGf.Part1 = Tornadof
WeldGf.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
local bp = Instance.new("BodyAngularVelocity")
bp.maxTorque = Vector3.new(3, math.huge, 3)
bp.angularvelocity = Vector3.new(0, 100, 0)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(3, math.huge, 3)
bv.velocity = Vector3.new(0, 10, 0)
Tornadof.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") then
if hit.Parent.Name == game.Players.LocalPlayer.Name then
print("No")
else
bp:clone().Parent = hit.Parent:findFirstChild("Torso")
wait(1)
bv:clone().Parent = hit.Parent:findFirstChild("Torso")
end
end
end)
wait(10)
Tornado:Destroy()
Tornadof:Destroy()
Cha.Humanoid.WalkSpeed = 30
end
if key == "f" then
Chat(Cha.Head,"Fan Art One: Typhoon","Navy blue")
torso = Player.Character.Torso
blat=Instance.new('Part',Workspace)
blat.Size=Vector3.new(1,20,20)
blat.BrickColor=BrickColor.new("Navy blue")
blat.Transparency = 0.4
blat.CanCollide = True
blat.Position=torso.Position+torso.CFrame.lookVector*10
blatMesh = Instance.new("SpecialMesh",blat)
blatMesh.MeshType = "FileMesh" 
blatMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
blatMesh.Scale = Vector3.new(20, 40, 20)
bvt = Instance.new('BodyVelocity',blat)  
bvt.maxForce = Vector3.new()*math.huge
bvt.velocity = torso.CFrame.lookVector*100
local bp = Instance.new("BodyAngularVelocity")
bp.maxTorque = Vector3.new(3, math.huge, 3)
bp.angularvelocity = Vector3.new(0, 0, 0)
blat.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") then
if hit.Parent.Name == game.Players.LocalPlayer.Name then
print("No")
else
bp:clone().Parent = hit.Parent:findFirstChild("Torso")
wait()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
wait(5)
bp.angularvelocity = Vector3.new(0, 0, 0)
end
end
end)
end
if key == "g" then
Chat(Cha.Head,"Fan Art Two: Volcanic Wind","Really red")
torso = Player.Character.Torso
blaf=Instance.new('Part',Workspace)
blaf.Size=Vector3.new(3,3,3)
blaf.BrickColor=BrickColor.new("Really red")
blaf.Transparency = 0.5
blaf.CanCollide = True
blaf.Position=torso.Position+torso.CFrame.lookVector*10
blafMesh = Instance.new("SpecialMesh",blaf)
blafMesh.MeshType = "FileMesh" 
blafMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
blafMesh.Scale = Vector3.new(3, 5, 3)
bv3 = Instance.new('BodyVelocity',blaf)  
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*100
 
 
local bpt = Instance.new("BodyAngularVelocity")
bpt.maxTorque = Vector3.new(3, math.huge, 3)
bpt.angularvelocity = Vector3.new(0, 100, 0)
blaf.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") then
if hit.Parent.Name == game.Players.LocalPlayer.Name then
print("No")
else
bpt:clone().Parent = hit.Parent:findFirstChild("Torso")
wait()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
wait()
bpt.angularvelocity = Vector3.new(0, 0, 0)
end
end
end)
end
if key == "h" then
Chat(Cha.Head,"Fan Art Three: Snow Sphere","White")
Ice = Instance.new("Part",Cha)
Ice.TopSurface = "Smooth"
Ice.BottomSurface = "Smooth"
Ice.CanCollide = True
Ice.BrickColor = BrickColor.new("White")
Ice.Reflectance = 0.3
Ice.Transparency = 0
local IceMesh = Instance.new("SpecialMesh",Ice)
IceMesh.MeshType = "Sphere" 
IceMesh.Scale = Vector3.new(8, 8, 8)
WeldG2 = Instance.new("Weld",Cha)
WeldG2.Part0 = Cha.Torso
WeldG2.Part1 = Ice
WeldG2.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
local bpt2 = Instance.new("BodyAngularVelocity")
bpt2.maxTorque = Vector3.new(3, math.huge, 3)
bpt2.angularvelocity = Vector3.new(0, 100, 0)
wait()
IceMesh.Scale = Vector3.new(9, 9, 9)
Ice.Size = Vector3.new(3,3,3)
Ice.Transparency = 0.1
wait()
IceMesh.Scale = Vector3.new(11, 11, 11)
wait()
IceMesh.Scale = Vector3.new(13, 13, 13)
Ice.Size = Vector3.new(6,6,6)
Ice.Transparency = 0.2
wait()
IceMesh.Scale = Vector3.new(15, 15, 15)
wait()
IceMesh.Scale = Vector3.new(17, 17, 17)
Ice.Size = Vector3.new(9,9,9)
Ice.Transparency = 0.3
wait()
IceMesh.Scale = Vector3.new(19, 19, 19)
wait()
IceMesh.Scale = Vector3.new(21, 21, 21)
Ice.Size = Vector3.new(12,12,12)
Ice.Transparency = 0.5
wait()
IceMesh.Scale = Vector3.new(23, 23, 23)
wait()
IceMesh.Scale = Vector3.new(25, 25, 25)
Ice.Size = Vector3.new(15,15,15)
Ice.Transparency = 0.7
wait()
IceMesh.Scale = Vector3.new(27, 27, 27)
wait()
IceMesh.Scale = Vector3.new(29, 29, 29)
Ice.Size = Vector3.new(18,18,18)
Ice.Transparency = 0.9
wait()
IceMesh.Scale = Vector3.new(31, 31, 31)
wait()
Ice.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Torso") then
if hit.Parent.Name == game.Players.LocalPlayer.Name then
print("No")
else
bpt2:clone().Parent = hit.Parent:findFirstChild("Torso")
wait()
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
wait()
bpt2.angularvelocity = Vector3.new(0, 0, 0)
end
end
end)
Ice.Transparency = 1
wait(1)
Ice:Destroy()
end
if key == "z" then
Chat(Cha.Head,"Wind God Mode On","White")
Cha.Humanoid.WalkSpeed = 100
Cha.Humanoid.MaxHealth = 1000
Cha.Humanoid.Health = 1000
TornadoG = Instance.new("Part",Cha)
TornadoG.TopSurface = "Smooth"
TornadoG.BottomSurface = "Smooth"
TornadoG.CanCollide = True
TornadoG.BrickColor = BrickColor.new("White")
TornadoG.Reflectance = 0.3
TornadoG.Transparency = 0
local TornadoGMesh = Instance.new("SpecialMesh",TornadoG)
TornadoGMesh.MeshType = "FileMesh" 
TornadoGMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
TornadoGMesh.Scale = Vector3.new(8, 8, 8)
WeldG2 = Instance.new("Weld",Cha)
WeldG2.Part0 = Cha.Torso
WeldG2.Part1 = TornadoG
WeldG2.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
TornadoGMesh.Scale = Vector3.new(9, 9, 9)
TornadoG.Transparency = 0.1
wait()
TornadoGMesh.Scale = Vector3.new(11, 11, 11)
TornadoG.Transparency = 0.2
wait()
TornadoGMesh.Scale = Vector3.new(13, 13, 13)
TornadoG.Transparency = 0.3
wait()
TornadoGMesh.Scale = Vector3.new(15, 15, 15)
TornadoG.Transparency = 0.4
wait()
TornadoGMesh.Scale = Vector3.new(17, 17, 17)
TornadoG.Transparency = 0.5
wait()
TornadoGMesh.Scale = Vector3.new(19, 19, 19)
TornadoG.Transparency = 0.6
wait()
TornadoGMesh.Scale = Vector3.new(21, 21, 21)
TornadoG.Transparency = 0.7
wait()
TornadoGMesh.Scale = Vector3.new(23, 23, 23)
TornadoG.Transparency = 0.8
wait()
TornadoGMesh.Scale = Vector3.new(25, 25, 25)
TornadoG.Transparency = 0.9
wait()
TornadoGMesh.Scale = Vector3.new(27, 27, 27)
TornadoG.Transparency = 1
wait(1)
TornadoG:Destroy()
end
if key == "x" then
Chat(Cha.Head,"Wind God Mode Off","White")
Cha.Humanoid.WalkSpeed = 30
Cha.Humanoid.MaxHealth = 100
Cha.Humanoid.Health = 100
end
if key == "c" then
Chat(Cha.Head,"EF5 CYCLONE","White")
mountain = Instance.new("Part",Workspace)
mountain.Anchored = true
mountain.CanCollide = True
mountain.Size = Vector3.new(100, 100, 100)
mountain.CFrame = Cha.Torso.CFrame *CFrame.new(0,50,-65) --this is what i did
local mountainMesh = Instance.new("SpecialMesh",mountain)
mountainMesh.MeshType = "FileMesh" 
mountainMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
mountainMesh.Scale = Vector3.new(100, 100, 100)
mountain.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(30)
end
end
end)
wait(6)
mountain:Destroy()
end
end)
 
 
