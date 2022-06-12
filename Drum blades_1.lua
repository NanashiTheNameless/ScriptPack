local Me = game.Players.LocalPlayer 
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Swords"
    script.Parent = h
end
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local bin = script.Parent
pcall(function() char[":P"]:remove() end)
local Model = Instance.new("Model",char)
Model.Name = ":P"
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)
mo = Instance.new("Model") 
mo.Name = "Swords" 
mo.Parent = Me.Character
function new(part, x, y, z, parent, color) 
local brick = part 
brick.formFactor = "Custom" 
brick:BreakJoints() 
brick.CanCollide = false 
brick.Size = Vector3.new(x, y, z) 
brick.Parent = parent 
brick.BrickColor = BrickColor.new(color) 
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
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
function mes(mesh, x, y, z, parent) 
local mes = mesh 
mes.Scale = Vector3.new(x, y, z) 
mes.Parent = parent 
end 
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 
h2 = Instance.new("Part") 
hm2 = Instance.new("BlockMesh") 
hw2 = Instance.new("Weld") 
new(h2, 0.75, 0.2, 0.2, mo, "Brown") 
mes(hm2, 1.01, 1.01, 1.01, h2) 
wel(hw2, 0, -2.1, -0.51, h2, Torso, h2, 0, 0, -5.5) 
h4 = Instance.new("Part") 
hm4 = Instance.new("SpecialMesh") 
hw4 = Instance.new("Weld") 
new(h4, 0.35, 1, 0.2, mo, "Brown") 
mes(hm4, 1.01, 1.01, 1.01, h4) 
wel(hw4, 0, -0.5, 0, h4, h2, h4, 0, 0, 0) 
h1 = Instance.new("Part") 
hm1 = Instance.new("BlockMesh") 
hw1 = Instance.new("Weld") 
new(h1, 0.75, 0.2, 0.2, mo, "Brown") 
mes(hm1, 1.01, 1.01, 1.01, h2) 
wel(hw1, 0, -2.1, -0.5, h1, Torso, h1, 0, 0, 5.5) 
h4 = Instance.new("Part") 
hm4 = Instance.new("SpecialMesh") 
hw4 = Instance.new("Weld") 
new(h4, 0.35, 1, 0.2, mo, "Brown") 
mes(hm4, 1.01, 1.01, 1.01, h4) 
wel(hw4, 0, -0.5, 0, h4, h1, h4, 0, 0, 0) 
p = Instance.new("Part") 
m = Instance.new("BlockMesh") 
w = Instance.new("Weld") 
new(p, 0.75, 4, 0.2, mo, "Gray") 
mes(m, 1.01, 1.01, 1.01, p) 
wel(w, 0, 2.1, 0, p, h1, p, 0, 0, 0) 
p2 = Instance.new("Part") 
m2 = Instance.new("BlockMesh") 
w2 = Instance.new("Weld") 
new(p2, 0.75, 4, 0.2, mo, "Gray") 
mes(m2, 1.01, 1.01, 1.01, p2) 
wel(w2, 0, 2.1, 0, p2, h2, p2, 0, 0, 0) 
function fade(brick,mesh,scale,tran,speed)
coroutine.resume(coroutine.create(function()
for i=tran,1,speed do
wait()
brick.Transparency = i
mesh.Scale = mesh.Scale - Vector3.new(scale,scale,scale)
end
brick:remove()
end))
end
function bv(part) 
b = Instance.new("BodyVelocity") 
b.Parent = part 
b.velocity = Vector3.new(0, 25, 0) 
wait(1.5) 
b.velocity = Vector3.new(0, -75, 0) 
wait(0.285) 
b:remove() 
end 
function bvc(part) 
b = Instance.new("BodyVelocity") 
b.Parent = part 
b.velocity = part.CFrame.lookVector * 25
wait(1.5) 
b:remove() 
end 
function spikes(part,color)
local p = Instance.new("Part",Me.Character)
prop(p,Me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,-2.5,-3.5)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,6,5,6,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.08)
end
function spikes2(part,color)
local p = Instance.new("Part",Me.Character)
prop(p,Me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,0,6) * CFrame.Angles(math.pi/2,0,0)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,8,7,8,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.06)
end
function onSelected(mouse)
RAW.Part1 = Rarm
LAW.Part1 = Larm
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(12*i), math.rad(-12*i)) 
wait()
end
h1.Weld.Part0 = Larm 
h1.Weld.C1 = CFrame.new(0, 1, -1) * CFrame.Angles(-7.8, 0, 0) 
h2.Weld.Part0 = Rarm 
h2.Weld.C1 = CFrame.new(0, 1, -1) * CFrame.Angles(-7.8, 0, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-185*i), math.rad(-12+12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210-185*i), math.rad(12-12*i), math.rad(-12*i)) 
wait()
end
--[[ for i = 0, 1, 0.05 do
RAW.C0 = CFrame.Angles(math.rad(90-110*i), 0, math.rad(35*i))
wait()
end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(175-175*i), 0, math.rad(35-35*i))
wait()
end ]]-- 
    mouse.Button1Down:connect(function()
for i = 0, 1, 0.15 do
LAW.C0 = CFrame.Angles(math.rad(90-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
                if not v.Character then return end
                if (v.Character.Torso.Position - p.Position).magnitude < dist then
                        if v.Name ~= Torso.Parent.Name then
                                v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(15, 35) 
                        end
                end
        end
for i = 0, 1, 0.15 do
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
    end)
    mouse.Button2Down:connect(function()
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(90-110*i), math.rad(12*i), math.rad(12*i))
wait()
end
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
                if not v.Character then return end
                if (v.Character.Torso.Position - p.Position).magnitude < dist then
                        if v.Name ~= Torso.Parent.Name then
                                v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(15, 35) 
                        end
                end
        end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
wait()
end
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes2(Torso, "Bright blue") 
bv(Torso) 
wait(0.75) 
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
                if not v.Character then return end
                if (v.Character.Torso.Position - p.Position).magnitude < dist then
                        if v.Name ~= Torso.Parent.Name then
                                v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(25, 45) 
                        end
                end
        end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
        end 
        if key == "e" then 
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes2(Torso, "Bright blue") 
bvc(Torso) 
wait(0.75) 
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
                if not v.Character then return end
                if (v.Character.Torso.Position - p.Position).magnitude < dist then
                        if v.Name ~= Torso.Parent.Name then
                                v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(25, 45) 
                        end
                end
        end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
        end 
    end)
end
function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(12*i), math.rad(-12*i)) 
wait()
end
h1.Weld.Part0 = Torso 
h1.Weld.C1 = CFrame.new(0, -2.1, -0.51) * CFrame.Angles(0, 0, 5.5) 
h2.Weld.Part0 = Torso 
h2.Weld.C1 = CFrame.new(0, -2.1, -0.51) * CFrame.Angles(0, 0, -5.5) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-12+12*i), math.rad(12-12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
RAW.Part1 = nil
LAW.Part1 = nil
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
