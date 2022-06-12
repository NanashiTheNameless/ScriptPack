--XxBillyTheNoscoperxX
--distortion lololololololol
local plr = game.Players.LocalPlayer
plrgui = plr.PlayerGui
local base = Instance.new("ScreenGui",plrgui)
local bground = Instance.new("Frame",base)
base.Name = "lol"
bground.Name = "bground"
bground.Position = UDim2.new(0.4,0,0.3,0)
bground.Size = UDim2.new(0.2,0,0.22,0)
bground.BackgroundColor3 = Color3.fromRGB(0,0,0)
bground.BorderColor3 = Color3.fromRGB(163,162,165)
bground.BorderSizePixel = 6
local tbox = Instance.new("TextBox",bground)
tbox.Name = "tbox"
tbox.Text = "Sound ID"
tbox.Position = UDim2.new(0.15,0,0.25,0)
tbox.Size = UDim2.new(0.7,0,0.25,0)
tbox.TextWrapped = true
tbox.TextScaled = true
tbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
tbox.BorderColor3 = Color3.fromRGB(25,25,25)
tbox.BorderSizePixel = 5
local submit = Instance.new("TextButton",bground)
submit.Name = "submit"
submit.Text = "Submit"
submit.Position = UDim2.new(0.15,0,0.6,0)
submit.Size = UDim2.new(0.7,0,0.25,0)
submit.TextScaled = true
submit.TextWrapped = true
submit.BackgroundColor3 = Color3.fromRGB(200,200,200)
--time for the goodies amirite
function sound()
local newsound = Instance.new("Sound",workspace)
newsound.Name = "earbleed"
newsound.SoundId = "rbxassetid://"..tbox.Text
newsound.Looped = true
newsound:Play() 
local earbleep = Instance.new("DistortionSoundEffect",newsound)
earbleep.Enabled = true
earbleep.Level = 100000001
earbleep.Priority = 55
end
submit.MouseButton1Down:connect(sound)