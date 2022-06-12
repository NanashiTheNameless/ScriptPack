mx = game.Debris
mx2 = game.Debris.MaxItems

if (mx.MaxItems > 100) then
	mx.MaxItems = mx2*.75
end
