--------------How to use------------
Press F while swinging does 3x damage
--------------Creator---------------
Makoto Nanaya on V3rmillion
--------------Script----------------
plr = game.Players.LocalPlayer
ms = plr:GetMouse()
deb = false

ms.KeyDown:connect(function(k)
chr = plr.Character
if (k:lower() == 'f') and chr and (not deb) then
 deb = true
 hum = chr:FindFirstChild('Humanoid')
 if hum then
  anim = hum:LoadAnimation(game.ReplicatedStorage.Database.Animations.SwordSkill1)
  game.ReplicatedStorage.EffectHandler:InvokeServer("SwordSkill", 3)
  anim:Play()
 wait(3)
 end
 deb = false
end
end)