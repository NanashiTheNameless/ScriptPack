local name = "xSoulStealerx"

local ld = game.Players[name].Character:findFirstChild("Axe")
if ld then
        ld:remove()
end

local me = game.Players[name]

pcall(function() me.Character:findFirstChild("Axe",true).Parent = nil end)


axe = Instance.new("Model")
axe.Parent = me.Character
axe.Name = "Axe"

-------Arm connects------------------------------------------------------

brick1 = Instance.new("Part")
brick1.Parent = axe
brick1.Shape = "Ball"
brick1.Size = Vector3.new(1,1,1)
brick1.Transparency = 1
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = brick1
mesh1.MeshType = "Sphere"
mesh1.Scale = Vector3.new(1.3,1.3,1.3)
brick2 = brick1:clone()
brick2.Parent = axe

torsohold1 = Instance.new("Weld")
torsohold1.Parent = me.Character.Torso
torsohold1.Part0 = torsohold1.Parent
torsohold1.Part1 = brick1
torsohold1.C1 = CFrame.new(-1.5,-0.5,0)

torsohold2 = Instance.new("Weld")
torsohold2.Parent = me.Character.Torso
torsohold2.Part0 = torsohold2.Parent
torsohold2.Part1 = brick2
torsohold2.C1 = CFrame.new(1.5,-0.5,0)

rightoriginal = CFrame.fromEulerAnglesXYZ(-1.1,-0.7,-0.7) * CFrame.new(0.3,0.6,0.2)
leftoriginal = CFrame.fromEulerAnglesXYZ(-1,0.6,0) * CFrame.new(-0.6,0.3,0.5)

rarm = me.Character["Right Arm"]
larm = me.Character["Left Arm"]

rw = Instance.new("Weld")
rw.Parent = brick1
rw.Part0 = nil
rw.Part1 = nil
rw.C1 = rightoriginal

lw = Instance.new("Weld")
lw.Parent = brick2
lw.Part0 = nil
lw.Part1 = nil
lw.C1 = leftoriginal

wephold = Instance.new("Weld")
wephold.Parent = me.Character.Torso
wephold.Part0 = wephold.Parent
wephold.Part1 = nil
wephold.C1 = CFrame.new(0,0,-0.6) * CFrame.fromEulerAnglesXYZ(0,0,-2.5)

--Handles------------------------------------------------------------------------

function property(part, number, color)
part.Parent = axe
part.formFactor = 0
part.TopSurface = 0
part.BottomSurface = 0
part.Name = "Handle"..number
part.Size = Vector3.new(1,1,1)
part.BrickColor = BrickColor.new(color)
part.CanCollide = false
end

function mesh(part, mesh, x, y, z)
mesh.Scale = Vector3.new(x,y,z)
mesh.Parent = part
end

function weld(weld, part, part1, a, b, c, x, y, z)
weld.Parent = part
weld.Part0 = weld.Parent
weld.Part1 = part1
weld.C1 = CFrame.fromEulerAnglesXYZ(x,y,z) * CFrame.new(a,b,c)
end

mainhandle = Instance.new("Part")
property(mainhandle, 1, "Brown")
mainhandle.Size = Vector3.new(1,4,1)

mesha = Instance.new("SpecialMesh")
mesha.MeshType = "Head"
mesh(mainhandle, mesha, 0.4, 1, 0.4)

wephold.Part1 = mainhandle

handlea = Instance.new("Part")
property(handlea, 2, "Dark metallic")
meshb = Instance.new("CylinderMesh")
mesh(handlea, meshb, 0.85, 0.16, 0.85)

troll = {}

for i=-0.5, 0.6, 0.47 do
handleb = Instance.new("Part")
property(handleb, 3, "Dark grey metallic")
handleb.Size = Vector3.new(2,1,1)
handleb.CanCollide = true
meshc = Instance.new("SpecialMesh")
meshc.MeshType = "Brick"
mesh(handleb, meshc, 1.5, 0.13, 0.8)
waldy = Instance.new("Weld")
weld(waldy, handlea, handleb, 0, 0, 0, 0, i, 0)
table.insert(troll,handleb)
end

handlec = Instance.new("Part")
property(handlec, 4, "Dark metallic")
meshd = Instance.new("SpecialMesh")
mesh(handlec, meshd, 0.52,0.9,0.52)

--arm weapon weld-----------------------------------

armweld = Instance.new("Weld")
weld(armweld, rarm, nil, 0, 1.1, 1.2, 1.57, 0, 2)

--Handle welds--------------------------------------

hweld1 = Instance.new("Weld")
weld(hweld1, mainhandle, handlea, 0, -1.35, 0, 1.57, 0, 0)

hweld2 = Instance.new("Weld")
weld(hweld2, handlea, handlec, 0, 0, 0, 1.57, 0, 0)

--blood effect------------------------------

function blood(part)
        for i=1, 4 do
        local b = Instance.new("Part")
        b.Parent = workspace
        b.formFactor = "Plate"
        b.Size = Vector3.new(1,0.4,1)
        b.BrickColor = BrickColor.new(21)
        b.TopSurface = 0
        b.BottomSurface = 0
        b.CanCollide = false
        b.Velocity = Vector3.new(math.random(-20,20),math.random(0,40),math.random(-20,20))
        b.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        local m = Instance.new("SpecialMesh")
        m.MeshType = "Brick"
        m.Parent = b
        m.Scale = Vector3.new(0.5,0.4,0.5)
        b.CFrame = CFrame.new(part.Position)
        b.Anchored = false
        b:breakJoints()
        coroutine.resume(coroutine.create(function()
        wait(3)
        b:remove()
        end))
        end
end

sele = false
--KILL FUNCTION-------------------------------------------

hitting = false
swinging = false

troll[2].Touched:connect(function(hit)
        if hitting == false then return end
        local hu = hit.Parent:findFirstChild("Humanoid")
        if hu ~= nil then
                hu.Health = hu.Health - 10
                blood(hit)
        end
end)

function att2(r,l,wp)
	swinging = true
	for i=1, 6 do
		r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(0.15,-0.3,-0.05)
		l.C0 = l.C0 * CFrame.fromEulerAnglesXYZ(0.3,-0.2,0)
		wp.C0 = wp.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
		wait(0.1)
	end
	r.C0 = CFrame.new(0,0,0)
	l.C0 = CFrame.new(0,0,0)
	wp.C0 = CFrame.new(0,0,0)
	swinging = false
end

colors = {"Black", "Bright blue", "Light blue", "Navy blue", "Deep blue", "White"}
numba = #colors

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = game.Players[name].Backpack
h.Name = "Ax"
script.Parent = h
end

bin = script.Parent

function selected(mouse)
        sele = true
        coroutine.resume(coroutine.create(function()
                while sele == true do
                        wait()
                        local koko = math.random(-400.0,400.0)/1000
                        local kokoe = math.random(-400.0,400.0)/1000
                        local kokoq = math.random(-400.0,400.0)/1000
                        local k = Instance.new("Part")
                        k.Parent = workspace
                        k.formFactor = "Plate"
                        k.Size = Vector3.new(1,0.4,1)
                        k.TopSurface = 0
                        k.BottomSurface = 0
                        k.Transparency = 0.4
                        k.Anchored = true
                        k.CanCollide = false
                        k.CFrame = handlea.CFrame * CFrame.new(kokoe,kokoq,koko)
                        k.CFrame = k.CFrame * CFrame.Angles(math.random(-32,32)/10,math.random(-32,32)/10,math.random(-32,32)/10)
                        k.BrickColor = BrickColor.new(colors[math.random(1,numba)])
                        local po = Instance.new("SpecialMesh")
                        po.Parent = k
                        po.MeshType = "Sphere"
                        local okok = math.random(15,40)/100
                        po.Scale = Vector3.new(okok*1.2,okok*0.9,okok*1.1)
                        coroutine.resume(coroutine.create(function()
                                for i=1, 12 do
                                        wait()
                                        k.Transparency = k.Transparency + 0.05
                                end
                                k:remove()
                        end))
                end
        end))
        rw.Part0 = rw.Parent
        rw.Part1 = rarm
        for i=1, 6 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.4,0,0.1)
        end
        for i=1, 6 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.12,0.1,-0.24)
        end
        armweld.Part1 = mainhandle
        wephold.Part0 = nil
        wephold.Part1 = nil
        wait(0.05)
        for i=1, 7 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.3,0.25,0.1)
        end
        lw.Part0 = lw.Parent
        lw.Part1 = larm
        rw.C0 = CFrame.new(0,0,0)
        mouse.KeyDown:connect(function(key)
                if swinging then return end
                key = key:lower()
                if (key == "q") then
                        swinging = true
                        for i=1, 6 do
                                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.3,-0.1,-0.2)
                                lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0,0.12)
                                wait(0.04)
                        end
                        wait(0.05)
                        hitting = true
                        for i=1, 6 do
                                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.3,-0.02,0.4)
                                lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,-0.25)
                                wait(0.03)
                        end
                        wait(0.1)
                        hitting = false
                        for i=1, 3 do
                                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.3,0.15,-0.1)
                                lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.15,0.1,0.25)
                                wait(0.03)
                        end
                        rw.C0 = CFrame.new(0,0,0)
                        lw.C0 = CFrame.new(0,0,0)
                        swinging = false
                elseif (key == "e") then
		function att2(rw,lw,armweld)
                end
        end
end)
end

function desel()
        sele = false
        lw.Part0 = nil
        lw.Part1 = nil
        for i=1, 7 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,-0.1,0.05)
        end
        for i=1, 5 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.3,-0.15,-0.2)
        end
        wait(0.03)
        rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0.2,0.2)
        wait(0.02)
        wephold.Part0 = wephold.Parent
        wephold.Part1 = mainhandle
        armweld.Part1 = nil
        wait(0.07)
        for i=1, 4 do
                wait(0.03)
                rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.3,0.25,0.1)
        end
        rw.C0 = CFrame.new(0,0,0)
        rw.Part0 = nil
        rw.Part1 = nil
end

bin.Selected:connect(selected)
bin.Deselected:connect(desel)
