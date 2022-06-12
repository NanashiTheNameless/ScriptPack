if game.Players.LocalPlayer.PlayerGui:FindFirstChild('ufo') then
	game.Players.LocalPlayer.PlayerGui.ufo:Destroy()
	if game.Workspace:FindFirstChild('ufoparthaha') then
		game.Workspace.ufoparthaha:Destroy()
	end
end
wait()
local VanGui = Instance.new("ScreenGui")
local Van = Instance.new("Frame")
local idk = Instance.new("TextBox")
local dsa = Instance.new("TextButton")

VanGui.Name = "ufo"
VanGui.Parent = game.Players.LocalPlayer.PlayerGui

Van.Name = "ufo"
Van.Parent = VanGui 
Van.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Van.BorderColor3 = Color3.new(0, 0, 0)
Van.Position = UDim2.new(0, 5, 0.8, 0)
Van.Size = UDim2.new(0, 200, 0, 45)

idk.Name = "idk"
idk.Parent = Van
idk.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
idk.BorderColor3 = Color3.new(0, 0, 0)
idk.Size = UDim2.new(1, 0, 0, 20)
idk.Font = Enum.Font.SciFi
idk.FontSize = Enum.FontSize.Size14
idk.Text = "Username"
idk.TextColor3 = Color3.new(1, 1, 1)
idk.TextScaled = true
idk.TextStrokeTransparency = 0
idk.TextWrapped = true

dsa.Name = "dsa"
dsa.Parent = Van
dsa.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
dsa.BorderColor3 = Color3.new(0, 0, 0)
dsa.Position = UDim2.new(0, 0, 1, -25)
dsa.Size = UDim2.new(1, 0, 0, 25)
dsa.Font = Enum.Font.SciFi
dsa.FontSize = Enum.FontSize.Size14
dsa.Text = "UFO"
dsa.TextColor3 = Color3.new(1, 1, 1)
dsa.TextScaled = true
dsa.TextStrokeTransparency = 0
dsa.TextWrapped = true


dsa.MouseButton1Click:connect(function()
	Victim = idk.Text
	if game.Players:FindFirstChild(Victim) and game.Workspace:FindFirstChild('ufoparthaha') == nil then
	
		local u1 = Instance.new('Part')
		u1.Name = 'ufoparthaha'
		u1.Parent = game.Workspace
		u1.Material = Enum.Material.DiamondPlate
		u1.Anchored = true
		u1.Size = Vector3.new(20,3,20)
		u1.CFrame = CFrame.new(0,50,0)
		local u2 = Instance.new('SpecialMesh')
		u2.Parent = u1
		u2.MeshType = Enum.MeshType.Sphere
		local u3 = Instance.new('Part')
		u3.Parent = u1
		u3.Material = Enum.Material.SmoothPlastic
		u3.Anchored = true
		u3.Size = Vector3.new(15,10,15)
		u3.CFrame = CFrame.new(0,54,0)
		u3.Transparency = 0.6
		u3.BrickColor = BrickColor.new('Cyan')
		local u4 = Instance.new('SpecialMesh')
		u4.Parent = u3
		local u5 = Instance.new('Part')
		u5.Parent = u1
		u5.Material = Enum.Material.Neon
		u5.Anchored = true
		u5.Size = Vector3.new(5,1,5)
		u5.CFrame = CFrame.new(0,49,0)
		u5.Transparency = 0.7
		u5.BrickColor = BrickColor.new('Toothpaste')
		u5.CanCollide = false
		local u6 = Instance.new('Part')
		u6.CFrame = CFrame.new(0,5,0)
		u6.Parent = u1
		u6.Anchored = true
		u6.CanCollide = false
		u6.Transparency = 1
		local u7 = Instance.new('Part')
		u7.CFrame = CFrame.new(0,8,0)
		u7.Parent = u1
		u7.Anchored = true
		u7.CanCollide = false
		u7.Transparency = 1
		local u8 = Instance.new('Part')
		u8.CFrame = CFrame.new(0,11,0)
		u8.Parent = u1
		u8.Anchored = true
		u8.CanCollide = false
		u8.Transparency = 1
		local u9 = Instance.new('Part')
		u9.CFrame = CFrame.new(0,14,0)
		u9.Parent = u1
		u9.Anchored = true
		u9.CanCollide = false
		u9.Transparency = 1
		local u10 = Instance.new('Part')
		u10.CFrame = CFrame.new(0,17,0)
		u10.Parent = u1
		u10.Anchored = true
		u10.CanCollide = false
		u10.Transparency = 1
		local u11 = Instance.new('Part')
		u11.CFrame = CFrame.new(0,20,0)
		u11.Parent = u1
		u11.Anchored = true
		u11.CanCollide = false
		u11.Transparency = 1
		local u12 = Instance.new('Part')
		u12.CFrame = CFrame.new(0,23,0)
		u12.Parent = u1
		u12.Anchored = true
		u12.CanCollide = false
		u12.Transparency = 1
		local u13 = Instance.new('Part')
		u13.CFrame = CFrame.new(0,26,0)
		u13.Parent = u1
		u13.Anchored = true
		u13.CanCollide = false
		u13.Transparency = 1
		local u14 = Instance.new('Part')
		u14.CFrame = CFrame.new(0,29,0)
		u14.Parent = u1
		u14.Anchored = true
		u14.CanCollide = false
		u14.Transparency = 1
		local u15 = Instance.new('Part')
		u15.CFrame = CFrame.new(0,32,0)
		u15.Parent = u1
		u15.Anchored = true
		u15.CanCollide = false
		u15.Transparency = 1
		local u16 = Instance.new('Part')
		u16.CFrame = CFrame.new(0,35,0)
		u16.Parent = u1
		u16.Anchored = true
		u16.CanCollide = false
		u16.Transparency = 1
		local u17 = Instance.new('Part')
		u17.CFrame = CFrame.new(0,38,0)
		u17.Parent = u1
		u17.Anchored = true
		u17.CanCollide = false
		u17.Transparency = 1
		local u18 = Instance.new('Part')
		u18.CFrame = CFrame.new(0,41,0)
		u18.Parent = u1
		u18.Anchored = true
		u18.CanCollide = false
		u18.Transparency = 1
		local u19 = Instance.new('Part')
		u19.CFrame = CFrame.new(0,44,0)
		u19.Parent = u1
		u19.Anchored = true
		u19.CanCollide = false
		u19.Transparency = 1
		local u20 = Instance.new('Part')
		u20.CFrame = CFrame.new(0,47,0)
		u20.Parent = u1
		u20.Anchored = true
		u20.CanCollide = false
		u20.Transparency = 1
		local u21 = Instance.new('Part')
		u21.CFrame = CFrame.new(0,50,0)
		u21.Parent = u1
		u21.Anchored = true
		u21.CanCollide = false
		u21.Transparency = 1
		local u22 = Instance.new('Part')
		u22.CFrame = CFrame.new(0,53,0)
		u22.Parent = u1
		u22.Anchored = true
		u22.CanCollide = false
		u22.Transparency = 1
		local u23 = Instance.new('Part')
		u23.CFrame = CFrame.new(0,54,0)
		u23.Parent = u1
		u23.Anchored = true
		u23.CanCollide = false
		u23.Transparency = 1
		function tractordown()
			for i=1, 47 do
			local cf = u5.CFrame
			u5.Size = u5.Size + Vector3.new(0,1,0)
			u5.CFrame = cf - Vector3.new(0,0.5,0)
			wait()
			end
		end
		function tractorup()
			for i=1, 47 do
			local cf = u5.CFrame
			u5.Size = u5.Size - Vector3.new(0,1,0)
			u5.CFrame = cf + Vector3.new(0,0.5,0)
			wait()
			end
		end
function MoveX(model, Position)
model.CFrame = model.CFrame + Vector3.new(Position,0,0)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(Position,0,0)
		end
	end
end
function MoveSpawn(model, PLAYERPOS)
model.CFrame = model.CFrame + PLAYERPOS + Vector3.new(300,-5,0) 
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + PLAYERPOS + Vector3.new(300,-5,0)
		end
	end
end
		if game.Players:FindFirstChild(Victim) ~= nil then
			game.Players[Victim].Character.HumanoidRootPart.Anchored = true
			game.Players[Victim].Character.Humanoid.WalkSpeed = 0
			game.Players[Victim].Character.Humanoid.JumpPower = 0
			MoveSpawn(u1,game.Players[Victim].Character.HumanoidRootPart.Position) 
		end 
		for i=1,100 do
MoveX(u1,-3)
wait()
end
tractordown()
game.Players[Victim].Character.Head.face.Texture = "rbxassetid://629925029"
SCREAM = Instance.new("Sound")
SCREAM.Parent = game.Players[Victim].Character.Head
SCREAM.SoundId = "rbxassetid://138167455"
SCREAM:Play()
game.Players[Victim].Character.HumanoidRootPart.CFrame = u6.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u7.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u8.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u9.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u10.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u11.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u12.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u13.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u14.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u15.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u16.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u17.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u18.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u19.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u20.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u21.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u22.CFrame
wait(0.1)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u23.CFrame
tractorup()
for i=1,50 do
MoveX(u1,-3)
if game.Players[Victim] ~= nil then
game.Players[Victim].Character.HumanoidRootPart.CFrame = u23.CFrame
end
wait(.05)
end
wait(0.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = u21.CFrame
game.Players[Victim].Character.Humanoid.Health = 0
game.Players[Victim].Character.HumanoidRootPart.Anchored = false
for i=1,50 do
MoveX(u1,-3)
wait()
end
u1:Destroy()
		end  
		end)