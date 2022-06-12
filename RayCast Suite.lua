--[[
 ~ DarkShadow6's RayCast Suite v2 ~

Function: _G.RCS.ClearBuffer
Arguments: None.
Usage:
	Call this function before you use _G.RCS.SetBuffer to clear the _G.RCS.Buffer buffer table.

Function: _G.RCS.SetBuffer
Arguments:
	Source, Instance.
	Ignore, table of Instances and strings.
Usage:
	Call this function before you use any of these functions (or, set the _G.RCS.Buffer variable to a table of Instances):
		FindFirstIntersection
		RayCastAndGetIntersection
	The Source argument is the object to search. Pass nil for default (Workspace).
	The Ignore argument is a table of Instances and names of Instances to ignore, in example {"Part Name", Workspace.Part3}.
	Returns nothing.

Function: _G.RCS.RayCast
Arguments:
	Source, CFrame.
	Distance, integer.
	Ignore, table of Instances and strings.
	Step, decimal or integer.
Usage:
	The Source argument is the source of the ray, along with the angle.
	Tip: Use CFrame.new(Source, Target) with both arguments of type Vector3.
	The Distance argument defaults to 100. It's a nice number to use.
	The Step argument can be any number you like. The smaller the step, the more checks it does and the more accurate the position of intersection.
	Note: The _G.RCS.RayCast function plus the _G.RCS.FindFirstIntersection function may not be as reliable as the combined
		_G.RCS.RayCastAndGetIntersect function.
	Returns the global Vector3 position of the intersection.

Function: _G.RCS.IsIntersectingFromObjectSpace
Arguments:
	Part, Instance.
	Offset, Vector3.
Usage:
	The Part argument is the object to test intersection against Vector3 argument Offset.
	If an intersection is found, the function will return true, else false.

Function: _G.RCS.IsIntersecting
Arguments:
	Part, Instance.
	Source, CFrame.
Usage:
	Runs _G.RCS.IsIntersectingFromObjectSpace with the argument Part and the localized position (to the Part argument) Vector3 of the CFrame argument Source.
	If an intersection is found, the function will return true and the offset of the intersection, else false and the offset.

Function: _G.RCS.FindFirstIntersection
Arguments:
	Source, CFrame.
Usage:
	Runs IsIntersecting on all _G.RCS.Buffer Instances with the added argument Source.
	If an intersection is found, the function will return the child and the offset of the intersection, else nil and a Vector3 with the value of (0, 0, 0).

Function: _G.RCS.RayCastAndGetIntersection(Source, Distance, Step)
Arguments:
	Source, CFrame.
	Distance, integer.
	Step, decimal or integer.
Usage:
	Combines the usage of _G.RCS.RayCast and _G.RCS.FindFirstIntersection.
	The Source argument is the source of the ray, along with the angle.
	Tip: Use CFrame.new(Source, Target) with both arguments of type Vector3.
	The Distance argument defaults to 100. It's a nice number to use.
	The Step argument can be any number you like. The smaller the step, the more checks it does and the more accurate the position of intersection.
	Returns the intersected part (or nil if no intersections are detected), the global position of the intersection (or the last checked position in
		Vector3 format if no intersection is detected), and the offset of the intersection to the intersected part (or a Vector3 with the value
		of (0, 0, 0)).

Function: _G.RCS.GetClosestFaceFromObjectSpace
Arguments:
	Part, Instance.
	Offset, Vector3.
Usage:
	Returns the closest face Enum name based on the local object space Vector3 argument Offset for Instance Part.

Function: _G.RCS.GetClosestFace
Arguments:
	Part, Instance.
	Position, CFrame.
Usage:
	Returns the closest face Enum name based on the global CFrame argument Position for Instance Part by calling _G.RCS.GetClosestFaceFromObjectSpace.

--]]


_G.RCS = {}
_G.RCS.Version = "2.1.0"
_G.RCS.Buffer = {}


function _G.RCS.ClearBuffer()
	_G.RCS.Buffer = {}
end


function _G.RCS.SetBuffer(Source, Ignore)
	if type(Source) ~= "userdata" then Source = Workspace end
	if type(Ignore) ~= "table" then Ignore = {} end
	if type(_G.RCS.Buffer) ~= "table" then _G.RCS.Buffer = {} end
	for _, Child in pairs(Source:GetChildren()) do
		if Child:IsA("BasePart") then
			local IsIgnored = false
			for i = 1, #Ignore do
				if Child == Ignore[i] or Child.Name == Ignore[i] then
					IsIgnored = true
				end
			end
			if IsIgnored == false then
				table.insert(_G.RCS.Buffer, Child)
			end
		end
		_G.RCS.SetBuffer(Child, Ignore)
	end
end


function _G.RCS.RayCast(Source, Distance, Step)
	if type(Source) ~= "userdata" then Source = CFrame.new() end
	if type(Distance) ~= "number" then Distance = 100 end
	if type(Step) ~= "number" then Step = 0.5 end
	local RayPoint = Instance.new("Part", Workspace)
	RayPoint.Name = "RayPoint"
	RayPoint.Transparency = 1
	RayPoint.CanCollide = false
	RayPoint.Anchored = true
	RayPoint.TopSurface = 0
	RayPoint.BottomSurface = 0
	RayPoint.FormFactor = "Custom"
	RayPoint.Size = Vector3.new(0, 0, Step)
	for i = 0, -Distance, -Step do
		local Position = (Source * CFrame.new(0, 0, i)).p
		RayPoint.Position = Position
		if RayPoint.Position ~= Position then
			RayPoint:Remove()
			return Position
		end
	end
	RayPoint:Remove()
	return RayPoint.Position
end


function _G.RCS.IsIntersectingFromObjectSpace(Part, Offset)
	local SizeX = Part.Size.x / 2
	local SizeY = Part.Size.y / 2
	local SizeZ = Part.Size.z / 2
	if Offset.x < SizeX and Offset.x > -SizeX and Offset.y < SizeY and Offset.y > -SizeY and Offset.z < SizeZ and Offset.z > -SizeZ then
		return true, Offset
	else
		return false, Vector3.new()
	end
end


function _G.RCS.IsIntersecting(Part, Source)
	local Offset = Part.CFrame:toObjectSpace(Source).p
	return _G.RCS.IsIntersectingFromObjectSpace(Part, Offset), Offset
end


function _G.RCS.FindFirstIntersection(Source)
	if type(Source) ~= "userdata" then Source = CFrame.new() end
	for _, Part in pairs(_G.RCS.Buffer) do
		local IsIntersecting, Offset = _G.RCS.IsIntersecting(Part, Source)
		if IsIntersecting == true then
			return Part, Offset
		end
	end
	return nil, Vector3.new()
end


function _G.RCS.RayCastAndGetIntersection(Source, Distance, Step)
	if type(Source) ~= "userdata" then Source = CFrame.new() end
	if type(Distance) ~= "number" then Distance = 100 end
	if type(Step) ~= "number" then Step = 0.5 end
	local RayPoint = Instance.new("Part", Workspace)
	RayPoint.Name = "RayPoint"
	RayPoint.Transparency = 1
	RayPoint.CanCollide = false
	RayPoint.Anchored = true
	RayPoint.TopSurface = 0
	RayPoint.BottomSurface = 0
	RayPoint.FormFactor = "Custom"
	RayPoint.Size = Vector3.new(0, 0, Step)
	for i = 0, -Distance, -Step do
		local Position = (Source * CFrame.new(0, 0, i)).p
		RayPoint.Position = Position
		if RayPoint.Position ~= Position then
			local Part, Offset = _G.RCS.FindFirstIntersection(CFrame.new(Position))
			if Part ~= nil then
				RayPoint:Remove()
				return Part, Position, Offset
			end
		end
	end
	RayPoint:Remove()
	return nil, RayPoint.Position, Vector3.new()
end


function _G.RCS.GetClosestFaceFromObjectSpace(Part, Offset)
	local Largest = "x"
	if math.abs(Offset.y / Part.Size.y) > math.abs(Offset.x / Part.Size.x) then
		Largest = "y"
	end
	if math.abs(Offset.z / Part.Size.z) > math.abs(Offset[Largest] / Part.Size[Largest]) then
		Largest = "z"
	end
	if Offset[Largest] < 0 then
		if Largest == "x" then
			return "Left"
		elseif Largest == "y" then
			return "Bottom"
		elseif Largest == "z" then
			return "Back"
		end
	else
		if Largest == "x" then
			return "Right"
		elseif Largest == "y" then
			return "Top"
		elseif Largest == "z" then
			return "Front"
		end
	end
end

function _G.RCS.GetClosestFace(Part, Position)
	return _G.RCS.GetClosestFaceFromObjectSpace(Part, Part.CFrame:toObjectSpace(Position).p)
end