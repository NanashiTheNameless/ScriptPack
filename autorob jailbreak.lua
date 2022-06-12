function Get(model)
	return game:GetService'Workspace'[tostring(model)]:GetChildren()[1].Extra:FindFirstChild'Sign'.Decal;
end

function goto(x, y, z)
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
end

function Scan(Start, End)
	Result = {}
	Box = Region3.new(Start, End)
	for _,Part in pairs(game.Workspace:FindPartsInRegion3(Box,nil,100)) do
		if Part.Parent ~= nil then
			if Game:GetService("Players"):findFirstChild(Part.Parent.Name) then
				if Part.Parent.Humanoid ~= nil then
					table.insert(Result, Game:GetService("Players"):WaitForChild(Part.Parent.Name))
				end
			end
		end
	end
	return Result
end

local toggle = false;

local PlutoGUI = Instance.new("ScreenGui")
PlutoGUI.Name = "PlutoGUI"
PlutoGUI.Parent = game.CoreGui
PlutoGUI.ResetOnSpawn = false
-------
local Main = Instance.new("Frame")
Main.BackgroundColor3 = Color3.new(0.647059, 0.643137, 0.654902)
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0, 22, 0, 500)
Main.Size = UDim2.new(0, 200, 0, 150)
Main.ClipsDescendants = true
Main.Draggable = true
Main.Parent = PlutoGUI
-------
local Title = Instance.new("TextLabel")
Title.Active = true
Title.BorderColor3 = Color3.new(1, 1, 1)
Title.BorderSizePixel = 2
Title.Name = "Title"
Title.Size = UDim2.new(0, 200, 0, 25)
Title.Font = Enum.Font.Legacy
Title.FontSize = Enum.FontSize.Size10
Title.Text = "PlutoGFX's AutoRob | OFF"
Title.Parent = Main
-------
local Status = Instance.new("TextLabel")
Status.Active = true
Status.BackgroundTransparency = 1
Status.BorderColor3 = Color3.new(1, 1, 1)
Status.BorderSizePixel = 2
Status.Name = "Status"
Status.Position = UDim2.new(0, 0, 0, 30)
Status.Size = UDim2.new(0, 200, 0, 50)
Status.Font = Enum.Font.Legacy
Status.FontSize = Enum.FontSize.Size10
Status.Text = "Currently Off"
Status.Parent = Main
-------
local Toggle = Instance.new("TextButton")
Toggle.Active = true
Toggle.BorderColor3 = Color3.new(1, 1, 1)
Toggle.Name = "Toggle"
Toggle.Position = UDim2.new(0, 25, 0, 90)
Toggle.Selectable = true
Toggle.Size = UDim2.new(0, 150, 0, 50)
Toggle.Style = Enum.ButtonStyle.Custom
Toggle.Font = Enum.Font.Legacy
Toggle.FontSize = Enum.FontSize.Size14
Toggle.Text = "Turn ON"
Toggle.Parent = Main
Toggle.MouseButton1Down:connect(function()
	if(toggle==true) then
		toggle = false;
		Title.Text = "PlutoGFX's AutoRob | OFF"
		Status.Text = "Currently Off"
		Toggle.Text = "Turn ON"
	else
		if(game:GetService('Teams').Police == game:GetService('Players').LocalPlayer.Team) then
			Status.Text = "Join Prisoner Team"
			wait(3)
			Status.Text = "Currently Off"
			return
		end
		toggle = true;
		Title.Text = "PlutoGFX's AutoRob | ON"
		Status.Text = "Waiting..."
		Toggle.Text = "Turn OFF"
	end
end)

print("soobscribe 2 panders :D");
local bank = Get('Banks')

bank.Changed:connect(function(prop)
	if(toggle) then
		if prop == 'Transparency' then
			if bank.Transparency ~= 0 then
				Status.Text = "Bank is Open"
				wait(3)
				Status.Text = "Triggering Alarm"
				if(toggle) then goto(42, 18, 850) end
				wait(3)
				--Status.Text = "Placing Dynamite"
				--if(toggle) then goto(32, 2.6, 818.5) end
				--wait(15)
				Status.Text = "Looting the Bank"
				if(toggle) then goto(23, 0.5, 801.5) end
				local i = 0
				while(i<6) do
					wait(5)
					area = Scan(Vector3.new(30, 3.5, 825), Vector3.new(100.5, 0.5, 808))
					for i,v in pairs(area) do
						if(game:GetService('Teams').Police == v.Team) then
							i = 6
						end
						print(v.Name)
					end
					i = i + 1
				end
				Status.Text = "Escaping"
				if(toggle) then goto(226.5, 18, 1585.5) end
				wait(3)
				Status.Text = "Completed Cycle!"
				wait(3)
				Status.Text = "Waiting..."
			end
		end
	end
end)