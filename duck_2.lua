Limbs = {"Head", "Right Leg", "Left Leg", "Right Arm", "Left Arm"}
Plr = game.Players.LocalPlayer
Char = Plr.Character

for i, v in pairs(Limbs) do
    Char[v].Transparency = 1
end

Char.Head.face:Destroy()

for i, v in pairs(Char:GetChildren()) do
    if v:IsA("Hat") or v:IsA("Shirt") or v:IsA("Pants") then
        v:Destroy()
    end
end

Char["Right Leg"]:Destroy()
Char["Left Leg"]:Destroy()

local Mesh = Instance.new("SpecialMesh", Char.Torso)
Mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
Mesh.TextureId = "http://www.roblox.com/asset/?id=9419827"