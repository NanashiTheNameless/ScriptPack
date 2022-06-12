-- RBX.Lua LocalScript | Hackerman | xDarkScripter | Edit By Skips2267, triggerednolie.


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
	-- I failed at downloading ssf2
	
	Server Proxy Connection Initializing...
	
	USERNAME: Zneakyblox
	PASSWORD: ???
	
	
	ROBLOX Server Database Connecting...
	
	
	local Proxy = Server:GetMemeData(1011101)
	local Tracker = {}
	
	__INIT__ setmetatable(getmetatable(Meme), {
		__metatable = {};
		__call = function(Self, ...)
			Proxy:GetArgumentData(MEME.Key, select(...))
		end;
	})
	
	Proxy:TransferData("Lifetime_OBC_Charged",
		"ACCVERSION_89_MEME:GetAccount()
	{
		__newindex = function(Self, Key, Value)
			Tracker[Key] = Value
			rawset(Self, Key, Value)
		end
	})
	
	Proxy:GetTransferredData().breakAssymetricEncryption(
		"NEW_MEME_KEY", true, 102, false
	)
	
	
	ROBLOX Server Log:
		> 420 Robux Transferred to Snoop Dog???
		
		Spicy Memes
		
		ERROR<Tried to Give 69000 Robux to Dumbassbird1, Failed To Give 69000 Robux , deleting Sammy>
		Deleting Sammyclassicsonicfan..50%
		Deleting Sammyclassicsonicfan..100%
		Successfully deleted Sammyclassicsonicfan.
		Message<WHY SONIC WHY SONIC WHY SONIC!!!
   NASA FOUND
		<div role="log" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div>
		
	
	
	
	
]]


local Argument = [[
	           
	You> 11000011001101                    

	You> 00110000011110             

	You> 1100011

	You> 000111100
	
	You> End(Server)

	Server> Server ended.
	
	Discord> Joining VoidSB Discord..

	Server> Joined VoidSB Discord!
	
	You > afk 99 years
	
	Server> You got banned for 9999 years because of afk for 99 years!
	           
	You> 11000011001101                    

	You> 00110000011110             

	You> 1100011

	You> 000111100
	
	You> Delete(VoidSB)

	Server> Server deleted.

	Discord> Finding Dark Eccentric Party..
	Discord> Founded Dark's Party!

	Google> Searching NASA
	Google> Success!
   IP : 15.90.138.102
   Money : 139.1B
  Phone : 202-555-0179
	
	You> Damn, NASA got some money.
	
	You> GET NASA MONEY

	You> =GETTING NASA MONEY=

	NEWS> we heard that nasa got no money

	You> Now it's time for ROBLOX

	You>  <div class="navbar navbar-default navbar-static-top"

	You> This should be happening now.

   ROBLOX> Roblox is currently under going maintence.. We'll be back up soon!

	You> I'm going to hack minecraft now.

	You> <li class="item item-fandom" data-flag=""destroy:="

	Notch> Peoples are getting premium accounts out of no where!
	
	You> =Uses w33b hacks=
	
	You> I added a new version of minecraft

	You> 1337.666

	Update : "Added Premium Mode"
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
Keyboard.BrickColor = BrickColor.new("Lsvender")
Keyboard.Material = Enum.Material.Neon
Keyboard.Transparency = 0.6
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
Screen.Transparency = 0.6
Screen.Size = Vector3.new(6, 4, 0)
Screen.CanCollide = false
Screen.Locked = true

Smooth(Screen)

local ScreenWeld = Instance.new("Weld")
ScreenWeld.Part0 = Torso
ScreenWeld.Part1 = Screen
ScreenWeld.C0 = CFrame.new(0, 3.5, -4.5) * CFrame.Angles(0.1, 0, 0)

local animeh = Instance.new("Part")
animeh.BrickColor = BrickColor.new("Really black")
animeh.Material = Enum.Material.Neon
animeh.Transparency = 0.6
animeh.Size = Vector3.new(6, 4, 0)
animeh.CanCollide = false
animeh.Locked = true

local dekal = Instance.new("Decal",animeh)
dekal.Texture = "http://www.roblox.com/asset/?id=626650325"
dekal.Transparency = 0.15
dekal.Face = "Back"

Smooth(animeh)

local animehw = Instance.new("Weld")
animehw.Part0 = Torso
animehw.Part1 = animeh
animehw.C0 = CFrame.new(0, 8, -4) * CFrame.Angles(.5,0,0)

animehw.Parent = animeh
animeh.Parent = Character

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
Screen2.Transparency = 0.6
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
ImageKey.Image = "http://www.roblox.com/asset/?id=0"
ImageKey.ImageTransparency = 1
ImageKey.Parent = Gui2

Screen2Weld.Parent = Screen2
Screen2.Parent = Character



local Screen3 = Instance.new("Part")
Screen3.BrickColor = BrickColor.new("Really black")
Screen3.Material = Enum.Material.Neon
Screen3.Transparency = 0.6
Screen3.Size = Vector3.new(6, 4, 0)
Screen3.CanCollide = false
Screen3.Locked = true

local dekal = Instance.new("Decal",Screen3)
dekal.Texture = "http://www.roblox.com/asset/?id=0"
dekal.Transparency = 0.15
dekal.Face = "Back"

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