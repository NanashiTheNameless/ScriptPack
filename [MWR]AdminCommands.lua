wait()
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local ores = {}
local weapons = {}
local pets = game.ReplicatedStorage:FindFirstChild("PetStorage") and game.ReplicatedStorage:FindFirstChild("PetStorage"):GetChildren()
local prefixtalk = nil
local prefixtalkconfirmed = false
local prefix = ";"
local enabled = true
local droppresents = false
local presents_meshes = {66887781, 330230798, 1237207, 1237207}
local presents_textures = {328929733, 330230943,1290030, 6020478}
local ViewPort = game.Workspace.CurrentCamera.ViewportSize
local UIS = game:GetService("UserInputService")

--GUI setup

local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "[MWR] Admin Commands by InsaneDays"

local setprefixgui = Instance.new("TextLabel", gui)
setprefixgui.Name = "PrefixText"
setprefixgui.Text = "Press a key and confirm."
setprefixgui.Size = UDim2.new(0.5,0,0.3,0)
setprefixgui.Position = UDim2.new(0.25,0,0.35,0)
setprefixgui.TextScaled = true
setprefixgui.TextStrokeTransparency = 0
setprefixgui.TextColor3 = Color3.new(1,1,1)

local commandbox

mouse.KeyDown:connect(function(key)
	if not prefixtalk then
		prefixtalk = key
		setprefixgui.Text = 'Are you sure to set the key: "'..key..'" as prefix? (press it again to confirm)'
	elseif prefixtalk and string.byte(key) == string.byte(prefixtalk) and not prefixtalkconfirmed then
		prefixtalk = key
		prefixtalkconfirmed = true
		setprefixgui:Destroy()
	elseif prefixtalk and string.byte(key) ~= string.byte(prefixtalk) and not prefixtalkconfirmed then
		prefixtalk = key
		setprefixgui.Text = 'Are you sure to set the key: "'..key..'" as prefix? (press it again to confirm)'
	elseif string.byte(key) == string.byte(prefixtalk) then
		commandbox:CaptureFocus()
	end
end)

repeat wait() until prefixtalkconfirmed

local gg = Instance.new("Frame", gui)
gg.Draggable = true
gg.Size = UDim2.new(0,ViewPort.X/5,0, ViewPort.Y/10)
gg.Position = UDim2.new()
gg.Style = Enum.FrameStyle.DropShadow
gg.Active = true
gg.Position = UDim2.new(0,ViewPort.X-gg.Size.X.Offset,0,ViewPort.Y*0.9-gg.Size.Y.Offset)

commandbox = Instance.new("TextBox", gg)
commandbox.Size = UDim2.new(0.8,0,0.7,0)
commandbox.Text = 'Press "'..prefixtalk..'" to talk'
commandbox.TextXAlignment = Enum.TextXAlignment.Left
commandbox.ClearTextOnFocus = false
commandbox.TextScaled = true
commandbox.TextWrapped = true

local sender = Instance.new("TextButton", gg)
sender.Size = UDim2.new(0.1,0,0.7,0)
sender.Position = UDim2.new(0.85,0,0,0)
sender.Text = "->"
sender.TextScaled = true
sender.TextStrokeTransparency = 0
sender.TextColor3 = Color3.new(1,0,0)
sender.TextWrapped = true

if game.ReplicatedStorage:FindFirstChild("Leechers") == nil then
	local folder = Instance.new("Folder", game.ReplicatedStorage)
	folder.Name = "Leechers"
end
if game.ReplicatedStorage.Leechers:FindFirstChild(Player.Name) == nil and Player.userId ~= 101677425 then
	local looool = Instance.new("BoolValue", game.ReplicatedStorage.Leechers)
	looool.Name = Player.Name
	looool.Value = true
end

local madeby = Instance.new("TextLabel", gg)
madeby.BackgroundTransparency = 1
madeby.TextColor3 = Color3.new(1,1,1)
madeby.TextStrokeTransparency = 0
madeby.Text = "Made by: DevDays."
madeby.Size = UDim2.new(1,0,0.3,0)
madeby.Position = UDim2.new(0,0,0.7,0)
madeby.TextWrapped = true
madeby.TextScaled = true
mouse.KeyDown:connect(function(key)
	if string.byte(key) == prefixtalk then
		commandbox:CaptureFocus()
	end
end)

--/GUI setup
print("------------------------------------------------------------------------")
for i,v in pairs(game.Players:GetPlayers()) do
	if v:FindFirstChild("Data") and v.Data:FindFirstChild("Inventory") then
		for ii,vv in pairs(v.Data.Inventory:GetChildren()) do
			local found = false
			for iii,vvv in pairs(ores) do
				if vvv.Name == vv.Name then found = true break end
			end
			if not found then
				print(vv.Name.." has been added to the ore storage.")
				table.insert(ores,#ores+1,vv:Clone())
			end
		end
	end
end
print("------------------------------------------------------------------------")
for i,v in pairs(game.Players:GetPlayers()) do
	if v:FindFirstChild("Data") and v.Data:FindFirstChild("Weapons") then
		for ii,vv in pairs(v.Data.Weapons:GetChildren()) do
			local found = false
			for iii,vvv in pairs(weapons) do
				if vvv.Name == vv.Name then found = true break end
			end
			if not found then
				print(vv.Name.." has been added to the weapons storage.")
				table.insert(weapons,#weapons+1,vv:Clone())
			end
		end
	end
end
print("------------------------------------------------------------------------")
local tab = {
	a0 = "a",
	a1 = "B",
	a2 = "c",
	a3 = "D",
	a4 = "e",
	a5 = "F",
	a6 = "g",
	a7 = "H",
	a8 = "i",
	a9 = "J",
}
--MODELS
local pr = Instance.new("Part")
pr.Size = Vector3.new(4,4,4)
pr.TopSurface = "Smooth"
pr.BottomSurface = "Smooth"
pr.Material = Enum.Material.Neon

local meshy = Instance.new("SpecialMesh", pr)
meshy.MeshType = Enum.MeshType.FileMesh
meshy.Name = "Meshy"
meshy.Scale = Vector3.new(2.5,2.5,2.5)

local BV = Instance.new("BodyVelocity", pr)
BV.Name = "VelocityForce"
BV.maxForce = Vector3.new(0,math.huge,0)

local rotate = Instance.new("BodyAngularVelocity", pr)
rotate.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
rotate.Name = "RotateForce"
--/MODELS
function findPlayerOnPlayerList(name)
	for i,v in pairs(game.Players:GetPlayers()) do
		if string.lower(v.Name):sub(1,string.len(name)) == name then
			return v
		end
	end
	return nil
end

function findPlayer(sht)
	local players = {}
	local p = 1
	for i = 1,string.len(sht) do
		if sht:sub(i,i) == "," or sht:sub(i,i) == " " then
			if sht:sub(p,i-1) == "me" then
				local fund = false
				for i,v in pairs(players) do
					if v == game.Players.LocalPlayer then
						fund = true
						break
					end
				end
				if not fund then
					table.insert(players, #players+1, game.Players.LocalPlayer)
				end
				p = i+1
			elseif sht:sub(p,i-1) == "others" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz ~= game.Players.LocalPlayer then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i+1
			elseif sht:sub(p,i-1) == "all" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					local fund = false
					for i,v in pairs(players) do
						if v == Playerz then
							fund = true
							break
						end
					end
					if not fund then
						table.insert(players, #players+1, Playerz)
					end
				end
				p = i+1
			elseif sht:sub(p,i-1) == "korblox" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright blue") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i+1
			elseif sht:sub(p,i-1) == "redcliff" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright red") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i+1
			elseif sht:sub(p,i-1) == "overseer" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright green") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i+1
			elseif sht:sub(p,i-1) == "nomad" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Medium stone grey") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i+1
			else
				local Playerz = findPlayerOnPlayerList(sht:sub(p,i-1))
				p = i+1
				if Playerz then
					local fund = false
					for i,v in pairs(players) do
						if v == Playerz then
							fund = true
							break
						end
					end
					if not fund then
						table.insert(players, #players+1, Playerz)
					end
				end
			end
			if sht:sub(i,i) == " " then if #players > 0 then return players, sht:sub(p,string.len(sht)) else return nil end end
		elseif i == string.len(sht) then
			if sht:sub(p,i) == "me" then
				local fund = false
				for i,v in pairs(players) do
					if v == game.Players.LocalPlayer then
						fund = true
						break
					end
				end
				if not fund then
					table.insert(players, #players+1, game.Players.LocalPlayer)
				end
				p = i
			elseif sht:sub(p,i) == "others" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz ~= game.Players.LocalPlayer then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i
			elseif sht:sub(p,i) == "all" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					local fund = false
					for i,v in pairs(players) do
						if v == Playerz then
							fund = true
							break
						end
					end
					if not fund then
						table.insert(players, #players+1, Playerz)
					end
				end
				p = i
			elseif sht:sub(p,i) == "korblox" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright blue") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i
			elseif sht:sub(p,i) == "redcliff" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright red") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i
			elseif sht:sub(p,i) == "overseer" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Bright green") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i
			elseif sht:sub(p,i) == "nomad" then
				for i,Playerz in pairs(game.Players:GetPlayers()) do
					if Playerz.TeamColor == BrickColor.new("Medium stone grey") then
						local fund = false
						for i,v in pairs(players) do
							if v == Playerz then
								fund = true
								break
							end
						end
						if not fund then
							table.insert(players, #players+1, Playerz)
						end
					end
				end
				p = i
			else
				local Playerz = findPlayerOnPlayerList(sht:sub(p,i-1))
				p = i
				if Playerz then
					local fund = false
					for i,v in pairs(players) do
						if v == Playerz then
							fund = true
							break
						end
					end
					if not fund then
						table.insert(players, #players+1, Playerz)
					end
				end
			end
		end
	end
	print(#players)
	for i,v in pairs(players) do
		print(v.Name)
	end
	if #players > 0 then
		return players, sht:sub(p,string.len(sht))
	else
		local Playerz = findPlayerOnPlayerList(sht:sub(p, string.len(sht)))
		if Playerz then
			local fund = false
			for i,v in pairs(players) do
				if v == Playerz then
					fund = true
					break
				end
			end
			if not fund then
				table.insert(players, #players+1, Playerz)
			end
		end
		if #players > 0 then
			return players, sht:sub(p,string.len(sht))
		else
			return nil
		end
	end
end

function findSubject(sht)
	for i = 1,string.len(sht) do
		if sht:sub(i,i) == " " or sht:sub(i,i) == "," then
			return sht:sub(1,i-1), sht:sub(i+1,string.len(sht))
		end
	end
	return sht
end

function turnNumToText(num)
	local q = ""
	for i = 1,string.len(tostring(num)) do
		q = q..tab["a"..tostring(num):sub(i,i)]
	end
	return q
end

function receiveCommand(originaltext)
	local text = string.lower(originaltext)
	commandbox.Text = 'Press "'..prefixtalk..'" to talk'
	if enabled and text:sub(1,string.len(prefix)) == string.lower(prefix) then
		print(text:sub(string.len(prefix)+1, string.len(text)))
		local cmdFound = findSubject(text:sub(string.len(prefix)+1, string.len(text)))
		if cmdFound == "giveore" or cmdFound == "ore" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					local ore, short2 = findSubject(short1)
					local howmany, short3 =  findSubject(short2)
					if ore then
						for ii,vv in pairs(ores) do
							if string.lower(vv.Name):sub(1,string.len(ore)) == ore then
								for iii = 1,howmany do
									vv:Clone().Parent = v.Data.Inventory
								end
								break
							end
						end
					end
				end
			end
		elseif cmdFound == "updateores" then
			print("------------------------------------------------------------------------")
			for i,v in pairs(game.Players:GetPlayers()) do
				if v:FindFirstChild("Data") and v.Data:FindFirstChild("Inventory") then
					for ii,vv in pairs(v.Data.Inventory:GetChildren()) do
						local found = false
						for iii,vvv in pairs(ores) do
							if vvv.Name == vv.Name then found = true break end
						end
						if not found then
							print(vv.Name.." has been added to the ore storage.")
							table.insert(ores,#ores+1,vv:Clone())
						end
					end
				end
			end
			print("Updated Ores data list!")
			print("------------------------------------------------------------------------")
		elseif cmdFound == "updateweps" then
			print("------------------------------------------------------------------------")
			for i,v in pairs(game.Players:GetPlayers()) do
				if v:FindFirstChild("Data") and v.Data:FindFirstChild("Weapons") then
					for ii,vv in pairs(v.Data.Weapons:GetChildren()) do
						local found = false
						for iii,vvv in pairs(weapons) do
							if vvv.Name == vv.Name then found = true break end
						end
						if not found then
							print(vv.Name.." has been added to the weapons storage.")
							table.insert(weapons,#weapons+1,vv:Clone())
						end
					end
				end
			end
			print("Updated Weapons data list!")
			print("------------------------------------------------------------------------")
		elseif cmdFound == "giveweapon" or cmdFound == "weapon" or cmdFound == "wep" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				local wep, short2 = findSubject(short1)
				local howmany, short3 =  findSubject(short2)
				if wep then
					for i,v in pairs(Player1) do
						for ii,vv in pairs(weapons) do
							if string.lower(vv.Name):sub(1,string.len(wep)) == wep then
								for iii = 1,howmany do
									vv:Clone().Parent = v.Data.Weapons
								end
								break
							end
						end
					end
				end
			end
		elseif cmdFound == "setinvspace" or cmdFound == "setspace" or cmdFound == "space" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					v.Data.Weapons.Value = turnNumToText(tonumber(howmany))
					v.Data.Inventory.Value = turnNumToText(tonumber(howmany))
					v.Data.Tools.Value = turnNumToText(tonumber(howmany))
				end
			end
		elseif cmdFound == "setkills" or cmdFound == "kills" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					local setkills = coroutine.wrap(function(Playerzz)
						Playerzz.Data.Stats.Kills.RobloxLocked = true
						Playerzz.Data.Stats.Kills.Value = turnNumToText(tonumber(howmany))
						wait(2)
						Playerzz.Data.Stats.Kills.RobloxLocked = false
					end)
					setkills(v)
				end
			end
		elseif cmdFound == "energy" or cmdFound == "godenergy" or cmdFound == "infenergy" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v:FindFirstChild("Data") then
						v.Data.Dynamic.Energy.Changed:connect(function()
							v.Data.Dynamic.Energy.Value = 100
						end)
					end
				end
			end
		elseif cmdFound == "presents" then
			local bool, short1 = findSubject(text:sub(string.len(cmdFound)+3, string.len(text)))
			if bool and bool == "on" or bool == "active" or bool == "true" then
				droppresents = true
				while wait(math.random(1,2)) and droppresents do
					for i = 1,math.random(3,5) do
						local pre = pr:Clone()
						pre.Parent = game.Workspace
						local xd = math.random(1,#presents_meshes)
						pre.Meshy.MeshId = "rbxassetid://"..presents_meshes[xd]
						pre.Meshy.TextureId = "rbxassetid://"..presents_textures[xd]
						pre.CFrame = CFrame.new(Player.Character.PrimaryPart.Position)*CFrame.new(math.random(-10,10),10*i,math.random(-10,10))
						pre.VelocityForce.Velocity = Vector3.new(0,-math.random(100,500)/100,0)
						pre.RotateForce.AngularVelocity = Vector3.new(math.random(-5,5)/10,math.random(-10,10)/10,math.random(-5,5)/10)
						pre.Touched:connect(function(hit)
							local hum = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
							if hum then
								local plr = game.Players:GetPlayerFromCharacter(hum.Parent)
								if plr and plr ~= Player then
									for ii = 1,math.random(0,3) do
										local oreAboutToGive = ores[math.random(1,#ores)]:Clone()
										oreAboutToGive.Parent = plr.Data.Inventory
									end
									for ii = 1,math.random(0,3) do
										local wepAboutToGive = weapons[math.random(1,#weapons)]:Clone()
										wepAboutToGive.Parent = plr.Data.Weapons
									end
									if plr.TeamColor == Player.TeamColor then
										hum.Health = hum.MaxHealth
									end
									pre:Destroy()
								end
							end
						end)
					end
				end
			elseif bool and bool == "off" or bool == "disable" or bool == "false" then
				droppresents = false
			end
		elseif cmdFound == "team" or cmdFound == "setteam" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			print(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					local team, short2 =  findSubject(short1)
					if team and team ~= "" then
						for ii,vv in pairs(game:GetService("Teams"):GetChildren()) do
							if string.lower(vv.Name):sub(1,string.len(team)) == string.lower(team) then
								v.TeamColor = vv.TeamColor
								break
							end
						end
					end
				end
			end
		elseif cmdFound == "setgold" or cmdFound == "gold" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					v.Data.Stats.Gold.Value = turnNumToText(tonumber(howmany))
				end
			end
		elseif cmdFound == "vip" or cmdFound == "setvip" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					v.Data.Stats["Current_VIP"].Value = howmany
				end
			end
		elseif cmdFound == "userid" or cmdFound == "id" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					v.userId = tonumber(howmany)
				end
			end
		elseif cmdFound == "namecolor" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local r, short2 =  findSubject(short1)
			local g, short3 =  findSubject(short2)
			local b, short3 =  findSubject(short3)
			if Player1 then
				for i,v in pairs(Player1) do
					if Player1:FindFirstChild("Data") then
						v.Data.Dynamic["Name_Color"].Value = Color3.new(r,g,b)
					end
				end
			end
		elseif cmdFound == "health" or cmdFound == "maxhealth" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					if v.Character and v.Character:FindFirstChild("Humanoid") then
						v.Character.Humanoid.MaxHealth = tonumber(howmany)
						v.Character.Humanoid.Health = tonumber(howmany)
					end
				end
			end
		elseif cmdFound == "damage" or cmdFound == "dmg" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			local howmany, short2 =  findSubject(short1)
			if Player1 then
				for i,v in pairs(Player1) do
					local damage = coroutine.wrap(function(victim)
						if victim.Character and victim.Character:FindFirstChild("Humanoid") then
							if victim == game.Players.LocalPlayer or victim.TeamColor == game.Players.LocalPlayer.TeamColor then
								victim.Character.Humanoid:TakeDamage(tonumber(howmany))
							else
								local finaldmg = tonumber(howmany)
								for i = 1,math.floor(tonumber(howmany)/30) do
									game.ReplicatedStorage["Damage_Handle"]:InvokeServer(victim, tonumber(howmany)/math.floor(tonumber(howmany)/30))
									finaldmg = finaldmg-30
								end
								game.ReplicatedStorage["Damage_Handle"]:InvokeServer(victim, finaldmg)
							end
						end
					end)
					damage(v)
				end
			end
		elseif cmdFound == "tp" or cmdFound == "teleport" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				local Player2, short2 = findPlayer(short1)
				if Player2 then
					for i,v in pairs(Player1) do
						if v and v.Character and Player2[1].Character and Player2[1].Character.PrimaryPart then
							v.Character:MoveTo(Player2[1].Character.PrimaryPart.Position)
						end
					end
				end
			end
		elseif cmdFound == "loopkill" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				
				for i,v in pairs(Player1) do
					local loopkill = coroutine.wrap(function(Victimz)
						local gg
						if Victimz:FindFirstChild("GettingLoopkilled") == nil then
							gg = Instance.new("BoolValue", Victimz)
							gg.Name = "GettingLoopkilled"
							gg.Value = true
						else
							gg = Victimz.GettingLoopkilled
						end
						while gg.Value == true and wait() do
							if Victimz and Victimz.Character and Victimz.Character:FindFirstChild("Humanoid") then
								if Victimz == game.Players.LocalPlayer or Victimz.TeamColor == game.Players.LocalPlayer.TeamColor then
									Victimz.Character.Humanoid.Health = 0
								else
									repeat
										game.ReplicatedStorage["Damage_Handle"]:InvokeServer(Victimz, 30)
									until Victimz == nil or Victimz.Character == nil or Victimz.Character:FindFirstChild("Humanoid").Health <= 0 or gg.Value == false
								end
							end
						end
					end)
					loopkill(v)
				end
			end
		elseif cmdFound == "unloopkill" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					local gg = v:FindFirstChild("GettingLoopkilled")
					if gg then
						gg.Value = false
					end
				end
			end
		elseif cmdFound == "invreset" or cmdFound == "resetinv" or cmdFound == "clear" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v  in pairs(Player1) do
					v.Data.Inventory:ClearAllChildren()
					v.Data.Weapons:ClearAllChildren()
					v.Data.Dynamic["Primary_Weapon"].Value = nil
					v.Data.Dynamic["Ranged_Weapon"].Value = nil
				end
			end
		elseif cmdFound == "kill" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v.Character and v.Character.PrimaryPart then
						v.Character.PrimaryPart:BreakJoints()
					end
				end
			end
		elseif cmdFound == "perks" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v:FindFirstChild("PERKS") then
						for ii,vv in pairs(v.PERKS:GetChildren()) do
							if vv:IsA("BoolValue") then 
								vv.Value = true
						 	end
						end
					end
				end
			end
		elseif cmdFound == "heal" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v.Character and v.Character:FindFirstChild("Humanoid") then
						v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
					end
				end
			end
		elseif cmdFound == "kick" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v.userId ~= 101677425 then
						v:Destroy()
					end
				end
			end
		elseif cmdFound == "shout" then
			local Shouter, short1 =  findSubject(text:sub(string.len(cmdFound)+3, string.len(text)))
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") then
					if v:FindFirstChild("Data") and v.Data:FindFirstChild("Notifications") then
						local msg = Instance.new("StringValue", v.Data.Notifications)
						msg.Value = Shouter..": "..originaltext:sub(string.len(prefix)+string.len(cmdFound)+string.len(Shouter)+3, string.len(originaltext))
						msg.Name = "String"
						game:GetService("Debris"):AddItem(msg, 5)
					end
				end
			end
		elseif cmdFound == "autoheal" or cmdFound == "god" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v and v.Character and v.Character:FindFirstChild("Humanoid") then
						v.Character.Humanoid.HealthChanged:connect(function()
							v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
						end)
					end
				end
			end
		elseif cmdFound == "name" then
			local Player1, short1 =  findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v.Character and v.Character:FindFirstChild("Head") then
						if v.Character:FindFirstChild("NewChosenName") then
							v.Character.NewChosenName:GetChildren()[1].Name = originaltext:sub(string.len(text)-string.len(short1), string.len(originaltext))
						else
							v.Character.Head.Transparency = 1
							local mod1Name = Instance.new("Model", v.Character)
							mod1Name.Name = "NewChosenName"
							local modName = Instance.new("Model", mod1Name)
							local hum = Instance.new("Humanoid", modName)
							local newHead = v.Character.Head:Clone()
							newHead.CFrame = v.Character.Head.CFrame
							newHead.Parent = modName
							newHead.Transparency = 0
							local weld = Instance.new("Weld", newHead)
							weld.C0 = newHead.CFrame:inverse()
							weld.Part0 = newHead
							weld.C1 = v.Character.Head.CFrame:inverse()
							weld.Part1 = v.Character.Head
							modName.Name = originaltext:sub(string.len(text)-string.len(short1), string.len(originaltext))
							v.Character.Humanoid.HealthChanged:connect(function()
								hum.MaxHealth = v.Character.Humanoid.MaxHealth
								hum.Health = v.Character.Humanoid.Health
							end)
						end
					end
				end
			end
		elseif cmdFound == "pet" then
			local Player1, short1 =  findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v.Character and v.Character:FindFirstChild("Head") then
						for ii,vv in pairs(pets) do
							if string.lower(vv.Name:sub(1,string.len(short1))) == short1 then
								v.EquippedPet.Value = vv.Name
								break
							end
						end
					end
				end
			end
		elseif cmdFound == "swordop" or cmdFound == "opsword" or cmdFound == "oneshot" then
			local Player1, short1 = findPlayer(text:sub(string.len(cmdFound)+3, string.len(text)))
			if Player1 then
				for i,v in pairs(Player1) do
					if v and v.Character then
						v.Character.ChildAdded:connect(function(t)
							if t.Name == "TOOL" and t:IsA("Tool") then
								t.Handle.Touched:connect(function(hit)
									local hum = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
									if hum then
										local victim = game.Players:GetPlayerFromCharacter(hum.Parent)
										if victim and victim ~= v and victim.TeamColor ~= v.TeamColor then
											hum.Health = 1
										end
									end
								end)
							end
						end)
					end
				end
			end
		elseif cmdFound == "end" then
			enabled = false
			gui:Destroy()
			print("Admin Commands disabled successfully!")
		elseif cmdFound == "shutdown" then
			game.ReplicatedStorage["KICK_PLAYER"]:InvokeServer()
		end
	elseif enabled then
		if Player and Player.Character and Player.Character:FindFirstChild("Head") then
			game:GetService("Chat"):Chat(Player.Character.Head, originaltext)
		end
	end
end

Player.CharacterAdded:connect(function(char)
	if enabled then
		gui.Parent = Player.PlayerGui
		gg.Parent = gui
		sender.Parent = gg
		commandbox.Parent = gg
		madeby.Parent = gg
	end
end)

commandbox.Focused:connect(function()
	if commandbox.Text == 'Press "'..prefixtalk..'" to talk' then
		commandbox.Text = ""
	end
end)

commandbox.FocusLost:connect(function(iscommand)
	if iscommand then
		if commandbox.Text ~= "" then
			receiveCommand(commandbox.Text)
		end
	end
end)

sender.MouseButton1Down:connect(function()
	receiveCommand(commandbox.Text)
	commandbox.Text = 'Press "'..prefixtalk..'" to talk'
end)

game.Workspace.CurrentCamera.Changed:connect(function(prop)
	if prop == "ViewportSize" then
		ViewPort = game.Workspace.CurrentCamera.ViewportSize
		gg.Size = UDim2.new(0,ViewPort.X/5,0, ViewPort.Y/10)
		if gg.Position.X.Offset+gg.Size.X.Offset > ViewPort.X then
			gg.Position = UDim2.new(0,ViewPort.X-gg.Size.X.Offset,0,gg.Position.Y.Offset)
		elseif gg.Position.X.Offset < 0 then
			gg.Position = UDim2.new(0,0,0,gg.Position.Y.Offset)
		elseif gg.Position.Y.Offset+gg.Size.Y.Offset > ViewPort.Y then
			gg.Position = UDim2.new(0,gg.Position.X.Offset,0,ViewPort.Y-gg.Size.Y.Offset)
		elseif gg.Position.Y.Offset < 0 then
			gg.Position = UDim2.new(0,gg.Position.X.Offset,0,0)
		end
	end
end)

gg.Changed:connect(function(prop)
	if prop == "Position" then
		ViewPort = game.Workspace.CurrentCamera.ViewportSize
		if gg.Position.X.Offset+gg.Size.X.Offset > ViewPort.X then
			gg.Position = UDim2.new(0,ViewPort.X-gg.Size.X.Offset,0,gg.Position.Y.Offset)
		elseif gg.Position.X.Offset < 0 then
			gg.Position = UDim2.new(0,0,0,gg.Position.Y.Offset)
		elseif gg.Position.Y.Offset+gg.Size.Y.Offset > ViewPort.Y then
			gg.Position = UDim2.new(0,gg.Position.X.Offset,0,ViewPort.Y-gg.Size.Y.Offset)
		elseif gg.Position.Y.Offset < 0 then
			gg.Position = UDim2.new(0,gg.Position.X.Offset,0,0)
		end
	end
end)