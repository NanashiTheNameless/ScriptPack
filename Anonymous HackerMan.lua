
-- RBX.Lua LocalScript | Hackerman | xDarkScripter


local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()

local Character = Player.Character
local Torso = Character.Torso

local Typing = false
local TypingSub = 1
local TypingSub2 = 1

local Neck = Torso.Neck

Neck.C1 = CFrame.new(0, -0.5, 0)

local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]

local RightShoulder = Instance.new("Weld", Torso)
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm

local LeftShoulder = Instance.new("Weld", Torso)
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm

RightShoulder.C1 = CFrame.new(-0.5, 0.5, 0)
LeftShoulder.C1 = CFrame.new(0.5, 0.5, 0)


local Code = [[
	-- I failed at stealing my mommy's credit card!
	
	Server Proxy Connection Initializing...
	
	USERNAME: dantdmbestfan69
	PASSWORD: *******************
	
	
	ROBLOX Server Database Connecting...
	
	
	local Proxy = Server:GetProxyData(1011101)
	local Tracker = {}
	
	__INIT__ setmetatable(getmetatable(Proxy), {
		__metatable = {};
		__call = function(Self, ...)
			Proxy:GetArgumentData(Proxy.Key, select(...))
		end;
	})
	
	Proxy:TransferData("Lifetime_OBC_Charged",
		"ACC_"..__VERSION.."_"..Proxy:GetAccount()
	{
		__newindex = function(Self, Key, Value)
			Tracker[Key] = Value
			rawset(Self, Key, Value)
		end
	})
	
	Proxy:GetTransferredData().breakAssymetricEncryption(
		"NEW_Public_Key", true, 101, false
	)
	
	
	ROBLOX Server Log:
		> Lifetime OBC Transferred to dantdmbestfan69_*******************
	
	
	
	
]]


local Argument = [[
	you> hey              
	...
	bob> hey                      
	...
	bob> btw you're gay              
	...
	you> What the fuck did you just fucking say about me, you little bitch? I’ll have you know I graduated top of my class in the Navy Seals,
	and I’ve been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and
	I’m the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision
	the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me
	over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced
	right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You’re fucking
	dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that’s just with my bare hands. Not only am I
	extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its
	full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution
	your little “clever” comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn’t, you didn’t,
	and now you’re paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You’re fucking dead, kiddo.
]]



game.Lighting.GlobalShadows = false
game.Lighting.Brightness = 0.25


local function Smooth(Part)
	Part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
end


local function SetLine(Line, Alpha, Beta)
	local dx = Alpha.Position.X.Scale - Beta.Position.X.Scale
	local dy = Alpha.Position.Y.Scale - Beta.Position.Y.Scale
	local Magnitude = math.sqrt(dx^2 + dy^2)
	
	Line.Size = UDim2.new(Magnitude, 0, 0, 8)
	Line.Position = Alpha.Position:Lerp(Beta.Position, 0.5)
	Line.Rotation = math.deg(math.atan2(dy, dx))
end


local Keyboard = Instance.new("Part")
Keyboard.BrickColor = BrickColor.new("Really black")
Keyboard.Material = Enum.Material.Neon
Keyboard.Transparency = 0.1
Keyboard.Size = Vector3.new(5, 0, 2)
Keyboard.CanCollide = false
Keyboard.Locked = true

Smooth(Keyboard)

local KeyboardWeld = Instance.new("Weld")
KeyboardWeld.Part0 = Torso
KeyboardWeld.Part1 = Keyboard
KeyboardWeld.C0 = CFrame.new(0, 0.2, -2) * CFrame.Angles(0.3, 0, 0)

KeyboardWeld.Parent = Keyboard
Keyboard.Parent = Character


local Light = Instance.new("PointLight")
Light.Brightness = 1.5
Light.Range = 12
Light.Parent = Keyboard


local Screen = Instance.new("Part")
Screen.BrickColor = BrickColor.new("Really black")
Screen.Material = Enum.Material.Neon
Screen.Transparency = 0.3
Screen.Size = Vector3.new(6, 4, 0)
Screen.CanCollide = false
Screen.Locked = true

Smooth(Screen)

local ScreenWeld = Instance.new("Weld")
ScreenWeld.Part0 = Torso
ScreenWeld.Part1 = Screen
ScreenWeld.C0 = CFrame.new(0, 3.5, -4.5) * CFrame.Angles(0.1, 0, 0)

local Gui = Instance.new("SurfaceGui")
Gui.Face = "Back"
Gui.Adornee = Screen
Gui.Parent = Screen

local Text = Instance.new("TextBox")
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0, 0, 0, 0)
Text.Size = UDim2.new(1, 0, 1, 0)
Text.TextColor3 = Color3.new(1, 1, 1)
Text.Font = Enum.Font.Code
Text.Active = false
Text.MultiLine = true
Text.TextWrapped = true
Text.FontSize = Enum.FontSize.Size32
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.TextYAlignment = Enum.TextYAlignment.Top
Text.Text = ""

Text.Parent = Gui

ScreenWeld.Parent = Screen
Screen.Parent = Character



local Screen2 = Instance.new("Part")
Screen2.BrickColor = BrickColor.new("Really black")
Screen2.Material = Enum.Material.Neon
Screen2.Transparency = 0.3
Screen2.Size = Vector3.new(6, 4, 0)
Screen2.CanCollide = false
Screen2.Locked = true

Smooth(Screen2)

local Screen2Weld = Instance.new("Weld")
Screen2Weld.Part0 = Torso
Screen2Weld.Part1 = Screen2
Screen2Weld.C0 = CFrame.new(5.4, 3.4, -1.5) * CFrame.Angles(0.1, -0.9, 0)

local Gui2 = Instance.new("SurfaceGui")
Gui2.Face = "Back"
Gui2.Adornee = Screen2
Gui2.Parent = Screen2

local Text2 = Instance.new("TextBox")
Text2.BackgroundTransparency = 1
Text2.Position = UDim2.new(0, 0, 0, 0)
Text2.Size = UDim2.new(1, 0, 1, 0)
Text2.TextColor3 = Color3.new(0, 1, 0)
Text2.Font = Enum.Font.Code
Text2.Active = false
Text2.MultiLine = true
Text2.TextWrapped = true
Text2.FontSize = Enum.FontSize.Size32
Text2.TextXAlignment = Enum.TextXAlignment.Left
Text2.TextYAlignment = Enum.TextYAlignment.Top
Text2.Text = ""

Text2.Parent = Gui2

local ImageKey = Instance.new("ImageLabel")
ImageKey.BackgroundTransparency = 1
ImageKey.Size = UDim2.new(0.2, 0, 0.2, 0)
ImageKey.Position = UDim2.new(0.4, 0, 0.4, 0)
ImageKey.Image = "http://www.roblox.com/asset/?id=697224414"
ImageKey.ImageTransparency = 1
ImageKey.Parent = Gui2

Screen2Weld.Parent = Screen2
Screen2.Parent = Character



local Screen3 = Instance.new("Part")
Screen3.BrickColor = BrickColor.new("Really black")
Screen3.Material = Enum.Material.Neon
Screen3.Transparency = 0.3
Screen3.Size = Vector3.new(6, 4, 0)
Screen3.CanCollide = false
Screen3.Locked = true

Smooth(Screen3)

local Screen3Weld = Instance.new("Weld")
Screen3Weld.Part0 = Torso
Screen3Weld.Part1 = Screen3
Screen3Weld.C0 = CFrame.new(-5.4, 3.4, -1.5) * CFrame.Angles(0.1, 0.9, 0)

local Gui3 = Instance.new("SurfaceGui")
Gui3.Face = "Back"
Gui3.Adornee = Screen3
Gui3.Parent = Screen3

local Map = Instance.new("ImageLabel")
Map.BackgroundTransparency = 1
Map.Position = UDim2.new(0, 0, 0, 0)
Map.Size = UDim2.new(1, 0, 1, 0)
Map.Image = "http://www.roblox.com/asset/?id=121661614"

Map.Parent = Gui3

Screen3Weld.Parent = Screen3
Screen3.Parent = Character

local Points = {}
local Lines = {}

for i = 1, 10 do
	if i > 1 then
		local Line = Instance.new("Frame")
		Line.BorderSizePixel = 0
		Line.BackgroundColor3 = Color3.new(0.8, 0, 0)
		Line.AnchorPoint = Vector2.new(0.5, 0.5)
		Line.Parent = Gui3
		
		Lines[i] = Line
	end
	
	local Point = Instance.new("Frame")
	Point.BorderSizePixel = 0
	Point.BackgroundColor3 = Color3.new(1, 0, 0)
	Point.Size = UDim2.new(0, 40, 0, 40)
	Point.Position = UDim2.new(math.random(), 0, math.random(), 0)
	Point.AnchorPoint = Vector2.new(0.5, 0.5)
	Point.Parent = Gui3
	
	Points[i] = {Point = Point, Position = Point.Position}
end




UserInputService.InputBegan:Connect(function(Input, Processed)
	if Processed then return end
	
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		local KeyCode = Input.KeyCode
		
		if KeyCode == Enum.KeyCode.E then
			Typing = not Typing
		end
	end
end)



RunService.Heartbeat:Connect(function()
	local Sine = math.sin(tick() * 8) / 8
	
	for Key, Value in next, Points do
		Value.Point.Size = UDim2.new(0, 25 + Sine * 40, 0, 25 + Sine * 40)
		Value.Point.Position = Value.Point.Position:Lerp(Value.Position, 0.1)
		
		if Key > 1 then
			SetLine(Lines[Key], Value.Point, Points[1].Point)
		end
	end
	
	if math.random(100) == 1 then
		for _, Value in next, Points do
			Value.Position = UDim2.new(math.random(), 0, math.random(), 0)
		end
	end
	
	ImageKey.ImageTransparency = math.abs(math.sin(tick()))
	
	if Typing then
		if math.random(5) == 1 then
			local PressSound = Instance.new("Sound")
			PressSound.SoundId = "rbxassetid://265970978"
			PressSound.Pitch = 0.5 + math.random() / 5
			PressSound.Volume = 3
			PressSound.Parent = Keyboard
			PressSound:Play()
			
			game:GetService("Debris"):AddItem(PressSound, 1 / 2)
		end
		
		Neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(-0.2 + Sine / 4, (math.random() - 0.5) / 2, 0)
		
		RightShoulder.C0 = CFrame.new(1, 0.6 + math.random() / 4, -math.random() * 0.7)
			* CFrame.Angles(1.5 + Sine * math.random(), -Sine / 4, -(0.5 + 2 * Sine * math.random()))
		
		LeftShoulder.C0 = CFrame.new(-1, 0.6 + math.random() / 4, -math.random() * 0.7)
			* CFrame.Angles(1.5 - Sine * math.random(), Sine / 4, 0.5 + 2 * Sine * math.random())
		
		if math.random(2) == 1 then
			if TypingSub < #Argument then
				TypingSub = TypingSub + 1
				Text.Text = Text.Text..Argument:sub(TypingSub, TypingSub)
				
				local nl = Text.Text:find("\n")
				
				if nl and #Text.Text > 400 then
					Text.Text = Text.Text:sub(nl + 1)
				end
				
			else
				TypingSub = 1
			end
		end
		
		if math.random(3) == 1 then
			if TypingSub2 < #Code then
				TypingSub2 = TypingSub2 + 1
				Text2.Text = Text2.Text..Code:sub(TypingSub2, TypingSub2)
				
				local nl = Text2.Text:find("\n")
				
				if nl and #Text2.Text > 400 then
					Text2.Text = Text2.Text:sub(nl + 1)
				end
				
			else
				TypingSub2 = 1
			end
		end
		
	else
		Neck.C0 = CFrame.new(0, 1, 0)
		
		RightShoulder.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(1.5, 0, 0)
		LeftShoulder.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(1.5, 0, 0)
	end
end)


























