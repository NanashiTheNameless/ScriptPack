--Brought to you by RBC
--This script is designed to work in non-FE games


function recurse(Model)
local children = Model:GetChildren()
for i = 1,#children do
if children[i]:IsA("Part") then
wait()

local cf = Instance.new("CFrameValue",children[i])
cf.Value = children[i].CFrame
cf.Name = "cf"

e = Instance.new("Explosion",children[i])
e.Position = children[i].Position
e.BlastRadius = 50
children[i].Position = Vector3.new(0,1500,0)
f = Instance.new("BodyPosition",children[i])
f.Name = "bp"
f.Position = Vector3.new(0,2000,0)
f.MaxForce = Vector3.new(1000000,1000000,1000000)
f.P = 10000
elseif children[i]:IsA("Model") then
recurse(children[i])
end
end
end


local m = Instance.new("Message",game.Workspace)
for i = 10,1,-1 do
m.Text = "Total Annihilation in "..i
wait(1)
end
m.Text = "Brought to you by RBC"
wait(2)
m:remove()
recurse(Workspace)