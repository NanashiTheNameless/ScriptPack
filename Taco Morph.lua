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
local TACO_MESH = Instance.new('SpecialMesh', game.Players.LocalPlayer.Character.Torso)
			TACO_MESH.MeshType = 'FileMesh'
			TACO_MESH.MeshId = 'http://www.roblox.com/asset/?id=14846869'
			TACO_MESH.Offset = Vector3.new(0, -0.8, 0)
			TACO_MESH.TextureId = 'http://www.roblox.com/asset/?id=14846834'
			TACO_MESH.Scale = Vector3.new(5, 5, 5)
pchar.Head.Transparency = 1
                pchar["Left Arm"].Transparency = 1
                pchar["Right Arm"].Transparency = 1
                pchar["Left Leg"].Transparency = 1
                pchar["Right Leg"].Transparency = 1
                pchar.Head.face.Transparency = 1
  