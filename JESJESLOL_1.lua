Player = game.Players.xSoulStealerx
neck = Player.Character.Torso.Neck
local M = Instance.new("ScreenGui") 
M.Parent = Player.PlayerGui 
local c = Instance.new("TextButton") 
c.Parent = M 
c.Position = UDim2.new(0,75,0,462) 
c.Size = UDim2.new(0,50,0,30) 
c.BackgroundColor = BrickColor.new("Really black")
c.BorderColor = BrickColor.new("New Yeller")
c.Text = "Yes"
c.TextColor = BrickColor.new("New Yeller")
c.FontSize = "Size24"
local n = Instance.new("TextButton") 
n.Parent = M 
n.Position = UDim2.new(0,20,0,462) 
n.Size = UDim2.new(0,50,0,30) 
n.BackgroundColor = BrickColor.new("Really black")
n.BorderColor = BrickColor.new("New Yeller")
n.Text = "No"
n.TextColor = BrickColor.new("New Yeller")
n.FontSize = "Size24"
local f = Instance.new("TextButton") 
f.Parent = M 
f.Position = UDim2.new(0,130,0,462) 
f.Size = UDim2.new(0,90,0,30) 
f.BackgroundColor = BrickColor.new("Really black")
f.BorderColor = BrickColor.new("New Yeller")
f.Text = "Bang"
f.TextColor = BrickColor.new("New Yeller")
f.FontSize = "Size24"
local v = Instance.new("TextButton") 
v.Parent = M 
v.Position = UDim2.new(0,225,0,462) 
v.Size = UDim2.new(0,90,0,30) 
v.BackgroundColor = BrickColor.new("Really black")
v.BorderColor = BrickColor.new("New Yeller")
v.Text = "Raise"
v.TextColor = BrickColor.new("New Yeller")
v.FontSize = "Size24"

function no()
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
end
wait()
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
for i=1,14 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
end
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
end
end

function yes()
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
for i=1,9 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
end
for i=1,7 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
end
end

function bang()
for i=1,5 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.2, 0, 0)
end
for i=1,5 do 
wait()
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
end
end

function head()
local w7 = Instance.new("Weld")
w7.Parent = Player.Character.Torso
w7.Part0 = w7.Parent
w7.Part1 = w7.Parent.Parent["Left Arm"]
w7.C1 = CFrame.new(1.5, 0, 0)
for i=1,10 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(-0.16, 0, 0)
w7.C1 = w7.C1 * CFrame.new(0, -0.04, 0.1)
end
for i=1,19 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(-0.08, 0, 0)
w7.C1 = w7.C1 * CFrame.new(0, 0, 0.06)
end
for i=1,10 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0, 0.01, 0.1)
w7.C1 = w7.C1 * CFrame.new(0, 0.12, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.new(0, 0, -0.1)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, -0.1, 0)
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0, -0.01, -0.1)
w7.C1 = w7.C1 * CFrame.new(0, -0.12, 0)
end
for i=1,10 do 
wait()
neck.C1 = neck.C1 * CFrame.new(0, 0, 0.1)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0, 0.1, 0)
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0, 0.01, 0.1)
w7.C1 = w7.C1 * CFrame.new(0, 0.12, 0)
end
for i=1,10 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0, -0.01, -0.1)
w7.C1 = w7.C1 * CFrame.new(0, -0.12, 0)
end
for i=1,19 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0.08, 0, 0)
w7.C1 = w7.C1 * CFrame.new(0, 0, -0.06)
end
for i=1,10 do 
wait()
w7.C1 = w7.C1 * CFrame.fromEulerAnglesXYZ(0.16, 0, 0)
w7.C1 = w7.C1 * CFrame.new(0, 0.04, -0.1)
end
wait()
w7.C1 = CFrame.new(1.5, 0, 0)
neck.C1 = CFrame.new(0, 0, 2.5)
neck.C1 = CFrame.fromEulerAnglesXYZ(-1.58, 0, 3.16)
wait(0.1)
end

c.MouseButton1Click:connect(yes)
n.MouseButton1Click:connect(no)
f.MouseButton1Click:connect(bang)
v.MouseButton1Click:connect(head)

