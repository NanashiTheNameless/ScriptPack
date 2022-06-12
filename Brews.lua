	NewGuiPart1 = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
	NewGuiPart1.Name = "Brew'sApocGui"
	
	
	
	NewGuiPart2 = Instance.new("TextButton",NewGuiPart1)
	NewGuiPart2.BackgroundColor3 = Color3.new(0.635294, 0.537255, 0.219608)
	NewGuiPart2.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
	NewGuiPart2.Size = UDim2.new(0, 310, 0, 40)
	NewGuiPart2.Font = "SourceSansLight"
	NewGuiPart2.FontSize = "Size28"
	NewGuiPart2.Text = "Brew's Apoc Gui"
	NewGuiPart2.Draggable = true
	NewGuiPart2.AutoButtonColor = true
	NewGuiPart2.BorderSizePixel = 0
	
	
	
	NewGuiPart3 = Instance.new("Frame",NewGuiPart2)
	NewGuiPart3.BackgroundColor3 = Color3.new(1, 0.858824, 0.34902)
	NewGuiPart3.Name = "Main"
	NewGuiPart3.Position = UDim2.new(0, 0, 1, 0)
	NewGuiPart3.Size = UDim2.new(0, 310, 0, 200)
	NewGuiPart3.BorderSizePixel = 0
	
	
	
	NewGuiPart4 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart4.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart4.Name = "Patriot"
	NewGuiPart4.Position = UDim2.new(0, 10, 0, 10)
	NewGuiPart4.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart4.FontSize = "Size8"
	NewGuiPart4.Text = "Patriot"
	NewGuiPart4.BorderSizePixel = 0
	NewGuiPart4.AutoButtonColor = true
	NewGuiPart4.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
PlayerName = s.Parent.Name
	
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotprimary, 1021)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot1, 9014)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot2, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot4, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot5, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot6, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot7, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot8, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot9, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot10, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot11, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart5 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart5.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart5.Name = "Fal"
	NewGuiPart5.Position = UDim2.new(0, 70, 0, 10)
	NewGuiPart5.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart5.FontSize = "Size8"
	NewGuiPart5.Text = "Fal"
	NewGuiPart5.BorderSizePixel = 0
	NewGuiPart5.AutoButtonColor = true
	NewGuiPart5.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1029)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart6 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart6.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart6.Name = "M14"
	NewGuiPart6.Position = UDim2.new(0, 130, 0, 10)
	NewGuiPart6.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart6.FontSize = "Size8"
	NewGuiPart6.Text = "M14"
	NewGuiPart6.BorderSizePixel = 0
	NewGuiPart6.AutoButtonColor = true
	NewGuiPart6.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
PlayerName = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotprimary, 1016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot4, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot5, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot6, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot7, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot8, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot9, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot10, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot11, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot12, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot13, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot14, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot15, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot16, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart7= Instance.new("TextButton",NewGuiPart3)
	NewGuiPart7.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart7.Name = "Mk48"
	NewGuiPart7.Position = UDim2.new(0, 190, 0, 10)
	NewGuiPart7.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart7.FontSize = "Size8"
	NewGuiPart7.Text = "MK48"
	NewGuiPart7.BorderSizePixel = 0
	NewGuiPart7.AutoButtonColor = true
	NewGuiPart7.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 23)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart8 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart8.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart8.Name = "PPSH"
	NewGuiPart8.Position = UDim2.new(0, 250, 0, 10)
	NewGuiPart8.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart8.FontSize = "Size8"
	NewGuiPart8.Text = "PPSH"
	NewGuiPart8.BorderSizePixel = 0
	NewGuiPart8.AutoButtonColor = true
	NewGuiPart8.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1019)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 46)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart9 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart9.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart9.Name = "SCAR"
	NewGuiPart9.Position = UDim2.new(0, 10, 0, 70)
	NewGuiPart9.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart9.FontSize = "Size8"
	NewGuiPart9.Text = "SCAR"
	NewGuiPart9.BorderSizePixel = 0
	NewGuiPart9.AutoButtonColor = true
	NewGuiPart9.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1022)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 53)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 9009)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 9013)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart10 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart10.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart10.Name = "RPK"
	NewGuiPart10.Position = UDim2.new(0, 70, 0, 70)
	NewGuiPart10.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart10.FontSize = "Size8"
	NewGuiPart10.Text = "RPK"
	NewGuiPart10.BorderSizePixel = 0
	NewGuiPart10.AutoButtonColor = true
	NewGuiPart10.MouseButton1Down:connect(function()
		s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1034)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 9006)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 50)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart11 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart11.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart11.Name = "Mk-17"
	NewGuiPart11.Position = UDim2.new(0, 130, 0, 70)
	NewGuiPart11.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart11.FontSize = "Size8"
	NewGuiPart11.Text = "Mk-17"
	NewGuiPart11.BorderSizePixel = 0
	NewGuiPart11.AutoButtonColor = true
	NewGuiPart11.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slotprimary, 1031)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 64)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 11)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 11)
wait(.1)
print("stuff spawned")
	end)
	
	
	
	NewGuiPart12 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart12.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart12.Name = "C4Kit"
	NewGuiPart12.Position = UDim2.new(0, 190, 0, 70)
	NewGuiPart12.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart12.FontSize = "Size8"
	NewGuiPart12.Text = "C4Kit"
	NewGuiPart12.BorderSizePixel = 0
	NewGuiPart12.AutoButtonColor = true
	NewGuiPart12.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 3017)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot2, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot4, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot6, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot8, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot10, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot12, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot14, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot15, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot17, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot18, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 255)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot20, 255)
print("Demolitions Kit given")
	end)
	
	
	
	NewGuiPart13 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart13.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart13.Name = "Buildkit"
	NewGuiPart13.Position = UDim2.new(0, 250, 0, 70)
	NewGuiPart13.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart13.FontSize = "Size8"
	NewGuiPart13.Text = "BuildKit"
	NewGuiPart13.BorderSizePixel = 0
	NewGuiPart13.AutoButtonColor = true
	NewGuiPart13.MouseButton1Down:connect(function()
	s = game.Players.LocalPlayer.Character.Humanoid
Player = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot1, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot3, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot5, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot7, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot9, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot11, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot13, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot16, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[Player].playerstats.slots.slot19, 3004)
print("Builders Kit Given")
	end)
	
	
	NewGuiPart14 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart14.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart14.Name = "FogEnd"
	NewGuiPart14.Position = UDim2.new(0, 10, 0, 130)
	NewGuiPart14.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart14.FontSize = "Size8"
	NewGuiPart14.Text = "Fog"
	NewGuiPart14.BorderSizePixel = 0
	NewGuiPart14.AutoButtonColor = true
	NewGuiPart14.MouseButton1Down:connect(function()
	game.Lighting.FogEnd = 100000
	game.Lighting.FogStart = 100000
		end)
		
		
		
	NewGuiPart15 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart15.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart15.Name = "MsgGui"
	NewGuiPart15.Position = UDim2.new(0, 70, 0, 130)
	NewGuiPart15.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart15.FontSize = "Size8"
	NewGuiPart15.Text = "MsgGui"
	NewGuiPart15.BorderSizePixel = 0
	NewGuiPart15.AutoButtonColor = true
	NewGuiPart15.MouseButton1Down:connect(function()
	wait(3)

local plr = game:GetService("Players").LocalPlayer

local char = plr.Character

local gui = plr.PlayerGui

local mouse = plr:GetMouse()



local UI = Instance.new("ScreenGui", gui)



local Back = Instance.new("TextLabel", UI)

local Red = Instance.new("TextButton", Back)

local Yellow = Instance.new("TextButton", Back)

local Blue = Instance.new("TextButton", Back)

local Green = Instance.new("TextButton", Back)

local Msg = Instance.new("TextLabel", Back)

local TXTBOX = Instance.new("TextBox", Back)

local var = Instance.new("StringValue", UI)

local exec = Instance.new("TextButton", Back)



Back.BackgroundColor3 = Color3.new(155, 155, 155)

Back.BackgroundTransparency = 0.7

Back.BorderColor3 = Color3.new(27, 42, 53)

Back.Name = "Background"

Back.Position = UDim2.new(0, 900, 0, 350)

Back.Size = UDim2.new(0, 200, 0, 200)

Back.Text = ""



Red.BackgroundColor3 = Color3.new(255, 255, 255)

Red.BackgroundTransparency = 0.7

Red.BorderColor3 = Color3.new(255, 0, 0)

Red.BorderSizePixel = 2

Red.Name = "Red"

Red.Position = UDim2.new(0, 0, 0, 0)

Red.Size = UDim2.new(0, 50, 0, 25)

Red.Text = "Red"



Blue.BackgroundColor3 = Color3.new(255, 255, 255)

Blue.BackgroundTransparency = 0.7

Blue.BorderColor3 = Color3.new(0, 0, 255)

Blue.BorderSizePixel = 2

Blue.Name = "Blue"

Blue.Position = UDim2.new(0, 50, 0, 0)

Blue.Size = UDim2.new(0, 50, 0, 25)

Blue.Text = "Blue"



Green.BackgroundColor3 = Color3.new(255, 255, 255)

Green.BackgroundTransparency = 0.7

Green.BorderColor3 = Color3.new(0, 255, 0)

Green.BorderSizePixel = 2

Green.Name = "Green"

Green.Position = UDim2.new(0, 100, 0, 0)

Green.Size = UDim2.new(0, 50, 0, 25)

Green.Text = "Green"



Yellow.BackgroundColor3 = Color3.new(255, 255, 255)

Yellow.BackgroundTransparency = 0.7

Yellow.BorderColor3 = Color3.new(255, 255, 0)

Yellow.BorderSizePixel = 2

Yellow.Name = "Yellow"

Yellow.Position = UDim2.new(0, 150, 0, 0)

Yellow.Size = UDim2.new(0, 50, 0, 25)

Yellow.Text = "Yellow"



TXTBOX.BackgroundColor3 = Color3.new(1, 1, 1)

TXTBOX.BackgroundTransparency = 0.7

TXTBOX.BorderColor3 = Color3.new(50, 50, 50)

TXTBOX.BorderSizePixel = 2

TXTBOX.Name = "Msg"

TXTBOX.Position = UDim2.new(0, 25, 0, 100)

TXTBOX.Size = UDim2.new(0, 150, 0, 25)

TXTBOX.Text = "Message"

TXTBOX.TextColor3 = Color3.new(51, 255, 51)



Msg.BackgroundColor3 = Color3.new(1, 1, 1)

Msg.BackgroundTransparency = 1

Msg.BorderColor3 = Color3.new(50, 50, 50)

Msg.BorderSizePixel = 0

Msg.Name = "MSGLabel"

Msg.Position = UDim2.new(0, 25, 0, 75)

Msg.Size = UDim2.new(0, 150, 0, 25)

Msg.Text = "Type message here.."

Msg.TextColor3 = Color3.new(51, 255, 255)





exec.BackgroundColor3 = Color3.new(1, 1, 1)

exec.BackgroundTransparency = 0.5

exec.BorderColor3 = Color3.new(50, 50, 50)

exec.BorderSizePixel = 1

exec.Name = "Execute"

exec.Position = UDim2.new(0, 50, 0, 130)

exec.Size = UDim2.new(0, 100, 0, 20)

exec.Text = "Execute"

exec.TextColor3 = Color3.new(51, 255, 255)







Red.MouseButton1Down:connect(function()

var.Value = "Red"

print("Loaded Yellow")

ife()

end)



Blue.MouseButton1Down:connect(function()

var.Value = "Blue"

print("Loaded Blue")

ife()

end)



Yellow.MouseButton1Down:connect(function()

var.Value = "Yellow"

print("Loaded Yellow")

ife()

end)



Green.MouseButton1Down:connect(function()

var.Value = "Green"

print("Loaded Green")

ife()

end)



function ife()

if var.Value == "Red" then

Red.BorderSizePixel = 3

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 2

print("Loaded Red Val")

elseif var.Value == "Blue" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 3

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 2

print("Loaded Red Val")

elseif var.Value == "Green" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 3

Yellow.BorderSizePixel = 2

print("Loaded Green Val")

elseif var.Value == "Yellow" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 3

print("Loaded Green Val")

end

end



exec.MouseButton1Down:connect(function()

executed()

end)

function executed()

for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, tostring(var.Value) , tostring(TXTBOX.Text)) end 







end




print("Loaded Succesfully!")
end)



	NewGuiPart16 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart16.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart16.Name = "KillAll"
	NewGuiPart16.Position = UDim2.new(0, 130, 0, 130)
	NewGuiPart16.Size = UDim2.new(0, 50, 0, 50)
	NewGuiPart16.FontSize = "Size8"
	NewGuiPart16.Text = "KillAll"
	NewGuiPart16.BorderSizePixel = 0
	NewGuiPart16.AutoButtonColor = true
	NewGuiPart16.MouseButton1Down:connect(function()
	for i, v in pairs(game.Players:GetPlayers()) do
game.Lighting.Remote.AddHealth:FireServer(v.Character.Humanoid, -100)
end
	end)
	
	
	
	NewGuiPart17 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart17.BackgroundColor3 = Color3.new(0.827451, 0.701961, 0.286275)
	NewGuiPart17.Name = "eTeleport"
	NewGuiPart17.Position = UDim2.new(0, 190, 0, 130)
	NewGuiPart17.Size = UDim2.new(0, 110, 0, 50)
	NewGuiPart17.FontSize = "Size8"
	NewGuiPart17.Text = "[e] to Teleport"
	NewGuiPart17.BorderSizePixel = 0
	NewGuiPart17.AutoButtonColor = true
	NewGuiPart17.MouseButton1Down:connect(function()
	plr = game.Players.LocalPlayer

hum = plr.Character.HumanoidRootPart

mouse = plr:GetMouse()



mouse.KeyDown:connect(function(key)

if key == "e" then

if mouse.Target then

hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)

end

end
end)
end)
	