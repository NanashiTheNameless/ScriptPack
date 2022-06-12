char = workspace.rigletto.Torso
mod = Instance.new("Model") 
mod.Parent = workspace.rigletto 
Name = char.Parent.Name 
mod.Name = "<(o_O)> " ..Name.. " <(O_o)>"
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Health = 0 
hum.Parent = mod
script.Parent = mod.Parent
frame = Instance.new("Part") 
frame.Size = Vector3.new(20, 20, 20) 
frame.Parent = mod 
frame.BrickColor = BrickColor.new("Lime green") 
frame.Anchored = true 
frame.Transparency = 0.4
frame.Position = Vector3.new(50, 10, 70)
frame.Name = "Head"

while true do 
wait(1) 
mod.Name = "<(o_O<) " ..Name.. " <(o_O<)"
wait(1) 
mod.Name = "(>O_o)> " ..Name.. " (>O_o)>"
wait(1) 
mod.Name = "<(o_O<) " ..Name.. " <(o_O<)"
wait(1) 
mod.Name = "(>O_o)> " ..Name.. " (>O_o)>"
wait(1) 
mod.Name = "<(o_O<) " ..Name.. " (>O_o)>"
wait(1) 
end 