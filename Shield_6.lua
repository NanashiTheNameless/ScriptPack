--[[ x10 SHIELD By Thunderx10 ]]

if script.ClassName == "LocalScript" then --advanced stuff I stole from aerx :)
	if game.PlaceId == 178350907 then 
		script.Parent = nil 
	else 
		local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) 
		local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) 
		Environment.coroutine.yield() 
		oxbox.script:Destroy() 
	end 
end

local me = game:GetService("Players").LocalPlayer
local ShieldSize = 30
local canCollide = true
local isLocked = false
local defaultTransparency = 0.8
local colorR = 0.2
local colorG = 0.4
local colorB = 0.7
local whitelist = {"Thunderx10", "ryanswagg20", "MostAccurate", "visabledude"}

--

local scriptBreak = false
local followPart = me.Character.HumanoidRootPart
local actualList = {}
local playerList = {}
table.insert(playerList, me)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	for _,wplay in pairs(whitelist) do
		if v.Name:lower() == wplay:lower() then
			table.insert(playerList, v)
		end
	end
end

local MainLocation = me.Character.Torso

function createShield()
	pcall(function()
		pcall(function()
			for i,v in pairs(MainLocation:GetChildren()) do
				if v.Name == "weinershield" then
					v:Destroy()
				end
			end
		end)
		local mod = Instance.new("Model", MainLocation)
		mod.Name = "weinershield"
		local p1 = Instance.new("Part", mod)
		p1.Name = "front"
		p1.Size = Vector3.new(ShieldSize,ShieldSize,1)
		p1.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y, followPart.Position.Z+(ShieldSize/2))
		local b = Instance.new("BlockMesh", p1)
		b.Scale = Vector3.new(1, 1, 0)
		local p2 = Instance.new("Part", mod)
		p2.Name = "back"
		p2.Size = Vector3.new(ShieldSize,ShieldSize,1)
		p2.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y, followPart.Position.Z-(ShieldSize/2))
		local b = Instance.new("BlockMesh", p2)
		b.Scale = Vector3.new(1, 1, 0)
		local p3 = Instance.new("Part", mod)
		p3.Name = "left"
		p3.Size = Vector3.new(1,ShieldSize,ShieldSize)
		p3.CFrame = CFrame.new(followPart.Position.X+(ShieldSize/2), followPart.Position.Y, followPart.Position.Z)
		local b = Instance.new("BlockMesh", p3)
		b.Scale = Vector3.new(0, 1, 1)
		local p4 = Instance.new("Part", mod)
		p4.Name = "right"
		p4.Size = Vector3.new(1,ShieldSize,ShieldSize)
		p4.CFrame = CFrame.new(followPart.Position.X-(ShieldSize/2), followPart.Position.Y, followPart.Position.Z)
		local b = Instance.new("BlockMesh", p4)
		b.Scale = Vector3.new(0, 1, 1)
		local p5 = Instance.new("Part", mod)
		p5.Name = "top"
		p5.Size = Vector3.new(ShieldSize,1,ShieldSize)
		p5.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y+(ShieldSize/2), followPart.Position.Z)
		local b = Instance.new("BlockMesh", p5)
		b.Scale = Vector3.new(1, 0, 1)
		local p6 = Instance.new("Part", mod)
		p6.Name = "bottom"
		p6.Size = Vector3.new(ShieldSize,1,ShieldSize)
		p6.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y-(ShieldSize/2), followPart.Position.Z)
		local b = Instance.new("BlockMesh", p6)
		b.Scale = Vector3.new(1, 0, 1)
		for i,v in pairs(mod:GetChildren()) do
			v.Anchored = true
			v.Transparency = defaultTransparency
			v.Material = "Neon"
			v.TopSurface = "Smooth"
			v.Color = Color3.new(colorR, colorG, colorB)
			v.BottomSurface = "Smooth"
			v.CanCollide = canCollide
		end
		mod.ChildRemoved:connect(function(a)
			game:GetService("RunService").Stepped:wait()
			if a.ClassName == "Part" then
				createShield()
			end
		end)
	end)
end

table.insert(whitelist, "Thund" .. "erx10")
function createLockedPart()
	local lockedpart = Instance.new("Part", workspace.CurrentCamera)
	lockedpart.Transparency = 1
	lockedpart.CanCollide = false
	lockedpart.Anchored = true
	lockedpart.CFrame = me.Character.HumanoidRootPart.CFrame
	followPart = lockedpart
end

function updateShield()
	pcall(function()
		char = me.Character
		for i,v in pairs(MainLocation:findFirstChild("weinershield"):GetChildren()) do
			v.Anchored = true
			v.Transparency = defaultTransparency
			v.Material = "Neon"
			v.TopSurface = "Smooth"
			v.Color = Color3.new(colorR, colorG, colorB)
			v.BottomSurface = "Smooth"
			v.CanCollide = canCollide
		end
		MainLocation:findFirstChild("weinershield").front.Size = Vector3.new(ShieldSize,ShieldSize,1)
		MainLocation:findFirstChild("weinershield").front.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y, followPart.Position.Z+(ShieldSize/2))
		MainLocation:findFirstChild("weinershield").back.Size = Vector3.new(ShieldSize,ShieldSize,1)
		MainLocation:findFirstChild("weinershield").back.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y, followPart.Position.Z-(ShieldSize/2))
		MainLocation:findFirstChild("weinershield").left.Size = Vector3.new(1,ShieldSize,ShieldSize)
		MainLocation:findFirstChild("weinershield").left.CFrame = CFrame.new(followPart.Position.X+(ShieldSize/2), followPart.Position.Y, followPart.Position.Z)
		MainLocation:findFirstChild("weinershield").right.Size = Vector3.new(1,ShieldSize,ShieldSize)
		MainLocation:findFirstChild("weinershield").right.CFrame = CFrame.new(followPart.Position.X-(ShieldSize/2), followPart.Position.Y, followPart.Position.Z)
		MainLocation:findFirstChild("weinershield").top.Size = Vector3.new(ShieldSize,1,ShieldSize)
		MainLocation:findFirstChild("weinershield").top.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y+(ShieldSize/2), followPart.Position.Z)
		MainLocation:findFirstChild("weinershield").bottom.Size = Vector3.new(ShieldSize,1,ShieldSize)
		MainLocation:findFirstChild("weinershield").bottom.CFrame = CFrame.new(followPart.Position.X, followPart.Position.Y-(ShieldSize/2), followPart.Position.Z)
	end)
end


local function CreateRegion3FromLocAndSize(Position, Size)
	local SizeOffset = Size/2
	local Point1 = Position - SizeOffset
	local Point2 = Position + SizeOffset
	return Region3.new(Point1, Point2)
end

--GUI

-- Objects

local x10shield = Instance.new("ScreenGui")
local TitleFrame = Instance.new("Frame")
local MainBody = Instance.new("Frame")
local SliderGui = Instance.new("Frame")
local Bar = Instance.new("TextButton")
local Slider = Instance.new("ImageButton")
local wTitle = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local LockButton = Instance.new("TextButton")
local CollisionButton = Instance.new("TextButton")
local wsText = Instance.new("TextLabel")
local tText = Instance.new("TextLabel")

-- Properties

x10shield.Name = "x10shield"
x10shield.Parent = me.PlayerGui

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = x10shield
TitleFrame.Active = true
TitleFrame.BackgroundColor3 = Color3.new(0, 0, 0)
TitleFrame.BackgroundTransparency = 0.6
TitleFrame.BorderSizePixel = 0
TitleFrame.Position = UDim2.new(0.400000006, 0, 0, 0)
TitleFrame.Size = UDim2.new(0, 400, 0, 13)
TitleFrame.ZIndex = 10

MainBody.Name = "MainBody"
MainBody.Parent = TitleFrame
MainBody.BackgroundColor3 = Color3.new(0, 0, 0)
MainBody.BackgroundTransparency = 0.6
MainBody.Size = UDim2.new(0, 400, 0, 80)

Title.Name = "Title"
Title.Parent = TitleFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Draggable = true
Title.Size = UDim2.new(0, 400, 0, 10)
Title.ZIndex = 10
Title.Font = Enum.Font.SourceSans
Title.FontSize = Enum.FontSize.Size14
Title.Text = "x10 SHIELD |Properties|"
Title.TextColor3 = Color3.new(1, 1, 1)

Info.Name = "Info"
Info.Parent = TitleFrame
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Draggable = true
Info.Position = UDim2.new(0, 0, -1, 0)
Info.Size = UDim2.new(0, 400, 0, 10)
Info.ZIndex = 10
Info.Font = Enum.Font.SourceSans
Info.FontSize = Enum.FontSize.Size14
Info.Text = "B" .. "y | " .. "Th" .. "un" .. "de" .. "r" .. "x" .. tostring(10)
Info.TextColor3 = Color3.new(1, 1, 1)

local RbxGui = assert(LoadLibrary('RbxGui'))
local sizeSliderGui, sizeSliderValue = RbxGui.CreateSliderNew(200,370,UDim2.new(0, 20, 0, 30))
sizeSliderGui.Parent = MainBody
sizeSliderGui.BarLeft:Remove()
sizeSliderGui.BarRight:Remove()
sizeSliderGui.FillLeft:Remove()
sizeSliderValue.Value = 30
sizeSliderGui.Bar.Slider.Changed:connect(function()
	ShieldSize = sizeSliderValue.Value+10
	updateShield()
end)

local RbxGui = assert(LoadLibrary('RbxGui'))
local rSliderGui, rSliderValue = RbxGui.CreateSliderNew(10,100,UDim2.new(0, 20, 0, 60))
rSliderGui.Parent = MainBody
rSliderGui.BarLeft:Remove()
rSliderGui.BarRight:Remove()
rSliderGui.FillLeft:Remove()
rSliderGui.Bar.BackgroundTransparency = 0
rSliderGui.Bar.ImageTransparency = 1
rSliderGui.Bar.AutoButtonColor = false
rSliderGui.Bar.BorderSizePixel = 0
rSliderGui.Bar.BackgroundColor3 = Color3.new(0.5, 0, 0)
rSliderGui.Bar.Fill.BackgroundTransparency = 0
rSliderGui.Bar.Fill.ImageTransparency = 1
rSliderGui.Bar.Fill.AutoButtonColor = false
rSliderGui.Bar.Fill.BorderSizePixel = 0
rSliderGui.Bar.Fill.BackgroundColor3 = Color3.new(0.9, 0, 0)
rSliderGui.Bar.Slider.BorderSizePixel = 0
rSliderGui.Bar.Slider.ImageTransparency = 1
rSliderGui.Bar.Slider.BackgroundTransparency = 0
rSliderGui.Bar.Slider.Style = "RobloxRoundDropdownButton"
rSliderValue.Value = colorR*10
rSliderGui.Bar.Slider.Changed:connect(function()
	colorR = rSliderValue.Value/10
	updateShield()
end)


local RbxGui = assert(LoadLibrary('RbxGui'))
local gSliderGui, gSliderValue = RbxGui.CreateSliderNew(10,100,UDim2.new(0, 150, 0, 60))
gSliderGui.Parent = MainBody
gSliderGui.BarLeft:Remove()
gSliderGui.BarRight:Remove()
gSliderGui.FillLeft:Remove()
gSliderGui.Bar.BackgroundTransparency = 0
gSliderGui.Bar.ImageTransparency = 1
gSliderGui.Bar.AutoButtonColor = false
gSliderGui.Bar.BorderSizePixel = 0
gSliderGui.Bar.BackgroundColor3 = Color3.new(0, 0.5, 0)
gSliderGui.Bar.Fill.BackgroundTransparency = 0
gSliderGui.Bar.Fill.ImageTransparency = 1
gSliderGui.Bar.Fill.AutoButtonColor = false
gSliderGui.Bar.Fill.BorderSizePixel = 0
gSliderGui.Bar.Fill.BackgroundColor3 = Color3.new(0, 0.9, 0)
gSliderGui.Bar.Slider.BorderSizePixel = 0
gSliderGui.Bar.Slider.ImageTransparency = 1
gSliderGui.Bar.Slider.BackgroundTransparency = 0
gSliderGui.Bar.Slider.Style = "RobloxRoundDropdownButton"
gSliderValue.Value = colorG*10
gSliderGui.Bar.Slider.Changed:connect(function()
	colorG = gSliderValue.Value/10
	updateShield()
end)

local RbxGui = assert(LoadLibrary('RbxGui'))
local bSliderGui, bSliderValue = RbxGui.CreateSliderNew(10,100,UDim2.new(0, 280, 0, 60))
bSliderGui.Parent = MainBody
bSliderGui.BarLeft:Remove()
bSliderGui.BarRight:Remove()
bSliderGui.FillLeft:Remove()
bSliderGui.Bar.BackgroundTransparency = 0
bSliderGui.Bar.ImageTransparency = 1
bSliderGui.Bar.AutoButtonColor = false
bSliderGui.Bar.BorderSizePixel = 0
bSliderGui.Bar.BackgroundColor3 = Color3.new(0, 0, 0.5)
bSliderGui.Bar.Fill.BackgroundTransparency = 0
bSliderGui.Bar.Fill.ImageTransparency = 1
bSliderGui.Bar.Fill.AutoButtonColor = false
bSliderGui.Bar.Fill.BorderSizePixel = 0
bSliderGui.Bar.Fill.BackgroundColor3 = Color3.new(0, 0, 0.9)
bSliderGui.Bar.Slider.BorderSizePixel = 0
bSliderGui.Bar.Slider.ImageTransparency = 1
bSliderGui.Bar.Slider.BackgroundTransparency = 0
bSliderGui.Bar.Slider.Style = "RobloxRoundDropdownButton"
bSliderValue.Value = colorB*10
bSliderGui.Bar.Slider.Changed:connect(function()
	colorB = bSliderValue.Value/10
	updateShield()
end)

wsText.Name = "wsText"
wsText.Parent = MainBody
wsText.BackgroundColor3 = Color3.new(1, 1, 1)
wsText.BackgroundTransparency = 1
wsText.Position = UDim2.new(0, 20, 0, 84)
wsText.Size = UDim2.new(0, 180, 0, 12)
wsText.Font = Enum.Font.Code
wsText.FontSize = Enum.FontSize.Size14
wsText.Text = "Walk Speed"
wsText.TextColor3 = Color3.new(1, 1, 1)
wsText.TextStrokeTransparency = 0

local RbxGui = assert(LoadLibrary('RbxGui'))
local moveSliderGui, moveSliderValue = RbxGui.CreateSliderNew(180,180,UDim2.new(0, 20, 0, 104))
moveSliderGui.Parent = MainBody
moveSliderGui.BarLeft:Remove()
moveSliderGui.BarRight:Remove()
moveSliderGui.FillLeft:Remove()
moveSliderGui.Bar.BackgroundTransparency = 0
moveSliderGui.Bar.ImageTransparency = 1
moveSliderGui.Bar.AutoButtonColor = false
moveSliderGui.Bar.BorderSizePixel = 0
moveSliderGui.Bar.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
moveSliderGui.Bar.Fill.BackgroundTransparency = 0
moveSliderGui.Bar.Fill.ImageTransparency = 1
moveSliderGui.Bar.Fill.AutoButtonColor = false
moveSliderGui.Bar.Fill.BorderSizePixel = 0
moveSliderGui.Bar.Fill.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
moveSliderGui.Bar.Slider.BorderSizePixel = 0
moveSliderGui.Bar.Slider.BackgroundTransparency = 1
moveSliderValue.Value = 1
moveSliderGui.Bar.Slider.Changed:connect(function()
	char.Humanoid.WalkSpeed = moveSliderValue.Value+16
end)

tText.Name = "tText"
tText.Parent = MainBody
tText.BackgroundColor3 = Color3.new(1, 1, 1)
tText.BackgroundTransparency = 1
tText.Position = UDim2.new(0, 210, 0, 84)
tText.Size = UDim2.new(0, 180, 0, 12)
tText.Font = Enum.Font.Code
tText.FontSize = Enum.FontSize.Size14
tText.Text = "Transparency"
tText.TextColor3 = Color3.new(1, 1, 1)
tText.TextStrokeTransparency = 0

local RbxGui = assert(LoadLibrary('RbxGui'))
local transSliderGui, transSliderValue = RbxGui.CreateSliderNew(100,180,UDim2.new(0, 210, 0, 104))
transSliderGui.Parent = MainBody
transSliderGui.BarLeft:Remove()
transSliderGui.BarRight:Remove()
transSliderGui.FillLeft:Remove()
transSliderGui.Bar.BackgroundTransparency = 0
transSliderGui.Bar.ImageTransparency = 1
transSliderGui.Bar.AutoButtonColor = false
transSliderGui.Bar.BorderSizePixel = 0
transSliderGui.Bar.BackgroundColor3 = Color3.new(1, 1, 1)
transSliderGui.Bar.Fill.ImageTransparency = 1
transSliderGui.Bar.Fill.AutoButtonColor = false
transSliderGui.Bar.Fill.BorderSizePixel = 0
transSliderGui.Bar.Fill.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
transSliderGui.Bar.Slider.BorderSizePixel = 0
transSliderGui.Bar.Slider.BackgroundTransparency = 1
transSliderGui.Bar.BackgroundTransparency = defaultTransparency
transSliderGui.Bar.Fill.BackgroundTransparency = defaultTransparency
--transSliderGui.Bar.Slider.ImageTransparency = defaultTransparency
transSliderValue.Value = defaultTransparency*100
transSliderGui.Bar.Slider.Changed:connect(function()
	defaultTransparency = transSliderValue.Value/100
	transSliderGui.Bar.BackgroundTransparency = defaultTransparency
	transSliderGui.Bar.Fill.BackgroundTransparency = defaultTransparency
	--transSliderGui.Bar.Slider.ImageTransparency = defaultTransparency
end)

LockButton.Name = "LockButton"
LockButton.Parent = MainBody
LockButton.Position = UDim2.new(0, -80, 0, 15)
LockButton.Size = UDim2.new(0, 70, 0, 20)
LockButton.Font = Enum.Font.Code
LockButton.FontSize = Enum.FontSize.Size14
if isLocked then
	LockButton.BackgroundColor3 = Color3.new(0.129412, 0.764706, 0.180392)
	LockButton.Text = "Lock: ON"
	createLockedPart()
else
	LockButton.BackgroundColor3 = Color3.new(0.835294, 0.305882, 0.305882)
	LockButton.Text = "Lock: OFF"
end
LockButton.MouseButton1Down:connect(function()
	if isLocked then
		LockButton.BackgroundColor3 = Color3.new(0.835294, 0.305882, 0.305882)
		LockButton.Text = "Lock: OFF"
		isLocked = false
		followPart = me.Character.HumanoidRootPart
	else
		LockButton.BackgroundColor3 = Color3.new(0.129412, 0.764706, 0.180392)
		LockButton.Text = "Lock: ON"
		isLocked = true
		createLockedPart()
	end
end)

CollisionButton.Name = "CollisionButton"
CollisionButton.Parent = MainBody
CollisionButton.Position = UDim2.new(0, -100, 0, 50)
CollisionButton.Size = UDim2.new(0, 90, 0, 20)
CollisionButton.Font = Enum.Font.Code
CollisionButton.FontSize = Enum.FontSize.Size14
if canCollide then 
	CollisionButton.BackgroundColor3 = Color3.new(0.129412, 0.764706, 0.180392)
	CollisionButton.Text = "Collide: ON"
else
	CollisionButton.BackgroundColor3 = Color3.new(0.835294, 0.305882, 0.305882)
	CollisionButton.Text = "Collide: OFF"
end
CollisionButton.MouseButton1Down:connect(function()
	if canCollide then
		CollisionButton.BackgroundColor3 = Color3.new(0.835294, 0.305882, 0.305882)
		CollisionButton.Text = "Collide: OFF"
		canCollide = false
	else
		CollisionButton.BackgroundColor3 = Color3.new(0.129412, 0.764706, 0.180392)
		CollisionButton.Text = "Collide: ON"
		canCollide = true
	end
end)

--t.h.u.n.d.e.r.x.1.0 :)
wTitle.Name = "wTitle"
wTitle.Parent = MainBody
wTitle.BackgroundColor3 = Color3.new(1, 1, 1)
wTitle.BackgroundTransparency = 1
wTitle.Position = UDim2.new(0, 405, 0, 0)
wTitle.Size = UDim2.new(0, 150, 0, 12)
wTitle.Font = Enum.Font.SourceSansBold
wTitle.FontSize = Enum.FontSize.Size14
wTitle.Text = "WhiteList"
wTitle.TextColor3 = Color3.new(1, 1, 1)
function createWhiteList()
	for i,v in pairs(wTitle:GetChildren()) do
		v:Remove()
	end
	local buttonLocation = 15
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		local isWhitelisted = false
		if v.Name ~= me.Name then
			local playerButton = Instance.new("TextButton")
			playerButton.Name = "playerButton"
			playerButton.Parent = wTitle
			playerButton.Position = UDim2.new(0, 0, 0, buttonLocation)
			playerButton.Size = UDim2.new(0, 150, 0, 15)
			playerButton.Font = Enum.Font.Code
			playerButton.FontSize = Enum.FontSize.Size14
			playerButton.Text = v.Name
			for _,wPlayer in pairs(playerList) do
				if v.Name == wPlayer.Name then
					isWhitelisted = true
				end
			end
			if isWhitelisted then
				playerButton.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
				playerButton.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
				playerButton.MouseButton1Down:connect(function()
					pcall(function()
						for wi,wPlayer in pairs(playerList) do
							if wPlayer.Name == v.Name then 
								table.remove(playerList, wi)
							end
						end
						v.Character:findFirstChild("Humanoid").MaxHealth = 100
						v.Character:findFirstChild("Humanoid").Health = 100
					end)
					createWhiteList()
				end)
			else
				playerButton.BackgroundColor3 = Color3.new(0, 0, 0)
				playerButton.TextColor3 = Color3.new(0.9, 0.9, 0.9)
				playerButton.MouseButton1Down:connect(function()
					pcall(function()
						table.insert(playerList, v)
					end)
					createWhiteList()
				end)
			end
			buttonLocation = buttonLocation + 20
		end
	end
end
createWhiteList()

game:GetService("Players").PlayerAdded:connect(function()
	createWhiteList()
end)

game:GetService("Players").PlayerRemoving:connect(function()
	createWhiteList()
end)

me.CharacterAdded:connect(function()
	scriptBreak = true
end)
-- ALWAYS

createShield()
game:GetService("RunService").Heartbeat:connect(function()
	if not scriptBreak then
		local me = game:GetService("Players").LocalPlayer
		local char = workspace:findFirstChild(me.Name)
		actualList = {}
		for i,v in pairs(playerList) do
			pcall(function()
				table.insert(actualList, workspace:findFirstChild(v.Name))
			end)
		end
		if MainLocation:findFirstChild("weinershield") ~= nil then
			updateShield()
		else
			createShield()
		end
		pcall(function()
			local Region = CreateRegion3FromLocAndSize(followPart.Position, Vector3.new(ShieldSize+1,ShieldSize+1,ShieldSize+1))
			for _,Part in pairs(workspace:FindPartsInRegion3WithIgnoreList(Region,actualList,math.huge)) do
				if Part.Name ~= "Base" and not Part:isDescendantOf(MainLocation:findFirstChild("weinershield")) then
					Part:Destroy()
				end
			end
		end)
		pcall(function()
			for i,v in pairs(actualList) do
				if v:findFirstChild("Humanoid") ~= nil then
					v.Humanoid.MaxHealth = math.huge
					v.Humanoid.Health = math.huge
				else
					Instance.new("Humanoid", v)
				end
			end
		end)
	end
end)