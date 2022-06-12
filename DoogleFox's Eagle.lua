if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Eagle" 
bin.Parent = game.Players.yfc.Backpack 
script.Parent = bin 
end 

bin = script.Parent 
bv = Instance.new("BodyVelocity") 
bv.Name = "BV" 
bg = Instance.new("BodyGyro") 
bg.Name = "BG" 
morphed = false 
morphing = false 

---- Eagle MeshID 		http://www.roblox.com/asset/?id=51226819
---- Eagle TextureID 	http://www.roblox.com/asset/?id=51226825

function EagleMorph() 
morphing = true 
player = bin.Parent.Parent.Character 
p = Instance.new("Part") 
p.Name = "Eagle" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.Position = player.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Locked = true 
p.CanCollide = false 
p.Anchored = false 
pm = Instance.new("SpecialMesh") 
pm.Name = "EagleMesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=51226819" 
pm.TextureId = "http://www.roblox.com/asset/?id=51226825" 
pm.Scale = Vector3.new(8,8,8) 
pm.Parent = p 
p.Parent = player 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = player.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.pi/3,0,0) 
bv.velocity = Vector3.new(0,0,0) 
bv.Parent = p 
bg.cframe = player.Torso.CFrame * CFrame.Angles(math.pi/2,0,0) 
bg.Parent = p 
for i, v in pairs(player:children()) do 
if v.className == "Part" and v.Name ~= "Eagle" then 
v.Transparency = 1 
end 
if v.className == "Hat" then 
if v:findFirstChild("Handle") ~= nil then 
v.Handle.Transparency = 1 
end 
end 
end 
morphing = false 
end 

function NormalMorph() 
morphing = true 
player = bin.Parent.Parent.Character 
for i, v in pairs(player:children()) do 
if v.className == "Part" then 
v.Transparency = 0 
end 
if v.Name == "Eagle" and v.className == "Part" then 
v:remove() 
end 
end 
morphing = false 
end 

down = false 
function onButton1Down(mouse) 
down = true 
player = bin.Parent.Parent.Character 
while down == true do 
if morphed == true then 
bv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * 50 
bg.cframe = CFrame.new(player.Torso.Position, mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0) 
end 
wait() 
end 
end 

function onButton1Up(mouse) 
down = false 
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "r" then 

bin.Name = "Deselect = Remove" 
bin.Deselected:connect(function() wait() bin:remove() end) 
elseif key == "e" then 
if morphed == false then 
coroutine.resume(coroutine.create(EagleMorph)) 
elseif morphed == true then 
coroutine.resume(coroutine.create(NormalMorph)) 
end 

end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end)