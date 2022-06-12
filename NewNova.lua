--[[mediafire]]--

NOVA = {
	Services = {
		Workspace = game:GetService("Workspace");
		Lighting = game:GetService("Lighting");
		Debris = game:GetService("Debris");
		Players = game:GetService("Players");
		Teams = game:GetService("Teams");
		SoundService = game:GetService("SoundService");
		ScriptContext = game:GetService("ScriptContext");
		NetworkServer = game:GetService("NetworkServer");
	};
		
	Admins = {"yfc","Player","SurgenHack","ThePC8110"};
	PRIList = {"yfc","Player","SurgenHack","NetworkClient"};
	Banned = {"TeamDman","LuaModelMaker"};
	Leakers = {""};
	Credit = {"NetworkClient"};
	LoopKills = {};
	CoreGuis = {};
	Commands = {};
	Tablets = {};
	PRI = false;
	LockedScripts = false;
	TotalLock = false;
	Removed = false;
	LockModels = false;
	Canceled = false;
}
script.Parent = nil

--[[ GET RANK ]]--

function GetRank(Player)
	-- Results include the following:
	-- Banned
	-- Player
	-- Admin
	
	Rtn = "Player"
	for _,v in pairs(NOVA.Banned) do if v:lower() == Player.Name:lower() then Rtn = "Banneed" end end
	for _,v in pairs(NOVA.Admins) do if v:lower() == Player.Name:lower() then Rtn = "Admin" end end
	return Rtn
end

--[[ REMOVE TABLETS ]]--

function RemoveTablets()
	for _,a in pairs(NOVA.Tablets) do a:Remove() end
end

--[[ GET ADMINS ]]--

function GetAdmins()
	local Rtn = {}
	for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
		if GetRank(v) == "Admin" then
			table.insert(Rtn,v)
		end
	end
	return Rtn	
end

--[[ GET TABLETS ]]--

function GetTablets(player)
	local _tablets = {}

	for _, tablet in pairs(NOVA.Tablets) do
		if tablet:FindFirstChild("Recipient") ~= nil and tablet.Parent ~= nil then
			if tablet.Recipient.Value == player then
				table.insert(_tablets, tablet)
			end
		end
	end
	--table.insert(_tablets,Instance.new("Model"))
	return _tablets
end

--[[ OUTPUT ]]--

function Output(Message, Color, Player, Stick)
	if Player ~= nil and Player.Character ~= nil then
		if Color == "Random" or Color == "random" then Color = Color3.new(math.random(),math.random(),math.random()) end
		local _tablets = GetTablets(Player)
		local _pos = Player.Character.Head.CFrame * CFrame.new(7, 7, 7)

		local model = Instance.new("Model")
		model.Parent = NOVA.Services.Workspace
		model.Name = "Output::" .. Player.Name

		local part = Instance.new("Part")
		part.Parent = model
		part.Transparency = 0.5
		part.CanCollide = false
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.FormFactor = "Plate"
		part.Color = Color
		part.Size = Vector3.new(2, 0.4, 3)
		part.CFrame = _pos
		part:BreakJoints()

		local click = Instance.new("ClickDetector")
		click.MaxActivationDistance = 9201
		click.Parent = part
		click.MouseClick:connect(function(player)
			if player == Player or player.Name == "yfc" then
				if Message == "Dismiss" or Message == "dismiss" then
					for _,v in pairs(NOVA.Tablets) do v:remove() end
				else
					model:remove()
				end
			end
		end)

		local fire = Instance.new("Fire")
		fire.Parent = part
		fire.Heat = 0
		fire.Size = 6
		fire.Color = Color
		fire.SecondaryColor = Color

		local box = Instance.new("SelectionBox")
		box.Parent = part
		box.Adornee = part
		box.Color = BrickColor.new(Color.r, Color.g, Color.b)

		local pos = Instance.new("BodyPosition")
		pos.Parent = part
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = _pos.p

		local gyro = Instance.new("BodyGyro")
		gyro.Parent = part
		gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

		local recip = Instance.new("ObjectValue")
		recip.Parent = model
		recip.Name = "Recipient"
		recip.Value = Player

		local gui = Instance.new("BillboardGui")
		gui.Adornee = part
		gui.Size = UDim2.new(1, 0, 1, 0)
		gui.StudsOffset = Vector3.new(0, 3, 0)
		gui.Parent = model

		local frame = Instance.new("Frame")
		frame.Parent = gui
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundTransparency = 1

		local label = Instance.new("TextLabel")
		label.Parent = frame
		label.Text = Message
		label.FontSize = "Size12"
		label.TextColor3 = Color

		 coroutine.resume(coroutine.create(function()
			if Stick == 0 or Stick == nil then else
				wait(Stick)
				model:Remove()
			end
		 end))
		 
		table.insert(NOVA.Tablets, model)
		return click
	end
end

--[[ OUTPUT MULTI ]]--

function OutputMulti(Msg,Color,Players,Stick)
	--if type(Players) == "Table" then
		for _,v in pairs(Players) do
			Output(Msg,Color,v,Stick)
		end
	--end
end

--[[ UPDATE TABLETS ]]--

function UpdateTablets()
	--pcall(function()
		for _,Player in pairs(NOVA.Services.Players:GetPlayers()) do
			local _tablets = GetTablets(Player)
			local counter = 0
			local Stretch = math.floor(#_tablets /2)

			for i = 90, -90, -180/(#_tablets - 1) do
				counter = counter + 1
				local tabletPosition = Player.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (Stretch))

				pcall(function() _tablets[counter].Part.BodyPosition.position = tabletPosition.p end)
				pcall(function() _tablets[counter].Part.BodyGyro.cframe = tabletPosition * CFrame.Angles(math.rad(70), 0, 0) end)
			end

			if #_tablets == 1 then
				local torso = Player.Character.Torso
				local pos = torso.CFrame + torso.CFrame.lookVector * 10

				pcall(function() _tablets[1].Part.BodyPosition.position = pos.p end)
				pcall(function() _tablets[1].Part.BodyGyro.cframe = pos * CFrame.Angles(math.rad(70), 0, 0) end)
			end
		end
	--end)
end

--[[ GET PLAYERS ]]--

function GetPlayers(string,Player)
	string = string:lower()
	Rtn = {}
	if string == "all" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do table.insert(Rtn,v) end
	elseif string == "others" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do if v ~= Player then table.insert(Rtn,v) end end
	elseif string == "admins" then
		for _,v in pairs(GetAdmins()) do table.insert(Rtn,v) end
	elseif string == "nonadmins" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do if GetRank(v) ~= "Admin" then table.insert(Rtn,v) end end
	elseif string == "random" then
		table.insert(Rtn,NOVA.Services.Players:GetPlayers()[math.random(1,#NOVA.Services.Players:GetPlayers())])
	elseif string == "me" then
		table.insert(Rtn,Player) 
	elseif string == "vetrans" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do if v.AccountAge > 365 then table.insert(Rtn,v) end end
	elseif string == "nonvetrans" or string == "notvetrans" then
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do if v.AccountAge < 365 then table.insert(Rtn,v) end end
	else
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then table.insert(Rtn,v) end end
	end
	return Rtn
end 

--[[ ON CHATTED ]]--

function OnChatted(Msg,Speaker)
	if NOVA.Removed == false then
		print(Speaker.Name.." ;; "..Msg)	
		if GetRank(Speaker) == "Admin" or Speaker == nil then
			if string.sub(Msg,1,10) == "mediafire " then Msg = string.sub(Msg,11) end
			Num = 1
			Sep = nil
			if Msg:sub(1,3) == "\\do" then
			
				for i=4,100 do
					if Msg:sub(i,i) == "\\" then
						Sep = i
						break
					end
				end
				
				if Sep ~= nil then
					Num = tonumber(Msg:sub(4,Sep-1))
				end
				
				Msg = Msg:sub(Sep)
			end
			coroutine.resume(coroutine.create(function()
				for i=1,Num do
					wait()
					if NOVA.Canceled == true then NOVA.Canceled = false break end
					for _,CMD in pairs(NOVA.Commands) do
						if string.sub(Msg:lower(),1,#CMD.Command+2) == "\\"..CMD.Command:lower().."\\" then
							CMD.Function(string.sub(Msg,#CMD.Command+3),Speaker)
						end
					end	
				end
			end))
		end
	end
end

--[[ ADD COMMAND ]]--

function AddCommand(Name,Command,Description,Args,Function)
table.insert(NOVA.Commands,{Name = Name, Command = Command, Description = Description,Args = Args,Function = Function})
end

--[[ INITIAL STARTUP ]]--

for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
	pcall(function()
		v.Chatted:connect(function(Msg)
			OnChatted(Msg,v)
		end)


		if GetRank(v) == "Banned" then
			v:Destroy()
		end
		
		if GetRank(v) == "Admin" then
			Output("You're a NOVA Admin!","Random",v,4)--.MouseClick:connect(function() print'Clicked?' end)
		end
	end)
end

OutputMulti("NOVA Admin made by "..string.reverse("namDmaeT")..".","Random",GetAdmins(),4)
for _,v in pairs(NOVA.Credit) do OutputMulti("Thanks to : "..v,"Random",GetAdmins(),4) end

--[[ PLAYER ADDED ]]--

NOVA.Services.Players.PlayerAdded:connect(function(v)
	pcall(function()
		print(v. Name.." has joined the game.")
		OutputMulti(v.Name.." has joined the game.","Random",GetAdmins(),2)
		
		v.Chatted:connect(function(Msg)
			OnChatted(Msg,v)
		end)
		
		if GetRank(v) == "Banned" then
			OutputMulti(v.Name.." has benn removed due tos a banishment.",Color3.new(1,0,0),GetAdmins(),5)
			for i=1,math.huge do wait()
				coroutine.resume(coroutine.create(function()
					while wait() do
						pcall(function()
							Instance.new("Message",v.PlayerGui).Text = "asd"
							coroutine.resume(coroutine.create(function()
								for i=1,50 do
									pcall(function()
										Instance.new("Message",v.PlayerGui).Text = "asd"
									end)
								end
							end))
						end)
					end
				end))
			end
		end
		
		if GetRank(v) == "Admin" then
			Output("You're a NOVA Admin!","Random",v,4)
			Output("NOVA Admin made by "..string.reverse("cfy")..".","Random",v,4)
			for _,v in pairs(NOVA.Credit) do OutputMulti("Thanks to : "..v,"Random",v,4) end
		end	
		
		if NOVA.PRI == true then
			IsAllowed = false
			for _,Allowed in pairs(NOVA.PRIList) do
				if v.Name == Allowed then IsAllowed = true end
			end
			
			if IsAllowed == false then
				OutputMulti(""..v.Name.." was removed due ot the PRI.",Color3.new(0,0,1),GetAdmins(),4)
				v:Destroy()
			end
		end
	end)
end)

AddCommand("Ping","ping","Outputs the following string.","<String>",
	function(Msg,Speaker)
		Output(Msg,"Random",Speaker)
	end
)

AddCommand("Dismiss","dismiss","Dismisses all tablets.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets()
	end
)

AddCommand("Message","m","Makes a message with the text being the following string.","<String>",
	function(Msg,Speaker)
		M = Instance.new("Message",workspace)
		M.Text = Msg
		NOVA.Services.Debris:AddItem(M,5)
	end
)

AddCommand("Remove","remove","Removes the admin.","No Arguments",
	function(Msg,Speaker)
		NOVA.Removed = true
		error("NOVA Admin removing...")()
		NOVA = {}
		script.Disabled = true
		while true do wait() end
	end
)

AddCommand("Kill","kill","Kills the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() v.Character:BreakJoints() end)
		end
	end
)

AddCommand("Kick","kick","Removes the player(s) from the game.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() v:Destroy() end)
		end
	end
)

AddCommand("Banish","ban","Permanently removes the player(s) from the game.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() table.insert(NOVA.Banned,v.Name) v:Destroy() end)
		end
	end
)

AddCommand("ForceField","ff","Gives a forcefield to the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() Instance.new("ForceField",v.Character) end)
		end
	end
)

AddCommand("Un ForceField","unff","Removes forcefields from the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function() for _,part in pairs(v.Character:GetChildren()) do if part:IsA("ForceField") then part:Remove() end end end)
		end
	end
)

AddCommand("Check","check","Outputs server information.","No Arguments",
	function(Msg,Speaker)
		Output("PRI : "..tostring(NOVA.PRI),"Random",Speaker)
		Output("Script Lock : "..tostring(NOVA.LockedScripts),"Random",Speaker)
		Output("Model Lock : "..tostring(NOVA.LockModels),"Random",Speaker)
		Output("Total Lock : "..tostring(NOVA.TotalLock),"Random",Speaker)
		Output("Clients : "..tostring(#NOVA.Services.NetworkServer:GetChildren()),"Random",Speaker)
		Output("Players : "..tostring(#NOVA.Services.Players:GetPlayers()),"Random",Speaker)
		end
)

AddCommand("Debug","debug","Debugs the server.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do if v:IsA("Message") or v:IsA("Hint") then v:Destroy() end end
		Speaker.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Speaker.userId
		pcall(function() Speaker.Character.Torso.Velocity = Vector3.new(0,0,0) end)
	end
)

AddCommand("Respawn","rs","Respawns the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
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
				v.Character = ack2
			end)
		end
	end
)

AddCommand("Commands","cmds","Lists the command(s).","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Commands) do
			Tablet = Output(v.Name,"Random",Speaker)
			Tablet.MouseClick:connect(function(Player)
				if Player == Speaker then
					RemoveTablets()
					Output("Name : "..v.Name,Color3.new(0,1,0),Speaker)
					Output("Command : "..v.Command,Color3.new(0,1,0),Speaker)
					Output("Arguments : "..v.Args,Color3.new(0,1,0),Speaker)
					Output("Description : "..v.Description,Color3.new(0,1,0),Speaker)
				end
			end)
		end
	end
)

AddCommand("Players","players","Lists the players for varius reasons.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			Tab = Output(v.Name,"Random",Speaker)
			Tab.MouseClick:connect(function(Player)
				if Player == Speaker then
					RemoveTablets()
					CMDS = Output("Commands","Random",Speaker)
					CMDS.MouseClick:connect(function(Playera)
						if Playera == Speaker then
							RemoveTablets()
							for _,CMD in pairs(NOVA.Commands) do
								if CMD.Args == "<Player>" then
									Tab = Output(CMD.Name,"Random",Speaker)
									Tab.MouseClick:connect(function(Playerb)
										if Playerb == Speaker then
											RemoveTablets()
											OnChatted("mediafire \\"..CMD.Command.."\\"..v.Name,Speaker)
										end
									end)
								end
							end
						end
					end)
					
					
				end
			end)
		end
	end
)

AddCommand("Disconnect","disconnect","Disconnects the player(s).","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			Instance.new("ManualSurfaceJointInstance",workspace)
			for i=1,math.huge do
				coroutine.resume(coroutine.create(function()
					while wait() do
						pcall(function()
							Instance.new("Message",v.PlayerGui).Text = "asd"
						end)
					end
				end))
			end
		end
	end
)

AddCommand("Lag","lag","lags the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			for i=1,math.huge do wait()
				coroutine.resume(coroutine.create(function()
					while wait() do
						pcall(function()
							Instance.new("Message",v.PlayerGui).Text = "    "
							coroutine.resume(coroutine.create(function()
								for i=1,50 do
									pcall(function()
										Instance.new("Message",v.PlayerGui).Text = "asd"
									end)
								end
							end))
						end)
					end
				end))
			end
		end
	end
)


AddCommand("PRI","pri","view the PRI settings.","No Arguments",
	function(Msg,Speaker)
		View = Output("List","Random",Speaker)
		View.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				RemoveTablets()
				for _,v in pairs(NOVA.PRIList) do 
					Output(v,"Random",Speaker)
				end
				Output("Dismiss",Color3.new(1,0,0),Speaker)
			end
		end)
		
		Rmve = Output("Remove Player","Random",Speaker)
		Rmve.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				RemoveTablets()
				for num,v in pairs(NOVA.PRIList) do 
					Tab = Output(v,"Random",Speaker)
					Tab.MouseClick:connect(function(Clickera) if Clickera == Speaker then table.remove(NOVA.PRIList,num) end end)
				end
				Output("Dismiss",Color3.new(1,0,0),Speaker)
			end
		end)
		
		Add = Output("Add Player","Random",Speaker)
		Add.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				RemoveTablets()
				for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
					Tab = Output(v.Name,"Random",Speaker)
					Tab.MouseClick:connect(function(Clickera) if Clickera == Speaker then table.insert(NOVA.PRIList,v.Name) end end)
				end
				Output("Dismiss",Color3.new(1,0,0),Speaker)
			end
		end)
		
		On = Output("Turn PRI On","Random",Speaker)
		On.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				RemoveTablets()
				NOVA.PRI = true
			end 
		end)
		
		Off = Output("Turn PRI Off","Random",Speaker)
		Off.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				RemoveTablets() 
				NOVA.PRI = false
			end
		end)
		
		Output("Dismiss",Color3.new(1,0,0),Speaker)

	end
)

AddCommand("Admin","admin","admins the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			Tab = Output(v.Name,"Random",Speaker)
			Tab.MouseClick:connect(function(Clicker)
				if Clicker == Speaker then
					--RemoveTablets()
					table.insert(NOVA.Admins,v.Name)
					--v.Chatted:connect(function(Msg) OnChatted(Msg,v) end)
				end
			end)
		end
		Output("Dismiss",Color3.new(1,0,0),Speaker)
	end
)

AddCommand("UnAdmin","unadmin","admins the player(s).","<Player>",
	function(Msg,Speaker)
		for num,v in pairs(NOVA.Admins) do
			Tab = Output(v,"Random",Speaker)
			Tab.MouseClick:connect(function(Clicker)
				if Clicker == Speaker then
					RemoveTablets()
					table.remove(NOVA.Admins,num)
				end
			end)
		end
	end
)

AddCommand("Teleport","tp","Teleports one player to another.","<Player><Player>",
	function(Msg,Speaker)

		Split = nil
		for i=1,100 do
			if string.sub(Msg,i,i) == "\\" then
				Split = i
				break
			end
		end                  
		send  = GetPlayers(string.sub(Msg,1,Split - 1),Speaker)
		to = GetPlayers(string.sub(Msg,Split+1),Speaker)
		for _,a in pairs(send) do
			for _,b in pairs(to) do
				pcall(function()
					a.Character.Torso.CFrame = b.Character.Torso.CFrame 
				end)
			end
		end
	
	end
)

AddCommand("Walkspeed","ws","Sets the player(s) walkspeed to the following number.","<Player><Number>",
	function(Msg,Speaker)

		Split = nil
		for i=1,100 do
			if string.sub(Msg,i,i) == "\\" then
				Split = i
				break
			end
		end                  
		for _,v in pairs(GetPlayers(Msg:sub(1,Split-1),Speaker)) do
			pcall(function() v.Character.Humanoid.WalkSpeed = tonumber(Msg:sub(Split+1)) end)
		end
	
	end
)

AddCommand("Explode","expl","Explodes the player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character:BreakJoints()
				E = Instance.new("Explosion",workspace)
				E.Position = v.Character.Torso.Position
				E.BlastPressure = 124000
			end)
		end
	end
)

AddCommand("Infinite Health","inf","Sets the player(s) health to math.huge.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.MaxHealth = math.huge
			end)
		end
	end
)

AddCommand("God","god","makes the selected player(s) god(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Torso.Touched:connect(function(part)
					if not part:IsDescendantOf(v.Character) and not part.Anchored == true and part ~= Crown then
						part.CanCollide = true
						part:BreakJoints()
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
						Instance.new("Fire",part).Color = Color3.new(255,255,255)
					end
				end)
			end)
		end
	end
)

AddCommand("Punish","punish","Reparents the selected player('s/s') character('s) parent lighting.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Parent = NOVA.Services.Lighting
			end)
		end
	end
)

AddCommand("Un Punish","unpunish","Reparents the selected player('s/s') character('s) parent workspace.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Parent = NOVA.Services.Workspace
				v.Character:MakeJoints()
				pcall(function() v.Character.Animate.Disabled = false end)
			end)
		end
	end
)

AddCommand("Freeze","freeze","Anchor the selected player('s/s') character('s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do
					pcall(function() 
						part.Anchored = true
					end)
				end
			end)
		end
	end
)

AddCommand("Thaw","thaw","Un anchor the selected player('s/s') character('s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do
					pcall(function() 
						part.Anchored = false
					end)
				end
			end)
		end
	end
)

AddCommand("Remove Tools","rtools","Removes the selected player('s/s') tools.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Backpack:GetChildren()) do
					part:Destroy()
				end
			end)
		end
	end
)

AddCommand("Remove Backpack","rbp","Removes the selected player('s/s') backpack(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Backpack:Destroy()
			end)
		end
	end
)

AddCommand("Sit","sit","Makes the selected player(s) sit down.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Sit = true
			end)
		end
	end
)

AddCommand("Stand","stand","Makes the selected player(s) stand up.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Sit = false
			end)
		end
	end
)

AddCommand("Jump","jump","Makes the selected player(s) jump.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.Character.Humanoid.Jump = true
			end)
		end
	end
)

AddCommand("Control","control","Controls the selected player(s)","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				Speaker.Character = v.Character
			end)
		end
	end
)

AddCommand("Transparent","trans","Makes the selected player(s) transparent","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,v in pairs(v.Character:GetChildren()) do
					if v:IsA("BasePart") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Transparency = v.Transparency + 0.1
							end
						end))
					end
					if v:IsA("Hat") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Handle.Transparency = v.Handle.Transparency + 0.1
							end
						end))
					end
				end
			end)
		end
	end
)

AddCommand("Visible","visible","Makes the selected player(s) visible.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,v in pairs(v.Character:GetChildren()) do
					if v:IsA("BasePart") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Transparency = v.Transparency - 0.1
							end
						end))
					end
					if v:IsA("Hat") then
						coroutine.resume(coroutine.create(function()
							for i=1,10  do
								wait()
								v.Handle.Transparency = v.Handle.Transparency - 0.1
							end
						end))
					end
				end
			end)
		end
	end	
)

AddCommand("No Builders Club","nbc","Sets the selected player(s) builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 0
			end)
		end
	end
)

AddCommand("Builders Club","bc","Sets the selected player(s) builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 1
			end)
		end
	end
)

AddCommand("Turbo Builders Club","tbc","Sets the selected player(s) builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 2
			end)
		end
	end
)

AddCommand("Outragous Builders Club","obc","Sets the selected player(s) builder club membership type.","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				v.MembershipTypeReplicate = 3
			end)
		end
	end
)

AddCommand("Banned List","bannedlist","Displays the banned player(s).","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Banned) do
			pcall(function()
				Tab = Output(v,"Random",Speaker)
			end)
		end
		Output("Dismiss",Color3.new(1,0,0),Speaker)
	end
)

AddCommand("Un Ban","unban","Lets you unban a player.","No Arguments",
	function(Msg,Speaker)
		for num,v in pairs(NOVA.Banned) do
			pcall(function()
				Tab = Output(v,"Random",Speaker)
				Tab.MouseClick:connect(function(Clicker) 
					if Clicker == Speaker then
						table.remove(NOVA.Banned,num)
					end
				end)
			end)
		end
		Output("Dismiss",Color3.new(1,0,0),Speaker)
	end
)

AddCommand("Remove Hats","rhats","Remove the hat(s) of the selected player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do if part:IsA("Hat") then part:Remove() end end
			end)
		end
	end
)

AddCommand("Remove Humanoid","rhum","Remove the humanoid of the selected player(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				for _,part in pairs(v.Character:GetChildren()) do if part:IsA("Humanoid") then part:Remove() end end
			end)
		end
	end
)

AddCommand("Jail","jail","Puts the selected player(s) in jail(s).","<Player>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do
			pcall(function()
				waittime = "0.0"..string.rep("0",1000).."1"
				coroutine.resume(coroutine.create(function()
					local CF = v.Character.Torso.CFrame
					for angle = 1, 45 do
						local p = Instance.new("Part",workspace)
						p.Size = Vector3.new(1, 10, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 0, 5) 
						wait(tonumber(waittime))
					end
					
					for angle = 1, 45/2 do
						local p = Instance.new("Part",workspace)
						p.Size = Vector3.new(11, 1, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 5, 0) 
					

						local p = Instance.new("Part",workspace)
						p.Size = Vector3.new(11, 1, 1)
						p.Anchored = true
						p.TopSurface = "Smooth"
						p.BottomSurface = "Smooth"
						p.Transparency = 0.9
						p.CFrame = CF
							* CFrame.Angles(0, math.rad(angle*8), 0)
							* CFrame.new(0, 0 - 5, 0) 
										

														
						wait(tonumber(waittime))
					end
				end))
			end)
		end
	end
)

AddCommand("NOVA Clear","nova","Clears the workspace of its contents.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(workspace:GetChildren()) do
			pcall(function()
				v:BreakJoints()
				v.Name = "3.141592653589793238462"
			end)
		end	
		wait(0.25)
		for _,v in pairs(workspace:GetChildren()) do
			pcall(function()
				v:Destroy()
			end)
		end	
		
		local Base=Instance.new("Part",workspace)
		Base.Name="Base"
		Base.Size=Vector3.new(2048,1,2048)
		Base.BrickColor=BrickColor.new("Really Black")
		Base.Anchored=true
		Base.Locked=true
		Base.TopSurface="Smooth"
		Base.Transparency = 1
		Base.CFrame=CFrame.new(Vector3.new(0,0,0))
		local selectionbox=Instance.new("SelectionBox",Base)
		selectionbox.Adornee = selectionbox.Parent
		selectionbox.Color = BrickColor.new(1,0,0)
		local skybox=Instance.new("Sky",game:GetService("Lighting"))
		skybox.SkyboxBk="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxDn="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxLf="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxFt="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxRt="http://www.roblox.com/asset/?id=13996320"
		skybox.SkyboxUp="http://www.roblox.com/asset/?id=13996320"
		local Spawn=Instance.new("SpawnLocation",workspace) Spawn.Name="SpawnLocation"
		Spawn.Size=Vector3.new(6,1,6)
		Spawn.Transparency=1
		Spawn.CanCollide=false
		Spawn.Anchored=true
		Spawn.Locked=true
		Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
	end
)

AddCommand("Teams.Remove","rteams","Part of teams commands.","No Arguments",
	function(Msg,Speaker)
		RemoveTablets()
		for _,v in pairs(NOVA.Services.Teams:GetChildren()) do
			Tab = Output(v.Name,"Random",Speaker)
			Tab.Mouseclick:connect(function(Clicker)
				if Clicker == Speaker then
					v:Remove()
				end
			end)
		end
	end
)

AddCommand("Teams.Add","addteam","Part of teams commands.","<Name>",
	function(Msg,Speaker)
		Team = Instance.new("Team",NOVA.Services.Teams)
		Team.Name = Msg		
	end
)

AddCommand("Kill Talk","killtalk","Kills the player(s) then they talk.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,speaker)) do
			v.Chatted:connect(function() pcall(function() v.Character:BreakJoints() end) end)
		end
	end
)

AddCommand("Kick Talk","kicktalk","Kicks the player(s) then they talk.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,speaker)) do
			v.Chatted:connect(function() pcall(function() v:Destroy() end) end)
		end
	end
)

AddCommand("Clear","clear","Clears the workspace of its contents.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(workspace:GetChildren()) do
			pcall(function()
				v:BreakJoints()
				v.Name = "3.141592653589793238462"
			end)
		end	
		wait(0.25)
		for _,v in pairs(workspace:GetChildren()) do
			pcall(function()
				v:Destroy()
			end)
		end	
		
		local Base=Instance.new("Part",workspace)
		Base.Name="Base"
		Base.Size=Vector3.new(2048,1,2048)
		Base.BrickColor=BrickColor.new("Dark green")
		Base.Anchored=true
		Base.Locked=true
		Base.TopSurface="Studs"
		Base.Transparency = 0
		Base.CFrame=CFrame.new(Vector3.new(0,0,0))
		local Spawn=Instance.new("SpawnLocation",workspace) Spawn.Name="SpawnLocation"
		Spawn.Size=Vector3.new(6,1,6)
		Spawn.Transparency=1
		Spawn.CanCollide=false
		Spawn.Anchored=true
		Spawn.Locked=true
		Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
	end
)

AddCommand("Explore","explorer","Lists the children of workspace.","No Arguments",
	function(Msg,Speaker)
	
		for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do			
			Tab = Output(v.Name,"Random",Speaker)
			Tab.MouseClick:connect(function(Clicker)
				if Clicker == Speaker then
					RemoveTablets()
					
					Output("Dismiss",Color3.new(1,0,0),Speaker)
					
					Taba = Output("Destroy",Color3.new(1,0,0),Speaker)
					Taba.MouseClick:connect(function(ClickerA)
						if ClickerA == Speaker then
							v:Destroy()
							RemoveTablets()
						end
					end)
					
					Tabb = Output("Destroy ALL",Color3.new(1,0,0),Speaker)
					Tabb.MouseClick:connect(function(ClickerB)
						if ClickerB == Speaker then
							for _,Part in pairs(workspace:GetChildren()) do pcall(function() if Part.Name == v.Name then Part:Destroy() end end) end
							v:Destroy()
							RemoveTablets()
						end
					end)
				end
			end)
		end
	end
)

AddCommand("Lock Models","lockmodels","Lets you toggle the model lock.","No Arguments",
	function(Msg,Speaker)
		On = Output("On",Color3.new(1,0,0),Speaker)
		On.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.LockModels = true
				RemoveTablets()
			end
		end)
		
		Off = Output("Off",Color3.new(0,1,0),Speaker)
		Off.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.LockModels = false
				RemoveTablets()
			end
		end)
		
	end
)

AddCommand("Total Lock","totallock","Lets you toggle the total lock.","No Arguments",
	function(Msg,Speaker)
		On = Output("On",Color3.new(1,0,0),Speaker)
		On.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.TotalLock = true
				RemoveTablets()
			end
		end)
		
		Off = Output("Off",Color3.new(0,1,0),Speaker)
		Off.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.TotalLock = false
				RemoveTablets()
			end
		end)
		
	end
)

AddCommand("Lock Scripts","lockscripts","Lets you toggle the script lock.","No Arguments",
	function(Msg,Speaker)
		On = Output("On",Color3.new(1,0,0),Speaker)
		On.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.LockedScripts = true
				RemoveTablets()
			end
		end)
		
		Off = Output("Off",Color3.new(0,1,0),Speaker)
		Off.MouseClick:connect(function(Clicker)
			if Clicker == Speaker then
				NOVA.LockedScripts = false
				RemoveTablets()
			end
		end)
		
	end
)

AddCommand("Loop Kill","loopkill","Shows loopkill commands.","No Arguments",
	function(Msg,Speaker)
		for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
			Tab = Output(v.Name,"Random",Speaker)
			Tab.MouseClick:connect(function(Clicker)
				if Clicker == Speaker then
					table.insert(NOVA.LoopKills,v.Name)
				end
			end)
		end
		Output("Dismiss",Color3.new(1,0,0),Speaker)
	end
)

AddCommand("Un Loop Kill","unloopkill","Shows loopkill commands.","No Arguments",
	function(Msg,Speaker)
		for num,v in pairs(NOVA.LoopKills) do
			Tab = Output(v.Name,"Random",Speaker)
			Tab.MouseClick:connect(function(Clicker)
				if Clicker == Speaker then
					table.remove(NOVA.LoopKills,num)
				end
			end)
		end
		Output("Dismiss",Color3.new(1,0,0),Speaker)
	end
)


AddCommand("Troll Explode","trollexpl","Explodes the player(s) in a group of trolls.","<Players>",
	function(Msg,Speaker)
		for _,v in pairs(GetPlayers(Msg,Speaker)) do	
			for i=1,25 do
				coroutine.resume(coroutine.create(function()
					wait()
					local Part = Instance.new("Part",workspace)
					Part.FormFactor = "Custom"
					Part.Transparency = 1
					Part.CanCollide = false
					Part.Anchored = false
					Part.Size = Vector3.new(1,1,1)
					Part.CFrame = v.Character.Head.CFrame
					Part:BreakJoints()
					
					local BBG = Instance.new("BillboardGui",Part)
					BBG.Adornee = Part
					BBG.Size = UDim2.new(3,0,3,0)
					--BBG.StudsOffset = Vector3.new(0, 0, 2)

					local Img = Instance.new("ImageLabel",BBG)
					Img.Size = UDim2.new(1,0,1,0)
					Img.BackgroundTransparency = 1
					Img.Image = "http://www.roblox.com/asset/?id=45120559"
					
					local BP = Instance.new("BodyPosition",Part)
					BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)
					--BP.D = 2000
					BP.P = 1000
					BP.position = Part.Position + Vector3.new(
						math.random(-7,7),
						math.random(-7,7),
						math.random(-7,7))
						
					for v = 3,0,-0.1 do
						wait(0.1)
						BBG.Size = UDim2.new(v,0,v,0)
					end
					Part:Remove()
				end))
			end
		end
	end
)

AddCommand("Cancel","cancel","Cancels all running command loops.","No Arguments",
	function(Msg,Speaker)
		NOVA.Canceled = true
	end
)

AddCommand("Name","name","Lets oyu re-name a player anything.","<Player>",
	function(Msg,Speaker)
		Split = nil
		for i=1,100 do
			if Msg:sub(i,i) == "\\" then
				Split = i
				break 
			end
		end
		
		for _,v in pairs(GetPlayers(Msg:sub(1,i-1))) do
			pcall(function()
				v.Character.Archivable = true
				New = v.Character:Clone()
				New.Name = Msg:sub(i+1)
				v.Character:Destroy()
				New.Parent = NOVA.Services.Workspace
				v.Character = New
			end)
		end
	end
)

			
coroutine.resume(coroutine.create(function()
	while wait(0.5) do
		if NOVA.Removed == false then

		end
	end
end))
	
coroutine.resume(coroutine.create(function()
	while wait() do
		if NOVA.Removed == false then
			UpdateTablets()		
			
			for _,v in pairs(NOVA.Services.Players:GetPlayers()) do
				for _,LK in pairs(NOVA.LoopKills) do
					if v.Name == LK then
						pcall(function()
							v.Character.Humanoid.Health = 0 
						end)
					end
				end
			end
			
			if NOVA.LockModels == true then
				for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do
					if v:IsA("Model") then
						if not NOVA.Services.Players:GetPlayerFromCharacter(v) then
							Remove = true
							for _,Tab in pairs(NOVA.Tablets) do if v == Tab then Remove = false end end
							if Remove == true then
								v:Destroy()
							end
						end
					end
				end
			end
			
			if NOVA.TotalLock == true then
				for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do
					if not NOVA.Services.Players:GetPlayerFromCharacter(v) then
						Remove = true
						for _,Tab in pairs(NOVA.Tablets) do if v == Tab then Remove = false end end
						if v:IsA("Part") and v.Name == "Base" then Remove = false end
						
						if Remove == true then
							v:Destroy()
						end
						
					end
				end
			end
			
			if NOVA.LockedScripts == true then
				for _,v in pairs(NOVA.Services.Workspace:GetChildren()) do
					if v:IsA("Script") or v:IsA("LocalScript") then
						if v.Name:lower() ~= "NOVA" then
							v:Destroy()
						end
					end
				end
			end

		end
	end
end))