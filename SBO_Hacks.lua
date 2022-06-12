workspace.USERNAME.Health:destroy''

game.ReplicatedStorage.Profiles.USERNAME.Health:destroy''
inv=game.Players.LocalPlayer.PlayerGui

for i=1, 50 do
me=inv.WeaponHandler:Clone()
me.Parent=inv
end
plr = game.Players.LocalPlayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
if key == "r" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end 
end)