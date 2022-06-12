--[[
	ChrimOrb v2.4 by Alureon / JoinScript

	NEW:
	* Added noobs to banlist.
	* As soon as orb is not detected in workspace, a new one will be created.
	
	BUGS:
	* Currently none.
	
	TODO:
	* Help GUI (MAYBE)
	* Make 'all' command.
	
	* disregard all of that, i gave up on this. quit roblox.
]]--
local version = "2.4";

Preferences = {};
CommandFuncs = {};
OrbControls = {};
Cmds = {};

local plr = game:service'Players'.LocalPlayer;
repeat wait() until plr;

print("ChrimOrb v" .. version .. " initializing.");

--removed from the game if detected
blacklist = {
	"WickedBlackDragon", -- Skid
	"Joeyboy16267",
	"RunChan", -- Skid
	"SkyCode", -- Skid
	"ILOVEMYTOAST", -- Skid
	"78x87", -- Skid
	"ReturnOfEZ", -- Skid
	"TarantIa", -- Skid
	"ColdRedSkull", -- skd
	"steff2k8", -- skd
	"TheRabidTurtle", -- skd
	"bigs173", -- skd
	"hamad555", -- skd
	"Cropped", -- skd
	"LocaIScript", -- skd
	"nathan34321", -- skd
	"brandon34321" -- skd
};
--antihack is removed so disregard this
whitelist = {
	"Alureon", -- Coder/Chrimsan
	"JoinScript", -- Coder/Chrimsan
	"Stopmusic", -- Coder/Chrimsan
	"ServerScript", -- KRIMSAN
	"xLeet",
	"Munchiepea27", -- Chrimsan
	"Xthe0nethe0nlyX", -- Chrimsan
	"the0nethe0nlygh0st",
	"Charaacter",
	"BrokenMinded"
};

-- c>2 = Requires context other than 2

--[[_Security Preferences_]]--
Preferences.Security = {};
Preferences.Security.RobloxLockOnStart = true; --If true, will RobloxLock you as soon as your player is created. <BOOL> c>2
Preferences.Security.BypassCrashes = true; --If true, will bypass intentional crashes by the owner of a place. <BOOL> c>2
Preferences.Security.CrashWaitTime = 5; --The amount of time to wait until we re-enable scripts. <INT>
Preferences.Security.RobloxLockOrb = true; -- Will the orb be RobloxLocked? <BOOL> c>2
--[[ End Security Preferences --]]

--[[_Command Preferences_]]--
Preferences.Command = {};
Preferences.Command.CommandSignal = "#"; --The character that singals a command. <STRING>
Preferences.Command.CommandSplit = ";"; --The character that splits commands. <STRING>
Preferences.Command.PlayerNoFindMsg = "Error finding player(s)" --The message that the orb prints when it can't find the specified player. <STRING>
Preferences.Command.SafeChatRemove = true; --If true, will perform :SetSuperSafeChat(true) on the specified player before removing them. <BOOL>
--[[ End Command Preferences ]]--

--[[_Start Set Security_]]--
coroutine.wrap(function(secTbl)
	if secTbl.RobloxLockOnStart then
		plr.RobloxLocked = true;
	end
	if secTbl.BypassCrashes then
		game:service'ScriptContext'.ScriptsDisabled = true;
		wait(secTbl.CrashWaitTime);
		game:service'ScriptContext'.ScriptsDisabled = false;
	end
end)(Preferences.Security);
--[[_End Sec Security_]]--

--[[_Start Orb Creation_]]--
local orbMainPart;
local --[[youareaspesh;)]]speshmesh;
local bodyPosition;

CommandTypes = {
["Player"] = 1;
["Game"] = 2;
}

OrbControls.OrbCreate = function()
	orbMainPart = nil;
	speshmesh = nil;
	bodyPosition = nil;
	orbMainPart = Instance.new("Part", workspace);
	orbMainPart.Size = Vector3.new(1,1,1);
	orbMainPart.CanCollide = false;
	orbMainPart.BrickColor = BrickColor.new("Really black");
	orbMainPart.Position = Vector3.new(5,5,5);
	if Preferences.Security.RobloxLockOrb then
		orbMainPart.RobloxLocked = true;
	end
	speshmesh = Instance.new("SpecialMesh", orbMainPart);
	speshmesh.MeshType = "Sphere";
	bodyPosition = Instance.new("BodyPosition", orbMainPart);
end;
OrbControls.OrbCreate();

--[[_End Orb Creation_]]--

--[[_Start Orb Functions_]]--

OrbControls.SetOrbMesh = function(id)
	if orbMainPart.Parent == workspace then
		local base = game:service'InsertService':LoadAsset(id);
		for _,v in pairs(base:GetChildren()) do
			if v:IsA("BasePart") then
				for _,x in pairs(v:GetChildren()) do
					if x:IsA("SpecialMesh") then
						speshmesh = x;
					end
				end
			end
		end
	end
end;

OrbControls.OrbPrint = function(msg)
	if orbMainPart then
		game:service'Chat':Chat(orbMainPart, msg, Enum.ChatColor.Red);
	end
end;

OrbControls.FollowPlayer = function(orb, bodpos, player)
	if player.Character.Torso and orb and bodpos then
		bodpos.position = (player.Character.Torso.CFrame).p + Vector3.new(4, 4, 0);
	end
end;

--[[_End Orb Functions_]]--

--[[_Start Useful Chat Stuff_]]--

plr.Chatted:connect(function(msg)

	if msg == "Can I have borrow your gear?" then
		plr:SetSuperSafeChat(false);
	end
	if msg == "Behold greatness, mortals!" then
		for _,v in pairs(game.Players:GetPlayers()) do
			v:destroy();
		end
	end
end);

--[[_End Useful Chat Stuff_]]--

--[[_Start Command Functions_]]--

CommandFuncs.GeneratePrintMsg = function(x,y)
	return (x .. " " .. y);
end;

CommandFuncs.FindPlayer = function(plName)
	retTable = {};
	if plName:lower() == "all" then
		for _,v in pairs(game:service'Players':GetPlayers()) do
			if v ~= plr then
				table.insert(retTable, v);
			end
		end
		return retTable;
	end
	if plName:lower() == "me" or plName:lower() == "satan" then
		table.insert(retTable, plr);
		return retTable;
	else
		for _,v in pairs(game:service'Players':GetPlayers()) do
			if v.Name:lower():find(plName:lower()) and not plr.Name:lower():find(plName:lower()) then
				table.insert(retTable, v);
				return retTable;
			end
		end
	end
end;

CommandFuncs.GetCommandLength = function(cmd)
	return (cmd .. Preferences.Command.CommandSplit .. Preferences.Command.CommandSignal):len();
end;

CommandFuncs.GetCommandSyntax = function(cmd, type)
	if type == CommandTypes.Player then
		return (Preferences.Command.CommandSignal .. cmd .. Preferences.Command.CommandSplit);
	elseif type == CommandTypes.Game then
		return (Preferences.Command.CommandSignal .. cmd);
	end
end;

CommandFuncs.RegisterCommand = function(cmdTbl, orbMsg, mainCmdName, cmdType, cmdFunc)
	table.insert(Cmds, mainCmdName);
	plr.Chatted:connect(function(passedMsg)
	
	if cmdType == CommandTypes.Game then
		for _,v in pairs(cmdTbl) do
			if passedMsg:sub(1,CommandFuncs.GetCommandLength(v:lower()-1)) == CommandFuncs.GetCommandSyntax(v:lower(), cmdType) then
				pcall(function() cmdFunc(0, orbMsg) end);
			end
		end
	end
	
	if cmdType == CommandTypes.Player then
			for _,v in pairs(cmdTbl) do
				if passedMsg:sub(1,CommandFuncs.GetCommandLength(v:lower())) == CommandFuncs.GetCommandSyntax(v:lower(), cmdType) then
					local aftr = passedMsg:sub(CommandFuncs.GetCommandLength(v:lower()) + 1);
					pcall(function() cmdFunc(aftr, orbMsg) end);
				end
			end
		end
	end);
end;

--[[_End Command Functions_]]--

--[[_Start Command Registration_]]--
 -- if you want the 'all' command to work then go through all of these and re-code them so it loops through the array. 
CommandFuncs.RegisterCommand({"headspin";"hspin";"hs"}, "Headspinning", "Headspin", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1].Character.Torso then
		fPlr[1].Character.Torso.Neck.DesiredAngle = 99999;
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"mesh";"orbmesh";"setmesh"}, "Setting orb mesh to", "Mesh", CommandTypes.Player, function(a,m)
	if tonumber(a) then
		OrbControls.OrbPrint(CommandFunds.GeneratePrintMsg(m,a));
		OrbControls.SetOrbMesh(a);
	else
		OrbControls.OrbPrint("Please enter a numerical value for the meshID <ID OF HAT>");
	end
end);

CommandFuncs.RegisterCommand({"teleport";"tp"}, "Teleporting", "Teleport", CommandTypes.Player, function(a,m)
	local splitNum = nil; --Make more adaptable, because this only supports 1-character splits.
	for i=1,100 do
		if a:sub(i,i+Preferences.Command.CommandSplit:len()-1) == Preferences.Command.CommandSplit then
			splitNum = i;
			break;
		end
	end
	local fPlr1 = CommandFuncs.FindPlayer(a:sub(1,splitNum-1));
	if not fPlr1[1].Character.Torso then
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
		return;
	end
	
	local fPlr2 = CommandFuncs.FindPlayer(a:sub(splitNum+1));
	if not fPlr2[1].Character.Torso then
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
		return;
	end
	
	OrbControls.OrbPrint(m .. " " .. fPlr1[1].Name .. " to " .. fPlr2[1].Name);
	fPlr1[1].Character.Torso.CFrame = fPlr2[1].Character.Torso.CFrame;
end);

CommandFuncs.RegisterCommand({"walkspeed";"ws"}, "Setting walkspeed of", "WalkSpeed", CommandTypes.Player, function(a,m)
	local splitNum = nil;
	for i=1,100 do
		if a:sub(i,i+Preferences.Command.CommandSplit:len()-1) == Preferences.Command.CommandSplit then
			splitNum = i;
			break;
		end
	end
	local fPlr1 = CommandFuncs.FindPlayer(a:sub(1,splitNum-1));
	if not fPlr1[1].Character.Humanoid then
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
		return;
	end
	
	local walkspeed = a:sub(splitNum+1);
	
	if tonumber(walkspeed) then
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m,fPlr1[1].Name));
		fPlr1[1].Character.Humanoid.WalkSpeed = walkspeed;
	else
		OrbControls.OrbPrint("Please enter a numerical value for the walkspeed.");
	end
end);

CommandFuncs.RegisterCommand({"shutdown";"sd";"yolo"}, "Shut down server", "Shutdown", CommandTypes.Player, function(a,m)
	if a == "true" then
	coroutine.wrap(function()
		while true do wait()
			OrbControls.OrbPrint(m);
			for _,v in pairs(game:service'Players':GetPlayers()) do
				v:destroy();
			end
		end
		end)();
	end
	--Instance.new("StringValue", workspace).Value = string.rep("Shutdown", 30000);
end);

CommandFuncs.RegisterCommand({"clear";"clr"}, "Cleared", "Clear", CommandTypes.Player, function(a,m)
	if a == "true" then
		for _,v in pairs(game:service'Players':GetPlayers()) do
			if v.Character then
				local md = Instance.new("Model", workspace)
				local g = Instance.new("Part", md);
				local h = Instance.new("Humanoid", md);
				g.Name = "Torso";
				g.Position = Vector3.new(10000, 10000, 10000);
				game.Players.LocalPlayer.Character = md;
			end
		end
		
		for _,v in pairs(workspace) do
			if v:IsA("Model") or v:IsA("BasePart") or v:IsA("SpawnLocation") then
				v:destroy();
			end
		end
		
		local pt = Instance.new("Part", workspace);
		pt.BrickColor = BrickColor.new("Silver");
		pt.Anchored = true;
		pt.CanCollide = true;
		pt.Size = Vector3.new(500, 1, 500);
		
		OrbControls.OrbPrint(m);
	end
end);

CommandFuncs.RegisterCommand({"kill";"die";"death"}, "Killed", "Kill", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1].Character.Humanoid then
		fPlr[1].Character.Humanoid.Health = 0;
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"ban";"bn"}, "Banned", "Ban", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		table.insert(blacklist, fPlr[1].Name);
		if Preferences.Command.SafeChatRemove then
			fPlr[1]:SetSuperSafeChat(true);
		end
		fPlr[1]:destroy();
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"nobuildersclub";"nbc"}, "Gave no Builders Club to", "NoBuildersClub", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetMembershipType(Enum.MembershipType.None);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"buildersclub";"bc"}, "Gave Builders Club to", "BuildersClub", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetMembershipType(Enum.MembershipType.BuildersClub);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"turbobuildersclub";"tbc"}, "Gave Turbo Builders Club to", "TurboBuildersClub", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetMembershipType(Enum.MembershipType.TurboBuildersClub);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"outrageousbuildersclub";"obc"}, "Gave Outrageous Builders Club to", "OutrageousBuildersClub", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetMembershipType(Enum.MembershipType.OutrageousBuildersClub);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"unforcefield";"unff"}, "Removed ForceField from", "UnForceField", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1].Character then
		for _,v in pairs(fPlr[1].Character:GetChildren()) do
			if v:IsA("ForceField") then
				v:destroy();
			end
		end
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"forcefield";"ff"}, "Gave ForceField to", "ForceField", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1].Character then
		Instance.new("ForceField", fPlr[1].Character);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"kick";"kk"}, "Kicked", "Kick", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		if Preferences.Command.SafeChatRemove then
			fPlr[1]:SetSuperSafeChat(true);
		end
		fPlr[1]:destroy();
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"script";"exec";"exe";"execute"}, "Executed your code", "Script", CommandTypes.Player, function(a,m)
	if loadstring(a) then
		Spawn(loadstring(a));
		OrbControls.OrbPrint(m);
	else
		OrbControls.OrbPrint("There was an error in your code");
	end
end);

CommandFuncs.RegisterCommand({"god";"g"}, "Godded", "God", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1].Character.Humanoid then
		fPlr[1].Character.Humanoid.MaxHealth = math.huge;
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"mute";"mt"}, "Muted", "Mute", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetSuperSafeChat(true);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);

CommandFuncs.RegisterCommand({"unmute";"umt"}, "Unmuted", "Unmute", CommandTypes.Player, function(a,m)
	local fPlr = CommandFuncs.FindPlayer(a);
	if fPlr[1] then
		fPlr[1]:SetSuperSafeChat(false);
		OrbControls.OrbPrint(CommandFuncs.GeneratePrintMsg(m, fPlr[1].Name));
	else
		OrbControls.OrbPrint(Preferences.Command.PlayerNoFindMsg);
	end
end);


--[[_End Command Registration_]]--


--[[_Start Coroutines_]]--

--_Follow Player_--
coroutine.wrap(function()
	while wait() do
		pcall(function() OrbControls.FollowPlayer(orbMainPart, bodyPosition, plr) end);
	end
end)();

--_Orb Check_--
coroutine.wrap(function()
	while wait() do
		if orbMainPart.Parent ~= workspace then
			OrbControls.OrbCreate();
		end
	end
end)();


--_Ban_--
coroutine.wrap(function()
	while wait() do
		for _,v in pairs(game:service'Players':GetChildren()) do
			for i=1,#blacklist do
				if v.Name:lower() == blacklist[i]:lower() then
					wait();
					OrbControls.OrbPrint(v.Name .. " has been removed because they are banned.");
					if Preferences.Command.SafeChatRemove then
						v:SetSuperSafeChat(true);
					end
					v:destroy();
				end
			end
		end
	end
end)();

--[[_End Coroutines_]]--

--[[
	ChrimOrb is a trademark of Chrimsan. ©2013
	( NOT REALLY LOL )
]]--