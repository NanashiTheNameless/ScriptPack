game.Players:Chat("clear:")
game.Lighting:SetMinutesAfterMidnight(0 * 60)
game.Players:Chat(":music 283229021")
game:GetObjects("rbxassetid://4504084")[1].Parent = game.Workspace
Lighting = game["Lighting"]
ChangeTime = 0.3 -- Seconds between changing of the colors
while true do
 Lighting.Ambient = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
 wait(ChangeTime)
end