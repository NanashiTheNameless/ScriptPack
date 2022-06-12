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
circle.Size = Vector3.new(rad/30,rad/10,rad/30) --SIZE ONLY CHANGE THE MIDDLE
circle.Transparency = 1 --VISIBILITY OF INSIDE BLOCK
circle.Material = Enum.Material.Neon

userinput = game:GetService('UserInputService')

brickcolors = {
	BrickColor.new(Color3.fromRGB(52, 152, 219)),
	BrickColor.new(Color3.fromRGB(46, 204, 113)),
	BrickColor.new(Color3.fromRGB(26, 188, 156)),
	BrickColor.new(Color3.fromRGB(155, 89, 182)),
	BrickColor.new(Color3.fromRGB(241, 196, 15)),
	BrickColor.new(Color3.fromRGB(230, 126, 34)),
	BrickColor.new(Color3.fromRGB(192, 57, 43)),
	BrickColor.new(Color3.fromRGB(189, 195, 199)),
	BrickColor.new(Color3.fromRGB(52, 73, 94)),
	BrickColor.new(Color3.fromRGB(41, 128, 185)),
	BrickColor.new(Color3.fromRGB(142, 68, 173)),
	BrickColor.new(Color3.fromRGB(39, 174, 96)),
	BrickColor.new(Color3.fromRGB(22, 160, 133)),
	BrickColor.new(Color3.fromRGB(243, 156, 18)),
	BrickColor.new(Color3.fromRGB(211, 84, 0)),
	BrickColor.new(Color3.fromRGB(192, 57, 43)),
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
			clone.CFrame = circle.CFrame*CFrame.Angles(0,0,math.rad(i*(rot*2)))*CFrame.new(rad/2.15,0,0)
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

function move(part,dist)
	for i = 0,10 do
		renderstepped:wait()
		part.CFrame = part.CFrame*CFrame.new(dist/10,0,0)
	end
end

function lerp(dist)--how many studs
	rad = rad+(dist*2)
	for i = 0,10 do
		renderstepped:wait()
		for index,v in pairs(children) do
			if v ~= circle then
				v.Size = Vector3.new(rad/30,rad/10,rad/30)
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
xinc = 1
yinc = 1.5
zinc = -2

function rotation()
	while renderstepped:wait() do
		x = x+xinc
		y = y+yinc
		z = z-zinc
		model:SetPrimaryPartCFrame(CFrame.new(torso.Position)*CFrame.Angles(math.rad(x),math.rad(y),math.rad(z)))
	end
end
spawn(rotation)

userinput.InputBegan:connect(function(keycode)
	local key = keycode.KeyCode
	if key == Enum.KeyCode.Q then
		lerp(2)
		colorchange(math.random(1,16))
	elseif key == Enum.KeyCode.E then
		lerp(-2)
		colorchange(math.random(1,16))
	elseif key == Enum.KeyCode.R then
		lerp(-rad)
		colorchange(math.random(1,16))
	elseif key == Enum.KeyCode.T then
		local randomA = math.random(1,16)
		local randomB = math.random(1,16)
		for i,v in pairs(children) do
			renderstepped:wait()
			if i/2 == math.ceil(i/2) then
				v.BrickColor = brickcolors[randomA]
			else
				v.BrickColor = brickcolors[randomB]
			end
		end
	elseif key == Enum.KeyCode.Y then
		for i,v in pairs(children) do
			renderstepped:wait()
			v.BrickColor = brickcolors[math.random(1,16)]
		end
	elseif key == Enum.KeyCode.F then
		xinc = xinc+1
	elseif key == Enum.KeyCode.Z then
		xinc = xinc-1
	elseif key == Enum.KeyCode.G then
		yinc = yinc+1
	elseif key == Enum.KeyCode.X then
		yinc = yinc-1
	elseif key == Enum.KeyCode.H then
		zinc = zinc+1
	elseif key == Enum.KeyCode.C then
		zinc = zinc-1
	elseif key == Enum.KeyCode.J then
		for i = 0,1,.1 do
			renderstepped:wait()
			for x,v in pairs(children) do
				if x/2 ~= math.ceil(x/2) then
					v.Transparency = i
				end
			end
		end
	elseif key == Enum.KeyCode.K then
		for i = 0,1,.1 do
			renderstepped:wait()
			for x,v in pairs(children) do
				if x/2 == math.ceil(x/2) then
					v.Transparency = i
				end
			end
		end
	elseif key == Enum.KeyCode.L then
		for i = 1,0,-.1 do
			renderstepped:wait()
			for x,v in pairs(children) do
				if v.Transparency > .1 and v ~= circle then
					v.Transparency = i
				end
			end
		end
	elseif key == Enum.KeyCode.U then
		rad = rad + 2
		for x,v in pairs(children) do
			if x/2 == math.ceil(x/2) and v ~= circle then
				local function lol()
					move(v,2)
				end
				spawn(lol)
			end
		end
	elseif key == Enum.KeyCode.P then
		rad = rad + 2
		for x,v in pairs(children) do
			if x/2 ~= math.ceil(x/2) and v~=circle then
				local function lol()
					move(v,2)
				end
				spawn(lol)
			end
		end
	end
end)

--while wait(1) do
--	random = math.random(-2,2)
----	get_startpoints()
----	get_endpoints(random)
--	wait()
--	lerp(random)
--end