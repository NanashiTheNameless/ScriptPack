tool = Instance.new("HopperBin") 



player = game.Players.olefson

char = player.Character 

tool = Instance.new("HopperBin") 

tool.Parent = player.Backpack 

script.Parent = tool

tool.Name = "Wand" 



spin = false



landc = "Earth green"

firec = "Bright red"

icec = "Light blue"

windc = "Institutional white"

helthc = "Lime green"

elec = "New Yeller"



norm = 18



handle = Instance.new("Part") 

handle.Parent = game.Lighting 

handle.Name = "Handle" 

handle.FormFactor = "Symmetric" 

handle.Size = Vector3.new(1,4,1) 

handle.TopSurface = 0 

handle.BottomSurface = 0 

handle.BrickColor = BrickColor.new("Black") 

handle.Anchored = false 

handle.Position = char["Right Arm"].Position 

handle.CanCollide = false

handle.Locked = true

handle2 = Instance.new("Part") 

handle2.Parent = game.Lighting 

handle2.Name = "Handle2" 

handle2.Shape = "Ball"

handle2.Size = Vector3.new(1,1,1) 

handle2.TopSurface = 0 

handle2.BottomSurface = 0 

handle2.BrickColor = BrickColor.new("Bright red") 

handle2.Anchored = false 

handle2.Position = char["Right Arm"].Position 

handle2.Transparency = 0.1

handle2.CanCollide = false

handle2.Locked = true



handle3 = Instance.new("Part") 

handle3.Parent = game.Lighting 

handle3.Name = "Handle2" 

handle3.Shape = "Ball"

handle3.Size = Vector3.new(1,1,1) 

handle3.TopSurface = 0 

handle3.BottomSurface = 0 

handle3.BrickColor = BrickColor.new("Black") 

handle3.Anchored = false 

handle3.Position = char["Right Arm"].Position 

handle3.CanCollide = false

handle3.Locked = true

local m = Instance.new("CylinderMesh") 

m.Parent = handle 

m.Scale = Vector3.new(0.42,1,0.42) 

local m2 = Instance.new("SpecialMesh") 

m2.Parent = handle2 

m2.MeshType = "Sphere"

m2.Scale = Vector3.new(0.8,0.8,0.8) 

local m3 = Instance.new("SpecialMesh") 

m3.Parent = handle3 

m3.MeshType = "FileMesh"

m3.MeshId = "http://www.roblox.com/asset/?id=1033714"

m3.Scale = Vector3.new(0.4,0.85,0.4) 

brick1 = Instance.new("Part")

brick1.Parent = char

brick1.formFactor = "Symmetric"

brick1.Size = Vector3.new(1,1,1)

brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)

brick1.Shape = "Ball"

brick1.CanCollide = false

brick1.Transparency = 1

brick1.Locked = true

mesh1 = Instance.new("SpecialMesh")

mesh1.Parent = brick1

mesh1.MeshType = "Sphere"

mesh1.Scale = Vector3.new(1.4,1.4,1.4)

brick2 = Instance.new("Part")

brick2.Parent = game.Lighting

brick2.formFactor = "Symmetric"

brick2.Size = Vector3.new(1,1,1)

brick2.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)

brick2.Shape = "Ball"

brick2.CanCollide = false

brick2.Transparency = 1

brick2.BrickColor = handle2.BrickColor

brick2.Locked = true

mesh2 = Instance.new("SpecialMesh")

mesh2.Parent = brick2

mesh2.MeshType = "Sphere"

mesh2.Scale = Vector3.new(0.5,0.5,0.5)

brick3 = Instance.new("Part")

brick3.Parent = game.Lighting

brick3.formFactor = "Symmetric"

brick3.Size = Vector3.new(1,1,1)

brick3.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)

brick3.Shape = "Ball"

brick3.CanCollide = false

brick3.Transparency = 1

brick3.BrickColor = handle2.BrickColor

brick3.Locked = true

mesh3 = Instance.new("SpecialMesh")

mesh3.Parent = brick3

mesh3.MeshType = "Sphere"

mesh3.Scale = Vector3.new(0.5,0.5,0.5)

wads = Instance.new("Weld")

wads.Parent = char.Torso

wads.Part0 = wads.Parent

wads.Part1 = brick1

wads.C1 = CFrame.new(-1.5,-0.5,0)

wads2 = Instance.new("Weld")

wads2.Parent = handle2

wads2.Part0 = wads2.Parent

wads2.Part1 = brick2

wads2.C1 = CFrame.new(1,0,0)

wads3 = Instance.new("Weld")

wads3.Parent = handle2

wads3.Part0 = wads2.Parent

wads3.Part1 = brick2

wads3.C1 = CFrame.new(-1,0,0)



wa = Instance.new("Weld")

wa.Parent = brick1

wa.Part0 = nil

wa.Part1 = nil



weld = Instance.new("Weld")



toha = Instance.new("Weld")

toha.Parent = char.Torso

toha.Part0 = nil

toha.Part1 = nil

toha.C1 = CFrame.fromEulerAnglesXYZ(0,0,-2.5) * CFrame.new(0,0,-0.7)



original = CFrame.fromEulerAnglesXYZ(-1.55,0,0) * CFrame.new(0,0,0.6)

weporigin = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 1.1, 0.5)



myhum = char.Humanoid

myhum.WalkSpeed = norm



enabled = false

hol = false



function select(mouse, key)

	wa.Part0 = wa.Parent

	wa.Part1 = char["Right Arm"]

	wa.C1 = original

	weld.Parent = char["Right Arm"] 

	weld.Part0 = nil

	weld.Part1 = nil

	weld.C1 = weporigin 

	handle.Parent = char 

	handle2.Parent = char

	handle3.Parent = char

	for i = 1, 8 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)

		wait()

	end

	for i = 1, 4 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.2,0)

		wait()

	end

	toha.Part0 = nil

	toha.Part1 = nil

	weld.Part0 = weld.Parent 

	weld.Part1 = handle 

	for i = 1, 4 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.2,0)

		wait()

	end

	for i = 1, 8 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.35,0,0)

		wait()

	end

	wa.C1 = original

	spin = true

	brick2.Transparency = 0.3

	brick2.Parent = char

	brick3.Transparency = 0.3

	brick3.Parent = char

	weld2 = Instance.new("Weld") 

	weld2.Parent = handle 

	weld2.Part0 = weld2.Parent 

	weld2.Part1 = handle2 

	weld2.C1 = CFrame.new(0, 0, 2.1) 

	weld3 = Instance.new("Weld") 

	weld3.Parent = handle 

	weld3.Part0 = weld3.Parent 

	weld3.Part1 = handle3 

	weld3.C1 = CFrame.new(0, 0, 1.4) 

	weld.C1 = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 1.1, 0.5) 

	weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, -2.1, 0) 

	weld3.C1 = CFrame.fromEulerAnglesXYZ(3.2,0,0) * CFrame.new(0, -1.5, 0) 

	coroutine.resume(coroutine.create(function()

		while spin == true do

			for i=1, 20 do

				wait()

				handle2.Transparency = handle2.Transparency + 0.025

			end

			for i=1, 20 do

				wait()

				handle2.Transparency = handle2.Transparency - 0.025

			end

		end

	end))

	coroutine.resume(coroutine.create(function()

		while spin == true do

			wait()

			wads2.C1 = wads2.C1 * CFrame.fromEulerAnglesXYZ(0,0.15,0)

			wads3.C1 = wads3.C1 * CFrame.fromEulerAnglesXYZ(0,0.15,0)

			local fade = brick2:clone()

			fade.Parent = char

			fade.CFrame = brick2.CFrame

			local weld = wads2:clone()

			weld.Parent = handle2

			weld.Part0 = weld.Parent

			weld.Part1 = fade

			local fade2 = brick3:clone()

			fade2.Parent = char

			fade2.CFrame = brick3.CFrame

			local weld2 = wads3:clone()

			weld2.Parent = handle2

			weld2.Part0 = weld2.Parent

			weld2.Part1 = fade2

			coroutine.resume(coroutine.create(function()

				for i=1, 8 do

					wait()

					fade.Transparency = fade.Transparency + 0.12

					fade2.Transparency = fade2.Transparency + 0.12

				end

				fade:remove()

				fade2:remove()

			end))

		end

	end))

	enabled = false

	mouse.KeyDown:connect(function(key) 

		key = key:lower() 

		if (key == "k") then 

			if enabled == true then return end

			enabled = true

			hol = true

			for i=1, 6 do

			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.1,0.1,0)

			wait()

			end

			handle2.BrickColor = BrickColor.new(landc)

			brick2.BrickColor = handle2.BrickColor

			brick3.BrickColor = handle2.BrickColor

			while hol == true do

			wait(0.05)

			local ki = Instance.new("Part")

			ki.Parent = workspace

			ki.Name = "Landmon"

			ki.Size = Vector3.new(1,1,1)

			ki.BrickColor = handle2.BrickColor

			ki.TopSurface = 0

			ki.BottomSurface = 0

			ki.CanCollide = false

			ki.Anchored = true

			ki.CFrame = CFrame.new(mouse.Hit.p)

			ki.CFrame = ki.CFrame * CFrame.new(0, -4, 0)

			local mef = Instance.new("SpecialMesh")

			mef.Parent = ki

			mef.MeshType = "Sphere"

			mef.Scale = Vector3.new(9,16,9)

			coroutine.resume(coroutine.create(function()

				for i=1, 5 do

					wait()

					wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.12,0)

				end

				for i=1, 5 do

					wait()

					wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.12,0)

				end

			end))

			coroutine.resume(coroutine.create(function()

				for i=1, 25 do

					wait()

					ki.CFrame = ki.CFrame * CFrame.new(0, 0.3, 0)

				end

				loo = ki.CFrame

				ki.CanCollide = true

				mef.Scale = Vector3.new(1,1,1)

				ki.Size = Vector3.new(9,16,9)

				ki.CFrame = loo

				wait(7)

				for i=1, 20 do

					wait()

					ki.Transparency = ki.Transparency + 0.05

				end

				ki:remove()

			end))

			end

		elseif (key == "f") then

			if enabled == true then return end

			enabled = true

			pof = mouse.Hit.p

			local part = Instance.new("Part")

			local fire = Instance.new("Fire")

			fire.Parent = part

			fire.Heat = 30

			fire.Size = 40

			local smoke = Instance.new("Smoke")

			smoke.Parent = part

			smoke.RiseVelocity = 2

			smoke.Size = 20

			smoke.Color = Color3.new(0,0,0)

			smoke.Opacity = 1

			local par = Instance.new("Part")

			par.Parent = workspace

			par.Size = Vector3.new(9,1,1)

			par.Transparency = 0

			par.Anchored = true

			par.TopSurface = 0

			par.BottomSurface = 0

			par.BrickColor = BrickColor.new(firec)

			par.CFrame = CFrame.new(pof) * CFrame.new(0,-0.498,0)

			par.CFrame = par.CFrame * CFrame.Angles(0,0.8,0)

			par.CanCollide = false

			local mes = Instance.new("SpecialMesh")

			mes.Parent = par

			mes.MeshType = "Brick"

			mes.Scale = Vector3.new(1,1,1)

			local pa = par:clone()

			pa.Parent = workspace

			pa.CFrame = CFrame.new(pof) * CFrame.new(0,-0.498,0)

			pa.CFrame = pa.CFrame * CFrame.Angles(0,-0.8,0)

			handle2.BrickColor = BrickColor.new(firec)

			brick2.BrickColor = handle2.BrickColor

			brick3.BrickColor = handle2.BrickColor

			for i=1, 10 do

				wait(0.03)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0.05,0)

			end

			for i=1, 4 do

			for i=1, 3 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.05,0.1)

			end

			for i=1, 3 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.03,0.05,-0.1)

			end

			end

			for i=1, 7 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.1,-0.1)

			end

			wait(0.6)

			for i=1, 10 do

				wait(0.02)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.1,-0.05,0.3)

				par.Transparency = par.Transparency + 0.1

				pa.Transparency = pa.Transparency + 0.1

				mes.Scale = mes.Scale + Vector3.new(0.1,0,0.05)

				pa.Mesh.Scale = pa.Mesh.Scale + Vector3.new(0.1,0,0.05)

			end

			wait(0.1)

			pa:remove()

			par:remove()

			part.Parent = workspace

			part.Size = Vector3.new(3,3,3)

			part.Anchored = true

			part.CFrame = CFrame.new(pof) 

			part.CFrame = part.CFrame * CFrame.Angles(1.2,0,0)

			part.Transparency = 1

			coroutine.resume(coroutine.create(function()

				for i=1, 100 do

					wait()

					part.CFrame = part.CFrame * CFrame.Angles(0,0,0.4)

				end

			end))

			local explode = Instance.new("Explosion")

			explode.Parent = char

			explode.BlastRadius = 11

			explode.BlastPressure = 400000

			explode.Position = part.Position

			explode.archivable = false

			wait(0.3)

			wa.C1 = original

			wait(0.7)

			fire.Enabled = false

			smoke.Enabled = false

			wait(0.2)

			part:remove()

			wait(1)

			enabled = false

		elseif (key == "q") then

			if enabled == true then return end

			enabled = true

			handle2.BrickColor = BrickColor.new(windc)

			brick2.BrickColor = handle2.BrickColor

			brick3.BrickColor = handle2.BrickColor

			for i=1, 8 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.18)

			end

			for i=1, 2 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.15,0)

			end

			wait(0.3)

			for i=1, 2 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.3,0)

			end

			local p = Instance.new("Part")

			p.Parent = workspace

			p.Name = "Sword"

			p.Size = Vector3.new(1,4,1)

			p.BottomSurface = 0

			p.TopSurface = 0

			p.Anchored = false

			p.CanCollide = false

			p.CFrame = handle.CFrame

			p.CFrame = p.CFrame * CFrame.Angles(0,0,1.55)

			p:BreakJoints()

			local mt = Instance.new("SpecialMesh")

			mt.Parent = p

			mt.MeshType = "FileMesh"

			mt.MeshId = "http://www.roblox.com/asset/?id=12768042"

			mt.TextureId = "http://www.roblox.com/asset/?id=21262906"

			local bv = Instance.new("BodyVelocity")

			bv.Parent = p

			bv.velocity = char.Torso.CFrame.lookVector * 45

			local bva = Instance.new("BodyAngularVelocity")

			bva.Parent = p

			bva.angularvelocity = Vector3.new(0,14,0)

			p.Touched:connect(function(hit)

				if hit.Parent.Name == player.Name then return end

				local hum = hit.Parent:findFirstChild("Humanoid")

				if hum ~= nil then

					local hed = hit.Parent:findFirstChild("Head")

					if hed ~= nil then

						for i=1, 5 do

							wait()

							hed.Parent.Torso.Neck.C1 = hed.Parent.Torso.Neck.C1 * CFrame.new(0, 0, -0.9)

						end

						hum.Health = 0

						wait(0.05)

						hed.Velocity = Vector3.new(math.random(-30,30),40,math.random(-30,30))

						hed.RotVelocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))

					end

					hum.Health = 0

				end

			end)

			local spi = true

			coroutine.resume(coroutine.create(function()

				while spi == true do

					local fad = p:clone()

					fad.Parent = workspace

					fad.BrickColor = BrickColor.new(windc)

					fad.Transparency = 0.2

					fad.Mesh.TextureId = "Clear"

					fad.Anchored = true

					coroutine.resume(coroutine.create(function()

						for i=1, 8 do

							wait()

							fad.Transparency = fad.Transparency + 0.1

						end

						fad:remove()

					end))

					wait()

				end

			end))

			for i=1, 4 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.3,0)

			end

			wait(0.3)

			for i=1, 7 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,-0.2,0.3)

			end

			wa.C1 = original

			wait(0.3)

			enabled = false

			wait(1.2)

			spi = false

			wait()

			p:remove()

		elseif (key == "e") then

			if enabled == true then return end

			enabled = true

			myhum.WalkSpeed = 0

			handle2.BrickColor = BrickColor.new(helthc)

			brick2.BrickColor = handle2.BrickColor

			brick3.BrickColor = handle2.BrickColor

			hol = true

			for i=1, 6 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.13,0,0)

				weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.1)

			end

			wait(0.5)

			for i=1, 3 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.4,0,0)

				weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.23)

			end

			local pf = Instance.new("Part")

			pf.Parent = workspace

			pf.Name = "Healthbump"

			pf.Size = Vector3.new(7,1,7)

			pf.BottomSurface = 0

			pf.TopSurface = 0

			pf.Anchored = true

			pf.CanCollide = false

			pf.CFrame = char.Torso.CFrame * CFrame.new(0,-2.8, 0)

			pf.Transparency = 0.3

			pf.BrickColor = handle2.BrickColor

			local meg = Instance.new("CylinderMesh")

			meg.Parent = pf

			meg.Scale = Vector3.new(0.6,0.8,0.6)

			hecols = {"Bright green", "Lime green", "Dark green", "Camo"}

			coroutine.resume(coroutine.create(function()

				for i=1, 50 do

					wait()

					pf.Transparency = pf.Transparency + 0.02

					meg.Scale = meg.Scale + Vector3.new(0.045,0,0.045)

				end

			end))

			while hol == true do

				wait(0)

				myhum.Health = myhum.Health + 0.5

				local chanc = math.random(1,20)

				if chanc == 8 then

					coroutine.resume(coroutine.create(function()

						pf.Transparency = 0.3

						meg.Scale = Vector3.new(0.6,0.8,0.6)

						for i=1, 50 do

							wait()

							pf.Transparency = pf.Transparency + 0.02

							meg.Scale = meg.Scale + Vector3.new(0.045,0,0.045)

						end

					end))

				end

				local hp = Instance.new("Part")

				hp.Parent = workspace

				hp.formFactor = "Symmetric"

				local randsiz = math.random(1,2)

				local col = math.random(1,4)

				hp.Size = Vector3.new(randsiz,randsiz,randsiz)

				hp.BrickColor = BrickColor.new(hecols[col])

				hp.TopSurface = 0

				hp.BottomSurface = 0

				hp.Transparency = 0.1

				hp.CFrame = char.Torso.CFrame * CFrame.new(math.random(-5,5),-3,math.random(-5,5))

				hp.CFrame = hp.CFrame * CFrame.Angles(math.random(),math.random(),math.random())

				hp.CanCollide = false

				hp.Anchored = false

				hp:BreakJoints()

				local mf = Instance.new("SpecialMesh")

				mf.MeshType = "Brick"

				mf.Parent = hp

				mf.Scale = Vector3.new(0.65,0.65,0.65)

				local bv = Instance.new("BodyVelocity")

				bv.Parent = hp

				bv.velocity = Vector3.new(0,10,0)

				coroutine.resume(coroutine.create(function()

					wait(0.9)

					for i=1, 9 do

						hp.Transparency = hp.Transparency + 0.1

						wait()

					end

					hp:remove()

				end))

			end

		elseif (key == "r") then

			if enabled == true then return end

			enabled = true

			myhum.WalkSpeed = 0

			handle2.BrickColor = BrickColor.new(elec)

			brick2.BrickColor = handle2.BrickColor

			brick3.BrickColor = handle2.BrickColor

			cols = {"Neon orange", "New Yeller", "Bright yellow", "Bright orange"}

			for i=1, 6 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.11,0,0)

			end

			wait(0.35)

			tab = {}

			for i=1, 50 do

			for i=1, 20 do

				local a = Instance.new("Part")

				a.Parent = workspace

				a.formFactor = "Symmetric"

				a.Size = Vector3.new(4,1,1)

				a.TopSurface = 0

				a.BottomSurface = 0

				local numb = math.random(1,4)

				a.BrickColor = BrickColor.new(cols[numb])

				a.Anchored = true

				a.CanCollide = false

				a.Transparency = 0.3

				local mo = Instance.new("SpecialMesh")

				mo.Parent = a

				mo.MeshType = "Brick"

				mo.Scale = Vector3.new(1,0.2,0.2)

				a.CFrame = handle2.CFrame

				a.CFrame = a.CFrame * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2)) * CFrame.new(2,0,0)

				table.insert(tab, a)

			end

			wait()

			for _, v in pairs(tab) do

				v:remove()

			end

			end

			for i=1, 7 do

				wait(0.01)

				wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0.17,0.1,0)

			end

			coroutine.resume(coroutine.create(function()

			for i=1, 10 do

				wait(0.2)

				local h = Instance.new("Part")

				h.Parent = workspace

				h.Shape = "Ball"

				h.Size = Vector3.new(3,3,3)

				h.TopSurface = 0

				h.BottomSurface = 0

				local numb = math.random(1,4)

				h.BrickColor = BrickColor.new(cols[numb])

				h.Anchored = true

				h.CanCollide = false

				h.Transparency = 0.5

				h.CFrame = handle2.CFrame

				local function magn(hif)

					if hif.Parent.Name == player.Name then return end

					local dist = (char.Torso.Position - hif.Position).magnitude

					if dist >= 10 then

						print(dist)

						local hum = hif.Parent:findFirstChild("Humanoid")

						if hum ~= nil then

							hum.Health = 0

						end

					end

				end

				coroutine.resume(coroutine.create(function()

					for i=1, 30 do

						wait()

						magn(char.Torso)

					end

				end))

				coroutine.resume(coroutine.create(function()

					for i=1, 30 do

						wait(0.04)

						h.Size = h.Size + Vector3.new(2,2,2)

						h.Transparency = h.Transparency + 0.023

						h.CFrame = handle2.CFrame

					end

					h:remove()

				end))

			end

			end))

			for i=1, 19 do

			for i=1, 30 do

				local f = Instance.new("Part")

				f.Parent = workspace

				f.formFactor = "Symmetric"

				f.Size = Vector3.new(25,1,1)

				f.TopSurface = 0

				f.BottomSurface = 0

				local numb = math.random(1,4)

				f.BrickColor = BrickColor.new(cols[numb])

				f.Anchored = true

				f.CanCollide = false

				f.Transparency = 0.3

				local mo = Instance.new("SpecialMesh")

				mo.Parent = f

				mo.MeshType = "Brick"

				mo.Scale = Vector3.new(1,math.random(0.8,1.7),math.random(0.8,1.7))

				f.CFrame = handle2.CFrame

				f.CFrame = f.CFrame * CFrame.Angles(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2)) * CFrame.new(12.5,0,0)

				table.insert(tab, f)

			end

			wait(0.1)

			for _, v in pairs(tab) do

				v:remove()

			end

			end

			myhum.WalkSpeed = norm

			enabled = false

		end

	end) 

	mouse.KeyUp:connect(function(key) 

		key = key:lower() 

		if (key == "k") then 

			hol = false

			for i=1, 6 do

			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,-0.1,0)

			wait()

			end

			wa.C1 = original

			enabled = false

			wait(0.3)

			wa.C1 = original

		elseif (key == "e") then

			hol = false

			for i=1, 6 do

			wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.1,-0.02,0)

			weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0.24)

			wait()

			end

			myhum.WalkSpeed = norm

			for i=1, 5 do

				wait(0.15)

				wa.C1 = original

				weld.C1 = weporigin

			end

			enabled = false

		end

	end)

	mouse.Button1Down:connect(function()

		e = char.Torso

		wait(0.2)

		e.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,2.5,0)

	end)

end 



function deselect() 

	spin = false

	for i = 1, 8 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)

		wait()

	end

	for i = 1, 4 do

		wa.C1 = wa.C1 * CFrame.fromEulerAnglesXYZ(0,0.2,0)

		wait()

	end

	toha.Part0 = toha.Parent

	toha.Part1 = handle

	weld.Part0 = nil

	weld.Part1 = nil

	wait()

	wa.Part0 = nil

	wa.Part1 = nil

end 





script.Parent.Selected:connect(select) 

script.Parent.Deselected:connect(deselect) 



