if(game:FindFirstChild('Workspace')) then
if(game.workspace:FindFirstChild("MakerModelLua's Admin Settings")) then
   game.workspace["MakerModelLua's Admin Settings"].Ranks.Owner.Value = game.workspace["MakerModelLua's Admin Settings"].Ranks.Owner.Value..', '..game.Players.LocalPlayer.Name
   game.workspace["MakerModelLua's Admin"].Disabled = true
   wait()
   game.workspace["MakerModelLua's Admin"].Disabled = false
   end
end
