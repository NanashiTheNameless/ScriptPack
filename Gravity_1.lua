function SetGravity(Part, Gravity)
	if Part == nil or gravity == nil or mode == nil then return false end
	Gravity = (-196.25 * (Gravity / 100)) + 196.25
	if Part:IsA("BasePart") then
		if Part:FindFirstChild("Gravity") ~= nil then Part.Gravity:Remove() end
		BodyForce = Instance.new("BodyForce")
		BodyForce.Name = "Gravity"
		BodyForce.force = Vector3.new(0, Part:GetMass() * gravity, 0)
		BodyForce.Parent = Part
		return true
	else
		return false
	end
end