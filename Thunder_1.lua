script.Name = "NO REMOVE FOR J00000000000000000 >:UUUUUUUUUUUUUUU"
local bright = game.Lighting.Brightness

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end


function thunder(pos)
	local last = CFrame.new(pos)
	local scale = 1
	local lights = {}
	repeat
		local si = math.random(15,45)
		local p = Instance.new("Part")
		prop(p,workspace,true,0,0,5,si,5,"New Yeller",true,"Custom")
		p.CFrame = last * CFrame.new(0,-scale/2,0)
		p.CFrame = CFrame.new(p.Position) * CFrame.Angles(math.random(-120,120)/100,math.random(-30,30)/100,math.random(-120,120)/100) * CFrame.new(0,-si/2,0)
		last = p.CFrame
		scale = si
		table.insert(lights,p)
	until last.y < 14
	local ex = Instance.new("Explosion",workspace)
	ex.BlastRadius = 22
	ex.BlastPressure = 300000
	ex.Position = last * CFrame.new(0,-scale/2,0).p
	local pew = Instance.new("Sound",workspace)
	pew.SoundId = "rbxasset://sounds\HalloweenLightning.wav"
	pew.Volume = math.random(70,110)/100
	pew.Pitch = math.random(85,120)/100
	coroutine.resume(coroutine.create(function()
		for i=1,math.random(5,25) do
			if game.Lighting.Brightness == bright then
				game.Lighting.Brightness = 9999
			else
				game.Lighting.Brightness = bright
			end
			wait()
		end
		game.Lighting.Brightness = bright
	end))
	wait(0.05)
	pew:play()
	wait(math.random(10,80)/100)
	ex:remove()
	for _,v in pairs(lights) do
		coroutine.resume(coroutine.create(function()
			for i=0,1,0.25 do
				wait()
				v.Transparency = i
			end
			v:remove()
		end))
	end
end

while true do
	wait(math.random(1,300)/100)
	coroutine.resume(coroutine.create(function()
		thunder(Vector3.new(math.random(-250,250),math.random(700,1000),math.random(-250,250)))
	end))
end
