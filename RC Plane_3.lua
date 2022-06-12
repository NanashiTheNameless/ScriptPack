me = game.Players.yfc



if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin")

h.Parent = me.Backpack

h.Name = "Rocket"

script.Parent = h

end

sp = script.Parent



function property(part, parent, x, y, z, color, tra, re)

part.Parent = parent

part.formFactor = 0

part.TopSurface = 0

part.BottomSurface = 0

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.Transparency = tra

part.Reflectance = re

end



function weld(weld,parent,part1,a,b,c,x,y,z)

weld.Parent = parent

weld.Part0 = weld.Parent

weld.Part1 = part1

weld.C1 = CFrame.fromEulerAnglesXYZ(x,y,z) * CFrame.new(a,b,c)

end





hold = false



speed = 0

maxspeed = 150



sp.Selected:connect(function(mouse, key)

	mouse.Icon = " "

	if me.Character:findFirstChild("Duck") == nil then

		mod = Instance.new("Model")

		mod.Parent = me.Character

		mod.Name = "Duck"

		plane = Instance.new("Seat")

		property(plane, mod, 2, 1, 2, "Bright red", 0, 0)

		plane.Position = Vector3.new(0,7,0)



		planebase = Instance.new("Part")

		property(planebase, mod, 7, 1, 14, "Black metallic")



		weld1 = Instance.new("Weld")

		weld(weld1, planebase, plane, 0, -0.5, 0, -0.1, 0, 0)



		bv = Instance.new("BodyVelocity")

		bv.Parent = planebase

		bv.velocity = Vector3.new(0,0.01,0)

		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

		bg = Instance.new("BodyGyro")

		bg.Parent = planebase

		bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)



		dec1 = Instance.new("Part")

		property(dec1, mod, 7, 1, 7, "Black metallic", 0, 0)

		weld2 = Instance.new("Weld")

		weld(weld2, planebase, dec1, 0, -3, -5, -1, 0, 0)



		dec2 = Instance.new("Part")

		property(dec2, mod, 7, 1, 13, "Black metallic", 0, 0)

		dec2.CanCollide = false

		weld3 = Instance.new("Weld")

		weld(weld3, planebase, dec2, 0, -6, 3, 0, 0, 0)



		dec3 = Instance.new("Part")

		property(dec3, mod, 7, 1, 2, "Black metallic", 0, 0)

		weld4 = Instance.new("Weld")

		weld(weld4, planebase, dec3, 0, -0.5, 7, -1, 0, 0)



		dec4 = Instance.new("Part")

		property(dec4, mod, 7, 1, 5, "Navy blue", 0.6, 0.2)

		weld5 = Instance.new("Weld")

		weld(weld5, planebase, dec4, 0, -3.5, 8, -1.2, 0, 0)



		dec5 = Instance.new("Part")

		property(dec5, mod, 1, 6, 9, "Black metallic", 0, 0)

		weld6 = Instance.new("Weld")

		weld(weld6, planebase, dec5, 3.05, -3, 1.5, 0, 0, 0)



		dec6 = Instance.new("Part")

		property(dec6, mod, 1, 6, 9, "Black metallic", 0, 0)

		weld7 = Instance.new("Weld")

		weld(weld7, planebase, dec6, -3.05, -3, 1.5, 0, 0, 0)



		dec7 = Instance.new("WedgePart")

		property(dec7, mod, 1, 6, 4, "Black metallic", 0, 0)

		weld8 = Instance.new("Weld")

		weld(weld8, planebase, dec7, -3.05, -3, -4.5, 0, 3.12, 0)



		dec8 = Instance.new("WedgePart")

		property(dec8, mod, 1, 6, 4, "Black metallic", 0, 0)

		weld9 = Instance.new("Weld")

		weld(weld9, planebase, dec8, 3.05, -3, -4.5, 0, 3.12, 0)



		dec9 = Instance.new("WedgePart")

		property(dec9, mod, 1, 6, 3, "Black metallic", 0, 0)

		weld10 = Instance.new("Weld")

		weld(weld10, planebase, dec9, 3.05, -3, 7.4, 3.12, 3.12, 0)



		dec10 = Instance.new("WedgePart")

		property(dec10, mod, 1, 6, 3, "Black metallic", 0, 0)

		weld11 = Instance.new("Weld")

		weld(weld11, planebase, dec10, -3.05, -3, 7.4, 3.12, 3.12, 0)



		wing = Instance.new("WedgePart")

		property(wing, mod, 1, 9, 13, "Black metallic", 0, 0)

		weld12 = Instance.new("Weld")

		weld(weld12, planebase, wing, -7.55, -2, 0.5, 0, 0, 1.57)



		wing2 = Instance.new("WedgePart")

		property(wing2, mod, 1, 9, 13, "Black metallic", 0, 0)

		weld13 = Instance.new("Weld")

		weld(weld13, planebase, wing2, 7.55, -2, 0.5, 0, 0, -1.57)



		miss = Instance.new("WedgePart")

		property(miss, mod, 1, 9, 13, "Dark grey metallic", 0, 0)

		mii = Instance.new("SpecialMesh",miss)

		mii.Scale = Vector3.new(0.7,0.7,0.7)

		mii.MeshType = "FileMesh"

		mii.MeshId = "http://roblox.com/asset/?id=2251534"

		weld14 = Instance.new("Weld")

		weld(weld14, planebase, miss, 6, -1, 0.5, 0, 0, -1.57)



		miss2 = Instance.new("WedgePart")

		property(miss2, mod, 1, 1, 7, "Dark grey metallic", 0, 0)

		mii2 = Instance.new("SpecialMesh",miss2)

		mii2.Scale = Vector3.new(0.7,0.7,0.7)

		mii2.MeshType = "FileMesh"

		mii2.MeshId = "http://roblox.com/asset/?id=2251534"

		weld15 = Instance.new("Weld")

		weld(weld15, planebase, miss2, -6, -1, 0.5, 0, 0, -1.57)





		mouse.Button1Down:connect(function()

			hold = true

			while hold == true do

				bg.cframe = CFrame.new(planebase.Position, mouse.Hit.p)

				bv.velocity = planebase.CFrame.lookVector * speed

				speed = speed + 1

				if speed >= maxspeed then

					speed = maxspeed

				end

				wait()

			end

		end)

		mouse.Button1Up:connect(function()

			hold = false

			while hold == false do

				wait()

				speed = speed - 5

				if speed <= 0 then

					speed = 0

				end

				bv.velocity = planebase.CFrame.lookVector * speed

			end

			bv.velocity = Vector3.new(0,.2,0)

		end)

		mouse.KeyDown:connect(function(key)

			key = key:lower()

			if (key == "q") then

				local bomb = Instance.new("Part")

				bomb.Parent = workspace

				bomb.formFactor = 0

				bomb.Size = Vector3.new(2,2,6)

				bomb.BrickColor = BrickColor.new(26)

				bombmesh = Instance.new("SpecialMesh",bomb)

				bombmesh.MeshType = "FileMesh"

				bombmesh.Scale = Vector3.new(0.2,0.2,0.2)

				bombmesh.MeshId = "2ff5ca3d3c439e4a558cb67d4a96f342"

				bomb.CFrame = planebase.CFrame * CFrame.new(0,-5,0)

				bomb.CFrame = bomb.CFrame * CFrame.Angles(0.4,0,0)

				bomb:BreakJoints()

				wait(0.1)

				bomb.Touched:connect(function()

					local ex = Instance.new("Explosion")

					ex.Parent = workspace

					ex.Position = bomb.Position

					ex.BlastRadius = 14

					ex.BlastPressure = 400000

					bomb:remove()

				end)

			elseif (key == "f") then

				local bom = miss:clone()

				bom.Parent = workspace

				bom.CFrame = miss.CFrame * CFrame.new(0,-5,-30)



				local bom2 = miss2:clone()

				bom2.Parent = workspace

				bom2.CFrame = miss2.CFrame * CFrame.new(0,-5,-30)



				bom:BreakJoints()

				bom2:BreakJoints()



				local b = Instance.new("BodyVelocity",bom)

				b.velocity = bom.CFrame.lookVector * 250

				b.P = 900000001



				local b2 = b:clone()

				b2.Parent = bom2



				bom.Touched:connect(function()

					local ex = Instance.new("Explosion")

					ex.Parent = workspace

					ex.Position = bom.Position

					ex.BlastRadius = 7

					ex.BlastPressure = 300000

					bom:remove()

				end)

				bom2.Touched:connect(function()

					local ex = Instance.new("Explosion")

					ex.Parent = workspace

					ex.Position = bom2.Position

					ex.BlastRadius = 7

					ex.BlastPressure = 300000

					bom2:remove()

				end)

			end

		end)

	end

end)



sp.Deselected:connect(function()

	mod:remove()

	hold = false

end)

