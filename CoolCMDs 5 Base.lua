script.Name = "£€ CoolCMDs 5 €£"
script.Parent = nil


setmetatable(getfenv(), {
	__index = function(x, y)
		print(x, y, z)
		local ServiceFound, Service = pcall(function() return game:GetService(x) end)
		if ServiceFound == true then
			return Service
		else
			return x[y]
		end
	end
})


C = {}
C.Error = {
	0x000, 0, "OK",
	0x001, 3, "Unknown error",
	0x002, 2, "Unknown command",
	0x003, 2, "Invalid command argument",
	0x004, 2, "Wrong number of command arguments",
	0x005, 1, "Invalid repeat argument",
	0x006, 2, "Unknown function",
	0x007, 2, "Invalid function argument",
	0x008, 2, "Wrong number of function arguments",
	0x009, 1, "Command failed (returned false)",
	0x00A, 2, "Command failed (returned unexpected value)",
	0x00B, 3, "Command generated error",
	0x00C, 3, "Command failed (returned nil)",
	0x00D, 3, "Read error",
	0x00E, 3, "Write error",
	0x00F, 2, "Module failed (returned false)",
	0x010, 3, "Module failed (returned unexpected value)",
	0x011, 3, "Module generated error",
	0x012, 3, "Module failed (returned nil)",
	0x013, 3, "Incorrect access code"
}

C.Data = {}
C.Data.Version = "5 R1"
C.Data.AccessCode = 1234
C.Data.ParseBegin = "!"
C.Data.LineBreak = " \\ "
C.Data.LineRepeat = "#"
C.Data.FunctionEscape = "&\t(\t)"

C.Function = {}
C.Function.LoadPlayerData = function() end
C.Function.SavePlayerData = function() end
C.Function.RemovePlayerData = function() end

C.Init = {}
C.Init.StartTime = -1
C.Init.ElapsedTime = -1
C.Init.FinishTime = -1
C.Init.Initialized = false
setmetatable(C.Init, {__call = function(_, Show)
	C.Init.StartTime = tick()
	Players.ChildAdded:connect(function(Player)
		if Player.ClassName ~= "Player" then return end
		C.Function.LoadPlayerData(Player)
	end)
	Players.ChildRemoved:connect(function(Player)
		if Player.ClassName ~= "Player" then return end
		C.Function.SavePlayerData(Player)
		C.Function.RemovePlayerData(Player)
	end)
	for _, Player in pairs(Players:GetPlayers()) do
		pcall(function()
			if Player.ClassName == "Player" then
				C.Function.LoadPlayerData(Player)
			end
		end)
	end
	C.Function.LoadModule(true, nil, false)
	C.Init.FinishTime = tick()
	C.Init.ElapsedTime = C.Init.FinishTime - C.Init.StartTime
	C.Init.Initialized = true
	if Show == true then
		for _, Player in pairs(Players:GetPlayers()) do
			if Player:FindFirstChild("PlayerGui") ~= nil then
				coroutine.wrap(function()
					local Gui = new("ScreenGui", Player.PlayerGui)
					Gui.Name = "CoolCMDs Gui"
					local Button = new("ImageButton", Gui)
					Button.Name = "Button"
					Button.AutoButtonColor = false
					Button.Size = UDim2.new(0, 0, 0, 0)
					Button.Position = UDim2.new(0.5, 0, 0.5, 0)
					Button.BackgroundTransparency = 0.5
					Button.BackgroundColor3 = Color3.new(0, 0, 0)
					Button.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Button:TweenSizeAndPosition(UDim2.new(0, 400, 0, 400), UDim2.new(0.5, -200, 0.5, -200), "Out", "Quad", 1.5, false)
					local Label1 = new("TextLabel", Gui)
					Label1.Size = UDim2.new(0, 400, 0, 30)
					Label1.Position = UDim2.new(0.5, -200, 0.5, -230)
					Label1.BackgroundColor3 = Color3.new(0, 0, 0)
					Label1.BackgroundTransparency = 1
					Label1.TextTransparency = 1
					Label1.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Label1.Text = ""
					Label1.TextColor3 = Color3.new(1, 1, 1)
					Label1.FontSize = "Size12"
					local Label2 = new("TextLabel", Gui)
					Label2.Size = UDim2.new(0, 400, 0, 30)
					Label2.Position = UDim2.new(0.5, -200, 0.5, 200)
					Label2.BackgroundColor3 = Color3.new(0, 0, 0)
					Label2.BackgroundTransparency = 1
					Label2.TextTransparency = 1
					Label2.BorderColor3 = Color3.new(0.25, 0.25, 0.25)
					Label2.Text = "(Click the image to close this GUI)"
					Label2.TextColor3 = Color3.new(1, 1, 1)
					Label2.FontSize = "Size8"
					wait(1.5)
					local Clicked = false
					coroutine.wrap(function()
						while Gui.Parent ~= nil and Clicked == false do
							Button.Image = "http://www.roblox.com/Asset/?id=54995031"
							Label1.Text = "CoolCMDs version " ..C.Data.Version.. " loaded successfully."
							wait(2.5)
							if Gui.Parent == nil or Clicked == true then break end
							Button.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=400&y=400&Format=Png&username=DarkShadow6"
							Label1.Text = string.reverse(".6wodahSkraD yb detaerC")
							wait(2.5)
						end
					end)()
					for i = 1, 0, -0.05 do
						Label1.TextTransparency = i
						Label1.BackgroundTransparency = (i * 0.5) + 0.5
						Label2.TextTransparency = i
						Label2.BackgroundTransparency = (i * 0.5) + 0.5
						wait()
					end
					Label1.BackgroundTransparency = 0.5
					Label1.TextTransparency = 0
					Label1.BackgroundTransparency = 0.5
					Label1.TextTransparency = 0
					Button.MouseButton1Up:connect(function()
						if Clicked == true then return end
						Clicked = true
						Label1.Text = ""
						Label2.Text = ""
						Button:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						Label1:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						Label2:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Back", 1, false)
						wait(1)
						Gui:Remove()
					end)
				end)()
			end
		end
	end
end})

C.Init(true)

--[[
Note added on Feb. 12, 2012
I never finished this because I left Roblox in the middle of the creation process.
I was going to add SO MUCH to it... But, sadly, Roblox broke everything again and didn't fix it, claiming it was a "feature".
--]]