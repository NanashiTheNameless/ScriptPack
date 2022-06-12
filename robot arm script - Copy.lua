:ls --MADE BY OneLegend (NOT THE SCRIPT) Thanks to TheRedAngel for letting me add. Feel free to take his model too. http://www.roblox.com/TheRedAngels-SB-Gift-NEW-SCRIPTS-item?id=88063410 
--REGULAR SCRIPT: Go to line 5 and put your name where it says "YOUR NAME HERE"


name = "luxulux"
modelname = "RobArm"

me = game.Players[name]
char = me.Character
selected = false
attacking = false
hurt = false
deb = true
dmg = 14
realr = nil
realr2 = nil
grabbeh = false

rw = nil
rw2 = nil
rw3 = nil
rw4 = nil

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

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function getcharparts(path)
	local objs = {}
	for _,v in pairs(path:children()) do
		if v:IsA("Model") and v.Name ~= name then
			for _,k in pairs(v:children()) do
				if k.Name == "Torso" then
					table.insert(objs,k)
				end
			end
		end
	end
	return objs
end

if char:findFirstChild(modelname,true) ~= nil then
	char:findFirstChild(modelname,true):remove()
end

mod = Instance.new("Model",char)
mod.Name = modelname

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")


rarm.Transparency = 1

rightmod = Instance.new("Model",mod)
rightmod.Name = "RightArm"

rmain = Instance.new("Part")
prop(rmain, rightmod, true, 0, 0, 1, 1, 1, "Dark grey", false, "Custom")
mme = Instance.new("SpecialMesh")
mesh(mme,rmain,1.2,1.2,1.2,"Sphere")

riwe = Instance.new("Weld")
weld(riwe,torso,rmain,0,0,0,-1.3,-0.65,0)

han = Instance.new("Part")
prop(han, rightmod, true, 0, 0, 0.7, 0.9, 0.7, "Medium grey", false, "Custom")
Instance.new("CylinderMesh",han)

riwwe = Instance.new("Weld")
weld(riwwe,rmain,han,0,0,0,0,0.75,0)
rw = riwwe

hun = Instance.new("Part")
prop(hun, rightmod, true, 0, 0, 1, 1, 1, "Dark grey", false, "Custom")
Instance.new("SpecialMesh",hun).MeshType = "Sphere"

riwwe2 = Instance.new("Weld")
weld(riwwe2,han,hun,0,0,0,0,0.75,0)

han2 = Instance.new("Part")
prop(han2, rightmod, true, 0, 0, 0.6, 0.8, 0.6, "Medium grey", false, "Custom")
Instance.new("CylinderMesh",han2)

riwwe3 = Instance.new("Weld")
weld(riwwe3,hun,han2,math.pi/2,0,0,0,0,0.7)
rw2 = riwwe3

hande = Instance.new("Part")
prop(hande, rightmod, true, 0, 0, 0.2, 0.5, 0.6, "Medium grey", false, "Custom")
Instance.new("BlockMesh",hande)

riww = Instance.new("Weld")
weld(riww,han2,hande,0,0,0.5,-0.3,-0.6,0)

pwn = Instance.new("Part")
prop(pwn, rightmod, false, 0, 0, 0.1, 0.1, 0.6, "Medium grey", false, "Custom")

riww2 = Instance.new("Weld")
weld(riww2,hande,pwn,0,0,0,0,-0.25,0)

hande2 = Instance.new("Part")
prop(hande2, rightmod, true, 0, 0, 0.2, 0.5, 0.6, "Medium grey", false, "Custom")
Instance.new("BlockMesh",hande2)

riwa = Instance.new("Weld")
weld(riwa,pwn,hande2,0,0,-1.2,0.3,-0.1,0)
rw3 = riwa

pwn2 = Instance.new("Part")
prop(pwn2, rightmod, false, 0, 0, 0.1, 0.1, 0.6, "Medium grey", false, "Custom")

riww3 = Instance.new("Weld")
weld(riww3,hande2,pwn2,0,0,0,0,-0.25,0)

hande3 = Instance.new("Part")
prop(hande3, rightmod, true, 0, 0, 0.2, 0.5, 0.6, "Medium grey", false, "Custom")
Instance.new("BlockMesh",hande3)

riwa1 = Instance.new("Weld")
weld(riwa1,pwn2,hande3,0,0,-0.9,0.2,-0.1,0)
rw4 = riwa1

hande4 = Instance.new("Part")
prop(hande4, rightmod, true, 0, 0, 0.2, 0.4, 0.5, "Medium grey", false, "Custom")
Instance.new("BlockMesh",hande4)

riwa1 = Instance.new("Weld")
weld(riwa1,han2,hande4,0,0,-1,0.3,-0.4,0)

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Robot"
	script.Parent = h
end

bin = script.Parent

function run()
	for i=-30,30,10 do
		rw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i),0,0)
		wait()
	end
	for i=-30,30,10 do
		rw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i),0,0)
		wait()
	end
end

hum.Running:connect(function(speed)
	if speed > 5 and selected == false then
		local sped = speed
		while sped > 5 and selected == false do
			sped = torso.Velocity.magnitude
			run()
		end
		rw.C0 = CFrame.new(0,0,0)
		rw2.C0 = CFrame.new(0,0,0)
	end
end)
			
function sel(mouse)
	selected = true
	for i=0,45,5 do
		wait()
		rw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i),math.rad(i/2),0)
		rw2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i),0,0)
	end
	if realr == nil then
		realr = rw.C0
		realr2 = rw2.C0
	end
	mouse.Button1Down:connect(function()
		for i=0, 130, 15 do
			wait()
			rw.C0 = realr * CFrame.fromEulerAnglesXYZ(math.rad(-i),math.rad(-i/2),0)
			rw2.C0 = realr2 * CFrame.fromEulerAnglesXYZ(math.rad(i/1.1),0,0)
		end
		local lol1 = rw.C0
		local lol2 = rw2.C0
		for i=0, 240, 35 do
			wait()
			rw.C0 = lol1 * CFrame.fromEulerAnglesXYZ(math.rad(i),0,0)
			rw2.C0 = lol2 * CFrame.fromEulerAnglesXYZ(math.rad(-i),0,math.rad(-i/4))
		end
		rw.C0 = realr
		rw2.C0 = realr2
	end)
	mouse.KeyDown:connect(function(key)
		kai = key:lower()
		if kai == "q" then
			if grabbeh == false then
			grabbeh = true
			for i=0,40,10 do
				rw3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(i))
				wait()
			end
			else
			grabbeh = false
			for i=40,0,-10 do
				rw3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(i))
				wait()
			end
			end
		end
	end)
end

function desel()
	for i=45,0,-5 do
		wait()
		rw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(i),math.rad(i/2),0)
		rw2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-i),0,0)
	end
	selected = false
	rw.C0 = CFrame.new(0,0,0)
	rw2.C0 = CFrame.new(0,0,0)
end

bin.Deselected:connect(desel)
bin.Selected:connect(sel)