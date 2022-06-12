pchar = game.Players.LocalPlayer.Character
            for i,v in pairs(pchar:GetChildren()) do
                if v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then
                    v:Destroy()
                end
            end
            for i,v in pairs(pchar.Head:GetChildren()) do
                if v:IsA("Decal") or v:IsA("SpecialMesh") then
                    v:Destroy()
                end
            end
           
            mesh = Instance.new("SpecialMesh", pchar.Head)
            mesh.MeshType = "FileMesh"
            pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"
            pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
            pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"
           
            Shirt = Instance.new("Shirt", pchar.Character)
            Pants = Instance.new("Pants", pchar.Character)
           Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=133078194"
           Pants.PantsTemplate = "http://www.roblox.com/asset/?id=133078204"
  