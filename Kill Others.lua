function fekill(plry)
 if plry == 'all' then
  local plr = game.Players:FindFirstChild(plry)
  lpChar = game.Players.LocalPlayer.Character.Torso
  lpChar.Anchored = true
  local w = Instance.new("Weld", lpChar)
  w.Part0 = lpChar
  w.Part1 = plr.Character.Torso
  w.C0 = lpChar.CFrame
  w.C1 = lpChar.CFrame * CFrame.new(0, 99999999, 0)
  wait(1)
  w:Destroy()
  lpChar.Anchored = false
 elseif plry == 'others' then
  for notgonnause,plr in pairs (game.Players:GetChildren()) do
   if plr.Name ~= game.Players.LocalPlayer.Name then
    lpChar = game.Players.LocalPlayer.Character.Torso
    lpChar.Anchored = true
    local w = Instance.new("Weld", lpChar)
    w.Part0 = lpChar
    w.Part1 = plr.Character.Torso
    w.C0 = lpChar.CFrame
    w.C1 = lpChar.CFrame * CFrame.new(0, 99999999, 0)
    wait(1)
    w:Destroy()
    lpChar.Anchored = false
   end
  end
 else
  lpChar = game.Players.LocalPlayer.Character.Torso
  local plr = game.Players:FindFirstChild(plry)
  lpChar.Anchored = true
  local w = Instance.new("Weld", lpChar)
  w.Part0 = lpChar
  w.Part1 = plr.Character.Torso
  w.C0 = lpChar.CFrame
  w.C1 = lpChar.CFrame * CFrame.new(0, 99999999, 0)
  wait(1)
  w:Destroy()
  lpChar.Anchored = false
 end
end

fekill('others')
