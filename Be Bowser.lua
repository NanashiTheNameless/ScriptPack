local pchar = game.Players.LocalPlayer.Character
                local morph = Instance.new("SpecialMesh", pchar.Torso)
                morph.MeshType = "FileMesh"
morph.MeshId = "http://www.roblox.com/asset/?id=430331583"
morph.TextureId = "http://www.roblox.com/asset/?id=430331587"
morph.Scale = Vector3.new(1, 1, 1)
pchar.Head.Transparency = 1
pchar["Left Arm"].Transparency = 1
pchar["Right Arm"].Transparency = 1
pchar["Left Leg"].Transparency = 1
pchar["Right Leg"].Transparency = 1