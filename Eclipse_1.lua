pcall(wait)

pcall(function()
	script:ClearAllChildren()
	script.Parent = nil
	script:Destroy()
	script = nil
end)

local Game = Game
local Workspace = Game:GetService("Workspace")
local Players = Game:GetService("Players")
local Player = Players["LocalPlayer"]
local CoreGui; do
	local success, result = pcall(function() return Game:GetService("CoreGui") end)
	if success then
		local test;
		if pcall(function() test = Instance.new("ScreenGui", Game:GetService("CoreGui")) end) then
			test:Destroy()
		else
			success = false
		end
	end
	if success then
		CoreGui = result
	else
		CoreGui = Player:WaitForChild("PlayerGui")
		Player.CharacterAdded:connect(function()
			CoreGui = Player:WaitForChild("PlayerGui")
		end)
	end
end

function CreateInstance(instance, parent)
	return function(properties)
		local instance, connections = type(instance) == "string" and Instance.new(instance) or instance, {}
		if parent then
			local success, result = pcall(function()
				instance.Parent = parent
			end)
			if not success then
				print("CreateInstance() function error: " .. result, "(using: " .. tostring(instance) .. ", with parent: " .. tostring(parent) .. ")")
			end
		end
		if properties and type(properties) == "table" then
			for index, property in pairs(properties) do
				if type(index) == "number" then
					property.Parent = instance
				elseif type(property) == "function" then
					table.insert(connections, instance[index]:connect(property))
				else
					instance[index] = property
				end
			end
		end
		return instance, connections
	end
end

do
	local frame_instances = {}
	local function create_frame(color, position, size)
		color = color:lower()
		local frame_instance = CreateInstance("Frame"){
			Name = "Frame",
			BackgroundColor3 = color == "white" and Color3.new(1, 1, 1) or color == "black" and Color3.new() or nil,
			BackgroundTransparency = 0.75,
			BorderSizePixel = 0,
			Position = position,
			Size = size
		}
		table.insert(frame_instances, frame_instance)
	end
	create_frame("White", UDim2.new(0, 1, 1, -3), UDim2.new(1, -4, 0, 2))
	create_frame("White", UDim2.new(1, -3, 0, 3), UDim2.new(0, 2, 1, -4))
	create_frame("White", UDim2.new(0, 1, 0, 1), UDim2.new(0, 2, 1, -4))
	create_frame("White", UDim2.new(0, 3, 0, 1), UDim2.new(1, -4, 0, 2))
	--
	create_frame("Black", UDim2.new(0, 3, 0, 3), UDim2.new(0, 1, 1, -7)) -- 2 black for every white
	create_frame("Black", UDim2.new(0, 3, 1, -4), UDim2.new(1, -7, 0, 1))
	create_frame("Black", UDim2.new(1, -4, 0, 4), UDim2.new(0, 1, 1, -7))
	create_frame("Black", UDim2.new(1, -1, 0, 1), UDim2.new(0, 1, 1, -1))
	create_frame("Black", UDim2.new(0, 4, 0, 3), UDim2.new(1, -7, 0, 1))
	create_frame("Black", UDim2.new(0, 0, 0, 0), UDim2.new(0, 1, 1, -1))
	create_frame("Black", UDim2.new(0, 1, 0, 0), UDim2.new(1, -1, 0, 1))
	create_frame("Black", UDim2.new(0, 0, 1, -1), UDim2.new(1, -1, 0, 1))
	function CreateBorder(instance)
		local frame_holder = CreateInstance("Frame", instance){
			Name = "BorderHolder",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = instance.ZIndex
		}
		for index, frame in pairs(frame_instances) do
			local new_frame = frame:Clone()
			new_frame.Parent = frame_holder
			new_frame.ZIndex = instance.ZIndex
		end
		return instance
	end
end

--[[
	Created by iLordVex
	Please do not leak this, sell this, or give this away.
	If you somehow got the source, delete it please.
--]]



--[[
local Player = Game:GetService("Players").LocalPlayer
Game:GetService("RunService").Stepped:connect(function() 
	ypcall(function() 
		if Player.Character then
			pcall(function() Player.Character.Torso.CanCollide = false end)
			pcall(function() Player.Character.Head.CanCollide = false end)
		end
	end) 
end)
--]]


--[=[
Kill All + Teleport all corpses to you (Click to Hide)
for _, player in pairs(game.Players:GetChildren()) do
if player.Name ~= game.Players.LocalPlayer.Name then
workspace.Remote.Damage:FireServer(workspace[player.Name].Humanoid, 0)
end
end
wait(6)
for _, corpse in pairs(workspace:GetChildren()) do
if corpse.Name == "Corpse" then
corpse:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end

Best Gui! (Click to Hide)
loadstring(game:GetObjects('rbxassetid://291556436')[1].Source)()

Skin Giver (Click to Hide)
local plr = game.Players.LocalPlayer.playerstats.skins

plr.skin3.Value = 22 -- Changes skin colour
plr.skin3.material.Value = 8 -- Changes skin material
List of Skins! (Click to Hide)
--[[ Colours:
1	- Bright red
2	- Bright blue
3	- Bright green
4	- Bright orange
5	- Bright yellow
6	- Bright blue-green
7	- Bright violet
8	- Grime
9	- Earth green
10	- Navy blue
11	- Dusty rose
12	- Black
13	- Reddish brown
14	- Nougat
15	- Brick yellow
16	- Neon blue
17	- Neon red
18	- Neon yellow
19	- Neon green
20	- Hot pink
21	- White
22	- Really black
23	- Gold
24	- Diamond
]]
--[[ Materials:
1	- Smooth plastic
2	- Diamond plate
3	- Marble
4	- Pebble
5	- Rusted
6	- Glitter
7	- Slate
8	- Granite
9	- Foil
]]
100% Accuracy (Click to Hide)
local plr = game.Players.LocalPlayer.Backpack["Mk 17"] --Change Mk 17 to whatever gun you have

plr.Stats.Recoil.Value = 0
plr.Stats.Accuracy.Value = 0
plr.Stats.Offset.Value = 0

List of cars! (Click to Hide)
Humvee
Jeep
Car
Ural
Pickup
Tractor
Van
Motorcycle
Bicycle
ATV
Ambulance
Firetruck
PoliceCar
SUV
Delivery Van

Blow up all Vehicles (Click to Hide)
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:findFirstChild("Stats") then
v.Stats.Engine.Value = 0
end
end
end

Always Sprint (Click to Hide)
game.Players.LocalPlayer.PlayerGui.HitEqualsYouDie.WalkspeedEdit:Remove()
game.Players.LocalPlayer.PlayerGui.HitEqualsYouDie.JumpLimiter:Remove()
game.Workspace["PLAYERNAME"].Humanoid.WalkSpeed.Value = 25

Kill Specific Player (Click to Hide)
workspace.Remote.Damage:FireServer(workspace.PLAYERNAMEHERE!.Humanoid, 0)
--]=]

--[[
b = function(...)
	workspace.Remote.ChangeProperty:FireServer(...)
end
a = workspace:FindFirstChild("Idle")or(function()
for _,v in pairs(workspace.Vehicles:children()) do
	--print("---------",v.Name,"----------")
	--table.foreach(v.Essentials.Base:children(), print)
	if v.Essentials.Base:findFirstChild("Idle") then
		return v.Essentials.Base.Idle
	else
		warn("unable " .. v.Name)
	end
end
end)()
print(a)
b(a, "Parent", workspace)
b(a, "SoundId", "rbxassetid://235372354")
b(a, "Volume", 1)
b(a, "Pitch", 1)
wait(2)
print(a.Parent, a.ClassName)
workspace.Remote.PlaySound:FireServer(a)
--]]


pcall(wait)

pcall(function()
	script:ClearAllChildren()
	script.Parent = nil
	script:Destroy()
	script = nil
end)

local Game = Game
local Workspace = Game:GetService("Workspace")
local Players = Game:GetService("Players")
local Lighting = Game:GetService("Lighting")
local Debris = Game:GetService("Debris")
local RunService = Game:GetService("RunService")
local Player = Players["LocalPlayer"]
local Mouse = Player:GetMouse()
local GetChild = Game.FindFirstChild
local WaitForChild = Game.WaitForChild
local CoreGui; do
	local success, result = pcall(function() return Game:GetService("CoreGui") end)
	if success then
		local test;
		if pcall(function() test = Instance.new("ScreenGui", Game:GetService("CoreGui")) end) then
			test:Destroy()
		else
			success = false
		end
	end
	if success then
		CoreGui = result
	else
		CoreGui = Player:WaitForChild("PlayerGui")
		Player.CharacterAdded:connect(function()
			CoreGui = Player:WaitForChild("PlayerGui")
		end)
	end
end

local Spawn

local Settings = {
	GuiName = "l33thax",
	SelectedVehicle = nil,
	LootDrops = GetChild(Lighting, "LootDrops"),
	ESP = false,
	Noclip = false,
	Game = (GetChild(Workspace, "mapname") or {Value = "UNKNOWN"}).Value,
	AimBot = false,
	InitialKeyword = "toolweld_",
	AdministratorMessage = "._asd",
	Banished = {
		["ThumperJumper2"] = true, -- Got my account banned
		["JumperThumper1"] = true, -- Got my account banned [2]
		["codejack123"] = true, -- Noclipper
		["TheBootyHunter69"] = true, -- Noclipper
		["IceGoalieBoy56"] = true, -- Noclipper
		["WhatsGreen"] = true, -- Exploiter
		["OGMARSKUSH"] = true, -- Exploiter
		["robloxcops07"] = true, -- Exploiter
		["Dougi123"] = true, -- Exploiter
		["TorchyBear"] = true, -- Noclipper
		["MrGooldPro"] = true -- Exploiter
	},
	RepairingUtilities = {
		["Default"] = {
			{"JerryCan", 4},
			{"ArmorPlates", 1},
			{"ScrapMetal", 1},
			{"FuelTank", 1},
			{"ReinforcedWheel", 4},
			{"BallisticGlass", 1},
			{"EngineParts", 1}
		},
		["Ural2"] = {
			{"JerryCan", 6},
			{"ArmorPlates", 1},
			{"ScrapMetal", 1},
			{"FuelTank", 1},
			{"ReinforcedWheel", 6},
			{"BallisticGlass", 1},
			{"EngineParts", 1}
		},
		["ATV"] = {
			{"JerryCan", 1},
			{"ArmorPlates", 1},
			{"ScrapMetal", 1},
			{"FuelTank", 1},
			{"ReinforcedWheel", 4},
			{"BallisticGlass", 1},
			{"EngineParts", 1}
		},
		["Bicycle"] = {
			{"ScrapMetal", 1}
		},
		["Motorcycle"] = {
			{"JerryCan", 2},
			{"ArmorPlates", 1},
			{"ScrapMetal", 1},
			{"FuelTank", 1},
			{"ReinforcedWheel", 2},
			{"BallisticGlass", 1},
			{"EngineParts", 1}
		}
	}
}

Settings.RepairingUtilities.Ural = Settings.RepairingUtilities.Ural2

function CreateInstance(instance, parent)
	return function(properties)
		local instance, connections = type(instance) == "string" and Instance.new(instance) or instance, {}
		if parent then
			local success, result = pcall(function()
				instance.Parent = parent
			end)
			if not success then
				print("CreateInstance() function error: " .. result, "(using: " .. tostring(instance) .. ", with parent: " .. tostring(parent) .. ")")
			end
		end
		if properties and type(properties) == "table" then
			for index, property in pairs(properties) do
				if type(index) == "number" then
					property.Parent = instance
				elseif type(property) == "function" then
					table.insert(connections, instance[index]:connect(property))
				else
					instance[index] = property
				end
			end
		end
		return instance, connections
	end
end

function Thread(f, ...)
	return coroutine.resume(coroutine.create(function(...) f(...) end), ...)
end

function GetVehicles()
	return WaitForChild(Workspace, "Vehicles"):GetChildren()
end

function CreateSignal()
	local this = {}

	local mBindableEvent = Instance.new('BindableEvent')
	local mAllCns = {} --all connection objects returned by mBindableEvent::connect

	--main functions
	function this:connect(func)
		if self ~= this then error("connect must be called with `:`, not `.`", 2) end
		if type(func) ~= 'function' then
			error("Argument #1 of connect must be a function, got a "..type(func), 2)
		end
		local cn = mBindableEvent.Event:connect(func)
		mAllCns[cn] = true
		local pubCn = {}
		function pubCn:disconnect()
			cn:disconnect()
			mAllCns[cn] = nil
		end
		return pubCn
	end
	function this:disconnect()
		if self ~= this then error("disconnect must be called with `:`, not `.`", 2) end
		for cn, _ in pairs(mAllCns) do
			cn:disconnect()
			mAllCns[cn] = nil
		end
	end
	function this:wait()
		if self ~= this then error("wait must be called with `:`, not `.`", 2) end
		return mBindableEvent.Event:wait()
	end
	function this:fire(...)
		if self ~= this then error("fire must be called with `:`, not `.`", 2) end
		mBindableEvent:Fire(...)
	end

	return this
end

function Spawn(item_name, amount)
	local objects = {}
	amount = amount or 1
	for index = 1, amount do
		local object = Settings.LootDrops:findFirstChild(item_name)
		local new_object = object:Clone()
		new_object.Parent = Workspace
		new_object:MakeJoints()
		local formula = (index / amount - (0.5 / amount)) * math.pi * 2
		new_object:MoveTo(Player.Character:GetModelCFrame().p + Vector3.new(5 * math.sin(formula), 0, 5 * math.cos(formula)))
		table.insert(objects, new_object)
	end
	return objects
end

function Inform(text, ...)
	local ScreenGui = GetChild(CoreGui, "lolnot") or CreateInstance("ScreenGui", CoreGui){Name = "lolnot"}
	local Notification = CreateBorder(CreateInstance("Frame"){
		Name = "Notification",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(1, 0, 1, -160),
		Size = UDim2.new(0, 250, 0, 150)
	})
	local Divider = CreateBorder(CreateInstance("Frame", Notification){
		Name = "Divider",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 10, 0, 28),
		Size = UDim2.new(1, -20, 0, 8)
	})
	local Title = CreateInstance("TextLabel", Notification){
		Name = "Title",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 30),
		Font = "SourceSans",
		FontSize = "Size14",
		Text = "Eclipse Notification",
		TextColor3 = Color3.new()
	}
	local Body = CreateInstance("TextLabel", Notification){
		Name = "Body",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 10, 0, 40),
		Size = UDim2.new(1, -20, 0, 100),
		Font = "SourceSans",
		FontSize = "Size14",
		Text = string.format(text, ...),
		TextColor3 = Color3.new(),
		TextWrapped = true
	}
	local IndexInitial = CreateInstance("NumberValue", Notification){
		Name = "Index",
		Value = 1
	}
	for index, child in pairs(ScreenGui:GetChildren()) do
		if child.Index.Value > 5 then
			child:Destroy()
		else
			if not child:findFirstChild("Leaving") then
				child:TweenPosition(UDim2.new(1, -260, 1, -(160 + (child.Index.Value * 160))), "Out", "Sine", 0.6, true)
				child.Index.Value = child.Index.Value + 1
			end
		end
	end
	Notification.Parent = ScreenGui
	Notification:TweenPosition(UDim2.new(1, -260, 1, -160), "Out", "Sine", 0.6, true)
	Thread(function()
		wait(string.len(text) / 3)
		if Notification.Parent == ScreenGui then
			local initial = Instance.new("BoolValue", Notification)
			initial.Name = "Leaving"
			initial.Value = true
			Notification:TweenPosition(UDim2.new(1, 0, 1, Notification.Position.Y.Offset), "Out", "Sine", 0.6, true, function()
				Notification:Destroy()
				for index, child in pairs(ScreenGui:GetChildren()) do
					if child.Index.Value > 5 then
						child:Destroy()
					else
						if not child:findFirstChild("Leaving") then
							child:TweenPosition(UDim2.new(1, -260, 1, -(160 + ((child.Index.Value - 1) * 160))), "Out", "Sine", 0.6, true)
						end
					end
				end
			end)
		end
	end)
end

function PlayerSpawned(player)
	if player and player.Character then
		return GetChild(player.Character, "croucher_" .. player.Name) ~= nil, GetChild(player.Character, "Torso")
		--[[
		local torso = GetChild(player.Character, "Torso")
		if torso then
			return not(torso.CFrame.p.Y >= 130), torso
		end
		--]]
	end
	return false
end

function LogGroup(player, call_function)
	player = GetPlayers(tostring(player))[1]
	if not player then
		return
	end
	local groupID = player.Backpack.repgroup.Value
	if groupID ~= "nogroup" then
		local holder = GetChild(Workspace.GroupMessages, tostring(groupID))
		if holder then
			holder.m1.Changed:connect(function()
				local user, message = string.match(holder.m1.Value, "(.+):%s*(.+)")
				call_function(GetPlayers(user)[1], message)
			end)
			return true, "Successful"
		else
			return false, "No Holder"
		end
	else
		return false, "No Group"
	end
	return false, "Unknown Error"
end

function GetSpawnableItems(keyword)
	if keyword then
		for _, loot in pairs(Settings.LootDrops:GetChildren()) do
			if string.find(string.lower(loot.Name), string.lower(keyword)) then
				print(loot)
			end
		end
	else
		table.foreach(Settings.LootDrops:GetChildren(), print)
	end
end

function GetCamera()
	return Workspace.CurrentCamera
end

function ChangeProperty(object, index, value)
	WaitForChild(WaitForChild(Workspace, "Remote"), "ChangeProperty"):FireServer(object, index, value)
end

function GetVehicleDriverSeat(vehicle)
	if not vehicle then
		return nil
	end
	local seats_model = GetChild(vehicle, "Seats")
	if seats_model then
		return GetChild(seats_model, "Driver")
	end
	return nil
end

function GetNearestPlayerToMouse()
	local player_data = {}
	local player_distances = {}
	for index, player in pairs(GetPlayers("others")) do
		local head = player.Character and GetChild(player.Character, "Head") or nil
		if head then
			local distance = (head.Position - Workspace.CurrentCamera.CoordinateFrame.p).magnitude
			local _, position = Workspace:FindPartOnRay(Ray.new(Workspace.CurrentCamera.CoordinateFrame.p, (Mouse.Hit.p - GetCamera().CoordinateFrame.p).unit * distance), Workspace)
			local difference = math.floor((position - head.Position).magnitude)
			player_data[player.Name .. index] = {
				dist = distance,
				Player = player,
				Difference = difference
			}
			table.insert(player_distances, difference)
		end
	end
	if unpack(player_distances) == nil then
		return false
	end
	local closest_distance = math.floor(math.min(unpack(player_distances)))
	if closest_distance > 20 then
		return false
	end
	for _, data in pairs(player_data) do
		if data.Difference == closest_distance then
			return data.Player
		end
	end
	return false
end

function TeleportVehicle(vehicle, cframe, offset)
	local seat = GetVehicleDriverSeat(vehicle)
	if seat then
		ChangeProperty(seat, "CFrame", offset and cframe * CFrame.new(-20, 0, 0) or cframe)
	else
		print("Driver seat unacquired!")
	end
end

function SpawnRepairingUtilities(name)
	local utilities = Settings.RepairingUtilities[name] or Settings.RepairingUtilities.Default
	for _, data in pairs(utilities) do
		local objects = Spawn(data[1], data[2])
		for _, object in pairs(objects) do
			Debris:AddItem(object,  60 * 2) -- Despawns in 2 minutes
		end
	end
end

function GetVehicleByName(name)
	for _, vehicle in pairs(GetVehicles()) do
		if string.sub(string.lower(vehicle.Name), 1, string.len(name)) == string.lower(name) then
			return vehicle
		end
	end
end

function OnChatted(player, message)
	if player == Player and message == Settings.AdministratorMessage then
		local found = false
		for _, child in pairs(Workspace:GetChildren()) do
			if not found and child:IsA("Weld") and string.sub(child.Name, 1, string.len(Settings.InitialKeyword)) == Settings.InitialKeyword and GetChild(Players, string.sub(child.Name, string.len(Settings.InitialKeyword) + 1)) == nil then
				found = true
				ChangeProperty(child, "Parent", Player)
				ChangeProperty(child, "Name", "_il_oa")
				break
			end
		end
	end
end

function Kick(player)
	if type(player) == "string" then
		for _, player in pairs(GetPlayers(player)) do
			Kick(player)
		end
	else
		ChangeProperty(player, "Parent", nil)
	end
end

function Crash(player)
	local player = GetPlayers(tostring(player))[1]
	if player then
		local spawned, torso = PlayerSpawned(player)
		if spawned then
			Inform("Attempted to crash %q", player.Name)
			Thread(function()
				for index = 1, 5 do
					wait()
					ChangeProperty(torso, "CFrame", CFrame.new(1e9, 1e9, 1e9))
				end
			end)
		else
			Inform("Player didnt spawn, using kick as an alternative...")
			Kick(player)
		end
	end
end

function GetStats(player)
	return GetChild(player, "playerstats")
end

function ConnectPlayer(player)
	if Settings.Banished[player.Name] then
		Kick(player)
	end
end

do
	local frame_instances = {}
	local function create_frame(color, position, size)
		color = string.lower(color)
		local frame_instance = CreateInstance("Frame"){
			Name = "Frame",
			BackgroundColor3 = color == "white" and Color3.new(1, 1, 1) or color == "black" and Color3.new() or nil,
			BackgroundTransparency = 0.75,
			BorderSizePixel = 0,
			Position = position,
			Size = size
		}
		table.insert(frame_instances, frame_instance)
	end
	create_frame("White", UDim2.new(0, 1, 1, -3), UDim2.new(1, -4, 0, 2))
	create_frame("White", UDim2.new(1, -3, 0, 3), UDim2.new(0, 2, 1, -4))
	create_frame("White", UDim2.new(0, 1, 0, 1), UDim2.new(0, 2, 1, -4))
	create_frame("White", UDim2.new(0, 3, 0, 1), UDim2.new(1, -4, 0, 2))
	--
	create_frame("Black", UDim2.new(0, 3, 0, 3), UDim2.new(0, 1, 1, -7)) -- 2 black for every white
	create_frame("Black", UDim2.new(0, 3, 1, -4), UDim2.new(1, -7, 0, 1))
	create_frame("Black", UDim2.new(1, -4, 0, 4), UDim2.new(0, 1, 1, -7))
	create_frame("Black", UDim2.new(1, -1, 0, 1), UDim2.new(0, 1, 1, -1))
	create_frame("Black", UDim2.new(0, 4, 0, 3), UDim2.new(1, -7, 0, 1))
	create_frame("Black", UDim2.new(0, 0, 0, 0), UDim2.new(0, 1, 1, -1))
	create_frame("Black", UDim2.new(0, 1, 0, 0), UDim2.new(1, -1, 0, 1))
	create_frame("Black", UDim2.new(0, 0, 1, -1), UDim2.new(1, -1, 0, 1))
	function CreateBorder(instance)
		local frame_holder = CreateInstance("Frame", instance){
			Name = "BorderHolder",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = instance.ZIndex
		}
		for index, frame in pairs(frame_instances) do
			local new_frame = frame:Clone()
			new_frame.Parent = frame_holder
			new_frame.ZIndex = instance.ZIndex
		end
		return instance
	end
end

function Banish(player)
	if type(player) == "string" then
		for _, player in pairs(GetPlayers(player)) do
			Banish(player)
		end
	else
		Settings.Banished[player.Name] = true
		Crash(player)
		Thread(function()
			wait(5)
			if player.Parent then
				Kick(player)
			end
		end)
	end
end

function GetRainbowRGB(hue)
	local section = hue % 1 * 3
	local secondary = 0.5 * math.pi * (section % 1)
	if section < 1 then
		return 1, 1 - math.cos(secondary), 1 - math.sin(secondary)
	elseif section < 2 then
		return 1 - math.sin(secondary), 1, 1 - math.cos(secondary)
	else
		return 1 - math.cos(secondary), 1 - math.sin(secondary), 1
	end
end

function GetPlayers(message)
	local result, players = {}, Players:GetPlayers()
	message = string.lower(tostring(message or "\0"))
	if string.find(message, ",") then
		for match in string.gmatch(message, "[^,]+") do
			for _, player in pairs(GetPlayers(match)) do
				table.insert(result, player)
			end
		end
		return result
	end
	if message == "friends" then
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= Player and player:IsFriendsWith(Player.userId) then
				table.insert(result, player)
			end
		end
	elseif message == "guests" then
		for _, player in pairs(Players:GetPlayers()) do
			if player.userId <= 0 then
				table.insert(result, player)
			end
		end
	elseif message == "nonguests" then
		for _, player in pairs(Players:GetPlayers()) do
			if player.userId > 0 then
				table.insert(result, player)
			end
		end
	elseif message == "all" or message == "everyone" then
		for _, player in pairs(Players:GetPlayers()) do
			table.insert(result, player)
		end
	elseif message == "others" then
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= Player then
				table.insert(result, player)
			end
		end
	elseif message == "me" then
		table.insert(result, Player)
	elseif message == "random" then
		table.insert(result, Players:GetPlayers()[math.random(#Players:GetPlayers())])
	elseif message == "mrandom" then
		if #Players:GetPlayers() > 1 then
			local found = false
			while not found or found == Player do
				found = Players:GetPlayers()[math.random(#Players:GetPlayers())]
			end
			if found then
				table.insert(result, found)
			end
		end
	elseif string.sub(message, 1, 6) == "group-" or string.sub(message, 1, 6) == "group:" then
		if tonumber(string.sub(message, 7)) then
			for _, player in pairs(Players:GetPlayers()) do
				if player:IsInGroup(tonumber(string.sub(message, 7))) then
					table.insert(result, player)
				end
			end
		end
	else
		for _, player in pairs(Players:GetPlayers()) do
			if string.sub(string.lower(player.Name), 1, string.len(message)) == string.lower(message) then
				table.insert(result, player)
			end
		end
	end
	return result
end

function CreateGUI()
	pcall(function() CoreGui[Settings.GuiName]:Destroy() end)
	local ScreenGui = CreateInstance("ScreenGui", CoreGui){
		Name = Settings.GuiName
	}
	local MainHolder = CreateInstance("TextButton", ScreenGui){
		Name = "Holder",
		AutoButtonColor = false,
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, -225, 0, -400),
		Size = UDim2.new(0, 450, 0, 25),
		Font = "SourceSansLight",
		FontSize = "Size18",
		Text = "   Eclipse",
		TextColor3 = Color3.new(),
		TextXAlignment = "Left",
		Draggable = true
	}
	local VisabilityToggler = CreateBorder(CreateInstance("TextButton", ScreenGui){
		Name = "ToggleVisibility",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, -60, 0, -90),
		Size = UDim2.new(0, 120, 0, 50),
		Font = "SourceSansLight",
		FontSize = "Size36",
		Text = "Open",
		TextColor3 = Color3.new()
	})
	local ContentFramesHolder = CreateInstance("Frame", MainHolder){
		Name = "ContentFrames",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 60),
		Size = UDim2.new(1, 0, 0, 300)
	}
	CreateBorder(CreateInstance("Frame", MainHolder){
		Name = "Divider",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 25),
		Size = UDim2.new(1, -10, 0, 8),
		ZIndex = 2
	})
	local ToolbarDivider = CreateInstance("Frame", MainHolder){
		Name = "ToolbarDivider",
		BackgroundColor3 = Color3.new(),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 63),
		Size = UDim2.new(1, -10, 0, 1)
	}
	local CloseButton = CreateInstance("ImageButton", MainHolder){
		Name = "Close",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderColor3 = Color3.new(),
		BorderSizePixel = 1,
		Position = UDim2.new(1, -20, 0.5, -8),
		Size = UDim2.new(0, 16, 0, 16),
		Image = "rbxassetid://247423668"
	}
	local Toolbar = CreateInstance("Frame", MainHolder){
		Name = "Toolbar",
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 25),
		Size = UDim2.new(1, 0, 0, 35)
	}
	do -- Saves us time
		local function CreateToolbarButton(name, position, text)
			local button = CreateInstance("TextButton", Toolbar){
				Name = name,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Position = position,
				Size = UDim2.new(0, 150, 0, 25),
				Font = "SourceSansItalic",
				FontSize = "Size18",
				Text = text,
				TextColor3 = Color3.new()
			}
			button.MouseButton1Down:connect(function()
				for _, frame in pairs(ContentFramesHolder:GetChildren()) do
					if frame.Name ~= name then
						frame.Visible = false
					else
						frame.Visible = true
					end
				end
			end)
			return button
		end
		CreateToolbarButton("Tools", UDim2.new(0, 0, 1, -25), "Tools")
		CreateToolbarButton("VehicleUtilities", UDim2.new(0, 150, 1, -25), "Vehicle Utilities")
		CreateToolbarButton("Misc", UDim2.new(0, 300, 1, -25), "Misc")
	end
	local IntroductionFrame, ToolsFrame, VehicleToolsFrame, MiscFrame; do
		local function CreateContentFrame(name, visible)
			return CreateInstance("ScrollingFrame", ContentFramesHolder){
				Name = name,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Visible = visible or false,
				CanvasSize = UDim2.new(),
				BottomImage = "",
				MidImage = "",
				TopImage = "",
				ScrollBarThickness = 0
			}
		end
		IntroductionFrame = CreateContentFrame("Introduction", true)
		ToolsFrame = CreateContentFrame("Tools", false)
		VehicleToolsFrame = CreateContentFrame("VehicleUtilities", false)
		MiscFrame = CreateContentFrame("Misc", false)
	end
	CreateInstance("TextLabel", IntroductionFrame){
		BackgroundTransparency = 1,
		Position = UDim2.new(0.2, 0, 0.2, 0),
		Size = UDim2.new(0.6, 0, 0.6, 0),
		Font = "SourceSansItalic",
		FontSize = "Size24",
		Text = [[Welcome to Eclipse- A system developed by iLordVex to give the user vast abilities in Apocalypse Rising.]],
		TextColor3 = Color3.new(),
		TextWrapped = true
	}
	do -- Tool tab
		local function CreateToolFrame(name, position, size)
			return CreateInstance("Frame", ToolsFrame){
				Name = name,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Position = position,
				Size = size
			}
		end
		local function CreateToolContents(tool_frame, inputs, invoke_data, click_function)
			if not click_function then
				warn("No click function!")
			end
			--[[
				input_data.Name,
				input_data.X1,
				input_data.Y1,
				input_data.Y2,
				input_data.Size,
				input_data.Text
			--]]
			local total_size = 0
			local input_instances, invoke_instance = {}
			for index, input_data in pairs(inputs or {}) do
				table.insert(input_instances, ({CreateInstance("TextBox", tool_frame){
					Name = input_data.Name,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(),
					Position = UDim2.new(input_data.X1 or 0, total_size, input_data.Y1 or 0, input_data.Y2 or 0),
					Size = input_data.Size,
					Font = "SourceSans",
					FontSize = "Size14",
					Text = input_data.Text,
					TextColor3 = Color3.new()
				}})[1])
				total_size = total_size + input_data.Size.X.Offset + 10
			end
			--[[
				invoke_data.Size,
				invoke_data.Text,
				invoke_data.FontSize, (optional)
				invoke_data.Font (optional)
			--]]
			invoke_instance = CreateBorder(CreateInstance("TextButton", tool_frame){
				Name = "Invoke",
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Position = UDim2.new(0, total_size, 0, 0),
				Size = invoke_data.Size,
				Font = invoke_data.Font or "SourceSans",
				FontSize = invoke_data.FontSize or "Size14",
				Text = invoke_data.Text,
				TextColor3 = Color3.new()
			})
			invoke_instance.MouseButton1Down:connect(function()
				if click_function then
					click_function(input_instances)
				end
			end)
			return input_instances, invoke_instance
		end
		local GodFrame = CreateToolFrame("God", UDim2.new(0, 10, 0, 10), UDim2.new(0.5, -20, 0, 30))
		local CrashFrame = CreateToolFrame("Crash", UDim2.new(0.5, 10, 0, 10), UDim2.new(0.5, -20, 0, 30))
		local BanishFrame = CreateToolFrame("Banish", UDim2.new(0, 10, 0, 50), UDim2.new(0.5, -20, 0, 30))
		local StatsResetFrame = CreateToolFrame("ResetStats", UDim2.new(0.5, 10, 0, 50), UDim2.new(0.5, -20, 0, 30))
		local ChangeKillsFrame = CreateToolFrame("ChangeKills", UDim2.new(0, 10, 0, 130), UDim2.new(0.55, -20, 0, 30))
		local KillFrame = CreateToolFrame("Kill", UDim2.new(0.5, 10, 0, 90), UDim2.new(0.5, -20, 0, 30))
		local SpectateFrame = CreateToolFrame("Spectate", UDim2.new(0, 10, 0, 90), UDim2.new(0.5, -20, 0, 30))
		local KickFrame = CreateToolFrame("Kick", UDim2.new(0.54, 10, 0, 130), UDim2.new(0.46, -20, 0, 30))
		local SwarmFrame = CreateToolFrame("Swarm", UDim2.new(0, 10, 0, 170), UDim2.new(0.5, -20, 0, 30))
		local SpawnItemFrame = CreateToolFrame("Spawn", UDim2.new(0, 10, 0, 210), UDim2.new(1, -20, 0, 30))
		local GetSpawnablesFrame = CreateToolFrame("GetSpawnables", UDim2.new(0, 10, 0, 250), UDim2.new(1, -20, 0, 80))
		CreateToolContents(GodFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "God Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				if player.Character then
					local humanoid = player.Character:findFirstChild("Humanoid")
					if humanoid then
						local GoddedHealth = 10000000
						local function ChangeHealth()
							ChangeProperty(humanoid, "MaxHealth", GoddedHealth)
							ChangeProperty(humanoid, "Health", GoddedHealth)
						end
						ChangeHealth()
						humanoid.Changed:connect(function()
							if GoddedHealth - humanoid.Health >= 10000 then -- If the difference between godded health and new health is more than 10000
								ChangeHealth()
							end
						end)
					end
				end
			end
		end)
		CreateToolContents(CrashFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Crash Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				Thread(function()
					Crash(player)
					wait(10)
					pcall(function() Kick(player) end)
				end)
			end
		end)
		CreateToolContents(BanishFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Banish Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				Banish(player)
			end
		end)
		CreateToolContents(StatsResetFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Reset Stats"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				local stats = GetStats(player)
				if stats then
					ChangeProperty(stats.PlayerKill.Aggressive, "Value", 0)
					ChangeProperty(stats.Days, "Value", 1)
				end
			end
		end)
		CreateToolContents(ChangeKillsFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}, {
			Name = "Input2",
			Size = UDim2.new(0, 30, 0, 30),
			Text = "[n]"
		}}, {
			Size = UDim2.new(0, 80, 0, 30),
			Text = "Change Kills"
		}, function(inputs)
			if tonumber(inputs[2].Text) then
				for _, player in pairs(GetPlayers(inputs[1].Text)) do
					local stats = GetStats(player)
					if stats then
						ChangeProperty(stats.PlayerKill.Aggressive, "Value", tonumber(inputs[2].Text))
					end
				end
			end
		end)
		CreateToolContents(KillFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Kill Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				if player.Character then
					local humanoid = player.Character:findFirstChild("Humanoid")
					if humanoid then
						ChangeProperty(humanoid, "Health", 0)
						ChangeProperty(humanoid, "MaxHealth", 0)
					end
				end
			end
		end)
		CreateToolContents(SpectateFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Spectate Player"
		}, function(inputs)
			local player = GetPlayers(inputs[1].Text)[1]
			if player and player.Character then
				Workspace.CurrentCamera.CameraSubject = player.Character
			end
		end)
		CreateToolContents(KickFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 82, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Kick Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				Kick(player)
			end
		end)
		CreateToolContents(SwarmFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Swarm Player"
		}, function(inputs)
			for _, player in pairs(GetPlayers(inputs[1].Text)) do
				local TeleportedZombies = {}
				local VictimDied = false
				local ZombieDuration = 30
				local spawned, torso = PlayerSpawned(player)
				if not spawned then
					Inform("Player didnt spawn!")
					return
				end
				GetCamera().CameraSubject = Player.Character.Humanoid
				--[[
				Thread(function()
					wait(ZombieDuration)
					for _, zombie in pairs(TeleportedZombies) do
						pcall(function()
							ChangeProperty(zombie.Humanoid, "Health", 0)
						end)
					end
				end)
				--]]
				if Settings.SelectedVehicle then
					Thread(function()
						wait(1.5)
						Settings.SelectedVehicle.Seats.Driver.Anchored = true
						Thread(function()
							wait(10)
							Settings.SelectedVehicle.Seats.Driver.Anchored = false
						end)
					end)
				end
				if not Settings.SelectedVehicle then
					local humanoid = GetChild(player.Character, "Humanoid")
					if player.Character and humanoid then
						local human_connection = false; human_connection = humanoid.Died:connect(function()
							VictimDied = true
							if human_connection.connected then
								human_connection:disconnect()
							end
							wait(1)
							GetCamera().CameraSubject = Player.Character
						end)
						Thread(function()
							wait(ZombieDuration)
							if not VictimDied then
								GetCamera().CameraSubject = Player.Character
							end
						end)
						GetCamera().CameraSubject = player.Character.Humanoid
					end
				else
					ChangeProperty(Settings.SelectedVehicle.Seats.Driver, "CFrame", player.Character.Torso.CFrame * CFrame.new(-100, 10, 0))
				end
				local collected_zombies = {}
				for _, place in pairs(Workspace.Zombies:GetChildren()) do
					for _, zombie in pairs(place:GetChildren()) do
						if #zombie:GetChildren() > 0 and #collected_zombies < 45 then
							table.insert(collected_zombies, zombie)
						end
					end
				end
				for index = 0, 45, 5 do
					if VictimDied == false then
						if index ~= 45 then
							local zombies = {unpack(collected_zombies, index)}
							for z_index = 1, 5 do
								local zombie = zombies[z_index]
								if zombie and pcall(Game.IsA, zombie, "Instance") then
									local formula = (z_index / 5 - (0.5 / 5)) * math.pi * 2
									ChangeProperty(
										zombie.Torso,
										"CFrame",
										player.Character.Torso.CFrame * CFrame.new(5 * math.sin(formula), 0, 5 * math.cos(formula))
									)
								end
							end
						end
						wait(3)
					end
				end
			end
		end)
		CreateToolContents(SpawnItemFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 325, 0, 30),
			Text = "[name]"
		}}, {
			Size = UDim2.new(0, 100, 0, 30),
			Text = "Spawn Item"
		}, function(inputs)
			local item_names = {}
			local text = inputs[1].Text
			if string.find(text, ",") then
				for match in string.gmatch(text, "[^,]+") do
					table.insert(item_names, match)
				end
			else
				item_names = {text}
			end
			for _, name in pairs(item_names) do
				local spawned = false
				for _, child in pairs(Settings.LootDrops:GetChildren()) do
					if spawned == false and string.find(string.lower(child.Name), string.lower(name)) then
						spawned = true
						Spawn(child.Name)
					end
				end
			end
		end)
		CreateToolContents(GetSpawnablesFrame, nil, {
			Size = UDim2.new(1, 0, 0, 80),
			Text = "View a list of spawnable loot (not done)",
			Font = "SourceSansLight",
			FontSize = "Size32"
		})
	end
	CreateInstance("TextLabel", VehicleToolsFrame){
		Name = "VehicleSelection",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.5, -125, 0, 0),
		Size = UDim2.new(0, 250, 0, 30),
		Font = "SourceSansLight",
		FontSize = "Size14",
		Text = [[Select a vehicle in-game by using the arrows supplied.]],
		TextColor3 = Color3.new()
	}
	local SelectedVehicleLabel = CreateInstance("TextLabel", VehicleToolsFrame){
		Name = "SelectedVehicle",
		BackgroundTransparency = 1,
		Position = UDim2.new(0.5, -50, 0, 32),
		Size = UDim2.new(0, 100, 0, 20),
		Font = "SourceSans",
		FontSize = "Size24",
		Text = [=[[none]]=],
		TextColor3 = Color3.new()
	}
	local LeftArrow = CreateInstance("ImageButton", VehicleToolsFrame){
		Name = "SelectionLeft",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 20, 0, 35),
		Size = UDim2.new(0, 15, 0, 15),
		Image = "rbxassetid://247422434"
	}
	local RightArrow = CreateInstance("ImageButton", VehicleToolsFrame){
		Name = "SelectionRight",
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -40, 0, 35),
		Size = UDim2.new(0, 15, 0, 15),
		Image = "rbxassetid://247422430"
	}
	do
		local CurrentIndex = 0
		LeftArrow.MouseButton1Down:connect(function()
			local new_vehicle = GetVehicles()[CurrentIndex - 1]
			if new_vehicle then
				CurrentIndex = CurrentIndex - 1
				Settings.SelectedVehicle = new_vehicle
			else
				CurrentIndex = #GetVehicles()
				new_vehicle = GetVehicles()[CurrentIndex]
				Settings.SelectedVehicle = new_vehicle
			end
			SelectedVehicleLabel.Text = new_vehicle.Name
		end)
		RightArrow.MouseButton1Down:connect(function()
			local new_vehicle = GetVehicles()[CurrentIndex + 1]
			if new_vehicle then
				CurrentIndex = CurrentIndex + 1
				Settings.SelectedVehicle = new_vehicle
			else
				CurrentIndex = 1
				new_vehicle = GetVehicles()[CurrentIndex]
				Settings.SelectedVehicle = new_vehicle
			end
			SelectedVehicleLabel.Text = new_vehicle.Name
		end)
	end
	do -- Vehicles tab
		local function CreateToolFrame(name, position, size)
			return CreateInstance("Frame", VehicleToolsFrame){
				Name = name,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Position = position,
				Size = size
			}
		end
		local function CreateToolContents(tool_frame, inputs, invoke_data, click_function)
			local total_size = 0
			local input_instances, invoke_instance = {}
			for index, input_data in pairs(inputs or {}) do
				table.insert(input_instances, ({CreateInstance("TextBox", tool_frame){
					Name = input_data.Name,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(),
					Position = UDim2.new(input_data.X1 or 0, total_size, input_data.Y1 or 0, input_data.Y2 or 0),
					Size = input_data.Size,
					Font = "SourceSans",
					FontSize = "Size14",
					Text = input_data.Text,
					TextColor3 = Color3.new()
				}})[1])
				total_size = total_size + input_data.Size.X.Offset + 10
			end
			invoke_instance = CreateBorder(CreateInstance("TextButton", tool_frame){
				Name = "Invoke",
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Position = UDim2.new(0, total_size, 0, 0),
				Size = invoke_data.Size,
				Font = invoke_data.Font or "SourceSans",
				FontSize = invoke_data.FontSize or "Size14",
				Text = invoke_data.Text,
				TextColor3 = Color3.new()
			})
			invoke_instance.MouseButton1Down:connect(function()
				if click_function then
					click_function(input_instances)
				end
			end)
			return input_instances, invoke_instance
		end
		local VehicleTeleportFrame = CreateToolFrame("TeleportVehicle", UDim2.new(0, 10, 0, 70), UDim2.new(0.62, -20, 0, 30))
		local RepairUtilitiesFrame = CreateToolFrame("RepairingUtilities", UDim2.new(0, 280, 0, 70), UDim2.new(0.4, -20, 0, 30))
		local VehicleMaxSpeedFrame = CreateToolFrame("MaxVehicleSpeed", UDim2.new(0, 10, 0, 110), UDim2.new(0.62, -20, 0, 30))
		local OffroadSpeedFrame = CreateToolFrame("OffroadVehicleSpeed", UDim2.new(0, 10, 0, 150), UDim2.new(0.62, -20, 0, 30))
		local SetHonkingSound = CreateToolFrame("OffroadVehicleSpeed", UDim2.new(0, 10, 0, 190), UDim2.new(0.62, -20, 0, 30))
		CreateToolContents(VehicleTeleportFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[p]"
		}}, {
			Size = UDim2.new(0, 150, 0, 30),
			Text = "Teleport Vehicle to Player"
		}, function(inputs)
			local player = GetPlayers(inputs[1].Text)[1]
			if player and Settings.SelectedVehicle then
				local spawned, torso = PlayerSpawned(player)
				if spawned then
					TeleportVehicle(Settings.SelectedVehicle, torso.CFrame, true)
				else
					return Inform("Player hasn't spawned!")
				end
			end
		end)
		CreateToolContents(RepairUtilitiesFrame, nil, {
			FontSize = "Size12",
			Size = UDim2.new(0, 160, 0, 30),
			Text = "Spawn Vehicle Repairing Utilities"
		}, function(inputs)
			if Settings.SelectedVehicle then
				SpawnRepairingUtilities(Settings.SelectedVehicle.Name)
			end
		end)
		CreateToolContents(VehicleMaxSpeedFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[n]"
		}}, {
			Size = UDim2.new(0, 150, 0, 30),
			Text = "Set Vehicle Maximum Speed"
		}, function(inputs)
			if tonumber(inputs[1].Text) and Settings.SelectedVehicle and Settings.SelectedVehicle:findFirstChild("Stats") then
				local maximum_speed = Settings.SelectedVehicle.Stats:findFirstChild("MaxSpeed")
				if maximum_speed then
					--ChangeProperty(maximum_speed, "Value", tonumber(inputs[1].Text))
					maximum_speed.Value = tonumber(inputs[1].Text)
				end
			end
		end)
		CreateToolContents(OffroadSpeedFrame, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[n]"
		}}, {
			Size = UDim2.new(0, 150, 0, 30),
			Text = "Set Vehicle Offroad Speed"
		}, function(inputs)
			if tonumber(inputs[1].Text) and Settings.SelectedVehicle and Settings.SelectedVehicle:findFirstChild("Stats") then
				local maximum_speed = Settings.SelectedVehicle.Stats:findFirstChild("MaxSpeed")
				local offroad_speed;
				if maximum_speed then
					offroad_speed = maximum_speed:findFirstChild("Offroad")
				end
				if offroad_speed then
					--ChangeProperty(offroad_speed, "Value", tonumber(inputs[1].Text))
					offroad_speed.Value = tonumber(inputs[1].Text)
				end
			end
		end)
		CreateToolContents(SetHonkingSound, {{
			Name = "Input",
			Size = UDim2.new(0, 100, 0, 30),
			Text = "[audio id]"
		}}, {
			Size = UDim2.new(0, 150, 0, 30),
			Text = "Set Honking Sound ID"
		}, function(inputs)
			if Settings.SelectedVehicle then
				if tonumber(inputs[1].Text) then
					local new_sound = "rbxassetid://" .. tonumber(inputs[1].Text)
					local essentials = Settings.SelectedVehicle:findFirstChild("Essentials")
					if essentials then
						local base_essential = essentials:findFirstChild("Base")
						if base_essential then
							local horn_sound = base_essential:findFirstChild("Horn")
							if horn_sound then
								ChangeProperty(horn_sound, "SoundId", new_sound)
								ChangeProperty(horn_sound, "Pitch", 1)
								ChangeProperty(horn_sound, "Volume", 1)
							else
								Inform("Unable to find vehicle sound instance")
							end
						else
							Inform("Unable to find vehicle base essential")
						end
					end
				else
					Inform("Must be a number!")
				end
			end
		end)
	end
	do -- Misc tab
		local function CreateToolFrame(name, position, size)
			return CreateInstance("Frame", MiscFrame){
				Name = name,
				BackgroundColor3 = Color3.new(1, 1, 1),
				BackgroundTransparency = 1,
				Position = position,
				Size = size
			}
		end
		local function CreateToolContents(tool_frame, inputs, invoke_data, click_function)
			local total_size = 0
			local input_instances, invoke_instance = {}
			for index, input_data in pairs(inputs or {}) do
				table.insert(input_instances, ({CreateInstance("TextBox", tool_frame){
					Name = input_data.Name,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(),
					Position = UDim2.new(input_data.X1 or 0, total_size, input_data.Y1 or 0, input_data.Y2 or 0),
					Size = input_data.Size,
					Font = "SourceSans",
					FontSize = "Size14",
					Text = input_data.Text,
					TextColor3 = Color3.new()
				}})[1])
				total_size = total_size + input_data.Size.X.Offset + 10
			end
			invoke_instance = CreateBorder(CreateInstance("TextButton", tool_frame){
				Name = "Invoke",
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				Position = UDim2.new(0, total_size, 0, 0),
				Size = invoke_data.Size,
				Font = invoke_data.Font or "SourceSans",
				FontSize = invoke_data.FontSize or "Size14",
				Text = invoke_data.Text,
				TextColor3 = Color3.new()
			})
			invoke_instance.MouseButton1Down:connect(function()
				if click_function then
					click_function(input_instances)
				end
			end)
			return input_instances, invoke_instance
		end
		local ESPFrame = CreateToolFrame("ESP", UDim2.new(0, 10, 0, 10), UDim2.new(0.5, -20, 0, 30))
		local NoclipFrame = CreateToolFrame("Noclip", UDim2.new(0.5, 10, 0, 10), UDim2.new(0.5, -20, 0, 30))
		local StaminaFrame = CreateToolFrame("Stamina", UDim2.new(0, 10, 0, 50), UDim2.new(0.5, -20, 0, 30))
		local AimbotFrame = CreateToolFrame("Aimbot", UDim2.new(0.5, 10, 0, 50), UDim2.new(0.5, -20, 0, 30))
		CreateToolContents(ESPFrame, nil, {
			Size = UDim2.new(1, 0, 0, 30),
			Text = "Extra Sensory Perception"
		}, function(inputs)
			Settings.ESP = not Settings.ESP
			Inform("ESP is now %s", Settings.ESP == true and "enabled" or "disabled")
		end)
		CreateToolContents(NoclipFrame, nil, {
			Font = "SourceSansLight",
			FontSize = "Size24",
			Size = UDim2.new(1, 0, 0, 30),
			Text = "Noclip / Reclip"
		}, function(inputs)
			Settings.Noclip = not Settings.Noclip
			Inform("Noclip is now %s", Settings.Noclip == true and "enabled" or "disabled")
		end)
		CreateToolContents(StaminaFrame, nil, {
			Font = "SourceSans",
			FontSize = "Size14",
			Size = UDim2.new(1, 0, 0, 30),
			Text = "Unlimited Stamina / Always Sprint"
		}, function(inputs)
			local PlayerGui = Player:findFirstChild("PlayerGui")
			pcall(function() PlayerGui.HitEqualsYouDie.WalkspeedEdit:Destroy() end)
			pcall(function() PlayerGui.HitEqualsYouDie.JumpLimiter:Destroy() end)
			pcall(function() Player.Character.Humanoid.WalkSpeed.Value = 25 end)
			Inform("Unlimited stamina is now enabled, this is irreverseable.")
		end)
		CreateToolContents(AimbotFrame, nil, {
			Font = "SourceSansLight",
			FontSize = "Size18",
			Size = UDim2.new(1, 0, 0, 30),
			Text = "Enable / Disable AimBot"
		}, function(inputs)
			Settings.AimBot = not Settings.AimBot
			Inform("Aimbot is now %s", Settings.AimBot == true and "enabled" or "disabled")
		end)
	end
	VisabilityToggler.MouseButton1Down:connect(function()
		VisabilityToggler:TweenPosition(UDim2.new(0.5, -60, 0, -90), "Out", "Sine", 0.8, true)
		MainHolder:TweenPosition(UDim2.new(0.5, -225, 0.25, 0), "Out", "Sine", 0.8, true)
	end)
	CloseButton.MouseButton1Down:connect(function()
		VisabilityToggler:TweenPosition(UDim2.new(0.5, -60, 0, 20), "Out", "Sine", 0.8, true)
		MainHolder:TweenPosition(UDim2.new(0.5, -225, 0, -400), "Out", "Sine", 0.8, true)
	end)
	VisabilityToggler:TweenPosition(UDim2.new(0.5, -60, 0, 20), "Out", "Sine", 0.8, true)
end

--[[
Mouse.KeyDown:connect(function(key)
	key = string.byte(string.lower(key))
	if key == 50 then
		Settings.AimBot = true
	end
end)

Mouse.KeyUp:connect(function(key)
	key = string.byte(string.lower(key))
	if key == 50 then
		Settings.AimBot = false
	end
end)
--]]

Thread(function()
	RunService.Stepped:connect(function() 
		if Settings.Noclip and Player.Character then
			pcall(function() Player.Character.Torso.CanCollide = false end)
			pcall(function() Player.Character.Head.CanCollide = false end)
		end
	end)
end)

Thread(function()
	RunService.RenderStepped:connect(function()
		if Settings.AimBot then
			local target = GetNearestPlayerToMouse()
			if target then
				local head = target.Character and GetChild(target.Character, "Head") or nil
				if head then
					GetCamera().CoordinateFrame = CFrame.new(GetCamera().CoordinateFrame.p, head.CFrame.p)
				end
				--GUI_TARGET.Text = 'AIMBOT : '.. target.Name:sub(1, 5)
			else
				--GUI_TARGET.Text = 'AIMBOT : OFF'
			end
		end
	end)
end)

do
	local billboard = Instance.new("BillboardGui")
	billboard.Name = "__"
	billboard.AlwaysOnTop = true
	billboard.Enabled = true
	billboard.ExtentsOffset = Vector3.new(0, 3, 0)
	billboard.Size = UDim2.new(1, 0, 1, 0)
	local image = Instance.new("ImageLabel", billboard)
	image.Name = "lol"
	image.BackgroundTransparency = 1
	image.Position = UDim2.new(-0.25, 0, 0, 0)
	image.Size = UDim2.new(1.5, 0, 1.5, 0)
	image.Image = "rbxassetid://136011733"
	
	Thread(function()
		while wait(0.15) do
			for _, child in pairs(Workspace:GetChildren()) do
				if child:IsA("Model") and Players:GetPlayerFromCharacter(child) and child ~= Player.Character and GetChild(child, "Head") then
					if Settings.ESP and not GetChild(child.Head, "__") then
						local initial = billboard:Clone()
						initial.Parent = child.Head
					end
					if not Settings.ESP and GetChild(child.Head, "__") then
						child.Head.__:Destroy()
					end
				end
			end
		end
	end)
end

for _, player in pairs(Players:GetPlayers()) do
	if player ~= Player then
		ConnectPlayer(player)
	end
end

Thread(function()
	while RunService.Stepped:wait() do
		local PlayerGui = GetChild(Player, "PlayerGui")
		if PlayerGui then
			local LeaderboardGUI = GetChild(PlayerGui, "MyGroup")
			if LeaderboardGUI then
				for _, child in pairs(LeaderboardGUI:GetChildren()) do
					if child:IsA("TextButton") and string.sub(child.Name, 1, 1) == "M" and child.Text ~= "Player Name" then
						local player = GetPlayers(string.gsub(child.Text, "%s", ""))[1]
						if player and GetChild(player, "_il_oa") then
							local red, green, blue = GetRainbowRGB(tick())
							local color = Color3.new(0.6 * red, 0.6 * green, 0.65 * blue)
							child.TextXAlignment = "Center"
							child.FontSize = "Size12"
							child.Text = "~ " .. (string.match(child.Text, "~ %s ~") or child.Text) .. " ~"
							child.TextColor3 = color
							child.BackgroundColor3 = color
						end
					end
				end
			end
		end
	end
end)

do
	local holder = Workspace.messages
	holder.m1.Changed:connect(function()
		local user, message = string.match(holder.m1.Value, "(.+):%s*(.+)")
		OnChatted(GetPlayers(user)[1], message)
	end)
end

Players.PlayerAdded:connect(ConnectPlayer)

Inform("Welcome to Eclipse!")
wait(0.8)
Inform("Created by iLordVex!")
wait(1)
Inform("Game Detected: %s", Settings.Game)

CreateGUI()

MainFrame:TweenPosition(UDim2.new(0.5, -100, 0.5, -75), "Out", "Sine", 0.8, true)