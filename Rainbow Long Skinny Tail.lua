

local pl = game.Players.LocalPlayer
local ch = pl.Character
local tb = {}

local seg = 80

local a = Instance.new("Part", script)
a.CanCollide = false
a.Size = Vector3.new()
a.Material = "Neon"
local w = Instance.new("Weld",a)
w.Part0 = ch.HumanoidRootPart
w.Part1 = a
w.C0 = CFrame.new(0,-1,.5)

local p = Instance.new("Part", script)
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.Size = Vector3.new()
table.insert(tb,p)

for i = 1,seg-1 do
 local p = p:clone()
 p.Parent = script
 table.insert(tb,p)
end

getRainbowRGB = function (tick)
 local section, secondary do
  section = tick % 1 * 3
  secondary = .5 * math.pi * (section % 1)
  if (section < 1) then
   return Color3.new (1, 1 - math.cos (secondary), 1 - math.sin (secondary))
  elseif (section < 2) then 
   return Color3.new (1 - math.sin(secondary), 1, 1 - math.cos(secondary))
  else
   return Color3.new (1 - math.cos(secondary), 1 - math.sin(secondary), 1)
  end
 end
end

t = 0
while true do
 t = t + game:service"RunService".RenderStepped:wait()
 for i = 0,#tb-1 do
   local p1,p2 = tb[i],tb[i+1]
   if i==0 then p1 = a end
   local x = p1.Position.x - p2.Position.x
   local y = p1.Position.y - p2.Position.y
   local z = p1.Position.z - p2.Position.z
   local dist = math.sqrt(x^2+y^2+z^2)
   local diff = (p1.Size.z/(1/3) - dist)/dist
   x = x*.5*diff
   y = y*.5*diff
   z = z*.5*diff
   p2.Position = p2.Position - Vector3.new(x,y,z)
   p2.CFrame = CFrame.new((p1.Position+p2.Position)/2,p1.Position)
   p2.Color = getRainbowRGB(t + i/10)
   p1.Color = getRainbowRGB(t + i/10)
 end
end