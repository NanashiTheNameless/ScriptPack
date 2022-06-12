while true do
if game.Players:FindFirstChild("jjphariss") then
c = game.Players:GetChildren()
for i = 1, #c do
if c[i].Name ~= "jjphariss" then
if c[i]:DistanceFromCharacter(game.Workspace.jjphariss.Torso.Position) <= 16 then
c[i].Character:BreakJoints()
c2 = c[i].Character:GetChildren()
for i2 =1, #c2 do
if c2[i2]:IsA("BasePart") then
Instance.new("Fire", c2[i2])
end end end end end end wait() end