--[[Rengar, the Pridestalker. WIP. Charging and then hitting somebody at a lower speed increases cooldown duration. LOCAL. mediafire gtfo password]]---------------------------------------------------------------------------------------------------------

plr = game.Players.rigletto
ch = plr.Character



prt1f = Instance.new("Part", ch)
prt1f.Size = Vector3.new(1,1,1)
prt1f.CanCollide = false
prt1f.BrickColor = BrickColor.new("Really red")
prt1f.TopSurface = "Smooth"
prt1f.Transparency = 0
prt1f.BottomSurface = "Smooth"
mesh = Instance.new("SpecialMesh", prt1f)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=10681506"
mesh.TextureId = "http://www.roblox.com/asset/?id=23557789"
prt1f:BreakJoints()
prtfW = Instance.new("Weld", prt1f)
prtfW.Part0 = ch["Left Arm"]
prtfW.Part1 = prt1f
prtfW.C1 = CFrame.new(-0.5,0,-1)*CFrame.Angles(math.rad(90),0,math.rad(180))

prt1f = Instance.new("Part", ch)
prt1f.Size = Vector3.new(1,1,1)
prt1f.CanCollide = false
prt1f.BrickColor = BrickColor.new("Really red")
prt1f.TopSurface = "Smooth"
prt1f.Transparency = 0
prt1f.BottomSurface = "Smooth"
mesh = Instance.new("SpecialMesh", prt1f)
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(0.75,0.75,0.5)
mesh.MeshId = "http://www.roblox.com/asset/?id=54430772"
mesh.TextureId = "http://www.roblox.com/asset/?id=54430066"
prt1f:BreakJoints()
prtfW = Instance.new("Weld", prt1f)
prtfW.Part0 = ch["Right Arm"]
prtfW.Part1 = prt1f
prtfW.C1 = CFrame.new(-0.5,0,-1)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(180))



ch.Head.face:remove()

local _ = false
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", plr.Backpack)
h.Name = "Charge"
script.Parent = h
end

has_hit = false
script.Parent.Selected:connect(function(mouse)

mouse.Button1Down:connect(function()
if _ == false then
_ = true
for i = 1,100 do

if ch.Torso.Transparency < 1 and has_hit == false then
for i,v in pairs(ch:children()) do
if v:IsA("BasePart") then
v.Transparency = v.Transparency + 0.02


elseif v:IsA("Hat") then
v.Handle.Transparency = v.Handle.Transparency + 0.02


end
end
ch.Head.Transparency = 1
end

if has_hit == false then
ch.Humanoid.WalkSpeed = ch.Humanoid.WalkSpeed + 0.5
end

ch.Torso.Touched:connect(function(hit)
if hit.Parent.Parent:FindFirstChild("Humanoid") and ch.Humanoid.WalkSpeed ~= 16 and has_hit == false then
has_hit = true

for i,v in pairs(ch:children()) do
if v:IsA("BasePart") then
v.Transparency = 0

elseif v:IsA("Hat") then
v.Handle.Transparency = 0

end
end

hit.Parent.Parent.Humanoid.Health = 0
ch.Humanoid.WalkSpeed = 16
end
end)

wait()
end
ch.Humanoid.WalkSpeed = 16

for i,v in pairs(ch:children()) do
if v:IsA("BasePart") then
v.Transparency = 0
elseif v:IsA("Hat") then
v.Handle.Transparency = 0
end
end

has_hit = false
_ = false
end
end)

mouse.KeyDown:connect(function(key)

end)
end)

script.Parent.Deselected:connect(function()

end)