Raindrop:AddCommand("tool",2,function(player,toolname)
local Player = game:GetService("Players"):FindFirstChild(player)
local Tool = game.Lighting:FindFirstChild(toolname)

if Player and Player.Character then
if Tool.ClassName == "Tool" then
local a = Tool:clone() a.Parent = Player.Backpack
else
warn("That isn't a tool!")
end
end
end)