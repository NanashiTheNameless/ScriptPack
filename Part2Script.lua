Values = {
	"Name",
	"BrickColor",
	"TopSurface",
	"BottomSurface",
	"LeftSurface",
	"RightSurface",
	"FrontSurface",
	"BackSurface",
	"FormFactor",
	"Shape",
	"Size"
}
for _, Part in pairs(Workspace.Model:GetChildren()) do
	print([[local Part = Instance.new("]] ..Part.ClassName.. [[", Parts)]])
	for i = 1, #Values do
		local Add1 = nil
		local Add2 = nil
		local Value = Part[Values[i]]
		if type(Value) == "userdata" then
			if pcall(function() return Value.unit end) == true then
				Add1 = "Vector3.new("
				Add2 = ")"
			elseif pcall(function() return Value.p end) == true then
				Add1 = "CFrame.new("
				Add2 = ")"
			elseif pcall(function() return Value.Number end) == true then
				Add1 = "BrickColor.new(\""
				Add2 = "\")"
			end
		elseif type(Value) == "string" then
			Add1 = "\""
			Add2 = "\""
		end
		print("Part." .. Values[i] .. " = " .. (Add1 or "") .. tostring(Value) .. (Add2 or ""))
	end
	if Part:FindFirstChild("Mesh") ~= nil then
		print([[local Mesh = Instance.new("]] ..Part.Mesh.ClassName.. [[", Part)]])
		pcall(function()
			print([[Mesh.MeshType = "]] ..Part.Mesh.MeshType.. [["]])
			print([[Mesh.MeshId = "]] ..Part.Mesh.MeshId.. [["]])
			print([[Mesh.TextureId = "]] ..Part.Mesh.TextureId.. [["]])
			print([[Mesh.VertexColor = Vector3.new(]] ..tostring(Part.Mesh.VertexColor).. [[)]])
		end)
		print([[Mesh.Scale = Vector3.new(]] ..tostring(Part.Mesh.Scale).. [[)]])
		pcall(function() print([[Mesh.Offset = Vector3.new(]] ..tostring(Part.Mesh.Offset).. [[)]]) end)
	end
	if Part:FindFirstChild("Weld") ~= nil then
		print([[local Weld = Instance.new("]] ..Part.Weld.ClassName.. [[", Part)]])
		print([[Weld.Part0 = Weld.Parent]])
		print([[Weld.Part1 = Parts.Handle]])
		print([[Weld.C0 = CFrame.new(]] ..tostring(Part.Weld.C0).. [[)]])
		print([[Weld.C1 = CFrame.new(]] ..tostring(Part.Weld.C1).. [[)]])
	end
end