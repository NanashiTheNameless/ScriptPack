











--mediafire
Me = game.Players:FindFirstChild("luxulux")
Char = Me.Character
neck0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Neck1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
math.randomseed(tick())
EffectOn = false
Selected = false
Attacking = false
Debounce = true
Hurt = false
Running = false
Able = true
Able2 = true
Meditating = false
Jumping = false
Rolling = false
Choking = false
JumpStarting = false
Anim = {}
Anim.Welding = 0
WeldTime = 0.05
ModelName = "Flamez"
ToolName = "Flamez"
EffPos = CFrame.new(0, -1.25, 0)
Dmg = {NormalDmg = {15,25,"Normal"}}
CritMultiplier = 3
Critical = false
ContentProvider = game:GetService("ContentProvider")
LineColor = "Brick yellow"
EffectColor3 = "Really black"
EffectColor2 = "Really black"
EffectColor = "Really black"
Keys = {"y","z","f","t","g","x","v","r"}
Find = function(tab, arg)
        for _,v in pairs(tab) do
                if v==arg then
                        return true
                end
        end
        return false
end
V3 = Vector3.new
C3 = Color3.new
BN = BrickColor.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random
MP = math.pi
MH = math.huge
UD = UDim2.new
function RC(Pos, Dir, Max, Ignore)
        return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
        return RC(Start, (En - Start), MaxDist, Ignore)
end
function ComputePos(pos1, pos2)
        return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
end
function Compute(pos1, pos2)
        local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
        return CN(pos1, pos3)
end
function waitChild(n, p)
        local c = p:findFirstChild(n)
        if c then return c end
        while true do
                c = p.ChildAdded:wait()
                if c.Name == n then return c end
        end
end
function Notime(func)
        coroutine.resume(coroutine.create(function()
                func()
        end))
end
Torso = waitChild("Torso", Char)
Head = waitChild("Head", Char)
Rarm = waitChild("Right Arm", Char)
Larm = waitChild("Left Arm", Char)
Rleg = waitChild("Right Leg", Char)
Lleg = waitChild("Left Leg", Char)
Hum = waitChild("Humanoid", Char)
RSH = waitChild("Right Shoulder", Torso)
LSH = waitChild("Left Shoulder", Torso)
RH = waitChild("Right Hip", Torso)
LH = waitChild("Left Hip", Torso)
RSH.Part0 = Torso
LSH.Part0 = Torso
RH.Part0 = Torso
LH.Part0 = Torso
Add = {
        Mesh = function(P, Type, ID, Scale, Tex)
                local m = Instance.new("SpecialMesh")
                m.MeshType = Type or "Head"
                m.MeshId = ID or ""
                m.Scale = Scale or V3(1, 1, 1)
                m.TextureId = Tex or ""
                m.Parent = P
                return m
        end,
  BG = function(P)
    local bg = Instance.new("BodyGyro")
    bg.Parent = P
    return bg
  end,
        Cylinder = function(P, Scale)
                local m = Instance.new("CylinderMesh")
                m.Scale = Scale or V3(1, 1, 1)
                m.Parent = P
                return m
        end,
        Block = function(P, Scale)
                local m = Instance.new("BlockMesh")
                m.Scale = Scale or V3(1, 1, 1)
                m.Parent = P
                return m
        end,
        BP = function(P, Pos, Power)
                local bp = Instance.new("BodyPosition")
                bp.P = Power
                bp.position = Pos
                bp.maxForce = V3(MH, MH, MH)
                bp.Parent = P
                return bp
        end,
  BF = function(P,Force)
    local bf = Instance.new("BodyForce")
    bf.Parent = P
    bf.force = Force or V3(0, P:GetMass() * 187, 0)
    return bf
  end,
  Crown = function(P,Scale)
    local cm = Instance.new("SpecialMesh")
    cm.MeshType = "Head"
    cm.MeshId = "http://www.roblox.com/asset/?id=20329976"
    cm.Scale = Scale or V3(1, 1, 1)
    cm.Parent = P
    return cm
  end,
  Sound = function(P, ID, vol, pitch)
   local s = Instance.new("Sound")
   s.SoundId = ID
   s.Volume = vol
   s.Pitch = pitch
   s.Parent = P
   return s
  end
}
Sounds = {
  slash = Add.Sound(workspace, "rbxasset://sounds//swordslash.wav", 1, 0.8),
  hitsound = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2801263", 1, 0.6),
  charge = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2101137", 1, 0.65),
  boom = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2691586", 1, 0.3),
  smashsound = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2692806",1, 0.35),
  boomboom = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2760979", 1, 0.18),
  equip = Add.Sound(workspace, "rbxasset://sounds\\unsheath.wav", 1, 0.7)
}
function PlaySound(sound,waittime,pitch)
 sound.Pitch = tonumber(pitch)
 coroutine.resume(coroutine.create(function()
  wait(waittime)
  sound:Play()
 end))
end
function TweenAnim(Weld,Time,X,Y,Z,WeldTime) 
 coroutine.resume(coroutine.create(function()
  local X2,Y2,Z2 = Weld.C1:toEulerAnglesXYZ() 
  local A,B,C = Weld.C0.x,Weld.C0.y,Weld.C0.z
  local Times = Time/WeldTime
  Anim.Welding = Anim.Welding + 1
  for i=0,Times,1 do 
   Weld.C0 = CFrame.new(A,B,C)
   Weld.C1 = CFrame.Angles(X2-(((X2-math.rad(X))/Times)*i),Y2-(((Y2-math.rad(yy))/Times)*i),Z2-(((Z2-math.rad(Z))/Times)*i))
   wait()
  end 
  Anim.Welding = Anim.Welding - 1
 end))
end 
function GetParts(pos, dist)
        local parts = {}
        local function o(p)
                for _,v in pairs(p:children()) do
                        if v:IsA("BasePart") then
                                if (pos - v.Position).magnitude <= dist then
                                        table.insert(parts, {v, (pos - v.Position).magnitude, v.Anchored})
                                end
                        end
                        o(v)
                end
        end
        o(workspace)
        return parts
end
function GetHum(P)
        for _,v in pairs(P:children()) do
                if v:IsA("Humanoid") then
                        if v.Health > 0 then
                                return v
                        end
                end
        end
end
function GetGroup(Pos, Distance, Hit)
        local tab = {}
        for _,v in pairs(workspace:children()) do
                local h = GetHum(v)
                local t = v:findFirstChild("Torso")
                if h and t and v ~= Hit.Parent then
                        if (t.Position - Pos).magnitude <= Distance then
                                table.insert(tab, {h, v, (t.Position - Pos).magnitude})
                        end
                end
        end
        if Hit then
                local h = GetHum(Hit.Parent)
                if h then
                        table.insert(tab, {h, Hit.Parent, 0})
                end
        end
        return tab
end
function Part(Par, Anc, Colli, Tran, Ref, Col, Siz)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Transparency = Tran
        p.Reflectance = Ref
        p.Anchored = Anc
        p.CanCollide = Colli
        p.BrickColor = Col
        p.Size = Siz
        p.Locked = true
        p.Parent = Par
        p:BreakJoints()
        return p
end
function Weld(P0, P1, C0, C1)
        local w = Instance.new("Weld")
        w.Part0 = P0
        w.Part1 = P1
        if C0 then
                w.C0 = C0
        end
        if C1 then
                w.C1 = C1
        end
        w.Parent = P0
        return w
end
for _,v in pairs(Char:children()) do
        if v.Name == ModelName then
                v:remove()
        end
end
Model = Instance.new("Model")
Model.Name = ModelName
FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, V3(2, 2, 1))
FW = Weld(Torso, FTorso)
RAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
RLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
RABW = Weld(Torso, RAB, CN(), CN(-1.5, -0.5, 0))
LABW = Weld(Torso, LAB, CN(), CN(1.5, -0.5, 0))
RLBW = Weld(Torso, RLB, CN(), CN(-0.5, 1, 0))
LLBW = Weld(Torso, LLB, CN(), CN(0.5, 1, 0))
RAW = Weld(RAB, nil, CN(), CN(0, 0.5, 0))
LAW = Weld(LAB, nil, CN(), CN(0, 0.5, 0))
RLW = Weld(RLB, nil, CN(), CN(0, 1, 0))
LLW = Weld(LLB, nil, CN(), CN(0, 1, 0))
Neck = Weld(Torso, nil, CN(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), CN(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
TW = Weld(FTorso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))
Weapon = Instance.new("Model")
Weapon.Name = "Weapon"
HBR = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWR = Weld(Rarm, HBR, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWR = Weld(HBR, nil)
HBL = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWL = Weld(Larm, HBL, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWL = Weld(HBL, nil)
Limbs = {Rarm = {RAW, Rarm}, Larm = {LAW, Larm}, Rleg = {RLW, Rleg}, Lleg = {LLW, Lleg}, }
function Atta(Lol)
        Lol[1].Part1 = Lol[2]
end
function Show_Damage(P, D)
        local mo = Instance.new("Model")
        mo.Name = D
        local p = Part(mo, false, false, 0, 0, BN("Bright red"), V3(1, 0.2, 1))
        p.Name = "Head"
  Add.BG(p)
        local bp = Instance.new("BodyPosition", p)
        bp.maxForce = V3(MH, MH, MH)
        bp.P = 9001
        bp.position = CN(P) * CN(0, 5, 0).p
        local h = Instance.new("Humanoid")
        h.Health = 0
        h.MaxHealth = 0
        h.Name = "asd"
        h.Parent = mo
        local nah = true
        mo.Parent = workspace
        p.CFrame = CN(P) 
        Notime(function()
                wait(1.5)
                for i = 0, 1, 0.05 do
                        p.Transparency = i
                        if nah then 
       mo.Name = D
       nah = false 
       else 
       mo.Name = D 
       nah = true 
      end
                        wait()
                end
                mo:remove()
        end)
end
Weapon.Parent = Model
Model.Parent = Char
if script.Parent.className ~= "HopperBin" then
        h = Instance.new("HopperBin", Me.Backpack)
        h.Name = ToolName
        script.Parent = h
end
bin = script.Parent
function Attach(t)
        RSH.Part0 = t
        LSH.Part0 = t
        RH.Part0 = t
        LH.Part0 = t
        RABW.Part0 = t
        LABW.Part0 = t
        LLBW.Part0 = t
        RLBW.Part0 = t
        if t == Torso then
                FTorso.Transparency = 1
                Neck.Part1 = nil
        else
                Torso.Transparency = 1
                Neck.Part1 = Head
        end
        t.Transparency = 0
end
function Idle()
 SpeedAtm = Torso.Velocity.magnitude
 if not Attacking then
  Atta(Limbs.Rleg)
  Atta(Limbs.Lleg)
  for i=0,11.25,1 do
   RLW.C0 = CA(0,0,MR(i))
   LLW.C0 = CA(0,0,MR(-i))
   wait()
  end
  for i=11.25,0,-1 do
   RLW.C0 = CA(0,0,MR(i))
   LLW.C0 = CA(0,0,MR(-i))
   wait()
  end
 end
end
function Run()
 SpeedAtm = Torso.Velocity.magnitude
 if not Rolling and not Attacking then
  RLW.Part1 = nil
  LLW.Part1 = nil
 end
end
coroutine.resume(coroutine.create(function()
        while true do
                local SpeedAtm = Torso.Velocity.magnitude
                if Attacking == false and Selected or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then
                        if SpeedAtm < 0.1 then
                                Idle()
                        else
                                Run()
                        end
                end
                wait()
        end
end))
function StartEff(color,part)
 EffectOn = true
 local lastPoint = part.CFrame * EffPos.p
 Notime(function()
  while EffectOn do
   wait()
   local pos = part.CFrame * EffPos.p
   local magn = (lastPoint - pos).magnitude
   local col = LineColor
   if color and col ~= EffectColor3 then
    col = color
   end
   local p = Part(workspace, true, false, 0.2, 0, BN(col), V3(0.4, 1, 0.4))
   local mesh = Add.Cylinder(p)
   mesh.Scale = Vector3.new(1, magn+0.1, 1)
   p.CFrame = CN(lastPoint, pos) * CA(-MP/2, 0, 0) * CN(0, magn/2+0.05, 0)
   lastPoint = pos
   Notime(function()
    wait()
    for i = 0, 1, 0.12 do
     p.Transparency = 0.1+0.9*i
     mesh.Scale = Vector3.new(1-1*i, magn+0.1-0.1*i, 1-1*i)
     wait()
    end
    p:remove()
   end)
  end
 end)
end
function EndEff()
 EffectOn = false
end
TBricks = {}
for i, v in pairs({Rarm, Larm, Rleg, Lleg}) do
 local p = Part(Model, false, false, 1, 0, BN("White"), V3(0.9, 0.9, 0.8))
 Weld(v, p, CN(0, 0.7, 0), CN(0, 0, 0))
 table.insert(TBricks, {p, Hurt = false, Able2 = true})
end
function NormalStance()
 Atta(Limbs.Rarm)
 Atta(Limbs.Larm)
 Atta(Limbs.Rleg)
 Atta(Limbs.Lleg)
 Attach(FTorso)
 for i=0,35,2 do
  RAW.C0 = CA(MR(-i/1.25),0,MR(i/1.25))
  LAW.C0 = CA(MR(-i/1.25),0,MR(-i/1.25))
  wait()
 end
end
function AttachLimbs()
 Atta(Limbs.Rarm)
 Atta(Limbs.Larm)
 Atta(Limbs.Rleg)
 Atta(Limbs.Lleg)
 Attach(FTorso)
end
function NullLimbs()
 RAW.Part1 = nil
 LAW.Part1 = nil
 RLW.Part1 = nil
 LLW.Part1 = nil 
 Attach(Torso)
 Char.Humanoid.WalkSpeed = 16
end
for i,v in pairs(TBricks) do
 v[1].Touched:connect(function(hit)
  local fig = hit.Parent
  if fig:IsA("Hat") or fig:IsA("Tool") then 
   fig = hit.Parent.Parent
  end
  H, T = GetHum(fig), fig:findFirstChild("Torso")
  if H ~= nil and T ~= nil and v.Hurt and v.Able2 and fig.Name ~= Char.Name then
   v.Able2 = false
   limbdmg = MRA(Dmg["NormalDmg"][1],Dmg["NormalDmg"][2])
   if MRA(1,100) >= 15 then
    Debounce = true
    if not Debounce then
     return false
    end
    Debounce = false
    Critical = false
    local pos = CN(-2,-3,-3).p
    PlaySound(Sounds.hitsound,0.01,0.6)
    T.Velocity = CN(pos,T.Position).lookVector * 60
    T.RotVelocity = Vector3.new(MRA(-30, 30),MRA(-30, 30), MRA(-30, 30))
    H.PlatformStand = true
    Notime(function()
     wait(1.2)
     H.PlatformStand = false
    end)
    wait(0.5)
    Debounce = true
    H.Health = H.Health - limbdmg
    Show_Damage(fig.Torso.Position + V3(0,5,0),limbdmg)
    v.Able2 = true
   end
   if MRA(1,100) <= 15 then
    Debounce = true
    if not Debounce then
     return false
    end
    Debounce = false
    local Knockback = CFrame.new(v[1].Position, hit.Position)
    hit.Parent.Torso.Velocity = Knockback.lookVector * 2.5
    Critical = true
    limbdmg = limbdmg * CritMultiplier
    H.Health = H.Health - limbdmg
    local pos = CN(-2,-3,-3).p
    T.Velocity = CN(pos,T.Position).lookVector * 60
    T.RotVelocity = Vector3.new(MRA(-30, 30),MRA(-30, 30), MRA(-30, 30))
    H.PlatformStand = true
    Notime(function()
      wait(1.2)
      H.PlatformStand = false
    end)
    wait(0.5)
    Debounce = true
    Show_Damage(fig.Torso.Position + V3(0,5,0),"Critical: " ..limbdmg)
    v.Able2 = true
   end
  end
 end)
end
Attacks = {
function(ShadowHand)
 StartEff("Really black",Rarm)
 TBricks[1].Hurt = true
 Char.Humanoid.WalkSpeed = 0
 PlaySound(Sounds.slash,0.01,1.2)
 for i=0,60,6 do
  RAW.C0 = CA(MR(i*2),0,MR(-i/1.25))
  FW.C0 = CN(0,0,-i/9)
  wait()
 end
 for i=60,0,-6 do
  RAW.C0 = CA(MR(i*2),0,MR(-i/1.25))
  FW.C0 = CN(0,0,-i/9)
  wait()
 end
 EndEff()
 Char.Humanoid.WalkSpeed = 16
 TBricks[1].Hurt = false
 wait(0.1)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
end,
function(ShadowFlip)
 StartEff("Really black",Rleg)
 StartEff("Really black",Lleg)
 TBricks[3].Hurt = true
 PlaySound(Sounds.slash,0.075,0.7)
 for i=0,360,12.5 do
  FW.C0 = CA(MR(i),0,0)
  RLBW.C0 = CA(MR(-i/8),0,0) * CN(0,0.5,-0.5)
  LLBW.C0 = CA(MR(i/8),0,0) * CN(0,0.5,0.5)
  Neck.C0 = neck0 * CA(MR(-i/8),0,0)
  wait()
 end
 TBricks[3].Hurt = false
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 EndEff()
end,
function(BallRoll)
 Char.Humanoid.WalkSpeed = 30
 for i=0,90,4 do
  RLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
  LLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
  RAW.C0 = CA(MR(-i/1.5),0,0)
  LAW.C0 = CA(MR(-i/1.5),0,0)
  Neck.C0 = neck0 * CA(MR(-i/2),0,0)
  wait()
 end
 for i=0,MH,12.5 do
  if Rolling then
   FW.C0 = CA(MR(-i/1),0,0)
   wait()
  end
  if not Rolling then 
   Neck.C0 = neck0
   RLBW.C0 = CA(0,0,0) * CN(0,0,0)
   LLBW.C0 = CA(0,0,0) * CN(0,0,0)
   RAW.C0 = CA(0,0,0) * CN(0,0,0)
   LAW.C0 = CA(0,0,0) * CN(0,0,0)
   FW.C0 = CA(0,0,0) * CN(0,0,0)
   NormalStance()
   return
  end
 end
end,
function(OneLegRotation)
 StartEff("Really black",Lleg)
 TBricks[4].Hurt = true
 Char.Humanoid.WalkSpeed = 0
 for i=0,90,10 do
  LLBW.C0 = CA(0,0,MR(-i)) * CN(1.5,0.5,0)
  RLBW.C0 = CA(0,0,MR(45)) * CN(-0.5,0,0)
  RAW.C0 = CA(MR(i*2),0,0) * CN(-0.75,0,0.5)
  LAW.C0 = CA(MR(i*2),0,0) * CN(0.75,0,0.5)
  FW.C0 = CA(0,MR(-45),MR(-i/2))
  wait()
 end
 coroutine.resume(coroutine.create(function()
  for i=0,4,1 do
   PlaySound(Sounds.slash,0.025,0.8)
   wait(0.2)
  end
 end))
 for i=0,360,12.5 do
  FW.C0 = CA(0,MR(-i*2),MR(-45))
  wait(0.035)
 end
 TBricks[4].Hurt = false
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 EndEff()
 Char.Humanoid.WalkSpeed = 16
end,
function(DoubleSlash)
 Char.Humanoid.WalkSpeed = 22.5
 StartEff("Really black",Rarm)
 TBricks[1].Hurt = true
 PlaySound(Sounds.slash,0.01,0.8)
 for i=0,90,8 do
  RAW.C0 = CA(0,0,MR(i))
  FW.C0 = CA(0,MR(-i/2),0)
  wait()
 end
 for i=0,90,8 do
  FW.C0 = CA(0,MR(i-90/2),0)
  wait()
 end
 Neck.C0 = neck0
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 EndEff()
 TBricks[1].Hurt = false
 wait(0.25)
 StartEff("Really black",Larm)
 TBricks[2].Hurt = true
 PlaySound(Sounds.slash,0.01,0.8)
 for i=0,90,8 do
  LAW.C0 = CA(0,0,MR(-i))
  FW.C0 = CA(0,MR(i/2),0)
  wait()
 end
 for i=0,90,8 do
  FW.C0 = CA(0,MR(-i+90/2),0)
  wait()
 end
 TBricks[2].Hurt = false
 Neck.C0 = neck0
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 Char.Humanoid.WalkSpeed = 16
 EndEff()
end,
function(Meditation)
 Meditating = true
 for i=0,90,4 do
  RLBW.C0 = CA(MR(i),0,MR(i/4)) * CN(0,0.5,1)
  LLBW.C0 = CA(MR(i),0,MR(-i/4)) * CN(0,0.5,1)
  RAW.C0 = CA(MR(i/2),0,MR(-i/5))
  LAW.C0 = CA(MR(-i/2),0,MR(i/2))
  FW.C0 = CN(0,-i/50,0)
  wait()
 end
 while Meditating do
  Notime(function()
   while Meditating do
    Char.Humanoid.Health = Char.Humanoid.Health + 0.01
    wait(0.075)
   end
  end)
  coroutine.resume(coroutine.create(function()
   for i=5,-5,-1 do
    Neck.C0 = neck0 * CA(MR(i),0,0)
    wait(0.05)
   end
   for i=-5,5,1 do
    Neck.C0 = neck0 * CA(MR(i),0,0)
    wait(0.05)
   end
  end))
  wait(0.05)
 end
 if not Meditating then 
  for i=90,0,-4 do
   RLBW.C0 = CA(MR(i),0,MR(i/4)) * CN(0,0,0)
   LLBW.C0 = CA(MR(i),0,MR(-i/4)) * CN(0,0,0)
   RAW.C0 = CA(MR(i/2),0,MR(-i/5))
   LAW.C0 = CA(MR(-i/2),0,MR(i/2))
   FW.C0 = CN(0,-i/50,0)
   wait()
  end
  Neck.C0 = neck0
  RLBW.C0 = CA(0,0,0) * CN(0,0,0)
  LLBW.C0 = CA(0,0,0) * CN(0,0,0)
  RAW.C0 = CA(0,0,0) * CN(0,0,0)
  LAW.C0 = CA(0,0,0) * CN(0,0,0)
  FW.C0 = CA(0,0,0) * CN(0,0,0)
  NormalStance()
  return
 end
end,
function(Sideflip)
 StartEff("Really black",LLB)
 TBricks[4].Hurt = true
 PlaySound(Sounds.slash,0.05,0.7)
 for i=0,70,7 do
  FW.C0 = CA(0,MR(-70),MR(i)) * CN(0,-2,0)
  wait()
 end
 for i=0,360,18 do
  FW.C0 = CA(0,MR(-70),MR(-i)) * CN(0,-2,0)
  RLBW.C0 = CA(MR(22.5),0,0)
  LLBW.C0 = CA(MR(-22.5),0,0)
  wait()
 end
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 TBricks[4].Hurt = false
 EndEff()
end,
function(SuperJumpStart)
 coroutine.resume(coroutine.create(function()
  for i=0,130,4 do
   RLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
   LLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
   RAW.C0 = CA(MR(-i/1.5),0,0)
   LAW.C0 = CA(MR(-i/1.5),0,0)
   Neck.C0 = neck0 * CA(MR(-i/2),0,0)
   wait()
  end
 end))
 for i=0,1.75,0.1 do
  FW.C0 = CN(0,-i,0)
  wait()
 end
end,
function(SuperJump) 
 coroutine.resume(coroutine.create(function()
  while not JumpStarting and Jumping do
   for i=0,360,10 do
    FW.C0 = CA(MR(-i*2),0,0)
    wait()
   end
   wait()
  end
 end))
 local bf = Add.BF(Torso,V3(0,12500,0))
 wait(0.2)
 bf:Remove()
 wait(0.4)
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0) 
 NormalStance()
end,
function(ProtectiveWall)
 Char.Humanoid.WalkSpeed = 0
 for i=0,45,2 do
  RAW.C0 = CA(MR(i*3),0,MR(i/1.25))
  LAW.C0 = CA(MR(i*3),0,MR(-i/1.25))
  RLBW.C0 = CA(MR(i),0,0)
  LLBW.C0 = CA(MR(-i),0,0)
  FW.C0 = CN(0,-i/28,0)
  wait()
 end
 coroutine.resume(coroutine.create(function()
  for i=45,0,-2 do
   RLBW.C0 = CA(MR(i),0,0)
   LLBW.C0 = CA(MR(-i),0,0)
   FW.C0 = CN(0,-i/28,0)
   wait()
  end
 end))
 local WSpike = Part(game.Workspace,true,false,0,0,BN("Really black"),V3(2,10,2))
 local WSMesh = Add.Mesh(WSpike,"FileMesh","http://www.roblox.com/asset/?id=1095708")
 WSpike.CFrame = Torso.CFrame + V3(MRA(-30,30),MRA(0,15),MRA(-30,30))
 coroutine.resume(coroutine.create(function()
  for i=0,1,0.01 do
   WSpike.Transparency = i
   wait(0.1)
  end
 end))
 Char.Humanoid.WalkSpeed = 16
 wait(0.5)
 NullLimbs()
 Able = true
 Attacking = false
 NormalStance()
 for i=0,100,0.5 do
  WSMesh.Scale = V3(i,i,i)
  wait()
 end
 WSpike:Remove()
end
}
function SelectAnim()
 FakeHead = Char.Head:Clone()
 FakeHead.Name = "Fake head"
 FakeHead.Parent = Model
 Weld(FTorso,FakeHead,CN(0,1.5,0))
 Char.Head.Transparency = 1
 Char.Head.face:Remove()
 for i,v in pairs(Char:GetChildren()) do 
  if v:IsA("Hat") then
   v:Remove()
  end
 end
 SelectEffect = Part(Char,true,false,0,0,BN("Bright yellow"),V3(10,5,10))
 TheCrown = Add.Crown(SelectEffect,V3(1,1,1))
 SelectEffect.CFrame = Torso.CFrame + V3(0,-2,0)
 Char.Humanoid.WalkSpeed = 0
 wait()
 coroutine.resume(coroutine.create(function()
  for i=0,1,0.1 do
   SelectEffect.Transparency = i
   wait(0.1)
  end
 end))
 for i=0,10,0.5 do
  TheCrown.Scale = V3(i/2,i/3.5,i/2)
  wait()
 end
 Char.Humanoid.WalkSpeed = 16
 wait(1)
 SelectEffect:Remove()
end
function DeselAnim()
 NullParts()
end
function onSelected(mouse)
        SelectAnim()
        Selected = true
  NormalStance()
        mouse.Button1Down:connect(function()
   if Able then
    Able = false
    Attacking = true 
    Atta(Limbs.Rarm)
    Atta(Limbs.Larm)
    Attach(FTorso)
    Attacks[1](ShadowHand)
    NullLimbs()
    Attacking = false
    Able = true
    NormalStance()
   end
        end)
        mouse.KeyDown:connect(function(key)
    key = key:lower()
     if key == Keys[1] then
      if Able then
       Able = false
       Attacking = true
       AttachLimbs()
       Attacks[2](ShadowFlip)
       NullLimbs()
       Attacking = false
       Able = true
       NormalStance()
      end
     end
     if key == Keys[2] then
      if not Rolling and Able then
       Able = false
       Rolling = true
       AttachLimbs()
       Attacks[3](BallRoll)
      end
     end
     if key == Keys[2] and Rolling and not Able then
      Able = true
      Rolling = false
      NullLimbs()
      NormalStance()
     end
     if key == Keys[3] and Able and not Rolling and not Choking then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[4](OneLegRotation)
      NullLimbs()
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[4] and Able and not Rolling and not Choking then
      Able = false
      Attacking = true
      Atta(Limbs.Rarm)
      Atta(Limbs.Larm)
      Attach(FTorso)
      Attacks[5](DoubleSlash)
      RAW.Part1 = nil
      LAW.Part1 = nil
      Attach(Torso)
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[5] and Able and not Rolling and not Choking then
      Char.Humanoid.WalkSpeed = 0
      Able = false
      Attacking = true
      Meditating = true
      AttachLimbs()
      Attacks[6](Meditation)
     end
     if key == Keys[5] and not Able and not Rolling and not Choking and Meditating then
      Meditating = false
      wait(1)
      Char.Humanoid.WalkSpeed = 16
      NullLimbs()
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[6] and Able and not Rolling and not Choking and not Meditating then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[7](Sideflip)
      NullLimbs()
      Able = true
      Attacking = false
      NormalStance()
     end
     if key == Keys[7] and Able and not Rolling and not Choking and not Meditating and not JumpStarting and not Jumping then
      Jumping = true
      Able = false
      Attacking = true
      Char.Humanoid.WalkSpeed = 8
      AttachLimbs()
      JumpStarting = true
      Attacks[8](SuperJumpStart)
     end
     if key == Keys[8] and Able and not Rolling and not Choking and not Meditating then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[10](ProtectiveWall)
     end
  end)
  mouse.KeyUp:connect(function(key)
   key = key:lower()
    if key == Keys[7] and not Able and not Rolling and not Choking and not Meditating then
     Jumping = true
     JumpStarting = false
     Attacks[9](SuperJump)
     Jumping = false
     wait(0.75)
     NullLimbs()
     Able = true
     Attacking = false
     NormalStance()
    end
  end)
end
function onDeselected(mouse)
        Selected = false
        Hum.WalkSpeed = 16
        DeselAnim()
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)
 
 
 