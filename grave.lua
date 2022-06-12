local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local children = game.Workspace:GetChildren()
for _, child in pairs(children) do
    for _, child in pairs(child:GetChildren()) do
        table.insert(children, child)
    end

    if child.ClassName ~= "Terrain" and child:IsA("BasePart") and child.Name ~= "Right Leg" and child.Name ~= "Left Leg" and child.Name ~= "Right Arm" and child.Name ~= "Left Arm" and child.Name ~= "Head" and child.Name ~= "Torso" and child.Name ~= "HumanoidRootPart" then
            child:Destroy()
        end
    end

game.Lighting.FogEnd = 50
game.Lighting.GlobalShadows = false
game.Lighting.Brightness = 0.3
game.Lighting.TimeOfDay = 0
game:GetObjects("rbxassetid://654999902")[1].Parent=game.Workspace

for _, Player in pairs(Players:GetPlayers()) do
    if Player.Character then
		Player.Character.HumanoidRootPart.CFrame = game.Workspace.Field.Spawn.CFrame
	end
end

for _, Player in pairs(Players:GetPlayers()) do
    if Player.Character and Player ~= LocalPlayer then
		pcall(function()
		Player.Character.Name = "Slave"
		Player.Character.Head.BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Left Arm"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Right Arm"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Left Leg"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character["Right Leg"].BrickColor = BrickColor.new("Dirt brown")
		Player.Character.Torso.BrickColor = BrickColor.new("Dirt brown")
		end)
	end
	Player.CharacterAdded:connect(function()
		if Player.Character and Player ~= LocalPlayer then
       		 	Player.Character.Name = "Slave"
			repeat pcall(function()
       		 	Player.Character.Head.BrickColor = BrickColor.new("Dirt brown")
      		  	Player.Character["Left Arm"].BrickColor = BrickColor.new("Dirt brown")
       			Player.Character["Right Arm"].BrickColor = BrickColor.new("Dirt brown")
        		Player.Character["Left Leg"].BrickColor = BrickColor.new("Dirt brown")
        		Player.Character["Right Leg"].BrickColor = BrickColor.new("Dirt brown")
        		Player.Character.Torso.BrickColor = BrickColor.new("Dirt brown")
			end) wait() until Player:FindFirstChild("Torso") and Player.Torso.BrickColor == BrickColor.new("Dirt brown")
		end
	end)
end


wait(1)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character = Player.Character
local Humanoid  = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Torso = Character:FindFirstChild("Torso")
local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
local RightArm = Character:FindFirstChild("Right Arm")
local LeftArm = Character:FindFirstChild("Left Arm")
local RightLeg = Character:FindFirstChild("Right Leg")
local LeftLeg = Character:FindFirstChild("Left Leg")



local Funcs = {}


local Animation = "Standing"


local charWelds = {}

local Config = {
	standingSway = math.pi/45;
	walkingSway = math.pi/14;
	standingOffset = math.pi/80;
	walkingOffset = math.pi/48;
}



Humanoid.WalkSpeed = 22.4
Humanoid.JumpPower = 40

--Camera.CameraType = "Scriptable"




charWelds.HumanoidRootPart = Instance.new("Weld", HumanoidRootPart)
charWelds.HumanoidRootPart.Part0 = HumanoidRootPart
charWelds.HumanoidRootPart.Part1 = Torso

charWelds.rightArmWeld = Instance.new("Weld", Torso)
charWelds.rightArmWeld.Part0 = Torso
charWelds.rightArmWeld.Part1 = RightArm
charWelds.rightArmWeld.C0 = CFrame.new(1.5, .5, 0)
charWelds.rightArmWeld.C1 = CFrame.new(0, .5, 0)

charWelds.leftArmWeld = Instance.new("Weld", Torso)
charWelds.leftArmWeld.Part0 = Torso
charWelds.leftArmWeld.Part1 = LeftArm
charWelds.leftArmWeld.C0 = CFrame.new(-1.5, .5, 0)
charWelds.leftArmWeld.C1 = CFrame.new(0, .5, 0)

charWelds.rightLegWeld = Instance.new("Weld", Torso)
charWelds.rightLegWeld.Part0 = Torso
charWelds.rightLegWeld.Part1 = RightLeg
charWelds.rightLegWeld.C0 = CFrame.new(.5, -1.5, 0)
charWelds.rightLegWeld.C1 = CFrame.new(0, .5, 0)

charWelds.leftLegWeld = Instance.new("Weld", Torso)
charWelds.leftLegWeld.Part0 = Torso
charWelds.leftLegWeld.Part1 = LeftLeg
charWelds.leftLegWeld.C0 = CFrame.new(-.5, -1.5, 0)
charWelds.leftLegWeld.C1 = CFrame.new(0, .5, 0)

local Equipment = Instance.new("Folder", Character)




function Funcs.CFrameInterpolate(oc, c, v)
	local oc1, oc2, oc3, oc4, oc5, oc6, oc7, oc8, oc9, oc10, oc11, oc12 = oc:components()
	local c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12 = c:components()
	return CFrame.new(
		oc1 + (c1 - oc1) * v, oc2 + (c2 - oc2) * v, oc3 + (c3 - oc3) * v, oc4 + (c4 - oc4) * v, oc5 + (c5 - oc5) * v, oc6 + (c6 - oc6) * v
		, oc7 + (c7 - oc7) * v, oc8 + (c8 - oc8) * v, oc9 + (c9 - oc9) * v, oc10 + (c10 - oc10) * v, oc11 + (c11 - oc11) * v, oc12 + (c12 - oc12) * v
	)
end

function Funcs.Trail(p, c1, c2)
	local mag = (c2.p - c1.p).magnitude
	p.Size = Vector3.new(0, 0, mag)
	p.CFrame = CFrame.new(c1.p:Lerp(c2.p, 0.5))
	p.CFrame = CFrame.new(p.CFrame.p, c2.p)
end

function Funcs.AngleInterpolate(w,c,x,y,z,x1,y1,z1,l)
	w.C1 = c * CFrame.fromEulerAnglesXYZ(
		x + math.sin(math.pi / 2 * l) * (x1 - x)
		, y + math.sin(math.pi / 2 * l) * (y1 - y)
		, z + math.sin(math.pi / 2 * l) * (z1 - z)
	)
end

function Funcs.Part(Parent, t)
	local Part = Instance.new("Part", Parent)
	Part.BrickColor = t[2]
	Part.FormFactor = 3
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface
		, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
	Part.CanCollide = t[1]
	Part.Transparency = t[3]
	Part.Material = t[4]
	Part.Reflectance = t[5]
	Part.Shape = t[6]
	Part.Size = t[7]
	return Part
end

function Funcs.BlockMesh(Part, Scale)
	local BlockMesh = Instance.new("BlockMesh", Part)
	BlockMesh.Scale = Scale
	return BlockMesh
end

function Funcs.CylinderMesh(Part, Scale)
	local CylinderMesh = Instance.new("CylinderMesh", Part)
	CylinderMesh.Scale = Scale
	return CylinderMesh
end

function Funcs.SpecialMesh(Part, Scale, MeshType)
	local SpecialMesh = Instance.new("SpecialMesh", Part)
	SpecialMesh.Scale = Scale
	SpecialMesh.MeshType = MeshType
	return SpecialMesh
end

function Funcs.Weld(Part0, Part1, C0)
	local Weld = Instance.new("Weld", Part0)
	Weld.Part0, Weld.Part1, Weld.C0 = Part0, Part1, C0
	return Weld
end

function Funcs.AddEquipment()
	
	Whip = Funcs.Part(Equipment, {true, BrickColor.new("Brown"), 0, Enum.Material.SmoothPlastic, 0, Enum.PartType.Block, Vector3.new(0.2, 0.2, 1.6)})
	local WhipWeld = Funcs.Weld(RightArm, Whip, CFrame.new(0, -1.1, -0.6))
	
	Rope = Funcs.Part(Equipment, {false, BrickColor.new("Really black"), 0, Enum.Material.SmoothPlastic, 0, Enum.PartType.Block, Vector3.new(0, 0, 1)})
	local RopeMesh = Funcs.BlockMesh(Rope, Vector3.new(0.4, 0.4, 1))
	Rope.Anchored = true
	
	RopeE = Funcs.Part(Equipment, {false, BrickColor.new("Dark stone grey"), 0, Enum.Material.SmoothPlastic, 0, Enum.PartType.Block, Vector3.new(0, 0, 0)})
	local RopeEMesh = Funcs.SpecialMesh(RopeE, Vector3.new(0.8, 0.8, 0.8), "Sphere")
	RopeE.Anchored = true
	
end

local ropeEnd = CFrame.new(0, 0, 0)

function Funcs.Whip()
	if Animation ~= "Throwing" then
		Animation = "Throwing"
		
		for i = 0, 1, 0.1 do
			Funcs.AngleInterpolate(charWelds.HumanoidRootPart, CFrame.new(0, 0, 0)
				, 0, 0, 0, 0, math.pi / 8, 0, i)
			Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
				, 0, 0, -math.pi / 8, -math.pi * 5 / 4, 0, math.pi / 12, i)
			wait()
		end
		
		local targ = Mouse.Target
		local cf = Mouse.Hit
		
		for i = 0, 1, 0.2 do
			Funcs.AngleInterpolate(charWelds.HumanoidRootPart, CFrame.new(0, 0, 0)
				, 0, math.pi / 8, 0, 0, 0, 0, i)
			Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
				, -math.pi * 5 / 4, 0, math.pi / 8, 0, 0, -math.pi / 12, i)
			wait()
		end
		
		if (Torso.Position - cf.p).magnitude < 120 then
			ropeEnd = cf
			
			wait(1 / 2)
			if targ and targ.Parent and targ.Parent:FindFirstChild("Humanoid") then
				targ.Parent:BreakJoints()
			end
			
			ropeEnd = Whip.CFrame * CFrame.new(0, -1.8, -0.7)
		end
		
		Animation = "Standing"
	end
end

local Snd = Instance.new("Sound", Torso)
Snd.SoundId = "rbxassetid://163277488"
Snd.Volume = 100

Mouse.Button1Down:connect(function()
	Snd:Play()
	Funcs.Whip()
end)


Funcs.AddEquipment()

local i = 0
local camGoal = Head.CFrame
local ropeCEnd = RightArm.CFrame
ropeEnd = Whip.CFrame * CFrame.new(0, -1.8, -0.7)


RunService.Stepped:connect(function()
	
	
	local animSpeed = 0.02
	local offsetMultiplier = 1
	
	
	local ropeStart = Whip.CFrame * CFrame.new(0, 0, -0.7)
	ropeCEnd = CFrame.new(ropeCEnd.p:Lerp(ropeEnd.p, 0.2))
	RopeE.CFrame = ropeCEnd
	if Animation ~= "Throwing" then
		ropeEnd = Whip.CFrame * CFrame.new(0, -1.8, -0.7)
	end
	
	Funcs.Trail(Rope, ropeStart, ropeCEnd)
	
	
	
	if Humanoid.Jump == true then
		if Animation ~= "Throwing" then
			Animation = "Jumping"

		end
		animSpeed = 0.001
		offsetMultiplier = 3 
	elseif Torso.Velocity.magnitude > 0.4 then
		if Animation ~= "Throwing" then
			Animation = "Walking"
		end
		animSpeed = 0.1
		offsetMultiplier = 1
	else
		if Animation ~= "Throwing" then
			Animation = "Standing"
		end
		animSpeed = 0.02
		offsetMultiplier = 1
	end
	
	
	if i < 2 then
		i = i + animSpeed
	else
		i = 0
	end
	
	
	if Animation == "Standing" or Animation == "Throwing" then
		if i < 1 then
			if Animation ~= "Throwing" then
				Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
					, Config.standingSway, 0, -Config.standingOffset * offsetMultiplier, -Config.standingSway, 0, -Config.standingOffset * offsetMultiplier, i)
			end
			Funcs.AngleInterpolate(charWelds.leftArmWeld, CFrame.new(0,.5,0)
				, -Config.standingSway, 0, Config.standingOffset * offsetMultiplier, Config.standingSway, 0, Config.standingOffset * offsetMultiplier, i)
			Funcs.AngleInterpolate(charWelds.leftLegWeld, CFrame.new(0,.5,0)
				, Config.standingSway, 0, Config.standingOffset * offsetMultiplier / 2, -Config.standingSway, 0, Config.standingOffset * offsetMultiplier / 2, i)
			Funcs.AngleInterpolate(charWelds.rightLegWeld, CFrame.new(0,.5,0)
				, -Config.standingSway, 0, -Config.standingOffset * offsetMultiplier / 2, Config.standingSway, 0, -Config.standingOffset * offsetMultiplier / 2, i)
		elseif i >= 1 then
			if Animation ~= "Throwing" then
				Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
					, -Config.standingSway, 0, -Config.standingOffset * offsetMultiplier, Config.standingSway, 0, -Config.standingOffset * offsetMultiplier, i - 1)
			end
			Funcs.AngleInterpolate(charWelds.leftArmWeld, CFrame.new(0,.5,0)
				, Config.standingSway, 0, Config.standingOffset * offsetMultiplier, -Config.standingSway, 0, Config.standingOffset * offsetMultiplier, i - 1)
			Funcs.AngleInterpolate(charWelds.leftLegWeld, CFrame.new(0,.5,0)
				, -Config.standingSway, 0, Config.standingOffset * offsetMultiplier / 2, Config.standingSway, 0, Config.standingOffset * offsetMultiplier / 2, i - 1)
			Funcs.AngleInterpolate(charWelds.rightLegWeld, CFrame.new(0,.5,0)
				, Config.standingSway, 0, -Config.standingOffset * offsetMultiplier / 2, -Config.standingSway, 0, -Config.standingOffset * offsetMultiplier / 2, i - 1)
		end
	end
	if Animation == "Walking" or Animation == "Jumping" or Animation == "Throwing" or Animation == "Shooting" then
		if i < 1 then
			if Animation ~= "Throwing" then
				Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
					, Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier, -Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier, i)
			end
			Funcs.AngleInterpolate(charWelds.leftArmWeld, CFrame.new(0,.5,0)
				, -Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier, Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier, i)
			Funcs.AngleInterpolate(charWelds.leftLegWeld, CFrame.new(0,.5,0)
				, Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier / 2, -Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier / 2, i)
			Funcs.AngleInterpolate(charWelds.rightLegWeld, CFrame.new(0,.5,0)
				, -Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier / 2, Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier / 2, i)
		elseif i >= 1 then
			if Animation ~= "Throwing" then
				Funcs.AngleInterpolate(charWelds.rightArmWeld, CFrame.new(0,.5,0)
					, -Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier, Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier, i - 1)
			end
			Funcs.AngleInterpolate(charWelds.leftArmWeld, CFrame.new(0,.5,0)
				, Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier, -Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier, i - 1)
			Funcs.AngleInterpolate(charWelds.leftLegWeld, CFrame.new(0,.5,0)
				, -Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier / 2, Config.walkingSway, 0, Config.walkingOffset * offsetMultiplier / 2, i - 1)
			Funcs.AngleInterpolate(charWelds.rightLegWeld, CFrame.new(0,.5,0)
				, Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier / 2, -Config.walkingSway, 0, -Config.walkingOffset * offsetMultiplier / 2, i - 1)
		end
	end
end)