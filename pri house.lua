local allowed = {"acb227", "Visualist", "Flasket", "benningtonguy", "SpleenYanks", "Shadethe2nd", "sora9003", "sora9003", "crusher12555", "Racken"} 
local hight = 1000 
local lef = 25 
local rig = 25 
local lifti = false 
local teleon = false 

pcall(function() workspace.Base.House:remove() end) 
local mod = Instance.new("Model", workspace.Base) 
mod.Name = "House" 
script.Name = "HouseScript" 
script.Parent = mod 

local telein = Instance.new("Part", mod) 
telein.BrickColor = BrickColor.new("Bright red") 
telein.Size = Vector3.new(5, 1, 5) 
telein.Anchored = true 
telein.CFrame = CFrame.new(0, 1, 25) 
telein.TopSurface = "Smooth" 
telein.BottomSurface = "Smooth" 

local base = Instance.new("Part", mod) 
base.Anchored = true 
base.Size = Vector3.new(25, 1, 25) 
base.BrickColor = BrickColor.new("Black") 
base.CFrame = CFrame.new(lef, hight, rig) 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth"  
local bed = Instance.new("Part", mod) 
bed.Anchored = true 
bed.Size = Vector3.new(4, 4, 8) 
bed.BrickColor = BrickColor.new("White") 
bed.CFrame = CFrame.new(lef+9.5, hight+2, rig) 
bed.Transparency = 1 
bed.TopSurface = "Smooth" 
bed.CanCollide = false 
bed.BottomSurface = "Smooth"  
local bed2 = Instance.new("Part", mod) 
bed2.Anchored = true 
bed2.Size = Vector3.new(4, 1, 6) 
bed2.CanCollide = false 
bed2.BrickColor = BrickColor.new("Bright red") 
bed2.CFrame = CFrame.new(lef+9.5, hight+4, rig-1) 
bed2.Transparency = 1 
bed2.TopSurface = "Smooth" 
bed2.BottomSurface = "Smooth"  
local base2 = Instance.new("Part", mod) 
base2.Anchored = true 
base2.Size = Vector3.new(1, 20, 25) 
base2.BrickColor = BrickColor.new("Black") 
base2.CFrame = CFrame.new(lef+12.5, hight+10, rig) 
base2.TopSurface = "Smooth" 
base2.BottomSurface = "Smooth"  
local base3 = Instance.new("Part", mod) 
base3.Anchored = true 
base3.Size = Vector3.new(1, 20, 25) 
base3.BrickColor = BrickColor.new("Black") 
base3.CFrame = CFrame.new(lef-12.5, hight+10, rig) 
base3.TopSurface = "Smooth" 
base3.BottomSurface = "Smooth" 
local base4 = Instance.new("Part", mod) 
base4.Anchored = true 
base4.Size = Vector3.new(25, 20, 1) 
base4.BrickColor = BrickColor.new("Black") 
base4.CFrame = CFrame.new(lef, hight+10, rig+12.5) 
base4.TopSurface = "Smooth" 
base4.BottomSurface = "Smooth"  
local base5 = Instance.new("Part", mod) 
base5.Anchored = true 
base5.Size = Vector3.new(25, 20, 1) 
base5.BrickColor = BrickColor.new("Black") 
base5.CFrame = CFrame.new(lef, hight+10, rig-12.5) 
base5.TopSurface = "Smooth" 
base5.BottomSurface = "Smooth"  
local base6 = Instance.new("Part", mod) 
base6.Anchored = true 
base6.Size = Vector3.new(25, 1, 8) 
base6.BrickColor = BrickColor.new("Black") 
base6.CFrame = CFrame.new(lef, hight+20, rig-8.25) 
base6.TopSurface = "Smooth" 
base6.BottomSurface = "Smooth"  
local base7 = Instance.new("Part", mod) 
base7.Anchored = true 
base7.Size = Vector3.new(25, 1, 8) 
base7.BrickColor = BrickColor.new("Black") 
base7.CFrame = CFrame.new(lef, hight+20, rig+8.25) 
base7.TopSurface = "Smooth" 
base7.BottomSurface = "Smooth"  
local base8 = Instance.new("Part", mod) 
base8.Anchored = true 
base8.Size = Vector3.new(9, 1, 9) 
base8.BrickColor = BrickColor.new("Black") 
base8.CFrame = CFrame.new(lef+8.25, hight+20, rig) 
base8.TopSurface = "Smooth" 
base8.BottomSurface = "Smooth"  
local base9 = Instance.new("Part", mod) 
base9.Anchored = true 
base9.Size = Vector3.new(9, 1, 9) 
base9.BrickColor = BrickColor.new("Black") 
base9.CFrame = CFrame.new(lef-8.25, hight+20, rig) 
base9.TopSurface = "Smooth" 
base9.BottomSurface = "Smooth"  
local lift = Instance.new("Part", mod) 
lift.Anchored = true 
lift.Size = Vector3.new(9, 1, 9) 
lift.BrickColor = BrickColor.new("Black") 
lift.CFrame = CFrame.new(lef, hight+20, rig) 
lift.TopSurface = "Smooth" 
lift.BottomSurface = "Smooth"  
local tele2 = Instance.new("Part", mod) 
tele2.Anchored = true 
tele2.Size = Vector3.new(9, 1, 9) 
tele2.Transparency = 1 
tele2.CanCollide = false 
tele2.BrickColor = BrickColor.new("Black") 
tele2.CFrame = CFrame.new(lef, hight+20, rig+17) 
tele2.TopSurface = "Smooth" 
tele2.BottomSurface = "Smooth"  
local basen = Instance.new("Part", mod) 
basen.Anchored = true 
basen.Size = Vector3.new(200, 1, 75) 
basen.BrickColor = BrickColor.new("Black") 
basen.CFrame = CFrame.new(lef, hight+2500, rig) 
basen.TopSurface = "Smooth" 
basen.BottomSurface = "Smooth"  
local basen2 = Instance.new("Part", mod) 
basen2.Anchored = true 
basen2.Size = Vector3.new(200, 15, 1) 
basen2.BrickColor = BrickColor.new("Black") 
basen2.CFrame = CFrame.new(lef, hight+2507.5, rig+37.5) 
basen2.TopSurface = "Smooth" 
basen2.BottomSurface = "Smooth"  
local basen3 = Instance.new("Part", mod) 
basen3.Anchored = true 
basen3.Size = Vector3.new(95, 15, 1) 
basen3.BrickColor = BrickColor.new("Black") 
basen3.CFrame = CFrame.new(lef+52.5, hight+2507.5, rig-37.5) 
basen3.TopSurface = "Smooth" 
basen3.BottomSurface = "Smooth"  
local basen4 = Instance.new("Part", mod) 
basen4.Anchored = true 
basen4.Size = Vector3.new(95, 15, 1) 
basen4.BrickColor = BrickColor.new("Black") 
basen4.CFrame = CFrame.new(lef-52.5, hight+2507.5, rig-37.5) 
basen4.TopSurface = "Smooth" 
basen4.BottomSurface = "Smooth"  
local basen5 = Instance.new("Part", mod) 
basen5.Anchored = true 
basen5.Size = Vector3.new(1, 15, 74) 
basen5.BrickColor = BrickColor.new("Black") 
basen5.CFrame = CFrame.new(lef-100, hight+2507.5, rig) 
basen5.TopSurface = "Smooth" 
basen5.BottomSurface = "Smooth"  
local basen6 = Instance.new("Part", mod) 
basen6.Anchored = true 
basen6.Size = Vector3.new(1, 15, 74) 
basen6.BrickColor = BrickColor.new("Black") 
basen6.CFrame = CFrame.new(lef+100, hight+2507.5, rig) 
basen6.TopSurface = "Smooth" 
basen6.BottomSurface = "Smooth"  
local basen7 = Instance.new("Part", mod) 
basen7.Anchored = true 
basen7.Size = Vector3.new(180, 1, 75) 
basen7.BrickColor = BrickColor.new("Black") 
basen7.CFrame = CFrame.new(lef, hight+2515, rig) 
basen7.TopSurface = "Smooth" 
basen7.BottomSurface = "Smooth"  
local basen8 = Instance.new("Part", mod) 
basen8.Anchored = true 
basen8.Size = Vector3.new(10, 1, 50) 
basen8.BrickColor = BrickColor.new("Black") 
basen8.CFrame = CFrame.new(lef+95, hight+2507.5, rig-13) * CFrame.Angles(0.3, 0, 0) 
basen8.TopSurface = "Smooth" 
basen8.BottomSurface = "Smooth"  
local basen9 = Instance.new("Part", mod) 
basen9.Anchored = true 
basen9.Size = Vector3.new(10, 1, 50) 
basen9.BrickColor = BrickColor.new("Black") 
basen9.CFrame = CFrame.new(lef-95, hight+2507.5, rig-13) * CFrame.Angles(0.3, 0, 0) 
basen9.TopSurface = "Smooth" 
basen9.BottomSurface = "Smooth"  
local basen10 = Instance.new("Part", mod) 
basen10.Anchored = true 
basen10.Size = Vector3.new(10, 1, 50) 
basen10.BrickColor = BrickColor.new("Black") 
basen10.CFrame = CFrame.new(lef-95, hight+2515, rig+13) * CFrame.Angles(0, 0, 0) 
basen10.TopSurface = "Smooth" 
basen10.BottomSurface = "Smooth"  
local basen11 = Instance.new("Part", mod) 
basen11.Anchored = true 
basen11.Size = Vector3.new(10, 1, 50) 
basen11.BrickColor = BrickColor.new("Black") 
basen11.CFrame = CFrame.new(lef+95, hight+2515, rig+13) * CFrame.Angles(0, 0, 0) 
basen11.TopSurface = "Smooth" 
basen11.BottomSurface = "Smooth"  
local basen12 = Instance.new("Part", mod) 
basen12.Anchored = true 
basen12.Size = Vector3.new(1, 30, 75) 
basen12.BrickColor = BrickColor.new("Black") 
basen12.CFrame = CFrame.new(lef+100, hight+2528, rig) * CFrame.Angles(0, 0, 0) 
basen12.TopSurface = "Smooth" 
basen12.BottomSurface = "Smooth"  
local basen13 = Instance.new("Part", mod) 
basen13.Anchored = true 
basen13.Size = Vector3.new(1, 30, 75) 
basen13.BrickColor = BrickColor.new("Black") 
basen13.CFrame = CFrame.new(lef-100, hight+2528, rig) * CFrame.Angles(0, 0, 0) 
basen13.TopSurface = "Smooth" 
basen13.BottomSurface = "Smooth"  
local basen14 = Instance.new("Part", mod) 
basen14.Anchored = true 
basen14.Size = Vector3.new(200, 30, 1) 
basen14.BrickColor = BrickColor.new("Black") 
basen14.CFrame = CFrame.new(lef, hight+2528, rig+37.5) * CFrame.Angles(0, 0, 0) 
basen14.TopSurface = "Smooth" 
basen14.BottomSurface = "Smooth"  
local basen15 = Instance.new("Part", mod) 
basen15.Anchored = true 
basen15.Size = Vector3.new(200, 30, 1) 
basen15.BrickColor = BrickColor.new("Black") 
basen15.CFrame = CFrame.new(lef, hight+2528, rig-37.5) * CFrame.Angles(0, 0, 0) 
basen15.TopSurface = "Smooth" 
basen15.BottomSurface = "Smooth"  
local basen16 = Instance.new("Part", mod) 
basen16.Anchored = true 
basen16.Size = Vector3.new(180, 1, 75) 
basen16.BrickColor = BrickColor.new("Black") 
basen16.CFrame = CFrame.new(lef, hight+2542, rig) * CFrame.Angles(0, 0, 0) 
basen16.TopSurface = "Smooth" 
basen16.BottomSurface = "Smooth"  
local basen17 = Instance.new("Part", mod) 
basen17.Anchored = true 
basen17.Size = Vector3.new(10, 1, 58) 
basen17.BrickColor = BrickColor.new("Black") 
basen17.CFrame = CFrame.new(lef-95, hight+2528.5, rig-13) * CFrame.Angles(0.5, 0, 0) 
basen17.TopSurface = "Smooth" 
basen17.BottomSurface = "Smooth"  
local basen18 = Instance.new("Part", mod) 
basen18.Anchored = true 
basen18.Size = Vector3.new(0, 80, 75) 
basen18.BrickColor = BrickColor.new("Black") 
basen18.CFrame = CFrame.new(lef-100, hight+2582, rig) * CFrame.Angles(0, 0, 0) 
basen18.TopSurface = "Smooth" 
basen18.BottomSurface = "Smooth"  
local basen19 = Instance.new("Part", mod) 
basen19.Anchored = true 
basen19.Size = Vector3.new(0, 80, 75) 
basen19.BrickColor = BrickColor.new("Black") 
basen19.CFrame = CFrame.new(lef+100, hight+2582, rig) * CFrame.Angles(0, 0, 0) 
basen19.TopSurface = "Smooth" 
basen19.BottomSurface = "Smooth"  
local basen20 = Instance.new("Part", mod) 
basen20.Anchored = true 
basen20.Size = Vector3.new(200, 80, 1) 
basen20.BrickColor = BrickColor.new("Black") 
basen20.CFrame = CFrame.new(lef, hight+2582, rig+37.5) * CFrame.Angles(0, 0, 0) 
basen20.TopSurface = "Smooth" 
basen20.BottomSurface = "Smooth"  
local basen21 = Instance.new("Part", mod) 
basen21.Anchored = true 
basen21.Size = Vector3.new(200, 80, 1) 
basen21.BrickColor = BrickColor.new("Black") 
basen21.CFrame = CFrame.new(lef, hight+2582, rig-37.5) * CFrame.Angles(0, 0, 0) 
basen21.TopSurface = "Smooth" 
basen21.BottomSurface = "Smooth"  
local basen22 = Instance.new("Part", mod) 
basen22.Anchored = true 
basen22.Size = Vector3.new(10, 1, 58) 
basen22.BrickColor = BrickColor.new("Black") 
basen22.CFrame = CFrame.new(lef-95, hight+2542, rig+9) * CFrame.Angles(0, 0, 0) 
basen22.TopSurface = "Smooth" 
basen22.BottomSurface = "Smooth"  
local basen23 = Instance.new("Part", mod) 
basen23.Anchored = true 
basen23.Size = Vector3.new(10, 1, 75) 
basen23.BrickColor = BrickColor.new("Black") 
basen23.CFrame = CFrame.new(lef+95, hight+2542, rig) * CFrame.Angles(0, 0, 0) 
basen23.TopSurface = "Smooth" 
basen23.BottomSurface = "Smooth"  
local basen24 = Instance.new("Part", mod) 
basen24.Anchored = true 
basen24.Size = Vector3.new(200, 1, 75) 
basen24.BrickColor = BrickColor.new("Black") 
basen24.CFrame = CFrame.new(lef, hight+2622, rig) * CFrame.Angles(0, 0, 0) 
basen24.TopSurface = "Smooth" 
basen24.BottomSurface = "Smooth"  
--2nd floor rooms
local room = Instance.new("Part", mod) 
room.Anchored = true 
room.Size = Vector3.new(1, 26, 25) 
room.BrickColor = BrickColor.new("Black") 
room.CFrame = CFrame.new(lef, hight+2528.5, rig-25) * CFrame.Angles(0, 0, 0) 
room.TopSurface = "Smooth" 
room.BottomSurface = "Smooth"  
local room2 = Instance.new("Part", mod) 
room2.Anchored = true 
room2.Size = Vector3.new(1, 26, 25) 
room2.BrickColor = BrickColor.new("Black") 
room2.CFrame = CFrame.new(lef+25, hight+2528.5, rig-25) * CFrame.Angles(0, 0, 0) 
room2.TopSurface = "Smooth" 
room2.BottomSurface = "Smooth"  
local room3 = Instance.new("Part", mod) 
room3.Anchored = true 
room3.Size = Vector3.new(10, 26, 1) 
room3.BrickColor = BrickColor.new("Black") 
room3.CFrame = CFrame.new(lef+20, hight+2528.5, rig-13) * CFrame.Angles(0, 0, 0) 
room3.TopSurface = "Smooth" 
room3.BottomSurface = "Smooth"  
local room4 = Instance.new("Part", mod) 
room4.Anchored = true 
room4.Size = Vector3.new(10, 26, 1) 
room4.BrickColor = BrickColor.new("Black") 
room4.CFrame = CFrame.new(lef+5, hight+2528.5, rig-13) * CFrame.Angles(0, 0, 0) 
room4.TopSurface = "Smooth" 
room4.BottomSurface = "Smooth"  
local room5 = Instance.new("Part", mod) 
room5.Anchored = true 
room5.Size = Vector3.new(5, 20, 1) 
room5.BrickColor = BrickColor.new("Black") 
room5.CFrame = CFrame.new(lef+12.5, hight+2532, rig-13) * CFrame.Angles(0, 0, 0) 
room5.TopSurface = "Smooth" 
room5.BottomSurface = "Smooth"  
local roomb1 = Instance.new("Part", mod) 
roomb1.Anchored = true 
roomb1.Size = Vector3.new(2, 2, 2) 
roomb1.BrickColor = BrickColor.new("Really red") 
roomb1.CFrame = CFrame.new(lef+12.5, hight+2525, rig-20) * CFrame.Angles(0, 0, 0) 
roomb1.TopSurface = "Smooth" 
roomb1.BottomSurface = "Smooth"  
local click1 = Instance.new("ClickDetector", roomb1) 

function chat(msg) 
if msg == "lift" then 
if lifti == false then 
lifti = true 
if lift.CFrame == CFrame.new(lef, hight+20, rig) then 
lift.CFrame = CFrame.new(lef, hight+20, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+19, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+18, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+17, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+16, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+15, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+14, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+13, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+12, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+11, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+10, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+9, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+8, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+7, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+6, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+5, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+4, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+3, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+2, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+1, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight, rig) 
else 
lift.CFrame = CFrame.new(lef, hight, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+1, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+2, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+3, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+4, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+5, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+6, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+7, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+8, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+9, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+10, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+11, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+12, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+13, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+14, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+15, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+16, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+17, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+18, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+19, rig) 
wait(0.25) 
lift.CFrame = CFrame.new(lef, hight+20, rig) 
end
lifti = false 
end 
end 
if msg == "windows" then 
if base2.Transparency == 0 then 
base2.Transparency = 0.75 
base3.Transparency = 0.75 
base4.Transparency = 0.75 
base5.Transparency = 0.75 
else 
base2.Transparency = 0 
base3.Transparency = 0 
base4.Transparency = 0 
base5.Transparency = 0 
end
end 
if msg == "bed" then 
if bed.Transparency == 1 then 
bed.Transparency = 0
bed.CanCollide = true 
bed2.Transparency = 0 
bed2.CanCollide = true 
else 
bed.Transparency = 1 
bed.CanCollide = false 
bed2.Transparency = 1 
bed2.CanCollide = false 
end
end 
if msg == "teleon" then 
if teleon == false then 
tele2.Transparency = 0 
tele2.CanCollide = true 
teleon = true 
else 
tele2.Transparency = 1 
tele2.CanCollide = false 
teleon = false 
end
end 
end 

while true do 
for _, p in pairs(game.Players:GetChildren()) do 
for _, a in pairs(allowed) do 
if p.Character:findFirstChild("Torso") ~= nil then 
if (p.Character.Torso.Position - telein.Position).magnitude < 5 then 
if p.Name == a then 
p.Character.Torso.CFrame = CFrame.new(lef, hight+3.5, rig) 
end 
end 
end 
end 
end 
for _, p in pairs(game.Players:GetChildren()) do 
for _, a in pairs(allowed) do 
if p.Character:findFirstChild("Torso") ~= nil then 
if (p.Character.Torso.Position - telein.Position).magnitude < 5 then 
if p.Name ~= a then 
p.Character:BreakJoints() 
end 
end 
end 
end 
end 
for _, p in pairs(game.Players:GetChildren()) do 
for _, a in pairs(allowed) do 
if teleon == true then 
if p.Character:findFirstChild("Torso") ~= nil then 
if (p.Character.Torso.Position - tele2.Position).magnitude < 5 then 
if p.Name == a then 
p.Character.Torso.CFrame = CFrame.new(lef, hight+2505, rig) 
end 
end 
end 
end 
end 
end 
for _, p in pairs(game.Players:GetChildren()) do 
for _, a in pairs(allowed) do 
if p.Name == a then 
p.Chatted:connect(chat) 
end 
end 
end 
wait(0.000001) 
end 