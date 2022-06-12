local L_1_ = "v0.2"
local L_2_ = game.Players.LocalPlayer;
local L_3_ = Instance.new("ScreenGui")
L_3_.Name = "GUI"
L_3_.Parent = L_2_.PlayerGui;
local L_4_ = Instance.new("Frame", L_3_)
L_4_.Active = true
L_4_.BackgroundColor3 = Color3.new(0, 0, 0)
L_4_.BackgroundTransparency = 0.4
L_4_.Draggable = true
L_4_.Name = "frmMain"
L_4_.Size = UDim2.new(0, 600, 0, 300)
local L_5_ = Instance.new("TextButton", L_4_)
L_5_.Name = "btnUniversal"
L_5_.Font = Enum.Font.ArialBold;
L_5_.FontSize = Enum.FontSize.Size14;
L_5_.Text = "Universal"
L_5_.TextColor3 = Color3.new(255, 255, 255)
L_5_.Style = Enum.ButtonStyle.RobloxButton;
L_5_.Size = UDim2.new(0, 150, 0, 40)
L_5_.Position = UDim2.new(0, 0, 0, 25)
local L_6_ = Instance.new("TextButton", L_4_)
L_6_.Name = "btnSpawning"
L_6_.Font = Enum.Font.ArialBold;
L_6_.FontSize = Enum.FontSize.Size14;
L_6_.Text = "Spawning"
L_6_.TextColor3 = Color3.new(255, 255, 255)
L_6_.Style = Enum.ButtonStyle.RobloxButton;
L_6_.Size = UDim2.new(0, 150, 0, 40)
L_6_.Position = UDim2.new(0, 0, 0, 65)
local L_7_ = Instance.new("TextButton", L_4_)
L_7_.Name = "btnPlayers"
L_7_.Font = Enum.Font.ArialBold;
L_7_.FontSize = Enum.FontSize.Size14;
L_7_.Text = "Players"
L_7_.TextColor3 = Color3.new(255, 255, 255)
L_7_.Style = Enum.ButtonStyle.RobloxButton;
L_7_.Size = UDim2.new(0, 150, 0, 40)
L_7_.Position = UDim2.new(0, 0, 0, 105)
local L_8_ = Instance.new("TextButton", L_4_)
L_8_.Name = "btnLocalPlayer"
L_8_.Font = Enum.Font.ArialBold;
L_8_.FontSize = Enum.FontSize.Size14;
L_8_.Text = "LocalPlayer"
L_8_.TextColor3 = Color3.new(255, 255, 255)
L_8_.Size = UDim2.new(0, 150, 0, 40)
L_8_.Style = Enum.ButtonStyle.RobloxButton;
L_8_.Position = UDim2.new(0, 0, 0, 145)
local L_9_ = Instance.new("TextButton", L_4_)
L_9_.Name = "btnVehicles"
L_9_.Font = Enum.Font.ArialBold;
L_9_.FontSize = Enum.FontSize.Size14;
L_9_.Text = "Vehicles"
L_9_.TextColor3 = Color3.new(255, 255, 255)
L_9_.Style = Enum.ButtonStyle.RobloxButton;
L_9_.Size = UDim2.new(0, 150, 0, 40)
L_9_.Position = UDim2.new(0, 0, 0, 185)
local L_10_ = Instance.new("TextButton", L_4_)
L_10_.Name = "btnClose"
L_10_.Font = Enum.Font.ArialBold;
L_10_.FontSize = Enum.FontSize.Size14;
L_10_.Text = "X"
L_10_.TextColor3 = Color3.new(255, 255, 255)
L_10_.Style = Enum.ButtonStyle.RobloxButton;
L_10_.Size = UDim2.new(0, 25, 0, 25)
L_10_.Position = UDim2.new(0, 575, 0, 0)
local L_11_ = Instance.new("TextButton", L_3_)
L_11_.Name = "btnOpen"
L_11_.Font = Enum.Font.ArialBold;
L_11_.FontSize = Enum.FontSize.Size14;
L_11_.Text = "Open"
L_11_.TextColor3 = Color3.new(255, 255, 255)
L_11_.Style = Enum.ButtonStyle.RobloxButton;
L_11_.Size = UDim2.new(0, 50, 0, 25)
L_11_.Position = UDim2.new(0, 0, 0.7, 0)
L_11_.Visible = false
local L_12_ = Instance.new("TextLabel", L_4_)
L_12_.BackgroundTransparency = 1
L_12_.Name = "lblTop"
L_12_.Font = Enum.Font.ArialBold;
L_12_.FontSize = Enum.FontSize.Size14;
L_12_.Text = "Niobium GUI "..L_1_;
L_12_.TextColor3 = Color3.new(255, 255, 255)
L_12_.Size = UDim2.new(0, 600, 0, 25)
L_12_.Position = UDim2.new(0, 0, 0, 0)
local L_13_ = Instance.new("Frame", L_4_)
L_13_.Active = true
L_13_.BackgroundColor3 = Color3.new(0, 0, 0)
L_13_.BackgroundTransparency = 1
L_13_.Name = "frmUniversal"
L_13_.Visible = false
L_13_.Size = UDim2.new(0, 450, 0, 275)
L_13_.Position = UDim2.new(0, 150, 0, 25)
local L_14_ = Instance.new("UIGridLayout", L_13_)
L_14_.CellPadding = UDim2.new(0, 5, 0, 10)
L_14_.CellSize = UDim2.new(0, 100, 0, 25)
L_14_.FillDirection = Enum.FillDirection.Vertical;
local L_15_ = Instance.new("TextButton", L_13_)
L_15_.Name = "btnKillAll"
L_15_.Font = Enum.Font.ArialBold;
L_15_.FontSize = Enum.FontSize.Size14;
L_15_.Text = "KillAll"
L_15_.TextColor3 = Color3.new(255, 255, 255)
L_15_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_16_ = Instance.new("TextButton", L_13_)
L_16_.Name = "btnStealAll"
L_16_.Font = Enum.Font.ArialBold;
L_16_.FontSize = Enum.FontSize.Size14;
L_16_.Text = "Steal All"
L_16_.TextColor3 = Color3.new(255, 255, 255)
L_16_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_17_ = Instance.new("TextButton", L_13_)
L_17_.Name = "btnStealGuns"
L_17_.Font = Enum.Font.ArialBold;
L_17_.FontSize = Enum.FontSize.Size14;
L_17_.Text = "Steal Guns"
L_17_.TextColor3 = Color3.new(255, 255, 255)
L_17_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_18_ = Instance.new("TextButton", L_13_)
L_18_.Name = "btnKillZ"
L_18_.Font = Enum.Font.ArialBold;
L_18_.FontSize = Enum.FontSize.Size14;
L_18_.Text = "Kill Zombies"
L_18_.TextColor3 = Color3.new(255, 255, 255)
L_18_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_19_ = Instance.new("Frame", L_4_)
L_19_.Active = true
L_19_.BackgroundColor3 = Color3.new(0, 0, 0)
L_19_.BackgroundTransparency = 1
L_19_.Name = "frmSpawning"
L_19_.Visible = false
L_19_.Size = UDim2.new(0, 450, 0, 275)
L_19_.Position = UDim2.new(0, 150, 0, 25)
local L_20_ = Instance.new("ScrollingFrame", L_19_)
L_20_.BackgroundColor3 = Color3.new(93, 93, 93)
L_20_.BackgroundTransparency = 0.3
L_20_.Name = "sfrmResults"
L_20_.Size = UDim2.new(0, 225, 0, 100)
L_20_.Position = UDim2.new(0, 75, 0, 75)
local L_21_ = Instance.new("TextButton", L_19_)
L_21_.Name = "btnSpawn"
L_21_.Font = Enum.Font.ArialBold;
L_21_.FontSize = Enum.FontSize.Size14;
L_21_.Text = "Spawn"
L_21_.TextColor3 = Color3.new(255, 255, 255)
L_21_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_21_.Size = UDim2.new(0, 75, 0, 25)
L_21_.Position = UDim2.new(0, 225, 0, 50)
local L_22_ = 430783
function check()
	if not L_2_:GetRoleInGroup(L_22_) == "Guest" then
		for L_62_forvar1 = 1, 30 do
			print("HAX0R ALERT. EXTREME HAX0RS HAXED THIS GAME")
		end;
		L_3_:Destroy()
		for L_63_forvar1 = 1, 20 do
			wait()
			workspace.Remote.Chat:FireServer("Global", "I AM "..L_2_.Name.." THE ELITE HAX0R AND I JUST HAXED THIS GAME")
			workspace.Remote.Chat:FireServer("Global", "REMEMBER MY NAME, "..L_2_.Name.." FOR I AM THE GREATEST HAX0R ON ROBLOX")
			workspace.Remote.Chat:FireServer("Global", "IT IS FUTILE TO REPORT ME, REPORTS WILL NEVER STOP THE GREAT "..L_2_.Name)
			for L_64_forvar1, L_65_forvar2 in pairs(game.Players:GetPlayers()) do
				workspace.Remote.SendMessage:FireServer(L_65_forvar2, "Red", "I AM "..L_2_.Name.." THE ELITE HAX0R AND I JUST HAXED THIS GAME")
				workspace.Remote.SendMessage:FireServer(L_65_forvar2, "Red", "REMEMBER MY NAME, "..L_2_.Name.." FOR I AM THE GREATEST HAX0R ON ROBLOX")
				workspace.Remote.SendMessage:FireServer(L_65_forvar2, "Red", "IT IS FUTILE TO REPORT ME, REPORTS WILL NEVER STOP THE GREAT "..L_2_.Name)
			end
		end;
		L_2_.Character.HumanoidRootPart.CFrame = CFrame.new(math.huge, math.huge, math.huge)
		L_2_.CharacterAddded:connect(function()
			L_2_.Character.HumanoidRootPart.CFrame = CFrame.new(math.huge, math.huge, math.huge)
		end)
		while true do
		end;
		script:Destroy()
	end
end;
check()
local L_23_ = Instance.new("TextBox", L_19_)
L_23_.BackgroundColor3 = Color3.new(0, 0, 0)
L_23_.BackgroundTransparency = 0.7
L_23_.Name = "Search"
L_23_.Font = Enum.Font.ArialBold;
L_23_.FontSize = Enum.FontSize.Size14;
L_23_.Text = "Search"
L_23_.TextColor3 = Color3.new(255, 255, 255)
L_23_.Size = UDim2.new(0, 150, 0, 25)
L_23_.Position = UDim2.new(0, 75, 0, 50)
local L_24_ = Instance.new("Frame", L_4_)
L_24_.Active = true
L_24_.BackgroundColor3 = Color3.new(0, 0, 0)
L_24_.BackgroundTransparency = 1
L_24_.Name = "frmPlayers"
L_24_.Visible = false
L_24_.Size = UDim2.new(0, 450, 0, 275)
L_24_.Position = UDim2.new(0, 150, 0, 25)
local L_25_ = Instance.new("ScrollingFrame", L_24_)
L_25_.BackgroundColor3 = Color3.new(93, 93, 93)
L_25_.BackgroundTransparency = 0.3
L_25_.Name = "sfrmPlayers"
L_25_.Size = UDim2.new(0, 300, 0, 150)
L_25_.Position = UDim2.new(0, 75, 0, 125)
local L_26_ = Instance.new("TextButton", L_24_)
L_26_.Name = "btnGotoP"
L_26_.Font = Enum.Font.ArialBold;
L_26_.FontSize = Enum.FontSize.Size14;
L_26_.Text = "Goto"
L_26_.TextColor3 = Color3.new(255, 255, 255)
L_26_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_26_.Size = UDim2.new(0, 75, 0, 25)
L_26_.Position = UDim2.new(0, 300, 0, 75)
local L_27_ = Instance.new("TextButton", L_24_)
L_27_.Name = "btnKill"
L_27_.Font = Enum.Font.ArialBold;
L_27_.FontSize = Enum.FontSize.Size14;
L_27_.Text = "Kill"
L_27_.TextColor3 = Color3.new(255, 255, 255)
L_27_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_27_.Size = UDim2.new(0, 75, 0, 25)
L_27_.Position = UDim2.new(0, 75, 0, 75)
local L_28_ = Instance.new("TextButton", L_24_)
L_28_.Name = "btnStealAll"
L_28_.Font = Enum.Font.ArialBold;
L_28_.FontSize = Enum.FontSize.Size14;
L_28_.Text = "Steal All"
L_28_.TextColor3 = Color3.new(255, 255, 255)
L_28_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_28_.Size = UDim2.new(0, 75, 0, 25)
L_28_.Position = UDim2.new(0, 225, 0, 75)
local L_29_ = Instance.new("TextButton", L_24_)
L_29_.Name = "btnStealGuns"
L_29_.Font = Enum.Font.ArialBold;
L_29_.FontSize = Enum.FontSize.Size14;
L_29_.Text = "Steal Guns"
L_29_.TextColor3 = Color3.new(255, 255, 255)
L_29_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_29_.Size = UDim2.new(0, 75, 0, 25)
L_29_.Position = UDim2.new(0, 150, 0, 75)
local L_30_ = Instance.new("TextLabel", L_24_)
L_30_.BackgroundTransparency = 1
L_30_.Name = "lblSelected"
L_30_.Font = Enum.Font.ArialBold;
L_30_.FontSize = Enum.FontSize.Size14;
L_30_.Text = "Selected: "
L_30_.TextColor3 = Color3.new(255, 255, 255)
L_30_.Size = UDim2.new(0, 300, 0, 25)
L_30_.Position = UDim2.new(0, 75, 0, 100)
local L_31_ = Instance.new("Frame", L_4_)
L_31_.Active = true
L_31_.BackgroundColor3 = Color3.new(0, 0, 0)
L_31_.BackgroundTransparency = 1
L_31_.Name = "frmLocalPlayer"
L_31_.Visible = false
L_31_.Size = UDim2.new(0, 450, 0, 275)
L_31_.Position = UDim2.new(0, 150, 0, 25)
local L_32_ = Instance.new("UIGridLayout", L_31_)
L_32_.CellPadding = UDim2.new(0, 5, 0, 10)
L_32_.CellSize = UDim2.new(0, 100, 0, 25)
L_32_.FillDirection = Enum.FillDirection.Vertical;
L_32_.SortOrder = Enum.SortOrder.Custom;
local L_33_ = Instance.new("TextButton", L_31_)
L_33_.Name = "btnGod"
L_33_.Font = Enum.Font.ArialBold;
L_33_.FontSize = Enum.FontSize.Size14;
L_33_.Text = "God: OFF"
L_33_.TextColor3 = Color3.new(255, 255, 255)
L_33_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_34_ = Instance.new("TextButton", L_31_)
L_34_.Name = "btnHunger"
L_34_.Font = Enum.Font.ArialBold;
L_34_.FontSize = Enum.FontSize.Size14;
L_34_.Text = "Hunger"
L_34_.TextColor3 = Color3.new(255, 255, 255)
L_34_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_35_ = Instance.new("TextButton", L_31_)
L_35_.Name = "btnThirst"
L_35_.Font = Enum.Font.ArialBold;
L_35_.FontSize = Enum.FontSize.Size14;
L_35_.Text = "Thirst"
L_35_.TextColor3 = Color3.new(255, 255, 255)
L_35_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_36_ = Instance.new("TextButton", L_31_)
L_36_.Name = "btnNoClip"
L_36_.Font = Enum.Font.ArialBold;
L_36_.FontSize = Enum.FontSize.Size14;
L_36_.Text = "NoClip: OFF"
L_36_.TextColor3 = Color3.new(255, 255, 255)
L_36_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_37_ = Instance.new("TextButton", L_31_)
L_37_.Name = "btnC4Walk"
L_37_.Font = Enum.Font.ArialBold;
L_37_.FontSize = Enum.FontSize.Size14;
L_37_.Text = "C4Walk: OFF"
L_37_.TextColor3 = Color3.new(255, 255, 255)
L_37_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_38_ = Instance.new("TextButton", L_31_)
L_38_.Name = "btnESP"
L_38_.Font = Enum.Font.ArialBold;
L_38_.FontSize = Enum.FontSize.Size14;
L_38_.Text = "ESP: OFF"
L_38_.TextColor3 = Color3.new(255, 255, 255)
L_38_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_39_ = Instance.new("TextButton", L_31_)
L_39_.Name = "btnFly"
L_39_.Font = Enum.Font.ArialBold;
L_39_.FontSize = Enum.FontSize.Size14;
L_39_.Text = "Fly: OFF"
L_39_.TextColor3 = Color3.new(255, 255, 255)
L_39_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
local L_40_ = Instance.new("Frame", L_4_)
L_40_.Active = true
L_40_.BackgroundColor3 = Color3.new(0, 0, 0)
L_40_.BackgroundTransparency = 1
L_40_.Name = "frmVehicles"
L_40_.Visible = false
L_40_.Size = UDim2.new(0, 450, 0, 275)
L_40_.Position = UDim2.new(0, 150, 0, 25)
local L_41_ = Instance.new("ScrollingFrame", L_40_)
L_41_.BackgroundColor3 = Color3.new(93, 93, 93)
L_41_.BackgroundTransparency = 0.3
L_41_.Name = "sfrmAvailable"
L_41_.Size = UDim2.new(0, 225, 0, 100)
L_41_.Position = UDim2.new(0, 75, 0, 75)
local L_42_ = Instance.new("TextButton", L_40_)
L_42_.Name = "btnDestroy"
L_42_.Font = Enum.Font.ArialBold;
L_42_.FontSize = Enum.FontSize.Size14;
L_42_.Text = "Destroy"
L_42_.TextColor3 = Color3.new(255, 255, 255)
L_42_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_42_.Size = UDim2.new(0, 75, 0, 25)
L_42_.Position = UDim2.new(0, 75, 0, 25)
local L_43_ = Instance.new("TextButton", L_40_)
L_43_.Name = "btnDestroyAll"
L_43_.Font = Enum.Font.ArialBold;
L_43_.FontSize = Enum.FontSize.Size14;
L_43_.Text = "DestroyAll"
L_43_.TextColor3 = Color3.new(255, 255, 255)
L_43_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_43_.Size = UDim2.new(0, 75, 0, 25)
L_43_.Position = UDim2.new(0, 0, 0, 25)
local L_44_ = Instance.new("TextButton", L_40_)
L_44_.Name = "btnGotoV"
L_44_.Font = Enum.Font.ArialBold;
L_44_.FontSize = Enum.FontSize.Size14;
L_44_.Text = "Goto"
L_44_.TextColor3 = Color3.new(255, 255, 255)
L_44_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_44_.Size = UDim2.new(0, 75, 0, 25)
L_44_.Position = UDim2.new(0, 300, 0, 25)
local L_45_ = Instance.new("TextButton", L_40_)
L_45_.Name = "btnSetSpeed"
L_45_.Font = Enum.Font.ArialBold;
L_45_.FontSize = Enum.FontSize.Size14;
L_45_.Text = "SetSpeed"
L_45_.TextColor3 = Color3.new(255, 255, 255)
L_45_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
L_45_.Size = UDim2.new(0, 75, 0, 25)
L_45_.Position = UDim2.new(0, 225, 0, 25)
local L_46_ = Instance.new("TextBox", L_40_)
L_46_.BackgroundColor3 = Color3.new(0, 0, 0)
L_46_.BackgroundTransparency = 0.7
L_46_.Name = "Speed"
L_46_.Font = Enum.Font.ArialBold;
L_46_.FontSize = Enum.FontSize.Size14;
L_46_.Text = "Speed"
L_46_.TextColor3 = Color3.new(255, 255, 255)
L_46_.Size = UDim2.new(0, 75, 0, 25)
L_46_.Position = UDim2.new(0, 150, 0, 25)
local L_47_ = Instance.new("TextLabel", L_40_)
L_47_.BackgroundTransparency = 1
L_47_.Name = "lblSelV"
L_47_.Font = Enum.Font.ArialBold;
L_47_.FontSize = Enum.FontSize.Size14;
L_47_.Text = "Selected: "
L_47_.TextColor3 = Color3.new(255, 255, 255)
L_47_.Size = UDim2.new(0, 225, 0, 25)
L_47_.Position = UDim2.new(0, 75, 0, 50)
local L_48_ = Instance.new("BoolValue", L_3_)
L_48_.Name = "GodMode"
local L_49_ = Instance.new("BoolValue", L_3_)
L_49_.Name = "FloatMode"
local L_50_ = Instance.new("BoolValue", L_3_)
L_50_.Name = "NCMode"
local L_51_ = Instance.new("ObjectValue", L_3_)
L_51_.Name = "SelFrame"
local L_52_ = Instance.new("BoolValue", L_3_)
L_52_.Name = "GUIOC"
L_52_.Value = true
local L_53_ = Instance.new("BoolValue", L_3_)
L_53_.Name = "C4WalkOn"
L_53_.Value = false
local L_54_ = Instance.new("BoolValue", L_3_)
L_54_.Name = "ESPOn"
L_54_.Value = false
local L_55_ = Instance.new("BoolValue", L_3_)
L_55_.Name = "FlyOn"
L_55_.Value = false
L_51_.Value = L_13_;
L_13_.Visible = true
check()
L_5_.MouseButton1Click:connect(function()
	if L_51_.Value ~= L_13_ then
		L_51_.Value.Visible = false
		L_51_.Value.Active = false
		L_13_.Visible = true
		L_51_.Value = L_13_;
		L_13_.Active = true
	end
end)
L_6_.MouseButton1Click:connect(function()
	if L_51_.Value ~= L_19_ then
		L_51_.Value.Visible = false
		L_51_.Value.Active = false
		L_19_.Visible = true
		L_51_.Value = L_19_;
		L_19_.Active = true
	end;
	L_20_.Visible = false
end)
L_7_.MouseButton1Click:connect(function()
	if L_51_.Value ~= L_24_ then
		L_51_.Value.Visible = false
		L_51_.Value.Active = false
		L_24_.Visible = true
		L_51_.Value = L_24_;
		L_24_.Active = true
	end
end)
L_8_.MouseButton1Click:connect(function()
	if L_51_.Value ~= L_31_ then
		L_51_.Value.Visible = false
		L_51_.Value.Active = false
		L_31_.Visible = true
		L_51_.Value = L_31_;
		L_24_.Active = true
	end
end)
L_9_.MouseButton1Click:connect(function()
	if L_51_.Value ~= L_40_ then
		L_51_.Value.Visible = false
		L_51_.Value.Active = false
		L_40_.Visible = true
		L_51_.Value = L_40_;
		L_40_.Active = true
	end
end)
check()
L_10_.MouseButton1Click:connect(function()
	if L_52_.Value then
		L_4_.Visible = false
		L_4_.Active = false
		L_11_.Visible = true
		L_52_.Value = false
	end
end)
check()
L_11_.MouseButton1Click:connect(function()
	if not L_52_.Value then
		L_4_.Visible = true
		L_4_.Active = true
		L_11_.Visible = false
		L_52_.Value = true
	end
end)
function getGun()
	local L_66_ = L_2_.Backpack:GetChildren()
	for L_67_forvar1 = 1, #L_66_ do
		if L_66_[L_67_forvar1]:IsA("Model") and L_66_[L_67_forvar1]:FindFirstChild("Shooter") then
			return L_66_[L_67_forvar1]
		end
	end;
	return nil
end;
check()
L_15_.MouseButton1Click:connect(function()
	local L_68_ = getGun()
	if not L_68_ then
		L_15_.Text = "Error"
		wait()
		L_15_.Text = "Kill All"
		return
	end;
	for L_69_forvar1, L_70_forvar2 in ipairs(game.Players:GetPlayers()) do
		if L_68_ and L_70_forvar2.Character and L_70_forvar2 ~= L_2_ then
			for L_71_forvar1 = 1, 6 do
				workspace.Remote.DoHitLogic:FireServer(L_68_, L_70_forvar2.Character.Head)
			end
		end
	end
end)
L_16_.MouseButton1Click:connect(function()
	local L_72_ = game.Players:GetPlayers()
	for L_73_forvar1 = 1, #L_72_ do
		local L_74_ = L_72_[L_73_forvar1]
		if L_74_ ~= L_2_ then
			for L_75_forvar1 = 1, 20 do
				if L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1):FindFirstChild("ObjectID") then
					workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1), L_74_.playerstats.slots:FindFirstChild("slot"..L_75_forvar1).ObjectID)
				end
			end;
			if L_74_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
				workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots.slotprimary, L_74_.playerstats.slots.slotprimary.ObjectID)
			end;
			if L_74_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
				workspace.Remote.DropItem:FireServer(L_74_.playerstats.slots.slotsecondary, L_74_.playerstats.slots.slotsecondary.ObjectID)
			end;
			for L_76_forvar1 = 1, 7 do
				if L_74_.playerstats.utilityslots["slot"..L_76_forvar1]:FindFirstChild("ObjectID") then
					workspace.Remote.DropItem:FireServer(L_74_.playerstats.utilityslots["slot"..L_76_forvar1], L_74_.playerstats.utilityslots["slot"..L_76_forvar1].ObjectID)
				end
			end
		end
	end
end)
check()
L_17_.MouseButton1Click:connect(function()
	local L_77_ = game.Players:GetPlayers()
	for L_78_forvar1 = 1, #L_77_ do
		local L_79_ = L_77_[L_78_forvar1]
		if L_79_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_79_.playerstats.slots.slotprimary, L_79_.playerstats.slots.slotprimary.ObjectID)
		end;
		if L_79_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_79_.playerstats.slots.slotsecondary, L_79_.playerstats.slots.slotsecondary.ObjectID)
		end
	end
end)
L_18_.MouseButton1Click:connect(function()
	for L_80_forvar1, L_81_forvar2 in ipairs(workspace.Zombies:GetChildren()) do
		for L_82_forvar1, L_83_forvar2 in pairs(L_81_forvar2:GetChildren()) do
			if L_83_forvar2:IsA("Model") then
				workspace.Remote.DamageZombie:FireServer(L_83_forvar2:FindFirstChild("Humanoid"), 1000)
			end
		end
	end
end)
local L_56_ = game.Lighting.LootDrops:GetChildren()
local L_57_ = {}
for L_84_forvar1 = 1, #L_56_ do
	if L_56_[L_84_forvar1]:IsA("Model") then
		table.insert(L_57_, L_56_[L_84_forvar1].Name)
	end
end;
function getMatches(L_85_arg1)
	local L_86_ = {}
	for L_87_forvar1 = 1, #L_56_ do
		local L_88_ = L_56_[L_87_forvar1].Name:lower()
		if L_88_:find(L_85_arg1:lower()) then
			table.insert(L_86_, L_56_[L_87_forvar1])
		end
	end;
	table.sort(L_86_, alphabetize)
	return L_86_
end;
L_23_.Changed:connect(function()
	for L_91_forvar1, L_92_forvar2 in ipairs(L_20_:GetChildren()) do
		L_92_forvar2:Destroy()
	end;
	local L_89_ = L_23_.Text;
	local L_90_ = getMatches(L_89_)
	if L_90_ then
		L_20_.Visible = true
		L_20_.CanvasSize = UDim2.new(0, 225, 0, (#L_90_ * 25) - 25)
		for L_93_forvar1 = 1, #L_90_ do
			local L_94_ = L_90_[L_93_forvar1].Name;
			local L_95_ = Instance.new("TextButton", L_20_)
			L_95_.Font = Enum.Font.ArialBold;
			L_95_.FontSize = Enum.FontSize.Size14;
			L_95_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			L_95_.Text = L_94_;
			L_95_.TextColor3 = Color3.new(255, 255, 255)
			L_95_.TextXAlignment = Enum.TextXAlignment.Left;
			L_95_.Name = L_94_;
			L_95_.Position = UDim2.new(0, 0, 0, (L_93_forvar1 * 25) - 25)
			L_95_.Size = UDim2.new(0, 210, 0, 25)
			L_95_.MouseButton1Click:connect(function()
				L_23_.Text = L_95_.Text
			end)
		end
	end;
	if not L_90_ then
		L_20_.Visible = false
	end
end)
check()
function getNextOpenSlot()
	for L_96_forvar1 = 1, 20 do
		if not L_2_.playerstats.slots["slot"..L_96_forvar1]:FindFirstChild("ObjectID") then
			return L_96_forvar1
		end
	end
end;
function getItemID(L_97_arg1)
	if game.Lighting:FindFirstChild(L_97_arg1) then
		local L_98_ = game.Lighting:FindFirstChild(L_97_arg1).ObjectID.Value;
		return L_98_
	else
		return nil
	end
end;
function findItemFromPlayer(L_99_arg1)
	if getItemID(L_99_arg1) then
		for L_100_forvar1, L_101_forvar2 in pairs(game.Players:GetPlayers()) do
			for L_102_forvar1 = 1, 20 do
				local L_103_ = L_101_forvar2.playerstats.slots["slot"..L_102_forvar1]
				if L_103_:FindFirstChild("ObjectID") then
					if L_103_.ObjectID.Value == getItemID(L_99_arg1) then
						return L_103_
					end
				end;
				local L_104_ = L_2_.playerstats.slots.slotprimary;
				local L_105_ = L_2_.playerstats.slots.slotsecondary;
				if L_104_:FindFirstChild("ObjectID") and L_104_.ObjectID == getItemID(L_99_arg1) then
					return L_104_
				elseif L_105_:FindFirstChild("ObjectID") and L_105_.ObjectID == getItemID(L_99_arg1) then
					return L_105_
				else
					return nil
				end
			end
		end
	end
end;
L_21_.MouseButton1Click:connect(function()
	local L_106_ = L_23_.Text;
	if workspace.SpawnLoot:FindFirstChild(L_106_) then
		workspace.Remote.GrabItem:FireServer(L_2_.playerstats.slots["slot"..getNextOpenSlot()], workspace.SpawnLoot:FindFirstChild(L_106_), workspace.SpawnLoot:FindFirstChild(L_106_).ObjectID)
	elseif workspace.DropLoot:FindFirstChild(L_106_) then
		workspace.Remote.GrabItem:FireServer(L_2_.playerstats.slots["slot"..getNextOpenSlot()], workspace.DropLoot:FindFirstChild(L_106_), workspace.DropLoot:FindFirstChild(L_106_).ObjectID)
	elseif findItemFromPlayer(L_106_) then
		local L_107_ = findItemFromPlayer(L_106_)
		workspace.Remote.DropItem(L_107_, L_107_.ObjectID.Value)
	else
		local L_108_ = game.Lighting.LootDrops:FindFirstChild(L_106_)
		if not L_108_ then
			L_21_.Text = "Error"
			wait(2)
			L_21_.Text = "Spawn"
			return
		end;
		local L_109_ = L_108_:Clone()
		L_109_.Parent = workspace;
		L_109_:SetPrimaryPartCFrame(CFrame.new(L_2_.Character.Head.Position + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))))
	end
end)
function alphabetize(L_110_arg1, L_111_arg2)
	local L_112_ = L_110_arg1.Name:lower()
	local L_113_ = L_112_:sub(1, 1):byte()
	local L_114_ = L_111_arg2.Name:lower()
	local L_115_ = L_114_:sub(1, 1):byte()
	if L_113_ < L_115_ then
		return true
	else
		return false
	end
end;
local L_58_ = Instance.new("ObjectValue", L_24_)
L_58_.Name = "SelectedPlayer"
local L_59_ = game.Players:GetPlayers()
table.sort(L_59_, alphabetize)
for L_116_forvar1 = 1, #L_59_ do
	local L_117_ = L_59_[L_116_forvar1]
	local L_118_ = Instance.new("TextButton", L_25_)
	L_118_.Name = L_117_.Name;
	L_118_.Text = L_117_.Name;
	L_118_.Size = UDim2.new(0, 285, 0, 25)
	L_118_.Font = Enum.Font.ArialBold;
	L_118_.FontSize = Enum.FontSize.Size14;
	L_118_.TextColor3 = Color3.new(255, 255, 255)
	L_118_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
	L_118_.Position = UDim2.new(0, 0, 0, (L_116_forvar1 * 25) - 25)
	L_25_.CanvasSize = UDim2.new(0, 0, 0, (#L_59_ * 25) - 25)
	L_118_.MouseButton1Click:connect(function()
		L_58_.Value = L_117_;
		L_30_.Text = "Selected: "..L_117_.Name
	end)
end;
check()
function update()
	for L_120_forvar1, L_121_forvar2 in ipairs(L_25_:GetChildren()) do
		if L_121_forvar2:IsA("TextButton") then
			L_121_forvar2:Destroy()
		end
	end;
	local L_119_ = game.Players:GetPlayers()
	table.sort(L_119_, alphabetize)
	for L_122_forvar1 = 1, #L_119_ do
		local L_123_ = L_119_[L_122_forvar1]
		local L_124_ = Instance.new("TextButton", L_25_)
		L_124_.Text = L_123_.Name;
		L_124_.Size = UDim2.new(0, 285, 0, 25)
		L_124_.Font = Enum.Font.ArialBold;
		L_124_.FontSize = Enum.FontSize.Size14;
		L_124_.TextColor3 = Color3.new(255, 255, 255)
		L_124_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
		L_124_.Position = UDim2.new(0, 0, 0, (L_122_forvar1 * 25) - 25)
		L_25_.CanvasSize = UDim2.new(0, 0, 0, (#L_119_ * 25) - 25)
		L_124_.MouseButton1Click:connect(function()
			L_58_.Value = L_123_;
			L_30_.Text = "Selected: "..L_123_.Name
		end)
	end
end;
game.Players.PlayerAdded:connect(update)
game.Players.PlayerRemoving:connect(update)
L_27_.MouseButton1Click:connect(function()
	local L_125_ = getGun()
	if not L_125_ or not L_58_.Value then
		L_27_.Text = "Error"
		wait(2)
		L_27_.Text = "Kill"
		return
	end;
	for L_126_forvar1 = 1, 10 do
		workspace.Remote.DoHitLogic:FireServer(L_125_, L_58_.Value.Character.Head)
	end
end)
L_28_.MouseButton1Click:connect(function()
	local L_127_ = L_58_.Value;
	if not L_58_.Value then
		L_27_.Text = "Error"
		wait(2)
		L_27_.Text = "Kill"
		return
	end;
	for L_128_forvar1 = 1, 20 do
		if L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1):FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1), L_127_.playerstats.slots:FindFirstChild("slot"..L_128_forvar1).ObjectID)
		end;
		if L_127_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots.slotprimary, L_127_.playerstats.slots.slotprimary.ObjectID)
		end;
		if L_127_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.slots.slotsecondary, L_127_.playerstats.slots.slotsecondary.ObjectID)
		end
	end;
	for L_129_forvar1 = 1, 7 do
		if L_127_.playerstats.utilityslots["slot"..L_129_forvar1]:FindFirstChild("ObjectID") then
			workspace.Remote.DropItem:FireServer(L_127_.playerstats.utilityslots["slot"..L_129_forvar1], L_127_.playerstats.utilityslots["slot"..L_129_forvar1].ObjectID)
		end
	end
end)
L_29_.MouseButton1Click:connect(function()
	local L_130_ = L_58_.Value;
	if not L_58_.Value then
		L_27_.Text = "Error"
		wait(2)
		L_27_.Text = "Kill"
		return
	end;
	if L_130_.playerstats.slots.slotprimary:FindFirstChild("ObjectID") then
		workspace.Remote.DropItem:FireServer(L_130_.playerstats.slots.slotprimary, L_130_.playerstats.slots.slotprimary.ObjectID)
	end;
	if L_130_.playerstats.slots.slotsecondary:FindFirstChild("ObjectID") then
		workspace.Remote.DropItem:FireServer(L_130_.playerstats.slots.slotsecondary, L_130_.playerstats.slots.slotsecondary.ObjectID)
	end
end)
function removeGui()
	for L_131_forvar1, L_132_forvar2 in pairs(L_2_.PlayerGui:GetChildren()) do
		if L_132_forvar2 ~= L_3_ then
			L_132_forvar2:Destroy()
		end
	end;
	for L_133_forvar1, L_134_forvar2 in pairs(L_2_.Character:GetChildren()) do
		if L_134_forvar2:IsA("Script") or L_134_forvar2:IsA("LocalScript") then
			L_134_forvar2:Destroy()
		end
	end
end;
function noclip()
	for L_135_forvar1, L_136_forvar2 in pairs(L_2_.Character:GetChildren()) do
		if L_136_forvar2:IsA("Part") then
			L_136_forvar2.CanCollide = false
		end
	end
end;
L_26_.MouseButton1Click:connect(function()
	local L_137_ = L_58_.Value;
	removeGui()
	spawn(function()
		while true do
			wait()
			L_2_.Character.Humanoid.Sit = true
		end
	end)
	local L_138_ = Instance.new("ScreenGui", L_2_.PlayerGui)
	L_138_.Name = "VehicleHUD"
	wait(1)
	L_2_.Character.HumanoidRootPart.CFrame = CFrame.new(L_137_.Character.Head.Position + Vector3.new(0, 5, 0))
end)
L_33_.MouseButton1Click:connect(function()
	if not L_48_.Value then
		if L_2_.Character then
			L_2_.Character.Humanoid.Name = 1
			local L_139_ = L_2_.Character["1"]:Clone()
			L_139_.Parent = L_2_.Character;
			L_139_.Name = "Humanoid"
			wait(0.1)
			L_2_.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = L_2_.Character;
			L_2_.Character.Animate.Disabled = true
			wait(0.1)
			L_2_.Character.Animate.Disabled = false
			L_2_.Character.Humanoid.DisplayDistanceType = "None"
			L_48_.Value = true
			L_33_.Text = "God: ON"
		end
	else
		L_33_.Text = "Can't be disabled"
		wait(2)
		L_33_.Text = "God: ON"
	end
end)
L_34_.MouseButton1Click:connect(function()
	L_2_.playerstats.Hunger.Value = 100
end)
L_35_.MouseButton1Click:connect(function()
	L_2_.playerstats.Thirst.Value = 100
end)
check()
L_37_.MouseButton1Click:connect(function()
	if not L_53_.Value then
		L_53_.Value = true
		L_37_.Text = "C4Walk: ON"
		spawn(function()
			while true do
				workspace.Remote.PlaceC4:FireServer(game.Lighting.Materials.C4Placed, L_2_.Character.Torso.Position - Vector3.new(1, 3, 1), true)
				wait(0.5)
				if (not L_53_.Value) or L_2_.playerstats.Health == 0 then
					break
				end
			end
		end)
	else
		L_53_.Value = false
		L_37_.Text = "C4Walk: OFF"
	end
end)
L_38_.MouseButton1Click:connect(function()
	if not L_54_.Value then
		L_54_.Value = true
		L_38_.Text = "ESP: ON"
		local function L_140_func(L_142_arg1)
			if L_142_arg1.Character then
				local L_143_ = Instance.new("BillboardGui", L_2_.PlayerGui)
				L_143_.Adornee = L_142_arg1.Character.Head;
				L_143_.AlwaysOnTop = true
				L_143_.Enabled = true
				L_143_.Active = false
				L_143_.Size = UDim2.new(0, 25, 0, 12.5)
				local L_144_ = Instance.new("TextLabel", L_143_)
				L_144_.Size = UDim2.new(0, 25, 0, 12.5)
				L_144_.BackgroundColor3 = Color3.new(255, 255, 0)
				L_144_.BackgroundTransparency = 0.7
				L_144_.TextScaled = true
				spawn(function()
					while true do
						for L_145_forvar1 = 1, 30 do
							wait(0.1)
							L_144_.Text = math.floor((L_2_.Character.Head.Position - L_142_arg1.Character.Head.Position).magnitude).." m"
						end;
						L_144_.TextScaled = false
						L_144_.Text = L_142_arg1.Name;
						wait(3)
						L_144_.TextScaled = true
						if not L_54_.Value then
							break
						end
					end
				end)
			end
		end;
		local function L_141_func(L_146_arg1)
			local L_147_ = Instance.new("BillboardGui", L_2_.PlayerGui)
			L_147_.Adornee = L_146_arg1.PrimaryPart;
			L_147_.AlwaysOnTop = true
			L_147_.Enabled = true
			L_147_.Active = false
			L_147_.Size = UDim2.new(0, 25, 0, 12.5)
			local L_148_ = Instance.new("TextLabel", L_147_)
			L_148_.Size = UDim2.new(0, 25, 0, 12.5)
			L_148_.BackgroundColor3 = Color3.new(0, 255, 0)
			L_148_.BackgroundTransparency = 0.7
			L_148_.TextScaled = true
			spawn(function()
				while true do
					for L_149_forvar1 = 1, 30 do
						wait(0.1)
						L_148_.Text = math.floor((L_2_.Character.Head.Position - L_146_arg1.PrimaryPart.Position).magnitude).." m"
					end;
					L_148_.Text = L_146_arg1.Name;
					wait(3)
					if not L_54_.Value then
						break
					end
				end
			end)
		end;
		for L_150_forvar1, L_151_forvar2 in pairs(game.Players:GetPlayers()) do
			if workspace:FindFirstChild(L_151_forvar2.Name) and L_151_forvar2.Character and L_151_forvar2 ~= L_2_ and L_54_.Value then
				L_140_func(L_151_forvar2)
			end
		end;
		for L_152_forvar1, L_153_forvar2 in pairs(getVehicles()) do
			if L_153_forvar2 then
				L_141_func(L_153_forvar2)
			end
		end;
		game.Players.PlayerAdded:connect(function(L_154_arg1)
			workspace:WaitForChild(L_154_arg1.Name)
			if L_54_.Value then
				L_140_func(L_154_arg1)
			end
		end)
	else
		for L_155_forvar1, L_156_forvar2 in ipairs(L_2_.PlayerGui:GetChildren()) do
			if L_156_forvar2:IsA("BillboardGui") then
				L_156_forvar2:Destroy()
			end
		end;
		L_54_.Value = false
		L_38_.Text = "ESP: OFF"
	end
end)
L_39_.MouseButton1Click:connect(function()
	if not L_55_.Value then
		L_55_.Value = true
		L_39_.Text = "Fly: ON"
		local L_157_ = L_2_.Character.Torso;
		bv = Instance.new("BodyVelocity", L_157_)
		bg = Instance.new("BodyGyro", L_157_)
		bg.MaxTorque = Vector3.new(1000000000000, 1000000000000, 1000000000000)
		bv.MaxForce = Vector3.new(1000000000000, 1000000000000, 1000000000000)
		bv.P = 3000
		local L_158_ = 300
		keysEnabled = game:GetService("UserInputService").InputBegan:connect(function(L_159_arg1)
			local L_160_ = L_159_arg1.KeyCode;
			if L_160_ ~= Enum.KeyCode.W and L_160_ ~= Enum.KeyCode.A and L_160_ ~= Enum.KeyCode.S and L_160_ ~= Enum.KeyCode.D and L_160_ ~= Enum.KeyCode.Q and L_160_ ~= Enum.KeyCode.E then
				return
			end;
			local L_161_ = true
			while true do
				if L_161_ then
					wait()
					if not L_161_ then
						break
					end;
					keyup = game:GetService("UserInputService").InputEnded:connect(function(L_162_arg1)
						if L_162_arg1.KeyCode == L_160_ then
							L_161_ = false
						end
					end)
					if L_160_ == Enum.KeyCode.W then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(1, 0, 0), -math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.S then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(1, 0, 0), math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.A then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(0, 0, 1), math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.D then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(0, 0, 1), -math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.Q then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.E then
						bg.CFrame = L_157_.CFrame * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 10)
					end;
					if L_160_ == Enum.KeyCode.Up then
						L_158_ = L_158_ + 200
					end;
					if L_160_ == Enum.KeyCode.Down then
						L_158_ = L_158_ - 200
					end;
					bv.Velocity = bg.CFrame.lookVector * L_158_;
					L_2_.Character.Humanoid.Sit = true
					if not L_2_.Character.Humanoid.Sit then
						break
					end;
					if not L_161_ then
						break
					end
				else
					break
				end
			end
		end)
	else
		keysEnabled:disconnect()
		keyup:disconnect()
		bv.Velocity = Vector3.new()
		bv:Destroy()
		bg:Destroy()
		L_55_.Value = false
		L_39_.Text = "Fly: OFF"
	end
end)
local L_60_ = Instance.new("ObjectValue", L_3_)
L_60_.Name = "SelectedVehicle"
function getVehicles()
	local L_163_ = game.Workspace.Vehicles:GetChildren()
	local L_164_ = {}
	for L_165_forvar1 = 1, #L_163_ do
		if L_163_[L_165_forvar1].Name ~= "Holder" and L_163_[L_165_forvar1].Name ~= "VehicleWreck" then
			table.insert(L_164_, L_163_[L_165_forvar1])
		end
	end;
	table.sort(L_164_, alphabetize)
	return L_164_
end;
check()
local L_61_ = getVehicles()
for L_166_forvar1 = 1, #L_61_ do
	local L_167_ = L_61_[L_166_forvar1]
	local L_168_ = Instance.new("TextButton", L_41_)
	L_168_.Name = L_167_.Name;
	L_168_.Text = L_167_.Name;
	L_168_.Size = UDim2.new(0, 210, 0, 25)
	L_168_.Font = Enum.Font.ArialBold;
	L_168_.FontSize = Enum.FontSize.Size14;
	L_168_.TextColor3 = Color3.new(255, 255, 255)
	L_168_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
	L_168_.Position = UDim2.new(0, 0, 0, (L_166_forvar1 * 25) - 25)
	L_41_.CanvasSize = UDim2.new(0, 0, 0, (#L_61_ * 25))
	L_168_.MouseButton1Click:connect(function()
		L_60_.Value = L_167_;
		L_47_.Text = "Selected: "..L_167_.Name
	end)
end;
function updateV()
	for L_170_forvar1, L_171_forvar2 in pairs(L_41_:GetChildren()) do
		L_171_forvar2:Destroy()
	end;
	local L_169_ = getVehicles()
	for L_172_forvar1 = 1, #L_169_ do
		local L_173_ = L_169_[L_172_forvar1]
		local L_174_ = Instance.new("TextButton", L_41_)
		L_174_.Name = L_173_.Name;
		L_174_.Text = L_173_.Name;
		L_174_.Size = UDim2.new(0, 210, 0, 25)
		L_174_.Font = Enum.Font.ArialBold;
		L_174_.FontSize = Enum.FontSize.Size14;
		L_174_.TextColor3 = Color3.new(255, 255, 255)
		L_174_.Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
		L_174_.Position = UDim2.new(0, 0, 0, (L_172_forvar1 * 25) - 25)
		L_41_.CanvasSize = UDim2.new(0, 0, 0, (#L_169_ * 25))
		L_174_.MouseButton1Click:connect(function()
			L_60_.Value = L_173_;
			L_47_.Text = "Selected: "..L_173_.Name
		end)
	end
end;
spawn(function()
	while true do
		updateV()
		wait(1)
	end
end)
L_42_.MouseButton1Click:connect(function()
	local L_175_ = L_60_.Value;
	if L_175_ and L_175_:FindFirstChild("Stats") and L_175_.Name ~= "Bicycle" then
		L_175_.Stats.Engine.Value = 0
	else
		L_42_.Text = "Error"
		wait(2)
		L_42_.Text = "Destroy"
	end
end)
L_43_.MouseButton1Click:connect(function()
	local L_176_ = getVehicles()
	for L_177_forvar1 = 1, #L_176_ do
		local L_178_ = L_60_.Value;
		if L_178_ and L_178_:FindFirstChild("Stats") and L_178_.Name ~= "Bicycle" then
			L_178_.Stats.Engine.Value = 0
		end
	end
end)
L_45_.MouseButton1Click:connect(function()
	local L_179_ = L_60_.Value;
	if L_179_ and L_179_:FindFirstChild("Stats") and tonumber(L_46_.Text) then
		L_179_.Stats.MaxSpeed.Value = L_46_.Text;
		L_179_.Stats.MaxSpeed.Offroad.Value = L_46_.Text
	else
		L_45_.Text = "Error"
		wait(2)
		L_45_.Text = "SetSpeed"
	end
end)
L_44_.MouseButton1Click:connect(function()
	if L_48_.Value and L_60_.Value then
		local L_180_ = L_60_.Value;
		L_2_.Character.HumanoidRootPart.CFrame = CFrame.new(L_180_.PrimaryPart.Position + Vector3.new(0, 7, 0))
	else
		L_44_.Text = "Error"
		wait(2)
		L_44_.Text = "Goto"
	end
end)
L_2_.PlayerGui.SkyboxRenderMode:Destroy()
L_2_.PlayerGui.SkyboxRenderMode:Destroy()