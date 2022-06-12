local player = game:GetService("Players").LocalPlayer
repeat
  wait()
until player.Character
local char = player.Character
local torso = char:WaitForChild("Torso")
local mouse = player:GetMouse()
local color = BrickColor.new("Really black")
local material = "Neon"
local trans = 0.5
local debounce = false

blast = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 3)
  b.Size = Vector3.new(5, 5, 5)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.BrickColor = color
  b.Transparency = 0.6
  b.Material = material
  local v = Instance.new("BodyVelocity", b)
  v.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  v.Velocity = torso.CFrame.lookVector * 50
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(25, 25, 25)
  b.Touched:connect(function(hit)
    
  p = hit.Parent
    if p and p:FindFirstChild("Humanoid") and p.Name ~= player.Name then
      p.Humanoid:TakeDamage(2)
    end
  end
)
end


blast2 = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 3)
  b.Size = Vector3.new(2, 2, 2)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.BrickColor=BrickColor.new("Really red")
  b.Transparency = 0.2
  b.Material = material
  local v = Instance.new("BodyVelocity", b)
  v.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  v.Velocity = torso.CFrame.lookVector * 50
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(25, 25, 25)
  b.Touched:connect(function(hit)
    
  p = hit.Parent
    if p and p:FindFirstChild("Humanoid") and p.Name ~= player.Name then
      p.Humanoid:TakeDamage(2)
    end
  end
)
end

wall = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 7)
  b.Size = Vector3.new(1, 1, 1)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.Anchored = true
  b.BrickColor = color
  b.Transparency = trans
  b.Material = material
  for i = 1, 50 do
    wait()
    b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
    b.Size = b.Size + Vector3.new(0.5, 0.5, 0)
  end
  b.CanCollide = true
  b.Touched:connect(function(hit)
    
    p = hit.Parent
    if p and p:FindFirstChild("Humanoid") and p.Name ~= player.Name then
      p.Humanoid:TakeDamage(7)
    end
  end
)
end

fade = function()
  
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0.5
    end
  end
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Hat" then
      v.Handle.Transparency = 0.5
    end
  end
end

unfade = function()
  
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0
    end
  end
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Hat" then
      v.Handle.Transparency = 0
    end
  end
end

dash = function(x)
  
  b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 1)
  b.Size = Vector3.new(3, 3, 3)
  b.BrickColor = color
  b.Material = material
  b.Transparency = 0.4
  b.CanCollide = false
  b.CFrame = torso.CFrame * x
  t = Instance.new("BodyVelocity", b)
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(20, 20, 20)
  for i = 1, 5 do
    wait()
    b.Transparency = b.Transparency + 0.1
    torso.CFrame = torso.CFrame * CFrame.new(0, 0, -1)
  end
end

dash2 = function(x)
  
  b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 1)
  b.Size = Vector3.new(1, 1, 1)
  b.BrickColor=BrickColor.new("Really red")
  b.Material = material
  b.CanCollide = false
  b.Transparency = 0.3
  b.CFrame = torso.CFrame * x
  t = Instance.new("BodyVelocity", b)
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(15, 15, 15)
  for i = 1, 5 do
    wait()
    b.Transparency = b.Transparency + 0.1
    torso.CFrame = torso.CFrame * CFrame.new(0, 0, -1)
  end
end

mouse.KeyDown:connect(function(key)
  
  if key == "v" then
    holding = true
    fade()
    while holding and wait(0.01) do
      dash(CFrame.new(2, 1, 0))
      dash(CFrame.new(-2, -1, 1))
      dash(CFrame.new(0, 1, 3))
      dash2(CFrame.new(2, 1, 0))
      dash2(CFrame.new(-2, -1, 1))
      dash2(CFrame.new(0, 1, 3))
    end
  end
end
)
mouse.KeyUp:connect(function(key)
  
  if key == "v" then
    unfade()
    holding = false
  end
end
)
mouse.KeyDown:connect(function(key)
  
  if key == "e" and debounce == false then
    debounce = true
    blast()
    blast2()
    wait(0.5)
    debounce = false
  end
end
)
mouse.KeyDown:connect(function(key)
  
  if key == "q" and debounce == false then
    debounce = true
    wall()
    wait(0.5)
    debounce = false
  end
end
)

