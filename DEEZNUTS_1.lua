--[[
	DEEZ NUTS v1.0.0.0
	Script By: KrystalTeam
	Features:
			Physic C0ck and Balls.
--]]

wait(0.25)
local P = game.Players.LocalPlayer
local C = P.Character
local T = C:WaitForChild("Torso")
local A1 = Instance.new("Attachment",T)
A1.Position = Vector3.new(0,-1,-0.6)
A1.Rotation = Vector3.new(0,90,0)
local AN1 = Instance.new("Attachment",T)
AN1.Position = Vector3.new(0.2,-1.1,-0.5)
AN1.Rotation = Vector3.new(0,90,0)
local AN2 = Instance.new("Attachment",T)
AN2.Position = Vector3.new(-0.2,-1.1,-0.5)
AN2.Rotation = Vector3.new(0,90,0)
local A2 = Instance.new("Attachment")
local R = Instance.new("RopeConstraint",T)
R.Length = 1.25
R.Attachment0 = A1
R.Attachment1 = A2
R.Restitution = 0.25
local A3 = Instance.new("Attachment")
local A4 = Instance.new("Attachment")

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor) 
part.Parent = T 
part.CanCollide = collide 
part.Transparency = tran 
part.Reflectance = ref 
part.Size = Vector3.new(x,y,z) 
part.BrickColor = color
part.TopSurface = 0 
part.BottomSurface = 0 
part.Anchored = anchor 
part.Material = Enum.Material.SmoothPlastic
part.Locked = true 
part:BreakJoints() 
end 

function mesh(mesh, parent, x, y, z, type) 
mesh.Parent = parent 
mesh.Scale = Vector3.new(x, y, z) 
mesh.MeshType = type 
end 

Dee = Instance.new("Part") 
prop(Dee,nil,false,0,0,0.3,1,0.3,T.BrickColor,true) 
Tip = Instance.new("Part") 
prop(Tip,nil,false,0,0,0.3,0.3,0.3,T.BrickColor,false) 
A2.Parent = Tip
local DeeMesh = Instance.new("CylinderMesh",Dee) 
local TipMesh = Instance.new("SpecialMesh",Tip) 
TipMesh.MeshType = Enum.MeshType.Sphere

LeftBall = Instance.new("Part") 
prop(LeftBall,nil,false,0,0,0.4,0.4,0.4,T.BrickColor,false) 
A3.Parent = LeftBall
local TipMesh = Instance.new("SpecialMesh",LeftBall) 
TipMesh.MeshType = Enum.MeshType.Sphere

RightBall = Instance.new("Part") 
prop(RightBall,nil,false,0,0,0.4,0.4,0.4,T.BrickColor,false) 
A4.Parent = RightBall
local TipMesh = Instance.new("SpecialMesh",RightBall) 
TipMesh.MeshType = Enum.MeshType.Sphere

local R2 = Instance.new("RopeConstraint",T)
R2.Length = 0.1
R2.Attachment0 = AN2
R2.Attachment1 = A3
R2.Restitution = 0.15

local R3 = Instance.new("RopeConstraint",T)
R3.Length = 0.1
R3.Attachment0 = AN1
R3.Attachment1 = A4
R3.Restitution = 0.15

game:service'RunService'.RenderStepped:connect(function()
	local p1 = A1.WorldPosition
	local p2 = A2.WorldPosition
	local dist1 = (p1 - p2).magnitude 

	Dee.CFrame = (CFrame.new(p1,p2) * CFrame.new(0,0,-dist1/2) * CFrame.Angles(math.rad(90),0,0))
	DeeMesh.Scale = Vector3.new(1,dist1,1) 
end)