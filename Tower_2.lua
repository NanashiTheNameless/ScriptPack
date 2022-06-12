-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local h = Instance.new("Message")
h.Parent = game.Workspace
h.Text = "Loading Tower." 
wait(0.2)
h.Text = "Loading Tower.."
wait(0.2)
h.Text = "Loading Tower..."
wait(0.2)
h.Text = "Loading Tower.."
wait(0.2)
h.Text = "Loading Tower."
wait(0.2)
h.Text = "Loading Tower.."
wait(0.2)
h.Text = "Loading Tower..."
wait(0.2)
h.Text = "Tower Loaded"
wait(3)
h.Text = "Now Building Tower"
wait(3)
h.Name = "Peep"
game.Workspace.Peep:Remove()

while true do
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Size = Vector3.new(15, 15, 15)
p.Position = Vector3.new(-34, 0.5, -35)
p.Color = Color3.new(255, 0, 0)  --Colors of the Tower
p.Anchored = true
wait(1)
local m = Instance.new("Part")
m.Parent = game.Workspace
m.Size = Vector3.new(15, 1.2, 15)
m.Position = Vector3.new(-34, 0.5, -35)
m.Anchored = true
m.Color = Color3.new(0, 0, 255)
wait(1)
local t = Instance.new("TrussPart")
t.Parent = game.Workspace
t.Size = Vector3.new(2, 16, 2)
t.Position = Vector3.new(-42.5, 9, -33.5)
t.Color = Color3.new(0, 255, 0)
t.Anchored = true
wait(2)
end
