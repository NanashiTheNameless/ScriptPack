local player = game.Players.acb227

	selectionBox = Instance.new("SelectionBox")
	selectionBox.Color = BrickColor.new("Cyan")
	selectionBox.Adornee = workspace.Base
	selectionBox.Parent = player.PlayerGui

	arcHandlesPart = Instance.new("Part")
	arcHandlesPart.Name = "ArcHandlesProxyPart"
	arcHandlesPart.Size = Vector3.new(2,2,2)
	arcHandlesPart.Parent = player.PlayerGui

	moveHandlesPart = Instance.new("Part")
	moveHandlesPart.Name = "MoveHandlesProxyPart"
	moveHandlesPart.Size = Vector3.new(2,2,2)
	moveHandlesPart.Parent = player.PlayerGui
  
	arcHandles = Instance.new("ArcHandles")
	arcHandles.Color = BrickColor.new("Neon orange")
	arcHandles.Adornee = workspace.Base
	arcHandles.Axes = Axes.new(Enum.Axis.X, Enum.Axis.Y, Enum.Axis.Z)
	arcHandles.Parent = player.PlayerGui

	moveHandles = Instance.new("Handles")
	moveHandles.Style = Enum.HandlesStyle.Movement
	moveHandles.Color = BrickColor.new("Bright blue")
	moveHandles.Adornee = workspace.Base
	moveHandles.Parent = player.PlayerGui