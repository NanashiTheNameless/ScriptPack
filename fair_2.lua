who = game.Players.yfc
script.Parent = who.Character
heat = 80
size = 4
speed = 40

fire = true



colors = {"Bright red", "Really red", "New Yeller", "Bright yellow", "Bright orange", "Neon orange"}
fire = true
while fire do
	wait()
	for i=1, math.random(1,5) do
	local fir = Instance.new("Part",who.Character)
	fir.formFactor = 0
	fir.Size = Vector3.new(1,1,1)
	fir.CanCollide = false
	fir.TopSurface = 0
	fir.BottomSurface = 0
	fir.Anchored = true
	fir.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
	fir.Transparency = math.random(2,7)/10
	fir.CFrame = who.Character.Torso.CFrame * CFrame.new(math.random(-size,size),math.random(-size/2,size/2),math.random(-size,size))
	fir.CFrame = fir.CFrame * CFrame.Angles(math.random(-32,32)/10,math.random(-32,32)/10,math.random(-32,32)/10)
	local mesh = Instance.new("SpecialMesh",fir)
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(math.random(7,19)/10,math.random(7,19)/10,math.random(7,19)/10)
	local cf = fir.CFrame
	local place = 0
	coroutine.resume(coroutine.create(function()
	repeat
		wait()
		place = place + speed/100
		fir.CFrame = cf * CFrame.new(0,place,0)
	until place > heat
	end))
	fir:remove()
	end
end
