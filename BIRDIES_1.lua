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



function bird(pos)

	local mod = Instance.new("Model")

	mod.Name = "Bird"

	local main = Instance.new("Part")

	prop(main,mod,true,0,0,1.5,1.4,2.5,"Black",false,"Custom")

	main.CFrame = CFrame.new(pos) * CFrame.Angles(0,math.random(-32,32)/10,0)

	main.Name = "Torso"

	Instance.new("SpecialMesh",main).MeshType = "Sphere"



	local pa1 = Instance.new("Part")

	prop(pa1,mod,false,0,0,0.9,1,0.9,"Black",false,"Custom")

	pa1.CFrame = main.CFrame

	pa1.Name = "Head"

	Instance.new("SpecialMesh",pa1).MeshType = "Sphere"



	local pa2 = Instance.new("Part")

	prop(pa2,mod,false,0,0,0.2,0.4,0.7,"Neon orange",false,"Custom")

	pa2.CFrame = main.CFrame

	Instance.new("SpecialMesh",pa2).MeshType = "Wedge"



	local wing1 = Instance.new("Part")

	prop(wing1,mod,false,0,0,0.2,1.8,1.1,"Black",false,"Custom")

	wing1.CFrame = main.CFrame



	local wing2 = Instance.new("Part")

	prop(wing2,mod,false,0,0,0.2,1.8,1.1,"Black",false,"Custom")

	wing2.CFrame = main.CFrame





	local w1 = Instance.new("Weld")

	weld(w1,main,pa1,0.5,0,0,0,-0.6,1.2)

	w1.Name = "Neck"



	local w2 = Instance.new("Weld")

	weld(w2,main,pa2,-0.2,0,0,0,-0.6,1.7)



	local wi1 = Instance.new("Weld")

	weld(wi1,main,wing1,0,0,math.pi/2,-1,-0.1,0.1)

	local worig1 = CFrame.new(0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.4)

	wi1.C0 = worig1



	local wi2 = Instance.new("Weld")

	weld(wi2,main,wing2,0,0,-math.pi/2,1,-0.1,0.1)

	local worig2 = CFrame.new(-0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4)

	wi2.C0 = worig2



	local hum = Instance.new("Humanoid",mod)

	hum.Name = "Humanoid"

	hum.MaxHealth = 30

	hum.Health = 30



	local bv = Instance.new("BodyVelocity",main)

	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

	bv.P = 5000

	bv.velocity = main.CFrame.lookVector * 6



	local bav = Instance.new("BodyAngularVelocity",main)

	bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

	bav.P = 5000

	bav.angularvelocity = Vector3.new(0,0,0)



	hum.Died:connect(function()

		bv:remove()

		bav:remove()

		wait(4)

		mod:remove()

	end)

	mod.Parent = workspace

	mod:MakeJoints()

	coroutine.resume(coroutine.create(function()

		while true do

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,-i)

			end

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,-i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,i)

			end

		end

	end))

	coroutine.resume(coroutine.create(function()

		while true do

			wait(0.1)

			local turn = math.random(1,6)

			coroutine.resume(coroutine.create(function()

				if turn == 1 then

					bav.angularvelocity = Vector3.new(0,6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				elseif turn == 2 then

					bav.angularvelocity = Vector3.new(0,-6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				end

			end))

		end

	end))

end



for i=1, math.random(4,11) do

	local poz = Vector3.new(math.random(-100,100),math.random(60,80),math.random(-100,100))

	bird(poz)

end

