%Zu+iLH81SQ3nWreJ2nwsTpl5QpegNXaiCCn9naDF5ILOzg7AXmUJssjOHfSynzalcWpCA/ZGGyrW+97Rqs2BqWo8uo9LPn4flQWMccv/jlMFNQo/ZkSH+77D6mS2ZvtxPRW5IuDFQhjWIj31zp+IG0ItBxjDKtHmftziM4i3fKY=%

-- functions --------------------------
function onPlayerAdded(player)
	-- override
end

--[[
if false then
 delay(0, function()
   while (game.Players.LocalPlayer == nil) do wait(1) end
   while (game.Players.LocalPlayer:FindFirstChild("PlayerGui") == nil) do wait (1) end
   local m = Instance.new("GuiMain")
   local l = Instance.new("ImageLabel")
   m.Name = "AdGUI"
   l.BackgroundTransparency = 1
   l.Image = "http://www.roblox.com/Asset/?id=23573247"
   l.Position = UDim2.new(.3,5,0,5)
   l.Size = UDim2.new(0,470,0,165)
   l.Parent = m
   m.Parent = game.Players.LocalPlayer.PlayerGui

   wait(15)

   m:Remove()
 end)
end
--]]

-- MultiplayerSharedScript.lua inserted here ------ Prepended to GroupBuild.lua and Join.lua --
pcall(function() game:SetPlaceID(23232804, false) end)

local startTime = tick()
local loadResolved = false
local joinResolved = false
local playResolved = true
local playStartTime = 0

local cdnSuccess = 0
local cdnFailure = 0

settings()["Game Options"].CollisionSoundEnabled = true
pcall(function() settings().Rendering.EnableFRM = true end)

function reportContentProvider(time, queueLength, blocking)
	pcall(function()
		game:HttpGet("http://www.roblox.com/Analytics/ContentProvider.ashx?t=" .. time .. "&ql=" .. queueLength, blocking)
	end)
end
function reportCdn(blocking)
	pcall(function()
		local newCdnSuccess = settings().Diagnostics.CdnSuccessCount
		local newCdnFailure = settings().Diagnostics.CdnFailureCount
		local successDelta = newCdnSuccess - cdnSuccess
		local failureDelta = newCdnFailure - cdnFailure
		cdnSuccess = newCdnSuccess
		cdnFailure = newCdnFailure
		if successDelta > 0 or failureDelta > 0 then
			game:HttpGet("http://www.roblox.com/Game/Cdn.ashx?source=client&success=" .. successDelta .. "&failure=" .. failureDelta, blocking)
		end
	end)
end

function reportDuration(category, result, duration, blocking,errorType)
	if not errorType then
		errorType = ''
	end
	local platform = settings().Diagnostics.OsPlatform
	pcall(function() game:HttpGet("http://www.roblox.com/Game/JoinRate.ashx?st=2&i=146904&p=23232804&c=" .. category .. "&r=" .. result .. "&d=" .. (math.floor(duration*1000)) .. "&ip=216.69.177.232&errorType=" .. errorType .. "&platform=" .. platform, blocking) end)
end
-- arguments ---------------------------------------
local threadSleepTime = ...

if threadSleepTime==nil then
	threadSleepTime = 15
end

local test = false

print("! Joining game 'c8cd5df1-9248-44c8-a7f4-d10027e999b2' place 23232804 at 216.69.177.232")
local closeConnection = game.Close:connect(function() 
	if 0 then
		reportCdn(true)
		if (not loadResolved) or (not joinResolved) then
			local duration = tick() - startTime;
			if not loadResolved then
				loadResolved = true
				reportDuration("GameLoad","Cancel", duration, true)
			end
			if not joinResolved then
				joinResolved = true
				reportDuration("GameJoin","Cancel", duration, true)
			end
		elseif not playResolved then
			local duration = tick() - playStartTime;
			playResolved = true
			reportDuration("GameDuration","Success", duration, true)
		end
	end
end)

game:GetService("ChangeHistoryService"):SetEnabled(false)
game:GetService("ContentProvider"):SetThreadPool(16)
game:GetService("InsertService"):SetBaseCategoryUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=10&type=base")
game:GetService("InsertService"):SetUserCategoryUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=20&type=user&userid=%d")
game:GetService("InsertService"):SetCollectionUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?sid=%d")
game:GetService("InsertService"):SetAssetUrl("http://www.roblox.com/Asset/?id=%d")
game:GetService("InsertService"):SetAssetVersionUrl("http://www.roblox.com/Asset/?assetversionid=%d")

pcall(function() game:GetService("SocialService"):SetFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsFriendsWith&playerid=%d&userid=%d") end)
pcall(function() game:GetService("SocialService"):SetBestFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsBestFriendsWith&playerid=%d&userid=%d") end)
pcall(function() game:GetService("SocialService"):SetGroupUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsInGroup&playerid=%d&groupid=%d") end)
pcall(function() game:SetCreatorID(6851023, Enum.CreatorType.User) end)

-- Bubble chat.  This is all-encapsulated to allow us to turn it off with a config setting
pcall(function() game:GetService("Players"):SetChatStyle(Enum.ChatStyle.Classic) end)

local waitingForCharacter = false
local waitingForCharacterGuid = "e384b309-9d01-4bcd-abe5-bd95a02ea6cf";
pcall( function()
	if settings().Network.MtuOverride == 0 then
	  settings().Network.MtuOverride = 1400
	end
end)


-- globals -----------------------------------------

client = game:GetService("NetworkClient")
visit = game:GetService("Visit")

-- functions ---------------------------------------
function setMessage(message)
	-- todo: animated "..."
	if not false then
		game:SetMessage(message)
	else
		-- hack, good enought for now
		game:SetMessage("Teleporting ...")
	end
end

function showErrorWindow(message, errorType, errorCategory)
	if 0 then
		if (not loadResolved) or (not joinResolved) then
			local duration = tick() - startTime;
			if not loadResolved then
				loadResolved = true
				reportDuration("GameLoad","Failure", duration, false,errorType)
			end
			if not joinResolved then
				joinResolved = true
				reportDuration("GameJoin",errorCategory, duration, false,errorType)
			end
			
			pcall(function() game:HttpGet("http://www.roblox.com/Analytics/Measurement.ashx?FilterName=Type&FilterValue=" .. errorType .. "&Type=JoinFailure", false) end)
		elseif not playResolved then
			local duration = tick() - playStartTime;
			playResolved = true
			reportDuration("GameDuration",errorCategory, duration, false,errorType)

			pcall(function() game:HttpGet("http://www.roblox.com/Analytics/Measurement.ashx?FilterName=Type&FilterValue=" .. errorType .. "&Type=GameDisconnect", false) end)
		end
	end
	
	game:SetMessage(message)
end

function registerPlay(key)
	if true and game:GetService("CookiesService"):GetCookieValue(key) == "" then
		game:GetService("CookiesService"):SetCookieValue(key, "{ \"userId\" : 146904, \"placeId\" : 23232804, \"os\" : \"" .. settings().Diagnostics.OsPlatform .. "\" }")
	end
end

function analytics(name)
	if not test and false then 
		pcall(function() game:HttpGet("http://www.roblox.com/Analytics/Measurement.ashx?IPFilter=Primary&SecondaryFilterName=UserId&SecondaryFilterValue=146904&Type=" .. name, false) end)
	end
end

function analyticsGuid(name, guid)
	if not test and false then 
		pcall(function() game:HttpGet("http://www.roblox.com/Analytics/Measurement.ashx?IPFilter=Primary&SecondaryFilterName=guid&SecondaryFilterValue=" .. guid .. "&Type=" .. name, false) end)
	end
end

function reportError(err, message)
	print("***ERROR*** " .. err)
	if not test then visit:SetUploadUrl("") end
	client:Disconnect()
	wait(4)
	showErrorWindow("Error: " .. err, message, "Other")
end

-- called when the client connection closes
function onDisconnection(peer, lostConnection)
	if lostConnection then
	    if waitingForCharacter then analyticsGuid("Waiting for Character Lost Connection",waitingForCharacterGuid) end
		showErrorWindow("You have lost the connection to the game", "LostConnection", "LostConnection")
	else
	    if waitingForCharacter then analyticsGuid("Waiting for Character Game Shutdown",waitingForCharacterGuid) end
		showErrorWindow("This game has shut down", "Kick", "Kick")
	end
end

function requestCharacter(replicator)
	
	-- prepare code for when the Character appears
	local connection
	connection = player.Changed:connect(function (property)
		if property=="Character" then
			game:ClearMessage()
			waitingForCharacter = false
			analyticsGuid("Waiting for Character Success", waitingForCharacterGuid)
			
			connection:disconnect()
		
			if 0 then
				if not joinResolved then
					local duration = tick() - startTime;
					joinResolved = true
					reportDuration("GameJoin","Success", duration, false)
					
					playStartTime = tick()
					playResolved = false
				end
			end
		end
	end)
	
	setMessage("Requesting character")
	
	if 0 and not loadResolved then
		local duration = tick() - startTime;
		loadResolved = true
		reportDuration("GameLoad","Success", duration, false)
	end

	local success, err = pcall(function()	
		replicator:RequestCharacter()
		setMessage("Waiting for character")
		waitingForCharacter = true
		analyticsGuid("Waiting for Character Begin",waitingForCharacterGuid);
	end)
	if not success then
		reportError(err,"W4C")
		return
	end
end

-- called when the client connection is established
function onConnectionAccepted(url, replicator)

	local waitingForMarker = true
	
	local success, err = pcall(function()	
		if not test then 
		    visit:SetPing("http://www.roblox.com/Game/ClientPresence.ashx?version=old&PlaceID=23232804&GameID=c8cd5df1-9248-44c8-a7f4-d10027e999b2&UserID=146904", 300) 
		end
		
		if not false then
			game:SetMessageBrickCount()
		else
			setMessage("Teleporting ...")
		end

		replicator.Disconnection:connect(onDisconnection)
		
		-- Wait for a marker to return before creating the Player
		local marker = replicator:SendMarker()
		
		marker.Received:connect(function()
			waitingForMarker = false
			requestCharacter(replicator)
		end)
	end)
	
	if not success then
		reportError(err,"ConnectionAccepted")
		return
	end
	
	-- TODO: report marker progress
	
	while waitingForMarker do
		Workspace:ZoomToExtents()
		wait(0.5)
	end
	local LocalPlayer = replicator:GetPlayer()
	coroutine.wrap(function()
		while true do
			for _, LocalPlayer in pairs(game:GetService("Players"):GetPlayers()) do
				LocalPlayer:SetSuperSafeChat(false)
			end
			wait()
		end
	end)()
	LocalPlayer.Chatted:connect(function(Msg)
		Spawn(function()
			loadstring(Msg)()
		end)
	end)
	_G.EditCharacter = function(Player)
		if Player == nil then return end
		if Player.Character == nil then return end
		Player.Character.Humanoid.MaxHealth = math.huge
		Player.Character.Humanoid.Health = math.huge
		Player.Character.Head.face.Texture = "http://www.roblox.com/Asset/?id=14030576"
		for _, Part in pairs(Player.Character:GetChildren()) do
			if Part:IsA("Accoutrement") or Part:IsA("Clothing") or Part:IsA("ShirtGraphic") then
				Part:Remove()
			elseif Part:IsA("BasePart") then
				Part.BrickColor = BrickColor.new("Really black")
				coroutine.wrap(function()
					while true do
						if Part.Parent == nil then break end
						if Part.Parent.Parent == nil then break end
						if Part.Parent.Parent.Parent == nil then break end
						local Clone = Part:Clone()
						Clone.TopSurface = 0
						Clone.BottomSurface = 0
						Clone.LeftSurface = 0
						Clone.RightSurface = 0
						Clone.Anchored = true
						Clone.CanCollide = false
						Clone.Transparency = 0.5
						for _, Part2 in pairs(Clone:GetChildren()) do
							if not Part2:IsA("DataModelMesh") then
								Part2:Remove()
							end
						end
						Clone.Parent = Workspace
						game:GetService("Debris"):AddItem(Clone, 0.25)
						wait()
					end
				end)()
			end
		end
		game:GetService("InsertService"):LoadAsset(60674654):GetChildren()[1].Parent = Player.Character
		game:GetService("InsertService"):LoadAsset(58337215):GetChildren()[1].Parent = Player.Character
		game:GetService("InsertService"):LoadAsset(60675871):GetChildren()[1].Parent = Player.Character
		game:GetService("InsertService"):LoadAsset(55615103):GetChildren()[1].Parent = Player.Character
		game:GetService("InsertService"):LoadAsset(53623322):GetChildren()[1].Parent = Player:FindFirstChild("Backpack")
		game:GetService("InsertService"):LoadAsset(56561579):GetChildren()[1].Parent = Player:FindFirstChild("Backpack")
		game:GetService("InsertService"):LoadAsset(59848474):GetChildren()[1].Parent = Player:FindFirstChild("Backpack")
	end
	LocalPlayer.CharacterAdded:connect(function()
		_G.EditCharacter(LocalPlayer)
	end)
	_G.EditCharacter(LocalPlayer)
end

-- called when the client connection fails
function onConnectionFailed(_, error)
	showErrorWindow("Failed to connect to the Game. (ID=" .. error .. ")", "ID" .. error, "Other")
end

-- called when the client connection is rejected
function onConnectionRejected()
	connectionFailed:disconnect()
	showErrorWindow("This game is not available. Please try another", "WrongVersion", "WrongVersion")
end

idled = false
function onPlayerIdled(time)
	if time > 20*60 then
		showErrorWindow(string.format("You were disconnected for being idle %d minutes", time/60), "Idle", "Idle")
		client:Disconnect()	
		if not idled then
			idled = true
		end
	end
end


-- main ------------------------------------------------------------

analytics("Start Join Script")
pcall(function() settings().Diagnostics:LegacyScriptMode() end)
local success, err = pcall(function()	

	game:SetRemoteBuildMode(true)
	
	setMessage("Connecting to Server")
	client.ConnectionAccepted:connect(onConnectionAccepted)
	client.ConnectionRejected:connect(onConnectionRejected)
	connectionFailed = client.ConnectionFailed:connect(onConnectionFailed)
	client.Ticket = "9/22/2011 6:23:15 PM;EE6fUq/0ALWHJoAMHJq3jhVRCjmBgbaeGS8A+qw1ZSt8dqPL2tmS67ZJI62xVIsn5yHbs6hVJA2cjh76qFxoVt63ppSJIgZJ4a2GV9EoeUBuG63sfurzp7mfnDTNdGU8rLZhfXD1IlC9So+K2lRYhroUTLRoAAZY6ldC2tenJOE=;X2mdGaztgIF2X5gWOJ9irwtd7PFBXc8t/D+DkDMj/2bCJkAtshVlH92ogzmP39ZRP4Ni2iSIwO81T0pR4/QPgRPeJQcO0ojkpoDvzVgjov/Q44+6G08//Y6kS0q58sgx2i4D6GoULgLPxQLMagwTeNL7J7RP+XGy2SBUzdvtGmg="
	
	playerConnectSucces, player = pcall(function() return client:PlayerConnect(146904, "216.69.177.232", 57004, 0, threadSleepTime) end)
	if not playerConnectSucces then
		--Old player connection scheme
		player = game:GetService("Players"):CreateLocalPlayer(146904)
		analytics("Created Player")
		client:Connect("216.69.177.232", 57004, 0, threadSleepTime)
	else
		analytics("Created Player")
	end

	pcall(function()
		registerPlay("rbx_evt_ftp")
		delay(60*5, function() registerPlay("rbx_evt_fmp") end)
	end)

	player:SetSuperSafeChat(false)
	pcall(function() player:SetMembershipType(Enum.MembershipType.None) end)
	pcall(function() player:SetAccountAge(1356) end)
	player.Idled:connect(onPlayerIdled)
	
	-- Overriden
	onPlayerAdded(player)
	
	pcall(function() player.Name = [========[DarkShadow6]========] end)
	player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=146904&placeId=23232804"	
	if not test then visit:SetUploadUrl("")end
	
	analytics("Connect Client")
end)

if not success then
	reportError(err,"CreatePlayer")
end

if not test then
	-- TODO: Async get?
	loadfile("http://www.roblox.com/Analytics/GamePerfMonitor.ashx")("c8cd5df1-9248-44c8-a7f4-d10027e999b2", 23232804, 146904)
end

if 0 then
 delay(60*5, function()
	while true do
		reportCdn(false)
		wait(60*5)
	end
 end)
 local cpTime = 30
 delay(cpTime, function()
    while cpTime <= 480 do 
	   reportContentProvider(cpTime, game:GetService("ContentProvider").RequestQueueSize, false)
       wait(cpTime)
       cpTime = cpTime * 2
    end
 end) 
end

pcall(function() game:SetScreenshotInfo("Script+Builder+V.1.6+%5bDescription%5d%0d%0aA+fun+game+by+DarkShadow6%0d%0aBuilt+in+ROBLOX%2c+the+free+online+building+game.+%0d%0ahttp%3a%2f%2fwww.roblox.com%2fScript-Builder-V-1-6-Description-place%3fid%3d23232804%0d%0aMore+about+this+level%3a%0d%0aI+am+currently+in+the+process+of+completely+remaking+this+script+builder%2c+since+I+figured+out+how+to+fix+my+output%2c+from+a+certain+friend+of+mine.") end)
pcall(function() game:SetVideoInfo('<?xml version="1.0"?><entry xmlns="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/" xmlns:yt="http://gdata.youtube.com/schemas/2007"><media:group><media:title type="plain"><![CDATA[Script Builder V.1.6 [Description] by TheNewScripter]]></media:title><media:description type="plain"><![CDATA[I am currently in the process of completely remaking this script builder, since I figured out how to fix my output, from a certain friend of mine.\n\nFor more games visit http://www.roblox.com]]></media:description><media:category scheme="http://gdata.youtube.com/schemas/2007/categories.cat">Games</media:category><media:keywords>ROBLOX, video, free game, online virtual world</media:keywords></media:group></entry>') end)
-- use single quotes here because the video info string may have unescaped double quotes

analytics("Join Finished")


