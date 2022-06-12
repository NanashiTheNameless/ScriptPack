name = "yfc"

me = game.Players.yfc

screen = Instance.new("ScreenGui")

screen.Parent = me.PlayerGui

screen.Name = "Piano"



pos = 200



pos2 = 200



for i=0.4, 2, 0.1 do

pos = pos + 31

local p = Instance.new("TextButton")

p.Parent = screen

p.Size = UDim2.new(0, 30, 0, 85)

p.Position = UDim2.new(0,pos,0,300)

p.BackgroundColor3 = Color3.new(0.94,0.94,0.94)

p.Text = ""

local sound = Instance.new("Sound")

sound.Parent = game.Players

sound.Volume = 1

sound.Pitch = i

sound.SoundId = "rbxasset://sounds/uuhhh.wav"

p.MouseButton1Down:connect(function()

sound:play()

end)

end



for i=0.4, 2, 0.1 do

pos2 = pos2 + 31

local p = Instance.new("TextButton")

p.Parent = screen

p.Size = UDim2.new(0, 30, 0, 85)

p.Position = UDim2.new(0,pos2,0,405)

p.BackgroundColor3 = Color3.new(0.94,0.94,0.94)

p.Text = ""

local sound = Instance.new("Sound")

sound.Parent = game.Players

sound.Volume = 1

sound.Pitch = i

sound.SoundId = "rbxasset://sounds/uuhhh.wav"

p.MouseEnter:connect(function()

sound:play()

end)

end





