local pchar = game.Players.LocalPlayer.Character
                local morph = Instance.new("SpecialMesh", pchar.Torso)
                morph.MeshType = "FileMesh"
morph.MeshId = "http://www.roblox.com/asset/?id=430069460"
morph.TextureId = "http://www.roblox.com/asset/?id=430069464"
morph.Scale = Vector3.new(0.08, 0.08, 0.08)
pchar.Head.Transparency = 1
pchar["Left Arm"].Transparency = 1
pchar["Right Arm"].Transparency = 1
pchar["Left Leg"].Transparency = 1
pchar["Right Leg"].Transparency = 1