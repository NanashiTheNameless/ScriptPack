Character = Workspace.DarkShadow6
Model = Instance.new("Model", Workspace)
Model.Name = Character.Name
Head = Character.Head:Clone()
Head.Position = Character.Head.Position + Vector3.new(0, 2, 0)
Head.Parent = Model
Character.Head.Transparency = 1
Character.Head.CanCollide = false
Character.Head.face:Remove()
Torso = Instance.new("Part", Model)
Torso.Name = "Torso"
Torso.TopSurface = 0
Torso.BottomSurface = 0
Torso.CanCollide = false
Torso.Transparency = 1
Torso.FormFactor = "Custom"
Torso.Size = Vector3.new(0, 0, 0)
local Neck = Instance.new("Weld", Torso)
Neck.Name = "Neck"
Neck.Part0 = Neck.Parent
Neck.Part1 = Head
Humanoid = Instance.new("Humanoid", Model)
Humanoid.PlatformStand = true
Humanoid.Changed:connect(function(Object)
	if Object == "Health" then
		if Character.Humanoid.Health ~= Humanoid.Health then
			pcall(function()
				Character.Humanoid.Health = Humanoid.Health
			end)
		end
	end
end)
Character.Humanoid.Changed:connect(function(Object)
	if Object == "Health" then
		if Humanoid.Health ~= Character.Humanoid.Health then
			pcall(function()
				Humanoid.Health = Character.Humanoid.Health
			end)
		end
	end
end)
coroutine.wrap(function()
	while true do
		if Model.Parent == nil then break end
		if Humanoid.Health == 0 then wait(5) break end
		if Character.Parent == nil then break end
		if Character:FindFirstChild("Humanoid") == nil then break end
		if Character.Humanoid.Health == 0 then wait(5) break end
		for _, Child in pairs(Character:GetChildren()) do
			if Child:IsA("Accoutrement") then
				Child.Parent = Model
			end
		end
		wait()
	end
	pcall(function() Model:Remove() end)
end)()