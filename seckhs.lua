--lego
pcall(function() script.Parent = nil end)
a = "j1p"
b = "illblade10"
c = -1
while true do
	pcall(function()
		w1 = Instance.new("Weld", Workspace[a].Torso)
		w1.Part0 = w1.Parent
		w1.Part1 = Workspace[b].Torso
		p = Instance.new("Part", Workspace[a])
		p.TopSurface = 0
		p.BottomSurface = 0
		p.BrickColor = Workspace[a].Torso.BrickColor
		p.FormFactor = "Custom"
		p.Size = Vector3.new(0.8, 1.5, 0.8)
		Instance.new("CylinderMesh", p)
		w2 = Instance.new("Weld", Workspace[a].Torso)
		w2.Part0 = w2.Parent
		w2.Part1 = p
		w2.C0 = CFrame.new(0, -1, -1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	end)
	if w1 ~= nil and p ~= nil and w2 ~= nil then
		while w1.Parent ~= nil and w1.Part0 ~= nil and w1.Part1 ~= nil and p.Parent ~= nil and w2.Parent ~= nil and w2.Part0 ~= nil and w2.Part1 ~= nil do
			pcall(function() w1.C0 = CFrame.new(0, -1, (3 * c) + (math.sin((tick() * 10) % math.pi) * 1.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0) end)
			pcall(function() w1.Part1.Parent.Humanoid.PlatformStand = true end)
			pcall(function() w1.Part1.Parent.Animate:Remove() end)
			pcall(function() w1.Part1["Left Hip"].DesiredAngle = math.rad(-90) end)
			pcall(function() w1.Part1["Right Hip"].DesiredAngle = math.rad(90) end)
			pcall(function() w1.Part1["Left Shoulder"].DesiredAngle = math.rad(-90) end)
			pcall(function() w1.Part1["Right Shoulder"].DesiredAngle = math.rad(90) end)
			pcall(function() w1.Part1.Parent.Shirt:Remove() end)
			pcall(function() w1.Part1.Parent.Pants:Remove() end)
			pcall(function() w1.Part0.Parent.Pants:Remove() end)
			wait()
		end
	end
	pcall(function() w1:Remove() end)
	pcall(function() w2:Remove() end)
	pcall(function() p:Remove() end)
	wait()
end