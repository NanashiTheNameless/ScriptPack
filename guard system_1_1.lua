--[[mediafire gtfo password]]--

zeta = game.Players.yfc 
main = "Really black" 
range = 20 
guard = false 
tor = zeta.Character.Torso 
bp = Instance.new("Model") 
bp.Parent = zeta.Character 
bp.Name = "Backpack Guardian is on Stand..By" 
script.Parent = bp 
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.Parent = bp 
head = Instance.new("Part") 
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
head2.Transparency = 0.8 
head2.CanCollide = false 
head2.BottomSurface = "Smooth" 
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

function chat(msg) 
if string.sub(msg:lower(), 1, 8) == "guard/on" and guard == false then 
for i = 1, range*20 do 
wait() 
msh.Scale = msh.Scale + Vector3.new(0.1,0.085,0.1) 
end 
bp.Name = "Backpack Guardian; Auto-Attack Range:" ..range 
guard = true 
end 
if string.sub(msg:lower(), 1, 9) == "guard/off" and guard == true then 
for i = 1, range*20 do 
wait() 
msh.Scale = msh.Scale - Vector3.new(0.1,0.1,0.1) 
end 
guard = false 
bp.Name = "Backpack Guardian is on StandBy" 
end 
if string.sub(msg, 1, 6) == "laser/" then 
txt = string.sub(msg, 7) 
body = game.Players:GetChildren() 
for i = 1, #body do 
if body[i].Name == txt then 
fire(body[i]) 
end 
end 
end 
end 

zeta.Chatted:connect(chat) 


while true do 
wait() 
if guard == true then 
play = game.Players:GetChildren() 
for i = 1, #play do 
if play[i].Name ~= zeta.Name then 
if play[i].Character ~= nil then 
if play[i].Character:findFirstChild("Torso") ~= ni then 
if play[i].Character.Humanoid.Health < 1 then 
else 
torso = play[i].Character:findFirstChild("Torso") 
if math.ceil((torso.Position - head2.Position).magnitude) < range then 
fire(play[i]) 
end 
end 
end 
end 
end 
end 
end 
end