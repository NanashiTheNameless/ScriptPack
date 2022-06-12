function find(tab, arg, pos)
	for i,v in pairs(tab) do
		if v == arg and i == pos then
			return true
		end
	end
	return false
end

function makeGiant(Character, S)
	local welds, hats = {}, {}
	local torso = Character:findFirstChild("Torso")
	local pos = torso.Position
	local ssss = torso.Size.Y
	for _,v in pairs(torso:children()) do
		if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Motor") then
			table.insert(welds, {v, v.Part0, v.Part1})
		end
	end
	for _, v in pairs(Character:children()) do
		if v:IsA("Hat") then
			v.AttachmentPos = v.AttachmentPos*S
			v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
			v.Parent = nil
			table.insert(hats, v)
		elseif v:IsA("BasePart") then
			v.formFactor = "Custom"
			v.Size = v.Size*S
		elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
			v:remove()
		end
	end
	local anim = Character.Animate
	local animc = anim:clone()
	anim:remove()
	for _,v in pairs(welds) do
		local c1 = v[1].C1
		local c0 = v[1].C0
		local a1, a2, a3 = c1:toEulerAnglesXYZ()
		local b1, b2, b3 = c0:toEulerAnglesXYZ()
		c1 = CFrame.new(c1.p * S) * CFrame.Angles(a1, a2, a3)
		c0 = CFrame.new(c0.p * S) * CFrame.Angles(b1, b2, b3)
		local clon = v[1]:clone()
		v[1]:remove()
		clon.C1 = c1
		clon.C0 = c0
		clon.Part1 = v[3]
		clon.Part0 = v[2]
		clon.Parent = Character.Torso
	end
	animc.Parent = Character
	Character.Humanoid.WalkSpeed = 6+10*S
	Character:MoveTo(pos+Vector3.new(0,S*(ssss/2),0))
	wait(0.1)
	for i,v in pairs(hats) do
		v.Parent = Character
	end
end

makeGiant(workspace.ace28545, 0.5)

			