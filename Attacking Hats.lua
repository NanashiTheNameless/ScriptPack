Commands: 

hat/NumberHere to create number of hats
Say disperse to take them off
attack/Player     Self Explanatory.
attack/rocket/Player    Also self explanatory  







me = game.Players.yfc
function onChatted(msg)
msg = msg
if string.match(msg, "hat/") then
p = game.Workspace.yfc:GetChildren()
for n = 1,#p do
for w in string.gmatch(msg, "%d+") do
if (p[n].className == "Hat") then
for i = 1,w do
wait(0.05)
t = p[n].Handle:clone()
t.Parent = game.Workspace
t.CanCollide = true
t.Anchored = false
t.Position = me.Character.Torso.Position
t.Name = "HatRocket"
local rp = Instance.new("RocketPropulsion")
rp.Parent = t
rp.Target = me.Character.Head
rp.MaxSpeed = 20000
rp:Fire()
end
end
end
end
end
if string.match(msg, "attack/") then
players = game.Players:GetChildren()
for i = 1,#players do
if string.match(msg, string.lower(players[i].Name)) then
p = game.Workspace:GetChildren()
for n = 1,#p do
if (p[n].Name == "HatRocket") then
p[n].RocketPropulsion.Target = players[i].Character.Head
end
end
end
end
end
if string.match(msg, "attack/rocket/") then
players = game.Players:GetChildren()
for i = 1,#players do
if string.match(msg, string.lower(players[i].Name)) then p = game.Workspace:GetChildren()
for n = 1,#p do
if (p[n].Name == "HatRocket") then
p[n].RocketPropulsion.Target = players[i].Character.Head
p[n].RocketPropulsion.CartoonFactor = 10
p[n].RocketPropulsion.TargetRadius = 30
function onBlown(hit)
hit = p[n].RocketPropulsion.Target
if (hit ~= nil) then
local e = Instance.new("Explosion")
e.Parent = hit.Parent
e.BlastPressure = 9999
e.Position = p[n].Position
e.BlastRadius = 6
wait(3)
p[n]:remove()
end
end
boom = p[n].RocketPropulsion.ReachedTarget:connect(onBlown)
wait(5)
boom:disconnect()
end
end
end
end
end
if (msg == "disperse") then
local p = game.Workspace:GetChildren()
for i = 1,#p do
if (p[i].Name == "HatRocket") then
p[i].RocketPropulsion.MaxSpeed = 200000
local e = Instance.new("Explosion")
e.Parent = game.Workspace
e.Position = p[i].Position
e.BlastPressure = 10
p[i]:remove()
end
end
end
end
me.Chatted:connect(onChatted)