wait()

local player = game.Players.LocalPlayer
local m = player:GetMouse()

local runService = game:GetService("RunService")

local dp = Vector3.new()
local dcf = CFrame.new()

local shrink
local magiccam = true
local camconnect

local oldPos = Vector3.new()
local oldx = Vector3.new()
local oldy = Vector3.new()
local oldz = Vector3.new()

local helpergui = Instance.new("ScreenGui", player.PlayerGui)
local camRot = Vector2.new()
local camDist = 10

function camera()
	if magiccam then
		local ax = CFrame.Angles(camRot.x, 0, 0)
		local ay = CFrame.Angles(0, camRot.y, 0)
		local a = CFrame.Angles(-(m.Y / helpergui.AbsoluteSize.y-0.5), -(m.X / helpergui.AbsoluteSize.x-0.5), 0) * ay * ax
		local sx, sy, sz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = (player.Character.Head.CFrame * a):components()
		local x = Vector3.new(m00, m10, m20)
		local y = Vector3.new(m01, m11, m21)
		local z = Vector3.new(m02, m12, m22)
		local p = Vector3.new(sx, sy, sz)
		local lv = (player.Character.Head.CFrame * ay * ax).lookVector
		p = p - lv * camDist
		p = p:Lerp(oldPos, 0.8)
		x = x:Lerp(oldx, 0.8)
		y = y:Lerp(oldy, 0.8)
		z = z:Lerp(oldz, 0.8)
		x = x / x.magnitude
		y = y / y.magnitude	
		z = z / z.magnitude
		oldx = x
		oldy = y
		oldz = z
		oldPos = p
		game.Workspace.CurrentCamera.CoordinateFrame = CFrame.new(p.x, p.y, p.z, 	x.x, y.x, z.x,
																					x.y, y.y, z.y,
																					x.z, y.z, z.z)
	end
end

local mPos = Vector2.new()
local mb2d = false
m.Button2Down:connect(function ()
	mb2d = true
	mPos = Vector2.new(m.X, m.Y)
	while mb2d do
		camRot = Vector2.new(-((m.Y-mPos.y) / helpergui.AbsoluteSize.y) * math.pi * 1.5, -((m.X-mPos.x) / helpergui.AbsoluteSize.x) * math.pi * 2)
		wait()
	end
end)

m.Button2Up:connect(function ()
	camRot = Vector2.new()
	mb2d = false
end)

m.WheelForward:connect(function ()
	camDist = math.max(camDist - 1, 3)
end)

m.WheelBackward:connect(function ()
	camDist = math.min(camDist + 1, 50)
end)

player.Character.Humanoid.Died:connect(function ()
	magiccam = false
	game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
end)

runService.RenderStepped:connect(camera)

game.Workspace.CurrentCamera.CameraType = "Scriptable"