name = "LocalPlayer"
mn = "Gun1"

me = game.Players[name]
char = me.Character
selected = false
dmg = 18
bulletcols = {"New Yeller", "Bright yellow"}

if char:findFirstChild(mn,true) ~= nil then
	char:findFirstChild(mn,true).Parent = nil
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
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

mod = Instance.new("Model")
mod.Name = mn

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
rleg = char:findFirstChild("Right Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

--Parts--------Parts--------Parts--------Parts--------Parts--------Parts--------Parts------

main = Instance.new("Part")
prop(main,mod,false,0,0,0.3,1.2,0.5,"Black",false,"Custom")
hold = Instance.new("Weld")
weld(hold,rarm,nil,math.pi/1.8,0,0,0,1.05,0)

main2 = Instance.new("Part")
prop(main2,mod,false,0,0,0.4,1.5,0.4,"Black",false,"Custom")
lol = Instance.new("Weld")
weld(lol,main,main2,math.pi/2.3,0,0,0,-0.65,0.4)
Instance.new("CylinderMesh",main2)

mod.Parent = char

--Arm welds----------Arm welds----------Arm welds----------Arm welds----------Arm welds--------

rb = Instance.new("Part")
prop(rb,mod,false,1,0,0.1,0.1,0.1,"Black",false,"Custom")
lrw = Instance.new("Weld")
weld(lrw,torso,rb,0,0,0,-1.5,-0.5,0)

lb = Instance.new("Part")
prop(lb,mod,false,1,0,0.1,0.1,0.1,"Black",false,"Custom")
llw = Instance.new("Weld")
weld(llw,torso,lb,0,0,0,1.5,-0.5,0)

rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)

lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)

hw = Instance.new("Weld")
weld(hw,rleg,main,math.pi/1.2,0,0,-0.6,-0.4,0)

rist = nil
lest = nil

if not script.Parent:IsA("HopperBin") then
	h = Instance.new("HopperBin")
	h.Name = "Gun"
	h.Parent = me.Backpack
	script.Parent = h
end

bin = script.Parent

function selectmotion()
	rw.Part1 = rarm
	lw.Part1 = larm
	hw.Part1 = nil
	hold.Part1 = main
	for i=0,90,15 do
		rw.C0 = CFrame.Angles(math.rad(i),0,0) * CFrame.new(-i/180,-i/170,0)
		lw.C0 = CFrame.Angles(math.rad(i/1.01),0,math.rad(i/2)) * CFrame.new(i/220,-i/70,0)
		wait()
	end
	if rist == nil then
		rist = rw.C0
		lest = lw.C0
	end
end

function deselmotion()
	for i=90,0,-15 do
		rw.C0 = CFrame.Angles(math.rad(i),0,0) * CFrame.new(-i/180,-i/170,0)
		lw.C0 = CFrame.Angles(math.rad(i/1.01),0,math.rad(i/2)) * CFrame.new(i/220,-i/70,0)
		wait()
	end
	rw.Part1 = nil
	lw.Part1 = nil
	hw.Part1 = main
	hold.Part1 = nil
end

function fire(p,pos)
	local dist = (p.Position - pos).magnitude
	local trail = Instance.new("Part")
	prop(trail,workspace,false,0,0,0.1,1,0.1,bulletcols[math.random(1,#bulletcols)],true,"Custom")
	local m = Instance.new("CylinderMesh",trail)
	m.Scale = Vector3.new(0.5,dist,0.5)
	trail.CFrame = CFrame.new(p.Position, pos) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-dist/2,0)
	coroutine.resume(coroutine.create(function()
		for i=0,1,0.1 do
			wait()
			trail.Transparency = i
		end
		trail:remove()
	end))
end

function select(mouse)
	selectmotion()
	mouse.Button1Down:connect(function() fire(main2, mouse.Hit.p) end)
end

function desel()
	deselmotion()
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

