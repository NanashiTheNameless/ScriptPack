Plrs = game:GetService("Players")
me = Plrs.LocalPlayer
char = me.Character
Modelname = "TagGun"
Toolname = "Gun"
Able = true
Selected = false
Crouching = false
Charging = false
Throwing = false
ShootAnim = false
Smashing = false
SmashDmg = 60
MaxGrenades = 6
Grenades = MaxGrenades
GrenadeDist = 18
GrenadePower = (GrenadeDist*100)/3
GrenadeTime = 3.8
ReflectMax = 7
ReflectMin = 3
MaxCharge = 200
Charge = MaxCharge
ChargeCost = 25
GiveCharge = MaxCharge/8
Dmg = 55
Accuracy = 2
Debounce = 1.4
MouseIc = "http://www.roblox.com/asset/?id=50054737"
MouseRe = "http://www.roblox.com/asset/?id=50055025"
MousePi = "http://www.roblox.com/asset/?id=50055031"
function Notime(func, tim)
 coroutine.resume(coroutine.create(function()
  if tim then
   wait(tim)
  end
  func()
 end))
end
function waitChild(parent, name)
 local child = parent:findFirstChild(name)
 if child then return child end
 while true do
  child = parent.ChildAdded:wait()
  if child.Name == name then return child end
 end
end
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
 end,
 Mesh = function(P, ID, x, y, z)
  local m = Instance.new("SpecialMesh")
  m.MeshId = ID
  m.Scale = Vector3.new(x, y, z)
  m.Parent = P
  return m
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
function ComputePos(pos1, pos2)
 local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
 return CFrame.new(pos1, pos3)
end
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
 local p = Instance.new("Part")
 p.formFactor = "Custom"
 p.Anchored = Anchor
 p.CanCollide = Collide
 p.Transparency = Tran
 p.Reflectance = Ref
 p.BrickColor = BrickColor.new(Color)
 p.TopSurface = 0
 p.BottomSurface = 0
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
function getCharacters(where, pos, dist)
 local chars = {}
 for _, v in pairs(where:children()) do
  local hum = getHumanoid(v)
  local tors = v:findFirstChild("Torso")
  if tors ~= nil and hum ~= nil then
   local anypart = nil
   for _,k in pairs(v:children()) do
    if k:IsA("BasePart") then
     if (k.Position - pos).magnitude <= dist then
      anypart = k
      break
     end
    end
   end
   if anypart then
    table.insert(chars, {v, tors, hum})
   end
  end
 end
 return chars
end
Gawnz = Instance.new("Model",workspace.Base)
Gawnz.Name = "Gawnz"
function RC(Pos, Dir, Max, Ignore)
 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function Draw(Pos1, Pos2)
 local mag = (Pos1 - Pos2).magnitude
 local line = Part(Gawnz, true, false, 0, 0, tostring(me.TeamColor), 0.2, 0.2, 1, true)
 line.CFrame = CFrame.new(Pos1, Pos2) * CFrame.new(0, 0, -mag/2)
 local mesh = Instance.new("SpecialMesh",line)
 mesh.MeshType = "Brick"
 mesh.Scale = Vector3.new(1, 1, mag)
 Notime(function()
  for i = 0, 1, 0.33 do
   wait()
   line.Transparency = i
  end
  line:remove()
 end)
end
Lazors = {
 {"http://www.roblox.com/asset/?id=22968437", 2.6},
 {"http://www.roblox.com/asset?id=1369158", 4.4},
 {"http://www.roblox.com/asset/?id=13775480", 1.4}
}
Mirroring = {
 {"http://www.roblox.com/asset/?id=12222124", 7.5},
}
function PlaySound(id, pitch, vol)
 local s = Add.Sound(nil, id, vol, pitch)
 if pitch ~= nil then
  if tonumber(pitch) then
   s.Pitch = tonumber(pitch)
  end
 end
 if vol ~= nil then
  if tonumber(vol) then
   s.Volume = tonumber(vol)
  end
 end
 s.Parent = torso
 s.PlayOnRemove = true
 Notime(function()
  wait()
  s:remove()
 end)
end
function Playz(tab, vol, pitch1)
 local pick = tab[math.random(1, #tab)]
 local id, pitch = pick[1], pick[2]
 PlaySound(id, math.random(pitch-pitch1, pitch+pitch1), vol)
end
function EndEffect(pos)
 local p = Part(Gawnz, true, false, 0.1, 0, me.TeamColor.Name, 1, 1, 1, true)
 p.CFrame = CFrame.new(pos)
 local sp = Add.Sphere(p)
 Notime(function()
  for i = 0, 1, 0.1 do
   sp.Scale = Vector3.new(0.4+1.2*i, 0.4+1.2*i, 0.4+1.2*i)
   p.Transparency = 0.1+0.9*i
   wait()
  end
  p:remove()
 end)
end
torso = waitChild(char, "Torso")
head = waitChild(char, "Head")
neck = waitChild(torso, "Neck")
hum = waitChild(char, "Humanoid")
Rarm = waitChild(char, "Right Arm")
Larm = waitChild(char, "Left Arm")
Rleg = waitChild(char, "Right Leg")
Lleg = waitChild(char, "Left Leg")
RH = waitChild(torso, "Right Hip")
LH = waitChild(torso, "Left Hip")
RH.Part0 = torso
LH.Part0 = torso
for i,v in pairs(char:children()) do
 if v.Name == Modelname or v:IsA("Hat") or v:IsA("Pants") or v:IsA("Shirt") or v:IsA("CharacterMesh") then
  v:remove()
 end
end
PlrGui = waitChild(me, "PlayerGui")
Sc = Instance.new("ScreenGui")
Sc.Name = "LaserTagOptions"
Main = Instance.new("Frame", Sc)
Main.Size = UDim2.new(0, 150, 0, 350)
Main.Position = UDim2.new(1, -150-10, 0.5, -350/2)
Main.BackgroundColor3 = Color3.new(0.2, 0.1, 0.3)
Main.BackgroundTransparency = 0.2
ChargeBack = Instance.new("Frame", Main)
ChargeBack.Size = UDim2.new(0, 40, 1, -40)
ChargeBack.Position = UDim2.new(0, 10, 0, 10)
ChargeBack.BorderSizePixel = 0
ChargeBack.BackgroundColor3 = Color3.new(0, 0, 0)
ChargeBack.BackgroundTransparency = 0.3
GrenadeBack = ChargeBack:clone()
GrenadeBack.Parent = Main
GrenadeBack.Position = UDim2.new(1, -40-10, 0, 30)
ChargeText = Instance.new("TextLabel", ChargeBack)
ChargeText.Font = "ArialBold"
ChargeText.FontSize = "Size18"
ChargeText.TextXAlignment = "Left"
ChargeText.TextYAlignment = "Top"
ChargeText.Position = UDim2.new(0, 0, 1, 2)
ChargeText.TextColor3 = Color3.new(1,1,1)
ChargeText.BackgroundTransparency = 1
ChargeText.Text = "Charge"
ChargeBar = Instance.new("ImageLabel", ChargeBack)
ChargeBar.Size = UDim2.new(1, -4, Charge/MaxCharge, -4)
ChargeBar.Position = UDim2.new(0, 2, 0, 2)
ChargeBar.BackgroundColor = BrickColor.new(me.TeamColor.Name)
ChargeBar.Image = "http://www.roblox.com/asset/?id=50051953"
ChargeBar.BackgroundTransparency = 0.25
GrenadeBar = Instance.new("ImageLabel", GrenadeBack)
GrenadeBar.Size = UDim2.new(1, -4, Grenades/MaxGrenades, -4)
GrenadeBar.Position = UDim2.new(0, 2, 0, 2)
GrenadeBar.BackgroundColor3 = Color3.new(1, 0.75, 0)
GrenadeBar.Image = "http://www.roblox.com/asset/?id=50051953"
GrenadeBar.BackgroundTransparency = 0.25
CBT = Instance.new("TextLabel", ChargeBack)
CBT.TextColor3 = Color3.new(0.85, 0.85, 0.85)
CBT.BackgroundTransparency = 1
CBT.Font = "ArialBold"
CBT.FontSize = "Size14"
CBT.Text = math.ceil((Charge/MaxCharge)*100).."%"
CBT.Position = UDim2.new(0.5, 0, 0.5, 0)
GBT = CBT:clone()
GBT.TextColor3 = Color3.new(1, 1, 1)
GBT.FontSize = "Size18"
GBT.Text = Grenades
GBT.Parent = GrenadeBack
GrenadeText = ChargeText:clone()
GrenadeText.Parent = GrenadeBack
GrenadeText.Text = "Grenades"
GrenadeText.TextYAlignment = "Bottom"
GrenadeText.TextXAlignment = "Right"
GrenadeText.Position = UDim2.new(1, 0, 0, -2)
Fillscreen = Instance.new("TextLabel", Sc)
Fillscreen.Visible = false
Fillscreen.Size = UDim2.new(1, 0, 1, 1)
Fillscreen.Position = UDim2.new(0, 0, 0, -1)
Fillscreen.BackgroundColor3 = Color3.new()
Fillscreen.TextColor3 = Color3.new(1, 1, 1)
Fillscreen.Font = "ArialBold"
Fillscreen.Text = "Zoom ALL WAY IN to play!"
Fillscreen.FontSize = "Size48"
Sc.Parent = PlrGui
cam = workspace.CurrentCamera
Mo = Instance.new("Model")
Mo.Name = Modelname
Faketorso = Part(Mo, false, false, 0, 0, tostring(torso.BrickColor), 2, 2, 1, true)
Faketorso.Name = "FakeTorso"
FakeArms = Instance.new("Model")
local PR1 = Part(FakeArms, false, false, 0, 0, tostring(me.TeamColor), 0.2, 0.2, 0.2)
Instance.new("SpecialMesh",PR1).Scale = Vector3.new(3.5, 8, 3.5)
Weld(Rarm, PR1, -0.3, -0.4, 0, math.rad(10), 0, math.rad(-20))
local PR2 = Part(FakeArms, false, false, 0, 0, tostring(Rarm.BrickColor), 0.2, 0.2, 0.2)
Instance.new("SpecialMesh",PR2).Scale = Vector3.new(3.5, 6, 3.5)
Weld(Rarm, PR2, -0.3, 0.4, 0, math.rad(-10), 0, math.rad(20))
local PL1 = Part(FakeArms, false, false, 0, 0, tostring(me.TeamColor), 0.2, 0.2, 0.2)
Instance.new("SpecialMesh",PL1).Scale = Vector3.new(3.5, 8, 3.5)
Weld(Larm, PL1, 0.3, -0.4, 0, math.rad(10), 0, math.rad(20))
local PL2 = Part(FakeArms, false, false, 0, 0, tostring(Larm.BrickColor), 0.2, 0.2, 0.2)
Instance.new("SpecialMesh",PL2).Scale = Vector3.new(3.5, 6, 3.5)
Weld(Larm, PL2, 0.3, 0.4, 0, math.rad(-10), 0, math.rad(-20))
FakeArms.Parent = cam
local TW = Weld(torso, Faketorso, 0, 0, 0, 0, 0, 0)
torso.Transparency = 1
RABrick = Part(Mo, false, false, 1, 0, "Lime green", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "Lime green", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "Lime green", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "Lime green", 0.1, 0.1, 0.1, true)
RABW = Weld(Faketorso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(Faketorso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(Faketorso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(Faketorso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
HB = Part(Mo, false, false, 1, 0, "Lime green", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, -0.2, 0.5, 0.5, 0, 0, 0)
Handle = Part(Gawnz, false, false, 0, 0, "Really black", 0.1, 0.1, 0.1, true)
Handle.Name = "Handle"
Add.Mesh(Handle, "rbxasset://fonts/PaintballGun.mesh", 1, 1, 1)
HW.Part1 = Handle
Mo.Parent = char
RAW.Part1 = Rarm
LAW.Part1 = Larm
RH.Part0 = Faketorso
LH.Part0 = Faketorso
TW.C0 = CFrame.Angles(0, math.rad(-45), 0)
RAWMain = CFrame.Angles(math.rad(90), 0, math.rad(-45)) * CFrame.new(0, -0.7, -0.02)
LAWMain = CFrame.Angles(math.rad(90), 0, math.rad(40)) * CFrame.new(0, -0.6, -0.01)
RAW.C0 = RAWMain
LAW.C0 = LAWMain
function FireAnim()
 ShootAnim = true
 local Place = RAW.C0
 local Place2 = HW.C0
 for i = 0, 1, 0.5 do
  RAW.C0 = Place * CFrame.new(0, 0.35*i, 0)
  HW.C0 = Place2 * CFrame.new(0, 0, 0.25*i)
  wait()
 end
 for i = 1, 0, -0.33 do
  RAW.C0 = Place * CFrame.new(0, 0.35*i, 0)
  HW.C0 = Place2 * CFrame.new(0, 0, 0.25*i)
  wait()
 end
 HW.C0 = Place2
 RAW.C0 = Place
 ShootAnim = false
end
function Fire(fro, t, max, bounce)
 local from = fro
 local to = t
 local a2, b2, c2 = math.random(-Accuracy*10, Accuracy*10)/10, math.random(-Accuracy*10, Accuracy*10)/10, math.random(-Accuracy*10, Accuracy*10)/10
 if Crouching then
  a2, b2, b3 = math.random(-Accuracy*10, Accuracy*10)/70, math.random(-Accuracy*10, Accuracy*10)/70, math.random(-Accuracy*10, Accuracy*10)/70
 end
 local cf = (CFrame.new(from, to) * CFrame.Angles(math.rad(a2), math.rad(a2), math.rad(a2)) * CFrame.new(0, 0, -4)).p
 local Hit, pos = RC(from, (cf - from), max, Gawnz)
 Draw(from, pos)
 EndEffect(pos)
 if Hit then
  if Hit.Parent:IsA("Hat") then
   Hit:breakJoints()
  end
 end
 local function dmg(p, dm)
  local h = nil
  if p then
   h = getHumanoid(p.Parent)
   if h then
    local realdmg = dm
    if p.Name == "Head" then
     realdmg = dm*2
    end
    h.Health = h.Health - realdmg
   end
  end
  return h
 end
 local h = nil
 if bounce then 
  Notime(FireAnim)
  h = dmg(Hit, Dmg)
  Playz(Lazors, math.random(40,75)/100, 0.3)
 end
 Notime(function()
 if bounce and h == nil and Hit ~= nil then
  local mag = (from - to).magnitude
  local left = (max*1.5)-mag
  for _ = 1, math.random(ReflectMin,ReflectMax) do
   Playz(Mirroring, math.random(40,75)/100, 0.9)
   wait(mag/550)
   local a, b, c = math.random(-40, 40), math.random(-15, 15), math.random(-40, 40)
   to = (CFrame.new(pos, from) * CFrame.Angles(math.rad(a), math.rad(b), math.rad(c)) * CFrame.new(0, 0, -4)).p
   from = pos
   Hit, pos = Fire(from, to, max, false)
   mag = (from - to).magnitude
   left = left-mag
   local ha = dmg(Hit, Dmg)
   if left <= 0 or Hit == nil or ha ~= nil then break end
  end
 end
 end)
 return Hit, pos
end
if script.Parent.className ~= "Tool" then
 Tool = Instance.new("Tool", me.Backpack)
 Tool.Name = "Gun"
 script.Parent = Tool
end
bin = script.Parent
CrouchR = RAWMain * CFrame.new(-0.5, -0.35, 0)
CrouchL = LAWMain * CFrame.new(0, 0.3, 0)
function Crouch()
 if Crouching == false then
  Crouching = true
  RH.Part1 = nil
  LH.Part1 = nil
  RLW.Part1 = Rleg
  LLW.Part1 = Lleg
  Rleg.CanCollide = true
  Lleg.CanCollide = true
  Rleg.Name = "Rcrouch"
  Lleg.Name = "Lcrouch"
  for i = 0, 1, 0.2 do
   RLW.C0 = CFrame.Angles(math.rad(5*i), 0, 0) * CFrame.new(0, 1.4*i, -1*i)
   LLW.C0 = CFrame.Angles(math.rad(-90*i), 0, 0) * CFrame.new(0, 0.3*i, 0.15*i)
   RAW.C0 = RAWMain * CFrame.new(-0.5*i, -0.35*i, 0)
   LAW.C0 = LAWMain * CFrame.new(0, 0.3*i, 0)
   wait()
  end
 else
  Crouching = false
  Rleg.Name = "Right Leg"
  Lleg.Name = "Left Leg"
  for i = 1, 0, -0.2 do
   RLW.C0 = CFrame.Angles(math.rad(10*i), 0, 0) * CFrame.new(0, 1.4*i, -1*i)
   LLW.C0 = CFrame.Angles(math.rad(-90*i), 0, 0) * CFrame.new(0, 0.3*i, 0.15*i)
   RAW.C0 = RAWMain * CFrame.new(-0.5*i, -0.35*i, 0)
   LAW.C0 = LAWMain * CFrame.new(0, 0.3*i, 0)
   wait()
  end
  RH.Part1 = Rleg
  LH.Part1 = Lleg
  RLW.Part1 = nil
  LLW.Part1 = nil
  Rleg.CanCollide = false
  Lleg.CanCollide = false
 end
end
function MakeGrenade()
 local grenade = Part(workspace, false, false, 0, 0, me.TeamColor.Name, 0.8, 1, 0.8, true)
 grenade.Friction = 0.8
 Add.Mesh(grenade, "http://www.roblox.com/Asset/?id=10207236", 0.15, 0.12, 0.15)
 local w = Weld(Larm, grenade, 0, 0, -1.25, 0, 0, 0)
 w.C0 = CFrame.Angles(math.pi/2, 0, 0)
 return grenade, w
end
function Throw(Mousepos)
 if Throwing == false and Grenades > 0 then
  Grenades = Grenades - 1
  Throwing = true
  for i = 0, 1, 0.25 do
   LAW.C0 = LAWMain * CFrame.Angles(math.rad(-85*i), 0, math.rad(30*i)) * CFrame.new(0, 0.2*i, 0.4*i)
   wait()
  end
  for i = 0, 1, 0.5 do
   LAW.C0 = LAWMain * CFrame.Angles(math.rad(-85), 0, math.rad(30)) * CFrame.new(0, 0.2-0.3*i, 0.4-0.5*i)
   wait()
  end
  local Gr, We = MakeGrenade()
  for i = 0, 1, 0.1 do
   LAW.C0 = LAWMain * CFrame.Angles(math.rad(-85+195*i), 0, math.rad(30-70*i)) * CFrame.new(0, -0.1+0.1*i, -0.1+0.1*i)
   wait()
  end
  We:remove()
  wait()
  local Mag = (torso.Position - Mousepos).magnitude
  Mag = Mag - (Mag/8)
  if Mag > 35 then Mag = 35 end
  local Power = (30+(Mag*1.5))
  Gr.Velocity = (CFrame.new(torso.Position, Mousepos) * CFrame.Angles(math.rad(20), 0, 0)).lookVector * Power
  Gr.CanCollide = true
  Notime(function()
   wait(GrenadeTime)
   local d = GrenadeDist
   local pos = Gr.Position
   local cf = CFrame.new(pos) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
   Gr:remove()
   local eff = Instance.new("Model", workspace)
   eff.Name = "GrenadeEffect"
   local ball = Part(eff, true, false, 0, 0, me.TeamColor.Name, 1, 1, 1, true)
   ball.CFrame = cf
   local sp = Add.Sphere(ball)
   local ring = Part(eff, true, false, 0, 0, me.TeamColor.Name, 1, 1, 1, true)
   ring.CFrame = cf
   local rng = Add.Mesh(ring, "http://www.roblox.com/asset/?id=3270017", (d/2), (d/2), (d/2))
   local ring2 = Part(eff, true, false, 0, 0, me.TeamColor.Name, 1, 1, 1, true)
   ring2.CFrame = cf
   local rng2 = Add.Mesh(ring2, "http://www.roblox.com/asset/?id=3270017", (d/2), (d/2), (d/2))
   local ring3 = Part(eff, true, false, 0, 0, me.TeamColor.Name, 1, 1, 1, true)
   ring3.CFrame = cf
   local rng3 = Add.Mesh(ring3, "http://www.roblox.com/asset/?id=3270017", (d/2), (d/2), (d/2))
   Notime(function()
    PlaySound("http://www.roblox.com/asset/?id=2101148", 1.25, 0.6)
    for i = 0, 1, 0.065 do
     ball.Transparency = i
     sp.Scale = Vector3.new((d*2)*i, (d*2)*i, (d*2)*i)
     ring.Transparency = i
     ring2.Transparency = i
     ring3.Transparency = i
     rng.Scale = Vector3.new((d/2)+(d*2)*i, (d/2)+(d*2)*i, (d/2)+(d*2.8)*i)
     rng2.Scale = Vector3.new((d/2)+(d*2)*i, (d/2)+(d*2)*i, (d/2)+(d*2.8)*i)
     rng3.Scale = Vector3.new((d/2)+(d*2)*i, (d/2)+(d*2)*i, (d/2)+(d*2.8)*i)
     ring.CFrame = cf * CFrame.Angles(math.rad(180*i), 0, 0)
     ring2.CFrame = cf * CFrame.Angles(0, math.rad(180*i), 0)
     ring3.CFrame = cf * CFrame.Angles(0, math.rad(90*i), math.rad(180*i))
     wait()
    end
    eff:remove()
   end)
   local chars = getCharacters(workspace, pos, GrenadeDist)
   for _, v in pairs(chars) do
    local dist = (pos - v[2].Position).magnitude
    if dist < 1 then dist = 1 end
    local power = GrenadePower/dist
    v[3].Health = v[3].Health - power
    v[2].Velocity = CFrame.new(pos, v[2].Position).lookVector * 30
   end
  end)
  for i = 0, 1, 0.25 do
   LAW.C0 = LAWMain * CFrame.Angles(math.rad(110), 0, math.rad(-75-80*i)) * CFrame.new(0, -0.4*i, 0)
   wait()
  end
  for i = 0, 1, 0.33 do
   LAW.C0 = LAWMain * CFrame.Angles(math.rad(110-110), 0, math.rad(-155+155*i)) * CFrame.new(0, -0.4+0.4*i, 0)
   wait()
  end
  Throwing = false
  LAW.C0 = LAWMain
 end
end
function Reload()
 if Charging == false and Throwing == false and Charge < MaxCharge then
  Charging = true
  for i = 0, 1, 0.05 do
   RAW.C0 = CFrame.Angles(math.rad(90-35*i), 0, math.rad(-45+25*i)) * CFrame.new(-0.5*i, -0.7+0.9*i, -0.02)
   LAW.C0 = CFrame.Angles(math.rad(90-35*i), 0, math.rad(40+5*i)) * CFrame.new(0, -0.6-0.4*i, -0.01)
   wait()
  end
  repeat
   for i = 0, 1, 0.15 do
    RAW.C0 = CFrame.Angles(math.rad(90-35), 0, math.rad(-45+25)) * CFrame.new(-0.5, -0.7+0.9, -0.02)
    LAW.C0 = CFrame.Angles(math.rad(90-35+10*i), 0, math.rad(45-10*i)) * CFrame.new(0, -0.6-0.4-0.2*i, -0.01)
    wait()
   end
   PlaySound("rbxasset://sounds\\clickfast.wav", 2, 0.6)
   for i = 0, 1, 0.15 do
    RAW.C0 = CFrame.Angles(math.rad(90-35), 0, math.rad(-45+25)) * CFrame.new(-0.5, -0.7+0.9, -0.02)
    LAW.C0 = CFrame.Angles(math.rad(90-35+10-10*i), 0, math.rad(45-10+10*i)) * CFrame.new(0, -0.6-0.4-0.2+0.2*i, -0.01)
    wait()
   end
   PlaySound("rbxasset://sounds\\clickfast.wav", 2, 0.6)
   Charge = Charge + GiveCharge
   wait(0.08)
  until Charge >= MaxCharge-1
  for i = 0, 1, 0.1 do
   RAW.C0 = CFrame.Angles(math.rad(90-35+35*i), 0, math.rad(-45+25-25*i)) * CFrame.new(-0.5+0.5*i, -0.7+0.9-0.9*i, -0.02)
   LAW.C0 = CFrame.Angles(math.rad(90-35+35*i), 0, math.rad(40+5-5*i)) * CFrame.new(0, -0.6-0.4+0.4*i, -0.01)
   wait()
  end
  RAW.C0 = RAWMain
  LAW.C0 = LAWMain
  Charging = false
 end
end
function SmashGet()
 local chars = getCharacters(workspace, Handle.Position, 2)
 if chars[1] ~= nil then
  local teammate = false
  local p = Plrs:GetPlayerFromCharacter(chars[1][1])
  if p then
   if p.TeamColor == me.TeamColor then
    teammate = true
   end
  end
  chars[1][3].Health = chars[1][3].Health - SmashDmg
 end
end
function Smash()
 Smashing = true
 PlaySound("rbxasset://sounds//swordslash.wav", 0.8, 0.75)
 for i = 0, 1, 0.15 do
  TW.C0 = CFrame.Angles(0, math.rad(-45+45*i), 0)
  RAW.C0 = CFrame.Angles(math.rad(90+90*i), 0, math.rad(-45+45*i)) * CFrame.new(0, -0.7+0.7*i, -0.02)
  LAW.C0 = CFrame.Angles(math.rad(90-45*i), 0, math.rad(40)) * CFrame.new(0, -0.6+0.3*i, -0.01)
  wait()
 end
 for i = 0, 1, 0.33 do
  TW.C0 = CFrame.Angles(0, math.rad(25*i), 0) --45*i
  RAW.C0 = CFrame.Angles(math.rad(180-80*i), 0, math.rad(5*i)) * CFrame.new(0, -0.2*i, -0.02)
  LAW.C0 = CFrame.Angles(math.rad(45-45*i), 0, math.rad(40-25*i)) * CFrame.new(0, -0.6+0.3+0.15*i, -0.01)
  wait()
 end
 SmashGet()
 for i = 0.5, 1, 0.5 do
  TW.C0 = CFrame.Angles(0, math.rad(25+20*i), 0)
  RAW.C0 = CFrame.Angles(math.rad(180-80-60*i), 0, math.rad(5+5*i)) * CFrame.new(0, -0.2, -0.02)
  LAW.C0 = CFrame.Angles(math.rad(45-45-35*i), 0, math.rad(40-25-15*i)) * CFrame.new(0, -0.6+0.3+0.15+0.15*i, -0.01)
  wait()
 end
 for i = 0, 1, 0.1 do
  TW.C0 = CFrame.Angles(0, math.rad(45-90*i), 0)
  RAW.C0 = CFrame.Angles(math.rad(40+50*i), 0, math.rad(10-55*i)) * CFrame.new(0, -0.35-0.35*i, -0.02)
  LAW.C0 = CFrame.Angles(math.rad(-35+125*i), 0, math.rad(40*i)) * CFrame.new(0, -0.6*i, -0.01)
  wait()
 end
 RAW.C0 = RAWMain
 LAW.C0 = LAWMain
 TW.C0 = CFrame.Angles(0, math.rad(-45), 0)
 Smashing = false
end
bin.Equipped:connect(function(mouse)
 Selected = true
 bin.Parent = nil
 mouse.Button1Down:connect(function()
  if Able and hum.Health > 0 and Charge >= ChargeCost and Charging == false and Smashing == false then
   Charge = Charge - ChargeCost
   Able = false
   local from = Handle.CFrame * CFrame.new(0, 2, -0.2).p
   local to = mouse.Hit.p
   Fire(from, to, 420, true)
   wait(Debounce)
   Able = true
  elseif Charge < ChargeCost and Able and Smashing == false then
   Reload()
  end
 end)
 mouse.KeyDown:connect(function(key)
  key = key:lower()
  if Charging == false and Smashing == false and Able then
   if key == "f" then
    Throw(mouse.Hit.p)
   elseif key == "r" then
    Reload()
   elseif key == "q" then
    Smash()
   end
  end
  if key == "c" and Smashing == false then
   Crouch()
  end
 end)
 while hum.Health > 0 do
  if Throwing == false and Charging == false and ShootAnim == false and Able then
   local mousepos = mouse.Hit.p
   local mypos = torso.Position + Vector3.new(0, 0.5, 0)
   local magn = (mypos - mousepos).magnitude/75
   local offset = (mypos.y - mousepos.y)/65
   offset = offset/magn
   if offset > 0.75 then offset = 0.75 elseif offset < -1 then offset = -1 end
   local oh = 26
   local Main1, Main2 = RAWMain, LAWMain
   if Crouching and CrouchR then
    Main1, Main2 = CrouchR, CrouchL
   end
   RAW.C0 = Main1 * CFrame.Angles(-math.ceil(offset*22)/oh, 0, 0) * CFrame.new(0, -math.floor(math.abs(offset/4.5)*15)/35, 0)
   LAW.C0 = Main2 * CFrame.Angles(-math.ceil(offset*20)/oh, 0, math.floor(math.abs(offset/3.5)*6)/25) * CFrame.new(0, -math.floor(math.abs(offset/3.5)*25)/oh, 0)
  end
  if Charging then
   mouse.Icon = MouseRe
  else
   mouse.Icon = MouseIc
  end
  wait()
 end
end)
bin.Parent = char
local bg = Add.BG(nil)
while true do
 if Crouching then
  hum.WalkSpeed = 8
  bg.Parent = torso
  bg.cframe = ComputePos(cam.CoordinateFrame.p, torso.Position)
 else
  bg.Parent = nil
  hum.WalkSpeed = 16
 end
 if Charge > MaxCharge then Charge = MaxCharge end
 if Grenades > MaxGrenades then Grenades = MaxGrenades end
 GrenadeBar.Size = UDim2.new(1, -4, Grenades/MaxGrenades, 0)
 GrenadeBar.Position = UDim2.new(0, 2, 0, 0)
 ChargeBar.Size = UDim2.new(1, -4, -(Charge/MaxCharge), 0)
 ChargeBar.Position = UDim2.new(0, 2, 1, 0)
 CBT.Text = math.ceil((Charge/MaxCharge)*100).."%"
 GBT.Text = Grenades
 local magn = (head.Position - cam.CoordinateFrame.p).magnitude
 if magn > 2.4 then
  --Fillscreen.Visible = true
 else
  --Fillscreen.Visible = false
 end
 wait()
end
 