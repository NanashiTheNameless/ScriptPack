Player = game:GetService("Players").DarkShadow6
for _, part in pairs(Player.Character:GetChildren()) do
	if part.ClassName == "Hat" or part.ClassName == "ShirtGraphic" or part.ClassName == "CharacterMesh" or part.ClassName == "Shirt" or part.ClassName == "Pants" then part:Remove() end
end
Player.Character.Torso.roblox:Remove()
local CM = Instance.new("CharacterMesh")
CM.BodyPart = "LeftArm"
CM.OverlayTextureId = "36780292"
CM.MeshId = "36780032"
CM.Parent = Player.Character
local CM = Instance.new("CharacterMesh")
CM.BodyPart = "RightArm"
CM.OverlayTextureId = "36780292"
CM.MeshId = "36780156"
CM.Parent = Player.Character
local CM = Instance.new("CharacterMesh")
CM.BodyPart = "LeftLeg"
CM.OverlayTextureId = "36780292"
CM.MeshId = "36780079"
CM.Parent = Player.Character
local CM = Instance.new("CharacterMesh")
CM.BodyPart = "RightLeg"
CM.OverlayTextureId = "36780292"
CM.MeshId = "36780195"
CM.Parent = Player.Character
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/Asset/?id=1158007"
Mesh.TextureId = "http://www.roblox.com/Asset/?id=1158033"
Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Mesh.Parent = Player.Character.Torso
local Fire = Instance.new("Fire")
Fire.Size = 4
Fire.Heat = 3
Fire.Color = Color3.new(0, 0, 0)
Fire.SecondaryColor = Color3.new(1, 0.2, 0.2)
Fire.Parent = Player.Character.Torso
Player.Character.Head.Transparency = 1
Player.Character.Head.face:Remove()