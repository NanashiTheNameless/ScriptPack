--[[                                              
Script shared by eletronix                                              ]]

me = game.Players.LocalPlayer
char = me.Character
bin = script.Parent
selected = false
attacking = false
hurt = false
deb = true
normdmg = 18
dmg = normdmg
fly = false
firecols = {"Bright violet", "Black", "Really black"}

parts = {}

if char:findFirstChild("Scythe",true) ~= nil then
        char:findFirstChild("Scythe",true).Parent = nil
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

sword = Instance.new("Model",me.Character)
sword.Name = "Scythe"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

main = Instance.new("Part")
prop(main, sword, false, 0, 0, 0.45, 6.4, 0.45, "Really black", false, "Custom")
mme = Instance.new("SpecialMesh")
mesh(mme,main,1,1,1,"Head")
table.insert(parts,main)

part1 = Instance.new("Part")
prop(part1, sword, false, 0, 0, 0.45, 1, 0.45, "Really black", false, "Custom")
p1m = Instance.new("SpecialMesh")
mesh(p1m,part1,1,1,1,"Head")
w1 = Instance.new("Weld")
weld(w1, main, part1, 0, 0, -1.1, -0.3, 3.3, 0)

part2 = Instance.new("Part")
prop(part2, sword, false, 0, 0, 0.45, 1, 0.45, "Really black", false, "Custom")
p2m = Instance.new("SpecialMesh")
mesh(p2m,part2,1,1,1,"Head")
w2 = Instance.new("Weld")
weld(w2, main, part2, 0, 0, -1.1, 0.3, -3.3, 0)

blade1 = Instance.new("Part")
prop(blade1, sword, false, 0, 0, 1.4, 0.8, 0.1, "Dark grey", false, "Custom")
b1m = Instance.new("BlockMesh",blade1)
w3 = Instance.new("Weld")
weld(w3, main, blade1, 0, 0, -0.4, -0.45, -3.4, 0)
table.insert(parts,blade1)

blade2 = Instance.new("Part")
prop(blade2, sword, false, 0, 0, 1.1, 0.8, 0.1, "Dark grey", false, "Custom")
b2m = Instance.new("BlockMesh",blade2)
w4 = Instance.new("Weld")
weld(w4, main, blade2, 0, 0, 0, -1.5, -3.66, 0)
table.insert(parts,blade2)

blade3 = Instance.new("Part")
prop(blade3, sword, false, 0, 0, 0.1, 0.8, 1.7, "Dark grey", false, "Custom")
b3m = Instance.new("SpecialMesh")
mesh(b3m,blade3,1,1,1,"Wedge")
w5 = Instance.new("Weld")
weld(w5, main, blade3, 0, math.pi/2, 0.4, -2.64, -3.38, 0)
table.insert(parts,blade3)

blade1b = Instance.new("Part")
prop(blade1b, sword, false, 0, 0, 1.4, 0.8, 0.1, "Dark grey", false, "Custom")
b1mb = Instance.new("BlockMesh",blade1b)
w6 = Instance.new("Weld")
weld(w6, main, blade1b, 0, 0, -0.4+math.pi, 0.45, 3.4, 0)
table.insert(parts,blade1b)

blade2b = Instance.new("Part")
prop(blade2b, sword, false, 0, 0, 1.1, 0.8, 0.1, "Dark grey", false, "Custom")
b2mb = Instance.new("BlockMesh",blade2b)
w7 = Instance.new("Weld")
weld(w7, main, blade2b, 0, 0, math.pi, 1.5, 3.66, 0)
table.insert(parts,blade2b)

blade3b = Instance.new("Part")
prop(blade3b, sword, false, 0, 0, 0.1, 0.8, 1.7, "Dark grey", false, "Custom")
b3mb = Instance.new("SpecialMesh")
mesh(b3mb,blade3b,1,1,1,"Wedge")
w8 = Instance.new("Weld")
weld(w8, main, blade3b, 0, math.pi/2, 0.4+math.pi, 2.64, 3.38, 0)
table.insert(parts,blade3b)

for i=0.9, 1.6, 0.09 do
hp1 = Instance.new("Part")
prop(hp1, sword, false, 0, 0, 0.48, 0.09, 0.48, "White", false, "Custom")
h1m = Instance.new("SpecialMesh")
mesh(h1m,hp1,1,1,1,"Head")
w9 = Instance.new("Weld")
weld(w9, main, hp1, math.random(-20,20)/100, 0, math.random(-20,20)/100, 0, i, 0)
end

for i=0.9, 1.6, 0.09 do
hp2 = Instance.new("Part")
prop(hp2, sword, false, 0, 0, 0.48, 0.09, 0.48, "White", false, "Custom")
h2m = Instance.new("SpecialMesh")
mesh(h2m,hp2,1,1,1,"Head")
w10 = Instance.new("Weld")
weld(w10, main, hp2, math.random(-20,20)/100, 0, math.random(-20,20)/100, 0, -i, 0)
end

--Arm joints-----------------------Arm joints-----------------------Arm joints---------------------

righthold = Instance.new("Part")
prop(righthold, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

rb = Instance.new("Part")
prop(rb, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, sword, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)


holdweld = Instance.new("Weld")
weld(holdweld,torso,main,0,0,0.85,0,0,-0.64)

rh = Instance.new("Weld")
weld(rh,righthold,nil,math.pi/2,0,math.pi,0,0,1)

lh = Instance.new("Weld")
weld(lh,lefthold,nil,math.pi/2,0,0,0,0,0)

rightbattle = nil
leftbattle = nil

if script.Parent.className ~= "HopperBin" then
        h = Instance.new("HopperBin",me.Backpack)
        h.Name = "Scythe"
        script.Parent = h
end

bin = script.Parent

function selectmotion()
        rw.Part1 = rarm
        rh.C0 = CFrame.new(0,0,0)
        rw.C0 = CFrame.new(0,0,0)
        lw.C0 = CFrame.new(0,0,0)
        for i=1, 7 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.25,0.13,-0.1)
                wait()
        end
        rh.Part1 = main
        holdweld.Part1 = nil
        for i=1, 5 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.3,0,-0.1)
                rh.C0 = rh.C0 * CFrame.new(0,0,0.4) * CFrame.fromEulerAnglesXYZ(0,0,-(math.pi/2)/5)
                wait()
        end
        lw.Part1 = larm
        for i=1, 5 do
                rw.C0 = rw.C0 * CFrame.new(-0.03,0.05,0.08) * CFrame.fromEulerAnglesXYZ(-0.3,-0.2,0.13)
                lw.C0 = lw.C0 * CFrame.new(0.08,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
                wait()
        end
        rightbattle = rw.C0
        leftbattle = lw.C0
        rh.Part1 = main
        lw.Part1 = larm
        rw.C0 = rightbattle
        lw.C0 = leftbattle
        selected = true
end

function deselmotion()
        selected = false
        rightbattle = rw.C0
        leftbattle = lw.C0
        rh.Part1 = main
        lw.Part1 = larm
        rw.Part1 = rarm
        rw.C0 = rightbattle
        lw.C0 = leftbattle
        for i=1, 5 do
                rw.C0 = rw.C0 * CFrame.new(0.03,-0.05,-0.08) * CFrame.fromEulerAnglesXYZ(0.3,0.2,-0.13)
                lw.C0 = lw.C0 * CFrame.new(-0.08,0,0) * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
                wait()
        end
        lw.Part1 = nil
        for i=1, 5 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.3,0,0.1)
                rh.C0 = rh.C0 * CFrame.new(0,0,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,(math.pi/2)/5)
                wait()
        end
        holdweld.Part1 = main
        rh.Part1 = nil
        for i=1, 7 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.25,-0.13,0.1)
                wait()
        end
        rw.Part1 = nil
        lw.Part1 = nil
        rh.C0 = CFrame.new(0,0,0)
        rw.C0 = CFrame.new(0,0,0)
        lw.C0 = CFrame.new(0,0,0)
end

--Effect------------------Effect------------------Effect------------------Effect------------------Effect----------------

function effect()
        for _,v in pairs(parts) do
                local o = v:clone()
                o.Parent = workspace
                o.Transparency = 0.6
                o.BrickColor = BrickColor.new("Bright violet")
                o.Anchored = true
                o.CanCollide = false
                o.CFrame = v.CFrame
                coroutine.resume(coroutine.create(function()
                        for i=o.Transparency, 1, 0.07 do
                                wait()
                                o.Transparency = i
                        end
                        o:remove()
                end))
        end
end

--KILL FUNCTION-------------KILL FUNCTION-------------KILL FUNCTION-------------KILL FUNCTION-----------


function kill(h)
        if hurt and deb then
                local hu = h.Parent:findFirstChild("Humanoid")
                if hu ~= nil and h.Parent.Name ~= name then
                        deb = false
                        local dam = math.random(0,dmg)
                        hu.Health = hu.Health - dam
                        local p = Instance.new("Part")
                        prop(p,nil,false,1,0,0.9,0.25,0.9,"Bright red",false,"Custom")
                        p.CFrame = CFrame.new(blade3b.Position) * CFrame.new(0,2,0)
                        local bil = Instance.new("BillboardGui",p)
                        bil.Adornee = bil.Parent
                        bil.Size = UDim2.new(0,60,0,60)
                        local txt = Instance.new("TextLabel",bil)
                        txt.Text = dam
                        txt.BackgroundTransparency = 1
                        txt.FontSize = "Size24"
                        txt.Size = UDim2.new(0,60,0,60)
                        local bp = Instance.new("BodyPosition",p)
                        bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
                        bp.P = 200000
                        bp.position = p.Position
                        local po = bp.position
                        local cf = CFrame.Angles(0,0,0)
                        if fly then
                                local too = h.Parent:findFirstChild("Torso")
                                if too ~= nil then
                                        coroutine.resume(coroutine.create(function()
                                                hu.PlatformStand = true
                                                wait(0.06)
                                                local c = CFrame.new(torso.Position, too.Position)
                                                too.Velocity = c.lookVector * math.random(30,70)
                                                wait(0.6)
                                                hu.PlatformStand = false
                                        end))
                                end
                        end
                        coroutine.resume(coroutine.create(function()
                                p.Parent = workspace
                                for i=0, math.random(16,27), 0.35 do
                                        wait()
                                        cf = CFrame.Angles(0,i/1.3,0) * CFrame.new(0,i/1.7,i/3.2)
                                        bp.position = po + cf.p
                                end
                                p:remove()
                        end))
                        coroutine.resume(coroutine.create(function()
                                wait(0.14)
                                deb = true
                        end))
                end
        end
end

for _,v in pairs(parts) do
        v.Touched:connect(kill)
end

--Attacks-----------Attacks----------------Attacks-----------Attacks----------------Attacks-----------Attacks--------------

function att()
        attacking = true
        for i=1,7 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.05,-0.2,-0.05)
                lw.C0 = lw.C0 * CFrame.new(0.07,-0.08,0) * CFrame.fromEulerAnglesXYZ(0,0,0.12)
                wait()
        end
        for i=1,6 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.3,0,0.05)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0.1)
                wait()
        end
        hurt = true
        for i=1,6 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.5,-0.06,0.12)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.23,-0.07,0)
                effect()
                wait()
        end
        hurt = false
        for i=1,6 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.13,0.23,-0.2)
                lw.C0 = lw.C0 * CFrame.new(-0.08,0.09,0.03) * CFrame.fromEulerAnglesXYZ(-0.1,0.15,-0.15)
                effect()
                wait()
        end
        rw.C0 = rightbattle
        lw.C0 = leftbattle
        attacking = false
end

function throw()
        attacking = true
        for i=1,7 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.08,-0.14,-0.2)
                wait()
        end
        for i=1,3 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.2,-0,0)
                effect()
                wait()
        end
        for i=1,4 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.45,-0,0)
                effect()
                wait()
        end
        rh.Part1 = nil
        local bv = Instance.new("BodyVelocity",main)
        bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
        bv.velocity = torso.CFrame.lookVector * 70
        local bav = Instance.new("BodyAngularVelocity",main)
        bav.P = 10000
        bav.angularvelocity = torso.CFrame.lookVector * 40
        local lolpos = torso.CFrame
        wait(0.4)
        hurt = true
        dmg = 65
        coroutine.resume(coroutine.create(function()
                repeat wait() effect() until (main.Position - torso.Position).magnitude < 11
                rh.Part1 = main
                bv:remove()
                bav:remove()
                rw.C0 = rightbattle
                lw.C0 = leftbattle
                attacking = false
                hurt = false
                dmg = normdmg
        end))
        wait(3)
        bv.velocity = lolpos.lookVector * -180
end

function spin()
        attacking = true
        wait(0.1)
        local bg = Instance.new("BodyGyro",torso)
        bg.P = 13000
        bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
        local cf = CFrame.Angles(0,0,0)
        local xd = torso.CFrame
        bg.cframe = CFrame.new(torso.Position, xd * cf * CFrame.new(0,0,-90).p)
        for i=1,4 do
                rw.C0 = rw.C0 * CFrame.new(0,0.1,0) * CFrame.fromEulerAnglesXYZ(0.35,0,-0.07)
                lw.C0 = lw.C0 * CFrame.new(0,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                wait()
        end
        hurt = true
        fly = true
        for i=0,math.pi*4,math.pi/6 do
                wait()
                cf = CFrame.Angles(0,-i,0)
                bg.cframe = CFrame.new(torso.Position, xd * cf * CFrame.new(0,0,-90).p)
                effect()
        end
        hurt = false
        fly = false
        bg:remove()
        for i=1,4 do
                rw.C0 = rw.C0 * CFrame.new(0,-0.1,0) * CFrame.fromEulerAnglesXYZ(-0.35,0,0.07)
                lw.C0 = lw.C0 * CFrame.new(0,-0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
                wait()
        end
        rw.C0 = rightbattle
        lw.C0 = leftbattle
        wait(0.2)
        attacking = false
end

function select(mouse)
        repeat wait() until selected == false and attacking == false
        if selected == false then
                selectmotion()
        end
        coroutine.resume(coroutine.create(function()
                while selected do
                        wait(0.25)
                        if torso.RotVelocity.Y < -14 and attacking == false then
                                spin()
                        end
                end
        end))
        mouse.Button1Down:connect(function()
                if selected and attacking == false then
                        att()
                end
        end)
        mouse.KeyDown:connect(function(kai)
                if attacking == false then
                        omg = kai:lower()
                        if omg == "r" then
                                throw()
                        end
                end
        end)
end

function desel()
        repeat wait() until selected and attacking == false
        if selected then
                deselmotion()
        end
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

--mediafire
