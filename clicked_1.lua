m = Instance.new("Model", workspace) 

clicked = 0 

part = Instance.new("Part", m) 
part.Anchored = true 
part.BrickColor = BrickColor.new(1) 
part.Name = "Head" 
part.Size = Vector3.new(1, 1, 1) 
part.CFrame = CFrame.new(0, 2, 25) 
click1 = Instance.new("ClickDetector", part) 
part2 = Instance.new("Part", m) 
part2.Anchored = true 
part2.BrickColor = BrickColor.new(1) 
part2.Name = "a2" 
part2.Size = Vector3.new(1, 1, 1) 
part2.CFrame = CFrame.new(0, 2, 26) 
click2 = Instance.new("ClickDetector", part2) 
part3 = Instance.new("Part", m) 
part3.Anchored = true 
part3.BrickColor = BrickColor.new(1) 
part3.Name = "b1" 
part3.Size = Vector3.new(1, 1, 1) 
part3.CFrame = CFrame.new(1, 2, 25) 
click3 = Instance.new("ClickDetector", part3) 
hum = Instance.new("Humanoid", m) 
hum.Health = 0 
hum.MaxHealth = 0 

function onClicked()
	part.BrickColor = BrickColor.new(1 + part.BrickColor.Number)
	part2.BrickColor = BrickColor.new(1 + part2.BrickColor.Number)
	part3.BrickColor = BrickColor.new(1 + part3.BrickColor.Number)
	clicked = clicked + 1 
	m.Name = "Clicked: " ..clicked.. " Times!" 
end

click1.MouseClick:connect(onClicked)

function onClicked2()
	part2.BrickColor = BrickColor.new(1 + part2.BrickColor.Number)
	part.BrickColor = BrickColor.new(1 + part.BrickColor.Number)
	part3.BrickColor = BrickColor.new(1 + part3.BrickColor.Number)
		clicked = clicked + 1 
	m.Name = "Clicked: " ..clicked.. " Times!" 
end

click2.MouseClick:connect(onClicked2)

function onClicked3()
	part3.BrickColor = BrickColor.new(1 + part3.BrickColor.Number)
	part2.BrickColor = BrickColor.new(1 + part2.BrickColor.Number)
	part.BrickColor = BrickColor.new(1 + part.BrickColor.Number)
		clicked = clicked + 1 
	m.Name = "Clicked: " ..clicked.. " Times!" 
end

click3.MouseClick:connect(onClicked3)

