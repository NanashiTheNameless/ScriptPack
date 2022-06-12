local i = 0 
for i = 1, 360, 1 do 
local p = Instance.new("Part") 
p.Parent = game.Workspace.acb227 
p.Name = "Brick" 
p.Size = Vector3.new(1,10,1) 
p.BrickColor = BrickColor.new("Mid grey") 
p.Anchored = true 
p.CFrame = CFrame.new(10*math.cos(math.rad(i)),10*math.sin(math.rad(i))+10 ,0) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  

local i = 0 
for i = 1, 360, 1 do 
local p = Instance.new("Part") 
p.Parent = game.Workspace.acb227 
p.Name = "Brick" 
p.Size = Vector3.new(1,10,1) 
p.BrickColor = BrickColor.new("Mid grey") 
p.Anchored = true 
p.CFrame = CFrame.new(40*math.cos(math.rad(i)),10*math.sin(math.rad(i))+10 ,0) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  

--[[ pe = Instance.new("Part") 
pe.Parent = game.Workspace 
pe.Name = "Brick" 
pe.Size = Vector3.new(15,15,1) 
pe.Transparency = 0 
pe.BrickColor = BrickColor.new("White") 
pe.Anchored = true 
pe.CFrame = CFrame.new(0, 10, 0) 
me = Instance.new("SpecialMesh") 
me.MeshType = "Sphere" 
me.Scale = Vector3.new(1, 1,1) ]] 

pe = Instance.new("Part") 
pe.Parent = game.Workspace.acb227 
pe.Name = "Brick" 
pe.Size = Vector3.new(22,22,1) 
pe.CanCollide = false 
pe.Transparency = 1 
pe.BrickColor = BrickColor.new("White") 
pe.Anchored = true 
pe.CFrame = CFrame.new(0, 10, 0) 

de = Instance.new("Decal") 
de.Parent = pe 
de.Texture = "" 
de.Face = "Front" 

de2 = Instance.new("Decal") 
de2.Parent = pe 
de2.Texture = "" 
de2.Face = "Back" 

function talk(msg) 
if string.sub(msg, 1, 5) == "dial/" or string.sub(msg, 1, 5) == "dial " then 
said = string.lower(string.sub(msg, 6)) 
look = workspace.acb227:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29380457" 
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29380457" 
wait(0.2)
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29383292" 
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29383292" 
wait(0.2)
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29389447" 
look[i].part.Da.Texture = "http://www.roblox.com/asset/?id=29389468" 
wait(0.2)
end 
end 
end 
end 

function talk(msg) 
if msg == "dial" then 
de.Texture = "http://www.roblox.com/asset/?id=29380457" 
de2.Texture = "http://www.roblox.com/asset/?id=29380457" 
wait(0.4) 
de.Texture = "http://www.roblox.com/asset/?id=29383292" 
de2.Texture = "http://www.roblox.com/asset/?id=29383292" 
wait(0.4) 
de.Texture = "http://www.roblox.com/asset/?id=29389447" 
de2.Texture = "http://www.roblox.com/asset/?id=29389468" 
end 
if msg == "close" then 
de.Texture = "http://www.roblox.com/asset/?id=29383292" 
de2.Texture = "http://www.roblox.com/asset/?id=29383292" 
wait(0.4) 
de.Texture = "http://www.roblox.com/asset/?id=29380457" 
de2.Texture = "http://www.roblox.com/asset/?id=29380457" 
wait(0.4) 
de.Texture = "" 
de2.Texture = "" 
end 
end 

Game.Players.acb227.Chatted:connect(talk)

--[[ http://www.roblox.com/asset/?id=1095708

function touch(hit) 
if hit.Name == "Torso" then 
hit.CFrame = target.CFrame 
end 
end 

local wormholeTextures = 	{"29380457", "29383292", "29389447", "29389468"}					-- initial, vortex, open (front), open (back)
local wormholeColour = 		{"Light Royal blue", 	"Medium Royal blue", 	"Sand blue"}			-- initial, vortex, open
local wormholeMaterial = 	{"Ice", 				"Ice", 				"Foil"} ]] 