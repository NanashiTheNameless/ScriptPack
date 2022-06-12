
if script.Parent.className ~= "HopperBin" then
me = game.Players.yfc
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Magic."
script.Parent = h
end

real = game.Players.yfc
bin = script.Parent

function prop(p,parent,color,x,y,z,collide,anchor,tran,ref)
p.Parent = parent
p.BrickColor = BrickColor.new(color)
p.formFactor = 0
p.Size = Vector3.new(x,y,z)
p.CanCollide = collide
p.Anchored = anchor
p.Transparency = tran
p.Reflectance = ref
p.TopSurface = 0
p.BottomSurface = 0
p:BreakJoints()
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function fire(f,p,h,s,cr,cg,cb,scr,scg,scb)
f.Parent = p
f.Heat = h
f.Size = s
f.Color = Color3.new(cr,cg,sb)
f.SecondaryColor = Color3.new(scr,scg,scb)
end

rarm = real.Character["Right Arm"]
larm = real.Character["Left Arm"]
torso = real.Character.Torso

boom = Instance.new("Part")
prop(boom,real.Character,"Dark grey",1,1,1,false,false,0.1,0.1)
bome = Instance.new("SpecialMesh")
mesh(bome,boom,1.1,1,1.1,"Brick")
w = Instance.new("Weld",rarm)
weld(w,rarm,rarm,boom,0,0,0,0,0.58,0)

boom2 = Instance.new("Part")
prop(boom2,real.Character,"Dark grey",1,1,1,false,false,0.1,0.1)
bome2 = Instance.new("SpecialMesh")
mesh(bome2,boom2,1.1,1,1.1,"Brick")
w2 = Instance.new("Weld")
weld(w2,larm,larm,boom2,0,0,0,0,0.58,0)

rw = real.Character.Torso["Right Shoulder"]
rightoriginal = rw.C0

lw = real.Character.Torso["Left Shoulder"]
leftoriginal = lw.C0

enabled = false

bin.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		if enabled == true then return end
		enabled = true
		for i=1, 8 do
			rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.2,-0.15,0.1) * CFrame.new(0,0.07,-0.045)
			lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.2,0.15,-0.1) * CFrame.new(0,0.07,-0.045)
			wait()
		end
		wait(0.3)
		local fb = Instance.new("Part")
		prop(fb,real.Character,"White",1,1,1,false,false,1,0)
		local fw = Instance.new("Weld")
		weld(fw,torso,torso,fb,0,0,0,0,-0.6,1.5)
		local faiah = Instance.new("Fire")
		fire(faiah,fb,8,1,1,0.3,0.6,1,0.5,0.7)
		for i=1, 5, 0.04 do
			wait()
			faiah.Size = i
			local lol = Instance.new("Part")
			prop(lol,real.Character,"White",1,1,1,false,true,1,0)
			local fi = Instance.new("Fire")
			fire(fi,lol,8,1,1,0.3,0.6,1,0.5,0.7)
			lol.CFrame = fb.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10)
			coroutine.resume(coroutine.create(function()
				for o=1,20 do
					wait()
					lol.CFrame = lol.CFrame * CFrame.new(0,0,-0.3)
				end
				fi.Enabled = false
				wait(0.7)
				lol:remove()
			end))
		end
		fw:remove()
		local bv = Instance.new("BodyVelocity",fb)
		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		bv.velocity = fb.CFrame.lookVector * 50
		for i=1, 6 do
			rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.5) * CFrame.new(0,-0.08,-0.045)
			lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(0,-0.08,-0.045)
			wait()
		end
		wait(0.3)
		for i=1, 6 do
			rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) * CFrame.new(0,0,0)
			lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.4,0,0) * CFrame.new(0,0,0)
			wait()
		end
		rw.C0 = rightoriginal
		lw.C0 = leftoriginal
		enabled = false
	end)
end)
