player = game.Players.lordsheen 


player.Character.Head.Size = (Vector3.new(1,1,1)) 
player.Character.Head.Mesh:remove() 

player.Character.Torso.Size = (Vector3.new(2,1,2)) 

w = Instance.new("Weld") 
w.Part0 = player.Character.Head 
w.Part1 = player.Character.Torso 
w.Parent = player.Character.Torso 
w.C0 = CFrame.new(0, -1, 1)--*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

player.Character["Right Leg"].Size = Vector3.new(1,1,1) 

w = Instance.new("Weld") 
w.Part0 = player.Character["Right Leg"] 
w.Part1 = player.Character.Torso 
w.Parent = player.Character["Right Leg"] 
w.C0 = CFrame.new(0.5, 1, -0.5)--*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

player.Character["Left Leg"].Size = Vector3.new(1,1,1) 

w = Instance.new("Weld") 
w.Part0 = player.Character["Left Leg"] 
w.Part1 = player.Character.Torso 
w.Parent = player.Character["Left Leg"] 
w.C0 = CFrame.new(-0.5, 1, -0.5)--*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

player.Character["Left Arm"].Size = Vector3.new(1,1,1) 

w = Instance.new("Weld") 
w.Part0 = player.Character["Left Arm"] 
w.Part1 = player.Character.Torso 
w.Parent = player.Character["Left Arm"] 
w.C0 = CFrame.new(-0.5, 1, 0.5)--*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

player.Character["Right Arm"].Size = Vector3.new(1,1,1) 

w = Instance.new("Weld") 
w.Part0 = player.Character["Right Arm"] 
w.Part1 = player.Character.Torso 
w.Parent = player.Character["Right Arm"] 
w.C0 = CFrame.new(0.5, 1, 0.5)--*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

local tail = Instance.new("Part") 
tail.Parent = player.Character 
tail.Name = "Tail" 
tail.Size = Vector3.new(1,1,1) 
tail.BrickColor = player.Character.Torso.BrickColor 
tail.Locked = true 

local mesh1 = Instance.new("BlockMesh") 
mesh1.Parent = tail 
mesh1.Scale = Vector3.new(0.2,1,0.2) 


w = Instance.new("Weld") 
w.Parent = tail 
w.Part0 = tail 
w.Part1 = player.Character["Head"] 
w.C0 = CFrame.new(0,0,-2) 

local children = player.Character:GetChildren() 
for c = 1, #children do 
if children[c].className == "Hat" 
then 
children[c]:remove() 
end 
end 


p2 = player.Character:findFirstChild("Pants") 
if (p2 ~= nil) then 
p2:remove() 
end 

p2 = player.Character:findFirstChild("Shirt") 
if (p2 ~= nil) then 
p2:remove() 
end 

p2 = player.Character.Torso:findFirstChild("roblox") 
if (p2 ~= nil) then 
p2:remove() 
end 



local guimain = Instance.new("BillboardGui") 
guimain.Parent = player.Character 
guimain.Adornee = player.Character.Head 
guimain.Size = UDim2.new(0, 50, 0, 10) 
guimain.StudsOffset = (Vector3.new(0, 1, 0)) 


Woof = Instance.new("TextLabel") 
Woof.Parent = guimain 
Woof.Size = UDim2.new(1, 0, 0, 20) 
Woof.Position = UDim2.new(0, 0, 0, 0) 
Woof.Text = "WOOF!" 
Woof.Visible = false 





local mdl = Instance.new("Model") 
mdl.Parent = game.Workspace 
mdl.Name = "Kennel for "..player.Name 

local prt1 = Instance.new("Part") 
prt1.Parent = mdl 
prt1.Anchored = true 
prt1.Size = Vector3.new(10, 1.2, 6) 
prt1.Position = Vector3.new(1, 1, -6) 
prt1.Locked = true 
prt1.BrickColor = BrickColor.new("Brown") 

local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.Size = Vector3.new(10, 4.8, 1) 
prt.Position = Vector3.new(1, 4, -8.5) 
prt.Locked = true 
prt.BrickColor = BrickColor.new("Brown") 

local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.Size = Vector3.new(10, 4.8, 1) 
prt.Position = Vector3.new(1, 4, -3.5) 
prt.Locked = true 
prt.BrickColor = BrickColor.new("Brown") 

local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.Size = Vector3.new(1, 4.8, 4) 
prt.Position = Vector3.new(-3.5, 4, -6) 
prt.Locked = true 
prt.BrickColor = BrickColor.new("Brown") 

local prt = Instance.new("WedgePart") 
prt.Parent = mdl 
prt.Anchored = true 
prt.Size = Vector3.new(10, 2.4, 3) 
prt.Position = Vector3.new(1, 7.6, -7.5) 
prt.Locked = true 
prt.BrickColor = BrickColor:Green() 

local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.Size = Vector3.new(10, 2.4, 3) 
prt.Locked = true 
prt.Position = Vector3.new(1, 7.6, -4.5) 
prt.BrickColor = BrickColor:Green() 


local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.formFactor = "Plate" 
prt.Size = Vector3.new(1, 0.7, 4) 
prt.Locked = true 
prt.Position = Vector3.new(6.5, 0.6, -6) 
prt.BrickColor = BrickColor.new("Brown") 

local prt = Instance.new("Part") 
prt.Parent = mdl 
prt.Anchored = true 
prt.formFactor = "Plate" 
prt.Size = Vector3.new(1, 0.3, 4) 
prt.Locked = true 
prt.Position = Vector3.new(7.5, 0.6, -6) 
prt.BrickColor = BrickColor.new("Brown") 

local door = Instance.new("Part") 
door.Parent = mdl 
door.Anchored = true 
door.formFactor = "Plate" 
door.Size = Vector3.new(1, 4.8, 4) 
door.Locked = true 
door.Position = Vector3.new(5.5, 4, -6) 
door.BrickColor = BrickColor.new("Brown") 


local gui = Instance.new("ScreenGui") 
gui.Parent = player.PlayerGui 

local Button1 = Instance.new("TextButton") 
Button1.Parent = gui 
Button1.Size = UDim2.new(0,100,0,75) 
Button1.Position = UDim2.new(0,0,0,150) 
Button1.Text = "Poo" 

function onButtonClicked() 
local poopie = Instance.new("Part") 
poopie.Parent = game.Workspace 
poopie.Anchored = false 
poopie.formFactor = "Plate" 
poopie.BrickColor = BrickColor.new("Brown") 
poopie.Size = Vector3.new(1,0,1) 
poopie.CFrame = tail.CFrame + Vector3.new(0,-2,0) 
end 
Button1.MouseButton1Click:connect( onButtonClicked) 

local Button2 = Instance.new("TextButton") 
Button2.Parent = gui 
Button2.Size = UDim2.new(0,100,0,75) 
Button2.Position = UDim2.new(0,0,0,250) 
Button2.Text = "Pee" 

function onButtonClicked2() 
local poopie = Instance.new("Part") 
poopie.Parent = game.Workspace 
poopie.Anchored = false 
poopie.formFactor = "Plate" 
poopie.BrickColor = BrickColor:Yellow() 
poopie.Transparency = 0.5 
poopie.Size = Vector3.new(1,0,1) 
poopie.CFrame = tail.CFrame + Vector3.new(0,-2,0) 
msh = Instance.new("SpecialMesh") 
msh.Parent = poopie 
msh.MeshType = "Sphere" 
msh.Scale = (Vector3.new(1.5,1,1.5)) 

end 
Button2.MouseButton1Click:connect( onButtonClicked2) 

local Button3 = Instance.new("TextButton") 
Button3.Parent = gui 
Button3.Size = UDim2.new(0,100,0,75) 
Button3.Position = UDim2.new(0,0,0,350) 
Button3.Text = "Tail wag" 

function onButtonClicked3() 
w.C0 = CFrame.new(0.1,0,-2) 
wait() 
w.C0 = CFrame.new(0.2,0,-2) 
wait() 
w.C0 = CFrame.new(0.3,0,-2) 
wait() 
w.C0 = CFrame.new(0.4,0,-2) 
wait() 
w.C0 = CFrame.new(0.5,0,-2) 
wait() 
w.C0 = CFrame.new(0.4,0,-2) 
wait() 
w.C0 = CFrame.new(0.3,0,-2) 
wait() 
w.C0 = CFrame.new(0.2,0,-2) 
wait() 
w.C0 = CFrame.new(0.1,0,-2) 
wait() 
w.C0 = CFrame.new(0,0,-2) 
wait() 
w.C0 = CFrame.new(-0.1,0,-2) 
wait() 
w.C0 = CFrame.new(-0.2,0,-2) 
wait() 
w.C0 = CFrame.new(-0.3,0,-2) 
wait() 
w.C0 = CFrame.new(-0.4,0,-2) 
wait() 
w.C0 = CFrame.new(-0.5,0,-2) 
wait() 
w.C0 = CFrame.new(-0.4,0,-2) 
wait() 
w.C0 = CFrame.new(-0.3,0,-2) 
wait() 
w.C0 = CFrame.new(-0.2,0,-2) 
wait() 
w.C0 = CFrame.new(-0.1,0,-2) 
wait() 
w.C0 = CFrame.new(0,0,-2) 
end 
Button3.MouseButton1Click:connect( onButtonClicked3) 

local Button4 = Instance.new("TextButton") 
Button4.Parent = gui 
Button4.Size = UDim2.new(0,100,0,75) 
Button4.Position = UDim2.new(0,0,0,450) 
Button4.Text = "Bark" 

function onButtonClicked4() 
Woof.Visible = true 
wait(3) 
Woof.Visible = false 
end 
Button4.MouseButton1Click:connect( onButtonClicked4) 

local Button5 = Instance.new("TextButton") 
Button5.Parent = gui 
Button5.Size = UDim2.new(0,100,0,75) 
Button5.Position = UDim2.new(1,-100,0,150) 
Button5.Text = "Run" 

running = false 

function onButtonClicked5() 
if running == false then 
player.Character.Humanoid.WalkSpeed = 40 
running = true 
elseif running == true then 
player.Character.Humanoid.WalkSpeed = 16 
running = false 
end 
end 
Button5.MouseButton1Click:connect( onButtonClicked5) 

local Button6 = Instance.new("TextButton") 
Button6.Parent = gui 
Button6.Size = UDim2.new(0,100,0,75) 
Button6.Position = UDim2.new(1,-100,0,250) 
Button6.Text = "Kennel door closed." 

open = false 

function onButtonClicked6() 
if open == false then 
door.Transparency = 1 
door.CanCollide = false 
Button6.Text = "Kennel door open." 
open= true 
elseif open == true then 
door.Transparency = 0 
door.CanCollide = true 
Button6.Text = "Kennel door closed." 
open = false 
end 
end 
Button6.MouseButton1Click:connect( onButtonClicked6) 

local Button7 = Instance.new("TextButton") 
Button7.Parent = gui 
Button7.Size = UDim2.new(0,100,0,75) 
Button7.Position = UDim2.new(1,-100,0,350) 
Button7.Text = "Call Kennel" 



function onButtonClicked7() 
mdl:MoveTo(player.Character.Torso.Position + Vector3.new(0,-2,-10)) 
end 
Button7.MouseButton1Click:connect( onButtonClicked7) 



local Button8 = Instance.new("TextButton") 
Button8.Parent = gui 
Button8.Size = UDim2.new(0,100,0,75) 
Button8.Position = UDim2.new(1,-100,0,450) 
Button8.Text = "Goto Kennel" 



function onButtonClicked8() 
player.Character["Right Arm"].BottomSurface = "Smooth" 
player.Character["Left Arm"].BottomSurface = "Smooth" 
player.Character:MoveTo(prt1.Position + Vector3.new(0,3,0)) 
end 
Button8.MouseButton1Click:connect( onButtonClicked8) 

player.Character:MoveTo(player.Character.Torso.Position + Vector3.new(0,5,0)) 





