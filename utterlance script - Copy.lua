--UttermostExedra's Lance.
 
local name = "luxulux"
local plr = game.Players[name]
local char = plr.Character
 
Anim = {}
Anim.Welding = 0
c0 = function(wexx,smmx,xx,yy,zz) 
local xx2,yy2,zz2 = wexx.C0:toEulerAnglesXYZ() 
local aa,bb,cc = wexx.C0.x,wexx.C0.y,wexx.C0.z
local twa = smmx/.03
Anim.Welding = Anim.Welding + 1
for i=0,twa,1 do
wexx.C0 = CFrame.new(aa,bb,cc)*CFrame.Angles(xx2-(((xx2-math.rad(xx))/twa)*i),yy2-(((yy2-math.rad(yy))/twa)*i),zz2-(((zz2-math.rad(zz))/twa)*i))
wait()
end 
Anim.Welding = Anim.Welding - 1
end 
 
if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "Lance"
bin.BinType = "Script"
script:clone().Parent = bin
script:remove()
else
bin = script.Parent;
 
pcall(function() char.LanceModel:remove() end)
local s = Instance.new("Model",char)
s.Name = "LanceModel"
local p1 = Instance.new("Part",s)
p1.Name = "Lance"
p1.formFactor = "Custom"
p1.Anchored = false
p1.Locked = true
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p1.BrickColor = BrickColor.new("Brown")
p1.Size = Vector3.new(.5,5,.5)
local m1 = Instance.new("CylinderMesh",p1)
local p2 = Instance.new("Part",s)
p2.Name = "LanceTip"
p2.formFactor = "Custom"
p2.Anchored = false
p2.Locked = true
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.BrickColor = BrickColor.new("Medium stone grey")
p2.Size = Vector3.new(.2,1,.2)
local m2 = Instance.new("SpecialMesh",p2)
m2.MeshId = "http://www.roblox.com/asset?id=1033714"
m2.Scale = Vector3.new(.3,1,.3)  --.27,1,.27
local w1 = Instance.new("Weld",s)
w1.Part0 = p1
w1.Part1 = char.Torso
w1.C0 = CFrame.new(0,0,-.7) * CFrame.Angles(0,0,math.rad(-25))
local w2 = Instance.new("Weld",s)
w2.Part0 = p1
w2.Part1 = p2
w2.C0 = CFrame.new(0,-2.8,0) * CFrame.Angles(math.rad(180),0,0)
 
slash = function(w)
coroutine.wrap(function()
for i=1,12 do
local posz1 = p1.CFrame * CFrame.Angles(0,math.pi,0) 
posz1 = posz1 * CFrame.new(0,0,1) -- extra start point moving :3
local r = Ray.new(posz1.p, posz1.lookVector*6) 
local hit, pos = workspace:FindPartOnRay(r, char) 
if hit then
for i,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid") then
v:TakeDamage(9)
end
end
end
wait()
end
end)()
for i = 0, 1, 0.1 do 
w.C0 = CFrame.new(1.5,.45,-.45) * CFrame.Angles(math.rad(90+35*i), 0, math.rad(0)) 
wait() 
end 
for i = 0, 1, 0.1 do 
w.C0 = CFrame.new(1.5,.45,-.45) * CFrame.Angles(math.rad(125-100*i), 0, math.rad(0)) 
wait() 
end 
for i = 0, 1, 0.1 do 
w.C0 = CFrame.new(1.5,.45,-.45) * CFrame.Angles(math.rad(25+65*i), 0, math.rad(0)) 
wait() 
end 
end
 
equip = function(mouse)
w3 = Instance.new("Weld",s)
w3.Part0 = char.Torso
w3.Part1 = char["Right Arm"]
w3.C0 = CFrame.new(1.5,0,0)
for i = 0, 1, 0.1 do 
w3.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
w1.Part1 = char["Right Arm"]
w1.C0 = CFrame.Angles(0,0,0)
w1.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(7.83, 8, 0) 
for i = 0, 1, 0.1 do 
w3.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225-135*i), 0, math.rad(-25+25*i)) 
wait() 
end 
w3.C0 = CFrame.new(1.5,.45,-.45) * CFrame.Angles(math.rad(90),0,0)
mouse.Button1Down:connect(function()
coroutine.wrap(function()
slash(w3)
end)()
end)
end
 
unequip = function()
for i = 0, 1, .1 do 
w3.C0 = CFrame.Angles(math.rad(90+135*i), 0, math.rad(-25+0*i)) 
wait() 
end 
w3.Part1 = char.Torso
w3.C1 = CFrame.new(0.75, 1, 0.5) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
w3.C0 = CFrame.Angles(math.rad(225-225*i), 0, math.rad(-25+25*i)) 
wait() 
end 
w3.Part1 = nil 
end
 
bin.Selected:connect(function(mouse)
equip(mouse)
end)
 
bin.Deselected:connect(function()
unequip()
end)
 
 
end
 