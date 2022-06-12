print("--Generated with PartsToScript by DarkShadow6--\n\n")


for _, Part in pairs(Workspace:GetChildren()) do
	if Part:IsA("BasePart") then
		print("local Part = Instance.new(\"" ..Part.ClassName.. "\")\n\
