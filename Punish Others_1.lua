PUNISH OTHERS


lpChar = game.Players.LocalPlayer.Character.Torso

for i,plr in pairs (game.Players:GetChildren()) do
 if plr.Name ~= game.Players.LocalPlayer.Name then
  for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
   if v.ClassName == 'Part' then
      if v.Name ~= 'Head' then
        v.Anchored = true
     end
   end
  end
  local w = Instance.new("Weld", lpChar)
  w.Part0 = lpChar
  w.Part1 = plr.Character.Torso
  w.C0 = lpChar.CFrame
  w.C1 = lpChar.CFrame * CFrame.new(0, 99999999, 0)
  wait(0.1)
  w:Destroy()
  for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
   if v.ClassName == 'Part' then
      if v.Name ~= 'Head' then
        v.Anchored = false
     end
   end
  end
 end
end

