local plyr = game:GetService("Players") 
local plyr2 = plyr.acb227 
local char = plyr2.Character 

pcall(function() char.Handleasd:remove() end) 
local h = Instance.new("Part") 
h.Name = "Handleasd"
h.Parent = char 
h.Size = Vector3.new(2, 0.4, 2) 
h.formFactor = "Plate" 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
local w = Instance.new("Weld") 
w.Parent = h 
w.Part0 = h 
w.Part1 = char.Head 
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) - Vector3.new(0, 0.5, 0) 
local a = Instance.new("Part") 
a.Name = "Needle"
a.Parent = h 
a.Size = Vector3.new(1, 0.4, 2) 
a.formFactor = "Plate" 
a.TopSurface = "Smooth" 
a.Anchored = true 
a.CanCollide = false 
a.BottomSurface = "Smooth" 
a.BrickColor = BrickColor.new("Really black")
m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(0.3, 1, 1)

local pos1 = Vector3.new(0, 0, 0) 
local pos = h.Position + Vector3.new(0, 0.25, 0) 
while wait() do 
a.CFrame = CFrame.new((pos1 + pos), pos1) 
pos = h.Position + Vector3.new(0, 0.25, 0) 
end 