--[polo1716 and ic3w0lf589's script][--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--




me = game.Players.ic3w0lf589

if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Wings"

script.Parent = h

end



bin = script.Parent



function weld(w, p, p0, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p0

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end



function prop(part, parent, collide, tran, ref, x, y, z, color)

part.Parent = parent

part.formFactor = 0

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part:BreakJoints()

end



function mesh(mesh, parent, x, y, z, type)

mesh.Parent = parent

mesh.Scale = Vector3.new(x, y, z)

mesh.MeshType = type

end



wings = Instance.new("Model",me.Character)

wings.Name = "Wings"



torso = me.Character.Torso

rarm = me.Character["Right Arm"]

larm = me.Character["Left Arm"]



main = Instance.new("Part")

prop(main,wings,false,0,0.06,2,1,2,"Dark grey")

mainmesh = Instance.new("SpecialMesh")

mesh(mainmesh,main,0.9,0.4,0.75,"Torso")

tweld = Instance.new("Weld")

weld(tweld,torso,torso,main,-1.57,0,0,0,0,-0.7)



wing1 = Instance.new("Part")

prop(wing1,wings,false,0,0.1,1,1,2,"Dark grey")

wingmesh1 = Instance.new("SpecialMesh")

mesh(wingmesh1,wing1,1,0.65,1.2,"Brick")

ww1 = Instance.new("Weld")

weld(ww1,main,main,wing1,0,0,0,1,0,0)



wing2 = Instance.new("Part")

prop(wing2,wings,false,0,0.1,1,1,2,"Dark grey")

wingmesh2 = Instance.new("SpecialMesh")

mesh(wingmesh2,wing2,1,0.65,1.2,"Brick")

ww2 = Instance.new("Weld")

weld(ww2,main,main,wing2,0,0,0,-1,0,0)



wing2b = Instance.new("Part")

prop(wing2b,wings,false,0,0.1,1,2,3,"Dark grey")

wingmesh2b = Instance.new("SpecialMesh")

mesh(wingmesh2b,wing2b,0.4,1.4,1.4,"Wedge")

ww2b = Instance.new("Weld")

weld(ww2b,main,main,wing2b,-math.pi/2,0,math.pi/2,-3,0,-0.25)



wing1b = Instance.new("Part")

prop(wing1b,wings,false,0,0.1,1,2,3,"Dark grey")

wingmesh1b = Instance.new("SpecialMesh")

mesh(wingmesh1b,wing1b,0.4,1.4,1.4,"Wedge")

ww1b = Instance.new("Weld")

weld(ww1b,main,main,wing1b,-math.pi/2,0,-math.pi/2,3,0,-0.25)



thrust1 = Instance.new("Part")

prop(thrust1, wings, false, 0, 0.1, 1, 2, 1, "Dark grey")

tme1 = Instance.new("SpecialMesh")

mesh(tme1,thrust1,0.8,1,0.8,"Head")

tw1 = Instance.new("Weld")

weld(tw1, wing1b, wing1b, thrust1, 0, 0, 0, 0, 0, 0)



thrust2 = Instance.new("Part")

prop(thrust2, wings, false, 0, 0.1, 1, 2, 1, "Dark grey")

tme2 = Instance.new("SpecialMesh")

mesh(tme2,thrust2,0.8,1,0.8,"Head")

tw2 = Instance.new("Weld")

weld(tw2, wing2b, wing2b, thrust2, 0, 0, 0, 0, 0, 0)





fire1 = Instance.new("Fire",thrust1)

fire1.Heat = 25

fire1.Size = 2

fire1.Enabled = false



fire2 = Instance.new("Fire",thrust2)

fire2.Heat = 25

fire2.Size = 2

fire2.Enabled = false



hold = false

using = false



speed = 0

maxspeed = 700



bin.Selected:connect(function(mouse)

	speed = 0

	mouse.Button1Down:connect(function()

		if using == false then

			hold = true

			using = true

			me.Character.Humanoid.PlatformStand = true

			bg = Instance.new("BodyGyro",main)

			bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

			bv = Instance.new("BodyVelocity",main)

			bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

			bg.cframe = CFrame.new(main.Position, mouse.Hit.p)

			bv.velocity = main.CFrame.lookVector * speed

			fire1.Enabled = true

			fire2.Enabled = true

			while hold do

				wait()

				speed = speed + 5

				if speed >= maxspeed then

					speed = maxspeed

				end

				bg.cframe = CFrame.new(main.Position, mouse.Hit.p) 

				bv.velocity = main.CFrame.lookVector * speed

			end

		end

	end)

	mouse.Button1Up:connect(function()

		hold = false

		me.Character.Humanoid.PlatformStand = false

		fire1.Enabled = false

		fire2.Enabled = false

		for i = speed, 0, -30 do

			wait()

			speed = i

			bv.velocity = main.CFrame.lookVector * speed

		end

		bg.Parent = torso

		bg.cframe = CFrame.new(torso.Position, torso.Position + Vector3.new(3,0,0))

		wait(0.5)

		bv:remove()

		wait(2)

		bg:remove()

		using = false

	end)

end)