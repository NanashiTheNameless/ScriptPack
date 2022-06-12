-- MORTADEX
-- WRITTEN BY LOUKA @ V3RMILLION
-- DON'T JEW THE LOCALSCRIPT IF YOU DON'T KNOW HOW TO SCRIPT

local Mortadex = {}
Mortadex.Version = "1"
Mortadex.Modules = {}
Mortadex.ModuleCount = 0
Mortadex.ModuleSelection = 1

Mortadex.Stealth = true -- this will just remove print messages
Mortadex.Debug = false
Mortadex.FreeForAll = false
Mortadex.Studio = false

function Mortadex:RegisterModule(name, onrender, norender)
	if Mortadex.Modules[name] then
		return error("Module \""..name.."\" already registered!")
	else
		Mortadex:FLog("Registering module \"%s\"", name)
		Mortadex.Modules[name] = {OnRender = onrender, NoRender = norender, Scratchpad = {}, Enabled = false, Order = Mortadex.ModuleCount}
		Mortadex.ModuleCount = Mortadex.ModuleCount + 1
	end
end

function Mortadex:Log(...)
	if Mortadex.Stealth then return end
	return print("[- MORTADEX -] ", ...)
end

function Mortadex:FLog(o, ...)
	return Mortadex:Log(o:format(...))
end

local getrawmetatable = getrawmetatable
local ObjectMt = getrawmetatable(game)
changereadonly(ObjectMt, false)

---------------------------------------------------------------

Mortadex:Log("Loading core utilities...")

Mortadex.HookManager = {IdxHooks = {}, NIdxHooks = {}}
Mortadex.Utilities = {}
Mortadex.Services = {
	Players = game:GetService("Players"),
	Lighting = game:GetService("Lighting"),
	RunService = game:GetService("RunService"),
	UserInputService = game:GetService("UserInputService")
}
Mortadex.Instances = {
	LocalPlayer = Mortadex.Services.Players.LocalPlayer,
	LocalCharacter = Mortadex.Services.Players.LocalPlayer.Character,
	LocalCamera = workspace.CurrentCamera,
	LocalMouse = Mortadex.Services.Players.LocalPlayer:GetMouse()
}

function Mortadex.HookManager:Init()
	if getrawmetatable then
		Mortadex.OriginalIndex = ObjectMt.__index
		Mortadex.OriginalNewIndex = ObjectMt.__newindex
		ObjectMt.__index = function(self, key)
			local Hook = Mortadex.HookManager:LookupIndexHook(self, key)
			if Hook then
				return Hook(self)
			else
				return Mortadex.OriginalIndex(self, key)
			end
		end
		
		ObjectMt.__newindex = function(self, key, value)
			local Hook = Mortadex.HookManager:LookupNewIndexHook(self, key)
			if Hook then
				return Hook(self, value)
			else
				return Mortadex.OriginalNewIndex(self, key, value)
			end
		end
		
		return true
	end
end

function Mortadex.HookManager:LookupIndexHook(inst, key)
	for _, Hook in next, Mortadex.HookManager.IdxHooks do
		if Mortadex.OriginalIndex(inst, "IsA")(inst, Hook.AffectedClass) and Hook.Property == key then
			return Hook.HookFunction
		end
	end
end

function Mortadex.HookManager:LookupNewIndexHook(inst, key)
	for _, Hook in next, Mortadex.HookManager.NIdxHooks do
		if Mortadex.OriginalIndex(inst, "IsA")(inst, Hook.AffectedClass) and Hook.Property == key then
			return Hook.HookFunction
		end
	end
end

function Mortadex.HookManager:HookIndex(class, prop, f)
	return table.insert(Mortadex.HookManager.IdxHooks, {AffectedClass = class, Property = prop, HookFunction = f})
end

function Mortadex.HookManager:HookNewIndex(class, prop, f)
	return table.insert(Mortadex.HookManager.NIdxHooks, {AffectedClass = class, Property = prop, HookFunction = f})
end

function Mortadex.Utilities:WorldToScreenPoint(...)
	return Mortadex.Instances.LocalCamera:WorldToScreenPoint(...)
end

function Mortadex.Utilities:PathObstructed(p1, p2, ...)
	local ray = Ray.new(p1, (p2 - p1).unit * 500)
	local haspart, hitpos = workspace:FindPartOnRayWithIgnoreList(ray, {...})
	if haspart then return true, hitpos else return false end
end

function Mortadex.Utilities:GetReplicator()
	return game:FindFirstChild("ClientReplicator", true)
end

function Mortadex.Utilities:GetSize(i)
	if i:IsA("BasePart") then
		return i.Size
	elseif i:IsA("Model") then
		return i:GetExtentsSize()
	end
end

function Mortadex.Utilities:GetPlayers(mode)
	local Result = {}
	for _,player in next, Mortadex.Services.Players:GetPlayers() do
		if mode == 0 then -- exclude players in current team
			if (player ~= Mortadex.Instances.LocalPlayer and (Mortadex.Instances.LocalPlayer.TeamColor ~= player.TeamColor or (FreeForAll or DEBUG))) then
				table.insert(Result, player)
			end
		else -- include everyone
			table.insert(Result, player)
		end
	end
	return Result
end

function Mortadex.Utilities:GetNearestPlayer()
	if not Mortadex.Instances.LocalPlayer.Character then return end
	local Players = Mortadex.Utilities:GetPlayers(0)
	local SelectedPlayer, SelectedPlayerPrevDistance = nil, 25000
	for i,v in next, Players do
		if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			local Distance = Mortadex.Utilities:GetDistance(Mortadex.Instances.LocalPlayer.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
			if Distance < SelectedPlayerPrevDistance then
				SelectedPlayer = v
				SelectedPlayerPrevDistance = Distance
			end
		end
	end
	return SelectedPlayer
end

function Mortadex.Utilities:GetDistance(v1, v2)
	return (v1 - v2).magnitude
end

function Mortadex.Utilities:GetCanvas()
	if not Mortadex.Canvas then
		if getrawmetatable then
			Mortadex.Canvas = Instance.new("ScreenGui", game:GetService("CoreGui"))
		else
			Mortadex.Canvas = Instance.new("ScreenGui", Mortadex.Services.Players.LocalPlayer.PlayerGui)
		end
	end
	return Mortadex.Canvas
end

Mortadex.EmptyVector3 = Vector3.new()
Mortadex.EmptyCFrame = CFrame.new()

---------------------------------------------------------------

--> ESP
Mortadex:RegisterModule("ESP", function(Storage)
	local Canvas = Mortadex.Utilities:GetCanvas()
	local Root = Canvas:FindFirstChild("ESP")
	if not Root then
		Root = Instance.new("Frame")
		Root.Name = "ESP"
		Root.Size = UDim2.new(1, 0, 1, 0)
		Root.BackgroundTransparency = 1
	end
	
	Root:ClearAllChildren()
	for _, Player in next, Mortadex.Utilities:GetPlayers(0) do
		if Player.Character and Player.Character:FindFirstChild("Torso") then
			local Locator = Instance.new("Frame")
			Locator.BackgroundColor = Player.TeamColor
			Locator.BackgroundTransparency = .5
			local VPos, VVis =  Mortadex.Utilities:WorldToScreenPoint(Player.Character.Torso.Position)
			if VVis then
				Locator.Size = UDim2.new(0, -2800 / VPos.z, 0, -4300 / VPos.z)
				Locator.Position = UDim2.new(0, VPos.x - Locator.Size.X.Offset / 2, 0, VPos.y - Locator.Size.Y.Offset / 2)
				local Name = Instance.new("TextLabel")
				Name.TextColor3 = Color3.new(1,1,1)
				Name.Size = UDim2.new(1,0,0, Locator.Size.Y.Offset / 5)
				Name.BackgroundTransparency = 1
				Name.TextScaled = true
				Name.FontSize = 'Size24'
				Name.Text = Player.Name
				Name.TextStrokeTransparency = .3
				Name.Font = 'SourceSansLight'
				Name.TextXAlignment = 'Left'
				Name.Parent = Locator
				Locator.Parent = Root
			else
				Locator:Destroy()
			end
		end
	end
	
	if not Root.Parent then
		Root.Parent = Canvas
	end
end)

--> FreeForAll
Mortadex:RegisterModule("FreeForAll", function(Storage)
	FreeForAll = true
end, function(Storage) FreeForAll = false end)

--> Chams
Mortadex:RegisterModule("Chams", function(Storage)
	for i, Cham in next, Storage do
		if Cham.Name:find("Cham") then
			Cham:Destroy()
			Storage[i] = nil
		end
	end
	
	for _, Player in next, Mortadex.Utilities:GetPlayers(0) do
		if Player.Character and Player.Character:FindFirstChild("Torso") then
			for _, Part in next, Player.Character:GetChildren() do
				if Part:IsA("PVInstance") then
					local Box = Instance.new("BoxHandleAdornment")
					Box.Size = Mortadex.Utilities:GetSize(Part) + Vector3.new(.2, .2, .2)
					Box.Name = "Cham" .. Player.Name
					Box.Color3 = Player.TeamColor.Color
					Box.Adornee = Part
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .1
					table.insert(Storage, Box)
					Box.Parent = Mortadex.Utilities:GetCanvas()
				end
			end
		end
	end
end)

--> LagSwitch
Mortadex:RegisterModule("LagSwitch", function(Storage)
	if not Storage.State then
		Storage.State = true
		local Replicator = Mortadex.Utilities:GetReplicator()
		if Replicator then
			Replicator:DisableProcessPackets()
		end
	end
end,

function(Storage)
	if Storage.State then
		Storage.State = false
		local Replicator = Mortadex.Utilities:GetReplicator()
		if Replicator then
			Replicator:EnableProcessPackets()
		end
	end
end)

--> IronSight
Mortadex:RegisterModule("IronSight", function(Storage)	
	local Sight = Instance.new("Frame")
	Sight.Size = UDim2.new(0, 5, 0, 5)
	Sight.BackgroundTransparency = .5
	Sight.BackgroundColor3 = Color3.new(1, 1, 1)
	Sight.Position = UDim2.new(0, Mortadex.Instances.LocalMouse.X, 0, Mortadex.Instances.LocalMouse.Y)
	Sight.Parent = Mortadex.Utilities:GetCanvas()
end)

--> KnifeMaster
Mortadex:RegisterModule("KnifeMaster", function(Storage)
	if not Mortadex.Instances.LocalPlayer.Character then
		return
	end
	local Pl = Mortadex.Utilities:GetNearestPlayer()
	if Pl and Pl.Character and Mortadex.Utilities:GetDistance(Pl.Character.Torso.Position, Mortadex.Instances.LocalPlayer.Character.HumanoidRootPart.Position) < 150 then
		Mortadex.Instances.LocalPlayer.Character.HumanoidRootPart.CFrame = Pl.Character.Torso.CFrame * CFrame.new(0,0,3)
	end
end)

--> BigHead
Mortadex:RegisterModule("BigHead", function(Storage)
	for _, v in next, Mortadex.Utilities:GetPlayers(0) do
		if v.Character then
			if not Storage[v.Name] then
				Storage[v.Name] = { v.Character.Head.Size,  v.Character.Head.CFrame }
			end
			v.Character.Head.CanCollide = false
			v.Character.Head.Size = Vector3.new(40, 40, 40)
			v.Character.Head.CFrame = v.Character.Torso.CFrame * CFrame.new(0, 20, 0)
			v.Character.Head.Transparency = .3
		end
	end
end,

function(Storage)
	if not Storage.NormalSize then
		Storage.NormalSize = Vector3.new(2, 1, 1)
	end
	
	for _, v in next, Mortadex.Utilities:GetPlayers(0) do
		if v.Character then
			v.Character.Head.CanCollide = true
			v.Character.Head.Size = Storage.NormalSize
		end
	end
end)

---------------------------------------------------------------

Mortadex:Log("Loading UI...")

function Mortadex:CreateWindow(name, size, timed_close, tween)
	local TopBar = Instance.new("TextLabel")
	TopBar.Name = "NO_CLEAR"
	TopBar.Size = UDim2.new(size.X.Scale, size.X.Offset, 0, 20)
	TopBar.BorderSizePixel = 0
	TopBar.BackgroundColor3 = Color3.new(1, 0, 0)
	TopBar.Text = name
	TopBar.TextXAlignment = Enum.TextXAlignment.Left
	TopBar.TextScaled = true
	TopBar.Font = Enum.Font.Code
	TopBar.TextColor3 = Color3.new(0, 0, 0)
	TopBar.Position = UDim2.new(.5, -(size.X.Offset/2), .5, -(size.Y.Offset/2))
	TopBar.Draggable = true
	TopBar.Active = true
	
	local Window = Instance.new("Frame")
	Window.Name = "Content"
	Window.Size = size
	Window.BackgroundColor3 = Color3.new(0, 0, 0)
	Window.Position = UDim2.new(0, 0, 0, 20)
	Window.BackgroundTransparency = .3
	Window.BorderSizePixel = 0
	
	if not timed_close then
		local CloseBtn = Instance.new("TextButton", TopBar)
		CloseBtn.Position = UDim2.new(1, -20, 0, 0)
		CloseBtn.Size = UDim2.new(0, 20, 1, 0)
		CloseBtn.BorderSizePixel = 0
		CloseBtn.Name = "CloseBtn"
		CloseBtn.BackgroundColor3 = Color3.new(0,0,0)
		CloseBtn.TextColor3 = Color3.new(1, 0, 0)
		CloseBtn.Text = "X"
		CloseBtn.MouseButton1Click:connect(function()
			TopBar:Destroy()
		end)
	else
		local Countdown = Instance.new("TextLabel", TopBar)
		Countdown.Position = UDim2.new(1, -20, 0, 0)
		Countdown.Size = UDim2.new(0, 20, 1, 0)
		Countdown.BackgroundTransparency = 1
		Countdown.TextColor3 = Color3.new(0, 0, 0)
		Countdown.Text = tostring(timed_close)
		local BackPos
		if tween then
			BackPos = TopBar.Position
			TopBar.Position = UDim2.new(.5, -(size.X.Offset/2), 1, 0)
		end
		spawn(function()
			if tween then
				TopBar:TweenPosition(BackPos, "Out", "Quad", .3, true)
			end
			for i = timed_close-1, 0, -1 do
				wait(1)
				Countdown.Text = tostring(i)
			end
			if not tween then
				TopBar:Destroy()
			else
				TopBar:TweenPosition(UDim2.new(.5, -(size.X.Offset/2), 1, 0), "Out", "Sine", .3, true)
				wait(.3)
				TopBar:Destroy()
			end
		end)
	end
	
	Window.Parent = TopBar
	TopBar.Parent = Mortadex.Utilities:GetCanvas()
	return TopBar
end


---------------------------------------------------------------

if not script then script = Instance.new("LocalScript") end
Mortadex.UpvalScript = script

Mortadex:Log("Hooking functions...")
Mortadex.HookManager:Init()
Mortadex.HookManager:HookIndex("Player", "Kick", error)
Mortadex.HookManager:HookIndex("BasePart", "Size", function(Part)
	local caller_env = getfenv(1)
	if caller_env.script ~= Mortadex.UpvalScript and caller_env.script.ClassName ~= "CoreScript" then
		if Part.Name == "Head" then
			return Mortadex.EmptyVector3
		end
	end
	return Mortadex.OriginalIndex(Part, "Size")
end)

Mortadex.HookManager:HookIndex("BasePart", "CFrame", function(Part)
	local caller_env = getfenv(1)
	if caller_env.script ~= Mortadex.UpvalScript and caller_env.script.ClassName ~= "CoreScript" then
		if Part.Name == "Head" then
			return Mortadex.EmptyCFrame
		end
	end
	return Mortadex.OriginalIndex(Part, "CFrame")
end)

Mortadex.HookManager:HookIndex("BasePart", "Transparency", function(Part)
	local caller_env = getfenv(1)
	if caller_env.script ~= Mortadex.UpvalScript and caller_env.script.ClassName ~= "CoreScript" then
		if Part.Name == "Head" then
			return 0
		end
	end
	return Mortadex.OriginalIndex(Part, "Transparency")
end)

Mortadex:Log("Creating menu...")
Mortadex.SelectionMenu = Mortadex:CreateWindow("Mortadex v"..Mortadex.Version, UDim2.new(0, 250, 0, 20 * Mortadex.ModuleCount))
Mortadex.SelectionMenu.Position = UDim2.new(0, 10, 0, 10)
Mortadex.SelectionMenu.CloseBtn:Destroy()

for ModuleName, Module in next, Mortadex.Modules do
	local Entry = Instance.new("TextLabel")
	Entry.BackgroundTransparency = 1
	Entry.BackgroundColor3 = Color3.new(1,1,1)
	Entry.TextColor3 = Color3.new(1, 1, 1)
	Entry.TextScaled = true
	Entry.Font = "Code"
	Entry.TextXAlignment = "Left"
	Entry.Text = ModuleName
	Entry.Position = UDim2.new(0, 0, 0, 20 * Module.Order)
	Entry.Size = UDim2.new(1, 0, 0, 20)
	Entry.Name = tostring(Module.Order)
	Entry.Parent = Mortadex.SelectionMenu.Content
	Entry.BorderSizePixel = 0
	
	local Status = Instance.new("Frame")
	Status.BorderSizePixel = 0
	Status.BackgroundColor3 = Color3.new(1, 0, 0)
	Status.Size = UDim2.new(0, 5, 0, 5)
	Status.Position = UDim2.new(1, -10, 0, 8)
	Status.Name = "Status"
	Status.Parent = Entry
end

Mortadex:Log("Connecting UI renderer...")
Mortadex.Services.RunService:BindToRenderStep("Mortadex", Enum.RenderPriority.Last.Value + 1, function()
	for _, Object in next, Mortadex.Utilities:GetCanvas():GetChildren() do
		if not Object.Name:find("NO_CLEAR") then
			Object:Destroy()
		end
	end
	
	for i, Module in next, Mortadex.Modules do
		if Module.Enabled and Module.OnRender then
			local Success, ErrMsg = pcall(Module.OnRender, Module.Scratchpad)
			if not Success then
				Mortadex:FLog("Panic during execution of \"%s\"::OnRender: %s", i, ErrMsg)
			end
		elseif not Module.Enabled and Module.NoRender then
			local Success, ErrMsg = pcall(Module.NoRender, Module.Scratchpad)
			if not Success then
				Mortadex:FLog("Panic during execution of \"%s\"::NoRender: %s", i, ErrMsg)
			end
		end
	end
end)

Mortadex:Log("Attaching controls...")
Mortadex.Services.UserInputService.InputBegan:connect(function(InputObject)
	local PreviousSelection = Mortadex.SelectionMenu.Content:FindFirstChild(tostring(Mortadex.ModuleSelection))
	if PreviousSelection then
		PreviousSelection.BackgroundTransparency = 1
		PreviousSelection.TextColor3 = Color3.new(1, 1, 1)
	end
	if InputObject.KeyCode.Name == "J" then
		Mortadex.ModuleSelection = Mortadex.ModuleSelection - 1
		if Mortadex.ModuleSelection < 0 then
			Mortadex.ModuleSelection = Mortadex.ModuleCount - 1
		end
	elseif InputObject.KeyCode.Name == "K" then
		Mortadex.ModuleSelection = Mortadex.ModuleSelection + 1
		if Mortadex.ModuleSelection > Mortadex.ModuleCount-1 then
			Mortadex.ModuleSelection = 0
		end
	elseif InputObject.KeyCode.Name == "L" then
		local EntryLabel = Mortadex.SelectionMenu.Content:FindFirstChild(tostring(Mortadex.ModuleSelection))
		if EntryLabel then
			local ModuleEntry = Mortadex.Modules[EntryLabel.Text]
			if ModuleEntry then
				ModuleEntry.Enabled = not ModuleEntry.Enabled
				if ModuleEntry.Enabled then
					EntryLabel.Status.BackgroundColor3 = Color3.new(0, 1, 0)
				else
					EntryLabel.Status.BackgroundColor3 = Color3.new(1, 0, 0)
				end
			end
		end
	elseif InputObject.KeyCode.Name == "P" then
		Mortadex.SelectionMenu.Position = UDim2.new(1, -270, 0, 10)
	end
	local EntryLabel = Mortadex.SelectionMenu.Content:FindFirstChild(tostring(Mortadex.ModuleSelection))
	if EntryLabel then
		EntryLabel.BackgroundTransparency = .3
		EntryLabel.TextColor3 = Color3.new(0, 0, 0)
	end
end)

Mortadex:Log("Finishing up...")
local IntroWindow = Mortadex:CreateWindow("Mortadex", UDim2.new(0, 350, 0, 200), 5, true)
local IntroLabel = Instance.new("TextLabel")
IntroLabel.Font = "Code"
IntroLabel.TextWrapped = true
IntroLabel.FontSize = "Size24"
IntroLabel.TextColor3 = Color3.new(1, 1, 1)
IntroLabel.BackgroundTransparency = 1
IntroLabel.Text = "Welcome to Mortadex! If you need to change the menu's placement, simply drag the window around the screen. Press P to dock the window to the right side of the screen in case the chat blocks the menu."
IntroLabel.Parent = IntroWindow.Content
IntroLabel.Size = UDim2.new(1, 0, 1, 0)

Mortadex:Log("Initialization complete!")