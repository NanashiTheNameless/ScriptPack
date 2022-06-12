me="peyquinn"
deb=false
color,size,speed=BrickColor.new(1,1,1),Vector3.new(5,4,5),80
hat,face,sparkles,fire,removehats,hatid,faceid=--[[hat]]false,--[[face]]true,--[[sparkles]]false,--[[fire]]false,--[[removehats]]true,--[[hatid]]57001119,--[[faceid]]38353936
sparklecolor,firecolor,namecolor=Color3.new(0,1,0),Color3.new(1,0,0),Color3.new(0,0,1)
digestcolor1,digestcolor2=Color3.new(1,1,1),Color3.new(1,0,0)
d=0
char=workspace:FindFirstChild(me)
char.Humanoid.WalkSpeed=speed
for _,v in pairs(char:GetChildren()) do
 if v:IsA("BasePart") and v.Name=="Left Leg" or v.Name=="Right Leg" or v.Name=="Right Arm" or v.Name=="Left Arm" then
  v:remove()
 elseif v:IsA("BasePart") and v.Name=="Torso" then
  v.Transparency=1
  v.CanCollide=false
  v.Neck.C0=CFrame.new(0,0,0)
  v.Neck.C1=CFrame.new(0,0,0)
 elseif v:IsA("BasePart") and v.Name=="Head" then
  v.Mesh.TextureId="roblox.com"
  v.Mesh.MeshId="roblox.com"
  v.Transparency=1
  if v:FindFirstChild("face") then
   v.face:remove()
  end
  v.CanCollide=false
 elseif v:IsA("Hat") then
  if removehats then
   v:remove()
  end
 end
end
p=Instance.new("Part",char)
p.BrickColor=color
if sparkles then
 Instance.new("Sparkles",p).Color=sparklecolor
end
if fire then
 Instance.new("Fire",p).Color=firecolor
end
if hat then
 hat=game:GetService("InsertService"):LoadAsset(hatid)
 for _,v in pairs(hat:GetChildren()) do
  if v:IsA("Hat") then
   newhat=v:clone()
   newhat.Parent=char
   hat:remove()
  end
 end
end
if face then
 f=Instance.new("Decal",p)
 f.Face="Front"
 f.Texture="http://www.roblox.com/asset/?id="..faceid-1
end
b=Instance.new("BodyForce",p)
b.force=Vector3.new(0,50,0)
g=Instance.new("BillboardGui",p)
g.StudsOffset=Vector3.new(0,1,0)
g.Size=UDim2.new(1,0,1,0)
g.Active=true
g.AlwaysOnTop=true
g.Adornee=p
t=Instance.new("TextLabel",g)
t.Position=UDim2.new(.5,0,.6,0)
t.Text="Digesting: 0 parts"
t.FontSize="Size24"
t.TextColor3=digestcolor1
tn=Instance.new("TextLabel",g)
tn.Position=UDim2.new(.5,0,0,0)
tn.Text=me
tn.FontSize="Size24"
tn.TextColor3=namecolor
p.Size=size
p.CanCollide=false
p.Position=char.Torso.Position
w=Instance.new("Weld",p)
w.Part0=p
w.Part1=char.Torso
w.C0=w.C0+Vector3.new(0,.4,0)
p.Touched:connect(function(hit)
 if hit.Parent:FindFirstChild("Humanoid") or hit.Name=="Food" or hit:IsA("Hat") then
  if hit.Name~="Base" and hit~=p and hit.Name~="Torso" and hit.Name~="Head" and not deb then
   deb=true
   d=d+1
   if d~=1 then
    t.Text="Digesting: "..d.." parts"
   else
    t.Text="Digesting: "..d.." part"
   end
   t.TextColor3=digestcolor2
   Spawn(function()
    wait(2)
    d=d-1
    if d~=1 then
     t.Text="Digesting: "..d.." parts"
    else
     t.Text="Digesting: "..d.." part"
    end
   -- hit:remove()
    if d==0 then
     t.TextColor3=digestcolor1
    end
   end)
   hit.Anchored=false
   hit.CanCollide=false
   hit:BreakJoints()
   hit.Parent=p
   w2=Instance.new("Weld",hit)
   w2.Part0=hit
   w2.Part1=p
   w2.C0=w2.C0*CFrame.Angles(math.random(1,5),math.random(1,5),math.random(1,5))
   wait()
   deb=false
  end
 end
end)
--[[
area=4 --2 = full
amount=1000
for i=1,amount do
 p=Instance.new("Part",workspace)
 p.Name="Food"
 p.Anchored=true
 p.BrickColor=BrickColor.random()
 p.Size=Vector3.new(1,1,1)
 p.CFrame=CFrame.new(math.random(-workspace.Base.Size.x/area,workspace.Base.Size.x/area),workspace.Base.Size.y+p.Size.y,math.random(-workspace.Base.Size.z/area,workspace.Base.Size.z/area))
end
]]
--[[ //Hat Ids
Purple Sparkletime Fedora --63043890
Alchemist's Apprentice (Wizard hat) --62252414
Witch Hat --1165248
Bejeweled Beanie --61903725
Sheriff Wilson (Sheriff hat) --62332732
Shortsighted Shapeshifter (Wizard hat) --62229189
Cute Fox --61773267
Triceratopper --31046422
Gentleman of Leisure --57001119
//Face Ids
Troll face --38353936
Epic face --62700116
Epic face (just face) --62376788
]]
area=2 --2 = full
amount=1000
for i=1,amount do
 p=Instance.new("Part",workspace)
 p.Name="Food"
 p.Anchored=true
 p.BrickColor=BrickColor.random()
 p.Size=Vector3.new(1,1,1)
 p.Position=Vector3.new(math.random(-workspace.Base.Size.x/area,workspace.Base.Size.x/area),1,math.random(-workspace.Base.Size.z/area,workspace.Base.Size.z/area))
end