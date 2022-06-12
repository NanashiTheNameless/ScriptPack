	for i,v in pairs(game.Players:GetChildren()) do
	
		if v ~= game.Players.LocalPlayer.Character.Torso then	

	 base = Instance.new("BillboardGui", workspace.Camera)
	local esP = Instance.new("Frame", base)
	-- Billboard Stuff
	base.AlwaysOnTop = true
	base.Enabled = true
	base.Size = UDim2.new(4.5,0,6,0)
	base.Name = "ESP"
	base.Adornee = v.Character.Torso
	base.StudsOffset = Vector3.new(0, -0.6, 0)
	-- Frame Stuff
	esP.BackgroundColor3 = Color3.new(255,255,255)
	esP.BackgroundTransparency = 0.8
	esP.BorderColor3 = Color3.new(0,0,0)
	esP.BorderSizePixel = 1
	esP.Size = UDim2.new(1,0,1,0)
	esP.Style = "DropShadow"
end		
	end

	for i,v in pairs(game.Players:GetChildren()) do
	while true do
		wait(2)
		base.Adornee = v.Character.Torso
	end
	end
print("ESP Loaded!")
print("Created by Kid Atlaas/FileExplorer")