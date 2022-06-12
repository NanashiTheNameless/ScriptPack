Player = game:GetService("Players").DarkShadow6
script.Parent = Player.Character
pcall(function() script.Parent["Left Arm"]:Remove() end)
pcall(function() script.Parent["Left Leg"]:Remove() end)
pcall(function() script.Parent["Right Arm"]:Remove() end)
pcall(function() script.Parent["Right Leg"]:Remove() end)
pcall(function() script.Parent.Head.face:Remove() end)
script.Parent.Head.Transparency = 1
script.Parent.Torso.Transparency = 1
script.Parent.Torso.Size = Vector3.new(1, 1, 1)
script.Parent.Head.Size = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld", script.Parent.Torso)
Weld.Name = "Neck"
Weld.Part0 = Weld.Parent
Weld.Part1 = script.Parent.Head
Weld.C0 = CFrame.new(0, 1.5, 0)
Weld.C1 = CFrame.new(0, 0.5, 0)
for _, Part in pairs(script.Parent:GetChildren()) do
	if Part:IsA("Accoutrement") then
		Part:Remove()
	end
end
Gui = Instance.new("BillboardGui", script.Parent)
Gui.Name = "Character"
Gui.Adornee = script.Parent.Head
Gui.Size = UDim2.new(0, 75, 0, 100)
Label = Instance.new("TextLabel", Gui)
Label.Name = "Character"
Label.Text = Player.Name
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Position = UDim2.new(0, 0, 0, 0)
coroutine.wrap(function()
	Workspace.CurrentCamera.CameraType = "Track"
	while true do
		if script.Parent:FindFirstChild("Head") == nil then break end
		Workspace.CurrentCamera.CoordinateFrame = CFrame.new(script.Parent.Head.Position) * CFrame.new(0, 6, 5)
		Workspace.CurrentCamera.Focus = script.Parent.Head.CFrame
		wait()
	end
end)()