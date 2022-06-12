Owner = "luxulux" 
me = workspace:findFirstChild(Owner) 
grab="false" 
bite="false" 
ride="false" 
torso = me.Torso 
me.Head.Transparency = 1 
me.Torso.Transparency = 1 
me["Left Arm"].Transparency = 1 
me["Left Leg"].Transparency = 1 
me["Right Arm"].Transparency = 1 
me["Right Leg"].Transparency = 1 
me.Head.face:Remove() 
shell = Instance.new("Part") 
shell.Size = Vector3.new(3,3,3) 
shell.TopSurface = "Smooth" 
shell.Locked = true 
shell.BottomSurface = "Smooth" 
shell.CanCollide = false 
shell.Parent = me 
shell.BrickColor = BrickColor.new("Brown") 
shell.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = shell 
l.Parent = me 
l.C0 = CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
head = Instance.new("Part") 
head.Size = Vector3.new(1,1,3) 
head.TopSurface = "Smooth" 
head.Locked = true 
head.BottomSurface = "Smooth" 
head.CanCollide = false 
head.Parent = me 
head.BrickColor = BrickColor.new("Dark green") 
head.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = head 
l.Parent = me 
l.C0 = CFrame.new(0,-0.5,-1.5)*CFrame.fromEulerAnglesXYZ(0,0,0) 
tail = Instance.new("Part") 
tail.Size = Vector3.new(1,1,3) 
tail.TopSurface = "Smooth" 
tail.BottomSurface = "Smooth" 
tail.Locked = true 
tail.CanCollide = false 
tail.Parent = me 
tail.BrickColor = BrickColor.new("Dark green") 
tail.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = tail 
l.Parent = me 
l.C0 = CFrame.new(0,-0.5,1.0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
foot = Instance.new("Part") 
foot.Locked = true 
foot.Size = Vector3.new(1,1,1) 
foot.TopSurface = "Smooth" 
foot.BottomSurface = "Smooth" 
foot.CanCollide = false 
foot.Parent = me 
foot.BrickColor = BrickColor.new("Dark green") 
foot.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = foot 
l.Parent = me 
l.C0 = CFrame.new(-1,-2.8,1.0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
foot2 = Instance.new("Part") 
foot2.Size = Vector3.new(1,1,1) 
foot2.TopSurface = "Smooth" 
foot2.BottomSurface = "Smooth" 
foot2.CanCollide = false 
foot2.Parent = me 
foot2.Locked = true 
foot2.BrickColor = BrickColor.new("Dark green") 
foot2.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = foot2 
l.Parent = me 
l.C0 = CFrame.new(1,-2.8,1.0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
foot3 = Instance.new("Part") 
foot3.Size = Vector3.new(1,1,1) 
foot3.TopSurface = "Smooth" 
foot3.BottomSurface = "Smooth" 
foot3.CanCollide = false 
foot3.Parent = me 
foot3.Locked = true 
foot3.BrickColor = BrickColor.new("Dark green") 
foot3.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = foot3 
l.Parent = me 
l.C0 = CFrame.new(-1,-2.8,-1.0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
foot4 = Instance.new("Part") 
foot4.Size = Vector3.new(1,1,1) 
foot4.TopSurface = "Smooth" 
foot4.Locked = true 
foot4.BottomSurface = "Smooth" 
foot4.CanCollide = false 
foot4.Parent = me 
foot4.BrickColor = BrickColor.new("Dark green") 
foot4.Position = Vector3.new(0,100,0) 
l = Instance.new("Weld") 
l.Part0 = torso 
l.Part1 = foot4 
l.Parent = me 
l.C0 = CFrame.new(1,-2.8,-1.0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
Player = game.Players:findFirstChild(Owner).PlayerGui 
plr = game.Players:findFirstChild(Owner) 
me = game.Players:findFirstChild(Owner).Character 
torso = me.Torso 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "unhide" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.60, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
tail.Transparency = 0 
head.Transparency = 0 
foot.Transparency = 0 
foot2.Transparency = 0 
foot3.Transparency = 0 
foot4.Transparency = 0 
me.Torso.Anchored = false 
end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "hide" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.65, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
tail.Transparency = 1 
head.Transparency = 1 
foot.Transparency = 1 
foot2.Transparency = 1 
foot3.Transparency = 1 
foot4.Transparency = 1 
me.Torso.Anchored = true 
end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "Self-Destruct" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.70, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
c = Instance.new("Explosion") 
c.Parent = workspace 
c.BlastRadius = 10 
c.Position = me.Torso.Position 
end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "Bite" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.75, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
if(bite=="false")then 
bite="True" 
else bite="false" 
end end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "Grab" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.80, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
if(grab=="false")then 
grab="True" 
else grab="false" 
end end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "Drop" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0.05, 0, 0.80, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
me.lol:Remove() 
sit="false" 
end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R = Instance.new("TextButton") 
R.Parent = Gui 
R.Name = "Reset" 
R.Text = "ride" 
R.Size = UDim2.new(0.05, 0, 0.05, 0) 
R.Position = UDim2.new(0, 0, 0.85, 0) 
R.TextColor3 = Color3.new(255, 255, 255) 
R.BorderColor3 = Color3.new(255, 255, 255) 
R.BackgroundColor3 = Color3.new(0,0,100) 
function onClick() 
if(ride=="false")then 
ride="True" 
else ride="false" 
end end 
R.MouseButton1Click:connect(onClick) 
Gui = Instance.new("ScreenGui") 
Gui.Parent = Player 
Gui.Name = "ResetGui" 
R100 = Instance.new("TextButton") 
R100.Parent = Gui 
R100.Name = "Reset" 
R100.Text = "Run" 
R100.Size = UDim2.new(0.05, 0, 0.05, 0) 
R100.Position = UDim2.new(0.65, 0, 0, 0) 
R100.TextColor3 = Color3.new(255, 255, 255) 
R100.BorderColor3 = Color3.new(255, 255, 255) 
R100.BackgroundColor3 = Color3.new(100,0,0) 
function onClick() 
if (me.Humanoid.WalkSpeed == 16) then 
me.Humanoid.WalkSpeed = 100 
R100.BackgroundColor3 = Color3.new(0,100,0) 
else me.Humanoid.WalkSpeed = 16 R100.BackgroundColor3 = Color3.new(100,0,0) 
end end 
R100.MouseButton1Click:connect(onClick) 
function onTouch(part) 
if(bite=="True") then 
local humanoid = part.Parent:FindFirstChild("Humanoid") 
if (humanoid ~= nil) then -- if a humanoid exists, then 
if (part.Parent.Name ~= ""..me.Name.."") then 
humanoid.Health = 0 -- damage the humanoid 
end 
end 
end 
if(ride=="True") then 
local humanoid = part.Parent:FindFirstChild("Humanoid") 
if (humanoid ~= nil) then -- if a humanoid exists, then 
if (part.Parent.Name ~= ""..me.Name.."") then 
Bsw = Instance.new("Weld") 
Bsw.Part0 = part.Parent.Torso 
Bsw.Part1 = head 
Bsw.Name = "lol" 
Bsw.Parent = me 
Bsw.C0 = CFrame.new(0,-2,-2)*CFrame.fromEulerAnglesXYZ(0,0,0) 
sit="True" 
ride="false" 
end 
end 
end 
if(grab=="True") then 
local humanoid = part.Parent:FindFirstChild("Humanoid") 
if (humanoid ~= nil) then -- if a humanoid exists, then 
if (part.Parent.Name ~= ""..me.Name.."") then 
Bsw = Instance.new("Weld") 
Bsw.Part0 = part 
Bsw.Part1 = head 
Bsw.Name = "lol" 
Bsw.Parent = me 
Bsw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
sit="True" 
drop="True" 
drop="false" 
grab="false" 
end 
end 
end 
if(sit=="True") then 
local humanoid = part.Parent:FindFirstChild("Humanoid") 
if (humanoid ~= nil) then -- if a humanoid exists, then 
if (part.Parent.Name ~= ""..me.Name.."") then 
humanoid.Sit = true 
end 
end 
end 
end 
head.Touched:connect(onTouch)
 