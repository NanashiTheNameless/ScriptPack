it = Instance.new
cn = CFrame.new
ca=CFrame.Angles
v3 = Vector3.new
ud = UDim2.new
mf = math.floor
bc = BrickColor.new
rd=math.rad
rn=math.random
 
qis = {}
qis["s"]="Size"
qis["n"]="Name"
qis["p"]="Position"
qis["tr"]="Transparency"
qis["cf"]="CFrame"
qis["bri"]="BrickColor"
qis["sca"]="Scale"
qis["mid"]="MeshId"
qis["tid"]="TextureId"
qi = function(ta)
local n = it(ta[1])
for i,v in pairs(ta) do 
if i~=1 and i~=2 then -- if not clas and par
local ind = qis[i] or i
local elem = v
if string.find(ind,"Color3") then elem = bc(elem).Color end -- auto ;)
if string.find(ind,"BrickColor") then elem = bc(elem) end -- auto ;)
if string.find(ind,"FontSize") then elem = "Size" ..elem end -- auto ;)
n[ind] = elem
end
end
n.Parent=ta[2]
return n
end
 
pa = function(pa,pn,sh,x,y,z,canc,anch,tr,re,bc2) -- part maker
local ispart = {["Block"]="Block",["Ball"]="Ball",["Part"]="Block",["Cylinder"]="Cylinder"}
local epart = {["vs"]="VehicleSeat",["Wedge"]="WedgePart",["CornerWedge"]="CornerWedgePart"}
local isparte = ispart[sh or "Part"]
local eparte = epart[sh] or sh
if isparte then return qi{"Part",pa,TopSurface=0,BottomSurface=0,n=pn,Shape=isparte,formFactor="Custom",s=v3(x,y,z),CanCollide=canc,Anchored=anch,Transparency=tr or 0,Reflectance=re or 0,BrickColor=bc2 or ""} 
else
return qi{eparte,pa,TopSurface=0,BottomSurface=0,n=pn,s=v3(x,y,z),CanCollide=canc,Anchored=anch,Transparency=tr or 0,Reflectance=re or 0,BrickColor=bc2 or ""} 
end
end 
 
MakeDeeck = function(spa,siz)
local sc = siz or 1
local cc = "Pastel brown" -- skin color
local cc2 = "Black" -- hair color
local cc3 = "Hot pink" -- head color
local cc4 = "White" -- font col
local m = workspace.mir.Real --qi{"Model",workspace,Name="Loladickx"}
--ballz
for x=-1,1,2 do 
ww=pa(m,"","Ball",12*sc,12*sc,12*sc,true,true,0,0,cc)
ww.CFrame=spa*cn(x*5*sc,2.5*sc,2.5*sc)
for f=1,10 do 
ww=pa(m,"","Block",1.5*sc,12*sc,1.5*sc,true,true,0,0,cc2) qi{"SpecialMesh",ww,Scale=v3(1,2,1),MeshType="Sphere"}
ww.CFrame=spa*cn(x*3*sc,2.5*sc,2.5*sc)*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))) 
end
end
--musculs ololol
local cur = spa*cn(0,3.5*sc,0)
for i=1,5 do 
ww=pa(m,"","Block",7*sc,7*sc,7*sc,true,true,0,0,cc) qi{"CylinderMesh",ww}
ww.CFrame=cur
cur = cur*ca(rd(3),0,0)*cn(0,5*sc,0)
end
ww=pa(m,"","Block",7*sc,7*sc,7*sc,true,true,0,0,cc3) qi{"SpecialMesh",ww,Scale=v3(7,8,7)*sc,mid="http://www.roblox.com/asset/?id=19999424"}
ww.CFrame=cur*cn(1*sc,-1.5*sc,0)*ca(0,rd(180),0)
ww=pa(m,"","Block",1,1,1,true,true,0,0,cc2) qi{"SpecialMesh",ww,Scale=v3(2,8,6)*sc,MeshType="Sphere"}
ww.CFrame=cur*cn(0,0,0.1*sc)
--Font bishes
local sc = sc/1.8
fspa = spa*cn(8*sc,38*sc,-12*sc)*ca(0,rd(180),0)
--S
local ffspa=fspa*cn(-18*sc,0,0)*ca(rd(90),0,rd(90))
for i=0,180,180 do -- omg genius
ww2=pa(m,"","Block",3*sc,10*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*ca(rd(i),0,0)*cn(0,0,10*sc)
for x=-1,1,2 do 
ww=pa(m,"","Block",3*sc,3*sc,3*sc,true,true,0,0,cc4) qi{"SpecialMesh",ww,MeshType="Sphere"}
ww.CFrame = ww2.CFrame*cn(0,5*x*sc,0)
end
ww=pa(m,"","Block",3*sc,10*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww}
ww.CFrame = ww2.CFrame*ca(rd(90),0,0)*cn(0,-5*sc,5*sc)
ww2=pa(m,"","Block",3*sc,3*sc,3*sc,true,true,0,0,cc4) qi{"SpecialMesh",ww2,MeshType="Sphere"}
ww2.CFrame = ww.CFrame*cn(0,-5*sc,0)
end
ww=pa(m,"","Block",3*sc,10*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww}
ww.CFrame = ffspa
---H
local ffspa=fspa*cn(0*sc,0,0)*ca(rd(90),0,rd(90))
for x=-1,1,2 do 
ww2=pa(m,"","Block",3*sc,20*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*ca(rd(90),0,0)*cn(0,0,7*sc*x)
for xx=-1,1,2 do 
ww=pa(m,"","Block",3*sc,3*sc,3*sc,true,true,0,0,cc4) qi{"SpecialMesh",ww,MeshType="Sphere"}
ww.CFrame = ww2.CFrame*cn(0,10*xx*sc,0)
end
end
ww2=pa(m,"","Block",3*sc,14*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa
-- I
local ffspa=fspa*cn(18*sc,0,0)*ca(rd(90),0,rd(90))
for x=-1,1,2 do 
ww2=pa(m,"","Block",3*sc,10*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*cn(0,0,10*sc*x)
for xx=-1,1,2 do 
ww=pa(m,"","Block",3*sc,3*sc,3*sc,true,true,0,0,cc4) qi{"SpecialMesh",ww,MeshType="Sphere"}
ww.CFrame = ww2.CFrame*cn(0,5*xx*sc,0)
end
end
ww2=pa(m,"","Block",3*sc,20*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*ca(rd(90),0,0)
--T
local ffspa=fspa*cn(35*sc,0,0)*ca(rd(90),0,rd(90))
ww2=pa(m,"","Block",3*sc,10*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*cn(0,0,-10*sc)
for xx=-1,1,2 do 
ww=pa(m,"","Block",3*sc,3*sc,3*sc,true,true,0,0,cc4) qi{"SpecialMesh",ww,MeshType="Sphere"}
ww.CFrame = ww2.CFrame*cn(0,5*xx*sc,0)
end
ww2=pa(m,"","Block",3*sc,20*sc,3*sc,true,true,0,0,cc4) qi{"CylinderMesh",ww2}
ww2.CFrame = ffspa*ca(rd(90),0,0)
 
 
end
 
pcall(function() workspace.Loladickx:Remove() end) -- for testing
 
-- test look on studio
--MakeDeeck(cn(30,5,0)*ca(rd(90),rd(90),0),1)
--infront of a noob
--MakeDeeck(workspace.AllahHuAckbar.Torso.CFrame*cn(0,0,-15),2)
--facing a Noob
local vic = "AllahHuAckbar"
local tt = workspace[vic].Torso
MakeDeeck(cn(tt.CFrame.p-v3(0,0.2,0),tt.CFrame*cn(0,0,1).p)*ca(rd(90),0,0)*cn(0,-15,0),0.4)
 