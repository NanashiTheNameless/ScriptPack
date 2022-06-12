TeleportPlayer = game:GetService("Players"):FindFirstChild("yfc")

if script.Parent.className ~= "Tool" then
	if TeleportPlayer == nil then print("Error: Player not found!") return end
	Tool = Instance.new("Tool", TeleportPlayer.Backpack)
	Tool.Name = "Vortex Manipulator"
	Tool.GripPos = Vector3.new(0, -0.3, -0.4)
	Tool.GripRight = Vector3.new(-1, 0, 0)
	Tool.TextureId = "http://www.Roblox.com/Asset/?id=23806116"
	local Handle = Instance.new("Part", Tool)
	Handle.Name = "Handle"
	Handle.TopSurface = 0
	Handle.BottomSurface = 0
	Handle.formFactor = "Custom"
	Handle.Size = Vector3.new(1.25, 1.25, 1.25)
	Handle.BrickColor = BrickColor.new("Really black")
	local Mesh = Instance.new("SpecialMesh", Handle)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.Roblox.com/Asset/?id=14655367"
	Mesh.TextureId = "http://www.Roblox.com/Asset/?id=23808694"
	Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	local OpenSound = Instance.new("Sound", Handle)
	OpenSound.Name = "OpenSound"
	OpenSound.SoundId = "http://www.Roblox.com/Asset/?id=14863866"
	OpenSound.Volume = 1
	OpenSound.Looped = false
	local TickSound = OpenSound:Clone()
	TickSound.Parent = Handle
	TickSound.Name = "TickSound"
	TickSound.Volume = 0.5
	TickSound.Pitch = 0.75
	TickSound.Looped = true
	script.Name = "Main"
	script:Clone().Parent = Tool
	script:Remove()
else

-- Variable initialization.

TeleportReady = true
TeleportWaypoints = {
	"Center", Vector3.new(0, 0, 20),
	"Edge of Base (1000x1000)", Vector3.new(494, 0, 494)
}
TeleportCharacters = {}
TeleportOthers = false


function Teleport(Position)
	if TeleportReady == false then
		return
	end
	TeleportReady = false
	table.insert(TeleportCharacters, TeleportPlayer.Character)
	if TeleportOthers == true then
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			if PlayerList.Character ~= nil and PlayerList ~= TeleportPlayer then
				if PlayerList.Character:FindFirstChild("Torso") ~= nil then
					if (PlayerList.Character.Torso.CFrame.p - TeleportPlayer.Character.Torso.CFrame.p).magnitude < 5 then
						table.insert(TeleportCharacters, PlayerList.Character)
					end
				end
			end
		end
	end
	local Sound1 = Instance.new("Sound", TeleportPlayer.Character.Torso)
	Sound1.SoundId = "http://www.Roblox.com/Asset/?id=18435238"
	Sound1.Pitch = 4
	Sound1.Volume = 1
	Sound1.Looped = true
	Sound1:Play()
	local Sound2Part = Instance.new("Part", game:GetService("Workspace"))
	Sound2Part.Name = ""
	Sound2Part.Transparency = 1
	Sound2Part.TopSurface = 0
	Sound2Part.BottomSurface = 0
	Sound2Part.formFactor = "Custom"
	Sound2Part.Size = Vector3.new(6, 0.2, 6)
	Sound2Part.Anchored = true
	Sound2Part.CanCollide = false
	Sound2Part:BreakJoints()
	Sound2Part.Position = Position
	local Sound2 = Sound1:Clone()
	Sound2:Stop()
	Sound2.Parent = Sound3Part
	Sound2:Play()
	for i = 0, 1, 0.075 do
		for x = 1, #TeleportCharacters do
			for _, Part in pairs(TeleportCharacters[x]:GetChildren()) do
				pcall(function() Part.Transparency = i end)
			end
			wait()
		end
	end
	for i = 1, #TeleportCharacters do
		for _, Part in pairs(TeleportCharacters[i]:GetChildren()) do
			pcall(function()
				Part.Velocity = Vector3.new()
				Part.RotVelocity = Vector3.new()
			end)
		end
	end
	Sound2Part.CFrame = CFrame.new(TeleportPlayer.Character.Torso.CFrame.p)
	for i = 1, #TeleportCharacters do
		pcall(function() TeleportCharacters[i].Humanoid.PlatformStand = true end)
		local Finish = CFrame.new(Position + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)))
		for x = 1, 100 do
			TeleportCharacters[i].Torso.CFrame = Finish
		end
		coroutine.wrap(function()
			wait(math.random(50, 300) / 100)
			pcall(function() TeleportCharacters[i].Humanoid.PlatformStand = false end)
		end)()
	end
	for i = 1, 0, -0.05 do
		for x = 1, #TeleportCharacters do
			for x, Part in pairs(TeleportCharacters[x]:GetChildren()) do
				pcall(function() Part.Transparency = i end)
			end
			wait()
		end
	end
	for i = 1, #TeleportCharacters do
		for _, Part in pairs(TeleportCharacters[i]:GetChildren()) do
			pcall(function() Part.Transparency = 0 end)
		end
	end
	Sound1.Looped = false
	Sound2.Looped = false
	wait(1)
	Sound1:Remove()
	Sound2:Remove()
	Sound2Part:Remove()
	wait(2)
	TeleportCharacters = {}
	TeleportReady = true
end

function onEquipped(Mouse)
	TeleportPlayer = game:GetService("Players"):GetPlayerFromCharacter(script.Parent.Parent)
	script.Parent.Handle.OpenSound:Stop()
	script.Parent.Handle.OpenSound:Play()
	coroutine.wrap(function()
		wait(0.1)
		script.Parent.Handle.TickSound:Stop()
		script.Parent.Handle.TickSound:Play()
	end)()
	local PlayerGui = TeleportPlayer:FindFirstChild("PlayerGui")
	if PlayerGui == nil then return end
	local TeleportGui = Instance.new("ScreenGui", PlayerGui)
	TeleportGui.Name = "PersonalTeleportGui"
	local Frame = Instance.new("Frame")
	Frame.Name = "Content"
	Frame.Size = UDim2.new(0, 300, 0, 315)
	Frame.Position = UDim2.new(0, 0, 0.5, -315 / 2)
	Frame.BorderSizePixel = 1
	Frame.BorderColor3 = Color3.new(0, 0, 0)
	Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
	Frame.Parent = TeleportGui
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Name = "X Label"
	TextLabel.Size = UDim2.new(1, -15, 0, 15)
	TextLabel.Position = UDim2.new(0, 15, 0, 15)
	TextLabel.BorderSizePixel = 0
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.Text = "X coordinate:"
	TextLabel.TextXAlignment = "Left"
	TextLabel.FontSize = "Size12"
	TextLabel.TextWrap = true
	TextLabel.Parent = TeleportGui.Content
	local TextLabel = TextLabel:Clone()
	TextLabel.Name = "Y Label"
	TextLabel.Position = UDim2.new(0, 15, 0, 45)
	TextLabel.Text = "Y coordinate:"
	TextLabel.Parent = TeleportGui.Content
	local TextLabel = TextLabel:Clone()
	TextLabel.Name = "Z Label"
	TextLabel.Position = UDim2.new(0, 15, 0, 75)
	TextLabel.Text = "Z coordinate:"
	TextLabel.Parent = TeleportGui.Content
	local TextBox = Instance.new("TextBox")
	TextBox.Name = "X"
	TextBox.ClearTextOnFocus = false
	TextBox.Size = UDim2.new(1, -130, 0, 15)
	TextBox.Position = UDim2.new(0, 115, 0, 15)
	TextBox.BorderColor3 = Color3.new(0, 0, 0)
	TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
	TextBox.TextColor3 = Color3.new(0, 0, 0)
	TextBox.Text = "0"
	TextBox.TextXAlignment = "Left"
	TextBox.FontSize = "Size12"
	TextBox.Parent = TeleportGui.Content
	local TextBox = TextBox:Clone()
	TextBox.Name = "Y"
	TextBox.Position = UDim2.new(0, 115, 0, 45)
	TextBox.Parent = TeleportGui.Content
	local TextBox = TextBox:Clone()
	TextBox.Name = "Z"
	TextBox.Position = UDim2.new(0, 115, 0, 75)
	TextBox.Parent = TeleportGui.Content
	local Divider = Instance.new("Frame")
	Divider.Name = "Divider"
	Divider.Size = UDim2.new(1, -30, 0, 1)
	Divider.Position = UDim2.new(0, 15, 0, 100)
	Divider.BorderSizePixel = 0
	Divider.BackgroundColor3 = Color3.new(1, 1, 1)
	Divider.Parent = TeleportGui.Content
	local TextLabel = TextLabel:Clone()
	TextLabel.Name = "CX"
	TextLabel.Position = UDim2.new(0, 15, 0, 110)
	TextLabel.Text = "Current X coordinate: "
	TextLabel.Parent = TeleportGui.Content
	local TextLabel = TextLabel:Clone()
	TextLabel.Name = "CY"
	TextLabel.Position = UDim2.new(0, 15, 0, 140)
	TextLabel.Text = "Current Y coordinate: "
	TextLabel.Parent = TeleportGui.Content
	local TextLabel = TextLabel:Clone()
	TextLabel.Name = "CZ"
	TextLabel.Position = UDim2.new(0, 15, 0, 170)
	TextLabel.Text = "Current Z coordinate: "
	TextLabel.Parent = TeleportGui.Content
	local Divider = Divider:Clone()
	Divider.Position = UDim2.new(0, 15, 0, 195)
	Divider.BorderSizePixel = 0
	Divider.BackgroundColor3 = Color3.new(1, 1, 1)
	Divider.Parent = TeleportGui.Content
	local TextButton = Instance.new("TextButton")
	TextButton.Name = "Teleport"
	TextButton.Size = UDim2.new(1, -30, 0, 15)
	TextButton.Position = UDim2.new(0, 15, 0, 205)
	TextButton.BorderColor3 = Color3.new(0, 0, 0)
	TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
	TextButton.TextColor3 = Color3.new(1, 1, 1)
	TextButton.Text = "Begin Teleportation"
	TextButton.FontSize = "Size12"
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		Teleport(Vector3.new(tonumber(TeleportGui.Content.X.Text), tonumber(TeleportGui.Content.Y.Text), tonumber(TeleportGui.Content.Z.Text)))
	end)
	coroutine.wrap(function()
		wait()
		while TextButton.Parent ~= nil do
			if TeleportReady == false then
				TextButton.AutoButtonColor = false
				TextButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			else
				TextButton.AutoButtonColor = true
				TextButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
			end
			wait(0.1)
		end
	end)()
	local TextButton = TextButton:Clone()
	TextButton.Name = "Set Inputs to Current Coordinates"
	TextButton.Position = UDim2.new(0, 15, 0, 220)
	TextButton.Text = "Set Inputs to Current Coordinates"
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		TeleportGui.Content.X.Text = string.sub(TeleportPlayer.Character.Torso.CFrame.p.x, 0, 12)
		TeleportGui.Content.Y.Text = string.sub(TeleportPlayer.Character.Torso.CFrame.p.y, 0, 12)
		TeleportGui.Content.Z.Text = string.sub(TeleportPlayer.Character.Torso.CFrame.p.z, 0, 12)
	end)
	local TextButton = TextButton:Clone()
	TextButton.Name = "Waypoints"
	TextButton.Position = UDim2.new(0, 15, 0, 235)
	TextButton.Text = "Open Waypoints Dialogue..."
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		pcall(function() TeleportGui.Content["Players List"]:Remove() end)
		pcall(function() TeleportGui.Content["Waypoints List"]:Remove() end)
		local Frame = Frame:Clone()
		Frame.Parent = TeleportGui.Content
		Frame.Name = "Waypoints List"
		Frame.Position = UDim2.new(1, 0, 0, 0)
		Frame.Size = UDim2.new(1, 0, 0, 75)
		for _, Part in pairs(Frame:GetChildren()) do
			Part:Remove()
		end
		for i = 1, #TeleportWaypoints, 2 do
			local TextButton = TextButton:Clone()
			TextButton.Parent = Frame
			TextButton.Name = TeleportWaypoints[i].. " Waypoint"
			TextButton.Text = TeleportWaypoints[i]
			TextButton.Size = UDim2.new(1, -45, 0, 15)
			TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 60)
			TextButton.MouseButton1Up:connect(function()
				TeleportGui.Content.X.Text = TeleportWaypoints[i + 1].x
				TeleportGui.Content.Y.Text = TeleportWaypoints[i + 1].y
				TeleportGui.Content.Z.Text = TeleportWaypoints[i + 1].z
			end)
			local TextButton = TextButton:Clone()
			TextButton.Parent = Frame
			TextButton.Name = TeleportWaypoints[i].. " Remove"
			TextButton.Text = "X"
			TextButton.Size = UDim2.new(0, 15, 0, 15)
			TextButton.Position = UDim2.new(1, -30, 0, Frame.Size.Y.Offset - 60)
			Frame.Size = Frame.Size + UDim2.new(0, 0, 0, 15)
			TextButton.MouseButton1Up:connect(function()
				for x = 1, 2 do
					table.remove(TeleportWaypoints, i)
				end
				Frame:Remove()
			end)
		end
		local TextButton = TextButton:Clone()
		TextButton.Parent = Frame
		TextButton.Name = "Create Waypoint"
		TextButton.Text = "Create Waypoint"
		TextButton.Size = UDim2.new(1, -30, 0, 15)
		TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 45)
		TextButton.MouseButton1Up:connect(function()
			local WaypointButton = Frame["Create Waypoint"]
			WaypointButton.Parent = nil
			local TextBox = TextBox:Clone()
			TextBox.Parent = Frame
			TextBox.Name = "Waypoint Name"
			TextBox.Size = UDim2.new(1, -60, 0, 15)
			TextBox.Position = WaypointButton.Position
			TextBox.Text = "Waypoint Name"
			local TextButton = TextButton:Clone()
			TextButton.Parent = Frame
			TextButton.Name = "Cancel"
			TextButton.Size = UDim2.new(0, 15, 0, 15)
			TextButton.Text = "X"
			TextButton.Position = UDim2.new(1, -45, 0, WaypointButton.Position.Y.Offset)
			TextButton.MouseButton1Up:connect(function()
				Frame["Waypoint Name"]:Remove()
				Frame["Cancel"]:Remove()
				Frame["Save"]:Remove()
				WaypointButton.Parent = Frame
			end)
			local TextButton = TextButton:Clone()
			TextButton.Parent = Frame
			TextButton.Name = "Save"
			TextButton.Size = UDim2.new(0, 15, 0, 15)
			TextButton.Text = ">"
			TextButton.Position = UDim2.new(1, -30, 0, WaypointButton.Position.Y.Offset)
			TextButton.MouseButton1Up:connect(function()
				table.insert(TeleportWaypoints, TextBox.Text)
				table.insert(TeleportWaypoints, Vector3.new(tonumber(string.sub(TeleportPlayer.Character.Torso.CFrame.p.x, 0, 12)), tonumber(string.sub(TeleportPlayer.Character.Torso.CFrame.p.y, 0, 12)), tonumber(string.sub(TeleportPlayer.Character.Torso.CFrame.p.z, 0, 12))))
				Frame:Remove()
			end)
		end)
		local TextButton = TextButton:Clone()
		TextButton.Parent = Frame
		TextButton.Name = "Close"
		TextButton.Text = "Close"
		TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 30)
		TextButton.MouseButton1Up:connect(function() Frame:Remove() end)
	end)
	local TextButton = TextButton:Clone()
	TextButton.Name = "Players"
	TextButton.Position = UDim2.new(0, 15, 0, 250)
	TextButton.Text = "Open Players Dialogue..."
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		pcall(function() TeleportGui.Content["Players List"]:Remove() end)
		pcall(function() TeleportGui.Content["Waypoints List"]:Remove() end)
		local Frame = Frame:Clone()
		Frame.Parent = TeleportGui.Content
		Frame.Name = "Players List"
		Frame.Position = UDim2.new(1, 0, 0, 0)
		Frame.Size = UDim2.new(1, 0, 0, 60)
		for _, Part in pairs(Frame:GetChildren()) do
			Part:Remove()
		end
		for _, PlayerList in pairs(game:GetService("Players"):GetPlayers()) do
			local TextButton = TextButton:Clone()
			TextButton.Parent = Frame
			TextButton.Name = PlayerList.Name
			TextButton.Text = PlayerList.Name
			TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 45)
			Frame.Size = Frame.Size + UDim2.new(0, 0, 0, 15)
			if (function()
				if PlayerList == TeleportPlayer then return false end
				if PlayerList.Character == nil then return false end
				if PlayerList.Character:FindFirstChild("Torso") == nil then return false end
				return true
			end)() == false then
				TextButton.AutoButtonColor = false
				TextButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			else
				TextButton.MouseButton1Up:connect(function()
					pcall(function()
						TeleportGui.Content.X.Text = PlayerList.Character.Torso.CFrame.p.x
						TeleportGui.Content.Y.Text = PlayerList.Character.Torso.CFrame.p.y
						TeleportGui.Content.Z.Text = PlayerList.Character.Torso.CFrame.p.z
					end)
				end)
			end
		end
		local TextButton = TextButton:Clone()
		TextButton.Parent = Frame
		TextButton.Name = "Close"
		TextButton.Text = "Close"
		TextButton.Position = UDim2.new(0, 15, 0, Frame.Size.Y.Offset - 30)
		TextButton.MouseButton1Up:connect(function() Frame:Remove() end)
	end)
	local TextButton = TextButton:Clone()
	TextButton.Name = "Clear"
	TextButton.Position = UDim2.new(0, 15, 0, 265)
	TextButton.Text = "Clear Inputs"
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		TeleportGui.Content.X.Text = 0
		TeleportGui.Content.Y.Text = 0
		TeleportGui.Content.Z.Text = 0
	end)
	local TextButton = TextButton:Clone()
	TextButton.Name = "Teleport Others"
	TextButton.Position = UDim2.new(0, 15, 0, 280)
	TextButton.Text = (TeleportOthers == false and "Don't " or "").. "Teleport Other People"
	TextButton.Parent = TeleportGui.Content
	TextButton.MouseButton1Up:connect(function()
		if TeleportOthers == false then
			TeleportOthers = true
			TextButton.Text = "Teleport Other People"
		elseif TeleportOthers == true then
			TeleportOthers = false
			TextButton.Text = "Don't Teleport Other People"
		end
	end)
	coroutine.wrap(function()
		local TextCX = TeleportGui.Content.CX.Text
		local TextCY = TeleportGui.Content.CY.Text
		local TextCZ = TeleportGui.Content.CZ.Text
		while TeleportGui.Parent ~= nil do
			TeleportGui.Content.CX.Text = TextCX .. string.sub(TeleportPlayer.Character.Torso.CFrame.p.x, 0, 12)
			TeleportGui.Content.CY.Text = TextCY .. string.sub(TeleportPlayer.Character.Torso.CFrame.p.y, 0, 12)
			TeleportGui.Content.CZ.Text = TextCZ .. string.sub(TeleportPlayer.Character.Torso.CFrame.p.z, 0, 12)
			wait()
		end
	end)()
end


function onUnequipped()
	script.Parent.Handle.OpenSound:Stop()
	script.Parent.Handle.OpenSound:Play()
	script.Parent.Handle.TickSound:Stop()
	if TeleportPlayer:FindFirstChild("PlayerGui") ~= nil then
		if TeleportPlayer.PlayerGui:FindFirstChild("PersonalTeleportGui") ~= nil then
			TeleportPlayer.PlayerGui.PersonalTeleportGui:Remove()
		end
	end
end


script.Parent.Equipped:connect(function(Mouse) onEquipped(Mouse) end)
script.Parent.Unequipped:connect(function(Mouse) onUnequipped(Mouse) end)

end