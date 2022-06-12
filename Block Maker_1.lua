local o = Instance.new("Part")
o.Anchored = true
o.Parent = workspace
o.Locked = true
o.Name = "Object"
o.Reflectance = 0.5
o.Transparency = 0.5
o.Size = Vector3.new(4, 1.2, 4)
o.CFrame = CFrame.new(0, -10, 0)
local name = "peyquinn"
local p = Instance.new("HopperBin")
p.Name = "Block Maker"
p.Parent = game.Players:findFirstChild(name).Backpack
script.Parent = p
local object = nil
local rotation = 16
local m = nil

p.Selected:connect(function(mouse)
	print("Selected")
	if p.Parent:findFirstChild("Message") ~= nil then
		m = p:findFirstChild("Message")
		m.Name = "Origin"
		m.Text = "Origin: "
		if m.Parent:findFirstChild("Message") then
			m.Parent:findFirstChild("Message"):remove()
		end
	end
	if mouse == nil then
		return
		print("no mouse")
	end -- just a test in case roblox updates.
	mouse.Move:connect(function()
		if object == nil then
			local c = workspace.Object:Clone()
			c.Name = "Selected"
			c.Parent = game.Players:findFirstChild(name).Character
			object = c
			local o = Instance.new("StringValue")
			o.Name = "Owner"
			o.Parent = object
			o.Value = game.Players:findFirstChild(name).Name
		else
			if mouse.Target ~= nil then
				object.Position = mouse.Hit.p
				if m ~= nil then
					m.Text = "Origin: " ..object.Position.x.. ", " ..object.Position.y.. ", " ..object.Position.z.. ", "
				end
			end
		end
	end)
	mouse.Idle:connect(function()
		if object == nil then
			local c = workspace.Object:Clone()
			c.Name = "Selected"
			c.Parent = game.Players:findFirstChild(name).Character
			object = c
			local o = Instance.new("StringValue")
			o.Name = "Owner"
			o.Parent = object
			o.Value = game.Players:findFirstChild(name).Name
		else
			if mouse.Target ~= nil then
				object.Position = mouse.Hit.p
				if m ~= nil then
					m.Text = "Origin: " ..object.Position.x.. ", " ..object.Position.y.. ", " ..object.Position.z.. ", "
				end
			end
		end
	end)
	mouse.Button1Down:connect(function()
		object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(0,1,0),math.pi/(rotation/2))
	end)
	mouse.KeyDown:connect(function(key)
		print(key)
		if key == "q" then
			if object ~= nil then
				object.Transparency = 0
				object.CanCollide = true
				object.Name = "Placed"
				object.Parent = workspace
				object = nil
			end
		end
		if key == "e" then
			if mouse.Target ~= nil and mouse.Target.Name == "Placed" and mouse.Target:findFirstChild("Owner") ~= nil and mouse.Target:findFirstChild("Owner").Value == game.Players:findFirstChild(name).Name then
				mouse.Target:remove()
			end
		end
		if key == "r" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x + 1, object.Size.y, object.Size.z)
			end
		end
		if key == "z" then
			if object ~= nil then
				object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0),math.pi/(rotation/2))
			end
		end
		if key == "x" then
			if object ~= nil then
				object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(-1,0,0),math.pi/(rotation/2))
			end
		end
		if key == "f" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x - 1, object.Size.y, object.Size.z)
			end
		end
		if key == "t" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y + 1, object.Size.z)
			end
		end
		if key == "g" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y - 1, object.Size.z)
			end
		end
		if key == "y" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y, object.Size.z + 1)
			end
		end
		if key == "h" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y, object.Size.z - 1)
			end
		end
	end)
end)
p.Deselected:connect(function(mouse)
	if object ~= nil then
		if m ~= nil then
			m.Name = "Message"
			m = nil
		end
		object.Parent = nil
		object = nil
	end
end)

while true do
	wait(3)
	if workspace:findFirstChild("Object") == nil then
		local o = Instance.new("Part")
		o.Anchored = true
		o.Parent = workspace
		o.Name = "Object"
		o.Reflectance = 0.5
		o.Transparency = 0.5
		o.Size = Vector3.new(4, 1.2, 4)
		o.CFrame = CFrame.new(0, -10, 0)
	end
end