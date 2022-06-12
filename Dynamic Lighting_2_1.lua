--lordsheen's dynamic lighting script 
function load(add) 
name = "lordsheen" 
if workspace.Base:findFirstChild("nilDL") then
workspace.Base:findFirstChild("nilDL"):remove()
end
if game.Players[name].PlayerGui:findFirstChild("Nilliland's AdminGUI") then 
game.Players[name].PlayerGui:findFirstChild("Nilliland's AdminGUI"):Remove() 
end

local me = game.Workspace[name].Torso
local guiperson = game.Players[name].PlayerGui
local sg = Instance.new("ScreenGui", guiperson)
sg.Name = "Nilliland's AdminGUI"
local fr = Instance.new("Frame", sg) 
fr.Position = UDim2.new(0,50,0,305) 
local g = Instance.new("TextButton", fr) 
g.Position = UDim2.new(0, -1, 0, -175)
g.Size = UDim2.new(0,140,0,40) 
g.FontSize = "Size24" 
g.Text = "Regen"
g.BackgroundTransparency = 0.4
g.TextColor = BrickColor.new("Really red") 
g.BackgroundColor = BrickColor.new("Really black") 
g.BorderColor = BrickColor.new("Really red") 
function click() 
if workspace:findFirstChild("nilDL") then
workspace:findFirstChild("nilDL"):remove()
end
wait() 
load() 
end 
g.MouseButton1Down:connect(click) 
local mdl = Instance.new("Model",workspace.Base)
mdl.Name = "nilDL"

game.Lighting.Brightness = 1

local xAxis = 10
local yAxis1 = 1.2
local zAxis = 10
local yAxis2 = 3

local dis1 = 3
local dis2 = (3*2)
local dis3 = (3*3)
local dis4 = (3*4)
local dis5 = (3*5)
local dis6 = (3*6)
local dis7 = (3*7)

for i = 1,50/2 do 
for ie = 1,50/2 do
local p = Instance.new("Part",mdl) 
p.BrickColor = BrickColor.new("Really black")
p.formFactor = "Custom" 
p.Size = Vector3.new(2,0.2,2) 
p.CFrame = CFrame.new((-xAxis/2)+p.Size.x*i,yAxis1,(-zAxis/2)+p.Size.z*ie) 
p.Name = "glows" 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.CanCollide = true 
p.Anchored = true
end
wait()
end 

while true do 
wait() 
local p = mdl:GetChildren() 
for i = 1, #p do 
if (p[i].className == "Part") then 
if (p[i].Position - me.Position).magnitude < dis1 and (p[i].Position - me.Position).magnitude > 0 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Institutional white").number) 
elseif (p[i].Position - me.Position).magnitude < dis2 and (p[i].Position - me.Position).magnitude > dis1 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("White").number) 
elseif (p[i].Position - me.Position).magnitude < dis3 and (p[i].Position - me.Position).magnitude > dis2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Mid gray").number)
elseif (p[i].Position - me.Position).magnitude < dis4 and (p[i].Position - me.Position).magnitude > dis3 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Medium stone grey").number)
elseif (p[i].Position - me.Position).magnitude < dis5 and (p[i].Position - me.Position).magnitude > dis4 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Dark stone grey").number) 
elseif (p[i].Position - me.Position).magnitude < dis6 and (p[i].Position - me.Position).magnitude > dis5 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Black").number)  
elseif (p[i].Position - me.Position).magnitude < dis7 and (p[i].Position - me.Position).magnitude > dis6 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Really black").number) 
end 
end 
end 
end 
end 
load() 
