local name = "acb227"
local players = game:GetService("Players")
local me = players:FindFirstChild(name)
local char = me.Character 
script.Parent = char
script.Name = "_Main" 
local mimic = "acb227"
local protectbool = true
local count = 0
local protect = {}
mo = Instance.new("Model") 
mo.Parent = char 
mo.Name = "Mimicatron" 
head = Instance.new("Part") 
head.Parent = mo 
head.Name = "Head" 
head.CanCollide = false 
head.formFactor = "Symmetric" 
head.Transparency = 0.45 
head.BrickColor = BrickColor.new("Bright green") 
head.Size = Vector3.new(2, 1, 1) 
head.Anchored = true 
i = Instance.new("SpecialMesh")
i.Scale = Vector3.new(1.3, 1.3, 1.3)
i.Parent = head 
---------------------------------
torso = Instance.new("Part") 
torso.Parent = mo 
torso.CanCollide = false 
torso.Name = "Torso" 
torso.formFactor = "Symmetric" 
torso.Transparency = 0.45 
torso.BrickColor = BrickColor.new("Bright green") 
torso.Size = Vector3.new(2, 2, 1) 
torso.Anchored = true 
is = Instance.new("SpecialMesh")
is.MeshType = "Brick" 
is.Scale = Vector3.new(1, 1, 1)
is.Parent = torso 
---------------------------------
ra = Instance.new("Part") 
ra.Parent = mo 
ra.CanCollide = false 
ra.Name = "RA" 
ra.formFactor = "Symmetric" 
ra.Transparency = 0.45 
ra.BrickColor = BrickColor.new("Bright green") 
ra.Size = Vector3.new(1, 2, 1) 
ra.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ra 
---------------------------------
la = Instance.new("Part") 
la.CanCollide = false 
la.Parent = mo 
la.Name = "LA" 
la.formFactor = "Symmetric" 
la.Transparency = 0.45 
la.BrickColor = BrickColor.new("Bright green") 
la.Size = Vector3.new(1, 2, 1) 
la.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = la 
---------------------------------
---------------------------------
rl = Instance.new("Part") 
rl.Parent = mo 
rl.CanCollide = false 
rl.Name = "RL" 
rl.formFactor = "Symmetric" 
rl.Transparency = 0.45 
rl.BrickColor = BrickColor.new("Bright green") 
rl.Size = Vector3.new(1, 2, 1) 
rl.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = rl 
---------------------------------
ll = Instance.new("Part") 
ll.Parent = mo 
ll.CanCollide = false 
ll.Name = "LL" 
ll.formFactor = "Symmetric" 
ll.Transparency = 0.45 
ll.BrickColor = BrickColor.new("Bright green") 
ll.Size = Vector3.new(1, 2, 1) 
ll.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ll 
---------------------------------
fire = Instance.new("Fire") 
fire.Parent = torso 
fire.Size = 10 
fire.Heat = 2 
fire.Color = Color3.new(0, 1, 0) 
fire.SecondaryColor = Color3.new(0, 102, 0) 
    local gui = Instance.new("BillboardGui")
    gui.Parent = mo
    gui.Adornee = head
    gui.Size = UDim2.new(1, 0, 1, 0)
    gui.StudsOffset = Vector3.new(0, 3, 0)
    local frame = Instance.new("Frame")
    frame.Parent = gui
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    local text = Instance.new("TextLabel")
    text.Parent = frame
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundTransparency = 1
    text.Text = mo.Name.. " Tac -- " ..me.Name 
---------------------------------
function SPL(Color, Target, Part, Time)
    coroutine.resume(coroutine.create(function()
        local SPL = Instance.new("SelectionPartLasso", Workspace)
        SPL.Color = BrickColor.new(Color)
        SPL.Humanoid = Target
        SPL.Part = Part
        wait(Time)
        pcall(function() SPL:Remove() end)
    end))
end
function sb(color, adorn, time) 
coroutine.resume(coroutine.create(function()
local SB = Instance.new("SelectionBox") 
SB.Parent = head
SB.Adornee = adorn
SB.Color = BrickColor.new(color) 
wait(time) 
pcall(function() SB:Remove() end)
end))
end 
---------------------------------
function talk(msg) 
if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
human = look[i].Character.Humanoid 
SPL("Bright red", human, head, 1.5)
sb("Bright red", human.Parent, 1.5) 
human.Parent:BreakJoints() 
end 
end 
end 
if string.sub(msg, 1, 7) == "follow " then 
said = string.lower(string.sub(msg, 8)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
mimic = look[i].Name 
end 
end 
end 
if string.sub(msg, 1, 8) == "protect " then 
said = string.lower(string.sub(msg, 9)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
table.insert(protect,look[i].Name)
end 
end 
end 
if string.sub(msg, 1, 10) == "unprotect " then 
said = string.lower(string.sub(msg, 11)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
table.remove(protect,look[i].Name)
end 
end 
end 
if msg == "exitall" then 
mo:remove() 
script:remove() 
end 
end 
me.Chatted:connect(talk) 
---------------------------------
local x = 5
local y = 0
local z = 0
coroutine.wrap(function()
while true do
local clone = players:FindFirstChild(mimic)
if clone == nil then return end
head.CFrame = clone.Character.Head.CFrame + Vector3.new(x,y,z)
torso.CFrame = clone.Character.Torso.CFrame + Vector3.new(x,y,z)
ra.CFrame = clone.Character["Right Arm"].CFrame + Vector3.new(x,y,z)
la.CFrame = clone.Character["Left Arm"].CFrame + Vector3.new(x,y,z)
rl.CFrame = clone.Character["Right Leg"].CFrame + Vector3.new(x,y,z)
ll.CFrame = clone.Character["Left Leg"].CFrame + Vector3.new(x,y,z)
if protectbool == true then
count = count + 1
for i = 1,#protect do
if protect[count] == nil then return end
if players:FindFirstChild(protect[count]) == nil then return end
if players[protect[count]].Character == nil then return end
for i,v in pairs(players:GetPlayers()) do
if (players[protect[count]].Character.Torso.Position - v.Character.Torso.Position).magnitude < 10 then
SPL("Bright green", v.Character.Humanoid, head, 1.5)
sb("Bright green", v.Character.Humanoid, 1.5) 
if v.Name == protect[count] then return end
for a,t in ipairs(protect) do
if v.Name == t then return end
v.Character:BreakJoints()
end
end
end
end
end 
wait()
end
end)()
