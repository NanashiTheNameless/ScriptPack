ply = game.Players.hippiekid94
char = ply.Character
torso = char.Torso
rs = torso["Right Shoulder"]
rarm = char["Right Arm"]
rw = Instance.new("Weld")
attacking = false
 
function lock(a)
if a == 1 then
rw.Parent = torso
rw.C0,rw.C1 = rs.C0,rs.C1
rw.Part0,rw.Part1 = rs.Part0,rs.Part1
rs.Parent = nil
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
end
end
 
function infect(hit)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("poison") == nil then
Instance.new("BoolValue",v).Name = "poison"
 
coroutine.resume(coroutine.create(function()
for i = 1,30 do
wait()
v.Health = v.Health - 1
 
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(0.5,0.5,0.5)
c.CFrame = v.Torso.CFrame + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
c.Anchored = true
c.Transparency = 0.5
c.Color = Color3.new(0,0.3,0)
 
delay(0.1,function()
for i = 0.5,1,0.05 do
wait()
c.Transparency = i
end
c:Remove()
end)
 
end
v:FindFirstChild("poison"):Remove()
end))
 
end
end
end
end

m = Instance.new("Model",char)
 
hdl = Instance.new("Part",m)
hdl.TopSurface,hdl.BottomSurface = 0,0
hdl.formFactor = "Custom"
hdl.CanCollide = false
hdl.Size = Vector3.new(0.3,1.5,0.3)
hdl.Color = Color3.new(0,5,0)
 
p1 = hdl:Clone()
p1.Parent = m
p1.Size = Vector3.new(1,4,0.2)
p1.Color = Color3.new(0,0,0)
p1.CanCollide = True
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p1,hdl
w.C1 = CFrame.new(0,hdl.Size.y/2+p1.Size.y/2-0.05,0)
 
for i = -p1.Size.y/2,p1.Size.y/2,0.25 do
c = Instance.new("WedgePart",m)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Parent = m
c.Size = Vector3.new(0.1,0.1,0.2)
c.BrickColor = BrickColor.new("Royal purple")
c.CanCollide = True
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = c,p1
w.C1 = CFrame.new(-p1.Size.x/2-c.Size.x/2+0.05,i*0.95,0) * CFrame.Angles(0,math.pi/2,0)
end
 
 
p2 = Instance.new("WedgePart",m)
p2.TopSurface,p2.BottomSurface = 0,0
p2.formFactor = "Custom"
p2.Size = Vector3.new(0.2,1,2)
p2.Color = p1.Color
p2.CanCollide = True
 
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p2,p1
w.C1 = CFrame.new(0,p1.Size.y/2+p2.Size.z/2-0.05,0) * CFrame.Angles(math.pi/2,0,math.pi/2)
 
for i = -p2.Size.z/2+0.25,p2.Size.z/2-0.25,0.2 do
if i ~= 2 then
 
c = Instance.new("WedgePart",m)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Parent = m
c.Size = Vector3.new(0.2,0.1,0.2)
c.BrickColor = BrickColor.new("Royal purple")
c.CanCollide = True
 
w = Instance.new("Weld",m)
w.Part0,w.Part1 = c,p2
w.C1 = CFrame.new(0,i/2+0.2,i+0.18) * CFrame.Angles(math.pi/2-math.rad(22),0,0)
 
end
end
 
hw = Instance.new("Weld",m)
hw.Part0,hw.Part1 = hdl,rarm
hw.Name = "hw"
hw.C1 = CFrame.new(0,-rarm.Size.y/2-0.15,0) * CFrame.Angles(math.pi/2,-math.pi/2,math.pi)
 
for i,v in pairs(m:GetChildren()) do
if v:IsA("BasePart") and v ~= hdl then
v.Touched:connect(damage)
v.Touched:connect(infect)
end
end
 
hdl.Name = "Handle"
 
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Genchei"
 
s = 20
 
function ang(x,y,z)
return CFrame.Angles(math.rad(x)*s,math.rad(y)*s,math.rad(z)*s)
end
 
hold = false
function lightning(mouse)
attacking = true
r = 4
if mouse.Target ~= nil then
c = Instance.new("Part",m)
c.formFactor = "Custom"
c.Size = Vector3.new(3,0.5,3)
c.Anchored = true
c.TopSurface,c.BottomSurface = 0,0
c.CanCollide = false
c.BrickColor = BrickColor.new("Royal purple")
 
Instance.new("CylinderMesh",c)
hold = true
while hold == true do
wait()
c.CFrame = CFrame.new(mouse.hit.p)
end
 
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
r = 5
for i = 1,360,60 do
wait()
c2 = Instance.new("Part",c)
c2.Size = Vector3.new(1,5,1)
c2.CanCollide = false
c2.Touched:connect(damage)
c2.TopSurface,c2.BottomSurface = 0,0
c2.Transparency = 1
c2.Color = Color3.new(1,1,1)
c2.CFrame = c.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
c2.CFrame = CFrame.new(c2.Position,c.Position)
c2.Anchored = true
 
Instance.new("FileMesh",c2).MeshId = "rbxasset://fonts/sword.mesh"
 
for i = 1,0.5,-0.1 do
wait()
c2.Transparency = i
end
 
end
 
for i = 1,50 do
wait()
local p = Instance.new("Part",m)
p.Size = Vector3.new(1,50,1)
p.Anchored = true
p.CFrame = c.CFrame + Vector3.new(math.random(-r,r),p.Size.y/2-1,math.random(-r,r))
p.CanCollide = false
p.BrickColor = BrickColor.new("Royal purple")
Instance.new("CylinderMesh",p)
 
for i,v in pairs(Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for i,o in pairs(v:GetChildren()) do
if o:IsA("Humanoid") then
if (o.Torso.Position-(p.CFrame * CFrame.new(0,-p.Size.y/2,0)).p).magnitude <= 10 then
o.Health = o.Health - 1.25
 
end
end
end
end
end
 
delay(0,function()
for i = 0,1,0.1 do
wait()
p.Transparency = i
end
p:Remove()
end)
end
 
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
 
c:Remove()
end
attacking = false
end
 
 
function wave()
attacking = true
s = 10
 
for i = 1,140,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
s = 20
for i = 1,220,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
bp = Instance.new("BodyPosition",torso)
bp.maxForce = Vector3.new() * math.huge
bp.position = torso.Position + Vector3.new(0,50,0)
 
while (torso.Position-bp.position).magnitude > 1 do wait() end
 
bp.position = bp.position - Vector3.new(0,50,0)
 
while (torso.Position-bp.position).magnitude > 10 do wait() end
bp:Remove()
 
for i = 1,(220-140)+80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
 
r = 4
coroutine.resume(coroutine.create(function()
 
for o = 2,16,2 do
for i = 1,360,10 do
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(1,o,1)
c.Anchored = true
c.CFrame = CFrame.new((p2.CFrame * CFrame.new(0,p2.Size.y/2,0)).p) + Vector3.new(math.cos(math.rad(i))*r,-c.Size.y,math.sin(math.rad(i))*r)
 
coroutine.resume(coroutine.create(function()
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame + Vector3.new(0,1,0)
end
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame - Vector3.new(0,1,0)
end
c:Remove()
end))
 
end
r = r+3
end
 
end))
 
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
 
attacking = false
end
 
function Guard()
r = 20
 
h = 30
 
for o = h,100,10 do
for i = 0,360,30 do
local c = p1:Clone()
c.Parent = Workspace
c.Size = Vector3.new(8,o,8)
c.Anchored = true
c.Material = "Slate"
c.CanCollide = true
c.BrickColor = BrickColor.new("Royal purple")
c.CFrame = torso.CFrame + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r) - Vector3.new(0,c.Size.y,0)
 
coroutine.resume(coroutine.create(function()
for i = 1,c.Size.y,2 do
wait()
c.CFrame = c.CFrame + Vector3.new(0,2,0)
end
 
delay(3,function()
for i = 1,c.Size.y do
wait()
c.CFrame = c.CFrame - Vector3.new(0,1,0)
end
c:Remove()
end)
 
 
end))
 
end
r = r+10
end
end
 
function Raise()
local c = hdl:Clone()
c.Parent = m
c.CanCollide = true
c.Material = "Slate"
c.BrickColor = BrickColor.new("Royal purple")
c.Size = Vector3.new(10,50,10)
c.Anchored = true
c.CFrame = torso.CFrame - Vector3.new(0,c.Size.y/2,0)
 
for i = 1,c.Size.y-3 do
wait()
c.CFrame = c.CFrame + Vector3.new(0,1,0)
end
end
 
function slash(a)
attacking = true
for i = 1,70,s do
wait()
rw.C0 = rw.C0 * ang(0,1,0)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,70,s do
wait()
rw.C0 = rw.C0 * ang(0,-1,0)
end
attacking = false
end
 
function wield(a)
s = 17
if a == 1 then
for i = 1,85,s do
wait()
rw.C0 = rw.C0 * ang(-0.1,0,1)
end
elseif a == 0 then
for i = 1,85,s do
wait()
rw.C0 = rw.C0 * ang(0.1,0,-1)
end
end
s = 20
end
 
function freeze(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        if (phit==p) then return end
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        if (char:findFirstChild("fr_block")==nil) then
            local pa = Instance.new("Part")
            local bl = Instance.new("BlockMesh")
            bl.Parent = pa
            pa.Anchored = true
            pa.Name = "fr_block"
            pa.Transparency = 1
            pa.BrickColor = BrickColor.New("Royal purple")
            pa.FormFactor = "Custom"
            pa.Size = Vector3.new(6,7,6)
            pa.CFrame = char["Torso"].CFrame
            pa.Parent = char
            char.Humanoid.WalkSpeed = 0
            if (char.Humanoid.Health<char.Humanoid.MaxHealth/4) then
                char.Humanoid.Health = 0
            else
                char.Humanoid.Health = char.Humanoid.Health - char.Humanoid.MaxHealth/4
            end
            local g = char:GetChildren()
            for i = 1,#g do
                if (g[i]:IsA("Part")) then
                    g[i].Anchored = true
                    g[i].Reflectance = .3
                end
            end
            for i = 1,10 do
                pa.Transparency = pa.Transparency - .06
                pa.Reflectance = pa.Reflectance + .01
                wait(.01)
            end
        else
            if (phit~=nil) then
                local fr = char["fr_block"]
                local char = trg.Parent
                for i = 1,10 do
                    fr.Transparency = fr.Transparency + .06
                    fr.Reflectance = fr.Reflectance - .01
                    wait(.01)
                end
                local g = char:GetChildren()
                for i = 1,#g do
                    if (g[i]:IsA("Part")) then
                        g[i].Anchored = false
                        g[i].Reflectance = 0
                    end
                end
                char.Humanoid.WalkSpeed = 16
                fr:remove()
            end
        end
    end
end
 
function explode(m)
    local t = m.Hit.p
    local trg = m.Target
    if (trg==nil) then return end
    local e = Instance.new("Explosion")
    e.BlastRadius = 20
    e.BlastPressure = 20
    e.Position = t
    e.Parent = game.Workspace
end
 
function fire(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        local f = Instance.new("Fire")
        f.Color = Color3.new(0,0,0)
        f.SecondaryColor = Color3.new(0,5,0)
        f.Parent = char.Torso
        f.Name = "BurnFire"
        coroutine.resume(coroutine.create(function()
            while (char.Humanoid.Health>0) do
                if (char.Humanoid.Health<2) then
                    char.Humanoid.Health = 0
                    char:BreakJoints()
                else
                    char.Humanoid.Health = char.Humanoid.Health - 2
                end
                wait(.05)
            end
        end))
    end
end
 
local rls = {nil, nil}
 
doArms=function(Com)
    if Com==true then
        Torso=p.Character.Torso
        RA=Torso:FindFirstChild("Right Shoulder")
        if RA==nil then
            return
        end
        LA=Torso:FindFirstChild("Left Shoulder")
        if LA==nil then
            return
        end
        rls[1]=Instance.new("Motor")
        local RightS = rls[1]
        RightS.Name="Right_Shoulder"
        RightS.C0=RA.C0
        RightS.C1=RA.C1
        RightS.Part0=RA.Part0
        RightS.Part1=RA.Part1
        RightS.MaxVelocity=.35
        RightS.Parent=Torso
        rls[2]=Instance.new("Motor")
        local LeftS = rls[2]
        LeftS.Name="Left_Shoulder"
        LeftS.C0=LA.C0
        LeftS.C1=LA.C1
        LeftS.Part0=LA.Part0
        LeftS.Part1=LA.Part1
        LeftS.MaxVelocity=.35
        LeftS.Parent=Torso
        RA.Parent=nil
        LA.Parent=nil
        RA.Part1=nil
        LA.Part1=nil
    else
        if (rls[1]==nil) or (rls[2]==nil) then return end
        local RightS = rls[1]
        local LeftS = rls[2]
        RightS.Part1=nil
        LeftS.Part1=nil
        RightS.Parent=nil
        LeftS.Parent=nil
        Torso=p.Character.Torso
        RA.Parent=Torso
        LA.Parent=Torso
        RA.Part1=nil
        LA.Part1=nil
        RA.Part1=p.Character["Right Arm"]
        LA.Part1=p.Character["Left Arm"]
        wait(.2)
        RA.Part0=Torso
        LA.Part0=Torso
        RA.Part1=p.Character["Right Arm"]
        LA.Part1=p.Character["Left Arm"]
    end
end
 
function ReturnAngles()
    local RightS = rls[1]
    local LeftS = rls[2]
    RightS.DesiredAngle = 0
    LeftS.DesiredAngle = 0
    wait(1)
    doArms(false)
end
 
 
function kd(key,mouse)
if attacking == false then
 
if key == "f" then lightning(mouse)
elseif key == "g" then wave()
elseif key == "r" then Guard()
elseif key == "t" then Raise()
elseif key == "z" then freeze(mouse)
elseif key == "x" then explode(mouse)
elseif key == "c" then fire(mouse)
       
end
 
end
end
 
klist = {"f"}
 
function select(mouse)
lock(1)
wield(1)
 
mouse.KeyUp:connect(function(hit) for i,v in pairs(klist) do if hit == v then hold = false end end end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
mouse.Button1Down:connect(function() if attacking == false then slash() end end)
end
 
h.Selected:connect(select)
 
h.Deselected:connect(function() wield(0) lock(0) end)
 

