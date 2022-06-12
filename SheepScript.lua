-- Hellu, this is FlySheep Script maded mostly by damko00 to create a
-- Script Builder Sheep, that you can fly
-- Just paste your name intro line 13 and 508

--[[CONTROLS:
	
	Y - Start Flying + Speed Up
	X - Stop Flying
	F - Shot a Colorful Vomit
	S - Slow Down]]


name = "BRICKER24alt"
plr = game.Players[name]
char = plr.Character
prim = BrickColor.new("Lime green") -- PRIMARY COLOR 
seco = BrickColor.new("Really red") --SECONDARY COLOR
cf = CFrame.new

if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "SheepCraft"
bin.BinType = "Script"
script:clone().Parent = bin
script:remove()
else
bin = script.Parent;

sheep = Instance.new("Model", game.Workspace)

seat = Instance.new("Seat", sheep)
seat.Name = "AircraftSeat"
seat.BrickColor = prim
seat.TopSurface = 0
seat.BottomSurface = 0
seat.FormFactor = 0
seat.Material = "Concrete"
seat.Size = Vector3.new(4,2,4)
seat.Position = char.Torso.Position
seat.Name = "AircraftSeat"

m = Instance.new("SpecialMesh", seat)
m.Scale = Vector3.new(1,1.5,1.75)
m.MeshType = "Sphere"

head = Instance.new("Part", sheep)
head.Size = Vector3.new(4,2,2)
head.FormFactor = 0
head.BrickColor = seco

m = Instance.new("SpecialMesh", head)

d = Instance.new("Decal", head)
d.Texture = "http://www.roblox.com/asset/?id=113475009"
d.Face = "Front"

APart = Instance.new("Part")
APart.Transparency = 1
APart.CanCollide = false
APart.Size = Vector3.new(1,1,1)
APart.Parent = sheep

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(head, APart, cf(0, 0, 1.5))

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(seat, head, cf(0, -1.5, 3))

p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,1,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(.4,1,.25)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(head, p, cf(.5, -1,0))
	
p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,1,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(.4,1,.25)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(head, p, cf(-.5, -1,0))

p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,2,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.Scale = Vector3.new(.7,1.25,1)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(seat, p, cf(-1.25, 1.5,2))

fp = Instance.new("Part", sheep)
fp.FormFactor = 0
fp.Size = Vector3.new(1,2,1)
fp.Transparency = 1

f = Instance.new("Fire", fp)
f.Size = 2
f.Heat = -5
f.Color = Color3.new(1,1,1)
f.SecondaryColor = f.Color

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(p, fp, cf(0, 1.1,0))

p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,2,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.Scale = Vector3.new(.7,1.25,1)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(seat, p, cf(1.25, 1.5,2))

fp = Instance.new("Part", sheep)
fp.FormFactor = 0
fp.Size = Vector3.new(1,2,1)
fp.Transparency = 1

f = Instance.new("Fire", fp)
f.Color = Color3.new(1,1,1)
f.Size = 2
f.Heat = -5
f.SecondaryColor = f.Color

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(p, fp, cf(0, 1.1,0))

p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,2,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.Scale = Vector3.new(.7,1.25,1)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(seat, p, cf(-1.25, 1.5,-1.5))

fp = Instance.new("Part", sheep)
fp.FormFactor = 0
fp.Size = Vector3.new(1,2,1)
fp.Transparency = 1

f = Instance.new("Fire", fp)
f.Size = 2
f.Heat = -5
f.Color = Color3.new(1,1,1)
f.SecondaryColor = f.Color

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(p, fp, cf(0, 1.1,0))

p = Instance.new("Part", sheep)
p.FormFactor = 0
p.Size = Vector3.new(1,2,1)
p.BrickColor = seco

m = Instance.new("SpecialMesh", p)
m.Scale = Vector3.new(.7,1.25,1)

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(seat, p, cf(1.25, 1.5,-1.5))

fp = Instance.new("Part", sheep)
fp.FormFactor = 0
fp.Size = Vector3.new(1,2,1)
fp.Transparency = 1

f = Instance.new("Fire", fp)
f.Color = Color3.new(1,1,1)
f.Size = 2
f.Heat = -5
f.SecondaryColor = f.Color

function weld(p0, p1, c1)
	weld = Instance.new("Weld", sheep)
	weld.Part0 = p0
	weld.Part1 = p1
	weld.C1 = c1
end

weld(p, fp, cf(0, 1.1,0))

ac = Instance.new("IntValue", seat)
ac.Value = 100
ac.Name = "Acceleration"

lc = Instance.new("IntValue", seat)
lc.Value = 23
lc.Name = "LiftTrim"

mac = Instance.new("IntValue", seat)
mac.Value = 1000
mac.Name = "MaxSpeed"

sc = Instance.new("IntValue", seat)
sc.Value = 100
sc.Name = "Speed"

tc = Instance.new("IntValue", seat)
tc.Value = 40
tc.Name = "TiltFactor"

ts = Instance.new("IntValue", seat)
ts.Value = 1000
ts.Name = "TurnSpeed"

dir = Instance.new("BodyGyro", seat)
dir.maxTorque =  Vector3.new(0,0,0)
dir.D = 500
dir.P = 1000
dir.Name = "Direction"

thu = Instance.new("BodyVelocity", seat)
thu.maxForce =  Vector3.new(0,0,0)
thu.velocity = Vector3.new(0,0.16,-100)
thu.P = 1250
thu.Name = "Thrust"

orv = Instance.new("CFrameValue", seat)
orv.Value = seat.CFrame
orv.Name = "OriginCFrame"

sheep:MoveTo(char.Head.Position)
seat.Parent = char

bin = script.Parent
plane = nil
hold = false
local debounce = false
local planedebounce = false
local stuntdebounce = false
local controlling = false
local currentspeed = 0
local turn = nil
fly = false

function computeDirection(vec)
	local lenSquared = vec.magnitude * vec.magnitude
	local invSqrt = 1 / math.sqrt(lenSquared)
	return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

function move(point, engine)
	local origincframe = engine:findFirstChild("Direction").cframe
	size = engine.Size

	target = engine.Position+((point - engine.Position).unit*100)
	local dir = (target - engine.Position).unit
	local spawnPos = engine.Position
	left = engine.CFrame*CFrame.new(-size.x/2, 0, 0).p
	right = engine.CFrame*CFrame.new(size.x/2, 0, 0).p
	md = (target - engine.Position).magnitude

	foebmd = engine.CFrame*CFrame.new(0, 0, -md).p
	toleft = (target -left).magnitude
	toright = (target -right).magnitude
	rot = ((foebmd - target).magnitude/10)
	local pos = spawnPos + (dir * 1)
	turn = math.rad((rot/10)*engine.TiltFactor.Value)
	if turn > math.rad(89) then
	turn = math.rad(89)
	end
	if toleft< toright and toleft >rot then
		engine:findFirstChild("Direction").cframe = CFrame.new(pos,  pos + dir)*CFrame.fromEulerAnglesXYZ(0, 0, turn)
	elseif toleft > toright and toright >rot then
		engine:findFirstChild("Direction").cframe = CFrame.new(pos,  pos + dir)*CFrame.fromEulerAnglesXYZ(0, 0, -turn)
	else
		engine:findFirstChild("Direction").cframe = CFrame.new(pos,  pos + dir)
	end
	engine:findFirstChild("Direction").P = engine.TurnSpeed.Value
end

function findPlane(player)
	local list = player.Character:GetChildren()
	for x = 1, #list do
		if (list[x].Name == "AircraftSeat") then
			return list[x]
		end
	end
	return nil
end

function onButton1Down(mouse)
	local vehicle = findPlane(plr)
	if vehicle ~= nil and debounce == false and planedebounce == false then
	if fly == false and taxi == false then return end
	debounce = true

	controlling = true

	while true do
		wait()
		local engine = vehicle
		local position = mouse.Hit
		local target = position.p
		move(target, engine)
		if planedebounce == true or
		controlling == false then break end
	end
	wait(0.1)
	debounce = false
	end
end

function onButton1Up(mouse)
	controlling = false
end

function onSelected(mouse)
	ShootPos = mouse
	mouse.Icon = "http://www.roblox.com/asset/?id=7419350"
	game.Workspace.CurrentCamera.CameraSubject = bin.Parent.Parent.Character.Head
	game.Workspace.CurrentCamera.CameraType = "Track"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(onKeyDown)
	mouse.KeyUp:connect(onKeyUp)
	mouse.Move:connect(function() Fly(mouse) end)
	mouse.Idle:connect(function() Fly(mouse) end)
end

function onDeselected(mouse)
	game.Workspace.CurrentCamera.CameraSubject = bin.Parent.Parent.Character.Humanoid
	game.Workspace.CurrentCamera.CameraType = "Custom"
end

function Fly(mouse)
	local vehicle = findPlane(plr)
	if (vehicle==nil) then return end
	vehicle.Thrust.velocity = (vehicle.CFrame.lookVector * currentspeed) + Vector3.new(0,vehicle.LiftTrim.Value/100,0)
end

function onKeyDown(key)
	if (key~=nil) then
		--key = key:lower()
		local vehicle = findPlane(plr)
		if (vehicle==nil) then return end
			if key == "y" then
				fly = true
				vehicle.Direction.cframe = vehicle.CFrame
				vehicle.Direction.maxTorque = Vector3.new(4e3,4e3,4e3)
				vehicle.Thrust.maxForce = Vector3.new(9e20,9e20,9e20)
				while fly == true do
					if currentspeed < vehicle.Speed.Value then
						currentspeed = currentspeed + 1
					elseif currentspeed > vehicle.Speed.Value then
						currentspeed = currentspeed - 1
					end
					if vehicle.Acceleration.Value > 1000 then vehicle.Acceleration.Value = 1000 end
					wait((1-(vehicle.Acceleration.Value/1000))+0.01)
					if fly == false then break end
				end
			end
			if key == "x" then
				fly = false
				currentspeed = 0
				vehicle.Direction.maxTorque = Vector3.new(0,0,0)
				vehicle.Thrust.maxForce = Vector3.new(0,0,0)
			end
			if key == "w" then
				if vehicle.Speed.Value < vehicle.MaxSpeed.Value then
					vehicle.Speed.Value = vehicle.Speed.Value + 10
				end
			end
			if key == "s" then
				if vehicle.Speed.Value > -10 then
					vehicle.Speed.Value = vehicle.Speed.Value - 10
				end
			end
			if (key=="'") and (bin.Locked.Value == false) then
				local repl = script:clone()
				repl.Parent = bin
				wait(1)
				script:remove()
			end
			if key == "l" and fly == true then
				vehicle.Direction.maxTorque = Vector3.new(4e3,0,4e3)
				local frame = vehicle:FindFirstChild("OriginCFrame")
				if frame ~= nil then
				vehicle.Direction.cframe = frame.Value
				end
				wait(2)
				vehicle.Direction.cframe = vehicle.CFrame
				vehicle.Direction.maxTorque = Vector3.new(4e3,4e3,4e3)
				
			end
			if key == "f" and fly == true then
				
				function raycast(origin, ending, ang)
 local ray = Ray.new(
 origin.p, -- origin
 (ending.p - origin.p).unit * 500 -- direction
 ) 
local hit, Position = game.Workspace:FindPartOnRay(ray, ang)
 local RayPart = Instance.new("Part", game.Workspace)
 RayPart.Name = "RayPart"
 RayPart.BrickColor = BrickColor.random()
 RayPart.Transparency = 0.5
 RayPart.Reflectance = .25
 RayPart.Anchored = true
 RayPart.CanCollide = false
 RayPart.TopSurface = Enum.SurfaceType.Smooth
 RayPart.BottomSurface = Enum.SurfaceType.Smooth
 RayPart.FormFactor = Enum.FormFactor.Custom
 local Distance = (Position-origin.p).magnitude
 RayPart.Size = Vector3.new(0.2,0.2,Distance)
 RayPart.CFrame = CFrame.new(Position,origin.p) * CFrame.new(0,0,-Distance/2)
 game.Debris:AddItem(RayPart,0.2)
 exp = Instance.new("Explosion", game.Workspace)
exp.Position = ending.p
exp.BlastRadius = 5
	RP = RayPart

	--[[RP = Instance.new("Part", game.Workspace)
	RP.Size = Vector3.new(6,6,6)
	RP.Position = ending.p
	RP.BrickColor = RayPart.BrickColor
	RP.Transparency = .5
	RP.Reflectance = .25
	RP.Anchored = true
	RP.CanCollide = false
	RP.TopSurface = 0
	RP.BottomSurface = 0
	RP.Shape = 0	
	game.Debris:AddItem(RP, .2)	]]
	
	function Tuch(Dhit)
		if Dhit.Parent.Name ~= "Mewy118" then 
		h = Dhit.Parent:findFirstChild("Humanoid")
		if h then
			h:TakeDamage(math.huge) -- Sheep Vomitation of Doom
			plajr = game.Players:getPlayerFromCharacter(h.Parent)
			if plajr then
			g = Instance.new("ScreenGui", plajr.PlayerGui)
			l = Instance.new("ImageLabel", g)
			l.BackgroundTransparency = 1
			l.Position = UDim2.new(.25,0,.15,0)
			l.Size = UDim2.new(.5,0,.7,0)
			l.Image = "http://www.roblox.com/asset/?id=117305754"
			end
		end
		end
	end
	
 return hit 

				end	
								hit = raycast(APart.CFrame, ShootPos.Hit, char)
								if (hit) then
								exp.Hit:connect(Tuch)
								end 
			end						
				
	end
end

function onKeyUp(key)
	if (key~=nil) then
		key = key:lower()
		local vehicle = findPlane(plr)
		if (vehicle==nil) then return end
	end
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)

end
