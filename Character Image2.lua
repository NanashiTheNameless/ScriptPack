local/--Character Image script by Lordsheen. Have fun xD 

vip = game.Players.LocalPlayer.Name 
local mod = Instance.new("Model") 
mod.Parent = game.Players.LocalPlayer.Character 
mod.Name = "CI" 
local P1 = Instance.new("Part") 
P1.Parent = mod 
P1.Name = "P1" 
P1.Anchored = true 
P1.Size = Vector3.new(1, 8.4, 6) 
P1.Transparency = 0.5 
P1.TopSurface = "Smooth" 
P1.BottomSurface = "Smooth" 
P1.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(3,1.8,0) 
wait() 
P1.Anchored = true 

local guimain = Instance.new("BillboardGui") 
guimain.Name = "Gui" 
guimain.Parent = P1 
guimain.Adornee = P1 
guimain.Size = UDim2.new(0, 250, 0, 10) 
guimain.StudsOffset = (Vector3.new(1, 3, 0)) 

local T1 = Instance.new("TextLabel") 
T1.Text = "" 
T1.Parent = guimain 
T1.Size = UDim2.new(0.700000167, 0, 0, 20) 
T1.BackgroundColor = BrickColor:Black() 
T1.TextColor = BrickColor:White() 
T1.Visible = true 

local T2 = Instance.new("ImageLabel") 
T2.Parent = guimain 
T2.Transparency = 1 
T2.Size = UDim2.new(0, 50, 0, 50) 
T2.Position = UDim2.new(0.699999928, -25, 0, -15) 
T2.Image = "" 
T2.BackgroundColor = BrickColor:Black() 

local T3 = Instance.new("ImageLabel") 
T3.Parent = guimain 
T3.Transparency = 1 
T3.Size = UDim2.new(0, 50, 0, 50) 
T3.Position = UDim2.new(0, -25, 0, -15) 
T3.Image = "" 
T3.BackgroundColor = BrickColor:Black() 

local D1 = Instance.new("Decal") 
D1.Parent = P1 
D1.Face = "Right" 
D1.Texture = "" 

local D2 = Instance.new("Decal") 
D2.Parent = P1 
D2.Face = "Left" 
D2.Texture = "" 

function onChatted(msg) 
if (string.sub(msg:lower(),1,5) == "show/") then
name = string.sub(msg,6)
T1.Text = "" ..name 
T2.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=" ..name 
T3.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=" ..name 
D1.Texture = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=" ..name 
D2.Texture = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=" ..name  
end 
end 
vip.Chatted:connect(onChatted) 
script.Parent = game.Players.LocalPlayer.Character.CI 
