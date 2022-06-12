_G.LOOP_ON = true

while wait() do
   if _G.LOOP_ON == false then
       break
   end
   for _, Player in pairs(game:GetService("Players"):GetChildren()) do   
       if Player.TeamColor ~= game:GetService("Players").LocalPlayer.TeamColor then 
           for _, Limb in pairs(Player.Character:GetChildren()) do
               if Limb:IsA("BasePart") then
                   Limb.Transparency = 1
                   Limb.CanCollide = true
end
               Player.Character.Torso.CFrame = game:GetService("Players").LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 0, -6)
               game:GetService("Players").LocalPlayer.PlayerGui.MainGui.GameGui.NameTag.Visible = false
           end 
       end 
   end 
end