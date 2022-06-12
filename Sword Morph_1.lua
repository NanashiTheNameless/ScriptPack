me = "acb227" 
Head = game.Players[me].Character.Head 
Torso = game.Players[me].Character.Torso 
RA = game.Players[me].Character["Right Arm"] 
LA = game.Players[me].Character["Left Arm"] 
RL = game.Players[me].Character["Right Leg"] 
LL = game.Players[me].Character["Left Leg"] 
RL:Remove() 
LL:Remove() 
Head.Transparency = 1
RA.Transparency = 1 
LA.Transparency = 1 
RL.Transparency = 1 
LL.Transparency = 1 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Torso 
Mesh.MeshType = "FileMesh" 
Mesh.MeshId = "aff3691a569e9eca80d3b96a35525e7f"
Mesh.Scale = Vector3.new(0.3, 0.3, 0.3) 
Torso.BrickColor = BrickColor.new("Bright yellow" )
Torso.Reflectance = 0.5


shield = Torso 
shield.Size = Vector3.new(1,1,1) 
shield.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = Head 
w.Part0 = shield 
local C1 = Head.CFrame 
local C0 = Head.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = Head 


shield2 = Head 
shield2.Size = Vector3.new(1,1,1) 
shield2.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = shield 
w.Part0 = shield2 
local C1 = shield.CFrame 
local C0 = shield.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = shield 


script.Parent = Head
function onTouched(part)
local h = part.Parent:findFirstChild("Right Arm")
if h~=nil then 
wait()
local w = Instance.new("Weld") 
w.Part1 =  h 
w.Part0 = script.Parent 
local C1 = h.CFrame 
local C0 = h.CFrame + Vector3.new(0,0,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = h 
end
end
script.Parent.Touched:connect(onTouched)


Head.face:Remove()	