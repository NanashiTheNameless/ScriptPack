o1 = Instance.new("Part")
o1.Name = "WAVE"
o1.Parent = workspace
o1.Material = Enum.Material.Granite
o1.BrickColor = BrickColor.new("Electric blue")
o1.Transparency = 0.30000001192093
o1.Position = Vector3.new(-277.570068, 15.4718628, -1565.60864)
o1.Anchored = true
o1.CanCollide = false
o1.Size = Vector3.new(2048, 155.029999, 1968.98999)
o1.CFrame = CFrame.new(-277.570068, 15.4718628, -1565.60864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o1.Color = Color3.new(0.0352941, 0.537255, 0.811765)

function FLOAT (part)
	for i,v in pairs(part:GetChildren()) do
		if v:IsA("BodyPosition") then
			v:Destroy()
		end
	end
local m = Instance.new("BodyPosition")

m.Parent = part

m.maxForce = Vector3.new(4e+006,4e+006,4e+006)

m.position = Vector3.new(part.Position.X,workspace.WAVE.Position.Y,part.Position.Z)
end
function DestroyHorrible (part)
	if part.Name ~= "Baseplate" then
		if part.Transparency < .5 then
		FLOAT(part)
		part.Anchored = false part.Size = part.Size/1.5
		for i=1,4 do 
			part:Clone()
		end
		local o1g = Instance.new("Sound")
		o1g.Parent = part
		o1g.SoundId = "rbxassetid://516789356"
		o1g:Play()
		elseif part.Material == "Wood" or part.Material == "WoodPlanks" then
		part.Anchored = false part.Size = part.Size/1.5
		FLOAT(part)
		for i=1,4 do 
			part:Clone()
		end
		local o1j = Instance.new("Sound")
		o1j.Parent = part
		o1j.Volume = 2
		o1j.SoundId = "rbxassetid://516777998"
		o1j:Play()
		else
		FLOAT(part)
		part.Anchored = false	part.Size = part.Size/1.5
		for i=1,4 do 
			part:Clone()
		end	
		local go1 = Instance.new("Sound")
		go1.Parent = part
		go1.Volume = 1
		go1.SoundId = "rbxassetid://516777998"
		go1:Play()
		end
	end
end
myears = Instance.new('Sound')
myears.Parent = workspace
myears.Looped = false
myears.Name = "Ruski"
myears.Playing = true
myears.SoundId = "rbxassetid://557673018"
myears.Volume = .5
myears.TimePosition = 0
myears:Play()
workspace.WAVE.Touched:Connect(DestroyHorrible)
workspace.WAVE.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(-2200,0,0)
o1 = Instance.new("Sound")
o1.Parent = workspace
o1.SoundId = "rbxassetid://135560679"
o1.Volume = 1
o1:Play()
h = 0
j = 1
for i=1,2000 do
	j = j+1
	wait()
	workspace.WAVE.CFrame = workspace.WAVE.CFrame + Vector3.new(4,0,0)
	if j == 400 then
	game.workspace.Terrain:FillBlock(workspace.WAVE.CFrame,workspace.WAVE.Size,Enum.Material.Water)
		a = function(instance)
for i,v in pairs(instance:GetChildren()) do
if v.className == "Part" and v.Name ~="Baseplate" then
v.Anchored = false
end
a(v)
end
end
a(workspace)
	end
end
workspace.WAVE:Destroy()