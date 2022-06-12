me = game.Players.luxulux
char = me.Character
place = 1
trapdist = 10
modes = {"jail","trap"}
mode = modes[place]
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
function gettorsos(path,object)
 local torsos = {}
 for _,v in pairs(path:children()) do
  for _,k in pairs(v:children()) do
   if k.Parent:findFirstChild("Humanoid") ~= nil and k.Name == "Torso" then
    if (k.Position - object.Position).magnitude < trapdist then
     table.insert(torsos,k)
    end
   end
  end
 end
 return torsos
end
trail = Instance.new("Part")
prop(trail,nil,false,0.4,0.05,0.3,0.3,1,"Bright red",true,"Custom")
trailmesh = Instance.new("BlockMesh",trail)
point = Instance.new("Part")
prop(point,nil,false,0.3,0.05,1.2,0.3,1.2,"Bright violet",true,"Custom")
local pm = Instance.new("SpecialMesh",point)
pm.MeshType = "Sphere"
function jail(pos)
 local cf = CFrame.new(pos) * CFrame.new(0,3,0) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
 local mod = Instance.new("Model",workspace)
 mod.Name = "Jail, xS"
 for i=1, 360, 90 do
  local p = Instance.new("Part")
  prop(p,mod,true,1,0.1,11,11,0.2,"Bright blue",true,"Custom")
  p.CFrame = cf * CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,0,-5.5)
  p.Name = "Window"
 end
 local lol = cf * CFrame.Angles(0,math.rad(90),0)
 for i=0, 180, 180 do
  local p = Instance.new("Part")
  prop(p,mod,true,1,0.1,11,11,0.2,"Bright blue",true,"Custom")
  p.CFrame = lol * CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,0,-5.5)
  p.Name = "Window"
 end
 for i=1, 360, 90 do
  local p = Instance.new("Part")
  prop(p,mod,true,1,0.1,1.5,12.5,1.5,"Medium grey",true,"Custom")
  p.CFrame = cf * CFrame.Angles(math.rad(i),0,0) * CFrame.new(-5.5,0,-5.5)
  local o = Instance.new("Part")
  prop(o,mod,true,1,0.1,1.5,12.5,1.5,"Medium grey",true,"Custom")
  o.CFrame = cf * CFrame.Angles(math.rad(i),0,0) * CFrame.new(5.5,0,-5.5)
 end
 for i=0, 180, 180 do
  local p = Instance.new("Part")
  prop(p,mod,true,1,0.1,1.5,1.5,12.5,"Medium grey",true,"Custom")
  p.CFrame = lol * CFrame.Angles(math.rad(i),0,0) * CFrame.new(-5.5,-5.5,0)
  local o = Instance.new("Part")
  prop(o,mod,true,1,0.1,1.5,1.5,12.5,"Medium grey",true,"Custom")
  o.CFrame = lol * CFrame.Angles(math.rad(i),0,0) * CFrame.new(5.5,5.5,0)
 end
 for _,v in pairs(mod:children()) do
  coroutine.resume(coroutine.create(function()
   for i=1, 0, -0.05 do
    wait()
    if v.Name == "Window" then
     v.Transparency = i + 0.4
    else
     v.Transparency = i
    end
   end
  end))
  wait()
 end
end
function trap(pos)
 local mod = Instance.new("Model",workspace)
 mod.Name = "Trap, xS"
 local y = 0.3
 for i=12.5,6,-1.5 do
  local p = Instance.new("Part")
  prop(p,mod,true,1,0.06,i,1,i,"Black",true,"Custom")
  p.CFrame = CFrame.new(pos) * CFrame.new(0,y,0)
  Instance.new("CylinderMesh",p)
  y = y + i/30
 end
 local p = Instance.new("Part")
 prop(p,mod,true,1,0.1,5,0.2,5,"Lime green",true,"Custom")
 p.CFrame = CFrame.new(pos) * CFrame.new(0,y+0.2,0)
 Instance.new("CylinderMesh",p)
 local trapped = false
 coroutine.resume(coroutine.create(function()
  while mod.Parent ~= nil do
   local objs = gettorsos(workspace,p)
   if trapped then break end
   for _,v in pairs(objs) do
    if trapped then break end
    trapped = true
    local bp = Instance.new("BodyPosition",v)
    bp.position = p.Position + Vector3.new(0,6,0)
    bp.P = 6000
    bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    local bav = Instance.new("BodyAngularVelocity",v)
    bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bav.P = 7000
    bav.angularvelocity = Vector3.new(0,30,0)
    local o = Instance.new("Part")
    prop(o,mod,false,0.6,0.1,1,1,1,"Lime green",true,"Custom")
    local mo = Instance.new("SpecialMesh",o)
    mo.MeshType = "Sphere"
    mo.Scale = Vector3.new(5.2,8,5.2)
    o.CFrame = p.CFrame * CFrame.new(0,-5,0)
    for i=-5,6,0.25 do
     wait()
     o.CFrame = p.CFrame * CFrame.new(0,i,0)
    end
    wait(5)
    local ex = Instance.new("Explosion",mod)
    ex.BlastRadius = 2
    ex.BlastPressure = 50000
    ex.Position = v.Position
    ex.Hit:connect(function(p)
     p:breakJoints()
    end)
    o:remove()
    for _,j in pairs(mod:children()) do
     coroutine.resume(coroutine.create(function()
      for i=0, 1, 0.1 do
       wait()
       j.Transparency = i
      end
      j:remove()
     end))
     wait(0.04)
    end
    mod:remove()
    bav:remove()
    bp:remove()
   end
   wait(0.08)
  end
 end))
 for _,v in pairs(mod:children()) do
  coroutine.resume(coroutine.create(function()
   for i=1, 0, -0.05 do
    wait()
    v.Transparency = i
   end
   v.Transparency = 0
  end))
  wait()
 end
end
if script.Parent.className ~= "HopperBin" then
 h = Instance.new("HopperBin",me.Backpack)
 h.Name = "Lol?"
 script.Parent = h
end
bin = script.Parent
sel = false
bin.Selected:connect(function(mouse)
 sel = true
 trail.Parent = char
 point.Parent = char
 coroutine.resume(coroutine.create(function()
  while sel do
   local dis = (me.Character.Torso.Position - mouse.Hit.p).magnitude
   trailmesh.Scale = Vector3.new(1,1,dis)
   trail.CFrame = CFrame.new(me.Character.Torso.Position, mouse.Hit.p) * CFrame.new(0,0,-dis/2)
   point.CFrame = CFrame.new(mouse.Hit.p)
   wait()
  end
 end))
 mouse.Button1Down:connect(function()
  if mode == "jail" then
   jail(mouse.Hit.p)
  elseif mode == "trap" then
   trap(mouse.Hit.p)
  end
  for i=0.3,1,0.1 do
   pm.Scale = pm.Scale + Vector3.new(0.6,4,0.6)
   point.Transparency = i
   wait()
  end
  point.Transparency = 0.3
  pm.Scale = Vector3.new(1,1,1)
 end)
 mouse.KeyDown:connect(function(key)
  key = key:lower()
  if key == "q" then
   place = place - 1
   if place < 1 then
    place = #modes
   end
   mode = modes[place]
  elseif key == "e" then
   place = place + 1
   if place > #modes then
    place = 1
   end
   mode = modes[place]
  end
 end)
end)
bin.Deselected:connect(function()
 sel = false
 trail.Parent = nil
 point.Parent = nil
end)
 