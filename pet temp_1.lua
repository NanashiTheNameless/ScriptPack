script/---------------pet acb227 is makin------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
ply = Game.Players.acb227 
Owner = ply.Character
admin = "acb227" 
script.Parent = ply 

local orb = Instance.new("Part") 
local h = Instance.new("Humanoid") 
local m = Instance.new("Model") 

m.Name = "Head" 
m.Parent = Owner 
orb.Name = "Head" 
orb.Parent = m 
orb.formFactor = "Plate" 
orb.BrickColor = BrickColor.new("Bright red") 
orb.Size = Vector3.new(2, 2, 2) 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
orb.LeftSurface = "Motor"
orb.RightSurface = "Motor"
orb.Shape = "Ball" 
orb.Transparency = 0.4 
orb.Reflectance = 0 
orb.Anchored = true 
orb.CanCollide = false 
orb.Locked = true 
h.Parent = m 
h.MaxHealth = 0 
h.Health = 0 
orb.Name = "Head" 
wait(.1) 
m.Name = "acb227's Pet" 
h = Instance.new("Fire") 
h.Parent = orb 
--functions
function spl(part, parent, color, time) 

-------------------------commands 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill/" then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character:BreakJoints() 
end 
end 
end 
end 
ply.Chatted:connect(onChatted) 
-------------------------always leave this last or ur commands might now work 
while true do 
orb.CFrame = Owner.Head.CFrame + Vector3.new(0,5,0) 
wait(0.002) 
end 

