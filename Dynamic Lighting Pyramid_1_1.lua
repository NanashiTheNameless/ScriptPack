--[[ xXxXxdragonxXxXx's Dynamic Lighting ]]-- 
--[[ moded by Nilliland ]]-- 
function load(add) 
name = "lordsheen" 
if workspace.Base:findFirstChild("nilDL") then 
workspace.Base:findFirstChild("nilDL"):Remove() 
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
g.Position = UDim2.new(0, -1, 0, -200)
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

local dis1 = 5
local dis2 = (5*2)
local dis3 = (5*3)
local dis4 = (5*4)
local dis5 = (5*5)
local dis6 = (5*6)
local dis7 = (5*7)

ii=12 
x=ii 
for i=1,x do 
ii=ii-1.2 
P=Instance.new("Part",mdl) 
P.BrickColor = BrickColor.new("Really black")
P.formFactor = "Custom" 
P.Name="glows" 
P.CanCollide = true 
P.Anchored=true 
P.Size=Vector3.new(i*2,1.2,i*2) 
P.CFrame=Workspace.Base.CFrame+Vector3.new(0,ii+x/4+Workspace.Base.Size.Y/2,0) 
Instance.new("BlockMesh",P) 
end 

while true do 
wait() 
local p = mdl:GetChildren() 
for i = 1, #p do 
if (p[i].className == "Part") then 
if (p[i].Position - me.Position).magnitude < dis1 and (p[i].Position - me.Position).magnitude > 0 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Institutional white").number) 
elseif (p[i].Position - me.Position).magnitude < dis2/2 and (p[i].Position - me.Position).magnitude > dis1/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("White").number) 
elseif (p[i].Position - me.Position).magnitude < dis3/2 and (p[i].Position - me.Position).magnitude > dis2/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Mid gray").number)
elseif (p[i].Position - me.Position).magnitude < dis4/2 and (p[i].Position - me.Position).magnitude > dis3/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Medium stone grey").number)
elseif (p[i].Position - me.Position).magnitude < dis5/2 and (p[i].Position -me.Position).magnitude > dis4/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Dark stone grey").number) 
elseif (p[i].Position - me.Position).magnitude < dis6/2 and (p[i].Position - me.Position).magnitude > dis5/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Black").number)  
elseif (p[i].Position - me.Position).magnitude < dis7/2 and (p[i].Position - me.Position).magnitude > dis6/2 then 
p[i].BrickColor = BrickColor.new(BrickColor.new("Really black").number) 
end 
end 
end 
end 
end 
load()
