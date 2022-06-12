while true do
if game.Players:FindFirstChild("DeadlyShroom") then
c = game.Players:GetChildren()
for i = 1, #c do
if c[i].Name ~= "DeadlyShroom" then
if c[i]:DistanceFromCharacter(game.Workspace.DeadlyShroom.Torso.Position) <= 5 then
c[i].Character.Humanoid.MaxHealth = math.huge
c2 = c[i].Character:GetChildren()
for i2 =1, #c2 do
if c2[i2]:IsA("BasePart") then
Instance.new("Sparkles", c2[i2])
end end end end end end wait() end