lp=game.Players.LocalPlayer
local Tool = Instance.new('HopperBin',lp.Backpack)
Tool.Name='MoveSun'

-- convert number (in hours) to TimeOfDay string
-- because TimeOfDay doesn't cast numbers as expected (3.7 -> 03:07:00 instead of 3:42:00)
local function ToTimeOfDay(n)
	n = n % 24
	local i,f = math.modf(n)
	local m = f*60
	local mi,mf = math.modf(m)
	m = tostring(math.abs(math.floor(m)))
	local s = tostring(math.abs(math.floor(mf*60)))
	return i..":"..string.rep("0",2-#m)..m..":"..string.rep("0",2-#s)..s
end

-- convert TimeOfDay string to number (in hours)
local function FromTimeOfDay(t)
	local signed,h,m,s = t:match("^(%-?)(%d+):(%d+):(%d+)$")
	s = tonumber(s)/60
	m = tonumber(m + s)/60
	h = tonumber(h) + m
	return h * (#signed > 0 and -1 or 1)
end

local function rad_sc(n)
	return n/(math.pi*2)
end

local function sc_rad(n)
	return n*(math.pi*2)
end

-- convert direction to latitude (as GeographicLatitude) and longitude (as TimeOfDay)
local function ToLatLon(d)
	d = Vector3.new(-d.x,-d.y,d.z) -- derp derp derp derp derp
	local lat = math.atan2(d.z,math.sqrt(d.x^2 + d.y^2))
	local lon = math.atan2(d.y,d.x)
	
	lat = rad_sc(lat)*360 + 23.5
	lon = ToTimeOfDay(rad_sc(lon)*24 - 6)

	return lat,lon
end

--[[
-- convert lat and lon to direction (doesn't work)
local function to_dir(lat,lon)
	lat = sc_rad((lat - 23.5)/360)
	lon = sc_rad((FromTimeOfDay(lon) + 6)/24)

	return Vector3.new(
		(math.cos(lat)*math.cos(lon)),
		(math.cos(lat)*math.sin(lon)),
		math.sin(lat)
	)
end
]]

local Event = {}
local function Disconnect(...)
	for _,name in pairs{...} do
		if Event[name] then
			Event[name]:disconnect()
			Event[name] = nil
		end
	end
end

local Lighting = Game:GetService("Lighting")
local down = false

local P = 0.02
local D = 16
local position = Lighting:GetSunDirection()
local velocity = Vector3.new(0,0,0)
local goal = Lighting:GetSunDirection()

local active = false
local function Activate(Mouse)
	position = Lighting:GetSunDirection()
	goal = Lighting:GetSunDirection()
	active = true
	Event.Down = Mouse.Button1Down:connect(function()
		down = true
		goal = Mouse.UnitRay.Direction
	end)
	
	Event.Up = Mouse.Button1Up:connect(function()
		down = false
	end)
	
	Event.Move = Mouse.Move:connect(function()
		if down then
			goal = Mouse.UnitRay.Direction
		end
	end)

	asd = game:GetService'RunService'.RenderStepped:connect(function()
		velocity = Vector3.new(
			velocity.x + P * ((goal.x - position.x) + D * -velocity.x),
			velocity.y + P * ((goal.y - position.y) + D * -velocity.y),
			velocity.z + P * ((goal.z - position.z) + D * -velocity.z)
		)
		position = position + velocity
		local lat,lon = ToLatLon(position)
		Lighting.GeographicLatitude = lat
		Lighting.TimeOfDay = lon
		--print(lon)
		--wait()
	end)
end

local function Deactivate()
	active = false
	down = false
	asd:disconnect()
	Disconnect("Down","Up","Move")
end

Tool.Selected:connect(Activate)
Tool.Deselected:connect(Deactivate)