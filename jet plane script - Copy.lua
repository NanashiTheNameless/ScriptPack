Workspace = Game:GetService("Workspace") 
Players = Game:GetService("Players") 
Debris = Game:GetService("Debris") 
Player = Players.LocalPlayer 
Character = Player.Character 
Speed = 100 
PrivateSeat = true 
Hold = false 
SeatColor = BrickColor.new("Bright red") 
SmokeColor = BrickColor.new("Dark stone grey") 
LightningColor = BrickColor.new("Royal purple") 
local Plane 
function ChildAdded(child, seat) 
if (child.className == "Weld" and child.Name == "SeatWeld") then 
if (child.Part0 == seat and child.Part1.Name == "Torso") then 
if (child.Part1.Parent.Name ~= Player.Name) then 
if (PrivateSeat) then 
child.Parent = nil 
end 
end 
end 
end 
end 
function WeldChanged(weld, part0, part1, c0, c1) 
weld.Parent = part0 
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0 
weld.C1 = c1 
end 
function Lightning(part) 
local pos1, pos2 
if (part and part:IsA("BasePart")) then 
while (part.Parent ~= nil) do 
pos2 = pos1 or part.Position 
pos1 = part.Position + Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2, 2)) 
if (pos2 ~= nil) then 
local zap = Instance.new("Part", Workspace) 
zap.Anchored = true 
zap.Locked = true 
zap.CanCollide = false 
zap.TopSurface = 0 
zap.BottomSurface = 0 
zap.formFactor = 0 
zap.Size = Vector3.new(0, 0, 0) 
zap.BrickColor = LightningColor 
zap.Transparency = 0.1 
zap.Reflectance = 0.4 
zap.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local scale = Instance.new("BlockMesh", zap) 
scale.Scale = Vector3.new(0.1, 0.1, (pos1-pos2).magnitude) 
local fade = coroutine.create(function() 
for index = 0.3, 1, 0.1 do 
zap.Transparency = index 
wait() 
end 
zap:Remove() 
end) 
coroutine.resume(fade) 
end 
wait() 
end 
end 
end 
function Weld(part0, part1, c0, c1, unremoveable) 
if (c0 == nil) then c0 = CFrame.new(0, 0, 0) end 
if (c1 == nil) then c1 = CFrame.new(0, 0, 0) end 
if (part0 and part1) then 
local weld = Instance.new("Weld", part0) 
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0 
weld.C1 = c1 
if (unremoveable) then 
weld.Changed:connect(function() WeldChanged(weld, part0, part1, c0, c1) end) 
end 
return weld 
end 
end 
if (script.Parent.className ~= "HopperBin") then 
local hop = Instance.new("HopperBin", Player.Backpack) 
hop.Name = "Plane" 
script.Parent = hop 
Plane = script.Parent 
end 
function onButton1Down(mouse, Seat, bodyGyro, bodyVelocity) 
Hold = true 
while true do 
wait() 
if (Hold == false) then break end 
bodyGyro.cframe = CFrame.new((Seat.Position + mouse.Hit.p) / 2, mouse.Hit.p) 
bodyVelocity.velocity = Seat.CFrame.lookVector * Speed 
end 
end 
function onButton1Up(mouse, Seat, bodyGyro, bodyVelocity) 
Hold = false 
bodyVelocity.velocity = Vector3.new(0, Seat:GetMass()/10, 0) 
end 
function onKeyDown(mouse, key) 
---[[ 
end 
function onKeyUp(mouse, key) 
---[[ 
end 
function onSelected(mouse) 
if (not Character:findFirstChild("TNSplane")) then 
local TheNewScripter = Instance.new("Model", Character) 
TheNewScripter.Name = "TNSplane" 
local Seat = Instance.new("Seat", TheNewScripter) 
Seat.Locked = true
Seat.TopSurface = 0 
Seat.BottomSurface = 0 
Seat.formFactor = 2 
Seat.Position = Character.Head.Position 
Seat.BrickColor = SeatColor 
Seat.Size = Vector3.new(2, 0.4, 2) 
local msh = Instance.new("BlockMesh") 
msh.Parent = Seat 
Seat.ChildAdded:connect(function(child) ChildAdded(child, Seat) end) 
local plat = Instance.new("Part", TheNewScripter) 
plat.Locked = true
plat.TopSurface = 0 -- Smooth 
plat.BottomSurface = 0 -- Smooth 
plat.formFactor = 0 
plat.Position = Character.Head.Position 
plat.BrickColor = BrickColor.new("Really black") 
plat.Size = Vector3.new(3, 1, 5) 
Weld(Seat, plat, CFrame.new(0, -0.5, 0), nil, false) 
local plat1 = Instance.new("Part", TheNewScripter) 
plat1.Locked = true
plat1.TopSurface = 0 -- Smooth 
plat1.BottomSurface = 0 -- Smooth 
plat1.formFactor = 0 
plat1.Position = Character.Head.Position 
plat1.BrickColor = BrickColor.new("Really black") 
plat1.Size = Vector3.new(1, 3, 5) 
local msh1 = msh:Clone() 
msh1.Parent = plat1 
Weld(Seat, plat1, CFrame.new(1.5, 0.5, 0), nil, false) 
local plat2 = Instance.new("Part", TheNewScripter) 
plat2.Locked = true
plat2.TopSurface = 0 -- Smooth 
plat2.BottomSurface = 0 -- Smooth 
plat2.formFactor = 0 
plat2.Position = Character.Head.Position 
plat2.BrickColor = BrickColor.new("Really black") 
plat2.Size = Vector3.new(1, 3, 5) 
local msh2 = msh:Clone() 
msh2.Parent = plat2 
Weld(Seat, plat2, CFrame.new(-1.5, 0.5, 0), nil, false) 
local plat3 = Instance.new("Part", TheNewScripter) 
plat3.Locked = true
plat3.TopSurface = 0 -- Smooth 
plat3.BottomSurface = 0 -- Smooth 
plat3.formFactor = 0 
plat3.Position = Character.Head.Position 
plat3.BrickColor = BrickColor.new("Really black") 
plat3.Size = Vector3.new(4, 3, 6) 
local msh3 = msh:Clone() 
msh3.Parent = plat3 
Weld(Seat, plat3, CFrame.new(0, 0.5, 4.5), nil, false) 
local plat4 = Instance.new("Part", TheNewScripter) 
plat4.Locked = true
plat4.TopSurface = 0 -- Smooth 
plat4.BottomSurface = 0 -- Smooth 
plat4.formFactor = 0 
plat4.Position = Character.Head.Position 
plat4.BrickColor = BrickColor.new("Really black") 
plat4.Size = Vector3.new(3, 3, 1) 
local msh4 = msh:Clone() 
msh4.Parent = plat4 
Weld(Seat, plat4, CFrame.new(0, 0.5, -2), nil, false) 
local plat5 = Instance.new("Part", TheNewScripter) 
plat5.Locked = true
plat5.TopSurface = 0 -- Smooth 
plat5.BottomSurface = 0 -- Smooth 
plat5.formFactor = 0 
plat5.Position = Character.Head.Position 
plat5.BrickColor = BrickColor.new("Really black") 
plat5.Size = Vector3.new(2, 1, 6) 
local msh3 = msh:Clone() 
msh3.Parent = plat5 
Weld(Seat, plat5, CFrame.new(0, 0.5, 10), nil, false) 
local weg = Instance.new("WedgePart", TheNewScripter) 
weg.Locked = true
weg.TopSurface = 0 -- Smooth 
weg.BottomSurface = 0 -- Smooth 
weg.formFactor = 3 
weg.Position = Character.Head.Position 
weg.BrickColor = BrickColor.new("Really black") 
weg.Size = Vector3.new(4, 1.5, 5) 
Weld(Seat, weg, CFrame.new(0, 1.25, -5), nil, false) 
local weg2 = Instance.new("WedgePart", TheNewScripter) 
weg2.Locked = true
weg2.TopSurface = 0 -- Smooth 
weg2.BottomSurface = 0 -- Smooth 
weg2.formFactor = 3 
weg2.Position = Character.Head.Position 
weg2.BrickColor = BrickColor.new("Really black") 
weg2.Size = Vector3.new(4, 2, 6) 
Weld(Seat, weg2, CFrame.new(0, 3, 4.5)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(0)), nil, false) 
local weg3 = Instance.new("WedgePart", TheNewScripter) 
weg3.Locked = true
weg3.TopSurface = 0 -- Smooth 
weg3.BottomSurface = 0 -- Smooth 
weg3.formFactor = 3 
weg3.Position = Character.Head.Position 
weg3.BrickColor = BrickColor.new("Really black") 
weg3.CanCollide = false 
weg3.Size = Vector3.new(1, 3, 6) 
Weld(Seat, weg3, CFrame.new(1.5, 2.5, -1.5), nil, false) 
local weg4 = Instance.new("WedgePart", TheNewScripter) 
weg4.Locked = true
weg4.TopSurface = 0 -- Smooth 
weg4.BottomSurface = 0 -- Smooth 
weg4.formFactor = 3 
weg4.Position = Character.Head.Position 
weg4.BrickColor = BrickColor.new("Really black") 
weg4.CanCollide = false 
weg4.Size = Vector3.new(1, 3, 6) 
Weld(Seat, weg4, CFrame.new(-1.5, 2.5, -1.5), nil, false) 
local gls = Instance.new("Part", TheNewScripter) 
gls.Locked = true
gls.TopSurface = 0 -- Smooth 
gls.BottomSurface = 0 -- Smooth 
gls.formFactor = 0 
gls.Position = Character.Head.Position 
gls.BrickColor = BrickColor.new("Mid gray") 
gls.Transparency = 0.5 
gls.CanCollide = false 
gls.Size = Vector3.new(4, 5, 5) 
local glm = Instance.new("SpecialMesh") 
glm.MeshType = "Sphere" 
glm.Parent = gls 
Weld(Seat, gls, CFrame.new(0, 2.25, 0), nil, false) 
local weg1 = Instance.new("WedgePart", TheNewScripter) 
weg1.Locked = true
weg1.TopSurface = 0 -- Smooth 
weg1.BottomSurface = 0 -- Smooth 
weg1.formFactor = 3 
weg1.Position = Character.Head.Position 
weg1.BrickColor = BrickColor.new("Really black") 
weg1.Size = Vector3.new(4, 1.5, 5) 
Weld(Seat, weg1, CFrame.new(0, -0.25, -5)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(0)), nil, false) 
local wing = Instance.new("WedgePart", TheNewScripter) 
wing.Locked = true
wing.TopSurface = 0 -- Smooth 
wing.BottomSurface = 0 -- Smooth 
wing.formFactor = 0 
wing.Position = Character.Head.Position 
wing.BrickColor = BrickColor.new("Really black") 
wing.Size = Vector3.new(3, 1, 6) 
Weld(Seat, wing, CFrame.new(-5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), nil, false) 
local wing1 = Instance.new("WedgePart", TheNewScripter)
wing1.Locked = true 
wing1.TopSurface = 0 -- Smooth 
wing1.BottomSurface = 0 -- Smooth 
wing1.formFactor = 0 
wing1.Position = Character.Head.Position 
wing1.BrickColor = BrickColor.new("Really black") 
wing1.Size = Vector3.new(3, 1, 6) 
Weld(Seat, wing1, CFrame.new(5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)), nil, false) 
local wing2 = Instance.new("WedgePart", TheNewScripter) 
wing2.Locked = true
wing2.TopSurface = 0 -- Smooth 
wing2.BottomSurface = 0 -- Smooth 
wing2.formFactor = 0 
wing2.Position = Character.Head.Position 
wing2.BrickColor = BrickColor.new("Really black") 
wing2.Size = Vector3.new(2, 1, 3) 
Weld(Seat, wing2, CFrame.new(-2.5, 0.5, 12)*CFrame.Angles(math.rad(180),math.rad(90),math.rad(0)), nil, false) 
local wing3 = Instance.new("WedgePart", TheNewScripter) 
wing3.Locked = true
wing3.TopSurface = 0 -- Smooth 
wing3.BottomSurface = 0 -- Smooth 
wing3.formFactor = 0 
wing3.Position = Character.Head.Position 
wing3.BrickColor = BrickColor.new("Really black") 
wing3.Size = Vector3.new(2, 1, 3) 
Weld(Seat, wing3, CFrame.new(2.5, 0.5, 12)*CFrame.Angles(math.rad(180),math.rad(-90),math.rad(0)), nil, false) 
coroutine.resume(coroutine.create(function() 
Lightning(Seat) 
end)) 
local weld = Weld(Seat, plat, CFrame.new(0, -0.5, 0), nil, true) 
local bodyGyro = Instance.new("BodyGyro", Seat) 
bodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bodyGyro.cframe = Seat.CFrame 
local bodyVelocity = Instance.new("BodyVelocity", Seat) 
bodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
bodyVelocity.velocity = Vector3.new(0, 0, 0) 
mouse.Button1Down:connect(function() onButton1Down(mouse, Seat, bodyGyro, bodyVelocity) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse, Seat, bodyGyro, bodyVelocity) end) 
mouse.KeyDown:connect(function(key) onKeyDown(mouse, key) end) 
mouse.KeyUp:connect(function(key) onKeyUp(mouse, key) end) 
end 
end 
function onDeselected() 
pcall(function() 
for i=1,3 do 
Character.TNSplane:Remove() 
end 
end) 
end 
Plane.Selected:connect(onSelected) 
Plane.Deselected:connect(onDeselected) 
