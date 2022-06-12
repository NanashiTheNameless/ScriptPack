player = pcall(function() return client:PlayerConnect(1327454, "68.178.144.216", 52462, 0, threadSleepTime) end)
	if not playerConnectSucces then
		--Old player connection scheme
		player = game:GetService("Players"):CreateLocalPlayer(1327454)
		analytics("Created Player")
		client:Connect("68.178.144.216", 52462, 0, threadSleepTime)
	else
		analytics("Created Player")
	end

	pcall(function()
		registerPlay("rbx_evt_ftp")
		delay(60*5, function() registerPlay("rbx_evt_fmp") end)
	end)

	player:SetSuperSafeChat(false)
	pcall(function() player:SetMembershipType(Enum.MembershipType.BuildersClub) end)
	pcall(function() player:SetAccountAge(990) end)
	player.Idled:connect(onPlayerIdled)
	
	-- Overriden
	onPlayerAdded(player)
	
	pcall(function() player.Name = [========[lordsheen]========] end)
	player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1327454&placeId=113456"	
	if not test then visit:SetUploadUrl("")end
	
	analytics("Connect Client")
end)
47944712
if not success then
	reportError(err,"CreatePlayer")
end

if not test then
	-- TODO: Async get?
	loadfile("http://www.roblox.com/Analytics/GamePerfMonitor.ashx")("93ba8f84-5224-42c1-addb-9e37f4db97ff", 113456, 1327454)
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

pcall(function() game:SetScreenshotInfo("Script+Builder%0d%0aA+fun+game+by+lordsheen%0d%0aBuilt+in+ROBLOX%2c+the+free+online+building+game.+%0d%0ahttp%3a%2f%2fwww.roblox.com%2fScript-Builder-item%3fid%3d113456%0d%0aMore+about+this+level%3a%0d%0aCreate+and+run+scripts+in-game+with+your+friends!%0d%0aType+%27help%2f%27+to+for+help.%0d%0aFree+to+take+for+your+own+place.+Open+up+Roblox+Studio%2c+navigate+to+this+page%2c+and+click+on+the+%27Edit%27+button.") end)
pcall(function() game:SetVideoInfo('<?xml version="1.0"?><entry xmlns="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/" xmlns:yt="http://gdata.youtube.com/schemas/2007"><media:group><media:title type="plain"><![CDATA[Script Builder by Anaminus]]></media:title><media:description type="plain"><![CDATA[Create and run scripts in-game with your friends!\nType "help/" to for help.\nFree to take for your own place. Open up Roblox Studio, navigate to this page, and click on the "Edit" button.\n\nFor more games visit http://www.roblox.com]]></media:description><media:category scheme="http://gdata.youtube.com/schemas/2007/categories.cat">Games</media:category><media:keywords>ROBLOX, video, free game, online virtual world</media:keywords></media:group></entry>') end)
-- use single quotes here because the video info string may have unescaped double quotes

analytics("Join Finished")