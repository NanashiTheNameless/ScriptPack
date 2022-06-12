local sg = Instance.new("ScreenGui")

sg.Parent = game.Players.yfc.PlayerGui

local tb = Instance.new("TextButton")

tb.Text = "Punch"

tb.Position = UDim2.new(0.95, 0, 0.5, 0)

tb.Size = UDim2.new(0.05, 0, 0.05, 0)

tb.Parent = sg

local tb2 = Instance.new("TextButton")

tb2.Text = "Block"

tb2.Position = UDim2.new(0.95, 0, 0.55, 0)

tb2.Size = UDim2.new(0.05, 0, 0.05, 0)

tb2.Parent = sg




punch = false

ready = true

lazer = false


wait(1)

player = game.Workspace.yfc

local arm1 = Instance.new("Weld")

local arm2 = Instance.new("Weld")

arm1.Parent = player.Torso

arm2.Parent = player.Torso

arm1.Part0 = player.Torso

arm2.Part0 = player.Torso

arm1.Part1 = player["Right Arm"]

arm2.Part1 = player["Left Arm"]

arm1.C0 = CFrame.new(1.5, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)



local p = Instance.new("Part")

p.Parent = player

p.Size = Vector3.new(1, 1, 1)

p.FormFactor = "Symmetric"

p.Name = "RAP"

p.CanCollide = false

local p = Instance.new("Part")

p.Parent = player

p.Size = Vector3.new(1, 1, 1)

p.FormFactor = "Symmetric"

p.Name = "LAP"

p.CanCollide = false


local w = Instance.new("Weld")

local w2 = Instance.new("Weld")

w.Parent = player["Right Arm"]

w2.Parent = player["Left Arm"]

w.Part0 = player["Right Arm"]

w2.Part0 = player["Left Arm"]

w.Part1 = player.RAP

w2.Part1 = player.LAP

w.C0 = CFrame.new(0, -0.5, 0)

w2.C0 = CFrame.new(0, -0.5, 0)



function Punch()

print("punch")

--Charge

arm1.C0 = CFrame.new(1.5, 0.1, 0)*CFrame.fromEulerAnglesXYZ(0.2, 0, -0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.2, 0)*CFrame.fromEulerAnglesXYZ(0.4, 0, -0.1)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.3, 0)*CFrame.fromEulerAnglesXYZ(0.6, 0, -0.1)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.4, 0)*CFrame.fromEulerAnglesXYZ(0.8, 0, -0.2)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.4, 0)*CFrame.fromEulerAnglesXYZ(1, 0, -0.2)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.4, 0)*CFrame.fromEulerAnglesXYZ(1.2, 0, -0.3)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.4, 0)*CFrame.fromEulerAnglesXYZ(1.4, 0, -0.3)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.4, 0)*CFrame.fromEulerAnglesXYZ(1.6, 0, -0.4)

wait(0.025)

arm1.C0 = CFrame.new(1.4, 0.4, 0)*CFrame.fromEulerAnglesXYZ(1.8, 0, -0.4)

wait(0.025)

arm1.C0 = CFrame.new(1.3, 0.4, 0)*CFrame.fromEulerAnglesXYZ(2, 0, -0.5)

wait(0.025)

--Punch

punch = true

ready = true

arm1.C0 = CFrame.new(1.2, 0.4, -0.2)*CFrame.fromEulerAnglesXYZ(2, 0, -0.5)

wait(0.025)

arm1.C0 = CFrame.new(1.1, 0.5, -0.4)*CFrame.fromEulerAnglesXYZ(2, 0, -0.5)

wait(0.025)

arm1.C0 = CFrame.new(1, 0.6, -0.6)*CFrame.fromEulerAnglesXYZ(2, 0, -0.5)

wait(0.025)

arm1.C0 = CFrame.new(0.9, 0.7, -0.8)*CFrame.fromEulerAnglesXYZ(2, 0, -0.5)

wait(0.025)

--wait(1) was here

arm1.C0 = CFrame.new(1, 0.6, -0.7)*CFrame.fromEulerAnglesXYZ(1.8, 0, -0.4)

wait(0.025)

arm1.C0 = CFrame.new(1.1, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(1.6, 0, -0.3)

wait(0.025)

arm1.C0 = CFrame.new(1.2, 0.4, -0.5)*CFrame.fromEulerAnglesXYZ(1.4, 0, -0.2)

wait(0.025)

arm1.C0 = CFrame.new(1.3, 0.3, -0.4)*CFrame.fromEulerAnglesXYZ(1.2, 0, -0.1)

wait(0.025)

arm1.C0 = CFrame.new(1.4, 0.2, -0.3)*CFrame.fromEulerAnglesXYZ(1, 0, 0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0.1, -0.2)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0, -0.1)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)

wait(0.025)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

punch = false

end




function lazer()


-----new







arm1.C0 = CFrame.new(1.5, 0, -0.1)*CFrame.fromEulerAnglesXYZ(0.2, 0.1, -0.1)

arm2.C0 = CFrame.new(-1.5, 0, -0.1)*CFrame.fromEulerAnglesXYZ(0.2, -0.1, 0.1)

wait(0.05)


arm1.C0 = CFrame.new(1.4, 0, -0.2)*CFrame.fromEulerAnglesXYZ(0.4, 0.2, -0.2)

arm2.C0 = CFrame.new(-1.4, 0, -0.2)*CFrame.fromEulerAnglesXYZ(0.4, -0.2, 0.2)

wait(0.05)


arm1.C0 = CFrame.new(1.3, 0, -0.3)*CFrame.fromEulerAnglesXYZ(0.6, 0.3, -0.3)

arm2.C0 = CFrame.new(-1.3, 0, -0.3)*CFrame.fromEulerAnglesXYZ(0.6, -0.3, 0.3)

wait(0.05)


arm1.C0 = CFrame.new(1.2, 0, -0.4)*CFrame.fromEulerAnglesXYZ(0.8, 0.4, -0.4)

arm2.C0 = CFrame.new(-1.2, 0, -0.4)*CFrame.fromEulerAnglesXYZ(0.8, -0.4, 0.4)

wait(0.05)


arm1.C0 = CFrame.new(1.1, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, 0.5, -0.5)

arm2.C0 = CFrame.new(-1.1, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, -0.5, 0.5)

wait(0.05)

--Blocks

local p = Instance.new("Part")

p.BrickColor = BrickColor.new("Bright red")

p.Transparency = 0.5

p.Size = Vector3.new(2, 2, 2)

p.Parent = player

p.Name = "p1"

local sh1 = Instance.new("BlockMesh")

sh1.Scale = Vector3.new(sz, sz, sz)

sh1.Parent = player["p1"]

local w1 = Instance.new("Weld")

w1.Parent = player["Right Arm"]

w1.Part0 = player["Right Arm"]

w1.Part1 = player["p1"]

w1.C0 = CFrame.new(0, -0.5, 0)

sz = 0.75

local p = Instance.new("Part")

p.BrickColor = BrickColor.new("Bright red")

p.Transparency = 0.5

p.Size = Vector3.new(2, 2, 2)

p.Parent = player

p.Name = "p0"

local sh = Instance.new("BlockMesh")

sh.Scale = Vector3.new(sz, sz, sz)

sh.Parent = player["p0"]

local w = Instance.new("Weld")

w.Parent = player["Right Arm"]

w.Part0 = player["Right Arm"]

w.Part1 = player["p0"]

w.C0 = CFrame.new(0, -0.5, 0)


xp = player.Torso.Position.X

zp = player.Torso.Position.Y

local b = Instance.new("BodyPosition")

b.maxForce = Vector3.new(0, 9600, 0)

b.position = Vector3.new(xp, 0, zp)

b.Parent = player.Torso

d = 0

for i = 1, 150 do

if d < 45 then

d = d + 1.2

end

b.position = Vector3.new(xp, d ,zp)

w.C0 = CFrame.new(0, -2, -0.5)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

w1.C0 = CFrame.new(0, -2, -0.5)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

sh1.Scale = Vector3.new(sz, sz, sz)

sh.Scale = Vector3.new(sz, sz, sz)

sz = sz + 0.025

wait(0.025)

end

player.p0:Remove()

player.p1:Remove()


xp = player.Torso.Position.X

zp = player.Torso.Position.Z

local block = Instance.new("Part")

block.BrickColor = BrickColor.new("Bright red")

block.Transparency = 0.5

block.BottomSurface = "Smooth"

block.Size = Vector3.new(25,25,25)

block.Parent = player

block.Position = Vector3.new(xp, 5, zp)

block.CanCollide = false

block.Name = "IAO"

local bs = Instance.new("BlockMesh")

bs.Parent = block

block.Velocity = player.Head.CFrame.lookVector*350

        function block(part)

                if part.Name ~= "Base" then

                        part:Remove()

                end

        end

        player.IAO.Touched:connect(block)



arm1.C0 = CFrame.new(1.2, 0, -0.4)*CFrame.fromEulerAnglesXYZ(0.9, 0.4, -0.4)

arm2.C0 = CFrame.new(-1.2, 0, -0.4)*CFrame.fromEulerAnglesXYZ(0.9, -0.4, 0.4)

wait(0.05)

arm1.C0 = CFrame.new(1.3, 0, -0.3)*CFrame.fromEulerAnglesXYZ(0.8, 0.3, -0.3)

arm2.C0 = CFrame.new(-1.3, 0, -0.3)*CFrame.fromEulerAnglesXYZ(0.8, -0.3, 0.3)

wait(0.05)

arm1.C0 = CFrame.new(1.4, 0, -0.2)*CFrame.fromEulerAnglesXYZ(0.7, 0.2, -0.2)

arm2.C0 = CFrame.new(-1.4, 0, -0.2)*CFrame.fromEulerAnglesXYZ(0.7, -0.2, 0.2)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, -0.1)*CFrame.fromEulerAnglesXYZ(0.6, 0.1, -0.1)

arm2.C0 = CFrame.new(-1.5, 0, -0.1)*CFrame.fromEulerAnglesXYZ(0.6, -0.1, 0.1)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.3, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.3, 0, 0)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.1, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0.1, 0, 0)

wait(0.05)

arm1.C0 = CFrame.new(1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

arm2.C0 = CFrame.new(-1.5, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

wait(2)

b:Remove()







end





wait(1)


function touch(part)

        hum = part.Parent:FindFirstChild("Humanoid")

        if hum then

                if punch==true then

                        if ready==true then

                                ready = false

                                damg = math.random(5, 25)

                                part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - damg

                                print(damg)

                        end

                end

        end


        local pa = Instance.new("Part")

        pa.BrickColor = BrickColor.new("Bright blue")

        pa.Size = Vector3.new(2, 2, 2)

        pa.Transparency = 0.5

        pa.CanCollide = false

        pa.Parent = player

        local shape = Instance.new("BlockMesh")

        shape.Scale = Vector3.new(0.75, 0.75, 0.75)

        shape.Parent = pa

        local w = Instance.new("Weld")

        w.Parent = player.RAP

        w.Part0 = player.RAP

        w.Part1 = pa

        w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

        wait(0.1)

        w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

        wait(0.1)

        w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

        wait(0.1)

        w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

        wait(0.1)

        w.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(1,5), math.random(1,5), math.random(1,5))

        wait(0.1)

        pa:Remove()

end


player.RAP.Touched:connect(touch)

tb.MouseButton1Click:connect(Punch)

tb2.MouseButton1Click:connect(lazer)