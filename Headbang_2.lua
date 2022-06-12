local Frequency = 0.5
for i = 0, math.huge, Frequency do
	for _, p in pairs(game.Players:GetChildren()) do
		if p.Character ~= nil then
			if p.Character:FindFirstChild("Torso") ~= nil then
				if p.Character:FindFirstChild("Animate") ~= nil then p.Character.Animate:Remove() end
				if p.Character.Torso:FindFirstChild("Neck") ~= nil then 
					p.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.sin(i), 0, 0)
					p.Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0)
				end
				if p.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then 
					p.Character.Torso["Left Shoulder"].DesiredAngle = math.sin(i) - math.rad(140)
					p.Character.Torso["Left Shoulder"].MaxVelocity = math.random(4, 6) / 10
				end
				if p.Character.Torso:FindFirstChild("Right Shoulder") ~= nil then 
					p.Character.Torso["Right Shoulder"].DesiredAngle = -math.sin(i) + math.rad(140)
					p.Character.Torso["Right Shoulder"].MaxVelocity = math.random(4, 6) / 10
				end
				if p.Character.Torso:FindFirstChild("Left Hip") ~= nil then 
					p.Character.Torso["Left Hip"].DesiredAngle = math.sin(i / 2)
					p.Character.Torso["Left Hip"].MaxVelocity = math.random(4, 6) / 10
				end
				if p.Character.Torso:FindFirstChild("Right Hip") ~= nil then 
					p.Character.Torso["Right Hip"].DesiredAngle = math.sin(i / 2)
					p.Character.Torso["Right Hip"].MaxVelocity = math.random(4, 6) / 10
				end
			end
		end
	end
	wait()
end