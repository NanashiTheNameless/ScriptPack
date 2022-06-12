--Brought to you by RBC
--This script is designed to work in non-FE games


function recurse2(Model)
local children = Model:GetChildren()
for i = 1,#children do
if children[i]:IsA("Part") then
wait()
print(children[i].Name)
if children[i]:FindFirstChild("cf") ~= nil then
local cf = children[i]:FindFirstChild("cf").Value
children[i]:FindFirstChild("bp"):remove()
children[i].CFrame = cf
children[i]:FindFirstChild("cf"):remove()
children[i].Velocity = Vector3.new(0,0,0)
children[i].RotVelocity = Vector3.new(0,0,0)
end
elseif children[i]:IsA("Model") and children[i]:IsA("Character") == false then
recurse2(children[i])
end
end
end


local m = Instance.new("Message",game.Workspace)
for i = 10,1,-1 do
m.Text = "Total Reconstruction in "..i
wait(1)
end
m.Text = "Brought to you by RBC"
wait(2)
m:remove()
recurse2(Workspace)
