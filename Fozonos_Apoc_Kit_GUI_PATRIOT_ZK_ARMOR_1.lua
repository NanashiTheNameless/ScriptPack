-- Fozono - Created GUI
-- Fozono - Some kits
-- https://v3rmillion.net/showthread.php?tid=186224 - Kits
--

	NewGuiPart1 = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
	NewGuiPart1.Name = "fozoapcgui"
	
	-------
	
	NewGuiPart2 = Instance.new("TextButton",NewGuiPart1)
	NewGuiPart2.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart2.Position = UDim2.new(0, 180, 0, 330)
	NewGuiPart2.Size = UDim2.new(0, 330, 0, 20)
	NewGuiPart2.Font = "SourceSansItalic"
	NewGuiPart2.FontSize = "Size14"
	NewGuiPart2.Text = "Fozono's Apoc Kit GUI"
	NewGuiPart2.TextScaled = true
	NewGuiPart2.TextWrapped = true
	NewGuiPart2.Draggable = true
	NewGuiPart2.AutoButtonColor = true
	
	-------
	
    NewGuiPart3 = Instance.new("Frame",NewGuiPart2)
	NewGuiPart3.Name = "Gui"
	NewGuiPart3.Position = UDim2.new(0, -180, -16, -10)
	NewGuiPart3.Size = UDim2.new(0, 0, 0, 0)
	
	-------
	
	NewGuiPart4 = Instance.new("Frame",NewGuiPart3)
	NewGuiPart4.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart4.BackgroundTransparency = 0.30000001192093
	NewGuiPart4.Name = "FrameXD"
	NewGuiPart4.Position = UDim2.new(0, 180, 0, 350)
	NewGuiPart4.Size = UDim2.new(0, 330, 0, 310)
	
	-------
	
	NewGuiPart5 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart5.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	NewGuiPart5.Name = "M14"
	NewGuiPart5.Position = UDim2.new(0, 190, 0, 360)
	NewGuiPart5.Size = UDim2.new(0, 310, 0, 50)
	NewGuiPart5.Font = "SourceSansItalic"
	NewGuiPart5.FontSize = "Size24"
	NewGuiPart5.Text = "M14 Kit"
	NewGuiPart5.TextColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart5.AutoButtonColor = true
	NewGuiPart5.MouseButton1Down:connect(function()
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
	
	-------
	
	NewGuiPart6 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart6.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	NewGuiPart6.Name = "BUTTON2A"
	NewGuiPart6.Position = UDim2.new(0, 190, 0, 430)
	NewGuiPart6.Size = UDim2.new(0, 310, 0, 50)
	NewGuiPart6.Font = "SourceSansItalic"
	NewGuiPart6.FontSize = "Size24"
	NewGuiPart6.Text = "M249 Kit"
	NewGuiPart6.TextColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart6.AutoButtonColor = true
	NewGuiPart6.MouseButton1Down:connect(function()
s = game.Players.LocalPlayer.Character.Humanoid
PlayerName = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotprimary, 1024)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot2, 9010)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot3, 9005)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot4, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot5, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot6, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot7, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot8, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot9, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot10, 61)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot11, 61)
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
	------
	
	NewGuiPart7 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart7.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	NewGuiPart7.Name = "BUTTON3A"
	NewGuiPart7.Position = UDim2.new(0, 190, 0, 500)
	NewGuiPart7.Size = UDim2.new(0, 310, 0, 50)
	NewGuiPart7.Font = "SourceSansItalic"
	NewGuiPart7.FontSize = "Size24"
	NewGuiPart7.Text = "Patriot Kit"
	NewGuiPart7.TextColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart7.AutoButtonColor = true
	NewGuiPart7.MouseButton1Down:connect(function()
s = game.Players.LocalPlayer.Character.Humanoid
PlayerName = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotbackpack, 4016)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slotprimary, 1021)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot1, 9013)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot2, 9010)
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
	
	-------
	
	NewGuiPart8 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart8.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	NewGuiPart8.Name = "BUTTON4A"
	NewGuiPart8.Position = UDim2.new(0, 190, 0, 570)
	NewGuiPart8.Size = UDim2.new(0, 310, 0, 50)
	NewGuiPart8.Font = "SourceSansItalic"
	NewGuiPart8.FontSize = "Size24"
	NewGuiPart8.Text = "Building Kit"
	NewGuiPart8.TextColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart8.AutoButtonColor = true
	NewGuiPart8.MouseButton1Down:connect(function()
s = game.Players.LocalPlayer.Character.Humanoid
PlayerName = s.Parent.Name

game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot1, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot3, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot5, 31)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot7, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot9, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot11, 34)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot13, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot16, 35)
wait(.1)
game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot19, 3004)
print("Builders Kit Given")
	end)
	
	-------
	
	local NewGuiPart9 = Instance.new("TextButton",NewGuiPart3)
	NewGuiPart9.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	NewGuiPart9.Name = "ZK"
	NewGuiPart9.Position = UDim2.new(0, 210, 0, 630)
	NewGuiPart9.Size = UDim2.new(0, 270, 0, 20)
	NewGuiPart9.Font = "SourceSansItalic"
	NewGuiPart9.FontSize = "Size24"
	NewGuiPart9.Text = "Zolarketh Armor Kit"
	NewGuiPart9.TextColor3 = Color3.new(0.333333, 0.666667, 1)
	NewGuiPart9.AutoButtonColor = true
	NewGuiPart9.MouseButton1Down:connect(function()
      s = game.Players.LocalPlayer.Character.Humanoid
      PlayerName = s.Parent.Name
      
      game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot4, 5011)
      wait(0.1)
      game.Lighting.Remote.AddObject:FireServer(game.Players[PlayerName].playerstats.slots.slot5, 6011)
      wait(0.1)
      print("stuff spawned")	
	end)
