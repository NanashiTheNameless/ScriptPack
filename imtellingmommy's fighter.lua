local Player, Character, Mouse  = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse();
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local Camera = workspace.CurrentCamera
local canremove = false
local debounce = false
local Size = 1
_G.SongName = math.random(1,9025232)
sin = math.sin
Right_Leg.FormFactor                 = "Custom";
Left_Leg.FormFactor                        = "Custom";
rootPart.Archivable                 = true;
rootJoint.Archivable                 = true;
c_new                                                = CFrame.new;
c_angles                                        = CFrame.Angles;
i_new = Instance.new
Humanoid:ClearAllChildren();
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"
local holding = false 
isFalling = false
local val2 = 1
local val3 = 1
local Sitting = false
Jp = Humanoid.JumpPower*Size
ws = 16*Size/2
val = 1
local deb = false
drink = false
local deb2 = false
local deb3 = false
local deb5 = false
local deb6 = false
local Punch2 = false
local Raising = false
local Stomping = false
local Grabbing = false
 crawl = false
 local valz = false
 Character.Health:Destroy()
local Shielding = false
local Clap = false

Mouse.KeyDown:connect(function(key)
if key == "r" and Animations == false then
Animations = true

 phitboxz = Instance.new("Part", Character)
phitboxz.Size = Vector3.new(3,3,2.5)*Size
phitboxz.CanCollide = false
phitboxz.Transparency = 1
pweldz = Instance.new("Weld", Character)
pweldz.Part0 = phitboxz
pweldz.Part1 = Torso
pweldz.C0 = CFrame.new(0,.7*Size,0)

function onDamage(Part)
        if Part.Parent:FindFirstChild("Humanoid") ~= nil and Part.Parent.Name ~= Character.Name then
        w = Instance.new("Weld", Part.Parent.Torso)
        w.Part0 = Part.Parent.Torso
        w.Part1 = rootPart
        w.C0 = CFrame.new(0,0,-3*Size)*CFrame.Angles(0,math.rad(180),0)
        game.Debris:AddItem(w, 6)
        end
        wait(2)
end

phitboxz.Touched:connect(onDamage)

game.Debris:AddItem(phitboxz, 1)
wait()
for i = 1,20 do
Punch1 = true
Punch2 = false
wait(0.13)
Punch1 = false
Punch2 = true
wait(0.13)
end
Animations = false    
Punch2 = false
Punch1 = false
end
end)

Mouse.KeyDown:connect(function(key)
if key == "b" and Animations == false then
Grabbing = true
Animations = true
wait(2)
Grabbing = false
Clap = true
wait(.04)
local p = Instance.new("Part", workspace)
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.Shape = "Ball"
p.CanCollide = false
p.BrickColor = Torso.BrickColor
p.CFrame = Torso.CFrame
p.Material = "Neon"
local p2 = Instance.new("Part", workspace)
p2.Anchored = true
p2.CanCollide = false
p2.BrickColor = Torso.BrickColor
p2.Material = "Neon"
p2.CFrame = Torso.CFrame
game.Debris:AddItem(p2, 4)
game.Debris:AddItem(p, 2)
local boomesh = Instance.new("SpecialMesh", p2)
boomesh.MeshId = "http://www.roblox.com/Asset/?id=9982590"
spawn(function()
for i = 1,6 do
local ring = Instance.new("Part", Character)
ring.Anchored = true
ring.CFrame = Torso.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
ring.BrickColor  = Torso.BrickColor
ring.CanCollide = false
local ringmesh = Instance.new("SpecialMesh", ring)
ringmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
game.Debris:AddItem(ring, 4)
spawn(function()
for i = 0,50,0.2 do
ringmesh.Scale = ringmesh.Scale+Vector3.new(4*Size,4*Size,4*Size)
ring.Transparency = i/10
game:service'RunService'.RenderStepped:wait()
end
end)
end
end)

spawn(function()
for i = 0,50,0.2 do
p.Size = p.Size+Vector3.new(1.1*Size,1.1*Size,1.1*Size)
p.Transparency = i/10
boomesh.Scale = boomesh.Scale+Vector3.new(.9*Size,.9*Size,.9*Size)
p2.Transparency = i/10
game:service'RunService'.RenderStepped:wait()
end
end)
        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - tor.Position).magnitude <= 40*Size and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(25*Size)
                      torso.Parent.Humanoid.PlatformStand = true
                      local vel = Instance.new("BodyVelocity")
                      vel.maxForce = Vector3.new(9e999,9e999,9e999)
                      
    
 vel.Parent=torso

                      vel.Velocity = CFrame.new(Head.Position, torso.Position).lookVector*40*Size
                                            game:service'Debris':AddItem(vel, 1)
                else
                       --hi just some useless code here
                end
        end
  
  

wait(1)
Grabbing = false
Clap = false
Animations = false
end
end)

--[[Mouse.KeyDown:connect(function(key)
if key == "b" and valz == false then

currhealth = Humanoid.Health
maxh = Humanoid.MaxHealth

print(Shielding)
Shielding = true
valz = true
spawn(function()
while wait() do 
if Shielding == true then
Humanoid.MaxHealth = currhealth*10000
Humanoid.Health = maxh*10000
else
--lol
end
end
end)
    

elseif key == "b" and valz == true then
print(Shielding)
Shielding = false
valz = false
end
end)
 
--]]
    
Mouse.KeyDown:connect(function(key)
        if key:byte() == 48 then
                isSprinting = true
        end
        
        Mouse.KeyUp:connect(function(key2)
                if key:byte() == 48 then
                        isSprinting = false
                end
        end)
end)
 


Mouse.KeyDown:connect(function(key)
if key == "t" and val3 == 1 then
  drink = true
  Animations = true
  val3 = val3+1
  elseif key == "t" and val3 == 2 then
  drink = false
  Animations = false
  val3 = 1
  end
  end)

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
        wld = Instance.new("Weld", wp1)
        wld.Part0 = wp0
        wld.Part1 = wp1
        wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
        return wld
end
 
function noOutline(part)
        Part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
 
local function Part(Color, Material, Transparency,Shape, Size, CFrame,CanCollide,Anchored,parent)
        local partie = i_new("Part",parent)
        partie.BrickColor = BrickColor.new(Color)
        partie.Material = Material
        partie.Shape = Shape
        partie.Transparency = Transparency
        partie.Size = Size
        partie.CFrame = CFrame
        partie.CanCollide = CanCollide
        partie.Anchored = Anchored
        return partie
end
        
 
 
function swait(num)
        if num == 0 or num == nil then
                game:GetService("RunService").RenderStepped:wait()
        else
                for i = 0, num do
                        game:GetService("RunService").RenderStepped:wait()
                end
        end
end
 
Humanoid.FreeFalling:connect(function(falling)
if falling then
isFalling = true
elseif not falling then
isFalling = false
end
end)
 
function mesh(Mesh, part, meshtype, meshid, offset, scale)
        local mesh = i_new(Mesh)
        mesh.Parent = part
        if Mesh == "SpecialMesh" then
                mesh.MeshType = meshtype
                mesh.MeshId = meshid
        end
        mesh.Offset = offset
        mesh.Scale = scale
        return mesh
end


function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
        return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end
 
function QuaternionFromCFrame(cf) 
        local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
        local trace = m00 + m11 + m22 
        if trace > 0 then 
                local s = math.sqrt(1 + trace) 
                local recip = 0.5/s 
                return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
        else 
                local i = 0 
                if m11 > m00 then
                        i = 1
                end
                if m22 > (i == 0 and m00 or m11) then 
                        i = 2 
                end 
                if i == 0 then 
                        local s = math.sqrt(m00-m11-m22+1) 
                        local recip = 0.5/s 
                        return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                elseif i == 1 then 
                        local s = math.sqrt(m11-m22-m00+1) 
                        local recip = 0.5/s 
                        return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                elseif i == 2 then 
                        local s = math.sqrt(m22-m00-m11+1) 
                        local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                end 
        end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
        local xs, ys, zs = x + x, y + y, z + z 
        local wx, wy, wz = w*xs, w*ys, w*zs 
        local xx = x*xs 
        local xy = x*ys 
        local xz = x*zs 
        local yy = y*ys 
        local yz = y*zs 
        local zz = z*zs 
        return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
        local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
        local startInterp, finishInterp; 
        if cosTheta >= 0.0001 then 
                if (1 - cosTheta) > 0.0001 then 
                        local theta = math.acos(cosTheta) 
                        local invSinTheta = 1/math.sin(theta) 
                        startInterp = math.sin((1-t)*theta)*invSinTheta 
                        finishInterp = math.sin(t*theta)*invSinTheta  
                else 
                        startInterp = 1-t 
                        finishInterp = t 
                end 
        else 
                if (1+cosTheta) > 0.0001 then 
                        local theta = math.acos(-cosTheta) 
                        local invSinTheta = 1/math.sin(theta) 
                        startInterp = math.sin((t-1)*theta)*invSinTheta 
                        finishInterp = math.sin(t*theta)*invSinTheta 
                else 
                        startInterp = t-1 
                        finishInterp = t 
                end 
        end 
        return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)} 
        local ax, ay, az = a.x, a.y, a.z 
        local bx, by, bz = b.x, b.y, b.z
        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end
 
 Mouse.KeyDown:connect(function(key)
 if key == "f" and Animations == false and isFalling == false and Humanoid.Jump == false then
 Raising = true
 Animations = true
 wait(0.5)
 Raising = false
 Stomping = true
 local tor = Torso
 spawn(function()
 local x,y,z = Torso.CFrame:toEulerAnglesXYZ()
local ring = Instance.new("Part", Character)
ring.Anchored = true
ring.CFrame = rootPart.CFrame * CFrame.new(0,-2.5*Size,0)*CFrame.Angles(math.rad(-90),0,0)
ring.BrickColor  = BrickColor.new("Camo")
ring.CanCollide = false
local ringmesh = Instance.new("SpecialMesh", ring)
ringmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
game.Debris:AddItem(ring, 1)
spawn(function()
for i = 0,100,0.2 do
ringmesh.Scale = ringmesh.Scale+Vector3.new(0.7*Size,0.7*Size,0.7*Size)
wait()
end
end)
spawn(function()
for i = 1,12 do
ring.Transparency = i/12.1
wait()
end
end)
end)

        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso")
                if torso and (torso.Position - tor.Position).magnitude <= 10*Size and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(30*Size)
                      torso.Parent.Humanoid.PlatformStand = true
                      local vel = Instance.new("BodyVelocity")
                      vel.maxForce = Vector3.new(9e999,9e999,9e999)
                      vel.Velocity = CFrame.new(Head.Position, torso.Position).lookVector*30*Size
                      vel.Parent=torso
                      game:service'Debris':AddItem(vel, 0.267)
                else
                       --hi just some useless code here
                end
        end
  
  




 wait(0.4)
 Animations = false
 Stomping = false
 end
 end)
 
  Mouse.KeyDown:connect(function(key)
 if key == "q" and deb5 == false and Animations == false then
 deb5 = true
 Punch2 = true
 Animations = true
 
 phitbox2 = Instance.new("Part", Character)
phitbox2.Size = Vector3.new(2.5,3,2.5)*Size
phitbox2.CanCollide = false
phitbox2.Transparency = 1
pweld2 = Instance.new("Weld", Character)
pweld2.Part0 = phitbox2
pweld2.Part1 = Left_Arm
pweld2.C0 = CFrame.new(0,.7*Size,0)

function onDamage(Part)
        if Part.Parent:FindFirstChild("Humanoid") ~= nil and Part.Parent.Name ~= Character.Name and deb6 == false then
        deb6 = true
       Part.Parent.Humanoid:TakeDamage(10*Size)
        end
        wait(2)
        deb6 = false
end

phitbox2.Touched:connect(onDamage)

 wait(0.2)
 phitbox2:Destroy()
 Punch2 = false
 Animations = false
 wait(0.03)
 deb5 = false
 end
 end)
 
 
 Mouse.KeyDown:connect(function(key)
 if key == "e" and deb3 == false and Animations == false     then
 deb3 = true
 Punch1 = true
 Animations = true
 
 phitbox = Instance.new("Part", Character)
phitbox.Size = Vector3.new(2.5,3,2.5)*Size
phitbox.CanCollide = false
phitbox.Transparency = 1
pweld = Instance.new("Weld", Character)
pweld.Part0 = phitbox
pweld.Part1 = Right_Arm
pweld.C0 = CFrame.new(0,.7*Size,0)

function onDamage(Part)
        if Part.Parent:FindFirstChild("Humanoid") ~= nil and Part.Parent.Name ~= Character.Name and deb4 == false then
        deb4 = true
       Part.Parent.Humanoid:TakeDamage(10*Size)
       Part.Parent.Humanoid.PlatformStand = true
        end
        wait(2)
        deb4 = false
end

phitbox.Touched:connect(onDamage)

 wait(0.2)
 phitbox:Destroy()
 Punch1 = false
 Animations = false
 wait(0.03)
 deb3 = false
 end
 end)
 
 Mouse.KeyDown:connect(function(key3)
 
        if key3 == "z" and deb == false and Animations == false then
        deb = true
Kicking = true
Animations = true
Humanoid.WalkSpeed = 2
Humanoid.JumpPower = 0

hitbox = Instance.new("Part", Character)
hitbox.Size = Vector3.new(1.5,2.7,1.5)*Size
hitbox.CanCollide = false
hitbox.Transparency = 1
hweld = Instance.new("Weld", Character)
hweld.Part0 = hitbox
hweld.Part1 = Right_Leg
hweld.C0 = CFrame.new(0,.7*Size,0)

function onDamage(Part)
        if Part.Parent:FindFirstChild("Humanoid") ~= nil and Part.Parent.Name ~= Character.Name and deb2 == false then
        deb2 = true
       Part.Parent.Humanoid:TakeDamage(20*Size)
       Part.Parent.Humanoid.PlatformStand = true
       Part.Parent.Torso.Velocity = Torso.CFrame.rightVector*50
        end
        wait(2)
        deb2 = false
end

hitbox.Touched:connect(onDamage)
wait(0.2)
hitbox:Destroy()
Kicking = false
Animations = false
Humanoid.WalkSpeed = 8
Humanoid.JumpPower = Jp
wait(.6)
deb = false
end
end)

wait()
function bigger (char, S)
 tor = char.Torso
 larm = char["Left Arm"]
 rarm = char["Right Arm"]
 lleg = char["Left Leg"]
 rleg = char["Right Leg"]
 head = char.Head
 root = char.HumanoidRootPart
 hum = char.Humanoid
 
 tor.Size = tor.Size*S
 larm.Size = larm.Size*S
 rarm.Size = rarm.Size*S
 lleg.Size = lleg.Size*S
 rleg.Size = rleg.Size*S
 root.Size = root.Size*S
 hum.HipHeight = hum.HipHeight*S
 hum.JumpPower = hum.JumpPower*S/1.1
 head.Mesh.Scale = head.Mesh.Scale*S
  hum.MaxHealth = 500*S
  print(hum.MaxHealth)
 for i,v in pairs (char:children()) do
 if v:IsA("Hat") then
     v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
     
                local yInc = (S-1)*.5
                v.AttachmentPos = (v.AttachmentPos * S) - (v.AttachmentUp * Vector3.new(yInc,yInc,yInc))

 
 end
 end
LA_Weld = newWeld(Torso, Left_Arm, -1.5*S, 0.5*S, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5*S, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5*S, 0.5*S, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5*S, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5*S, -1*S, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1*S, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5*S, -1*S, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1*S, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1*S, 0)
Torso.Weld.C1 = CFrame.new(0, -1*S, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5*S, 0)
end
 
bigger(Character, Size)
 
sine = 0
change = 1
--[[
hitbox = Instance.new("Part", Character)
hitbox.Size = Vector3.new(1.1,.8,1.1)*Size
hitbox.TopSurface = 0
hitbox.BottomSurface = 0
hitbox.BrickColor = BrickColor.new("Really black")
hitbox.CanCollide = true
hitbox.CFrame = CFrame.new(10,10,10)
mesh = Instance.new("SpecialMesh", hitbox)
mesh.MeshId = "rbxassetid://12221758"
mesh.Scale = Vector3.new(.6,.4,1.15)*Size
hweld = Instance.new("Weld", Character)
hweld.Part0 = hitbox
hweld.Part1 = Right_Arm
hweld.C0 = CFrame.new(0,0,0)

hitbox2 = Instance.new("Part", Character)
hitbox2.Size = Vector3.new(1.05,1,1.05)*Size
hitbox2.CanCollide = false
hitbox2.BrickColor = BrickColor.new("Really red")
hweld2 = Instance.new("Weld", Character)
hweld2.Part0 = hitbox2
hweld2.Part1 = Right_Arm
hweld2.C0 = CFrame.new(0,0,0)

hitbox3 = Instance.new("Part", Character)
hitbox3.Size = Vector3.new(3,.1,.3)*Size
hitbox3.TopSurface = 0
hitbox3.BottomSurface = 0
hitbox3.BrickColor = BrickColor.new("Crimson")
hitbox3.CanCollide = true
hitbox3.CFrame = CFrame.new(10,10,10)
mesh2 = Instance.new("SpecialMesh", hitbox3)
mesh2.MeshId = "rbxassetid://12221758"
mesh2.Scale = Vector3.new(.7,.3,.6)*Size
hweld3 = Instance.new("Weld", Character)
hweld3.Part0 = hitbox3
hweld3.Part1 = Right_Arm
hweld3.C0 = CFrame.new(0,0,0)

blades = Instance.new("Part", Character)
blades.CFrame = CFrame.new(10,10,10)
blades.CanCollide = false
blades.BrickColor = BrickColor.new("Royal purple")
m = Instance.new("SpecialMesh", blades)
        m.MeshId = "http://www.roblox.com/asset/?id=47260990"
m.Scale = Vector3.new(1.2,.9,1.2)*Size
hweld4 = Instance.new("Weld", Character)
hweld4.Part0 = blades
hweld4.Part1 = hitbox3
hweld4.C0 = CFrame.new(0,0,-.6*Size) * CFrame.Angles(0,math.rad(90),0)


blades2 = Instance.new("Part", Character)
blades2.CFrame = CFrame.new(10,10,10)
blades2.CanCollide = false
blades2.BrickColor = BrickColor.new("Royal purple")
m2 = Instance.new("SpecialMesh", blades2)
        m2.MeshId = "http://www.roblox.com/asset/?id=47260990"
m2.Scale = Vector3.new(1.2,.9,1.2)*Size
hweld5 = Instance.new("Weld", Character)
hweld5.Part0 = blades2
hweld5.Part1 = hitbox3
hweld5.C0 = CFrame.new(0,0,.6*Size) * CFrame.Angles(0,math.rad(90),0)

--]]
 spawn(function()
 
 while wait(.7) do
 spawn(function()
 while wait(5) do
 _G.currentHealth = Humanoid.Health
 end
 end)
 if Humanoid.Health >= _G.currentHealth then
 Humanoid.Health = Humanoid.Health+Humanoid.MaxHealth/20
 end
 end
 end)
 
 
game:GetService("RunService").Stepped:connect(function()
--Camera.CameraSubject = Torso
        Angle = (Angle % 100) + angleSpeed/10
        Axis = (Axis % 100) + axisSpeed/10
        walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
        jumpVel = Torso.Velocity.Y
        sine = change + sine
 
        if (Humanoid.Jump) and jumpVel > 1 then
                currentAnim = "Jumping"
        elseif walkingMagnitude < 2 then
                currentAnim = "Idling"
        elseif isSprinting == true then
                currentAnim = "Sprinting"
        elseif walkingMagnitude > 2 then
                isSprinting = false
                currentAnim = "Walking"
        elseif isAttacking == true then
                currentAnim = "Attacking"
        end
 
 
        if currentAnim == "Jumping" and Animations == false then
                angleSpeed = 2
                axisSpeed = 2
                change = 0.5
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(10)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(-5)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(5)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(9), math.rad(0), math.rad(0)), 0.15)  
  

       elseif isFalling == true and Animations == false then
                angleSpeed = 2
                axisSpeed = 2
                change = 0.5
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(50)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-50)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, -0.5*Size) * c_angles(math.rad(-20), math.rad(0), math.rad(-0)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, -0.5*Size) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)    
 
        elseif currentAnim == "Idling" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                change = 0.5

                        RA_Weld.C0            = clerp(RA_Weld.C0, c_new(1.2*Size, .4*Size+.03*math.sin(tick()*1.2)*Size, -.3*Size) * c_angles(math.rad(125)+math.rad(8*math.sin(tick()*0.5)), math.rad(0), math.rad(-30)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, .6*Size*0.03*math.sin(tick()*1.2)*Size, -.3*Size) * c_angles(math.rad(140)+math.rad(5*math.sin(tick()*0.3)), math.rad(0), math.rad(35)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size+-0.03*math.sin(tick()*2)*Size, 0) * c_angles(math.rad(0),math.rad(-35),0)*c_angles(math.rad(-12)+math.rad(-7*math.sin(tick()/4)), math.rad(0), math.rad(-3)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size+-0.03*math.sin(tick()*2)*Size, 0)* c_angles(math.rad(0),math.rad(-35),0)* c_angles(math.rad(12), math.rad(0), math.rad(10)+math.rad(2*math.sin(tick()/3))), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+0.03*math.sin(tick()*2)*Size, 0*Size) * c_angles(math.rad(0), math.rad(35), math.rad(0)), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(9), math.rad(-35), math.rad(0)), 0.15)    
                
        elseif currentAnim == "Sprinting" and Animations == false then
                angleSpeed = 1        
                axisSpeed = 1
                Humanoid.WalkSpeed = 32*Size
                RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(9)), 0.15)
                LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) *
                c_angles(math.rad(0), math.rad(0), math.rad(-9)), 0.15)
                LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size    , 0) * c_angles(math.rad(-10),0,0)*c_angles(math.rad(90*math.sin(tick()*8)), math.rad(0), math.rad(0)), 0.15)
                RL_Weld.C0  = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0)* c_angles(math.rad(-10),0,0) * c_angles(math.rad(-90*math.sin(tick()*8)), math.rad(0), math.rad(0)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(-15), math.rad(4*math.sin(tick()*15)), math.sin(rootPart.RotVelocity.y/20)/1.15), 0.15)
                Head_Weld.C0         = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)        
 
        elseif currentAnim == "Walking" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                Humanoid.WalkSpeed = 16*Size
                        RA_Weld.C0            = clerp(RA_Weld.C0, c_new(1*Size, 0.5*Size, -.3*Size) * c_angles(math.rad(110), math.rad(0), math.rad(-30)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1*Size, 0.5*Size, -.3*Size) * c_angles(math.rad(130), math.rad(0), math.rad(10)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size+-0.03*math.sin(tick())*Size, 0) * c_angles(math.rad(-10)+math.rad(60*math.sin(tick()*8)),math.rad(0),math.rad(-5*math.sin(tick()*6)))*c_angles(math.rad(0),math.rad(0),0)*c_angles(math.rad(0), math.rad(-10), math.rad(0)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size+-0.03*math.sin(tick())*Size, 0)* c_angles(math.rad(-60*math.sin(tick()*8)),math.rad(0),math.rad(5*math.sin(tick()*6)))*c_angles(math.rad(-10),math.rad(0),0)* c_angles(math.rad(0), math.rad(-10), math.rad(0)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+0.03*math.sin(tick())*Size, 0*Size) * c_angles(math.rad(0), math.rad(10),  math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(-10), math.rad(0)), 0.15)    

        elseif Raising == true then
        
                        RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(180), math.rad(0), math.rad(10)), 0.43)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(180), math.rad(0), math.rad(-10)), 0.43)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-20), math.rad(0), math.rad(-5)), 0.43)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -.35*Size, -0.6*Size) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.43)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.43)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(9), math.rad(0), math.rad(0)), 0.43)  
  
  elseif Stomping == true then
          
                        RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(20)), 0.53)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-20)), 0.53)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(5), math.rad(0), math.rad(0)), 0.53)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, -0.2*Size) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.53)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(-5), math.rad(0), math.rad(0)), 0.53)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(9), math.rad(0), math.rad(0)), 0.53)  
  
       elseif Grabbing == true then
       
                     angleSpeed = 2
                axisSpeed = 2
                change = 0.5
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(90)), 0.1)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-90)), 0.1)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(-15)), 0.1)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(15)), 0.1)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.1)    

       elseif Clap == true then
       
              
                     angleSpeed = 2
                axisSpeed = 2
                change = 0.5
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.2*Size, 0.5*Size, -0.5*Size) * c_angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, 0.5*Size, -0.5*Size) * c_angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-5), math.rad(0), math.rad(-5)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(5)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)    

       elseif Punch2 == true then
       
                RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.2*Size, .3*Size, -.6*Size) * c_angles(math.rad(90), math.rad(0), math.rad(-50)), 0.5)
                
                       LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.7*Size, -0.25*Size) * c_angles(math.rad(0), math.rad(-35), math.rad(-110)), 0.5)
                       
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(-5), math.rad(-90), math.rad(0)), 0.5)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, -0.2*Size) * c_angles(math.rad(-20), math.rad(90), math.rad(0)), 0.35)    

     elseif Punch1 == true then
     
     
     -- First Punch (All C1, Lasts 3 Frames)
                       RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.7*Size, -0.25*Size) * c_angles(math.rad(0), math.rad(35), math.rad(110)), 0.5)
                       
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, .3*Size, -.6*Size) * c_angles(math.rad(90), math.rad(0), math.rad(50)), 0.5)
                
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(-5), math.rad(90), math.rad(0)), 0.5)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, -0.2*Size) * c_angles(math.rad(-20), math.rad(-90), math.rad(0)), 0.35)    

    elseif Kicking == true then
    
                  RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0) * c_angles(math.rad(110), math.rad(0), math.rad(-40)), 0.6)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, 0.5*Size, 0) * c_angles(math.rad(110), math.rad(0), math.rad(40)), 0.6)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(-45)), 0.6)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(100)), 0.6)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(45), math.rad(90), math.rad(0)), 0.6)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(-90), math.rad(0)), 0.6)    

                end
end)

