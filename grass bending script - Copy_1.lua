player = game:service("Players").LocalPlayer
char = player.Character

fdown = false
rdown = false
qdown = false

suit = Instance.new("Model", char)
suit.Name = "Suit"

--[[
for i,v in pairs(char:GetChildren()) do
 if v.Name ~= "Head" and v.className == "Part" then
  local bp = Instance.new("Part", suit)
  bp.Name = v.Name
  bp.TopSurface = "Smooth"
  bp.BottomSurface = "Smooth"
  bp.CanCollide = false
  bp.FormFactor = "Custom"
  bp.Size = v.Size
  bp.Material = "Grass"
  local bw = Instance.new("Motor6D", bp)
  bw.Part1 = bp
  bw.Part0 = v
 end 
end 
]]

hb = Instance.new("HopperBin", player.Backpack)
hb.Name = "Magic"

function fkey()
 local ps = Instance.new("Part", workspace)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Dark green")
 ps.Material = "Grass"
 ps.FormFactor = "Custom"
 ps.Size =  Vector3.new(6, 0.2, 6)
 ps.Anchored = true
 ps.CFrame = char.Torso.CFrame*CFrame.new(0, -3, 0)
 local i = 0
 while fdown == true do
  wait(0.03)
  i = i + 1
  ps.CFrame = ps.CFrame*CFrame.new(0, 0.1, 0)
  local ts = ps.CFrame
  ps.Size = Vector3.new(6, i*0.2, 6)
  ps.CFrame = ts
 end 
 coroutine.resume(coroutine.create(function()
  wait(40)
  ps:remove()
 end)) 
end 

function rkey()
 local ps = Instance.new("Part", workspace)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Dark green")
 ps.Material = "Grass"
 ps.FormFactor = "Custom"
 ps.Size =  Vector3.new(6, 0.2, 6)
 ps.Anchored = true
 ps.CFrame = char.Torso.CFrame*CFrame.new(0, -6, -6)*CFrame.Angles(-10, 0, 0)
 local i = 0
 while rdown == true do
  wait(0.03)
  i = i + 1
  ps.CFrame = ps.CFrame*CFrame.new(0, -0.1, 0)
  local ts = ps.CFrame
  ps.Size = Vector3.new(6, i*0.2, 6)
  ps.CFrame = ts
 end 
 coroutine.resume(coroutine.create(function()
  wait(40)
  ps:remove()
 end)) 
end 

function tkey()
 local ps = Instance.new("Part", workspace)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Dark green")
 ps.Material = "Grass"
 ps.FormFactor = "Custom"
 ps.Size = Vector3.new(40, 30, 6)
 ps.Anchored = true
 ps.CFrame = char.Torso.CFrame*CFrame.new(0, 8, -15)*CFrame.Angles(-10, 0, 0)
 coroutine.resume(coroutine.create(function()
  wait(40)
  ps:remove()
 end)) 
 for i = 1, 300 do 
  wait()
  ps.CFrame = ps.CFrame*CFrame.new(0, -0.4, 0.7)
 end 
end 

function ykey()
 local ps = Instance.new("Part", workspace)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Dark green")
 ps.Material = "Grass"
 ps.FormFactor = "Custom"
 ps.Size = Vector3.new(40, 30, 6)
 ps.Anchored = true
 ps.CFrame = char.Torso.CFrame*CFrame.new(0, 8, -15)*CFrame.Angles(-10, 0, 0)
 coroutine.resume(coroutine.create(function()
  wait(40)
  ps:remove()
 end)) 
end 

function ukey()
 for i = 1, 40 do
  local ps = Instance.new("Part", workspace)
  ps.Name = "MagicPart"
  ps.TopSurface = "Smooth"
  ps.BottomSurface = "Smooth"
  ps.BrickColor = BrickColor.new("Dark green")
  ps.Material = "Grass"
  ps.FormFactor = "Custom"
  ps.Size = Vector3.new(40, 30, 6)
  ps.Anchored = true
  ps.CFrame = char.Torso.CFrame*CFrame.Angles(0, i*5, 0)
  ps.CFrame = ps.CFrame*CFrame.Angles(-10, 0, 0)
  coroutine.resume(coroutine.create(function()
   wait(40)
   ps:remove()
  end)) 
  coroutine.resume(coroutine.create(function()
   for i = 1, 300 do 
    wait()
    ps.CFrame = ps.CFrame*CFrame.new(0, -0.4, 0.7)
   end 
  end)) 
 end 
end 

function qkey()
 while qdown == true do
  wait(0.03)
  local ps = Instance.new("Part", workspace)
  ps.Name = "MagicPart"
  ps.TopSurface = "Smooth"
  ps.BottomSurface = "Smooth"
  ps.BrickColor = BrickColor.new("Dark green")
  ps.Material = "Grass"
  ps.FormFactor = "Custom"
  ps.Size =  Vector3.new(6, 0.2, 6)
  ps.Anchored = true
  ps.CFrame = char.Torso.CFrame*CFrame.new(0, -3, 0)
 end 
 coroutine.resume(coroutine.create(function()
  wait(40)
  ps:remove()
 end)) 
end 

hb.Selected:connect(function(mouse)
 mouse.KeyUp:connect(function(key)
  if key == "f" then
   fdown = false
  elseif key == "r" then
   rdown = false
  end 
 end) 
 mouse.KeyDown:connect(function(key)
  if key == "f" then
   fdown = true
   fkey()
  elseif key == "r" then
   rdown = true
   rkey()
  elseif key == "t" then
   tkey()
  elseif key == "u" then
   ukey()
  elseif key == "y" then
   ykey()
  elseif key == "q" then
   if qdown == false then 
    qdown = true
    qkey()
   else
    qdown = false
   end 
  end 
 end)
end)