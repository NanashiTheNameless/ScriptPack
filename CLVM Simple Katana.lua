-- Objects

local Sword = Instance.new("Model")
local Player = game.Players.LocalPlayer
local Char = Player.Character
local BaseAttachment = Instance.new("Attachment")
local BladeAttackment = Instance.new("Attachment")
local Blade = Instance.new("Part")
local Mouse = Player:GetMouse()
local Trail = Instance.new("Trail")
local RunService = game:GetService("RunService")
local Handle = Instance.new("Part")
local HandleToBlade = Instance.new("Weld")
local HandToTorso = Instance.new("Weld")
local HandleToHand = Instance.new("Weld")
local BladeToSharp = Instance.new("Weld")
local Sharp = Instance.new("WedgePart")
local Slash = false
local Blood = Instance.new("Part")
local BloodCont = Instance.new("Model")
local Smoothner = Instance.new("BlockMesh")
local Attacking = false
local HitSound = Instance.new("Sound")
local SlashSound = Instance.new("Sound")
local CFrames = 
{
	t_HandToTorso = 
	{
		BackClick = CFrame.new(-1.5, 1, 0) * CFrame.Angles(3.5, 0, 0),
		BackStab =  CFrame.new(-1.5, 0.5, -0.5) * CFrame.Angles(1.5, 0, 0),
		FrontClick = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
		FrontStab = CFrame.new(-1.5, 0.5, 0.5) * CFrame.Angles(-1.5, 0, 0)
	},
	t_HandleToHand = 
	{
		BackClick = CFrame.new(0, 0, 0) * CFrame.Angles(-5, 0.2, 1),
		BackStab = CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, 0),
		FrontClick = CFrame.new(0, 0, 0) * CFrame.Angles(1.5, 0, 0),
		FrontStab = CFrame.new(0, 0, 0) * CFrame.Angles(3, 0, 0)
	}
}

-- Assets

game.ContentProvider:Preload("rbxassetid://196969716") -- Trail Texutre
game.ContentProvider:Preload("rbxassetid://158037267") -- Slash Sound
game.ContentProvider:Preload("rbxassetid://186311262") -- Hit Sound

-- Properties

Sword.Parent = Char
Sword.Name = "Sword"

Handle.BrickColor = BrickColor.new("Dark orange")
Handle.Material = "Marble"
Handle.Name = "Handle"
Handle.Anchored = false
Handle.CanCollide = false
Handle.Size = Vector3.new(0.1, 1, 0.35)
Handle.BackSurface = "SmoothNoOutlines"
Handle.BottomSurface = "SmoothNoOutlines"
Handle.FrontSurface = "SmoothNoOutlines"
Handle.LeftSurface = "SmoothNoOutlines"
Handle.RightSurface = "SmoothNoOutlines"
Handle.TopSurface = "SmoothNoOutlines"


Blade.BrickColor = BrickColor.new("Fossil")
Blade.Material = "Neon"
Blade.Name = "Blade"
Blade.Anchored = false
Blade.CanCollide = false
Blade.Size = Vector3.new(0.1, 4.84, 0.35)
Blade.BackSurface = "SmoothNoOutlines"
Blade.BottomSurface = "SmoothNoOutlines"
Blade.FrontSurface = "SmoothNoOutlines"
Blade.LeftSurface = "SmoothNoOutlines"
Blade.RightSurface = "SmoothNoOutlines"
Blade.TopSurface = "SmoothNoOutlines"

Sharp.BrickColor = BrickColor.new("Fossil")
Sharp.Material = "Neon"
Sharp.Name = "Sharp"
Sharp.Anchored = false
Sharp.CanCollide = false
Sharp.Size = Vector3.new(0.1, 1, 0.35)
Sharp.BackSurface = "SmoothNoOutlines"
Sharp.BottomSurface = "SmoothNoOutlines"
Sharp.FrontSurface = "SmoothNoOutlines"
Sharp.LeftSurface = "SmoothNoOutlines"
Sharp.RightSurface = "SmoothNoOutlines"
Sharp.TopSurface = "SmoothNoOutlines"

Blood.BrickColor = BrickColor.new("Really red")
Blood.Size = Vector3.new(0.5, 0.3, 0.6)

BloodCont.Name = "BloodCont"

Smoothner.Parent = Blood

BaseAttachment.Parent = Sharp
BladeAttackment.Parent = Blade

Trail.Attachment0 = BaseAttachment
Trail.Attachment1 = BladeAttackment
Trail.Parent = Sharp
Trail.Enabled = false
Trail.Transparency = NumberSequence.new(0, 1)
Trail.Texture = "rbxassetid://196969716"
Trail.Lifetime = 0.15

SlashSound.Parent = Handle
SlashSound.Name = "SlashSound"
SlashSound.Volume = 0.4
SlashSound.SoundId = "rbxassetid://158037267"

HitSound.Parent = Handle
HitSound.Name = "HitSound"
HitSound.Volume = 0.4
HitSound.PlaybackSpeed = 2.4
HitSound.SoundId = "rbxassetid://186311262"

-- Welds

HandleToBlade.Part0 = Handle
HandleToBlade.C0 = CFrame.new(0, 2.92, 0)
HandleToBlade.Part1 = Blade
HandleToBlade.Name = "HandleToBlade"
HandleToBlade.Parent = Handle

BladeToSharp.Part0 = Sharp
BladeToSharp.C0 = CFrame.new(0, -2.92, 0)
BladeToSharp.Part1 = Blade
BladeToSharp.Parent = Handle
BladeToSharp.Name = "BladeToSharp"

HandleToHand.Part0 = Handle
HandleToHand.Name = "HandleToHand"
HandleToHand.C0 = CFrame.Angles(1.5, 0, 0)
HandleToHand.C1 = CFrame.new(0, -1, 0)
HandleToHand.Part1 = Char["Right Arm"]
HandleToHand.Parent = Handle

HandToTorso.Part0 = Char["Right Arm"]
HandToTorso.Part1 = Char.Torso
HandToTorso.Name = "HandToTorso"
HandToTorso.Parent = Handle
HandToTorso.C0 = CFrame.new(-1.5, 0, 0)

Handle.Parent = Sword
Blade.Parent = Sword
Sharp.Parent = Sword

-- Functions


Mouse.Button1Down:Connect(function()
	if Slash == false then
		CFrames.t_HandleToHand.Back = CFrame.new(0, 0, 0) * CFrame.Angles(-5, math.random(-1, 1.2), 1)
		Trail.Enabled = true
		Slash = true
		
		for Back = 0, 1, 0.05 do
			HandleToHand.C0 = HandleToHand.C0:lerp(CFrames.t_HandleToHand.BackClick, Back)
			HandToTorso.C0 = HandToTorso.C0:lerp(CFrames.t_HandToTorso.BackClick, Back)
			RunService.Stepped:wait()
		end
		
		SlashSound:Play()	
		
		for Front = 0, 1, 0.1 do
			HandleToHand.C0 = HandleToHand.C0:lerp(CFrames.t_HandleToHand.FrontClick, Front)
			HandToTorso.C0 = HandToTorso.C0:lerp(CFrames.t_HandToTorso.FrontClick, Front)
			RunService.Stepped:wait()
		end
		
		Slash = false
		Trail.Enabled = false
	end
end)

Mouse.KeyDown:Connect(function(key)
	if key == "q" and Slash == false then
		Slash = true
		Trail.Enabled = true
		
		for Back = 0, 1, 0.025 do
			HandleToHand.C0 = HandleToHand.C0:lerp(CFrames.t_HandleToHand.BackStab, Back)
			HandToTorso.C0 = HandToTorso.C0:lerp(CFrames.t_HandToTorso.BackStab, Back)
			RunService.Stepped:wait()
		end
		
		SlashSound:Play()	
		
		for Front = 0, 1, 0.1 do
			HandleToHand.C0 = HandleToHand.C0:lerp(CFrames.t_HandleToHand.FrontStab, Front)
			HandToTorso.C0 = HandToTorso.C0:lerp(CFrames.t_HandToTorso.FrontStab, Front)
			RunService.Stepped:wait()
		end
		
		for Def = 0, 1, 0.1 do
			HandleToHand.C0 = HandleToHand.C0:lerp(CFrames.t_HandleToHand.FrontClick, Def)
			HandToTorso.C0 = HandToTorso.C0:lerp(CFrames.t_HandToTorso.FrontClick, Def)
			RunService.Stepped:wait()
		end
		
		Slash = false
		Trail.Enabled = false
	end
end)

Blade.Touched:Connect(function(hit)
	if Slash == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= game.Players.LocalPlayer.Character and Attacking == false then
		hit.Parent.Humanoid:TakeDamage(math.random(10, 20))
		Handle.HitSound.Playing = true
		Attacking = true
		BloodCont.Parent = hit.Parent.Torso
		for i = 1, math.random(4, 7) do
			local CBlood = Blood:Clone()
			CBlood.Parent = BloodCont
			CBlood.CFrame = hit.Parent.Torso.CFrame
		end
		wait(0.5)
		BloodCont:Remove()
		Attacking = false
	end
end)