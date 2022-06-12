local pchar = game.Players.LocalPlayer.Character
                for i,v in pairs(pchar.Torso:GetChildren()) do
                    if v:IsA("Decal") then
                        v:Destroy()
                    end
                end
                for i,v in pairs(pchar:GetChildren()) do
                    if v:IsA("Hat") then
                        v:Destroy()
                    end
                end
local GIRAFFE_MESH = Instance.new('SpecialMesh', game.Players.LocalPlayer.Character.Torso)
			GIRAFFE_MESH.MeshType = 'FileMesh'
			GIRAFFE_MESH.MeshId = 'http://www.roblox.com/asset/?id=268195899'
			GIRAFFE_MESH.Offset = Vector3.new(0, 2.2, 0)
			GIRAFFE_MESH.TextureId = 'http://www.roblox.com/asset/?id=268194962'
			GIRAFFE_MESH.Scale = Vector3.new(1.5, 1.5, 1.5)
pchar.Head.Transparency = 1
                pchar["Left Arm"].Transparency = 1
                pchar["Right Arm"].Transparency = 1
                pchar["Left Leg"].Transparency = 1
                pchar["Right Leg"].Transparency = 1
                pchar.Head.face.Transparency = 1
  