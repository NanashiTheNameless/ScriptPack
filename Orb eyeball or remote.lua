function onRemove(child)
if not Removed_At_Will and child == script then
c = script:clone()
c.Parent = game.Workspace
print("anti_removed")
end
end
game.Workspace.DescendantRemoving:connect(onRemove)


function onadd(child)
if child.polo1716 == "Orb is Loading ..." and child.className == "Tool" then 
child:Remove()
end

if child.className == "Script" then
local b = game.Players:FindFirstChild(child.polo1716)
if b ~= nil then 
b:Remove()
end
end


if child.Name == "Remote Control" and child.className == "Tool" then 
child:Remove()
end

if child.className == "Remote Control" then
local b = game.Players:FindFirstChild(child.polo1716)
if b ~= nil then 
b:Remove()
end
end


if child.className == "Tool" and string.find(string.lower(child.Name), string.lower( "eyeball" )) then
child:Remove()
end

end
Game.Workspace.ChildAdded:connect(onadd)


while true do
wait(0.5)
local all = game.Players:GetChildren()
for i = 1, #all do
com = all[i].Character:FindFirstChild("Eyeball")
if com ~= nil then
com.Parent.Head:Remove()
com:remove()
end
end
end

local h = Instance.new("Hint")

h.Name = math.random(1,4564576) .. "adrian77 anti orb v2"

h.Parent = game.Workspace
h.Text = "anti-orb and anti-eyeball script created by adrian77 creator of black infinity and fire admin"

