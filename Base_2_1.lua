local p = Instance.new ("Part" , game.Workspace)
p.Name = "Base"
p.Size = Vector3.new (1000,1,1000)
p.Anchored = true
p.Locked = true
p.CFrame = CFrame.new(0, 0, 0)
wait(2)
local k = Instance.new ("Message" , game.Workspace)
k.Text = "Making grass"
wait(2)
k:remove()
game.Workspace.Base.BrickColor = BrickColor.new ("Earth green")
wait(1)
local o = Instance.new ("Message" , game.Workspace)
o.Text = "Grass Done"
wait(2)
o:remove()
