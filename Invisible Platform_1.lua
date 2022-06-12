local/me = game.Players.LocalPlayer.Character.Torso 
pm = Instance.new("Part") 
pm.Size = Vector3.new(25, 2.4, 25) 
pm.Position = Vector3.new(0, 1, 0) 
pm.Parent = game.Workspace.CurrentCamera 
pm.Anchored = true 
pm.BrickColor = BrickColor.new("Really black")  
pm.Name = "Ascil" 
while true do 
wait() 
pm.CFrame = me.CFrame+Vector3.new(0, -4.1, 0) 
end 