--UttermostExedra's Minigun. He'll kill joo!
 
local name = "rigletto"
local plr = game.Players[name]
local char = plr.Character
 
weld = function(w,part0,part1,c0)
local ww = w
ww.Part0 = part0
ww.Part1 = part1
ww.C0 = c0
end
 
prop = function(part,anchored,cancollide,x,y,z,color)
local p = part
p.formFactor = "Custom"
p.Anchored = anchored
p.CanCollide = cancollide
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.TopSurface = 0
p.BottomSurface = 0
end
 
 
 
 
if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "Minigun"
bin.BinType = "Script"
script:clone().Parent = bin
script:remove()
else
bin = script.Parent;
 
 
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
 
 
pcall(function() char.Torso.Transparency = 0 end)
pcall(function() char["Right Arm"].Transparency = 0 end)
pcall(function() char["Left Arm"].Transparency = 0 end)
pcall(function() char["UttermostExedra's Minigun"]:remove() end)
local gun = Instance.new("Model",char)
gun.Name = "UttermostExedra's Minigun"
local farm = char["Right Arm"]:clone()
farm.Parent = gun
farm.Transparency = 1
farm.CanCollide = false
farm.Name = "Fake Right Arm"
local farm2 = char["Left Arm"]:clone()
farm2.Parent = gun
farm2.Transparency = 1
farm2.CanCollide = false
farm2.Name = "Fake Left Arm"
local hed = char.Head:clone()
hed.Parent = gun
hed.Transparency = 0
hed.CanCollide = false
hed.Name = "Fake Head"
pcall(function() char.Head.Transparency = 1 end)
pcall(function() char.Head.face:remove() end)
--[[
local torso = char.Torso:clone()
torso.Parent = gun
torso.Transparency = 1
torso.CanCollide = false
torso.Name = "Fake Torso"
torso:BreakJoints()]]
 
local h = Instance.new("Part",gun)
prop(h,false,false,5,.5,.5,"Medium stone grey")
 
local e = Instance.new("Part",gun)
prop(e,false,false,1,.2,1,"Medium stone grey")
local me = Instance.new("CylinderMesh",e)
me.Scale = Vector3.new(1,.2,1)
 
local e1 = Instance.new("Part",gun)
prop(e1,false,false,.3,.7,.3,"Medium stone grey")
local me1 = Instance.new("CylinderMesh",e1)
me1.Scale = Vector3.new(.3,.7,.3)
 
local e2 = Instance.new("Part",gun)
prop(e2,false,false,.3,.7,.3,"Medium stone grey")
local me2 = Instance.new("CylinderMesh",e2)
me2.Scale = Vector3.new(.3,.7,.3)
 
gun:BreakJoints()
 
w1 = Instance.new("Weld",gun)
weld(w1,h,char.Torso,CFrame.new(0,0,-.7) * CFrame.Angles(0,0,math.rad(45)))
w2 = Instance.new("Weld",gun)
weld(w2,h,e,CFrame.new(2.5,0,0) * CFrame.Angles(0,0,math.rad(90)))
w3 = Instance.new("Weld",gun)
weld(w3,e,e1,CFrame.new(-.4,-.2,0))
w4 = Instance.new("Weld",gun)
weld(w4,e,e2,CFrame.new(.4,-.2,0))
 
 
arm1 = Instance.new("Weld",char)
weld(arm1,char["Right Arm"],farm,CFrame.new(0,0,0))
arm2 = Instance.new("Weld",char)
weld(arm2,char["Left Arm"],farm2,CFrame.new(0,0,0))
hw = Instance.new("Weld",char)
weld(hw,char.Head,hed,CFrame.new(0,0,0))
 
--[[
tw = Instance.new("Weld",char)
weld(tw,char.Torso,torso,CFrame.new(0,0,0))]]
 
pcall(function() char.Torso.BodyGyro:Remove() end)
local bg = Instance.new("BodyGyro",char.Torso)
 
equip = function(mouse)
--pcall(function() char.Torso.Transparency = 1 end)
pcall(function() char["Right Arm"].Transparency = 1 end)
pcall(function() char["Left Arm"].Transparency = 1 end)
farm.Transparency = 0
farm2.Transparency = 0
--torso.Transparency = 0
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
arm1.Part0 = char.Torso
arm1.Part1 = farm
arm1.C0 = CFrame.new(1.5,0,0)
for i = 0, 1, 0.1 do 
arm1.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
w1.Part1 = farm
w1.C0 = CFrame.Angles(0,0,0)
w1.C1 = CFrame.new(-1, -1.2, 0) * CFrame.Angles(8, math.rad(200), 0)  --8.7,math.rad(225)
for i = 0, 1, 0.1 do 
arm1.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225-135*i), 0, math.rad(-25+25*i)) 
wait() 
end 
arm2.Part0 = char.Torso
arm2.Part1 = farm2
arm2.C0 = CFrame.new(-1.3,0,-.5) * CFrame.Angles(0,0,0)
arm1.C0 = CFrame.new(1,0,-.45) * CFrame.Angles(0,0,0)
coroutine.wrap(function() c0(arm2,.5,40,0,-20) end)()
coroutine.wrap(function() c0(arm1,.5,40,0,-20) end)()
coroutine.wrap(function() c0(hw,.5,0,90,0) end)()
mouse.Button1Down:connect(function() print("olo")
bg.cframe = CFrame.new(char.Torso.Position,Vector3.new(mouse.Hit.p.X,char.Torso.Position.Y,mouse.Hit.p.Z))*CFrame.Angles(0,math.rad(-90),0)
end)
 
end
 
 
 
bin.Selected:connect(function(mouse)
equip(mouse)
end)
 
 
end
 