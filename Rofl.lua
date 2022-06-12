--..............................................................................................................................................................................................................................................................................................................
script.Parent = Workspace
script.Name = "Rofl"
player = ""
while true do
	for i, v in ipairs(Workspace:GetChildren()) do
		if string.match(v.Name, player) then
			if v:FindFirstChild("Neck", true) ~= nil then
				v:FindFirstChild("Neck", true).C0 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				v:FindFirstChild("Neck", true).C1 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			end
			if v:FindFirstChild("Left Shoulder", true) ~= nil then
				v:FindFirstChild("Left Shoulder", true).C0 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				v:FindFirstChild("Left Shoulder", true).C1 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			end
			if v:FindFirstChild("Right Shoulder", true) ~= nil then
				v:FindFirstChild("Right Shoulder", true).C0 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				v:FindFirstChild("Right Shoulder", true).C1 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			end
			if v:FindFirstChild("Left Hip", true) ~= nil then
				v:FindFirstChild("Left Hip", true).C0 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				v:FindFirstChild("Left Hip", true).C1 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			end
			if v:FindFirstChild("Right Hip", true) ~= nil then
				v:FindFirstChild("Right Hip", true).C0 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				v:FindFirstChild("Right Hip", true).C1 = CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			end
			if v:FindFirstChild("Humanoid", true) ~= nil then
				v:FindFirstChild("Humanoid", true).Health = math.random(1, v:FindFirstChild("Humanoid", true).MaxHealth)
				v:FindFirstChild("Humanoid", true).Sit = math.random(0, 1)
			end
		end
	end
	wait()
end