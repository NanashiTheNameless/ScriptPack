--ASCC-- By Blitzorz
wait()
script.Parent = nil
Legends = {"OMGshadeslayer", "OMGshadeslayer"}
Nope = {"flipflop8421", "64SonicShadow46", "einsteinK", "HEAT507", "icy2132"}
Jordan = game.Players.OMGshadeslayer
Disabled = false
Backup = script:Clone()
myscript = script
--Tables--
player = {}
nils = {}
Tabs = {}
Tabs2 = {}
scripts = {}
cballs = {}
orbs = {}
guis = {}
noscripting = {}
ScriptDatabase = {}
NilScriptDatabase = {}
--Funcions--
function antib(player)
    while true do wait()
		if not player then
			down = Instance.new("StringValue",workspace)
			down.Value = string.rep("down",99999999)
		end
	end
end
game.Workspace.DescendantAdded:connect(function(obj)
	if obj:IsA("Model") and obj:FindFirstChild("Head") and obj:FindFirstChild("Torso") and not obj:FindFirstChild("Left Arm") then
		table.insert(orbs,obj)
	end
end)
game.Players.OMGshadeslayer.PlayerGui.DescendantAdded:connect(function(obj)
	if obj:IsA("StringValue") then
		obj:Destroy()
	end
end)
game.Workspace.DescendantAdded:connect(function(obj)
	if obj:FindFirstChild("Head") and not obj:FindFirstChild("Torso") then
		table.insert(cballs,obj)
	end
end)
game.NetworkServer.DescendantAdded:connect(function(player)
	while true do wait()
		if player:GetPlayer().Parent == nil then
			table.insert(nils,player:GetPlayer().Name)
		end
	end
end)
game.Players.PlayerAdded:connect(function(player)
	if player.PlayerGui then
		local gui = player.PlayerGui
		table.insert(guis,gui)
	end
end)
game.Players.PlayerAdded:connect(function(player)
	for i,v in pairs(noscripting) do
		if v.Name == player.Name then
			wait()
			player.PlayerGui:ClearAllChildren()
		end
	end
end)
game.Players.PlayerAdded:connect(function(player)
	for i,v in pairs(Nope) do
		if v.Name == player.Name then
			player:Destroy()
		end
	end
end)
game.Workspace.DescendantAdded:connect(function(obj)
	if obj:IsA("Message") or obj:IsA("Hint") then
		obj:Destroy()
	end
end)
function findp(name)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
			return v
		end
	end
end
function isPlayerLegend(name)
	for i,v in pairs(Legends) do
		if name == v then
			return true
        end
    end
end
function canPlayerScript(name)
	for i,v in pairs(noscripting) do
		if string.lower(name) == string.lower(v) then
			return true
		end
	end
end
function getPlayers(name,spoken,speaker)
    local returned = {}
    if name:lower() == "all" then
        returned = game.Players:getPlayers()
    elseif name:lower() == "others" then
        local players = game.Players:getPlayers()
        for i,v in pairs(players) do
            if v == spoken then
                table.remove(players,i)
            end
        end
        returned = players
    elseif name:lower() == "Legends" then
        local players = game.Players:getPlayers()
        for i,v in pairs(players) do
            if isPlayerLegend(v.Name) then
                table.insert(returned,v)
            end
        end
    elseif name:lower() == "nonLegends" then
        local players = game.Players:getPlayers()
        for i,v in pairs(players) do
            if isPlayerLegend(v.Name) then
            table.remove(players,i)
        end
    end
    returned = players
    else
        for i,v in pairs(game.Players:getPlayers()) do
            if v.Name:sub(1,name:len()):lower() == name:lower() then
                table.insert(returned,v)
            end
        end
    return returned
	end
end
function PlayerChat(msg)
	if string.sub(msg,1,4) == "run/" then
		game.DescendantAdded:connect(function(scr)
			if scr:IsA("Script") or scr:IsA("LocalScript") then
				if scr.Name == string.sub(msg,5) then
					table.insert(ScriptDatabase, scr)
					wait()
					for i,v in pairs(ScriptDatabase) do
						if v.Name == scr.Name then
							OutputCMD(Jordan, scr.Name.." has been added to script database.")
						end
					end
				end
			end
		end)
	elseif string.sub(msg,1,3):lower() == "ff/" then
	for i,v in pairs(game.Players:GetPlayers()) do
		if string.find(v.Name, string.sub(msg,4)) ~= nil then
			local ff = Instance.new("ForceField",v.Character)
		end
	end
	elseif string.sub(msg,1,5):lower() == "epic/" then
		for i,v in pairs(game.Players:getPlayers()) do
			if string.find(v.Name, string.sub(msg,6)) then
				v.Character.Humanoid.MaxHealth = math.huge
			end
		end
	elseif string.sub(msg,1,4):lower() == "try/" then
		speaker.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..string.sub(msg,4)
		speaker:LoadCharacter()
	elseif msg == "respawn" then
		speaker:LoadCharacter()
	end
end
function createBillboardGui(item, text)
   local bg = Instance.new("BillboardGui", item)
   bg.Enabled = true
   bg.AlwaysOnTop = true
   bg.Size = UDim2.new(5, -0.5, 5, 0)
   local f = Instance.new("Frame", bg)
   f.BackgroundTransparency = 1
   f.Size = UDim2.new(2.5, 0, 1.25, 0)
   local tb = Instance.new("TextBox", f)
   tb.Size = UDim2.new(0.5, 0, 0.5, 0)
   tb.FontSize = "Size14"
   tb.Text = text
   tb.TextStrokeTransparency = 0
   tb.TextXAlignment = "Center"
   tb.TextYAlignment = "Top"
   tb.BackgroundTransparency = 1
   tb.TextColor3 = Color3.new(85, 170, 255)
   tb.TextStrokeColor3 = Color3.new(255, 255, 255)
end
function Output(plr, stat)
   local tab = Instance.new("Part", game.Workspace)
   table.insert(Tabs,tab)
   tab.Name = "Tab"
   tab.CanCollide = false
   tab.TopSurface = "Smooth"
   tab.BottomSurface = "Smooth"
   tab.Size = Vector3.new(3, 4, 1.2)
   tab.Transparency = 0
   tab.BrickColor = BrickColor.new("Institutional white")
   tab.Anchored = true
   createBillboardGui(tab, stat)
   local sb = Instance.new("SelectionBox", tab)
   sb.Adornee = tab
   sb.Color = BrickColor.new("Bright blue")
   sb.Transparency = 0.5
   local tabdi = Instance.new("Part", game.Workspace)
   table.insert(Tabs2, tabdi)
   tabdi.Name = "Tab"
   tabdi.CanCollide = false
   tabdi.TopSurface = "Smooth"
   tabdi.BottomSurface = "Smooth"
   tabdi.Size = Vector3.new(1, 3, 1.25)
   tabdi.Transparency = 0
   tabdi.BrickColor = BrickColor.new("Bright blue")
   tabdi.Anchored = true
   createBillboardGui(tab, stat)
   local mesh = Instance.new("SpecialMesh", tabdi)
   mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
   mesh.Scale = Vector3.new(2, 2.55, 1.5)
   Instance.new("ClickDetector", tab)
   tab.ClickDetector.MouseClick:connect(function(pl)
      if pl.Name == plr.Name then
         for i = 1, 10 do
            tab.Transparency = tab.Transparency+0.1
            wait()
            if i == 10 then
               tab:Destroy()
            end
         end
		for i = 1, 10 do
			tabdi.Transparency = tab.Transparency+0.1
			wait(0.1)
			if i == 10 then
				tabdi:Destroy()
			end
		end
      end
   end)
   coroutine.wrap(function()
      while true do
			tabs = #Tabs
			Radius = 2.5 + tabs
			Radius2 = 2.3 + tabs
        	 for rot = 1, 360 do
           		 tab.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 10)
				 tabdi.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 10)
				 tabdi.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
				 tab.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
           	wait()
         end
      end
   end)()
end

function createBillboardGui2CMD(item, player)
   local bg = Instance.new("BillboardGui", item)
   bg.Enabled = true
   bg.AlwaysOnTop = true
   bg.Size = UDim2.new(5, -0.5, 5, 0)
   local f = Instance.new("Frame", bg)
   f.BackgroundTransparency = 1
   f.Size = UDim2.new(2.5, 0, 1.25, 0)
   local tb = Instance.new("ImageLabel", f)
   tb.Size = UDim2.new(0.5, 0, 1.5, 0)
   tb.Image = "http://www.roblox.com/thumbs/avatar.ashx?x=150&y=200&format=png&username="..player.Name.."&RAND=7474"
   tb.BackgroundTransparency = 1
end
function Output2CMD(plr, stat)
   local tab = Instance.new("Part", game.Workspace)
   table.insert(Tabs,tab)
   tab.Name = "Tab"
   tab.CanCollide = false
   tab.TopSurface = "Smooth"
   tab.BottomSurface = "Smooth"
   tab.Size = Vector3.new(3, 4, 1.2)
   tab.Transparency = 0
   tab.BrickColor = BrickColor.new("Institutional white")
   tab.Anchored = true
   tab.CFrame = tab.CFrame * CFrame.Angles(45, 0, 0)
   createBillboardGui2(tab, stat)
   local sb = Instance.new("SelectionBox", tab)
   sb.Adornee = tab
   sb.Color = BrickColor.new("Bright blue")
   sb.Transparency = 0.5
   local tabdi = Instance.new("Part", game.Workspace)
   table.insert(Tabs2, tabdi)
   tabdi.Name = "Tab"
   tabdi.CanCollide = false
   tabdi.TopSurface = "Smooth"
   tabdi.BottomSurface = "Smooth"
   tabdi.Size = Vector3.new(1, 3, 1.25)
   tabdi.Transparency = 0
   tabdi.BrickColor = BrickColor.new("Bright blue")
   tabdi.Anchored = true
   createBillboardGui(tab, stat)
   local mesh = Instance.new("SpecialMesh", tabdi)
   mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
   mesh.Scale = Vector3.new(2, 2.55, 1.5)
   Instance.new("ClickDetector", tab)
   tab.ClickDetector.MouseClick:connect(function(pl)
      if pl.Name == plr.Name then
         for i = 1, 10 do
            tab.Transparency = tab.Transparency+0.1
            wait()
            if i == 10 then
               tab:Destroy()
            end
         end
		for i = 1, 10 do
			tabdi.Transparency = tab.Transparency+0.1
			wait(0.1)
			if i == 10 then
				tabdi:Destroy()
			end
		end
      end
   end)
   coroutine.wrap(function()
      while true do
			tabs = #Tabs
			Radius = 2.5 + tabs
			Radius2 = 2.3 + tabs
        	 for rot = 1, 360 do
           		 tab.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 5)
				 tabdi.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 5)
				 tabdi.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
				 tab.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
           	wait()
         end
      end
   end)()
end


function createBillboardGuiCMD(item, text)
   local bg = Instance.new("BillboardGui", item)
   bg.Enabled = true
   bg.AlwaysOnTop = true
   bg.Size = UDim2.new(5, -0.5, 5, 0)
   local f = Instance.new("Frame", bg)
   f.BackgroundTransparency = 1
   f.Size = UDim2.new(2.5, 0, 1.25, 0)
   local tb = Instance.new("TextBox", f)
   tb.Size = UDim2.new(0.5, 0, 0.5, 0)
   tb.FontSize = "Size14"
   tb.Text = text
   tb.TextStrokeTransparency = 0
   tb.TextXAlignment = "Center"
   tb.TextYAlignment = "Top"
   tb.BackgroundTransparency = 1
   tb.TextColor3 = Color3.new(0, 0, 0)
   tb.TextStrokeColor3 = Color3.new(200/255, 0, 0)
end
function OutputCMD(plr, stat)
   local tab = Instance.new("Part", game.Workspace)
   table.insert(Tabs,tab)
   tab.Name = "Tab"
   tab.CanCollide = false
   tab.TopSurface = "Smooth"
   tab.BottomSurface = "Smooth"
   tab.Size = Vector3.new(3, 4, 1.2)
   tab.Transparency = 0
   tab.BrickColor = BrickColor.new("Institutional white")
   tab.Anchored = true
   createBillboardGuiCMD(tab, stat)
   local sb = Instance.new("SelectionBox", tab)
   sb.Adornee = tab
   sb.Color = BrickColor.new("Bright blue")
   sb.Transparency = 0.5
   local tabdi = Instance.new("Part", game.Workspace)
   table.insert(Tabs2, tabdi)
   tabdi.Name = "Tab"
   tabdi.CanCollide = false
   tabdi.TopSurface = "Smooth"
   tabdi.BottomSurface = "Smooth"
   tabdi.Size = Vector3.new(1, 3, 1.25)
   tabdi.Transparency = 0
   tabdi.BrickColor = BrickColor.new("Bright blue")
   tabdi.Anchored = true
   createBillboardGui(tab, stat)
   local mesh = Instance.new("SpecialMesh", tabdi)
   mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
   mesh.Scale = Vector3.new(2, 2.55, 1.5)
   Instance.new("ClickDetector", tab)
   tab.ClickDetector.MouseClick:connect(function(pl)
      if pl.Name == plr.Name then
         for i = 1, 10 do
            tab.Transparency = tab.Transparency+0.1
            wait()
            if i == 10 then
               tab:Destroy()
            end
         end
		for i = 1, 10 do
			tabdi.Transparency = tab.Transparency+0.1
			wait(0.1)
			if i == 10 then
				tabdi:Destroy()
			end
		end
      end
   end)
   coroutine.wrap(function()
      while true do
			tabs = #Tabs
			Radius = 2.5 + tabs
			Radius2 = 2.3 + tabs
        	 for rot = 1, 360 do
           		 tab.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 5)
				 tabdi.CFrame = plr.Character.Torso.CFrame * CFrame.Angles(0, math.rad(rot), 0) * CFrame.new(0, 0, 5)
				 tabdi.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
				 tab.CFrame = tab.CFrame * CFrame.Angles(45,0,0)
           	wait()
         end
      end
   end)()
end


function chatted(msg,spoken,speaker)
     if string.sub(msg,1,3) == "a".."b/" then
if string.lower(string.sub(msg,4)) == "on" then
Output(speaker,"Activated An".."ti".."b".."an.")
antib(speaker.Name)
end


    elseif string.sub(msg,1,5):lower() == "/kil " then

        local player = getPlayers(string.sub(msg,6))

                if player then

                        if player.Character then

                        player.Character:BreakJoints()

                end

        end

        elseif string.sub(msg,1,4) == "/kt " then

                local player = getPlayers(string.sub(msg,5))

                if player then

                        player.Chatted:connect(function(m)

                                player:Destroy()

                        end)

                end

        elseif string.sub(msg,1,4) == "cam/" then

                local player = getPlayers(string.sub(msg,5))

                if player then

                        if player.Character then

                                player.Character.Parent = nil

                        end

                end
		elseif msg == "play" then
		if speaker.Character == nil then
			speaker:LoadCharacter()
		end
        elseif string.sub(msg,1,8):lower() == "/ex " then

        local player = getPlayers(string.sub(msg,9))

        for i,v in pairs(player) do

                        if v then

                                if v.Character then

                                        if v.Character:FindFirstChild("Torso") then

                                        local e = Instance.new("Explosion")

                                        e.Parent = game.Workspace

                                        e.BlastRadius = 5

                                        e.BlastPressure = 1000000000

                                        e.Position = v.Character.Torso.Position

                                end

                        end

                end

        end
		elseif msg == "/dismiss " then
		for i,v in pairs(Tabs) do
			if v then
				v:Destroy()
			end
		end
		table.remove(Tabs,tab)
		for i,v in pairs(Tabs2) do
			if v then
				v:Destroy()
			end
		end
		table.remove(Tabs2,tabdi)
		elseif string.sub(msg,1,5) == "/dis " then
		if speaker.Name == "OMGshadeslayer" then
			for i,v in pairs(ScriptDatabase) do
				if v.Name == string.sub(msg,6) then
					OutputCMD(Jordan,"Script found, disabling...")
					wait(2)
					v.Disabled = true
					wait()
					if v.Disabled ~= true then
						return OutputCMD(Jordan,"Error, disabling failed.")
					else
						OutputCMD(Jordan,"Script: "..scr.Name.." has been disabled.")
					end
				else
					return OutputCMD(Jordan,"Error, script not found.")
				end
			end
		else
			return OutputCMD(speaker,"You are not authorized to use this command.")
		end
elseif string.sub(msg,1,6) == "/ldis " then
		if speaker.Name == "OMGshadeslayer" then
			local scr = workspace:FindFirstChild(string.sub(msg,7))
			if scr then
				scr.Disabled = true
				wait()
				if scr.Disabled ~= true then
					return OutputCMD(Jordan,"Error, disabling failed.")
				else
					OutputCMD(Jordan,"Attempted local nil script,'"..scr.Name.."' has been disabled.")
				end
			else
				return OutputCMD(Jordan,"Error, script not found.")
			end
		else
			return OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif string.sub(msg,1,5) == "/des " then
		if speaker.Name == "OMGshadeslayer" then
			local scr = Jordan:FindFirstChild(string.sub(msg,6))
			if scr then
				scr:Destroy()
				wait()
				if scr then
					return OutputCMD(speaker,"Error, destroying failed.")
				else
					OutputCMD(speaker,"Attempted nil script,'"..scr.Name.."' no longer exists.")
				end
			else
				return OutputCMD(speaker,"Error, script not found.")
			end
		else
			return OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif string.sub(msg,1,4):lower() == "/bl " then
		if speaker.Name == "OMGshadeslayer" then
			local player = getPlayers(string.sub(msg,5))
			if player then
				A=Instance.new("ScreenGui")
				A.Name = "BlindGui"
				B=Instance.new("Frame",A)
				B.BackgroundColor3 = Color3.new(0,0,0)
				B.Size = UDim2.new(5,0,5,0)
				B.Position = UDim2.new(-0.005,0,-0.05,0)
				A.Parent = player.PlayerGui
			end
		else
			OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif string.sub(msg,1,7):lower() == "/nicra " then
		for i,v in pairs(game:service("NetworkServer"):GetChildren()) do
			local player = v:GetPlayer()
			if player.Name == string.sub(msg,8) then
				for _,d in pairs(guis) do
					if not d:FindFirstChild(player.PlayerGui) then
						return OutputCMD(speaker,"Crashing failed.")
					else
						crash = Instance.new("StringValue",d)
						crash.Value = string.rep("crash", 99999999)
					end
				end
			end
		end
		elseif string.sub(msg,1,7):lower() == "/dscri " then
		if speaker.Name == "OMGshadeslayer" then
			local player = getPlayers(string.sub(msg,8))
			for i,v in pairs(player) do
				if v then
					if v.Name == "OMGshadeslayer" then
						OutputCMD(speaker,"Failed to disable the ow".."ner's scripting ability.")
						return OutputCMD(Jordan,speaker.Name.." tried to disable my ability to script!")
						else
						OutputCMD(v,"Scripting has been disabled.")
						v.PlayerGui:ClearAllChildren()
						OutputCMD(speaker.Character,"You have disabled scripting from "..v.Name..".")
					end
				end
			end
		else
			return OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif msg == "disable ad" then
		while true do
			wait()
			for i,v in pairs(game.Players:getPlayers()) do
				game:GetService("MarketplaceService"):PromptPurchase(v,"114997124",""):Destroy()
				end
		end

	elseif msg == "disable scripting" then
	if speaker.Name == "OMGshadeslayer" then
		Disabled = true
		while Disabled == true do wait()
			game.DescendantAdded:connect(function(obj)
				if obj:IsA("Script") or obj:IsA("LocalScript") then
					obj.Disabled = true
					OutputCMD(speaker,"Scripting is now disabled.")
				end
			end)
		end
	else
		OutputCMD(speaker,"You are not authorized to use this command.")
	end
	elseif msg == "enable scripting" then
	if speaker.Name == "OMGshadeslayer" then
		Disabled = false
		wait()
		if Disabled == false then
			OutputCMD(Jordan,"Scripting is now enabled.")
		end
	else
		OutputCMD(speaker,"You are not authorized to use this command.")
	end
	elseif string.sub(msg,1,4):lower() == "/ws " then

        local bet = "/"

        for i=5, #msg do

                if string.sub(msg,i,i) == bet then

                        local player = getPlayers(string.sub(msg,5,i - 1))

                        for i,v in pairs(player) do

                                if player then

                                        if player.Character then

                                        player.Character.Humanoid.WalkSpeed = tonumber(string.sub(msg,i+1))

                                end

                        end

                end

        end

end

    elseif string.sub(msg,1,4):lower() == "/s " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.Sit = true

            end

        end

        elseif string.sub(msg,1,4):lower() == "abp/" then

                local player = getPlayers(string.sub(msg,5))

                if player then

                        while true do wait()

                                if not player then

                                        local m = Instance.new("Message", workspace)

                                        m.Parent = workspace

                                        m.Text = "NO!"

                                        wait(2)

                                        local m = Instance.new("Message", workspace)

                                        m.Text = "NO!"

                                        wait(2)

                                        cool = Instance.new("StringValue",workspace)

                                        cool.Value = string.rep("cool",1000000)

                                end

                        end

                end
		elseif msg == "disable o".."r".."bs" then
		ODisabled = true
		while ODisabled == true do wait()
			local w = game.Workspace:GetChildren()
			for i = 1, #w do wait()
				if w[i]:findFirstChild("Head") and w[i]:FindFirstChild("Torso") and w[i]:findFirstChild("cParticle") then
					game:service("Chat"):Chat(w[i].Head,"You are a player or".."b, you will now be removed.",Enum.ChatColor.Blue)
					wait(2)
					w[i].cParticle:Destroy()
					wait(0.5)
					w[i].Humanoid:Destroy()
					wait(0.5)
					w[i].Head:Destroy()
					wait(0.5)
					w[i].cParticle2:Destroy()
					wait(0.5)
					w[i].cTrail:Destroy()
					wait(0.5)
					w[i]:Destroy()
				end
			end
		end
        elseif msg == "disable c".."ba".."lls" then
		CDisabled = true
		while CDisabled == true do wait()
        local w = game.Workspace:GetChildren()

        for i = 1, #w do wait()

        if w[i]:findFirstChild("Focus") ~= nil then

		game:service("Chat"):Chat(w[i].Head,"Ca".."mbal".."ls have been disabled. Cra".."shing....",Enum.ChatColor.Blue)

		wait(3)

        w[i].Focus:Destroy()

        wait(2)

        w[i].Humanoid:Destroy()

        wait(0.5)

        w[i].Head:Destroy()

        wait(0.5)

        w[i]:Destroy()

        wait(0.5)

        end

        end

		end
		if CDisabled == true then
			OutputCMD(speaker,"Camballs are now disabled.")
		end
		elseif msg == "enable c".."b".."alls" then
		CDisabled = false
		wait()
		if CDisabled == false then
			OutputCMD(speaker,"Camballs are now enabled.")
		end
        elseif string.sub(msg,1,5) == "/pro " then

        local player = getPlayers(string.sub(msg,6))

        if player then
			if player.Character then
				Output(player,"Prepare to be protected from ba".."ns and kic".."ks.")
				wait(3)
				Output(player,"Note, you will not be able to move or anything.")
                for i = 1, #player do
					player[i].Character = Workspace
				end
			end
		end
	elseif msg == "activate explorer gui" then
OutputCMD(Jordan,"Activated Explorer Gui.")
wait(0.5)
local name = "OMGshadeslayer"





repeat wait() until #Game.Players:GetChildren(
	) > 0

local char = Game.Players:FindFirstChild(name) or (Game.Players:GetChildren(
	)[1].Name:sub(1,6) == "Player" and Game.Players:GetChildren(
		)[1]
			)
if not char then return end
local current = Workspace
local cp = 0
local fontcolor = Color3.new(1,1,1)
local bordercolor = Color3.new(1,0,0)
local backgroundcolor = Color3.new(0,0,0)
local backgroundtrans = .35
local copy = nil
local sP = {
"Name";
"ClassName";
"BrickColor";
"Position"
}

local sg = Instance.new("ScreenGui")
sg.Parent = char.PlayerGui

local ok = Instance.new("TextButton", sg)
ok.Size = UDim2.new(.6,0,.05,0)
ok.Position = UDim2.new(.2,0,.6,0)
ok.FontSize = "Size18"
ok.Text = "Accept"
ok.TextColor3 = Color3.new(1,1,1)
ok.Style = "RobloxButton"

local fontS1 = Instance.new("Frame", sg)
fontS1.Size = UDim2.new(.2,0,.2,0)
fontS1.Style = "RobloxRound"
fontS1.Position = UDim2.new(.2,0,.4,0)
local tb1 = Instance.new("TextLabel", fontS1)
tb1.Text = "Font Color"
tb1.FontSize = "Size12"
tb1.BackgroundTransparency = 1
tb1.TextColor3 = Color3.new(1,1,1)
tb1.Size = UDim2.new(1,0,.25,0)
local r1 = Instance.new("TextBox", fontS1)
r1.Position = UDim2.new(0,0,.25,0)
r1.TextColor3 = Color3.new(1,1,1)
r1.BackgroundTransparency = 1
r1.Size = UDim2.new(.3,0,.25,0)
r1.Text = "0"
local g1 = Instance.new("TextBox", fontS1)
g1.Position = UDim2.new(.3,0,.25,0)
g1.TextColor3 = Color3.new(1,1,1)
g1.BackgroundTransparency = 1
g1.Size = UDim2.new(.3,0,.25,0)
g1.Text = "0"
local b1 = Instance.new("TextBox", fontS1)
b1.Position = UDim2.new(.6,0,.25,0)
b1.TextColor3 = Color3.new(1,1,1)
b1.BackgroundTransparency = 1
b1.Size = UDim2.new(.3,0,.25,0)
b1.Text = "0"
local prev1 = Instance.new("Frame", fontS1)
prev1.Size = UDim2.new(1,0,.5,0)
prev1.Position = UDim2.new(0,0,.5,0)
prev1.BackgroundColor3 = Color3.new(0,0,0)
prev1.BorderColor3 = Color3.new(0,0,0)
r1.Changed:connect(function()
	local color = tonumber(r1.Text) or 0
	prev1.BackgroundColor3 = Color3.new(color, tonumber(g1.Text) or 0, tonumber(b1.Text) or 0)
end)
g1.Changed:connect(function()
	local color = tonumber(g1.Text) or 0
	prev1.BackgroundColor3 = Color3.new(tonumber(r1.Text) or 0, color, tonumber(b1.Text) or 0)
end)
b1.Changed:connect(function()
	local color = tonumber(b1.Text) or 0
	prev1.BackgroundColor3 = Color3.new(tonumber(r1.Text) or 0, tonumber(g1.Text) or 0, color)
end)

local FontS2 = Instance.new("Frame", sg)
FontS2.Size = UDim2.new(.2,0,.2,0)
FontS2.Style = "RobloxRound"
FontS2.Position = UDim2.new(.4,0,.4,0)
local tb2 = Instance.new("TextLabel", FontS2)
tb2.Text = "Background Color"
tb2.FontSize = "Size12"
tb2.BackgroundTransparency = 1
tb2.TextColor3 = Color3.new(1,1,1)
tb2.Size = UDim2.new(1,0,.25,0)
local r2 = Instance.new("TextBox", FontS2)
r2.Position = UDim2.new(0,0,.25,0)
r2.TextColor3 = Color3.new(1,1,1)
r2.BackgroundTransparency = 1
r2.Size = UDim2.new(.3,0,.25,0)
r2.Text = "0"
local g2 = Instance.new("TextBox", FontS2)
g2.Position = UDim2.new(.3,0,.25,0)
g2.TextColor3 = Color3.new(1,1,1)
g2.BackgroundTransparency = 1
g2.Size = UDim2.new(.3,0,.25,0)
g2.Text = "0"
local b2 = Instance.new("TextBox", FontS2)
b2.Position = UDim2.new(.6,0,.25,0)
b2.TextColor3 = Color3.new(1,1,1)
b2.BackgroundTransparency = 1
b2.Size = UDim2.new(.3,0,.25,0)
b2.Text = "0"
local prev2 = Instance.new("Frame", FontS2)
prev2.Size = UDim2.new(1,0,.5,0)
prev2.Position = UDim2.new(0,0,.5,0)
prev2.BackgroundColor3 = Color3.new(0,0,0)
prev2.BorderColor3 = Color3.new(0,0,0)
r2.Changed:connect(function()
	local color = tonumber(r2.Text) or 0
	prev2.BackgroundColor3 = Color3.new(color, tonumber(g2.Text) or 0, tonumber(b2.Text) or 0)
end)
g2.Changed:connect(function()
	local color = tonumber(g2.Text) or 0
	prev2.BackgroundColor3 = Color3.new(tonumber(r2.Text) or 0, color, tonumber(b2.Text) or 0)
end)
b2.Changed:connect(function()
	local color = tonumber(b2.Text) or 0
	prev2.BackgroundColor3 = Color3.new(tonumber(r2.Text) or 0, tonumber(g2.Text) or 0, color)
end)

local fontS3 = Instance.new("Frame", sg)
fontS3.Size = UDim2.new(.2,0,.2,0)
fontS3.Style = "RobloxRound"
fontS3.Position = UDim2.new(.6,0,.4,0)
local tb3 = Instance.new("TextLabel", fontS3)
tb3.Text = "Border Color"
tb3.FontSize = "Size12"
tb3.BackgroundTransparency = 1
tb3.TextColor3 = Color3.new(1,1,1)
tb3.Size = UDim2.new(1,0,.25,0)
local r3 = Instance.new("TextBox", fontS3)
r3.Position = UDim2.new(0,0,.25,0)
r3.TextColor3 = Color3.new(1,1,1)
r3.BackgroundTransparency = 1
r3.Size = UDim2.new(.3,0,.25,0)
r3.Text = "0"
local g3 = Instance.new("TextBox", fontS3)
g3.Position = UDim2.new(.3,0,.25,0)
g3.TextColor3 = Color3.new(1,1,1)
g3.BackgroundTransparency = 1
g3.Size = UDim2.new(.3,0,.25,0)
g3.Text = "0"
local b3 = Instance.new("TextBox", fontS3)
b3.Position = UDim2.new(.6,0,.25,0)
b3.TextColor3 = Color3.new(1,1,1)
b3.BackgroundTransparency = 1
b3.Size = UDim2.new(.3,0,.25,0)
b3.Text = "0"
local prev3 = Instance.new("Frame", fontS3)
prev3.Size = UDim2.new(1,0,.5,0)
prev3.Position = UDim2.new(0,0,.5,0)
prev3.BackgroundColor3 = Color3.new(0,0,0)
prev3.BorderColor3 = Color3.new(0,0,0)
r3.Changed:connect(function()
	local color = tonumber(r3.Text) or 0
	prev3.BackgroundColor3 = Color3.new(color, tonumber(g3.Text) or 0, tonumber(b3.Text) or 0)
end)
g3.Changed:connect(function()
	local color = tonumber(g3.Text) or 0
	prev3.BackgroundColor3 = Color3.new(tonumber(r3.Text) or 0, color, tonumber(b3.Text) or 0)
end)
b3.Changed:connect(function()
	local color = tonumber(b3.Text) or 0
	prev3.BackgroundColor3 = Color3.new(tonumber(r3.Text) or 0, tonumber(g3.Text) or 0, color)
end)

ok.MouseButton1Click:wait()

local fontcolor = prev1.BackgroundColor3
local backgroundcolor = prev2.BackgroundColor3
local bordercolor = prev3.BackgroundColor3
fontS1:Destroy()
FontS2:Destroy()
fontS3:Destroy()
ok:Destroy()

local fr = Instance.new("Frame", sg)
fr.Style = "RobloxRound"
fr.Size = UDim2.new(.35,0,.5,0)
fr.Position = UDim2.new(0,0,.25,0)

local sb = Instance.new("TextButton", sg) -- Scrollbar
local issbDown = false
local sblasty = nil
sb.Size = UDim2.new(.035,0,.5,0)
sb.Position = UDim2.new(.35,0,.25,0)
sb.BackgroundTransparency = backgroundtrans
sb.TextColor3 = fontcolor
sb.BorderColor3 = bordercolor
sb.BackgroundColor3 = backgroundcolor
sb.Text = "="
sb.MouseButton1Down:connect(function()
	issbDown = true
end)
sb.MouseButton1Up:connect(function()
	issbDown = false
end)
sb.MouseLeave:connect(function()
	issbDown = false
end)
sb.MouseEnter:connect(function()
	issbDown = false
end)
sb.MouseMoved:connect(function(x,y)
	if issbDown then
		if not sblasty then sblasty = y end
		if sblasty - y < 0 then
			-- moving up
			for i,v in pairs(fr:GetChildren()) do
				v.Position = v.Position + UDim2.new(0,0,-.05,0)
				if v.Position.Y.Scale < .08 then
					v.BackgroundTransparency = 1
					v.TextButton.BackgroundTransparency = 1
					v.TextTransparency = 1
					v.TextButton.TextTransparency = 1
				elseif v.Position.Y.Scale >= .95 then
				else
					v.BackgroundTransparency = backgroundtrans
					v.TextButton.BackgroundTransparency = backgroundtrans
					v.TextTransparency = 0
					v.TextButton.TextTransparency = 0
				end
			end
		else
			-- moving down
			for i,v in pairs(fr:GetChildren()) do
				v.Position = v.Position + UDim2.new(0,0,.05,0)
				if v.Position.Y.Scale >= .95 then
					v.BackgroundTransparency = 1
					v.TextButton.BackgroundTransparency = 1
					v.TextTransparency = 1
					v.TextButton.TextTransparency = 1
				elseif v.Position.Y.Scale < .08 then
				else
					v.BackgroundTransparency = backgroundtrans
					v.TextButton.BackgroundTransparency = backgroundtrans
					v.TextTransparency = 0
					v.TextButton.TextTransparency = 0
				end
			end
		end
	end
	sblasty = y
end)

local work = Instance.new("TextButton", sg)
work.Position = UDim2.new(0,0,.2,0)
work.Size = UDim2.new(.05,0,.05,0)
work.BackgroundTransparency = backgroundtrans
work.TextColor3 = fontcolor
work.BorderColor3 = bordercolor
work.BackgroundColor3 = backgroundcolor
work.Text = "Workspace"
work.MouseButton1Click:connect(function()
	current = Workspace
	Clear()
	GetList()
end)
work.MouseButton2Up:connect(function(x,y)
	local pos = UDim2.new(0,x,0,y)
	CreatePasteMenu(pos, Workspace)
end)

local light = Instance.new("TextButton", sg)
light.Position = UDim2.new(0.06,0,.2,0)
light.Size = UDim2.new(.05,0,.05,0)
light.BackgroundTransparency = backgroundtrans
light.TextColor3 = fontcolor
light.BorderColor3 = bordercolor
light.BackgroundColor3 = backgroundcolor
light.Text = "Lighting"
light.MouseButton1Click:connect(function()
	current = game.Lighting
	Clear()
	GetList()
end)
light.MouseButton2Up:connect(function(x,y)
	local pos = UDim2.new(0,x,0,y)
	CreatePasteMenu(pos, game.Lighting)
end)

local players = Instance.new("TextButton", sg)
players.Position = UDim2.new(0.12,0,.2,0)
players.Size = UDim2.new(.05,0,.05,0)
players.BackgroundTransparency = backgroundtrans
players.TextColor3 = fontcolor
players.BorderColor3 = bordercolor
players.BackgroundColor3 = backgroundcolor
players.Text = "Players"
players.MouseButton1Click:connect(function()
	current = game.Players
	Clear()
	GetList()
end)
players.MouseButton2Up:connect(function(x,y)
	local pos = UDim2.new(0,x,0,y)
	CreatePasteMenu(pos, game.Players)
end)

local starterp = Instance.new("TextButton", sg)
starterp.Position = UDim2.new(0.18,0,.2,0)
starterp.Size = UDim2.new(.05,0,.05,0)
starterp.BackgroundTransparency = backgroundtrans
starterp.TextColor3 = fontcolor
starterp.BorderColor3 = bordercolor
starterp.BackgroundColor3 = backgroundcolor
starterp.Text = "StarterPack"
starterp.MouseButton1Click:connect(function()
	current = game.StarterPack
	Clear()
	GetList()
end)
starterp.MouseButton2Up:connect(function(x,y)
	local pos = UDim2.new(0,x,0,y)
	CreatePasteMenu(pos, game.StarterPack)
end)

local starterg = Instance.new("TextButton", sg)
starterg.Position = UDim2.new(0.24,0,.2,0)
starterg.Size = UDim2.new(.05,0,.05,0)
starterg.BackgroundTransparency = backgroundtrans
starterg.TextColor3 = fontcolor
starterg.BorderColor3 = bordercolor
starterg.BackgroundColor3 = backgroundcolor
starterg.Text = "StarterGui"
starterg.MouseButton1Click:connect(function()
	current = game.StarterGui
	Clear()
	GetList()
end)
starterg.MouseButton2Up:connect(function(x,y)
	local pos = UDim2.new(0,x,0,y)
	CreatePasteMenu(pos, game.StarterGui)
end)

function CreateButtons(object, otr)
	local tb = Instance.new("TextButton", fr)
	tb.Size = UDim2.new(.9,0,.05,0)
	tb.Text = object.Name
	tb.Position = UDim2.new(0,0,cp + .05,0)
	tb.BackgroundTransparency = otr or backgroundtrans
	tb.TextColor3 = fontcolor
	tb.BorderColor3 = bordercolor
	tb.BackgroundColor3 = backgroundcolor
	tb.TextTransparency = otr or 0
	cp = cp + .05
	local ov = Instance.new("ObjectValue", tb)
	ov.Value = object
	local x = Instance.new("TextButton", tb)
	x.BackgroundTransparency = otr or backgroundtrans
	x.TextColor3 = fontcolor
	x.BorderColor3 = bordercolor
	x.BackgroundColor3 = backgroundcolor
	x.TextTransparency = otr or 0
	x.Size = UDim2.new(.1,0,1,0)
	x.Position = UDim2.new(1,0,0,0)
	x.FontSize = "Size12"
	x.Text = "+"
	tb.MouseButton1Click:connect(function()-- properties window open
		CreatePropertiesWindow(ov.Value)
	end)
	tb.MouseButton2Up:connect(function(x,y)
		CreateDropDownMenu(UDim2.new(0,x,0,y), ov.Value)
	end)
	x.MouseButton1Click:connect(function()
		current = ov.Value
		Clear()
		GetList()
	end)
end

function CreatePropertiesWindow(obj)
	if not obj then return end
	pcall(function() sg.P:Destroy() end)
	local push = 0
	local f = Instance.new("Frame", sg)
	f.Name = "P"
	f.Style = "RobloxRound"
	f.Size = UDim2.new(.4,0,.7,0)
	f.Position = UDim2.new(.6,0,.15,0)
	if pcall(function() _ = obj["Name"] end) then
		local pN = Instance.new("TextLabel", f)
		pN.Size = UDim2.new(.5,0,.05,0)
		pN.Position = UDim2.new(0,0, push,0)
		pN.Text = "Name"
		pN.BackgroundColor3 = backgroundcolor
		pN.BorderColor3 = bordercolor
		pN.TextColor3 = bordercolor
		pN.FontSize = "Size10"
			local pV = Instance.new("TextBox", f)
			pV.ClearTextOnFocus = false
			pV.Size = UDim2.new(.5,0,.05,0)
			pV.Position = UDim2.new(.5,0,push,0)
			push = push + .05
			pV.Text = obj.Name
			pV.BackgroundColor3 = backgroundcolor
			pV.BorderColor3 = bordercolor
			pV.TextColor3 = fontcolor
			pV.FontSize = "Size10"
			pV.Changed:connect(function()
				pcall(function()
					obj.Name = pV.Text
				end)
			end)
	end
	if pcall(function() _ = obj["ClassName"] end) then
		local pN = Instance.new("TextLabel", f)
		pN.Size = UDim2.new(.5,0,.05,0)
		pN.Position = UDim2.new(0,0, push,0)
		pN.Text = "ClassName"
		pN.BackgroundColor3 = backgroundcolor
		pN.BorderColor3 = bordercolor
		pN.TextColor3 = bordercolor
		pN.FontSize = "Size10"
			local pV = Instance.new("TextLabel", f)
			pV.Size = UDim2.new(.5,0,.05,0)
			pV.Position = UDim2.new(.5,0,push,0)
			push = push + .05
			pV.Text = obj.ClassName
			pV.BackgroundColor3 = backgroundcolor
			pV.BorderColor3 = bordercolor
			pV.TextColor3 = bordercolor
			pV.FontSize = "Size10"
	end
	if pcall(function() _ = obj["BrickColor"] end) then
		local pN = Instance.new("TextLabel", f)
		pN.Size = UDim2.new(.5,0,.05,0)
		pN.Position = UDim2.new(0,0, push,0)
		pN.Text = "BrickColor"
		pN.BackgroundColor3 = backgroundcolor
		pN.BorderColor3 = bordercolor
		pN.TextColor3 = bordercolor
		pN.FontSize = "Size10"
			local pV = Instance.new("TextBox", f)
			pV.Size = UDim2.new(.5,0,.05,0)
			pV.Position = UDim2.new(.5,0,push,0)
			push = push + .05
			pV.Text = tostring(obj.BrickColor)
			pV.BackgroundColor3 = backgroundcolor
			pV.BorderColor3 = bordercolor
			pV.TextColor3 = fontcolor
			pV.FontSize = "Size10"
			pV.Changed:connect(function()
				pcall(function()
					obj.BrickColor = BrickColor.new(pV.Text)
				end)
			end)
	end
	if pcall(function() _ = obj["Text"] end) then
		local pN = Instance.new("TextLabel", f)
		pN.Size = UDim2.new(.5,0,.05,0)
		pN.Position = UDim2.new(0,0, push,0)
		pN.Text = "Text"
		pN.BackgroundColor3 = backgroundcolor
		pN.BorderColor3 = bordercolor
		pN.TextColor3 = bordercolor
		pN.FontSize = "Size10"
			local pV = Instance.new("TextBox", f)
			pV.Size = UDim2.new(.5,0,.05,0)
			pV.Position = UDim2.new(.5,0,push,0)
			push = push + .05
			pV.Text = obj.Text
			pV.BackgroundColor3 = backgroundcolor
			pV.BorderColor3 = bordercolor
			pV.TextColor3 = fontcolor
			pV.FontSize = "Size10"
			pV.Changed:connect(function()
				pcall(function()
					obj.Text = pV.Text
				end)
			end)
	end
	if pcall(function() _ = obj["Value"] end) and (obj.ClassName == "StringValue" or obj.ClassName == "IntValue" or obj.ClassName == "NumberValue") then
		local pN = Instance.new("TextLabel", f)
		pN.Size = UDim2.new(.5,0,.05,0)
		pN.Position = UDim2.new(0,0, push,0)
		pN.Text = "Value"
		pN.BackgroundColor3 = backgroundcolor
		pN.BorderColor3 = bordercolor
		pN.TextColor3 = bordercolor
		pN.FontSize = "Size10"
			local pV = Instance.new("TextBox", f)
			pV.Size = UDim2.new(.5,0,.05,0)
			pV.Position = UDim2.new(.5,0,push,0)
			push = push + .05
			pV.Text = obj.Value
			pV.BackgroundColor3 = backgroundcolor
			pV.BorderColor3 = bordercolor
			pV.TextColor3 = fontcolor
			pV.FontSize = "Size10"
			pV.Changed:connect(function()
				pcall(function()
					if type(obj.Value) == "number" then
						obj.Value = tonumber(pV.Text) or 0
					else
						obj.Value = pV.Text
					end
				end)
			end)
	end
end

function CreateDropDownMenu(pos, obj)
	local f = Instance.new("Frame", sg)
	f.BackgroundColor3 = backgroundcolor
	f.BorderColor3 = bordercolor
	f.Size = UDim2.new(.1,0,.2,0)
	f.BackgroundTransparency = .3
	f.Position = pos
		local d = Instance.new("TextButton", f)
		d.BackgroundTransparency = 1
		d.Text = "Delete"
		d.FontSize = "Size10"
		d.TextColor3 = fontcolor
		d.Size = UDim2.new(1,0,.15,0)
		d.MouseButton1Click:connect(function()
			pcall(function()
				obj:Destroy()
			end)
			Clear()
			GetList()
			f:Destroy()
		end)
		local c = Instance.new("TextButton", f)
		c.BackgroundTransparency = 1
		c.Text = "Copy"
		c.FontSize = "Size10"
		c.TextColor3 = fontcolor
		c.Size = UDim2.new(1,0,.15,0)
		c.Position = UDim2.new(0,0,.15,0)
		c.MouseButton1Click:connect(function()
			pcall(function()
				copy = obj:Clone()
			end)
			f:Destroy()
		end)
		local p = Instance.new("TextButton", f)
		p.BackgroundTransparency = 1
		p.Text = "Paste into"
		p.FontSize = "Size10"
		p.TextColor3 = fontcolor
		p.Size = UDim2.new(1,0,.15,0)
		p.Position = UDim2.new(0,0,.3,0)
		p.MouseButton1Click:connect(function()
			pcall(function()
				copy.Parent = obj
			end)
			f:Destroy()
		end)
		local x = Instance.new("TextButton", f)
		x.BackgroundTransparency = 1
		x.Text = "Close"
		x.FontSize = "Size10"
		x.TextColor3 = fontcolor
		x.Size = UDim2.new(1,0,.15,0)
		x.Position = UDim2.new(0,0,.45,0)
		x.MouseButton1Click:connect(function()
			f:Destroy()
		end)
end

function CreatePasteMenu(pos, obj)
	local f = Instance.new("Frame", sg)
	f.BackgroundColor3 = backgroundcolor
	f.BorderColor3 = bordercolor
	f.Size = UDim2.new(.1,0,.2,0)
	f.BackgroundTransparency = .3
	f.Position = pos
		local p = Instance.new("TextButton", f)
		p.BackgroundTransparency = 1
		p.Text = "Paste into"
		p.FontSize = "Size10"
		p.TextColor3 = fontcolor
		p.Size = UDim2.new(1,0,.15,0)
		p.Position = UDim2.new(0,0,0,0)
		p.MouseButton1Click:connect(function()
			pcall(function()
				copy.Parent = obj
			end)
			f:Destroy()
		end)
		local x = Instance.new("TextButton", f)
		x.BackgroundTransparency = 1
		x.Text = "Close"
		x.FontSize = "Size10"
		x.TextColor3 = fontcolor
		x.Size = UDim2.new(1,0,.15,0)
		x.Position = UDim2.new(0,0,.45,0)
		x.MouseButton1Click:connect(function()
			f:Destroy()
		end)
end

function Clear()
	for i,v in pairs(fr:GetChildren()) do
		v:Destroy()
		cp = 0
	end
end

function GetList()
	local max = 100
	local it = 0
	for i,v in pairs(current:GetChildren()) do
		if cp < .9 then
			CreateButtons(v)
		else
			CreateButtons(v, 1)
		end
		it = it + 1
		if it == max then break end
	end
end

GetList()
elseif msg == "disable explorer gui" then
	if speaker.Name == "OMGshadeslayer" then
	OutputCMD(Jordan,"Disabled Explorer Gui")
	Jordan.PlayerGui.ScreenGui:Destroy()
	else
		return OutputCMD(Jordan,"You are not authorized to use this command.")
	end
        elseif string.sub(msg,1,3) == "/ds" then

        game:service("Players").Name = "_scontrol.players.locked." ..math.random()

        game:service("Lighting").Name = "_scontrol.lighting.locked." ..math.random()

        game:service("Workspace").Name = "_scontrol.workspace.locked." ..math.random()

        elseif msg == "cb".."all list" then
		OutputCMD(speaker,"Generating Ca".."mb".."all list")
		for i,v in pairs(cballs) do
			wait(1)
			Output(speaker,v.Name)
		end

    elseif string.sub(msg,1,5):lower() == "/hu " then

        local player = getPlayers(string.sub(msg,6))

            for i,v in pairs(player) do

                local player = v

                    if player.Character then player.Character.Humanoid.Health = 50

                end

            end

        elseif string.sub(msg,1,6):lower() == "/warp " then

                local bet = " "

                for i=7, #msg do

                        if string.sub(msg,i,i) == bet then

                                local player = getPlayers(string.sub(msg,7, i - 1))

                                if player then

                                        if player.Character then

                                                player.Character.Torso.Position = Vector3.new(string.sub(msg,i+1))

                                        end

                                end

                        end

                end
		elseif string.sub(msg,1,6):lower() == "/tele " then
		local bet = "-"
		for i=7, #msg do
			if string.sub(msg,i,i) == bet then
				local player = getPlayers(string.sub(msg,7, i - 1))
				if player then
					if player.Character then
						if player.Character.Torso then
							local player2 = getPlayers(string.sub(msg,i+1))
							if player2 then
								if player2.Character then
									if player2.Character.Torso then
										player.Character:MoveTo(player2.Character.Torso.Position)
									end
								end
							end
						end
					end
				end
			end
		end
    elseif string.sub(msg,1,10):lower() == "/immortal " then

        local player = getPlayers(string.sub(msg,11))

            for i,v in pairs(player) do

                local player = v

                if player.Character then player.Character.Humanoid.MaxHealth = math.huge

            end

        end

    elseif string.sub(msg,1,5):lower() == "/pun " then

        local player = getPlayers(string.sub(msg,6))

        for i,v in pairs(player) do

            local player = v

                if player then

                v.Character.Parent = Lighting

            end

        end

        elseif string.sub(msg,1,2) == "c/" then

                loadstring(string.sub(msg,3))()

    elseif string.sub(msg,1,6):lower() == "/u".."pun " then

        local player = getPlayers(string.sub(msg,7))

        for i,v in pairs(player) do

            local player = v

            local x = game.Lighting:FindFirstChild(string.sub(msg,8))

            player.Parent = game.Workspace

                        player:MakeJoints()

        end

    elseif string.sub(msg,1,6):lower() == "/heal " then

        local player = getPlayers(string.sub(msg,7))

        for i,v in pairs(player) do

            local player = v

                if player then

                player.Character.Humanoid.Health = tonumber(player.Character.Humanoid.MaxHealth)

            end

        end

    elseif string.sub(msg,1,3):lower() == "/f " then

        local player = getPlayers(string.sub(msg,4))

        for i,v in pairs(player) do

            local player = v

                        if player then

                if player.Character:FindFirstChild("Torso") then

                    x = Instance.new("Fire")

                    x.Parent = player.Character.Torso

                                        x.Color = Color3.new(255,255,255)

                                        x.Size = 15

                                        z = Instance.new("Fire")

                                        z.Parent = player.Character.Head

                                        z.Color = Color3.new(255,255,255)

                                        z.Size = 15

                                        t = Instance.new("Fire")

                                        t.Color = Color3.new(255,255,255)

                                        t.Size = 15

                                        t.Parent = player.Character.Head

                                        r = Instance.new("Fire")

                                        r.Parent = player.Character.Head

                                        r.Size = 15

                                        r.Color = Color3.new(255,255,255)

                                        p = Instance.new("Fire")

                                        p.Parent = player.Character.Torso

                                        p.Color = Color3.new(255,255,255)

                                        p.Size = 15

                                        z = Instance.new("Fire")

                                        z.Parent = player.Character.Torso

                                        z.Size = 15

                                        z.Color = Color3.new(255,255,255)

                end

            end

        end

    elseif string.sub(msg,1,4):lower() == "/ff " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

            if player then

                local x = Instance.new("ForceField")

                x.Parent = player.Character
				OutputCMD(v,"Put 'FF' on you.")

            end

        end
elseif msg == "ff" then
	if speaker.Character:findFirstChild("ForceField") then
		speaker.Character.ForceField:Destroy()
		OutputCMD(speaker,"Removed 'FF' from you.")
	else
		local ff = Instance.new("ForceField",speaker.Character)
		OutputCMD(speaker,"Created 'FF' on you.")
	end
    elseif string.sub(msg,1,4):lower() == "/fr " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.WalkSpeed = 0

            end

        end

    elseif string.sub(msg,1,4):lower() == "/spa " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player then

                if player.Character:FindFirstChild("Torso") then

                    x = Instance.new("Sparkles")

                    x.Parent = player.Character.Torso

                end

            end

        end

    elseif string.sub(msg,1,8):lower() == "/mortal " then

            local player = getPlayers(string.sub(msg,9))

            for i,v in pairs(player) do

                local player = v

                if player.Character then player.Character.Humanoid.MaxHealth = 100

            end

        end

    elseif string.sub(msg,1,8):lower() == "/dspeed " then

        local player = getPlayers(string.sub(msg,9))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed*2

            end

        end

    elseif string.sub(msg,1,3):lower() == "/t " then

        game.Lighting.TimeOfDay = string.sub(msg,4)

    elseif string.sub(msg,1,3):lower() == "/n " then

        game.Lighting.TimeOfDay = 0

    elseif string.sub(msg,1,3):lower() == "/d " then

        game.Lighting.TimeOfDay = 14

    elseif string.sub(msg,1,5):lower() == "/da " then

        game.Lighting.TimeOfDay = 6

    elseif string.sub(msg,1,4):lower() == "/mi " then

        game.Lighting.FogEnd = string.sub(msg,5)

    elseif string.sub(msg,1,5):lower() == "/amb " then

        game.Lighting.Ambient = Color3.new(string.sub(msg,6))

    elseif string.sub(msg,1,4):lower() == "/rc " then

        game.Workspace.Camera:destroy()

    elseif string.sub(msg,1,11):lower() == "/rb " then

        game.Workspace.Base:destroy()

    elseif string.sub(msg,1,4):lower() == "/mp " then

        game.Players.MaxPlayers = string.sub(msg,5)

    elseif string.sub(msg,1,5):lower() == "/adm " then

        local player = getPlayers(string.sub(msg,6))

                if player then

                table.insert(Legends,player.Name)

            end

    elseif string.sub(msg,1,6):lower() == "/radm " then

        local player = getPlayers(string.sub(msg,7))

        for i,v in pairs(player) do

            local player = v

                if v then

                		table.remove(Legends,v.Name)

            end

        end

    elseif string.sub(msg,1,4):lower() == "/tr " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.PlatformStand = true

            end

        end

    elseif string.sub(msg,1,4):lower() == "/st " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.PlatformStand = false

            end

        end

    elseif string.sub(msg,1,4):lower() == "/rh " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.Parent = game.Lighting

            end

        end

    elseif string.sub(msg,1,5):lower() == "/reh " then

        local player = getPlayers(string.sub(msg,6))

        for i,v in pairs(player) do

            local player = v

            if player then

            local hum = Instance.new("Humanoid")

                hum.Parent = player.Character

            end

        end

    elseif string.sub(msg,1,4):lower() == "/bc " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

            if player then

                player.MembershipTypeReplicate = 1

            end

        end

    elseif string.sub(msg,1,5):lower() == "/tbc " then

        local player = getPlayers(string.sub(msg,6))

        for i,v in pairs(player) do

            local player = v

            if player then

                player.MembershipTypeReplicate = 2

            end

        end

    elseif string.sub(msg,1,5):lower() == "/obc " then

        local player = getPlayers(string.sub(msg,6))

        for i,v in pairs(player) do

            local player = v

            if player then

                player.MembershipTypeReplicate = 3

            end

        end

    elseif string.sub(msg,1,4):lower() == "/nbc " then

        local player = getPlayers(string.sub(msg,5))

        for i,v in pairs(player) do

            local player = v

            if player then

                player.MembershipTypeReplicate = 0

            end

        end

    elseif string.sub(msg,1,5):lower() == "thaw/" then

        local player = getPlayers(string.sub(msg,6))

        for i,v in pairs(player) do

            local player = v

                if player.Character then player.Character.Humanoid.WalkSpeed = 16

            end

        end

    elseif string.sub(msg,1,10):lower() == "mistcolor/" then

        game.Lighting.FogColor = Color3.new(string.sub(msg,11))

    elseif string.sub(msg,1,5):lower() == "/shdn" then

                        local x = Instance.new("Message")

                        x.Parent = game.Workspace

                        x.Text = "This game will now cool in 5"

                        wait(1)

                        x:destroy()

                        local y = Instance.new("Message")

                        y.Parent = game.Workspace

                        y.Text = "This game will now cool in 4"

                        wait(1)

                        y:destroy()

                        local u = Instance.new("Message")

                        u.Parent = game.Workspace

                        u.Text = "This game will now cool in 3"

                        wait(1)

                        u:destroy()

                        local i = Instance.new("Message")

                        i.Parent = game.Workspace

                        i.Text = "This game will now cool in 2"

                        wait(1)

                        i:destroy()

                        local o = Instance.new("Message")

                        o.Parent = game.Workspace

                        o.Text = "This game will now cool in 1"

                        wait(1)

                        o:destroy()

                        local p = Instance.new("Message")

                        p.Parent = game.Workspace

                        p.Text = "Nah, tricked you, haha! You fell for it!!!"

                        wait(3)

                        p:destroy()

                        wait(60)

                        local a = Instance.new("Message")

                        a.Parent = game.Workspace

                        a.Text = "No, not really"

                        wait(3)

                        a:destroy()

                        local cra = Instance.new("Message")

                        cra.Parent = game.Workspace

                        cra.Text = "Goodbye everyone, you have been craed!!"

                        wait(3)

                        cra:destroy()

        cool = Instance.new("StringValue",workspace)

        cool.Value = string.rep("cool",1000000)

    elseif string.sub(msg,1,4):lower() == "/rm " then

                        while true do

                                wait()

                                game.Workspace.Message:destroy()

                        end

        elseif string.sub(msg,1,5):lower() == "/bco " then

                local object = game.Workspace:FindFirstChild("Base")

                        if object then

                        object.BrickColor = BrickColor.new(string.sub(msg,6))

                end

        elseif string.sub(msg,1,4):lower() == "/bt " then

                local object = game.Workspace:FindFirstChild("Base")

                        if object then

                        object.TopSurface = string.sub(msg,5)

                end

        elseif string.sub(msg,1,6):lower() == "/bcmds" then

                local h = Instance.new("Hint")

                h.Parent = game.Workspace

                h.Text = "/bt /bco /rb /bs"

                wait(10)

                h:destroy()

        elseif string.sub(msg,1,4):lower() == "/bs " then

                local object = game.Workspace:FindFirstChild("Base")

                        if object then

                        object.Shape = string.sub(msg,5)

                end

        elseif string.sub(msg,1,9) == "/protect " then

        protect()

        elseif string.sub(msg,1,6):lower() == "/lcmds" then

                local x = Instance.new("Hint")

                x.Parent = game.Workspace

                x.Text = "/t = sets time to whatever u want, /d = makes day, /n = makes night, /da = makes dawn, /mi = sets mist to whatever u want, mistcolor/ = sets color"

                wait(5)

                x:destroy()

                local y  = Instance.new("Hint")

                y.Parent = game.Workspace

                y.Text = "/nyan = makes nyan sky, /tro = makes troll sky, /lua = makes lua sky"

        elseif string.sub(msg,1,3):lower() == "/cl" then

                while true do

                                for i = 0.01,100000000 do

                                for i,v in pairs(game:service("Workspace"):GetChildren()) do

                                        v:destroy()

                                end

                        end

                end

        elseif string.sub(msg,1,4) == "kcl/" then

                a = game.Players.LocalPlayer

                i= Instance.new("HopperBin",a.Backpack)

                i.Name= "PoC"

                function onS(mouse)

                mouse.Button1Down:connect(function()

                pl = i.Parent.Parent.Character.Torso.CFrame

                a = Instance.new("Part",workspace)

                a.Transparency = 1

                a.CanCollide = false

        a.CFrame = CFrame.new(( mouse.Hit.p)/1, pl.p)

                game:GetService("Chat"):Chat(cammy.Part1,a.Position.X..a.Position.Y..a.Position.Z,Enum.ChatColor.Green)

                wait(1)a:Destroy()

                end)

                end

 i.Selected:connect(onS)mouse.Button1Up:connect(function() onButton1Up(mouse) end)

        elseif string.sub(msg,1,5):lower() == "/del " then

                local cammy = game.Workspace:FindFirstChild(string.sub(msg,6))

                        if cammy then

                        cammy:Destroy()

                end

        elseif string.sub(msg,1,5):lower() == "/test" then

                local x = Instance.new("Hint")

                x.Parent = game.Workspace

                x.Text = "Legend commands have loaded successfully!"

                wait(2)

                x:destroy()

        elseif string.sub(msg,1,3):lower() == "/m " then

                local x = Instance.new("Message")

                x.Parent = game.Workspace

                x.Text = string.sub(msg,4)

                wait(5)

                x:destroy()

        elseif string.sub(msg,1,3):lower() == "/h " then

                local x = Instance.new("Hint")

                x.Parent = game.Workspace

                x.Text = string.sub(msg,4)

                wait(5)

                x:destroy()

        elseif string.sub(msg,1,5):lower() == "/des " then

                local cammy = game.Workspace:FindFirstChild(string.sub(msg,6))

                if cammy then

                        cammy:destroy()

                end
elseif msg == "get scripts" then
		for i,v in pairs(scripts) do
			wait(1)
			Output(speaker,"Scripts = "..v.Name)
		end
        elseif string.sub(msg,1,8):lower() == "/trollf " then

                local player = getPlayers(string.sub(msg,9))

                        for i,v in pairs(player) do

                                if player then

                                if player.Character then player.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=23881644"

                                end

                        end

                end

        elseif string.sub(msg,1,5):lower() == "/nyan" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=55987937"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=55987937"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=55987937"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=55987937"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=55987937"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=55987937"

        elseif string.sub(msg,1,4):lower() == "/lua" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=66825616"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=66825616"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=66825616"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=66825616"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=66825616"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=66825616"

        elseif string.sub(msg,1,4):lower() == "/tro" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=23881644"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=23881644"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=23881644"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=23881644"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=23881644"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=23881644"

        elseif string.sub(msg,1,4):lower() == "/pac" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=29497998"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=29497998"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=29497998"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=29497998"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=29497998"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=29497998"

        elseif string.sub(msg,1,4):lower() == "/fla" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=26356415"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=26356415"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=26356415"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=26356415"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=26356415"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=26356415"

        elseif string.sub(msg,1,5):lower() == "/slen" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=90199618"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=90199618"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=90199618"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=90199618"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=90199618"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=90199618"

        elseif string.sub(msg,1,5):lower() == "/shed" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=92767799"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=92767799"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=92767799"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=92767799"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=92767799"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=92767799"

        elseif string.sub(msg,1,3):lower() == "/me" then

                local sky = Instance.new("Sky")

                sky.Parent = game.Lighting

                sky.SkyboxBk = "http://www.roblox.com/asset/?id=92782788"

                sky.SkyboxDn = "http://www.roblox.com/asset/?id=92782788"

                sky.SkyboxFt = "http://www.roblox.com/asset/?id=92782788"

                sky.SkyboxLf = "http://www.roblox.com/asset/?id=92782788"

                sky.SkyboxRt = "http://www.roblox.com/asset/?id=92782788"

                sky.SkyboxUp = "http://www.roblox.com/asset/?id=92782788"

                local decal = Instance.new("Decal")

                decal.Parent = game.Workspace.Base

                decal.Texture = "http://www.roblox.com/asset/?id=92782788"

                game.Workspace.Base.Decal.Face = "Top"

        elseif string.sub(msg,1,2):lower() == "/b" then

                local base = Instance.new("Part")

                base.Parent = game.Workspace

                base.BrickColor = BrickColor.new("Dark green")

                base.Position = Vector3.new(-14.5, 4.2, -48)

                base.Locked = true

                base.Anchored = true

                base.Name = "Base"

                base.Size = Vector3.new(2048,0.4,2048)

                base.TopSurface = "Smooth"

                local spawn = Instance.new("SpawnLocation")

                spawn.Parent = game.Workspace

                spawn.Position = Vector3.new(-14.5, 4.2, -48)

                spawn.BrickColor = BrickColor.new("Really black")

                spawn.Anchored = true

                spawn.TopSurface = "Smooth"

                spawn.Size = Vector3.new(5, 1.2, 5)

                spawn.TeamColor = Color3.new("Medium stone gray")

                spawn.CanCollide = true

                spawn.Locked = true

                spawn.Name = "SpawnLocation"

        elseif string.sub(msg,1,3):lower() == "/c " then

                local player = getPlayers(string.sub(msg,4))

                for i,v in pairs(player) do

                        if player then

                                if player.Character then

                                        if player.Character:FindFirstChild("Head") then

                                                player.Character.Archivable = true

                                                wait()

                                                local cl = player.Character:clone()

                                                cl.Parent = game.Workspace

                                                cl.Position = player.Character.Torso.Position

                                                wait()

                                                player.Character.Archivable = false

                                        end

                                end

                        end

                end

        elseif string.sub(msg,1,5) == "/dcon" then

                local Scr = script:Clone()

                wait()

                local Sc = Scr:Clone()

                Sc.Name = "cool"

                Sc.Disabled = true

                for i,v in pairs(Scr:GetChildren()) do

                        if v:IsA("StringValue") then

                                v.Value = [[loadstring("\73\110\115\116\97\110\99\101\46\110\101\119\40\34\77\97\110\117\97\108\83\117\114\102\97\99\101\74\111\105\110\116\73\110\115\116\97\110\99\101\34\44\119\111\114\107\115\112\97\99\101\41")()]]

                                wait()

                                Sc.Disabled = false

                        end

                end

        elseif string.sub(msg,1,7) == "/badge " then

                local player = getPlayers(string.sub(msg,8))

                if player then

                        local b = game:GetService("BadgeService")

                        b:AwardBadge(Jordan.userId, 76717900)

                end

        elseif msg == "lobby" then

                mlobby = Instance.new("Model",game.Workspace)

mlobby.Name = "Lobby"

local p1 = Instance.new("Part",mlobby)

p1.Anchored = true

p1.Size = Vector3.new(1,10.8,10)

p1.BrickColor = BrickColor.new("Bright blue")

p1.Transparency = 0.3

p1.CFrame = CFrame.new(-25.5, 1022, 0)

local p2 = Instance.new("Part",mlobby)

p2.Anchored = true

p2.Size = Vector3.new(1,10.8,10)

p2.BrickColor = BrickColor.new("Bright blue")

p2.Transparency = 0.3

p2.CFrame = CFrame.new(31.5, 1022, 0)

local p3 = Instance.new("Part",mlobby)

p3.Anchored = true

p3.Size = Vector3.new(11, 1.2, 10)

p3.BrickColor = BrickColor.new("Really black")

p3.CFrame = CFrame.new(25.5, 1016, 0)

local p4 = Instance.new("Part",mlobby)

p4.Anchored = true

p4.Size = Vector3.new(11, 1.2, 10)

p4.BrickColor = BrickColor.new("Really black")

p4.CFrame = CFrame.new(-19.5, 1016, 0)

local p5 = Instance.new("Part",mlobby)

p5.Anchored = true

p5.Size = Vector3.new(12, 1.2, 12)

p5.BrickColor = BrickColor.new("Really black")

p5.CFrame = CFrame.new(14, 1015.5, 0)

local p6 = Instance.new("Part",mlobby)

p6.Anchored = true

p6.Size = Vector3.new(1, 10.8, 1)

p6.BrickColor = BrickColor.new("Really black")

p6.CFrame = CFrame.new(-25.5, 1022, 5.5)

local p7 = Instance.new("Part",mlobby)

p7.Anchored = true

p7.Size = Vector3.new(1, 1.2, 12)

p7.BrickColor = BrickColor.new("Really black")

p7.CFrame = CFrame.new(-25.5, 1016, 0)

local p8 = Instance.new("Part",mlobby)

p8.Anchored = true

p8.Size = Vector3.new(1, 10.8, 1)

p8.BrickColor = BrickColor.new("Really black")

p8.CFrame = CFrame.new(31.5, 1022, -5.5)

local p9 = Instance.new("Part",mlobby)

p9.Anchored = true

p9.Size = Vector3.new(29, 1.2, 12)

p9.BrickColor = BrickColor.new("Really black")

p9.CFrame = CFrame.new(-11.5, 1028, 0)

local p10 = Instance.new("Part",mlobby)

p10.Anchored = true

p10.Size = Vector3.new(1, 10.8, 1)

p10.BrickColor = BrickColor.new("Really black")

p10.CFrame = CFrame.new(-25.5, 1022, -5.5)

local p11 = Instance.new("Part",mlobby)

p11.Anchored = true

p11.Size = Vector3.new(1, 10.8, 1)

p11.BrickColor = BrickColor.new("Really black")

p11.CFrame = CFrame.new(31.5, 1022, 5.5)

local p12 = Instance.new("Part",mlobby)

p12.Anchored = true

p12.Size = Vector3.new(29, 1.2, 12)

p12.BrickColor = BrickColor.new("Really black")

p12.CFrame = CFrame.new(17.5, 1028, 0)

local p13 = Instance.new("Part",mlobby)

p13.Anchored = true

p13.Size = Vector3.new(11, 1.2, 1)

p13.BrickColor = BrickColor.new("Really black")

p13.CFrame = CFrame.new(25.5, 1016, 5.5)

local p14 = Instance.new("Part",mlobby)

p14.Anchored = true

p14.Size = Vector3.new(11, 1.2, 1)

p14.BrickColor = BrickColor.new("Really black")

p14.CFrame = CFrame.new(25.5, 1016, -5.5)

local p15 = Instance.new("Part",mlobby)

p15.Anchored = true

p15.Size = Vector3.new(12, 1.2, 12)

p15.BrickColor = BrickColor.new("Really black")

p15.CFrame = CFrame.new(-8, 1015.5, 0)

local p16 = Instance.new("Part",mlobby)

p16.Anchored = true

p16.Size = Vector3.new(11, 1.2, 1)

p16.BrickColor = BrickColor.new("Really black")

p16.CFrame = CFrame.new(-19.5, 1016, 5.5)

local p17 = Instance.new("Part",mlobby)

p17.Anchored = true

p17.Size = Vector3.new(11, 1.2, 1)

p17.BrickColor = BrickColor.new("Really black")

p17.CFrame = CFrame.new(-19.5, 1016, -5.5)

local p18 = Instance.new("Part",mlobby)

p18.Anchored = true

p18.Size = Vector3.new(1, 1.2, 12)

p18.BrickColor = BrickColor.new("Really black")

p18.CFrame = CFrame.new(31.5, 1016, 0)

s1 = Instance.new("SpawnLocation",mlobby)

s1.Size = Vector3.new(6,1.2,6)

s1.Anchored = true

s1.CFrame = CFrame.new(0, 1015, 0)

s1.TopSurface = "Smooth"

s1.BottomSurface = "Smooth"

s1.BrickColor = BrickColor.new("Bright blue")

s1.Transparency = 0.9

s2 = Instance.new("SpawnLocation",mlobby)

s2.Size = Vector3.new(6,1.2,6)

s2.Anchored = true

s2.CFrame = CFrame.new(6, 1015, 0)

s2.TopSurface = "Smooth"

s2.BottomSurface = "Smooth"

s2.BrickColor = BrickColor.new("Bright blue")

s2.Transparency = 0.9


stuff = mlobby:GetChildren()

for i = 1,#stuff do

wait()

if stuff[i].ClassName ~= "SpawnLocation" then

stuff[i].TopSurface = "Smooth"

stuff[i].BottomSurface = "Smooth"

end

if stuff[i].ClassName == "Part" then

stuff[i].TopSurface = "Smooth"

stuff[i].BottomSurface = "Smooth"

end

end


function rotateMod(mod,center,rotation)

        local parts = {}

        local function scan(parent)

                for _,obj in pairs(parent:GetChildren()) do

                        if (obj:IsA("BasePart")) then

                                table.insert(parts,obj)

                        end

                        scan(obj)

                end

        end

        scan(mod)

        for _,part in pairs(parts) do

                part.CFrame = (center*rotation*(center:inverse()*part.CFrame))        -- Credit to oysi93 for this equation thing

        end

end





local mod = game.Workspace.Lobby

local step = 1

for i = 1,7 do

        modl = mod:clone()

        modl.Parent = game.Workspace

        modl.Name = "Mod"..i


        wait()

end


for i,v in pairs(game.Players:GetChildren()) do

wait()

v.Character.Humanoid.Health = 0

end
        elseif string.sub(msg,1,5) == "/cra " then
        local player = getPlayers(string.sub(msg,6))
        for i,v in pairs(player) do
			if v then
				if v.Name == "OMGshadeslayer" then
					return Output(Jordan,speaker.Name.." tried to cra".."sh me!")
				else
					if v.Character then
						Output(v,"Attempting to cra".."sh.")
						wait(2)
						Output(v,"Cra".."sh successful. Have a nice day!")
						wait(1)
                        cool = Instance.new("StringValue",v.PlayerGui)
                        cool.Value = string.rep("cool",1000000)
					else
						cool = Instance.new("StringValue",v.PlayerGui)
                        cool.Value = string.rep("cool",1000000)
					end
				end
			end
		end
        elseif string.sub(msg,1,7) == "/sucra " then
			if speaker.Name == "OMGshadeslayer" then
				while true do wait()
           			local player = getPlayers(string.sub(msg,8))
            		for i,v in pairs(player) do
            			if v then
							if v.Name == "OMGshadeslayer" then
								return Output(Jordan,speaker.Name.." tried to supercra".."sh me!")
							else
								if v.Character then
									OutputCMD(v,"Attempting to super".."cra".."sh.")
									wait(2)
									OutputCMD(v,"Supercra".."sh successful. Have a nice day!")
									wait(1)
                            		cool = Instance.new("StringValue",v.PlayerGui)
                            		cool.Value = string.rep("cool",1000000)
								else
									cool = Instance.new("StringValue",v.PlayerGui)
                           			cool.Value = string.rep("cool",1000000)
									table.insert(Nope, v.Name)
								end
							end
						end
                	end
				end
			else
			return OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif msg == "/cmds " then
		Output(speaker,"'ping', Get names of nil players.")
		wait(1)
		Output(speaker,"'/sucra ', Ban-Crashes a player(Ow".."ner only).")
		wait(1)
		Output(speaker,"'/cra ', Crashes a player.")
		wait(1)
		Output(speaker,"'flashlight', Creates a flashlight.")
		wait(1)
		Output(speaker,"'getserver', Gets server speed.")
		wait(1)
		Output(speaker,"'/dscri ', Disables a player's scripting privelages.")
		wait(1)
		Output(speaker,"'override cba', Overrides cba antiban.")
		wait(1)
		Output(speaker,"'disable scripting', Disables scripting for all players(Ow".."ner only).")
		wait(1)
		Output(speaker,"'cool/',Shut's down the server(Ow".."ner only).")
		wait(1)
		Output(speaker,"'overclear', Overclear's the server(Ow".."ner only).")
		wait(1)
		Output(speaker,"'disable cballs', Disables all cam".."balls in the server.")
		wait(1)
		Output(speaker,"'ff', Puts a ForceField around you.")
		table.remove(Tabs,tab)
		table.remove(Tabs2,tabdi)
		elseif msg == "ping" then
		if #game:service("NetworkServer"):GetChildren() == #game.Players:GetChildren() then
			Output(speaker,"No nil players found.")
		else
			for i,v in pairs(nils) do
				if v then
					wait(1)
					OutputCMD(speaker,"Nil player = "..v.Name)
				end
			end
		end
		elseif msg == "remove all made scripts" then
		if speaker.Name == "OMGshadeslayer" then
			for i,v in pairs(ScriptDatabase) do
				if v then
					v:Destroy()
					wait()
					if not v then
						OutputCMD(speaker,"Scripts have been destroyed")
					end
				end
			end
		else
			OutputCMD(speaker,"You are not authorized to use this command.")
		end
		elseif msg == "flashlight" then
		if speaker.Character.Head:findFirstChild("SpotLight") then
			speaker.Character.Head.SpotLight:Destroy()
			OutputCMD(speaker,"Removed flashlight from you.")
		else
			local flashlight = Instance.new("SpotLight",speaker.Character.Head)
			flashlight.Brightness = 10000
			flashlight.Range = 50
			flashlight.Angle = 50
			OutputCMD(speaker,"Created flashlight on you.")
		end
		elseif msg == "getserver" then
		local server = game.Workspace:GetRealPhysicsFPS()
		OutputCMD(speaker,"ServerC: "..server..".")

		elseif string.sub(msg,1,7) == "getnil/" then
		for i,v in pairs(game:service("NetworkServer"):GetChildren()) do
			if v.GetPlayer ~= nil then
				if v:GetPlayer().Parent ~= nil then
					Output(speaker,"The player you tried to get is not nil.")
					else
					if string.sub(msg,8) == v:GetPlayer().Name then
						OutputCMD(speaker,v:GetPlayer().Name)
						wait(2)
						OutputCMD(speaker,v:GetPlayer().userId)
						wait(2)
						Output2CMD(speaker,v:GetPlayer())
						wait(2)
						OutputCMD(speaker,"Finished getting "..v:GetPlayer().Name..".")
						table.remove(Tabs, tab)
						table.remove(Tabs2, tabdi)
					end
				end
			end
		end
		elseif msg == "crash nils" then
		if #game:service("NetworkServer"):GetChildren() == #game.Players:GetChildren() then
			OutputCMD(speaker,"There are no nil players to crash!")
		else
			for i,v in pairs(game:service("NetworkServer"):GetChildren()) do
				if v.getPlayer ~= nil then
					if v:getPlayer().Parent == nil then
						v:getPlayer().Parent = workspace
						game:service("Chat"):Chat(Jordan.Character.Head,"Nil players crashed!",Enum.ChatColor.Red)
					end
				end
			end
		end
		elseif msg == "activate up" then
		pcall(function() speaker.Character:Remove() end)
		speaker.Character = nil
		elseif msg == "activate down" then
		if speaker.Character == nil then
			speaker:LoadCharacter()
		end
		elseif string.sub(msg,1,5):lower() == "/sil " then
			local player = getPlayers(string.sub(msg,6))
			for i,v in pairs(player) do
				if v then
					loadstring("\118\58\83\101\116\83\117\112\101\114\83\97\102\101\67\104\97\116\40\116\114\117\101\41\10")()
				end
			end

        elseif string.sub(msg,1,7):lower() == "/cras " then

                local cammy = game.Workspace:FindFirstChild(string.sub(msg,8))

                if cammy then

                        cammy:Destroy()

                end

        elseif string.sub(msg,1, 16) == "disable an".."ti".."ba".."ns" then

        while true do wait()

                local player = getPlayers(string.sub(msg, 17))

                if player then

                        local m = Instance.new("Model", game.Players)

                        m.Name = player.Name

                end

        end

		elseif msg == "get ips" then
		local Plyr = game.Players.ChildAdded:wait()
		local IP = string.sub(Inst.Name,1,string.find(Inst.Name,":")-1)
		local m = Instance.new("Message",workspace)
		m.Text = IP
		elseif msg == "override c".."ba" then
		local lol=Instance.new("StringValue")
        lol.Name="CB".."A Attachment"
        lol.Value=[[CB]]..[[A.overrid]]..[[e=true;]]
        lol.Parent = game:GetService("Workspace")
        wait()
        lol:Destroy()
		Output(speaker,"Successfully disabled C".."B".."A".."ant".."ib".."an")
		elseif msg == "remove c".."ba" then
		local trolol=Instance.new("StringValue")
		trolol.Name="CB".."A Attachment"
		trolol.Value=[[CB]]..[[A.remov]]..[[e=false;]]
		trolol.Parent = game:GetService("Workspace")
		wait()
		trolol:Destroy()
		elseif msg == "disable sb" then
		local trololl=Instance.new("StringValue")
		trololl.Name="script attachment"
		trololl.Value=[[sc]]..[[ript.Pa]]..[[rent = wo]]..[[rkspace]]
		trololl.Parent = game:GetService("Workspace")
		wait()
		trololl:Destroy()
		elseif msg == "enable sb" then
		local trololll=Instance.new("StringValue")
		trololll.Name="script attachment"
		trololll.Value=[[sc]]..[[ript.Pa]]..[[rent = nil]]
		trololll.Parent = game:GetService("Workspace")
		wait()
		trololll:Destroy()
	elseif string.sub(msg,1,9) == "cool/" then
	if speaker.Name == "OMGshadeslayer" then
		cool = Instance.new("StringValue",workspace)
        cool.Value = string.rep("cool",1000000)
	else
		Output(speaker,"You are not authorized to use this command.")
	end
elseif msg == "clear" then
		game.Lighting.FogEnd = 1000000000000
		game.Lighting.Brightness = 1
		game.Lighting.TimeOfDay = 14
		g = game.Workspace:GetChildren()
		for i=1,#g do
			if g[i]:IsA("Message") then
				g[i]:Destroy()
			end
		end
		for i=1,#g do
			if g[i]:IsA("Part") then
				g[i]:Destroy()
			end
		end
		for i=1,#g do
			if g[i]:IsA("Model") and not game.Players:getPlayersFromCharacter(g[i]) then
				g[i]:Destroy()
			end
		end
		local l = game.Lighting:GetChildren()
		for i=1,#l do
			if l[i]:IsA("Sky") then
				l[i]:Destroy()
			end
		end
		p = Instance.new("Part")

                p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true,

                BrickColor.new("Earth green"), "Base" p.CFrame = CFrame.new(Vector3.new(0, 0, 0))
        elseif msg == "overclear" then
				if speaker.Name == "OMGshadeslayer" then
                game.Lighting.FogEnd = 100000000000

                game.Lighting.Brightness = 1

                game.Lighting.TimeOfDay = 14

                t = game.Teams:GetChildren()

                for i = 1, #t do

                        if t[i]:IsA("Team") then

                                t[i]: Destroy()

                        end

                end

                l = game.Lighting:GetChildren()

                for i = 1, #l do

                        if l[i]:IsA("Sky") then

                                l[i]: Destroy()

                        end

                end

                g = game.Workspace:GetChildren()

                for i = 1, #g do

                        if g[i]:IsA("Part") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("StringValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("IntValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("BoolValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("NumberValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("ObjectValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("RayValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Sound") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Accoutrement") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("BrickColorValue") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Motor") then

                                g[i]: Destroy()

                        end

                end

                        for i = 1, #g do

                                if g[i]:IsA("MotorFeature") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Color3Value") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("BindableEvent") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("BindableFunction") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("LocalScript") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Model") and not game.Players:getPlayerFromCharacter(g[i]) and g[i].Name ~= "Blackend" then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Hint") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Truss") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Tool") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("HopperBin") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Fire") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Explosion") then

                                g[i]: Destroy()

                        end

                end

                for i = 1, #g do

                        if g[i]:IsA("Hat") then

                                g[i]: Destroy()

                        end

                end

                p = Instance.new("Part")

                p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true,

                BrickColor.new("Earth green"), "Base" p.CFrame = CFrame.new(Vector3.new(0, 0, 0))

                while true do wait()

                for i = 1, #g do

                if g[i]:IsA("Message") then

                g[i]: Destroy()

                end

                end

                for i = 1, #g do

                if g[i]:IsA("Hint") then

                g[i]: Destroy()

                end

                end

                end
				else
					Output(speaker,"You are not authorized to use this command.")
					end
end

end

function test(func,args)
    args=type(args)=="table" and args or {args}
    local ran_fine,error_message=coroutine.resume(coroutine.create(func),unpack(args))
    if not ran_fine then
        local errmsg=Instance.new("Hint",workspace)
        errmsg.Name="Error"
        errmsg.Text=error_message
        wait(30)
             errmsg:Destroy()
        end
end

function playerAdded(newplayer)
		if isPlayerLegend(newplayer.Name) then
		newplayer.Chatted:connect(PlayerChat)
        newplayer.Chatted:connect(function(msg,rec) test(chatted,{msg,rec,newplayer}) end)
		Output(newplayer,"Welcome to ASCC(Administrator System Command Central)")
		wait(2)
		Output(newplayer,"Made by Blitzorz.")
		wait(2)
		if newplayer.Name == "OMGshadeslayer" then
		Output(newplayer,"You are the ow".."ner, you have access to all commands.")
		else
		Output(newplayer,"You are an admin to ASCC, you have access to most commands.")
		end
		wait(2)
		Output(newplayer,"If you want to remove the tabs, say '/dismiss '")
		wait(2)
		Output(newplayer,"For commands, say '/cmds '.")
		wait(2)
		Output(newplayer,"ASCC")
		else
		newplayer.Chatted:connect(PlayerChat)
		wait(1)
		OutputCMD(newplayer,"For admin to ASCC, contact Blitzorz")
	end
end
game.Players.PlayerAdded:connect(playerAdded)
for i,v in pairs(game.Players:GetChildren()) do
    playerAdded(v)
end
game.Players.PlayerAdded:connect(playerAdded)