me = Game.Players.acb227
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "build" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 
char = me.Character 
bin = script.Parent 

local swo = Instance.new("Model") 
swo.Parent = workspace.acb227 
swo.Name = "Sword" 

hand = Instance.new("Part") 
hand.Size = Vector3.new(1, 1, 1) 
hand.BrickColor = BrickColor.new("Really black") 
hand.Parent = swo 
hand:BreakJoints() 
handm = Instance.new("CylinderMesh") 
handm.Parent = hand 
handm.Scale = Vector3.new(0.25, 1, 0.25) 
handw = Instance.new("Weld") 
handw.Parent = swo 
handw.Part0 = hand 
handw.Part1 = char["Right Leg"] 
handw.C1 = CFrame.new(0.85, 0, 0) * CFrame.Angles(0.75, 0, 0) 
--
hand2 = Instance.new("Part") 
hand2.Size = Vector3.new(1, 1, 1) 
hand2.BrickColor = BrickColor.new("Bright blue") 
hand2.Parent = swo 
hand2.Reflectance = 0.2 
hand2:BreakJoints() 
hand2m = Instance.new("CylinderMesh") 
hand2m.Parent = hand2 
hand2m.Scale = Vector3.new(0.2, 1, 0.2) 
hand2w = Instance.new("Weld") 
hand2w.Parent = swo 
hand2w.Part0 = hand2 
hand2w.Part1 = hand 
hand2w.C1 = CFrame.new(0, 0.25, 0) * CFrame.Angles(0, 0, 0) 

function onButton1Down(mouse) 
part = Instance.new("Part") 
part.Parent = workspace 
part.Anchored = true 
part.Shape = "Ball" 
part.Size = Vector3.new(1, 1, 1) 
part.CanCollide = false 
part.BrickColor = BrickColor.new("Really red") 
part.Transparency = 0.75 
part.CFrame = hand2.CFrame 
mes = Instance.new("SpecialMesh") 
mes.Parent = part 
mes.MeshType = "Sphere" 
mes.Scale = Vector3.new(1, 0.75, 1)
for i = 1, 5 do 
part.Size = part.Size + Vector3.new(1, 1, 1) 
part.CFrame = hand2.CFrame 
wait(0.1) 
end 
wait(0.5) 
for i = 1, 5 do 
part.Size = part.Size + Vector3.new(1, 1, 1) 
part.CFrame = hand2.CFrame 
wait(0.1) 
part.Size = part.Size - Vector3.new(0.5, 0.5, 0.5) 
end 
wait(0.5) 
part:remove() 
end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "q" then 
part = Instance.new("Part") 
part.Parent = workspace 
part.Anchored = true 
part.Shape = "Ball" 
part.Size = Vector3.new(1, 1, 1) 
part.CanCollide = false 
part.BrickColor = BrickColor.new("Really red") 
part.Transparency = 0.75 
part.CFrame = hand2.CFrame 
mes = Instance.new("SpecialMesh") 
mes.Parent = part 
mes.MeshType = "Sphere" 
mes.Scale = Vector3.new(1, 0.75, 1)
part2 = Instance.new("Part") 
part2.Parent = workspace 
part2.Anchored = true 
part2.Shape = "Ball" 
part2.Size = Vector3.new(1, 1, 1) 
part2.CanCollide = false 
part2.BrickColor = BrickColor.new("Ney Yeller") 
part2.Transparency = 0.75 
part2.CFrame = hand2.CFrame 
mes2 = Instance.new("SpecialMesh") 
mes2.Parent = part2 
mes2.MeshType = "Sphere" 
mes2.Scale = Vector3.new(1, 0.75, 1)
for i = 1, 5 do 
part.Size = part.Size + Vector3.new(1, 1, 1) 
part.Transparency = part.Transparency - 0.05 
part.CFrame = hand2.CFrame 
part2.Size = part2.Size + Vector3.new(1, 1, 1) 
part2.Transparency = part2.Transparency - 0.05 
part2.CFrame = hand2.CFrame 
wait(0.1) 
end 
wait(0.5) 
for i = 1, 5 do 
part.Size = part.Size + Vector3.new(1, 1, 1) 
part.Transparency = part.Transparency - 0.05 
part.CFrame = hand2.CFrame 
part2.Size = part2.Size + Vector3.new(1, 1, 1) 
part2.Transparency = part2.Transparency - 0.05 
part2.CFrame = hand2.CFrame 
wait(0.1) 
part.Size = part.Size - Vector3.new(0.5, 0.5, 0.5) 
part.CFrame = hand2.CFrame 
part2.Size = part2.Size - Vector3.new(0.5, 0.5, 0.5) 
part2.CFrame = hand2.CFrame 
end 
wait(0.5) 
part:remove() 
part2:remove() 
end 
--
end 
end 

bin.Selected:connect(function(mouse) 

handw.Part1 = char["Right Arm"] 
handw.C1 = CFrame.new(0, -0.5, -1) * CFrame.Angles(-1.57, 0, 0) 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  

bin.Deselected:connect(function() 
handw.Part1 = char["Right Leg"] 
handw.C1 = CFrame.new(0.85, 0, 0) * CFrame.Angles(0.75, 0, 0) 
end)  