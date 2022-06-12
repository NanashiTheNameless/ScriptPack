Player = game:GetService("Players").LocalPlayer 

Cha = Player.Character

workspace.ace28545.Torso.Transparency = 1

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

Tool.Name = "Grass katana"

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

workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.3)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -2.1)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.9)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.7)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.3)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -1.1)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.9)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.7)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)


for i = 1,26 do wait()

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size = Vector3.new(1,1,1)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Really black")


p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Handle.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)


end 

wa:remove()

vDebounce = false



end

end

Tool.Selected:connect(function(mouse)

end)

mouse.Button1Down:connect(function() onClicked(mouse) end)



Handle = Instance.new("Part",Workspace.ace28545)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Reddish brown")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Cylinder"
HandleMesh.Scale = Vector3.new(2, 0.4, 0.4)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Handle
Weld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 1.5, 0)

Ring = Instance.new("Part",Workspace.ace28545)
Ring.TopSurface = "Smooth"
Ring.BottomSurface = "Smooth"
Ring.CanCollide = True
Ring.BrickColor = BrickColor.new("Reddish brown")
Ring.Reflectance = 0
Ring.Transparency = 0
local RingMesh = Instance.new("SpecialMesh",Ring) RingMesh.MeshType = "FileMesh" RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Ring
Weld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Ring2 = Instance.new("Part",Workspace.ace28545)
Ring2.TopSurface = "Smooth"
Ring2.BottomSurface = "Smooth"
Ring2.CanCollide = True
Ring2.BrickColor = BrickColor.new("Reddish brown")
Ring2.Reflectance = 0
Ring2.Transparency = 0
local Ring2Mesh = Instance.new("SpecialMesh",Ring2) Ring2Mesh.MeshType = "FileMesh" Ring2Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Ring2Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Ring2
Weld.C1 = CFrame.new(-0.06, 1, -1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Ring3 = Instance.new("Part",Workspace.ace28545)
Ring3.TopSurface = "Smooth"
Ring3.BottomSurface = "Smooth"
Ring3.CanCollide = True
Ring3.BrickColor = BrickColor.new("Reddish brown")
Ring3.Reflectance = 0
Ring3.Transparency = 0
local Ring3Mesh = Instance.new("SpecialMesh",Ring3) Ring3Mesh.MeshType = "FileMesh" Ring3Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Ring3Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Ring3
Weld.C1 = CFrame.new(0.06, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Crystal = Instance.new("Part",Workspace.ace28545)
Crystal.TopSurface = "Smooth"
Crystal.BottomSurface = "Smooth"
Crystal.CanCollide = True
Crystal.BrickColor = BrickColor.new("Earth green")
Crystal.Reflectance = 0
Crystal.Transparency = 0
local CrystalMesh = Instance.new("SpecialMesh",Crystal) CrystalMesh.MeshType = "FileMesh" CrystalMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CrystalMesh.Scale = Vector3.new(0.4, 0.4, 0.2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Crystal
Weld.C1 = CFrame.new(0.04, 1, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Crystal2 = Instance.new("Part",Workspace.ace28545)
Crystal2.TopSurface = "Smooth"
Crystal2.BottomSurface = "Smooth"
Crystal2.CanCollide = True
Crystal2.BrickColor = BrickColor.new("Earth green")
Crystal2.Reflectance = 0
Crystal2.Transparency = 0
local Crystal2Mesh = Instance.new("SpecialMesh",Crystal2) Crystal2Mesh.MeshType = "FileMesh" Crystal2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal2Mesh.Scale = Vector3.new(0.4, 0.4, 0.2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Crystal2
Weld.C1 = CFrame.new(-0.04, 1, -0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Crystal3 = Instance.new("Part",Workspace.ace28545)
Crystal3.TopSurface = "Smooth"
Crystal3.BottomSurface = "Smooth"
Crystal3.CanCollide = True
Crystal3.BrickColor = BrickColor.new("Earth green")
Crystal3.Reflectance = 0
Crystal3.Transparency = 0
local Crystal3Mesh = Instance.new("SpecialMesh",Crystal3) Crystal3Mesh.MeshType = "FileMesh" Crystal3Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal3Mesh.Scale = Vector3.new(0.4, 0.4, 0.2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Crystal3
Weld.C1 = CFrame.new(0.06, 1, 0.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Crystal4 = Instance.new("Part",Workspace.ace28545)
Crystal4.TopSurface = "Smooth"
Crystal4.BottomSurface = "Smooth"
Crystal4.CanCollide = True
Crystal4.BrickColor = BrickColor.new("Earth green")
Crystal4.Reflectance = 0
Crystal4.Transparency = 0
local Crystal4Mesh = Instance.new("SpecialMesh",Crystal4) Crystal4Mesh.MeshType = "FileMesh" Crystal4Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal4Mesh.Scale = Vector3.new(0.4, 0.4, 0.2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Crystal4
Weld.C1 = CFrame.new(-0.06, 1, -0.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Seperator = Instance.new("Part",Workspace.ace28545)
Seperator.TopSurface = "Smooth"
Seperator.BottomSurface = "Smooth"
Seperator.CanCollide = True
Seperator.BrickColor = BrickColor.new("Reddish brown")
Seperator.Reflectance = 0
Seperator.Transparency = 0
local SeperatorMesh = Instance.new("SpecialMesh",Seperator) 
SeperatorMesh.MeshType = "Brick"
SeperatorMesh.Scale = Vector3.new(0.2, 0.2, 0.1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Seperator
Weld.C1 = CFrame.new(0.06, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Seperator2 = Instance.new("Part",Workspace.ace28545)
Seperator2.TopSurface = "Smooth"
Seperator2.BottomSurface = "Smooth"
Seperator2.CanCollide = True
Seperator2.BrickColor = BrickColor.new("Reddish brown")
Seperator2.Reflectance = 0
Seperator2.Transparency = 0
local Seperator2Mesh = Instance.new("SpecialMesh",Seperator2) 
Seperator2Mesh.MeshType = "Brick"
Seperator2Mesh.Scale = Vector3.new(0.2, 0.2, 0.1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Seperator2
Weld.C1 = CFrame.new(0.06, 1, 1)*CFrame.fromEulerAnglesXYZ(0, 0.5, 0)

Seperator3 = Instance.new("Part",Workspace.ace28545)
Seperator3.TopSurface = "Smooth"
Seperator3.BottomSurface = "Smooth"
Seperator3.CanCollide = True
Seperator3.BrickColor = BrickColor.new("Reddish brown")
Seperator3.Reflectance = 0
Seperator3.Transparency = 0
local Seperator3Mesh = Instance.new("SpecialMesh",Seperator3) 
Seperator3Mesh.MeshType = "Brick"
Seperator3Mesh.Scale = Vector3.new(0.2, 0.2, 0.1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Seperator3
Weld.C1 = CFrame.new(0.06, 1, 1.1)*CFrame.fromEulerAnglesXYZ(0, -0.5, 0)

Seperator4 = Instance.new("Part",Workspace.ace28545)
Seperator4.TopSurface = "Smooth"
Seperator4.BottomSurface = "Smooth"
Seperator4.CanCollide = True
Seperator4.BrickColor = BrickColor.new("Reddish brown")
Seperator4.Reflectance = 0
Seperator4.Transparency = 0
local Seperator4Mesh = Instance.new("SpecialMesh",Seperator4) 
Seperator4Mesh.MeshType = "Brick"
Seperator4Mesh.Scale = Vector3.new(0.06, 0.6, 0.1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Seperator4
Weld.C1 = CFrame.new(0.06, 0.9, 0.5)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)

Seperator5 = Instance.new("Part",Workspace.ace28545)
Seperator5.TopSurface = "Smooth"
Seperator5.BottomSurface = "Smooth"
Seperator5.CanCollide = True
Seperator5.BrickColor = BrickColor.new("Reddish brown")
Seperator5.Reflectance = 0
Seperator5.Transparency = 0
local Seperator5Mesh = Instance.new("SpecialMesh",Seperator5) 
Seperator5Mesh.MeshType = "Brick"
Seperator5Mesh.Scale = Vector3.new(0.06, 0.6, 0.1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Seperator5
Weld.C1 = CFrame.new(0.06, 0.8, 1.5)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0)

Blade = Instance.new("Part",Workspace.ace28545)
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.CanCollide = True
Blade.BrickColor = BrickColor.new("Light stone grey")
Blade.Reflectance = 0
Blade.Transparency = 0
local BladeMesh = Instance.new("SpecialMesh",Blade) 
BladeMesh.MeshType = "Brick"
BladeMesh.Scale = Vector3.new(0.05, 0.15, 2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Blade
Weld.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Point = Instance.new("Part",Workspace.ace28545)
Point.TopSurface = "Smooth"
Point.BottomSurface = "Smooth"
Point.CanCollide = True
Point.BrickColor = BrickColor.new("Light stone grey")
Point.Reflectance = 0
Point.Transparency = 0
local PointMesh = Instance.new("SpecialMesh",Point) 
PointMesh.MeshType = "Wedge"
PointMesh.Scale = Vector3.new(0.05, 0.15, 0.5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Point
Weld.C1 = CFrame.new(0.15, -0.3, 5.55)*CFrame.fromEulerAnglesXYZ(3, 3.1, 0)

Case = Instance.new("Part",Workspace.ace28545)
Case.TopSurface = "Smooth"
Case.BottomSurface = "Smooth"
Case.CanCollide = True
Case.BrickColor = BrickColor.new("Earth green")
Case.Reflectance = 0
Case.Transparency = 0
local CaseMesh = Instance.new("SpecialMesh",Case) 
CaseMesh.MeshType = "Brick"
CaseMesh.Scale = Vector3.new(0.07, 0.17, 3)
WeldC = Instance.new("Weld",Workspace.ace28545)
WeldC.Part0 = game.Workspace.ace28545["Right Arm"]
WeldC.Part1 = Case
WeldC.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Holder = Instance.new("Part",Workspace.ace28545)
Holder.TopSurface = "Smooth"
Holder.BottomSurface = "Smooth"
Holder.CanCollide = True
Holder.BrickColor = BrickColor.new("Really black")
Holder.Reflectance = 0
Holder.Transparency = 0
local HolderMesh = Instance.new("SpecialMesh",Holder) HolderMesh.MeshType = "FileMesh" HolderMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
HolderMesh.Scale = Vector3.new(0.3, 0.3, 0.3)
WeldH = Instance.new("Weld",Workspace.ace28545)
WeldH.Part0 = game.Workspace.ace28545["Right Arm"]
WeldH.Part1 = Holder
WeldH.C1 = CFrame.new(0.06, 1, 2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Holder2 = Instance.new("Part",Workspace.ace28545)
Holder2.TopSurface = "Smooth"
Holder2.BottomSurface = "Smooth"
Holder2.CanCollide = True
Holder2.BrickColor = BrickColor.new("Really black")
Holder2.Reflectance = 0
Holder2.Transparency = 0
local Holder2Mesh = Instance.new("SpecialMesh",Holder2) Holder2Mesh.MeshType = "FileMesh" Holder2Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Holder2Mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
WeldH2 = Instance.new("Weld",Workspace.ace28545)
WeldH2.Part0 = game.Workspace.ace28545["Right Arm"]
WeldH2.Part1 = Holder2
WeldH2.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Holder3 = Instance.new("Part",Workspace.ace28545)
Holder3.TopSurface = "Smooth"
Holder3.BottomSurface = "Smooth"
Holder3.CanCollide = True
Holder3.BrickColor = BrickColor.new("Really black")
Holder3.Reflectance = 0
Holder3.Transparency = 0
local Holder3Mesh = Instance.new("SpecialMesh",Holder3) Holder3Mesh.MeshType = "FileMesh" Holder3Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Holder3Mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
WeldH3 = Instance.new("Weld",Workspace.ace28545)
WeldH3.Part0 = game.Workspace.ace28545["Right Arm"]
WeldH3.Part1 = Holder3
WeldH3.C1 = CFrame.new(0.06, 1, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Holder4 = Instance.new("Part",Workspace.ace28545)
Holder4.TopSurface = "Smooth"
Holder4.BottomSurface = "Smooth"
Holder4.CanCollide = True
Holder4.BrickColor = BrickColor.new("Really black")
Holder4.Reflectance = 0
Holder4.Transparency = 0
local Holder4Mesh = Instance.new("SpecialMesh",Holder4) Holder4Mesh.MeshType = "FileMesh" Holder4Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Holder4Mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
WeldH4 = Instance.new("Weld",Workspace.ace28545)
WeldH4.Part0 = game.Workspace.ace28545["Right Arm"]
WeldH4.Part1 = Holder4
WeldH4.C1 = CFrame.new(0.06, 1, 5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Blade.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)

Point.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end)

Tool.Deselected:connect(function(mouse)
end)


wait()
Tool:Destroy()

workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.4)
workspace.ace28545.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)

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

--Key
mouse.KeyDown:connect(function(key)
key:lower()
if key == "q" then

Chat(workspace.ace28545.Head,"Sheath","Really black")
workspace.ace28545.Humanoid.WalkSpeed = 20
Case.Transparency=0.9
Holder.Transparency=0.9
Holder2.Transparency=0.9
Holder3.Transparency=0.9
Holder4.Transparency=0.9
WeldC.C1 = CFrame.new(0.06, 1, 3.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.8
Holder.Transparency=0.8
Holder2.Transparency=0.8
Holder3.Transparency=0.8
Holder4.Transparency=0.8
WeldC.C1 = CFrame.new(0.06, 1, 3.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.7
Holder.Transparency=0.7
Holder2.Transparency=0.7
Holder3.Transparency=0.7
Holder4.Transparency=0.7
WeldC.C1 = CFrame.new(0.06, 1, 3.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.6
Holder.Transparency=0.6
Holder2.Transparency=0.6
Holder3.Transparency=0.6
Holder4.Transparency=0.6
WeldC.C1 = CFrame.new(0.06, 1, 3.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.5
Holder.Transparency=0.5
Holder2.Transparency=0.5
Holder3.Transparency=0.5
Holder4.Transparency=0.5
WeldC.C1 = CFrame.new(0.06, 1, 3.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.4
Holder.Transparency=0.4
Holder2.Transparency=0.4
Holder3.Transparency=0.4
Holder4.Transparency=0.4
WeldC.C1 = CFrame.new(0.06, 1, 3.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.3
Holder.Transparency=0.3
Holder2.Transparency=0.3
Holder3.Transparency=0.3
Holder4.Transparency=0.3
WeldC.C1 = CFrame.new(0.06, 1, 3.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.2
Holder.Transparency=0.2
Holder2.Transparency=0.2
Holder3.Transparency=0.2
Holder4.Transparency=0.2
WeldC.C1 = CFrame.new(0.06, 1, 3.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.1
Holder.Transparency=0.1
Holder2.Transparency=0.1
Holder3.Transparency=0.1
Holder4.Transparency=0.1
WeldC.C1 = CFrame.new(0.06, 1, 3.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0
Holder.Transparency=0
Holder2.Transparency=0
Holder3.Transparency=0
Holder4.Transparency=0
WeldC.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if key == "e" then

Chat(workspace.ace28545.Head,"UnSheath","Really black")

workspace.ace28545.Humanoid.WalkSpeed = 50
Case.Transparency=0.1
Holder.Transparency=0.1
Holder2.Transparency=0.1
Holder3.Transparency=0.1
Holder4.Transparency=0.1
WeldC.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.2
Holder.Transparency=0.2
Holder2.Transparency=0.2
Holder3.Transparency=0.2
Holder4.Transparency=0.2
WeldC.C1 = CFrame.new(0.06, 1, 3.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.3
Holder.Transparency=0.3
Holder2.Transparency=0.3
Holder3.Transparency=0.3
Holder4.Transparency=0.3
WeldC.C1 = CFrame.new(0.06, 1, 3.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.4
Holder.Transparency=0.4
Holder2.Transparency=0.4
Holder3.Transparency=0.4
Holder4.Transparency=0.4
WeldC.C1 = CFrame.new(0.06, 1, 3.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.5
Holder.Transparency=0.5
Holder2.Transparency=0.5
Holder3.Transparency=0.5
Holder4.Transparency=0.5
WeldC.C1 = CFrame.new(0.06, 1, 3.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.6
Holder.Transparency=0.6
Holder2.Transparency=0.6
Holder3.Transparency=0.6
Holder4.Transparency=0.6
WeldC.C1 = CFrame.new(0.06, 1, 3.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.7
Holder.Transparency=0.7
Holder2.Transparency=0.7
Holder3.Transparency=0.7
Holder4.Transparency=0.7
WeldC.C1 = CFrame.new(0.06, 1, 3.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.8
Holder.Transparency=0.8
Holder2.Transparency=0.8
Holder3.Transparency=0.8
Holder4.Transparency=0.8
WeldC.C1 = CFrame.new(0.06, 1, 3.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.8)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=0.9
Holder.Transparency=0.9
Holder2.Transparency=0.9
Holder3.Transparency=0.9
Holder4.Transparency=0.9
WeldC.C1 = CFrame.new(0.06, 1, 3.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5.9)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Case.Transparency=1
Holder.Transparency=1
Holder2.Transparency=1
Holder3.Transparency=1
Holder4.Transparency=1
WeldC.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH.C1 = CFrame.new(0.06, 1, 2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH2.C1 = CFrame.new(0.06, 1, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH3.C1 = CFrame.new(0.06, 1, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
WeldH4.C1 = CFrame.new(0.06, 1, 5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if key == "r" then
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 3.1, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 2.9, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 2.7, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 2.5, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 2.3, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.9, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.5, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.3, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.1, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0.9, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(0.2, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0.7, -0.5)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.4)
end
if key == "f" then
Chat(workspace.ace28545.Head,"Are you the one who disturbed me?!?","Really black")
weldT.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 1, 0)
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.2, -0.4)
workspace.ace28545.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
workspace.ace28545.Torso["Right Hip"].C1 = CFrame.new(0.9, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 1, 0)
workspace.ace28545.Torso["Left Hip"].C1 = CFrame.new(1, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 1, 0)
wait(2)
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -0.6, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -0.2, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0.2, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0.6, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1, -0.4)
wait()
workspace.ace28545.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 2.1, -0.3)
weldT.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
workspace.ace28545.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
workspace.ace28545.Torso["Right Hip"].C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
workspace.ace28545.Torso["Left Hip"].C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end)

while wait() do
for i = 1,26 do wait()

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size = Vector3.new(1,1,1)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Earth green")


p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Handle.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)


end 
end