print'Courtsey of matteo101man'
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
if anim then
anim:Destroy()
end
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
modelforparts = char:findFirstChild("ModelForParts") or Instance.new("Model", char)
modelforparts.Name = "ModelForParts"
function trailconnect(obj, wat)
local trail = {}
for i = 1, 4 do 
local p = Instance.new("Part") 
p.BrickColor = obj.BrickColor
p.formFactor = "Custom" 
p.Size = Vector3.new(1,1,1)
p.Locked = true 
p.Anchored = true 
p.CanCollide = false 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(trail,{p,0}) 
end
local lastpos = obj.Position 
local updatethis = 0 
local dontdothis = false
game:service'RunService'.Stepped:connect(function()
    if wat == true then if dontdothis then return end
        for i,v in pairs(trail) do
        game:service'Debris':AddItem(obj, 0)
        table.remove(v, i)
        end
        dontdothis = true
        return 
    end
updatethis = ((updatethis) % 4) + 1
local dstnc = (obj.Position - lastpos).magnitude 
trail[updatethis][1].Mesh.Scale = Vector3.new(.2,dstnc,.2)
trail[updatethis][1].Parent = obj.Parent
trail[updatethis][1].CFrame = CFrame.new((obj.Position + lastpos)/2,obj.Position) * CFrame.Angles(math.pi/2, 0, 0)
trail[updatethis][2] = 0 
for i,v in pairs(trail) do 
v[2] = v[2] + .15
v[1].Transparency = v[2] 
end 
lastpos = obj.Position
end)
end 
do --rayCast
    function rayCast(startpos, Speed, Gravity, Dmg, color)
        local ran,err = ypcall(function()
    local rayPart         = Instance.new("Part")
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.new(color)
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
        rayPart.Locked        = true
        rayPart.FormFactor    = "Custom"
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.Size          = Vector3.new(.2, 50, .2)
    rayPart:breakJoints()
    Instance.new("CylinderMesh", rayPart)
    local fire = Instance.new("Fire", rayPart)
    fire.Color = rayPart.BrickColor.Color
    fire.SecondaryColor = rayPart.BrickColor.Color
    fire.Heat = 0
    fire.Size = 10
    local pl = Instance.new("PointLight", rayPart)
    pl.Color = Color3.new(rayPart.BrickColor.r/1.5, rayPart.BrickColor.g/1.5, rayPart.BrickColor.b/1.5)
    pl.Range = 18
        local hitobj = false
    local bulletposition = startpos.Position
    rayPart.CFrame = startpos.CFrame
    trailconnect(rayPart, hitobj)
   local bulletvelocity = (Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2)))+( mouse.Hit.p - bulletposition).unit*Speed
    local bulletlastposition = bulletposition
    
    coroutine.resume(coroutine.create(function()
        while true do
                local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -3.81*Gravity, 0)*dt)
                bulletposition = bulletposition + (bulletvelocity*dt)
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, {char, modelforparts} )
                    
        if (torso.Position - rayPart.Position).magnitude > 840 then
                 rayPart:Destroy()
                 hitobj = true
         break
    end
        
            if hit then
                hitobj = true
                                        local damage = math.random(Dmg, Dmg+30)
                                if hit.Parent:findFirstChild("Humanoid") ~= nil then
                                        hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
                                elseif hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") then
                                    hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
                            end
                            local boom = Instance.new("Part", modelforparts)
                            boom.BrickColor = rayPart.BrickColor
                            boom.Anchored = true
                            boom.FormFactor = "Custom"
                            boom.Size = Vector3.new(1,1,1)
                            boom.CanCollide = false
                            boom.Transparency = 0.25
                            boom.CFrame = CFrame.new(hitposition.x, hitposition.y, hitposition.z)
                            boom.TopSurface = 0
                            boom.BottomSurface = 0
                            local sphere = Instance.new("SpecialMesh", boom)
                            sphere.MeshType = "Sphere"
                            local pl = Instance.new("PointLight", boom)
                pl.Color = Color3.new(boom.BrickColor.r/1.5, boom.BrickColor.g/1.5, boom.BrickColor.b/1.5)
                pl.Range = 20
                for ye = 0, 8 do
                    local lite = Instance.new("Part", boom)
                                lite.FormFactor = "Custom"
                                lite.Size = Vector3.new(.2, 1.5, .2)
                                lite.BrickColor = boom.BrickColor
                                lite.CanCollide = false
                                lite.TopSurface = 0
                                lite.Anchored = false
                                lite.BottomSurface = 0
                                lite.Position = boom.Position + Vector3.new(math.random(-10, 10), math.random(6,15), math.random(-10, 10))
                        end
                            
                            for i = 0, 20, 2.5 do
                                sphere.Scale = sphere.Scale + Vector3.new(i,i,i)
                                boom.Transparency = boom.Transparency + i/60
                                pl.Range = pl.Range + i/15
                             wait()
                        end
                        boom:Destroy()
                for i,v in pairs(workspace:children()) do
                    if v:IsA("Model") and v:findFirstChild("Humanoid") then
                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                        if (v:findFirstChild("Torso").Position - boom.Position).magnitude < 16 and v.Name ~= char.Name then
                        v:findFirstChild("Humanoid"):TakeDamage(math.random(Dmg+2,Dmg+6))
                    end
                    end
                end
                if v and v:IsA("Part") and v.Name ~= "Base" then
                    if (v.Position - boom.Position).magnitude < 16 then
                    v:BreakJoints()
                    v.TopSurface = 0
                    v.BottomSurface = 0
                    v.LeftSurface = 0
                    v.RightSurface = 0
                    v.FrontSurface = 0
                    v.BackSurface = 0
                    v.Anchored = false
                    end
                end
        end
            pcall(function()
                                bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                rayPart:Destroy()
            end)
                break
            end
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                        rayPart.Parent = modelforparts
        end
    end))
 for i = 70, 65, -1.5 do
    camera.FieldOfView = i
    wait()
end
for i = 65, 70, 2.5 do
    camera.FieldOfView = i
    wait()
end
end)
if err then
    print(err)
    end
end
end
charge = 100
plrgui = game:service'Players'.LocalPlayer:findFirstChild("PlayerGui")
local statusgui = Instance.new("ScreenGui", plrgui)
local mainframe = Instance.new("Frame", statusgui)
    mainframe.Size = UDim2.new(0, 200, 0, 200)
    mainframe.Position = UDim2.new(.75, 0, .75, 0)
    mainframe.Style = 3
    local image = Instance.new("ImageLabel", mainframe)
    image.Size = UDim2.new(1, 0, .47, 0)
    image.Position = UDim2.new(0, 0, .235, 0)
    image.BackgroundTransparency = 1
    image.Image = "rbxassetid://109550704"
    local chargetext = Instance.new("TextLabel", mainframe)
    chargetext.FontSize = "Size18"
    chargetext.Size = UDim2.new(1, 0, .95, 0)
    chargetext.TextYAlignment = "Bottom"
    chargetext.BackgroundTransparency = 1
    chargetext.TextColor3 = Color3.new(1,1,1)
    game:service'RunService'.Stepped:connect(function()
        chargetext.Text = math.floor(charge).."%"
    end)
    
    
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
sound = Instance.new("Sound", head)
sound.Volume = 1
sound.SoundId = "rbxassetid://145197148"
sound.Looped = true
dancemode = true
debounceofsprint = false
--create func
function part(parent, size, color, formfactor, collide, transparency)
        if transparency == nil then transparency=0 end
        if collide == nil then collide=false end
                if formfactor == nil then formfactor="Custom" end
        local p = Instance.new("Part", parent)
        p.FormFactor = formfactor
        p.CanCollide = collide
        p.Size = size
        p.Locked = true
        p.Transparency = transparency
        p.Position = torso.Position + Vector3.new(0, 1, 0)
        p.BrickColor = color
        p.FrontSurface = "SmoothNoOutlines" 
        p.BackSurface = "SmoothNoOutlines"         
        p.LeftSurface = "SmoothNoOutlines" 
        p.BottomSurface = "SmoothNoOutlines" 
        p.TopSurface = "SmoothNoOutlines"  
        p.RightSurface = "SmoothNoOutlines"
        return p
end
function wedge(parent, size, color, formfactor, collide, transparency)
                if transparency==nil then transparency=0 end
        if collide==nil then collide=false end
                if formfactor==nil then formfactor="Custom" end
        local p = Instance.new("WedgePart", parent)
        p.FormFactor = formfactor
        p.CanCollide = collide
        p.Size = size
        p.Locked = true
        p.Position = torso.Position
        p.BrickColor = color
        p.FrontSurface = "SmoothNoOutlines" 
        p.BackSurface = "SmoothNoOutlines"         
        p.LeftSurface = "SmoothNoOutlines" 
        p.BottomSurface = "SmoothNoOutlines" 
        p.TopSurface = "SmoothNoOutlines"  
        p.RightSurface = "SmoothNoOutlines"
        return p
end 
function weld(part0, part1, c0, parent, c1)
        if parent == nil then parent=char end
        if c1 == nil then c1=CFrame.new() end
        local wel = Instance.new("Weld", parent)
        wel.Part0 = part0
        wel.Part1 = part1
        wel.C0 = c0
        wel.C1 = c1
        return wel
end
function specialmesh(parent, meshType, scale, meshId)
        if meshId==nil then meshId="" end
        local mesh = Instance.new("SpecialMesh", parent)
        mesh.Scale = scale
        mesh.MeshType = meshType
        mesh.MeshId = meshId
        return mesh
end
----------------------------------------------------------------------------------------------------------
--function part(parent, size, color, formfactor, collide, transparency)
--function weld(part0, part1, c0, parent, c1)
----------------------------------------------------------------------------------------------------------
function animatehuman(animationid, object)
                        local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
                        animation:Play()
end
local danceAnim = Instance.new("Animation", char)
danceAnim.AnimationId = "http://www.roblox.com/asset/?id=93648331"
danceAnim.Name = "Dance"
----------------------------------------------------------------------------------------------------------
local main = Instance.new("Part", char)
        main.FormFactor = "Custom"
        main.CanCollide = false
        main.Size = Vector3.new(.75, 1, 1.2)
        main.Locked = true
        main.BrickColor = BrickColor.new("White")
        main.TopSurface = 0
        main.BottomSurface = 0
        main.Position = torso.Position
        main:BreakJoints()
local weld1 = weld(main, ra, CFrame.new(), char, CFrame.new(0, -.8, -.6))
    local speaker = Instance.new("Part", char)
        speaker.FormFactor = "Custom"
        speaker.CanCollide = false
        speaker.Size = Vector3.new(1.5, .25, 1.4)
        speaker.Locked = true
        speaker.BrickColor = BrickColor.new("White")
        speaker.TopSurface = 0
        speaker.BottomSurface = 0
        speaker.Position = torso.Position
        speaker:BreakJoints()
local weld2 = weld(speaker, main, CFrame.new(), char, CFrame.new(-.25, -1.7, .6))
        local speaker2 = Instance.new("Part", char)
        speaker2.FormFactor = "Custom"
        speaker2.CanCollide = false
        speaker2.Size = Vector3.new(1, .25, 2)
        speaker2.Locked = true
        speaker2.BrickColor = BrickColor.new("White")
        speaker2.TopSurface = 0
        speaker2.BottomSurface = 0
        speaker2.Position = torso.Position
        speaker2:BreakJoints()
local weld3 = weld(speaker2, main, CFrame.new(), char, CFrame.new(0, -1.7, -.2))
        local main2 = Instance.new("Part", char)
        main2.FormFactor = "Custom"
        main2.CanCollide = false
        main2.Size = Vector3.new(.751, 1, .6)
        main2.Locked = true
        main2.BrickColor = BrickColor.new("White")
        main2.TopSurface = 0
        main2.BottomSurface = 0
        main2.Position = torso.Position
        main2:BreakJoints()
local weld4 = weld(main2, ra, CFrame.new(), char, CFrame.new(0, 0, -.9))
    local main3 = Instance.new("Part", char)
        main3.FormFactor = "Custom"
        main3.CanCollide = false
        main3.Size = Vector3.new(.751, 1.45, 1)
        main3.Locked = true
        main3.BrickColor = BrickColor.new("White")
        main3.TopSurface = 0
        main3.BottomSurface = 0
        main3.Position = torso.Position
        main3:BreakJoints()
local weld5 = weld(main3, ra, CFrame.new(), char, CFrame.new(0, -1.6, -.9))
    local main4 = Instance.new("Part", char)
        main4.FormFactor = "Custom"
        main4.CanCollide = false
        main4.Size = Vector3.new(1, .76, 1)
        Instance.new("CylinderMesh", main4)
        main4.Locked = true
        main4.BrickColor = BrickColor.new("Black")
        main4.TopSurface = 0
        main4.BottomSurface = 0
        main4.Position = torso.Position
        main4:BreakJoints()
local weld6 = weld(main4, main, CFrame.new(), char, CFrame.new(0, -.15, -.5)*CFrame.Angles(math.pi/2, 0, math.pi/2))
    local speaker3 = Instance.new("Part", char)
        speaker3.FormFactor = "Custom"
        speaker3.CanCollide = false
        speaker3.Size = Vector3.new(1.5, .5, 1.4)
        speaker3.Locked = true
        speaker3.BrickColor = BrickColor.new("Yellow")
        speaker3.TopSurface = 0
        speaker3.BottomSurface = 0
        speaker3.Position = torso.Position
        speaker3:BreakJoints()
local welds1 = weld(speaker3, main, CFrame.new(), char, CFrame.new(-.25, -2.2, .6))
        local speaker4 = Instance.new("Part", char)
        speaker4.FormFactor = "Custom"
        speaker4.CanCollide = false
        speaker4.Size = Vector3.new(1, .5, 2)
        speaker4.Locked = true
        speaker4.BrickColor = BrickColor.new("White")
        speaker4.TopSurface = 0
        speaker4.BottomSurface = 0
        speaker4.Position = torso.Position
        speaker4:BreakJoints()
local welds2 = weld(speaker4, main, CFrame.new(), char, CFrame.new(0, -2.205, -.2))
        local speaker5 = Instance.new("Part", char)
        speaker5.FormFactor = "Custom"
        speaker5.CanCollide = false
        speaker5.Size = Vector3.new(1.4, .4, 1.3)
        speaker5.Locked = true
        speaker5.BrickColor = BrickColor.new("Black")
        speaker5.TopSurface = 0
        speaker5.BottomSurface = 0
        speaker5.Position = torso.Position
        speaker5:BreakJoints()
local welds3 = weld(speaker5, main, CFrame.new(), char, CFrame.new(-.25, -2, .6))
        local speaker6 = Instance.new("Part", char)
        speaker6.FormFactor = "Custom"
        speaker6.CanCollide = false
        speaker6.Size = Vector3.new(.9, .4, 1.9)
        speaker6.Locked = true
        speaker6.BrickColor = BrickColor.new("Black")
        speaker6.TopSurface = 0
        speaker6.BottomSurface = 0
        speaker6.Position = torso.Position
        speaker6:BreakJoints()
local welds4 = weld(speaker6, main, CFrame.new(), char, CFrame.new(0, -2, -.2))
    
        local support = Instance.new("Part", char)
        support.FormFactor = "Custom"
        support.CanCollide = false
        support.Size = Vector3.new(.3, .4, .6)
        support.Locked = true
        support.BrickColor = BrickColor.new("Black")
        support.TopSurface = 0
        support.BottomSurface = 0
        support.Position = torso.Position
        support:BreakJoints()
local welds5 = weld(support, main, CFrame.new(), char, CFrame.new(0, -1.5, -.4))
debounce = false
function stopsound()
if debounce then return end
    if not sound.IsPlaying then return end
    sound:stop()
    debounce = true
    local dancebro = Instance.new("StringValue", game:service'Lighting')
    dancebro.Name = ('STOPDANCING'..plr.Name)
    game:service'Debris':AddItem(dancebro, 1)
        coroutine.wrap(function()
        while not sound.IsPlaying do
            if charge <= 100 then
            charge = charge + .1
            wait()
            elseif charge > 100 then
            charge = 100
            break
            end
        end
    end)()
        wait(.1)
    debounce = false
end
mouse.Button1Down:connect(function(mous)
    if debounceofsprint then return end
    if sound.IsPlaying then return end
    if debounce then return end
    sound:play()
 for i = 70, 55, -.35 do
     if not sound.IsPlaying then debounce = true camera.FieldOfView = 70 return end
    camera.FieldOfView = i
    wait()
end
for i = 65, 70, 2.5 do
    if not sound.IsPlaying then debounce = true camera.FieldOfView = 70 return end
    camera.FieldOfView = i
    wait()
end
if debounce then debounce = false return end
    if dancemode then
    for i,v in pairs(workspace:children()) do
        if not sound.IsPlaying then break end
                coroutine.wrap(function()
                if v:IsA("Model") and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("ModelForParts") == nil and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - head.Position).magnitude < 30 then
                            danceAnimClone = danceAnim:clone()
                            danceAnimClone.Parent = v
                            danceAnimClone.AnimationId = "http://www.roblox.com/asset/?id=93648331"
                            wait()
                            NLS([[
                            function animatehuman(animationid, object)
                                    local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
                                        animation:Play()
                        end
                        while wait(.5) do
                        if game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[[") and game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[["):IsA("StringValue") then game:service'Debris':AddItem(script.Parent:findFirstChild("DancingAnimation"), 5) break end
                            animatehuman(script.Parent:findFirstChild("DancingAnimation"), script.Parent)
                            end
                            ]], v)
                end
                end)()
        end
end
    coroutine.wrap(function()
        while sound.IsPlaying do
            if charge <= 1 then 
                if debounce then break end
                if not sound.IsPlaying then break end
                    sound:stop()
                    debounce = true
                    chargetext.TextColor3 = Color3.new(1,0,0)
                    dancebro = Instance.new("StringValue", game:service'Lighting')
                    dancebro.Name = ('STOPDANCING'..plr.Name)
                    game:service'Debris':AddItem(dancebro, 1)
                    coroutine.wrap(function()
                        repeat wait() until charge >= 10
                        debounce = false
                        chargetext.TextColor3 = Color3.new(1,1,1)
                    end)()
                    coroutine.wrap(function()
                        while not sound.IsPlaying do
                            if charge <= 100 then
                            charge = charge + .1
                            wait()
                            elseif charge > 100 then
                            charge = 100
                            break
                            end
                        end
                    end)() 
            else
            charge = charge - .08
            wait()
            end
        end
    end)()
    coroutine.wrap(function()
        local ran,err = ypcall(function()
        while sound.IsPlaying and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 do
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright yellow")
    wait(.35)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Deep Orange")
    wait(.95)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright bluish green")
    wait(.55)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Deep orange")
    wait(.4)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright bluish green")
    local pl = Instance.new("PointLight", torso)
    pl.Color = Color3.new(153/255/1.25, 102/255/1.25, 204/255/1.25)
    pl.Range = 30
    pl.Brightness = 0.7
    game:service'Debris':AddItem(pl, .3)
    wait(.45)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright yellow")
    wait(.75)
    end
    end) if err then print(err) end
    end)()
end)
mouse.Button1Up:connect(function(mous)
    stopsound()
end)
ctrl = false
mouse.KeyDown:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = true
        humanoid.WalkSpeed = 8
    end
    if string.byte(k) == 48 then
    humanoid.WalkSpeed = 28
    end
end)
mouse.KeyUp:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = false
        humanoid.WalkSpeed = 16
    end
    if string.byte(k) == 48 then
    humanoid.WalkSpeed = 16
        if ctrl then
            humanoid.WalkSpeed = 8
        end
    end
end)
humanoid.Died:connect(function()
    deathpos = torso.Position
        WorkModel = Instance.new("Model", workspace)
        WorkModel.Name = " "
        wait(1/60)
        humanoid.Parent = nil
        if torso then
                local Head = char:FindFirstChild("Head")
                if Head then
                        local Neck = Instance.new("Weld")
                        Neck.Name = "Neck"
                        Neck.Part0 = torso
                        Neck.Part1 = Head
                        Neck.C0 = CFrame.new(0, 1.5, 0)
                        Neck.C1 = CFrame.new()
                        Neck.Parent = torso
                end
                local Limb = char:FindFirstChild("Right Arm")
                if Limb then
                        Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
                        local Joint = Instance.new("Glue")
                        Joint.Name = "RightShoulder"
                        Joint.Part0 = torso
                        Joint.Part1 = Limb
                        Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                        Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                        Joint.Parent = torso
                        local B = Instance.new("Part")
                        B.TopSurface = 0
                        B.BottomSurface = 0
                        B.formFactor = "Symmetric"
                        B.Size = Vector3.new(1, 1, 1)
                        B.Transparency = 1
                        B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
                        B.Parent = char
                        B.CanCollide = false
                        local W = Instance.new("Weld")
                        W.Part0 = Limb
                        W.Part1 = B
                        W.C0 = CFrame.new(0, -0.5, 0)
                        W.Parent = Limb
                end
                local Limb = char:FindFirstChild("Left Arm")
                if Limb then
                        Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
                        local Joint = Instance.new("Glue")
                        Joint.Name = "LeftShoulder"
                        Joint.Part0 = torso
                        Joint.Part1 = Limb
                        Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                        Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                        Joint.Parent = torso
                        local B = Instance.new("Part")
                        B.TopSurface = 0
                        B.BottomSurface = 0
                        B.formFactor = "Symmetric"
                        B.Size = Vector3.new(1, 1, 1)
                        B.Transparency = 1
                        B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
                        B.Parent = char
                        B.CanCollide = false
                        local W = Instance.new("Weld")
                        W.Part0 = Limb
                        W.Part1 = B
                        W.C0 = CFrame.new(0, -0.5, 0)
                        W.Parent = Limb
                end
                local Limb = char:FindFirstChild("Right Leg")
                if Limb then
                        Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
                        local Joint = Instance.new("Glue")
                        Joint.Name = "RightHip"
                        Joint.Part0 = torso
                        Joint.Part1 = Limb
                        Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                        Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                        Joint.Parent = torso
                        local B = Instance.new("Part")
                        B.TopSurface = 0
                        B.BottomSurface = 0
                        B.formFactor = "Symmetric"
                        B.Size = Vector3.new(1, 1, 1)
                        B.Transparency = 1
                        B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
                        B.Parent = char
                        B.CanCollide = false
                        local W = Instance.new("Weld")
                        W.Part0 = Limb
                        W.Part1 = B
                        W.C0 = CFrame.new(0, -0.5, 0)
                        W.Parent = Limb
                end
                local Limb = char:FindFirstChild("Left Leg")
                if Limb then
                        Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
                        local Joint = Instance.new("Glue")
                        Joint.Name = "LeftHip"
                        Joint.Part0 = torso
                        Joint.Part1 = Limb
                        Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                        Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                        Joint.Parent = torso
                        local B = Instance.new("Part")
                        B.TopSurface = 0
                        B.BottomSurface = 0
                        B.formFactor = "Symmetric"
                        B.Size = Vector3.new(1, 1, 1)
                        B.Transparency = 1
                        B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
                        B.Parent = char
                        B.CanCollide = false
                        local W = Instance.new("Weld")
                        W.Part0 = Limb
                        W.Part1 = B
                        W.C0 = CFrame.new(0, -0.5, 0)
                        W.Parent = Limb
                end
                for blood = 0, 3 do
                    local blood = Instance.new("Part", workspace)
                    blood.BrickColor = BrickColor.Red()
                    blood.FormFactor = "Custom"
                    blood.Size = Vector3.new(.2,.2,.2)
                    blood.Anchored = true
                    blood.TopSurface = "Smooth"
                    blood.BackSurface = "Smooth"
                    local bloodmesh = Instance.new("CylinderMesh", blood)
                    bloodmesh.Scale = Vector3.new(3, 0, 3)
                    local rayzb = Ray.new(torso.Position, Vector3.new(0, -20, 0) + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)))
            local hitzb, hitposb = workspace:findPartOnRay(rayzb, char)
            if hitzb then
            blood.CFrame = CFrame.new(hitposb.x,hitposb.y,hitposb.z)
            blood.CFrame = blood.CFrame * CFrame.new(0, .05, 0)
                coroutine.wrap(function()
                    for cframe = 0, math.random(16, 24) do
                        bloodmesh.Scale = bloodmesh.Scale + Vector3.new(.45, 0, .45)
                        wait()
                    end
                end)()
            elseif not hitzb then
            blood:Destroy()
            end
            end
                local BP = Instance.new("BodyPosition", torso)
                BP.maxForce = Vector3.new(1,1,1)/0
                BP.position = deathpos
                for i,v in pairs(char:children()) do
                        if v:IsA("Part") then v.Parent = WorkModel end
                end
        wait(.3)
                BP:Destroy()
        end
end)
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
rj.C0 = CFrame.new(0, -1, 0)
rj.C1 = CFrame.new(0, -1, 0)
rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.4
angle = 0
anglespeed = 0
mvmnt = 0
game:service'RunService'.RenderStepped:connect(function()
    angle = (angle % 100) + anglespeed/10
    mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        --math.asin(mouse.UnitRay.Direction.y)
        ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y, 0, 0)
        rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
        lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(45))
        if not hitz then
            ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
                lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
            rjcf = rootc0 * CFrame.Angles(-math.pi/32, 0, 0)
                rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) * CFrame.Angles(-math.pi/14, 0, 0)
                llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
        elseif humanoid.Sit then
            ncf = neckc0 * CFrame.Angles(0, 0, 0)
            rjcf = rootc0 * CFrame.new(0, -.2, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/2, 0, math.rad(7.5))
            llcf = llc0 * CFrame.Angles(math.pi/2, 0, -math.rad(7.5))
            if sprinting then
                debounceofsprint = false
                sprinting = false
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
            speed = 0.3
            if ctrl then
                rjcf = rootc0 * CFrame.new(0, -1.25, 0)
                llcf = llc0 * CFrame.new(0, 0, -.45) * CFrame.Angles(-math.pi/2.2, 0, 0)
                rlcf = rlcf * CFrame.new(0, 1.25, -.85)
            else
                rjcf = rootc0
                rlcf = rlc0 * CFrame.Angles(-math.rad(.5), 0, math.rad(1.5))
                llcf = llc0 * CFrame.Angles(math.rad(1.5), 0, -math.rad(1.5))
            end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
        if not humanoid.Sit then
            anglespeed = 3
            if ctrl then
                anglespeed = 3
                ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/18, 0, 0)
                rjcf = rootc0 * CFrame.new(0, -.35, 0) * CFrame.Angles(-math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, 0)
                lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, math.rad(45))
                llcf = llc0 * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 - math.sin(angle)*.45, 0, 0)
                rlcf = rlcf * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 + math.sin(angle)*.45, 0, 0)
            else
                rjcf = rootc0
                rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.65, 0, math.rad(.5))
                llcf = llc0 * CFrame.Angles(math.sin(angle)*.65, 0, -math.rad(.5))
            end
            if sprinting then
                debounceofsprint = false
                sprinting = false
            end
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
            if not humanoid.Sit then
            anglespeed = 3
                ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
                lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
                rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045)
                rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
                llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
            sprinting = true
            debounceofsprint = true
            end
        end
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
end)
