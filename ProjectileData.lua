--[[
ProjectileData v16
Variables:

Blast_Size
Blast_Strength
Blast_Strength_PushOverride (Optional)
Blast_Sound (Optional)
Blast_Sound_Pitch (Required for Blast_Sound)
--]]


if Source == nil then return end
if Source.Parent == nil then return end
if Hit ~= nil then
	if Hit.Parent == nil then return end
	if Hit.Parent == Source.Parent and Source.Parent ~= Workspace then return end
end
if Source:FindFirstChild("CanExplode") == nil then return end
pcall(function() Source.CanExplode:Remove() end)
if Source.Parent:FindFirstChild("Projectile Source") ~= nil and Source.Parent ~= Workspace then
	Source = Source.Parent["Projectile Source"]
end
pcall(function() Source.BodyVelocity:Remove() end)
pcall(function() Source.BodyGyro:Remove() end)
pcall(function() Source.Fire.Enabled = false end)
pcall(function() Source.Smoke.Enabled = false end)
Source.Anchored = true
Source.CanCollide = false
Source.Transparency = 1
Source:BreakJoints()
if Source.Parent ~= Workspace then
	for _, Part in pairs(Source.Parent:GetChildren()) do
		if Part ~= Source then
			Part:Remove()
		end
	end
end
local function Push(Part)
	if Part == Source then return end
	for _, Parts in pairs(Part:GetChildren()) do
		Push(Parts)
	end
	if not Part:IsA("BasePart") then return end
	if Part.Anchored == true then return end
	if (Part.Position - Source.Position).magnitude > Blast_Size then return end
	if Part.Parent:FindFirstChild("Humanoid") ~= nil then
		if Source:FindFirstChild("creator") ~= nil then
			local creator = Source.creator:Clone()
			creator:clone().Parent = Part.Parent.Humanoid
		end
		if math.random(1, 3) == 1 then Part.Parent.Humanoid.Sit = true end
		Part.Parent.Humanoid:TakeDamage((Blast_Strength * ((Part.Position - Source.Position).magnitude / Blast_Size)) + math.random(-5000, 5000) / 1000)
		if creator ~= nil then
			game:GetService("Debris"):AddItem(creator, 0.1)
		end
	end
	if math.random(0, ((Part.Position - Source.Position).magnitude / Blast_Size) * (100 - Blast_Strength <= 1 and 1 or 100 - Blast_Strength)) == 0 then
		Part:BreakJoints()
	end
	Part.Velocity = Part.Velocity + (((Part.Position - Source.Position).unit * (Blast_Strength_PushOverride or Blast_Strength)) *((Part.Position - Source.Position).magnitude / Blast_Size))
end
Push(Workspace)
for i = 1, math.random(7, 10) do
	local Blast = Instance.new("Part")
	Blast.Name = "Blast"
	Blast.TopSurface = 0
	Blast.BottomSurface = 0
	local Color = math.random(1, 6)
	if Color == 1 then
		Blast.BrickColor = BrickColor.new("White")
	elseif Color == 2 then
		Blast.BrickColor = BrickColor.new("Really red")
	elseif Color == 3 then
		Blast.BrickColor = BrickColor.new("Black")
	else
		Blast.BrickColor = BrickColor.new("Institutional white")
	end
	Blast.Anchored = true
	Blast.CanCollide = false
	Blast.FormFactor = "Custom"
	Blast.Size = Vector3.new(1, 1, 1)
	Blast.CFrame = Source.CFrame * CFrame.new(math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000)
	Blast.Parent = Workspace
	Instance.new("SpecialMesh", Blast).MeshType = "Sphere"
	coroutine.wrap(function()
		for i = 0, 1, 0.01 + (math.random() * 0.05) do
			pcall(function()
				Blast.Transparency = i
				Blast.Mesh.Scale = Vector3.new(i, i, i) * Blast_Size
			end)
			wait()
		end
		Blast:Remove()
	end)()
end
if Blast_Sound == true or Blast_Sound == nil then
	for i = 0, math.random(3, 5) do
		local Sound = Instance.new("Sound", Source)
		Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
		Sound.Volume = 1
		Sound.Pitch = Blast_Sound_Pitch + (math.random(-250, 250) / 1000)
		Sound:Play()
	end
end
wait(5)
if Source.Parent == nil or Source.Parent == Workspace then
	Source:Remove()
else
	Source.Parent:Remove()
end
