Player = game.Players.LocalPlayer
local IsDead = false
local enabled = true
local enabled2 = true
local hold = false
local HoldW = false
local mouse = Player:GetMouse()
local negative = false
H = Player.Character.Humanoid
local deaths = 0
local r = Player.Character.HumanoidRootPart.RootJoint
local l = Player.Character.Torso["Left Shoulder"]
local r2 = Player.Character.Torso["Right Shoulder"]
local ll = Player.Character.Torso["Left Hip"]
local rl = Player.Character.Torso["Right Hip"]
Player.Character.Archivable = true
if Player.Character:FindFirstChild("Health") ~= nil then
  Player.Character.Health:Destroy()
end
local ccc = Player.Character:clone()
if Player.Character:FindFirstChild(Player.Name) == nil then
  m = Instance.new("Model", Player.Character)
  Player.Character.Head.Transparency = 1
  m.Name = Player.Character.Name
  h = Player.Character.Head:clone()
  h.CanCollide = false
  h.Mesh.Scale = Vector3.new(1.249, 1.249, 1.249)
  h.CFrame = Player.Character.Head.CFrame
  w = Instance.new("Weld", h)
  w.Part0 = Player.Character.Head
  w.Part1 = h
  h.Parent = m
  m.Name = Player.Character.Name
  he = Instance.new("Humanoid")
  he.MaxHealth = 100
  he.Health = 100
  he.Parent = m
  h.Transparency = 0
  Hum = he
  H.MaxHealth = 1000
else
  m = Player.Character[Player.Name]
  h = m.Head
  he = m.Humanoid
  Hum = he
  H.MaxHealth = 1000
end
repeat
  wait()
  H.Health = H.MaxHealth
until H.Health == H.MaxHealth
function HollowSpy(key)
  key = key:lower()
  if (key == "e" or key == "j") and enabled == true then
    enabled = false
    hold = true
    HOLLOWFLYo()
  end
end
function HOLLOWFLYo()
  local x2 = game.Lighting.Skull:clone()
  local m = Instance.new("Model", Player.Character)
  local stopd = false
  x2.CanCollide = false
  Workspace.CurrentCamera.CameraSubject = x2
  Workspace.CurrentCamera.CameraType = "Follow"
  x2.Anchored = true
  hprec = Player.Character.Humanoid.Health
  if Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false then
    i = math.random(1, 2)
    if i == 1 then
      Player.Character.Humanoid.PlatformStand = true
    else
      Player.Character.Humanoid.Sit = true
    end
  end
  Player.Character.Humanoid.WalkSpeed = 0
  x2.Parent = m
  x2.CFrame = Player.Character.Head.CFrame
  xx = Instance.new("Part")
  xx.CFrame = x2.CFrame
  repeat
    wait()
    if Player.Character.Humanoid.Sit == false then
      Player.Character.Humanoid.Sit = true
      wait(0.4)
    end
    if Player.Character.Humanoid.Health > hprec then
      hprec = Player.Character.Humanoid.Health
    end
    xx.CFrame = xx.CFrame * CFrame.new(0, 0, -100)
    if HoldW == true then
      if negative == false then
        x2.CFrame = CFrame.new(x2.Position, mouse.Hit.p)
        x2.CFrame = x2.CFrame * CFrame.new(0, 0, -2)
      else
        x2.CFrame = CFrame.new(x2.Position, mouse.Hit.p)
        x2.CFrame = x2.CFrame * CFrame.new(0, 0, 4)
      end
      stopd = false
    else
      x2.CFrame = CFrame.new(x2.Position, mouse.Hit.p)
      if stopd == false then
        stopd = true
      end
      print("Ok")
      wait()
      x2.CFrame = CFrame.new(x2.Position, mouse.Hit.p)
    end
  until hold == false or Player.Character.Humanoid.Health == 0 or Player.Character.Humanoid.Health <= hprec - 5
  if x2 then
    repeat
      wait()
      if Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false then
        i = math.random(1, 2)
        if i == 1 then
          Player.Character.Humanoid.PlatformStand = true
        else
          Player.Character.Humanoid.Sit = true
        end
      end
      if x2 and Player.Character.Humanoid.Health > 0 then
        x2.CFrame = CFrame.new(x2.Position, Player.Character.Torso.Position)
        x2.CFrame = x2.CFrame * CFrame.new(0, 0, -2.5)
      end
    until x2 == nil or x2 ~= nil and (Player.Character.Torso.Position - x2.Position).magnitude < 8
  end
  if m then
    m:Destroy()
  end
  Player.Character.Humanoid.WalkSpeed = 16
  Player.Character.Humanoid.Jump = true
  Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
  Workspace.CurrentCamera.CameraType = "Custom"
  if x2 then
    x2:Destroy()
  end
  wait(0.3)
  enabled = true
end
function Stopo(key)
  key = key:lower()
  if (key == "e" or key == "j") and enabled == false then
    hold = false
  end
end
mouse.KeyDown:connect(HollowSpy)
mouse.KeyUp:connect(Stopo)
function HW(key)
  key = key:lower()
  if key == "w" or key:byte() == 17 or key == "s" or key:byte() == 18 then
    if key:byte() == 18 or key == "s" then
      negative = true
    elseif key:byte() == 17 or key == "w" then
      negative = false
    end
    HoldingW()
  end
end
function RW(key)
  key = key:lower()
  if key == "w" or key:byte() == 17 or key:byte() == 18 or key == "s" then
    HoldW = false
  end
end
function HoldingW(key)
  HoldW = true
  repeat
    wait()
  until HoldW == false
end
mouse.KeyDown:connect(HW)
mouse.KeyUp:connect(RW)
function Update()
  if IsDead == false then
    if H.Health - 900 > 0 then
      Hum.Health = H.Health - 900
      print("Health :" .. H.Health - 900)
    elseif deaths < 3 and H.Health - 900 < 0 and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("Torso") and Player.Character:FindFirstChild("Left Leg") and Player.Character:FindFirstChild("Right Leg") and Player.Character:FindFirstChild("Right Arm") and Player.Character:FindFirstChild("Left Arm") and Player.Character:FindFirstChild("HumanoidRootPart") then
      if deaths >= 2 then
        Player.Character.Head:Destroy()
      else
        Hum.Health = 0
        h.CanCollide = true
        deaths = deaths + 1
        IsDead = true
        H.Health = 1000
        Hum.Health = 0
        Player.Character.Archivable = true
        c = ccc:clone()
        game.Debris:AddItem(c, 18)
        c.Parent = Workspace
        Workspace.CurrentCamera.CameraSubject = c.Head
        po = Player.Character.Torso.Position + Vector3.new(0, 2, 0)
        bv = Instance.new("BodyVelocity", Player.Character.Torso)
        bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.velocity = Vector3.new(0, 0, 0)
        game.Debris:AddItem(bv, 70)
        c["Left Leg"].CanCollide = true
        c["Right Leg"].CanCollide = true
        c.Head.CanCollide = true
        llp = Player.Character["Left Leg"].Position
        rlp = Player.Character["Right Leg"].Position
        tp = Player.Character.Torso.Position
        hp = Player.Character.Head.Position
        rap = Player.Character["Right Arm"].Position
        lap = Player.Character["Left Arm"].Position
        Player.Character:MoveTo(Player.Character.Torso.Position + Vector3.new(0, 100, 0))
        c:MoveTo(po)
        pa = Player.Character:GetChildren()
        for i = 1, #pa do
          if pa[i].ClassName == "Part" and pa[i].Name ~= "HumanoidRootPart" and pa[i].Name ~= "Head" then
            pa[i].Transparency = 1
          end
          if pa[i].ClassName == "Hat" and pa[i].Name ~= "Handle" then
            pa[i].Handle.Transparency = 1
          end
          if h then
            h.Transparency = 1
          end
        end
        pa = c:GetChildren()
        for i = 1, #pa do
          game.Debris:AddItem(pa[i], 20)
          if pa[i].ClassName == "Part" and pa[i].Name ~= "HumanoidRootPart" and pa[i].Name ~= "Head" then
            pa[i].Transparency = 0
            pa[i].CanCollide = true
          end
          if pa[i].ClassName == "Hat" and pa[i].Name ~= "Handle" then
            pa[i].Handle.Transparency = 0
            pa[i].Handle.CanCollide = true
            pa[i].Handle.Position = pa[i].Handle.Position + Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
          end
          if pa[i].Name == Player.Name and pa[i]:FindFirstChild("Head") then
            pa[i].Head.Transparency = pa[i].Head.Transparency - 0.1
          end
        end
        c:BreakJoints()
        if c:FindFirstChild("HumanoidRootPart") then
          c.HumanoidRootPart:Destroy()
        end
        s = Instance.new("Sound", c.Head)
        game.Debris:AddItem(s, 15)
        wait(10)
        s = c:GetChildren()
        for i = 1, #s do
          if s[i].ClassName == "Part" then
            bp = Instance.new("BodyPosition", s[i])
            bp.maxForce = Vector3.new(1500, 1500, 1500)
            if s[i].Name == "Head" then
              bp.position = hp
            elseif s[i].Name == "Torso" then
              bp.position = tp
            elseif s[i].Name == "Left Leg" then
              bp.position = llp
            elseif s[i].Name == "Right Leg" then
              bp.position = rlp
            elseif s[i].Name == "Right Arm" then
              bp.position = rap
            elseif s[i].Name == "Left Arm" then
              bp.position = lap
            end
          end
        end
        wait(2.5)
        if c then
          c:Destroy()
        end
        Player.Character:MoveTo(po)
        if bv then
          bv:Destroy()
        end
        if Player.Character.Torso:FindFirstChild("BodyVelocity") then
          Player.Character.BodyVelocity:Destroy()
        end
        he = Player.Character.Torso.Neck
        r.C0 = r.C0 * CFrame.Angles(0.4, 0, 0)
        l.C0 = l.C0 * CFrame.Angles(0, 0, -1)
        rl.C0 = rl.C0 * CFrame.Angles(0, 0, 1)
        ll.C0 = ll.C0 * CFrame.Angles(0, 0, -1)
        r2.C0 = r2.C0 * CFrame.Angles(0, 0, 1)
        he.C0 = he.C0 * CFrame.Angles(1, 0, 0)
        wait()
        H.Health = 900
        Hum.Health = 0.1
        for i = 1, 10 do
          pa = Player.Character:GetChildren()
          for i = 1, #pa do
            if pa[i].ClassName == "Part" and pa[i].Name ~= "HumanoidRootPart" and pa[i].Name ~= "Head" then
              pa[i].Transparency = pa[i].Transparency - 0.1
            end
            if pa[i].ClassName == "Hat" and pa[i].Name ~= "Handle" then
              pa[i].Handle.Transparency = pa[i].Handle.Transparency - 0.1
            end
            if pa[i].Name == Player.Name and pa[i]:FindFirstChild("Head") then
              pa[i].Head.Transparency = pa[i].Head.Transparency - 0.1
            end
          end
          h.CanCollide = true
          if h then
            h.Transparency = 0
          end
          rl.C0 = rl.C0 * CFrame.Angles(0, 0, -0.1)
          ll.C0 = ll.C0 * CFrame.Angles(0, 0, 0.1)
          r.C0 = r.C0 * CFrame.Angles(-0.04, 0, 0)
          l.C0 = l.C0 * CFrame.Angles(0, 0, 0.1)
          r2.C0 = r2.C0 * CFrame.Angles(0, 0, -0.1)
          he.C0 = he.C0 * CFrame.Angles(-0.1, 0, 0)
          Hum.Health = Hum.Health + 10
          H.Health = H.Health + 10
          Workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
          wait(0.05)
        end
        H.Health = 1000
        Hum.Health = 100
        IsDead = false
      end
    end
  end
end
H.Changed:connect(Update)
