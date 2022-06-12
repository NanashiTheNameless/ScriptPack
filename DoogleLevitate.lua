if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Levitate" 
bin.Parent = game.Players.LocalPlayer.Backpack 
script.Parent = bin 
end 

bin = script.Parent 
local partz 

local bawl = Instance.new("Part") 
bawl.formFactor = "Custom" 
bawl.Size = Vector3.new(0.5,0.5,0.5) 
bawl.BrickColor = BrickColor.new("White") 
bawl.Transparency = 0.65 
bawl.CanCollide = false 
bawl.Anchored = false 
bawl.Locked = true 
local bawlm = Instance.new("SpecialMesh") 
bawlm.Name = "Mesh" 
bawlm.MeshType = "Sphere" 
bawlm.Scale = Vector3.new(8,8,8) 
bawlm.Parent = bawl 
local w = Instance.new("Weld") 
w.Parent = bawl 
w.Name = "Weld" 
bawl2 = bawl:Clone() 

local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.Parent = bawl 

dist = 10 
dwn = false 
function onButton1Down(mouse) 
if mouse.Target ~= nil then 
if mouse.Target.Anchored == false then 
bawl2:remove() 
bawl:remove() 
bp:remove() 

bawl = Instance.new("Part") 
bawl.formFactor = "Custom" 
bawl.Size = Vector3.new(0.5,0.5,0.5) 
bawl.BrickColor = BrickColor.new("Really black") 
bawl.Transparency = 0.65 
bawl.CanCollide = false 
bawl.Anchored = false 
bawl.Locked = true 
bawlm = Instance.new("SpecialMesh") 
bawlm.Name = "Mesh" 
bawlm.MeshType = "Sphere" 
bawlm.Scale = Vector3.new(8,8,8) 
bawlm.Parent = bawl 
w = Instance.new("Weld") 
w.Parent = bawl 
w.Name = "Weld" 
bawl2 = bawl:Clone() 
bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.Parent = bawl 

partz = mouse.Target 
bawl.Parent = bin.Parent.Parent.Character 
bawl2.Parent = bawl 
bawlm.Scale = Vector3.new((partz.Size.x*4.5),(partz.Size.y*4.5),
(partz.Size.z*4.5))
w.Part0 = partz 
w.Part1 = bawl 
bawl2.Mesh.Scale = bawlm.Scale + Vector3.new(1.4,1.4,1.4) 
bawl2.Weld.Part0 = bawl 
bawl2.Weld.Part1 = bawl2 

dwn = true 
while dwn == true do 
bp.Parent = bawl 
bp.position = bin.Parent.Parent.Character.Torso.Position + 
(mouse.Hit.lookVector*dist) 
wait() 
end 
end 
end 
end 

function onButton1Up(mouse) 
bawl.Parent = nil 
bawl2.Parent = nil 
dwn = false 
end 

dwn2 = false 
dwn3 = false 
function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "r" then 
bin.Name = "Deselect = Remove" 
bin.Deselected:connect(function() wait() bin:remove() end) 
elseif key == "e" then 
p = Instance.new("Part", workspace) 
p.Name = "LeviPart" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(3,3,3) 
p.Position = mouse.Hit.p + Vector3.new(0,1.5,0) 
p.BrickColor = BrickColor.new("Black") 
elseif key == "f" then 
if partz ~= nil then 
for i, v in pairs(partz.Parent:children()) do 
if v.className == "Humanoid" then 
v.PlatformStand = true 
end 
end 
end 
elseif key == "g" then 
if partz ~= nil then 
for i, v in pairs(partz.Parent:children()) do 
if v.className == "Humanoid" then 
v.PlatformStand = false 
end 
end 
end 
elseif key == "x" then 
dwn2 = true 
while dwn2 == true do 
if dist > 2 then 
dist = dist - 0.4 
end 
wait() 
end 
elseif key == "c" then 
dwn3 = true 
while dwn3 == true do 
dist = dist + 0.4 
wait() 
end 
elseif key == "z" then 
dist = 10 
end 
end 
end 

function onKeyUp(key, mouse) 
if key == "x" then 
dwn2 = false 
elseif key == "c" then 
dwn3 = false 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.KeyUp:connect(function(key) onKeyUp(key, mouse) end) 
end) 
--[mediafire gtfo password]]--
