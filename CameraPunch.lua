--[[
CameraPunch v5

Functions:
CameraPunch
CameraSlide
--]]


function CameraPunch(X, Y)
	X, Y = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000)
	Workspace.CurrentCamera.CoordinateFrame =
		CFrame.new(Workspace.CurrentCamera.Focus.p) *
		CFrame.fromEulerAnglesXYZ(CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, Workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) *
		CFrame.fromEulerAnglesXYZ(X, Y, 0) *
		CFrame.new(0, 0, (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude)
end


function CameraSlide(X, Y, Step)
	X, Y, Step = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000), Step or 0.1
	for i = 0, 1, Step do
		CameraPunch(Step * X, Step * Y)
		wait()
	end
end