--[[mediafire password gtfo]]--												
zeta = game.Players.yfc 
main = "Really black" 
range = 24
tor = zeta.Character.Torso 
bp = Instance.new("Model") 
bp.Parent = zeta.Character 
bp.Name = "Creating Bubble...." 


script.Parent = bp 


hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Parent = bp 


head = Instance.new("Part")  --head = backpack
head.Parent = bp 
head.Size = tor.Size 
head.Name = "Head" 
head.BrickColor = BrickColor.new(main) 
head.TopSurface = "Smooth" 
head.BottomSurface = "Smooth" 
head:BreakJoints() 


weld = Instance.new("Weld") 
weld.Parent = tor 
weld.Part0 = tor 
weld.Part1 = head 
weld.C0 = CFrame.new(0,0,1) * CFrame.Angles(0,0,0) 


head2 = Instance.new("Part") 
head2.Parent = bp 
head2.Size = Vector3.new(1,1,1) 
head2.Name = "Shield" 
head2.BrickColor = BrickColor.new("Really blue") 
head2.TopSurface = "Smooth" 
head2.Transparency = 0.6 
head2.CanCollide = false 
head2.BottomSurface = "Smooth" 
head2:BreakJoints() 


msh = Instance.new("SpecialMesh") 
msh.MeshType = "Sphere" 
msh.Parent = head2 
msh.Scale = Vector3.new(1,1,1) 


head2:BreakJoints() 


weld = Instance.new("Weld") 
weld.Parent = tor 
weld.Part0 = tor 
weld.Part1 = head2 
weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0) 
for i = 1, 60 do 
wait() 
msh.Scale = msh.Scale + Vector3.new(0.7,0.6,0.7) 
wait() 
end 
bp.Name = "Bubble Activated"  

function fire(player) 
human = player.Character:findFirstChild("Humanoid") 
if human ~= nil then 
lasa = Instance.new("SelectionPartLasso") 
lasa.Parent = game.Workspace 
lasa.Humanoid = human 
lasa.Part = head 
lasa.Color = BrickColor.new("Really black") 
wait(0.01) 
human.Parent:BreakJoints() 
lasa:Remove() 
end 
end 


while true do 
wait() 
play = game.Players:GetChildren() 
for i = 1, #play do 
if play[i].Name ~= zeta.Name then 
if play[i].Character ~= nil then 
if play[i].Character:findFirstChild("Torso") ~= nil then 
torso = play[i].Character:findFirstChild("Torso") 
if math.ceil((head2.Position - torso.Position).magnitude) <= range then 
fire(play[i]) 
end 
end 
end 
end 
end 
end 