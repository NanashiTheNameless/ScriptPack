do --CFrame lerp (stravant, clerp by AntiBoomz0r)
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


do --rayCast
    function rayCast(startpos, Speed, Gravity, Dmg)
        local ran,err = ypcall(function()
    local rayPart         = Instance.new("Part", char)
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.new("Really red")
    rayPart.Anchored      = true
    rayPart.Shape         = Shape or "Ball"
    rayPart.CanCollide    = false
	rayPart.Locked        = true
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.Size          = Vector3.new(.2, 2, .2)
    local msh = Instance.new("SpecialMesh",rayPart)
    msh.MeshId = "http://www.roblox.com/asset/?id=16190555"
    msh.TextureId = "http://www.roblox.com/asset/?id=16190577"
    msh.Scale = Vector3.new(2, 2, 2)

	
	

    local bulletposition = startpos.Position
    rayPart.CFrame = startpos.CFrame

   local bulletvelocity = (Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2)))+( mouse.Hit.p - bulletposition).unit*Speed
    local bulletlastposition = bulletposition


    
        coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -3.81*Gravity, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))

            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart, camera} )
	            
	if (torso.Position - rayPart.Position).magnitude > 540 then
	 	rayPart:Destroy()
	 break
	 end
	
	
            if hit then
					local damage = math.random(Dmg, Dmg+6)
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
				elseif hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") then
				    hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
			    end
				bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                for i = 1, 50 do
		    local s = Instance.new("Part")
		s.CanCollide = false
		s.Shape = 1
		s.Locked = true
		s.formFactor = "Custom"
		pl = Instance.new("PointLight", s)
		pl.Range = 8
		pl.Color = Color3.new(0.8, 0.8, 0)
		s.Size = Vector3.new(.3,.3,.3)
		s.Transparency = 0.5
		s.BrickColor = BrickColor.new("Brick yellow")
		local v = Vector3.new(math.random(-1,1), math.random(1,2), math.random(-1,1))
		s.Velocity = 0.5 * v
		s.CFrame = CFrame.new(rayPart.Position + v, v)
		s.Parent = workspace
		coroutine.resume(coroutine.create(function()
			wait(2)
			s:Destroy()
		end))
		end
                rayPart:Destroy()
                break
            end
	        rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
			rayPart.Parent = workspace
        end
    end))
end)
if not ran and err then
    print(err)
    end
end
end

do --the animating
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


local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la



local speed = 0.3
local angle = 0
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
rjc0 = rj.C0
neckc0 = neck.C0
radian = math.rad

apple = Instance.new("Part", char)
apple.FormFactor = "Custom"
apple.Size = Vector3.new(1, 1, 1)
apple:breakJoints()
local wld = Instance.new("Weld", char)
wld.C1 = CFrame.new(0, -1, 0)
wld.C0 = CFrame.Angles(math.pi, 0, 0)
wld.Part1 = ra
wld.Part0 = apple
local msh = Instance.new("SpecialMesh", apple)
msh.MeshId = "http://www.roblox.com/asset/?id=16190555"
msh.TextureId = "http://www.roblox.com/asset/?id=16190577"
msh.Scale = Vector3.new(2, 2, 2)



mouse.Button1Down:connect(function()
    if throwing then return end
    throwing = true
    wait(wait()*8)
        for trans = 1, 0, -0.1 do
        apple.Transparency = trans
        wait()
    end
end)

done = false
while wait() do
    angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rjcf = rjc0
        local ncf = neckc0
        lscf = lsc0 * CFrame.Angles(-radian(5), 0, -radian(5))
        if throwing then
            for waiting = 0, 250, 30 do
                if done then return end
              rscf = rsc0 * CFrame.Angles(radian(waiting), 0, 0)
              rm.C0 = clerp(rm.C0,rscf,speed)
              wait()
            if waiting == 250 then
                done = true
            end
            end
            rscf = rsc0 * CFrame.Angles(radian(120), 0, 0)
            rayCast(apple, math.random(140, 150), 20, 28)
        throwing = false
        done = false
        end
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
end
end
