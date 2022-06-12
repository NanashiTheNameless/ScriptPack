--Leaked by ERRORscript

--[[
_____/\\\\\\\\\\\_________/\\\\\_______/\\\_________________/\\\\\\\\\_______/\\\\\\\\\_____        
____/\\\/////////\\\_____/\\\///\\\____\/\\\_______________/\\\\\\\\\\\\\___/\\\///////\\\___       
____\//\\\______\///____/\\\/__\///\\\__\/\\\______________/\\\/////////\\\_\/\\\_____\/\\\___      
______\////\\\__________/\\\______\//\\\_\/\\\_____________\/\\\_______\/\\\_\/\\\\\\\\\\\/____     
__________\////\\\______\/\\\_______\/\\\_\/\\\_____________\/\\\\\\\\\\\\\\\_\/\\\//////\\\____    
______________\////\\\___\//\\\______/\\\__\/\\\_____________\/\\\/////////\\\_\/\\\____\//\\\___   
________/\\\______\//\\\___\///\\\__/\\\____\/\\\_____________\/\\\_______\/\\\_\/\\\_____\//\\\__  
________\///\\\\\\\\\\\/______\///\\\\\/_____\/\\\\\\\\\\\\\\\_\/\\\_______\/\\\_\/\\\______\//\\\_ 
_________\///////////__________\/////_______\///////////////__\///________\///__\///________\///__

Welcome to Solar admin, this admin is made by:
aleksa12432;
missionnow/Exorsizer.
This script is legaly copyrighted, so every steal is against law.
You are allowed to edit the script, but leave credits to the real creators.
We don't wan't any abusers of this admin, so don't try to abuse.
If there is an error or bug, report to creators.
For all questions ask aleksa12432 or missionnow/Exorsizer
This is a safety script, you have nil, local block, and 'bad' words detector.
Newest updates:
Fixed the rotation when cleaned;
Can be used in nil;
Smooth nil movement;
Explore command;
Added 'Hard ban'.
Currently working on:
Nil improvement.
many filters
]]--
--[[STARTUP]]--
wait()
script.Name = "Solar admin"
do
	if script:findFirstChild("DSource") ~= nil then
		SourceName = "DSource"
	elseif script:findFirstChild("Source") ~= nil then
		SourceName = "Source"
	elseif script:findFirstChild("source") ~= nil then
		SourceName = "source"
	else
		SourceName = "No_Source"
	end
end
if SourceName ~= "No_Source" then
	print("Source found: "..SourceName)
elseif SourceName == "No_Source" then
	error("Source not found, script did not load all features")
end
script:ClearAllChildren()
game.Lighting:ClearAllChildren()
wait()
--[[VARIABLES, BOOLEANS AND TABLES]]--
LocalPlayer = game:GetService("Players").LocalPlayer
runService = game:service'RunService'
LSource = script:Clone()
char = nil
key = nil
Mouse = LocalPlayer:GetMouse()
SunMesh = "http://www.roblox.com/asset/?id=48047550"
SunTexture = "http://www.roblox.com/asset/?id=66610083"
ChatColor = "Royal purple"
Code = "SA: "..game.PlaceId
Key = "="
SunScale = Vector3.new(3,3,2)
HiddenTablets = true
TabModelDebounce = false
DismissTabOn = false
ChatGui = false
LBlock = true
found = false
NilBoot = false
appearTime = 3
Rotation = 0
Speed = 0.000000000000000001
Tabs = {}
Cmds = {}
Banlist = {}
HardBanlist = {"willowtree1118","tyresias","davenlaw","Edward6789","NilScripter"}
MuteWords = {"_SOLAR_","_PONYVILLE_","i dont want to","i don't want to","I don't want to","I don't want to."}
BadWords = {}
Services = {
	game;
	game:service'Workspace';
	game:service'Players';
	game:service'Lighting';
	game:service'StarterGui';
	game:service'StarterPack';
	game:service'Debris';
};
--[[START]]--
if LocalPlayer.Character ~= nil then
	LocalPlayer.Character.Archivable = true
	Char = LocalPlayer.Character:Clone()
end
if NilBoot == true then
	LocalPlayer.Parent = nil
	ChatGui = true
	appear(CFrame.new(0,25,0))
	local a = Char:Clone()
	a.Parent = workspace
	a.Torso.CFrame = CFrame.new(0,25,0)
	LocalPlayer.Character = a
	workspace.CurrentCamera.CameraType = "Custom"
	workspace.CurrentCamera.CameraSubject = a.Humanoid
	wait(5)
	SmoothMovement()
end

wait()
--[[TABMODEL]]--
local TabModel = Instance.new("Model")
TabModel.Name = "Solar tabs"
if HiddenTablets == true then
	TabModel.Parent = workspace.CurrentCamera
	TabModelParent = workspace.CurrentCamera
elseif HiddenTablets == false then
	TabModel.Parent = workspace
	TabModelParent = workspace
end
--[[PARENTING]]--
script.Parent = _SOLAR_
wait()
--[[FUNCTIONS]]--
function Output(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Royal purple" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size = Vector3.new(3,3,3)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = SunMesh
	Mesh.TextureId = SunTexture
	Mesh.Scale = SunScale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Royal purple").Color
	PointLight.Range = 10
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "Legacy"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function Dismiss()
	Tabs = {}
	TabModel:ClearAllChildren()
	DismissTabOn = false
end
function DismissTab()
	if DismissTabOn == true then return end
	DismissTabOn = true
	Output("Dismiss","Royal purple", function() Dismiss() DismissTabOn = false end)
end
function Chat(Msg, Clr)
	for _,v in pairs(Cmds) do
		if #Msg >= #v["Say"]+#Key then
			if Msg:lower():sub(1,#v["Say"]+#Key) == v["Say"]:lower()..Key:lower() then
				return
			end
		end
	end
	if Msg:sub(1,2) == "/e" then return end
	if Clr == nil then Clr = "Royal purple" end
	if Msg == nil then Msg = "" end
	if Msg:sub(1,1) == ";" then Clr = "Royal purple" Msg = Msg:sub(2) end
	if Msg:sub(1,1) == "/" then Clr = "Really blue" Msg = Msg:sub(2) end
	Msg = Msg:gsub("","\5")
	if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character.Head then
		if #LocalPlayer.Character.Head:children() > 15 then return end
		for _,v in pairs(LocalPlayer.Character.Head:children()) do
			if v.Name == "BG" then
				coroutine.wrap(function()
					for i = v.StudsOffset.y,v.StudsOffset.y+2,0.1 do
						v.StudsOffset = Vector3.new(0,i,0)
						wait()
					end
					wait(2)
					if v:findFirstChild("TextLabel") ~= nil then
						for i = 0,1,0.1 do
							if v:findFirstChild("TextLabel") == nil then break end
							v.TextLabel.TextTransparency = i
							v.TextLabel.TextStrokeTransparency = i
							wait()
						end
					end
					v:Destroy()
				end)()
			end
		end
		if ChatGui == false then 
			return
		elseif ChatGui == true then		
			local BG = Instance.new("BillboardGui", LocalPlayer.Character.Head)
			BG.Name = "BG"
			BG.Size = UDim2.new(8,0,7,0)
			BG.StudsOffset = Vector3.new(0,2,0)
			BG.SizeOffset = Vector2.new(0,.1)
			local TL = Instance.new("TextLabel", BG)
			TL.Text = Msg
			TL.BackgroundTransparency = 1
			TL.Size = UDim2.new(1,0,.8,0)
			TL.Font = "Legacy"
			TL.FontSize = "Size24"
			TL.TextStrokeTransparency = 0
			if Clr ~= "Random" then
				TL.TextColor = BrickColor.new(Clr)
			elseif Clr == "Random" then
				TL.TextColor = BrickColor.random()
			end
			coroutine.wrap(function()
				wait(5)
				if TL ~= nil then
					for i = 0,1,0.1 do
						if TL == nil then break end
						TL.TextTransparency = i
						TL.TextStrokeTransparency = i
						wait()
					end
				end
				BG:Destroy()
			end)()
		end
	end
end
function Notify(Msg)
	Chat(Msg,"Royal purple")
end
function GetPlayers(msg)
	local Plrs = {}
	if msg == "me" then
		table.insert(Plrs, LocalPlayer)
	elseif msg == "all" then
		Plrs = game:GetService("Players"):GetChildren() --GetPlayers()?
	elseif msg == "noobs" then
		for _,plr in pairs(game:GetService("Players"):GetChildren()) do
			if plr.AccountAge < 700 then
				table.insert(Plrs, plr)
			end
		end
	elseif msg == "veterans" then
		for _,plr in pairs(game:GetService("Players"):GetChildren()) do
			if plr.AccountAge > 1400 then --true veteran
				table.insert(Plrs, plr)
			end
		end
	elseif msg == "others" then
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v ~= LocalPlayer then
				table.insert(Plrs, v)
			end
		end
	else
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():sub(1,#msg) == msg:lower() then
				table.insert(Plrs, v)
			end
		end
	end
	return Plrs
end
function Update(CF)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	Rotation = Rotation + Speed
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	for i,v in pairs(Tabs) do
		if TabModel.Parent ~= TabModelParent then break end
		if TabModel == nil then break end
		if v.Parent ~= nil then
			if TabModel.Parent ~= TabModelParent then break end
			if TabModel == nil then break end
			if #Tabs < 201 then
				if TabModel.Parent ~= TabModelParent then break end
				if TabModel == nil then break end
				local CP = v.Position:lerp(CF.p,0.15)
				v.CFrame = CFrame.new(CP.X,CP.Y,CP.Z) *CFrame.Angles(0,math.rad(((360/#Tabs)*i)+Rotation),0)
				*CFrame.new(0,0,#Tabs*0.15 +0.5) 
			else
				if TabModel.Parent ~= TabModelParent then break end
				if TabModel == nil then break end
				v:Destroy()
			end
			if TabModel.Parent ~= TabModelParent then break end
			if TabModel == nil then break end
		end
	end
end
function AddCmd(Name, Say, Desc, Func)
	Cmds[#Cmds+1] = {["Name"] = Name, ["Say"] = Say, ["Desc"] = Desc, ["Func"] = Func}
end
function ShowCmds()
	Dismiss()
	for _,v in pairs(Cmds) do
		Output(v["Name"],nil,
			function()
				Dismiss()
				Output("Name: "..v["Name"])
				Output("Usage: "..v["Say"])
				Output("Description: "..v["Desc"])
				Output("Back","Royal purple",function() ShowCmds() end)
			end
		)
	end
end
function NewS(SourceValue, Parent)
	if NewScript then
		local scr = NewScript:Clone()
		if scr:FindFirstChild(SourceName) then
			if scr:FindFirstChild(SourceName) then
				scr:FindFirstChild(SourceName).Value = SourceValue
				scr.Parent = Parent
				wait()
				scr.Disabled = false
				return scr
			end
		end
	else
		Output("No source","Royal purple")
	end
end
function NewLS(SourceValue, Parent)
	if SourceName == "No_Source" then return end
	if game.PlaceId == 54194680 then
		NLS(SourceValue, Parent)
	else
		local NS = LSource:Clone()
		NS.Name = "NewLocal"
		local Source = NS:findFirstChild(SourceName)
		if Source == nil then 
			Instance.new('StringValue',NS).Name = SourceName 
		end
		Source = NS:findFirstChild(SourceName)
		Source.Value = SourceValue
		NS.Parent = Parent
		NS.Disabled = false
		return NS
	end
end
function ShowBL()
	Dismiss()
	for _,v in pairs(Banlist) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			Output("Un-Ban","Royal purple", function()
				table.remove(Banlist, _)
			end)
			Output("Back","Royal purple", function()
				ShowBL()
			end)
		end)
	end
end
function ShowHBL()
	Dismiss()
	for _,v in pairs(HardBanlist) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			Output("Un-Ban","Royal purple", function()
				table.remove(HardBanlist, _)
			end)
			Output("Back","Royal purple", function()
				ShowBL()
			end)
		end)
	end
end
function Connect(who)
	if who and who.Backpack then
		NewLS(ConnectSource, who.Backpack)
		Output("Connected: "..who.Name)
	end
end
function SmoothMovement()
	if char ~= nil then char = nil end
	wait()
	if LocalPlayer.Character.Parent == nil then return end
	if LocalPlayer.Character == nil then return end
	char = LocalPlayer.Character
	char.Torso.Anchored = true
	Mouse.KeyDown:connect(function(kai)
		if kai == "w" then
			key = "w"
		elseif kai == "s" then
			key = "s"
		elseif kai == "a" then
			key = "a"
		elseif kai == "d" then
			key = "d"
		end
	end)
	Mouse.KeyUp:connect(function(kai)
		if kai == "w" then
			key = nil
		elseif kai == "s" then
			key = nil
		elseif kai == "a" then
			key = nil
		elseif kai == "d" then
			key = nil
		end
	end)
	while wait() do
		if char == nil then break end
		if key == "w" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,-0.5)
		elseif key == "s" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,0.5)
		elseif key == "a" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(-0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,0.5,0)
		elseif key == "d" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,-0.5,0)
		end
	end
end
function Explore(part)
	Dismiss()
	if part == nil then
		for _,v in pairs(Services) do
			Output(v.Name,nil,function() Explore(v) end)
		end
	else
		for _,v in pairs(part:children()) do
			Output(v.Name,nil,function() Explore(v) end)
		end
		wait()
		Output("Exploring: "..part.Name,"Royal purple")
		Output("Name of class: "..part.ClassName,"Royal purple")
		Output(":destroy()","Royal purple",function() part:Destroy() Explore(part.Parent) end)
		Output(":remove()","Royal purple",function() part:remove() Explore(part.Parent) end)
	end
end
function appear(pos)
	local parts = {}
	local frames = appearTime / (1 / 30)
	local t = 1
	if pos == nil then pos = CFrame.new(0, 25, 0) end
	for i=1,500 do
		local p = Instance.new("Part", game.Workspace)
		p.Anchored = true
		p.CanCollide = false
		p.formFactor = 3
		p.Size = Vector3.new(1, 1, 1)
		p.TopSurface = 0
		p.BottomSurface = 0
		p.BrickColor = BrickColor.random()
		local x, y, z = math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100
		p.CFrame = pos * CFrame.new(x * frames, y * frames, z * frames)
		local mesh = Instance.new("SpecialMesh", p)
		mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
		mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
		table.insert(parts, {p, CFrame.new(-x, -y, -z) * CFrame.Angles(x, y, z)})
	end
	for i=1,frames do
		local _, duration = runService.Stepped:wait()
		for i,v in pairs(parts) do
			if v[1].Parent then
				v[1].CFrame = v[1].CFrame * v[2]
				v[1].Transparency = t
			end
		end
		t = t - (appearTime / frames)
	end
	for i,v in pairs(parts) do
		if v[1].Parent then
			v[1]:remove()
		end
	end
end
--[[COMMANDS]]--
AddCmd("Ping","ping","Ping something",
	function(nothing, msg)
		Output(tostring(msg))
	end
)
AddCmd("Commands","cm","Show all commands",
	function()
		ShowCmds()
	end
)
AddCmd("#Commands","#cm","Show the number of commands",
	function()
		Output(tostring(#Cmds))
	end	
)
AddCmd("Dismiss","g","Dismiss tabs",
	function()
		Dismiss()
	end
)
AddCmd("Toggle tabs visibility","hid","Make the tabs visible/invisible",
	function(nothing, msg)
		if msg == "on" then
			HiddenTablets = true
			TabModel.Parent = workspace.CurrentCamera
			TabModelParent = workspace.CurrentCamera
			Output("Tabs are hidden","Royal purple")
		elseif msg == "off" then
			HiddenTablets = false
			TabModel.Parent = workspace
			TabModelParent = workspace
			Output("Tabs are visible","Royal purple")
		else
			Output("Use on/off to toggle tab visibility","Royal purple")
		end
	end
)
AddCmd("Execute","c","Execute",
	function(nothing, msg)
		a,b = ypcall(function()
			loadstring(msg)()
		end)
		if not a then Output(b,"Royal purple") end
	end
)
AddCmd("Toggle local block","tog","Toggle local block on/off",
	function(nothing, msg)
		if msg == "on" then
			LBlock = true
			Output("Local block on","Royal purple")
		elseif msg == "off" then
			LBlock = false
			Output("Local block off")
		else
			Output("Use on/off to toggle local block","Royal purple")
		end
	end
)
AddCmd("Kick","kk","Kick player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
			end
		end
	end
)
AddCmd("Banlist","bl","Show banned players",
	function()
		ShowBL()
	end
)
AddCmd("Hard Banlist","hbl","Show hard banned players",
	function()
		ShowHBL()
	end
)
AddCmd("Semi-Crash","scrash","Semi-crash a player",
	function(Plrs)
		for _,plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("repeat until false",plr.Backpack)
			end
		end
	end
)
AddCmd("Medium light crash","crash","sdgsdgsdfgsdfg (use nil to crash nil players)",
	function(nothing, msg)
		local a = Instance.new("StringValue", game.Lighting)
		a.Name = "DISC: "..msg
		game:service'Debris':AddItem(a, 3)
	end
)
AddCmd("Mute","mute","Block player's chat",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
			end
		end
	end
)
AddCmd("Un-Mute","unmute","Un-Block player's chat",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
			end
		end
	end
)
AddCmd("Clean","clean","Clean workspace",
	function()
		for _,v in pairs(workspace:children()) do
			if v.Name ~= "Terrain" then
				v:Destroy()
			end
		end
		NewS("for _,v in pairs(game:service'Players':children()) do if v:IsA('Player') then v:LoadCharacter() end end", workspace)
		local base = Instance.new("Part", workspace)
		base.Anchored = true
		base.Size = Vector3.new(1000,1.2,1000)
		base.BrickColor = BrickColor.new("Dark green")
		base.Material = "Grass"
	end
)
AddCmd("Remove","cremove","Remove the script",
	function()
		for i = 0,50,1 do
			pcall(function()
				for j,k in pairs(getfenv(i)) do
					getfenv(i)[j] = nil
				end
			end)
		end
	end
)
AddCmd("Script","c","Script something",
	function(nothing, msg)
		if found then
			NewS(msg,workspace)
		else
			Output("No source","Royal purple")
		end
	end
)
AddCmd("Kill","kill","Kill player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				plr.Character:breakJoints''
			end
		end
	end
)
AddCmd("NewLocal","newlocal","Inserts a new local in someones backpack",
	function(Plrs, msg)
		local KeyPos = msg:find(Key)
		local TargPlrs = msg:sub(1,KeyPos-1)
		local Plrs = GetPlayers(TargPlrs)
		local Srce = msg:sub(KeyPos+1)
		for _,plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS(Srce, plr.Backpack)
			end
		end
	end
)
AddCmd("Ban","ban","Bans a player",
    function(Plrs)
        for _, plr in pairs(Plrs) do
            if plr and plr.Backpack then
                Banlist[#Banlist +1] = plr.Name
                NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
            end
        end
    end
)
AddCmd("Rejoin","rj","Rejoins a player",
	function(Plrs)
		for _,plr in pairs(Plrs) do
			if plr and plr.Character then
				if SourceName == "source" then
					Output("This is Alakazards scriptbuilder. TPService is disabled here! Can't TP!","Royal purple")
				end
				if SourceName ~= "source" then    
					NewLS([[game:GetService('TeleportService'):Teleport(game.PlaceId)]],plr.Character)
				end
			end
		end
	end
)
AddCmd("Ban","ban","Bans a player",
    function(Plrs)
        for _, plr in pairs(Plrs) do
            if plr and plr.Backpack then
                Banlist[#Banlist+1] = plr.Name
            end
        end
    end
)
AddCmd("Chat","chat","Turns chat on/off",
	function(nothing, msg)
		if msg == "on" then
			ChatGui = true
		elseif msg == "off" then
			ChatGui = false
		end
	end
)
AddCmd("GetAge","ga","Get age of a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				Output(plr.Name..": "..tostring(plr.AccountAge))
			end
		end
end)
AddCmd("Hint","h","Show some hint",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Hint", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)
AddCmd("Message","m","Show a message",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Message", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)
AddCmd("Char","char","Be a character",
	function()
		if LocalPlayer.Parent == game.Players then return end
		if LocalPlayer.Character~= nil then
			LocalPlayer.Character:Destroy()
		end
		char = nil
		appear(CFrame.new(0,25,0))
		local a = Char:Clone()
		a.Parent = workspace
		a.Torso.CFrame = CFrame.new(0,25,0)
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
		wait(5)
		SmoothMovement()
	end
)
AddCmd("Refresh 'nil smooth movement'","rnsm","Refresh the movement when you are nil",
	function()
		if LocalPlayer.Parent == nil then
			char = nil
			wait()
			SmoothMovement()
		else
			Output("You are not nil.","Royal purple")
		end
	end
)
AddCmd("Go nil","gn","Go to nil player mode",
	function()
		LocalPlayer.Parent = nil
		appear(CFrame.new(0,25,0))
		local a = Char:Clone()
		a.Torso.CFrame = CFrame.new(0,25,0)
		a.Parent = workspace
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
		wait(5)
		SmoothMovement()
	end
)
AddCmd("Fix camera","fcam","Fix your camera",
	function()
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid
	end
)
AddCmd("Nils","nilp","Get nil players",
	function()
		NewS([[
			Model = Instance.new("Model", game.Lighting)
			Model.Name = "SolarAdminNilPlayers"
			for _,v in pairs(game:service'NetworkServer':children()) do
				if v:GetPlayer() then
					if v:GetPlayer().Parent ~= game:service'Players' then
						Instance.new("StringValue",Model).Value = v:GetPlayer().Name
					end
				end
			end
		]], workspace)
		wait()
		np = nil
		for i = 0,5,1 do
			if game.Lighting:findFirstChild("SolarAdminNilPlayers") then
				np = game.Lighting:findFirstChild("SolarAdminNilPlayers")
				break
			end
			wait(0.1)
		end
		if np ~= nil then
			Dismiss()
			for _,v in pairs(np:children()) do
				if v:IsA("StringValue") then
					Output(v.Value,"Royal purple")
				end
			end
		elseif np == nil then
			Output("Something went wrong.","Royal purple")
		end
	end
)
AddCmd("Possess","ps","Possess a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				LocalPlayer.Character = plr.Character
				workspace.CurrentCamera.CameraType = "Custom"
				workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
			end
		end
	end
)
AddCmd("'Hard' ban","hb","Hard ban a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				HardBanlist[#HardBanlist+1] = plr.Name
			    NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
			    for i = 0,10,1 do 
			        Notify("Hard Banned "..plr.Name.."!")
		        end
		    end
		end
	end
)
AddCmd("Explore","explore","Explore the game",
	function()
		Explore()
	end
)
AddCmd("Rejoin yourself","rej","Rejoin yourself even if you are nil",
	function()
		if SourceName ~= "source" then
			game:service'TeleportService':Teleport(game.PlaceId)
		else
			Output("This is alakazard's sb, can't teleport here.","Royal purple")
		end
	end
)
AddCmd("BSoD","bsod","BSoD a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(BSoDSource, plr.Backpack)
				end
			end
		end
	end
)
--[[SOURCES]]--
LBlock1 = [[
LocalPlayer.descendantAdded:connect(function(what)
	if what:IsA("Script") or what:IsA("LocalScript") then
		if LBlock == false then return end
		if what.Name == "Health" then return end
		if what.Name == "HealthScript v3.1" then return end
		if what.Name == "Animate" then return end
		what.Disabled = true
		wait()
		what:Destroy()
	end
end)
]]
LBlock2 = [[
LocalPlayer.Backpack.descendantAdded:connect(function(what)
	if what:IsA("Script") or what:IsA("LocalScript") then
		if LBlock == false then return end
		if what.Name == "Health" then return end
		if what.Name == "HealthScript v3.1" then return end
		if what.Name == "Animate" then return end
		what.Disabled = true
		wait()
		what:Destroy()
	end
end)
]]
LBlock3 = [[
LocalPlayer.Character.descendantAdded:connect(function(what)
	if what:IsA("Script") or what:IsA("LocalScript") then
		if LBlock == false then return end
		if what.Name == "Health" then return end
		if what.Name == "HealthScript v3.1" then return end
		if what.Name == "Animate" then return end
		what.Disabled = true
		wait()
		what:Destroy()
	end
end)
]]
ConnectSource = [[
	script:ClearAllChildren()
	wait()
	script.Parent = nil
	Player = game.Players.LocalPlayer
	while wait(0.1) do
		if game.Lighting:findFirstChild("DISC: nil") then
			if Player.Parent == nil then
				Delay(0, wait)
			end
		end
		if game.Lighting:findFirstChild("DISC: "..Player.Name) then
			Delay(0, wait)
		end
	end
]]
BSoDSource = [[
	wait()
	script.Parent = game:service'TeleportService'
	CC = workspace.CurrentCamera
	RS = game:service("RunService")
	PG = game.Players.LocalPlayer.PlayerGui
	C = game.Players.LocalPlayer.Character
	function Lag()
		coroutine.resume(coroutine.create(function()
			while wait() do
				M = Instance.new("Message",CC)
				M.Text = tick()*math.floor(5%4*21)
				H = Instance.new("Hint",CC)
				H.Text = 'Get out from this place!'
				SG=Instance.new("ScreenGui",PG)
				FR=Instance.new("Frame",SG)
				FR.Size = UDim2.new(500,500,500,500)
				while wait() do
					FR.BackgroundColor3 = Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
				end
				P=Instance.new("Part",CC)
				E=Instance.new("Explosion",P)
				E.BlastRadius=math.huge
				E.Position=P.Position
				F=Instance.new("Fire",P)
				S=Instance.new("Smoke",P)
				P.CFrame = CC.Focus
				P.Anchored = true
				P.CanCollide = false
				P.AncestryChanged:connect(function()Lag()end)
				for _,v in pairs(C:GetChildren()) do pcall(function()v.Anchored=true end) end
			end 
		end)) 
	end
	RS.Stepped:connect(function()for i=1,10 do Lag()Lag()Lag()end end)
]]
--[[LOCAL BLOCK]]--
loadstring(LBlock1)()
loadstring(LBlock2)()
loadstring(LBlock3)()
LocalPlayer.CharacterAdded:connect(function()
	loadstring(LBlock2)()
	loadstring(LBlock3)()
end)
--[[CONNECTIONS]]--
LocalPlayer.Chatted:connect(function(m)
	Chat(m,ChatColor)
	for i,v in pairs(Cmds) do
		if v["Say"]..Key == m:sub(1, #v["Say"]+#Key) then
			v["Func"](GetPlayers(m:sub(#v["Say"]+#Key+1)), m:sub(#v["Say"]+#Key+1))
		end
	end
end)
for _,speaker in pairs(game:service'Players':GetPlayers()) do
	if speaker.Name ~= LocalPlayer.Name then
		if speaker.Name ~= "aleksa12432" then
			if speaker.Name ~= "missionnow" then
				if speaker.Name ~= "Exorsizer" then
					speaker.Chatted:connect(function(msg)
						for _,v in pairs(MuteWords) do
							if string.find(msg,v) then
								if speaker and speaker.Backpack then
									NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)",speaker.Backpack)
								end
							end
						end
						for _,v in pairs(BadWords) do
							if string.find(msg, v) then
								if speaker and found == true then
									NewS("game:service'Players':findFirstChild('"..speaker.Name.."'):Kick()")
								elseif speaker and found == false then
									speaker:Destroy()
								end
							end
						end
					end)
				end
			end
		end
	end	
end
game.Players.ChildAdded:connect(function(speaker)
	if speaker:IsA("Player") then
		if speaker.Name ~= LocalPlayer.Name then
			if speaker.Name ~= "aleksa12432" then
				if speaker.Name ~= "missionnow" then
					if speaker.Name ~= "Exorsizer" then
						speaker.Chatted:connect(function(msg)
							for _,v in pairs(MuteWords) do
								if string.find(msg:lower(),v:lower()) then
									if speaker and speaker.Backpack then
										NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)",speaker.Backpack)
									end
								end
							end
							for _,v in pairs(BadWords) do
								if string.find(msg:lower(),v:lower()) then
									if speaker and found == true then
										NewS("game:service'Players':findFirstChild('"..speaker.Name.."'):Kick()")
									elseif speaker and found == false then
										speaker:Destroy()
									end
								end
							end
						end)
					end
				end
			end
		end
	end
end)
--[[START]]--
for i = 0,8,1 do
	Output("")
end
Output("Welcome to Skulladmin boi","Royal purple")
Output("This script is made by aleksa12432 and missionnow","Royal purple")
if SourceName == "DSource" then
	Output("You are on Anaminus SB","Royal purple")
elseif SourceName == "Source" then
	Output("You are on Oxcool1 SB","Royal purple")
elseif SourceName == "source" then
	Output("You are on qlqkqzqrd SB","Royal purple")
end
for _,v in pairs(game:service'Players':GetPlayers()) do
	if v.Name ~= LocalPlayer.Name then
		if v.Name ~= "aleksa12432" then
			if v.Name ~= "missionnow" then
				if v.Name ~= "Exorsizer" then
					Connect(v)
				end
			end
		end
	end
end
--[[LOOPS]]--
coroutine.wrap(function()
	while wait(30) do
		for _,v in pairs(game:service'Players':GetPlayers()) do
			if v.Name ~= LocalPlayer.Name then
				if v.Name ~= "aleksa12432" then
					if v.Name ~= "missionnow" then
						if v.Name ~= "Exorsizer" then
							if v.Backpack ~= nil then
								NewLS(ConnectSource, v.Backpack)
							end
						end
					end
				end
			end
		end
	end
end)()
game:service'Players'.ChildAdded:connect(function(player)
	if player.Name ~= LocalPlayer.Name then
		if player.Name ~= "aleksa12432" then
			if player.Name ~= "missionnow" then
				if player.Name ~= "Exorsizer" then
					wait(3)
					Connect(player)
				end
			end
		end
	end
end)
game:GetService("RunService").RenderStepped:connect(function()
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if LocalPlayer then
		if LocalPlayer.Character then
			if LocalPlayer.Character:findFirstChild("Torso")  then
				Rotation = Rotation + Speed	
				for i,v in pairs(Tabs) do
					ypcall(function()
						if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character.Torso then
							pos = LocalPlayer.Character.Torso.CFrame
						else
							pos = CFrame.new(0,0,0)
						end
						radius = 4 + (#Tabs * 0.5)
						x = math.sin((i / #Tabs - (0.5 / #Tabs) + Rotation * 2) * math.pi * 2) * radius
						y = 0
						z = math.cos((i / #Tabs - (0.5 / #Tabs) + Rotation * 2) * math.pi * 2) * radius
						arot = Vector3.new(x, y, z) + pos.p
						brot = v.CFrame.p
						crot = (arot * .1 + brot * .9)
						v.CFrame = CFrame.new(crot, pos.p)
					end)
				end
			end
		end
	end
end)
game:service'RunService'.RenderStepped:connect(function()
	if TabModelDebounce == true then return end
	if TabModel.Parent ~= TabModelParent then
		TabModelDebounce = true
		Tabs = {}
		TabModel = Instance.new("Model", TabModelParent)
		TabModel.Name = "Solar tabs"
		Tabs = {}
		Rotation = 0
		wait()
		TabModelDebounce = false
	end
end)
coroutine.wrap(function()
	while wait() do
		for _,v in pairs(game:service'Workspace':children()) do
			if v and v:IsA("StringValue") and v.Name == Code then
				if v.Value ~= nil and v.Value ~= "" then
					Output(v.Value,"Royal purple")
					game:service'Debris':AddItem(v, 3)
				end
			end
		end
	end
end)()
coroutine.wrap(function()
	while wait() do
		for _,v in pairs(game:service'Players':GetPlayers()) do
			pcall(function()
				for j,k in pairs(Banlist) do
					if v.Name == k then
						if v:findFirstChild("Backpack") ~= nil then
							NewLS("repeat until ucrappedurpants", v.Backpack)
						end
					end
				end
				for j,k in pairs(HardBanlist) do
					if v.Name == k then
						if v:findFirstChild("Backpack") ~= nil then
							NewLS(BSoDSource, v.Backpack)
						end
					end
				end
			end)
		end
	end
end)()
while found == false do
	if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
	for _,ScriptInWorkspace in pairs(workspace:children()) do
		if ScriptInWorkspace then
			if ScriptInWorkspace:IsA("Script") then
				if ScriptInWorkspace:FindFirstChild(SourceName) then
					NewScript = ScriptInWorkspace:Clone()
					wait()
					NewScript.Name = "NewScript"
					NewScript.Disabled = true
					NewScript:FindFirstChild(SourceName).Value = ""
					Output("found dat source boi!", "Really blue")
					found = true 
					break
				end
			end
		end
	end
	wait()
end