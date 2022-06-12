Player = game:GetService("Players").acb227
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso
Head = Character.Head
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LeftShoulder = Torso["Left Shoulder"]
LeftHip = Torso["Left Hip"]
RightShoulder = Torso["Right Shoulder"]
RightHip = Torso["Right Hip"]


if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Build" 
script.Parent = Tool 
end 
Bin = script.Parent 

function Rounded(mouse)
local X = mouse.Hit.X
local Y = mouse.Hit.Y+0.5
local Z = mouse.Hit.Z
return X,Y,Z
end

Color = {"White","Grey","Light yellow","Nougat","Black","Really blue","Really red","Brown","Camo"}
Matel = {816,1040,1056,1072,1280,1536,256,800,512}

local CColor = 1
local Mater = 1
local CurrentPart = nil
local HoverPart = nil
local Hold = false
local KHold = false
local Part = Instance.new("Part")
Part.Size = Vector3.new(1,1,1)
Part.formFactor = "Symmetric"
Part.Anchored = true
Part.BrickColor = BrickColor.new("Bright yellow")
Part.CanCollide = false
local Model = nil
for i,v in pairs(workspace:GetChildren()) do
if v.Name == "Base" and v:isA("Model") then
Model = v
else
Model = Instance.new("Model",workspace)
Model.Name = "Base"
end
end

function ob1d(mouse)
Hold = true
local Previous = Part.Position
local Party = Instance.new("Part",Character)
CurrentPart = Party
Party.Name = "Draw Line"
Party.BrickColor = BrickColor.new(Color[CColor])
Party.Material = Matel[Mater]
Party.Anchored = true
Party.formFactor = "Custom"
Party.Size = Vector3.new(1,1,1)
while Hold do
Party.Size = Vector3.new(Party.Size.X,Party.Size.Y,(Previous - Part.Position).magnitude)
Party.CFrame = CFrame.new((Previous + Part.Position)/2,Part.Position) * CFrame.new(0,Party.Size.Y/2-0.5,0)
wait()
end
Party.Parent = Model
CurrentPart = nil
end

function ob1u(mouse)
Hold = false
end

function om(mouse)
if not mouse.Target then return end
HoverPart = mouse.Target
Part.Parent = Character
Part.CFrame = CFrame.new(Rounded(mouse))
end

function oi(mouse)
if not mouse.Target then return end
HoverPart = mouse.Target
Part.Parent = Character
Part.CFrame = CFrame.new(Rounded(mouse))
end

function key(key)
if Hold then
if string.byte(key) == 8 then
KHold = true
while KHold do
wait()
local CFSave = CurrentPart.CFrame
CurrentPart.Size = CurrentPart.Size + Vector3.new(0,.2,0)
CurrentPart.CFrame = CFSave
end
elseif string.byte(key) == 2 then
KHold = true
while KHold do
wait()
local CFSave = CurrentPart.CFrame
CurrentPart.Size = CurrentPart.Size - Vector3.new(0,.2,0)
CurrentPart.CFrame = CFSave
end
end
if string.byte(key) == 4 then
KHold = true
while KHold  do
wait()
local CFSave = CurrentPart.CFrame
CurrentPart.Size = CurrentPart.Size + Vector3.new(.2,0,0)
CurrentPart.CFrame = CFSave
end
elseif string.byte(key) == 6 then
KHold = true
while KHold do
wait()
local CFSave = CurrentPart.CFrame
CurrentPart.Size = CurrentPart.Size - Vector3.new(.2,0,0)
CurrentPart.CFrame = CFSave
end
end
if string.byte(key) == 5 then
CurrentPart.Size = Vector3.new(1,1,CurrentPart.Size.Z)
end
if string.byte(key) == 1 then
CColor = CColor + 1
if CColor > #Color then
CColor = 1
end
CurrentPart.BrickColor = BrickColor.new(Color[CColor])
end
if string.byte(key) == 3 then
Mater = Mater + 1
if Mater > #Matel then
Mater = 1
end
CurrentPart.Material = Matel[Mater]
end
end
if string.byte(key) == 7 then
if HoverPart.Name == "Draw Line" then
HoverPart:remove()
end
end
end

function key2(key)
KHold = false
end

function s(mouse)
mouse.Button1Down:connect(function() ob1d(mouse) end)
mouse.Button1Up:connect(function() ob1u(mouse) end)
mouse.Move:connect(function() om(mouse) end)
mouse.Idle:connect(function() oi(mouse) end)
mouse.KeyDown:connect(key)
mouse.KeyUp:connect(key2)
end
function ds(mouse)
Part.Parent = nil
KHold = nil
Hold = nil
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)