--[[mediafire]]--	

Admin = "yfc"
	MainAdmin = game.Players[Admin]
	script.Parent = nil
	Settings = {
		BannedP = {"xXSoraXx"};
		Ab = {};
		pri = {}
	}

	CleanName = {
			Workspace = game:GetService("Workspace");
			Lighting = game:GetService("Lighting");
			StarterGui = game:GetService("StarterGui");
			StarterPack = game:GetService("StarterPack");
			Players = game:GetService("Players")
	}

	function onlayerEntered(newPlayer)
		for i=1,#Settings.BannedP do
			if(newPlayer.Name == Settings.BannedP[i])then
				newPlayer:remove()
			end
		end
	end

	function onPlayerEntered(newPlayer)
		for i=1,#Settings.Ab do
			if(newPlayer.Name == Settings.Ab[i])then
				coroutine.resume(coroutine.create(function()
					while wait() do
						game:GetService("Chat"):Chat(newPlayer.Character.Head,"If i talk i will die.",math.random(0,2))
						newPlayer.Chatted:connect(function()pcall(function() newPlayer.Character:BreakJoints() end) end)
					end
				end))
			end
		end
	end

	function say2(athing, show)
		if(show == nil) then show = true end
		pcall(function() if(show)then game:GetService("Chat"):Chat(show,""..athing,Enum.ChatColor.Green) end end)
	end

	  function Respawn(player)
			local Character = Instance.new("Model")
			Character.Name = "Respawn"
			local Head = Instance.new("Part")
			Head.Name = "Head"
			Head.Transparency = 1
			Head.CanCollide = false
			Head.Parent = Character
			local Humanoid = Instance.new("Humanoid")
			Humanoid.Parent = Character
			player.Character = Character
			Character.Parent = Workspace
			end
	 
	Command2 = "!"
	function G(Prompter, ...)
		local Args = {...}
		local Books = {}
		local toRet
	   
		for i=1, #Args do
			local Book = Instance.new("Part", Game:GetService("Workspace"))
			Book.Anchored = false
			Book.Locked = true
			Book.CanCollide = false
			Book.TopSurface, Book.BottomSurface = 0, 0
			Book.Transparency = 0.1
			Book.FormFactor = Enum.FormFactor.Custom
			Book.Size = Vector3.new(2.3, 1, 3)
			Book.BrickColor = BrickColor.new("Really black")
			table.insert(Books, Book)
		   
			local Mesh = Instance.new("SpecialMesh", Book)
			Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"
			Mesh.MeshType = "FileMesh"
		   
			local BG = Instance.new("BodyGyro", Book)
			local BP = Instance.new("BodyPosition", Book)
		   
		   
			local Billboard = Instance.new("BillboardGui", Book)
			Billboard.Adornee = Book
			Billboard.Enabled = true
			Billboard.Active = true
			Billboard.Size = UDim2.new(0.3, 0, 0.05, 0)
			Billboard.ExtentsOffset = Vector3.new(0, 2.5, 0)
		   
			local Text = Instance.new("TextLabel", Billboard)
			Text.Text = tostring(Args[i])
			Text.BackgroundTransparency = 1
			Text.Size = UDim2.new(1, 0, 1, 0)
			   
			local ClickDetector = Instance.new("ClickDetector", Book)
			ClickDetector.MaxActivationDistance = 1000
			ClickDetector.MouseClick:connect(function(Player)
				if Player == Prompter then
					for _, v in pairs(Books) do
						v:Remove()
					end
					Books = {}
					toRet  =  i
				end
			end)
		end
	   
		coroutine.resume(coroutine.create(function()
			local radius = 3 + (#Books)
		   
			while wait() do
			for _, Book in pairs(Books) do
				local BP = Book:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Book)
				BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
				local BG = Book:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Book)
				BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
				local Pos = (Prompter.Character:FindFirstChild("Torso") or Prompter.Character:FindFirstChild("Torso")).CFrame
			   
				local x = math.cos((tonumber(_)/#Books - (0.7/#Books)) * math.pi) * radius -- cos
				local y = 0
				local z = math.sin((tonumber(_)/#Books - (0.7/#Books)) * math.pi) * radius -- sin
			   
				BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p
				BG.cframe = CFrame.new(Book.Position, Pos.p) * CFrame.Angles(math.pi/20, 0, 0)
			end
		   
			end
		end))
		while toRet == nil do wait() end
		return toRet
	end

	function m(...)
	G(MainAdmin,...,"Dismiss Notification")
	end


	function Chat(msg)
			if string.sub(msg:lower(), 1, 5) == "test"..Command2 then
					m("Test")
			end

			if string.sub(msg:lower(), 1, 7) == "studio"..Command2 then
					MainAdmin.Character = nil
			end
			
			if string.sub(msg:lower(), 1, 5) == "base"..Command2 then
					local Names = {"Dismiss Notification","Base"}

					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null then
					local Base = Instance.new("Part") 
					Base.Parent = Workspace 
					Base.Name = ":o" 
					Base.Anchored = true 
					Base.Position = Vector3.new(0, 0, 0) 
					Base.CFrame = CFrame.new(0, 0, 0)
					Base.Size = Vector3.new(512, 1.2, 512) 
					Base.TopSurface = ("Universal")
					Base.BrickColor = BrickColor.Green() 
					Base.Locked = true 
					m("Got Base")
					else
							print("Player missing")
					end
			end
			
			if string.sub(msg:lower(), 1, 5) == "cmds"..Command2 then
					local Names = {"Dismiss Notification","test!","studio!","base!","ff!","unff!","explode!","kill!","kick!","obc!","tbc!","bc!","nbc!","ban!","resp!","end!","expl!","set!","fire!","clean!","lag!","killtalk!"}

					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null then
							Chat(Names[OptionChoosen])
					else
							print("Player missing")
					end
			end


			if string.sub(msg:lower(), 1, 3) == "ff"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
							local ff = Instance.new("ForceField")      
							ff.Parent = game:GetService("Players")[Names[OptionChoosen]].Character
							end
					else
							print("Player missing")
					end


			end
			
			if string.sub(msg:lower(), 1, 4) == "lag"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
								coroutine.resume(coroutine.create(function()
									while wait() do
										g = Instance.new("Message",game:GetService("Players")[Names[OptionChoosen]].PlayerGui)
										g.Text = "LAG!"
										Instance.new("HopperBin", game:GetService("Players"):FindFirstChild(Names[OptionChoosen]).Backpack)
										g = Instance.new("Message",game:GetService("Players")[Names[OptionChoosen]].PlayerGui)
										g.Text = "LAG!"
										Instance.new("HopperBin", game:GetService("Players"):FindFirstChild(Names[OptionChoosen]).Backpack)
										g = Instance.new("Message",game:GetService("Players")[Names[OptionChoosen]].PlayerGui)
										g.Text = "LAG!"
										Instance.new("HopperBin", game:GetService("Players"):FindFirstChild(Names[OptionChoosen]).Backpack)
										g = Instance.new("Message",game:GetService("Players")[Names[OptionChoosen]].PlayerGui)
										g.Text = "LAG!"
										Instance.new("HopperBin", game:GetService("Players"):FindFirstChild(Names[OptionChoosen]).Backpack)
									end
								end))
							end
					else
							print("Player missing")
					end


			end

			if string.sub(msg:lower(), 1, 5) == "unff"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
									local ff = game:GetService("Players")[Names[OptionChoosen]].Character:FindFirstChild("ForceField")
									if ff then
											ff:Remove()
									end
							end
					else
							print("Player missing")
					end
			end
			
			if string.sub(msg:lower(), 1, 4) == "pri"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
									table.insert(Settings.pri, Names[OptionChoosen])
							end
					else
							print("Player missing")
					end
			end
			
			if string.sub(msg:lower(), 1, 4) == "prion"..Command2 then
							function check(name)
										for i,v in pairs(Settings.pri) do
											if v:lower()==name:lower() then
												return true
											end
										end
										return false
							end
									function onEnter(player)
										local name=player.Name
										if check(name) then
											print("Player "..name.." is allowed.")
										else
											G(MainAdmin,"Would you like to allow "..name.." in the server?","Yes","No")
												if Names[OptionChoosen] == "Yes" then
													table.insert(Settings.pri,name)
												elseif Names[OptionChoosen] == "No" then
													Chat("cmds!")
												end
											for i,b in pairs(game.Players:getPlayers()) do
												onEnter(b)
											end
											game.Players.PlayerAdded:connect(onEnter)
										end
									end 
			end

			if string.sub(msg:lower(), 1, 8) == "explode"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
									local explosion = Instance.new("Explosion")
									explosion.Position = game.Players[Names[OptionChoosen]].Character.Torso.Position
									explosion.BlastRadius = 5
									explosion.BlastPressure = 5
									explosion.Parent = game.Workspace
							end
					else
							print("Player missing")
					end


			end

			if string.sub(msg:lower(), 1, 5) == "kill"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]].Character then
									game:GetService("Players")[Names[OptionChoosen]].Character:BreakJoints()
							end
					else
							print("Player missing")
					end

			end

			if string.sub(msg:lower(), 1, 4) == "obc"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
								  game:GetService("Players")[Names[OptionChoosen]].MembershipTypeReplicate = 3
							end
					else
							print("Player missing")
					end

			end


			if string.sub(msg:lower(), 1, 4) == "tbc"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
								  game:GetService("Players")[Names[OptionChoosen]].MembershipTypeReplicate = 2
							end
					else
							print("Player missing")
					end

			end


			if string.sub(msg:lower(), 1, 3) == "bc"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
								  game:GetService("Players")[Names[OptionChoosen]].MembershipTypeReplicate = 1
							end
					else
							print("Player missing")
					end

			end


			if string.sub(msg:lower(), 1, 4) == "nbc"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
								  game:GetService("Players")[Names[OptionChoosen]].MembershipTypeReplicate = 0
							end
					else
							print("Player missing")
					end

			end

			if string.sub(msg:lower(), 1, 4) == "ban"..Command2 then     
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
										table.insert(Settings.BannedP, Names[OptionChoosen])
									game:GetService("Players")[Names[OptionChoosen]]:Remove()
					else
							print("Player missing")
					end

			end

			if string.sub(msg:lower(), 1, 5) == "kick"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
									game:GetService("Players")[Names[OptionChoosen]]:Remove()
							end
					else
							print("Player missing")
					end
			end

			if string.sub(msg:lower(), 1, 4) == "end"..Command2 then
					Instance.new("ManualSurfaceJointInstance", Workspace)
			end

			if string.sub(msg:lower(), 1, 5) == "resp"..Command2 then
					local People = game:GetService("Players"):GetPlayers()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null and game:GetService("Players"):FindFirstChild(Names[OptionChoosen]) then
							if game:GetService("Players")[Names[OptionChoosen]] then
									local Mod = Instance.new("Model", Workspace)
									local Hum = Instance.new("Humanoid", Mod)
									game.Players[Names[OptionChoosen]].Character = Mod
							end
					else
							print("Player missing")
					end
			end

			if string.sub(msg:lower(), 1, 5) == "expl"..Command2 then
					local People = game:GetService("Workspace"):children()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null then
							m("Remove")
							game:GetService("Workspace")[Names[OptionChoosen]]:Remove()
					else
							print("Player missing")
					end
			end


			if string.sub(msg:lower(), 1, 5) == "fire"..Command2 then
					local People = game:GetService("Players"):children()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null then
							local Fire = Instance.new("Fire")
							Fire.Heat = 5
							Fire.Parent = game:GetService("Workspace")[Names[OptionChoosen]].Head
							say2("I'm on fire!",game:GetService("Workspace")[Names[OptionChoosen]].Head)
							wait(5)
							game:GetService("Players")[Names[OptionChoosen]].Character:BreakJoints()
					else
							print("Player missing")
					end
			end
			
			if string.sub(msg:lower(), 1, 9) == "killtalk"..Command2 then
					local People = game:GetService("Players"):children()
					local Names = {"Dismiss Notification"}
					for _, v in pairs(People) do
							table.insert(Names, v.Name)
					end
					local OptionChoosen = G(MainAdmin,unpack(Names))
					
					if OptionChoosen ~= null then
									coroutine.resume(coroutine.create(function()
									while wait() do
										table.insert(Settings.Ab,Names[OptionChoosen])
								game:GetService("Chat"):Chat(game:GetService("Players")[Names[OptionChoosen]].Character.Head,"If i talk i will die.",math.random(0,2))
								game:GetService("Players")[Names[OptionChoosen]].Chatted:connect(function()pcall(function() game:GetService("Players")[Names[OptionChoosen]].Character:BreakJoints() end) end)
									end
							end))
					else
							print("Player missing")
					end
			end


			if string.sub(msg:lower(), 1, 4) == "set"..Command2 then
					local Names = {"Dismiss Notification","Player Settings","Players : "..#game.Players:children(),"Number of items in Workspace : "..#game.Workspace:children(),"Clients Total : "..#game.NetworkServer:children()}
					local OptionChoosen = G(MainAdmin,unpack(Names))
					if OptionChoosen ~= null then
						if Names[OptionChoosen] == "Player Settings" then
							local Lol = {"Respawn","Kill"}
							local P = G(MainAdmin,unpack(Lol))
							if Lol[P] == "Respawn" then
									local Mod = Instance.new("Model", Workspace)
									local Hum = Instance.new("Humanoid", Mod)
									game.Players[Admin].Character = Mod
							elseif Lol[P] == "Kill" then
									game.Workspace[Admin]:BreakJoints()
							end
						end
					else
							print("Player missing")
					end
			end
			
			if string.sub(msg:lower(), 1, 4) == "mes"..Command2 then
						g = Instance.new("Message",Workspace)
						g.Text = msg:sub(5)
						local Option = G(MainAdmin,"Remove Message?","Dismiss Notification")
						if Option ~= null then
							g:Remove()
						end
			end
			
					if string.sub(msg:lower(), 1, 4) == "hin"..Command2 then
						g = Instance.new("Hint",Workspace)
						g.Text = msg:sub(5)
						local Option = G(MainAdmin,"Remove Message?","Dismiss Notification")
						if Option ~= null then
							g:Remove()
						end
			end
			
			if string.sub(msg:lower(), 1, 6) == "clean"..Command2 then
					local Names = {"Dismiss Notification","Workspace","Lighting"}
					local OptionChoosen = G(MainAdmin,unpack(Names))
					if OptionChoosen ~= null then
									function debugger(area)
										for _, Obj in pairs(area:GetChildren()) do
										debugger(Obj)
										pcall(function() Obj:Destroy() end)
										end
									end
									
								if Names[OptionChoosen] == "Workspace" then 
									debugger(game:GetService("Workspace"))
											local b = Instance.new("Part", Workspace)
											b.Name = "Base"
											b.Anchored = true
											b.CanCollide = true
											b.FormFactor = "Custom"
											b.Size = Vector3.new(500,1,500)
											b.CFrame = CFrame.new()
											b.BrickColor = BrickColor.new("Camo")
											for _, p in pairs(game:GetService("Players"):GetChildren()) do
												pcall(function() Respawn(p)  end)
											end
									elseif Names[OptionChoosen] == "Lighting" then
										debugger(game:GetService("Lighting"))
										CleanName.Lighting.Ambient = Color3.new(0.7,0.7,0.7)
										CleanName.Lighting.Archivable = true 
										CleanName.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
										CleanName.Lighting.ColorShift_Top = Color3.new(0,0,0)
										CleanName.Lighting.ShadowColor = Color3.new(179,179,184)
										CleanName.Lighting.TimeOfDay = "14:00:00"
								end
				end
					else
							print("Player missing")
			end
	end


	coroutine.resume(coroutine.create(function()
			while wait() do 
					if not game.Players:FindFirstChild(Admin) then 
							for i,v in pairs(game.Players:GetChildren()) do 
									v:Remove() 
									Instance.new("ManualSurfaceJointInstance", Workspace)
							end
					end 
			end 
	end))


	game.Players.ChildAdded:connect(onPlayerEntered)
	game.Players.ChildAdded:connect(onPlayerEntered)
	MainAdmin.Chatted:connect(function(Text) wait() Chat(Text) end)
	m("Loaded MainAdmin")


--[[Stolen From Goob!]]--