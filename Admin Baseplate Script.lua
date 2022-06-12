Admins = {"epicikr","Infernoboy18","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE","YOURFRIENDSNAMEHERE"}

Basez = nil

function GBase(P)
if Basez == nil then
Basez = Instance.new("Part")
Basez.Anchored = true
Basez.Locked = true
Basez.CanCollide = true
Basez.Size = Vector3.new(512,1,512)
Basez.BrickColor = BrickColor.new("Dark green")
Basez.Name = "Basez"
Basez.Parent = P
Basez.CFrame = CFrame.new(10000,3000,10000)
end
end
function BaseCheck(p)
for i = 1,#Admins do
if p.Name == Admins[i] then return true end
end
return false
end
for i,v in pairs(game.Players:GetPlayers()) do
if v:IsA("Player") then
d = BaseCheck(v)
if d == true then
--print(v)
if v.Character:findFirstChild("Torso") ~= nil then
GBase(v.Character)
if Basez.CFrame.y < v.Character.Torso.CFrame.y then
else
pcall(function() v.Character.Torso.CFrame = Basez.CFrame + Vector3.new(0,10,0) end)
end
end
end
end
end
--Meidafire