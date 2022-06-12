repeat wait() until game:service'Players'.LocalPlayer.Character
--[[
	
- Added new color scheme.
- Some minor edits.
- New engine type, for your faster speed requirements.
- Camera bug fix.
]]--
do --CFrame lerp
        local function QuaternionFromCFrame(cf) 
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
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
        local function QuaternionSlerp(a, b, t) 
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
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 

end

plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
modelforparts = char:findFirstChild("ModelForParts") or Instance.new("Model", char)
modelforparts.Name = "ModelForParts"
equipped = false
local MAXSPEED = 90
local SPEED = 0
bg = Instance.new("BodyGyro")
bg.maxTorque = Vector3.new(9e6,9e6,9e6)
bg.D = 800
bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(9e6,9e6,9e6)

local sound = Instance.new("Sound", head)
sound.Volume = 1
sound.Pitch = 2
sound.SoundId = "http://www.roblox.com/asset/?id=142782429"
sound.Looped = true
wait()
sound:play()


ColorScheme1 = BrickColor.new(106)
ColorScheme2 = BrickColor.new(40)
ColorScheme3 = BrickColor.new(199)
ANGLE = 0
 equipped = true  

rs.Parent = nil
ls.Parent = nil
rh.Parent = nil
lh.Parent = nil
anim.Parent = nil
wait()
local rm = Instance.new("Weld", modelforparts)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", modelforparts)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
local rlegm = Instance.new("Weld", modelforparts)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Weld", modelforparts)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

--grey part
local part = Instance.new("Part", modelforparts)
part.Size = Vector3.new(2.2, .85, 2.2)
part.FormFactor = 'Custom'
part.BrickColor = ColorScheme3
part.Locked = true
part.TopSurface = 10
part.BottomSurface = 10
part.LeftSurface = 10
part.RightSurface = 10
part.FrontSurface = 10
part.BackSurface = 10
part:breakJoints()
part.Material = "SmoothPlastic"
part.CanCollide = false
Instance.new("CylinderMesh", part)
local weld = Instance.new("Weld", part)
weld.Part0 = part
weld.Part1 = torso
weld.C1 = CFrame.new(0, -2.1, 0)
weld.C0 = CFrame.Angles(math.pi/2, math.pi/2, 0) * CFrame.new(0, 0, .95)
--orange part
local part2 = part:clone()
part2.Parent = modelforparts
part2.Size = Vector3.new(2.5, 1.05, 2.5)
part2.BrickColor = ColorScheme1
local wld2 = Instance.new("Weld", part)
wld2.Part0 = part2
wld2.Part1 = part
wld2.C1 = CFrame.new()
wld2.C0 = CFrame.new()
--white part
local part3 = part:clone()
part3.Parent = modelforparts
part3.Size = Vector3.new(2.62, .5, 2.62)
part3.BrickColor = ColorScheme2
local wld3 = Instance.new("Weld", part)
wld3.Part0 = part3
wld3.Part1 = part
wld3.C1 = CFrame.new()
wld3.C0 = CFrame.new()
--airblower
local airblowercyl = part:clone()
airblowercyl.Parent = modelforparts
airblowercyl.Size = Vector3.new(.95, 3.5, .95)
airblowercyl.BrickColor = ColorScheme3
local smoke = Instance.new("Smoke", airblowercyl)
smoke.Color = Color3.new(.3, .3, .3)
smoke.RiseVelocity = 10
smoke.Opacity = .1
local cwld = Instance.new("Weld", airblowercyl)
cwld.Part0 = airblowercyl
cwld.Part1 = part
cwld.C1 = CFrame.Angles(0, 0, -math.pi/2)
cwld.C0 = CFrame.new(0, -1.85-0.925, -.6) * CFrame.Angles(math.pi/14, 0, 0)

--handles
local hndl = part:clone()
hndl.Parent = modelforparts
hndl.Size = Vector3.new(.2, .4, .2)
hndl.BrickColor = BrickColor.new(26)
hndl.Mesh:Destroy()
local hwld = Instance.new("Weld", hndl)
hwld.Part1 = part
hwld.Part0 = hndl
hwld.C1 = CFrame.new(.1, 0, 0) * CFrame.Angles(math.pi/2, 0, 0)
hwld.C0 = CFrame.new(0, -.82 - .4, 0)
Instance.new("BlockMesh", hndl).Scale = Vector3.new(.5, 1, .5)
local hndl2 = hndl:clone()
hndl2.Parent = modelforparts
hndl2.Size = Vector3.new(.8, .2, .2)
local hwld2 = Instance.new("Weld", hndl2)
hwld2.Part0 = hndl2
hwld2.Part1 = part
hwld2.C1 = CFrame.new(-.25, 0, 0) * CFrame.Angles(math.pi/2, 0, 0)
hwld2.C0 = CFrame.new(0, -1 - .4, 0)
hndl2.Mesh.Scale = Vector3.new(1, .5, .5)
local hndl3 = hndl:clone()
hndl3.Parent = modelforparts
hndl3.Size = Vector3.new(.2, .4, .2)
local hwld3 = Instance.new("Weld", hndl3)
hwld3.Part0 = hndl3
hwld3.Part1 = part
hwld3.C1 = CFrame.new(-.6, 0, 0) * CFrame.Angles(math.pi/2, 0, 0)
hwld3.C0 = CFrame.new(0, -.82 - .4, 0)
--balloon ropes
local blnrope = part:clone()
blnrope.Parent = modelforparts
blnrope.Size = Vector3.new(.2, 3.8, .2)
blnrope.BrickColor = BrickColor.new(1)
blnrope.Mesh:Destroy()
local blnwld = Instance.new("Weld", blnrope)
blnwld.Part0 = blnrope
blnwld.Part1 = airblowercyl
blnwld.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2, math.pi/7, -math.pi/8)
blnwld.C0 = CFrame.new(0, -2, 0)
Instance.new("BlockMesh", blnrope).Scale = Vector3.new(.2, 1, .2)
local blnrope2 = blnrope:clone()
blnrope2.Parent = modelforparts
blnrope2.Size = Vector3.new(.2, 4, .2)
local blnwld2 = Instance.new("Weld", blnrope2)
blnwld2.Part0 = blnrope2
blnwld2.Part1 = airblowercyl
blnwld2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2, math.pi/4, -math.pi/74)
blnwld2.C0 = CFrame.new(0, -2.2, 0)
local blnrope3 = blnrope:clone()
blnrope3.Parent = modelforparts
local blnwld3 = Instance.new("Weld", blnrope3)
blnwld3.Part0 = blnrope3
blnwld3.Part1 = airblowercyl
blnwld3.C0 = CFrame.new(0, -2, 0)


--Stored balloon rope welds
blnwldC1 = blnwld.C1
blnwld2C1 = blnwld2.C1
blnwld3C1 = blnwld3.C1
--balloons
local bln = part:clone()
bln.Parent = modelforparts
bln.Size = Vector3.new(1.65, 1.8, 1.65)
bln.BrickColor = BrickColor.new(119)
bln.Mesh:Destroy()
bln.Transparency = .1
local balnwld = Instance.new("Weld", bln)
balnwld.Part0 = bln
balnwld.Part1 = blnrope
balnwld.C1 = CFrame.new(0, 0, 0)
balnwld.C0 = CFrame.new(0, -2.6, 0)
Instance.new("SpecialMesh", bln).MeshType = "Sphere"
local bln2 = bln:clone()
bln2.Parent = modelforparts
bln2.BrickColor = BrickColor.new(23)
local balnwld2 = Instance.new("Weld", bln2)
balnwld2.Part0 = bln2
balnwld2.Part1 = blnrope2
balnwld2.C1 = CFrame.new(0, 0, 0)
balnwld2.C0 = CFrame.new(0, -2.8, 0)
local bln3 = bln:clone()
bln3.Parent = modelforparts
bln3.BrickColor = BrickColor.new(21)
local balnwld3 = Instance.new("Weld", bln3)
balnwld3.Part0 = bln3
balnwld3.Part1 = blnrope3
balnwld3.C0 = CFrame.new(0, -2.6, 0)

--Controls
bg.Parent = rootpart
bv.Parent = rootpart
forwards = false
backwards = false
mouse.KeyDown:connect(function(k)
    if k == "w" then
    forwards = true
    coroutine.wrap(function()
        while forwards do wait()
        if SPEED >= MAXSPEED then SPEED = MAXSPEED forwards = false break end
		sound.Volume = sound.Volume + .05
		if sound.Volume >= .5 then sound.Volume = .5 end
        SPEED = SPEED + 5
        end
    end)()
    end
end)
mouse.KeyUp:connect(function(k)
    if k == "w" then
        forwards = false
        coroutine.wrap(function()
        while SPEED >= 0 do wait()
		sound.Volume = sound.Volume - .05
		if sound.Volume <= 0.25 then sound.Volume = 0.25 end
        SPEED = SPEED - 5
        if forward then break end
        if SPEED <= 0 then SPEED = 0 break end
        end
        end)()
    end
end)
--BALLONS MOOOOVEEE :DDD
game:service'RunService'.RenderStepped:connect(function()
        if not equipped then return end
    blnwldC1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 - math.rad(SPEED/1.7) + math.sin(ANGLE)*.025, math.pi/7 + math.sin(ANGLE)*.105, -math.pi/8 - math.sin(ANGLE)*.018)
    blnwld2C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 - math.rad(SPEED/1.7) + math.sin(ANGLE)*.015, math.pi/4 - math.sin(ANGLE)*.065, -math.pi/74 + math.sin(ANGLE)*.021)
    blnwld3C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 - math.rad(SPEED/1.7) - math.sin(ANGLE)*.02, math.pi/16 - math.sin(ANGLE)*.125, math.pi/9 - math.sin(ANGLE)*.078)
blnwld.C1 = clerp(blnwld.C1, blnwldC1, 0.05)
blnwld2.C1 = clerp(blnwld2.C1, blnwld2C1, 0.05)
blnwld3.C1 = clerp(blnwld3.C1, blnwld3C1, 0.05)
end)

--positioning welds
lm.C0 = CFrame.new(-1.25, .05, -.5) * CFrame.Angles(math.rad(35), 0, math.rad(45))
rm.C0 = CFrame.new(1.25, .05, -.5) * CFrame.Angles(math.rad(35), 0, -math.rad(45))
llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, -math.rad(15))
rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(15))



game:service'RunService'.RenderStepped:connect(function()
    for i,v in pairs(torso:children()) do if v and v:IsA'BodyGyro' then v:Destroy() end end
    ANGLE = (ANGLE % 360) + math.random(1, 10)/100
humanoid.PlatformStand = true
local rotpos = Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)
bg.cframe = CFrame.new(torso.Position,rotpos) * CFrame.Angles(0, math.pi, 0)
bv.velocity = (torso.CFrame * CFrame.Angles(math.pi/14, 0, 0)).lookVector * SPEED
end)