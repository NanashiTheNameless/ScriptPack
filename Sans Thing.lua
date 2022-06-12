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
dabbing = false
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
local Punch1 = false
local Raising = false
local Stomping = false
local Grabbing = false
 crawl = false
 local valz = false
 Character.Health:Destroy()
local Shielding = false
local Clap = false
local combo = 1
local Charge1 = false
local Charge2 = false
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
if key == "f" and Animations == false then
Charge = true
Animations = true
wait(1)
Charge = false
Animations = false
end
end)

local z = -8
local Finger = false 
local Finger2 = false
Mouse.Button1Down:connect(function()
if combo == 1 and Animations == false then
Finger = true
Animations = true
local audio = Instance.new("Sound", Left_Arm)
audio.SoundId = "rbxassetid://242076158"
audio.Volume = 4
audio:Play()
wait(0.4)
        local ray = Ray.new(Left_Arm.CFrame.p, (Mouse.Hit.p - Left_Arm.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRay(ray, Character, false, true)
 
                local beam = Instance.new("Part", Character)
                --beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                --beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
                 game:GetService("Debris"):AddItem(beam, 0.6)

                local distance = (Left_Arm.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.4*Size,0.4*Size, distance)
                beam.CFrame = CFrame.new(Left_Arm.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0,0,math.random(1,360))
                spawn(function()
                for i = 0,1,0.08 do
                beam.Transparency = i*2
                beam.Size = beam.Size+Vector3.new(1,1,0)*Size
                wait()
                end
                end)
                spawn(function()
                local p = Instance.new("Part", Character)
                local audio2 = Instance.new("Sound", p)
audio2.SoundId = "rbxassetid://287142895"
audio2.Volume = 4
audio2:Play()
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = beam.CFrame*CFrame.new(0,0, -beam.Size.Z/2)
                p.Anchored = true
                p.Material = "Neon"
                p.CanCollide = false
                game.Debris:AddItem(p, 0.6)
                        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - p.Position).magnitude <= 15*Size/2 and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(math.random(10,30)*Size)
                     -- torso.Parent.Humanoid.PlatformStand = true
             end
             end
                for i = 0,1,0.05 do
                p.Size = p.Size + Vector3.new(1.5,1.5,1.5)*Size
                p.Transparency = i*2
                wait()
                end
                end)
                
                Finger = false
                Animations = false
                combo = combo+1
                elseif combo == 2 and Animations == false then
              Finger2 = true
              Animations = true
local audio = Instance.new("Sound", Right_Arm)
audio.SoundId = "rbxassetid://242076158"
audio.Volume = 4
audio:Play()
wait(0.4)
        local ray = Ray.new(Right_Arm.CFrame.p, (Mouse.Hit.p - Right_Arm.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRay(ray, Character, false, true)
 
                local beam = Instance.new("Part", Character)
                --beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                --beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
                                game:GetService("Debris"):AddItem(beam, 0.6)
                local distance = (Right_Arm.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.4*Size,0.4*Size, distance)
                beam.CFrame = CFrame.new(Right_Arm.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0,0,math.random(1,360))
                spawn(function()
                for i = 0,1,0.08 do
                beam.Transparency = i*2
                beam.Size = beam.Size+Vector3.new(1,1,0)*Size
                wait()
                end
                end)
                spawn(function()
                local p = Instance.new("Part", Character)
                local audio2 = Instance.new("Sound", p)
audio2.SoundId = "rbxassetid://287142895"
audio2.Volume = 4
audio2:Play()
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = beam.CFrame*CFrame.new(0,0, -beam.Size.Z/2)
                p.Anchored = true
                p.Material = "Neon"
                p.CanCollide = false
                                game.Debris:AddItem(p, 0.6)

                        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - p.Position).magnitude <= 15*Size and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(math.random(10,20)*Size)
                     -- torso.Parent.Humanoid.PlatformStand = true
             end
             end
                for i = 0,1,0.05 do
                p.Size = p.Size + Vector3.new(1.5,1.5,1.5)*Size
                p.Transparency = i*2
                wait()
                end
                end)
                
                Finger2 = false
                Animations = false
                combo = combo+1
                elseif combo == 3 and Animations == false then
                Finger = true
Animations = true
local audio = Instance.new("Sound", Left_Arm)
audio.SoundId = "rbxassetid://242076158"
audio.Volume = 4
audio:Play()
wait(0.4)
for i = 1,3 do

z = z+(i*2.6)
b = z*Size
        local ray = Ray.new(Head.CFrame.p, (Mouse.Hit.p - Head.CFrame.p+Vector3.new(b,2,0)).unit * 300)
                local part, position = workspace:FindPartOnRay(ray, Character, false, true)
 
                local beam = Instance.new("Part", Character)
                --beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                --beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
                 game:GetService("Debris"):AddItem(beam, 0.6)

                local distance = (Head.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.4*Size,0.4*Size, distance)
                beam.CFrame = CFrame.new(Head.CFrame.p+Vector3.new(b,2,0), position) * CFrame.new(Head.CFrame.p+Vector3.new(b,2,0), 0, -distance / 2) * CFrame.Angles(0,0,math.random(1,360))
                spawn(function()
                for i = 0,1,0.08 do
                beam.Transparency = i*2
                beam.Size = beam.Size+Vector3.new(1,1,0)*Size
                wait()
                end
                end)
                spawn(function()
                local p = Instance.new("Part", Character)
                local audio2 = Instance.new("Sound", p)
audio2.SoundId = "rbxassetid://287142895"
audio2.Volume = 4
audio2:Play()
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = beam.CFrame*CFrame.new(0,0, -beam.Size.Z/2)
                p.Anchored = true
                p.Material = "Neon"
                p.CanCollide = false
                                game.Debris:AddItem(p, 0.6)

                        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - p.Position).magnitude <= 15*Size/2 and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(math.random(10,20)*Size)
                     -- torso.Parent.Humanoid.PlatformStand = true
             end
             end
                for i = 0,1,0.05 do
                p.Size = p.Size + Vector3.new(1.5,1.5,1.5)*Size
                p.Transparency = i*2
                wait()
                end
                end)
            end
            z = -8
                Finger = false
                Animations = false
                combo = combo+1
                elseif combo == 4 then
                              Finger2 = true
              Animations = true
local audio = Instance.new("Sound", Right_Arm)
audio.SoundId = "rbxassetid://242076158"
audio.Volume = 4
audio:Play()
wait(0.4)
for i = 1,15 do
--Vector3.new(math.random(-20,20),math.random(20,30),0)
        local ray = Ray.new(Head.CFrame.p, (Mouse.Hit.p - Head.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {Character})
 
                local beam = Instance.new("Part", Character)
                --beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                beam.Name = "beem"
                --beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
                                game:GetService("Debris"):AddItem(beam, 0.6)
                local distance = (Head.CFrame.p+Vector3.new(math.random(-20,20),math.random(5,30),0) - position).magnitude
                beam.Size = Vector3.new(0.4*Size,0.4*Size, distance)
                beam.CFrame = CFrame.new(Head.CFrame.p+Vector3.new(math.random(-40,40),math.random(7,50),0) , position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0,0,math.random(1,360))
                spawn(function()
                for i = 0,1,0.08 do
                beam.Transparency = i*2
                beam.Size = beam.Size+Vector3.new(1,1,0)*Size
                wait()
                end
                end)
                spawn(function()
                local p = Instance.new("Part", Character)
                local audio2 = Instance.new("Sound", p)
audio2.SoundId = "rbxassetid://287142895"
audio2.Volume = 4
audio2:Play()
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = beam.CFrame*CFrame.new(0,0, -beam.Size.Z/2)
                p.Anchored = true
                p.Material = "Neon"
                p.CanCollide = false
                                game.Debris:AddItem(p, 0.9)

                        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - p.Position).magnitude <= 15*Size and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(math.random(10,20)*Size)
                     -- torso.Parent.Humanoid.PlatformStand = true
             end
             end
                for i = 0,1,0.05 do
                p.Size = p.Size + Vector3.new(1.5,1.5,1.5)*Size
                p.Transparency = i*2
                wait()
                end
                end)
                wait()
                end
                
                Finger2 = false
                Animations = false
                combo = combo+1
                elseif combo == 5 then
                              Finger2 = true
              Animations = true
local audio = Instance.new("Sound", Right_Arm)
audio.SoundId = "rbxassetid://242076158"
audio.Volume = 4
audio:Play()
wait(0.4)
for i = 1,5 do
--Vector3.new(math.random(-20,20),math.random(20,30),0)
        local ray = Ray.new(Vector3.new(math.random(-20,20),20,math.random(-20,20)), (Vector3.new(math.random(-20,20),20,math.random(-20,20)) - Head.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {Character})
 
                local beam = Instance.new("Part", Character)
                --beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                beam.Name = "beem"
                --beam.Transparency = 0.25
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
                                game:GetService("Debris"):AddItem(beam, 0.6)
                local distance = (Vector3.new(math.random(-20,20),20,math.random(-20,20)) - position).magnitude
                beam.Size = Vector3.new(0.4*Size,0.4*Size, distance)
                beam.CFrame = CFrame.new(Vector3.new(math.random(-20,20),20,math.random(-20,20)) , position) * CFrame.new(0, 0, -distance / 2) * CFrame.Angles(0,0,math.random(1,360))
                spawn(function()
                for i = 0,1,0.08 do
                beam.Transparency = i*2
                beam.Size = beam.Size+Vector3.new(1,1,0)*Size
                wait()
                end
                end)
                spawn(function()
                local p = Instance.new("Part", Character)
                local audio2 = Instance.new("Sound", p)
audio2.SoundId = "rbxassetid://287142895"
audio2.Volume = 4
audio2:Play()
                p.TopSurface = 0
                p.BottomSurface = 0
                p.CFrame = beam.CFrame*CFrame.new(0,0, -beam.Size.Z/2)
                p.Anchored = true
                p.Material = "Neon"
                p.CanCollide = false
                                game.Debris:AddItem(p, 0.9)

                        for i,v in pairs(game.Workspace:GetChildren()) do
        torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
                if torso and (torso.Position - p.Position).magnitude <= 15*Size and torso.Parent.Name ~= Character.Name then
                      torso.Parent.Humanoid:TakeDamage(math.random(10,20)*Size)
                     -- torso.Parent.Humanoid.PlatformStand = true
             end
             end
                for i = 0,1,0.05 do
                p.Size = p.Size + Vector3.new(1.5,1.5,1.5)*Size
                p.Transparency = i*2
                wait()
                end
                end)
                wait()
                end
                
                Finger2 = false
                Animations = false
                combo = 1
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

local scale = S
scale = scale^-1
function scaleCF(cf, n)
    local comp = {cf:components()}
    local matrix = {}
    for i = 4, #comp do
        matrix[i-3] = comp[i]
    end
    return CFrame.new(comp[1]/n, comp[2]/n, comp[3]/n, unpack(matrix))end
--[[for _, v in pairs(Character.Head:GetChildren()) do
    if v:IsA("Attachment") then
        v.Position = v.Position / scale
    elseif v:IsA("SpecialMesh") and v.Parent. then
        v.Scale = v.Scale / scale
        v.Offset = v.Offset / scale
    end
    end--]]
for _, a in pairs(Character:GetChildren()) do
    if a:IsA("Accoutrement") then
        for _, v in pairs(a.Handle:GetChildren()) do
            if v:IsA("Weld") then
                v.C0 = scaleCF(v.C0, scale)
                v.C1 = scaleCF(v.C1, scale)
            elseif v:IsA("Attachment") then
                v.Position = v.Position / scale
            elseif v:IsA("SpecialMesh") and v.Parent.Name ~= "Head" then
                v.Scale = v.Scale / scale
                v.Offset = v.Offset / scale
            end
        end
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
m2 = Instance.new("SpecialMesh", Right_Arm)
        m2.MeshId = "http://www.roblox.com/asset/?id=32328563"
        --32328397m2.TextureId = "http://www.roblox.com/asset/?id=21465353"
         m2.Scale = Vector3.new(1.2,1.2,1.2)*Size

m3 = Instance.new("SpecialMesh", Left_Arm)
        m3.MeshId = "http://www.roblox.com/asset/?id=32328397"
        --m3.TextureId = "http://www.roblox.com/asset/?id=21465353"
        m3.Scale = Vector3.new(1.2,1.2,1.2)*Size
        
        --]]
 spawn(function()
 
 while wait(1.5) do
 spawn(function()
 while wait(5) do
 _G.currentHealth = Humanoid.Health
 end
 end)
 if Humanoid.Health >= _G.currentHealth then
 Humanoid.Health = Humanoid.Health+Humanoid.MaxHealth/30
 end
 end
 end)
 
 
game:GetService("RunService").Stepped:connect(function()
Camera.CameraSubject = Torso
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

                        RA_Weld.C0            = clerp(RA_Weld.C0, c_new(1.2*Size, 0.3*Size+-0.02*math.sin(tick()),0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, 0.3*Size+-0.05*math.sin(tick()/1.5),0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(40)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size-0.05*math.asin(math.cos(tick()*1.5)), 0) * c_angles(math.rad(0),math.rad(15),math.rad(-5)), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size-0.05*math.asin(math.cos(tick()*1.5)), 0)* c_angles(math.rad(0),math.rad(-15),math.rad(5)), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -0.9*Size+0.05*math.asin(math.cos(tick()*1.5)), 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(-10), math.rad(0)), 0.15)    
                


        elseif currentAnim == "Sprinting" and Animations == false then
                angleSpeed = 1        
                axisSpeed = 1
                Humanoid.WalkSpeed = 42*Size
                
                       RA_Weld.C0            = clerp(RA_Weld.C0, c_new(1.2*Size, 0.35*Size,0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, 0.35*Size,0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(40)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -0.8*Size+(math.cos(sine/2)/2)*Size, -0.1*Size+(math.sin(sine/2)*0.8)/2) * c_angles(math.sin(sine/2)*1.6,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -0.8*Size+(-math.cos(sine/2)/2)*Size, -0.1*Size+(-math.sin(sine/2)*0.8)/2)* c_angles(-math.sin(sine/2)*1.6,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+math.sin(sine/2)/5, 0*Size) * c_angles(math.rad(-25), math.sin(sine/2)/8, math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(17), math.rad(0), math.rad(0)), 0.15)     

      
        elseif currentAnim == "Walking" and Animations == false then
                angleSpeed = 1
                axisSpeed = 1
                change = 0.6
                Humanoid.WalkSpeed = 3.5*Size
                
  RA_Weld.C0            = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size,0) * c_angles(-math.rad(-50), math.rad(0), math.rad(10)), 0.15)
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size,  (0.4+-math.asin(math.cos(sine/8.5))/8.5)*Size, (-0.2+-math.asin(math.cos(sine/8.5))/3.4)*Size) * c_angles(math.asin(math.cos(sine/8.5))*0.4, math.rad(0), math.rad(-5)), 0.15)
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -0.8*Size+(math.cos(sine/6)/6)*Size, -0.1*Size+(math.sin(sine*5)*0.9)/6) * c_angles(math.sin(sine/6)*0.5,-math.sin(sine/5)/8, -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -0.8*Size+(-math.cos(sine/6)/6)*Size, -0.1*Size+(-math.sin(sine*5)*0.9)/6)* c_angles(-math.sin(sine/6)*0.5,-math.sin(sine/5)/8, -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+math.sin(sine/4)/6, 0*Size) * c_angles(math.rad(-5), math.rad(0)+math.sin(sine/5)/8, math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(0, math.rad(0), math.rad(0)), 0.15)     

     elseif Finger == true and walkingMagnitude < 2 then
     
     
     -- First Punch (All C1, Lasts 3 Frames)
                       RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.2*Size, 0.35*Size, 0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.5)
                       
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, .5*Size, 0*Size) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.5)
                
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.5)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.5)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.35)    

   elseif Finger2 == true and walkingMagnitude < 2 then
   
        -- First Punch (All C1, Lasts 3 Frames)
                       RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0*Size) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.5)
                       
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, .35*Size, 0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(40)), 0.5)
                
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.5)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -1*Size, 0*Size) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.5)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0, -1*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0*Size) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.35)    
  elseif Finger2 == true and walkingMagnitude > 2 then
  
       
        -- First Punch (All C1, Lasts 3 Frames)
                       RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.5*Size, 0.5*Size, 0*Size) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.5)
                       
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.2*Size, .35*Size, 0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(40)), 0.5)
                
                  LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -0.8*Size+(math.cos(sine/3)/4)*Size, -0.2*Size+(math.sin(sine/3)*0.7)/2) * c_angles(math.sin(sine/3)*0.95,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -0.8*Size+(-math.cos(sine/3)/4)*Size, -0.2*Size+(-math.sin(sine/3)*0.7)/2)* c_angles(-math.sin(sine/3)*0.95,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+math.sin(sine/2)/3, 0*Size) * c_angles(math.rad(0), math.rad(0)+math.sin(sine/2)/8, math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)

elseif Finger == true and walkingMagnitude > 2 then

                       RA_Weld.C0                = clerp(RA_Weld.C0, c_new(1.2*Size, 0.35*Size, 0.2*Size) * c_angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.5)
                       
                LA_Weld.C0                = clerp(LA_Weld.C0, c_new(-1.5*Size, .5*Size, 0*Size) * c_angles(math.rad(170), math.rad(0), math.rad(0)), 0.5)
                
                                
                LL_Weld.C0                = clerp(LL_Weld.C0, c_new(-0.5*Size, -0.8*Size+(math.cos(sine/3)/4)*Size, -0.2*Size+(math.sin(sine/3)*0.7)/2) * c_angles(math.sin(sine/3)*0.95,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                RL_Weld.C0                 = clerp(RL_Weld.C0, c_new(0.5*Size, -0.8*Size+(-math.cos(sine/3)/4)*Size, -0.2*Size+(-math.sin(sine/3)*0.7)/2)* c_angles(-math.sin(sine/3)*0.95,math.rad(0), -math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
                Torso_Weld.C0         = clerp(Torso_Weld.C0, c_new(0*Size, -1*Size+math.sin(sine/2)/3, 0*Size) * c_angles(math.rad(0), math.rad(0)+math.sin(sine/2)/8, math.sin(rootPart.RotVelocity.y/20)/3), 0.15)
Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5*Size, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)    

                end
end)

