lp=game.Players.luxulux pl=lp.Character
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="Elevance" hue=pl.Humanoid hue.Name="Fork donkey"
Parts = {} tor=pl.torso
rs=pl.Torso['Right Shoulder']
ls=pl.Torso['Left Shoulder']
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
return p end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0 w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w end
Mesh = function(par,num,x,y,z)local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end msh.Scale = Vector3.new(x,y,z)return msh end

function TweenCFrame(part,cframe,q)
	local c0 = part.CFrame
	for i = -90,90,q do
		local r = ((math.sin(math.rad(i))+1)/2)
		part.CFrame = CFrame.new(c0.p:lerp(cframe.p,r))
		wait()
	end
end


function mix() mo=false dmg=0 f=true
while wait(1) do if f==false then break end
for i,v in pairs(Parts)do
coroutine.wrap(function()
TweenCFrame(v,tor.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)),30)
end)()
end
end
end

function bamb() f=false mo=true
local Mouse = lp:GetMouse()
local Pos = Mouse.Hit.p
sp= Part(1,1,1,'',0,false,true,workspace) sp.CFrame=CFrame.new(Pos)
me1=Mesh(sp,"http://www.roblox.com/asset/?id=123968188",0,0,0)me1.TextureId="http://www.roblox.com/asset/?id=123968836"
for i,v in pairs(Parts)do TweenCFrame(v,CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(0,0,5),25)end
coroutine.wrap(function()for i=1,10 do wait()me1.Scale=me1.Scale+Vector3.new(.3,.3,.3)end end)()
TweenCFrame(sp,sp.CFrame*CFrame.new(0,7,0),5)
le= Part(.1,.1,.1,'Earth green',0,false,true,workspace) le.CFrame=sp.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.random(),math.random(),math.random())me2=Mesh(le,3,0,0,0)
le2= Part(.1,.1,.1,'Bright green',0,false,true,workspace) le2.CFrame=sp.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.random(),math.random(),math.random())me3=Mesh(le2,3,0,0,0)
coroutine.wrap(function()for i=1,10 do wait()me2.Scale=me2.Scale+Vector3.new(3,3,3)me3.Scale=me3.Scale+Vector3.new(3,3,3)end end)()
for i=1,15 do wait(.2) local bam= Part(1,1,1,'Really red',0,true,false,workspace)bam:BreakJoints()me4=Mesh(bam,2,1,1,1) bam.CFrame=le.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.wrap(function()wait(1)bam.Anchored=true 
local bam2= Part(6.5,6.5,6.5,'Bright orange',0,false,true,bam)bam2.CFrame=bam.CFrame
explo=Mesh(bam2,'http://www.roblox.com/asset/?id=9982590',0,0,0)
for i=1,5 do wait()
explo.Scale=explo.Scale+Vector3.new(.5,.5,.5)end
b0m=Instance.new("Explosion",workspace) b0m.Position=bam2.Position bam2:remove()bam:remove()end)()end wait(1.5)
for i=1,10 do wait()me2.Scale=me2.Scale-Vector3.new(3,3,3)me3.Scale=me3.Scale-Vector3.new(3,3,3)end le:remove()le2:remove()
coroutine.wrap(function()for i=1,10 do wait()me1.Scale=me1.Scale-Vector3.new(.3,.3,.3)end end)()
mix()
end

function cir()f=false Num = 0 mo=true
for i,v in pairs(Parts)do
TweenCFrame(v,tor.CFrame*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(3.5,0,0),25)end
while wait()do if mo==false then break end dmg=math.random(1,3) Num = Num + 0.1
for i,v in pairs(Parts)do
v.CFrame = tor.CFrame*CFrame.new(0,0,0)*CFrame.Angles(0,Num+math.rad(360/12)*i,0)*CFrame.new(0,0,3.5)
end end for i,v in pairs(Parts)do
v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,-3,0)*CFrame.Angles(0,Num+math.rad(360/12)*i,0)*CFrame.new(0,0,3.5)
end end

function tele() f=false mo=true
local Mouse = lp:GetMouse() local Pos = Mouse.Hit.p
for i,v in pairs(Parts)do coroutine.wrap(function()TweenCFrame(v,CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(0,0,5),25)end)()end
for i=1,5,.5 do wait()for i2,v in pairs(Parts)do
v.CFrame = CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i2,0)*CFrame.new(0,0,5-i)end end
tor.CFrame=CFrame.new(Pos)*CFrame.new(0,3,0) wait(1) mix()
end

function blg() f=false mo=true
end

tol.Selected:connect(function(mouse)
mouse.KeyDown:connect(onKeyDown)
f=Instance.new("Model",pl)
for i =1,12 do wait()
lef = Part(1,1,1,'White',0,false,true,f) 
lef.CFrame=tor.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))*CFrame.Angles(math.random(),math.random(),math.random())
me=Mesh(lef,"http://www.roblox.com/asset/?id=40302270",1,1,1) me.TextureId="http://www.roblox.com/asset/?id=40559688"
table.insert(Parts,lef)
end mix()
while wait(1.5) do
for i,v in pairs(Parts)do
function touch(hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
--if hit.Parent.Name == pl.Name then return end 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-dmg
end end v.Touched:connect(touch) end end
end)

function onKeyDown(key)
key = key:lower()
if key == "e" then
le = not le
if le == true then
cir()else mix()
end end
if key == "q" then
bamb()end
if key == "f" then
tele()end

end