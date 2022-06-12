me = game.Players.LocalPlayer
if script.Parent.className ~= "HopperBin" then h = Instance.new("HopperBin",me.Backpack) script.Parent = h end
bin = script.Parent
bin.Selected:connect(function(mouse)
	mouse.KeyDown:connect(function(key) print(key:byte().."  "..key) end)
end)
