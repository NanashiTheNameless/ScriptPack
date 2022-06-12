w = "Regenerating!"
local m = Instance.new("Message") m.Text = w m.Parent = game.Workspace m.Name = string.rep(string.char(math.random(50,100)),10) game:GetService("Debris"):AddItem(m,3) 

