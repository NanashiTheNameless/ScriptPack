lpc=game.Players.LocalPlayer.Character
m=Instance.new("Model",lpc)
m.Name=lpc.Name.."'s Protector"
p=Instance.new("Part",m)
p.Name="Head"
p.Size=Vector3.new(2,2,2)
b=Instance.new("BodyPosition",p)
b.maxForce = Vector3.new()*math.huge
p.Shape="Ball"
p.TopSurface,p.BottomSurface="Smooth","Smooth"
p.BrickColor=BrickColor.new("Bright red")
p.Transparency=0.5
h=Instance.new("Humanoid",m)
h.Health,h.MaxHealth=0,0
p.Touched:connect(function(h)
if h.Parent:findFirstChild("Humanoid") then
if h.Parent.Name~=game.Players.LocalPlayer.Name then
s=Instance.new("StringValue",h.Parent.Humanoid)
s.Name="creator"
s.Value=lpc.Name
h:BreakJoints()
end
end
end)

track = false
function trail(obj,s,t,lt,color,fade)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position

-- mag = (old-new).magnitude
dist = (old+new)/2

local ray = Instance.new("Part",lpc)
ray.TopSurface,ray.BottomSurface = 0,0
ray.Anchored = true
ray.formFactor = "Custom"
ray.CanCollide = false
ray.Color = obj.Color
ray.Transparency = .5
ray.Size = Vector3.new(2,2,2)
ray.Shape = "Ball"

Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*CFrame.Angles(math.pi/2,0,0)
if fade ~= nil then
delay(lt,function()
for i = t,1,fade do wait() ray.Transparency = i end ray:Remove() end)
else
game:GetService("Debris"):AddItem(ray,lt)
end

if color ~= nil then ray.BrickColor = BrickColor.new(color) end

end
end)) end

track = true trail(p,.5,.5,1)

coroutine.resume(coroutine.create(function()
while wait() do
r = 10
for i = 1,360,5 do
wait()
b.position=lpc.Torso.Position + Vector3.new(math.cos(math.rad(i))*r,math.sin(i*50),math.sin(math.rad(i))*r)
end

end
end))

function Cht(m,s)
pcall(function()
if m=="on/" then
p.Touched:connect(function(h)
if h.Parent:findFirstChild("Humanoid") then
if h.Parent.Name~=game.Players.LocalPlayer.Name then
s=Instance.new("StringValue",h.Parent.Humanoid)
s.Name="creator"
s.Value=lpc.Name
h:BreakJoints()
end
end
end)
end
if m=="off/" then
p.Touched:connect(function() end)
end
if m=="protect/" then
lpc.Humanoid.MaxHealth=1/0
p.BrickColor=BrickColor.new("Navy blue")
Instance.new("ForceField",lpc)
end
if m=="kill/" then
p.BrickColor=BrickColor.new("New Yeller")
lpc:BreakJoints()
end
if m=="reset/" then
m=Instance.new("Model",Workspace)
m.Name=lpc.Name
x=Instance.new("Humanoid",m)
h=Instance.new("Part",m)
h.Name="Head"
t=Instance.new("Part",m)
t.Name="Torso"
t.Anchored=true
h.Anchored=true
t.Transparency=1
h.Transparency=1
game.Players.LocalPlayer.Character=m
lpc:remove()
end
end)
end
game.Players.LocalPlayer.Chatted:connect(function(m) Cht(m,lpc.Parent) end)
