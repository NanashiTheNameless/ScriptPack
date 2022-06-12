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
error-261 resolved0
error-340903-3455-34-5-749353230935-3095-234-9102-33-34-3-2349-02394-02934-0-2
error-934-03---04966-049-5060-609-4-604-60945-9604--09-60459-045-694-43
error--5-96-450---45096-4056-09-04-596-049-0956-094-0956-049-59-096-49-564-5-4506-9-045-69-094-69-04
error-606904-596-00-45-69-05-96090-54-6904956094596-0495-0-9-049-49-095-96096-49
error-324--9053-95-09-09-6-94056-3094-2934-092-209-409-34490-2
error--4305--0906-59-0694-5064-95-394-034-93-4955-05496-239-2309-069-40965-34923043-39
error-055-330904-023904-02934-09429034-09-09-29-3049-23094-0293-9-4092-3094-20934-02
error-350-395-09-595-0394-509-34095-09-0304590-09-395-485-405-35093-45093495-039405
error--59034-50-3095-039-09-5903-495-039-509-03094-5093-4059-03945-904-3095-3590-
error-3-09-3950-39-50394-59-3409-093-09-095-0349-509359-3095-0395-093-4095-03945-0934-5
error--350-0-04569-096-6409-694-06-409-0496-049-69-49-6904-9506-49069-495-6
end
	
	
	
	
]]


local Argument = [[
-Enagaging Aero Power-dislocating hacks-error:3366-revamping error.Value.Deleted
error-kill:PenguinFred-False-Shutdown-True-error
error=3990-390-030-80-359-305934----3485-34503-409-0964-5049-345
error--456-459640---95-96--96-5456-045-090-4095-05946-
error-5-64560460985645640689-46-45-6-4305-34509-359-039-4905-093-409-09-509-340
localscript=true-4-54-5-3345--3405934-5-03945-09-09-394-509
error-34-3-45-3-93-09-50-340-30459-95-03495---3495-039049-3-59-359-0395-
fixed-true-error-4309584-684-9-6-495-0-9-0496-099-6049-609-4-96-49-
error-340903-3455-34-5-749353230935-3095-234-9102-33-34-3-2349-02394-02934-0-2
error-934-03---04966-049-5060-609-4-604-60945-9604--09-60459-045-694-43
error--5-96-450---45096-4056-09-04-596-049-0956-094-0956-049-59-096-49-564-5-4506-9-045-69-094-69-04
error-606904-596-00-45-69-05-96090-54-6904956094596-0495-0-9-049-49-095-96096-49
error-324--9053-95-09-09-6-94056-3094-2934-092-209-409-34490-2
error--4305--0906-59-0694-5064-95-394-034-93-4955-05496-239-2309-069-40965-34923043-39
error-055-330904-023904-02934-09429034-09-09-29-3049-23094-0293-9-4092-3094-20934-02
error-350-395-09-595-0394-509-34095-09-0304590-09-395-485-405-35093-45093495-039405
error--59034-50-3095-039-09-5903-495-039-509-03094-5093-4059-03945-904-3095-3590-
error-3-09-3950-39-50394-59-3409-093-09-095-0349-509359-3095-0395-093-4095-03945-0934-5
error--350-0-04569-096-6409-694-06-409-0496-049-69-49-6904-9506-49069-495-6
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

























plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
part = nil
bp = nil
particles = nil
function clerp(a,b,c,d)
	for i = 0,d,.01 do
		a.CFrame = CFrame.new(b:lerp(c,i))
		wait()
	end
end
function slerp(a2,b2,c2,d2)
	for i2 = 0,d2,.01 do
		a2.CFrame = CFrame.new(b2:lerp(c2,i2))
		wait()
	end
end
mouse.KeyDown:connect(function(key)
	if key == "e" and plr.Character.Parent == workspace then
		plr.Character.Parent = workspace.Camera
		plr.Character.Archivable = true
		Instance.new("ForceField",plr.Character).Visible = false
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 1
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 1
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 1
			end
		end
	elseif key == "z" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Torso.CFrame = CFrame.new(Vector3.new(mouse.hit.p.X,mouse.hit.p.Y+1.5,mouse.hit.p.Z),plr.Character.Torso.CFrame.p)
	elseif key == "x" and plr.Character.Parent == workspace.Camera and part == nil then
		if plr.Character.Torso.Anchored == true then
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = false
				end
			end
		else
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = true
				end
			end
		end
	elseif key == "c" and plr.Character.Parent == workspace.Camera and part ~= nil then
		local clone = part:Clone()
		clone.Parent = workspace
		clone.Anchored = false
		clone:ClearAllChildren()
		clone.CanCollide = true
		bp.Parent = clone
		particles.Parent = clone
		if part.Parent:FindFirstChildOfClass("Humanoid") then
			part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false
		end
		part:Destroy()
		part = clone
	elseif key == "q" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Parent = workspace
		plr.Character.Archivable = false
		plr.Character:FindFirstChildOfClass("ForceField"):Remove()
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 0
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 0
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 0
			end
		end
	end
end)
mouse.Button1Down:connect(function()
	if plr.Character.Parent == workspace.Camera then
		if mouse ~= nil then
			if mouse.Target ~= nil then
				part = mouse.Target
				bp = Instance.new("BodyPosition",part)
				bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bp.Position = part.Position
				particles = Instance.new("ParticleEmitter",part)
				particles.Color = ColorSequence.new(Color3.new(0,0,0))
				particles.Size = NumberSequence.new(1)
				particles.Texture = "rbxassetid://292289455"
				particles.VelocitySpread = 360
				particles.Speed = NumberRange.new(0)
				particles.RotSpeed = NumberRange.new(0)
				particles.Rotation = NumberRange.new(0)
				particles.Rate = 250
				particles.Lifetime = NumberRange.new(.2,.4)
				particles.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.12,.688,0),NumberSequenceKeypoint.new(.891,.887,0),NumberSequenceKeypoint.new(1,1,0)})
				dwn = true
			end
		end
		while dwn == true do 
			wait()	
			bp.Position = mouse.hit.p
			if part then
				if part.Parent:FindFirstChildOfClass("Humanoid") then
					part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
				end
			end
		end
	end
end)
mouse.Button1Up:connect(function()
	dwn = false
	if part then if part.Parent:FindFirstChildOfClass("Humanoid") then part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false end part = nil end
	if bp then bp:Destroy() end
	if particles then particles:Destroy() end
end)
base = Instance.new("ScreenGui",plr.PlayerGui)
bbg = Instance.new("BillboardGui",plr.Character.Head)
bbg.Size = UDim2.new(0,200,0,50)
bbg.StudsOffset = Vector3.new(0,3,0)
bbgTl = Instance.new("TextLabel",bbg)
bbgTl.BackgroundTransparency = 1
bbgTl.Size = UDim2.new(10,0,1,0)
bbgTl.Position = UDim2.new(-4.5,0,0,0)
bbgTl.Font = "Code"
bbgTl.Text = " "
bbgTl.TextSize = 25
bbgTl.TextStrokeColor3 = Color3.new(1,1,1)
bbgTl.TextColor3 = Color3.new(0,0,0)
bbgTl.TextStrokeTransparency = 0
bbgTl.TextWrapped = true
plr.Chatted:connect(function(msg)
	bbgTl.Text = msg
	wait(5)
	if bbgTl.Text == msg then
		bbgTl.Text = " "
	end
end)
touchCounter = 0
while wait() do
	if plr.Character.Parent == workspace.Camera then
		local c = plr.Character:Clone()
		c:MakeJoints()
		for y,t in pairs(c:GetChildren()) do
			if t:IsA("Part") then
				t.CanCollide = false 
				t.Anchored = true 
				t.Transparency = .5
				t.TopSurface = "Smooth"
				t.BottomSurface = "Smooth"
				t.RightSurface = "Smooth"
				t.LeftSurface = "Smooth"
				t.FrontSurface = "Smooth"
				t.BackSurface = "Smooth"
				t.BrickColor = BrickColor.new("Really black")
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face:Remove()
				elseif t.Name == "Torso" and t:FindFirstChild("roblox") then
					t.roblox:Remove()
				elseif t.Name == "HumanoidRootPart" then
					t:Remove()
				end
			else 
				t:Remove()
			end
		end
		c.Parent = workspace
		game.Debris:AddItem(c,.05)
	end
end