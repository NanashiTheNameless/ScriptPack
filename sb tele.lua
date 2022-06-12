for _,v in pairs(game.Players:GetChildren()) do 
local Owner = v.Name 
Player = game.Players:findFirstChild(Owner).PlayerGui
plr = game.Players:findFirstChild(Owner)
me = game.Players:findFirstChild(Owner).Character
face = me.Head.face
torso = me.Torso
function tele(p)
Game:GetService("TeleportService"):Teleport(p)
end
Gui = Instance.new("ScreenGui")
Gui.Parent = Player
Gui.Name = "ResetGui"
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Luc Sb"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(52917422)
end
R.MouseButton1Click:connect(onClick)
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Oxcool"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0.05, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(20279777)
end
R.MouseButton1Click:connect(onClick)
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Billilands"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0.1, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(7377532)
end
R.MouseButton1Click:connect(onClick)
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Tns"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0.1, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(23232804)
end
R.MouseButton1Click:connect(onClick)
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Bob"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0.15, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(14054499)
end
R.MouseButton1Click:connect(onClick)
R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "Reset"
R.Text = "Sharp1331"
R.Size = UDim2.new(0.05, 0, 0.05, 0)
R.Position = UDim2.new(0.2, 0, 0.85, 0)
R.TextColor3 = Color3.new(255, 255, 255)
R.BorderColor3 = Color3.new(255, 255, 255)
R.BackgroundColor3 = Color3.new(0,0,100)
function onClick()
tele(18966439)
end
R.MouseButton1Click:connect(onClick)
end 