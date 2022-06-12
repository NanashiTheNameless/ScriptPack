wait(1)
chr = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
dead = false
model = Instance.new("Model")
model.Parent = chr
circle = Instance.new("Part",model)
model.PrimaryPart = circle
circle.Anchored = true
circle.CanCollide = false
circle.BrickColor = BrickColor.new(Color3.fromRGB(192, 57, 43)) --BRICKCOLOR ONLY GOES TO 1 R(ED)G(REEN)B(LUE)
circle.Size = Vector3.new(.5,.5,.5) --SIZE ONLY CHANGE THE MIDDLE
circle.Transparency = 1 --VISIBILITY OF INSIDE BLOCK
circle.Material = Enum.Material.Neon
rad = 7
circ = 2*math.pi*rad
n = circ/.5
rot = 360/n

function gay()
	for i = 0,n/2 do
		game:GetService('RunService').RenderStepped:wait()
		local clone = circle:Clone()
		local function tran()
			clone.Parent = model
			for index = .5,7,.1 do
				game:GetService('RunService').RenderStepped:wait()
	--			clone.Size = Vector3.new(.5,index,.5)
				clone.Transparency = clone.Transparency - .05
				clone.CFrame = circle.CFrame*CFrame.Angles(0,0,math.rad(i*(rot*2)))*CFrame.new(rad/2.2,0,0)
			end
		end
		spawn(tran)
	end
end
spawn(gay)

chr.Humanoid.Died:connect(function()
	dead = true
	for i,v in pairs(model:GetChildren()) do
		local function lerp()
			local cframeval = v.CFrame
			for i = 0,1,.025 do
				game:GetService('RunService').RenderStepped:wait()
				v.Size = v.Size - Vector3.new(.025,.025,.025)
				v.CFrame = cframeval:lerp(chr.Torso.CFrame,i)
				v.Transparency = i*2
			end
		end
		spawn(lerp)
	end
end)

x = 0
y = 0
z = 0
random = 0
debounce = false

colortable={BrickColor.new(Color3.fromRGB(241, 196, 15)),
			BrickColor.new(Color3.fromRGB(211, 84, 0)),
			BrickColor.new(Color3.fromRGB(41, 128, 185)),
			BrickColor.new(Color3.fromRGB(192, 57, 43)),
			BrickColor.new(Color3.fromRGB(142, 68, 173)),
			BrickColor.new(Color3.fromRGB(26, 188, 156)),
			BrickColor.new(Color3.fromRGB(46, 204, 113))}
function changecolor()
	if debounce == false then
		debounce = true
		local children = model:GetChildren()
		random = random + 1
		if random == 8 then
			random = 1
		end
		for i,v in pairs(children) do
			game:GetService('RunService').RenderStepped:wait()
			v.BrickColor = colortable[random]
		end
		debounce = false
	end
end
while dead == false do
	game:GetService('RunService').RenderStepped:wait()
	if x > 360 then
		x = 0
		spawn(changecolor)
	elseif y > 360 then
		y = 0
	end
	x = x + 2
	y = y - 4
	model:SetPrimaryPartCFrame(chr.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(x),math.rad(y),math.rad(0)))
end