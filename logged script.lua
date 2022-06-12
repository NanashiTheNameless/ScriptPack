




local p=game:service'Players'.LocalPlayer
local c=p.Character
local y=-4.6
local hidden=false
local Parts={}
p:GetMouse().KeyDown:connect(function(k)
	k=k:lower()
	if k == 'x' then
		hidden=not hidden
	end
end)

	function Rainbow(i)	
    	local section = i % 1 * 3
    	local secondary = 0.5 * math.pi * (section % 1)
    	if section < 1 then
        	return 1, 1 - math.cos(secondary), 1 - math.sin(secondary)
    	elseif section < 2 then
        	return 1 - math.sin(secondary), 1, 1 - math.cos(secondary)
    	else
        	return 1 - math.cos(secondary), 1 - math.sin(secondary), 1
    	end
	end
	
	createPart=function()
		local prt=Instance.new"Part"
		prt.Parent=c
		prt.BrickColor=BrickColor.new"Really black"
		prt.Locked=true
		prt.Anchored=true
		prt.CanCollide = false
		prt.Material="Neon"
		if hidden then
			prt.CanCollide=false
			prt.Transparency=1
		end
		prt.FormFactor='Custom'
		prt.Size=Vector3.new(2.5,.2,2.5)
		prt.CFrame=c.Head.CFrame*CFrame.new(0, y, 0)
		table.insert(Parts, prt)
		local bmesh=Instance.new"BlockMesh"
		bmesh.Parent=prt
		bmesh.Name="BlockMesh"
	end


	
game:GetService"RunService".RenderStepped:connect(function()
	createPart()
	for i = 1, #Parts do
		if Parts[i] and Parts[i].Parent then
    		local Part1 = Parts[i]
    		local bmesh=Part1:findFirstChild'BlockMesh'
    		bmesh.Scale=bmesh.Scale-Vector3.new(.03, 0, .03)
    		Part1.Transparency=Part1.Transparency+.03
    		if bmesh.Scale.x <= .7 then
    			local r,g,b = Rainbow(tick())
				Part1.Color=Color3.new(r,g,b)
			end
    		if bmesh.Scale.x <= .1 then table.remove(Parts, i) Part1:destroy()  end
    	else
    		table.remove(Parts,i)
    	end
	end
end)



		
		hover = true
		up = false
		down = false
		
		
		local pad = Instance.new("Part",game.Players.LocalPlayer.Character)
		pad.Size = Vector3.new(7, 0.1, 7)
		pad.Anchored = true
		pad.Name = "Pad"
		pad.Material = "Neon"
		pad.Transparency = 1

		padon = true
		
mouse=game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
if key:lower()=="e" then
	up = true
	hover = false
	down = false
end
if key:lower()=="q" then
	up = false
	hover = false
	down = true
end

if key:lower()=="x" then
	if padon == true then
	padon = false
	pad.CanCollide = false
	else if padon == false then
	padon = true
	pad.CanCollide = true
	end
	end
end


mouse.KeyUp:connect(function(key)
	up = false
	hover = true
	down = false
end)
end)



		
		while wait() do
			if hover == true then
		pad.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.x, game.Players.LocalPlayer.Character.Torso.CFrame.y - 3.1, game.Players.LocalPlayer.Character.Torso.CFrame.z)
	end
	
	if up == true then
		pad.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.x, game.Players.LocalPlayer.Character.Torso.CFrame.y - 2, game.Players.LocalPlayer.Character.Torso.CFrame.z)
	end
	
	if down == true then
		pad.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.x, game.Players.LocalPlayer.Character.Torso.CFrame.y - 5, game.Players.LocalPlayer.Character.Torso.CFrame.z)
	end
		end