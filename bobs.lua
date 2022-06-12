--dogfite by grubsteak
local v=Vector3.new
local yield=coroutine.yield
local uvec=Vector3.new(1, 1, 1)
local inf=math.huge
local infvec=uvec*inf
local down=false
local speed;


local players=game:GetService"Players"
local player=players.LocalPlayer
local mouse=player:GetMouse()
repeat yield() until player.Character
local character=player.Character
local torso=character:WaitForChild"Torso"
local humanoid=character:WaitForChild"Humanoid"

function weld(p1, p2)
	local weld=Instance.new"Weld"
	weld.Parent=p1
	weld.Part0=p1
	weld.Part1=p2
	return weld
end

local ball=Instance.new"Part"
ball.CanCollide=false
ball.TopSurface="Smooth"
ball.BottomSurface="Smooth"
ball.BrickColor=BrickColor.new"Beige"
ball.FormFactor="Custom"
Instance.new("SpecialMesh", ball).MeshType=Enum.MeshType.Sphere

local lb=ball:Clone()
lb.Size=uvec*1
lb.Parent=character
local lbn=ball:clone()
lbn.BrickColor=BrickColor.new"Hot pink"
lbn.Size=uvec*.2
lbn.Parent=character

local rb=lb:Clone()
rb.Parent=character
local rbn=lbn:Clone()
rbn.Parent=character

local lbnw=weld(lb, lbn)
local rbnw=weld(rb, rbn)
lbnw.C0=CFrame.new(0, 0, -(lb.Size.X/2-lbn.Size.X/4))
rbnw.C0=lbnw.C0

local lbw=weld(torso, lb)
local rbw=weld(torso, rb)
lbw.C0=CFrame.new(-lb.Size.X/2, lb.Size.X/2, -lb.Size.X/2)
rbw.C0=lbw.C0*CFrame.new(lb.Size.X, 0, 0)

while true do
	local dt=yield()
	local v=torso.Velocity
	local c0=CFrame.new(-lb.Size.X/2, lb.Size.X/2, -lb.Size.X/2)
	local deg=-math.max(math.min(v.Y*1.8, 50), -50)/70
	--print(deg)
	local ang=CFrame.Angles(deg * math.pi/2 , 0, 0)
	lbw.C0=c0*CFrame.Angles(0, deg*1.2*math.pi/4, 0)*ang
	rbw.C0=c0*CFrame.new(lb.Size.X, 0, 0)*CFrame.Angles(0, -deg*1.2*math.pi/4, 0)*ang
end