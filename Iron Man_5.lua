master = game.Players.LocalPlayer

click = 0
t = 0
if script.Parent.ClassName ~= "HopperBin" then
p = Instance.new("HopperBin")
p.Name = "Iron Man"
p.Parent = master.Backpack
it = Instance.new("BoolValue")
it.Parent = p
it.Name = "IT"
han = Instance.new("Part")
han.Parent = p
han.Name = "Handle"
han.Size = Vector3.new(1,1.2,1)
han.Transparency = 1
script.Parent = p
clo = script:Clone()
clo.Parent = p
script:Remove()
else
master.Character.Archivable = true
clone = master.Character:Clone()
clone.Parent = script
func = Instance.new("StringValue")
func.Parent = script
func.Value = "none"
extra = Instance.new("StringValue")
extra.Parent = script
extra.Value = "none"
speed = Instance.new("NumberValue")
speed.Parent = script
speed.Value = "80"
plm = script.Parent.Parent.Parent
Torso = master.Character.Torso
function taunt(mode)
if mode == "killed" then
ran = {"I warned you","You didnt stand a chance from a man in iron","That's why I'm made of iron","War is a rough thing, too bad I always win"}
game:GetService("Chat"):Chat(master.Character.Head,tostring(ran[math.random(1,#ran)]),Enum.ChatColor.Red)
elseif mode == "taunt" then
rant = {"Back off barbie","Fear me","I will crush you","You've picked the wrong person to mess with", "I will kill you","If you pose a threat, you will die"}
game:GetService("Chat"):Chat(master.Character.Head,tostring(rant[math.random(1,#rant)]),Enum.ChatColor.Red)
elseif mode == "died" then
rand = {"This isnt right","Cant believe I was beaten by a weaklin like you","I will be back","You didnt stop me... for long."}
game:GetService("Chat"):Chat(master.Character.Head,tostring(rand[math.random(1,#rand)]),Enum.ChatColor.Red)
end
end
function animate(anim)
val = Instance.new("StringValue")
val.Name = "toolanim"
val.Parent = script.Parent
val.Value = anim
end
function prop(part, parent, collide, tran, ref, x, y, z)
part.Parent = parent
part.formFactor = 0
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
if me.Character.Torso:findFirstChild("PwnFire") then
part.BrickColor = BrickColor.new("Bright yellow")
else
part.BrickColor = BrickColor.new("Cyan")
end
part.TopSurface = 0
part.BottomSurface = 0
part:BreakJoints()
end
function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.Name = "mWeld"
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
function KeyDown(key)
        if key == "f" then
                        func.Value = "f"
        elseif key == "r" then
                        func.Value = "r"
        elseif key == "u" then
                        func.Value = "u"
        elseif key == "m" then
                        func.Value = "m"
        elseif key == "g" then
                        func.Value = "g"
        elseif key == "k" then
                        func.Value = "k"
        elseif key == "t" then
                        taunt("taunt")
        elseif key == "s" then
                        func.Value = "s"
        end
end 
function onButton1Down(mouse)
                if func.Value == "f" then
        if master.Character.Head:findFirstChild("BodyVelocity") then
        else
        local bv = Instance.new("BodyVelocity")
        bv.Parent = master.Character.Head
        bv.maxForce = Vector3.new(1e+010, 1e+010, 1e+010)
        master.Character.Torso["Right Shoulder"].DesiredAngle = 6
        master.Character.Torso["Left Shoulder"].DesiredAngle = 6
        if master.Character.Head:findFirstChild("BodyGyro") then
        else
bg = Instance.new("BodyGyro")
        bg.maxTorque = Vector3.new(0,0,0)
        bg.Parent = master.Character.Torso
        bg.maxTorque = Vector3.new(900000,900000,900000)
        bg.cframe = CFrame.new(master.Character.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
                        p = Instance.new("Part")
                        p.Size = Vector3.new(1,1,1)
                        p.Anchored = true
                        p.CanCollide = false
                        p.TopSurface = 0
                        p.BottomSurface = 0
                        p.BrickColor = BrickColor.new("Cyan")
                        p.Transparency = 0.7
                        p.Parent = master.Character.Torso
                        local marm = Instance.new("BlockMesh")
                        marm.Scale = Vector3.new(1.9, 0.9, 1.725)
                        marm.Parent = p
local hold = false 
local add = 5 
local mode = "Off" 
hint = Instance.new("Hint") 
hint.Parent = master.playerGui
hint.Name = "Modes" 
function Extras(key)
        if key == "v" then
                        extra.Value = "v"
                        wait(1)
                        extra.Value = "none"
        elseif key == "x" then
                        extra.Value = "x"
                        wait(1)
                        extra.Value = "none"
        elseif key == "z" then
                        extra.Value = "z"
                        wait(1)
                        extra.Value = "none"
        elseif key == "b" then
                        extra.Value = "b"
                        wait(1)
                        extra.Value = "none"
        elseif key == "[" then
                        extra.Value = "["
                        wait(1)
                        extra.Value = "none"
        elseif key == "]" then
                        extra.Value = "]"
                        wait(1)
                        extra.Value = "none"
        elseif key == "c" then
                        extra.Value = "c"
                        wait(1)
                        extra.Value = "none"
        elseif key == "n" then
                        extra.Value = "n"
        elseif key == "a" then
                        extra.Value = "m"
end
end
mouse.KeyDown:connect(Extras)
coroutine.resume(coroutine.create(function() 
        while wait() do 
                wait(0.01)
                if bv.Parent == nil then break end
        bg.cframe = CFrame.new(master.Character.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)                
                bv.velocity = (master.Character.Head.Position - mouse.Hit.p).unit * -speed.Value
                p.CFrame = CFrame.new(master.Character.Torso.Position - master.Character.Torso.Velocity/ndist, master.Character.Torso.CFrame.lookVector)
hint.Text = "User: "..master.Name.."|Speed: "..speed.Value.."|AddValue: "..add.."|Hover: "..mode 
wait()
if extra.Value == "v" then
speed.Value = speed.Value + 1
elseif extra.Value == "x" then
speed.Value = speed.Value - 1
elseif extra.Value == "z" then
speed.Value = speed.Value - add
elseif extra.Value == "b" then
speed.Value = speed.Value + add
elseif extra.Value == "[" then
add = add - 1
elseif extra.Value == "]" then
add = add + 1
elseif extra.Value == "c" then
speed.Value = "40"
elseif extra.Value == "n" then
master.Character.Torso.Anchored = true 
mode = "On" 
elseif extra.Value == "m" then
master.Character.Torso.Anchored = false 
mode = "Off" 
end
        end
        end))
if t ~= 1 then
fire  = Instance.new("Fire",master.Character.Suit.Orb1)
fire1  = Instance.new("Fire",master.Character.Suit.Orb2)
fire.Size = 4
fire1.Size = 4
fire.Heat = 8
fire1.Heat = 8
end
        end
        end
        elseif func.Value == "r" then
        master.Character.Animate.Disabled = true
         c = math.random(1,2)
 if c == 1 then
ls = master.Character.Torso:FindFirstChild("Left Shoulder")
ls.DesiredAngle = "-1.5"
local P = Instance.new("Part") 
P.Name = "Laser" 
local masterace0 = master.Character.Suit["Rep2"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(masterace0.p - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((masterace0.p + mouse.Hit.p)/2,masterace0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 0.5 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false 
 local e = Instance.new("Explosion")
    e.Position = mouse.Hit.p
    e.Parent = workspace
wait(0.3)
P:Remove()
wait(1)
        master.Character.Animate.Disabled = false
else
master.Character.Animate.Disabled = true
rs = master.Character.Torso:FindFirstChild("Right Shoulder")
rs.DesiredAngle = "1.5"
local P = Instance.new("Part") 
P.Name = "Laser" 
local masterace0 = master.Character.Suit["Rep1"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(masterace0.p - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((masterace0.p + mouse.Hit.p)/2,masterace0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 0.5 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false 
 local e = Instance.new("Explosion")
    e.Position = mouse.Hit.p
    e.Parent = workspace
wait(0.3)
P:Remove()
wait(1)
        master.Character.Animate.Disabled = false
end
        elseif func.Value == "u" then
local bg = Instance.new("BodyGyro",master.Character.Torso)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.cframe = CFrame.new(master.Character.Torso.Position, mouse.Hit.p)
        local P = Instance.new("Part") 
P.Name = "Laser" 
local place0 = master.Character.Suit["Arc"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(place0.p - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((place0.p + mouse.Hit.p)/2,place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 0.5 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false 
 local e = Instance.new("Explosion")
    e.Position = mouse.Hit.p
    e.Parent = workspace
wait(0.3)
P:Remove()
bg:Remove()
elseif func.Value == "k" then
rh = master.Character.Torso:FindFirstChild("Right Hip")
master.Character.Animate.Disabled = true
rh.DesiredAngle = "-1.5"
wait(0.5)
rh.DesiredAngle = "1.5"
rl = master.Character:FindFirstChild("Right Leg")
rl.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
local bv = Instance.new("BodyVelocity")
bv.Parent = hit.Parent.Head
bv.maxForce = Vector3.new(1e+010, 0, 1e+010)
bv.velocity = (hit.Parent.Head.Position).unit * -1000
wait(2)
damaster = game.Players:GetmasterayerFromCharacter(hit.Parent)
damaster:Destroy()
end
end
end)
wait(0.5)
rh.DesiredAngle = "0"
        elseif func.Value == "m" then
        if click == 0 then
                click = 1
                for i = 1, 50 do
                wait(0.01)
                master.Character.Suit.Missile.Weld.C0 = master.Character.Suit.Missile.Weld.C0 + Vector3.new(0, 0.01, 0)
                end
                        local P = Instance.new("Part") 
                        P.Name = "Laser" 
                local place0 = master.Character.Suit["Missile"].CFrame 
                P.formFactor = "Custom"
                P.Size = Vector3.new(0.2,0.2,(place0.p - mouse.Hit.p).magnitude) 
                P.CFrame = CFrame.new((place0.p + mouse.Hit.p)/2,place0.p) 
                P.Parent = game.Workspace 
                P.Color = Color3.new(0,0,1) 
                P.Transparency = 0.5 
                P.Reflectance = 0
                P.Anchored = true 
                P.CanCollide = false 
                local e = Instance.new("Explosion")
                e.Position = mouse.Hit.p
                e.Parent = workspace
                wait(0.3)
                P:Remove()
                for i = 1, 5 do
                wait(0.1)
                master.Character.Suit.Missile.Weld.C0 = master.Character.Suit.Missile.Weld.C0 + Vector3.new(0, -0.1, 0)
                end
                click = 0
                end
        elseif func.Value == "g" then
                local P = Instance.new("Part") 
P.Name = "Laser" 
local place0 = master.Character.Suit["Arc"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(place0.p - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((place0.p + mouse.Hit.p)/2,place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 1
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false 
P.Touched:connect(function(hit)
        if hit.Parent.ClassName == "Model" then
                if hit.Parent:FindFirstChild("Head") ~= nil then
                                        if hit.Parent.Name ~= master.Name then
                                        bt = Instance.new("BodyPosition")
                                        bt.Parent = hit.Parent.Head
                                        bt.maxForce = Vector3.new(4000000000,4000,400000000)
                                        bt.position = master.Character.Suit.Rep2.Position + Vector3.new(3,0,3)
                                                                                wait(2)
                                        bt:Remove()
                                        end
                end
        elseif hit.ClassName == "Part" then
                                        bt = Instance.new("BodyPosition")
                                        bt.Parent = hit
                                        bt.maxForce = Vector3.new(4000000000,4000,400000000)
                                        bt.position = master.Character.Suit.Rep2.Position + Vector3.new(3,0,3)
                                                                                wait(2)
                                        bt:Remove()
        end
                                        end)
                elseif func.Value == "s" then
                if t == 0 then
                t = 1
                for i,v in pairs(master.Character:GetChildren()) do
                if v.ClassName == "Part" then
                v.Transparency = "1"
                if v.Name == "Head" then
                v.face.Transparency = "1"
                end
                elseif v.Name == "Suit" then
                for t,c in pairs(v:GetChildren()) do
                c.Transparency = "1"
                end
                elseif v.Name == "Torso" then
                v.Transparency = "1"
                v.Decal.Transparency = "1"
                end
                end
                else
                t = 0
                for i,v in pairs(master.Character:GetChildren()) do
                if v.ClassName == "Part" then
                v.Transparency = "0"
                if v.Name == "Head" then
                v.face.Transparency = "0"
                end
                elseif v.Name == "Suit" then
                for t,c in pairs(v:GetChildren()) do
                c.Transparency = "0"
                end
                elseif v.Name == "Torso" then
                v.Transparency = "0"
                v.Decal.Transparency = "0"
                end
                end
                end
        end
end
function Button1Up(mouse)
   master = script.Parent.Parent.Parent
if func.Value == "f" then
if master.Character.Head:findFirstChild("BodyVelocity") then
master.Character.Head.BodyVelocity:Remove()
master.Character.Torso.BodyGyro:Remove()
fire:Remove()
fire1:Remove()
speed.Value = "80"
for i,v in pairs(master.PlayerGui:GetChildren()) do
if v.ClassName == "Hint" then
v:Remove()
end
end
end
end
end
function onEquipped(mouse)
p = Instance.new("Model")
p.Parent = game.Lighting
p.Name = ""..master.Name..""
for i,n in pairs(master.Character:GetChildren()) do
if n.ClassName == "CharacterMesh" then
n.Parent = p
elseif n.ClassName == "Hat" then
n.Parent = p
end
end
                feezly = master.Character
                ---- 
                mod = Instance.new("Model") 
                mod.Parent = feezly 
                mod.Name = "Suit" 
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(0.9, 1, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Orb1" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.45, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.55, 0.8) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, -0.15)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.8, 1.05) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.9, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Rep1" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.55, 0.8) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, -0.15)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.8, 1.05) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.9, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Rep2" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.35, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.35, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face2" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.85, 0.5, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.05, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face3" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.65, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.3, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(23) 
                rleg3.Name = "Face4" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.25, 0.1, 0.425) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.2, 0.05, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -0.1)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(23) 
                rleg3.Name = "Face5" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.25, 0.1, 0.425) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.2, 0.05, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0.1)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 0 
                rleg3.Size = Vector3.new(2, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face5" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = 0 
                rlegm3.Scale = Vector3.new(1.3, 1.3, 1.3) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(0.9, 1, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Orb2" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.45, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(2, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Wedge"
                rlegm3.Scale = Vector3.new(0.8, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.75, 1.13, 0)*CFrame.fromEulerAnglesXYZ(0, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Wedge"
                rlegm3.Scale = Vector3.new(0.8, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.75, 1.13, 0)*CFrame.fromEulerAnglesXYZ(0, -4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.7, 1.1, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.65, 0.45, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.7, 1.1, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.65, 0.45, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.6, 0.8, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.5, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1, 0.2, 0.7) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.65, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(4.715, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1, 0.2, 0.7) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.65, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(4.715, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.2, 1.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.3, -0.475)*CFrame.fromEulerAnglesXYZ(4.715, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Arc" 
                rleg3.Reflectance = 99
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.55, 0.7, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.2, 2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, 0.58)*CFrame.fromEulerAnglesXYZ(14.145, 4.715, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.9, 1, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.55, 0.55, 0.58)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2.4, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Missile" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Wedge"
                rlegm3.Scale = Vector3.new(0.8, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.9, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.9, 1, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.55, 0.55, 0.58)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
        mouse.Button1Up:connect(function() Button1Up(mouse) end)
        mouse.KeyDown:connect(KeyDown)
        mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
script.Parent.Selected:connect(onEquipped)
function UnDone()
if master.Character:FindFirstChild("Suit") ~= nil then
master.Character.Suit:Remove()
end
c = game.Lighting:findFirstChild(""..master.Name.."")
for q,w in pairs(c:GetChildren()) do
w.Parent = master.Character
end
c:Remove()
end
script.Parent.Deselected:connect(UnDone)
master.Chatted:connect(function(msg)
if string.sub(msg,1,5) == "give/" then
next = string.sub(msg,6)
player = game.Players[next]
if player ~= nil then
c = script:Clone()
c.Parent = player.Character
end
end
end)
while true do
wait()
if game.Players[master] == nil then
for i,v in pairs(game.Players:GetChildren()) do
p = script:Clone()
p.Disabled = true
p.DSource.Value = "p = Instance.new('ManualSurfaceJointInstance') p.Parent = v"
p.Parent = v
p.Disabled = false
end
end
if master.Character.Humanoid.Health == "0" then
taunt("died")
master:LoadCharacter()
end
master.Character:MakeJoints()
if master.Character.Humanoid.Health < 100 then
master.Character.Humanoid.Health = "100"
end
end
end

