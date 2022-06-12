Script 1 - The Levitation Script


local Character = "polo1716"
local lev = 236 / 1.2 
local grav = .7 
 
function dataGetMass(number) 
local totalMass = 0 
local p = workspace[Character]:GetChildren() 
 
for i = 1, #p do 
 
if p[i]:IsA("Part") == true then 
totalMass = totalMass + p[i]:GetMass() 
 
elseif p[i]:IsA("Hat") == true then 
totalMass = totalMass + p[i].Handle:GetMass() 
 
end 
end 
 
return totalMass 

end 
 
local bf = Instance.new("BodyForce") 
bf.Parent = game.Workspace[Character]Head 
bf.force = Vector3.new(0, dataGetMass(number) * lev * grav, 0) 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Script 2 - The Invisibility Script


local Character = "polo1716"
for i, v in ipairs(workspace[Character]:GetChildren()) do
	if v:IsA("Hat") == true then
		v.Handle.Transparency = 1
	end
end

if workspace[Character]Head:FindFirstChild("face") ~= nil then
	workspace[Character]Head.face.Texture = ""
elseif workspace[Character]Head:FindFirstChild("face") == nil then
	print("No face detected. O_O")
end

if workspace[Character]:FindFirstChild("Shirt Graphic") ~= nil then
	workspace[Character]Torso.roblox.Texture = ""
elseif p == nil then
	print("No Shirt Grpahic detected.")
end

for i, v in ipairs(workspace[Character]:GetChildren()) do
	if v:IsA("Part") == true or v:IsA("TrussPart") == true then
		v.Transparency = 1
	end
end
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Script 3 - The Invincibility Script


local Character = "polo1716"
local f = Instance.new("ForceField")
f.Parent = workspace[Character]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Script 4a - AFK


local Character = "polo1716"
game.Players[Character]Character.Parent = game.Lighting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Script 4b - Un AFK
local Character = "polo1716"
game.Players[Character]Character.Parent = workspace