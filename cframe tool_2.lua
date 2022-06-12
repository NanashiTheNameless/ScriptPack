Me = game.Players.LocalPlayer
Char = Me.Character

Selected = nil

local Box
local Arcs
local Hand
local CF

function HandlesDown()
	if Selected then
		Selected.Anchored = true
		CF = Selected.CFrame
	end
end

function Move()
end

if script.Parent.className ~= "HopperBin" then
	local h = Instance.new("HopperBin", Me.Backpack)
	h.Name = "CFrame"
	script.Parent = h
end

bin = script.Parent

bin.Selected:connect(function(mouse)
	Box = Instance.new("SelectionBox", Char)
	Box.Color = BrickColor.new(1,1,1)
	Arcs = Instance.new("ArcHandles", Char)
	Hand = Instance.new("Handles", Char)
	Hand.Color = BrickColor.new(1, 0.5, 0)
	Hand.Style = Enum.HandlesStyle.Movement
	mouse.Button1Down:connect(function()
		local Targ = mouse.Target
		Selected = Targ
		if Selected then
			Box.Adornee = Selected
			Arcs.Adornee = Selected
			Hand.Adornee = Selected
		else
			Box.Adornee = nil
			Arcs.Adornee = nil
			Hand.Adornee = nil
		end
	end)
end)

bin.Deselected:connect(function(mouse)
	Selected = nil
	Box:remove()
	Arcs:remove()
	Hand:remove()
	Box = nil
	Arcs = nil
	Hand = nil
end)

