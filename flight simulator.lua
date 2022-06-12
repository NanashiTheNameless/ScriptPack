local me = game.Players.yfc 
local char = me.Character 
local pg = me.PlayerGui 
local spd = 0 
local cordx = 25000 
local cordy = 750000 
local cordz = 2765 
local reading = "No readings found;" 
local wepstatus = "Inactive - none on board" 
local locations = 65

pcall(function() char["Ship"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Ship" 

function create(part, weld, mesh, sizex, sizey, sizez, scalex, scaley, scalez, type, bevel, id, cz, ca, color, form, anchored, cancollide, trans, reflect, name, topsurf, botsurf) 
part.formFactor = form 
part.Size = Vector3.new(sizex, sizey, sizez) 
part.BrickColor = BrickColor.new(color) 
part.Anchored = anchored 
part.CanCollide = cancollide 
part.Transparency = trans 
part.Reflectance = reflect 
part.Name = name 
part.TopSurface = topsurf 
part.BottomSurface = botsurf 
part:BreakJoints() 
weld.Part0 = part 
weld.Part1 = cz 
weld.C1 = ca 
weld.Parent = part 
mesh.Parent = part 
mesh.Scale = Vector3.new(scalex, scaley, scalez) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = bevel 
end 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end 
if mesh.className == "SpecialMesh" and mesh.meshType == "FileMesh" then 
mesh.MeshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("BlockMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 10, 1, 30, 1.01, 1.01, 1.01, "", 0.1, "", nil, CFrame.new(0, -0.4, 0) * CFrame.Angles(0, 0, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local pos = Instance.new("BodyPosition", part1) 
pos.position = Vector3.new(25, 10, 0) 
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
local gyro = Instance.new("BodyGyro", part1) 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("BlockMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 1, 10, 20, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(5, 4.5, 0) * CFrame.Angles(0, 0, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("BlockMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 1, 10, 20, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(-5, 4.5, 0) * CFrame.Angles(0, 0, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("BlockMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 10, 1, 20, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(0, 9, 0) * CFrame.Angles(0, 0, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part5 = Instance.new("Part", model) 
local mesh5 = Instance.new("BlockMesh") 
local weld5 = Instance.new("Weld") 
create(part5, weld5, mesh5, 10, 1, 11, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(0, 4.5, 12.5) * CFrame.Angles(1.1, 0, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("SpecialMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 1, 10, 5, 1.01, 1.01, 1.01, "Wedge", 0.1, "", part1, CFrame.new(-5, 4.5, 12.5) * CFrame.Angles(0, 1.55*2, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("SpecialMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 1, 10, 5, 1.01, 1.01, 1.01, "Wedge", 0.1, "", part1, CFrame.new(5, 4.5, 12.5) * CFrame.Angles(0, 1.55*2, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("BlockMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 10, 10, 1, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(0, 4.5, -10.5) * CFrame.Angles(0, 0, 0), "Dark stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part9 = Instance.new("Seat", model) 
local mesh9 = Instance.new("CylinderMesh") 
local weld9 = Instance.new("Weld") 
create(part9, weld9, mesh9, 2, 1, 2, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(0, 0.5, 9.5) * CFrame.Angles(0, 1.55*2, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
for i = 1, 5 do 
local part10 = Instance.new("Seat", model) 
local mesh10 = Instance.new("CylinderMesh") 
local weld10 = Instance.new("Weld") 
create(part10, weld10, mesh10, 2, 1, 2, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(3.5, 0.5, -7.5+i*2.5) * CFrame.Angles(0, 1.55, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
local part11 = Instance.new("Seat", model) 
local mesh11 = Instance.new("CylinderMesh") 
local weld11 = Instance.new("Weld") 
create(part11, weld11, mesh11, 2, 1, 2, 1.01, 1.01, 1.01, "", 0.1, "", part1, CFrame.new(-3.5, 0.5, -7.5+i*2.5) * CFrame.Angles(0, -1.55, 0), "Dark stone grey", "Custom", false, true, 0, 0, "Torso", "Smooth", "Smooth") 
wait() 
end 

pcall(function() pg.RpgGui:remove() end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "RpgGui" 

local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 200) 
back.Size = UDim2.new(0, 200, 0, 200) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Reddish brown") 
back.BackgroundTransparency = 0.15
local id = Instance.new("TextLabel", back) 
id.Position = UDim2.new(0, 0, 0, 0) 
id.Size = UDim2.new(0, 200, 0, 25) 
id.BorderSizePixel = 0 
id.BackgroundColor = BrickColor.new("Really black") 
id.BackgroundTransparency = 0.5 
id.TextColor = BrickColor.new("White") 
id.Text = "Speed: " ..spd.. " kps" 
id.TextWrap = true 
local id2 = Instance.new("TextLabel", back) 
id2.Position = UDim2.new(0, 0, 0, 30) 
id2.Size = UDim2.new(0, 200, 0, 25) 
id2.BorderSizePixel = 0 
id2.BackgroundColor = BrickColor.new("Really black") 
id2.BackgroundTransparency = 0.5 
id2.TextColor = BrickColor.new("White") 
id2.Text = "Cordinates: " ..cordx.. ", " ..cordy.. ", " ..cordz.. " " 
id2.TextWrap = true 
local id3 = Instance.new("TextButton", back) 
id3.Position = UDim2.new(0, 0, 0, 60) 
id3.Size = UDim2.new(0, 200, 0, 25) 
id3.BorderSizePixel = 0 
id3.BackgroundColor = BrickColor.new("Really black") 
id3.BackgroundTransparency = 0.5 
id3.TextColor = BrickColor.new("White") 
id3.Text = "Open interface" 
local id4 = Instance.new("TextButton", back) 
id4.Position = UDim2.new(0, 0, 0, 90) 
id4.Size = UDim2.new(0, 200, 0, 25) 
id4.BorderSizePixel = 0 
id4.BackgroundColor = BrickColor.new("Really black") 
id4.BackgroundTransparency = 0.5 
id4.TextColor = BrickColor.new("White") 
id4.Text = "Open flight data" 
local id5 = Instance.new("TextButton", back) 
id5.Position = UDim2.new(0, 0, 0, 120) 
id5.Size = UDim2.new(0, 200, 0, 25) 
id5.BorderSizePixel = 0 
id5.BackgroundColor = BrickColor.new("Really black") 
id5.BackgroundTransparency = 0.5 
id5.TextColor = BrickColor.new("White") 
id5.Text = "Open Realease switch" 
local id6 = Instance.new("TextButton", back) 
id6.Position = UDim2.new(0, 0, 0, 150) 
id6.Size = UDim2.new(0, 200, 0, 40) 
id6.BorderSizePixel = 0 
id6.BackgroundColor = BrickColor.new("Really red") 
id6.BackgroundTransparency = 0.5 
id6.TextColor = BrickColor.new("White") 
id6.Text = "ABORT" 
id6.FontSize = "Size18"
local back2 = Instance.new("Frame", gui) 
back2.Position = UDim2.new(0, 200, 0, 200) 
back2.Size = UDim2.new(0, 200, 0, 125) 
back2.BorderSizePixel = 0 
back2.BackgroundColor = BrickColor.new("Reddish brown") 
back2.BackgroundTransparency = 0.15 
back2.Visible = false 
local idi = Instance.new("TextLabel", back2) 
idi.Position = UDim2.new(0, 0, 0, 0) 
idi.Size = UDim2.new(0, 200, 0, 25) 
idi.BorderSizePixel = 0 
idi.BackgroundColor = BrickColor.new("Really black") 
idi.BackgroundTransparency = 0.5 
idi.TextColor = BrickColor.new("White") 
idi.Text = "Interface: " ..reading.. " " 
idi.TextWrap = true 
local idi2 = Instance.new("TextButton", back2) 
idi2.Position = UDim2.new(0, 0, 0, 30) 
idi2.Size = UDim2.new(0, 200, 0, 25) 
idi2.BorderSizePixel = 0 
idi2.BackgroundColor = BrickColor.new("Really black") 
idi2.BackgroundTransparency = 0.5 
idi2.TextColor = BrickColor.new("White") 
idi2.Text = "Search again?" 
local idi3 = Instance.new("TextButton", back2) 
idi3.Position = UDim2.new(0, 0, 0, 60) 
idi3.Size = UDim2.new(0, 200, 0, 25) 
idi3.BorderSizePixel = 0 
idi3.BackgroundColor = BrickColor.new("Really black") 
idi3.BackgroundTransparency = 0.5 
idi3.TextColor = BrickColor.new("White") 
idi3.Text = "Reset scanner" 
local idi4 = Instance.new("TextButton", back2) 
idi4.Position = UDim2.new(0, 0, 0, 90) 
idi4.Size = UDim2.new(0, 200, 0, 25) 
idi4.BorderSizePixel = 0 
idi4.BackgroundColor = BrickColor.new("Really black") 
idi4.BackgroundTransparency = 0.5 
idi4.TextColor = BrickColor.new("White") 
idi4.Text = "Open Weapons console" 
local back3 = Instance.new("Frame", gui) 
back3.Position = UDim2.new(0, 400, 0, 200) 
back3.Size = UDim2.new(0, 200, 0, 125) 
back3.BorderSizePixel = 0 
back3.Visible = false 
back3.BackgroundColor = BrickColor.new("Reddish brown") 
back3.BackgroundTransparency = 0.15
local idis = Instance.new("TextLabel", back3) 
idis.Position = UDim2.new(0, 0, 0, 0) 
idis.Size = UDim2.new(0, 200, 0, 25) 
idis.BorderSizePixel = 0 
idis.BackgroundColor = BrickColor.new("Really black") 
idis.BackgroundTransparency = 0.5 
idis.TextColor = BrickColor.new("White") 
idis.Text = "Weapons: " ..wepstatus.. " " 
idis.TextWrap = true 
local back4 = Instance.new("Frame", gui) 
back4.Position = UDim2.new(0, 200, 0, 200) 
back4.Size = UDim2.new(0, 200, 0, 125) 
back4.BorderSizePixel = 0 
back4.Visible = false 
back4.BackgroundColor = BrickColor.new("Reddish brown") 
back4.BackgroundTransparency = 0.15
local idis = Instance.new("TextLabel", back4) 
idis.Position = UDim2.new(0, 0, 0, 0) 
idis.Size = UDim2.new(0, 200, 0, 50) 
idis.BorderSizePixel = 0 
idis.BackgroundColor = BrickColor.new("Really red") 
idis.BackgroundTransparency = 0.5 
idis.TextColor = BrickColor.new("White") 
idis.Text = "Are you sure?" 
idis.TextWrap = true 
local idis2 = Instance.new("TextButton", back4) 
idis2.Position = UDim2.new(0, 0, 0, 60) 
idis2.Size = UDim2.new(0, 100, 0, 50) 
idis2.BorderSizePixel = 5 
idis2.BackgroundColor = BrickColor.new("Really red") 
idis2.BackgroundTransparency = 0.5 
idis2.TextColor = BrickColor.new("White") 
idis2.Text = "Yes" 
local idis3 = Instance.new("TextButton", back4) 
idis3.Position = UDim2.new(0, 100, 0, 60) 
idis3.Size = UDim2.new(0, 100, 0, 50) 
idis3.BorderSizePixel = 5 
idis3.BackgroundColor = BrickColor.new("Really red") 
idis3.BackgroundTransparency = 0.5 
idis3.TextColor = BrickColor.new("White") 
idis3.Text = "No" 
local back5 = Instance.new("Frame", gui) 
back5.Position = UDim2.new(0, 200, 0, 200) 
back5.Size = UDim2.new(0, 600, 0, 600) 
back5.BorderSizePixel = 0 
back5.Visible = false 
back5.BackgroundColor = BrickColor.new("Really blue") 
back5.BackgroundTransparency = 0.15
for i = 1, locations do 
local idisi = Instance.new("TextButton", back5) 
idisi.Position = UDim2.new(0, math.random(1, i*10), 0, math.random(1, i*10)) 
idisi.Size = UDim2.new(0, 1, 0, 1) 
idisi.BorderSizePixel = 0 
idisi.BackgroundColor = BrickColor.new("White") 
idisi.BackgroundTransparency = 0.5 
idisi.TextColor = BrickColor.new("White") 
idisi.Text = "" ..i.. "" 
wait() 
end 

id3.MouseButton1Click:connect(function()
if back2.Visible == false then 
back2.Visible = true 
id3.Text = "Close interface" 
else 
back2.Visible = false 
id3.Text = "Open interface" 
end 
end)
id4.MouseButton1Click:connect(function()
if back5.Visible == false then 
back5.Visible = true 
id4.Text = "Close Flight Data" 
else 
back5.Visible = false 
id4.Text = "Open Flight Data" 
end 
end)
idi4.MouseButton1Click:connect(function()
if back3.Visible == false then 
back3.Visible = true 
idi4.Text = "Close Weapons consol" 
else 
back3.Visible = false 
idi4.Text = "Open Weapons console" 
end 
end)
id5.MouseButton1Click:connect(function()
if back4.Visible == false then 
back4.Visible = true 
id5.Text = "Close Realease switch" 
else 
back4.Visible = false 
id5.Text = "Open Realease switch" 
end 
end)
idis2.MouseButton1Click:connect(function()
back4.Visible = false 
end)
idis3.MouseButton1Click:connect(function()
back4.Visible = false 
end)
id6.MouseButton1Click:connect(function()
gui:remove() 
model:remove() 
script:remove() 
end)