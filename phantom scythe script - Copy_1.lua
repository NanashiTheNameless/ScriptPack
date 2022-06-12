LocalPlayer = game.Players.LocalPlayer
LocalPlayer.Character.Humanoid.MaxHealth = math.huge
Activated = false
Equipped = false
Regening = false
FireBall = false
Spikes = false
Destiny = false
Explosion = false
Tornado = false
Wall = false
Armor = false
shooting = false
Mode = "Shoot"
Energy = 10000
mouse = LocalPlayer:GetMouse()
t = Instance.new("Tool",LocalPlayer.Backpack)
t.Name = 'LOLs Phantom Scythe'
t.GripPos = Vector3.new(0,0,0)
p = Instance.new("Part",t)
p.FormFactor = 'Custom'
p.Name = 'Handle'
p.Transparency = 0.3
p.Reflectance = 0.3
p.CanCollide = false
p.BrickColor = BrickColor.new("Really black")
m = Instance.new("SpecialMesh",p)
m.MeshId = 'http://www.roblox.com/asset/?id=95891318'
m.TextureId = 'http://www.roblox.com/asset/?id='
m.Scale = Vector3.new(1,1,1)
char = LocalPlayer.Character
mouse = LocalPlayer:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
local Colors = {"Royal Purple","Really black"}
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
FRAME.BackgroundColor3 = BrickColor.new("Bright bluish green").Color
FRAME.BorderSizePixel = 0
FRAME.BackgroundTransparency = 0.8
TEXTLABEL = Instance.new("TextLabel",FRAME)
TEXTLABEL.Size = UDim2.new(1,0,1,0)
TEXTLABEL.BackgroundTransparency = 1
TEXTLABEL.Text = "Power: "..tostring(Energy)
TEXTLABEL.TextColor3 = BrickColor.new("Bright bluish green").Color
TEXTLABEL.TextStrokeColor3 = BrickColor.new("Bright blue").Color
TEXTLABEL.BorderSizePixel = 0
TEXTLABEL.Font = 'SourceSansBold'
TEXTLABEL.FontSize = 'Size36'
TEXTLABEL.TextStrokeTransparency = 0
FRAME2 = Instance.new("Frame",GUI)
FRAME2.Size = UDim2.new(0.5,0,0.05,0)
FRAME2.BackgroundColor3 = BrickColor.new("Bright red").Color
FRAME2.BorderSizePixel = 0
FRAME2.Position = UDim2.new(0.5,0,0,0)
FRAME2.BackgroundTransparency = 0.8
TEXTLABEL2 = Instance.new("TextLabel",FRAME2)
TEXTLABEL2.Size = UDim2.new(1,0,1,0)
TEXTLABEL2.BackgroundTransparency = 1
TEXTLABEL2.Text = "Current Health: "..tostring(humanoid.Health)
TEXTLABEL2.TextColor3 = BrickColor.new("Really red").Color
TEXTLABEL2.TextStrokeColor3 = BrickColor.new("Bright red").Color
TEXTLABEL2.BorderSizePixel = 0
TEXTLABEL2.BorderSizePixel = 0
TEXTLABEL2.Font = 'SourceSansBold'
TEXTLABEL2.FontSize = 'Size36'
FRAME3 = Instance.new("Frame",GUI)
FRAME3.Size = UDim2.new(0.5,0,0.05,0)
FRAME3.BackgroundColor3 = BrickColor.new("Lime green").Color
FRAME3.BorderSizePixel = 0
FRAME3.Position = UDim2.new(0.5,0,0.05,0)
FRAME3.BackgroundTransparency = 0.8
TEXTLABEL3 = Instance.new("TextLabel",FRAME3)
TEXTLABEL3.Size = UDim2.new(1,0,1,0)
TEXTLABEL3.BackgroundTransparency = 1
TEXTLABEL3.Text = "Strength: Dark Wyvern"
TEXTLABEL3.BorderSizePixel = 0
TEXTLABEL3.Font = 'SourceSansBold'
TEXTLABEL3.FontSize = 'Size24'
function __getVelocity(p1,p2,speed)
        local dis=(p1-p2).magnitude
        if speed=="dis" then 
                if dis*6>100 then 
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
                a.BlastRadius = 50
                local l = Instance.new("PointLight", LocalPlayer.Character.Torso)
                l.Brightness = 20
                l.Color = Color3.new(1,1,1)
                l.Enabled = true
                l.Range = 20
                l.Shadows = true
        end)
        local b = Instance.new("Fire",p)
        b.Size = 1
        b.Color = Color3.new(255, 255, 255)
        b.SecondaryColor = Color3.new(0, 255, 255)
        local l = Instance.new("PointLight", p)
        l.Brightness = 20
        l.Color = Color3.new(1,1,1)
        l.Enabled = true
        l.Range = 20
        l.Shadows = true
        local w = Instance.new("Motor",char['Right Arm'])
        w.Name = 'phantom scythe weld'
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
                char['Right Arm']['phantom scythe weld']:Destroy()
        end)
end
function __Shoot()
        if Regening == true then return end
        if Energy < 50 then return end
    shooting = true
        game:GetService("Chat"):Chat(head,"[ Dark Wyvern! ]",2)
    Energy = Energy - 150
    humanoid.WalkSpeed = 30
        local speed = math.random(400,500)
        local bullet = Instance.new("Part",workspace)
        bullet.Name = 'Bullet'
        bullet.TopSurface = 0
        bullet.BottomSurface = 0
        bullet.Size = Vector3.new(30,30,30)
        bullet.FormFactor = 'Custom'
        bullet.CFrame = p.CFrame
        bullet.CanCollide = false
        bullet.BrickColor = BrickColor.new("Really black")
        bullet.Velocity = __getVelocity(bullet.Position, mouse.Hit.p, speed)
        bullet.FrontSurface = "Smooth"
        bullet.BottomSurface = "Smooth"
        local pie = Instance.new("PointLight", bullet)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really red").Color
        pie.Range = 60
        local bulletmesh = Instance.new("SpecialMesh",bullet)
        bulletmesh.MeshId = 'http://www.roblox.com/asset/?id=95891318'
        bulletmesh.VertexColor = Vector3.new(0,0,0)
        bullet.Touched:connect(function(toucher)
                if toucher.Parent:findFirstChild'Head' and toucher.Parent:findFirstChild'Torso' and toucher.Parent.Name ~= LocalPlayer.Name then
                        for i,v in pairs(toucher.Parent:children()) do
                                if v.ClassName == 'Humanoid' then
                                        if v.Health > 100 then 
                                                v.Health = 0
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
        humanoid.WalkSpeed = 100
end
function __Armor()
        if Regening == true then return end
        if Energy < 1000 then return end
        if FireBall == true then return end
        Energy = Energy - 1000
        game:GetService("Chat"):Chat(head,"[ Armor of Constealing Light! ]",2)
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CanCollide = false
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-70)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(500,500,500)
        a.Transparency = 0.5
        a.BrickColor = BrickColor.new("Really black")
        a.FrontSurface = "Smooth"
        a.BottomSurface = "Smooth"
        local pie = Instance.new("PointLight", a)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really blue").Color
        pie.Range = 60
        Instance.new("SpecialMesh", a).MeshType = 'Sphere'
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what:IsA("Part") then
                                local ex2 = Instance.new("Explosion", workspace)
                                ex2.Position = what.Position
                                ex2.BlastPressure = 0
                                ex2.BlastRadius = 50
                                wait(1)
                                what:Destroy()
                        end
                end
        end)
        coroutine.wrap(function()
                Armor = true
                humanoid.WalkSpeed = 30
                for i = 0,1,0.05 do
                        a.Mesh.Scale = Vector3.new(i,i,i)
                        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-70)
                        wait()
                end
                Armor = false
                humanoid.WalkSpeed = 100
        end)()
        coroutine.wrap(function()
                wait(5)
                Instance.new("Explosion",workspace).Position = a.Position
                a:Destroy()
        end)()
end
function __FireBall()
        if Regening == true then return end
        if Energy < 150 then return end
        if FireBall == true then return end
        Energy = Energy - 150
        game:GetService("Chat"):Chat(head,"[ Dark Black-Fire! ]",2)
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CanCollide = false
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-70)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(100,100,100)
        a.Transparency = 0.5
        a.BrickColor = BrickColor.new("Really black")
        a.FrontSurface = "Smooth"
        a.BottomSurface = "Smooth"
        local pie = Instance.new("PointLight", a)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really blue").Color
        pie.Range = 60
        Instance.new("SpecialMesh", a).MeshType = 'Sphere'
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
                humanoid.WalkSpeed = 100
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
function __Wall()
        if Regening == true then return end
        if Energy < 200 then return end
        if Wall == true then return end
        Energy = Energy - 200
        game:GetService("Chat"):Chat(head,"[ Wall of Stealing Souls! ]",2)
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CanCollide = false
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-20)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(500,500,50)
        a.Transparency = 0.5
        a.BrickColor = BrickColor.new("Really black")
        a.FrontSurface = "Smooth"
        a.BottomSurface = "Smooth"
        local pie = Instance.new("PointLight", a)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really red").Color
        pie.Range = 60
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what.Name == "Part" or "Sand" or "Blast" or "Ray" then
                                what:Remove()
                        elseif what.Name == "Base" or "Baseplate" then
                                return
                        end
                end
        end)
        coroutine.wrap(function()
                Wall = true
                humanoid.WalkSpeed = 0
                wait(2)
                Wall = false
                humanoid.WalkSpeed = 100
                con:disconnect()
                p:Remove()
        end)()
        coroutine.wrap(function()
                wait(5)
                Instance.new("Explosion",workspace).Position = a.Position
                a:Destroy()
        end)()
end
function __Tornado()
        if Regening == true then return end
        if Energy < 150 then return end
        if Tornado == true then return end
        Energy = Energy - 150
        game:GetService("Chat"):Chat(head,"[ Black Wind ]",2)
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CanCollide = false
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-50)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(100,100,100)
        a.Transparency = 0.5
        a.Reflectance = 0.5
        a.BrickColor = BrickColor.new("Really black")
        a.BottomSurface = "Smooth"
        a.TopSurface = "Smooth"
        local pie = Instance.new("PointLight", a)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really blue").Color
        pie.Range = 10
        local b = Instance.new("SpecialMesh",a)
        b.MeshId = 'http://www.roblox.com/asset/?id=16606212'
        b.VertexColor = Vector3.new(1, 1, 1)
        b.Scale = Vector3.new(10, 10, 10)
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                what:Destroy()
                        end
                end
        end)
        coroutine.wrap(function()
                Tornado = true
                humanoid.WalkSpeed = 0
                for i = 0,1,0.05 do
                        a.Mesh.Scale = Vector3.new(10,10,10)
                        wait()
                end
                Tornado = false
                humanoid.WalkSpeed = 100
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
function __Destiny()
        if Regening == true then return end
        if Energy < 200 then return end
        if Destiny == true then return end
        Energy = Energy - 200
        game:GetService("Chat"):Chat(head,"[ Scythe's Shadow ]",2)
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CanCollide = false
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-50)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(1000,0.2,50)
        a.BottomSurface = 'Smooth'
        a.TopSurface = 'Smooth'
        a.Transparency = 0.5
        a.BrickColor = BrickColor.new("Really black")
        local pie = Instance.new("PointLight", a)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really blue").Color
        pie.Range = 20
        Instance.new("SpecialMesh", a).MeshType = 'Sphere'
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                what:Destroy()
                        end
                end
        end)
        coroutine.wrap(function()
                Destiny = true
                humanoid.WalkSpeed = 0
                for i = 0,1,0.05 do
                        a.Mesh.Scale = Vector3.new(i,i,i)
                        wait()
                end
                Destiny = false
                humanoid.WalkSpeed = 100
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
        if Energy < 100 then return end
        if Spikes == true then return end
        Energy = Energy - 100
        Spikes = true
        game:GetService("Chat"):Chat(head,"[ Scythes of Hell! ]",2)
        humanoid.WalkSpeed = 0
        for z = 0,200 do
                local a = Instance.new("Part",workspace)
                a.FormFactor = 'Custom'
                a.Size = Vector3.new(30, 500, 30)
                a.Anchored = true
                a.CanCollide = false
                a.BrickColor = BrickColor.new("Really blue")
                a.Transparency = 0.5
                a.Reflectance = 0.5
                a.FrontSurface = "Smooth"
                a.BottomSurface = "Smooth"
                local pie = Instance.new("PointLight", a)
                pie.Brightness = 5000
                pie.Color = BrickColor.new("Royal purple").Color
                pie.Range = 20
                local b = Instance.new("SpecialMesh",a)
                b.MeshId = 'http://www.roblox.com/asset/?id=95891318'
                b.VertexColor = Vector3.new(1, 1, 1)
                b.Scale = Vector3.new(1,1,1)
                a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,-0.5,-(z*4)-2)
                local con = a.Touched:connect(function(what)
                        if what.Parent.Name ~= LocalPlayer.Name then
                                if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                        for i,v in pairs(what.Parent:children()) do
                                                if v.ClassName == 'Humanoid' then
                                                        if v.Health > 100 then v.Health = 100 end
                                                        v.Health = v.Health - 100
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
        humanoid.WalkSpeed = 100
        Spikes = false
end
function __Lightning()
        if Energy < 250 then return end
        if Lightning == true then return end
        if Regening == true then return end
        humanoid.WalkSpeed = 50
        Lightning = true
        game:GetService("Chat"):Chat(head,"[ Scythe's Judgement! ]",2)
        Energy = Energy - 250
        local function segment(pos1,pos2,color)
                local dis=(pos1-pos2).magnitude
                local p=Instance.new("Part")
                p.CanCollide=false
                p.FormFactor="Custom"
                p.Size=Vector3.new(50,50,dis)
                p.Anchored=true
                p.CFrame=CFrame.new(pos1,pos2)*CFrame.new(0,0,-dis/2)
                p.BrickColor=color
                p.Transparency = 0.5
                p.Reflectance = 0.5
                p.FrontSurface = "Smooth"
                p.BottomSurface = "Smooth"
                local pie = Instance.new("PointLight", p)
                pie.Brightness = 5000
                pie.Color = BrickColor.new("Really blue").Color
                pie.Range = 20
                local pie2 = Instance.new("SpecialMesh", p)
                pie2.MeshId = "http://www.roblox.com/asset/?id=95891318"
                pie2.Scale = Vector3.new(10,10,10)
                return p
        end
        target = mouse.Hit
        height=1000
        prev=(target*CFrame.new(0,300,0)).p
        for i=height,30,-50 do
                cur=Vector3.new(math.random(15)+target.x,i,math.random(15)+target.z)
                p=segment(prev,cur,BrickColor.new("Really black"))
                p.Parent=workspace
                local pie = Instance.new("PointLight", p)
                pie.Brightness = 5000
                pie.Color = BrickColor.new("Really blue").Color
                pie.Range = 10
                game:service("Debris"):AddItem(p,3)
                prev=cur
                wait()
        end
        p=segment(prev,target.p,BrickColor.new("Really black"))
        p.Parent=workspace
        local pie = Instance.new("PointLight", p)
        pie.Brightness = 5000
        pie.Color = BrickColor.new("Really blue").Color
        pie.Range = 10
        game:service("Debris"):AddItem(p,3)
        local ex = Instance.new("Explosion",workspace)
        ex.Position=target.p
        ex.BlastRadius = 100
        wait(1)
        Lightning = false
        humanoid.WalkSpeed = 100
end
function __Explosion()
        if Energy < 1000 then return end
        if Explosion == true then return end
        if Regening == true then return end
        humanoid.WalkSpeed = 0
        Explosion = true
        Energy = Energy - 1000
        game:GetService("Chat"):Chat(head,"[ Scythe's Shattted Judgement of Hell! ]",2)
        Instance.new("ForceField", LocalPlayer.Character)
        local Fire = Instance.new("Fire",LocalPlayer.Character.Torso)
        Fire.Color = BrickColor.new("Really black").Color
        for i = 0,100 do
                game:GetService("Chat"):Chat(head,"[ Charging... ]",1)
                Fire.Size = i
                wait(0.1)
        end
        game:GetService("Chat"):Chat(head,"[ Scythe's Shattered Judgement of Hell! ]",2)
        Fire:remove()
        LocalPlayer.Character:FindFirstChild("ForceField"):Remove()
        local a = Instance.new("Explosion", LocalPlayer.Character)
        a.Position = LocalPlayer.Character.Torso.Position
        a.BlastPressure = 1e100
        a.BlastRadius = 100
        Explosion = false
        humanoid.WalkSpeed = 100
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
                        elseif Mode == 'Explosion' then
                                __Explosion()
                        elseif Mode == 'Destiny' then
                                __Destiny()
                        elseif Mode == 'Tornado' then
                                __Tornado()
                        elseif Mode == 'Armor' then
                                __Armor()
                        elseif Mode == 'Wall' then
                                __Wall()
                        end
                end
                if Regening == true then
                        game:GetService("Chat"):Chat(head,"[ Charging... ]",1)
                        Energy = Energy + 5000
                        Instance.new("ForceField", LocalPlayer.Character)
                        wait(1)
                end
        end
end)()
mouse.KeyDown:connect(function(key)
        if key == 'e' then
                game:GetService("Chat"):Chat(head,"[ Charging... ]",1)
                humanoid.WalkSpeed = 75
                Regening = true
        end
        if key == 'q' then
                if Mode == 'Shoot' then
                        Mode = 'FireBall'
                elseif Mode == 'FireBall' then
                        Mode = 'Spikes'
                elseif Mode == 'Spikes' then
                        Mode = 'Lightning'
                elseif Mode == 'Lightning' then
                        Mode = 'Explosion'
                elseif Mode == 'Explosion' then
                        Mode = 'Destiny'
                elseif Mode == 'Destiny' then
                        Mode = 'Tornado'
                elseif Mode == 'Tornado' then
                        Mode = 'Wall'
                elseif Mode == 'Wall' then
                        Mode = 'Armor'
                else
                        Mode = 'Shoot'
                end
        end
end)
mouse.KeyUp:connect(function(key)
        if key == 'e' then
                game:GetService("Chat"):Chat(head,"[ Lets see how you do now. ]",1)
                humanoid.WalkSpeed = 100
                Regening = false
                if LocalPlayer.Character:FindFirstChild("ForceField") then
                        LocalPlayer.Character:FindFirstChild("ForceField"):Remove()
                end
        end
end)
count = 0
countspeed = 0.70
coroutine.wrap(function()
        while wait() do
                if Energy > 10000 then Energy = 10000 end
                if Energy < 0 then Energy = 0 end
                TEXTLABEL.Text = "Power: "..tostring(Energy)
                TEXTLABEL2.Text = "Current Health: "..tostring(math.floor(humanoid.Health))
                if Mode == 'Shoot' then
                        TEXTLABEL3.Text = 'Strength: Dark Wyvern (50 Power)'
                elseif Mode == 'FireBall' then
                        TEXTLABEL3.Text = 'Strength: Dark-Black Fire (150 Power)'
                elseif Mode == 'Spikes' then
                        TEXTLABEL3.Text = 'Strength: Scythes of Hell (100 Power)'
                elseif Mode == 'Lightning' then
                        TEXTLABEL3.Text = 'Strength: Scythes Judgement (250 Power)'
                elseif Mode == 'Explosion' then
                        TEXTLABEL3.Text = 'Strength: Scythes Shattted Judgement of Hell (1000 Power)'
                elseif Mode == 'Destiny' then
                        TEXTLABEL3.Text = 'Strength: Scythes Shadow (200 Power)'
                elseif Mode == 'Tornado' then
                        TEXTLABEL3.Text = 'Strength: Black Wind (150 Power)'
                elseif Mode == 'Armor' then
                        TEXTLABEL3.Text = 'Strength: Armor of Constealing Light (1000 Power)'
                elseif Mode == 'Wall' then
                        TEXTLABEL3.Text = 'Strength: Wall of Stealing Souls (200 Power)'
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
                                if Energy == 10000 then Regening = false end
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
                        elseif Explosion == true then
                                coroutine.wrap(function()
                                        for i = 0,360 do
                                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                                wait()
                                        end
                                end)()
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
humanoid.Died:connect(function()
    for cframe_parts = 0, 50 do
        local p = Instance.new("Part")
        p.FormFactor = "Custom"
        p.BrickColor = BrickColor.new(Colors[math.random(1, #Colors)])
        p.Size = Vector3.new(1, 1, 1)
        Instance.new("BlockMesh", p).Scale = Vector3.new(0.05, 0.05, 0.05)
        p.Locked = true
        p.CanCollide = false
        p.Anchored = true
        p.CFrame = torso.CFrame * CFrame.Angles(math.random(-50, 50),math.random(-50, 50),math.random(-50, 50))
        p.Parent = workspace
                local box = Instance.new("SelectionBox", p)
                box.Color = BrickColor.new(Colors[math.random(1, #Colors)])
                box.Adornee = p
                box.Transparency = 0.5
                box.Visible = true
    game:service'Debris':AddItem(p, 5)
    coroutine.wrap(function()
    while wait() do
        if p ~= nil then
            p.CFrame = p.CFrame * CFrame.new(0, 0.085, 0)
            p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.005, 0, 0.005) + Vector3.new(0, 0.01, 0)
            p.Transparency = p.Transparency + 0.015
        else
            break
        end
    end
end)()
end
for _,v in pairs(char:children()) do
    if v:IsA("Part") then
        v:Destroy()
    end
end
 
end)
