--[[
CFrameTween v4

Functions:
PropertyCFrameTween
--]]


function PropertyCFrameTween(Part, Property, End, Step, Wrap)
	if Part == nil then return end
	local StartPosition = Part[Property].p
	local StartAngle = Vector3.new(Part[Property]:toEulerAnglesXYZ())
	local EndPosition = End.p
	local EndAngle = Vector3.new(End:toEulerAnglesXYZ())
	local Loop = coroutine.create(function()
		for i = 0, 1, Step do
			Part[Property] =
				CFrame.new((StartPosition * (1 - i)) + (EndPosition * i)) *
				CFrame.fromEulerAnglesXYZ(
					(StartAngle.x * (1 - i)) + (EndAngle.x * i),
					(StartAngle.y * (1 - i)) + (EndAngle.y * i),
					(StartAngle.z * (1 - i)) + (EndAngle.z * i)
				)
			wait()
		end
		Part[Property] = End
		error()
	end)
	coroutine.resume(Loop)
	if Wrap ~= true then
		while coroutine.status(Loop) ~= "dead" do wait() end
	end
end