for _,v in pairs(game.Workspace.Mine:GetChildren()) do

if string.match(v.Name, "Ill") or string.match(v.Name, "Az") or string.match(v.Name, "Dia") then

v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(math.random(0,50),0,math.random(0,50))

end
end