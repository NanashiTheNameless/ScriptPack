 = game.Workspace.ICE128 --Your name goes here
while true do
local h = i.Torso.Position
b = Instance.new("Explosion")
b.Position = Vector3.new(h.x,h.y+10,h.z)
b.Parent = game.Workspace
b.BlastRadius = 5
b.BlastPressure = 1
q = Instance.new("Explosion")
q.Position = Vector3.new(h.x+10,h.y,h.z)
q.Parent = game.Workspace
q.BlastRadius = 5
q.BlastPressure = 1
t = Instance.new("Explosion")
t.Position = Vector3.new(h.x,h.y,h.z+10)
t.Parent = game.Workspace
t.BlastRadius = 5
t.BlastPressure = 1
w = Instance.new("Explosion")
w.Position = Vector3.new(h.x-10,h.y,h.z)
w.Parent = game.Workspace
w.BlastRadius = 5
w.BlastPressure = 1
r = Instance.new("Explosion")
r.Position = Vector3.new(h.x,h.y,h.z-10)
r.Parent = game.Workspace
r.BlastRadius = 5
r.BlastPressure = 1
wait(.1)
end