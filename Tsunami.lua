local Sea = Instance.new("Part")
Sea.FormFactor = "Custom"
Sea.BrickColor = BrickColor.new("Bright blue")
Sea.Transparency = 0.4
Sea.Reflectance = 0
Sea.Size = Vector3.new(1, 1, 1)
Sea.Anchored = true
Sea.CanCollide = false
Sea.Name = "Sea"
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Parent = Sea
Sea.Parent = Workspace
local tideWaver = 0
local tideWaverMult = 50
local tideLow = 100
local tideHigh = 250
local tidePosition = 0
tide = math.random(tideLow, tideHigh)
while true do
	if Sea == nil then break end
	if Sea.Parent == nil then break end
	if math.random(1, 500) == 1 then tide = math.random(tideLow, tideHigh) end
	if tidePosition < tide then
		tidePosition = tidePosition + 0.1
	elseif tidePosition > tide then
		tidePosition = tidePosition - 0.1
	else
		tidePosition = tide
	end
	tideWaver = tideWaver + 0.01
	Sea.CFrame = CFrame.new(0, (tidePosition / 2) + ((math.sin(tideWaver) * tideWaverMult) / 2), 0)
	Mesh.Scale = Vector3.new(10000, tidePosition + (math.sin(tideWaver) * tideWaverMult), 10000)
	for _, p in pairs(game:GetService("Players"):GetPlayers()) do
		if p.Character ~= nil then
			if p.Character:FindFirstChild("Head") ~= nil then
				local pg = p:FindFirstChild("PlayerGui")
				if pg == nil then pg = Instance.new("PlayerGui", p) end
				if p.Character.Head.Position.y < tidePosition + (math.sin(tideWaver) * tideWaverMult) then
					if pg:FindFirstChild("Sea") == nil then
						local s = Instance.new("ScreenGui")
						s.Name = "Sea"
						f = Instance.new("Frame")
						f.BackgroundTransparency = 1
						f.BackgroundColor3 = Color3.new(0, 0, 1)
						f.Size = UDim2.new(2, 0, 2, 0)
						f.Position = UDim2.new(-1, 0, -1, 0)
						f.Parent = s
						s.Parent = pg
						coroutine.resume(coroutine.create(function()
							local t = Sea.Transparency
							for x = 1, t, -0.05 do
								f.BackgroundTransparency = x
								wait()
							end
							f.BackgroundTransparency = t
						end))
					end
				else
					if pg:FindFirstChild("Sea") ~= nil then
						coroutine.resume(coroutine.create(function()
							local s = pg.Sea
							for x = s.Frame.BackgroundTransparency, 1, 0.05 do
								s.Frame.BackgroundTransparency = x
								wait()
							end
							s:Remove()
						end))
					end
				end
			end
			if p.Character:FindFirstChild("Torso") ~= nil then
				if p.Character.Torso.Position.y + 0.5 < tidePosition + (math.sin(tideWaver) * tideWaverMult) then
					p.Character.Torso.Velocity = p.Character.Torso.Velocity + Vector3.new(0, 7.5 * (function() local vel = (math.abs(p.Character.Torso.Velocity.y - tidePosition) / 30) if vel > 25 then return 25 else return vel end end)(), 0)
				end
			end
		end
	end
	wait()
end