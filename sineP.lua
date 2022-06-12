Player = game:GetService("Players"):FindFirstChild("DarkShadow6")
--for i, Player in ipairs(game:GetService("Players"):GetPlayers()) do
local sineP = Instance.new("Model")
sineP.Name = "sineP"
sineP.Parent = Player.Character
local pm = Instance.new("Part")
pm.Name = "sineP Body"
pm.FormFactor = "Custom"
pm.Size = Vector3.new(1, 1, 1)
pm.BrickColor = Player.Character.Torso.BrickColor
pm.Locked = true
pm.TopSurface = 0
pm.BottomSurface = 0
pm.Parent = sineP
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(0.75, 2, 0.75)
m.Parent = pm
local w = Instance.new("Weld")
w.Part0 = pm
w.Part1 = Player.Character:FindFirstChild("Torso")
w.C0 = CFrame.new(0, 0.5, 0.7) * CFrame.fromEulerAnglesXYZ(3.14 / 1.5, 3.14, 0)
w.C1 = CFrame.new()
w.Parent = pm
local p = Instance.new("Part")
p.Name = "sineP Tip 1"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.BrickColor = BrickColor.new(100)
p.Locked = true
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = sineP
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(0.8, 0.5, 0.8)
m.Parent = p
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm
w.C0 = CFrame.new(0, 1.25, 0)
w.C1 = CFrame.new()
w.Parent = p
local pm2 = Instance.new("Part")
pm2.Name = "sineP Tip 2"
pm2.FormFactor = "Custom"
pm2.Size = Vector3.new(1, 1, 1)
pm2.BrickColor = BrickColor.new(100)
pm2.Locked = true
pm2.TopSurface = 0
pm2.BottomSurface = 0
pm2.Parent = sineP
local m = Instance.new("SpecialMesh")
m.Scale = Vector3.new(0.8, 0.4, 0.8)
m.Parent = pm2
local w = Instance.new("Weld")
w.Part0 = pm2
w.Part1 = pm
w.C0 = CFrame.new(0, 1.5, 0)
w.C1 = CFrame.new()
w.Parent = pm2
local p = Instance.new("Part")
p.Name = "sineP Tip 3"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 1, 1)
p.Locked = true
p.Transparency = 1
p.Parent = sineP
local w = Instance.new("Weld")
w.Part0 = p
w.Part1 = pm2
w.C0 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
w.C1 = CFrame.new()
w.Parent = p
coroutine.resume(coroutine.create(function(part)
	while true do
		if part.Parent == nil then break end
		if part.Parent.Parent == nil then break end
		local p2 = Instance.new("Part")
		p2.Name = "Come"
		p2.TopSurface = 0
		p2.BottomSurface = 0
		p2.FormFactor = "Custom"
		p2.Shape = "Ball"
		p2.Size = Vector3.new(1, 1, 1)
		p2.CFrame = CFrame.new(part.Position)
		p2.Velocity = (part.CFrame.lookVector * 25) + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
		p2.CanCollide = false
		p2.BrickColor = BrickColor.new("Institutional white")
		p2.Parent = Workspace
		wait(math.random(1, 50) / 100)
	end
end), p)
--end