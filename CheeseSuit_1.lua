Player = "yfc"


Player = game.Players[Player]
char = Player.Character
mode1 = "nothing"
mode2 = "nothing"
busy = false
function Color(r, g, b)
return Color3.new(r/255, g/255, b/255)
end
------------------------------------------------------------
pcall(function() char.Suit:remove() end)
wait()
plyr = Player
lol = Instance.new("Model")
lol.Parent = plyr.Character
lol.Name = "Suit"
function updateLooks() 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
v.Reflectance = 0.1 
v.TopSurface = "Smooth" 
v.BottomSurface = "Smooth" 
v.LeftSurface = "Smooth" 
v.RightSurface = "Smooth" 
v.BrickColor = BrickColor.new("Bright yellow")
v.Reflectance = 0.2 

elseif v:IsA("Hat") then 
v:Remove() 
elseif v:IsA("Shirt") then 
v:Remove() 
elseif v:IsA("Pants") then 
v:Remove() 
end 
end 
pcall(function() 
plyr.Character.Torso.roblox:Remove() 
plyr.Character["Shirt Graphic"]:Remove() 
end) 
local v = Instance.new("Shirt", char)
v.ShirtTemplate = "http://www.roblox.com/asset/?id=2348001"
local v = Instance.new("Pants", char)
v.PantsTemplate = "http://www.roblox.com/asset/?id=2348010"
end
updateLooks()
--Head-----------------------------
hd = Instance.new("Part")
hd.Parent = lol
hd.CanCollide = false
hd.Locked = true
hd.Size = Vector3.new(1,1,1)
hd.formFactor = "Symmetric"
hd.CFrame = CFrame.new(3,3,0)
hd.BrickColor = BrickColor.new("")
m = Instance.new("SpecialMesh")
m.Parent = hd
m.MeshType = "FileMesh"
--m.MeshId = 
--m.TextureId = 
m.Scale = Vector3.new(1.05, 1.05, 1.05)
local Weld = Instance.new("Weld") 
Weld.Parent = hd 
Weld.Part0 = hd 
Weld.Part1 = plyr.Character.Head
Weld.C0 = CFrame.new(0,-0.10,0)*CFrame.Angles(0,0,0) 
-- Cheese Hat--
local _Part = Instance.new("Part", lol)
_Part.Name = "Cheese hat"
_Part.TopSurface = "Smooth"
_Part.BottomSurface = "Smooth"
_Part.Locked = true
_Part.formFactor = "Custom"
_Part.BrickColor = BrickColor.new("Bright yellow")
_Part.Size = Vector3.new(3,3,3)
local mesh = Instance.new("SpecialMesh", _Part)
mesh.Scale = Vector3.new(2,2,2)
mesh.MeshId = "http://www.roblox.com/asset/?id=1090700"
local Weld = Instance.new("Weld") 
Weld.Parent = _Part
Weld.Part0 = _Part
Weld.Part1 = plyr.Character.Head
Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,0,0) 
cheese = _Part --:P
--Edit-------------------------------
plyr.Character.Humanoid.MaxHealth = math.huge
f = Instance.new("Fire")
f.Parent = plyr.Character.Torso
--f.Color = Color3.new(5,0,5)--OLD C
f.Color = BrickColor.new("Bright yellow").Color
f.Size = 5
--WalkSpeed--------------------
plyr.Character.Humanoid.WalkSpeed = 50
----------------------Functions-----------------------------
function raycast(origin, ending, ang)
local ray = Ray.new(
origin.p, -- origin
(ending.p - origin.p).unit * 500 -- direction
) 
local hit, Position = game.Workspace:FindPartOnRay(ray, ang)
local RayPart = Instance.new("Part", game.Workspace)
RayPart.Name = "RayPart"
RayPart.BrickColor = BrickColor.new("Bright yellow")
RayPart.Transparency = 0.5
RayPart.Anchored = true
RayPart.CanCollide = false
RayPart.TopSurface = Enum.SurfaceType.Smooth
RayPart.BottomSurface = Enum.SurfaceType.Smooth
RayPart.formFactor = Enum.FormFactor.Custom
local Distance = (Position-origin.p).magnitude
RayPart.Size = Vector3.new(0.2,0.2,Distance)
RayPart.CFrame = CFrame.new(Position,origin.p) * CFrame.new(0,0,-Distance/2)
game.Debris:AddItem(RayPart,0.1)
return hit 
end
function onDied()
wait(4.9)
if script.Parent.Parent == nil then return end
script.Parent.Parent = nil
wait(0.1)
script.Parent = Player.Backpack
Player.Character.Humanoid.Died:connect(onDied)
end
function SetAngle(Joint, Angle, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
if Joint == 1 or Joint == 3 then
Joints[Joint].DesiredAngle = Angle
end
if Joint == 2 or Joint == 4 then
Joints[Joint].DesiredAngle = -Angle
end
end
function ForceAngle(Joint, Angle, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
if Joint == 1 or Joint == 3 then
Joints[Joint].DesiredAngle = Angle
Joints[Joint].CurrentAngle = Angle
end
if Joint == 2 or Joint == 4 then
Joints[Joint].DesiredAngle = -Angle
Joints[Joint].CurrentAngle = -Angle
end
end
function SetSpeed(Joint, Speed, Character)
if Character == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
if Joints[Joint] == nil then return false end
Joints[Joint].MaxVelocity = Speed
end
function DisableLimb(Limb, Character)
if Character == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder"),
Character.Torso:FindFirstChild("Left Shoulder"),
Character.Torso:FindFirstChild("Right Hip"),
Character.Torso:FindFirstChild("Left Hip")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
local Joint = Instance.new("Motor")
Joint.Parent = Character.Torso
Joint.Part0 = Character.Torso
Joint.Part1 = Limbs[Limb]
if Limb == 1 then
Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.Name = "Right Shoulder 2"
elseif Limb == 2 then
Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.Name = "Left Shoulder 2"
elseif Limb == 3 then
Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joint.Name = "Right Hip 2"
elseif Limb == 4 then
Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joint.Name = "Left Hip 2"
end
Joint.MaxVelocity = Joints[Limb].MaxVelocity
Joint.CurrentAngle = Joints[Limb].CurrentAngle
Joint.DesiredAngle = Joints[Limb].DesiredAngle
Joints[Limb]:Remove()
end
function ResetLimbCFrame(Limb, Character)
if Character == nil then return false end
if Character.Parent == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
if Limb == 1 then
Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
elseif Limb == 2 then
Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
elseif Limb == 3 then
Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
elseif Limb == 4 then
Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
end
end
function EnableLimb(Limb, Character)
if Character == nil then return false end
if Character:FindFirstChild("Torso") == nil then return false end
local Joints = {
Character.Torso:FindFirstChild("Right Shoulder 2"),
Character.Torso:FindFirstChild("Left Shoulder 2"),
Character.Torso:FindFirstChild("Right Hip 2"),
Character.Torso:FindFirstChild("Left Hip 2")
}
local Limbs = {
Character:FindFirstChild("Right Arm"),
Character:FindFirstChild("Left Arm"),
Character:FindFirstChild("Right Leg"),
Character:FindFirstChild("Left Leg")
}
if Joints[Limb] == nil then return false end
if Limbs[Limb] == nil then return false end
if Limb == 1 then
Joints[Limb].Name = "Right Shoulder"
elseif Limb == 2 then
Joints[Limb].Name = "Left Shoulder"
elseif Limb == 3 then
Joints[Limb].Name = "Right Hip"
elseif Limb == 4 then
Joints[Limb].Name = "Left Hip"
end
Animate = Character:FindFirstChild("Animate")
if Animate == nil then return false end
Animate = Animate:Clone()
Character.Animate:Remove()
Animate.Parent = Character
end
function Weld(x, y)
weld = Instance.new("Weld")
weld.Part0 = x
weld.Part1 = y
CJ = CFrame.new(x.Position)
C0 = x.CFrame:inverse() * CJ
C1 = y.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = x
end
---------------------
function tagHumanoid(humanoid) local tag = Instance.new("ObjectValue") tag.Name = "creator" tag.Value = Player tag.Parent = humanoid end function untagHumanoid(humanoid) if humanoid ~= nil then local tag = humanoid:FindFirstChild("creator") if tag ~= nil then tag:Remove() end end end 
-------------------------------------------------------------------------------------------
function onButton1Down(mouse)
if(mode1 == "Cheese hat")then
if(mode2 == "cheeseray")then
local hit = raycast(cheese.CFrame, mouse.Hit, plyr.Character)
if(hit)then
hit.BrickColor = BrickColor.new("Bright yellow")
local mesh = Instance.new("SpecialMesh", hit)
mesh.Scale = hit.Size
mesh.MeshId = "http://www.roblox.com/asset/?id=1090700"
end
busy = false
elseif mode2 == "Throw" then
if(not busy)then
--[[busy = true]]
DisableLimb(1, char)
SetSpeed(1, .5, char)
SetAngle(1, math.rad(180), char)
wait(0.2)
local _Part = Instance.new("Part", lol)
_Part.Name = "Cheese hat"
_Part.TopSurface = "Smooth"
_Part.BottomSurface = "Smooth"
_Part.Locked = true
_Part.formFactor = "Custom"
_Part.BrickColor = BrickColor.new("Bright yellow")
_Part.Size = Vector3.new(1,1,1)
local mesh = Instance.new("SpecialMesh", _Part)
mesh.Scale = Vector3.new(0.5,0.5,0.5)
mesh.MeshId = "http://www.roblox.com/asset/?id=1090700"
local Weld = Instance.new("Weld") 
Weld.Parent = _Part
Weld.Part0 = _Part
Weld.Part1 = char["Right Arm"]
Weld.C0 = CFrame.new(0,1,0)
wait(0.2)
SetSpeed(1, .5, char)
SetAngle(1, math.rad(90), char)
local bp = Instance.new("BodyPosition", _Part)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = mouse.Hit.p
_Part.Weld:remove()
_Part.Touched:connect(function(m)
if(m.Parent:FindFirstChild("Humanoid") and not m.Parent == char)then
m.Parent.Humanoid:TakeDamage(30)
_Part:remove()
end
end) 
EnableLimb(1, char)
wait(4)
_Part:remove()
end
end
end
end
function onMouseMove(mouse)

end
function onButton1Up(mouse)

end
function onKeyDown(key, mouse)
key = key:lower()
if mode1 == "nothing" then
if key == "z" then
mode1 = "Cheese hat"
mode2 = "nothing"
elseif key == "x" then
mode1 = "Staff"
mode2 = "nothing"
--Staff showing animation TO DO
end
else
if key == "z" and mode1 == "Cheese hat" then
mode1 = "nothing"
mode2 = "nothing"
elseif key == "x" and mode1 == "Staff" then
mode1 = "nothing"
mode2 = "nothing"
--Staff hiding animation TO DO
else
---------------DO STUFF :3------------------
if mode1 == "Cheese hat" then
--mod1
if(key == "q")then
if(mode2 == "nothing") then 
mode2 = "cheeseray" 
elseif mode2 == "cheeseray" then 
mode2 = "nothing"
end
elseif key == "e" then
if(mode2 == "nothing") then 
mode2 = "Throw" 
elseif mode2 == "Throw" then 
mode2 = "nothing"
end
end
elseif mode1 == "Staff" then
--mod2 --Staff --To do
end
end
end
end
----------------------------------------------Connectors-----------------------------------
isgui = true
function showgui()
isgui = true
--Status GUI--
local g = Instance.new("ScreenGui", plyr.PlayerGui)
g.Name = "CheeseSuitStatusGUI"
local t = Instance.new("TextLabel", g)
t.Position = UDim2.new(0, 300, 1, -50)
t.Size = UDim2.new(0, 250, 0, 50)
t.Text = mode1 .. ":" .. mode2
t.FontSize = "Size14"
t.Name = "p"
Spawn(function()
while isgui do
if(isgui)then
pcall(function()
plyr.PlayerGui.CheeseSuitStatusGUI.p.Text = mode1 .. ":" .. mode2
end)
end
wait(0.5)
end
end)
end
function hidegui()
isgui = false
pcall(function() plyr.PlayerGui.CheeseSuitStatusGUI:remove() end)
end
function onSelected(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
mouse.Move:connect(function() onMouseMove(mouse) end)
showgui()
end
function onDeselected(mouse)
--To do
hidegui()
end
if script.Parent.ClassName ~= "HopperBin" then
if Player == nil then print("Error: Player not found!") return end
Tool = Instance.new("HopperBin")
Tool.Name = "Suit Control"
Tool.Parent = Player.Backpack
script.Name = "Main"
script.Parent = Tool
Player.Character.Humanoid.Died:connect(onDied)
elseif script.Parent.ClassName == "HopperBin" then
Player = script.Parent.Parent.Parent
script.Parent.Selected:connect(onSelected)
script.Parent.Deselected:connect(onDeselected)
end