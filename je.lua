-- For best use, use with "Grappling Hook(BEST)" and the "Fall Damage" script for best results (and best use)

for _, instance in pairs(game.Workspace:GetChildren()) do
if (instance:IsA('Part')) then
	instance:Destroy();
else if (instance:IsA('UnionOperation')) then
	instance:Destroy();
	else if (instance:IsA('Seat')) then
	instance:Destroy();
	else if (instance:IsA('VehicleSeat')) then
	instance:Destroy();
		else if (instance:IsA('TrussPart')) then
	instance:Destroy();
		else if (instance:IsA('WedgePart')) then
	instance:Destroy();
		else if (instance:IsA('CornerWedgePart')) then
	instance:Destroy();
	end
		end
		end
	end
	end
end
end
end

kys = Instance.new("SpawnLocation")
kys.Parent = game.Workspace
kys.Position = Vector3.new(138.69, 14.22, 129.71)
kys.CanCollide = false
kys.Anchored = true
kys.Transparency = 1
kys.Size = Vector3.new(6,1,6)
kysv2 = Instance.new("Part")
kysv2.Parent = game.Workspace
kysv2.Anchored = true
kysv2.CanCollide = false
kysv2.Size = Vector3.new(2,1.2,2)
kysv3 = Instance.new("SpecialMesh")
kysv3.Parent = kysv2
kysv3.MeshId = "http://www.roblox.com/asset/?id=1527559"
kysv3.MeshType = "FileMesh"
kysv3.Scale = Vector3.new(-3500, -3500, -3500)
game.Lighting.TimeOfDay ="1:00:00"
game.Lighting.FogEnd = 100
game.Lighting.FogColor = Color3.new(.88,.88,.88)
asdv69 = Instance.new("Part")
asdv69.Position = Vector3.new(461.135, 2995.981, 890.855)
asdv69.Size = Vector3.new(1038.41, 20, 1816.79)
asdv69.CanCollide = false
asdv69.Anchored = true
asdv69.Parent = game.workspace
asdv69.Transparency = 1
asa = Instance.new("ParticleEmitter", asdv69)
asa.Acceleration = Vector3.new(0, -30, 0)
asa.Rate = NumberRange.new(1e+006)
asa.Lifetime = NumberRange.new(1,1000)
asa.Rate = 1e+006
asa.EmissionDirection = "Bottom"

myears = Instance.new('Sound')
myears.Parent = game.Workspace
myears.Looped = true
myears.Name = "Moosic"
myears.SoundId = "rbxassetid://167123203"
myears.Volume = 1
myears.PlaybackSpeed = .7
myears.TimePosition = 0
myears:Play()

model=Instance.new("Model")
model.Name="Terra Mount"
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
colorRange[0]="White"
colorRange[70]="White"
colorRange[80]="White"
colorRange[90]="White"
colorRange[20]="White"
colorRange[40]="White"
colorRange[60]="White"
colorRange[80]="White"
flat_bricks=true --keep this at true for now...
width=100
depth=100
height=1000
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