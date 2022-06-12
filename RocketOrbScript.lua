me = game.Players.SergeantSmokey

sel = false

mousehold = false

mode = 1

speed = 1



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



if script.Parent.className ~= "HopperBin" then

	h = Instance.new("HopperBin",me.Backpack)

	h.Name = "Watch"

	script.Parent = h

end

bin = script.Parent



cam = workspace.CurrentCamera

function sel(mouse)

	sel = true

	mouse.Button1Down:connect(function()

		mousehold = true

		if mode == 1 then

			me.Character = nil

			cam.CameraSubject = nil

			cam.CameraType = "Fixed"

			mode = 0

		else

			while sel and mousehold do

			local dis = (cam.CoordinateFrame.p - mouse.Hit.p).magnitude

			local pew = Instance.new("Part")

			prop(pew,workspace,false,0.1,0,0.1,1,0.1,"Bright yellow",true,"Custom")

			pew.CFrame = CFrame.new(cam.CoordinateFrame * CFrame.new(math.random(-100,100)/10,math.random(-100,100)/10,math.random(0,100)/10).p,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-dis/2,0)

			local mes = Instance.new("CylinderMesh",pew)

			mes.Scale = Vector3.new(15,dis,15)

			local ex = Instance.new("Explosion",workspace)

			ex.BlastRadius = 6

			ex.BlastPressure = 450000

			ex.Position = pew.CFrame * CFrame.new(0,-dis/2,0).p

			ex.Hit:connect(function(p)

				if p:GetMass() < 100 then

					p.BrickColor = BrickColor.new("Black")

					p.Transparency = 0.3

					p.Anchored = false

					p:BreakJoints()

				end

			end)

			coroutine.resume(coroutine.create(function()

				for i=0.1,1,0.2 do

					wait()

					pew.Transparency = i

				end

				pew:remove()

			end))

			wait()

			end

		end

	end)

	mouse.Button1Up:connect(function()

		mousehold = false

	end)

end



function desel()

	mousehold = false

	sel = false

end



bin.Deselected:connect(desel)

bin.Selected:connect(sel)

