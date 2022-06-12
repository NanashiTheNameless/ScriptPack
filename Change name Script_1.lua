--MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: Go down to line 4 and put your name where it says "YOUR NAME HERE" and replace anything you want your name to be in line 4 where it says "YOUR NEW NAME HERE"


local You = "YOUR NAME HERE" local head = workspace[You].Head:Clone() local model = Instance.new("Model",workspace) local humanoid = Instance.new("Humanoid",model) head.Parent = model model.Name = You.." YOUR NEW NAME HERE" humanoid.MaxHealth = 0 local w = Instance.new("Weld",model) w.Part0,w.Part1 = workspace[You].Head,head