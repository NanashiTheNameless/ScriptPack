--[[
	Justice v.2.1
	Created by RustehBusteh (Donald J Trump), thank's for using! :)
--]]

--[[ VALUES ]]--
VERSION = "2.1"
--[[ SUPPORTED GAMES ]]--
LasVegas = 163865146
PhantomForces = 292439477
ApocRisingReimagined = 237590657
ApocRisingReborn = 237590761
--EpicMiniGames = ""
--[[ GAME DETECTOR ]] --
if game.PlaceId == LasVegas then
	game_Supported = "YES"
elseif game.PlaceId == PhantomForces then
	game_Supported = "YES"
elseif game.PlaceId == ApocRisingReimagined then
	game_Supported = "YES"
elseif game.PlaceId == ApocRisingReborn then
	game_Supported = "YES"
--elseif game.PlaceId == EpicMiniGames then
	--game_Supported = "YES"
else
	game_Supported = "NO"
end
Asset123 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
Game_name = Asset123.Name
--[[ GUI CREATING ]]--
game:GetObjects("rbxassetid://378228753")[1].Parent = game.CoreGui
wait(1)
--
MainGui = game.CoreGui.JusticeGui.MainGui
GameGui = game.CoreGui.JusticeGui.GameGui
CustomGui = game.CoreGui.JusticeGui.CustomGui
ApocGui = game.CoreGui.JusticeGui.ApocGui
OpenGui = game.CoreGui.JusticeGui.Open
-- NotSupportedGui = game.CoreGui.JusticeGui.NotSupported
--[[ INVISIBLE AND VISIBLE GUI FUNCTIONS ]] --
function make_gui_visible(Gui)
	Gui.Position = UDim2.new(.5,-200,.5,-100)
	Gui.Visible = true
end
function make_gui_invisible(Gui)
	Gui.Position = UDim2.new(999,999,999,999)
	Gui.Visible = false
end
	make_gui_invisible(MainGui)
	make_gui_invisible(GameGui)
	make_gui_invisible(CustomGui)
	make_gui_invisible(ApocGui)
	OpenGui.Visible = false
--  make_gui_invisible(NotSupportedGui)
--[[ GUI EDITING ]]--
	-- WELCOME GUI
	MainGui.Welcome.Text = ("Welcome, " ..game.Players.LocalPlayer.Name.. "!")
	MainGui.Title.Text = ("Justice v." ..VERSION)
	MainGui.Game.Text = ("Game: " ..Game_name.. " // ID: " ..game.PlaceId)
	MainGui.GameSupported.Text = ("Game Supported: " ..game_Supported)
	-- LOADING GUI
	GameGui.Game.Text = ("Welcome, " ..game.Players.LocalPlayer.Name.. "!")
		GameGui.Log1.Text = ""
		GameGui.Log2.Text = ""
		GameGui.Log3.Text = ""
		GameGui.Log4.Text = ""
	-- CUSTOM GUI
	CustomGui.Page1.Welcome.Text = ("Game: " ..Game_name.. " // ID: " ..game.PlaceId)
	CustomGui.Page2.Welcome.Text = ("Game: " ..Game_name.. " // ID: " ..game.PlaceId)
		CustomGui.Page1.Button1.Text = ""
		CustomGui.Page1.Button2.Text = ""
		CustomGui.Page1.Button3.Text = ""
		CustomGui.Page1.Button4.Text = ""
		CustomGui.Page1.Button5.Text = ""
		CustomGui.Page1.Button6.Text = ""
		CustomGui.Page1.Button7.Text = ""
		CustomGui.Page1.Button8.Text = ""
		
		CustomGui.Page2.Button1.Text = ""
		CustomGui.Page2.Button2.Text = ""
		CustomGui.Page2.Button3.Text = ""
		CustomGui.Page2.Button4.Text = ""
		CustomGui.Page2.Button5.Text = ""
		CustomGui.Page2.Button6.Text = ""
		CustomGui.Page2.Button7.Text = ""
		CustomGui.Page2.Button8.Text = ""
	-- APOC GUI
	ApocGui.Page1.Welcome.Text = ("Game: " ..Game_name.. " // ID: " ..game.PlaceId)
	ApocGui.Page2.Welcome.Text = ("Game: " ..Game_name.. " // ID: " ..game.PlaceId)
		ApocGui.Page1.Button1.Text = ""
		ApocGui.Page1.Button2.Text = ""
		ApocGui.Page1.Button3.Text = ""
		ApocGui.Page1.Button4.Text = ""
		ApocGui.Page1.Button5.Text = ""
		ApocGui.Page1.Button6.Text = ""
		ApocGui.Page1.Button7.Text = ""
		ApocGui.Page1.Button8.Text = ""
		ApocGui.Page1.Custom.Text = "LOCALPLAYER"		
		
		ApocGui.Page2.Button1.Text = ""
		ApocGui.Page2.Button2.Text = ""
		ApocGui.Page2.Button3.Text = ""
		ApocGui.Page2.Button4.Text = ""
		ApocGui.Page2.Button5.Text = ""
		ApocGui.Page2.Button6.Text = ""
		ApocGui.Page2.Custom.Text = "SERVER"
		
-- [[ OPEN GUI FUNCTIONS ]]--
OpenGui.MouseButton1Down:connect(function()
	OpenGui.Visible = false
	wait(.2)
	if game.PlaceId == ApocRisingReimagined or game.PlaceId == ApocRisingReborn then
		make_gui_visible(ApocGui)
	else
		make_gui_visible(CustomGui)
	end
end)
-- [[ MAIN AND GAME FUNCTIONS ]] --
function functionMain_Gui()
	make_gui_visible(MainGui)
	MainGui.Open.MouseButton1Down:connect(function()
		MainGui:Destroy()
		functionGame_Gui()
	end)
	MainGui.Close.MouseButton1Down:connect(function()
		game.CoreGui.JusticeGui:Destroy() -- rip
	end)
end
function functionGame_Gui()
	make_gui_visible(GameGui)
	GameGui.Close.Visible = false
	GameGui.Close.MouseButton1Down:connect(function()
		if game_Supported == "YES" then
			GameGui:Destroy()
			if game.PlaceId == ApocRisingReimagined or game.PlaceId == ApocRisingReborn then
				functionApocGui()
			else
				functionCustomGui()
			end
		else
			-- make_gui_visible(NotSupported)
			GameGui:Destroy()
		end
	end)
	if game_Supported == "YES" then
		wait(1)
		GameGui.Log1.Text = "Game supported!"
		wait(1)
		GameGui.Log1.Text = "Loaded custom commands!"
		GameGui.Log2.Text = "Game supported!"
		wait(1)
		GameGui.Close.Text = "CUSTOM COMMANDS"
	else
		wait(1)
		GameGui.Log1.Text = "Game not supported!"
		wait(1)
	end
	GameGui.Close.Visible = true
end
-- [[ CUSTOM GUI FUNCTIONS ]] --
function functionCustomGui()
	make_gui_visible(CustomGui)
	CustomGui.Page1.Close.MouseButton1Down:connect(function()
		make_gui_invisible(CustomGui)
		wait(.2)
		OpenGui.Visible = true
	end)
	CustomGui.Page2.Close.MouseButton1Down:connect(function()
		make_gui_invisible(CustomGui)
		wait(.2)
		OpenGui.Visible = true
	end)
	CustomGui.Page1.Page.Visible = false
	CustomGui.Page2.Visible = false
	if game.PlaceId == LasVegas then
		CustomGui.Page1.Button1.Text = "Give 10 Million Cash"
		CustomGui.Page1.Button2.Text = ""
		CustomGui.Page1.Button3.Text = ""
		CustomGui.Page1.Button4.Text = ""
		CustomGui.Page1.Button5.Text = ""
		CustomGui.Page1.Button6.Text = ""
		CustomGui.Page1.Button7.Text = ""
		CustomGui.Page1.Button8.Text = ""
		
		CustomGui.Page1.Button1.MouseButton1Down:connect(function()
			local CASH_AMOUNT = math.huge
			game.ReplicatedStorage.Events.MoneyRequest:FireServer(CASH_AMOUNT, 'Cash', true)
		end)
	elseif game.PlaceId == PhantomForces then
		CustomGui.Page1.Button1.Text = "Load PhantomX Gui"
		CustomGui.Page1.Button1.MouseButton1Down:connect(function()
			game:GetObjects('rbxassetid://311949717')[1].Parent = game.CoreGui
					local PhantomX = game.CoreGui:WaitForChild('PhantomX')
					local script = Instance.new('Script', game.CoreGui)
					script.Name = ''
					script.Source = PhantomX.CONTROL.Source
					loadstring(script.Source)()
					loadstring(game:GetObjects("rbxassetid://298918246")[1].Source)()
		end)
	--elseif game.PlaceId == EpicMiniGames then
	end
end
-- [[ APOCALYPSE RISING ]] --
function LocalPlayerGod()
	_G.lpgod = true
	local ChangeProp = game.Lighting.Remote.ChangeProperty
	local Plr = game.Players.LocalPlayer
	while _G.lpgod == true and wait() do -- health hack
    	ChangeProp:FireServer(Plr.Character.Humanoid, "Health", 100)
	end
end
function NoLocalPlayerGod()
	_G.lpgod = false
end
function UnlimitedHunger()
	_G.unlimhunger = true
	while _G.unlimhunger == true and wait(2) do
	game.Players.LocalPlayer.playerstats.Hunger.Value = 100
	end
end
function UnlimitedThirst()
	_G.unlimthirst = true
	while _G.unlimthirst == true and wait(2) do
	game.Players.LocalPlayer.playerstats.Thirst.Value = 100
	end
end
-- [[ APOCALYPSE GUI FUNCTIONS ]] --
function functionApocGui()
	make_gui_visible(ApocGui)
	if game.PlaceId == ApocRisingReimagined or game.PlaceId == ApocRisingReborn then
		ApocGui.Page1.Visible = true
		ApocGui.Page2.Visible = false
		-- CLOSE
		ApocGui.Page1.Close.MouseButton1Down:connect(function()
			make_gui_invisible(ApocGui)
			wait(.2)
			OpenGui.Visible = true
		end)
		ApocGui.Page2.Close.MouseButton1Down:connect(function()
			make_gui_invisible(ApocGui)
			wait(.2)
			OpenGui.Visible = true
		end)
		-- NEXT/BACK
		ApocGui.Page1.Page.Text = "NEXT"
		ApocGui.Page1.Page.MouseButton1Down:connect(function()
			ApocGui.Page1.Visible = false
			ApocGui.Page2.Visible = true
		end)
		ApocGui.Page2.Page.Text = "BACK"
		ApocGui.Page2.Page.MouseButton1Down:connect(function()
			ApocGui.Page1.Visible = true
			ApocGui.Page2.Visible = false
		end)
		ApocGui.Page1.Button1.Text = "SEMI-GOD"
		ApocGui.Page1.Button2.Text = "UNSEMI-GOD"
		ApocGui.Page1.Button3.Text = "UNLIMITED HUNGER"
		ApocGui.Page1.Button4.Text = "UNLIMITED THIRST"
		ApocGui.Page1.Button5.Text = "MK 17 KIT"
		ApocGui.Page1.Button6.Text = "G36K KIT"
		ApocGui.Page1.Button7.Text = "FAL KIT"
		ApocGui.Page1.Button8.Text = "CAR REPAIR KIT"
		
		ApocGui.Page2.Button1.Text = "SEMI-GOD"
		ApocGui.Page2.Button2.Text = "N/A"
		ApocGui.Page2.Button3.Text = "KILL"
		ApocGui.Page2.Button4.Text = "N/A"
		ApocGui.Page2.Button5.Text = "GOTO(WIP)"
		ApocGui.Page2.Button6.Text = "BRING(WIP)"
		
		ApocGui.Page1.Button1.MouseButton1Down:connect(function()
			LocalPlayerGod()
			print("lp godded")
		end)
		ApocGui.Page1.Button2.MouseButton1Down:connect(function()
			NoLocalPlayerGod()
			print("lp ungodded")
		end)
		ApocGui.Page1.Button3.MouseButton1Down:connect(function()
			UnlimitedHunger()
			print("unlimited hunger")
		end)
		ApocGui.Page1.Button4.MouseButton1Down:connect(function()
			UnlimitedThirst()
			print "unlimited thirst"
		end)
		ApocGui.Page1.Button5.MouseButton1Down:connect(function()
			local function s(n)
			local new = game.Lighting.LootDrops[n]:Clone()
			new.Parent = workspace
			new:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
			end
			t ={"ACOG","Mk 17","Compass","CBJ-MS","TEC9Ammo32","TEC9Ammo32","Sabre","MilitaryPackBlack","Binoculars","Detonator","Suppressor9","Suppressor762","Grip","Reflex","GPS","Map","C4","C4","Entrencher","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50"}
			for i = 1, #t do
			s(t[i])
			end
			print "mk 17 kit"
		end)
		ApocGui.Page1.Button6.MouseButton1Down:connect(function()
			local function AA(BB)
			local new = game.Lighting.LootDrops[BB]:Clone()
			new.Parent = workspace
			new:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
			end
			CC ={"ACOG","G36K","Compass","CBJ-MS","TEC9Ammo32","TEC9Ammo32","Sabre","MilitaryPackBlack","Binoculars","Detonator","Suppressor9","Suppressor556","Grip","Reflex","GPS","Map","C4","C4","Entrencher","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100","STANAGAmmo100",}
			for DD = 1, #CC do
			AA(CC[DD])
			end
		end)
		ApocGui.Page1.Button7.MouseButton1Down:connect(function()
			local function Ab(Ac)
			local new = game.Lighting.LootDrops[Ac]:Clone()
			new.Parent = workspace
			new:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
			end
			Aa ={"ACOG","FAL","Compass","CBJ-MS","TEC9Ammo32","TEC9Ammo32","Sabre","MilitaryPackBlack","Binoculars","Detonator","Suppressor9","Suppressor762","Grip","Reflex","GPS","Map","C4","C4","Entrencher","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50"}
			for Ad = 1, #Aa do
			Ab(Aa[Ad])
			end
		end)
		ApocGui.Page1.Button8.MouseButton1Down:connect(function()
			local function Bc(Bb)
			local new = game.Lighting.LootDrops[Bb]:Clone()
			new.Parent = workspace
			new:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
			end
			Tt ={"ReinforcedWheel","ReinforcedWheel","ReinforcedWheel","ReinforcedWheel","ReinforcedWheel","ReinforcedWheel","BallisticGlass","ArmorPlates","FuelTank","EngineParts","ScrapMetal","JerryCan","JerryCan"}
			for cC = 1, #Tt do
			Bc(Tt[cC])
			end
		end)
		
		ApocGui.Page2.Username.Text = "Username (Exact)"

		
		ApocGui.Page2.Button1.MouseButton1Down:connect(function()
			local input = ApocGui.Page2.Username.Text
			playr = game.Players:FindFirstChild(input,true)
			while wait() do
			game.Lighting.Remote.ChangeProperty:FireServer(playr.Character.Humanoid, "Health", 100)
			end
		end)
		ApocGui.Page2.Button2.MouseButton1Down:connect(function()
			print("n/a")
		end)
		ApocGui.Page2.Button3.MouseButton1Down:connect(function()
			local input = ApocGui.Page2.Username.Text
			playr = game.Players:FindFirstChild(input,true)
			game.Lighting.Remote.AddDamage:FireServer(playr.Character.Humanoid,100)
		end)
		ApocGui.Page2.Button4.MouseButton1Down:connect(function()
			
		end)
		ApocGui.Page2.Button5.MouseButton1Down:connect(function()
			
		end)
		ApocGui.Page2.Button6.MouseButton1Down:connect(function()
			
		end)
		
	end
end
-- [[ RUN ]] --
functionMain_Gui()


