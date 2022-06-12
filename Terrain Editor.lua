-- Bouyer the Destroyer

-- Remember, this is a script meant to be in a hopperbin.
-- If you dont know how to make a Hopperbin, consult the wiki.
-- If you are using this in Script Builder, say "help/Tool".

local MaxHeight = 100 -- The maximum height of whatever you make
local Distance = 25 -- Max distance away from mouse
local D_Increase = 5 -- Rate of increase per unit of distance
local Scale = 1 / 25 -- Drag D_Increase
local Text = "Press U and J to edit the terrain. Press Y and H to change the Distance."

local Hint = Instance.new("Hint")
local Mode = "Raise"
local Down = false

function GetParts(Root, Mouse)
	local Parts = Root:GetChildren()
	for X = 1, # Parts do
		if Parts[X].className == "Part" then
			Edit(Parts[X], Mouse)
		else
			GetParts(Parts[X], Mouse)
		end
	end
end

function Edit(Part, Mouse)
	if Part.Anchored == false or Part.Locked == true then
		return
	end
	local CF = Mouse.Hit
	if Mode == "Raise" then
		local Dist = (Vector3.new(CF.p.x,0,CF.p.z) - Vector3.new(Part.Position.x,0,Part.Position.z)).magnitude
		if Dist > Distance then
			return
		end
		local Inc = Distance - Dist
		Part.Size = Part.Size + Vector3.new(0,Inc * Scale,0)
		if Part.Size.y > MaxHeight then
			Part.Size = Vector3.new(Part.Size.x, MaxHeight, Part.size.z)
		end
		Part.CFrame = CFrame.new(Part.Position.x, Part.Size.y / 2, Part.Position.z)
	elseif Mode == "Lower" then
		local Dist = (Vector3.new(CF.p.x,0,CF.p.z) - Vector3.new(Part.Position.x,0,Part.Position.z)).magnitude
		if Dist > Distance then
			return
		end
		local Inc = Distance - Dist
		Part.Size = Part.Size - Vector3.new(0,Inc * Scale,0)
		Part.CFrame = CFrame.new(Part.Position.x, Part.Size.y / 2, Part.Position.z)
	end
end

function OnDown(Mouse)
	Down = true
	while Down do
		wait(.1)
		if Mouse.Target ~= nil then
			GetParts(game.Workspace, Mouse)
		end
	end
end

function OnPressed(Key)
	if Key == nil then
		return
	end
	if Key:lower() == "u" then
		Mode = "Raise"
		Hint.Text = "Mode: "..Mode
	elseif Key:lower() == "j" then
		Mode = "Lower"
		Hint.Text = "Mode: "..Mode
	elseif Key:lower() == "y" then
		Distance = Distance + D_Increase
		Hint.Text = "Range: "..Distance
	elseif Key:lower() == "h" then
		if Distance <= D_Increase then
			return
		end
		Distance = Distance - D_Increase
		Hint.Text = "Range: "..Distance
	end
end

function OnSelected(Mouse)
	Hint.Parent = game.Players.localPlayer
	Hint.Text = Text
	Mouse.Button1Down:connect(function() OnDown(Mouse) end)
	Mouse.Button1Up:connect(function() Down = false end)
	Mouse.KeyDown:connect(function(Key) OnPressed(Key) end)
	script.Parent.Deselected:connect(function() Hint.Parent = nil end)
end

script.Parent.Selected:connect(OnSelected)