--ffghjkgh67

--Script Builder Radio!

local Player = game.Players.LocalPlayer
local c = Player.Character
if not c or not c.Parent then
    c = Player.CharacterAdded:wait()
end

wait(1)

local radio = Instance.new("Part",c)
radio.Name = "Radio"
radio.CanCollide = false
radio.Anchored = true
radio.FormFactor = "Custom"
radio.Size = Vector3.new(3.2, 1.43, 0.8)
radio.CFrame = c.Torso.CFrame * CFrame.new(0,0,.8)
radio.CFrame = radio.CFrame * CFrame.fromEulerAnglesXYZ(0,3.15,0)
radio.CFrame = radio.CFrame * CFrame.fromEulerAnglesXYZ(0,0,-.7)

local mesh = Instance.new("SpecialMesh",radio)
mesh.MeshId = "http://www.roblox.com/asset/?id=151760030"
mesh.TextureId = "https://www.roblox.com/Sweg-item?id=156708131"

local weld = Instance.new("Weld",radio)
weld.Part0 = c.Torso
weld.Part1 = radio
weld.C0 = c.Torso.CFrame:inverse()
weld.C1 = radio.CFrame:inverse()
radio.Anchored = false

local sound = Instance.new("Sound",radio)
sound.Name = "Music"
sound.Looped = true
sound.Volume = 1

local gui = Instance.new("ScreenGui",Player.PlayerGui)

local frame = Instance.new("Frame",gui)
frame.BackgroundColor3 = Color3.new(58/255,58/255,58/255)
frame.BorderColor3 = Color3.new(0,0,0)
frame.BorderSizePixel = 2
frame.Size = UDim2.new(0,300,0,200)
frame.Position = UDim2.new(0,20,.5,-100)

local playb = Instance.new("TextButton",frame)
playb.BackgroundColor3 = Color3.new(0,85/255,0)
playb.BorderColor3 = Color3.new(0,0,0)
playb.BorderSizePixel = 2
playb.Size = UDim2.new(.3,0,.2,0)
playb.Position = UDim2.new(.1,0,.7,0)
playb.Text = "Play"
playb.TextColor3 = Color3.new(255,255,255)
playb.TextScaled = true

local stopb = Instance.new("TextButton",frame)
stopb.BackgroundColor3 = Color3.new(170/255,0,0)
stopb.BorderColor3 = Color3.new(0,0,0)
stopb.BorderSizePixel = 2
stopb.Size = UDim2.new(.3,0,.2,0)
stopb.Position = UDim2.new(.6,0,.7,0)
stopb.Text = "Stop"
stopb.TextColor3 = Color3.new(255,255,255)
stopb.TextScaled = true

local stipb = Instance.new("TextBox",frame)
stipb.BackgroundColor3 = Color3.new(0,0,127/255)
stipb.BorderColor3 = Color3.new(0,0,0)
stipb.BorderSizePixel = 2
stipb:TweenSize(UDim2.new(.5,0,.25,0),"Out","Quad",1,true)
stipb.Position = UDim2.new(.25,0,.3,0)
stipb.Text = "SoundId"
stipb.TextColor3 = Color3.new(255,255,255)
stipb.TextScaled = true

local label = Instance.new("TextLabel",frame)
label.Text = "Made By ChuckXZ!"
label.TextScaled = true
label:TweenSize(UDim2.new(1,0,.2,0))
label.TextColor3 = Color3.new(255,255,255)
label.BackgroundTransparency = 1
--stipb.Size = UDim2.new(1,0,.2,0)

local Playing = false

stipb.Changed:connect(function()
	sound.SoundId = "rbxassetid://" .. stipb.Text
end)

playb.MouseButton1Click:connect(function()
	sound:Play()
	Playing = true
end)

stopb.MouseButton1Click:connect(function()
	sound:Stop()
	Playing = false
end)

while true do
	if Playing then
		mesh.Scale = Vector3.new(1.1,1.1,1.1)
		wait(.2)
		mesh.Scale = Vector3.new(1,1,1)
	end
	wait(.2)
end