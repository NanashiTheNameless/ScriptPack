local/p=Instance.new("Part",workspace) 
p.Name = "Base" 
p.CFrame = Workspace.Base.CFrame + Vector3.new(0,5000,0) 
p.Anchored = true 
game.Players.LocalPlayer.Character:MoveTo(p.Position) 