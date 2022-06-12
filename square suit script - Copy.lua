--Saved at 1:09 AM
local ran,err = ypcall(function()
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
if anim then
anim:Destroy()
end

if char:findFirstChild(script.Name) then
   char:findFirstChild(script.Name):Destroy()
end




--create func
function part(parent, size, color, formfactor, collide, transparency)
    if transparency == nil then transparency=0 end
    if collide == nil then collide=false end
        if formfactor == nil then formfactor=Enum.FormFactor.Custom end
        local p = Instance.new("Part", parent)
        p.FormFactor = formfactor
        p.CanCollide = false
        p.Size = size
        p.Locked = true
        p.Transparency = transparency
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
function wedge(parent, size, color, formfactor, collide, transparency)
    
        if transparency==nil then transparency=0 end
    if collide==nil then collide=false end
        if formfactor==nil then formfactor="Custom" end
        
                local p = Instance.new("WedgePart", parent)
        p.FormFactor = formfactor
        p.CanCollide = false
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
if char:findFirstChild("Shirt") then
    char:findFirstChild("Shirt"):Destroy()
end
if char:findFirstChild("Pants") then
    char:findFirstChild("Pants"):Destroy()
end
if char:findFirstChild("Body Colors") then
char:findFirstChild("Body Colors"):Destroy()
end
wait()
        for i,v in pairs(char:children()) do
            if v:IsA("Hat") then 
                v:Destroy()
            end
            if v:IsA("Part") then
                v.BrickColor = BrickColor.new(224)
            end
        end
randomc = BrickColor.Random()
--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
    local rshldr = part(char, Vector3.new(1.03, 1.1, 1.03), randomc)
    local rwld = weld(rshldr, ra, CFrame.new(0, -.5, 0))
    local lshldr = part(char, Vector3.new(1.03, 1.1, 1.03), randomc)
    local lwld = weld(lshldr, la, CFrame.new(0, -.5, 0))
    local rshldr2 = part(char, Vector3.new(1.05, .2, 1.05), BrickColor.White())
    local rwld2 = weld(rshldr2, ra, CFrame.new(0, 0, 0))
    local lshldr2 = part(char, Vector3.new(1.05, .2, 1.05), BrickColor.White())
    local lwld2 = weld(lshldr2, la, CFrame.new(0, 0, 0))
    local trs = part(char, Vector3.new(2.03, 2.03, 1.03), randomc)
    local trsw = weld(trs, torso, CFrame.new(0, 0, 0))
    local trs2 = part(char, Vector3.new(2.05, .2, 1.05), BrickColor.White())
    local trs2w = weld(trs2, torso, CFrame.new(0, .95, 0))
    local lel = part(char, Vector3.new(1.015, 2.03, 1.015), BrickColor.Blue())
    local llw = weld(lel, ll, CFrame.new(0, 0, 0))
    local ril = part(char, Vector3.new(1.015, 2.03, 1.015), BrickColor.Blue())
    local rlw = weld(ril, rl, CFrame.new(0, 0, 0))
    local lel2 = part(char, Vector3.new(1.04, 0.3, 1.44), BrickColor.Gray())
    local llw2 = weld(lel2, ll, CFrame.new(0, .9, .2))
    local ril2 = part(char, Vector3.new(1.04, 0.3, 1.44), BrickColor.Gray())
    local rlw2 = weld(ril2, rl, CFrame.new(0, .9, .2))
        
            local hat = part(char, Vector3.new(1.34, 0.5, 1.34), randomc)
    local hatw = weld(hat, head, CFrame.new(0, -.7, 0))
    local hat2 = part(char, Vector3.new(1.64, 0.2015, 1.94), randomc)
    local hatw2 = weld(hat2, head, CFrame.new(0, -.4, 0))
            local hat3 = part(char, Vector3.new(1.44, 0.2, 2.14), randomc)
    local hatw3 = weld(hat3, head, CFrame.new(0, -.4, 0))
        
        
        specialmesh(ra, "Brick", Vector3.new(1, 1, 1), "")
        specialmesh(la, "Brick", Vector3.new(1, 1, 1), "")
                specialmesh(rl, "Brick", Vector3.new(1, 1, 1), "")
        specialmesh(ll, "Brick", Vector3.new(1, 1, 1), "")
                specialmesh(head, "Brick", Vector3.new(0.62, 1.2, 1.2), "")
        specialmesh(torso, "Brick", Vector3.new(1, 1, 1), "")
        


local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(-0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

local anim = ""
local lastanim = anim
local countspeed = 1
local slidecount = 1
local speed = 0
local count = 0
local slidecountmax = 0.001
local rotation = 1
local maxrotation = 0.001
local bobbing = 0.001
local maxbobbing = 0


mouse.KeyDown:connect(function(k)
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 24
    end
end)
mouse.KeyUp:connect(function(k)
    if string.byte(k) == 52 then
        anim = "None"
    end
    
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
    end
end)

while wait() do
     count = (count % 100) + countspeed
    angle = math.pi * math.sin(math.pi*2/100*count)
if slidecount < slidecountmax then 
    slidecount = slidecount + speed
end 
if slidecount > slidecountmax then
    slidecount = slidecount - speed
end    
if rotation > maxrotation then
    rotation = rotation - rotation/12.5
end
if rotation < maxrotation then
    rotation = rotation + rotation/12.5
end

if bobbing > maxbobbing then
    bobbing = bobbing - bobbing/5
end
if bobbing < maxbobbing then
    bobbing = bobbing + bobbing/5
end


local rayz = Ray.new(torso.Position, Vector3.new(0, -4.5, 0))
    local hitz, enz = workspace:findPartOnRay(rayz, char)
    if hitz == nil then
        anim = "Jumping"
        countspeed = 5
        rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.pi + -angle*rotation, 0,math.abs(angle*0.03))
        lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-math.pi+ angle*rotation, 0,-math.abs(angle*0.03))
    rlegm.C0 = CFrame.new(0.5, -1 + math.abs(angle*0.02), 0) * CFrame.Angles(angle*rotation/4, 0, 0)
    llegm.C0 = CFrame.new(-0.5, -1 - -math.abs(angle*0.02), 0) * CFrame.Angles(-angle*rotation/4, 0, 0)
    neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
    anim = "Idle"
            slidecountmax = 0
    countspeed = 1
    maxrotation = 0.05
    rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(slidecount) + -angle*rotation, 0,math.abs(angle*0.03))
    lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(slidecount) + angle*rotation, 0,-math.abs(angle*0.03))
    rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(angle*rotation/2, 0, 0)
    llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(-angle*rotation/2, 0, 0)
        neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
        rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 18 then
    anim = "Walking"
        slidecountmax = 0
    maxrotation = 0.2
            countspeed = 6
                    rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(slidecount) + -angle*rotation, 0,math.abs(angle*0.03))
    lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(slidecount) + angle*rotation, 0,-math.abs(angle*0.03))
        rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(angle*rotation, 0, 0)
        llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(-angle*rotation, 0, 0)
    neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0)
    rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 18 then
slidecountmax = 4
speed = 0.5
    maxrotation = 0.45
            countspeed = 8
                    rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-angle*rotation, 0,math.abs(angle*0.03))
    lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(angle*rotation, 0,-math.abs(angle*0.03))
        rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(angle*rotation, 0, 0)
        llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(-angle*rotation, 0, 0)
    neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
    rj.C0 = CFrame.new(0, math.abs(angle*.055), 0) * CFrame.Angles(-math.pi/8/5*slidecount, math.sin(angle*0.05), 0)
--[[elseif anim == "Sliding" then
    print'work pls5'
    countspeed = 0.1
    print'k2'
    maxbobbing = 1.8
    print'asdf3'
    rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-angle*rotation, 0,math.abs(angle*0.03))
    lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(angle*rotation, 0,-math.abs(angle*0.03))
        rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(angle*rotation, 0, 0)
        llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(-angle*rotation, 0, 0)
    neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(-math.rad(bobbing*49), 0, 0)
    rj.C0 = CFrame.new(0, bobbing, 0) * CFrame.Angles(math.rad(bobbing*49), 0, 0)]]
    end
lastanim = anim
end
end)
if not ran and err then
    print(err)
end


