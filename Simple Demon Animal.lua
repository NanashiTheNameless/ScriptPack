wait()
player = game.Players.LocalPlayer
char = player.Character
mouse = player:GetMouse()

local skincolor = "Crimson" -- change this to whatever brickcolor you want

ls = char.Torso["Left Shoulder"]:Clone()
rs = char.Torso["Right Shoulder"]:Clone()
lh = char.Torso["Left Hip"]:Clone()
rh = char.Torso["Right Hip"]:Clone()
ne = char.Torso.Neck
rj = char.HumanoidRootPart.RootJoint

char.Torso.BrickColor = BrickColor.new(skincolor)
char.Head.BrickColor = BrickColor.new(skincolor)
char["Right Arm"].BrickColor = BrickColor.new(skincolor)
char["Left Arm"].BrickColor = BrickColor.new(skincolor)
char["Right Leg"].BrickColor = BrickColor.new(skincolor)
char["Left Leg"].BrickColor = BrickColor.new(skincolor)

e = Instance.new("Sound", char.Head)
e.SoundId = "rbxassetid://199978045"

char.Head.Mesh.Scale = Vector3.new(1.25, 1.5, 1.25)
char["Left Arm"].Size = Vector3.new(1, 3, 1)
char["Right Arm"].Size = Vector3.new(1, 3, 1)
char["Left Leg"].Size = Vector3.new(1, 3, 1)
char["Right Leg"].Size = Vector3.new(1, 3, 1)

rj.C0 = CFrame.new(0, -1.5, 0) * CFrame.Angles(0, math.rad(180), 0)
ne.C0 = CFrame.new(0, 1, 0.5) * CFrame.Angles(0, 0, math.rad(180))

leftshoulder = ls:Clone()
leftshoulder.Parent = char.Torso
leftshoulder.C0 = CFrame.new(-2, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(90), 0)

rightshoulder = rs:Clone()
rightshoulder.Parent = char.Torso
rightshoulder.C0 = CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(90), 0)

leftleg = lh:Clone()
leftleg.Parent = char.Torso
leftleg.C0 = CFrame.new(1, -1.5, -0) * CFrame.Angles(math.rad(90), math.rad(90), 0)

rightleg = rh:Clone()
rightleg.Parent = char.Torso
rightleg.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(90), math.rad(90), 0)

for i, v in pairs(char:GetChildren()) do
	if v.ClassName == "Accessory" or v.ClassName == "Shirt" or v.ClassName == "Pants" then
		v:Remove()
	end
end

char.Humanoid.WalkSpeed = 40
char.Humanoid.JumpPower = 150
char.Humanoid.MaxHealth = math.huge
char.Humanoid.Health = math.huge

char.Head.face:Remove()

char.Head.Touched:connect(function(h)
	if h.Parent ~= char then
		egg = h.Parent:FindFirstChild("Humanoid")
		if egg ~= nil then
			egg.Health = egg.Health - 5
			egg.WalkSpeed = egg.WalkSpeed - 1
			egg.JumpPower = egg.JumpPower - 4
			e:Play()
		end
	end
end)