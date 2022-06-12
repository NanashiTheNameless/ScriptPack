L = game.Players.peyquinn.Character
M = Instance.new("Message")
M.Parent = game.Workspace
M.Text = "Can you hear that?"
wait(3)
L.Torso.Size = Vector3.new(100,100,100)
L.Head.Size = Vector3.new(90,90,90)
L.Torso.BrickColor = BrickColor.new(141)
L.Head.BrickColor = BrickColor.new(141)
L.Head.face.Texture = "http://www.roblox.com/asset/?version=1&id=1085435"
L.Head.Mesh:remove()
M.Text = "MESSAGE HERE, EXAMPLE : OH NO ITS NOOBZILLA!"
wait(4)
game.Workspace.Message:remove()