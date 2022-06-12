han = Instance.new("Tool") 
han.Parent = Game.Players.yfc.Backpack 
han.Name = "Rotate" 
hand = Instance.new("Part") 
hand.Name = "Handle" 
hand.Parent = han 
hand.Size = Vector3.new("1, 1, 1") 
hand.Brickcolor = BrickColor.new("Bright red")

local Tool = han

enabled = true

local selectionBox
local arcHandles
local moveHandles
local selectedPose
local previousCFrame
local previousDistance


function onArcHandlesDown(normal)
	print("handlesDown")
	if selectedPose then
		selectedPose.Anchored = true
		previousCFrame = selectedPose.CFrame
	end
end


function onArcHandlesDrag(axis, relativeAngle, deltaRadius)
	if selectedPose then
		local axisangle = Vector3.FromAxis(axis)
		axisangle = axisangle * relativeAngle
		selectedPose.CFrame = previousCFrame * CFrame.Angles(axisangle.X, axisangle.Y, axisangle.Z)
		local x, y, z = selectedPose.CFrame:toEulerAnglesXYZ()
		print(math.floor(math.deg(x)), math.floor(math.deg(y)), math.floor(math.deg(z)))
      end
end

function onMoveHandlesDown(normal)
	print("handlesDown")
	if selectedPose then
		selectedPose.Anchored = true
		previousDistance = 0
	end
end

function onMoveHandlesDrag(normal, distance)
	if selectedPose then
		local delta = distance - previousDistance
		translation = CFrame.new(Vector3.FromNormalId(normal) * delta)
		selectedPose.CFrame = translation * selectedPose.CFrame
		previousDistance = distance

		print(selectedPose.Position)
	end
end


function onButton1Down(mouse)
	print("3DButtonDown")

	selectionBox.Adornee = nil
	arcHandles.Adornee = nil
	moveHandles.Adornee = nil

	if mouse.Target ~= nil then

		selectedPose = mouse.Target
		selectionBox.Adornee = mouse.Target
		arcHandles.Adornee = mouse.Target
		moveHandles.Adornee = mouse.Target
	end
end


function onEquippedLocal(mouse)
	local character = script.Parent.Parent
	local player = game.Players:GetPlayerFromCharacter(character)
	mouse.Icon ="rbxasset://textures\\DragCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)

	selectionBox = Instance.new("SelectionBox")
	selectionBox.Color = BrickColor.new("Really blue")
	selectionBox.Adornee = nil
	selectionBox.Parent = player.PlayerGui
  
	arcHandles = Instance.new("ArcHandles")
	arcHandles.Color = BrickColor.new("New Yeller")
	arcHandles.Adornee = nil
	arcHandles.Axes = Axes.new(Enum.Axis.X, Enum.Axis.Y, Enum.Axis.Z)
	arcHandles.MouseDrag:connect(onArcHandlesDrag)
	arcHandles.MouseButton1Down:connect(onArcHandlesDown)
	arcHandles.Parent = player.PlayerGui

	moveHandles = Instance.new("Handles")
	moveHandles.Style = Enum.HandlesStyle.Movement
	moveHandles.Color = BrickColor.new("Really red")
	moveHandles.Adornee = nil
	moveHandles.MouseDrag:connect(onMoveHandlesDrag)
	moveHandles.MouseButton1Down:connect(onMoveHandlesDown)
	moveHandles.Parent = player.PlayerGui

end

function onUnequippedLocal()
	selectionBox:remove()
	arcHandles:remove()
	moveHandles:remove()

end


Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)
