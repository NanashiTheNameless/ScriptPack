--[[
Point1 = Vector3.new(0, 5, 0)
Point2 = Vector3.new(10, 0, 5)
 
for i = 1, 10 do
  p = Instance.new("Part")
  p.Parent = Workspace
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
        p.Anchored = true
  
  p.BrickColor = BrickColor.new("Really red")
  p.CFrame = CFrame.new(Point1, Point2)*CFrame.new(0, 0, i/2)
end
]]--

User = game.Players["lordsheen"] 

Version = "2"

Hold = false

Customize = {
["Color"] = Color3.new(0, 0, 1);
["Scale"] = 0.3;
["Reflectance"] = 0;
["Transparency"] = 0;
["_Color"] = Vector3.new(0, 0, 1);
};

Color = Color3.new(0, 0, 1)
Display = Customize.Color
Chose = Customize.Color
MouseOver = false

Decals = {
["Undo"] = "http://www.roblox.com/asset/?id=48113238";
["Save"] = "http://www.roblox.com/asset/?id=48113221";
["Redo"] = "http://www.roblox.com/asset/?id=48113195";
["Pencil"] = "http://www.roblox.com/asset/?id=48113187";
["Paint"] = "http://www.roblox.com/asset/?id=48113173";
["Open"] = "http://www.roblox.com/asset/?id=48113150";
["Line"] = "http://www.roblox.com/asset/?id=48113133";
["Color"] = "http://www.roblox.com/asset/?id=48113122";
["Mouse"] = "http://www.roblox.com/asset/?id=48113165";
["Erase"] = "http://www.roblox.com/asset/?id=48113103";
["Circle"] = "http://www.roblox.com/asset/?id=48113083";
};

Modes = {"Draw", "Erase", "Line", "CircleFill"};
Mode = Modes[1];

local Ink

coroutine.resume(coroutine.create(function()
while true do
if (Customize.Transparency >= 1) then
Customize.Transparency = 0.9
end
wait()
end
end))

Players = Game:service("Players");
Workspace = Game:service("Workspace");
Debris = Game:service("Debris");
Admin = Players[User.Name]

if (not script.Parent:IsA("HopperBin")) then
local hop = Instance.new("HopperBin", Admin.Backpack)
hop.Name = "GD V."..Version
script.Parent = hop

local sg = Instance.new("ScreenGui", script.Parent)
sg.Name = "Toolbar"

local colorChange = Instance.new("ScreenGui",script.Parent)
colorChange.Name = "ColorChange"

--[[ Things to add:
Intensity [ Brightness / Darkness of a Hue ]
Secondary Color
Tint [ OPTINIONAL ]
]]--

local yt = Instance.new( "TextLabel", sg )
yt.Size = UDim2.new( 0, 255, 0, 1 )
yt.Position = UDim2.new( 0, 100, 0, 200 )
yt.BorderSizePixel = 0
yt.Text = ""
yt.ZIndex = 10
local xt = Instance.new( "TextLabel", sg )
xt.Size = UDim2.new( 0, 1, 0, 255 )
xt.Position = UDim2.new( 0, 354, 0, 200 )
xt.BorderSizePixel = 0
xt.Text = ""
xt.ZIndex = 10

Down = false
Offset = UDim2.new( )

local click = Instance.new( "TextButton", sg )
click.Size = UDim2.new( 0, 255, 0, 255 )
click.Position = UDim2.new( 0, 100, 0, 200 )
click.BorderSizePixel = 0
click.Text = ""
click.ZIndex = 9
click.BackgroundTransparency = 1
click.MouseEnter:connect( function( TheNewScripter )
        MouseOver = true
end )
click.MouseLeave:connect( function( TheNewScripter )
        MouseOver = false
        
        xt.Position = UDim2.new( 0, 100, 0, 200 )
        yt.Position = UDim2.new( 0, 100, 0, 200 )
end )
click.MouseButton1Click:connect( function( TheNewScripter )
        Chose = Display
        Customize.Color = Display
        Customize._Color = Vector3.new( Display.r, Display.g, Display.b )
end )
click.MouseMoved:connect( function( x, y )
        
        yr = y - click.AbsolutePosition.Y
        xr = x - click.AbsolutePosition.X
        
        xt.Position = UDim2.new( 0, x, 0, 200 )
        yt.Position = UDim2.new( 0, 100, 0, y )

        White = Color3.new( 1, 1, 1 )
        Black = Color3.new( 0, 0, 0 )
        
        Red1 = ( ( White.r * ( 1 - ( xr / 255 ) ) ) + ( Color.r * ( xr / 255 ) ) )
        Green1 = ( ( White.g * ( 1 - ( xr / 255 ) ) ) + ( Color.g * ( xr / 255 ) ) )
        Blue1 = ( ( White.b * ( 1 - ( xr / 255 ) ) ) + ( Color.b * ( xr / 255 ) ) )
        
        Temp = Color3.new( Red1, Green1, Blue1 )
        
        Red2 = ( ( Temp.r * ( 1 - ( yr / 255 ) ) ) + ( Black.r * ( yr / 255 ) ) )
        Green2 = ( ( Temp.g * ( 1 - ( yr /255 ) ) ) + ( Black.g * ( yr / 255 ) ) )
        Blue2 = ( ( Temp.b * ( 1 - ( yr / 255 ) ) ) + ( Black.b * ( yr / 255 ) ) )
        
        Temp2 = Color3.new( Red2, Green2, Blue2 )
        
        Display = Temp2
end )

local show = Instance.new( "TextLabel", sg )
show.Size = UDim2.new( 0, 255, 0, 40 )
show.Position = UDim2.new( 0, 100, 0, 471 )
show.Text = ""
show.BorderSizePixel = 2
show.ZIndex = 9
show.BackgroundColor3 = Display
coroutine.resume( coroutine.create( function( )
        while ( show.Parent ~= nil ) do
                if ( MouseOver == true ) then
                        show.BackgroundColor3 = Display
                        wait()
                else
                        show.BackgroundColor3 = Chose
                end
                wait()
        end
end ) )
local col = Instance.new( "TextLabel", sg )
col.Size = UDim2.new( 0, 253, 0, 254 )
col.Position = UDim2.new( 0, 101, 0, 201 )
col.BorderSizePixel = 0
col.BackgroundColor3 = Color3.new( 0, 0, 1 )
col.Text = ""
col.ZIndex = 1
coroutine.resume( coroutine.create( function( )
        while ( col.Parent ~= nil ) do
                col.BackgroundColor3 = Color
                wait()
        end
end ) )

inc = 12.1
offse = 2

for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new(255/255, i/255, 0)
a.Position = UDim2.new(0, 375, 0, (offse * (i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new(255/255, i/255, 0)
end)
end
for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new((255-i)/255, 255/255, 0) 
a.Position = UDim2.new(0, 375, 0, (offse * (255/inc+i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new((255-i)/255, 255/255, 0)
end)
end 
for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new(0, 255/255, i/255) 
a.Position = UDim2.new(0, 375, 0, (offse * ((255/inc*2)+i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new(0, 255/255, i/255)
end)
end 
for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new(0, (255-i)/255, 255/255) 
a.Position = UDim2.new(0, 375, 0, (offse * ((255/inc*3)+i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new(0, (255-i)/255, 255/255)
end)
end 
for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new(i/255, 0, 255/255) 
a.Position = UDim2.new(0, 375, 0, (offse * ((255/inc*4)+i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new(i/255, 0, 255/255)
end)
end 
for i = 0, 255, inc do 
a = Instance.new("TextButton") 
a.Parent = sg
a.BorderSizePixel = 0 
a.Size = UDim2.new(0, 40, 0, 2) 
a.BackgroundColor3 = Color3.new(255/255, 0, (255-i)/255) 
a.Position = UDim2.new(0, 375, 0, (offse * ((255/inc*5)+i/inc)) + 200) 
a.Text = "" 
a.AutoButtonColor = false 
a.MouseButton1Down:connect(function()
Color = Color3.new(255/255, 0, (255-i)/255) 
end)
end 

for i = 1, 255 do
        local white = Instance.new( "TextLabel", sg )
        white.Size = UDim2.new( 0, 1, 0, 255 )
        white.Position = UDim2.new( 0, ( 100 + i ), 0, 200 )
        white.BorderSizePixel = 0
        white.BackgroundColor3 = Color3.new( 1, 1, 1 )
        white.BackgroundTransparency = i / 255
        white.Text = ""
        white.ZIndex = 2
        local black = Instance.new( "TextLabel", sg )
        black.Size = UDim2.new( 0, 254, 0, 1 )
        black.Position = UDim2.new( 0, 100, 0, ( 200 + ( 255 - i ) ) )
        black.BorderSizePixel = 0
        black.BackgroundColor3 = Color3.new( 0, 0, 0 )
        black.BackgroundTransparency = i / 255
        black.Text = ""
        black.ZIndex = 3
end

local clean = Instance.new("TextButton", sg)
clean.BorderSizePixel = 0
clean.Size = UDim2.new(0, 255, 0, 30)
clean.Style = 2
clean.Position = UDim2.new(0, 100, 0, 520)
clean.Text = "Clean"
clean.TextColor3 = Color3.new(1, 1, 1)
clean.MouseButton1Down:connect(function()
for i, v in pairs(Ink:children()) do
v:Remove()
end
end)

local line = Instance.new("ImageButton", sg)
line.BorderSizePixel = 0
line.Size = UDim2.new(0, 30, 0, 30)
line.Image = Decals.Line
line.Position = UDim2.new(0, 140, 0, 560)
line.BackgroundTransparency = 0.5
line.MouseButton1Down:connect(function()
Mode = "Line"
end)

local circle = Instance.new("ImageButton", sg)
circle.BorderSizePixel = 0
circle.Size = UDim2.new(0, 30, 0, 30)
circle.Image = Decals.Circle
circle.Position = UDim2.new(0, 180, 0, 560)
circle.BackgroundTransparency = 0.5
circle.MouseButton1Down:connect(function()
Mode = "CircleFill"
end)

local pencil = Instance.new("ImageButton", sg)
pencil.BorderSizePixel = 0
pencil.Size = UDim2.new(0, 30, 0, 30)
pencil.Image = Decals.Pencil
pencil.Position = UDim2.new(0, 100, 0, 560)
pencil.BackgroundTransparency = 0.5
pencil.MouseButton1Down:connect(function()
Mode = "Draw"
end)

end

script.Parent.Selected:connect(function(mouse)
local tool = script.Parent:findFirstChild("Toolbar")
gui = Admin:findFirstChild("PlayerGui")
if (gui and tool) then
tool.Parent = gui
end
Ink = Instance.new("Model", Admin.Character)
Ink.Name = "Ink"

local Start, Stop, Point1, Point2, Line, Circle;
mouse.Button1Down:connect(function()
if (Mode == "Draw") then
Hold = true

while Hold do
if (Start == nil) then
Start = mouse.Hit.p
else
Stop = Start
Start = mouse.Hit.p

local a = Instance.new("Part", Ink)
a.Size = Vector3.new(1, 1, 1)
a.Anchored = true
a.Locked = true
a.TopSurface = 0
a.BottomSurface = 0
a.CanCollide = false
a.formFactor = 0
a.Transparency = Customize.Transparency;
a.Reflectance = Customize.Reflectance;
a.CFrame = CFrame.new((Start+Stop)/2, Stop)

local mesh = Instance.new("SpecialMesh", a)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
mesh.TextureId = "http://www.roblox.com/asset/?id=48358980"
mesh.VertexColor = Customize._Color
if ((Start-Stop).magnitude <= 1) then
mesh.Scale = Vector3.new(Customize.Scale*2, Customize.Scale*2, ((Start-Stop).magnitude*1.1)*2)
elseif ((Start-Stop).magnitude <= 0.3) then
mesh.Scale = Vector3.new(Customize.Scale*2, Customize.Scale*2, ((Start-Stop).magnitude*5)*2)
else
mesh.Scale = Vector3.new(Customize.Scale*2, Customize.Scale*2, (Start-Stop).magnitude*2)
end
wait()
end
wait()
end

elseif (Mode == "Line") then

if (not Point1) then
Point1 = mouse.Hit.p

pcall(function() -- Incase something messed up and Line is still the previous line
Line.Parent = nil
Line = nil
end)

Line = Instance.new("Part", Ink)
Line.Anchored = true
Line.Locked = true
Line.CanCollide = false
Line.TopSurface = 0
Line.BottomSurface = 0
Line.formFactor = 0
Line.Transparency = .5
Line.Size = Vector3.new(1, 1, 1)
Line.Color = Color3.new(1, 1, 1)
Line.CFrame = CFrame.new(Point1)

local msh = Instance.new("SpecialMesh", Line)
msh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
msh.TextureId = "http://www.roblox.com/asset/?id=48358980"
msh.VertexColor = Customize._Color
msh.Scale = Vector3.new(Customize.Scale*2, Customize.Scale*2, Customize.Scale*2)
coroutine.resume(coroutine.create(function()
while Point2 == nil do
wait()
Line.CFrame = CFrame.new((Point1+mouse.Hit.p)/2, mouse.Hit.p)
msh.Scale = Vector3.new(Customize.Scale*2, Customize.Scale*2, ((Point1-mouse.Hit.p).magnitude)*2)
if (Point1 == nil) then
Line.Parent = nil
Line = nil
end
end
end))

elseif (Point1 ~= nil and Point2 == nil) then

Point2 = mouse.Hit.p
Line.Transparency = Customize.Transparency
Line.CFrame = CFrame.new((Point1+Point2)/2, Point2)

Point1 = nil
Point2 = nil
Line = nil

end

elseif (Mode == "CircleFill") then

if (Point1 == nil) then

Point1 = mouse.Hit.p

Circle = Instance.new("Part", Ink)
Circle.Anchored = true
Circle.Locked = true
Circle.CanCollide = false
Circle.TopSurface = 0
Circle.BottomSurface = 0
Circle.Transparency = 0.5
Circle.Color = Customize.Color
Circle.formFactor = 0
Circle.Size = Vector3.new(1, 1, 1)
Circle.CFrame = CFrame.new(mouse.Hit.p)

local msh = Instance.new("CylinderMesh", Circle)
msh.Scale = Vector3.new(Customize.Scale, Customize.Scale, Customize.Scale)

coroutine.resume(coroutine.create(function()
while Point2 == nil do
wait()
Circle.CFrame = CFrame.new((Point1+mouse.Hit.p)/2, mouse.Hit.p)
msh.Scale = Vector3.new((Point1-mouse.Hit.p).magnitude, Customize.Scale, (Point1-mouse.Hit.p).magnitude)
end
end))

elseif (Point1 ~= nil and Point2 == nil) then

Point2 = mouse.Hit.p
Circle.Transparency = Customize.Transparency
Circle.CFrame = CFrame.new((Point1+Point2)/2, Point2)

Point1 = nil
Point2 = nil
Line = nil

end

end

end)

mouse.Button1Up:connect(function()
Hold = false
Start = nil
Stop = nil
end)

mouse.KeyDown:connect(function(key)
if (key == "c") then
for i, v in pairs(Ink:children()) do v:Remove() end
Start = nil
Stop = nil
Point1 = nil
Point2 = nil
end
end)

end)

script.Parent.Deselected:connect(function()
if (Admin.Character:findFirstChild("Ink")) then
Admin.Character.Ink.Parent = Workspace
end
local gui = Admin:findFirstChild("PlayerGui"):findFirstChild("Toolbar")
if (gui) then
gui.Parent = script.Parent
end
end)
