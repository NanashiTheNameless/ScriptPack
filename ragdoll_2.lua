function Ragdoll(Character)
	local Joints = {}
	local Rotates = {}
	local Anim
	local Torso = Character:findFirstChild("Torso")
	if Torso then
		local Humanoid = Character:findFirstChild("Humanoid")
		Anim = Character:findFirstChild("Animate")
		for _, v in pairs(Torso:children()) do
			if v:IsA("Motor6D") then
				local Rotate = Instance.new("Rotate")
				Rotate.C0 = v.C0
				Rotate.C1 = v.C1
				Rotate.Part0 = v.Part0
				Rotate.Part1 = v.Part1
				Rotate.Name = v.Name
				local Rotate2 = Rotate:clone()
				Rotate2.C0 = Rotate.C0 * CFrame.Angles(0, math.rad(90), 0)
				table.insert(Joints, v)
				table.insert(Rotates, Rotate2)
				table.insert(Rotates, Rotate)
			end
		end
		local function Rotation()
			if Anim then
				Anim.Parent = nil
			end
			for _,v in pairs(Joints) do
				v.Parent = nil
			end
			for _,v in pairs(Rotates) do
				v.Parent = Torso
			end
		end
		local function Connect()
			for _,v in pairs(Rotates) do
				v.Parent = nil
			end
			for _,v in pairs(Joints) do
				v.Parent = Torso
			end
			if Anim then
				Anim.Parent = Character
			end
		end
		if Humanoid then
			Humanoid.Changed:connect(function(Derp)
				if Derp == "PlatformStand" then
					if Humanoid.PlatformStand then
						Rotation()
					else
						Connect()
					end
				end
			end)
		end
	end
end

Ragdoll(workspace.xSoulStealerx)
