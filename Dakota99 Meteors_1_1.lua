--[[Full Credit to Dakota99 for his Meteor Script]]-- 
if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") 
script.Parent = h
h.Name = "Meteors"
h.Parent = game.Players.lordsheen.Backpack
wait(math.huge)
end 
relo = false 
prev = nil 
prevb = nil 
amade = {}

function onMoved(mouse) 
	hit = mouse.Hit.p 
end

function onButton1Down(mouse) 
	hit = mouse.Hit
	target = mouse.Target 
	local WTFBOOM = Instance.new("Part")
	prevb= WTFBOOM
	WTFBOOM.Shape = "Ball"
	WTFBOOM.Anchored = true 
	WTFBOOM.Transparency = 0.5
	WTFBOOM.Size = Vector3.new(1,1,1)
	WTFBOOM.TopSurface = "Smooth"
	WTFBOOM.BottomSurface = "Smooth"
	WTFBOOM.Locked = true 
	WTFBOOM.BrickColor = BrickColor.new("Really red")
	WTFBOOM.CFrame = CFrame.new(mouse.hit.x,mouse.hit.y,mouse.hit.z)
	WTFBOOM.Parent = nil 
	WTFBOOM.Name = "Hint"
local sound = Instance.new("Sound")
sound.SoundId = "rbxasset://sounds\\Rocket shot.wav"
sound.Parent = p
sound.Volume = 1
sound.Pitch = 1.7
sound.Parent=WTFBOOM
	local mi = Instance.new("Part")
	prev = mi
	mi.TopSurface = "Smooth"
	local int=Vector3.new(math.random(-1,1),1,math.random(-1,1))
	mi.CFrame = hit+(int*Vector3.new(100,100,100))
	mi.Size = Vector3.new(6,6,6)
	mi.TopSurface = "Smooth"
	mi.BottomSurface = "Smooth"
	mi.Parent = game.Workspace
	mi.Name = "Missile/Nuke"
	mi.BrickColor = BrickColor.new("Really red")
	mi.Locked = true 
	mi.Shape = "Ball"
	mi.CanCollide = false 
	local vel = Instance.new("BodyVelocity")
	vel.Parent = mi
	vel.maxForce = Vector3.new(600000,600000,600000)
	vel.velocity = Vector3.new(0,-100,0)
local pos
	if target~= nil then 
	pos = Vector3.new(hit.x,target.Position.y+3/2,hit.z)
	else 
	pos = Vector3.new(0,0,0)
	end 
	while mi.Parent ~= nil do  
	mi.CFrame=mi.CFrame-int
sound:play()
	mi.Anchored=true 
	local z = mi:Clone()
	z.Parent = workspace
	z.Anchored = true 
	z.CanCollide = false 
	z.Transparency = 0.5
	z.Name = "Burn"
	game:getService("Debris"):addItem(z,1)
	table.insert(amade,z)
	dist = (mi.Position - pos).magnitude
	if dist < 12 then 
	local nex = Instance.new("Explosion")
	nex.Parent = game.Workspace
	nex.Position = mi.Position
	nex.BlastRadius = 50
	WTFBOOM.Parent = nil 
	mi.Parent = nil 
	end 
	vel.velocity = Vector3.new(0,-100,0)
	wait()
	vel.velocity = Vector3.new(0,-101,0)
	wait()
	end
	for i = 1, #amade do 
	amade[i].Parent = nil 
	end 
sound.Volume=0
sound:stop()
sound.Volume=1
sound.Pitch=1
sound:play()
local ball=Instance.new("Part")
ball.TopSurface=0
ball.BottomSurface=0
ball.Parent=workspace
ball.Shape="Ball"
ball.Anchored=true 
ball.CanCollide=false 
ball.Size=Vector3.new(1,1,1)
ball.Transparency=.5
ball.BrickColor=BrickColor.new("Bright red")
for i = 1, 25 do 
ball.Size=ball.Size+Vector3.new(2,2,2)
ball.CFrame=WTFBOOM.CFrame
wait()
end 
for i = 1, 25 do 
ball.Size=ball.Size-Vector3.new(2,2,2)
ball.CFrame=WTFBOOM.CFrame
wait()
end 
ball:remove()
	end

function onButton1Up(mouse) 
	hit = mouse.Hit.p 
end

function onKeyDown(key, mouse) 
	key=key:lower()
	if key ~= nil then 
		if (key=="") then 
		end
	end
end

function onDeselected(mouse) 

end

function onSelected(mouse) 
	mouse.Icon = "rbxasset://textures\\GunCursor.png" 
	mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
	mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
	mouse.Move:connect(function() onMoved(mouse) end) 
end

script.Parent.Selected:connect(onSelected) 
script.Parent.Deselected:connect(onDeselected) 