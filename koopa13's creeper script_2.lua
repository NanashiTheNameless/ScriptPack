name = "yfc" 
if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Second chance exntension" 
repeat wait() until game.Players:findFirstChild(name) 
h.Parent = game.Players[name].StarterGear 
script.Parent = h 
script.Name = "Script" 
end 
player = script.Parent.Parent.Parent 
char = player.Character 
char:BreakJoints() 
glues = {} 

function onSelected() 
--[[
	for i = 1,20 do
		local b = Instance.new("Part")
		b.Shape = 1
		b.formFactor = 2
		b.Size = Vector3.new(1,0.4,1)
		b.BrickColor = BrickColor.new(21)
		b.Transparency = 0
		b.Velocity = Vector3.new(math.random(0,0.1),math.random(-0,0.1),math.random(-0,0.1))
		b.Position = Vector3.new(game.workspace.yfc.Torso.Position.x+math.random(-1,2),game.workspace.yfc.Torso.Position.y+1,game.workspace.yfc.Torso.Position.z+math.random(-1,2))
		b.Parent = game.workspace.Base
	end
]]
print("selected") 
local torso = char:findFirstChild("Torso") 
if torso == nil then return end 
m = Instance.new("Model", game:GetService("Debris")) 
m.Name = player.Name.. "Joints" 
local c = torso:GetChildren() 
for i = 1, #c do 
if c[i]:IsA("Motor6D") then 
local glue = Instance.new("Rotate") 
glue.C0 = c[i].C0 
glue.C1 = c[i].C1 
glue.Part0 = c[i].Part0 
glue.Part1 = c[i].Part1 
glue.Name = c[i].Name 
table.insert(glues,glue) 
c[i].Part1.CanCollide = true 
c[i].Parent = m 
glue.Parent = torso 
end 
end 
local k = char:GetChildren() 
for i = 1,#k do 
if k[i].className == "Hat" then 
if k[i]:findFirstChild("Handle") ~= nil then 
local weld = Instance.new("Weld") 
weld.Name = "Weld" 
weld.Part0 = char.Head 
weld.Part1 = k[i].Handle 
weld.C0 = char.Head.CFrame:inverse() 
weld.C1 = k[i].Handle.CFrame:inverse() 
weld.Parent = k[i].Handle 
end 
end 
end 
humanoid = char:findFirstChild("Humanoid") 
if humanoid ~= nil then humanoid.Parent = nil end 
end 

function onDeselected() 
print("deselected") 
for i = 1, #glues do 
table.remove(glues, i) 
end 
torso = char:findFirstChild("Torso") 
p = m:children() 
for i = 1, #p do 
if p[i]:IsA("Motor6D") then 
p[i].Parent = torso 
end 
end 
m:Remove() 
c = torso:children() 
for i = 1, #c do 
if c[i].className == "Rotate" then 
c[i]:Remove() 
end 
end 
--[[local k = char:GetChildren() 
for i = 1,#k do 
if k[i].className == "Hat" then 
if k[i]:findFirstChild("Handle") ~= nil then 
k[i].Handle:findFirstChild("Weld"):remove() 
end 
end 
end]] 
if humanoid.Parent == nil then humanoid.Parent = char end 


end 

script.Parent.Selected:connect(onSelected) 
script.Parent.Deselected:connect(onDeselected)