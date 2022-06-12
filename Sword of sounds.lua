--[[Made by ace28545]]--

Player = game:GetService("Players").LocalPlayer 

game:GetService("Chat"):Chat(Workspace.ace28545.Head,"Behold.. the swords of Sound")
wait(2)
game:GetService("Chat"):Chat(Workspace.ace28545.Head,"Fear me...")
wait(1)

Cha = Player.Character

RShoulder = Cha.Torso['Right Shoulder']

Tool = Instance.new("HopperBin",Player.Backpack)

Tool.Name = "Swords Of Sound"

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

function touch(hit) 

if hit.Parent:findFirstChild("Humanoid") ~= nil then 

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5

end end wa.Touched:connect(touch)

animation = Instance.new("Animation")

animation.Name = "SlashAnim"

animation.AnimationId = "http://www.roblox.com/Asset?ID=51343632"

animTrack = Cha.Humanoid:LoadAnimation(animation)

animTrack:Play()

for i = 1,26 do wait()

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(.5,.5,.5)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Really black")


p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Blade.CFrame*CFrame.new(0,0,-2))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(.5,.5,.5)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Institutional white")


p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Blade2.CFrame*CFrame.new(0,0,-2))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)

end 

wa:remove()

vDebounce = false



end

end


Tool.Selected:connect(function(mouse)

mouse.Button1Down:connect(function() onClicked(mouse) end)

mouse.KeyDown:connect(onKeyDown)

--==THE ASSIMBLE==--


Char=Instance.new("Model",Cha) -- CHA not CHAR

Handle = Instance.new("Part",Workspace.ace28545)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Really black")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Brick"
HandleMesh.Scale = Vector3.new(.3, 0.2, 2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Handle
Weld.C1 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

D = Instance.new("Part",Workspace.ace28545)
D.TopSurface = "Smooth"
D.BottomSurface = "Smooth"
D.Size = Vector3.new(1, 1, 1)
D.CanCollide = True
D.BrickColor = BrickColor.new("Really black")
DMesh = Instance.new("SpecialMesh", D)
DMesh.MeshType = "Brick"
DMesh.Scale = Vector3.new(.6, 0.6, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = D
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

L = Instance.new("Part",Workspace.ace28545)
L.TopSurface = "Smooth"
L.BottomSurface = "Smooth"
L.Size = Vector3.new(1, 1, 1)
L.CanCollide = True
L.BrickColor = BrickColor.new("Really black")
LMesh = Instance.new("SpecialMesh", L)
LMesh.MeshType = "Brick"
LMesh.Scale = Vector3.new(.2, 1.5, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = L
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

P = Instance.new("Part",Workspace.ace28545)
P.TopSurface = "Smooth"
P.BottomSurface = "Smooth"
P.Size = Vector3.new(1, 1, 1)
P.CanCollide = True
P.BrickColor = BrickColor.new("Really black")
PMesh = Instance.new("SpecialMesh", P)
PMesh.MeshType = "Brick"
PMesh.Scale = Vector3.new(1.5, 0.2, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = P
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Blade = Instance.new("Part",Workspace.ace28545)
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.Size = Vector3.new(1, 1, 1)
Blade.CanCollide = True
Blade.BrickColor = BrickColor.new("Really black")
BladeMesh = Instance.new("SpecialMesh", Blade)
BladeMesh.MeshType = "Brick"
BladeMesh.Scale = Vector3.new(0.25, 0.25, 5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Blade
Weld.C1 = CFrame.new(0, .75, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Point = Instance.new("Part",Workspace.ace28545)
Point.TopSurface = "Smooth"
Point.BottomSurface = "Smooth"
Point.Size = Vector3.new(1, 1, 1)
Point.CanCollide = True
Point.BrickColor = BrickColor.new("Really black")
PointMesh = Instance.new("SpecialMesh", Point)
PointMesh.MeshType = "Wedge"
PointMesh.Scale = Vector3.new(0.25, 0.25, .5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Point
Weld.C1 = CFrame.new(0, .75, 5.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Ring = Instance.new("Part",Workspace.ace28545)
Ring.TopSurface = "Smooth"
Ring.BottomSurface = "Smooth"
Ring.CanCollide = True
Ring.BrickColor = BrickColor.new("Really black")
Ring.Reflectance = 0.3
Ring.Transparency = 0.3
local RingMesh = Instance.new("SpecialMesh",Ring) RingMesh.MeshType = "FileMesh" RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Right Arm"]
Weld.Part1 = Ring
Weld.C1 = CFrame.new(0, .75, -1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Handle2 = Instance.new("Part",Workspace.ace28545)
Handle2.TopSurface = "Smooth"
Handle2.BottomSurface = "Smooth"
Handle2.Size = Vector3.new(1, 1, 1)
Handle2.CanCollide = True
Handle2.BrickColor = BrickColor.new("Institutional white")
Handle2Mesh = Instance.new("SpecialMesh", Handle2)
Handle2Mesh.MeshType = "Brick"
Handle2Mesh.Scale = Vector3.new(.3, 0.2, 2)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = Handle2
Weld.C1 = CFrame.new(0, .75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

d2 = Instance.new("Part",Workspace.ace28545)
d2.TopSurface = "Smooth"
d2.BottomSurface = "Smooth"
d2.Size = Vector3.new(1, 1, 1)
d2.CanCollide = True
d2.BrickColor = BrickColor.new("Institutional white")
d2Mesh = Instance.new("SpecialMesh", d2)
d2Mesh.MeshType = "Brick"
d2Mesh.Scale = Vector3.new(.6, 0.6, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = d2
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

L2 = Instance.new("Part",Workspace.ace28545)
L2.TopSurface = "Smooth"
L2.BottomSurface = "Smooth"
L2.Size = Vector3.new(1, 1, 1)
L2.CanCollide = True
L2.BrickColor = BrickColor.new("Institutional white")
L2Mesh = Instance.new("SpecialMesh", L2)
L2Mesh.MeshType = "Brick"
L2Mesh.Scale = Vector3.new(.2, 1.5, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = L2
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

P2 = Instance.new("Part",Workspace.ace28545)
P2.TopSurface = "Smooth"
P2.BottomSurface = "Smooth"
P2.Size = Vector3.new(1, 1, 1)
P2.CanCollide = True
P2.BrickColor = BrickColor.new("Institutional white")
P2Mesh = Instance.new("SpecialMesh", P2)
P2Mesh.MeshType = "Brick"
P2Mesh.Scale = Vector3.new(1.5, 0.2, .3)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = P2
Weld.C1 = CFrame.new(0, .75, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Blade2 = Instance.new("Part",Workspace.ace28545)
Blade2.TopSurface = "Smooth"
Blade2.BottomSurface = "Smooth"
Blade2.Size = Vector3.new(1, 1, 1)
Blade2.CanCollide = True
Blade2.BrickColor = BrickColor.new("Institutional white")
Blade2Mesh = Instance.new("SpecialMesh", Blade2)
Blade2Mesh.MeshType = "Brick"
Blade2Mesh.Scale = Vector3.new(0.25, 0.25, 5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = Blade2
Weld.C1 = CFrame.new(0, .75, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Point2 = Instance.new("Part",Workspace.ace28545)
Point2.TopSurface = "Smooth"
Point2.BottomSurface = "Smooth"
Point2.Size = Vector3.new(1, 1, 1)
Point2.CanCollide = True
Point2.BrickColor = BrickColor.new("Institutional white")
Point2Mesh = Instance.new("SpecialMesh", Point2)
Point2Mesh.MeshType = "Wedge"
Point2Mesh.Scale = Vector3.new(0.25, 0.25, .5)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = Point2
Weld.C1 = CFrame.new(0, .75, 5.7)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Ring2 = Instance.new("Part",Workspace.ace28545)
Ring2.TopSurface = "Smooth"
Ring2.BottomSurface = "Smooth"
Ring2.CanCollide = True
Ring2.BrickColor = BrickColor.new("Institutional white")
Ring2.Reflectance = 0.3
Ring2.Transparency = 0.3
local Ring2Mesh = Instance.new("SpecialMesh",Ring2) Ring2Mesh.MeshType = "FileMesh" Ring2Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Ring2Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld",Workspace.ace28545)
Weld.Part0 = game.Workspace.ace28545["Left Arm"]
Weld.Part1 = Ring2
Weld.C1 = CFrame.new(0, .75, -1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end)
Tool.Deselected:connect(function(mouse)

Char:remove()

end)

print("Swords of sound Loaded")