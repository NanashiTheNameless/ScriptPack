me = game.Players.xSoulStealerx
char = me.Character
cube = nil
size = 1
full = 2
upper = 13
name = "Soul cube"
parts = {}
hold = false
deb = true
loldist = 10
modes = {"bomb", "attack"}
where = 1
mode = modes[where]

function getavg(m)
	local x = {}
	local y = {}
	local z = {}
	for _,v in pairs(m:children()) do
		if v:IsA("BasePart") then
			table.insert(x,v.Position.X)
			table.insert(y,v.Position.Y)
			table.insert(z,v.Position.Z)
		end
	end
	local x2 = 0
	local y2 = 0
	local z2 = 0
	for _,v in pairs(x) do
		x2 = x2 + v
	end
	for _,v in pairs(y) do
		y2 = y2 + v
	end
	for _,v in pairs(z) do
		z2 = z2 + v
	end
	local finalx = x2 / #x
	local finaly = y2 / #y
	local finalz = z2 / #z
	local vec = Vector3.new(finalx,finaly,finalz)
	return vec
end

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
Instance.new("BlockMesh",part)
part:BreakJoints()
end

function getnoobs(pos)
	local hums = {}
	for _,v in pairs(workspace:children()) do
		for _,k in pairs(v:children()) do
			local to = v:findFirstChild("Torso")
			if k:IsA("Humanoid") and to ~= nil then
				if (to.Position - pos).magnitude < loldist then
					table.insert(hums,k)
				end
			end
		end
	end
	return hums
end

function makecube(pos)
	parts = {}
	for _,v in pairs(workspace:children()) do
		if v.Name == name then
			v:remove()
		end
	end
	local mo = Instance.new("Model",workspace)
	mo.Name = name
	cube = mo
	local x, y, z = -full, -full, -full
	local center = CFrame.new(pos) * CFrame.new(0,upper,0)
	repeat
		local cu = Instance.new("Part")
		prop(cu,mo,false,0,0,size,size,size,"Really black",true,"Custom")
		cu.CFrame = center * CFrame.new(x,y,z)
		table.insert(parts,cu)
		x = x + size
		if x > full then
			x = -full
			y = y + size
		end
		if y > full then
			y = -full
			z = z + size
		end
	until z > full
	local lo = full+(size*0.1)
	for o=1,360, 90 do
		local p = Instance.new("Part")
		prop(p,mo,false,0,0.15,size,size,size,"Really black",true,"Custom")
		p.CFrame = center * CFrame.Angles(0,math.rad(o),0) * CFrame.new(lo,lo,lo)
		table.insert(parts,p)
	end
	for o=1,360, 90 do
		local p = Instance.new("Part")
		prop(p,mo,false,0,0.15,size,size,size,"Really black",true,"Custom")
		p.CFrame = center * CFrame.Angles(0,math.rad(o),0) * CFrame.new(lo,-lo,lo)
		table.insert(parts,p)
	end
	for o=1,360, 90 do
		local p = Instance.new("Part")
		prop(p,mo,false,0,0.15,size*1.5,size*1.5,size*1.5,"Really black",true,"Custom")
		p.CFrame = center * CFrame.Angles(0,math.rad(o),0) * CFrame.new(0,0,lo)
		table.insert(parts,p)
	end
	for o=-full,full,full*2 do
		local p = Instance.new("Part")
		prop(p,mo,false,0,0.15,size*1.5,size*1.5,size*1.5,"Really black",true,"Custom")
		p.CFrame = center * CFrame.Angles(0,0,0) * CFrame.new(0,o,0)
		table.insert(parts,p)
	end
end

makecube(me.Character.Torso.Position)

function move(way)
	coroutine.resume(coroutine.create(function()
	for i,v in pairs(parts) do
		wait()
		if way == "fr" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(0,0,-3)
		elseif way == "ba" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(0,0,3)
		elseif way == "le" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(-3,0,0)
		elseif way == "ri" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(3,0,0)
		elseif way == "up" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(0,3,0)
		elseif way == "do" then
			v.CFrame = CFrame.new(v.Position) * CFrame.new(0,-3,0)
		end
	end
	end))
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "SoulCube"
	script.Parent = h
end
bin = script.Parent
function sel(mouse)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "t" then
			hold = true
			while hold do
				move("fr")
				wait(0.1)
			end
		elseif key == "g" then
			hold = true
			while hold do
				move("ba")
				wait(0.1)
			end
		elseif key == "f" then
			hold = true
			while hold do
				move("le")
				wait(0.1)
			end
		elseif key == "h" then
			hold = true
			while hold do
				move("ri")
				wait(0.1)
			end
		elseif key == "u" then
			hold = true
			while hold do
				move("up")
				wait(0.1)
			end
		elseif key == "j" then
			hold = true
			while hold do
				move("do")
				wait(0.1)
			end
		elseif key == "q" then
			where = where - 1
			if where < 1 then
				where = #modes
			end
			mode = modes[where]
		elseif key == "e" then
			where = where + 1
			if where > #modes then
				where = 1
			end
			mode = modes[where]
		elseif key == string.char(9) then
			makecube(me.Character.Torso.Position)
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if key == "t" or key == "g" or key == "f" or key == "h" or key == "u" or key == "j" then
			hold = false
		end
	end)
	mouse.Button1Down:connect(function()
		if deb then
		if mode == "attack" then
		deb = false
		local poz = mouse.Hit.p
		lol = false
		for _,v in pairs(cube:children()) do
			local lastpos = v.CFrame
			v.Anchored = false
			v.Velocity = Vector3.new(math.random(-40,40),math.random(-40,40),0)
			coroutine.resume(coroutine.create(function()
				local b = Instance.new("BodyPosition",v)
				b.P = 12000
				b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
				b.position = poz + Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
				wait(2.2)
				local cf = CFrame.new(poz,b.position) * CFrame.new(0,0,math.random(120,135)/10).p
				b.position = cf
				lol = true
				wait(1.8)
				b.position = lastpos.p
				repeat wait() until (v.Position - b.position).magnitude < 3
				b:remove()
				v.Anchored = true
				for i=1,2 do
					v.CFrame = lastpos
					wait()
				end
			end))
		end
		repeat wait() until lol == true
		local pwn = Instance.new("Part")
		prop(pwn,cube,false,1,0,1,1,1,"Black",true,"Brick")
		pwn.CFrame = CFrame.new(poz)
		local fi = Instance.new("Fire",pwn)
		fi.Size = 1
		fi.Heat = 0
		fi.Color = Color3.new(1,0.3,0)
		fi.SecondaryColor = fi.Color
		for i=1,40,1 do
			wait()
			fi.Size = i
		end
		local hus = getnoobs(pwn.Position)
		for _,v in pairs(hus) do
			coroutine.resume(coroutine.create(function()
				for i=1, 15 do
					v.Health = v.Health - 4
					wait()
				end
			end))
		end
		for i=40,1,-2 do
			wait()
			fi.Size = i
		end
		pwn:remove()
		wait(2.4)
		deb = true
		elseif mode == "bomb" then
			deb = false
			local avrg = getavg(cube)
			for _,v in pairs(cube:children()) do
				local lastpos = v.CFrame
				v.Anchored = false
				coroutine.resume(coroutine.create(function()
					local b = Instance.new("BodyPosition",v)
					b.P = 15000
					b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
					b.position = CFrame.new(v.Position, avrg) * CFrame.new(0,0,7).p
					wait(4)
					b.Parent = nil
					b.position = lastpos.p
					local hih = CFrame.new(v.Position, avrg)
					v.Velocity = hih.lookVector * 110
					wait(1.8)
					b.Parent = v
					repeat wait() until (v.Position - lastpos.p).magnitude < 4
					v.Anchored = true
					b:remove()
					v.CFrame = lastpos
				end))
			end
			local pwn = Instance.new("Part")
			prop(pwn,cube,false,1,0,1,1,1,"Black",true,"Brick")
			pwn.CFrame = CFrame.new(avrg)
			local fi = Instance.new("Fire",pwn)
			fi.Size = 1
			fi.Heat = 0
			fi.Color = Color3.new(1,0.2,0)
			fi.SecondaryColor = fi.Color
			for i=1,22,0.5 do
				wait()
				fi.Size = i
			end
			wait(2.4)
			pwn:remove()
			wait(1)
			loldist = 17
			local hus = getnoobs(pwn.Position)
			for _,v in pairs(hus) do
				v.Health = v.Health - math.random(90,110)
			end
			loldist = 10
			wait(1)
			deb = true
		end
		end
	end)
end
bin.Selected:connect(sel)
