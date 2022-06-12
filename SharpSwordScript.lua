--local/

Players=game:GetService("Players")

Debris=game:GetService("Debris")


player=Players.LocalPlayer

char=player.Character


Mouse = nil


RAW=nil

LAW=nil



bin=nil

binName="Swords"

Busy=false


new=Instance.new

rad=math.rad

rand=math.random

v3=Vector3.new


HasRSword=false

HasLSword=false


dmgDeb = false

Shielding = false


RSword = nil

LSword = nil

RSW = nil

LSW = nil

asset =  "http://www.roblox.com/asset/?id="

SwordMesh = 12221720


Meshes = {}

Meshes.Shield = "60120613"

Meshes.Blast="20329976"

Meshes.Ring="3270017"

Meshes.Skull="4770583"

Meshes.Hand="32054761"

Meshes.Spike="1033714"

Meshes.SpikeBall="9982590"


function Dmg(hit, dmg, w)

    if hit.Name=="Shield" then

       w:remove() 

    else

    if dmgDeb == false then

        dmgDeb=true

    h = hit.Parent:FindFirstChild("Humanoid")

    if h then

        if h.Parent.Name~=player.Name then

       h.Health = h.Health - dmg 

       end

end

end

wait()

dmgDeb = false

end

end


function BlastWave()

    torso = char.Torso

p1=Instance.new("Part")

p1.Parent=workspace

p1.Name="se"

p1.Anchored=true

p1.Size=Vector3.new(1,1,1)

p1.CanCollide=false

p1.CFrame=CFrame.new(torso.Position.x,torso.Position.y-4,torso.Position.z)

p2=Instance.new("Part")

p2.Parent=workspace

p2.Name="be"

p2.Anchored=true

p2.Size=Vector3.new(1,1,1)

p2.CanCollide=false

p2.BottomSurface="Smooth"

p2.TopSurface="Smooth"

p2.CFrame=CFrame.new(torso.Position.x,torso.Position.y-4,torso.Position.z)

p1.BrickColor = BrickColor.Black()

p2.BrickColor = BrickColor.Black()

em=Instance.new("SpecialMesh")

em.Parent=p1

em.MeshType="FileMesh"

em.Scale=Vector3.new(4,2,4)

em.MeshId=asset..Meshes.Blast

em.Name="Mesh"

bm=Instance.new("SpecialMesh")

bm.Parent=p2

bm.MeshType="Sphere"

bm.Scale=Vector3.new(3,3,3)

bm.Name="Mesh"

coroutine.resume(coroutine.create(function()

for i=1, 16 do

wait(0.04)

em.Scale=em.Scale+Vector3.new(2,0.5,2)

bm.Scale=bm.Scale+Vector3.new(2.5,2.5,2.5)

p1.Transparency=p1.Transparency+0.1

p2.Transparency=p2.Transparency+0.1

end

p1:remove()

p2:remove()

end))

end



function DmgArea(dmg,radius,ob)

g=game.Workspace:GetChildren()

for i=1, #g do

t=g[i]:FindFirstChild("Torso")

if t~=nil then

if t.Parent.Name~=player.Name then

if (t.Position - ob.Position).magnitude < radius then

t.Parent.Humanoid.Health=t.Parent.Humanoid.Health-dmg

end end end end end


function Dash()

  if Busy==false then

      Busy = true

      for i=1, 3 do

          wait(0.1)

        char.Torso.CFrame = char.Torso.CFrame + char.Torso.CFrame.lookVector*16

        m = char:Clone()

        m.Name = "Shadow"

        game.Debris:AddItem(m, 1)

    end

      Busy = false

end

end


function SpinAttack()

    local c = nil

    local c2 = nil

   if Busy==false then

      Busy = true

      bg = new("BodyGyro", char.Torso)

    bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge    

    bg.P = 20e+003

    bg.cframe = bg.cframe * CFrame.Angles(0, 0, 0)

coroutine.resume(coroutine.create(function()

for i=1, 60 do

    wait()

   bg.cframe = bg.cframe * CFrame.Angles(0,rad(30),0) 

end

end))

       if HasRSword then

        if HasLSword then

        coroutine.resume(coroutine.create(function() 

        tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,0) * CFrame.Angles(rad(0), rad(0), rad(90)))

        tweenWeld(RSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        c = RSword.Touched:connect(function(h) Dmg(h, 40, nil) end)

end))

else

        tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,0) * CFrame.Angles(rad(0), rad(0), rad(90)))

        tweenWeld(RSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        c = RSword.Touched:connect(function(h) Dmg(h, 40, nil) end)


end

end

if HasLSword then

        tweenWeld(LAW, 0.08, CFrame.new(-1.2,0.8,0) * CFrame.Angles(rad(0), rad(0), rad(-90)))

        tweenWeld(LSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        c2 = LSword.Touched:connect(function(h) Dmg(h, 40, nil) end)

end

wait(2)

bg:remove()

if c~=nil then

   c:disconnect() 

end

if c2~=nil then

    c2:disconnect()

end

    IdleSword()

    IdleStance()

      Busy = false

     end

end


function Slash()

        local c = nil

    local c2 = nil

    if Busy==false then

    Busy = true

    if HasRSword then

        if HasLSword then

        coroutine.resume(coroutine.create(function() 

        tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(-50)))

        tweenWeld(RSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        wait(0.5)

        tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(50)))

        c = RSword.Touched:connect(function(h) Dmg(h, 40, nil) end)

end))

else

 tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(-50)))

        tweenWeld(RSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        wait(0.5)

        tweenWeld(RAW, 0.08, CFrame.new(1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(50)))

        c = RSword.Touched:connect(function(h) Dmg(h, 40, nil) end)

end

end

if HasLSword then

        tweenWeld(LAW, 0.08, CFrame.new(-1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(50)))

        tweenWeld(LSW, 0.08, CFrame.new(0,0,-2) * CFrame.Angles(rad(-90), rad(0), rad(0)))        

        wait(0.5)

        tweenWeld(LAW, 0.08, CFrame.new(-1.2,0.8,-0.8) * CFrame.Angles(rad(100), rad(0), rad(-50)))

        c2 = LSword.Touched:connect(function(h) Dmg(h, 40, nil) end)

end

wait(2)

if c~=nil then

   c:disconnect() 

end

if c2~=nil then

    c2:disconnect()

end

    IdleSword()

    IdleStance()

    Busy = false

    end

end


function Shield()

    coroutine.resume(coroutine.create(function()

if Busy==false then

    Busy = true

    if Shielding == false then

        Shielding = true

            coroutine.resume(coroutine.create(function()

tweenWeld(RAW, 0.2, CFrame.new(1.5,0.3,0) * CFrame.Angles(rad(80), rad(100), rad(50)))

end))

bg = new("BodyGyro", char.Torso)

        bg.cframe = CFrame.new(char.Torso.Position,Vector3.new(Mouse.Hit.p.x,char.Torso.Position.y,Mouse.Hit.p.z))

    bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)*1 

        bg.P = 20e+003

    p = new("Part", workspace)

    p.Name = "Shield"

    p.Size = Vector3.new(3,1,4)

    p.BrickColor = BrickColor.Black()

    p.Position = char.Torso.Position

    p.Transparency = 0.5

    w = new("Weld", p)

    w.Part0 = char.Torso

    w.Part1 = p

    w.C0 = CFrame.new(0,0.5,-2) * CFrame.Angles(rad(90),rad(180),rad(180))

    m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..Meshes.Shield

             m.Scale = Vector3.new(3,5,3)

            coroutine.resume(coroutine.create(function()

             con = game:service("RunService").Stepped:connect(function()

                  c = p:Clone()

        c.Parent = workspace

        c.Anchored = true

        c.CanCollide = false

        c.Transparency = 0.8

        game.Debris:AddItem(c, 0.6)

            end)

            end))

        while rDown == true do

            wait()

            bg.cframe = CFrame.new(char.Torso.Position,Vector3.new(Mouse.Hit.p.x,char.Torso.Position.y,Mouse.Hit.p.z))

        end

        Shielding = false

    end

    IdleStance()

    con:disconnect()

    bg:remove()

    p:remove()

    Busy = false

end

end))

end


function SmashDown()

if Busy==false then

    Busy = true

    bp = new("BodyPosition", char.Torso)

    bp.maxForce = Vector3.new(4e+005,4e+005,4e+005)*math.huge 

    bp.position = char.Torso.Position + Vector3.new(0, 40, 0)

    bg = new("BodyGyro", char.Torso)

    bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge    

    bg.P = 20e+003

    bg.cframe = bg.cframe * CFrame.Angles(math.rad(180), 0, 0)

    coroutine.resume(coroutine.create(function()

        tweenWeld(RAW, 0.3, CFrame.new(1.5,1.2,0) * CFrame.Angles(rad(0), rad(180), rad(180)))

        end))

        tweenWeld(LAW, 0.3, CFrame.new(-1.5,1.2,0) * CFrame.Angles(rad(0), rad(180), rad(-180)))

  char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(math.rad(180), 0, 0)

  p = new("Part", game.Workspace)

             p.Name = "Sword"

             p.Size = Vector3.new(1,1,1)

             p.BrickColor = BrickColor.new("Black")

             p.Transparency = 1

             p.Anchored = false

             p.CanCollide = false

             p.Position = char.Torso.Position

             m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

                 m.Scale = Vector3.new(3,3,3)

                 w = new("Weld", p)

                 w.Part0 = p

                 w.Part1 = char.Torso

                 w.C1 = w.C1 + Vector3.new(0,9,0)

                 w.C1 = w.C1 * CFrame.Angles(rad(-90), 0, 0)

   for i=1, 10 do

       wait(0.1)

       p.Transparency = p.Transparency - 0.05

     end

         coroutine.resume(coroutine.create(function()

for i=1, 60 do

    wait()

   bg.cframe = bg.cframe * CFrame.Angles(0,rad(50),0) 

end

end))

wait(1.4)

    bp.position = char.Torso.Position + Vector3.new(0, -34, 0)

wait(0.6)

BlastWave()

DmgArea(60, 20, char.Torso)

     p:remove()

     bp:remove()

     bg:remove()

     IdleStance()

   Busy = false

    end

end


function ThrowSuper()

    if Busy==false then

    Busy = true

    bp = new("BodyPosition", char.Torso)

    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)*1

    bp.position = char.Torso.Position + Vector3.new(0, 10, 0)

    bg = new("BodyGyro", char.Torso)

    bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)*1      

    coroutine.resume(coroutine.create(function()

        tweenWeld(RAW, 0.3, CFrame.new(1.6,1.2,0) * CFrame.Angles(rad(0), rad(0), rad(120)))

        end))

        tweenWeld(LAW, 0.3, CFrame.new(-1.6,1.2,0) * CFrame.Angles(rad(0), rad(0), rad(-120)))

   p = new("Part", game.Workspace)

             p.Name = "Sword"

             p.Size = Vector3.new(1,1,1)

             p.BrickColor = BrickColor.new("Black")

             p.Transparency = 1

             p.Anchored = true

             p.CanCollide = false

             p.CFrame = char.Torso.CFrame + Vector3.new(0,10,0)

             p.CFrame = p.CFrame * CFrame.Angles(rad(-90), 0, 0)

             m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

                 m.Scale = Vector3.new(3,3,3)

   for i=1, 40 do

       wait()

       p.Transparency = p.Transparency - 0.125

     end


    for i=1, 40 do

         wait(0.1)

    bg.cframe = CFrame.new(char.Torso.Position,Vector3.new(Mouse.Hit.p.x,char.Torso.Position.y,Mouse.Hit.p.z))

     end

     wait(4)

     p:remove()

     bp:remove()

     bg:remove()

     IdleStance()

   Busy = false

    end

end


function CircleSwords()

    if Busy == false then

    Busy = true

    repeats = 12

radius = 4

mod=new("Model")

mod.Parent=workspace

local swords = {}

function fire(i,booms)


    local centerpoint = char.Torso

        local a = i * ((3.14156 * 2) / booms) 

        local y = 0

        local x = radius * math.cos(a)

        local z = radius * math.sin(a)

        local launch = Vector3.new(x, y, z)

        local New = new("Part")

New.Anchored=true

New.CanCollide=false

New.Transparency = 0.5

New.BrickColor = BrickColor.Black()

New.Size=Vector3.new(1,3,1)

        New.CFrame = CFrame.new(centerpoint.Position + launch, centerpoint.Position + launch * 2)

    New.CFrame = New.CFrame * CFrame.Angles(0,math.rad(180),0)

    New.Parent=mod

    New.Touched:connect(function(hit) Dmg(hit,20, New) end)

    swords[#swords+1] = New

    m = new("SpecialMesh", New)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

end

for i=1,repeats do

    wait()

        fire(i,repeats)

end


for i=1, #swords do

    wait()

    swords[i].Anchored = false

    bv = new("BodyVelocity", swords[i])

    bv.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1

    bv.velocity = -swords[i].CFrame.lookVector*80

end


game.Debris:AddItem(mod, 5)

Busy = false

end

end


function GroundStab()

          if HasRSword or HasLSword then

        if Busy == false then

      Busy = true

      if HasRSword then

    tweenWeld(RAW, 0.3, CFrame.new(1.2,0.9,-0.5) * CFrame.Angles(rad(90), rad(180), rad(-20)))

    RSW:remove()

    else

    tweenWeld(LAW, 0.3, CFrame.new(-1.2,0.9,-0.5) * CFrame.Angles(rad(90), rad(180), rad(20)))

    LSW:remove()

    end

local e = new("Part", game.Workspace)

    e.Name = "Blast"

    e.Anchored = true

    e.CanCollide = false

    e.FormFactor = "Custom"

    e.Size = Vector3.new(1,0.2,1)

    e.BrickColor = BrickColor.Black()

    e.CFrame = char.Torso.CFrame - Vector3.new(0,3,0)

    m = new("SpecialMesh", e)

    m.MeshType = "Sphere"


    for i=1, 10 do

        wait()

        e.Size = e.Size + Vector3.new(1,0,1)

        e.CFrame = char.Torso.CFrame - Vector3.new(0,2.5,0)

        e.Transparency = e.Transparency + 0.1

    end

    e:remove()


if HasRSword then

HasRSword = false

RSword:remove()

else

HasLSword = false

LSword:remove()

end

h = Mouse.Target.Parent:FindFirstChild("Humanoid")

if h~=nil then

    local e2 = new("Part", game.Workspace)

    e2.Name = "Blast"

    e2.Anchored = true

    e2.CanCollide = false

    e2.FormFactor = "Custom"

    e2.Size = Vector3.new(1,0.2,1)

    e2.BrickColor = BrickColor.Black()

    e2.CFrame = h.Parent.Torso.CFrame - Vector3.new(0,3,0)

    m = new("SpecialMesh", e2)

    m.MeshType = "Sphere"

    coroutine.resume(coroutine.create(function()

    for x=1, 10 do

        wait()

        e2.Size = e2.Size + Vector3.new(1,0,1)

        e2.CFrame = h.Parent.Torso.CFrame - Vector3.new(0,3,0)

        e2.Transparency = e2.Transparency + 0.1

    end

    e:remove()

end))

 p = new("Part", game.Workspace)

             p.Name = "Sword"

             p.Size = Vector3.new(1,1,1)

             p.BrickColor = BrickColor.new("Black")

             p.Transparency = 0

             p.Anchored = true

             p.CanCollide = false

             p.CFrame = h.Parent.Torso.CFrame - Vector3.new(0,6,0)

             p.CFrame = p.CFrame * CFrame.Angles(rad(-90), 0, 0)

             m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

                 m.Scale = Vector3.new(2.5,2.5,2.5)

    h.Health = h.Health - 20

for y=1, 12 do

       wait()

       p.CFrame = p.CFrame + Vector3.new(0,1.5,0)

        p.Transparency = p.Transparency + 0.1

    end

end

p:remove()

IdleStance()

Busy = false

end

end

end


function SummonSword(hand)

    if Busy == false then

      Busy = true

      if hand == "Right" then

             tweenWeld(RAW, 0.3, CFrame.new(1.6,1.2,0) * CFrame.Angles(rad(0), rad(0), rad(100)))


             wait(0.3)

             HasRSword = true

             p = new("Part", char)

             p.Name = "RSword"

             p.Size = Vector3.new(1,3,1)

             p.BrickColor = BrickColor.new("Black")

             p.Transparency = 0.5

             p.CanCollide = false

             p.Position = char["Right Arm"].Position

             w = new("Weld", p)

             w.Part0 = char["Right Arm"]

             w.Part1 = p

             w.C1 = CFrame.new(0,5,-1.7) * CFrame.Angles(rad(0), rad(180), rad(0))

             m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

             RSW = w

             RSword = p

             for i=1, 8 do

                 wait()

                 w.C1 = w.C1 + Vector3.new(0,-0.5,0)

                end

            IdleStance()

         end

      if hand == "Left" then

            tweenWeld(LAW, 0.3, CFrame.new(-1.6,1.2,0) * CFrame.Angles(rad(0), rad(0), rad(-100)))

             wait(0.5)

             HasLSword = true

             p = new("Part", char)

             p.Name = "LSword"

             p.Size = Vector3.new(1,3,1)

             p.BrickColor = BrickColor.new("Black")

             p.Transparency = 0.5

             p.CanCollide = false

             p.Position = char["Left Arm"].Position

             w = new("Weld", p)

             w.Part0 = char["Left Arm"]

             w.Part1 = p

             w.C1 = CFrame.new(0,5,-1.7) * CFrame.Angles(rad(0), rad(180), rad(0))

             m = new("SpecialMesh", p)

             m.MeshType = "FileMesh"

             m.MeshId = asset..SwordMesh

             LSW = w

             LSword = p

             for i=1, 8 do

                 wait()

                 w.C1 = w.C1 + Vector3.new(0,-0.5,0)

                end

            IdleStance()

         end

      Busy = false

    end

end


function tweenWeld(weld, time, endC1)

        local endC1 = endC1 or weld.C1

        local frames = math.ceil(time * 50)

        --local c = coroutine.create(function()

                local startC1 = weld.C1

                for i = 1, frames do

                        weld.C1 = lerpCF(startC1, endC1, i/frames)

                        wait(1/30)

                end

                weld.C1 = endC1

        --end)

--        coroutine.resume(c)

end


function CFrameFromTopBack(at, top, back)

    local right = top:Cross(back)

        return CFrame.new(at.x, at.y, at.z,

                right.x, top.x, back.x,

                right.y, top.y, back.y,

                right.z, top.z, back.z)

end


function lerpCF(startCF, endCF, alpha)

    local startTop = (startCF * CFrame.Angles(math.rad(90),0,0)).lookVector

        local startBack = startCF.lookVector * -1

        local endTop = (endCF * CFrame.Angles(math.rad(90),0,0)).lookVector

        local endBack = endCF.lookVector * -1

        local startPos = startCF.p

        local endPos =         endCF.p

        local newCF = CFrameFromTopBack(startPos:lerp(endPos, alpha),startTop:lerp(endTop,alpha),startBack:lerp(endBack,alpha))

        return newCF

end


function WeldArms()


raw=Instance.new("Weld")

raw.Parent=char["Torso"]

raw.Part0=char["Right Arm"]

raw.Part1=char.Torso

raw.C1=CFrame.new(math.rad(88),0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

RAW=raw


law=Instance.new("Weld")

law.Parent=char["Torso"]

law.Part0=char["Left Arm"]

law.Part1=char.Torso

law.C1=CFrame.new(math.rad(-88),0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

LAW=law

end


function UnWeldArms()


end


function IdleSword()

if HasRSword then

coroutine.resume(coroutine.create(function()

tweenWeld(RSW, 0.3, CFrame.new(0,1,-1.7) * CFrame.Angles(rad(0), rad(180), rad(0)))

end))

end

if HasLSword then

tweenWeld(LSW, 0.3, CFrame.new(0,1,-1.7) * CFrame.Angles(rad(0), rad(180), rad(0)))

end

end


function IdleStance()

coroutine.resume(coroutine.create(function()

tweenWeld(RAW, 0.3, CFrame.new(1.5,0.3,0) * CFrame.Angles(rad(0), rad(0), rad(20)))

end))

tweenWeld(LAW, 0.3, CFrame.new(-1.5,0.3,0) * CFrame.Angles(rad(0), rad(0), rad(-20)))

end


function onClicked(mouse)

Slash()

end


function onKeyReleased(key)


if (key:lower() == "r") then

rDown = false

end


end


function onKeyPressed(key)


if (key:lower() == "e") then

if HasRSword == false then

SummonSword("Right")

end

end


if (key:lower() == "q") then

if HasLSword == false then

SummonSword("Left")

end

end


if (key:lower() == "x") then

char.Humanoid.Health = 0

end


if (key:lower() == "c") then

GroundStab()

end


if (key:lower() == "f") then

CircleSwords()

end


if (key:lower() == "r") then

rDown = true

Shield()

end


if (key:lower() == "g") then

SmashDown()

end


if (key:lower() == "z") then

SpinAttack()

end


if (key:lower() == "t") then

Dash()

end


end


function onUnequipped()

UnWeldArms()

end


function onEquipped(mouse)

WeldArms()

IdleStance()


Mouse = mouse


mouse.Button1Down:connect(function()

onClicked(mouse)

end)


mouse.KeyDown:connect(onKeyPressed)

mouse.KeyUp:connect(onKeyReleased)

end


function Init()

    bin = new("HopperBin", player.Backpack)

    bin.Name = binName

    char.Humanoid.WalkSpeed = 20

    --char.Humanoid.MaxHealth = math.huge

end

Init()


bin.Deselected:connect(onUnequipped)

bin.Selected:connect(onEquipped)
