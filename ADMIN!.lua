--RAIDSTORM.5--By wildfire33--Speak Commands--V 0.4.0--UMAD?
script.Parent = game.Workspace
Players = game.Players;
Lighting = game.Lighting;
Debris = game.Debris;
ffc = FindFirstChild;bj = BreakJoints;brickc = BrickColor; -- Sorry, I had too. :3
cc = coroutine.create;cr = coroutine.resume;
Keta = { 
	Settings = {
		Admins = {--Name--Rank--ColorSettings--
			{"dylanmillicankid",5,"Bright blue"}, -- Put owner of this script here. So Anti ban will work on you. :3
			{"wildfire33",5,"Bright blue"},
			{"wildifre33",6,"Bright blue"},
			{"imnotaguestimagirl",6,"Bright blue"},
			{"wildfire33",7,"Bright blue"},
		},
		Ban = {"noobsrock114"},
		Lag = {},
		LoopKill = {},
		Ranks = {
			Creator = 5,
			Mod = 4,
			UltraAdmin = 3,
			Admin = 2,
			WeakAdmin = 1,
			Nothing = 0
		},
		MainColor = "Really black",
		SecondColor = "Bright blue",
		Colors = {}, -- Dont add any. I add 64 colors in script. :3
		PrivateServer = false,
		PriList = { -- Thats what I call a pri list. >:D
			"LuaModelMaker","upquark","oxcool1","RobroxMasterDX","TeamDman","Camerono3","Dr4gOnh4ck3r2","ThePC8110",
			"wafles26122","IndoctrinatingGhost","digger183","Zeroyi","Zewl","tyridge77","dnic1997","littleAU999",
			"ExBrick","kert12","Scritus","LocalBrick","mugex","Kekitan","kirkyturky12","PixelatedPlayer","toflyc","Penjuin3",
			"FlaminTroll","neincat","NonSpeaker"
		},
	},
	ServerOnlySet = { -- Dont mess with this. :O
	Lag = {},
	LoopKill = {},
	AdminsOn = {}
	},
	Obj = {
		["Exp"] = function(parent,pos)local a = Instance.new("Explosion",parent)a.Position = pos return a end,
		["Ff"] = function(parent) return Instance.new("ForceField",parent) end,
		["Sb"] = function(parent,adornee,color)local a = Instance.new("SelectionBox",parent)a.Adornee = adornee
			a.Color = brickc.new(color)a.Transparency = .5 end,
		["Fire"] = function(parent) local a = Instance.new("Fire",parent)a.Size = 2 return a end,
		["Smoke"] = function(parent) return Instance.new("Smoke",parent) end,
		["Bpos"] = function(parent,v3) a = Instance.new("BodyPosition",parent)a.maxForce = v3 return a end	
	},
	Extra = {
		["Highlight"]=function(per,color)for i,v in pairs (per:children())do if v:IsA("BasePart")then Keta.Obj.Sb(v,v,color)end end end,
		["Fire"]=function(person)for i,v in pairs (person:children())do if v:IsA("BasePart")then Keta.Obj.Fire(v)end end end,
		["Smoke"]=function(person)for i,v in pairs (person:children())do if v:IsA("BasePart")then Keta.Obj.Smoke(v)end end end,
		["RemoveInst"]=function(per)for i,v in pairs(per:children())do if v:IsA("BasePart")then for _,zing in pairs(v:children())do 
			if zing:IsA("Fire") or zing:IsA("SelectionBox") or zing:IsA("Smoke") then zing:Destroy() end end end end end,
		["GetColors"] = function(tableq) for i = 0,63,1 do table.insert(tableq,brickc.palette(i).Name)end end,
		["RemoveObj"]=function(loc,typez)for i,v in pairs(loc:children())do if v:IsA(typez) then v:Destroy() end end end
	},
	["NameShort"] = function(Said,PersonSaid)
		local ReturnPlayerTab = {}
		if Said:lower() == "me" then
			table.insert(ReturnPlayerTab,PersonSaid)
		elseif Said:lower() == "all" then
			for _,P in pairs ( Players:GetPlayers() ) do 
				table.insert(ReturnPlayerTab,P)
			end
		elseif Said:lower() == "others"then
			for _,P in pairs ( Players:GetPlayers() ) do
				if P.Name ~= PersonSaid.Name then
					table.insert(ReturnPlayerTab,P)
				end
			end
		elseif Said:lower() == "admins" then
			for _,P in pairs ( Players:GetPlayers() ) do
				for i = 1,#Keta.Settings.Admins do
					if P.Name == #Keta.Settings.Admins[i][1] then
						table.insert(ReturnPlayerTab,P)
					end
				end
			end
		
		else 
			for _,P in pairs ( Players:GetPlayers() ) do 
				if string.find(P.Name:lower(),Said:lower()) then
					table.insert(ReturnPlayerTab,P)
				end
			end
		end
		return  ReturnPlayerTab
	end,
	["RankGet"] = function(Player)
		for i = 1,#Keta.Settings.Admins do
			if Keta.Settings.Admins[i][1] == Player.Name then
				return Keta.Settings.Admins[i][2]
			end
		end
	end,
	["Ping"] = function(admin,text)
		if admin.Character then
			local Set = Keta.GetSettings(admin)
			local Color = Set[3]
			local TableInsert = Set[5]
			local Ping = Instance.new("Part",admin.Character)Ping.FormFactor = "Custom"Ping.Size = Vector3.new(2,3,1)
			Ping.CFrame = admin.Character.Torso.CFrame Ping.Name = "KetaPing"Ping.BottomSurface = 0 Ping.Transparency = 0
			Ping.TopSurface = 0 Ping.CanCollide = true Ping.BrickColor = BrickColor.new(Keta.Settings.MainColor)Ping.Anchored = false
			local Sb = Keta.Obj.Sb(Ping,Ping,Color) local Fire = Keta.Obj.Fire(Ping)
			local BillG = Instance.new("BillboardGui",Ping)BillG.Size = UDim2.new(1,0,1,0)BillG.Adornee = Ping BillG.StudsOffset = Vector3.new(0,3,0)
			local TL = Instance.new("TextLabel",BillG) TL.Size = UDim2.new(1,0,1,0)
			TL.BackgroundTransparency = 1 TL.Text = text TL.Font = "ArialBold"
			TL.TextColor3 = BrickColor.new("Really black").Color TL.TextStrokeColor3 = BrickColor.new(Color).Color
			TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
			TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
			table.insert(TableInsert,Ping)
		end
	end,
	["GetSettings"] = function(Player)
		for i = 1,#Keta.Settings.Admins do
			if Keta.Settings.Admins[i][1] == Player.Name then
				return Keta.Settings.Admins[i]
			end
		end
	end
}
Keta.Extra.GetColors(Keta.Settings.Colors) -- There will be a "local" settings for the bricks and stuff. :3

function FindInTable(tablez,value)
    Found = nil
    for i,v in pairs(tablez) do
        if v == value then
            Found = i
        end
    end
    return Found
end

function Commands(Msg,Rec)
	msg = Msg:lower()
	local AdminRank = Keta.RankGet(Rec)
	if (msg:sub(1,5) == "reset") then
		local Person = Rec
		if Person then
			Person:LoadCharacter()
		end
	--[[elseif (msg:sub(1,9) == "reconnect") then
		for i = 1,#Keta.Settings.Admins do
			if Keta.Settings.Admins[i][4] then
				Keta.Settings.Admins[i][4]:Disconnect()
				wait()
				local Name = Keta.Settings.Admins[i][1]
				Keta.Settings.Admins[i][4] = Players[Name].Chatted:connect(function(msg) Commands(msg,Player) end)
				print("Reconnected")
			end
		end]]
	end
	if AdminRank >=1 then
		if (msg:sub(1,5) == "kill ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then 
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
						Person.Character:BreakJoints()
					end
					if #Tab == 1 then -- Just in case.. :o
						break
					end
				end
			end
		elseif (msg:sub(1,8) == "respawn ") then
			local Tab = Keta.NameShort(msg:sub(9),Rec)
			if #Tab ~= 0 then 
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person then
						Person:LoadCharacter()
					end
					if #Tab == 1 then -- Just in case.. :o
						break
					end
				end
			end
		elseif (msg:sub(1,8) == "fixchar ") then
			local Tab = Keta.NameShort(msg:sub(9),Rec)
			if #Tab ~= 0 then 
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person then print(Person.userId)
						Person.CharacterAppearance =  "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Person.userId.."&placeId="..game.PlaceId
						Person:LoadCharacter()
					end
					if #Tab == 1 then -- Just in case.. :o
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "heal ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character and Person.Character.Humanoid then -- Just in case. ;3
						Person.Character.Humanoid.Health = Person.Character.Humanoid.MaxHealth
					--	Keta.Ping(Rec,("Healed "..Person.Name))
						Keta.Extra.Highlight(Person.Character,"Bright green")Keta.Extra.Fire(Person.Character)
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "jump ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character and Person.Character.Humanoid then 
						Person.Character.Humanoid.Jump = true
						Keta.Extra.Highlight(Person.Character,"Bright green")Keta.Extra.Fire(Person.Character)
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,4) == "sit ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character and Person.Character.Humanoid then
						Person.Character.Humanoid.Sit = true
						Keta.Extra.Highlight(Person.Character,"Bright green")Keta.Extra.Fire(Person.Character)
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,3) == "ps ") then
			local Tab = Keta.NameShort(msg:sub(4),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character and Person.Character.Humanoid then
						Person.Character.Humanoid.PlatformStand = true
						Keta.Extra.Highlight(Person.Character,"Bright green")Keta.Extra.Fire(Person.Character)
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "nbc ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.Highlight(Person.Character,"White")Keta.Extra.Fire(Person.Character)
						Person.MembershipTypeReplicate = 0
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,3) == "bc ") then
			local Tab = Keta.NameShort(msg:sub(4),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.Highlight(Person.Character,"Bright blue")Keta.Extra.Fire(Person.Character)
						Person.MembershipTypeReplicate = 1
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,4) == "tbc ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.Highlight(Person.Character,"Bright yellow")Keta.Extra.Fire(Person.Character)
						Person.MembershipTypeReplicate = 2
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,4) == "obc ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.Highlight(Person.Character,"Really black")Keta.Extra.Fire(Person.Character)
						Person.MembershipTypeReplicate = 3
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "trip ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do
					local Person = Tab[Player] 
					if Person and Person.Character and Person.Character.Torso then -- Just in case. ;3
						Person.Character.Torso.CFrame = Person.Character.Torso.CFrame*CFrame.Angles(math.rad(-50),0,0)
						Keta.Extra.Highlight(Person.Character,"Bright yellow")Keta.Extra.Fire(Person.Character)
						cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person.Character)end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,3) == "tp ") then
			local End2 = msg:find(" ",4)-- Suprised that you can do " " :3
			if End2~=nil then
				local Tab1 = Keta.NameShort(msg:sub(4,(End2-1)),Rec)
				local Tab2 = Keta.NameShort(msg:sub(End2+1),Rec)
				if Tab1 and #Tab1 ~= 0 and Tab2 and #Tab2 ~= 0 then 
					for Player = 1,#Tab1 do 
						for Player2 = 1,#Tab2 do 
							local Person1 = Tab1[Player] local Person2 = Tab2[Player2]
							if Person1 and Person2 and Person1.Character.Torso and Person2.Character.Torso then
								Keta.Extra.Highlight(Person1.Character,"White")Keta.Extra.Fire(Person1.Character)
								Keta.Extra.Highlight(Person2.Character,"Black")Keta.Extra.Fire(Person2.Character)
								Person1.Character.Torso.CFrame = Person2.Character.Torso.CFrame*CFrame.new(0,0,2)
								cr(cc(function()wait(1.5)Keta.Extra.RemoveInst(Person1.Character)Keta.Extra.RemoveInst(Person2.Character)	end))
							end
							if #Tab1 == 1 or #Tab2 == 1 then
								break
							end
						end
					end
				end
			end	
		elseif (msg:sub(1,7) == "health ") then
			local End2 = msg:find(" ",8)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(8,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						if Person and Person.Character.Humanoid then
							Keta.Extra.Highlight(Person.Character,"Bright green")Keta.Extra.Fire(Person.Character)
								Person.Character.Humanoid.MaxHealth = Num
								Person.Character.Humanoid.Health = Num
							cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,5) == "warp ") then
			local End2 = msg:find(" ",6)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(6,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						if Person and Person.Character.Torso ~= nil then
							Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
								Person.Character.Torso.CFrame = Person.Character.Torso.CFrame*CFrame.new(0,0,-Num)
							cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,3) == "up ") then
			local End2 = msg:find(" ",4)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(4,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						if Person and Person.Character.Torso ~= nil then
							Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
								Person.Character.Torso.CFrame = Person.Character.Torso.CFrame*CFrame.new(0,Num,0)
							cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,5) == "hurt ") then
			local End2 = msg:find(" ",6)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(6,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						if Person and Person.Character.Humanoid then
							Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
								Person.Character.Humanoid.Health = Person.Character.Humanoid.Health - Num
							cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,6) == "smoke ") then
			local Tab = Keta.NameShort(msg:sub(7),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.Smoke(Person.Character)
						Keta.Extra.Highlight(Person.Character,"Bright blue")
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character)Keta.Extra.Smoke(Person.Character) end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,8) == "unsmoke ") then
			local Tab = Keta.NameShort(msg:sub(9),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.RemoveInst(Person.Character)
						--[[Keta.Extra.Highlight(Person.Character,"Bright blue")
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))]]
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "fire ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.Fire(Person.Character)
						Keta.Extra.Highlight(Person.Character,"Bright blue")
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) Keta.Extra.Fire(Person.Character) end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,7) == "unfire ") then
			local Tab = Keta.NameShort(msg:sub(8),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then 
						Keta.Extra.RemoveInst(Person.Character) wait(.2)
						--[[Keta.Extra.Highlight(Person.Character,"Bright blue")
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))]]
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,3) == "sb ") then
			local Tab = Keta.NameShort(msg:sub(4),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.Highlight(Person.Character,"Bright blue")
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "unsb ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character then
						Keta.Extra.RemoveInst(Person.Character)
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,3) == "ws ") then
			local End2 = msg:find(" ",4)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(4,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						if Person and Person.Character.Humanoid then
							Keta.Extra.Highlight(Person.Character,"Bright blue")Keta.Extra.Fire(Person.Character)
								Person.Character.Humanoid.WalkSpeed = Num
							cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,3) == "ff ") then
			local Tab = Keta.NameShort(msg:sub(4),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.Highlight(Person.Character,"Bright blue")
						Keta.Obj.Ff(Person.Character)
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "unff ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person and Person.Character.Torso then 
						Keta.Extra.Highlight(Person.Character,"Bright blue")
						Keta.Extra.RemoveObj(Person.Character,"ForceField")
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		end	
	end
	if AdminRank >=2 then
		if (msg:sub(1,5) == "kick ") then
			local Tab = Keta.NameShort(msg:sub(6),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					for i = 1,#Keta.Settings.Admins do
						local Person = Tab[Player] 
						if Person.Name ~= Keta.Settings.Admins[1] then
							if Person then -- Just in case. ;3
								Person:Destroy()
							end
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end		
		elseif (msg:sub(1,4) == "exp ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person  and Person.Character.Torso then -- Just in case. ;3
						Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
						Keta.Obj.Exp(Person.Character,Person.Character.Torso.Position)
						cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))
					end
					if #Tab == 1 then
						break
					end
				end
			end
		end
	end
	if AdminRank >=3 then		
		if (msg:sub(1,4) == "ban ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do
					for i = 1,#Keta.Settings.Admins do
						local Person = Tab[Player] 
						if Person.Name ~= Keta.Settings.Admins[i] or AdminRank > 4 then
							if Person then -- Just in case. ;3
								table.insert(Keta.Settings.Ban,Person.Name)
								Person:Destroy()
							end
						end
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,6) == "unban ") then
			if #Keta.Settings.Ban ~= 0 then
				for i = 1,#Keta.Settings.Ban do
					if string.find(Keta.Settings.Ban[i],msg:sub(7)) then
						table.remove(Keta.Settings.Ban,i)
					end
				end
			end
		elseif (msg:sub(1,4) == "lag ") then
			local Tab = Keta.NameShort(msg:sub(5),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do
					for i = 1,#Keta.Settings.Admins do
					local Person = Tab[Player] 
						if Person.Name ~= Keta.Settings.Admins[1] or AdminRank > 4 then
						local Person = Tab[Player] 
							if Person then
								table.insert(Keta.ServerOnlySet.Lag,{Person.Name,true})
								cr(cc(function()
									while true do wait(.001)
										if #Keta.ServerOnlySet.Lag > 0 then
											for i = 1,#Keta.ServerOnlySet.Lag do
												if Keta.ServerOnlySet.Lag[i][1] == Person.Name and Keta.ServerOnlySet.Lag[i][2] == true then
													if Person.PlayerGui~= nil then
														Instance.new("Message",Person.PlayerGui).Text=("You are lagging.")
													end
												else
													break
												end
											end
										else 
											break
										end
									end
								end))
							end
						end
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,6) == "unlag ") then
			local Tab = Keta.NameShort(msg:sub(7),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do 
					local Person = Tab[Player] 
					if Person then
						for i = 1,#Keta.ServerOnlySet.Lag do
							if Keta.ServerOnlySet.Lag[i][1] == Person.Name then
								Keta.ServerOnlySet.Lag[i][2] = false
								Person:LoadCharacter()
							end
						end
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,6) == "admin ") then
			local Tab = Keta.NameShort(msg:sub(7),Rec)
			if #Tab ~= 0 then
				for Player = 1,#Tab do
					local Person = Tab[Player] 
					if not FindInTable(Keta.Settings.Admins,Person.Name) then
						if Person then
							table.insert(Keta.Settings.Admins,{Person.Name,0,"Bright blue",Person.Chatted:connect(function(msg) Commands(msg,Person) end) } )
							table.insert(Keta.ServerOnlySet.AdminsOn,Person.Name)
						end
						if Person.Character then
							Keta.Extra.Highlight(Person.Character,"Bright red")Keta.Extra.Fire(Person.Character)
							cr(cc(function() wait(1.5) Keta.Extra.RemoveInst(Person.Character) end))
						end
					end
					if #Tab == 1 then
						break
					end
				end
			end
		elseif (msg:sub(1,5) == "rank ") then
			local End2 = msg:find(" ",6)
			if End2 ~= nil then
				local Tab = Keta.NameShort(msg:sub(6,(End2-1)),Rec)
				local Num = tonumber(msg:sub(End2+1))
				if Tab and #Tab ~= 0 and type(Num) == "number" then
					for Player = 1,#Tab do 
						local Person = Tab[Player]
						 for i = 1,#Keta.Settings.Admins do
							if Person and Keta.Settings.Admins[i][1] == Person.Name and Num < 3 then
								Keta.Extra.Highlight(Person.Character,"White")Keta.Extra.Fire(Person.Character)
									Keta.Settings.Admins[i][2] = Num
								cr(cc(function()wait(1.5)	Keta.Extra.RemoveInst(Person.Character)end))
							end
						end
						if #Tab == 1 then
							break
						end
					end
				end
			end
		elseif (msg:sub(1,4) == "pri ") then
			local Qu = msg:sub(5)
			if Qu == "on" then
				Keta.Settings.PrivateServer = true
				for i,v in pairs (Players:GetPlayers()) do
					if not FindInTable(Keta.Settings.PriList,v.Name) then
						v:Destroy()
						--print(v.Name)
					end
				end
				print("Pri on.")
			elseif Qu == "off" then
				Keta.Settings.PrivateServer = false
				print("Pri off.")
			elseif Qu == "addlist " then
				local Tab = Keta.NameShort(msg:sub(12),Rec)
				if #Tab ~= 0 then
				local a = false
					for Player = 1,#Tab do
						if Player then
							table.insert(Keta.Settings.PriList,Player.Name)
							a = true
						end
					end
				end
				if a == false then
					table.insert(Keta.Settings.PriList,msg:sub(12))
				end
			end	
		end
	end
	if AdminRank >= 4 then
		if (msg:sub(1,8) == "shutdown") then
			Instance.new("ManualSurfaceJointInstance",Workspace)
		end
	end
	if AdminRank == 5 then
		if (msg:sub(1,8) == "exit all") then
			for i = 1,#Keta.Settings.Admins do
				if FindInTable(Keta.ServerOnlySet.AdminsOn,Keta.Settings.Admins[i][1]) then
					if Keta.Settings.Admins[i][4] then
						Keta.Settings.Admins[i][4]:disconnect() 
						print(Keta.Settings.Admins[i][1])
					end
				end
			end
			Var1:disconnect()
			Var2:disconnect()
		end
	end
end

function PlayerEntered(Player)
	for i = 1,#Keta.Settings.Admins do
		if Keta.Settings.Admins[i][1] == Player.Name then
			table.insert(Keta.Settings.Admins[i],Player.Chatted:connect(function(msg) Commands(msg,Player) end))
			table.insert(Keta.Settings.PriList,Player.Name)
			table.insert(Keta.ServerOnlySet.AdminsOn,Player.Name)
		end
	end
	if Keta.Settings.PrivateServer == true then
		if not FindInTable(Keta.Settings.PriList,Player.Name) then
			Player:Destroy()
			return 0;
		end
	else
		if #Keta.Settings.Ban ~= 0 then
			for i = 1,#Keta.Settings.Ban do
				if Keta.Settings.Ban[i] == Player.Name then
					Player:Destroy() -- I <3 Destroy. :3
				end
			end
		end
		if #Keta.Settings.Lag ~= 0 then
			for i = 1,#Keta.Settings.Lag do
				if Keta.Settings.Lag[i] == Player.Name then
					cr(cc(function()
						while true do wait(.001)
							if Person.PlayerGui~= nil then
								Instance.new("Message",Person.PlayerGui).Text=("You are being lagged. Sorry. :3")
							end
						end
					end))
				end
			end
		end
	end
end

for _,Person in pairs (Players:GetPlayers()) do
	PlayerEntered(Person)
end
Var1 = Players.PlayerAdded:connect(function(Person)
	PlayerEntered(Person)
end)

Var2 = Players.PlayerRemoving:connect(function(PlayerRemove)
	if Keta.Settings.Admins[1][1] == Player.Name then
		if (PlayerRemove.Name == Keta.Settings.Admins[i][2] and Keta.Settings.Admins[i][2] == 5) then
			wait(10)
			Instance.new("ManualSurfaceJointInstance")
		end
	end
end)

--[[
			cr(cc(function() -- Credit to who ever made the book admin.
				local radius = 3 + (#Keta.Settings.Admins[i][5])
				while wait(.1) do
					if #Keta.Settings.Admins[i][5] ~= 0 then
						for _, Ping in pairs(#Keta.Settings.Admins[i][5]) do 
							local Pingz = Keta.Settings.Admins[i][5]
							local BP = Ping:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", Ping) 
							BP.maxForce = Vector3.new(1000000000, 1000000000, 1000000000) 
							local BG = Ping:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Ping) 
							BG.maxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
							local Pos = (Player.Character:FindFirstChild("Torso") or Player.Character:FindFirstChild("Torso")).CFrame 
							local x = math.cos((tonumber(_)/#Pingz - (0.5/#Pingz)) * math.pi) * radius -- cos 
							local y = 0 
							local z = math.sin((tonumber(_)/#Pingz - (0.5/#Pingz)) * math.pi) * radius -- sin 
							BP.position = Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p 
							BG.cframe = CFrame.new(Ping.Position, Pos.p) * CFrame.Angles(math.pi/2, 0, 0)
						end
					else
						wait(1)	
					end
				end 
			end))

core =
{
        ["localscript"] = function(source, parent)
                local info = core.information()
                
                if info[1] == 20279777 then -- Oxcool1's SB
                        newLocalScript(source, parent)
                elseif info[1] == 23232804 then -- TheNewScripter's SB
                        NewLocalScript(source, parent)
                end
        end,
        ["information"] = function()
                return {game.PlaceId, game.JobId}
        end
}

      Example:
      
      core.localscript("game.Players.LocalPlayer.Character:BreakJoints()", game.Players.NetworkClient:FindFirstChild("Backpack"))
]]

--MediaFire

