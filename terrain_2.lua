model=Instance.new("Model")
model.Name="a"
model.Parent=workspace
nodes={
{1,1,1,1,1,1,1,1,1,1}; --1
{1,20,80,250,220,130,80,50,120,1}; --2
{1,50,90,210,60,170,210,100,40,1}; --3
{1,90,100,300,600,650,600,200,140,1}; --4
{1,60,100,350,650,750,650,200,30,1}; --5
{1,140,100,300,600,650,600,200,80,1}; --6
{1,110,100,350,480,230,160,100,50,1}; --7
{1,120,120,240,300,240,170,150,100,1}; --8
{1,80,80,10,30,90,60,40,50,1}; --9
{1,1,1,1,1,1,1,1,1,1}; --50
}
colorRange={}
colorRange[0]="Dark stone grey"
colorRange[70]="Dark green"
colorRange[80]="Camo"
colorRange[90]="Bright green"
colorRange[20]="Brown"
colorRange[40]="Dark stone grey"
colorRange[60]="Dark grey"
colorRange[80]="White"
flat_bricks=true --keep this at true for now...
width=40
depth=40
height=100
elevation=0
function createTriangle(n1,n2,n3)
local w1=Instance.new("WedgePart")
w1.formFactor="Symmetric"
w1.Anchored=true
w1.Name="awxsd561"
findingSolution=true
while findingSolution do
r=Ray.new(n1,(n3-n1).unit)
d=r:ClosestPoint(n2)
if (n1-d).magnitude>=(n1-n3).magnitude or (n3-d).magnitude>=(n3-n1).magnitude then
local n=n1
n1=n3
n3=n2
n2=n
else
findingSolution=false
end
end
local pos=(n1:lerp(n2,.5))
local v2=(n1:lerp(d,.5)-pos).unit*-1
local v3=(n2:lerp(d,.5)-pos).unit
local v1=(v2:Cross(v3))
local y=(n2-d).magnitude
local z=(n1-d).magnitude
w1.Size=Vector3.new(2,math.ceil(y),math.ceil(z)) +Vector3.new(0,1,1)
w1.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)
highestVal=0
for i,v in pairs(colorRange) do
if i>=highestVal and (pos.y-elevation)/height*100/255>=i then
highestVal=i
end
end
w1.BrickColor=BrickColor.new(colorRange[highestVal])
if flat_bricks then
local m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Scale=Vector3.new(0,y/math.ceil(y),z/math.ceil(z))
m.Parent=w1
else
w1.CFrame=w1.CFrame*CFrame.new(-.5,0,0)
end
local w2=Instance.new("WedgePart")
w2.formFactor="Symmetric"
w2.Name="awx"
w2.Anchored=true
local pos=(n3:lerp(n2,.5))
local v2=(n3:lerp(d,.5)-pos).unit*-1
local v3=(n2:lerp(d,.5)-pos).unit
local v1=(v2:Cross(v3))
local y=(n2-d).magnitude
local z=(n3-d).magnitude
w2.Size=Vector3.new(2,math.ceil(y),math.ceil(z)) +Vector3.new(0,1,1)
w2.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)
highestVal=0
for i,v in pairs(colorRange) do
if i>=highestVal and (pos.y-elevation)/height*100/255>=i then
highestVal=i
end
end
w2.BrickColor=BrickColor.new(colorRange[highestVal])
if flat_bricks then
local m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Scale=Vector3.new(0,y/math.ceil(y),z/math.ceil(z))
m.Parent=w2
else
w2.CFrame=w2.CFrame*CFrame.new(.5,0,0)
end
w2.Parent=model
w1.Parent=model
end
height=height/255
startPos=Vector3.new(0,0,0)
for a=1,#nodes-1 do
for b=1,#nodes[a]-1 do
createTriangle(Vector3.new((a+1)*width+startPos.x,nodes[a+1][b]*height+startPos.y,b*depth+startPos.z),Vector3.new(a*width+startPos.x,nodes[a][b]*height+startPos.y,b*depth+startPos.z),Vector3.new(a*width+startPos.x,nodes[a][b+1]*height+startPos.y,(b+1)*depth+startPos.z))
createTriangle(Vector3.new(a*width+startPos.x,nodes[a][b+1]*height+startPos.y,(b+1)*depth+startPos.z),Vector3.new((a+1)*width+startPos.x,nodes[a+1][b+1]*height+startPos.y,(b+1)*depth+startPos.z),Vector3.new((a+1)*width+startPos.x,nodes[a+1][b]*height+startPos.y,b*depth+startPos.z))
wait()
end
end
