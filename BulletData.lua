--[[
Bullet Data v2
Variables:

Damage_Head
Damage_Torso
Damage_Limb
Damage_Other

Dust_Size_Min
Dust_Size_Max
Dust_Add

Spark_Min
Spark_Max
Spark_Size_Min
Spark_Size_Max
Spark_Add

Chunk_Min
Chunk_Max
--]]


if Hit == nil then return end
if Hit.Name == "Bullet" or Hit.Name == "Bullet Effect" then return end
Source.Anchored = true
if Hit.Anchored == false then
	Hit.Velocity = Hit.Velocity + ((Source.Velocity / Hit:GetMass()) * Velocity_Transfer)
end
local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
if Humanoid ~= nil then
	if Source:FindFirstChild("creator") == nil then return end
	local creator = Source.creator
	creator.Parent = Humanoid
	Humanoid:TakeDamage((function()
		if Hit.Name == "Head" then
			return Damage_Head
		elseif Hit.Name == "Torso" then
			return Damage_Torso
		elseif string.match(Hit.Name, "Arm") or string.match(Hit.Name, "Leg") then
			return Damage_Limb
		else
			return Damage_Other
		end
	end)())
	coroutine.wrap(function() wait(0.1) creator:Remove() end)()
elseif Hit.Material.Name == "Grass" or Hit.Material.Name == "Plastic" then
	local Dust = Instance.new("Part", Workspace)
	Dust.Name = "Bullet Effect"
	Dust.TopSurface = 0
	Dust.BottomSurface = 0
	Dust.BrickColor = Hit.BrickColor
	Dust.CanCollide = false
	Dust.Locked = true
	Dust.Anchored = true
	Dust.FormFactor = "Custom"
	Dust.Size = Vector3.new(1, 1, 1)
	Dust.CFrame = Source.CFrame
	local Mesh = Instance.new("SpecialMesh", Dust)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0, 0, 0)
	local Id = tostring(math.random(1, 3))
	if Id == "1" then Id = "" end
	local Sound = Instance.new("Sound", Dust)
	Sound.SoundId = "rbxasset://sounds/grass" ..Id.. ".ogg"
	Sound.Volume = 1
	Sound.Pitch = math.random(150, 2500) / 1000
	Sound:Play()
	coroutine.wrap(function()
		local Size = math.random(Dust_Size_Min * 1000, Dust_Size_Max * 1000) / 1000
		for i = 0, 1, Dust_Add do
			Mesh.Scale = Size * i * Vector3.new(1, 1, 1)
			Dust.Transparency = i
			wait()
		end
		Dust:Remove()
	end)()
elseif Hit.Material.Name == "CorrodedMetal" or Hit.Material.Name == "DiamondPlate" or Hit.Material.Name == "Foil" then
	for i = 1, math.random(Spark_Min, Spark_Max) do
		local Spark = Instance.new("Part", Workspace)
		Spark.Name = "Bullet Effect"
		Spark.TopSurface = 0
		Spark.BottomSurface = 0
		Spark.BrickColor = BrickColor.new("New Yeller")
		Spark.CanCollide = false
		Spark.Locked = true
		Spark.Anchored = true
		Spark.FormFactor = "Custom"
		Spark.Size = Vector3.new(1, 1, 1)
		Spark.CFrame = Source.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
		local Mesh = Instance.new("SpecialMesh", Spark)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0, 0, 0)
		if i == 1 then
			local Id = tostring(math.random(1, 3))
			if Id == "1" then Id = "" end
			local Sound = Instance.new("Sound", Spark)
			Sound.SoundId = "rbxasset://sounds/metal" ..Id.. ".ogg"
			Sound.Volume = 1
			Sound.Pitch = math.random(150, 2500) / 1000
			Sound:Play()
		end
		coroutine.wrap(function()
			local Size = math.random(Spark_Size_Min * 1000, Spark_Size_Max * 1000) / 1000
			for i = 0, 1, Spark_Add do
				Mesh.Scale = Vector3.new(0.1 * i, 0.1 * 1, Size * i)
				Spark.Transparency = i
				wait()
			end
			Spark:Remove()
		end)()
	end
elseif Hit.Material.Name == "Concrete" or Hit.Material.Name == "Wood" or Hit.Material.Name == "Slate" or Hit.Material.Name == "Ice" then
	for i = 1, math.random(Chunk_Min, Chunk_Max) do
		local Chunk = Instance.new("Part", Workspace)
		Chunk.Name = "Bullet Effect"
		Chunk.TopSurface = 0
		Chunk.BottomSurface = 0
		Chunk.BrickColor = Hit.BrickColor
		Chunk.Material = Hit.Material
		Chunk.Locked = true
		Chunk.CanCollide = true
		Chunk.FormFactor = "Custom"
		Chunk.Size = Vector3.new(math.random(200, 500) / 1000, math.random(200, 500) / 1000, math.random(200, 500) / 1000)
		Chunk.Velocity = Vector3.new(math.random(-50000, 50000) / 1000, math.random(-50000, 50000) / 1000, math.random(-50000, 50000) / 1000)
		Chunk.CFrame = Source.CFrame * CFrame.new(math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000)
		if i == 1 then
			local Id = tostring(math.random(1, 3))
			if Id == "1" then Id = "" end
			local Sound = Instance.new("Sound", Chunk)
			Sound.SoundId = "rbxasset://sounds/stone" ..Id.. ".ogg"
			Sound.Volume = 1
			Sound.Pitch = math.random(150, 2500) / 1000
			Sound:Play()
		end
		game:GetService("Debris"):AddItem(Chunk, math.random(6, 12))
	end
end
Source:Remove()