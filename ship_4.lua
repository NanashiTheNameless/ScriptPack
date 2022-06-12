Santaran = "hyper900" 
local on = false 
local players = game:GetService("Players") 
local workspace = game:GetService("Workspace") 
wbase = workspace.Base 
local me = game.Players:findFirstChild(Santaran) 
local char = me.Character 
local General = {"hyper900"} 
local parts = {} 
local Y = 25000
script.Parent = char 
pcall(function() wbase.ship:remove() end)
local shp = Instance.new("Model", wbase) 
shp.Name = "ship" 
local pod1 = Instance.new("Model", shp) 
pod1.Name = "Escape Pod1" 
local pod2 = Instance.new("Model", shp) 
pod2.Name = "Escape Pod2" 
local base = Instance.new("Part", shp) 
base.BrickColor = BrickColor.new("Dark stone grey") 
base.Anchored = true 
base.Size = Vector3.new(6, 2, 8) 
base.CFrame = CFrame.new(16, 1, 1) 
basem = Instance.new("BlockMesh", base) 
local base2 = Instance.new("Part", shp) 
base2.BrickColor = BrickColor.new("Dark stone grey") 
base2.Anchored = true 
base2.Size = Vector3.new(8, 2, 8) 
base2.CFrame = CFrame.new(12, 1.5, 1) * CFrame.Angles(0, 0, -1) 
base2m = Instance.new("BlockMesh", base2) 
local base3 = Instance.new("Part", shp) 
base3.BrickColor = BrickColor.new("Dark stone grey") 
base3.Anchored = true 
base3.Size = Vector3.new(8, 2, 8) 
base3.CFrame = CFrame.new(20, 1.5, 1) * CFrame.Angles(0, 0, 1) 
base3m = Instance.new("BlockMesh", base3) 
local base4 = Instance.new("Part", shp) 
base4.BrickColor = BrickColor.new("Dark stone grey") 
base4.Anchored = true 
base4.Size = Vector3.new(4, 2, 8) 
base4.CFrame = CFrame.new(22, 6.25, 1) * CFrame.Angles(0, 0, 1.55) 
base4m = Instance.new("BlockMesh", base4) 
local base5 = Instance.new("Part", shp) 
base5.BrickColor = BrickColor.new("Dark stone grey") 
base5.Anchored = true 
base5.Size = Vector3.new(4, 2, 8) 
base5.CFrame = CFrame.new(10, 6.25, 1) * CFrame.Angles(0, 0, 1.6) 
base5m = Instance.new("BlockMesh", base5) 
local base6 = Instance.new("Part", shp) 
base6.BrickColor = BrickColor.new("Dark stone grey") 
base6.Anchored = true 
base6.Size = Vector3.new(4, 2, 8) 
base6.CFrame = CFrame.new(10.75, 9.5, 1) * CFrame.Angles(0, 0, 1.1) 
base6m = Instance.new("BlockMesh", base6) 
local base7 = Instance.new("Part", shp) 
base7.BrickColor = BrickColor.new("Dark stone grey") 
base7.Anchored = true 
base7.Size = Vector3.new(4, 2, 8) 
base7.CFrame = CFrame.new(21.25, 9.5, 1) * CFrame.Angles(0, 0, -1.1) 
base7m = Instance.new("BlockMesh", base7) 
local base8 = Instance.new("Part", shp) 
base8.BrickColor = BrickColor.new("Dark stone grey") 
base8.Anchored = true 
base8.Size = Vector3.new(11, 2, 8) 
base8.CFrame = CFrame.new(16, 10.65, 1) * CFrame.Angles(0, 0, 0) 
base8m = Instance.new("BlockMesh", base8) 
local base9 = Instance.new("Part", shp) 
base9.BrickColor = BrickColor.new("Dark stone grey") 
base9.Anchored = true 
base9.Size = Vector3.new(11, 8, 1) 
base9.CFrame = CFrame.new(16, 5.325, 4.5) * CFrame.Angles(0, 0, 0) 
base9m = Instance.new("BlockMesh", base9) 
local base10 = Instance.new("Part", shp) 
base10.BrickColor = BrickColor.new("Dark stone grey") 
base10.Anchored = true 
base10.Size = Vector3.new(5, 6, 1) 
base10.CFrame = CFrame.new(16, 5.325, 3.5) * CFrame.Angles(0, 0, 0) 
base10m = Instance.new("BlockMesh", base10) 
local hull = Instance.new("Part", shp) 
hull.BrickColor = BrickColor.new("Dark stone grey") 
hull.Anchored = true 
hull.Size = Vector3.new(25, 2, 25) 
hull.CFrame = CFrame.new(0, Y, 0) * CFrame.Angles(0, 0, 0) 
hullm = Instance.new("BlockMesh", hull) 
local hull2 = Instance.new("Part", shp) 
hull2.BrickColor = BrickColor.new("Dark stone grey") 
hull2.Anchored = true 
hull2.Size = Vector3.new(2, 10, 25) 
hull2.CFrame = CFrame.new(11.5, Y+5, 0) * CFrame.Angles(0, 0, 0) 
hull2m = Instance.new("BlockMesh", hull2) 
local hull3 = Instance.new("Part", shp) 
hull3.BrickColor = BrickColor.new("Dark stone grey") 
hull3.Anchored = true 
hull3.Size = Vector3.new(25, 10, 2) 
hull3.CFrame = CFrame.new(0, Y+5, 11.5) * CFrame.Angles(0, 0, 0) 
hull3m = Instance.new("BlockMesh", hull3) 
local hull4 = Instance.new("Part", shp) 
hull4.BrickColor = BrickColor.new("Dark stone grey") 
hull4.Anchored = true 
hull4.Size = Vector3.new(25, 10, 2) 
hull4.CFrame = CFrame.new(0, Y+5, -11.5) * CFrame.Angles(0, 0, 0) 
hull4m = Instance.new("BlockMesh", hull4) 
local hull5 = Instance.new("Part", shp) 
hull5.BrickColor = BrickColor.new("Dark stone grey") 
hull5.Anchored = true 
hull5.Size = Vector3.new(2, 10, 8.5) 
hull5.CFrame = CFrame.new(-11.5, Y+5, 7.75) * CFrame.Angles(0, 0, 0) 
hull5m = Instance.new("BlockMesh", hull5) 
local hull6 = Instance.new("Part", shp) 
hull6.BrickColor = BrickColor.new("Dark stone grey") 
hull6.Anchored = true 
hull6.Size = Vector3.new(2, 10, 8.5) 
hull6.CFrame = CFrame.new(-11.5, Y+5, -7.75) * CFrame.Angles(0, 0, 0) 
hull6m = Instance.new("BlockMesh", hull6) 
local hull7 = Instance.new("Part", shp) 
hull7.BrickColor = BrickColor.new("Dark stone grey") 
hull7.Anchored = true 
hull7.Size = Vector3.new(50, 2, 8.5) 
hull7.CFrame = CFrame.new(-37.5, Y, 0) * CFrame.Angles(0, 0, 0) 
hull7m = Instance.new("BlockMesh", hull7) 
local hull8 = Instance.new("Part", shp) 
hull8.BrickColor = BrickColor.new("Dark stone grey") 
hull8.Anchored = true 
hull8.Size = Vector3.new(50, 10, 2) 
hull8.CFrame = CFrame.new(-37.5, Y+5, 4.75) * CFrame.Angles(0, 0, 0) 
hull8m = Instance.new("BlockMesh", hull8) 
local hull9 = Instance.new("Part", shp) 
hull9.BrickColor = BrickColor.new("Dark stone grey") 
hull9.Anchored = true 
hull9.Size = Vector3.new(50, 10, 2) 
hull9.CFrame = CFrame.new(-37.5, Y+5, -4.75) * CFrame.Angles(0, 0, 0) 
hull9m = Instance.new("BlockMesh", hull9) 
local hull10 = Instance.new("Part", shp) 
hull10.BrickColor = BrickColor.new("Dark stone grey") 
hull10.Anchored = true 
hull10.Size = Vector3.new(8.5, 2, 27) 
hull10.CFrame = CFrame.new(-66.5, Y, 0) * CFrame.Angles(0, 0, 0) 
hull10m = Instance.new("BlockMesh", hull10) 
local hull11 = Instance.new("Part", shp) 
hull11.BrickColor = BrickColor.new("Dark stone grey") 
hull11.Anchored = true 
hull11.Size = Vector3.new(2, 10, 16.5) 
hull11.CFrame = CFrame.new(-61.5, Y+5, 13.5) * CFrame.Angles(0, 0, 0) 
hull11m = Instance.new("BlockMesh", hull11) 
local hull12 = Instance.new("Part", shp) 
hull12.BrickColor = BrickColor.new("Dark stone grey") 
hull12.Anchored = true 
hull12.Size = Vector3.new(2, 10, 8.5) 
hull12.CFrame = CFrame.new(-61.5, Y+5, -9.5) * CFrame.Angles(0, 0, 0) 
hull12m = Instance.new("BlockMesh", hull12) 
local hull13 = Instance.new("Part", shp) 
hull13.BrickColor = BrickColor.new("Dark stone grey") 
hull13.Anchored = true 
hull13.Size = Vector3.new(2, 10, 27) 
hull13.CFrame = CFrame.new(-71.5, Y+5, 0) * CFrame.Angles(0, 0, 0) 
hull13m = Instance.new("BlockMesh", hull13) 
local hull13 = Instance.new("Part", shp) 
hull13.BrickColor = BrickColor.new("Dark stone grey") 
hull13.Anchored = true 
hull13.Size = Vector3.new(25, 2, 8.5) 
hull13.CFrame = CFrame.new(-73.5, Y, 17.5) * CFrame.Angles(0, 0, 0) 
hull13m = Instance.new("BlockMesh", hull13) 
local hull14 = Instance.new("Part", shp) 
hull14.BrickColor = BrickColor.new("Dark stone grey") 
hull14.Anchored = true 
hull14.Size = Vector3.new(25, 10, 2) 
hull14.CFrame = CFrame.new(-73.5, Y+5, 22.5) * CFrame.Angles(0, 0, 0) 
hull14m = Instance.new("BlockMesh", hull14) 
local hull15 = Instance.new("Part", shp) 
hull15.BrickColor = BrickColor.new("Dark stone grey") 
hull15.Anchored = true 
hull15.Size = Vector3.new(14, 10, 2) 
hull15.CFrame = CFrame.new(-79, Y+5, 12.5) * CFrame.Angles(0, 0, 0) 
hull15m = Instance.new("BlockMesh", hull15) 
local hull16 = Instance.new("Part", shp) 
hull16.BrickColor = BrickColor.new("Dark stone grey") 
hull16.Anchored = true 
hull16.Size = Vector3.new(40, 2, 50) 
hull16.CFrame = CFrame.new(-106, Y, 20.5) * CFrame.Angles(0, 0, 0) 
hull16m = Instance.new("BlockMesh", hull16) 
local hull17 = Instance.new("Part", shp) 
hull17.BrickColor = BrickColor.new("Dark stone grey") 
hull17.Anchored = true 
hull17.Size = Vector3.new(2, 2, 50) 
hull17.CFrame = CFrame.new(-125, Y+2, 20.5) * CFrame.Angles(0, 0, 0) 
hull17m = Instance.new("BlockMesh", hull17) 
local hull18 = Instance.new("Part", shp) 
hull18.BrickColor = BrickColor.new("Really blue") 
hull18.Anchored = true 
hull18.Transparency = 0.5
hull18.Size = Vector3.new(2, 10, 48) 
hull18.CFrame = CFrame.new(-125, Y+8, 20.5) * CFrame.Angles(0, 0, 0) 
hull18m = Instance.new("BlockMesh", hull18) 
local hull19 = Instance.new("Part", shp) 
hull19.BrickColor = BrickColor.new("Dark stone grey") 
hull19.Anchored = true 
hull19.Size = Vector3.new(40, 14, 2) 
hull19.CFrame = CFrame.new(-106, Y+8, 45.5) * CFrame.Angles(0, 0, 0) 
hull19m = Instance.new("BlockMesh", hull19) 
local hull20 = Instance.new("Part", shp) 
hull20.BrickColor = BrickColor.new("Dark stone grey") 
hull20.Anchored = true 
hull20.Size = Vector3.new(40, 14, 2) 
hull20.CFrame = CFrame.new(-106, Y+8, -4.5) * CFrame.Angles(0, 0, 0) 
hull20m = Instance.new("BlockMesh", hull20) 
local hull21 = Instance.new("Part", shp) 
hull21.BrickColor = BrickColor.new("Dark stone grey") 
hull21.Anchored = true 
hull21.Size = Vector3.new(2, 2, 50) 
hull21.CFrame = CFrame.new(-125, Y+14, 20.5) * CFrame.Angles(0, 0, 0) 
hull21m = Instance.new("BlockMesh", hull21) 
local hull22 = Instance.new("Part", shp) 
hull22.BrickColor = BrickColor.new("Dark stone grey") 
hull22.Anchored = true 
hull22.Size = Vector3.new(2, 14, 18) 
hull22.CFrame = CFrame.new(-85, Y+8, 3.5) * CFrame.Angles(0, 0, 0) 
hull22m = Instance.new("BlockMesh", hull22) 
local hull23 = Instance.new("Part", shp) 
hull23.BrickColor = BrickColor.new("Dark stone grey") 
hull23.Anchored = true 
hull23.Size = Vector3.new(2, 14, 9) 
hull23.CFrame = CFrame.new(-85, Y+8, 27) * CFrame.Angles(0, 0, 0) 
hull23m = Instance.new("BlockMesh", hull23) 
local hull24 = Instance.new("Part", shp) 
hull24.BrickColor = BrickColor.new("Dark stone grey") 
hull24.Anchored = true 
hull24.Size = Vector3.new(2, 14, 7) 
hull24.CFrame = CFrame.new(-85, Y+8, 43) * CFrame.Angles(0, 0, 0) 
hull24m = Instance.new("BlockMesh", hull24) 
local hull25 = Instance.new("Part", shp) 
hull25.BrickColor = BrickColor.new("Dark stone grey") 
hull25.Anchored = true 
hull25.Size = Vector3.new(40, 2, 8) 
hull25.CFrame = CFrame.new(-66, Y, 35.5) * CFrame.Angles(0, 0, 0) 
hull25m = Instance.new("BlockMesh", hull25) 
local hull26 = Instance.new("Part", pod1) 
hull26.BrickColor = BrickColor.new("Dark stone grey") 
hull26.Anchored = true 
hull26.Size = Vector3.new(6, 2, 6) 
hull26.CFrame = CFrame.new(-66, Y, 42.5) * CFrame.Angles(0, 0, 0) 
hull26m = Instance.new("CylinderMesh", hull26) 
local click = Instance.new("ClickDetector", hull26) 
local hull27 = Instance.new("Part", pod1) 
hull27.BrickColor = BrickColor.new("Dark stone grey") 
hull27.Anchored = true 
hull27.Size = Vector3.new(6, 8, 1) 
hull27.CFrame = CFrame.new(-66, Y-5, 40) * CFrame.Angles(0, 0, 0) 
hull27m = Instance.new("BlockMesh", hull27) 
local hull28 = Instance.new("Part", pod1) 
hull28.BrickColor = BrickColor.new("Dark stone grey") 
hull28.Anchored = true 
hull28.Size = Vector3.new(6, 8, 1) 
hull28.CFrame = CFrame.new(-66, Y-5, 45) * CFrame.Angles(0, 0, 0) 
hull28m = Instance.new("BlockMesh", hull28) 
local hull29 = Instance.new("Part", pod1) 
hull29.BrickColor = BrickColor.new("Dark stone grey") 
hull29.Anchored = true 
hull29.Size = Vector3.new(1, 8, 6) 
hull29.CFrame = CFrame.new(-68.5, Y-5, 42.5) * CFrame.Angles(0, 0, 0) 
hull29m = Instance.new("BlockMesh", hull29) 
local hull30 = Instance.new("Part", pod1) 
hull30.BrickColor = BrickColor.new("Dark stone grey") 
hull30.Anchored = true 
hull30.Size = Vector3.new(1, 8, 6) 
hull30.CFrame = CFrame.new(-63.5, Y-5, 42.5) * CFrame.Angles(0, 0, 0) 
hull30m = Instance.new("BlockMesh", hull30) 
local hull31 = Instance.new("Part", pod1) 
hull31.BrickColor = BrickColor.new("Dark stone grey") 
hull31.Anchored = true 
hull31.Size = Vector3.new(6, 2, 6) 
hull31.CFrame = CFrame.new(-66, Y-9, 42.5) * CFrame.Angles(0, 0, 0) 
hull31m = Instance.new("CylinderMesh", hull31) 
local seat = Instance.new("Seat") 
seat.Size = Vector3.new(2, 1, 2) 
seat.CFrame = CFrame.new(-66, Y-7, 42.5) 
seat.Anchored = false 
local gyro = Instance.new("BodyGyro", seat) 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local positio = Instance.new("BodyPosition", seat) 
positio.maxForce = Vector3.new(0, math.huge, 0) 
positio.position = Vector3.new(0, 2, 0) 
local click2 = Instance.new("ClickDetector", hull31) 
local hull263 = Instance.new("Part", pod2) 
hull263.BrickColor = BrickColor.new("Dark stone grey") 
hull263.Anchored = true 
hull263.Size = Vector3.new(6, 2, 6) 
hull263.CFrame = CFrame.new(-56, Y, 42.5) * CFrame.Angles(0, 0, 0) 
hull263m = Instance.new("CylinderMesh", hull263) 
local click3 = Instance.new("ClickDetector", hull263) 
local hull27 = Instance.new("Part", pod2) 
hull27.BrickColor = BrickColor.new("Dark stone grey") 
hull27.Anchored = true 
hull27.Size = Vector3.new(6, 8, 1) 
hull27.CFrame = CFrame.new(-56, Y-5, 40) * CFrame.Angles(0, 0, 0) 
hull27m = Instance.new("BlockMesh", hull27) 
local hull28 = Instance.new("Part", pod2) 
hull28.BrickColor = BrickColor.new("Dark stone grey") 
hull28.Anchored = true 
hull28.Size = Vector3.new(6, 8, 1) 
hull28.CFrame = CFrame.new(-56, Y-5, 45) * CFrame.Angles(0, 0, 0) 
hull28m = Instance.new("BlockMesh", hull28) 
local hull29 = Instance.new("Part", pod2) 
hull29.BrickColor = BrickColor.new("Dark stone grey") 
hull29.Anchored = true 
hull29.Size = Vector3.new(1, 8, 6) 
hull29.CFrame = CFrame.new(-58.5, Y-5, 42.5) * CFrame.Angles(0, 0, 0) 
hull29m = Instance.new("BlockMesh", hull29) 
local hull30 = Instance.new("Part", pod2) 
hull30.BrickColor = BrickColor.new("Dark stone grey") 
hull30.Anchored = true 
hull30.Size = Vector3.new(1, 8, 6) 
hull30.CFrame = CFrame.new(-53.5, Y-5, 42.5) * CFrame.Angles(0, 0, 0) 
hull30m = Instance.new("BlockMesh", hull30) 
local hull331 = Instance.new("Part", pod2) 
hull331.BrickColor = BrickColor.new("Dark stone grey") 
hull331.Anchored = true 
hull331.Size = Vector3.new(6, 2, 6) 
hull331.CFrame = CFrame.new(-56, Y-9, 42.5) * CFrame.Angles(0, 0, 0) 
hull331m = Instance.new("CylinderMesh", hull331) 
local click4 = Instance.new("ClickDetector", hull331) 
click.MouseClick:connect(function() 
if hull26.Transparency == 0 then 
hull26.Transparency = 0.5 
hull26.CanCollide = false 
else 
hull26.Transparency = 0 
hull26.CanCollide = true 
end 
end)
click2.MouseClick:connect(function() 
if hull31.Transparency == 0 then 
local seatc2 = seat:clone() 
seatc2.Parent = workspace 
seatc2.Anchored = false 
seatc2.Size = Vector3.new(2, 1, 2) 
seatc2.CFrame = CFrame.new(-66, Y-7, 42.5) 
hull31.Transparency = 0.5 
hull31.CanCollide = false 
else 
hull31.Transparency = 0 
hull31.CanCollide = true 
end 
end)
click3.MouseClick:connect(function() 
if hull263.Transparency == 0 then 
hull263.Transparency = 0.5 
hull263.CanCollide = false 
else 
hull263.Transparency = 0 
hull263.CanCollide = true 
end 
end)
click4.MouseClick:connect(function() 
if hull331.Transparency == 0 then 
local seatc = seat:clone() 
seatc.Parent = workspace 
seatc.Anchored = false 
seatc.Size = Vector3.new(2, 1, 2) 
seatc.CFrame = CFrame.new(-56, Y-7, 42.5) 
hull331.Transparency = 0.5 
hull331.CanCollide = false 
else 
hull331.Transparency = 0 
hull331.CanCollide = true 
end 
end)
function chat(msg) 
if msg == "selfdestruct" then 
for _, v in pairs(shp:GetChildren()) do 
table.insert(parts, v.Name) 
local ex = Instance.new("Explosion", v) 
ex.BlastRadius = 25000 
ex.BlastPressure = 250000 
ex.Position = v.Position 
v.Anchored = false 
end 
print(#parts) 
end 
end 
me.Chatted:connect(chat)
coroutine.wrap(function()
while true do 
pcall(function()
for _,v in pairs(players:GetPlayers()) do 
if (v.Character.Torso.Position - base10.Position).magnitude < 2 then 
v.Character.Torso.CFrame = hull.CFrame + Vector3.new(0, 3, 7) 
end 
end 
end)
wait() 
end 
end)()
coroutine.wrap(function()
pcall(function() workspace.Base.Hangar:Remove() end)
base = CFrame.new(0,25000,0)
m = Instance.new("Model", workspace.Base)
m.Name = "Hangar"
hall = Instance.new("Part")
hall.Name = "hull1"
hall.Size = Vector3.new(20, 2, 8)
hall.TopSurface = "Smooth"
hall.BottomSurface = "Smooth"
hall.Parent = m
hall.CFrame = base + Vector3.new(-70.5, 0, -17.5)
hall.Anchored = true
hall.BrickColor = BrickColor.new("Dark stone grey")
wall = hall:Clone()
wall.Size = Vector3.new(2, 10, 8)
wall.CFrame = hall.CFrame + Vector3.new(9, 5, 0)
wall.Parent = m
wall.Name = "hull2"
wall2 = Instance.new("Part")
wall2.TopSurface = "Smooth"
wall2.BottomSurface = "Smooth"
wall2.Anchored = true
wall2.BrickColor = BrickColor.new("Dark stone grey")
wall2.Parent = m
wall2.Size = Vector3.new(10, 10, 2)
wall2.CFrame = hall.CFrame + Vector3.new(-5, 5, 3.5)
wall2.Name = "hull3"
wall3 = Instance.new("Part")
wall3.TopSurface = "Smooth"
wall3.BottomSurface = "Smooth"
wall3.Anchored = true
wall3.BrickColor = BrickColor.new("Dark stone grey")
wall3.Parent = m
wall3.Size = Vector3.new(11, 10, 2)
wall3.CFrame = hall.CFrame + Vector3.new(3.5, 5, -3.)
wall3.Name = "hull4"
hall2 = Instance.new("Part")
hall2.TopSurface = "Smooth"
hall2.BottomSurface = "Smooth"
hall2.Anchored = true
hall2.BrickColor = BrickColor.new("Dark stone grey")
hall2.Parent = m
hall2.Size = Vector3.new(8, 2, 20)
hall2.CFrame = hall.CFrame + Vector3.new(-6, 0, -5.5)
hall2.Name = "hull5"
wall4 = hall2:Clone()
wall4.Name = "hull6"
wall4.Size = Vector3.new(2,10,20)
wall4.Parent = m
wall4.CFrame = hall2.CFrame + Vector3.new(-3, 5, 0)
wall5 = wall4:Clone()
wall5.Parent = m
wall5.Size = Vector3.new(2,10,13.495)
wall5.CFrame = hall2.CFrame + Vector3.new(3,5,-3.3)
wall5.Name = "hull7"
main = Instance.new("Part")
main.TopSurface = "Smooth"
main.BottomSurface = "Smooth"
main.Anchored = true
main.Size = Vector3.new(100,2,100)
main.BrickColor = BrickColor.new("Dark stone grey")
main.Parent = m
main.CFrame = hall2.CFrame + Vector3.new(0,0,-60)
main.Name = "hull8"
wall6 = Instance.new("Part")
wall6.TopSurface = "Smooth"
wall6.BottomSurface = "Smooth"
wall6.BrickColor = BrickColor.new("Dark stone grey")
wall6.Name = "hull9"
wall6.Parent = m
wall6.Size = Vector3.new(48,15,2)
wall6.Anchored = true
wall6.CFrame = hall2.CFrame + Vector3.new(26,8.5,-10)
end)()
wall7 = wall6:Clone()
wall7.Parent = m
wall7.CFrame = hall2.CFrame + Vector3.new(-26,8.5,-10)
wall8 = Instance.new("Part")
wall8.TopSurface = "Smooth"
wall8.BottomSurface = "Smooth"
wall8.Anchored = true
wall8.Size = Vector3.new(2,15,100)
wall8.BrickColor = BrickColor.new("Dark stone grey")
wall8.Parent = m
wall8.CFrame = main.CFrame + Vector3.new(50, 8.5, 0)
wall8.Name = "hull8"
wall9 = wall8:Clone()
wall9.Parent = m
wall9.CFrame = main.CFrame + Vector3.new(-50,8.5,0)
wall10 = wall9:Clone()
wall10.Parent = m
wall10.Size = Vector3.new(100,15,2)
wall10.CFrame = main.CFrame + Vector3.new(0,8.5,-50)
wall10.CanCollide = false 
wall10.BrickColor = BrickColor.new(107)
wall10.Transparency = 0.6
roof = main:Clone()
roof.Transparency = 0.3
roof.CanCollide = false
roof.BrickColor = BrickColor.White()
roof.Parent = m
roof.CFrame = main.CFrame + Vector3.new(0,15,0)
top = Instance.new("Part")
top.TopSurface = "Smooth"
top.BottomSurface = "Smooth"
top.BrickColor = BrickColor.new("Dark stone grey")
top.Anchored = true
top.Size = Vector3.new(8,5,2)
top.Parent = m
top.CFrame = hall2.CFrame + Vector3.new(0,13.25,-10)
door = top:Clone()
door.Parent = m
door.BrickColor = BrickColor.Black()
door.Size = Vector3.new(4,12,2)
door.CFrame = hall2.CFrame + Vector3.new(0,5,-10)
doc = Instance.new("ClickDetector", door)
doc.MouseClick:connect(function()
if door.CanCollide == true then
door.CanCollide = false
else door.CanCollide = true
end
if door.Transparency == 0 then
door.Transparency = 0.5
else
door.Transparency = 0
end
end)
-- There, nao put teh esc4p3 pawds in a mod3l
-- the models will still be parented to the ship
-- kk
