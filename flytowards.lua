local IgnoreLockedParts = true
local PlayerName = "aywosm"

local t
local plr = game.Players:findFirstChild(PlayerName)
if plr then
if plr.Character then
if plr.Character:findFirstChild("Torso") then
t = plr.Character.Torso
end
end
else
error("Player doesn't exist! D:")
end
function r(p)
for i,v in pairs(p:GetChildren()) do
if v:IsA("BasePart") then
if IgnoreLockedParts and v.Locked == true then
print("ignoring locked part " .. v.Name)
else
v:BreakJoints()
v.Anchored = false
v.CanCollide = true
local f = Instance.new("BodyPosition",v)
f.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
coroutine.resume(coroutine.create(function()
while t~=nil do
f.Position = t.Position
wait()
end
end))
f.P = math.random(3000,10000)
f.D = math.random(300,1300)
local af = Instance.new("BodyAngularVelocity",v)
af.AngularVelocity = Vector3.new(math.random(16,30),math.random(16,30),math.random(16,30))
end
else
r(v)
end
end
end

r(workspace)