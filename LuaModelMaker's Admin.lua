---[[mediafire]]---

script.Parent = nil

Admins = {
	{Name = "yfc", Rank = 3, Phrase = "All Mighty master of Mayhem Admin"};
	{Name = "NoName", Rank = 3, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 2, Phrase = "A NOVA master"};
	{Name = "NoName", Rank = 2, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 2, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 2, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 0, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 2, Phrase = "Loves admins!"};
	{Name = "NoName", Rank = 0, Phrase = "[No Phrase]"};
	{Name = "NoName", Rank = 1, Phrase = "Loves admins, Most of all Mayhem admin"};
	{Name = "NoName", Rank = 0, Phrase = "Cusser"}
	
}

Exiled = {
	{Name = "Aremdiex", Punishment = "Lag"};
	{Name = "Mac4000", Punishment = "Lag"};
	{Name = "NetworkClient", Punishment = "Lag"};
	{Name = "zacvader", Punishment = "Lag"};
	{Name = "illbalde10", Punishment = "Ban"};
	{Name = "xdhunta1774", Punishment = "Lag"};
	{Name = "static", Punishment = "Lag"};
}

Ranks = {
	[0] = {"Pesant", "Lime green"};
	[1] = {"Vassal", "Really red"};
	[2] = {"Noble", "New Yeller"};
	[3] = {"King", "Really blue"};
}

Settings = {
	Colors = {
		Color = "Lavender";
		KingAvatarContrastColor = "Lime green"
	};
	Messages = {
		RandomLagMessages = {"Joo be laggin bro?", "LAGGG!", "Joo lagger", "LOL LAGGGG!", "W00t lag", "Joo mad Bro", "[ Laggified ]"};
		RandomWords = {"Car", "Restart", "Storing", "Electric", "Me", "Lisp", "Smell", "Microfilm", "Mating", "Junta", "Cliffhanger", "Bus", "Random", "Oratoria", "Livery", "Hemorrhoid", "Disembowelment", "Cattails" , "Backseat", "Novena", "Aftergrowth", "Abulia", "Harebrainedness", "Idioticalness", "Rhyacolite", " Nonverbosity", "Photoheliography", "Federalness", "Unemotiveness", "Epipastic", "Myacidae", "Superdemand", "Sphaerocarpos", "Lunda"};
		ReleaseMessages = {"release", "dismiss", "discard", "let go", "remove", "hide", "close", "/dismiss/"};
		Commands = {";Commands", ";Test", ";List Players", ";Random Words", ";Kill@[Person]", ";Awesome@[Player]", ";Sit@[Player]", ";Jump@[Player]", ";Sleep@[Player]", ";Punish@[Player]", ";Unpunish@[Player]", ";Admin@[Player]{Kings}", "Unadmin@[Player]{Kings}", ";Ping: [Text]", ";Note: [Text]", ";Die{Kings}",";Color: [BrickColor]", ";Kick@[Player]", ";Ban@[Player]{Kings}", ";Lag@[Player]{King}", ";Shutdown", ";Highlight@[Player]", ";ff@[Player]", ";Unff[Player]", ";Nbc@[Player]", ";Bc@[Player]", ";Tbc@[Player]", ";Obc@[Player]", ";RandomBc@[Player]",  ";KillChat@[Player]", ";KickChat@[Player]", ";BanChat@[Player]", ";LagChat@Player{Kings}", ";Avatar", ";Tips"};
	};
	Values = {
		Pings = {"Say release or click a skull to release"};
		Notes = {};
		HighlightTime = 2;
		SkullHight = 4;
		CreateAvatar = false;
	};
}

Players = game:GetService("Players")

function ScanPlayer(PlayerName)
	for i,v in pairs(Players:GetPlayers()) do
		if string.lower(string.sub(v.Name,1,#PlayerName)) == string.lower(PlayerName) then
			return v 
		end 
	end 
end

function CreateLagLocalScript(Text, Parent)
	if Parent.Parent ~= nil then
		for i = 1,100 do
			local Message = Instance.new("Message", Parent)
			Message.Text = Text
			local Message2 = Instance.new("Hint", Parent)
			Message2.Text = Text
		end
	end
end

function Lag(PlayerName)
	coroutine.resume(coroutine.create(function() while wait() do  -- Interchaging values make it hard for the computer to keep up with
		coroutine.resume(coroutine.create(function() -- Don't wanna lag us too!
			CreateLagLocalScript(Settings.Messages.RandomLagMessages[math.random(1,#Settings.Messages.RandomLagMessages)], Players[PlayerName].PlayerGui)
		end))
	end end))
end

function Highlight(PlayerName, Color)
	for _,Parts in pairs(Players[PlayerName].Character:GetChildren()) do
		if Parts.className == "Part" then
			local Box = Instance.new("SelectionBox", Parts)
			Box.Adornee = Parts
			Box.Color = BrickColor.new(Color)
			Box.Transparency = 0.3
			local Fire = Instance.new("Fire", Parts)
			Fire.Color = BrickColor.new(Color).Color
			Fire.SecondaryColor = BrickColor.new(Color).Color
		end
	end
	wait(Settings.Values.HighlightTime)
	for _,Parts in pairs(Players[PlayerName].Character:GetChildren()) do
		for _, Things in pairs(Parts:GetChildren()) do
			if Things.className == "SelectionBox" or Things.className == "Fire" then Things:remove() end
		end
	end
end

function ShowSkulls(ToWhom, TableOptions)
	local Skulls = {}
	local Move = true
	TableOptions[#TableOptions + 1] = "Mayhem Admin (Made by: Me)"
	if Players[ToWhom].Character ~= nil then
		for Arguments, Objects in pairs(TableOptions) do
			local Skull = Instance.new("Part", Workspace)
			Skull.Name = "Skull"
			Skull.Size = Vector3.new(2,2,2)
			Skull.Transparency = 0.5
			pcall(function() Skull.Position = Players[ToWhom].Character.Torso.Position end)
			Skull.CanCollide = false
			table.insert(Skulls, Skull)

			local SkullMesh = Instance.new("SpecialMesh", Skull)
			SkullMesh.MeshId = "http://www.roblox.com/asset/?id=36869983"
			SkullMesh.Scale = Vector3.new(1,1.2,1.2)
			SkullMesh.TextureId = "http://www.roblox.com/asset/?id=36869975"

			local Fire = Instance.new("Fire", Skull)
			Fire.Heat = 0
			Fire.Color = BrickColor.new(Settings.Colors.Color).Color
			Fire.SecondaryColor = BrickColor.new(Settings.Colors.Color).Color
		   
			local Billboard = Instance.new("BillboardGui", Skull)
			Billboard.Adornee = Skull
			Billboard.Enabled = true
			Billboard.Active = true
			Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
			Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
		   
			local Text = Instance.new("TextLabel", Billboard)
			Text.Text = Objects
			Text.TextColor3 = BrickColor.new(Settings.Colors.Color).Color
			Text.BackgroundTransparency = 1
			Text.Size = UDim2.new(1, 0, 1, 0)
			Text.FontSize = "Size12"
			Text.Font = "ArialBold"
			
			local CurrentArgumentValue = Arguments
			local CurrentObjectValue = Objects
			
			local function RemoveSkulls()
				for _,v in pairs(Skulls) do
					Move = false
					if pcall(function() v.BodyPosition.position = Players[ToWhom].Character.Torso.Position end) then else v.CFrame = Players[ToWhom].Character.Torso.CFrame end
					wait(0.15)
					v:remove()
				end
				Skulls = {}
			end
			
			local ClickDetector = Instance.new("ClickDetector", Skull)
			ClickDetector.MaxActivationDistance = math.huge
			ClickDetector.MouseClick:connect(function(Player)
				if Player.Name == ToWhom then
					RemoveSkulls()
				end
				for _,AllAdmins in pairs(Admins) do -- This allows accses for Kings to remove other's skulls
					if AllAdmins.Rank == 3 then
						if Player.Name == AllAdmins.Name then
							RemoveSkulls()
						end
					end
				end
			end)
			Players[ToWhom].Chatted:connect(function(Message)
				for _, AllMessages in pairs (Settings.Messages.ReleaseMessages) do
					if string.sub(string.lower(Message),1,#AllMessages) == AllMessages then 
						RemoveSkulls()
					end
				end
				if Objects == "Are you shure you want to remove mayhem admin?" then
					RemoveSkulls()
				end
			end)
			Skull:BreakJoints()-- Stops Clutering
		end
		coroutine.resume(coroutine.create(function()
			local radius = 6 + (#Skulls * 1)
			
			while wait() and Move == true do
				if #Skulls == 0 then break end
				for Arguments, TheSkull in pairs(Skulls) do
					local BP = TheSkull:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", TheSkull)
					BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
					local BG = TheSkull:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", TheSkull)
					BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
					local Pos = (Players[ToWhom].Character:FindFirstChild("Torso") or Players[ToWhom].Character:FindFirstChild("Torso")).CFrame
			   
					local X = math.cos((tonumber(Arguments)/#Skulls - (0.5/#Skulls)) * math.pi * 2) * radius -- cos
					local Y = Settings.Values.SkullHight
					local Z = math.sin((tonumber(Arguments)/#Skulls - (0.5/#Skulls)) * math.pi * 2) * radius -- sin
			   
					BP.position = Pos:toWorldSpace(CFrame.new(X,0-Y,Z):inverse()).p
					BG.cframe = CFrame.new(TheSkull.Position, Pos.p) * CFrame.Angles(math.rad(-15), 0, 0)
				end
			end
		end))
		return Skulls
	end
end 

function CreateAvatar(Person)
	if Person.Character ~= nil then
	
		local Phrase = nil
		
		for _,Things in pairs(Workspace:GetChildren()) do
			for _,OtherThings in pairs(Things:GetChildren()) do
				if OtherThings.Name == Person.Name then Things:remove() end
			end
		end
		local Avatar = Instance.new("Part", Workspace)
		Avatar.Size = Vector3.new(3,4,3)
		Avatar.Name = "Avatar"
		Avatar.Transparency = 0.5
		Avatar.Position = Person.Character.Torso.Position
		Avatar.CanCollide = false
		
		local Mesh = Instance.new("CylinderMesh", Avatar)
		
		local BG = Instance.new("BodyGyro", Avatar)
		BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		
		local BP = Instance.new("BodyPosition", Avatar)
		BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BP.position = Person.Character.Torso.Position
		
		local Fire = Instance.new("Fire", Avatar)
		Fire.Heat = 0
		Fire.Size = 7
		
		local Decal = Instance.new("Decal", Avatar)
		
		local Billboard = Instance.new("BillboardGui", Avatar)
		Billboard.Adornee = Avatar
		Billboard.Enabled = true
		Billboard.Active = true
		Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
		Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
		   
		local Text = Instance.new("TextLabel", Billboard)
		Text.BackgroundTransparency = 1
		Text.Size = UDim2.new(1, 0, 1, 0)
		Text.FontSize = "Size12"
		Text.Font = "Arial"
		Text.Name = " 	TEXT TROLOLOLOLOL	 "
		
		local Check = Instance.new("BoolValue", Avatar)
		Check.Name = Person.Name
		
		local ClickDetector = Instance.new("ClickDetector", Avatar)
		ClickDetector.MaxActivationDistance = math.huge
		ClickDetector.MouseClick:connect(function(Player)
			local function ChattedAvatarFunctions(ThePerson)
				for _,AllAdmins in pairs(Admins) do
					if Player.Name == AllAdmins.Name then
						ShowSkulls(ThePerson.Name, {"Here are some options "..Player.Name..", You must chat it", "Remove avatar", "Customize Avatar", "Create Phrase: [Phrase]"})
						ThePerson.Chatted:connect(function(Message1)
							if Avatar ~= nil then
								if string.lower(Message1) == "remove avatar" then
									ShowSkulls(Player.Name, {"Remeber, You can always chat ;Avatar for another avatar"})
									Avatar:remove()
								elseif string.lower(Message1) == "customize avatar" then
									ShowSkulls(Player.Name, {"Here are some customizable options "..Player.Name..", You must chat it", "Face: [Int, ASPX ID]"})
									Player.Chatted:connect(function(Message2)
										if string.sub(string.lower(Message1),1,6) == "face: " then
											Decal.Texture = "http://roblox.com/asset/?id="..string.sub(Message2, 7)
											ShowSkulls(Player.Name, {"Changed Face ID to "..string.sub(Message2, 7)..", Say ;Avatar to see it"})
										end
									end)
								elseif string.sub(string.lower(Message1),1,15) == "create phrase: " then
									AllAdmins.Phrase = string.sub(Message1, 16)
									ShowSkulls(Player.Name, {"Made the phrase: "..Phrase..", Now say ;Avatar to have it..."})
								end
							end
						end)
					end
				end
			end
			if Player.Name == Person.Name then
				ChattedAvatarFunctions(Player)
			end
		end)
		
		for _, AllAdmins in pairs(Admins) do
			if Person.Name == AllAdmins.Name then
				Phrase = AllAdmins.Phrase
				Avatar.BrickColor = BrickColor.new(Ranks[AllAdmins.Rank][2])
				Fire.Color = BrickColor.new(Ranks[AllAdmins.Rank][2]).Color
				Fire.SecondaryColor = BrickColor.new(Ranks[AllAdmins.Rank][2]).Color
				Text.TextColor3 = BrickColor.new(Ranks[AllAdmins.Rank][2]).Color
				Text.Text = "Mayhem Admin(Made by: Me) -- "..Ranks[AllAdmins.Rank][1].."("..AllAdmins.Rank.."/3); "..Person.Name..": "..Phrase
				if AllAdmins.Rank == 3 then
					local Box = Instance.new("SelectionBox", Avatar)
					Box.Adornee = Avatar
					Box.Transparency = 0.4
					Box.Color = BrickColor.new(Settings.Colors.KingAvatarContrastColor)
				end
			end
		end
		coroutine.resume(coroutine.create(function() while wait() do 
			Avatar:BreakJoints()
			BP.position = Person.Character.Torso.CFrame:toWorldSpace(CFrame.new(7,5,-2)).p
			BG.cframe = Person.Character.Torso.CFrame
			if pcall(function() Decal.Texture = Person.Character.Head.face.Texture end) then else Decal.Texture = "rbxasset://textures/face.png" end
		end end))
	end
end

function ChatFunctions(Message, TheSpeaker)
	Speaker = TheSpeaker.Name
	for _,Admins in pairs(Admins) do
		if Speaker == Admins.Name then 
			local Rank = Admins.Rank
			if string.lower(Message) == ";commands" then
				ShowSkulls(Speaker, Settings.Messages.Commands)
				
			elseif string.lower(Message) == ";test" then 
				Speaker = Admins.Name
				ShowSkulls(Speaker, {"Test Complete, I Work Fine"})

			elseif string.lower(Message) == ";listplayers" or string.lower(Message) == ";list players" then
				local Names = {}
				for _, AllPlayers in pairs (Players:GetPlayers()) do
					table.insert(Names, AllPlayers.Name)
				end
				ShowSkulls(Speaker, Names)

			elseif string.lower(Message) == ";randomwords" or string.lower(Message) == ";random words" then
				SomeRandomWords = {}
				for i = 1,10 do
					table.insert(SomeRandomWords, Settings.Messages.RandomWords[math.random(1, #Settings.Messages.RandomWords)])
				end
				ShowSkulls(Admins.Name, SomeRandomWords)

			elseif string.sub(string.lower(Message),1,6) == ";kill@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),7))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, "New Yeller")
					ChattedPerson.Character:BreakJoints()
				end

			elseif string.sub(string.lower(Message),1,9) == ";awesome@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),10))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, "Really blue")
					ChattedPerson.Character.Humanoid.MaxHealth = math.huge
				end
	
			elseif string.sub(string.lower(Message),1,5) == ";sit@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					ChattedPerson.Character.Humanoid.Sit = true
				end
	
			elseif string.sub(string.lower(Message),1,6) == ";jump@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),7))
				if ChattedPerson ~= nil then
					ChattedPerson.Character.Humanoid.Jump = true
				end
				
			elseif string.sub(string.lower(Message),1,7) == ";sleep@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),8))
				if ChattedPerson ~= nil then
					ChattedPerson.Character.Humanoid.PlatformStand = true
				end

			elseif string.sub(string.lower(Message),1,8) == ";punish@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),9))
				if ChattedPerson ~= nil then
					ChattedPerson.Character.Parent = game:GetService("Lighting")
				end

			elseif string.sub(string.lower(Message),1,10) == ";unpunish@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),11))
				if ChattedPerson ~= nil then
					ChattedPerson.Character.Parent = game:GetService("Workspace")
					ChattedPerson.Character:MakeJoints()
				end
			
			elseif string.sub(string.lower(Message),1,7) == ";admin@" and Rank == 3 then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),8))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, "Bright blue")
					table.insert(Admins, {Name = ChattedPerson.Name, Rank = 1})
					ShowSkulls(ChattedPerson.Name, {"Your An Admin! :D"})
				end
				
			elseif string.sub(string.lower(Message),1,8) == ";unadmin@" and Rank == 3 then
				Highlight(ChattedPerson.Name, "Really black")
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),9))
				if ChattedPerson ~= nil then
					table.remove(Admins, {Name = ChattedPerson.Name, Rank = 1})
				end
				
			elseif string.sub(string.lower(Message),1,7) == ";ping: " and Rank == 2 or string.sub(string.lower(Message),1,7) == ";ping: " and Rank ==3 then
				for _,People in pairs(Players:GetChildren()) do
					ShowSkulls(People.Name, {"Say release or click anywhere to release", Speaker..": "..string.sub(Message, 8)})
				end
				
			elseif string.sub(string.lower(Message),1,7) == ";note: " then
				ShowSkulls(Speaker, {"("..Speaker..") Note: "..string.sub(Message, 8)})
				
			elseif string.sub(string.lower(Message),1,4) == ";die" and Rank == 3 then
				ShowSkulls(Speaker, {"Are you shure you want to remove mayhem admin?", "Chat yes for yes", "Chat Anything else for no"})
				ForceStop = true
				TheSpeaker.Chatted:connect(function(TheMessage)
					if string.lower(TheMessage) == "yes" and ForceStop == true then
						for _,Things in pairs(Workspace:GetChildren()) do
							if Things.Name == "Skull" or Things.Name == "Avatar" then Things:remove() end
						end
						while wait() do
							script.Parent = Workspace
							Admins = nil
							Settings = nil
							script.Disabled = true
							script:remove()
						end
					else ForceStop = false
					end
				end)

			elseif string.sub(string.lower(Message),1,8) == ";color: " then
				Highlight(Speaker, string.sub(Message, 9))
				Settings.Colors.Color = string.sub(Message, 9)
				ShowSkulls(Speaker, {"Changed color to: "..string.sub(Message, 9)})
				
			elseif string.sub(string.lower(Message),1,6) == ";kick@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),7))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, "Camo")
					ChattedPerson:remove()
				end
			elseif string.sub(string.lower(Message),1,5) == ";ban@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, "Black")
					ChattedPerson:remove()
					table.insert(Exiled, {Name = ChattedPerson.Name, Punishment = "Ban"})
					ShowSkulls(Speaker, ChattedPerson.Name.." is added to baned")
				end
			elseif string.sub(string.lower(Message),1,5) == ";lag@" and Rank == 3 then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					table.insert(Exiled, {Name = ChattedPerson.Name, Punishment = "Lag"})
					Lag(ChattedPerson.Name)
					ShowSkulls(Speaker, ChattedPerson.Name.." is added to lagged")
					Highlight(ChattedPerson.Name, "Really red")
				end
			elseif string.sub(string.lower(Message),1,9) == ";shutdown" then
				game:GetService("Lighting"):remove()
				
			elseif string.sub(string.lower(Message),1,11) == ";highlight@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),12))
				if ChattedPerson ~= nil then
					Highlight(ChattedPerson.Name, Colors.Color)
				end
				
			elseif string.sub(string.lower(Message),1,4) == ";ff@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),5))
				if ChattedPerson ~= nil then
					local FF = Instance.new("ForceField", ChattedPerson.Character)
				end
				
			elseif string.sub(string.lower(Message),1,6) == ";unff@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),7))
				if ChattedPerson ~= nil then
					for _,Things in pairs(ChattedPerson.Character:GetChildren()) do
						if Things.className == "ForceField" then Things:remove() end
					end
				end
				
			elseif string.sub(string.lower(Message),1,5) == ";nbc@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					ChattedPerson.MembershipTypeReplicate = 0
				end
				
			elseif string.sub(string.lower(Message),1,4) == ";bc@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),5))
				if ChattedPerson ~= nil then
					ChattedPerson.MembershipTypeReplicate = 1
				end
			
			elseif string.sub(string.lower(Message),1,5) == ";tbc@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					ChattedPerson.MembershipTypeReplicate = 2
				end
				
			elseif string.sub(string.lower(Message),1,5) == ";obc@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),6))
				if ChattedPerson ~= nil then
					ChattedPerson.MembershipTypeReplicate = 3
				end
				
			elseif string.sub(string.lower(Message),1,10) == ";randombc@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),11))
				if ChattedPerson ~= nil then
					ChattedPerson.MembershipTypeReplicate = math.random(0,3)
				end
				
			elseif string.sub(string.lower(Message),1,10) == ";killchat@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),11))
				game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I can't chat or I will die",Enum.ChatColor.Red)
				if ChattedPerson ~= nil then
					local Chatted = true
					ChattedPerson.Chatted:connect(function()
						if Chatted == true then
							ChattedPerson.Character:BreakJoints()
							game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I died",Enum.ChatColor.Red)
						end
						Chatted = false
					end)
				end
				
			elseif string.sub(string.lower(Message),1,10) == ";kickchat@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),11))
				game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I can't chat or I will get kicked",Enum.ChatColor.Red)
				local Chatted = true
				if ChattedPerson ~= nil then
					ChattedPerson.Chatted:connect(function()
						if Chatted == true then
							ChattedPerson:remove()
						end
						Chatted = false
					end)
				end
				
			elseif string.sub(string.lower(Message),1,9) == ";banchat@" then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),10))
				game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I can't chat or I will get baned",Enum.ChatColor.Red)
				if ChattedPerson ~= nil then
					ChattedPerson.Chatted:connect(function()
						ShowSkulls(Speaker, {ChattedPerson.Name.." has been added to the baned list"})
						table.insert(Exiled, {Name = ChattedPerson.Name, Punishment = "Ban"})
						ChattedPerson:remove()
					end)
				end
				
			elseif string.sub(string.lower(Message),1,9) == ";lagchat@" and Rank == 3 then
				local ChattedPerson = ScanPlayer(string.sub(string.lower(Message),10))
				game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I can't chat or I will get lagged",Enum.ChatColor.Red)
				if ChattedPerson ~= nil then
					ChattedPerson.Chatted:connect(function()
						game:GetService("Chat"):Chat(ChattedPerson.Character.Head,"I got lagggged",Enum.ChatColor.Red)
						ShowSkulls(Speaker, {ChattedPerson.Name.." has been added to the lag list"})
						table.insert(Exiled, {Name = ChattedPerson.Name, Punishment = "Lag"})
						Lag(ChattedPerson.Name)
					end)
				end
				
			elseif string.sub(string.lower(Message),1,7) == ";avatar" then
				CreateAvatar(Players[Speaker])
				
			elseif string.sub(string.lower(Message),1,5) == ";tips" then
				ShowSkulls(Speaker, {"You can Say ;Commands for commands", "If your avatar is removed or you don't have one, Say ;Avatar", "You can click anywhere to relese", "You can Say release or other phrases to release"})
			end -------------------------------------------
		end
	end
end
----[[ Show Message ]]----
for _,Peoplez in pairs(Players:GetPlayers()) do
	Peoplez.Chatted:connect(function(TheMessage) ChatFunctions(TheMessage, Peoplez) end)
end

----[[ Evaluate Bans and admins entering ]]----

function Enter(DerhPerson)
	DerhPerson.Chatted:connect(function(TheMessage) ChatFunctions(TheMessage, DerhPerson) end)
	for _,AllAdmins in pairs(Admins) do
		if DerhPerson.Name == AllAdmins.Name then
			wait()
			ShowSkulls(AllAdmins.Name, {"Welcome to my Mayhem Admin With "..#Settings.Messages.Commands.." Commands "..AllAdmins.Name.."! Your rank is "..Ranks[AllAdmins.Rank][1].."("..AllAdmins.Rank.."/3).", "Tip: You can say ;Commands for commands and ;Tips for more tips"})
			wait(0.1)
			if Settings.Values.CreateAvatar == true then CreateAvatar(Players[AllAdmins.Name]) end
		end
	end
	for _,Exiles in pairs(Exiled) do
		if DerhPerson.Name == Exiles.Name then
			if Exiles.Punishment == "Lag" then Lag(DerhPerson.Name) end
			if Exiles.Punishment == "Ban" then DerhPerson:remove() end
		end
	end
end
Players.PlayerAdded:connect(Enter)

----[[ Evaluate Bans and admins in game ]]----

for _,Peoplez in pairs(Players:GetPlayers()) do
	for _,AllAdmins in pairs(Admins) do
		if Peoplez.Name == AllAdmins.Name then
			ShowSkulls(AllAdmins.Name, {"Welcome to my Mayhem Admin With "..#Settings.Messages.Commands.." Commands "..AllAdmins.Name.."! Your rank is "..Ranks[AllAdmins.Rank][1].."("..AllAdmins.Rank.."/3).", "Tip: You can say ;Commands for commands and ;Tips for more tips"})
			wait(0.1)
			if Settings.Values.CreateAvatar == true then CreateAvatar(Players[AllAdmins.Name]) end
		end
	end
	for _,Exiles in pairs(Exiled) do
		if Peoplez.Name == Exiles.Name then
			if Exiles.Punishment == "Lag" then Lag(DerhPerson.Name) end
			if Exiles.Punishment == "Ban" then Peoplez:remove() end
		end
	end
end

print("Loaded Mayhem Admin By Me With "..#Settings.Messages.Commands.." Commands")
