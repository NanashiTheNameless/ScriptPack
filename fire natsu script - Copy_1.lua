--------BY DJBOY---------

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local COLOR = Instance.new("BrickColorValue",Player.Character)
MODE = Instance.new("IntValue",Player.Character)
local COLOR2 = Instance.new("BrickColorValue",Player.Character)
MODE.Name = "Mode"
Mode = Player.Character:FindFirstChild("Mode")
COLOR.Name = "FlameColor"
COLOR.Value = BrickColor.new("Really red")
COLOR2.Name = "FlameColor2"
COLOR2.Value = BrickColor.new("Really red")
Player.Character.Humanoid.Name = "FireDS"

----removes clothes--
        for i,v in pairs(Player.Character:GetChildren()) do
                if v:IsA("Shirt") or  v:IsA("Pants") or v:IsA("Hat") then
                v:remove()
wait()
                end
        end
---------
-----clothes----
function Clothes()
Shir = Instance.new("Shirt")
Shir.Parent = Player.Character
Shir.Name = "Natsu_Top"
Shir.ShirtTemplate = "http://www.roblox.com/asset/?id=95777995"
----pants---
Pan = Instance.new("Pants")
Pan.Name = "Natsu_Bottom"
Pan.Parent = Player.Character
Pan.PantsTemplate = "http://www.roblox.com/asset/?id=95779442"

                Player.Character["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
                Player.Character["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
                Player.Character["Body Colors"].LeftLegColor = BrickColor.new("Pastel brown")
                Player.Character["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
                Player.Character["Body Colors"].RightLegColor = BrickColor.new("Pastel brown")
                Player.Character["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
end
function Hats()
                Hat = Instance.new("Part")
                Hat.Size = Vector3.new(1,1,1)
                Hat.Anchored = false
                Hat.CanCollide = false
                Hat.Name = "Hair"
                Hat.Shape = "Block"
                Hat.Parent = Player.Character
                Hat.BrickColor = BrickColor.new("Cool yellow")
                Mesh = Instance.new("SpecialMesh")
                Mesh.Parent = Hat
                Mesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
                Mesh.TextureId = "http://www.roblox.com/asset/?id=83907488"
                Mesh.MeshType = "FileMesh"
                Mesh.Scale = Vector3.new(1,1,1)
                Weld = Instance.new("Weld")
                Weld.Parent = Player.Character.Head
                Weld.Part0 = Player.Character.Head
                Weld.Part1 = Hat
                Weld.C1 = CFrame.new(0,-0.5,0.01)*CFrame.fromEulerAnglesXYZ(0,0,0)
-------------------------------Scarf----------------------------------------
                Hat2 = Instance.new("Part")
                Hat2.Size = Vector3.new(1,1,1)
                Hat2.Anchored = false
                Hat2.CanCollide = false
                Hat2.Shape = "Block"
                Hat2.Name = "Scarf"
                Hat2.Parent = Player.Character
                Hat2.BrickColor = BrickColor.new("Cool yellow")
                Mesh2 = Instance.new("SpecialMesh")
                Mesh2.Parent = Hat2
                Mesh2.MeshId = "http://www.roblox.com/asset/?id=57780106"
                Mesh2.TextureId = "http://www.roblox.com/asset/?id=97489466"
                Mesh2.MeshType = "FileMesh"
                Mesh2.Scale = Vector3.new(1.1,1.1,1.1)
                Weld = Instance.new("Weld")
                Weld.Parent = Player.Character.Head
                Weld.Part0 = Player.Character.Head
                Weld.Part1 = Hat2
                Weld.C1 = CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
end
Clothes()
Hats()
----------------FIRE ROAR-----------
enabled = true
function onKeyDown(key)
if not enabled then return end
enabled = false
        Key = key:lower()
if key == "r" then
                  game:GetService("Chat"):Chat(Player.Character.Head, "FIRE ROAR")
        print("YO")
        
                local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/Asset?ID=163799047"
local animTrack = Player.Character:FindFirstChild("FireDS"):LoadAnimation(animation)
animTrack:Play()

  c = Instance.new("Part")
  c.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
Decal1 = Instance.new("Decal",c)
Decal1.Texture = "http://www.roblox.com/asset/?id=121028264"
Decal1.Face = "Back"
Decal2 = Instance.new("Decal",c)
Decal2.Texture = "http://www.roblox.com/asset/?id=121028264"
Decal2.Face = "Front"
  c.Size = Vector3.new(0,0,0)
  c.TopSurface = "Smooth"
  c.BottomSurface = "Smooth"
  c.Shape = "Block"
  c.Name = "MagicBrick"
  c.CanCollide = false
  c.Transparency = 1
  c.Anchored = true
  c.Parent = Player.Character
  game.Debris:AddItem(c,3)
  c.CFrame = Player.Character.Head.CFrame*CFrame.new(0, 0, -1.8)
for i = 1,6 do
        c.Size = Vector3.new(i,i,0)
        wait(0.1)
end                
                  v = Instance.new("Part")
  v.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  v.Size = Vector3.new(0,0,0)
  v.TopSurface = "Smooth"
  v.BottomSurface = "Smooth"
  v.Shape = "Block"
  v.Name = "MagicBrick"
  v.CanCollide = false
  v.Transparency = 1
  v.Anchored = true
  v.Parent = Player.Character
  game.Debris:AddItem(v,4)
  v.CFrame = Player.Character.Head.CFrame*CFrame.new(0, 0, -1.2)
for i = 1,45 do
                          z = Instance.new("Part")
                        
  z.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  z.Size = Vector3.new(i,i,i)
  z.TopSurface = "Smooth"
  z.BottomSurface = "Smooth"
  z.Shape = "Block"
  z.Name = "MagicBrick"
  z.CanCollide = false
  z.Transparency = 0.4
  z.Anchored = true
  z.Parent = Player.Character
  game.Debris:AddItem(z,0.5)
  z.CFrame = v.CFrame*CFrame.new(0, 0, -1.2-i*2)*CFrame.fromEulerAnglesXYZ(math.random(1,9),math.random(1,9),math.random(1,9))

function Hit(Part)
for i,v in pairs(Part.Parent:GetChildren()) do
                if v.ClassName == "Humanoid" and Part.Parent.Name ~= Player.Name then
                        v.Health = v.Health - 10
                        Ex = Instance.new("Explosion",Part)
                        Ex.BlastPressure = 1
                        Ex.Position = Part.Position
                        Ex.BlastRadius = 1
                        end
                end
        end
        z.Touched:connect(Hit)

wait(0.01)
end
        end
        enabled = true
        end
Mouse.KeyDown:connect(onKeyDown)

--start of mode--
enabledz = true
function onKeyDownz(key)
if not enabledz then return end
enabledz = false
        Key = key:lower()
if key == "b" and Mode.Value == 0 then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire God Slayer Mode!")
Mode.Value = 1
print("Mode 1")
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("Really black")
Player.Character:FindFirstChild("FlameColor2").Value = BrickColor.new("Bright red")
Force = Instance.new("ForceField",Player.Character)
for i = 1,500 do
Player.Character:FindFirstChild("FireDS").MaxHealth = math.huge
Player.Character:FindFirstChild("FireDS").WalkSpeed = 100

          h = Instance.new("Part")
  h.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
  h.Size = Vector3.new(2,2,2)
  h.TopSurface = "Smooth"
  h.BottomSurface = "Smooth"
  h.Shape = "Block"
  h.Name = "MagicBrick"
  h.CanCollide = false
  h.Transparency = 0.6
  h.Anchored = false
  h.Parent = Player.Character
  Weld = Instance.new("Weld")
  Weld.Parent = Player.Character:FindFirstChild("Left Arm")
  Weld.Part0 = Player.Character:FindFirstChild("Left Arm")
  Weld.Part1 = h
  Weld.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(h,0.1)
  
 lo = Instance.new("Part")
  lo.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
  lo.Size = Vector3.new(2,2,2)
  lo.TopSurface = "Smooth"
  lo.BottomSurface = "Smooth"
  lo.Shape = "Block"
  lo.Name = "MagicBrick"
  lo.CanCollide = false
  lo.Transparency = 0.6
  lo.Anchored = false
  lo.Parent = Player.Character
  lo.CFrame = h.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lo,0.1)








  
    b = Instance.new("Part")
  b.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  b.Size = Vector3.new(2,2,2)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.Shape = "Block"
  b.Name = "MagicBrick"
  b.CanCollide = false
  b.Transparency = 0.6
  b.Anchored = false
  b.Parent = Player.Character
  Weld2 = Instance.new("Weld")
  Weld2.Parent = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part0 = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part1 = b
  Weld2.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(b,0.1)

 as = Instance.new("Part")
  as.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  as.Size = Vector3.new(2,2,2)
  as.TopSurface = "Smooth"
  as.BottomSurface = "Smooth"
  as.Shape = "Block"
  as.Name = "MagicBrick"
  as.CanCollide = false
  as.Transparency = 0.6
  as.Anchored = false
  as.Parent = Player.Character
  as.CFrame = b.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(as,0.1)
  
  wait(0.01)
  end
  Player.Character:FindFirstChild("FireDS").MaxHealth = 100
Player.Character:FindFirstChild("FireDS").WalkSpeed = 20
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("Bright red")
        Mode.Value = 0
        Force:remove()
end
        enabledz = true
        end
Mouse.KeyDown:connect(onKeyDownz)
----end of mode---
----START OF FIRE THROW----------
Right = Player.Character.Torso["Right Shoulder"]
enabledzz = true
function onKeyDownzz(key)
if not enabledzz then return end
enabledzz = false
        Key = key:lower()
if key == "v" then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire throw")
        for i = 1,6 do
        Right.C0 = Right.C0*CFrame.Angles(0,0,.26)
        wait(0.1)
        end
          l = Instance.new("Part")
          
  l.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  l.Size = Vector3.new(5,5,5)
  l.TopSurface = "Smooth"
  l.BottomSurface = "Smooth"
  l.Shape = "Ball"
  l.Name = "MagicBrick"
  l.CanCollide = false
  l.Transparency = 0.98
  l.Anchored = false
  l.Parent = Player.Character
  game.Debris:AddItem(l,7)
  l.CFrame = Player.Character:FindFirstChild("Right Arm").CFrame
  y = Instance.new("BodyVelocity")
  y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  y.velocity = Player.Character.Head.CFrame.lookVector*100
  y.Parent = l

 function Hit(Part)
 Enab = true
                for i,v in pairs(Part.Parent:GetChildren()) do
                if v.ClassName == "Humanoid" and Part.Parent.Name ~= Player.Name and Enab == true then
                                                                game.Debris:AddItem(l,0.0000000001)
                Enab = false
                        v.Health = v.Health - 40
                         a = Instance.new("Part")
  a.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  a.Size = Vector3.new(i,i,i)
  a.TopSurface = "Smooth"
  a.BottomSurface = "Smooth"
  a.Shape = "Ball"
  a.Name = "MagicBrick"
  a.CanCollide = false
  a.Transparency = i/40
  a.Anchored = false
  a.Parent = Part.Parent
  game.Debris:AddItem(a,0.4)
  a.CFrame = Part.CFrame
end
                end
end
        l.Touched:connect(Hit)
for i = 1,6 do
        Right.C0 = Right.C0*CFrame.Angles(0,0,-.26)
        wait(0.1)
        end
for i = 1,100 do
    b = Instance.new("Part")
  b.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  b.Size = Vector3.new(2,2,2)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.Shape = "Block"
  b.Name = "MagicBrick"
  b.CanCollide = false
  b.Transparency = 0.6
  b.Anchored = false
  b.Parent = Player.Character
  b.CFrame = l.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(b,0.1)
  
  wait(0.01)
  end
        
        
 game.Debris:AddItem(h,4)
end
        enabledzz = true
        end
Mouse.KeyDown:connect(onKeyDownzz)
----END OF FIRE THROW------

--START OF FIRE TRAIL----
enabledzzz = true
function onKeyDownzzz(key)
if not enabledzzz then return end
enabledzzz = false
        Key = key:lower()
if key == "f" then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire trail")
         Player.Character:FindFirstChild("FireDS").WalkSpeed = 150
for i = 1,150 do
        le = Instance.new("Part")
   le.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  le.Size = Vector3.new(2,2,2)
  le.TopSurface = "Smooth"
  le.BottomSurface = "Smooth"
  le.Shape = "Block"
  le.Name = "MagicBrick"
  le.CanCollide = false
  le.Transparency = 0.5
  le.Anchored = true
  le.Parent = Player.Character
  game.Debris:AddItem(l,7)
  le.CFrame = Player.Character:FindFirstChild("Torso").CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(le,2)

   function Hit(Part)
                for i,v in pairs(Part.Parent:GetChildren()) do
                if v.ClassName == "Humanoid" and Part.Parent.Name ~= Player.Name then
                        v.Health = v.Health - 100
                                                game.Debris:AddItem(le,0.1)
                                                end
end
end
        le.Touched:connect(Hit)
                 Player.Character:FindFirstChild("FireDS").WalkSpeed = 50
  wait(0.01)
  end
        
        
end
        enabledzzz = true
        end
Mouse.KeyDown:connect(onKeyDownzzz)
--end of fire trail---
---DONT REMOVE PLEASE, Least you could do is leave credit---
Gu = Instance.new("SurfaceGui",Player.Character:FindFirstChild("Left Arm"))
Gu.Face = "Left"
Cre = Instance.new("TextButton",Gu)
Cre.BackgroundTransparency = 1
Cre.BorderSizePixel = 0
Cre.Position = UDim2.new(0, -80,0, 0)
Cre.Rotation = 90
Cre.Size = UDim2.new(0, 400,0, 800)
Cre.Font = "Legacy"
Cre.FontSize = "Size48"
Cre.Text = "By: Djboy"
Cre.TextScaled = true
Cre.TextStrokeTransparency = 0
------------------------
---Start of fire teleport---
enabledc = true
function onKeyDownc(key)
if not enabledc then return end
enabledc = false
        Key = key:lower()
if key == "t" then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire teleport")
Targ = CFrame.new(Vector3.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
print("Tped")
for i = 1, 50 do
loz = Instance.new("Part")
  loz.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  loz.Size = Vector3.new(2,2,2)
  loz.TopSurface = "Smooth"
  loz.BottomSurface = "Smooth"
  loz.Shape = "Block"
  loz.Name = "MagicBrick"
  loz.CanCollide = false
  loz.Transparency = 0.5
  loz.Anchored = false
  loz.Parent = Player.Character
  loz.CFrame = Player.Character.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(loz,0.1)
  
  lox = Instance.new("Part")
  lox.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lox.Size = Vector3.new(2,2,2)
  lox.TopSurface = "Smooth"
  lox.BottomSurface = "Smooth"
  lox.Shape = "Block"
  lox.Name = "MagicBrick"
  lox.CanCollide = false
  lox.Transparency = 0.5
  lox.Anchored = false
  lox.Parent = Player.Character
  lox.CFrame = Player.Character.Head.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lox,0.1)
  
  lov = Instance.new("Part")
  lov.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lov.Size = Vector3.new(2,2,2)
  lov.TopSurface = "Smooth"
  lov.BottomSurface = "Smooth"
  lov.Shape = "Block"
  lov.Name = "MagicBrick"
  lov.CanCollide = false
  lov.Transparency = 0.5
  lov.Anchored = false
  lov.Parent = Player.Character
  lov.CFrame = Player.Character["Left Arm"].CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lov,0.1)
  
  lon = Instance.new("Part")
  lon.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lon.Size = Vector3.new(2,2,2)
  lon.TopSurface = "Smooth"
  lon.BottomSurface = "Smooth"
  lon.Shape = "Block"
  lon.Name = "MagicBrick"
  lon.CanCollide = false
  lon.Transparency = 0.5
  lon.Anchored = false
  lon.Parent = Player.Character
  lon.CFrame = Player.Character["Right Arm"].CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lon,0.1)  
  
  lof = Instance.new("Part")
  lof.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lof.Size = Vector3.new(2,2,2)
  lof.TopSurface = "Smooth"
  lof.BottomSurface = "Smooth"
  lof.Shape = "Block"
  lof.Name = "MagicBrick"
  lof.CanCollide = false
  lof.Transparency = 0.5
  lof.Anchored = false
  lof.Parent = Player.Character
  lof.CFrame = Player.Character["Left Leg"].CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lof,0.1)  
  
  lor = Instance.new("Part")
  lor.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lor.Size = Vector3.new(2,2,2)
  lor.TopSurface = "Smooth"
  lor.BottomSurface = "Smooth"
  lor.Shape = "Block"
  lor.Name = "MagicBrick"
  lor.CanCollide = false
  lor.Transparency = 0.5
  lor.Anchored = false
  lor.Parent = Player.Character
  lor.CFrame = Player.Character["Right Leg"].CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lor,0.1)   
  wait(0.001)
end
Player.Character.Torso.CFrame = Targ
end
        enabledc = true
        end
Mouse.KeyDown:connect(onKeyDownc)
---end of fire---
-- start of special attack--
enabledcc = true
function onKeyDowncc(key)
if not enabledcc then return end
enabledcc = false
        Key = key:lower()
if key == "g" and Mode.Value == 1 then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire god slayer special move")
Targ = CFrame.new(Vector3.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
 lez = Instance.new("Part")  
  lez.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lez.Size = Vector3.new(50,35,50)
  Mesh = Instance.new("SpecialMesh",lez)
  Mesh.MeshType = "FileMesh"
  Mesh.MeshId = "http://www.roblox.com/asset/?id=112601269"
  Mesh.Scale = Vector3.new(20,20,20)
  lez.TopSurface = "Smooth"
  lez.BottomSurface = "Smooth"
  lez.Shape = "Ball"
  lez.Name = "MagicBrick"
  lez.CanCollide = false
  lez.Transparency = 0
  lez.Anchored = false
  lez.Parent = Player.Character
  lez.CFrame = Player.Character:FindFirstChild("Torso").CFrame
  y = Instance.new("BodyVelocity")
  y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  y.velocity = Player.Character.Head.CFrame.lookVector*120
  y.Parent = lez
  
  
for i = 1, 100 do
        loy = Instance.new("Part")
  loy.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  loy.Size = Vector3.new(20,20,20)
  loy.TopSurface = "Smooth"
  loy.BottomSurface = "Smooth"
  loy.Shape = "Block"
  loy.Name = "MagicBrick"
  loy.CanCollide = false
  loy.Transparency = 0.5
  loy.Anchored = false
  loy.Parent = Player.Character
  loy.CFrame = lez.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(loy,0.1)
  
  function Hit(Part)
                for i,v in pairs(Part.Parent:GetChildren()) do
                if v.ClassName == "Humanoid" and Part.Parent.Name ~= Player.Name then
                        v.Health = v.Health - 1000000000000
                                                end
end
end
        loy.Touched:connect(Hit)
  
  wait(0.01)
end
game.Debris:AddItem(lez,1)
end
        enabledcc = true
        end
Mouse.KeyDown:connect(onKeyDowncc)
-----end of special attack--
------Golden Fire---------
enabledz = true
function onKeyDownz(key)
if not enabledz then return end
enabledz = false
        Key = key:lower()
if key == "n" and Mode.Value == 0 then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Golden Fire Slayer Mode!")
                  Force = Instance.new("ForceField",Player.Character)
Mode.Value = 2
print("Mode 2")
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("New Yeller")
Player.Character:FindFirstChild("FlameColor2").Value = BrickColor.new("New Yeller")
for i = 1,500 do
Player.Character:FindFirstChild("FireDS").MaxHealth = math.huge
Player.Character:FindFirstChild("FireDS").WalkSpeed = 100

          h = Instance.new("Part")
  h.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  h.Size = Vector3.new(2,2,2)
  h.TopSurface = "Smooth"
  h.BottomSurface = "Smooth"
  h.Shape = "Block"
  h.Name = "MagicBrick"
  h.CanCollide = false
  h.Transparency = 0.6
  h.Anchored = false
  h.Reflectance = 0.5
  h.Parent = Player.Character
  Weld = Instance.new("Weld")
  Weld.Parent = Player.Character:FindFirstChild("Left Arm")
  Weld.Part0 = Player.Character:FindFirstChild("Left Arm")
  Weld.Part1 = h
  Weld.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(h,0.1)
  
 lo = Instance.new("Part")
  lo.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lo.Size = Vector3.new(2,2,2)
  lo.TopSurface = "Smooth"
  lo.BottomSurface = "Smooth"
  lo.Shape = "Block"
  lo.Name = "MagicBrick"
  lo.CanCollide = false
  lo.Reflectance = 0.5
  lo.Transparency = 0.6
  lo.Anchored = false
  lo.Parent = Player.Character
  lo.CFrame = h.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lo,0.1)








  
    b = Instance.new("Part")
  b.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  b.Size = Vector3.new(2,2,2)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.Shape = "Block"
  b.Name = "MagicBrick"
  b.CanCollide = false
  b.Transparency = 0.6
  b.Reflectance = 0.5
  b.Anchored = false
  b.Parent = Player.Character
  Weld2 = Instance.new("Weld")
  Weld2.Parent = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part0 = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part1 = b
  Weld2.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(b,0.1)

 as = Instance.new("Part")
  as.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  as.Size = Vector3.new(2,2,2)
  as.TopSurface = "Smooth"
  as.BottomSurface = "Smooth"
  as.Shape = "Block"
  as.Name = "MagicBrick"
  as.Reflectance = 0.5
  as.CanCollide = false
  as.Transparency = 0.6
  as.Anchored = false
  as.Parent = Player.Character
  as.CFrame = b.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(as,0.1)
  
  wait(0.01)
  end
  Player.Character:FindFirstChild("FireDS").MaxHealth = 100
Player.Character:FindFirstChild("FireDS").WalkSpeed = 20
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("Bright red")
        Mode.Value = 0
        Force:remove()
end
        enabledz = true
        end
Mouse.KeyDown:connect(onKeyDownz)
-----END OF GOLDEN FIRE
------Golden fire special move
Right = Player.Character.Torso["Right Shoulder"]
enabledzxzz = true
function onKeyDownzxzz(key)
if not enabledzxzz then return end
enabledzxzz = false
        Key = key:lower()
if key == "g" and Mode.Value == 2 then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Golden Fire Dragon Slayer Fire Throw")
        for i = 1,6 do
        Right.C0 = Right.C0*CFrame.Angles(0,0,.26)
        wait(0.1)
        end
          lac = Instance.new("Part")
          
  lac.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lac.Size = Vector3.new(50,50,50)
  lac.TopSurface = "Smooth"
  lac.BottomSurface = "Smooth"
  lac.Shape = "Ball"
  lac.Name = "MagicBrick"
  Meshz=Instance.new("SpecialMesh",lac)
  Meshz.MeshType = "FileMesh"
  Meshz.MeshId = "http://www.roblox.com/asset/?id=24478215"
  Meshz.Scale = Vector3.new(50,50,80)
  lac.CanCollide = false
  lac.Transparency = 0.4
  lac.Reflectance = 0.5
  lac.Anchored = false
  lac.Parent = Player.Character
  game.Debris:AddItem(lac,7)
  lac.CFrame = Player.Character:FindFirstChild("Right Arm").CFrame*CFrame.fromEulerAnglesXYZ(-1.5,0,0)*CFrame.new(0,0,-40)
  y = Instance.new("BodyVelocity")
  y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  y.velocity = Player.Character.Head.CFrame.lookVector*200
  y.Parent = lac

 function Hit(Part)
 Enab = true
                for i,v in pairs(Part.Parent:GetChildren()) do
                if v.ClassName == "Humanoid" and Part.Parent.Name ~= Player.Name and Enab == true then
                                                                game.Debris:AddItem(lac,0.0000000001)
                Enab = false
                        v.Health = v.Health - 70
                         a = Instance.new("Part")
  a.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  a.Size = Vector3.new(i,i,i)
  a.TopSurface = "Smooth"
  a.BottomSurface = "Smooth"
  a.Shape = "Ball"
  a.Name = "MagicBrick"
  a.CanCollide = false
  a.Transparency = i/40
  a.Anchored = false
  a.Parent = Part.Parent
  game.Debris:AddItem(av,0.4)
  a.CFrame = Part.CFrame
end
                end
end
        lac.Touched:connect(Hit)
for i = 1,6 do
        Right.C0 = Right.C0*CFrame.Angles(0,0,-.26)
        wait(0.1)
        end
for i = 1,100 do
    bz = Instance.new("Part")
  bz.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  bz.Size = Vector3.new(80,80,80)
  bz.TopSurface = "Smooth"
  bz.BottomSurface = "Smooth"
  bz.Shape = "Block"
  bz.Name = "MagicBrick"
  bz.CanCollide = false
  bz.Transparency = 0.6
  bz.Reflectance = 0.4
  bz.Anchored = false
  bz.Parent = Player.Character
  bz.CFrame =lac.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(bz,0.1)
  
  wait(0.01)
  end
        
        
 game.Debris:AddItem(h,4)
end
        enabledzxzz = true
        end
Mouse.KeyDown:connect(onKeyDownzxzz)
----End of golden fire special move
----Lighting fire dragon slayer--
enabledz = true
function onKeyDownz(key)
if not enabledz then return end
enabledz = false
        Key = key:lower()
if key == "m" and Mode.Value == 0 then
                  game:GetService("Chat"):Chat(Player.Character.Head, "Fire Lightning dragon Slayer!")
Mode.Value = 3
print("Mode 3")
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("Bright red")
Player.Character:FindFirstChild("FlameColor2").Value = BrickColor.new("New Yeller")
Force = Instance.new("ForceField",Player.Character)
for i = 1,500 do
Player.Character:FindFirstChild("FireDS").MaxHealth = math.huge
Player.Character:FindFirstChild("FireDS").WalkSpeed = 100

          h = Instance.new("Part")
  h.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  h.Size = Vector3.new(2,2,2)
  h.TopSurface = "Smooth"
  h.BottomSurface = "Smooth"
  h.Shape = "Block"
  h.Name = "MagicBrick"
  h.CanCollide = false
  h.Transparency = 0.6
  h.Anchored = false
  h.Parent = Player.Character
  Weld = Instance.new("Weld")
  Weld.Parent = Player.Character:FindFirstChild("Left Arm")
  Weld.Part0 = Player.Character:FindFirstChild("Left Arm")
  Weld.Part1 = h
  Weld.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(h,0.1)
  
 lo = Instance.new("Part")
  lo.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  lo.Size = Vector3.new(2,2,2)
  lo.TopSurface = "Smooth"
  lo.BottomSurface = "Smooth"
  lo.Shape = "Block"
  lo.Name = "MagicBrick"
  lo.CanCollide = false
  lo.Transparency = 0.6
  lo.Anchored = false
  lo.Parent = Player.Character
  lo.CFrame = h.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(lo,0.1)








  
    b = Instance.new("Part")
  b.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  b.Size = Vector3.new(2,2,2)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.Shape = "Block"
  b.Name = "MagicBrick"
  b.CanCollide = false
  b.Transparency = 0.6
  b.Anchored = false
  b.Parent = Player.Character
  Weld2 = Instance.new("Weld")
  Weld2.Parent = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part0 = Player.Character:FindFirstChild("Right Arm")
  Weld2.Part1 = b
  Weld2.C1 = CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))*CFrame.new(0,1.2,0)
  game.Debris:AddItem(b,0.1)

 as = Instance.new("Part")
  as.BrickColor = Player.Character:FindFirstChild("FlameColor").Value
  as.Size = Vector3.new(2,2,2)
  as.TopSurface = "Smooth"
  as.BottomSurface = "Smooth"
  as.Shape = "Block"
  as.Name = "MagicBrick"
  as.CanCollide = false
  as.Transparency = 0.6
  as.Anchored = false
  as.Parent = Player.Character
  as.CFrame = b.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
  game.Debris:AddItem(as,0.1)
  --------LIGHTNING---------
                zed = Instance.new("Part")
        zed.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
  zed.Size = Vector3.new(1,1,1)
Mesh2 = Instance.new("SpecialMesh",zed)
Mesh2.MeshId = "http://www.roblox.com/asset/?id=1271547"
Mesh2.MeshType = "FileMesh"
  zed.TopSurface = "Smooth"
  zed.BottomSurface = "Smooth"
  zed.Shape = "Block"
  zed.Name = "MagicBrick"
  zed.CanCollide = false
  zed.Reflectance = 0.6
Mesh2.Scale = Vector3.new(math.random(0.1,1.5),math.random(0.1,1.5),math.random(0.1,1.5))
  zed.Transparency = 0.6
  zed.Anchored = true
  zed.Parent = Player.Character
  zed.CFrame = Player.Character["Right Arm"].CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-2.5,2.5),math.random(-2.5,2.5))*CFrame.fromEulerAnglesXYZ(math.random(-1,1),math.random(-1,1),math.random(-1,1))
game.Debris:AddItem(zed,0.1)

                zedz = Instance.new("Part")
        zedz.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
  zedz.Size = Vector3.new(1,1,1)
Mesh3 = Instance.new("SpecialMesh",zedz)
Mesh3.MeshId = "http://www.roblox.com/asset/?id=1271547"
Mesh3.MeshType = "FileMesh"
  zedz.TopSurface = "Smooth"
  zedz.BottomSurface = "Smooth"
  zedz.Shape = "Block"
  zedz.Name = "MagicBrick"
  zedz.CanCollide = false
  zedz.Reflectance = 0.6
Mesh3.Scale = Vector3.new(math.random(0.1,1.5),math.random(0.1,1.5),math.random(0.1,1.5))
  zedz.Transparency = 0.6
  zedz.Anchored = true
  zedz.Parent = Player.Character
  zedz.CFrame = Player.Character["Left Arm"].CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-2.5,2.5),math.random(-2.5,2.5))*CFrame.fromEulerAnglesXYZ(math.random(-1,1),math.random(-1,1),math.random(-1,1))
game.Debris:AddItem(zedz,0.1)

  wait(0.01)
  end
  Player.Character:FindFirstChild("FireDS").MaxHealth = 100
Player.Character:FindFirstChild("FireDS").WalkSpeed = 20
Player.Character:FindFirstChild("FlameColor").Value = BrickColor.new("Bright red")
        Mode.Value = 0
        Force:remove()
end
        enabledz = true
        end
Mouse.KeyDown:connect(onKeyDownz)
----lightning fire dragon slayer end--
----Lighting ultiamte attack----

enabledb = true
xx = Instance.new("Part")
function onKeyDownb(key)
if not enabledb then return end
Key = key:lower()
if key == "g" and Mode.Value == 3 then
        if Mouse.Target ~= nil then
                for i,v in pairs(Mouse.Target.Parent:GetChildren()) do
                 if v:IsA("Humanoid") then 
                enabledb = false
game:GetService("Chat"):Chat(Player.Character.Head, "Ult")
Targ = Mouse.Target
xx.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
xx.Size = Vector3.new(1,1,1)
xx.TopSurface = "Smooth"
xx.BottomSurface = "Smooth"
xx.Shape = "Block"
xx.Name = "Main"
xx.CanCollide = false
xx.Transparency =0
xx.Anchored = false
xx.Parent = Player.Character
xx.CFrame = Player.Character["Left Arm"].CFrame*CFrame.new(0, -1, 0)
Rock = Instance.new("RocketPropulsion")
Rock.Parent = xx
Rock.ThrustP = 10000
Rock.Target = Targ.Parent:FindFirstChild("Torso")
Rock.TurnP = 10000
Rock.TargetRadius = 5
Rock.MaxSpeed = 170
Rock.CartoonFactor = 1
Rock:Fire()
print(Targ)
function Boom()
for i,v in pairs(Targ.Parent:GetChildren()) do
if v.Name == "Torso" and v.ClassName == "Part" then
v:remove()
game.Debris:AddItem(xx,1)
end
end
end
Rock.ReachedTarget:connect(Boom)
for i = 1,350 do
bx = Instance.new("Part")
bx.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
bx.Size = Vector3.new(4,4,4)
bx.TopSurface = "Smooth"
bx.BottomSurface = "Smooth"
bx.Shape = "Block"
bx.Name = "MagicBrick"
bx.CanCollide = false
bx.Transparency = 0.6
bx.Anchored = false
bx.Parent = Player.Character
bx.CFrame = xx.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,7),math.random(1,7),math.random(1,7))
game.Debris:AddItem(bx,0.1)

        zedd = Instance.new("Part")
        zedd.BrickColor = Player.Character:FindFirstChild("FlameColor2").Value
  zedd.Size = Vector3.new(1,1,1)
Mesh2 = Instance.new("SpecialMesh",zedd)
Mesh2.MeshId = "http://www.roblox.com/asset/?id=1271547"
Mesh2.MeshType = "FileMesh"
  zedd.TopSurface = "Smooth"
  zedd.BottomSurface = "Smooth"
  zedd.Shape = "Block"
  zedd.Name = "MagicBrick"
  zedd.CanCollide = false
  zedd.Reflectance = 0.6
Mesh2.Scale = Vector3.new(math.random(0.1,1.5),math.random(0.1,1.5),math.random(0.1,1.5))
  zedd.Transparency = 0.6
  zedd.Anchored = true
  zedd.Parent = Player.Character
  zedd.CFrame = xx.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-2.5,2.5),math.random(-2.5,2.5))*CFrame.fromEulerAnglesXYZ(math.random(-1,1),math.random(-1,1),math.random(-1,1))
game.Debris:AddItem(zedd,0.1)
wait(0.0001)
end        
game.Debris:AddItem(xx,0.1)
enabledb = true
end
        end
end
end
end
Mouse.KeyDown:connect(onKeyDownb)
-----END OF ULTIMATE ATTACK-----


