me = Game.Players.acb227 
rdist = 15 
mod = Instance.new("Model") 
mod.Parent = me.Character 
mod.Name = "mod" 
local dist = rdist * 2 

orb = Instance.new("Part")
orb.Parent = mod 
orb.Name = "Head" 
orb.Shape = "Ball" 
orb.BrickColor = BrickColor.new("Mid grey") 
orb.Anchored = true
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.Size = Vector3.new(2, 2, 2) 
orb.CanCollide = false 

local guimain1 = Instance.new("BillboardGui") 
guimain1.Parent = mod 
guimain1.Adornee = orb 
guimain1.Size = UDim2.new(0, 80, 0, 4) 
guimain1.StudsOffset = (Vector3.new(0, 2, 0)) 

T1 = Instance.new("TextLabel") 
T1.Parent = guimain1 
T1.Size = UDim2.new(0, 0, 0, 0) 
T1.Position = UDim2.new(0, 0, 0, 0) 
T1.Text = "Dist :  " ..dist 
T1.BackgroundTransparency = 1
T1.BackgroundColor = BrickColor.new(1003)
T1.TextColor = BrickColor.new(1003) 
T1.FontSize = "Size18"

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = mod 
guimain2.Adornee = orb 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 8, 0)) 

T2 = Instance.new("TextLabel") 
T2.Parent = guimain2 
T2.Size = UDim2.new(0, 0, 0, 0) 
T2.Position = UDim2.new(0, 0, 0, 0) 
T2.Text = "acb227's Guard ball, and admin :P"
T2.BackgroundTransparency = 1
T2.BackgroundColor = BrickColor.new(1003)
T2.TextColor = BrickColor.new(1003) 
T2.FontSize = "Size18" 

function onChatted(msg) 
if string.sub(msg, 1, 6) == "dist/ " then 
said = string.lower(string.sub(msg, 7)) 
dist = said
wait() 
T1.Text = "Dist :  " ..dist " "
end 
end 
me.Chatted:connect(onChatted) 

while true do
wait(0.001) 
orb.CFrame = me.Character.Head.CFrame + Vector3.new(0, 3, 0)
end 