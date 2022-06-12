--[[
	made by: Clinton8Luke
	um.. yea
--]]
local localplayer = game:GetService("Players").LocalPlayer
local mouse = localplayer:GetMouse()
c = game.CoreGui.RobloxGui
local c = localplayer.PlayerGui

function setButtonPrefs(btn) --Button Object, its a style ok
	btn.TextWrapped = true
	btn.TextScaled = true
	btn.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
	btn.TextColor3 = Color3.new(.05, .05, .05)
	btn.TextStrokeTransparency = .75
	btn.TextStrokeColor3 = Color3.new(.33, .33, .33)
	btn.Font = Enum.Font.Legacy
	btn.BackgroundTransparency = .66
end

function setLabelPrefs(lbl) --Label Object, its a style ok
	lbl.TextWrapped = true
	lbl.TextScaled = true
	lbl.TextColor3 = Color3.new(0, 0, 0)
	lbl.TextStrokeTransparency = .75
	lbl.TextStrokeColor3 = Color3.new(.75, .75, .75)
	lbl.Font = Enum.Font.SourceSansLight
	lbl.BackgroundTransparency = .66
end

local c8lGui = Instance.new("ScreenGui", c)
c8lGui.Name = "Host"
local mainFrame = Instance.new("Frame", c8lGui)
mainFrame.Visible = false
mainFrame.Size = UDim2.new(.25, 0, .33, 0)
mainFrame.Position = UDim2.new((.5 - mainFrame.Size.X.Scale/2) + 1/6, 0, .5 - mainFrame.Size.Y.Scale/2, 0)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Style = Enum.FrameStyle.RobloxSquare
local credits = Instance.new("TextLabel", mainFrame)
credits.Size = UDim2.new(.2, 0, .05, 0)
credits.Position = UDim2.new(-credits.Size.X.Scale/2.5, 0, -credits.Size.Y.Scale, 2)
credits.BackgroundTransparency = 1
credits.TextColor3 = Color3.new(51/255, 102/255, 255/255)
credits.Font = Enum.Font.ArialBold
credits.TextScaled = true
credits.TextStrokeTransparency = .9
credits.Text = "C8L"
local tabsFrame = Instance.new("Frame", mainFrame)
tabsFrame.Size = UDim2.new(1, 0, mainFrame.Size.Y.Scale/4, 0)
tabsFrame.BackgroundTransparency = 1
local tabsFolder = Instance.new("Folder", mainFrame)
local tabsSize, tabsPosition = UDim2.new(1, 0, 1 - tabsFrame.Size.Y.Scale, 0), UDim2.new(0, 0, tabsFrame.Size.Y.Scale)
local tabSpawnBtn = Instance.new("TextButton", tabsFrame)
tabSpawnBtn.Size = UDim2.new(.33, 0, 1, 0)
tabSpawnBtn.Position = UDim2.new(0/3, 0, 0, 0)
setButtonPrefs(tabSpawnBtn)
tabSpawnBtn.Text = "Spawn"
local tabCmdsBtn = Instance.new("TextButton", tabsFrame)
tabCmdsBtn.Size = UDim2.new(.33, 0, 1, 0)
tabCmdsBtn.Position = UDim2.new(1/3, 0, 0, 0)
setButtonPrefs(tabCmdsBtn)
tabCmdsBtn.Text = "Commands"
local tabSpawn = Instance.new("Frame", tabsFolder)
tabSpawn.Size = tabsSize
tabSpawn.Position = tabsPosition
tabSpawn.BackgroundColor3 = Color3.new(1, 1, 1)
tabSpawn.BackgroundTransparency = .5
local tabSpawnSpawnList = Instance.new("ScrollingFrame", tabSpawn)
tabSpawnSpawnList.Size = UDim2.new(.66, 0, .8, 0)
tabSpawnSpawnList.Position = UDim2.new(0, 0, .1, 0)
tabSpawnSpawnList.BackgroundTransparency = .9
tabSpawnSpawnList.ScrollBarThickness = 8
local tabSpawnSpawnSelected = Instance.new("TextLabel", tabSpawn)
tabSpawnSpawnSelected.Size = UDim2.new(tabSpawnSpawnList.Size.X.Scale, 0, .1, 0)
tabSpawnSpawnSelected.Position = UDim2.new(0, 0, tabSpawnSpawnList.Size.Y.Scale + tabSpawnSpawnSelected.Size.Y.Scale, 0)
tabSpawnSpawnSelected.BackgroundTransparency = 1
tabSpawnSpawnSelected.TextColor3 = Color3.new(1, 1, 1)
local spawnItemSelected = nil
tabSpawnSpawnSelected.Text = ("Item selected: nil")
function PutItemsInSpawnTab() --im not creative
	tabSpawnSpawnList.CanvasSize = UDim2.new(0, 0, #game:GetService("Lighting").LootDrops:GetChildren() / 10, 0)
	for i,v in pairs(game:GetService("Lighting").LootDrops:GetChildren()) do
		local spawnItem = Instance.new("TextButton", tabSpawnSpawnList)
		spawnItem.Size = UDim2.new(1, 0, 1 / (#game:GetService("Lighting").LootDrops:GetChildren()), 0)
		spawnItem.Position = UDim2.new(0, 0, (i * spawnItem.Size.Y.Scale) - spawnItem.Size.Y.Scale, 0)
		setButtonPrefs(spawnItem)
		spawnItem.Name = v.Name
		spawnItem.Text = v.Name
		spawnItem.MouseButton1Click:connect(function()
			spawnItemSelected = game:GetService("Lighting").LootDrops[spawnItem.Name] or nil
			if spawnItemSelected ~= nil then
				tabSpawnSpawnSelected.Text = ("Item selected: "..spawnItemSelected.Name)
			else
				tabSpawnSpawnSelected.Text = "Item selected: nil"
			end
		end)
	end
end
PutItemsInSpawnTab()
local spawnButton = Instance.new("TextButton", tabSpawn)
spawnButton.Size = UDim2.new(1 - tabSpawnSpawnList.Size.X.Scale, 0, .1)
spawnButton.Position = UDim2.new(tabSpawnSpawnList.Size.X.Scale, 0, 0, 0)
spawnButton.Text = "Spawn"
setButtonPrefs(spawnButton)
spawnButton.MouseButton1Click:connect(function()
	if spawnItemSelected ~= nil then
		local new = spawnItemSelected:Clone()
		new.Parent = workspace
		new:MoveTo(localplayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
	end
end)
local spawnSearchTextBox = Instance.new("TextBox", tabSpawn)
spawnSearchTextBox.Size = UDim2.new(tabSpawnSpawnList.Size.X.Scale, 0, .1, 0)
spawnSearchTextBox.BackgroundTransparency = .5
spawnSearchTextBox.Text = "Search for an item"
setLabelPrefs(spawnSearchTextBox)
local spawnRefreshButton = Instance.new("TextButton", tabSpawn)
spawnRefreshButton.Size = UDim2.new(1 - tabSpawnSpawnList.Size.X.Scale, 0, .1)
spawnRefreshButton.Position = UDim2.new(tabSpawnSpawnList.Size.X.Scale, 0, spawnRefreshButton.Size.Y.Scale, 0)
spawnRefreshButton.Text = "Refresh List"
spawnRefreshButton.MouseButton1Click:connect(function()
	ClearOrRefreshList(false, tabSpawnSpawnList) --refresh list
	spawnSearchTextBox.Text = "Search for an item"
end)
setButtonPrefs(spawnRefreshButton)

function ClearOrRefreshList(bool, list) --true = clear, false = refresh | LOL I KNOW THIS IS INEFFICIENT
	if bool then --clear
		if #list:GetChildren() > 0 then
			for _,p in pairs(list:GetChildren()) do
				p:Destroy()
			end
		else
			error("won't clear something that's not there") --if any1 is reading this then hi leave vouch copy plz maybe
		end
	else --refresh
		for _,p in pairs(list:GetChildren()) do
			p:Destroy()
		end
		PutItemsInSpawnTab()
	end
end

function spawnSearchForItem(input) --string, returns a table full of the objects found
	local spawnItemsFound = {}
	for i,v in pairs(game:GetService("Lighting").LootDrops:GetChildren()) do
		if string.find(string.lower(v.Name), string.lower(input)) then
			table.insert(spawnItemsFound, v)
		end
	end
	return spawnItemsFound
end

spawnSearchTextBox.FocusLost:connect(function(input)
	if spawnSearchTextBox.Text ~= "" then
		if #spawnSearchForItem(spawnSearchTextBox.Text) > 0 then
			ClearOrRefreshList(true, tabSpawnSpawnList)
			tabSpawnSpawnList.CanvasSize = UDim2.new(0, 0, #spawnSearchForItem(spawnSearchTextBox.Text) / 10, 0)
			for i=1, #spawnSearchForItem(spawnSearchTextBox.Text) do --I REALLY SHOULD HAD MADE A FUCKING VARIABLE FOR THAT SHIT :'(
				local spawnItem = Instance.new("TextButton", tabSpawnSpawnList)
				spawnItem.Size = UDim2.new(1, 0, 1 / #spawnSearchForItem(spawnSearchTextBox.Text), 0)
				spawnItem.Position = UDim2.new(0, 0, (i * spawnItem.Size.Y.Scale) - spawnItem.Size.Y.Scale, 0)
				spawnItem.Name = spawnSearchForItem(spawnSearchTextBox.Text)[i].Name
				spawnItem.Text = spawnSearchForItem(spawnSearchTextBox.Text)[i].Name
				setButtonPrefs(spawnItem)
				spawnItem.MouseButton1Click:connect(function()
				spawnItemSelected = game:GetService("Lighting").LootDrops[spawnItem.Name] or nil
				if spawnItemSelected ~= nil then
					tabSpawnSpawnSelected.Text = ("Item selected: "..spawnItemSelected.Name)
				else
					tabSpawnSpawnSelected.Text = "Item selected: nil"
				end
			end)
			end
			spawnSearchTextBox.Text = (#spawnSearchForItem(spawnSearchTextBox.Text).." items found")
		else
			spawnSearchTextBox.Text = "Item not found"
		end
	else
		spawnSearchTextBox.Text = "Input an item name..."
	end
end)
local tabCmds = Instance.new("Frame", tabsFolder) --at this point i wanted to kill myself.. 150 lines just for 1 tab
--edit: i just fucking deleted the cmdsTab code shit because i did things retarded... rip 100 lines FUCK MY LIFE
tabCmds.Size = tabsSize
tabCmds.Position = tabsPosition
tabCmds.BackgroundColor3 = Color3.new(1, 1, 1)
tabCmds.BackgroundTransparency = .5
local cmdsBroadcastTextBox = Instance.new("TextBox", tabCmds)
cmdsBroadcastTextBox.Size = UDim2.new(.75, 0, .1, 0)
cmdsBroadcastTextBox.Position = UDim2.new(0, 0, .9, 0)
cmdsBroadcastTextBox.BackgroundTransparency = .5
cmdsBroadcastTextBox.Text = "Input text to broadcast to server"
setLabelPrefs(cmdsBroadcastTextBox)
local cmdsBroadcastButton = Instance.new("TextButton", tabCmds)
cmdsBroadcastButton.Size = UDim2.new(1 - cmdsBroadcastTextBox.Size.X.Scale, 0, cmdsBroadcastTextBox.Size.Y.Scale, 0)
cmdsBroadcastButton.Position = UDim2.new(cmdsBroadcastTextBox.Size.X.Scale, 0, .9, 0)
cmdsBroadcastButton.Text = "Broadcast"
setButtonPrefs(cmdsBroadcastButton)
cmdsBroadcastButton.MouseButton1Click:connect(function()
	if cmdsBroadcastTextBox.Text ~= "Input text to broadcast to server" then
		local name = tostring(cmdsBroadcastTextBox.Text)
		for _,p in pairs(game:GetService("Players"):GetChildren()) do 
		    game:GetService("Lighting").Remote.SendMessage:FireServer(p, "Blue", ""..name)  
		end
	end
end)
local cmdsPlayerList = Instance.new("ScrollingFrame", tabCmds)
cmdsPlayerList.CanvasSize = UDim2.new(0, 0, (#game:GetService("Players"):GetChildren() + 1) / 10, 0)
cmdsPlayerList.Size = UDim2.new(1, 0, .41, 0)
cmdsPlayerList.BackgroundTransparency = .5
local cmdsPlayerSelected = Instance.new("TextBox", tabCmds)
setLabelPrefs(cmdsPlayerSelected)
cmdsPlayerSelected.Size = UDim2.new(1, 0, .1, 0)
cmdsPlayerSelected.Position = UDim2.new(0, 0, .41, 0)
cmdsPlayerSelected.Text = "Playername"
function addPlayersToCmdsList()
	local xplayerslbl = Instance.new("TextLabel", cmdsPlayerList)
	setLabelPrefs(xplayerslbl)
	xplayerslbl.Text = "Select Player:"
	xplayerslbl.Size = UDim2.new(1, 0, 1 / (#game:GetService("Players"):GetChildren() + 1), 0)
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		local cmdsPlayerButton = Instance.new("TextButton", cmdsPlayerList)
		setButtonPrefs(cmdsPlayerButton)
		cmdsPlayerButton.Size = UDim2.new(1, 0, xplayerslbl.Size.Y.Scale, 0)
		cmdsPlayerButton.Position = UDim2.new(0, 0, i * cmdsPlayerButton.Size.Y.Scale, 0)
		cmdsPlayerButton.Name = v.Name
		cmdsPlayerButton.Text = v.Name
		cmdsPlayerButton.MouseButton1Click:connect(function()
			cmdsPlayerSelected.Text = cmdsPlayerButton.Name
		end)
	end
end
addPlayersToCmdsList()
local cmdsKillBtn = Instance.new("TextButton", tabCmds)
setButtonPrefs(cmdsKillBtn)
cmdsKillBtn.Size = UDim2.new(1, 0, .1, 0)
cmdsKillBtn.Position = UDim2.new(0, 0, .51, 0)
cmdsKillBtn.Text = "Kill Player"
cmdsKillBtn.MouseButton1Click:connect(function()
	if game:GetService("Workspace"):findFirstChild(cmdsPlayerSelected.Text) then
		local name = tostring(cmdsPlayerSelected.Text)
		game:GetService("Lighting").Remote.AddDamage:FireServer(workspace[name]:findFirstChild("Humanoid"), 100)
	else
		cmdsPlayerSelected.Text = "Player not found..."
	end
end)
cmdsTPKillBtn = Instance.new("TextButton", tabCmds)
setButtonPrefs(cmdsTPKillBtn)
cmdsTPKillBtn.Size = UDim2.new(1, 0, .1, 0)
cmdsTPKillBtn.Position = UDim2.new(0, 0, .61, 0)
cmdsTPKillBtn.Text = "TP Kill"
cmdsTPKillBtn.MouseButton1Click:connect(function()
	if game:GetService("Workspace"):findFirstChild(cmdsPlayerSelected.Text) then
		local tpkill = coroutine.create(function() --only because it needs a wait time
			local name = tostring(cmdsPlayerSelected.Text)
			game:GetService("Lighting").Remote.AddDamage:FireServer(workspace[name]:findFirstChild("Humanoid"), 100)
			workspace:FindFirstChild(name,true).Torso.Anchored = true
			wait(2)
			workspace:FindFirstChild("Corpse of " ..name,true):MoveTo(localplayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
		end)
		coroutine.resume(tpkill)
	else
		cmdsPlayerSelected.Text = "Player not found..."
	end
end)

function invisAllTabs() --makes all tabs invisible (good for changing visibility for a specific one)
	for _,p in pairs(tabsFolder:GetChildren()) do
		if p:IsA("Frame") then
			p.Visible = false
		end
	end
end
invisAllTabs()
tabSpawn.Visible = true

tabSpawnBtn.MouseButton1Click:connect(function()
	invisAllTabs()
	tabSpawn.Visible = true
end)
tabCmdsBtn.MouseButton1Click:connect(function()
	invisAllTabs()
	tabCmds.Visible = true
end)

mouse.KeyDown:connect(function(key)
	if key:byte() == 109 then --depricated my ass (109 = 'm')
		if not mainFrame.Visible then
			mainFrame.Visible = true
		else
			mainFrame.Visible = false
		end
	end
end)