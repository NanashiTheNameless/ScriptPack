player = game.Players.Drinzel
if script.Parent:IsA("Tool") then return end 
tool = Instance.new("Tool") 
script.Parent = tool 
tool.Name = "Spear" 
tool.Parent = player.Backpack 
local clicks = Instance.new("NumberValue") 
clicks.Parent = tool 
clicks.Value = 0 
handle = Instance.new("Part") 
handle.Name = "Handle" 
handle.Size = Vector3.new(1,4,1) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.BrickColor = BrickColor.new("Brown") 
local mesh = Instance.new("CylinderMesh") 
mesh.Parent = handle 
mesh.Scale = Vector3.new(0.3, 1, 0.3) 
effcolor = "New Yeller" 
--NECESSARY NEEDS 
local handle2 = Instance.new("Part") 
handle2.Size = Vector3.new(1,1,2) 
handle2.TopSurface = 0 
handle2.BottomSurface = 0 
handle2.BrickColor = BrickColor.new("Medium stone grey") 
handle2.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.Parent = handle2 
mesh2.MeshType = "FileMesh" 
mesh2.MeshId = "http://www.roblox.com/asset/?id=1033714" 
mesh2.Scale = Vector3.new(0.3, 1.7, 0.3) 
local handle3 = Instance.new("Part") 
handle3.Size = Vector3.new(1,1,1) 
handle3.TopSurface = 0 
handle3.BottomSurface = 0 
handle3.BrickColor = BrickColor.new("Medium stone grey") 
handle3.CanCollide = false 
local mesh3 = Instance.new("SpecialMesh") 
mesh3.Parent = handle3 
mesh3.MeshType = "FileMesh" 
mesh3.MeshId = "http://www.roblox.com/asset/?id=1033714" 
mesh3.Scale = Vector3.new(0.3, 0.5, 0.3) 
local handle4 = Instance.new("Part") 
handle4.Size = Vector3.new(1,1,1) 
handle4.TopSurface = 0 
handle4.BottomSurface = 0 
handle4.CanCollide = false 
handle4.BrickColor = BrickColor.new(21) 
local mesh4 = Instance.new("BlockMesh") 
mesh4.Parent = handle4 
mesh4.Scale = Vector3.new(0.296, 5, 0.1) 
local handle5 = handle4:clone() 
handle5.Mesh.Scale = Vector3.new(0.1,5,0.296) 
handle5.Name = "Handle5" 
local sla = Instance.new("Sound") 
sla.Parent = handle5 
sla.Volume = 1 
sla.SoundId = "rbxasset://sounds\\swordslash.wav" 
local handle6 = Instance.new("Part") 
handle6.Size = Vector3.new(1,1,1) 
handle6.TopSurface = 0 
handle6.BottomSurface = 0 
handle6.CanCollide = false 
handle6.BrickColor = BrickColor.new(21) 
local mesh6 = Instance.new("SpecialMesh") 
mesh6.Parent = handle6 
mesh6.Scale = Vector3.new(0.36, 0.4, 0.36) 
local handle7 = handle6:clone() 
local handle8 = handle6:clone() 
handle.Parent = tool 
handle2.Parent = tool 
handle3.Parent = tool 
handle4.Parent = tool 
handle5.Parent = tool 
handle6.Parent = tool 
handle7.Parent = tool 
handle8.Parent = tool 
brick1 = Instance.new("Part") 
brick1.Parent = player.Character 
brick1.formFactor = "Symmetric" 
brick1.Size = Vector3.new(1,1,1) 
brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0) 
brick1.Shape = "Ball" 
brick1.CanCollide = false 
brick1.Transparency = 1 
mesh1 = Instance.new("SpecialMesh") 
mesh1.Parent = brick1 
mesh1.MeshType = "Sphere" 
mesh1.Scale = Vector3.new(1.4,1.4,1.4) 
brick2 = Instance.new("Part") 
brick2.Parent = player.Character 
brick2.formFactor = "Symmetric" 
brick2.Size = Vector3.new(1,1,1) 
brick2.CFrame = player.Character.Torso.CFrame * CFrame.new(1.5,0.5,0) 
brick2.Shape = "Ball" 
brick2.CanCollide = false 
brick2.Transparency = 1 
mesh2 = Instance.new("SpecialMesh") 
mesh2.Parent = brick2 
mesh2.MeshType = "Sphere" 
mesh2.Scale = Vector3.new(1.4,1.4,1.4) 
wads = Instance.new("Weld") 
wads.Parent = player.Character.Torso 
wads.Part0 = wads.Parent 
wads.Part1 = brick1 
wads.C1 = CFrame.new(-1.5,-0.5,0) 
wads2 = Instance.new("Weld") 
wads2.Parent = player.Character.Torso 
wads2.Part0 = wads2.Parent 
wads2.Part1 = brick2 
wads2.C1 = CFrame.new(1.5,-0.5,0) 
lewe = Instance.new("Weld") 
riwe = Instance.new("Weld") 
lewe.C1 = CFrame.fromEulerAnglesXYZ(-1,0,-0.7) * CFrame.new(-0.28,0.25,0.3) 
riwe.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,-1.46) * CFrame.new(0,0.3,0.5) 
--OnEquip function 
debba = false 
function equip(mouse) 
lewe.Parent = brick2 
lewe.Part0 = lewe.Parent 
lewe.Part1 = player.Character["Left Arm"] 
lewe.C1 = CFrame.fromEulerAnglesXYZ(-1,0,-0.7) * CFrame.new(-0.28,0.25,0.3) 
riwe.Parent = brick1 
riwe.Part0 = riwe.Parent 
riwe.Part1 = player.Character["Right Arm"] 
riwe.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,-1.46) * CFrame.new(0,0.3,0.5) 
local w1 = Instance.new("Weld") 
w1.Parent = handle 
w1.Part0 = w1.Parent 
w1.Part1 = handle2 
w1.C1 = CFrame.new(0, -3.6, 0) 
local w2 = Instance.new("Weld") 
w2.Parent = handle 
w2.Part0 = w1.Parent 
w2.Part1 = handle3 
w2.C1 = CFrame.fromEulerAnglesXYZ(0,0,3.2) * CFrame.new(0, -2.79, 0) 
local w3 = Instance.new("Weld") 
w3.Parent = handle 
w3.Part0 = w1.Parent 
w3.Part1 = handle4 
w3.C1 = CFrame.new(0, 0.5, 0) 
local w4 = Instance.new("Weld") 
w4.Parent = handle 
w4.Part0 = w1.Parent 
w4.Part1 = handle5 
w4.C1 = CFrame.new(0, 0.5, 0) 
local w5 = Instance.new("Weld") 
w5.Parent = handle 
w5.Part0 = w1.Parent 
w5.Part1 = handle6 
w5.C1 = CFrame.new(0, 1, 0) 
local w6 = Instance.new("Weld") 
w6.Parent = handle 
w6.Part0 = w1.Parent 
w6.Part1 = handle7 
w6.C1 = CFrame.new(0, 1.5, 0) 
local w7 = Instance.new("Weld") 
w7.Parent = handle 
w7.Part0 = w1.Parent 
w7.Part1 = handle8 
w7.C1 = CFrame.new(0, 0.5, 0) 
mouse.Button1Down:connect(function(mouse) 
if not tool.Enabled then 
return 
end 
debba = true 
if debba == false then return end 
tool.Enabled = false 
hit() 
tool.Enabled = true 
end) 
mouse.Button1Up:connect(function(mouse) 
debba = false 
end) 
end 
local fire = Instance.new("Fire") 
fire.Parent = handle 
fire.Size = 1 
fire.Heat = 5 
local fire2 = Instance.new("Fire") 
fire2.Parent = handle4 
fire2.Size = 1 
fire2.Heat = 5 
fire.Enabled = false 
fire2.Enabled = false 
--KILL FUNCTION 
function b(h) 
if h.Parent.className == "Hat" then return end 
if h.Parent.Name == player.Name then return end 
local hum = h.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
local dam = math.random(2,6) 
hum.Health = hum.Health - dam 
local sho = Instance.new("BillboardGui") 
sho.Parent = game.Workspace 
sho.Size = UDim2.new(0,150,0,150) 
sho.Adornee = hum.Parent.Head 
local showdmg = Instance.new("TextLabel") 
showdmg.Parent = sho 
showdmg.Size = UDim2.new(0,25,0,25) 
showdmg.Text = dam 
showdmg.TextColor = BrickColor.new("Really black") 
showdmg.BackgroundColor = BrickColor.new("Bright red") 
showdmg.FontSize = "Size12" 
showdmg.Position = UDim2.new(0,math.random(-40,40),0,math.random(-90,-30)) 
showdmg.BackgroundTransparency = 0 
showdmg.Visible = true 
for i=1, math.random(3,9) do 
local blood = Instance.new("Part") 
blood.Parent = game.Workspace 
blood.BrickColor = BrickColor.new(21) 
blood.formFactor = "Plate" 
blood.Size = Vector3.new(1, 0.4, 1) 
blood.CFrame = h.CFrame 
blood.TopSurface = "Smooth" 
blood.BottomSurface = "Smooth" 
blood.Name = "Blood" 
blood.Anchored = false 
blood.Velocity = Vector3.new(math.random(-30,30), math.random(0,40), math.random(-30,30)) 
blood.RotVelocity = Vector3.new(math.random(-30,40), math.random(-30,30), math.random(-30,30)) 
blood.CanCollide = false 
blood:breakJoints() 
local mesff = Instance.new("SpecialMesh") 
mesff.Parent = blood 
mesff.MeshType = "Brick" 
mesff.Scale = Vector3.new(0.6, 0.6, 0.6) 
coroutine.resume(coroutine.create(function() 
wait(2) 
blood:remove() 
end)) 
end 
coroutine.resume(coroutine.create(function() 
wait(0.48) 
sho:remove() 
end)) 
end 
end 
riwesa = riwe.C1 
lewesa = lewe.C1 
function effect() 
local p1 = handle:clone() 
p1.Parent = game.Workspace 
p1.BrickColor = BrickColor.new(effcolor) 
p1.Transparency = 0.2 
p1.CFrame = handle.CFrame 
p1.CanCollide = false 
p1.Anchored = true 
local p2 = handle2:clone() 
p2.Parent = game.Workspace 
p2.BrickColor = BrickColor.new(effcolor) 
p2.Transparency = 0.2 
p2.CFrame = handle2.CFrame 
p2.CanCollide = false 
p2.Anchored = true 
local p3 = handle3:clone() 
p3.Parent = game.Workspace 
p3.BrickColor = BrickColor.new(effcolor) 
p3.Transparency = 0.2 
p3.CFrame = handle3.CFrame 
p3.CanCollide = false 
p3.Anchored = true 
coroutine.resume(coroutine.create(function() 
for i = 1, 8 do 
wait(0.01) 
p1.Transparency = p1.Transparency + 0.1 
p2.Transparency = p2.Transparency + 0.1 
p3.Transparency = p3.Transparency + 0.1 
end 
p1:remove() 
p2:remove() 
p3:remove() 
end)) 
end 
--ATTACKS START HERE 
function att1() 
for i = 1, 9 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.3,-0.1,0.2) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.2) 
effect() 
end 
for i = 1, 7 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.6,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.45) 
effect() 
end 
wait(0.01) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att2() 
for i = 1, 6 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0.4,0.3) 
effect() 
end 
wait(0.01) 
riwe.C1 = riwesa 
end 
function att3() 
tool.GripPos = Vector3.new(0, -2, 0) 
for i = 1, 6 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.08,0.2) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0.08,-0.16) 
effect() 
end 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0) 
effect() 
end 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.9,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.9,0,0) 
effect() 
end 
tool.GripPos = Vector3.new(0, -1, 0) 
wait(0.01) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att4() 
local spin = Instance.new("BodyAngularVelocity") 
spin.maxTorque = Vector3.new(1000000,1000000,1000000) 
spin.angularvelocity = Vector3.new(0,15,0) 
for i = 1, 4 do 
wait(0.02) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0.4,0.3) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.4,0) 
end 
spin.Parent = player.Character.Torso 
for i = 1, 19 do 
wait(0.01) 
local num = math.random(1,3) 
if num == 1 then 
sla:Play() 
sla.Pitch = math.random(0.7,1) 
end 
local part = Instance.new("Part") 
part.Parent = game.Workspace 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2,1,1) 
part.TopSurface = 0 
part.BottomSurface = 0 
part.BrickColor = BrickColor.new(effcolor) 
part.Transparency = 0.2 
part.CFrame = handle2.CFrame 
part.CanCollide = false 
part.Anchored = true 
local mes = Instance.new("BlockMesh") 
mes.Parent = part 
mes.Scale = Vector3.new(1,1,1) 
coroutine.resume(coroutine.create(function() 
for i = 1, 8 do 
wait(0.02) 
part.Transparency = part.Transparency + 0.1 
end 
part:remove() 
end)) 
end 
spin:remove() 
sla.Pitch = 1 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att5() 
tool.GripPos = Vector3.new(0, 0.5, 0) 
for i = 1, 6 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.04,0,0) 
end 
sla:Play() 
local cir = Instance.new("Part") 
cir.Parent = game.Workspace 
cir.BrickColor = BrickColor.new(effcolor) 
cir.Transparency = 1 
cir.Size = Vector3.new(1,1,1) 
cir.CFrame = handle.CFrame * CFrame.fromEulerAnglesXYZ(1.6,0,0) 
cir.Anchored = true 
local fd = Instance.new("CylinderMesh") 
fd.Parent = cir 
fd.Scale = Vector3.new(7,0.13,7) 
coroutine.resume(coroutine.create(function() 
for i = 1, 4 do 
wait() 
cir.Transparency = cir.Transparency - 0.1 
end 
end)) 
for i = 1, 25 do 
wait(0.01) 
cir.CFrame = handle.CFrame * CFrame.fromEulerAnglesXYZ(1.6,0,0) 
local num = math.random(1,2) 
if num == 1 then 
sla:Play() 
sla.Pitch = math.random(0.6,1) 
end 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.75) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect() 
end 
coroutine.resume(coroutine.create(function() 
for i = 1, 3 do 
wait() 
cir.Transparency = cir.Transparency + 0.14 
end 
cir:remove() 
end)) 
for i = 1, 3 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.08,0,0) 
end 
sla.Pitch = 1 
wait(0.01) 
tool.GripPos = Vector3.new(0, -1, 0) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att6() 
tool.GripPos = Vector3.new(0, 0.5, 0) 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.44) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.2) 
effect() 
end 
for i = 1, 5 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.4) 
effect() 
end 
for i = 1, 2 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.25,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.8) 
end 
local ha = handle:clone() 
ha.Parent = game.Workspace 
ha.CFrame = handle.CFrame 
ha.CanCollide = false 
local bfs = Instance.new("BodyForce") 
bfs.Parent = ha 
bfs.force = player.Character.Torso.CFrame.lookVector * 5000 
bfs.force = bfs.force + Vector3.new(0,2200,0) 
local ha2 = handle2:clone() 
ha2.Parent = game.Workspace 
ha2.CFrame = handle2.CFrame 
ha2.CanCollide = false 
local ha3 = handle3:clone() 
ha3.Parent = game.Workspace 
ha3.CFrame = handle3.CFrame 
ha3.CanCollide = false 
local ha4 = handle4:clone() 
ha4.Parent = game.Workspace 
ha4.CFrame = handle4.CFrame 
ha4.CanCollide = false 
local ha5 = handle5:clone() 
ha5.Parent = game.Workspace 
ha5.CFrame = handle5.CFrame 
ha5.CanCollide = false 
local wf = Instance.new("Weld") 
wf.Parent = ha 
wf.Part0 = wf.Parent 
wf.Part1 = ha2 
wf.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-3.5,0) 
local wf2 = Instance.new("Weld") 
wf2.Parent = ha 
wf2.Part0 = wf.Parent 
wf2.Part1 = ha3 
wf2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-3.1,0) 
local wf3 = Instance.new("Weld") 
wf3.Parent = ha 
wf3.Part0 = wf.Parent 
wf3.Part1 = ha4 
wf3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
local wf4 = Instance.new("Weld") 
wf4.Parent = ha 
wf4.Part0 = wf.Parent 
wf4.Part1 = ha5 
wf4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
handle.Transparency = 1 
handle2.Transparency = 1 
handle3.Transparency = 1 
handle4.Transparency = 1 
handle5.Transparency = 1 
handle6.Transparency = 1 
handle7.Transparency = 1 
handle8.Transparency = 1 
ha.Touched:connect(function(hit) 
if hit.Parent.Name == player.Name then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
local dam = math.random(12,28) 
hum.Health = hum.Health - dam 
local sho = Instance.new("BillboardGui") 
sho.Parent = game.Workspace 
sho.Size = UDim2.new(0,150,0,150) 
sho.Adornee = hum.Parent.Head 
local showdmg = Instance.new("TextLabel") 
showdmg.Parent = sho 
showdmg.Size = UDim2.new(0,25,0,25) 
showdmg.Text = dam 
showdmg.TextColor = BrickColor.new("Really black") 
showdmg.BackgroundColor = BrickColor.new("Bright red") 
showdmg.FontSize = "Size12" 
showdmg.Position = UDim2.new(0,math.random(-40,40),0,math.random(-90,-30)) 
showdmg.BackgroundTransparency = 0 
showdmg.Visible = true 
for i=1, math.random(2,6) do 
local blood = Instance.new("Part") 
blood.Parent = game.Workspace 
blood.BrickColor = BrickColor.new(21) 
blood.formFactor = "Plate" 
blood.Size = Vector3.new(1, 0.4, 1) 
blood.CFrame = hit.CFrame 
blood.TopSurface = "Smooth" 
blood.BottomSurface = "Smooth" 
blood.Name = "Blood" 
blood.Anchored = false 
blood.Velocity = Vector3.new(math.random(-20,20), math.random(-10,30), math.random(-20,20)) 
blood.RotVelocity = Vector3.new(math.random(-30,40), math.random(-30,30), math.random(-30,30)) 
blood.CanCollide = false 
blood:breakJoints() 
local mesff = Instance.new("SpecialMesh") 
mesff.Parent = blood 
mesff.MeshType = "Brick" 
mesff.Scale = Vector3.new(0.6, 0.6, 0.6) 
coroutine.resume(coroutine.create(function() 
wait(2) 
blood:remove() 
end)) 
end 
coroutine.resume(coroutine.create(function() 
wait(0.48) 
sho:remove() 
end)) 
end 
end) 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.6,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.16) 
end 
wait(0.1) 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
handle.Transparency = 0 
handle2.Transparency = 0 
handle3.Transparency = 0 
handle4.Transparency = 0 
handle5.Transparency = 0 
handle6.Transparency = 0 
handle7.Transparency = 0 
handle8.Transparency = 0 
coroutine.resume(coroutine.create(function() 
for i=1, 10 do 
wait() 
ha.Transparency = ha.Transparency + 0.1 
ha2.Transparency = ha2.Transparency + 0.1 
ha3.Transparency = ha3.Transparency + 0.1 
ha4.Transparency = ha4.Transparency + 0.1 
ha5.Transparency = ha5.Transparency + 0.1 
end 
ha:remove() 
ha2:remove() 
ha3:remove() 
ha4:remove() 
ha5:remove() 
end)) 
wait(0.04) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
tool.GripPos = Vector3.new(0, -1, 0) 
end 
function att7() 
tool.GripPos = Vector3.new(0, 0, 0) 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.44) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.1) 
effect() 
end 
for i = 1, 5 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.1) 
effect() 
end 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.5,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.4) 
end 
local boom = Instance.new("Part") 
boom.Parent = workspace 
boom.BrickColor = BrickColor.new(effcolor) 
boom.Size = Vector3.new(14,1,14) 
boom.CanCollide = false 
boom.Transparency = 0.1 
boom.Anchored = true 
boom.CFrame = player.Character.Torso.CFrame * CFrame.new(0,-4.3,0) 
local mes = Instance.new("CylinderMesh") 
mes.Parent = boom 
mes.Scale = Vector3.new(0.4,1,0.4) 
boom.TopSurface = 0 
boom.BottomSurface = 0 
boom.Touched:connect(function(hit) 
local hi = hit.Parent:findFirstChild("Humanoid") 
if hi ~= nil then 
if hit.Parent.Name == player.Name then return end 
hit.Parent.Torso.Velocity = Vector3.new(math.random(-15,15),math.random(40,60),math.random(-15,15)) 
hit.Parent.Torso.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30)) 
hi.Sit = true 
hi.Health = hi.Health - 10 
wait(0.5) 
hi.Sit = false 
end 
hit.Velocity = Vector3.new(math.random(-15,15),math.random(40,60),math.random(-15,15)) 
hit.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30)) 
end) 
coroutine.resume(coroutine.create(function() 
for i=1, 25 do 
mes.Scale = mes.Scale + Vector3.new(0.06, 0, 0.06) 
boom.Transparency = boom.Transparency + 0.04 
boom.CFrame = boom.CFrame * CFrame.new(0, 0.1, 0) 
wait() 
end 
boom:remove() 
end)) 
wait(0.3) 
for i = 1, 2 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.2,-0.65,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.38) 
end 
wait(0.1) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
tool.GripPos = Vector3.new(0, -1, 0) 
end 
function att8() 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.26,0.34,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.05) 
effect() 
end 
for i = 1, 6 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) 
effect() 
end 
for i = 1, 3 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,-0.35) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,0.05) 
effect() 
end 
wait(0.01) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att9() 
for i = 1, 4 do 
wait(0.02) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.26,0.34,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.05) 
effect() 
end 
for i = 1, 8 do 
wait(0.02) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.25,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.12,0,0) 
effect() 
end 
for i = 1, 4 do 
wait(0.02) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0.12,0.1) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,0.05) 
effect() 
end 
wait(0.2) 
for i = 1, 12 do 
wait(0.03) 
enb = false 
local part = Instance.new("Part") 
part.Parent = workspace 
part.BrickColor = BrickColor.new(effcolor) 
part.formFactor = "Symmetric" 
part.Size = Vector3.new(2,1,1) 
part.Transparency = 0.2 
part.TopSurface = 0 
part.BottomSurface = 0 
part.Anchored = false 
part.CanCollide = false 
part.CFrame = handle.CFrame 
part:breakJoints() 
local bv = Instance.new("BodyVelocity") 
bv.Parent = part 
bv.velocity = handle.CFrame.lookVector * 60 
part.Touched:connect(function(hit) 
if enb == true then return end 
if hit.Parent.Name == player.Name then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil then 
enb = true 
local dam = math.random(3,10) 
hum.Health = hum.Health - dam 
local sho = Instance.new("BillboardGui") 
sho.Parent = game.Workspace 
sho.Size = UDim2.new(0,150,0,150) 
sho.Adornee = hum.Parent.Head 
local showdmg = Instance.new("TextLabel") 
showdmg.Parent = sho 
showdmg.Size = UDim2.new(0,25,0,25) 
showdmg.Text = dam 
showdmg.TextColor = BrickColor.new("Really black") 
showdmg.BackgroundColor = BrickColor.new("Bright red") 
showdmg.FontSize = "Size12" 
showdmg.Position = UDim2.new(0,math.random(-40,40),0,math.random(-90,-30)) 
showdmg.BackgroundTransparency = 0 
showdmg.Visible = true 
for i=1, 4 do 
local blood = Instance.new("Part") 
blood.Parent = game.Workspace 
blood.BrickColor = BrickColor.new(21) 
blood.formFactor = "Plate" 
blood.Size = Vector3.new(1, 0.4, 1) 
blood.CFrame = hit.CFrame 
blood.TopSurface = "Smooth" 
blood.BottomSurface = "Smooth" 
blood.Name = "Blood" 
blood.Anchored = false 
blood.Velocity = Vector3.new(math.random(-20,20), math.random(-10,30), math.random(-20,20)) 
blood.RotVelocity = Vector3.new(math.random(-30,40), math.random(-30,30), math.random(-30,30)) 
blood.CanCollide = false 
blood:breakJoints() 
local mesff = Instance.new("SpecialMesh") 
mesff.Parent = blood 
mesff.MeshType = "Brick" 
mesff.Scale = Vector3.new(0.6, 0.6, 0.6) 
coroutine.resume(coroutine.create(function() 
wait(2) 
blood:remove() 
end)) 
end 
coroutine.resume(coroutine.create(function() 
wait(0.48) 
sho:remove() 
end)) 
end 
end) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.16,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,0.05) 
effect() 
coroutine.resume(coroutine.create(function() 
wait(0.4) 
for i=1, 8 do 
part.Transparency = part.Transparency + 0.1 
wait() 
end 
part:remove() 
end)) 
end 
wait(0.01) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
function att10() 
tool.GripPos = Vector3.new(0, -2.5, 0) 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.1,0.25) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0.1,-0.2) 
effect() 
end 
for i = 1, 4 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) 
effect() 
end 
for i = 1, 8 do 
wait(0.01) 
riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.53,0,0) 
lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.53,0,0) 
effect() 
end 
val = player.Character.Torso.CFrame 
for i=1, 8 do 
wait() 
wabble = false 
local wav = Instance.new("Part") 
wav.Parent = workspace 
wav.BrickColor = BrickColor.new(effcolor) 
wav.Size = Vector3.new(1,4,3) 
wav.Transparency = 0.2 
wav.CanCollide = false 
wav.TopSurface = 0 
wav.BottomSurface = 0 
wav.Anchored = true 
wav.CFrame = val * CFrame.new(0,-3,-3) 
wabble = true 
coroutine.resume(coroutine.create(function() 
for i=1, 50 do 
wait() 
wav.CFrame = wav.CFrame * CFrame.new(0,0,-2) 
end 
wabble = false 
end)) 
coroutine.resume(coroutine.create(function() 
while wabble == true do 
for i=1, 5 do 
wait() 
wav.CFrame = wav.CFrame * CFrame.new(0,-0.2,0) 
end 
for i=1, 5 do 
wait() 
wav.CFrame = wav.CFrame * CFrame.new(0,0.2,0) 
end 
end 
end)) 
end 
wait(0.2) 
tool.GripPos = Vector3.new(0, -1, 0) 
riwe.C1 = riwesa 
lewe.C1 = lewesa 
end 
--Click function 
debounce = false 
function hit() 
clicks.Value = math.random(1,10) 
clicks.Value = 10 
if clicks.Value == 1 then 
handle.Touched:connect(b) 
debounce = false 
sla:play() 
att1() 
debounce = true 
end 
if clicks.Value == 2 then 
handle.Touched:connect(b) 
debounce = false 
sla:play() 
att2() 
debounce = true 
end 
if clicks.Value == 3 then 
handle.Touched:connect(b) 
debounce = false 
sla:play() 
att3() 
debounce = true 
end 
if clicks.Value == 4 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att4() 
debounce = true 
end 
if clicks.Value == 5 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att5() 
debounce = true 
end 
if clicks.Value == 6 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att6() 
debounce = true 
end 
if clicks.Value == 7 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att7() 
debounce = true 
end 
if clicks.Value == 8 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att8() 
debounce = true 
end 
if clicks.Value == 9 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att9() 
debounce = true 
end 
if clicks.Value == 10 then 
handle.Touched:connect(b) 
sla:play() 
debounce = false 
att10() 
debounce = true 
end 
end 
function onActivated() 
if not tool.Enabled then 
return 
end 
tool.Enabled = false 
hit() 
tool.Enabled = true 
end 
tool.Activated:connect(onActivated) 
function uneq() 
lewe.Part0 = nil 
lewe.Part1 = nil 
riwe.Part0 = nil 
riwe.Part1 = nil 
end 
tool.Unequipped:connect(uneq) 
tool.Equipped:connect(equip)