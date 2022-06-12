

pcall(function() 
game.Players.LocalPlayer.Backpack.IPod:Remove() 
end) 

pcall(function() 
game.Players.LocalPlayer.Character.IPod:Remove() 
end) 

t = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
t.Name = "iPod" 

h = Instance.new("Part", t)
h.Locked = true 
h.BrickColor = BrickColor.new("Really blue") 
h.Reflectance = 0.2
h.Name = "Handle"
hBM=Instance.new("BlockMesh",h)
hBM.Scale = Vector3.new(0.12,1,0.06)
hBM.Offset = Vector3.new(0,0,-0.035)

h2 = Instance.new("Part", t)
h2.Locked = true 
h2.Transparency = 0.6
h2.BrickColor = BrickColor.new("Toothpaste") 
h2.Reflectance = 0.1
h2.Name = "tint"
h2BM=Instance.new("BlockMesh",h2)
h2BM.Scale = Vector3.new(0.12,1,0.06)
h2BM.Offset = Vector3.new(0,0,-0.035)

h3 = Instance.new("Part", t)
h3.Locked = true 
h3.BrickColor = BrickColor.new("Really black") 
h3.Reflectance = 0.1
h3.Name = "ScreenBorder"
h3BM=Instance.new("BlockMesh",h3)
h3BM.Scale = Vector3.new(0.10,0.5,0.06)
h3BM.Offset = Vector3.new(0,0.26,-0.036)

h4 = Instance.new("Part", t)
h4.Locked = true 
h4.BrickColor = BrickColor.new("Black") 
h4.Name = "Screen"
h4BM=Instance.new("BlockMesh",h4)
h4BM.Scale = Vector3.new(0.08,0.45,0.06)
h4BM.Offset = Vector3.new(0,0.26,-0.037)

h5 = Instance.new("Part", t)
h5.Locked = true 
h5.BrickColor = BrickColor.new("White") 
h5.Transparency = 1 
h5.Name = "Screen"
h5BM=Instance.new("BlockMesh",h5)
h5BM.Scale = Vector3.new(0.08,0.45,0.06)
h5BM.Offset = Vector3.new(0,0.26,-0.038)

h6 = Instance.new("Part", t)
h6.Transparency = 1 
h6.Name = "1"

h7 = Instance.new("Part", t)
h7.Transparency = 1 
h7.Name = "0"

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h2 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h3 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h4 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

script.Parent = t 

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h5 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h6 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

local w = Instance.new("Weld") 
w.Part1 = h 
w.Part0 = h7 
local C1 = h.CFrame 
local C0 = h.CFrame - Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 

script.Parent = t

script.Parent.Activated:connect(function()
wait(0.05) 
if h6.Name == "1" then 
h5.Transparency = 1
for i=1,16 do 
wait(0.05)
h5.Transparency = h5.Transparency - 0.05
end 
h6.Name = "2" 
end 
end)

script.Parent.Activated:connect(function()
wait(0.05) 
if h6.Name == "2" then 
h5.Transparency = 0
for i=1,20 do 
wait(0.05)
h5.Transparency = h5.Transparency + 0.05
end 
h6.Name = "1" 
end 
end)

--lego 