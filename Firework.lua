game.Lighting.TimeOfDay = 0

cols = {"Bright yellow", "Bright green", "Bright blue", "Bright red"}

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

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end


function modelfirework(pos, color)
	local fw = Instance.new("Model")
	fw.Name = "xSFireWorks"
	local stick = Instance.new("Part")
	prop(stick, fw, true, 0, 0, 0.3, 1.6, 0.3, "Reddish brown", false, "Custom")
	stick.CFrame = CFrame.new(pos) * CFrame.Angles(math.random(-60,60)/100,math.random(-32,32)/10,math.random(-60,60)/100)

	local main = Instance.new("Part")
	prop(main, fw, true, 0, 0, 0.8, 1.8, 0.8, color, false, "Custom")
	main.CFrame = stick.CFrame
	Instance.new("CylinderMesh",main)

	local mw = Instance.new("Weld")
	weld(mw, stick, main, 0, 0, 0, 0.4, -0.9, 0)

	local tip = Instance.new("Part")
	prop(tip, fw, true, 0, 0, 0.8, 0.6, 0.8, color, false, "Custom")
	tip.CFrame = main.CFrame
	local s = Instance.new("SpecialMesh",tip)
	s.MeshId = "http://www.roblox.com/asset/?id=1033714"
	s.Scale = Vector3.new(0.41,0.85,0.41)

	local tw = Instance.new("Weld")
	weld(tw, main, tip, 0, 0, 0, 0, -1.2, 0)

	local teq = Instance.new("Part")
	prop(teq, fw, true, 0, 0, 0.2, 0.5, 0.2, color, false, "Custom")
	teq.CFrame = main.CFrame

	local ew = Instance.new("Weld")
	weld(ew, main, teq, 0, 0, 0, 0, 1.05, 0.3)

	local bp = Instance.new("BodyPosition",main)
	bp.P = 4500
	bp.position = main.Position
	bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	local bg = Instance.new("BodyGyro",main)
	bg.P = 20000
	bg.cframe = CFrame.new(main.Position, main.CFrame * CFrame.new(0,0,-2).p)
	bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

	fw.Parent = workspace

	return fw, main, stick, teq, mw, bp, bg
end

launch = function(pos, color, distance, speed)
	local model, main, stick, teq, mw, bp, bg = modelfirework(pos, color)
		wait(0.5)
		local f = Instance.new("Fire",teq)
		f.Size = 0
		f.Heat = -5
		wait(0.5)
		for i=-5,-25,-0.4 do
			wait()
			f.Heat = i
		end
		wait(0.8)
		mw:remove()
		stick:remove()
		local p = main.CFrame
		for i=0,distance,speed do
			bp.position = p * CFrame.new(0,i,0).p
			wait()
		end
		model:remove()
		return bp.position
end

fires = {
function(pos, color, dist, speed)
	local boompos = launch(pos, color, dist, speed)
	for i=0,360,20 do
		local p = Instance.new("Part")
		prop(p, workspace, false, 1, 0, 1, 1, 1, 1, false, "Brick")
		p.CFrame = CFrame.new(boompos) * CFrame.Angles(0,math.rad(i),0)
		p.Velocity = p.CFrame.lookVector * 180
		local r, g, b = math.random(0,1), math.random(0,1), math.random(0,1)
		Instance.new("Fire",p).Color = Color3.new(r,g,b)
	end
end,
function(pos, color, dist, speed)
	local boompos = launch(pos, color, dist, speed)
	for i=0,360,20 do
		local p = Instance.new("Part")
		prop(p, workspace, false, 1, 0, 1, 1, 1, 1, false, "Brick")
		p.CFrame = CFrame.new(boompos) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-2)
		local poz = p.CFrame
		local r, g, b = math.random(0,1), math.random(0,1), math.random(0,1)
		Instance.new("Fire",p).Color = Color3.new(r,g,b)
		local bp = Instance.new("BodyPosition",p)
		bp.P = 10000
		bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		bp.position = p.Position
		coroutine.resume(coroutine.create(function()
			for i=0,720, 16 do
				bp.position = poz * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,i/4).p
				wait()
			end
			p:remove()
		end))
	end
end
}

for i=1,15 do
local rand = math.random(1,#fires)
coroutine.resume(coroutine.create(function()
fires[rand](Vector3.new(math.random(-200,200),3,math.random(-200,200)), cols[math.random(1,#cols)], math.random(180,300), math.random(150,300)/100)
end))
wait(math.random(40,100)/10)
end



