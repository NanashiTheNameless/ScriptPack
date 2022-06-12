script/----=|[The Grand Four -Acb-]|=----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
script.Parent = game.workspace.acb227 
game.Workspace.acb227.Head.Transparency = 1
m = Instance.new("Model") 
m.Parent = game.Workspace.acb227
m.Name = " "
h = Instance.new("Humanoid") 
h.Parent = m 
h.MaxHealth = 100
h.Health = 100
h.MaxHealth = 0 
c = Instance.new("Part") 
c.Parent = m 
c.Name = "Head" 
c.Position = game.Workspace.acb227.Head.Position
c.Transparency = 0 
c.Reflectance = 0 
c.BrickColor = BrickColor.new ("Really black") 
c.Size = Vector3.new(2,1,2) 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Locked = true 
f = Instance.new("SpecialMesh")
f.Parent = c
f.Scale = Vector3.new(0.9,1,0.625)
w1 = Instance.new("Weld") 
w1.Parent = game.Workspace.acb227.Head
w1.Part0 = c
w1.Part1 = game.Workspace.acb227.Head
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
game.Workspace.acb227.Humanoid.WalkSpeed = 25 



local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = Workspace.acb227
guimain2.Adornee = game.Workspace.acb227.Head 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(1, 0, 0, 30) 
T3.Position = UDim2.new(-0.43, 0, 0, 0) 
T3.Text = "The  " 
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size12"

people = {"acb227", "xSoulStealerx", "Bob371", "Roblox", "Builderman", "NetworkServer", "cool12309", "crusher12555", "Scriptaxor", "Krammy", "Ericwho"} 
actions = {"ran", "slept", "swam", "raped", "kissed", "killed", "played", "hurt", "baked", "sang", "drank"} 
place = {"library", "school", "house", "factory", "hotel", "parking lot", "drive way", "garage", "back yard", "under the tree", "mall"} 

local peop = "poop" 
local peo = "poop" 
local pla = "poop" 
local doi = "poop" 

while true do 
p = math.random(1, 11) 
if p == 1 then 
peop = people[1] 
end 
if p == 2 then 
peop = people[2] 
end 
if p == 3 then 
peop = people[3] 
end 
if p == 4 then 
peop = people[4] 
end 
if p == 5 then 
peop = people[5] 
end 
if p == 6 then 
peop = people[6] 
end 
if p == 7 then 
peop = people[7] 
end 
if p == 8 then 
peop = people[8] 
end 
if p == 9 then 
peop = people[9] 
end 
if p == 10 then 
peop = people[10] 
end 
if p == 11 then 
peop = people[11] 
end 
p = math.random(1, 11) 
if p == 1 then 
pla = place[1] 
end 
if p == 2 then 
pla = place[2] 
end 
if p == 3 then 
pla = place[3] 
end 
if p == 4 then 
pla = place[4] 
end 
if p == 5 then 
pla = place[5] 
end 
if p == 6 then 
pla = place[6] 
end 
if p == 7 then 
pla = place[7] 
end 
if p == 8 then 
pla = place[8] 
end 
if p == 9 then 
pla = place[9] 
end 
if p == 10 then 
pla = place[10] 
end 
if p == 11 then 
pla = place[11] 
end 
p = math.random(1, 11) 
if p == 1 then 
peo = people[1] 
end 
if p == 2 then 
peo = people[2] 
end 
if p == 3 then 
peo = people[3] 
end 
if p == 4 then 
peo = people[4] 
end 
if p == 5 then 
peo = people[5] 
end 
if p == 6 then 
peo = people[6] 
end 
if p == 7 then 
peo = people[7] 
end 
if p == 8 then 
peo = people[8] 
end 
if p == 9 then 
peo = people[9] 
end 
if p == 10 then 
peo = people[10] 
end 
if p == 11 then 
peo = people[11] 
end 
p = math.random(1, 11) 
if p == 1 then 
doi = actions[1] 
end 
if p == 2 then 
doi = actions[2] 
end 
if p == 3 then 
doi = actions[3] 
end 
if p == 4 then 
doi = actions[4] 
end 
if p == 5 then 
doi = actions[5] 
end 
if p == 6 then 
doi = actions[6] 
end 
if p == 7 then 
doi = actions[7] 
end 
if p == 8 then 
doi = actions[8] 
end 
if p == 9 then 
doi = actions[9] 
end 
if p == 10 then 
doi = actions[10] 
end 
if p == 11 then 
doi = actions[11] 
end 
T3.Text = "Once, "  ..peop.. " was at a " ..pla.. " and " ..doi.. " with " ..peo.. "" 
wait(5) 
end 