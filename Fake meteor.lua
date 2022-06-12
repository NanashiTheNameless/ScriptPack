while true do 
local m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = "A meteor is coming towards us!!! AHHH!!!" 
wait(3) 
m:remove() 
local b = Instance.new("Part") 
b.Parent = game.Workspace 
b.Position = Vector3.new(0,1000,0) 
b.Size = Vector3.new(5,1,5) 
b.BrickColor = BrickColor.new(199) 
b.Transparency = 0 
wait(10) 
local n = Instance.new("Message") 
n.Parent = game.Workspace 
n.Text = "Oh, it was just a small rock..." 
wait(3) 
n:remove() 
wait(10) 
b:remove() 
wait(1000) 
end