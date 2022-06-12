--[[ Lots of awesome tests and stuff ]]--  <> <> <> <> <> <> <>
 
King = "rigletto"
 
Players = game:GetService("Players")
User = Players:findFirstChild(King)
Backpack = User:findFirstChild("Backpack")
 
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Backpack)
h.Name = "Break"
 
script.Parent = h
end
 
function Clone(Part, Pos, Size, Archivable)
 
if type(Part) ~= "userdata" then return end
if type(CFrame) ~= "userdata" then return end
if type(Size) ~= "userdata" then return end
 
if Archivable == nil then
Archivable = true
else if Archivable ~= nil and type(Archivable) ~= "boolean" then return end
end
 
Tab = {
"Shape",
"FormFactor",
"Anchored",
"BrickColor",
"CanCollide",
"Elasticity",
"Friction",
"Locked",
"Material",
"Reflectance",
"RotVelocity",
"Size",
"Transparency",
"Velocity",
 
"RightParamA",
"LeftParamA",
"TopParamA",
"BottomParamA",
"FrontParamA",
"BackParamA",
 
"RightParamB",
"LeftParamB",
"TopParamB",
"BottomParamB",
"FrontParamB",
"BackParamB",
 
"RightSurface",
"LeftSurface",
"TopSurface",
"BottomSurface",
"FrontSurface",
"BackSurface",
 
"RightSurfaceInput",
"LeftSurfaceInput",
"TopSurfaceInput",
"BottomSurfaceInput",
"FrontSurfaceInput",
"BackSurfaceInput",
 
"Name",
"Parent" }
 
Brick = Instance.new("Part")
Brick.Archivable = Archivable
Brick.Size = Size
 
for Element, Value in pairs(#Tab) do
    Property = Value
    Brick[Property] = Part[Property]
end
 
Brick.CFrame = Pos
 
return Brick
end
 
function split(mouse)
 
for x = 1, mouse.Target:GetMass().X do
for y = 1, mouse.Target:GetMass().Y do
for z = 1, mouse.Target:GetMass().Z do
 
Pos = mouse.Target.CFrame * CFrame.new( ( -mouse.Target.Size.X/mouse.Target:GetMass().X ) + x, ( -mouse.Target.Size.Y/mouse.Target:GetMass().Y ) + y, ( mouse.Target.Size.Z/mouse.Target:GetMass().Z ) + z)
 
Clone(mouse.Target, Pos, Vector3.new(1, 1, 1), false)
 
end
end
end
 
end
 
function selected(mouse)
mouse.Button1Down:connect(function () split(mouse) end)
end
 