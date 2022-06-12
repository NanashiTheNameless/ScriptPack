Player = game.Players.LocalPlayer

function Give(x)
	H = Instance.new("HopperBin", Player.Backpack)
	H.BinType = x
end

for i = 2, 4 do
Give(i)
end