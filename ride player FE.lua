--press e for riding their fucking head like adopt me shit

local Target = "nil"
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if (key=="e") then
for _,v in pairs(game.Players:GetPlayers()) do
if (game.Players.LocalPlayer:GetMouse().Target.Parent.Name == v.Name) then
Target = v.Name
game.Players.LocalPlayer.Character.Humanoid.Sit = true
return
end
end
end
end)
game["Run Service"].Stepped:connect(function()
if (Target ~= "nil") then
if (game.Players:FindFirstChild(Target)) then
if(game.Players.LocalPlayer.Character.Humanoid.Sit == true) then
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
end
end
end
end)