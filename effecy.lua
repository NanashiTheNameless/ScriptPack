me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "PL thing"
script.Parent = h
end

sp = script.Parent
eq = false

bricka = Instance.new("Part",me.Character)
bricka.formFactor = 0
bricka.Size = Vector3.new(1,1,1)
bricka.CanCollide = false
bricka.Transparency = 1
bricka:BreakJoints()
weld = Instance.new("Weld",me.Character.Torso)
weld.Part0 = weld.Parent
weld.Part1 = bricka
weld.C1 = CFrame.new(-1.5,-0.5,0)

rarm = Instance.new("Weld",bricka)
rarm.Part0 = nil
rarm.Part1 = nil
rarm.C1 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0,0.5)

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

wand = Instance.new("Model",me.Character)
wand.Name = "Wand"

main = Instance.new("Part")
prop(main, wand, false, 0, 0, 1, 2, 1, "Black")

mame = Instance.new("SpecialMesh")
mesh(mame, main, 0.36, 1, 0.36, "Head")

armweld = Instance.new("Weld")
weld(armweld,me.Character["Right Arm"],me.Character["Right Arm"],main,1.57,0,0,0,1.1,0.5)


white = Instance.new("Part")
prop(white, wand, false, 0, 0, 1, 1, 1, "White")

wime = Instance.new("SpecialMesh")
mesh(wime, white, 0.362, 0.7, 0.362, "Head")

weld1 = Instance.new("Weld")
weld(weld1,main,main,white,0,0,0,0,-0.9,0)


function select(mouse)
	rarm.Part0 = rarm.Parent
	rarm.Part1 = me.Character["Right Arm"]
	mouse.Button1Down:connect(function()
		pos = white.Position
		lastobj = white
		for i=1, 20 do
			local r = math.random(-600,600)/400
			local u = math.random(-600,600)/400
			local k = math.random(-600,600)/400
			local effball = Instance.new("Part")
			prop(effball, workspace, false, 0.5, 0.1, 1, 1, 1, "Bright yellow")
			effball.Anchored = true
			effball.CFrame = lastobj.CFrame * CFrame.new(r,u,k)
			local dist = (lastobj.Position - effball.Position).magnitude
			effball.CFrame = effball.CFrame * CFrame.new(0,0,dist/2)
			effball.CFrame = effball.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-100,100),math.random(-100,100),math.random(-100,100))
			effball.CFrame = effball.CFrame * CFrame.new(0,0,dist/2)
			pos = effball.Position
			local meo = Instance.new("SpecialMesh")
			mesh(meo, effball, 0.1, 0.1, dist*2, "Brick")
			lastobj = effball
			coroutine.resume(coroutine.create(function()
				for i=0.2, 1, 0.05 do
					wait()
					effball.Transparency = i
				end
				effball:remove()
			end))
			wait()
		end
	end)
end

function desel()
	rarm.Part0 = nil
	rarm.Part1 = nil
end

sp.Selected:connect(select)
sp.Deselected:connect(desel)

