for i,plr in pairs (game.Players:GetChildren()) do
 if plr.Name ~= game.Players.LocalPlayer.Name then
  lpChar = game.Players.LocalPlayer.Character.Torso
  
  lpChar.Anchored = true
  local w = Instance.new("Weld", lpChar)
  w.Part0 = lpChar
  w.Part1 = plr.Character.Torso
  w.C0 = lpChar.CFrame
  w.C1 = lpChar.CFrame
  wait(.1)
  w:Destroy()
  lpChar.Anchored = false
 end
end