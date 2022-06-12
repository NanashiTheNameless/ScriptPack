
Player = game.Players.LocalPlayer
Char = Player.Character
Human = Char.Humanoid
mouse = Player:GetMouse()
BModel = Instance.new("Model",Char)
BModel.Name = "Anti-Titan Bottle"
Bottle = Instance.new("Part",BModel)
Bottle.Transparency = 0.7
Bottle.TopSurface = 0
Bottle.BottomSurface = 0
Bottle.FormFactor = 3
Bottle.BrickColor = BrickColor.new("White")
Bottle.Size = Vector3.new(0.8,1.3,0.8)
Blood = Instance.new("Part",BModel)
Blood.Material = "Neon"
Blood.TopSurface = 0
Blood.BottomSurface = 0
Blood.FormFactor = 3
Blood.BrickColor = BrickColor.new("Deep green")
Blood.Size = Vector3.new(0.75,0.7,0.75)
Cork = Instance.new("Part",BModel)
Cork.Material = "Wood"
Cork.TopSurface = 0
Cork.BottomSurface = 0
Cork.FormFactor = 3
Cork.BrickColor = BrickColor.new("CGA brown")
Cork.Size = Vector3.new(0.78,0.24,0.78)
BottleWeld = Instance.new("Weld",Bottle)
BottleWeld.Part0 = Bottle
BottleWeld.Part1 = Blood
BottleWeld.C0 = CFrame.new(0,-0.5,0)
BloodWeld = Instance.new("Weld", Cork)
BloodWeld.Part0 = Bottle
BloodWeld.Part1 = Blood
BloodWeld.C0 = CFrame.new(0,-0.2,0)
CorkWeld = Instance.new("Weld",Bottle)
CorkWeld.Part0 = Cork
CorkWeld.Part1 = Bottle
CorkWeld.C0 = CFrame.new(0,-0.7,0)
RAWeld = Instance.new("Weld",Char.Torso)
RAWeld.Part0 = Bottle
RAWeld.Part1 = Char["Right Arm"]
RAWeld.C0 = CFrame.new(0,-0.15,1.3) *CFrame.Angles(math.rad(90),0,0)
used = false
function GetDistance(Obj,Mag)
 for _,v in pairs(workspace:GetChildren()) do
     if v.ClassName == "Part" and v.Size >= Vector3.new(2,2,2) then
      if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
       local Mag2 = (v.Torso.Position - Obj.Position).magnitude
       if Mag2 < Mag then
        return v
       end
      end
     end
 end
end
function sbexe(cmd, plr)
 if not type(cmd) == 'string' then
  return
 end
 if plr then
  if type(plr) == 'userdata' then
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  elseif type(plr) == 'string' then
   plr = game:GetService('Players'):FindFirstChild(plr)
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 else
  for i, v in pairs(game:GetService('Players'):children()) do
   v:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 end
end
for g,plr in pairs(game.Players:GetPlayers()) do
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Leg2") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Hand") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Model") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Star Platinum") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("FlagLogo") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character.Head:findFirstChild("Hair") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character.Head:findFirstChild("BillboardGui") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Hair") then
plr.Character:BreakJoints()
end
end)
function newscript()
BModel:Destroy()
Player = game.Players.LocalPlayer
Char = Player.Character
Human = Char.Humanoid
mouse = Player:GetMouse()
BModel = Instance.new("Model",Char)
BModel.Name = "Anti-Titan Bottle"
Bottle = Instance.new("Part",BModel)
Bottle.Transparency = 0.7
Bottle.TopSurface = 0
Bottle.BottomSurface = 0
Bottle.FormFactor = 3
Bottle.BrickColor = BrickColor.new("Institutional white")
Bottle.Size = Vector3.new(0.8,1.3,0.8)
Blood = Instance.new("Part",BModel)
Blood.Material = "Neon"
Blood.TopSurface = 0
Blood.BottomSurface = 0
Blood.FormFactor = 3
Blood.BrickColor = BrickColor.new("Deep green")
Blood.Size = Vector3.new(0.75,0.7,0.75)
Cork = Instance.new("Part",BModel)
Cork.Material = "Wood"
Cork.TopSurface = 0
Cork.BottomSurface = 0
Cork.FormFactor = 3
Cork.BrickColor = BrickColor.new("CGA brown")
Cork.Size = Vector3.new(0.78,0.24,0.78)
BottleWeld = Instance.new("Weld",Bottle)
BottleWeld.Part0 = Bottle
BottleWeld.Part1 = Blood
BottleWeld.C0 = CFrame.new(0,-0.5,0)
BloodWeld = Instance.new("Weld", Cork)
BloodWeld.Part0 = Bottle
BloodWeld.Part1 = Blood
BloodWeld.C0 = CFrame.new(0,-0.2,0)
CorkWeld = Instance.new("Weld",Bottle)
CorkWeld.Part0 = Cork
CorkWeld.Part1 = Bottle
CorkWeld.C0 = CFrame.new(0,-0.7,0)
RAWeld = Instance.new("Weld",Char.Torso)
RAWeld.Part0 = Bottle
RAWeld.Part1 = Char["Right Arm"]
RAWeld.C0 = CFrame.new(0,-0.15,1.3) *CFrame.Angles(math.rad(90),0,0)
used = false
function GetDistance(Obj,Mag)
 for _,v in pairs(workspace:GetChildren()) do
     if v.ClassName == "Part" and v.Size >= Vector3.new(2,2,2) then
      if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
       local Mag2 = (v.Torso.Position - Obj.Position).magnitude
       if Mag2 < Mag then
        return v
       end
      end
     end
 end
end
function sbexe(cmd, plr)
 if not type(cmd) == 'string' then
  return
 end
 if plr then
  if type(plr) == 'userdata' then
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  elseif type(plr) == 'string' then
   plr = game:GetService('Players'):FindFirstChild(plr)
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 else
  for i, v in pairs(game:GetService('Players'):children()) do
   v:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 end
end
for g,plr in pairs(game.Players:GetPlayers()) do
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Hand") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)
if plr.Character:findFirstChild("Leg2") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Model") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Star Platinum") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character.Head:findFirstChild("Hair") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character.Head:findFirstChild("BillboardGui") then
plr.Character:BreakJoints()
end
end)
Char = Player.Character
Human = Char.Humanoid
mouse = Player:GetMouse()
BModel = Instance.new("Model",Char)
BModel.Name = "Anti-Titan Bottle"
Bottle = Instance.new("Part",BModel)
Bottle.Transparency = 0.3
Bottle.TopSurface = 0
Bottle.BottomSurface = 0
Bottle.FormFactor = 3
Bottle.BrickColor = BrickColor.new("Institutional white")
Bottle.Size = Vector3.new(0.8,1.3,0.8)
Blood = Instance.new("Part",BModel)
Blood.Material = "Neon"
Blood.TopSurface = 0
Blood.BottomSurface = 0
Blood.FormFactor = 3
Blood.BrickColor = BrickColor.new("Institutional white")
Blood.Size = Vector3.new(0.75,0.7,0.75)
Cork = Instance.new("Part",BModel)
Cork.Material = "Wood"
Cork.TopSurface = 0
Cork.BottomSurface = 0
Cork.FormFactor = 3
Cork.BrickColor = BrickColor.new("CGA brown")
Cork.Size = Vector3.new(0.78,0.24,0.78)
BottleWeld = Instance.new("Weld",Bottle)
BottleWeld.Part0 = Bottle
BottleWeld.Part1 = Blood
BottleWeld.C0 = CFrame.new(0,-0.5,0)
BloodWeld = Instance.new("Weld", Cork)
BloodWeld.Part0 = Bottle
BloodWeld.Part1 = Blood
BloodWeld.C0 = CFrame.new(0,-0.2,0)
CorkWeld = Instance.new("Weld",Bottle)
CorkWeld.Part0 = Cork
CorkWeld.Part1 = Bottle
CorkWeld.C0 = CFrame.new(0,-0.7,0)
RAWeld = Instance.new("Weld",Char.Torso)
RAWeld.Part0 = Bottle
RAWeld.Part1 = Char["Right Arm"]
RAWeld.C0 = CFrame.new(0,-0.15,1.3) *CFrame.Angles(math.rad(90),0,0)
used = false
function GetDistance(Obj,Mag)
 for _,v in pairs(workspace:GetChildren()) do
     if v.ClassName == "Part" and v.Size >= Vector3.new(2,2,2) then
      if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
       local Mag2 = (v.Torso.Position - Obj.Position).magnitude
       if Mag2 < Mag then
        return v
       end
      end
     end
 end
end
function sbexe(cmd, plr)
 if not type(cmd) == 'string' then
  return
 end
 if plr then
  if type(plr) == 'userdata' then
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  elseif type(plr) == 'string' then
   plr = game:GetService('Players'):FindFirstChild(plr)
   plr:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 else
  for i, v in pairs(game:GetService('Players'):children()) do
   v:findFirstChild("SB_CommandRemote", true).Value = cmd
  end
 end
end
for g,plr in pairs(game.Players:GetPlayers()) do
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Leg2") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Model") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character:findFirstChild("Star Platinum") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Hand") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)

if plr.Character.Head:findFirstChild("BillboardGui") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Hair") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
wait(1.5)


if plr.Character:findFirstChild("Model") then
plr.Character:BreakJoints()
end
end)
mouse.Button1Down:connect(function()
    if used == true then return end
    used = true
    RAWeld:remove()
    BV = Instance.new("BodyVelocity",Bottle)
    BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    BV.Velocity = Char.Torso.CFrame.lookVector *100
    BV.Velocity = BV.Velocity +Vector3.new(0,50,0)
    game.Debris:AddItem(BV,0.1)
    wait(1)
    smoke = Instance.new("Smoke",Bottle)
    smoke.Color = Color3.new(1,1,1)
    smoke.Opacity = 0.8
    smoke.Size = 25
    smoke.RiseVelocity = 0
    while true do
        Body = GetDistance(Bottle,25)
        if Body ~= nil then
            if dmoke == nil then
                dmoke = Instance.new("Smoke",Bottle)
                dmoke.Color = Color3.new(1,1,1)
                dmoke.Opacity = 0.8
                dmoke.Size = 25
                dmoke.RiseVelocity = 10
            end
            if Body.Humanoid.MaxHealth >= 200 then
                Body.Humanoid.MaxHealth = Body.Humanoid.MaxHealth -10
            end
        end
        wait()
    end
end)
end
wait(10)
BModel:Destroy()
end
end
mouse.Button1Down:connect(function()
    if used == true then return end
    used = true
    RAWeld:remove()
    BV = Instance.new("BodyVelocity",Bottle)
    BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    BV.Velocity = Char.Torso.CFrame.lookVector *100
    BV.Velocity = BV.Velocity +Vector3.new(0,50,0)
    game.Debris:AddItem(BV,0.1)
    wait(1)
    smoke = Instance.new("Smoke",Bottle)
    smoke.Color = Color3.new(1,1,1)
    smoke.Opacity = 0.8
    smoke.Size = 25
    smoke.RiseVelocity = 0
    while true do
        Body = GetDistance(Bottle,25)
        if Body ~= nil then
            if dmoke == nil then
                dmoke = Instance.new("Smoke",Bottle)
                dmoke.Color = Color3.new(1,1,1)
                dmoke.Opacity = 0.8
                dmoke.Size = 25
                dmoke.RiseVelocity = 10
            end
            if Body.Humanoid.MaxHealth >= 200 then
                Body.Humanoid.MaxHealth = Body.Humanoid.MaxHealth -10
            end
        end
        wait()
    end
end)
end
mouse.KeyDown:connect(function(key)
 if key == 'k' then
 newscript()
end
end)
mouse.Button1Down:connect(function()
    if used == true then return end
    used = true
    RAWeld:remove()
    BV = Instance.new("BodyVelocity",Bottle)
    BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    BV.Velocity = Char.Torso.CFrame.lookVector *100
    BV.Velocity = BV.Velocity +Vector3.new(0,50,0)
    game.Debris:AddItem(BV,0.1)
    wait(1)
    smoke = Instance.new("Smoke",Bottle)
    smoke.Color = Color3.new(1,1,1)
    smoke.Opacity = 0.8
    smoke.Size = 25
    smoke.RiseVelocity = 0
    while true do
        Body = GetDistance(Bottle,25)
        if Body ~= nil then
            if dmoke == nil then
                dmoke = Instance.new("Smoke",Bottle)
                dmoke.Color = Color3.new(1,1,1)
                dmoke.Opacity = 0.8
                dmoke.Size = 25
                dmoke.RiseVelocity = 10
            end
            if Body.Humanoid.MaxHealth >= 200 then
                Body.Humanoid.MaxHealth = Body.Humanoid.MaxHealth -10
            end
        end
        wait()
    end
end)
