C.Function.CreateModule("QuickAccess", function(Self, Msg)
	local Position = UDim2.new(1, 0, 0.65, -100)
	Self.Gui = new("ScreenGui")
	Self.Gui.Name = "CoolCMDs Quick Access Gui"
	local Button = new("ImageButton", Self.Gui)
	Button.Name = "Button"
	Button.AutoButtonColor = false
	Button.Size = UDim2.new(0, 200, 0, 200)
	Button.Position = Position + UDim2.new(0, 200, 0, 0)
	Button.BackgroundTransparency = 1
	Button.BorderSizePixel = 0
	Button.Image = "http://www.roblox.com/Asset/?id=52973481"
	local Close = Button:Clone()
	Close.Parent = Button
	Close.Name = "Close"
	Close.Size = UDim2.new(0, 16, 0, 16)
	Close.Position = UDim2.new(0, 10, 0, 10)
	Close.Image = "rbxasset://textures/ui/CloseButton.png"
	local Open = Close:Clone()
	Open.Parent = Self.Gui
	Open.Name = "Open"
	Open.Size = UDim2.new(0, 32, 0, 32)
	Open.Position = Position + UDim2.new(0, 200, 0, 84)
	Open.Image = "rbxasset://textures/ui/playerlist_hidden_small.png"
	Self.GuiSubmenu = new("TextButton")
	Self.GuiSubmenu.Name = "Submenu"
	Self.GuiSubmenu.Text = "Submenu"
	Self.GuiSubmenu.Size = UDim2.new(1, -20, 0, 20)
	Self.GuiSubmenu.TextColor3 = Color3.new(1, 1, 1)
	Self.GuiSubmenu.BackgroundTransparency = 0.3
	Self.GuiSubmenu.BackgroundColor3 = Color3.new(0, 0, 0.35)
	Self.GuiSubmenu.BorderSizePixel = 1
	Self.GuiSubmenu.BorderColor3 = Color3.new(0, 0, 0.2)
	function Self.GiveGui(Player)
		if Player == nil then return false end
		if Player:FindFirstChild("PlayerGui") == nil then return false end
		local MenuOpen = false
		local ButtonOpen = false
		local Menu = nil
		local MenuItems = nil
		local Gui = nil
		local function Expand()
			ButtonOpen = true
			Gui.Button:TweenPosition(Position + UDim2.new(0, -200, 0, 0), "Out", "Quad", 0.5, true)
			Gui.Open:TweenPosition(Position + UDim2.new(0, 0, 0, 84), "In", "Quad", 0.5, true)
			pcall(function() Menu:TweenPosition(Position + UDim2.new(0, -520, 0, -10), "Out", "Quart", 0.5, true) end)
		end
		local function Contract()
			ButtonOpen = false
			Gui.Button:TweenPosition(Position, "In", "Quad", 0.5, true)
			Gui.Open:TweenPosition(Position + UDim2.new(0, -32, 0, 84), "Out", "Quad", 0.5, true)
			pcall(function() Menu:TweenPosition(Position + UDim2.new(0, 0, 0, -10), "In", "Quart", 0.5, true) end)
		end
		local function RemoveMenu()
			if Menu == nil then MenuOpen = false return end
			MenuOpen = -1
			local Part = Menu:children()
			for i = #Part, 1, -1 do
				coroutine.wrap(function()
					local Transparency = Part[i].BackgroundTransparency
					for x = Part[i].BackgroundTransparency, 1, 0.05 do
						Part[i].BackgroundTransparency = x
						Part[i].TextTransparency = 1 - (Transparency / x)
						wait()
					end
					Part[i]:Remove()
				end)()
				wait(0.15)
			end
			local OldMenu = Menu
			Menu = nil
			MenuOpen = false
			wait(0.25)
			for i = OldMenu.BackgroundTransparency, 1, 0.01 do
				OldMenu.BackgroundTransparency = i
				wait()
			end
			OldMenu:Remove()
		end
		local function ShowMenu(Level)
			if Level == nil then Level = {} end
			MenuOpen = -1
			if Menu ~= nil then
				for _, Part in pairs(Menu:children()) do
					Part:Remove()
				end
			else
				Menu = new("Frame", Gui)
				Menu.Name = "Menu"
				Menu.BackgroundTransparency = 0.75
				Menu.BackgroundColor3 = Color3.new(0, 0, 0.25)
				Menu.BorderSizePixel = 0
				Menu.Position = Position + UDim2.new(0, 0, 0, -10)
				Menu:TweenPosition(Position + UDim2.new(0, -520, 0, -10), "Out", "Quad", 0.5, true)
			end
			Menu.Size = UDim2.new(0, 320, 0, 20)
			local Source = MenuItems
			for i = 1, #Level do
				Source = Source[Level[i] * 2]
			end
			for i = 1, #Source, 2 do
				local Tag = Self.GuiSubmenu:Clone()
				Tag.Parent = Menu
				Tag.Text = (string.sub(Source[i], 0, 5) == "_REM " and string.sub(Source[i], 6) or Source[i]) .. (type(Source[i + 1]) == "table" and " >" or "")
				Tag.Position = UDim2.new(0, 10, 0, (20 * ((i - 1) / 2)) + 10)
				Tag.MouseButton1Up:connect(function()
					if MenuOpen ~= true then return end
					if type(Source[i + 1]) == "table" then
						table.insert(Level, (i + 1) / 2)
						ShowMenu(Level)
					elseif type(Source[i + 1]) == "function" then
						coroutine.wrap(function() Source[i + 1]() end)()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								Tag.BackgroundColor3 = Color3.new(i, i, i + ((1 - i) * 0.35))
								wait()
							end
							Tag.BackgroundColor3 = Color3.new(0, 0, 0.35)
						end)()
					end
				end)
				if string.sub(Source[i], 0, 5) == "_REM " then
					local Close = Gui.Button.Close:Clone()
					Close.Parent = Tag
					Close.Size = UDim2.new(0, 16, 0, 16)
					Close.Position = UDim2.new(0, 2, 0, 2)
					Close.MouseButton1Down:connect(function()
						Close.Image = "rbxasset://textures/ui/CloseButton_dn.png"
					end)
					Close.MouseButton1Up:connect(function()
						if MenuOpen ~= true then return end
						Close.Image = "rbxasset://textures/ui/CloseButton.png"
						table.remove(Source, i)
						table.remove(Source, i)
						ShowMenu(Level)
					end)
					Close.MouseLeave:connect(function()
						Close.Image = "rbxasset://textures/ui/CloseButton.png"
					end)
				end
				Menu.Size = Menu.Size + UDim2.new(0, 0, 0, 20)
			end
			if #Level > 0 then
				local Tag = Self.GuiSubmenu:Clone()
				Tag.Parent = Menu
				Tag.Text = "Back >"
				Tag.Position = UDim2.new(0, 10, 1, -30)
				Tag.MouseButton1Up:connect(function()
					if MenuOpen ~= true then return end
					table.remove(Level, #Level)
					ShowMenu(Level)
				end)
				Menu.Size = Menu.Size + UDim2.new(0, 0, 0, 20)
			end
			MenuOpen = true
		end
		local function Hook()
			Gui = Self.Gui:Clone()
			Gui.Parent = Player.PlayerGui
			Gui.Button.MouseButton1Down:connect(function()
				Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973492"
			end)
			Gui.Button.MouseButton1Up:connect(function()
				Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973481"
				if ButtonOpen == false then return end
				if MenuOpen == true then
					RemoveMenu()
				elseif MenuOpen == false then
					ShowMenu()
				end
			end)
			Gui.Button.MouseLeave:connect(function()
				Gui.Button.Image = "http://www.roblox.com/Asset/?id=52973481"
			end)
			Gui.Button.Close.MouseButton1Down:connect(function()
				Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton_dn.png"
			end)
			Gui.Button.Close.MouseButton1Up:connect(function()
				Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton.png"
				Contract()
			end)
			Gui.Button.Close.MouseLeave:connect(function()
				Gui.Button.Close.Image = "rbxasset://textures/ui/CloseButton.png"
			end)
			Gui.Open.MouseButton1Down:connect(function()
				Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_dn.png"
			end)
			Gui.Open.MouseButton1Up:connect(function()
				Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_ovr.png"
				Expand()
			end)
			Gui.Open.MouseLeave:connect(function()
				Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small.png"
			end)
			Gui.Open.MouseEnter:connect(function()
				Gui.Open.Image = "rbxasset://textures/ui/playerlist_hidden_small_ovr.png"
			end)
			Expand()
		end
		Player.Changed:connect(function(Property)
			if Property == "Character" and Self.Enabled == true then
				while Player:FindFirstChild("PlayerGui") == nil do wait() end
				Hook()
			end
		end)
		Hook()
		MenuItems = {
			"Command binds", {
				"Add bind", function()
					if C.Function.IsModuleEnabled("GuiSupport") == false then
						C.Function.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Player)
						return
					elseif C.Function.GetModule("GuiSupport") == nil then
						C.Function.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Player)
						return
					end
					coroutine.wrap(function()
						local Window = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -250 / 2, 0.5, -250 / 2), UDim2.new(0, 250, 0, 250), Gui, "Add Bind", true, false, false, false, true)
						Window.Icon.Image = "http://www.roblox.com/Asset/?id=42154070"
						local Label = new("TextLabel", Window.Content)
						Label.Name = "Bind Name"
						Label.Text = "Bind name:"
						Label.BackgroundColor3 = Window.Content.BackgroundColor3
						Label.BorderSizePixel = 0
						Label.BackgroundTransparency = 1
						Label.TextColor3 = Color3.new(0, 0, 0)
						Label.TextWrap = true
						Label.TextXAlignment = "Left"
						Label.TextYAlignment = "Top"
						Label.Size = UDim2.new(1, -2, 0, 20)
						Label.Position = UDim2.new(0, 1, 0, 5)
						local TextBox = new("TextBox", Window.Content)
						TextBox.Name = "Bind Name Input"
						TextBox.Text = ""
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Size = UDim2.new(1, -10, 0, 20)
						TextBox.Position = UDim2.new(0, 5, 0, 25)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						local Label = Label:Clone()
						Label.Parent = Window.Content
						Label.Name = "Command"
						Label.Text = "Command (with arguments, if some exist):"
						Label.Position = UDim2.new(0, 1, 0, 65)
						local TextBox = TextBox:Clone()
						TextBox.Parent = Window.Content
						TextBox.Name = "Command Input"
						TextBox.Position = UDim2.new(0, 5, 0, 85)
						local Button = new("TextButton", Window.Content)
						Button.Text = "Create Bind"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0.5, -40, 1, -50)
						Button.MouseButton1Up:connect(function()
							local Command = Window.Content["Command Input"].Text
							table.insert(MenuItems[2], 3, function() C.Function.CatchChat(Command, Player) end)
							table.insert(MenuItems[2], 3, "_REM " ..Window.Content["Bind Name Input"].Text)
							Window:Remove()
							ShowMenu({1})
						end)
					end)()
				end,
				"- Presets -", nil,
				"Help", function() C.Function.CatchChat("!help", Player) end,
				"Respawn", function() C.Function.CatchChat("!respawnme", Player) end,
				"Group information", function() C.Function.CatchChat("!status;group", Player) end
			},
			"Lag meter [Off]", function()
				if Self[Player.Name] == nil then Self[Player.Name] = {} end
				if Self[Player.Name].LagMeter == nil then Self[Player.Name].LagMeter = false end
				if Self[Player.Name].LagMeter == false then
					Self[Player.Name].LagMeter = true
					MenuItems[3] = "Lag meter [On]"
					ShowMenu()
					local Hint = new("Hint")
					while Self[Player.Name].LagMeter == true and Self.Enabled == true do
						pcall(function() Hint.Parent = Player.PlayerGui end)
						Hint.Text = "[Lag Meter] The speed of the server is " ..(function()
							local Time = wait()
							if Time <= 0.0375 then
								return "very fast"
							elseif Time <= 0.05 then
								return "fast"
							elseif Time <= 0.075 then
								return "average"
							elseif Time <= 0.1 then
								return "somewhat slow"
							elseif Time <= 0.15 then
								return "slow"
							elseif Time <= 0.2 then
								return "very slow"
							elseif Time <= 0.35 then
								return "very VERY slow"
							else
								return "down to a crawl"
							end
						end)().. "."
						wait(0.1)
					end
					Hint:Remove()
				else
					Self[Player.Name].LagMeter = false
					MenuItems[3] = "Lag meter [Off]"
					ShowMenu()
				end
			end,
			"Reconnect chat", function()
				pcall(function() C.Function.GetPlayerTable(Player.Name).Connection:disconnect() end)
				C.Function.GetPlayerTable(Player.Name).Connection = Player.Chatted:connect(function(Msg) C.Function.CatchChat(Msg, Player) end)
			end
		}
	end
	Self.HookGiveGui = Players.ChildAdded:connect(function(Player) wait(1) Self.GiveGui(Player) end)
	for _, Player in pairs(Players:GetPlayers()) do
		Self.GiveGui(Player)
	end
	return true
end, function(Self, Msg)
	pcall(function() Self.HookGiveGui:disconnect() end)
	Self.HookGiveGui = nil
	Self.GiveGui = nil
	Self.Gui = nil
	Self.GuiSubmenu = nil
	for _, Player in pairs(Players:GetPlayers()) do
		pcall(function() Player.PlayerGui["CoolCMDs Quick Access Gui"]:Remove() end)
		wait()
	end
	return true
end, "Gui control for CoolCMDs.")