function ResizeLight(Light, LightSize)
	Light.Size = LightSize
	Light.Mesh.Scale = Vector3.new(LightSize.x * 0.5, LightSize.y * 1.335, LightSize.z * 0.5)
end
local Model = Instance.new("Model", Workspace)
Model.Name = "Hologram"
local Base = Instance.new("Part", Model)
Base.Name = "Base"
Base.FormFactor = "Custom"
Base.Size = Vector3.new(3.5, 0.5, 3.5)
Base.TopSurface = 0
Base.BottomSurface = 0
Base.CFrame = Workspace.DarkShadow6.Torso.CFrame * CFrame.new(0, -2.75, -2.25)
Base.Anchored = true
Base.BrickColor = BrickColor.new("Dark stone grey")
local Light = Base:Clone()
Light.Parent = Model
Light.Name = "Light"
Light.CanCollide = false
Light.Transparency = 0.5
Light.Reflectance = 0.01
Light.BrickColor = BrickColor.new("Bright blue")
local Mesh = Instance.new("SpecialMesh", Light)
Mesh.Parent = Light
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
while Model.Parent ~= nil do
	local SizeXZ = math.random(3000, 10000) / 1000
	local SizeY = math.random(3000, 10000) / 1000
	for i = 0, 1, 0.05 do
		local LightSize = Vector3.new(SizeXZ * i, SizeY * i, SizeXZ * i)
		ResizeLight(Light, LightSize)
		Light.CFrame = Base.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, -(LightSize.y / 2) - (Base.Size.y / 2), 0)
		wait()
	end
	ResizeLight(Light, Vector3.new(SizeXZ, SizeY, SizeXZ))
	Light.CFrame = Base.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, -(SizeY / 2) - (Base.Size.y / 2), 0)
	wait(math.random(1, 3))
	for i = 1, 0, -0.1 do
		local LightSize = Vector3.new(SizeXZ * i, SizeY * i, SizeXZ * i)
		ResizeLight(Light, LightSize)
		Light.CFrame = Base.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, -(LightSize.y / 2) - (Base.Size.y / 2), 0)
		wait()
	end
end