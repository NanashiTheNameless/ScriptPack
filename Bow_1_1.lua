me = game.Players.xSoulStealerx

local h = Instance.new("HopperBin",me.Backpack)
h.Name = "PL thing"
script.Parent = h

sp = script.Parent
eq = false

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

bricka = Instance.new("Part")
prop(bricka,me.Character,false,1,0,1,1,1,"Grey")

brickb = Instance.new("Part")
prop(brickb,me.Character,false,1,0,1,1,1,"Grey")

wel = Instance.new("Weld")
weld(wel,me.Character.Torso,me.Character.Torso,bricka,0,0,0,0.7,-0.5,0)

wel2 = Instance.new("Weld")
weld(wel2,me.Character.Torso,me.Character.Torso,brickb,0,0,0,-1,-0.5,0)

larm = Instance.new("Weld")
weld(larm,bricka,nil,nil,-1.57,0.67,0,-0.3,0,1.2)

rarm = Instance.new("Weld")
weld(rarm,brickb,nil,nil,-1.57,-0.4,0,-0.2,0,0)

wand = Instance.new("Model",sp)
wand.Name = "Wand"

main = Instance.new("Part")
prop(main, wand, false, 0, 0, 1, 2, 1, "Reddish brown")
mame = Instance.new("SpecialMesh")
mesh(mame, main, 0.45, 1, 0.45, "Head")

white = Instance.new("Part")
prop(white, wand, false, 0, 0, 1, 1, 1, "Reddish brown")
wime = Instance.new("SpecialMesh")
mesh(wime, white, 0.43, 1.8, 0.43, "Head")


wite = Instance.new("Part")
prop(wite, wand, false, 0, 0, 1, 1, 1, "Reddish brown")
wie = Instance.new("SpecialMesh")
mesh(wie, wite, 0.43, 1.8, 0.43, "Head")

mainstring = Instance.new("Part")
prop(mainstring, wand, false, 0, 0, 1, 1, 1, "White")
str = Instance.new("SpecialMesh")
mesh(str, mainstring, 0.1, 4.5, 0.1, "Head")

string1 = Instance.new("Part")
prop(string1, wand, false, 1, 0, 1, 1, 1, "White")
stri1 = Instance.new("SpecialMesh")
mesh(stri1, string1, 0.1, 2.47, 0.1, "Head")

string2 = Instance.new("Part")
prop(string2, wand, false, 1, 0, 1, 1, 1, "White")
stri2 = Instance.new("SpecialMesh")
mesh(stri2, string2, 0.1, 2.47, 0.1, "Head")

arrow = Instance.new("Part")
prop(arrow, wand, false, 0, 0, 1, 1, 4, "Brown")
arr = Instance.new("SpecialMesh")
mesh(arr, arrow, 0.25, 0.25, 1, "Brick")

armwelds = {}

function shoot(left,right)
	for i=1, 8 do
		left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0,0.04,0) * CFrame.new(0,0,0)
		right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0,-0.08,0) * CFrame.new(-0.02,0,0.04)
		wait()
	end
	string2.Transparency = 0
	string1.Transparency = 0
	mainstring.Transparency = 1
	for i=1, 4 do
		left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
		right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0,-0.08,0) * CFrame.new(-0.02,0,0.04)
		wait()
	end
	wait(0.9)
	string2.Transparency = 1
	string1.Transparency = 1
	mainstring.Transparency = 0
	left.C0 = CFrame.new(0,0,0)
	right.C0 = CFrame.new(0,0,0)
end

armh = {}
function select(mouse)
	wand.Parent = me.Character
	local weld1 = Instance.new("Weld")
	weld(weld1,main,main,white,-0.6,0,0,0,-1.6,-0.5)
	local weld2 = Instance.new("Weld")
	weld(weld2,main,main,wite,0.6,0,0,0,1.6,-0.5)
	local weld3 = Instance.new("Weld")
	weld(weld3,main,main,mainstring,0,0,0,0,0,-1)
	local weld4 = Instance.new("Weld")
	weld(weld4,main,main,string1,-0.5,0,0,0,1,-1.4)
	local weld4 = Instance.new("Weld")
	weld(weld4,main,main,string2,0.5,0,0,0,-1,-1.45)
	local weld5 = Instance.new("Weld")
	weld(weld5,me.Character["Right Arm"],me.Character["Right Arm"],arrow,1.57,0,0,0,2.6,0)

	larm.Part0 = larm.Parent
	larm.Part1 = me.Character["Left Arm"]
	rarm.Part0 = rarm.Parent
	rarm.Part1 = me.Character["Right Arm"]
	local armweld = Instance.new("Weld")
	weld(armweld,me.Character["Left Arm"],me.Character["Left Arm"],main,1.57,0,1,-0.3,1.1,0.2)
	table.insert(armwelds,armweld)
	mouse.Button1Down:connect(function()
		shoot(larm,rarm)
	end)
end

function desel()
	wand.Parent = sp
	larm.Part0 = nil
	larm.Part1 = nil
	rarm.Part0 = nil
	rarm.Part1 = nil
	for i=1, #armwelds do
		armwelds[i]:remove()
	end
end

sp.Selected:connect(select)
sp.Deselected:connect(desel)

