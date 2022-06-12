local brick = Instance.new("Part")

while true do
local b = brick:clone()
b.Parent = game.Workspace
if game.Workspace.ArticunoX ~= nil then
local mainpos = game.Workspace.ArticunoX.Head.Position
b.Position = Vector3.new(mainpos.x, mainpos.y +3, mainpos.z)
wait(1)
end
end