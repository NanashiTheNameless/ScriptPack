-----------------Soul Blaster V.5.61 is now offical!--------------------------------------------------------------------------------

local modeld

local aable = true

local animate

player = game:service("Players").yfc

char = player.Character

Name=char.Name

humanoid = char.Humanoid

Allies = {

    yfc = true

}

Allies[player.Name] = true

suit = Instance.new("Model", player.Character)

color = "Really black"

damage = 10

spdamage = 1

m=Instance.new("Model")--------For the wave and spikes

m.Parent=char

m.Name="Gourd"

saber = Instance.new("HopperBin", player.Backpack)--------The tool

saber.Name = "Soul Blaster"

saberh = Instance.new("Part", saber)------The Handle(Stick)

saberh.Name = "Handle"

saberh.FormFactor = "Custom"

saberh.TopSurface = "Smooth"

saberh.BottomSurface = "Smooth"

saberh.Transparency = 0

saberh.Size = Vector3.new(0.1, 4, 0.1)

saberh.BrickColor = BrickColor.new(color)

crystal = Instance.new("Part",saber)-------The Crystal

crystal.Name = "Crystal"

crystal.FormFactor = "Custom"

crystal.TopSurface = "Smooth"

crystal.BottomSurface = "Smooth"

crystal.Size = Vector3.new(1, 1, 1)

crystal.Reflectance = 0.25

crystal.BrickColor = BrickColor.new("Pastel Blue")

crystalMesh = Instance.new("SpecialMesh",crystal)-------The crystal's mesh

crystalMesh.MeshId = "http://www.roblox.com/Asset/?id=975ffre444236362"

crystalMesh.Scale=Vector3.new(0.8, 0.8, 0.8)

bsaber1 = Instance.new("Part", saber)------One of the circulating balls

bsaber1.Name = "Handle2"

bsaber1.FormFactor = "Custom"

bsaber1.TopSurface = "Smooth"

bsaber1.BottomSurface = "Smooth"

bsaber1.Transparency = 0

bsaber1.Size = Vector3.new(0.4, 0.4, 0.4)

bsaber1.BrickColor = BrickColor.new("Institutional white")

bsaber2 = Instance.new("Part", saber)-------The other circulating ball

bsaber2.Name = "Handle3"

bsaber2.FormFactor = "Custom"

bsaber2.TopSurface = "Smooth"

bsaber2.BottomSurface = "Smooth"

bsaber2.Transparency = 0

bsaber2.Size = Vector3.new(0.4, 0.4, 0.4)

bsaber2.BrickColor = BrickColor.new("Institutional white")

Instance.new("SpecialMesh", bsaber1).MeshType = "Sphere"

Instance.new("SpecialMesh", bsaber2).MeshType = "Sphere"

bsaber3 = bsaber1:clone()

bsaber4 = bsaber2:clone()

bsaber3.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

bsaber4.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

bsaber3.Transparency = 0.8

bsaber4.Transparency = 0.8

local mousefunc = 1 -----Mouse functions

local minfunc = 1

local maxfunc = 7

local func1 = BrickColor.new("Pastel Blue")

local func2 = BrickColor.new("Lime green")

local func3 = BrickColor.new("New Yeller")

local func4 = BrickColor.new("White")

local func5 = BrickColor.new("Bright blue")

local func6 = BrickColor.new("Light reddish violet")

local func7 = BrickColor.new("Pastel green")

for i=1,1 do --------Tool counter(Removes the staff when there is more than one)

local sabercheck = player.Backpack:GetChildren() ------To remove the staff when it's not equipped

for i=1,#sabercheck do 

if sabercheck[i].Name == saber.Name and sabercheck[i] ~= saber then 

sabercheck[i]:Remove() 

else

end

end

local sabercheck1 = char:GetChildren()-------To remove the staff when it's equipped

for i=1,#sabercheck1 do 

if sabercheck1[i].Name == saber.Name and sabercheck1[i] ~= saber then 

sabercheck1[i]:Remove() 

else 

end 

end 

local sabercheck2 = char:GetChildren()

for i=1,#sabercheck2 do

if sabercheck2[i].Name == "AutioradiousModel" then

sabercheck2[i]:remove()

end

end

end

function Revolve(p, n)----------The circulation of the balls

    local rweld = Instance.new("Weld", p)

    rweld.Part0 = saberh

    rweld.Part1 = p

    rweld.C0 = CFrame.new(0, 2, 0)

    coroutine.resume(coroutine.create(function()

        for i = n, math.huge, 2 do

            local pos = Vector3.new(math.sin(i/12) * 0.75, 2, math.cos(i/12) * 0.75)

            rweld.C0 = CFrame.new(pos)

            wait()

            wait()

        end

    end))

end

CatchMsg = function(Msg)-----------Dialog

if game:service("Players").LocalPlayer.Character ~= nil then

pcall(function() game:service("Chat"):Chat(game:service("Players").LocalPlayer.Character.Head, Msg, Enum.ChatColor.Blue) end)

end

end

function onMove(mouse) --------For the moves that involve your mouse's position

MousePos = mouse.hit.p 

end 

function CreateModel()-----------Makes the staff go on your back

    local Mo = Instance.new("Model", char)

    Mo.Name = "AutioradiousModel"

    

    local mweld = Instance.new("Weld", Mo)

    mweld.Part0 = char.Torso

    mweld.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(0, 0, math.rad(45))

    

    local msaber = saberh:clone()

    msaber.Parent = Mo

    mweld.Part1 = msaber

    

    local crystalm = Instance.new("Part",Mo)

    crystalm.Name = "Crystal"

    crystalm.FormFactor = "Custom"

    crystalm.TopSurface = "Smooth"

    crystalm.BottomSurface = "Smooth"

    crystalm.Size = Vector3.new(1, 1, 1)

    crystalm.Reflectance = 0.25

    crystalm.BrickColor = crystal.BrickColor

    local crystalMeshm = Instance.new("SpecialMesh",crystalm)

    crystalMeshm.MeshId = "http://www.roblox.com/Asset/?id=9756362"

    crystalMeshm.Scale=Vector3.new(0.8, 0.8, 0.8)

    

    local mweldc = Instance.new("Weld", Mo)

    mweldc.Part0 = msaber

    mweldc.Part1 = crystalm

    mweldc.C0 = CFrame.new(0, 1.6, 0) * CFrame.Angles(0, 0, 0)

    

    return Mo

end

-----------------------------------Moves--------------------------------

function Spin()-------Makes you spin

print()

onOff = not onOff  

 while onOff == true do   

 wait(.000000001)  

 humanoid.WalkSpeed = 0

 player.Character.Torso.CFrame = player.Character.Torso.CFrame * CFrame.Angles(0,2,0) 

     end

end

function Wave()------The Tsunami

if MousePos.x>char.Torso.Position.x then

Deg=-2

Fre=-120

else

Deg=2

Fre=120

end

local X=char.Torso.CFrame.x

for i=0,Fre,Deg do

wait()

local p=Instance.new("Part")

p.Parent=Gourd

p.Size=Vector3.new(2,1,game.Workspace.Base.Size.z)

p.BrickColor=BrickColor.new("Bright blue")

p.Anchored=true

p.CFrame=CFrame.new(X,0,game.Workspace.Base.Position.z)*CFrame.new(-i,0,0)

local m=Instance.new("BlockMesh")

m.Parent=p

m.Scale=Vector3.new(1,1.2,1.005)

Delay(0,function()

local p=p

local m=m

for i=1,9,0.25 do

m.Scale=m.Scale+Vector3.new(0,.25,0)

wait()

end

wait()

for i=1,9,0.25 do

m.Scale=m.Scale+Vector3.new(0,-.25,0)

wait()

end

p:remove()

end)

for _,v in pairs(game.Players:GetPlayers()) do

if v.Character and v.Character:findFirstChild("Head") then

if v.Character.Head.Position.y<(workspace.Base.Position.y+9.5) then

if v.Character.Torso.Position.x<p.Position.x+p.Size.x/2 and v.Character.Torso.Position.x>p.Position.x-p.Size.x/2 then

Hit1(v.Character.Head)

end

end

end

end

end

end

function Spike()--------The circular spike move

local Pos=char.Torso.Position

for ii=8,25,3 do

wait()

for i=0,360,360/16 do 

local x = (ii) * math.sin(i) + Pos.x 

local y = Pos.y-4

local z = (ii)* math.cos (i) + Pos.z

local brick = Instance.new("Part") 

brick.Size=Vector3.new(1,1,1)

brick.Anchored=true

brick.BrickColor=BrickColor.new("Medium stone grey")

brick.Parent=Gourd

brick.CFrame = CFrame.new(x,y,z) 

brick.Touched:connect(sphit)

local mesh = Instance.new("SpecialMesh")

mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"

mesh.Parent = brick

mesh.Scale=Vector3.new(0.6, 3.4, 0.6)

Delay(0,function()

local p=brick

local m=mesh

Spin()

for i=1,10 do

m.Scale=m.Scale+Vector3.new(0,.25,0)

p.CFrame=p.CFrame*CFrame.new(0,0.25,0)

wait()

end

onOff = false

for i=1,10 do

p.Transparency=i/10

wait(0.05)

end

humanoid.WalkSpeed = 16

p:remove()

end)

end

for _,v in pairs(game.Players:GetPlayers()) do

if v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Pos).magnitude<ii then

sphit(v)

end

end

wait(0.08)

end

end

---------------------------------------Damage Functions-----------------------------------

function Hit1(p)

if not Allies[p.Parent.Name] then

Delay(0,function() 

p.Anchored=true

p.Name="Sand"

p.BrickColor=BrickColor.new("Medium stone grey")

for i=1,5 do

p.Transparency=0

wait(0.1)

end

p:remove()

end)

end

end

function sphit(h)

if h.Parent.Name == player.Name then 

return end

local hum = h.Parent:findFirstChild("Humanoid")

if hum ~= nil then

hum:TakeDamage(spdamage)

end

end

function hit(h)

if h.Parent.Name == player.Name then 

return end

local hum = h.Parent:findFirstChild("Humanoid")

if hum ~= nil then

hum:TakeDamage(damage)

end

end

-------------------------------------Controls for the moves----------------------------

function onKeyDown(key) 

kdown = true

key:lower() 

print(key) 

if key == "v" then ------Spikes

if aable then

aable = false

rs = player.Character.Torso["Right Shoulder"]

ls = player.Character.Torso["Left Shoulder"]

        local speed = rs.MaxVelocity

        for a = 1, 9 do

            rs.C0 = rs.C0 * CFrame.Angles(0,0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,-0.1,0)

        end

        rs.MaxVelocity = 0.7

        ls.MaxVelocity = 0.7

            for i = 1, 5 do

            wait()

            rs.DesiredAngle = 2.5

            ls.DesiredAngle = -2.5

        end 

        rs.MaxVelocity = 0

        ls.MaxVelocity = 0

wait(0.5)

        rs.MaxVelocity = 0.2

        ls.MaxVelocity = 0.2

  Spike()

            for i = 1, 80 do

            wait()

            rs.DesiredAngle = 1.2

            ls.DesiredAngle = -1.2

end 

            rs.DesiredAngle = 0

            ls.DesiredAngle = 0

        rs.MaxVelocity = speed

        ls.MaxVelocity = speed

        for a = 1, 9 do

            wait()

            rs.C0 = rs.C0 * CFrame.Angles(0,-0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,0.1,0)

        end 

        aable = true

        end

 elseif key == "c" then

 if aable then

aable = false

 rs = player.Character.Torso["Right Shoulder"]

ls = player.Character.Torso["Left Shoulder"]

        local speed = rs.MaxVelocity

        for a = 1, 9 do

            rs.C0 = rs.C0 * CFrame.Angles(0,0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,-0.1,0)

        end

        rs.MaxVelocity = 0.7

        ls.MaxVelocity = 0.7

            for i = 1, 5 do

            wait()

            rs.DesiredAngle = 2.5

            ls.DesiredAngle = -2.5

        end 

        rs.MaxVelocity = 0

        ls.MaxVelocity = 0

wait(0.5)

        rs.MaxVelocity = 0.2

        ls.MaxVelocity = 0.2

          local thrust = Instance.new("BodyVelocity")

  thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart

 thrust.velocity = Vector3.new(0,50,0)

 thrust.maxForce = Vector3.new(0,4e+050,0) 

 wait(0.12)

 Wave()

 thrust.Parent=nil

             for i = 1, 80 do

            wait()

            rs.DesiredAngle = 1.2

            ls.DesiredAngle = -1.2

end 

            rs.DesiredAngle = 0

            ls.DesiredAngle = 0

        rs.MaxVelocity = speed

        ls.MaxVelocity = speed

        for a = 1, 9 do

            wait()

            rs.C0 = rs.C0 * CFrame.Angles(0,-0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,0.1,0)

        end 

        aable = true

        end

        elseif key == "t" then ---- Teleport

        char:MoveTo(MousePos)

  elseif key == "f" then ----Platform

  

 local plat = Instance.new("Part") 

 plat.Parent = Workspace 

 plat.Size = Vector3.new(10,1,10) 

 plat.formFactor = "Symmetric" 

 plat.CFrame = char.Torso.CFrame *CFrame.new(0,-3.42,0) 

 plat.TopSurface = 0 

 plat.BottomSurface = 0 

 plat.Anchored = true 

 plat.BrickColor = BrickColor.new("Pastel Blue") 

 plat.Material = "Ice" 

 game:GetService("Debris"):AddItem(plat, 15) 

 while plat:IsDescendantOf(Workspace) do 

 wait() 

 plat.CFrame = char.Torso.CFrame*CFrame.new(0,-3.42,0) 

 end 

  

    elseif key == "b" then -----Rocks

        humanoid.WalkSpeed = 0

for i = 2,52 do 

wait() 

local boulder = Instance.new("Part") 

boulder.TopSurface = 0 

boulder.BottomSurface = 0 

boulder.Anchored = true 

boulder.BrickColor = BrickColor.new("Dark stone grey") 

boulder.Size = Vector3.new((i+math.random(-1,1)),(i+math.random(-1,1)),2) 

boulder.CFrame = crystal.CFrame * CFrame.new(0,0,-2*i) 

boulder.Velocity = boulder.CFrame.lookVector * 500 

boulder.Material = "Slate" 

boulder.Parent = game.Workspace 

boulder.Touched:connect(function(hitb) 

if hitb.Parent:findFirstChild("Humanoid") ~= nil and not Allies[hitb.Parent.Name]then 

hitb.Parent.Humanoid.PlatformStand = true 

wait(1.1)

hitb.Parent.Humanoid.PlatformStand = false

end 

end) 

game:GetService("Debris"):AddItem(boulder, .8) 

end 

humanoid.WalkSpeed = 16

  elseif key == "h" then -----Double jump

    char.Torso.Velocity = Vector3.new(char.Torso.Velocity.x, (char.Torso.Velocity.y / 2) + 100, char.Torso.Velocity.z)

    local shock = Instance.new("Part")

    shock.FormFactor = "Custom"

    shock.Size = Vector3.new(1, 1, 1)                   

        shock.BrickColor = BrickColor.new("Really blue")                       

        shock.Anchored = true                        

        shock.Name = "Shock Ring"                       

        shock.CanCollide = false                       

        shock.Parent = game.Workspace                       

        local mesh = Instance.new("SpecialMesh")                        

        mesh.MeshType = "FileMesh"                        

        mesh.MeshId = "http://www.roblox.com/Asset/?id=20329976"                        

        mesh.Scale = Vector3.new(1, 1, 1)                        

        mesh.Parent = shock                        

        shock.CFrame = CFrame.new(char.Torso.Position - Vector3.new(0, 2.5, 0))                        

        coroutine.resume(coroutine.create(function()                                

        for i = 0, 25 do                                      

        mesh.Scale = Vector3.new(i, i / 5, i)                                  

        shock.Transparency = 0               

        wait()                        

        end                            

        shock:Remove()          

        end))

  elseif key == "z" then ----Move change +

  mousefunc = mousefunc +1

  if (mousefunc == maxfunc+1) then

        mousefunc = minfunc

  end

  if mousefunc == 1 then

crystal.BrickColor = func1

end

if mousefunc == 2 then

crystal.BrickColor = func2

end

if mousefunc == 3 then

crystal.BrickColor = func3

end

if mousefunc == 4 then

crystal.BrickColor = func4

end

if mousefunc == 5 then

crystal.BrickColor = func5

end

if mousefunc == 6 then

crystal.BrickColor = func6

end

if mousefunc == 7 then

crystal.BrickColor = func7

end

  elseif key == "x" then  ----Move Changer -

  mousefunc = mousefunc -1

  if (mousefunc == minfunc-1) then

  mousefunc = maxfunc

end

if mousefunc == 1 then

crystal.BrickColor = func1

end

if mousefunc == 2 then

crystal.BrickColor = func2

end

if mousefunc == 3 then

crystal.BrickColor = func3

end

if mousefunc == 4 then

crystal.BrickColor = func4

end

if mousefunc == 5 then

crystal.BrickColor = func5

end

if mousefunc == 6 then

crystal.BrickColor = func6

end

if mousefunc == 7 then

crystal.BrickColor = func7

end

end

end

function onKeyUp(key) 

kdown = false

key:lower() 

end

-----------------------------------------------------------------------------

saber.Selected:connect(function(mouse)

modeld:Destroy()

Revolve(bsaber1, 0)

Revolve(bsaber2, math.pi*12)

cryweld = Instance.new("Weld",crystal)

cryweld.Part0 = crystal

cryweld.Part1 = saberh

cryweld.C0 = CFrame.new(0, -1.6, 0)

bglow1 = Instance.new("Weld", bsaber1)

bglow2 = Instance.new("Weld", bsaber2)

bglow1.Part0 = bsaber1

bglow2.Part0 = bsaber2

bglow1.Part1 = bsaber3

bglow2.Part1 = bsaber4

Gourd=char.Gourd

-------------------------------------Moves On Click-------------------------

mouse.Button1Down:connect(function()

mdown = true

if (mousefunc == 1) then

if aable then

aable = false

local tcon = saberh.Touched:connect(hit)

animate.Disabled = true

rs = player.Character.Torso["Right Shoulder"]

ls = player.Character.Torso["Left Shoulder"]

        local speed = rs.MaxVelocity

        for a = 1, 9 do

            rs.C0 = rs.C0 * CFrame.Angles(0,0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,-0.1,0)

        end

        rs.MaxVelocity = 0.7

        ls.MaxVelocity = 0.7

            for i = 1, 5, 1.25 do

            wait()

            rs.DesiredAngle = 2.5

            ls.DesiredAngle = -2.5

        end 

        rs.MaxVelocity = 0

        ls.MaxVelocity = 0

wait(0.2)

        rs.MaxVelocity = 0.2

        ls.MaxVelocity = 0.2

            for i = 1, 80,10 do

            wait()

            rs.DesiredAngle = 1.2

            ls.DesiredAngle = -1.2

end 

            rs.DesiredAngle = 0

            ls.DesiredAngle = 0

        rs.MaxVelocity = speed

        ls.MaxVelocity = speed

        for a = 1, 9 do

            wait()

            rs.C0 = rs.C0 * CFrame.Angles(0,-0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,0.1,0)

        end 

        animate.Disabled = false

        tcon:disconnect()

        aable = true

        end

  end

  if (mousefunc == 2) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func2

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0

    local r2 = Instance.new("Part")

    r2.BrickColor = func2

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

    a.Character.Humanoid.Health = a.Character.Humanoid.Health - damage

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)

    

    if a then

    if a.Character:findFirstChild("Humanoid") then

    a.Character.Humanoid.Health = a.Character.Humanoid.Health - damage

    end end end end end end 

  if (mousefunc == 3) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func3

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0

    local r2 = Instance.new("Part")

    r2.BrickColor = func3

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

    a.Character.Humanoid.PlatformStand = true

 wait(0.3)

local thrust = Instance.new("BodyVelocity")

 thrust.Parent = a.Character.PrimaryPart

 thrust.velocity = Vector3.new(0,50,0)

 thrust.maxForce = Vector3.new(0,4e+050,0) 

 wait(3)

thrust.Parent = nil

 a.Character.Humanoid.Sit = true

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)

    

    if a then

    if a.Character:findFirstChild("Humanoid") then

 a.Character.Humanoid.PlatformStand = true

 wait(0.3)

local thrust = Instance.new("BodyVelocity")

 thrust.Parent = a.Character.PrimaryPart

 thrust.velocity = Vector3.new(0,50,0)

 thrust.maxForce = Vector3.new(0,4e+050,0) 

 wait(3)

thrust.Parent = nil

 a.Character.Humanoid.Sit = true

    end end end end end end  

  if (mousefunc == 4) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func4

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0

    local r2 = Instance.new("Part")

    r2.BrickColor = func4

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

    local Force = Instance.new("BodyVelocity")

 Force.Parent = a.Character.Torso

 Force.Name = "Force"

 Force.maxForce = mouse.Target.Size * 10000

 Force.velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 999999

 wait(1)

 Force:remove()

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)

    

    if a then

    if a.Character:findFirstChild("Humanoid") then

    local Force = Instance.new("BodyVelocity")

 Force.Parent = a.Character.Torso

 Force.Name = "Force"

 Force.maxForce = mouse.Target.Size * 10000

 Force.velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 999999

 wait(1)

 Force:remove()

    end end end end end end  

        if (mousefunc == 5) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func5

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0

    local r2 = Instance.new("Part")

    r2.BrickColor = func5

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

i.Anchored = true

i.Friction = 0

i.Transparency = 0.3

i.Reflectance = 0.3

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)   

    if a then

    if a.Character:findFirstChild("Humanoid") then

i.Anchored = true

i.Friction = 0

i.Transparency = 0.3

i.Reflectance = 0.3

    end end end end end end  

        

        if (mousefunc == 6) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func6

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0.5

    local r2 = Instance.new("Part")

    r2.BrickColor = func6

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0.5

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

i.Anchored = false

i.Friction = 0.3

i.Transparency = 0

i.Reflectance = 0

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)   

    if a then

    if a.Character:findFirstChild("Humanoid") then

i.Anchored = false

i.Friction = 0.3

i.Transparency = 0

i.Reflectance = 0

    end end end end end end  

                if (mousefunc == 7) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((bsaber1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (bsaber1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((bsaber2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (bsaber2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = func7

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0.5

    local r2 = Instance.new("Part")

    r2.BrickColor = func7

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0.5

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

        local position = Instance.new("BodyPosition")

    position.Name = "Cysis"

    position.maxForce = Vector3.new(math.huge, math.huge, math.huge)

    position.P = 1000

    position.D = 50

    position.Parent = i

    position.position = crystal.Position + ((MousePos- crystal.Position).unit * 10)

            for i = 0, math.huge do

    if mdown == false then break end

    if char == nil then break end

    if humanoid == nil then break end

    if humanoid.Health <= 0 then break end

    if i ~= nil and position ~= nil then

    position.position = crystal.Position + ((MousePos - crystal.Position).unit * 10)

     end

     wait()

     end

    if position ~= nil then position:Remove() end

    if i ~= nil then

    if i.Parent:FindFirstChild("Humanoid") ~= nil then

    i.Parent.Humanoid.PlatformStand = false

    i.Parent.Humanoid.Sit = true

     end

     end

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)   

    if a then

    if a.Character:findFirstChild("Humanoid") then

        local position = Instance.new("BodyPosition")

    position.Name = "Cysis"

    position.maxForce = Vector3.new(math.huge, math.huge, math.huge)

    position.P = 1000

    position.D = 50

    position.Parent = i

    position.position = crystal.Position + ((MousePos- crystal.Position).unit * 10)

            for i = 0, math.huge do

    if mdown == false then break end

    if char == nil then break end

    if humanoid == nil then break end

    if humanoid.Health <= 0 then break end

    if i ~= nil and position ~= nil then

    position.position = crystal.Position + ((MousePos - crystal.Position).unit * 10)

     end

     wait()

     end

    if position ~= nil then position:Remove() end

    if i ~= nil then

    if i.Parent:FindFirstChild("Humanoid") ~= nil then

    i.Parent.Humanoid.PlatformStand = false

    i.Parent.Humanoid.Sit = true

        i.Parent.Humanoid.Jump = true

     end

     end

    end end end end end end  

end)

mouse.Button1Up:connect(function()

mdown = false

end)

mouse.Move:connect(function() onMove(mouse) end) 

mouse.KeyDown:connect(onKeyDown)

mouse.KeyUp:connect(onKeyUp)  

onOff = false

end)

-------------------------------------------------------------------------

saber.Deselected:connect(function()

modeld = CreateModel()

cryweld:Destroy()

end)

modeld = CreateModel()

if char:FindFirstChild("Animate") then

    animate = char.Animate

end

coroutine.wrap(function()

while char ~= nil do

pcall(function() CatchMsgConnection:disconnect() end)

pcall(function() CatchMsgConnection = game:service("Players").LocalPlayer.Chatted:connect(CatchMsg) end)

wait(5)

end

end)()