-- Note: I have access to an updated one in anti's because eck. If wanted it could be decompiled.
rad = 11
circ = 2*math.pi*rad
n = circ/(rad/10)
rot = 360/n
startpoints = {}
endpoints = {}
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
chr = plr.Character or plr.CharacterAdded:wait()
torso = chr.Torso
renderstepped = game:GetService('RunService').RenderStepped
model = Instance.new("Model")
model.Parent = chr
circle = Instance.new("Part",model)
model.PrimaryPart = circle
circle.Anchored = true
circle.CFrame = CFrame.new(0,50,0)
circle.CanCollide = false
circle.BrickColor = BrickColor.new(Color3.fromRGB(192, 57, 43)) --BRICKCOLOR ONLY GOES TO 1 R(ED)G(REEN)B(LUE)
circle.Size = Vector3.new(.2,rad/10,.2) --SIZE ONLY CHANGE THE MIDDLE
circle.Transparency = 1 --VISIBILITY OF INSIDE BLOCK
circle.Material = Enum.Material.Neon
float = Instance.new('Part')
float.CanCollide = false
float.Anchored = true
float.Transparency = 1

brickcolors = {
	BrickColor.new(Color3.fromRGB(52, 152, 219)),
	BrickColor.new(Color3.fromRGB(46, 204, 113)),
	BrickColor.new(Color3.fromRGB(26, 188, 156)),
	BrickColor.new(Color3.fromRGB(155, 89, 182)),
	BrickColor.new(Color3.fromRGB(241, 196, 15)),
	BrickColor.new(Color3.fromRGB(230, 126, 34)),
	BrickColor.new(Color3.fromRGB(192, 57, 43)),
	BrickColor.new(Color3.fromRGB(189, 195, 199)),
	BrickColor.new(Color3.fromRGB(52, 73, 94))
}


for i = 0,n/2 do
	renderstepped:wait()
	local clone = circle:Clone()
	local function tran()
		clone.Parent = model
		for index = .5,7,.1 do
			renderstepped:wait()
--			clone.Size = Vector3.new(.5,index,.5)
			clone.Transparency = clone.Transparency - .05
			clone.CFrame = circle.CFrame*CFrame.Angles(0,0,math.rad(i*(rot*2)))*CFrame.new(rad/2.1,0,0)
		end
	end
	spawn(tran)
end
wait(1)
children = model:GetChildren()

--function get_startpoints()
--	for i,v in pairs(children) do
--		if v~=circle then
--			table.insert(startpoints,i,v.CFrame)
--		end
--	end
--end
--
--function get_endpoints(cframeval)
----	rad = rad+(cframeval*2)
--	for i,v in pairs(children) do
--		if v ~= circle then
--			table.insert(endpoints,i,v.CFrame*CFrame.new(cframeval,0,0))
--		end
--	end
--end

--function move(part)
--	part.Part
--end

function lerp(dist)--how many studs
	rad = rad+(dist*2)
	local inc = nil
	if dist>0 then
		inc = .1
	else
		inc = -.1
	end
	for i = 0,10 do
		renderstepped:wait()
		for index,v in pairs(children) do
			if v ~= circle then
				v.Size = Vector3.new(.2,rad/10,.2)
				v.CFrame = v.CFrame*CFrame.new(dist/10,0,0)
			end
		end
	end
end

function colorchange(color)
	for i,v in pairs(children) do
		renderstepped:wait()
		v.BrickColor = brickcolors[color]
	end
end

x = 1
y = 1
z = 1

function rotation()
	while renderstepped:wait() do
		x = x+1
		y = y+1.5
		z = z-2
		model:SetPrimaryPartCFrame(CFrame.new(torso.Position)*CFrame.Angles(math.rad(x),math.rad(y),math.rad(z)))
	end
end
spawn(rotation)

mouse.KeyDown:connect(function(key)
	if key == 'q' then
		lerp(2)
		colorchange(math.random(1,9))
	elseif key == 'e' then
		lerp(-2)
		colorchange(math.random(1,9))
	end
end)

--while wait(1) do
--	random = math.random(-2,2)
----	get_startpoints()
----	get_endpoints(random)
--	wait()
--	lerp(random)
--end