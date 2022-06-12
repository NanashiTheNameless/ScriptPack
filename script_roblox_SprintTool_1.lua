bin = script.Parent
power=100
enabled=true

function onButton1Down(mouse)
	if not enabled then
		return
	end

	enabled = false
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

	local hit = mouse.Hit
	local part=mouse.Target
	local dude=script.Parent.Parent.Parent.Name
	local pl=game.Workspace:findFirstChild(dude)
	if hit==nil or part==nil or dude==nil or pl==nil then 
	wait(0.3)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	enabled = true
	return 
	end


	if pl.Torso.Position~=nil then
		local vertdist=hit.p.y-pl.Torso.Position.y
		if vertdist>14 or vertdist<-10 then
			wait(0.3)
			mouse.Icon = "rbxasset://textures\\GunCursor.png"
			enabled = true
			return
		end

		local e=hit.p.x-pl.Torso.Position.x
		local f=hit.p.z-pl.Torso.Position.z
		local mult=1/(math.sqrt((e^2)+(f^2)))
		e=2*e*mult
		f=f*mult
		
		if part.Parent:findFirstChild("Humanoid")~=nil then
			if (1/mult)<10 then
				part.Parent.Torso.Velocity=Vector3.new(e*power,0,f*power)
				part.Parent.Humanoid.Health=part.Parent.Humanoid.Health-15
				wait(0.8)
			end	
		end
		
		pl.Torso.Velocity=Vector3.new(e*power,0,f*power)
	end

	pl.Humanoid.Health=pl.Humanoid.Health-1
	wait(0.2)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	enabled = true

end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)