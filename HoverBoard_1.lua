local Name="yfc"
local char=workspace[Name]
color2=BrickColor:Black()
color=BrickColor:White()

pcall(function() workspace[Name].Suit:remove() end)
player = game.Players[Name]
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 

Board=Instance.new("Part")
Board.Size=Vector3.new(4,1,2)
Board.BrickColor=color
Board.Reflectance=0
Board.Transparency=0
Board.CanCollide=true
Board.Parent=model
Board.Position=Vector3.new(0,2,0)
Board.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Board
Mesh.Bevel=0.11
Mesh.Scale=Vector3.new(1.01,0.25,1.01) 

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.2,0.2,1.2) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.95,-0.1,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.2,0.2,1.2) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.95,-0.1,0)



Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.4,0.2,0.4) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.95,-0.11,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.41,0.2,0.41) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.95,-0.11,0)






Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,20,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.41,0.08,0.1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.11,0.6)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,20,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.41,0.08,0.1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.11,-0.6)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.08,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(1.45,0.11,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.1,0.08,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-1.45,0.11,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=true
Tor.Parent=model
Tor.Position=Vector3.new(0,2,0)
Tor.TopSurface="Weld"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(2.1,0.08,1) 
w = Instance.new("Weld") 
w.Parent = Board
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.11,0)

model:MoveTo(char.Torso.Position+Vector3.new(3,-3,0))


Tor.Touched:connect(function(hit)
if hit.Parent.Name==Name then
pcall(function() 
char.Humanoid.PlatformStand=true
char.Animate:remove()
child = Instance.new("Weld") 
child.Parent = Tor
child.Part0 = w.Parent 
child.Part1 = char.Torso
child.C0=CFrame.new(0,3.1,0)--*CFrame.Angles(math.rad(90*3),0,0)
char.Torso.Neck.C0=char.Torso.Neck.C0*CFrame.Angles(0,0,math.rad(-65))
end)
end
end)





if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Board"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end
wait() 
Hopper=script.Parent

BodyP=Instance.new('BodyPosition')
BodyP.Name="DroidForce"
BodyP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyP.position=Tor.Position
BodyP.Parent=Tor


function Button1down(mouse)
BodyP:remove()
BodyV=Instance.new("BodyVelocity")
BodyV.Name="BodyV"
BodyV.Parent=Tor
BodyV.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro=Instance.new("BodyGyro")
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent=Tor
Up=0
local spd = 100
repeat
	wait(0.2)
	BodyGyro.cframe=CFrame.new(Tor.Position,mouse.Hit.p)*CFrame.Angles(0,math.rad(90),0)
	BodyV.velocity=mouse.Hit.lookVector*spd
until Up==1
BodyV:remove()
BodyGyro:remove()
Tor.Velocity=Vector3.new(0,0,0)
BodyP.position=Tor.Position
BodyP.Parent=Tor
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
	mouse.Button1Up:connect(function() Up=1 end)
	mouse.KeyDown:connect(KeyDown)
end

--I think its broken. Idk.

Hopper.Selected:connect(Mog)