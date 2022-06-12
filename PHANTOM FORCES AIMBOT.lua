plrs = game.Players
player = plrs.LocalPlayer
char = player.Character
while true do
    wait()
    for i,v in pairs (game.Players:GetChildren()) do
    if v.TeamColor == game.Players.LocalPlayer.TeamColor then
    else
        v.Character.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame*CFrame.new(0,0,-5.5)
    for _,x in pairs (v.Character:GetChildren()) do
        if x:IsA("BasePart") then
        x.Transparency = 0.8
        x.CanCollide = false




        end


        end
        end
    end
    end