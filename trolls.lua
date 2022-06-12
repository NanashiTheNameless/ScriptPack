Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	for _, Surf in pairs(Surfaces) do
		p[Surf] = "Smooth"
	end
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C0 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

function getcf(pos1, pos2)
	local pos3 = Vector3.new(pos2.X, pos1.Y, pos2.Z)
	return CFrame.new(pos1, pos3)
end

function findjelly(pos)
	local t
	local d = math.huge
	local h
	local tors
	for i,v in pairs(workspace:children()) do
		t, h = v:findFirstChild("Torso"), v:findFirstChild("Humanoid")
		if t ~= nil and h ~= nil then
			if (t.Position - pos).magnitude < d and h.Health > 0 then
				d = (t.Position - pos).magnitude
				tors = t
			end
		end
	end
	return tors
end

				

function maketroll(pos)
	local model = Instance.new("Model")
	model.Name = "TROLLLLLLZ"
	local body = Part(model, false, true, 0, 0, "Really black", 1.3, 4.5, 1.3, true)
	local bg = Instance.new("BodyGyro",body)
	bg.P = 6000
	bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	local bv = Instance.new("BodyVelocity",body)
	bv.P = 6000
	bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bv.velocity = Vector3.new(0,0,0)
	Instance.new("CylinderMesh",body)
	local head = Part(model, false, true, 1, 0, "Really black", 3.5, 3.2, 0.4, true)
	local neck = Weld(body, head, 0, 2.25+1.35, 0, 0, 0, 0)
	local fr = Instance.new("Decal",head)
	fr.Face = "Front"
	fr.Texture = "http://www.roblox.com/asset/?id=29658197"
	local ba = Instance.new("Decal",head)
	ba.Face = "Back"
	ba.Texture = "http://www.roblox.com/asset/?id=29658197"
	
	local Ramodel = Instance.new("Model",model)
	local rarm = Part(Ramodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
	Instance.new("CylinderMesh",rarm)
	local rb = Part(model, false, true, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
	local rah = Weld(body, rb, 1, 1.8, 0, 0, 0, 0)
	local rw = Weld(rb, rarm, 0, 0, 0, 0, 0, math.pi/2.8)
	
	for i=0, -70, -10 do
		local rarm2 = Part(Ramodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
		Instance.new("CylinderMesh",rarm2)
		local w = Weld(rarm, rarm2, -3, 0, 0, 0, 0, math.rad(i))
		w.C1 = CFrame.new(-3,0,0)
	end
	
	local Lamodel = Instance.new("Model",model)
	local larm = Part(Lamodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
	Instance.new("CylinderMesh",larm)
	local lb = Part(model, false, true, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
	local lah = Weld(body, lb, -1, 1.8, 0, 0, 0, 0)
	local lw = Weld(lb, larm, 0, 0, 0, 0, math.pi, math.pi/2.8)
	
	for i=0, -70, -10 do
		local larm2 = Part(Lamodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
		Instance.new("CylinderMesh",larm2)
		local w = Weld(larm, larm2, -3, 0, 0, 0, 0, math.rad(i))
		w.C1 = CFrame.new(-3,0,0)
	end
	
	local Rlmodel = Instance.new("Model",model)
	local rleg = Part(Rlmodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
	Instance.new("CylinderMesh",rleg)
	local rlb = Part(model, false, true, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
	local rlh = Weld(body, rlb, 0, -1.9, 0, 0, 0, 0)
	local rlw = Weld(rlb, rleg, 0, 0, 0, 0, 0, math.pi/2.8)
	
	for i=0, -70, -10 do
		local rleg2 = Part(Rlmodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
		Instance.new("CylinderMesh",rleg2)
		local w = Weld(rleg, rleg2, -3, 0, 0, 0, 0, math.rad(i))
		w.C1 = CFrame.new(-3,0,0)
	end
	
	local Llmodel = Instance.new("Model",model)
	local lleg = Part(Llmodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
	Instance.new("CylinderMesh",lleg)
	local llb = Part(model, false, true, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
	local llh = Weld(body, llb, 0, -1.9, 0, 0, 0, 0)
	local llw = Weld(llb, lleg, 0, 0, 0, 0, math.pi, math.pi/2.8)
	
	for i=0, -70, -10 do
		local lleg2 = Part(Llmodel, false, true, 0, 0, "Really black", 0.9, 0.7, 0.9, true)
		Instance.new("CylinderMesh",lleg2)
		local w = Weld(lleg, lleg2, -3, 0, 0, 0, 0, math.rad(i))
		w.C1 = CFrame.new(-3,0,0)
	end
	model.Parent = workspace
	model:MakeJoints()
	model:MoveTo(pos)
	coroutine.resume(coroutine.create(function()
		while true do
			wait()
			if body.Velocity.magnitude > 2 then
				coroutine.resume(coroutine.create(function()
				for i=0,40,5 do
					rw.C1 = CFrame.Angles(math.rad(i),0,0)
					lw.C1 = CFrame.Angles(math.rad(i),0,0)
					llw.C1 = CFrame.Angles(math.rad(-i),0,0)
					rlw.C1 = CFrame.Angles(math.rad(-i),0,0)
					wait()
				end
				for i=40,-40,-5 do
					rw.C1 = CFrame.Angles(math.rad(i),0,0)
					lw.C1 = CFrame.Angles(math.rad(i),0,0)
					llw.C1 = CFrame.Angles(math.rad(-i),0,0)
					rlw.C1 = CFrame.Angles(math.rad(-i),0,0)
					wait()
				end
				for i=-40,0,5 do
					rw.C1 = CFrame.Angles(math.rad(i),0,0)
					lw.C1 = CFrame.Angles(math.rad(i),0,0)
					llw.C1 = CFrame.Angles(math.rad(-i),0,0)
					rlw.C1 = CFrame.Angles(math.rad(-i),0,0)
					wait()
				end
				end))
			end
			local jelly = findjelly(body.Position)
			if jelly ~= nil then
				bg.cframe = getcf(body.Position, jelly.Position)
				bv.velocity = bg.cframe.lookVector * 25
			else
				bv.velocity = Vector3.new(0,0,0)
			end
		end
	end))
end

maketroll(Vector3.new(0,5,0))
