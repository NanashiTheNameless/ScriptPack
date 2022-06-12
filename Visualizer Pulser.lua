local s = Instance.new("ScreenGui", game.CoreGui)
local f = Instance.new("Frame", s)
local mselect = Instance.new("TextButton", f)
local mbox = Instance.new("TextBox", f)
local toggle = false
local Player = game.Players.LocalPlayer
local Character = Player.Character

f.Size = UDim2.new(0,300,0,250)
f.BorderSizePixel = 0
f.BackgroundColor3 = Color3.new(0.301961, 0.301961, 0.301961)
f.Position = UDim2.new(0.5,-150,0.5,-125)
f.Active = true
f.Draggable = true

mbox.Size = UDim2.new(0,250,0,50)
mbox.Position = UDim2.new(0,25,0.1,0)
mbox.BorderSizePixel = 0
mbox.Text = "Music ID Here:"
mbox.Font = "SourceSansBold"
mbox.TextColor3 = Color3.new(255, 255,255)
mbox.BackgroundColor3 = Color3.new(1, 0.666667, 0)
mbox.FontSize = "Size18"
mbox.ZIndex = 10

mselect.Size = UDim2.new(0,250,0,50)
mselect.Position = UDim2.new(0,25,0.6,0)
mselect.BorderSizePixel = 0
mselect.Text = "Play Music"
mselect.Font = "SourceSansBold"
mselect.TextColor3 = Color3.new(255,255,255)
mselect.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
mselect.FontSize = "Size18"
mselect.ZIndex = 10

mselect.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge -- this is god
	if toggle == false then
		loadPart()
		toggle = true
	elseif toggle == true then
		loadPart()
		toggle = false
	end
end)

function loadPart()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "MusicItem" and v.ClassName == "Part" then
			v:Remove()
		end
	end
local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
Part.CanCollide = false
Part.Shape = "Block"
Part.Anchored = false
Part.Locked = true
Part.Name = "MusicItem"
Part.Transparency = 0
Part.Material = "Neon"
Part.BrickColor = BrickColor.new("Royal purple") --Cool Colors CGA brown and Royal purple
local CylinderMesh = Instance.new("CylinderMesh", Part)
CylinderMesh.Scale = Vector3.new(1.5,.2,1.5)


local Sound = Instance.new("Sound", Part)
Sound.SoundId = "https://www.roblox.com/asset/?id="..mbox.Text
Sound.EmitterSize = math.huge
Sound.MaxDistance = math.huge
Sound.Looped = true
Sound.Pitch = 1
Sound.Name = "Sound"
Sound.Volume = 10
Sound:Play()

Part.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.new(0,-2.9,0)
local bp = Instance.new("BodyPosition", Part)
bp.Position = Character:FindFirstChild("Torso").CFrame * CFrame.new(0, -2.9, 0).p
bp.MaxForce = Vector3.new(10000,10000,10000)
bp.P = 100000

while true do wait()
bp.Position = Character:FindFirstChild("Torso").CFrame * CFrame.new(0, -2.9, 0).p
local alg = math.floor(Sound.PlaybackLoudness)/50
CylinderMesh.Scale = Vector3.new(.6+alg,.2,.6+alg)
end
end