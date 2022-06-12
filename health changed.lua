function UpdateGUI(health)
	tray = HealthGUI_prototype.tray
	local width = (health / humanoid.MaxHealth) * maxWidth
	local height = 0.83
	local lastX = tray.bar.Position.X.Scale
	local x = 0.019 + (maxWidth - width)
	local y = 0.1
	
	tray.bar.Position = UDim2.new(x,0,y, 0) 
	tray.bar.Size = UDim2.new(width, 0, height, 0)
	-- If more than 1/4 health, bar = green.  Else, bar = red.
	if( (health / humanoid.MaxHealth) > 0.25 ) then
		tray.barRed.Size = UDim2.new(0, 0, 0, 0)
	else
		tray.barRed.Position = tray.bar.Position
		tray.barRed.Size = tray.bar.Size
		tray.bar.Size = UDim2.new(0, 0, 0, 0)
	end
	
	if ( (lastHealth - health) > (humanoid.MaxHealth / 10) ) then
		lastHealth = health

		if humanoid.Health ~= humanoid.MaxHealth then
			delay(0,function()
				AnimateHurtOverlay()
			end)
			delay(0,function()
				AnimateBars(x, y, lastX, height)
			end)
		end
	else
		lastHealth = health
	end
end


function HealthChanged(health)
	UpdateGUI(health)
	if ( (lastHealth2 - health) > (humanoid.MaxHealth / 10) ) then
		lastHealth2 = health
	else
		lastHealth2 = health
	end
end

humanoid.HealthChanged:connect(HealthChanged)
humanoid.Died:connect(function() HealthChanged(0) end)