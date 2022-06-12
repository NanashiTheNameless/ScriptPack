-------------------------------------------Made by chc4-----------------------------------------------------
local Name="acb227"
local char=workspace[Name]
local Booms=15 --Size of the Orb.
color=BrickColor:Black()
color2=BrickColor:Black()

pcall(function() workspace[Name].Suit:remove() end)
pcall(function() game.Players[Name].PlayerGui:children()[1]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.05
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.05
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end

Tor=Instance.new("Part")
Tor.Size=char.Head.Size
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.1,1.1,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.12,0)
---------------------------------------------------------------




if script.Parent.className~="HopperBin" then
local Hopper=Instance.new("HopperBin")
Hopper.Name="SuperPower"
Hopper.Parent=game.Players[Name].Backpack
script.Parent=Hopper
end
wait() 
local Hopper=script.Parent

function Check(i,num)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - workspace[Name].Torso.Position).magnitude < num and v.Name~="Orb" and v.Parent.Name~=Name and v.Parent.Name~="Suit" then
coroutine.resume(coroutine.create(function()
if v.Parent.Name~=Name and v.Name~="Base" and v.Name~="Handle" then
v:BreakJoints()
v.BrickColor=BrickColor:Black()
v.Anchored=false
v:Remove()
end
end))
elseif v:IsA("Model") and v.Name~=Name and v:children()[1]~=nil then
Check(v,num)
end
end
end

function Orb(mouse)
local Num=0
local Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Shape="Ball"
Tor.Name="Orb"
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=workspace[Name]
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
local Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(1,1,1)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
wait()
for i=1,Booms,0.7 do 
if Num==4 then --Should only Check() every 4 times.
Check(workspace,Mesh.Scale.y/2)
Num=0
else
Num=Num+1
end
x = (16+i) * math.cos(i-i/9.5) + char.Torso.Position.x --math.sin(i)
y = char.Torso.Position.y
z = (16+i)* math.sin (i-i/9.5) + char.Torso.Position.z --math.cos(i)
local brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit~=Tor and hit.Name~="Handle" and hit.Parent.Name~="Suit" then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(hit.Position-char.Torso.Position).unit*320
end
end)
brick.BlastRadius = 6
--brick.Parent = workspace 
brick.Position = Vector3.new(x,y,z) 
Mesh.Scale=Mesh.Scale+Vector3.new(1,1,1)
wait() 
end
for i=1,Booms/1.5 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(-1.2,-1.2,-1.2)
end
Tor:remove()
end

function Button1down(mouse)
Orb()
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
end


Hopper.Selected:connect(Mog)