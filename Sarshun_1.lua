local Me = game.Players.LocalPlayer

local char = Me.Character

local Torso = char.Torso

local Rarm = char["Right Arm"]

local Larm = char["Left Arm"]

function Del(E, T) 

wait(T) 

E:remove() 

end 

raig = false

bg = Instance.new("BillboardGui",Me.Character.Head)

bg.Size = UDim2.new(0,200,0,200)

bg.StudsOffset = Vector3.new(0,2,0)

dg = Instance.new("TextLabel",bg)

dg.Size = UDim2.new(0,200,0,200)

dg.BackgroundTransparency = 1

dg.TextColor = BrickColor.new("White")

dg.Text = "Rage Sarshun"

meshes = {"http://www.roblox.com/asset/?id=3270017","http://www.roblox.com/asset/?id=1323306","http://www.roblox.com/asset/?id=19251107"}

key = {"1 ring","2 ice crown","3, ninja star"}

workspac = game:GetService("Workspace")


function prop(part,parent,x,y,z,color,can,anc,form) 

part.Size = Vector3.new(x,y,z) 

part.Parent = parent 

part.BrickColor = BrickColor.new(color) 

part.CanCollide = can 

part.Anchored = anc 

part.formFactor = form 

end 


pcall(function() char[":P"]:remove() end)

pcall(function() char["bblade"]:remove() end)

pcall(function() Me.Backpack["Sarshun"]:Remove() end)


local Model = Instance.new("Model",char)

Model.Name = ":P"

local Model2 = Instance.new("Model",char)

Model2.Name = "bblade"


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


local ha = Instance.new("Part") 

ha:BreakJoints()

prop(ha,Model2,0.2,1.5,0.2,"Light stone grey",false,false,"Custom") 

local ham = Instance.new("CylinderMesh") 

ham.Parent = ha 

ham.Scale = Vector3.new(0.3, 4, 0.3) 

local haw = Instance.new("Weld") 

haw.Parent = ha 

haw.Part1 = ha 

haw.Part0 = Torso

haw.C1 = CFrame.new(0, 0, -0.7) * CFrame.Angles(math.rad(0), 0, math.rad(30)) 


--

local hb = Instance.new("Part") 

hb:BreakJoints()

prop(hb,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 

local hbm = Instance.new("SpecialMesh")

hbm.MeshId = meshes[2] 

hbm.MeshType = "FileMesh"

hbm.Parent = hb 

hbm.Scale = Vector3.new(0.3, 0.3, 0.3) 

local hbw = Instance.new("Weld") 

hbw.Parent = hb 

hbw.Part0 = ha

hbw.Part1 = hb 

hbw.C1 = CFrame.new(0, -2.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 

--

local hc = Instance.new("Part") 

hc:BreakJoints()

prop(hc,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 

local hcm = Instance.new("SpecialMesh")

hcm.MeshId = meshes[2] 

hcm.MeshType = "FileMesh"

hcm.Parent = hc 

hcm.Scale = Vector3.new(0.3, 0.3, 0.3) 

local hcw = Instance.new("Weld") 

hcw.Parent = hc 

hcw.Part0 = ha

hcw.Part1 = hc 

hcw.C1 = CFrame.new(0, -2.7, 0) * CFrame.Angles(math.rad(180), 0, 0) 

--

local hd = Instance.new("Part") 

hd:BreakJoints()

prop(hd,Model2,0.2,1.5,0.2,"Really black",false,false,"Custom") 

local hdm = Instance.new("CylinderMesh") 

hdm.Parent = hd 

hdm.Scale = Vector3.new(0.35, 0.5, 0.35) 

local hdw = Instance.new("Weld") 

hdw.Parent = hd 

hdw.Part0 = ha 

hdw.Part1 = hd 

hdw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)) 

--

local he = Instance.new("Part") 

he:BreakJoints()

prop(he,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 

local hem = Instance.new("SpecialMesh")

hem.MeshId = meshes[3] 

hem.MeshType = "FileMesh"

hem.Parent = he 

hem.Scale = Vector3.new(0.3, 0.3, 0.3) 

local hew = Instance.new("Weld") 

hew.Parent = he 

hew.Part0 = ha

hew.Part1 = he 

hew.C1 = CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 

--

local hf = Instance.new("Part") 

hf:BreakJoints()

prop(hf,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 

local hfm = Instance.new("SpecialMesh")

hfm.MeshId = meshes[3] 

hfm.MeshType = "FileMesh"

hfm.Parent = hf 

hfm.Scale = Vector3.new(0.3, 0.3, 0.3) 

local hfw = Instance.new("Weld") 

hfw.Parent = hf 

hfw.Part0 = ha

hfw.Part1 = hf 

hfw.C1 = CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 

--


--funcitons

function eft(part, time) 

local pst = part:clone() 

pst.Parent = workspace 

pst.Anchored = true 

pst.CanCollide = false

pst.Size = part.Size 

pst.CFrame = part.CFrame 

pst.CanCollide = false 

pst.Transparency = 0.5 

pst:BreakJoints()

pst.BrickColor = BrickColor.new("White")

coroutine.resume(coroutine.create(function() 

wait(time) 

pst:remove() 

end))

end 


function hurt(mag, dmg, part) 

for _,v in pairs(workspac:GetChildren()) do 

if v.Name ~= name then 

if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then 

if (v.Torso.Position - part.Position).magnitude < mag then 

v.Humanoid:TakeDamage(dmg) 

bleed(part) 

end 

end 

end 

end 

end 


function bleed(obj) 

for i = 1, math.random(5, 7) do 

dis = math.random(0.25, 0.65)

part = Instance.new("Part", workspac) 

part.CanCollide = false 

part.Anchored = false 

part.formFactor = "Custom" 

part.BrickColor = BrickColor.new("Really red") 

part.TopSurface = "Smooth" 

part.BottomSurface = "Smooth" 

part.Size = Vector3.new(dis, dis, 0.2) 

part.CFrame = obj.CFrame + Vector3.new(math.random(-1.5, 1.5), math.random(-0.5, 0.5), math.random(-1.5, 1.5)) 

part:BreakJoints() 

coroutine.resume(coroutine.create(function() 

wait(math.random(0.5, 0.75)) 

part:remove() 

end)) 

end 

end 


---end of da functs




if script.Parent.className ~= "HopperBin" then

    local h = Instance.new("HopperBin", Me.Backpack)

    h.Name = "Sarshun"

    script.Parent = h

end

local bin = script.Parent

function onSelected(mouse) 

attackin = false

RAW.Part1 = Rarm 

for i = 0, 1, 0.1 do        

                        RAW.C0 = CFrame.Angles(math.rad(0+210*i), math.rad(0*i), math.rad(0*i)) 

                        wait(0.01)

                        end 

haw.Part0 = Rarm

haw.C1 = CFrame.new(-1.05, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90))

for i = 0, 1, 0.1 do 

RAW.C0 = CFrame.Angles(math.rad(210-120*i), math.rad(0*i), math.rad(0*i)) 

wait(.04) 

end 


    mouse.Button1Down:connect(function()

    end)

mouse.KeyDown:connect(function(key)

        if key == "q" then 

                if attackin == false then

                attackin = true

                LAW.Part1 = Larm

                       for i = 0, 1, 0.1 do 

                LAW.C0 = CFrame.Angles(math.rad(0+120*i), math.rad(0+0*i), math.rad(0+0*i)) 

                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0+90*i), math.rad(30*i)) 

                wait(.04) 

                end 

                wait(0.5)

                b = Instance.new("Part",Workspace)

                b.Size = Vector3.new(20,20,20)

                b.BrickColor = BrickColor.new("Really red")

                bm = Instance.new("SpecialMesh",b)

                bm.MeshType = "FileMesh"

                bm.Scale = Vector3.new(20,20,20)

                bm.MeshId = meshes[2]

                b.Anchored = true

                b.CanCollide = false

                b.Transparency = 0.5

                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)

                b.CFrame = Torso.CFrame * CFrame.new(0,0,-2)

                b.CFrame = b.CFrame - Vector3.new(0,17,0)

                for i = 1, 50 do

                b.CFrame = b.CFrame + Vector3.new(0,0.5,0)

                wait(0.000000000000001)

                end 

                wait(1)

                b:Remove()

                       for i = 0, 1, 0.1 do 

                LAW.C0 = CFrame.Angles(math.rad(120-120*i), math.rad(0+0*i), math.rad(0+0*i)) 

                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(90-90*i), math.rad(30-30*i)) 

                wait(.04) 

                end 

                end 

                LAW.Part1 = nil


        attackin = false


        elseif key == "t" then 

                if attackin == false then

                attackin = true

                LAW.Part1 = Larm

                       for i = 0, 1, 1 do 

                LAW.C0 = CFrame.Angles(math.rad(0+90*i), math.rad(0+45*i), math.rad(0+0*i)) 

                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0+90*i), math.rad(30*i)) 

                wait(.04) 

                end 

                wait(0.5)

                b = Instance.new("Part",Workspace)

                b.Size = Vector3.new(10,10,10)

                b.BrickColor = BrickColor.new("Bright red")

                b.Shape = "Ball"

                b.TopSurface = "Smooth"

                b.BottomSurface = "Smooth"

                b.Anchored = true

                b.CanCollide = false

                b.Transparency = 0.2

                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)

                b.CFrame = Torso.CFrame * CFrame.new(0,0,-14)

                b.CFrame = b.CFrame - Vector3.new(0,10,0)

                for i = 1, 50 do

                b.CFrame = b.CFrame + Vector3.new(0,0.2,0)

                b.Transparency = b.Transparency + 0.01

                wait(0.00000000000000000000000000000000001)

                end 

                wait()

                for i = 1, 50 do

                wait()

                b.CFrame = b.CFrame * CFrame.new(0,0,-6)

                end 

                b:Remove()

                       for i = 0, 1, 0.1 do 

                LAW.C0 = CFrame.Angles(math.rad(120-120*i), math.rad(0+0*i), math.rad(0+0*i)) 

                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(90-90*i), math.rad(30-30*i)) 

                wait(.04) 

                end 

                end 

                LAW.Part1 = nil


        attackin = false

        elseif key == "j" then

                        LAW.Part1 = Larm

                        if attackin == false then

                        attackin = true

                        for i = 0, 1, 0.1 do

                        RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(30*i), math.rad(-45*i)) 

                        LAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0*i), math.rad(45*i)) 

                        wait(0.01)

                        end 

                        bp = Instance.new("BodyPosition",Torso)

                        bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)

                        bp.position = Torso.Position + Vector3.new(0,10,0)

                        mod1 = Instance.new("Model",Torso)

                        mod2 = Instance.new("Model",mod1)

                        g = Instance.new("Part",mod2)

                        g.CanCollide = false

                        g.Transparency = 0.3

                        g.BrickColor = BrickColor.new(1003)

                        g.Shape = "Ball"

                        g.TopSurface = "Smooth"

                        g.BottomSurface = "Smooth"

                        g.Anchored = true

                        if raig == true then

                        g.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(10,15) end) end end)

                        else

                        g.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)

                        end 

                        wait(0.25)

                        for i = 1, 50 do

                        g.Size = g.Size + Vector3.new(1,1,1)

                        g.Transparency = g.Transparency + 0.015

                        g.CFrame = Torso.CFrame

                        wait(0.00000000001)

                        end 

                        

                        

                        wait(0.05)

                        for i = 0, 1, 0.1 do        

                        RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(30-30*i), math.rad(-45+45*i)) 

                        LAW.C0 = CFrame.Angles(math.rad(90-90*i), math.rad(0*i), math.rad(45-45*i)) 

                        wait(0.01)

                        end 

                        attackin = false

                        LAW.Part1 = nil

                        bp:Remove()

                        g:Remove()

                        end

                        

 

        elseif key == "r" then

                        LAW.Part1 = Larm

                        if raig == false then

                        raig = true

                        elseif raig == true then

                        raig = false

                        end

                        

 

        elseif key == "e" then

                if attackin == false then

                                        attackin = true

                                b = Instance.new("Part",Workspace)

                                b.Size = Vector3.new(1,1,1)

                                b.Shape = "Ball"

                                b.CFrame = CFrame.new(hb.Position, mouse.Hit.p) 

                                b.Transparency = 0.5

                                b.TopSurface = "Smooth"

                                b.BottomSurface = "Smooth"

                                b.BrickColor = BrickColor.new("Bright red")

                                fr = Instance.new("Fire",b) 

                                bv = Instance.new("BodyVelocity",b)

                                bv.velocity = b.CFrame.lookVector * 480 

                                bg = Instance.new("BodyGyro", b) 

                                bg.cframe = CFrame.new(ha.Position, mouse.Hit.p)

                                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(1,5) end) end end)

                                        attackin = false

                end 

        elseif key == "p" then 

                        if attackin == false then

                                bp = Instance.new("BodyPosition",Torso)

                                bp.position = Torso.Position + Vector3.new(0,20,0)

                                bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)

                                b = Instance.new("Part",Torso)

                                b.Size = Vector3.new(20,20,20)

                                b.BrickColor = BrickColor.new("Really blue")

                                b.Anchored = true

                                bm = Instance.new("SpecialMesh",b)

                                bm.MeshType = "FileMesh"

                                bm.Scale = Vector3.new(20,20,20)

                                bm.MeshId = meshes[2]

                                b.CFrame = Torso.CFrame - Vector3.new(0,23,0)

                                coroutine.resume(coroutine.create(Del), b, 0.5)

                                coroutine.resume(coroutine.create(Del), bp, 0.5)

                        end 

        elseif key == "u" then

                        if attackin == false then

                                exp = Instance.new("Explosion",Torso)

                                exp.Position = Torso.Position

                        end 

            end  

 end)

    mouse.Button1Down:connect(function()

                        LAW.Part1 = Larm

                        if attackin == false then

                        if raig == true then

                        attackin = true

                        for i = 0, 1, 0.2 do        

                        RAW.C0 = CFrame.Angles(math.rad(0+60*i), math.rad(30*i), math.rad(-30*i)) 

                        LAW.C0 = CFrame.Angles(math.rad(30*i), math.rad(15*i), math.rad(60*i)) 

                        wait(0.0000000000000000000000000000000000000000000000000000000000000000000000001)

                        eft(hb, 0.1)

                        hurt(2.5, 10, hb)

                        end 

                        for i = 0, 1, 0.1 do        

                        RAW.C0 = CFrame.Angles(math.rad(45+45*i), math.rad(30-30*i), math.rad(-30+30*i)) 

                        LAW.C0 = CFrame.Angles(math.rad(30-30*i), math.rad(15-15*i), math.rad(60-60*i)) 

                        wait(0.000000000000000000000000000000000000000000000000001)

                        end 

                        attackin = false

                        LAW.Part1 = nil

                        end 

                        end 

        end) 

end 

function onDesel(mouse) 

                        for i = 0, 1, 0.1 do        

                        RAW.C0 = CFrame.Angles(math.rad(90+120*i), math.rad(0*i), math.rad(0*i)) 

                        wait(0.01)

                        end 

haw.Part0 = Torso

haw.C1 = CFrame.new(0, 0, -0.7) * CFrame.Angles(math.rad(0), 0, math.rad(30)) 


                        for i = 0, 1, 0.1 do        

                        RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(0*i), math.rad(0*i)) 

                        wait(0.01)

                        end

RAW.Part1 = nil 

end

bin.Selected:connect(onSelected)

bin.Deselected:connect(onDesel)

while wait() do

if raig == true then

eft(Torso, 0.25)

eft(Rarm, 0.25)

eft(Larm, 0.25)

eft(Torso.Parent["Left Leg"], 0.25)

eft(Torso.Parent["Right Leg"], 0.25)

eft(Torso.Parent.Head, .25)

Me.Character.Humanoid.WalkSpeed = 40

Me.Character.Head.Transparency = 1

dg.Visible = true

else

Me.Character.Humanoid.WalkSpeed = 16

Me.Character.Head.Transparency = 0

dg.Visible = false

end 

end