me = game.Players.yfc
dist = 4
increase = 0.3
hold = false
hold2 = false
sel = false
mustard = {"Neon orange", "Bright orange", "Brown"}

modul = Instance.new("Model")
modul.Name = "LOL"

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

for i=0,math.pi*2, math.pi/4 do
	local p = Instance.new("Part")
	prop(p,modul,false,0,0,1,1,1,"Black",true,"Custom")
	local mes = Instance.new("SpecialMesh",p)
	mes.Name = "mesh"
	mes.Scale = Vector3.new(dist/2.4,1,1)
	mes.MeshType = "Brick"
end

function fire(p)
	local di = dist
	local ob = Instance.new("Part")
	prop(ob,workspace,true,0,0,di/5,di/2,di/5,"Black",false,"Custom")
	ob.CFrame = CFrame.new(p) * CFrame.new(0,30+(di*10),0)
	Instance.new("SpecialMesh",ob).MeshType = "Sphere"
	repeat wait() until ob.Position.Y < p.Y + (ob.Size.Y*4)
	ob:remove()
	local boom = Instance.new("Part")
	prop(boom,workspace,false,0,0,1,1,1,mustard[math.random(1,#mustard)],true,"Custom")
	boom.CFrame = CFrame.new(ob.Position.X,p.Y,ob.Position.Z)
	local bm = Instance.new("SpecialMesh",boom)
	bm.MeshType = "Sphere"
	bm.Scale = Vector3.new(di/4,di/12,di/4)
	coroutine.resume(coroutine.create(function()
		for i=di/4,di*2, di/6 do
			wait()
			bm.Scale = Vector3.new(i,i/5,i)
		end
		wait(20)
		boom:remove()
	end))
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Lol."
	script.Parent = h
end
bin = script.Parent

bin.Selected:connect(function(mouse)
	sel = true
	modul.Parent = me.Character
	coroutine.resume(coroutine.create(function()
	while sel do
		wait()
		local nu = 0
		for _,v in pairs(modul:children()) do
			v.mesh.Scale = Vector3.new(dist/2.4,1,1)
			v.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(0,nu,0) * CFrame.new(0,0,-dist/2)
			nu = nu + math.pi/4
		end
	end
	end))
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
			hold = true
			while hold do
				wait()
				dist = dist - increase
				increase = increase + 0.03
			end
		elseif key == "e" then
			hold = true
			while hold do
				wait()
				dist = dist + increase
				increase = increase + 0.03
			end
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if key == "q" or key == "e" then
			hold = false
			increase = 0.35
		end
	end)
	mouse.Button1Down:connect(function()
		hold2 = true
		while hold2 do
			wait(0.05)
			local pos = mouse.Hit.p
			coroutine.resume(coroutine.create(function()
				fire(pos)
			end))
		end
	end)
	mouse.Button1Up:connect(function()
		hold2 = false
	end)
end)

bin.Deselected:connect(function()
	hold = false
	hold2 = false
	sel = false
	modul.Parent = nil
end)
