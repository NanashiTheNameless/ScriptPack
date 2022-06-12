vip = game.Players.yfc 
full = false 
selected = nil 
mode = 1 
Player = "yfc" 
Character = game:GetService("Players"):findFirstChild(Player).Character 

posx = 3 
posz = 0 

guix = 15 
guiz = 0 

Users = {"yfc"} 

m = Instance.new("Model") 
m.Parent = script 

mc = m:GetChildren() 

local sb = Instance.new("SelectionBox") 
sb.Parent = m 
sb.Adornee = nil 

admGUI = Instance.new("ScreenGui") 
admGUI.Parent = game.Players[Users[1]].PlayerGui 
admGUI.Name = "GUI1" 

local TextButtonm = Instance.new("TextButton") 
TextButtonm.Parent = admGUI 
TextButtonm.Name = "kss" 
TextButtonm.BackgroundTransparency = 0.2 
TextButtonm.Position = UDim2.new(0, guix+955, 0, guiz+150) 
TextButtonm.Size = UDim2.new(0, 15, 0, 15) 
TextButtonm.Text = ">" 
TextButtonm.BackgroundColor = BrickColor.new("Really red") 
local Textlabelm = Instance.new("TextLabel") 
Textlabelm.Parent = admGUI 
Textlabelm.Name = "kss" 
Textlabelm.BackgroundTransparency = 0.2 
Textlabelm.Position = UDim2.new(0, guix+955, 0, guiz+125) 
Textlabelm.Size = UDim2.new(0, 100, 0, 15) 
Textlabelm.Text = "Mode: " ..mode.. " " 
Textlabelm.BackgroundColor = BrickColor.new("Really red") 
function clickm() 
mode = mode + 1 
Textlabelm.Text = "Mode: " ..mode.. " " 
if mode > 6 then 
mode = 1 
Textlabelm.Text = "Mode: " ..mode.. " " 
end 
end 
TextButtonm.MouseButton1Down:connect(clickm) 

for i = 1,100 do 

local p = Instance.new("Part") 
p.Parent = m 
p.Name = ""..i.."" 
p.Size = Vector3.new(3,1,3) 
p.BrickColor = BrickColor.new("Black") 
p.CFrame = CFrame.new(posx,1,posz) 
p.Anchored = true 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
local pm = Instance.new("BlockMesh", p) 

if posx == 30 then 
posx = 0 
posz = posz + 3 
end 

posx = posx + 3 

local TextButton1 = Instance.new("TextButton") 
TextButton1.Parent = admGUI 
TextButton1.Name = "ks" 
TextButton1.BackgroundTransparency = 0.2 
TextButton1.Position = UDim2.new(0, guix+975, 0, guiz+150) 
TextButton1.Size = UDim2.new(0, 15, 0, 15) 
TextButton1.Text = p.Name 
TextButton1.BackgroundColor = BrickColor.new("Really red") 

function click() 
if mode == 1 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
cf = part.CFrame 
part.Size = part.Size + Vector3.new(0, 2, 0) 
part.CFrame = cf 
sb.Adornee = part
end 
if mode == 2 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
cf = part.CFrame 
part.Size = part.Size - Vector3.new(0, 2, 0) 
part.CFrame = cf 
sb.Adornee = part
end 
if mode == 3 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
part.BrickColor = BrickColor.new("Bright green") 
part.Transparency = 0 
part.Material = "Plastic" 
sb.Adornee = part
end 
if mode == 4 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
part.BrickColor = BrickColor.new("Bright blue") 
part.Transparency = 0.5 
part.Material = "Plastic" 
sb.Adornee = part
end 
if mode == 5 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
part.BrickColor = BrickColor.new("Dark stone grey") 
part.Transparency = 0 
part.Material = "Plastic" 
sb.Adornee = part
end 
if mode == 6 then 
for _,v in pairs(m:GetChildren()) do 
if v.Name == TextButton1.Text then 
part = v 
end 
end 
part.BrickColor = BrickColor.new("Reddish brown") 
part.Transparency = 0 
part.Material = "Wood" 
sb.Adornee = part
end 
end 
TextButton1.MouseButton1Down:connect(click) 

if guix == 150 then 
guix = 0 
guiz = guiz + 15 
end 

guix = guix + 15 

wait() 
end 

 
