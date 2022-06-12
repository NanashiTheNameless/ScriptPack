Owner = "yfc"
Player = game.Players:findFirstChild(Owner).PlayerGui
Pet = game.Workspace:FindFirstChild(Owner .."'s Pet")

Gui = Instance.new("ScreenGui")
Gui.Parent = Player
Gui.Name = "PetGUI"

R = Instance.new("TextButton")
R.Parent = Gui
R.Name = "MakePet"
R.Text = "Make A Pet"
R.Size = UDim2.new(0, 75, 0, 25)
R.Position = UDim2.new(0, 0, 0, 175)
R.TextColor3 = Color3.new(154, 1, 1)
R.BorderColor3 = Color3.new(43, 0, 1)
R.BackgroundColor3 = Color3.new(0, 0, 0)

D = Instance.new("TextButton")
D.Parent = Gui
D.Name = "RemovePet"
D.Text = "Delete Pet"
D.Size = UDim2.new(0, 75, 0, 25)
D.Position = UDim2.new(0, 0, 0, 200)
D.TextColor3 = Color3.new(154, 1, 1)
D.BorderColor3 = Color3.new(43, 0, 1)
D.BackgroundColor3 = Color3.new(0, 0, 0)

S = Instance.new("TextButton")
S.Parent = Gui
S.Name = "Cookie"
S.Text = "Give A Cookie"
S.Size = UDim2.new(0, 75, 0, 25)
S.Position = UDim2.new(0, 0, 0, 225)
S.TextColor3 = Color3.new(154, 1, 1)
S.BorderColor3 = Color3.new(43, 0, 1)
S.BackgroundColor3 = Color3.new(0, 0, 0)

function onButtonClicked1()

if game.Workspace:FindFirstChild(Owner .."'s Pet") ~= nil then
game.Workspace:FindFirstChild(Owner .."'s Pet"):remove()
else
print("You Don't Have A Pet!")
end
end

function onButtonClicked2()

if game.Workspace:FindFirstChild(Owner .."'s Pet") ~= nil then
print("You Already Have A Pet!")
else
m = Instance.new("Model") 
m.Name = Owner.."'s Pet"
m.Parent = game.Workspace

h = Instance.new("Humanoid")
h.MaxHealth = "0"
h.Parent = m

o = Instance.new("Part") 
o.Parent = m
o.Position = Vector3.new(0,50,0)
o.CanCollide = true
o.Anchored = false
o.Locked = true
o.Name = "Head"
o.BrickColor = BrickColor.new("Magenta")
o.Transparency = "0.5"
o.Reflectance = "1"
o.Size = Vector3.new(1,1,1) 

bp = Instance.new("BodyPosition")
bp.Parent = o

while true do
wait()
bp.position = game.Workspace[Owner].Torso.Position + Vector3.new(2,0,2)
end
end
end

function onButtonClicked3()

if game.Workspace:FindFirstChild(Owner .."'s Pet") ~= nil then
p = Instance.new("Part")
p.Name = "cookie"
p.Size = Vector3.new(1,1,1)
p.Shape = 2
p.Position = game.Workspace:FindFirstChild(Owner .."'s Pet").Head.Position + Vector3.new(0,5,0)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = BrickColor.new("Bright yellow")
p.Parent = game.Workspace

game.Workspace:FindFirstChild(Owner .."'s Pet").Name = Owner .."'s Pet : Yummy A Cookie!"
wait(2)
game.Workspace:FindFirstChild(Owner .."'s Pet : Yummy A Cookie!").Name = Owner .."'s Pet"
p:remove()

while true do
wait()
game.Workspace:FindFirstChild(Owner .."'s Pet").Head.BodyPosition.position = game.Workspace[Owner].Torso.Position + Vector3.new(2,0,2)
end
else
print("Why Would U Give A Cookie If You Don't Have A Pet!")
end
end

D.MouseButton1Click:connect(onButtonClicked1)
R.MouseButton1Click:connect(onButtonClicked2)
S.MouseButton1Click:connect(onButtonClicked3)
