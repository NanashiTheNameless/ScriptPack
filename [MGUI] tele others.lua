z=Instance.new('StringValue', workspace)
z.Name='plrname'
z.Value = game.Players.LocalPlayer.Name
Dispenser = game.InsertService:LoadAsset(59524162).SwordDispenser
Obj = false
Dispenser.Parent = game.Workspace.Terrain
DispenserChildren = Dispenser:GetChildren()
for i=1,#DispenserChildren do
pcall(function()
DispenserChildren[i].Transparency = 1
end)
end
Dispenser:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
Dispenser.Asset.Value = 22898920
Dispenser.SwordDispenserScript.Disabled = true
wait()
Dispenser.SwordDispenserScript.Disabled = false