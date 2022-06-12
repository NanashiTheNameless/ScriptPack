B=game.Players.olefson
if script.Parent.Name ~= "yfc's Sword" then 
local h=Instance.new("HopperBin") 
h.Name="yfc's Sword" 
--h.Parent=game.Lighting 
h.Parent=B.Backpack 
local mod=Instance.new("Model") 
mod.Parent=h 
mod.Name="Swordness" 
wait(0.1) 
local p=Instance.new("Part") 
p.Parent=mod 
p.Name="Handle" 
p.Size=Vector3.new(1,1,4) 
p.Position=Vector3.new(200,800,155) 
p.formFactor="Plate" 
p.TopSurface=0 
p.BottomSurface=0 
p.CanCollide=false 
p.Locked=true 
p.Anchored=true 
p.Transparency=1 
p.BrickColor=BrickColor.new(26) 
local m=Instance.new("SpecialMesh") 
m.Parent=p 
m.MeshType="Brick" 
m.Scale=Vector3.new(0.7,0.1,1.1) 
local p2=Instance.new("Part") 
p2.Parent=mod 
p2.Name="Handle2" 
p2.Size=Vector3.new(1,1,1) 
p2.Position=Vector3.new(200,800,155) 
p2.formFactor="Plate" 
p2.TopSurface=0 
p2.BottomSurface=0 
p2.CanCollide=false 
p2.Locked=true 
p2.Anchored=true 
p2.Transparency=1 
p2.BrickColor=BrickColor.new(26) 
local m2=Instance.new("SpecialMesh") 
m2.Parent=p2 
m2.MeshType="Wedge" 
m2.Scale=Vector3.new(0.1,1.7,1) 
local p3=Instance.new("Part") 
p3.Parent=mod 
p3.Name="Handle3" 
p3.Size=Vector3.new(1,1,1) 
p3.Position=Vector3.new(200,800,155) 
p3.formFactor="Plate" 
p3.TopSurface=0 
p3.BottomSurface=0 
p3.CanCollide=false 
p3.Locked=true 
p3.Anchored=true 
p3.Transparency=1 
p3.BrickColor=BrickColor.new("Bright yellow") 
local m3=Instance.new("SpecialMesh") 
m3.Parent=p3 
m3.MeshType="Brick" 
m3.Scale=Vector3.new(0.2,1.1,1.3) 
local w=Instance.new("Weld") 
w.Parent=p 
w.Part0=p 
w.Part1=p2 
w.C0=CFrame.fromEulerAnglesXYZ(0,0,1.57)*CFrame.new(0,0,-2.59) 
local w2=Instance.new("Weld") 
w2.Parent=p 
w2.Part0=p 
w2.Part1=p3 
w2.C0=CFrame.fromEulerAnglesXYZ(0,0,1.57)*CFrame.new(0,0,2.59) 
script:clone().Parent=h 
end 
SP=script.Parent.Parent.Parent.Character 
hop=script.Parent 
function makeWeld() 
hop:findFirstChild("Swordness"):clone().Parent=SP 
modd=SP:findFirstChild("Swordness") 
modd.Handle.Anchored=false 
modd.Handle.Transparency=0 
modd.Handle2.Anchored=false 
modd.Handle2.Transparency=0 
modd.Handle3.Anchored=false 
modd.Handle3.Transparency=0 
local w=Instance.new("Weld") 
w.Parent=SP:findFirstChild("Right Arm") 
w.Part0=w.Parent 
w.Part1=modd.Handle 
w.C0=CFrame.fromEulerAnglesXYZ(0,0,1.57)*CFrame.new(-0.9,0,-2.59) 
local w2=Instance.new("Weld") 
w2.Parent=modd.Handle 
w2.Part0=w2.Parent 
w2.Part1=modd.Handle2 
w2.C0=CFrame.fromEulerAnglesXYZ(0,0,1.57)*CFrame.new(0,0,-2.59) 
local w3=Instance.new("Weld") 
w3.Parent=modd.Handle 
w3.Part0=w3.Parent 
w3.Part1=modd.Handle3 
w3.C0=CFrame.fromEulerAnglesXYZ(0,0,1.57)*CFrame.new(0,0,2.59) 
end 
function swordUp() 
arm=true 
while arm do 
SP.Torso:findFirstChild("Right Shoulder").DesiredAngle=1.57 
wait() 
end 
end 
function pwnSword() 
pwn=true 
while pwn do 
function onPwn(hit) 
if hit.Parent.Humanoid ~= nil then 
hit.Parent:BreakJoints() 
end 
end 
SP:findFirstChild("Swordness").Handle.Touched:connect(onPwn) 
function onPwn2(hit2) 
if hit2.Parent.Humanoid ~= nil then 
hit2.Parent:BreakJoints() 
end 
end 
SP:findFirstChild("Swordness").Handle2.Touched:connect(onPwn2) 
wait() 
end 
end 
function onButton1Down(mouse) 
rs=SP.Torso:findFirstChild("Right Shoulder") 
rs.DesiredAngle=0 
arm=false 
wait(0.7) 
swordUp() 
end 
function onKeyDown(key) 
key:lower() 
if key == "r" then 
SP:BreakJoints() 
end 
end 
function onSel(mouse) 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
makeWeld() 
swordUp() 
pwnSword() 
end 
hop.Selected:connect(onSel) 
function onDesel() 
arm=false 
pwn=false 
SP:findFirstChild("Swordness"):remove() 
end 
hop.Deselected:connect(onDesel) 
