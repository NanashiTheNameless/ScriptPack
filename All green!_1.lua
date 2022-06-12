game.Lighting.TimeOfDay = 0
colors = {"Really red"}
tran = 0.5
material = "Plastic"

function col(brick)
	brick.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
	brick.Transparency = tran
	if brick.Material ~= material then
		brick.Material = material
	end
	for _,v in pairs(brick:GetChildren()) do
		if v:IsA("SpecialMesh") or v:IsA("FileMesh") then
			if v.Parent.Name ~= "Head" then
				v.TextureId = "Clear"
			end
		end
	end
	brick.Changed:connect(function(prop)
		brick.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
		brick.Transparency = tran
		brick.Material = material
		wait(1)
		brick.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
		brick.Transparency = tran
		brick.Material = material
		wait(1)
		brick.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
		brick.Transparency = tran
		brick.Material = material
	end)
end

function goin(where)
	if where:IsA("BasePart") then
		coroutine.resume(coroutine.create(function()
			col(where)
		end))
	end
	where.ChildAdded:connect(function(object)
		goin(object)
	end)
	for _,v in pairs(where:GetChildren()) do
		goin(v)
		v.ChildAdded:connect(function(object)
			goin(object)
		end)
		if v:IsA("BasePart") then
			coroutine.resume(coroutine.create(function()
				col(v)
			end))
		end
	end
end

for _,v in pairs(workspace:GetChildren()) do
	goin(v)
end

workspace.ChildAdded:connect(function(obj)
	goin(obj)
end)

game.Lighting.Changed:connect(function(prop)
	if prop == "TimeOfDay" then
		game.Lighting.TimeOfDay = 0
	end
end)

