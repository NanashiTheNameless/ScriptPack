local name = "ace28545"
local players = game:GetService("Players")
local player = players:FindFirstChild(name)
local enabled = true
if script.Parent.className ~= "HopperBin" then
 local tool = Instance.new("HopperBin",player.Backpack)
 tool.Name = "Staff"
 script.Parent = tool
 script.Name = "Function"
 local string = Instance.new("StringValue",tool)
 string.Name = "Numbers"
 string.Value = 0
end
function createtoolstaff()
 if player == nil then return end
 if player.Character == nil then return end
 if player.Character:FindFirstChild("Humanoid").Health == 0 then return end
 if player.Character:FindFirstChild("Staff") == nil then
  local staff = Instance.new("Model",player.Character)
  staff.Name = "Staff"
  if player.Character.Staff:FindFirstChild("Handle") == nil then
   local handle = Instance.new("Part",player.Character.Staff)
   handle.Name = "Handle"
   handle.formFactor = "Custom"
   handle.Size = Vector3.new(0.15,3.5,0.15)
   handle.BrickColor = BrickColor.Black()
   handle.Locked = true
   local cyl = Instance.new("CylinderMesh",handle)
   local welda = Instance.new("Weld")
   welda.Parent = staff
   welda.Part0 = handle
   welda.Part1 = player.Character:FindFirstChild("Right Arm")
   welda.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0)
   local handlea = Instance.new("Part",player.Character.Staff)
   handlea.Name = "Handle1"
   handlea.formFactor = "Custom"
   handlea.Size = Vector3.new(0.2,0.2,0.2)
   handlea.BrickColor = BrickColor.new(Color3.new(0.5,0,0.5))
   handlea.TopSurface = 0
   handlea.BottomSurface = 0
   handlea.Locked = true
   handlea.Position = player.Character.Torso.Position
   local weldc = Instance.new("Weld")
   weldc.Parent = staff
   weldc.Part0 = handle
   weldc.Part1 = handlea
   weldc.C0 = CFrame.new(0,1.75,0)
   local handleb = Instance.new("Part",player.Character.Staff)
   handleb.Name = "Handle2"
   handleb.formFactor = "Custom"
   handleb.Size = Vector3.new(0.2,0.2,0.2)
   handleb.BrickColor = BrickColor.new(Color3.new(0.5,0,0.5))
   handleb.TopSurface = 0
   handleb.BottomSurface = 0
   handleb.Locked = true
   handleb.Position = player.Character.Torso.Position
   local weldd = Instance.new("Weld")
   weldd.Parent = staff
   weldd.Part0 = handlea
   weldd.Part1 = handleb
   weldd.C0 = CFrame.new(0,-3.5,0)
   for i = 1, 360, 25 do
    pcall(function()
     if player.Character:FindFirstChild("Staff") == nil then
      return
     end
     local handlef = Instance.new("Part",player.Character.Staff)
     handlef.Name = "Handle#"
     handlef.formFactor = "Custom"
     handlef.Size = Vector3.new(0.1,0.1,0.1)
     handlef.BrickColor = BrickColor.new(Color3.new(0.5,0,0.5))
     handlef.TopSurface = 0
     handlef.BottomSurface = 0
     handlef.Locked = true
     handlef.Position = player.Character.Torso.Position
     handlef.CanCollide = false
     handlef.Transparency = 0.2
     local weldf = Instance.new("Weld")
     weldf.Parent = staff
     weldf.Part0 = handlea
     weldf.Part1 = handlef
     weldf.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(i),0) * CFrame.new(0.25*math.cos(math.rad(i/100)),-0.75,0.25*math.sin(math.rad(i/100)))
     local handlet = Instance.new("Part",player.Character.Staff)
     handlet.Name = "Handle#"
     handlet.formFactor = "Custom"
     handlet.Size = Vector3.new(0.1,0.1,0.1)
     handlet.BrickColor = BrickColor.new(Color3.new(0.5,0,0.5))
     handlet.TopSurface = 0
     handlet.BottomSurface = 0
     handlet.Locked = true
     handlet.Position = player.Character.Torso.Position
     handlet.CanCollide = false
     handlet.Transparency = 0.2
     local weldt = Instance.new("Weld")
     weldt.Parent = staff
     weldt.Part0 = handlea
     weldt.Part1 = handlet
     weldt.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(i)) * CFrame.new(0.25*math.cos(math.rad(i/100)),0.25*math.sin(math.rad(i/100))-0.75,0)
     local handlex = Instance.new("Part",player.Character.Staff)
     handlex.Name = "Handle#"
     handlex.formFactor = "Custom"
     handlex.Size = Vector3.new(0.1,0.1,0.1)
     handlex.BrickColor = BrickColor.new(Color3.new(0.5,0,0.5))
     handlex.TopSurface = 0
     handlex.BottomSurface = 0
     handlex.Locked = true
     handlex.Position = player.Character.Torso.Position
     handlex.CanCollide = false
     handlex.Transparency = 0.2
     local weldx = Instance.new("Weld")
     weldx.Parent = staff
     weldx.Part0 = handlea
     weldx.Part1 = handlex
     weldx.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(i),0,0) * CFrame.new(0,0.25*math.sin(math.rad(i/100))-0.75,0.25*math.cos(math.rad(i/100)))
    end)
    wait()
   end
   coroutine.wrap(function()
    while true do
     if player.Character:FindFirstChild("Staff") == nil then
      return
     end
     for i = 1, 10 do
      player.Character.Staff.Handle1.Reflectance = i/5
      player.Character.Staff.Handle2.Reflectance = i/5
      wait(0.05)
     end
     for i = 1, -10 do
      player.Character.Staff.Handle1.Reflectance = i/5
      player.Character.Staff.Handle2.Reflectance = i/5
      wait(0.05)
     end
     wait()
    end
   end)()
  end
 end
end
function a(key)
 if key == nil then return end
 key = key:lower()
 if player == nil then return end
 if player.Character == nil then return end
 if player.Character:FindFirstChild("Humanoid").Health == 0 then return end
 if enabled == false then return end
 if key == "q" then
  script.Parent.Numbers.Value = script.Parent.Numbers.Value - 1
  script.Parent.Name = script.Parent.Numbers.Value.." Spell"
 elseif key == "e" then
  script.Parent.Numbers.Value = script.Parent.Numbers.Value + 1
  script.Parent.Name = script.Parent.Numbers.Value.." Spell"
 end
end
function b(mouse)
 if player == nil then return end
 if player.Character == nil then return end
 if player.Character:FindFirstChild("Humanoid").Health == 0 then return end
 if enabled == false then return end
 if script.Parent.Numbers.Value == "0" then
  enabled = false
  local rarm = player.Character.Torso:FindFirstChild("Right Shoulder")
  rarm.Parent = nil
  local weld = Instance.new("Weld")
  weld.Parent = player.Character:FindFirstChild("Staff")
  weld.Part0 = player.Character.Torso
  weld.Part1 = player.Character["Right Arm"]
  weld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1.5,0,0)
  if player.Character.Staff:FindFirstChild("Sphere") == nil then
   local effect = Instance.new("Part",player.Character.Staff)
   effect.Name = "Sphere"
   effect.formFactor = "Custom"
   effect.Size = Vector3.new(0,0,0)
   effect.BrickColor = BrickColor.new("Bright violet")
   effect.Locked = true
   effect.BottomSurface = 0
   effect.TopSurface = 0
   effect.CanCollide = false
   effect.Shape = 0
   effect.Transparency = 0.5
   local r = Instance.new("SpecialMesh",effect)
   r.Name = "X"
   r.MeshType = "Sphere"
   local weldb = Instance.new("Weld")
   weldb.Part1 = player.Character.Staff.Handle
   weldb.Part0 = player.Character.Staff:FindFirstChild("Sphere")
   weldb.Parent = player.Character.Staff:FindFirstChild("Sphere")
   weldb.C0 = CFrame.new(0,-1.75,0)
  end
  for i = 1,20 do
   player.Character.Staff:FindFirstChild("Sphere").X.Scale = player.Character.Staff:FindFirstChild("Sphere").X.Scale + Vector3.new(0.025,0.025,0.025)
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-5),math.rad(-1),0) * CFrame.new(0,0,0.05)
   wait()
  end
  local effecter = Instance.new("Part",player.Character.Staff)
  effecter.Name = "SphereEff"
  effecter.formFactor = "Custom"
  effecter.Size = Vector3.new(10,10,10)
  effecter.BrickColor = BrickColor.new("Bright violet")
  effecter.Locked = true
  effecter.BottomSurface = 0
  effecter.TopSurface = 0
  effecter.CanCollide = false
  effecter.Shape = 0
  effecter.Transparency = 1
  effecter.CFrame = mouse.Hit + Vector3.new(0,200,0)
  effecter.Anchored = true
  coroutine.wrap(function()
   for i = 1,50 do
    pcall(function()
     player.Character.Staff.SphereEff.CFrame = player.Character.Staff.SphereEff.CFrame - Vector3.new(0,4,0)
     player.Character.Staff.SphereEff.Transparency = player.Character.Staff.SphereEff.Transparency - 0.01
    end)
    wait()
   end
   for i,v in pairs(players:GetPlayers()) do
    if (v.Character.Torso.Position - effecter.Position).magnitude < 10 and v.Name ~= name then
     for c,e in pairs(v.Character:GetChildren()) do
      if e:IsA("Part") then
       e:BreakJoints()
       e.Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
      end
     end
    end
   end
   player.Character.Staff.SphereEff:Remove()
  end)()
  for i = 1,10 do
   if i == 3 then
    player.Character.Staff:FindFirstChild("Sphere"):Remove()
   end
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10),math.rad(2),0) * CFrame.new(0,0,-0.1)
   wait()
  end
  wait()
  rarm.Parent = player.Character:FindFirstChild("Torso")
  rarm.Part0 = player.Character:FindFirstChild("Torso")
  rarm.Part1 = player.Character:FindFirstChild("Right Arm")
  enabled = true
 elseif script.Parent.Numbers.Value == "1" then
  enabled = false
  local rarm = player.Character.Torso:FindFirstChild("Right Shoulder")
  rarm.Parent = nil
  local weld = Instance.new("Weld")
  weld.Parent = player.Character:FindFirstChild("Staff")
  weld.Part0 = player.Character.Torso
  weld.Part1 = player.Character["Right Arm"]
  weld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1.5,0,0)
  if player.Character.Staff:FindFirstChild("Sphere") == nil then
   local effect = Instance.new("Part",player.Character.Staff)
   effect.Name = "Sphere"
   effect.formFactor = "Custom"
   effect.Size = Vector3.new(0,0,0)
   effect.BrickColor = BrickColor.new("Bright violet")
   effect.Locked = true
   effect.BottomSurface = 0
   effect.TopSurface = 0
   effect.CanCollide = false
   effect.Shape = 0
   effect.Transparency = 0.5
   local r = Instance.new("SpecialMesh",effect)
   r.Name = "X"
   r.MeshType = "Sphere"
   local weldb = Instance.new("Weld")
   weldb.Part1 = player.Character.Staff.Handle
   weldb.Part0 = player.Character.Staff:FindFirstChild("Sphere")
   weldb.Parent = player.Character.Staff:FindFirstChild("Sphere")
   weldb.C0 = CFrame.new(0,-1.75,0)
  end
  for i = 1,20 do
   player.Character.Staff:FindFirstChild("Sphere").X.Scale = player.Character.Staff:FindFirstChild("Sphere").X.Scale + Vector3.new(0.025,0.025,0.025)
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-5),math.rad(-1),0) * CFrame.new(0.01,0,0.05)
   wait()
  end
  local effecter = Instance.new("Part",player.Character.Staff)
  effecter.Name = "SphereEff"
  effecter.formFactor = "Custom"
  effecter.Size = Vector3.new(10,10,10)
  effecter.BrickColor = BrickColor.new("Bright violet")
  effecter.Locked = true
  effecter.BottomSurface = 0
  effecter.TopSurface = 0
  effecter.CanCollide = false
  effecter.Shape = 0
  effecter.Transparency = 0
  effecter.CFrame = mouse.Hit
  effecter.Anchored = true
  coroutine.wrap(function()
    for i,v in pairs(players:GetPlayers()) do
     if (v.Character.Torso.Position - effecter.Position).magnitude < 10 and v.Name ~= name then
      for c,e in pairs(v.Character:GetChildren()) do
       if e:IsA("Part") then
        e:BreakJoints()
        e.Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
       end
      end
     end
    end
   for i = 1,50 do
    pcall(function()
     player.Character.Staff.SphereEff.Transparency = player.Character.Staff.SphereEff.Transparency + 0.01
    end)
    wait()
   end
   wait()
   player.Character.Staff.SphereEff:Remove()
  end)()
  for i = 1,10 do
   if i == 3 then
    player.Character.Staff:FindFirstChild("Sphere"):Remove()
   end
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10),math.rad(2),0) * CFrame.new(-0.01,0,-0.1)
   wait()
  end
  wait()
  rarm.Parent = player.Character:FindFirstChild("Torso")
  rarm.Part0 = player.Character:FindFirstChild("Torso")
  rarm.Part1 = player.Character:FindFirstChild("Right Arm")
  enabled = true
 elseif script.Parent.Numbers.Value == "3" then
  enabled = false
  local rarm = player.Character.Torso:FindFirstChild("Right Shoulder")
  rarm.Parent = nil
  local larm = player.Character.Torso:FindFirstChild("Left Shoulder")
  larm.Parent = nil
  local weld = Instance.new("Weld")
  weld.Parent = player.Character:FindFirstChild("Staff")
  weld.Part0 = player.Character.Torso
  weld.Part1 = player.Character["Right Arm"]
  weld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1.5,0,0)
  local weldl = Instance.new("Weld")
  weldl.Parent = player.Character:FindFirstChild("Staff")
  weldl.Part0 = player.Character.Torso
  weldl.Part1 = player.Character["Left Arm"]
  weldl.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.5,0,0)
  if player.Character.Staff:FindFirstChild("Sphere") == nil then
   local effect = Instance.new("Part",player.Character.Staff)
   effect.Name = "Sphere"
   effect.formFactor = "Custom"
   effect.Size = Vector3.new(0,0,0)
   effect.BrickColor = BrickColor.new("Bright violet")
   effect.Locked = true
   effect.BottomSurface = 0
   effect.TopSurface = 0
   effect.CanCollide = false
   effect.Shape = 0
   effect.Transparency = 0.5
   local r = Instance.new("SpecialMesh",effect)
   r.Name = "X"
   r.MeshType = "Sphere"
   local weldb = Instance.new("Weld")
   weldb.Part1 = player.Character.Staff.Handle
   weldb.Part0 = player.Character.Staff:FindFirstChild("Sphere")
   weldb.Parent = player.Character.Staff:FindFirstChild("Sphere")
   weldb.C0 = CFrame.new(0,-1.75,0)
  end
  for i = 1,20 do
   player.Character.Staff:FindFirstChild("Sphere").X.Scale = player.Character.Staff:FindFirstChild("Sphere").X.Scale + Vector3.new(0.025,0.025,0.025)
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-5),math.rad(-1),0) * CFrame.new(0.01,0,0.05)
   weldl.C1 = weldl.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-5),math.rad(1),0) * CFrame.new(-0.01,0,0.05)
   wait()
  end
  local effecter = Instance.new("Part",player.Character.Staff)
  effecter.Name = "SphereEff"
  effecter.formFactor = "Custom"
  effecter.Size = Vector3.new(10,10,10)
  effecter.BrickColor = BrickColor.new("Bright violet")
  effecter.Locked = true
  effecter.BottomSurface = 0
  effecter.TopSurface = 0
  effecter.CanCollide = false
  effecter.Shape = 0
  effecter.Transparency = 0
  effecter.CFrame = mouse.Hit
  effecter.Anchored = true
  local topx = Instance.new("CylinderMesh",effecter)
  topx.Scale = Vector3.new(1,100,1)
  coroutine.wrap(function()
   for i,v in pairs(players:GetPlayers()) do
    if (v.Character.Torso.Position - effecter.Position).magnitude < 15 then
     pcall(function()
      for c,e in pairs(v.Character:GetChildren()) do
       if e:IsA("Part") then
        local fire = Instance.new("Fire",e)
        fire.Name = "Deadly"
        fire.Heat = 5
        fire.Size = 5
        fire.Color = Color3.new(0.5,0,0.5)
        fire.SecondaryColor = Color3.new(0.2,0,0.2)
       end
      end
      coroutine.wrap(function()
       repeat
        if v.Character:FindFirstChild("Humanoid") ~= nil then
         if v.Character.Humanoid.Health ~= 0 then
          v.Character.Humanoid.Health = v.Character.Humanoid.Health - 2
         end
        end
        wait(0.25)
       until 
        v.Character.Humanoid.Health == 0
      end)()
     end)
    end
   end
   for i = 1,50 do
    pcall(function()
     player.Character.Staff.SphereEff.Transparency = player.Character.Staff.SphereEff.Transparency + 0.01
     player.Character.Staff.SphereEff.Mesh.Scale = player.Character.Staff.SphereEff.Mesh.Scale + Vector3.new(0.05,0,0.05)
    end)
    wait()
   end
   wait()
   player.Character.Staff.SphereEff:Remove()
  end)()
  for i = 1,10 do
   if i == 3 then
    player.Character.Staff:FindFirstChild("Sphere"):Remove()
   end
   weld.C1 = weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10),math.rad(2),0) * CFrame.new(-0.01,0,-0.1)
   weldl.C1 = weldl.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10),math.rad(-2),0) * CFrame.new(0.01,0,0.1)
   wait()
  end
  wait()
  rarm.Parent = player.Character:FindFirstChild("Torso")
  rarm.Part0 = player.Character:FindFirstChild("Torso")
  rarm.Part1 = player.Character:FindFirstChild("Right Arm")
  larm.Parent = player.Character:FindFirstChild("Torso")
  larm.Part0 = player.Character:FindFirstChild("Torso")
  larm.Part1 = player.Character:FindFirstChild("Left Arm")
  enabled = true
 end
end
createtoolstaff()
  
script.Parent.Selected:connect(function(mouse)
 createtoolstaff()
 mouse.KeyDown:connect(function(key) a(key) end)
 mouse.Button1Down:connect(function() b(mouse) end)
end)
script.Parent.Deselected:connect(function()
 if player == nil then return end
 if player.Character == nil then return end
 if player.Character:FindFirstChild("Humanoid").Health == 0 then return end
 if player.Character:FindFirstChild("Staff") ~= nil then
  player.Character:FindFirstChild("Staff"):Remove()
 end
end)
