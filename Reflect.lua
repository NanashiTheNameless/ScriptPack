Player = game:GetService("Players").DarkShadow6
Button1Down = false


function CalculateReflection(PointA, PointB, Hit, Distance)
	local Offset = Hit.CFrame:toObjectSpace(CFrame.new(PointB)).p
	local Face = nil
	local Largest = "x"
	if math.abs(Offset.y / Hit.Size.y) > math.abs(Offset.x / Hit.Size.x) then
		Largest = "y"
	end
	if math.abs(Offset.z / Hit.Size.z) > math.abs(Offset[Largest] / Hit.Size[Largest]) then
		Largest = "z"
	end
	if Offset[Largest] < 0 then
		if Largest == "x" then
			Face = "Left"
		elseif Largest == "y" then
			Face = "Bottom"
		elseif Largest == "z" then
			Face = "Back"
		end
	else
		if Largest == "x" then
			Face = "Right"
		elseif Largest == "y" then
			Face = "Top"
		elseif Largest == "z" then
			Face = "Front"
		end
	end
	local X, Y = CFrame.new(PointA, PointB):toEulerAnglesXYZ() --Vector3.new(Hit.CFrame:toEulerAnglesXYZ()).y???
	if Face == Enum.NormalId.Left.Name or Face == Enum.NormalId.Right.Name then
		return CFrame.new(PointB) * CFrame.fromEulerAnglesXYZ(X + math.rad(180), Y, 0)
	elseif Face == Enum.NormalId.Bottom.Name or Face == Enum.NormalId.Top.Name then
		return CFrame.new(PointB) * CFrame.fromEulerAnglesXYZ(-X + math.rad(180), -Y, 0)
	elseif Face == Enum.NormalId.Front.Name or Face == Enum.NormalId.Back.Name then
		return CFrame.new(PointB) * CFrame.fromEulerAnglesXYZ(-X, -Y, 0)
	end
end


function onSelected(Mouse)
	Mouse.Button1Down:connect(function()
		Button1Down = true
		while Button1Down do
			for _, Part in pairs(Player.Character:GetChildren()) do
				if Part.Name == "RayPart" then
					Part:Remove()
				end
			end
			local PointA = Player.Character.Torso.CFrame.p
			local PointB = Mouse.Hit.p
			for i = 1, 50 do
				local Ray = Ray.new((CFrame.new(PointA, PointB) * CFrame.new(0, 0, -0.1)).p, (PointB - PointA).unit * 300)
				local Hit, Position = game.Workspace:FindPartOnRay(Ray, Player.Character)
				local RayPart = Instance.new("Part", Player.Character)
				RayPart.Name = "RayPart"
				RayPart.BrickColor = BrickColor.new("Bright red")
				RayPart.Transparency = 0.5
				RayPart.Anchored = true
				RayPart.CanCollide = false
				RayPart.TopSurface = Enum.SurfaceType.Smooth
				RayPart.BottomSurface = Enum.SurfaceType.Smooth
				RayPart.FormFactor = Enum.FormFactor.Custom
				local Distance = (Position - PointA).magnitude
				RayPart.Size = Vector3.new(0.2, 0.2, Distance)
				RayPart.CFrame = CFrame.new(PointA, Position) * CFrame.new(0, 0, -Distance / 2)
				if Hit ~= nil then
					PointB = (CalculateReflection(PointA, Position, Hit, Distance) * CFrame.new(0, 0, 1)).p
					PointA = Position
				else
					break
				end
			end
			wait()
		end
	end)
	Mouse.Button1Up:connect(function()
		Button1Down = false
	end)
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = "Laser"
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	--script.Parent.Deselected:connect(onDeselected)
end