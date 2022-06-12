-------------------------------------
workspace.Scriptaxor.Torso.BrickColor = BrickColor.new("Bright red")
workspace.Scriptaxor.Shirt:remove() 
m = Instance.new("SpecialMesh")
m.Parent = workspace.Scriptaxor.Torso 
m.Scale = Vector3.new(1, 1, 1) 
m.MeshType = "Sphere" 
workspace.Scriptaxor.Head.Transparency = 1 
workspace.Scriptaxor["Right Arm"].Transparency = 1 
workspace.Scriptaxor["Left Arm"].Transparency = 1 
workspace.Scriptaxor["Left Leg"].Transparency = 1 
workspace.Scriptaxor["Right Leg"].Transparency = 1 
workspace.Scriptaxor.Torso.Anchored = true

f = Instance.new("Fire") 
f.Color = Color3.new(1,1,0.50) 
f.Parent = workspace.Scriptaxor.Torso   
f.Heat = Vector3.new(0.1)

d = Instance.new("Decal") 
d.Face = "Front" 
d.Parent = workspace.Scriptaxor.Torso 
d.Texture = Game.Players.acb227.Character.Head.face.Texture 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = workspace.Scriptaxor  
guimain2.Adornee = workspace.Scriptaxor.Head 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 0, 0, 0) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Pet : Nothing" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new("Bright red") 
T3.FontSize = "Size14"

vip = game.Players.acb227 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "heal " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Name = look[i].Character.Name 
T3.Text = "Pet : Healing " ..Name.. " ..."
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = workspace.Scriptaxor 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = workspace.Scriptaxor.Torso  
t = look[i].Character.Torso 
p = Instance.new("Part") 
p.Size = Vector3.new(1, 1, 1) 
p.Parent = Workspace
p.BrickColor = BrickColor.new("Bright red")
p.Transparency = 0.7
p.CanCollide = false 
mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(5, 5, 4) 
mesh.Parent = p 
mesh.MeshType = "Sphere" 
w1 = Instance.new("Weld") 
w1.Parent = t 
w1.Part0 = p 
w1.Part1 = t 
look[i].Character.Humanoid.Health = 100
wait(1)
T3.Text = "Pet : Nothing"  
SPL:Remove()
p:Remove()
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

X = 3
Y = 3
Z = 3
while true do 
workspace.Scriptaxor.Torso.CFrame = workspace.acb227.Torso.CFrame + Vector3.new(X, Y, Z)
wait(0.001) 
end 