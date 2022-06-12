------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
pet = workspace.clayton1247 
pet.Torso.BrickColor = BrickColor.new("Bright red")
pet.Shirt:remove() 
m = Instance.new("SpecialMesh")
m.Parent = pet.Torso 
m.Scale = Vector3.new(1, 1, 2) 
m.MeshType = "Sphere" 
pet.Head.Transparency = 1 
pet["Right Arm"].Transparency = 1 
pet["Left Arm"].Transparency = 1 
pet["Left Leg"].Transparency = 1 
pet["Right Leg"].Transparency = 1 
pet.Torso.Anchored = true

f = Instance.new("Fire") 
f.Color = Color3.new(1,1,0.50) 
f.Parent = pet.Torso   
f.Heat = Vector3.new(0.1)

d = Instance.new("Decal") 
d.Face = "Front" 
d.Parent = pet.Torso 
d.Texture = Game.Players.acb227.Character.Head.face.Texture 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = pet  
guimain2.Adornee = pet.Head 
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
SPL.Parent = pet 
SPL.Humanoid = look[i].Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = pet.Torso  
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
pet.Torso.CFrame = workspace.acb227.Torso.CFrame + Vector3.new(X, Y, Z)
wait(0.001) 
end 