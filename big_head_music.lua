local Player = game.Players.LocalPlayer
local Character = Player.Character
local Torso = Character["Torso"]
local Head = Character["Head"]
local Humanoid = Character.Humanoid
local iiFootFetish = game.Workspace.iiFootFetish
iiFootFetish["Right Leg"]:Remove()
iiFootFetish["Left Leg"]:Remove()

wait()
Head.Transparency = 1
Humanoid.MaxHealth = math.huge
Humanoid.Health = Humanoid.MaxHealth


function CreateWeld(Part0,Part1,C1)
	local weld = Instance.new("Weld")
	weld.Parent = Part0
	weld.Part0 = Part0
	weld.Part1 = Part1
	weld.C1 = C1
end

local GiantHead = Instance.new("Part")
GiantHead.Parent = Head
GiantHead.Color = Head.Color
GiantHead.Size = Vector3.new(5,5,5)
GiantHead.CanCollide = true
GiantHead.Locked = true
GiantHead.TopSurface = "Smooth"
GiantHead.BottomSurface = "Smooth"
local GiantHeadWeld = CreateWeld(Torso,GiantHead,CFrame.new(0,-1,0))
local Mouth = Instance.new("Part")
Mouth.Parent = GiantHead
Mouth.Color = Color3.new(0,0,0)
Mouth.Size = Vector3.new(3.88, 0.2, 0.5)
Mouth.CanCollide = false
Mouth.Locked = true
Mouth.TopSurface = "Smooth"
Mouth.BottomSurface = "Smooth"
local MouthMesh = Instance.new("SpecialMesh")
MouthMesh.Parent = Mouth
MouthMesh.MeshType = "Sphere"
local MouthWeld = CreateWeld(GiantHead,Mouth,CFrame.new(0,1,2.5))
local Eye = Instance.new("Part")
Eye.Parent = GiantHead
Eye.BrickColor = BrickColor.new("Lily white")
Eye.Size = Vector3.new(2,2,2)
Eye.CanCollide = false
Eye.TopSurface = "Smooth"
Eye.BottomSurface = "Smooth"
local EyeMesh = Instance.new("SpecialMesh")
EyeMesh.Parent = Eye
EyeMesh.MeshType = "Sphere"
CreateWeld(GiantHead,Eye,CFrame.new(1,-1,1.6))
local Pupil = Instance.new("Part")
Pupil.Parent = Eye
Pupil.Color = Torso.Color
Pupil.CanCollide = false
Pupil.Size = Vector3.new(0.5,0.5,0.5)
Pupil.TopSurface = "Smooth"
Pupil.BottomSurface = "Smooth"
local PupilMesh = Instance.new("SpecialMesh")
PupilMesh.Parent = Pupil
PupilMesh.MeshType = "Sphere"
CreateWeld(Eye,Pupil,CFrame.new(0,0,0.8))
local coro = coroutine.resume(coroutine.create(function()
	while wait(5) do
		Eye.Color = Head.Color
		Pupil.Transparency = 1
		wait(0.01)
		Eye.BrickColor = BrickColor.new("Lily white")
		Pupil.Transparency = 0
	end
end))
local Eye = Instance.new("Part")
Eye.Parent = GiantHead
Eye.BrickColor = BrickColor.new("Lily white")
Eye.Size = Vector3.new(2,2,2)
Eye.CanCollide = false
Eye.TopSurface = "Smooth"
Eye.BottomSurface = "Smooth"
local EyeMesh = Instance.new("SpecialMesh")
EyeMesh.Parent = Eye
EyeMesh.MeshType = "Sphere"
CreateWeld(GiantHead,Eye,CFrame.new(-1,-1,1.6))
local Pupil = Instance.new("Part")
Pupil.Parent = Eye
Pupil.Color = Torso.Color
Pupil.CanCollide = false
Pupil.Size = Vector3.new(0.5,0.5,0.5)
Pupil.TopSurface = "Smooth"
Pupil.BottomSurface = "Smooth"
local PupilMesh = Instance.new("SpecialMesh")
PupilMesh.Parent = Pupil
PupilMesh.MeshType = "Sphere"
CreateWeld(Eye,Pupil,CFrame.new(0,0,0.8))
local coro = coroutine.resume(coroutine.create(function()
	while wait(5) do
		Eye.Color = Head.Color
		Pupil.Transparency = 1
		wait(0.01)
		Eye.BrickColor = BrickColor.new("Lily white")
		Pupil.Transparency = 0
	end
end))
for _,v in pairs(Character:GetChildren())do
	if v:IsA("Hat") then
		for _,c in pairs(v:GetChildren())do
			if c:IsA("Part") then
				for _,d in pairs(c:GetChildren())do
					if d:IsA("SpecialMesh") then
						d.Scale = d.Scale * Vector3.new(5,5,5)
						d.Offset = Vector3.new(0,(c.Position - GiantHead.Position).magnitude * 2.5,0)
					end
				end
			end
		end
	end
end
local Sound = Instance.new("Sound")
Sound.Parent = Head
Sound.Looped = true
Sound.SoundId = "rbxassetid://"
Sound.Volume = math.huge
ID = ""
local SoundIsPlaying = false

Player.Chatted:connect(function(msg)
	if msg:sub(1,6):lower() == "music;" then
		local Id = string.sub(msg,7)
		Sound.SoundId = "rbxassetid://"..Id
		ID = Id
		Sound:Play()
		SoundIsPlaying = true
	end
end)
while wait(0.1) do
	if SoundIsPlaying == true then
		if Sound.Parent == nil then
			local Sound2 = Instance.new("Sound")
			Sound2.Parent = Head
			Sound2.Looped = true
			Sound2.SoundId = "rbxassetid://"..ID
			Sound2.Volume = math.huge
			Sound2:Play()
			Sound = Sound2
		end
		if Sound.PlaybackLoudness > 1 then
			Mouth.Size = Vector3.new(Sound.PlaybackLoudness/150,Sound.PlaybackLoudness/250,Sound.PlaybackLoudness/2000)
			local MouthWeld = CreateWeld(GiantHead,Mouth,CFrame.new(0,1,2.5))
		elseif Sound.PlaybackLoudness <= 1 then
			Mouth.Size = Vector3.new(3.88, 0.2, 0.5)
			local MouthWeld = CreateWeld(GiantHead,Mouth,CFrame.new(0,1,2.5))
		end
	end
end