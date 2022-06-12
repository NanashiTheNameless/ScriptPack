person = "xSoulStealerx" 
opened = game 

sh = Instance.new(string.reverse("tniH")) 

playrserv = game:GetService("Players") 
if playrserv == nil then return end 

master = playrserv:findFirstChild(person) 
if master == nil then return end 

playergui = master:findFirstChild("PlayerGui") 
if playergui == nil then 
playergui = Instance.new("PlayerGui") 
playergui.Parent = master 
playergui.Name = "PlayerGui" 
end 

old = playergui:findFirstChild("Explorer Gui") 
if old ~= nil then 
old:Remove() 
end 

open = true 

function remove(what) 
pcall(function() opened[what.Text]:Remove() end) 
createguis(opened) 
end 

function getproperties(where) 
properties = {} 
table.insert(properties, "Name") 
table.insert(properties, "Parent") 
table.insert(properties, "className") 

if where.className == "ObjectValue" then 
table.insert(properties, "Value") 
elseif where.className == "Part" or where.className == "Seat" then 
table.insert(properties, "BrickColor") 
table.insert(properties, "Material") 
table.insert(properties, "Reflectance") 
table.insert(properties, "Transparency") 
table.insert(properties, "Position") 
table.insert(properties, "RotVelocity") 
table.insert(properties, "Velocity") 
table.insert(properties, "Elasticity") 
table.insert(properties, "Friction") 
table.insert(properties, "Shape") 
table.insert(properties, "formFactor") 
table.insert(properties, "Anchored") 
table.insert(properties, "CanCollide") 
table.insert(properties, "Locked") 
elseif where.className == "Players" then 
table.insert(properties, "BubbleChat") 
table.insert(properties, "ClassicChat") 
table.insert(properties, "MaxPlayers") 
table.insert(properties, "NumPlayers") 
elseif where.className == "Player" then 
table.insert(properties, "Character") 
elseif where.className == "Lighting" then 
table.insert(properties, "Ambient") 
table.insert(properties, "Brightness") 
table.insert(properties, "ColorShift_Bottom") 
table.insert(properties, "ColorShift_Top") 
table.insert(properties, "ShadowColor") 
table.insert(properties, "GeographicLatitude") 
table.insert(properties, "TimeOfDay") 
elseif where.className == "StarterGui" then 
table.insert(properties, "ShowDevelopmentGui") 
elseif where.className == "Soundscape" then 
table.insert(properties, "AmbientReverb") 
table.insert(properties, "DistanceFactor") 
table.insert(properties, "DopplerScale") 
table.insert(properties, "RolloffScale") 
elseif where.className == "ClickDetector" then 
table.insert(properties, "MaxActivationDistance") 
elseif where.className == "Script" then 
table.insert(properties, "Disabled") 
table.insert(properties, "Source") 
elseif where.className == "Team" then 
table.insert(properties, "TeamColor") 
table.insert(properties, "AutoAssignable") 
table.insert(properties, "AutoColorCharacters") 
table.insert(properties, "Score") 
elseif where.className == "Tool" then 
table.insert(properties, "GripForward") 
table.insert(properties, "GripPos") 
table.insert(properties, "GripRight") 
table.insert(properties, "GripUp") 
table.insert(properties, "TextureId") 
table.insert(properties, "Enabled") 
elseif where.className == "HopperBin" then 
table.insert(properties, "Active") 
table.insert(properties, "BinType") 
table.insert(properties, "TextureId") 
elseif where.className == "ScreenGui" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
elseif where.className == "BillboardGui" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Adornee") 
table.insert(properties, "ExtentsOffset") 
table.insert(properties, "Size") 
table.insert(properties, "SizeOffset") 
table.insert(properties, "StudsOffset") 
elseif where.className == "TextBox" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "TextButton" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "AutoButtonColor") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "TextLabel" then 
table.insert(properties, "AbsolutePosition") 
table.insert(properties, "AbsoluteSize") 
table.insert(properties, "Active") 
table.insert(properties, "BackgroundColor3") 
table.insert(properties, "BackgroundTransparency") 
table.insert(properties, "BorderColor3") 
table.insert(properties, "BorderSizePixel") 
table.insert(properties, "Position") 
table.insert(properties, "Size") 
table.insert(properties, "SizeConstraint") 
table.insert(properties, "Text") 
table.insert(properties, "TextColor3") 
table.insert(properties, "TextWrap") 
table.insert(properties, "TextXAlignment") 
table.insert(properties, "TextYAlignment") 
table.insert(properties, "Visible") 
table.insert(properties, "ZIndex") 
elseif where.className == "Camera" then 
table.insert(properties, "CameraSubject") 
table.insert(properties, "CoordinateFrame") 
table.insert(properties, "CameraType") 
elseif where.className == "Sky" then 
table.insert(properties, "CelestialBodiesShown") 
table.insert(properties, "SkyboxBk") 
table.insert(properties, "SkyboxDn") 
table.insert(properties, "SkyboxFt") 
table.insert(properties, "SkyboxLf") 
table.insert(properties, "SkyboxRt") 
table.insert(properties, "SkyboxUp") 
table.insert(properties, "StarCount") 
elseif where.className == "Decal" then 
table.insert(properties, "Shiny") 
table.insert(properties, "Specular") 
table.insert(properties, "Texture") 
table.insert(properties, "Face") 
elseif where.className == "Shirt" then 
table.insert(properties, "ShirtTemplate") 
elseif where.className == "Pants" then 
table.insert(properties, "PantsTemplate") 
elseif where.className == "Fire" then 
table.insert(properties, "Heat") 
table.insert(properties, "Size") 
table.insert(properties, "Color") 
table.insert(properties, "SecondaryColor") 
elseif where.className == "Smoke" then 
table.insert(properties, "RiseVelocity") 
table.insert(properties, "Size") 
table.insert(properties, "Color") 
elseif where.className == "Model" then 
table.insert(properties, "PrimaryPart") 
elseif where.className == "Workspace" then 
table.insert(properties, "DistributedGameTime") 
table.insert(properties, "PrimaryPart") 
elseif string.match(where.className, "Value") then 
table.insert(properties, "Value") 
end 

return properties 
end 

sh.Parent = game.Workspace 

function createproperties(where) 
properties = getproperties(where) 
x = 0 
y = -20 
cont = true 
for i, v in pairs(properties) do 
property = tostring(where[v]) 
if v == "Source" then 
ys = 250 
top = true 
else 
ys = 20 
end 
if v == "Parent" and where.className == "DataModel" then 
property = "Error: Unable to retrieve data. Sorry." 
elseif v == "Parent" then 
property = where[v]:GetFullName() 
elseif where.className == "ObjectValue" and v == "Value" then 
property = where[v]:GetFullName() 
end 
a = Instance.new("TextLabel") 
a.Parent = screengui 
a.Name = v .. "Label" 
a.Text = v .. " " 
a.Size = UDim2.new(0, 200, 0, ys) 
a.Position = UDim2.new(0.3, 0, 0.6, y) 
a.TextXAlignment = "Right" 

a = Instance.new("TextLabel") 
a.Parent = screengui 
a.Name = v 
a.Text = " " .. property 
a.Size = UDim2.new(0, 300, 0, ys) 
a.Position = UDim2.new(0.3, 200, 0.6, y) 
a.TextWrap = true 
a.TextXAlignment = "Left" 
if top == true then 
a.TextYAlignment = "Top" 
end 
top = false 
cont = true 
y = y + ys 
end 
end 

function createguis(where) 
openguis = {} 
opened = where 
for i, v in pairs(screengui:GetChildren()) do 
if v.Name ~= "Banner" and v.Name ~= "Home" and v.Name ~= "Option" and v.Name ~= "Reload" and v.Name ~= "Hide" and v.Name ~= "RightClickLabel" then 
v:Remove() 
end 
end 
y = 0 
x = 0 

y = y + 20 
if y >= 320 then 
y = y - 300 
x = x + 100 
end 

a = Instance.new("TextButton") 
a.Parent = screengui 
a.Name = "An Item" 
a.Text = "Back" 
a.Size = UDim2.new(0, 100, 0, 20) 
a.Position = UDim2.new(0, x, 0.2, y) 
a.MouseButton1Click:connect(function() createguis(opened.Parent) end) 
cont = true 
for i, v in pairs(where:GetChildren()) do 
y = y + 20 
if y >= 320 then 
y = y - 300 
x = x + 100 
end 
if x >= 300 and cont == true then 
if y >= 300 then 
a = Instance.new("TextButton") 
a.Parent = screengui 
a.Name = "..." 
a.Text = "..." 
a.Size = UDim2.new(0, 100, 0, 20) 
a.Position = UDim2.new(0, x, 0.2, y) 
cont = false 
end 
end 
if cont == true then 
a = Instance.new("TextButton") 
a.Parent = screengui 
a.Name = "An Item" 
a.Text = v.Name 
a.Size = UDim2.new(0, 100, 0, 20) 
a.Position = UDim2.new(0, x, 0.2, y) 
table.insert(openguis, a) 
end 
end 
for _, a in pairs(openguis) do 
a.MouseButton1Click:connect(function() createguis(opened[a.Text]) end) 
a.MouseButton2Click:connect(function() remove(a) end) 
end 

createproperties(where) 
end 

screengui = Instance.new("ScreenGui") 
screengui.Parent = playergui 
screengui.Name = "Explorer Gui" 

function create() 
banner = Instance.new("TextLabel") 
banner.Parent = screengui 
banner.Name = "Banner" 
banner.Text = "speedywiedey's explorer gui" 
banner.Size = UDim2.new(0, 300, 0, 20) 
banner.Position = UDim2.new(0, 0, 0.2, 0) 

home = Instance.new("TextButton") 
home.Parent = screengui 
home.Name = "Home" 
home.Text = "Home" 
home.Size = UDim2.new(0, 100, 0, 20) 
home.Position = UDim2.new(0, 0, 0.2, -20) 
home.MouseButton1Click:connect(function() createguis(game) end) 

rightlabel = Instance.new("TextLabel") 
rightlabel.Parent = screengui 
rightlabel.Name = "RightClickLabel" 
rightlabel.Text = "Right Click Function: " 
rightlabel.Size = UDim2.new(0, 100, 0, 20) 
rightlabel.Position = UDim2.new(0, 300, 0.2, 0) 
rightlabel.TextXAlignment = "Right" 

rightbutton = Instance.new("TextLabel") 
rightbutton.Parent = screengui 
rightbutton.Name = "Option" 
rightbutton.Text = "Remove" 
rightbutton.Size = UDim2.new(0, 100, 0, 20) 
rightbutton.Position = UDim2.new(0, 400, 0.2, 0) 
rightbutton.BackgroundColor3 = Color3.new(200/255, 100/255, 100/255) 

reloadbutton = Instance.new("TextButton") 
reloadbutton.Parent = screengui 
reloadbutton.Name = "Reload" 
reloadbutton.Text = "Reload" 
reloadbutton.Size = UDim2.new(0, 100, 0, 20) 
reloadbutton.Position = UDim2.new(0, 100, 0.2, -20) 
reloadbutton.MouseButton1Click:connect(function() createguis(opened) end) 

createguis(opened) 
end 

create() 

hide = Instance.new("TextButton") 
hide.Parent = screengui 
hide.Name = "Hide" 
hide.Text = "-" 
hide.Size = UDim2.new(0, 20, 0, 20) 
hide.Position = UDim2.new(0, 0, 0.2, -40) 
hide.MouseButton1Click:connect(function() 
if open == true then 
for i, v in pairs(screengui:GetChildren()) do 
if v.Name ~= "Hide" then 
v:Remove() 
end 
end 
hide.Text = "+" 
open = false 
else 
create() 
hide.Text = "-" 
open = true 
end 
end) 

 
