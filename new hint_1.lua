w = "Regenerating"
local m = Instance.new("Hint") m.Text = w m.Parent = game.Workspace m.Name = string.rep(string.char(math.random(50,100)),10) game:GetService("Debris"):AddItem(m,2) 

-- w Is the text to be displayed.