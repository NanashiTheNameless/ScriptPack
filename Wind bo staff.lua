---that is my annoying staff i edited sound,damage and color--------------------------------------------------------------------------------------------------------------Staff V.2.0 --------------------------------------------------------------------------------------------------------------------------------------------------
Plrs = game:GetService("Players")
me = Plrs.LocalPlayer
char = me.Character
Modelname = "BoStaff"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true
block = false
breakblock = 10
holdkey = false
effectOn = false
local Ball1 = Instance.new("Part")
Ball1.Parent = char
Ball1.Name = "Ball1"
Ball1.CanCollide = false
Ball1.Locked = true
Ball1.TopSurface = "Smooth"
Ball1.BottomSurface = "Smooth"
Ball1.formFactor = "Symmetric"
Ball1.BrickColor = BrickColor.new("Really black")
Ball1.CFrame = char.Torso.CFrame
Ball1.Transparency = 0
Ball1.Reflectance = 0.1
Ball1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Ball1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-1.5, 1.5, 0.5)
Ball1Mesh = Instance.new("SpecialMesh")
Ball1Mesh.MeshType = "Sphere"
Ball1Mesh.Parent = Ball1
Ball1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Gold")
Ball2.CFrame = char.Torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = char.Torso
b2Weld.Part0 = char.Torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(1.75, -1.75, 0.5)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "Sphere"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Staff = Instance.new("Part")
Staff.Parent = char
Staff.Name = "Staff"
Staff.CanCollide = false
Staff.Locked = true
Staff.TopSurface = "Smooth"
Staff.BottomSurface = "Smooth"
Staff.formFactor = "Symmetric"
Staff.BrickColor = BrickColor.new("Really black")
Staff.CFrame = char.Torso.CFrame
Staff.Transparency = 0
Staff.Reflectance = 0.3
Staff.Size = Vector3.new(1, 1, 1)
sWeld = Instance.new("Weld")
sWeld.Parent = char.Torso
sWeld.Part0 = char.Torso
sWeld.Part1 = Staff
sWeld.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(0, 0, 0.75)
sWeld.Name = "TorsoWeld3"
StaffMesh = Instance.new("CylinderMesh")
StaffMesh.Parent = Staff
StaffMesh.Scale = Vector3.new(0.5, 5, 0.5)
------------------------------------------------------------------------------------------------------------------------------
function CreateHandWep()
local Ball1 = Instance.new("Part")
Ball1.Parent = char
Ball1.Name = "Ball1"
Ball1.CanCollide = false
Ball1.Locked = true
Ball1.TopSurface = "Smooth"
Ball1.BottomSurface = "Smooth"
Ball1.formFactor = "Symmetric"
Ball1.BrickColor = BrickColor.new("Really black")
Ball1.CFrame = char.Torso.CFrame
Ball1.Transparency = 0
Ball1.Reflectance = 0.1
Ball1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Ball1
b1Weld.C0 = CFrame.new(0, -1, 3)
b1Weld.Name = "Grip1"
Ball1Mesh = Instance.new("SpecialMesh")
Ball1Mesh.MeshType = "Sphere"
Ball1Mesh.Parent = Ball1
Ball1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Gold")
Ball2.CFrame = char.Torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = char["Right Arm"]
b2Weld.Part0 = char["Right Arm"]
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, -1.2, -3)
b2Weld.Name = "Grip2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "Sphere"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Staff = Instance.new("Part")
Staff.Parent = char
Staff.Name = "Staff"
Staff.CanCollide = false
Staff.Locked = true
Staff.TopSurface = "Smooth"
Staff.BottomSurface = "Smooth"
Staff.formFactor = "Symmetric"
Staff.BrickColor = BrickColor.new("Really black")
Staff.CFrame = char.Torso.CFrame
Staff.Transparency = 0
Staff.Reflectance = 0.3
Staff.Size = Vector3.new(1, 1, 1)
sWeld = Instance.new("Weld")
sWeld.Parent = char["Right Arm"]
sWeld.Part0 = char["Right Arm"]
sWeld.Part1 = Staff
sWeld.C0 = CFrame.new(0, -1.1, 0) * CFrame.Angles(1.5, 0, 0)
sWeld.Name = "Grip3"
StaffMesh = Instance.new("CylinderMesh")
StaffMesh.Parent = Staff
StaffMesh.Scale = Vector3.new(0.5, 5, 0.5)
end
function CreateBackWep()
local Ball1 = Instance.new("Part")
Ball1.Parent = char
Ball1.Name = "Ball1"
Ball1.CanCollide = false
Ball1.Locked = true
Ball1.TopSurface = "Smooth"
Ball1.BottomSurface = "Smooth"
Ball1.formFactor = "Symmetric"
Ball1.BrickColor = BrickColor.new("Really black")
Ball1.CFrame = char.Torso.CFrame
Ball1.Transparency = 0
Ball1.Reflectance = 0.1
Ball1.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char.Torso
b1Weld.Part0 = char.Torso
b1Weld.Part1 = Ball1
b1Weld.Name = "TorsoWeld1"
b1Weld.C0 = CFrame.new(-1.5, 1.5, 0.5)
Ball1Mesh = Instance.new("SpecialMesh")
Ball1Mesh.MeshType = "Sphere"
Ball1Mesh.Parent = Ball1
Ball1Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Gold")
Ball2.CFrame = char.Torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = char.Torso
b2Weld.Part0 = char.Torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(1.75, -1.75, 0.5)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "Sphere"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
local Staff = Instance.new("Part")
Staff.Parent = char
Staff.Name = "Staff"
Staff.CanCollide = false
Staff.Locked = true
Staff.TopSurface = "Smooth"
Staff.BottomSurface = "Smooth"
Staff.formFactor = "Symmetric"
Staff.BrickColor = BrickColor.new("Really black")
Staff.CFrame = char.Torso.CFrame
Staff.Transparency = 0
Staff.Reflectance = 0.3
Staff.Size = Vector3.new(1, 1, 1)
sWeld = Instance.new("Weld")
sWeld.Parent = char.Torso
sWeld.Part0 = char.Torso
sWeld.Part1 = Staff
sWeld.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(0, 0, 0.75)
sWeld.Name = "TorsoWeld3"
StaffMesh = Instance.new("CylinderMesh")
StaffMesh.Parent = Staff
StaffMesh.Scale = Vector3.new(0.5, 5, 0.5)
end
char.Humanoid.MaxHealth = 250
wait()
char.Humanoid.Health = 250
Add = {
 Sphere = function(P)
  local m = Instance.new("SpecialMesh",P)
  m.MeshType = "Sphere"
  return m
 end,
 BF = function(P)
  local bf = Instance.new("BodyForce",P)
  bf.force = Vector3.new(0, P:GetMass()*187, 0)
  return bf
 end,
 BP = function(P)
  local bp = Instance.new("BodyPosition",P)
  bp.maxForce = Vector3.new(math.huge, 0, math.huge)
  bp.P = 14000
  return bp
 end,
 BG = function(P)
  local bg = Instance.new("BodyGyro",P)
  bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
  bg.P = 14000
  return bg
 end
}
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
 local p = Instance.new("Part")
 p.formFactor = "Custom"
 p.Anchored = Anchor
 p.CanCollide = Collide
 p.Transparency = Tran
 p.Reflectance = Ref
 p.BrickColor = BrickColor.new(Color)
 for _, Surf in pairs(Surfaces) do
  p[Surf] = "Smooth"
 end
 p.Size = Vector3.new(X, Y, Z)
 if Break then
  p:BreakJoints()
 else p:MakeJoints() end
 p.Parent = Parent
 return p
end
function Weld(p0, p1, x, y, z, a, b, c)
 local w = Instance.new("Weld")
 w.Parent = p0
 w.Part0 = p0
 w.Part1 = p1
 w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
 return w
end
function ComputePos(pos1, pos2)
 local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
 return CFrame.new(pos1, pos3)
end
function getHumanoid(c)
 local h = nil
 for i,v in pairs(c:children()) do
  if v:IsA("Humanoid") and c ~= char then
   if v.Health > 0 then
    h = v
   end
  end
 end
 return h
end
function getHead(c, pos, m)
 local h = nil
 local n = nil
 t = c:findFirstChild("Torso")
 if t ~= nil then
  n = t:findFirstChild("Neck")
 end
 for i,v in pairs(c:children()) do
  if v.Name == "Head" then
   if (v.Position - pos).magnitude < m then
    h = v
   end
  end
 end
 return h, n
end
for i,v in pairs(char:children()) do
 if v.Name == Modelname then
  v:remove()
 end
end
torso = char.Torso
head = char.Head
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
RightShoulder = torso["Right Shoulder"]
LeftShoulder = torso["Left Shoulder"]
RightHip = torso["Right Hip"]
LeftHip = torso["Left Hip"]
LastHP = hum.Health
function CreateTag(Attacker, VictimHumanoid)
 for i, v in pairs(VictimHumanoid:GetChildren()) do
  if v.Name == "creator" then
   v:Remove()
  end
 end
 Tag = Instance.new("ObjectValue")
 Tag.Parent = VictimHumanoid
 Tag.Name = "creator"
 Tag.Value = Attacker
end
function HpChange(newhp)
 if block and hum.Health > 0.1 then
  local dif = LastHP - newhp
  if dif > 0 then
   local h = LastHP - ((LastHP-newhp)/3)
   hum.Health = h
   wait()
   hum.Health = h
  end
  if dif > breakblock then
   block = false
   local a = Add.BP(torso)
   a.position = torso.Position
   local b = Add.BG(torso)
   b.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0, 0, -5).p)
   wait(0.1)
   a:remove()
   b:remove()
   able = true
  end
 end
 LastHP = hum.Health
end
hum.HealthChanged:connect(HpChange)
hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0
slash = Instance.new("Sound")
slash.SoundId = "http://www.roblox.com/asset/?id=130839563"
slash.Volume = 1
slash.Pitch = 1.5
slash.Parent = Rarm
hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=130839563"
hitsound.Volume = 1
hitsound.Pitch = 1
hitsound.Parent = torso
Mo = Instance.new("Model")
Mo.Name = Modelname
RABrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
TBricks = {}
for i, v in pairs({Rarm, Larm, Rleg, Lleg, torso, Ball1, Ball2, Staff, head}) do
 local p = Part(Mo, false, false, 1, 0, "Really black", 0.9, 0.9, 0.8, true)
 Weld(v, p, 0, 0.7, 0, 0, 0, 0)
 table.insert(TBricks, {p, hurt = false, able = true})
end
function startEff(part)
 effectOn = true
 local lastPoint = part.Position
 coroutine.resume(coroutine.create(function()
  while effectOn do
   wait()
   local mag = (lastPoint - part.Position).magnitude
   local p = Part(Mo, true, false, 0.2, 0.05, "White", 0.1, 0.1, mag+0.2, true)
   p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
   Instance.new("BlockMesh",p)
   lastPoint = part.Position
   coroutine.resume(coroutine.create(function()
    for x=0.2,1,0.2 do
     wait()
     p.Transparency = x
    end
    p:remove()
   end))
  end
 end))
end
function endEff()
 effectOn = false
end
function ShowDMG(p, d)
 local mo = Instance.new("Model")
 mo.Name = d
 local pa = Part(mo, false, true, 0, 0, "Really black", 0, 0, 0, true)
 pa.CFrame = CFrame.new(p.Position)
 pa.Transparency = 0
 pa.Name = "Head"
 local hah = hc:clone()
 hah.Parent = mo
 local bp = Add.BP(pa)
 bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 bp.position = p.Position + Vector3.new(0, 2.5, 0)
 Add.BG(pa)
 coroutine.resume(coroutine.create(function()
  wait(0.2)
  mo.Parent = workspace
  wait(1.5)
  mo:remove()
 end))
end
for i, v in pairs(TBricks) do
 v[1].Touched:connect(function(hit)
  local fig = hit.Parent
  H, T = getHumanoid(fig), fig:findFirstChild("Torso")
  if H ~= nil and T ~= nil and v.hurt and v.able then
   hitsound:play()
   v.able = false
   local d = math.random(dmg[1], dmg[2])
   local hed, ne = getHead(fig, v[1].Position, 2.5)
   if dmg[3] == "RoundHouse" and hed ~= nil then
    d = math.random(dmg[1]*2.4, dmg[2]*2.4)
    coroutine.resume(coroutine.create(function()
     if ne ~= nil then
     for i=0,60,20 do
      ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
      wait()
     end
     for i=60,0,-20 do
      ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
      wait()
     end
     ne.C0 = necko
     end
    end))
   end
   H.Health = H.Health - d
   local xd = CFrame.new(v[1].Position, hit.Position)
   hit.Velocity = xd.lookVector * (d*2.3)
   ShowDMG(v[1], d)
   wait(0.34)
   v.able = true
  end
 end)
end
Mo.Parent = char
RAWBattle = nil
LAWBattle = nil
function nilparts()
    LAW.Part1 = nil
    RAW.Part1 = nil
    RLW.Part1 = nil
    LLW.Part1 = nil
    LAW.C0 = CFrame.new(0, 0, 0)
    RLW.C0 = CFrame.new(0, 0, 0)
    LLW.C0 = CFrame.new(0, 0, 0)
    RAW.C0 = CFrame.new(0, 0, 0)
end
function attach()
    LAW.Part1 = Larm
    RLW.Part1 = Rleg
    LLW.Part1 = Lleg
    RAW.Part1 = Rarm
    LAW.C0 = CFrame.new(0, 0, 0)
    RLW.C0 = CFrame.new(0, 0, 0)
    LLW.C0 = CFrame.new(0, 0, 0)
    RAW.C0 = CFrame.new(0, 0, 0)
end
attacks = {
function(mouse)
        savews = hum.WalkSpeed
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
        hum.WalkSpeed = 45
    attach()
    wait(0.05)
    slash:play()
    for i = 1, 50 do
        neck.C0 = necko * CFrame.Angles(0, 0, 0)
        RLW.C0 = CFrame.Angles(0, 0, 0)
        LLW.C0 = CFrame.Angles(0, 0, 0)
        RAW.C0 = CFrame.Angles(0+i, 0, 1.5)
        LAW.C0 = CFrame.Angles(0, 0, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (Rarm.Position-t.Position).magnitude <= 7.5 then 
        if i < 100 then
         CreateTag(Me, h)
        h:TakeDamage(10000)
        hitsound:play()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 25, 0)
         end
        end
       end
      end
     end
    end
        wait()
    end
    slash:play()
    wait(0.5)
    endEff()
    wait()
        hum.WalkSpeed = savews
    nilparts()
    neck.C0 = necko
end,
function(mouse)
        savews = hum.WalkSpeed
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
        hum.WalkSpeed = 45
    attach()
    wait(0.05)
    slash:play()
    for i = 1, 50 do
        neck.C0 = necko * CFrame.Angles(0, 0, 0)
        RLW.C0 = CFrame.Angles(0, 0, 0)
        LLW.C0 = CFrame.Angles(0, 0, 0)
        RAW.C0 = CFrame.Angles(1.5, 0+i, 0)
        LAW.C0 = CFrame.Angles(0, 0, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (Rarm.Position-t.Position).magnitude <= 7.5 then
        if i < 100 then
         CreateTag(Me, h)
        h:TakeDamage(10000)
        hitsound:play()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 25, 0)
         end
        end
       end
      end
     end
    end
        wait()
    end
    slash:play()
    wait(0.5)
    endEff()
    wait()
        hum.WalkSpeed = savews
    nilparts()
    neck.C0 = necko
end,
function(mouse)
        savews = hum.WalkSpeed
        hum.WalkSpeed = 55
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
    attach()
    slash:play()
        neck.C0 = necko * CFrame.Angles(0, 0, 0)
        RLW.C0 = CFrame.Angles(0, 0, 0)
        LLW.C0 = CFrame.Angles(0, 0, 0)
        RAW.C0 = CFrame.Angles(2.5, 0, -1)
        LAW.C0 = CFrame.Angles(2.5, 0, 1) 
    for i = 1, 1 do 
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (Rarm.Position-t.Position).magnitude <= 7.5 then
        if i < 100 then
         CreateTag(Me, h)
        h:TakeDamage(10000)
        hitsound:play()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 25, 0)
         end
        end
       end
      end
     end
    end
   end
         wait(0.5)
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (Rarm.Position-t.Position).magnitude <= 7.5 then
        if i < 100 then
         CreateTag(Me, h)
        h:TakeDamage(10000)
        hitsound:play()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 25, 0)
         end
        end
       end
      end
     end
    end
   end
    slash:play()
        RAW.C0 = CFrame.Angles(0.75, 0, -1)
        LAW.C0 = CFrame.Angles(0.75, 0, 1)
   wait(0.25)
        
    endEff()
    wait()
        hum.WalkSpeed = savews
    nilparts()
    neck.C0 = necko
end,
function(mouse)
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
       savews = hum.WalkSpeed
        hum.WalkSpeed = hum.WalkSpeed * 1.5
    attach()
local Bal = Instance.new("Part")
Bal.Parent = char
Bal.Name = "Tornado"
Bal.CanCollide = false
Bal.Locked = true
Bal.TopSurface = "Smooth"
Bal.BottomSurface = "Smooth"
Bal.formFactor = "Symmetric"
Bal.BrickColor = BrickColor.new("Really black")
Bal.CFrame = char.Torso.CFrame
Bal.Transparency = 0.25
Bal.Reflectance = 0.6
Bal.Size = Vector3.new(1, 1, 1)
b1Weld = Instance.new("Weld")
b1Weld.Parent = char["Right Arm"]
b1Weld.Part0 = char["Right Arm"]
b1Weld.Part1 = Bal
b1Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(3.14, 0, 0)
b1Weld.Name = "WindWeld"
BallMesh = Instance.new("SpecialMesh")
BallMesh.MeshType = "FileMesh"
BallMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
BallMesh.Parent = Bal
BallMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
                game.Debris:AddItem(Bal, 6)
        game:GetService("Chat"):Chat(torso.Parent.Head, "Wind Cutter!")
    for i = 1, 150 do
    slash:play()
       BallMesh.Scale = BallMesh.Scale + Vector3.new(1, 1.5, 1)
        neck.C0 = necko * CFrame.Angles(0, 0, 0)
        RLW.C0 = CFrame.Angles(0, 0, 0)
        LLW.C0 = CFrame.Angles(0, 0, 0)
        RAW.C0 = CFrame.Angles(3, 0+i, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 10+i then
        if i < 150 then
         CreateTag(Me, h)
        h:TakeDamage(10000)
        hum.Health = hum.Health + 0.5
        h:MoveTo(torso.Position, torso)
          t.Velocity = torso.CFrame.lookVector * 10 + Vector3.new(0, 25, 0)
        hitsound:play()
        end
        if i >= 150 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 50, 0)
         end
        end
       end
      end
     end
    end
        wait()
       end
    slash:play()
   Bal:Remove()
    endEff()
    wait()
        hum.WalkSpeed = savews
    nilparts()
    neck.C0 = necko
       wait(1)
end,
function(mouse)
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
        savews = hum.WalkSpeed
    attach()
     Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
         for i = 1, 50 do
    slash:play()
           hum.WalkSpeed = hum.WalkSpeed + 2
           RAW.C0 = CFrame.Angles(3.14, 0+i, 0)
    torso.Velocity = Vector3.new(0, 25, 0)
           wait()
           end
            
    endEff()
        hum.WalkSpeed = savews
    nilparts()
   Velocity:Remove()
    neck.C0 = necko
end,
function(mouse)
        savews = hum.WalkSpeed
    attach()
   hum.PlatformStand = true
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
Gyro = Instance.new("BodyGyro")
Gyro.Parent = torso
Gyro.D = 50
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame
           RAW.C0 = CFrame.Angles(-0.75, 0, 0.75)
           LAW.C0 = CFrame.Angles(-0.75, 0, -0.75)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
    torso.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 65, 0)
    for i = 1 , 32 do
     Gyro.cframe = Gyro.cframe * CFrame.Angles(-0.12, 0, 0)
     wait()
    end
wait(0.1)
           RAW.C0 = CFrame.Angles(1.5, 0, 0)
           LAW.C0 = CFrame.Angles(1.5, 0, 0)
           RLW.C0 = CFrame.Angles(1.5, 0, 0)
           LLW.C0 = CFrame.Angles(1.5, 0, 0)
    torso.Velocity = Vector3.new(0, -10, 0)
    for i = 1 , 16 do
     Gyro.cframe = Gyro.cframe * CFrame.Angles(-0.56, 0, 0)
     wait()
    end
    Velocity.maxForce = Vector3.new(0, 0, 0)
    Velocity.velocity = Vector3.new(0, 0, 0)
    Gyro.maxTorque = Vector3.new(math.huge, 0, math.huge)
     wait()
    Gyro.maxTorque = Vector3.new(0, 0, 0)
    wait()
   Velocity:Remove()
   Gyro:Remove()
   hum.PlatformStand = false
        hum.WalkSpeed = savews
    nilparts()
end,
function(mouse)
        savews = hum.WalkSpeed
    attach()
           for i = 1, 15 do
           RAW.C0 = CFrame.Angles(0+i, 0, 1.5)
           LAW.C0 = CFrame.Angles(0, 0, 0)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
           wait()
           end
           for i = 1, 15 do
           RAW.C0 = CFrame.Angles(1.5, 0+i, 0)
           LAW.C0 = CFrame.Angles(0, 0, 0)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
           wait()
           end
           for i = 1, 15 do
           RAW.C0 = CFrame.Angles(3.14, 0+i, 0)
           LAW.C0 = CFrame.Angles(0, 0, 0)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
           wait()
           end
        if Rarm:FindFirstChild("Grip1") ~= nil then
         Rarm.Grip1:Remove()
         end
        if Rarm:FindFirstChild("Grip2") ~= nil then
         Rarm.Grip2:Remove()
         end
        if Rarm:FindFirstChild("Grip3") ~= nil then
         Rarm.Grip3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("TorsoWeld1") == nil and Rarm:FindFirstChild("TorsoWeld2") == nil and Rarm:FindFirstChild("TorsoWeld3") == nil then
          CreateBackWep()
          end
    nilparts()
end,
function(mouse)
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
        savews = hum.WalkSpeed
    attach()
           for i = 1, 15 do
           RAW.C0 = CFrame.Angles(3.14, 0+i, 0)
           LAW.C0 = CFrame.Angles(0, 0, 0)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
           wait()
           end
        game:GetService("Chat"):Chat(torso.Parent.Head, "Wind Blade Dance!")
           for i = 1, 15 do
           RAW.C0 = CFrame.Angles(1.5, 0+i, 0)
           LAW.C0 = CFrame.Angles(0, 0, 0)
           RLW.C0 = CFrame.Angles(0, 0, 0)
           LLW.C0 = CFrame.Angles(0, 0, 0)
        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("White")
        x.Transparency = 0.5
        x.Size = Vector3.new(5, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Block"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        y.velocity = torso.CFrame.lookVector*120
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = torso.CFrame*CFrame.new(2, -1, -5.5) * CFrame.Angles(1.5, 0, 0)
          BallMesh = Instance.new("SpecialMesh")
          BallMesh.MeshType = "FileMesh"
          BallMesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
          BallMesh.Parent = x
          BallMesh.Scale = Vector3.new(3, 3, 3)
            game.Debris:AddItem(x, 3)
            x.Touched:connect(function(shiz)
                 if shiz.Parent ~= nil then
                        if shiz.Parent.Name ~= char.Name then
                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 2
                                x:Remove()
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 50 + Vector3.new(0, 25, 0)
                                end
                            end
                        end
                    end
            end)
           wait()
           end
    nilparts()
end,
function(mouse)
        game:GetService("Chat"):Chat(torso.Parent.Head, "Emergency Wind Bomb!")
ShockWave = Instance.new("Part")
ShockWave.Parent = Hair2
ShockWave.Size = Vector3.new(50, 50, 50)
ShockWave.Transparency = 0
ShockWave.formFactor = "Symmetric"
ShockWave.CanCollide = false
ShockWave.Anchored = true
ShockWave.TopSurface = "Smooth"
ShockWave.BottomSurface = "Smooth"
ShockWave.BrickColor = BrickColor.new("Really black")
ShockWave.Name = "ShockWave"
ShockWave.CFrame = CFrame.new(torso.Position)
ShockMesh = Instance.new("SpecialMesh")
ShockMesh.Parent = ShockWave
ShockMesh.MeshType = "Sphere"
ShockMesh.Scale = Vector3.new(1, 1, 1)
   for i = 1 , 10 do
  
ShockWave.Transparency = ShockWave.Transparency + 0.0005
ShockMesh.Scale = ShockMesh.Scale + Vector3.new(1, 1, 1)  
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 15 then
        h.PlatformStand = true
        SavedT = t.Position
        t.CFrame = CFrame.new(SavedT)
          t.Velocity = torso.CFrame.lookVector * 5 + Vector3.new(0, 5, 0)
        if i < 100 then
         CreateTag(Me, h)
         t:Remove()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
          h:TakeDamage(10000)
         end
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 100, 0)
          t:Remove()
         end
        end
       end
      end
     end
      wait()
      end
 
    nilparts()
end
}
bloc = function(mouse)
        if char.Torso:FindFirstChild("TorsoWeld1") ~= nil then
         char.Torso.TorsoWeld1:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld2") ~= nil then
         char.Torso.TorsoWeld2:Remove()
         end
        if char.Torso:FindFirstChild("TorsoWeld3") ~= nil then
         char.Torso.TorsoWeld3:Remove()
         end
        if char:FindFirstChild("Ball1") ~= nil then
         char.Ball1:Remove()
         end
        if char:FindFirstChild("Ball2") ~= nil then
         char.Ball2:Remove()
         end
        if char:FindFirstChild("Staff") ~= nil then
         char.Staff:Remove()
         end
         if Rarm:FindFirstChild("Grip1") == nil and Rarm:FindFirstChild("Grip2") == nil and Rarm:FindFirstChild("Grip3") == nil then
          CreateHandWep()
          end
    local hold = true
    local bg = Add.BG(nil)
    attach()
    slash:play()
    local duh = true
    block = true
    mouse.KeyUp:connect(function(k)
        k = k:lower()
        if duh == true and k == "t" then
            hp = char.Humanoid.Health
            block = false
            duh = false
            hold = false
        end
    end)
    coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
        RAW.C0 = CFrame.Angles(-0.75, 1, -0.75)
        LAW.C0 = CFrame.Angles(1.75, 0, 0.75) * CFrame.new(0, -0.5, 0)
        LLW.C0 = CFrame.Angles(0, 0, -0.5)
        RLW.C0 = CFrame.Angles(0, 0, 0.5)
        wait()
    end
    end))
    bg.Parent = torso
    while block and hold do
        wait()
        bg.cframe = ComputePos(torso.Position, mouse.Hit.p)
    end
    slash:play()
    for i = 1, 25 do
        RAW.C0 = CFrame.Angles(1.5, 0-i, 0)
        LAW.C0 = CFrame.Angles(1.75, 0, 0.75) * CFrame.new(0.25, -0.35, 0)
        LLW.C0 = CFrame.Angles(0, 0, -0.5)
        RLW.C0 = CFrame.Angles(0, 0, 0.5)
        char.Humanoid.Health = hp
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (Rarm.Position-t.Position).magnitude <= 7.5 then
        if i < 100 then
         CreateTag(Me, h)
          t.Velocity = torso.CFrame.lookVector * 150 + Vector3.new(0, 0, 0)
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 150 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
   if c.className == "Part" then
     if (torso.Position-c.Position).magnitude <= 50 then
        f = c:findFirstChild("BodyVelocity")
        if f ~= nil then
         if f.Parent:FindFirstChild("Deflected") == nil then
         f.velocity = f.velocity * Vector3.new(-1, 0, -1)
         --f.Name = "Reversed"
         p = Instance.new("StringValue")
         p.Name = "Deflected"
         p.Parent = f.Parent
         end
        end
       end
      end
   if c.className == "Part" then
     if (torso.Position-c.Position).magnitude <= 50 then
        f = c:findFirstChild("BodyForce")
        if f ~= nil then
         if f.Parent:FindFirstChild("Deflected") == nil then
         f.force = f.force * Vector3.new(-1, 0, -1)
         --f.Name = "Reversed"
         p = Instance.new("StringValue")
         p.Name = "Deflected"
         p.Parent = f.Parent
         end
        end
       end
      end
   if c.className == "Part" then
     if (torso.Position-c.Position).magnitude <= 50 then
        f = c:findFirstChild("BodyThrust")
        if f ~= nil then
         if f.Parent:FindFirstChild("Deflected") == nil then
         f.force = f.force * Vector3.new(-1, 0, -1)
         --f.Name = "Reversed"
         p = Instance.new("StringValue")
         p.Name = "Deflected"
         p.Parent = f.Parent
         end
        end
       end
      end
   if c.className == "Part" then
     if (torso.Position-c.Position).magnitude <= 50 then
        f = c:findFirstChild("RocketPropulsion")
        if f ~= nil then
         if f.Parent:FindFirstChild("Deflected") == nil then
         f.MaxSpeed = f.MaxSpeed * (-1)
         f.MaxThrust = f.MaxThrust * (-1)
         --f.Name = "Reversed"
         p = Instance.new("StringValue")
         p.Name = "Deflected"
         p.Parent = f.Parent
         end
        end
       end
      end
     end
    end
        wait()
    end
    nilparts()
    bg:remove()
    neck.C0 = necko
end
function select(mouse)
    mouse.Button1Down:connect(function()
        if able then
            able = false
            attacks[math.random(1,3)](mouse)
            able = true
        end
    end)
    mouse.KeyDown:connect(function(key)
        key = key:lower()
        if able then
            if key == "e" then
                able = false
                attacks[4](mouse)
                able = true
            elseif key == "r" then
                able = false
                attacks[5](mouse)
                able = true
            elseif key == " " then
                able = false
                attacks[6](mouse)
                able = true
            elseif key == "y" then
                able = false
                attacks[7](mouse)
                able = true
            elseif key == "q" then
                able = false
                attacks[8](mouse)
                able = true
            elseif key == "b" then
                able = false
                attacks[9](mouse)
                able = true
            elseif key == "t" then
                able = false
                bloc(mouse)
                able = true
            elseif key == "z" then
                able = false
                holdkey = true
                while holdkey do
                    attacks[math.random(1,#attacks)](mouse)
                end
                able = true
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        key = key:lower()
        if key == "z" then
            holdkey = false
        end
    end)
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Annoying staff"
script.Parent = h
end
bin = script.Parent
bin.Selected:connect(select) 
