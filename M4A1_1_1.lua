local plrs=game:service'Players'
local ws=workspace
local lt=game:service'Lighting'
local db=game:service'Debris'
local plr=plrs.LocalPlayer
local char=plr.Character
local cf=CFrame.new
local ca=CFrame.Angles
local cfea=CFrame.fromEulerAnglesXYZ
local v3=Vector3.new
local sin=math.sin
local cos=math.cos
local tan=math.tan
local rad=math.rad
local pi=math.pi
local asset="http://www.roblox.com/asset/?id="
local shoot=false
if char:FindFirstChild('Gun')==nil then Instance.new('Model',char).Name='Gun' end
if char:FindFirstChild('Crouch')==nil then Instance.new('Model',char).Name='Crouch' end
local bin=Instance.new('HopperBin',plr.Backpack)
bin.Name='Gun'
function cleanweld(parent)
for _,v in pairs(parent:children()) do
if v:IsA('Weld') then
v:Destroy()
end
end
end
function prop(name,parent,collide,size,position,bc)
local p=Instance.new('Part',parent)
p.Name=name
p.formFactor='Custom'
p.Size=size
p.CanCollide=collide
p.Position=position
p.TopSurface=0
p.BottomSurface=0
p.BrickColor=bc
return p
end
function weld(p0,p1,c0,c1,parent,name)
local w=Instance.new('Weld',parent)
w.Part0=p0
w.Part1=p1
w.C0=c0
w.C1=c1
w.Name=name
return w
end
function ray(o,of,uni,ign,bc)
local r=Ray.new(o,(of-o).unit*uni)
local h,p=ws:FindPartOnRayWithIgnoreList(r,ign)
if h then
if h.Parent:FindFirstChild('Humanoid') then
h.Parent.Humanoid:TakeDamage(25)
if h.Name=='Head' then
h.Parent:BreakJoints()
end
if h.ClassName=='Hat' then
h.Parent.Humanoid:TakeDamage(25)
end
end
end
local d=(p-o).magnitude
local pa=Instance.new('Part',ws)
pa.Anchored=true
pa.CanCollide=false
pa.TopSurface=0
pa.Name='RayPart'
pa.BottomSurface=0
pa.BrickColor=bc
pa.formFactor='Custom'
pa.Transparency=0.5
pa.Size=v3(0.2,0.2,d)
pa.CFrame=cf(p,o)*cf(0,0,-d/2)
db:AddItem(pa,0.1)
end
function sound(id,name,pitch,vol,parent)
local s=Instance.new('Sound',parent)
s.Name=name
s.Pitch=pitch
s.Volume=vol
s.SoundId=asset..tostring(id)
s:Play()
db:AddItem(s,0.5)
end
wait(0.25)
cleanweld(char['Torso'])
weld(char['Torso'],char['Right Arm'],cf(-0.5,0.5,0)*ca(math.rad(90),0,-math.rad(35)),cf(-1.5,0,0),char['Torso'],'rweld0')
weld(char['Torso'],char['Left Arm'],cf(-0.5,0.5,0)*ca(math.rad(90),0,math.rad(10)),cf(0.5,1.1,0),char['Torso'],'lweld0')
local par=prop('Body',char['Gun'],false,v3(0.5,0.5,4),char:GetModelCFrame().p,BrickColor.new('Really black'))
local burn=prop('Burner',char['Gun'],false,v3(0.1,0.1,0.1),char:GetModelCFrame().p,BrickColor.new('Really black'))
local grip=prop('Mag',char['Gun'],false,v3(0.2,1,0.2),char:GetModelCFrame().p,BrickColor.new('Really black'))
local hold=prop('Hold',char['Gun'],false,v3(0.5,1,0.5),char:GetModelCFrame().p,BrickColor.new('Really black'))
local a1=prop('Aim1',char['Gun'],false,v3(0.5,0.1,0.1),char:GetModelCFrame().p,BrickColor.new('Really black'))
local a2=prop('Aim2',char['Gun'],false,v3(0.5,0.35,0.1),char:GetModelCFrame().p,BrickColor.new('Medium stone Grey'))
local dot=prop('RedDot',char['Gun'],false,v3(0.1,0.1,0.1),char:GetModelCFrame().p,BrickColor.new('Bright red'))
local po1=prop('Point1',char['Gun'],false,v3(0.1,0.1,0.1),char:GetModelCFrame().p,BrickColor.new('Really black'))
local grip2=prop('Grip',char['Gun'],false,v3(0.2,1,0.2),char:GetModelCFrame().p,BrickColor.new('Really black'))
local bar=prop('Barrel',char['Gun'],false,v3(0.2,0.2,1),char:GetModelCFrame().p,BrickColor.new('Really black'))
local bar2=prop('Barrel2',char['Gun'],false,v3(0.1,0.1,0.5),char:GetModelCFrame().p,BrickColor.new('Really black'))
local a3=prop('Aim3',char['Gun'],false,v3(0.25,0.1,2),char:GetModelCFrame().p,BrickColor.new('Really black'))
local bar3=prop('Barrel3',char['Gun'],false,v3(0.1,0.1,0.35),char:GetModelCFrame().p,BrickColor.new('Really black'))
local po2=po1:Clone()
po2.Parent=char['Gun']
po2.Name='Point2'
local po3=po1:Clone()
po3.Parent=char['Gun']
po3.Name='Point3'
po3.BrickColor=BrickColor.new('White')
po3.Transparency=0.5
local po4=po2:Clone()
po4.Parent=char['Gun']
po4.Name='Point4'
po4.BrickColor=BrickColor.new('White')
po4.Transparency=0.5
Instance.new('SpecialMesh',dot).Scale=v3(0.25,0.25,0.25)
local p1m=Instance.new('SpecialMesh',po1)
p1m.MeshType='Brick'
p1m.Scale=v3(0.25,0.5,0.25)
local p2m=Instance.new('SpecialMesh',po2)
p2m.MeshType='Brick'
p2m.Scale=v3(0.25,0.5,0.25)
local p3m=Instance.new('SpecialMesh',po3)
p3m.MeshType='Brick'
p3m.Scale=v3(0.25,0.25,0.25)
local p4m=Instance.new('SpecialMesh',po4)
p4m.MeshType='Brick'
p4m.Scale=v3(0.25,0.25,0.25)
local b1m=Instance.new('SpecialMesh',bar)
b1m.MeshType='Brick'
b1m.Scale=v3(0.25,0.25,1.5)
local b2m=Instance.new('SpecialMesh',bar2)
b2m.MeshType='Brick'
b2m.Scale=v3(0.25,0.25,2)
local b3m=Instance.new('SpecialMesh',bar3)
b3m.MeshType='Brick'
b3m.Scale=v3(0.35,0.35,1.5)
burn.Transparency=1
a2.Transparency=0.5
weld(char['Torso'],par,cf(-0.4,1,-1.25),cf(),char['Torso'],'gweld0')
weld(char['Torso'],grip,cf(-0.4,0.5,-2.25),cf(),char['Torso'],'grweld0')
weld(char['Torso'],hold,cf(-0.4,0.75,0.75)*cfea(-math.rad(15),0,0),cf(),char['Torso'],'hweld0')
weld(char['Torso'],a1,cf(-0.4,1.25,-2),cf(),char['Torso'],'aweld0')
weld(char['Torso'],a2,cf(-0.4,1.5,-2),cf(),char['Torso'],'aweld1')
weld(char['Torso'],dot,cf(-0.4,1.5+(0.35/10)-0.05,-2),cf(),char['Torso'],'dweld0')
weld(char['Torso'],po1,cf(-0.2,1.3,-3),cf(),char['Torso'],'poweld0')
weld(char['Torso'],po2,cf(-0.6,1.3,-3),cf(),char['Torso'],'poweld1')
weld(char['Torso'],po3,cf(-0.2,1.375,-3),cf(),char['Torso'],'poweld2')
weld(char['Torso'],po4,cf(-0.6,1.375,-3),cf(),char['Torso'],'poweld3')
weld(char['Torso'],grip2,cf(-0.4,0.5,-1.5),cf(),char['Torso'],'grweld1')
weld(char['Torso'],bar,cf(-0.4,1,-3),cf(),char['Torso'],'baweld0')
weld(char['Torso'],bar2,cf(-0.4,1,-4),cf(),char['Torso'],'baweld1')
weld(char['Torso'],a3,cf(-0.4,1.25,-1),cf(),char['Torso'],'aweld2')
weld(char['Torso'],bar3,cf(-0.4,1,-4.5),cf(),char['Torso'],'baweld2')
weld(char['Torso'],char['Head'],cf(0,1.5,0)*cfea(0,0,math.rad(10)),cf(),char['Torso'],'heweld0')
bin.Selected:connect(function(mouse)
shoot=false
mouse.Button1Down:connect(function()
shoot=true
while shoot==true do
ray(bar3.CFrame.p,mouse.Hit.p,500,{char,workspace:FindFirstChild('RayPart')},BrickColor.new('White'))
sound(2760979,'gunshot',1.7,1,bar3)
local bbg=Instance.new('BillboardGui',bar3)
bbg.Name='GunShot'
bbg.Size=UDim2.new(2,0,2,0)
bbg.Adornee=bar3
local img=Instance.new('ImageLabel',bbg)
img.Size=UDim2.new(2,0,2,0)
img.BackgroundTransparency=1
img.Image='http://www.roblox.com/asset/?id=61378273'
img.Position=UDim2.new(-0.5,0,-0.35,0)
wait(0.1)
img:Remove()
end
end)
mouse.Button1Up:connect(function()
shoot=false
local smoke=Instance.new('Smoke',bar3)
smoke.RiseVelocity=2.5
smoke.Enabled=true
smoke.Size=5
smoke.Color=Color3.new(95/255,95/255,95/255)
coroutine.wrap(function() wait(3) smoke:Remove() end)()
end)
mouse.KeyDown:connect(function(key)
if key=='c' then
weld(char['Torso'],char['Left Leg'],cf(),cf(-0.5,0.75,1),char['Left Leg'],'lweld1')
weld(char['Torso'],char['Right Leg'],cf(),cf(0.5,0.495,1.15)*cfea(math.rad(90),0,0),char['Right Leg'],'rweld1')
char['Left Leg'].CanCollide=false
char['Right Leg'].CanCollide=false
elseif key=='v' then
cleanweld(char['Left Leg'])
cleanweld(char['Right Leg'])
char['Left Leg'].CanCollide=true
char['Right Leg'].CanCollide=true
end
end)
end)
--mediafire gtfo password
