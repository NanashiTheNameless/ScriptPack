Scale = 0.3


function DarkColor(Source)
	for _, Part in pairs(Source:GetChildren()) do
		if Part:IsA("Clothing") or Part:IsA("CharacterMesh") or Part:IsA("BodyColors") or Part:IsA("Decal") or Part:IsA("Texture") or Part:IsA("ShirtGraphic") or Part:IsA("CylinderMesh") or Part:IsA("BlockMesh") then
			Part:Remove()
		elseif Part:IsA("BasePart") then
			if Part:FindFirstChild("Mesh") == nil then
				local Mesh = Instance.new("SpecialMesh", Part)
				Mesh.MeshType = "FileMesh"
				Mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
				Mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
				Mesh.Scale = Part.Size * 2
				Mesh.VertexColor = Vector3.new(Part.BrickColor.r, Part.BrickColor.g, Part.BrickColor.b)
				Part.BrickColor = BrickColor.new("Institutional white")
			end
			if Part:FindFirstChild("Direction") == nil then
				local Direction = Instance.new("BoolValue", Part)
				Direction.Name = "Direction"
				Direction.Value = math.random(1, 2) == 1 and false or true
			end
			if Part:FindFirstChild("") == nil then
				local Increment = Instance.new("NumberValue", Part)
				Increment.Name = "Increment"
				Increment.Value = math.random(0, 1000) / 1000
			end
			if Part:FindFirstChild("OriginalColor") == nil then
				local OriginalColor = Instance.new("Vector3Value", Part)
				OriginalColor.Name = "OriginalColor"
				OriginalColor.Value = Part.Mesh.VertexColor
			end
			if Part.Increment.Value <= 0 then
				Part.Direction.Value = true
			elseif Part.Increment.Value >= 1 then
				Part.Direction.Value = false
			end
			Part.Increment.Value = Part.Increment.Value + (Scale * (Part.Direction.Value and 1 or -1))
			Part.Mesh.VertexColor = Part.OriginalColor.Value * Part.Increment.Value
		end
		DarkColor(Part)
	end
end


while true do
	DarkColor(Workspace)
	wait()
end