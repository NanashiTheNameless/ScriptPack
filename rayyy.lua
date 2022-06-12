me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "RayCast"
script.Parent = h
end

bin = script.Parent

function GetPhysicsChildren(path) 
local objects = {} 
for _, children in pairs(path:GetChildren()) do 
if children.className == "Part" or children.className == "Seat" or children.className == "WedgePart" or children.className == "TrussPart" or children.className == "VehicleSeat" or children.className == "SkateboardPlatform" then 
table.insert(objects, children) 
end 
if #children:GetChildren() > 0 then 
local objects2 = GetPhysicsChildren(children) 
for i = 1, #objects2 do 
table.insert(objects, objects2[i]) 
end 
end 
end 
return objects 
end 


function RayCast(pos1, pos2, maxDistance) 
local pos0 = pos1 
local objects = GetPhysicsChildren(game:GetService("Workspace")) 
for distance = 1, maxDistance, 1 do 
pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -distance)).p 
for _, children in pairs(objects) do 
if children.Name ~= "Bullet Trail" then 
--if (children.CanCollide and children.Transparency > 0) or (game:GetService("Players"):getPlayerFromCharacter(children.Parent)) then 
local pos3 = children.CFrame:pointToObjectSpace(pos0) 
if pos3.x > -(children.Size.x / 2) and pos3.x < (children.Size.x / 2) and pos3.y > -(children.Size.y / 2) and pos3.y < (children.Size.y / 2) and pos3.z > -(children.Size.z / 2) and pos3.z < (children.Size.z / 2) then 
return pos0, children 
end 
end 
end 
end 
return pos0, nil 
end 


function fire(startPoint, endPoint)
	if startPoint == nil then return end
	if endPoint == nil then return end
	local pos, hit = RayCast(startPoint, endPoint, 60)
	local tr = Instance.new("Part")
	tr.Name = "Bullet Trail"
	tr.Anchored = true
	tr.formFactor = 0
	tr.TopSurface = 0
	tr.BottomSurface = 0
	tr.Size = Vector3.new(1,1,1)
	tr.BrickColor = BrickColor.new("Bright yellow")
	tr.CanCollide = false
	tr.CFrame = CFrame.new((startPoint + pos)/2, pos)
	tr.Parent = workspace
	local mesh = Instance.new("BlockMesh",tr)
	mesh.Scale = Vector3.new(0.1,0.1,(startPoint - pos).magnitude)
	if hit ~= nil then
		local hum = hit.Parent:findFirstChild("Humanoid")
		if hum ~= nil then
			hum.Health = hum.Health - 13
		end
	end
	coroutine.resume(coroutine.create(function()
		for i=0,1,0.15 do
			wait()
			tr.Transparency = i
		end
		tr:remove()
	end))
end

function select(mouse)
	mouse.Button1Down:connect(function()
		fire(me.Character.Torso.Position, mouse.Hit.p)
	end)
end


bin.Selected:connect(select)
