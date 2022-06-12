--[[
ScopeZoom v7
Variables:

ScopeZoomRange
Player

Functions:

ScopeZoom
--]]


ScopeZoomed = false


function ScopeZoom(Mouse)
	if ScopeZoomed == nil then return end
	ScopeZoomed = not ScopeZoomed
	if ScopeZoomed == true then
		coroutine.wrap(function()
			ScopeZoomed = nil
			local BasePosition = Mouse.Hit.p
			local X, Y = 0, 0
			local Sizer = Instance.new("ScreenGui", Player:FindFirstChild("PlayerGui"))
			Sizer.Name = "Scope Sizer"
			wait(0.1)
			ScopeZoomed = true
			while ScopeZoomed == true and Selected == true do
				local MouseOn, NewX, NewY = pcall(function() return Mouse.X, Mouse.Y end)
				if MouseOn == false then break end
				X = X - (NewX - (Sizer.AbsoluteSize.x / 2)) / 500
				Y = Y - (NewY - (Sizer.AbsoluteSize.y / 2)) / 500
				local Hit, Position = Workspace:FindPartOnRay(Ray.new(Player.Character.Head.Position, (CFrame.fromEulerAnglesXYZ(CFrame.new(Player.Character.Head.Position, BasePosition):toEulerAnglesXYZ()) * CFrame.fromEulerAnglesXYZ(0, math.rad(X), 0):toWorldSpace(CFrame.fromEulerAnglesXYZ(math.rad(Y), 0, 0)) * CFrame.new(0, 0, -ScopeZoomRange)).p), Player.Character)
				Workspace.CurrentCamera.CameraSubject = nil
				Workspace.CurrentCamera.CameraType = "Fixed"
				Workspace.CurrentCamera.CoordinateFrame = CFrame.new((CFrame.new(Position) * CFrame.fromEulerAnglesXYZ(CFrame.new(Player.Character.Head.Position, Position):toEulerAnglesXYZ()) * CFrame.new(0, 0, 3)).p)
				Workspace.CurrentCamera.Focus = CFrame.new(Position)
				wait()
			end
			ScopeZoomed = nil
			Sizer:Remove()
			Workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChild("Humanoid")
			Workspace.CurrentCamera.CameraType = "Custom"
			ScopeZoomed = false
		end)()
	end
end