User = game.Players.rigletto
script.Parent = nil
enemy = false
if User:LoadNumber("NPC") == nil then
User:SaveNumber("NPC", 0)
end
Created = User:LoadNumber("NPC")
NewNPC = function()
Created = Created + 1
User:WaitForDataReady()
User:SaveNumber("NPC", Created)
local Model = Instance.new("Model", User.Character)
if enemy == false then
Model.Name = "NPC_"..Created
elseif enemy == true then
Model.Name = "ENEMY_NPC_"..Created
elseif enemy == "ally" then
Model.Name = "ALLY_NPC_"..Created
end

local Torso = Instance.new("Part", Model)
Torso.formFactor = "Symmetric"
Torso.Size = Vector3.new(2,2,1)
Torso.Name = "Torso"
if enemy == "ally" then
Torso.BrickColor = BrickColor.new("Camo")
elseif enemy == true then
Torso.BrickColor = BrickColor.new("Bright red")
elseif enemy == false then
Torso.BrickColor = BrickColor.new("Stone grey")
end

if enemy == true then
Torso.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) ~= "ENEMY" and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 2
end
end)
elseif enemy == "ally" then

Torso.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) == "ENEMY" then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 3
end
end)
end

local Head = Instance.new("Part", Model)
Head.Name = "Head"
Head.formFactor = "Symmetric"
Head.Size = Vector3.new(2,1,1)
Head.BrickColor = BrickColor.new("Cool yellow")

if enemy == true then
Head.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) ~= "ENEMY" and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 2
end
end)
elseif enemy == "ally" then

Head.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) == "ENEMY" then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 3
end
end)
end


local Headm = Instance.new("SpecialMesh", Head)
Headm.Scale = Vector3.new(1.25,1.25,1.25)

local Headw = Instance.new("Weld", Head)
Headw.Part0 = Torso
Headw.Part1 = Head
Headw.C1 = CFrame.new(0,-1.5,0)



local RA = Instance.new("Part", Model)
RA.formFactor = "Symmetric"
RA.Size = Vector3.new(1,2,1)
RA.Name = "Right Arm"
RA.BrickColor = BrickColor.new("Cool yellow")

if enemy == true then
RA.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) ~= "ENEMY" and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 2
end
end)
elseif enemy == "ally" then

RA.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) == "ENEMY" then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 3
end
end)
end

RAw = Instance.new("Weld", RA)
RAw.Part0 = Torso
RAw.Part1 = RA
RAw.C1 = CFrame.new(-1.5,0,0)

local LA = Instance.new("Part", Model)
LA.formFactor = "Symmetric"
LA.Size = Vector3.new(1,2,1)
LA.Name = "Left Arm"
LA.BrickColor = BrickColor.new("Cool yellow")

if enemy == true then
LA.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) ~= "ENEMY" and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 2
end
end)

elseif enemy == "ally" then

LA.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and string.sub(hit.Parent.Name,1,5) == "ENEMY" then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 3
end
end)
end

local LAw = Instance.new("Weld", LA)
LAw.Part0 = Torso
LAw.Part1 = LA
LAw.C1 = CFrame.new(1.5,0,0)

local LL = Instance.new("Part", Model)
LL.formFactor = "Symmetric"
LL.Size = Vector3.new(1,2,1)
LL.Name = "Left Leg"
LL.BrickColor = BrickColor.new("Bright blue")

local LLw = Instance.new("Weld", LL)
LLw.Part0 = Torso
LLw.Part1 = LL
LLw.C1 = CFrame.new(0.5,2,0)

local RL = Instance.new("Part", Model)
RL.formFactor = "Symmetric"
RL.Size = Vector3.new(1,2,1)
RL.Name = "Right Leg"
RL.BrickColor = BrickColor.new("Bright blue")

local RLw = Instance.new("Weld", RL)
RLw.Part0 = Torso
RLw.Part1 = RL
RLw.C1 = CFrame.new(-0.5,2,0)
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.MaxHealth = 100
Humanoid.Health = 100
Humanoid.WalkSpeed = 16

Model:MakeJoints()
Model:MoveTo(User.Character.Torso.Position)
if enemy == false then
while true do
if Humanoid.Health <= 0 then
Model:Remove()
end
Humanoid.Sit = false
Humanoid.PlatformStand = false
Humanoid:MoveTo(Vector3.new(math.random(-100,100),1,math.random(-100,100)), workspace.Base)
wait(8)
Humanoid.Jump = true
end
elseif enemy == true then

while true do
for i,v in pairs(game.Players:children()) do
if v.Name ~= User.Name and v.Character.Parent == workspace then
repeat wait()

if Humanoid.Health <= 0 then
Model:Remove()
end
Humanoid.Sit = false
Humanoid.PlatformStand = false
Humanoid:MoveTo(v.Character.Torso.Position, workspace.Base)
until v.Character.Humanoid.Health <= 0
end
end
wait(2)
Humanoid.Jump = true
end


elseif enemy == "ally" then

while true do
for i,v in pairs(User.Character:children()) do
if string.sub(v.Name,1,5) == "ENEMY" and v.Humanoid.Health ~= 0 then
repeat wait()

Humanoid.Sit = false
Humanoid.PlatformStand = false

Humanoid:MoveTo(v.Torso.Position, workspace.Base)
until v.Humanoid.Health <= 0
end
end
if Humanoid.Health <= 0 then
Model:Remove()
end
wait(2)
Humanoid.Jump = true
end

end
end




NewNPCL = function()
local Model = Instance.new("Model", workspace)
Model.Name = "NPC_LEADER"

local Torso = Instance.new("Part", Model)
Torso.formFactor = "Symmetric"
Torso.Size = Vector3.new(2,2,1)
Torso.Name = "Torso"

Torso.BrickColor = BrickColor.new("Really black")

--[[Torso.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= "NPC_LEADER" then
hit.Parent:BreakJoints()
end
end)--]]

local Head = Instance.new("Part", Model)
Head.Name = "Head"
Head.formFactor = "Symmetric"
Head.Size = Vector3.new(2,1,1)
Head.BrickColor = BrickColor.new("Cool yellow")


local Headm = Instance.new("SpecialMesh", Head)
Headm.Scale = Vector3.new(1.25,1.25,1.25)

local Headw = Instance.new("Weld", Head)
Headw.Part0 = Torso
Headw.Part1 = Head
Headw.C1 = CFrame.new(0,-1.5,0)



local RA = Instance.new("Part", Model)
RA.formFactor = "Symmetric"
RA.Size = Vector3.new(1,2,1)
RA.Name = "Right Arm"
RA.BrickColor = BrickColor.new("Cool yellow")


RAw = Instance.new("Weld", RA)
RAw.Part0 = Torso
RAw.Part1 = RA
RAw.C1 = CFrame.new(-1.5,0,0)

local LA = Instance.new("Part", Model)
LA.formFactor = "Symmetric"
LA.Size = Vector3.new(1,2,1)
LA.Name = "Left Arm"
LA.BrickColor = BrickColor.new("Cool yellow")

local LAw = Instance.new("Weld", LA)
LAw.Part0 = Torso
LAw.Part1 = LA
LAw.C1 = CFrame.new(1.5,0,0)

local LL = Instance.new("Part", Model)
LL.formFactor = "Symmetric"
LL.Size = Vector3.new(1,2,1)
LL.Name = "Left Leg"
LL.BrickColor = BrickColor.new("Bright blue")

local LLw = Instance.new("Weld", LL)
LLw.Part0 = Torso
LLw.Part1 = LL
LLw.C1 = CFrame.new(0.5,2,0)

local RL = Instance.new("Part", Model)
RL.formFactor = "Symmetric"
RL.Size = Vector3.new(1,2,1)
RL.Name = "Right Leg"
RL.BrickColor = BrickColor.new("Bright blue")

local RLw = Instance.new("Weld", RL)
RLw.Part0 = Torso
RLw.Part1 = RL
RLw.C1 = CFrame.new(-0.5,2,0)
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.MaxHealth = math.huge
Humanoid.WalkSpeed = 16

Model:MakeJoints()
Model:MoveTo(Vector3.new(0,20,0))
User.Character = Model

end

NewNPCL()



sg = Instance.new("ScreenGui", User.PlayerGui)

button = Instance.new("TextButton", sg)
button.Position = UDim2.new(0.1, 0, 0.4, 0)
button.Size = UDim2.new(0.1, 0, 0.1, 0)
button.Text = "Create NPC"
button.TextColor3 = BrickColor.new("White").Color
button.Style = 1
button.TextWrap = true
button.FontSize = 3

button2 = Instance.new("TextButton", sg)
button2.Position = UDim2.new(0.2, 0, 0.4, 0)
button2.Size = UDim2.new(0.1, 0, 0.0333, 0)
button2.Text = "Neutral"
button2.TextColor3 = BrickColor.new("White").Color
button2.Style = 1
button2.TextWrap = true
button2.FontSize = 3

button22 = Instance.new("TextButton", sg)
button22.Position = UDim2.new(0.2, 0, 0.4333, 0)
button22.Size = UDim2.new(0.1, 0, 0.0333, 0)
button22.Text = "Ally"
button22.TextColor3 = BrickColor.new("White").Color
button22.Style = 1
button22.TextWrap = true
button22.FontSize = 3

button222 = Instance.new("TextButton", sg)
button222.Position = UDim2.new(0.2, 0, 0.4666, 0)
button222.Size = UDim2.new(0.1, 0, 0.0333, 0)
button222.Text = "Enemy"
button222.TextColor3 = BrickColor.new("White").Color
button222.Style = 1
button222.TextWrap = true
button222.FontSize = 3
button2.MouseButton1Down:connect(function()
enemy = false
end)
button22.MouseButton1Down:connect(function()
enemy = "ally"
end)
button222.MouseButton1Down:connect(function()
enemy = true
end)
button.MouseEnter:connect(function()
button.Text = "Health: 100 WalkSpeed: 16"
button.FontSize = 2
end)

button.MouseLeave:connect(function()
button.Text = "Create NPC"
button.FontSize = 3
end)

button.MouseButton1Down:connect(function()
NewNPC()
end)