:ls -- This is local
 
 
local player = game.Players.LocalPlayer
 
local mouse = player:GetMouse()
 
local bin = Instance.new("HopperBin", player.Backpack) -- just to keep the friend request thing off
 
bin.Name = "laza!!"
 
 
local cannon = false
 
local char = player.Character
 
local T = char:findFirstChild("Torso")
 
local RA = char:findFirstChild("Right Arm")
 
local LA = char:findFirstChild("Left Arm")
 
local RS = T:findFirstChild("Right Shoulder")
 
local LS = T:findFirstChild("Left Shoulder")
 
local new = player.Character.Head:clone()
 
new.Name = "Fakehead"
 
new.Anchored = true
 
new.CanCollide = false
 
 
Delay(0, function()
 
local hats = {}
 
local CFs = {}
 
local Ds = {}
 
for _, v in ipairs(player.Character:GetChildren()) do
 
if v:IsA("Accoutrement") then
 
local h = v:findFirstChild("Handle")
 
if h then
 
if h:GetMass() < 20 then
 
h.Transparency = 1
 
h = h:clone()
 
h.Transparency = 0
 
h.Anchored = true
 
h.Parent = player.Character
 
pcall(function()
 
table.insert(hats, h)
 
local look = CFrame.new(player.Character.Head.Position, h.Position)
 
local X,Y,Z = look:toEulerAnglesXYZ()
 
table.insert(CFs, CFrame.Angles(X,Y,Z))
 
table.insert(Ds, (player.Character.Head.Position - h.Position).magnitude)
 
end)
 
end
 
end
 
end
 
end
 
Delay(0, function()
 
repeat wait(.5) until cannon
 
if cannon then
 
RS.Parent = nil
 
LS.Parent = nil
 
RA.Anchored = true
 
LA.Anchored = true
 
end
 
end)
 
player.Character.Head.Transparency = .9
 
local face = player.Character.Head.face
 
face.Parent = nil
 
function Move()
 
new.Parent = player.Character
 
new.Anchored = false
 
local W = new:findFirstChild("Weld") or Instance.new("Weld", new)
 
W.Part0 = new
 
W.Part1 = player.Character.Head
 
local cf = CFrame.new(player.Character.Head.Position, mouse.Hit.p)
 
W.C0 = cf:inverse()
 
W.C1 = player.Character.Head.CFrame:inverse()
 
for _, v in ipairs(hats) do
 
local w = v:findFirstChild("Weld") or Instance.new("Weld", v)
 
w.Part0 = v
 
w.Part1 = new
 
local cf = new.CFrame + (new.CFrame*CFs[_]).lookVector*Ds[_]
 
w.C0 = cf:inverse()
 
w.C1 = new.CFrame:inverse()
 
v.Anchored = false
 
end
 
end
 
Move()
 
player.Character.Torso.Changed:connect(function() Move() end)
 
Delay(0, function()
 
while true do
 
local TP1 = player.Character.Torso.Position + player.Character.Torso.CFrame.lookVector*100
 
local TP2 = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*100
 
TP2 = TP2*Vector3.new(1,0,1) + TP1*Vector3.new(0,1,0)
 
if cannon then
 
RS.Parent = nil
 
LS.Parent = nil
 
RA.Anchored = true
 
LA.Anchored = true
 
local Place0 = T.CFrame
 
local H1 = hp1x and hp1 or mouse.Hit.p
 
local H2 = hp2x and hp2 or mouse.Hit.p
 
Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) + (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
 
local Place1 = Place0 + ((Place0.p-H1).unit*-2)
 
RA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(-math.pi/2,0,0)
 
local Place0 = T.CFrame
 
Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) - (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
 
local Place1 = Place0 + ((Place0.p-H2).unit*-2)
 
LA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(-math.pi/2,0,0)
 
T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 20)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
 
else
 
sHand = nil
 
RS.Parent = T
 
LS.Parent = T
 
RA.Anchored = false
 
LA.Anchored = false
 
T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 10.8)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
 
end
 
wait()
 
end
 
end)
 
end)
 
 
local click = 0
 
Delay(0, function()
 
while wait(.5) do
 
cannon = (click ~= 0)
 
end
 
end)
 
 
mouse.Button1Down:connect(function()
 
cannon = true
 
click = click + 1
 
Delay(.5, function() click = math.max(click-1, 0) end)
 
local part = Instance.new("Part")
 
part.Anchored = true
 
part.CanCollide = false
 
part.FormFactor = "Custom"
 
part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
 
part.BrickColor = BrickColor.new("Lime green")
 
local p1, p2 = part:clone(), part:clone()
 
p1.Parent, p2.Parent = player.Character, player.Character
 
p1.Size = Vector3.new(.3,.3,1.5)
 
p2.Size = Vector3.new(.3,.3,1.5)
 
p1.CFrame = RA.CFrame
 
p2.CFrame = LA.CFrame
 
local C = mouse.Hit.p
 
local targ = mouse.Target
 
local CTDist = (C-targ.Position).magnitude
 
local RA1, LA1 = RA.Position, LA.Position
 
local Touched = false
 
local damage = function(hit)
 
if hit.Parent ~= player.Character and hit.Parent.Parent ~= player.Character then
 
pcall(function()
 
local h = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
 
if h then
 
h.MaxHealth = math.min(1e10, math.max(h.MaxHealth, 1))
 
h:TakeDamage(h.MaxHealth*.15)
 
end
 
end)
 
Touched = true
 
end
 
end
 
p1.Touched:connect(damage)
 
p2.Touched:connect(damage)
 
local targ = mouse.Target
 
local diff = (targ.Position - C).magnitude
 
for i = 0, 1, 1/(player.Character["Torso"].Position - C).magnitude*4 do
 
if not Touched then
 
p1.CFrame = CFrame.new(RA1:lerp(C, i), C)
 
p2.CFrame = CFrame.new(LA1:lerp(C, i), C)
 
wait()
 
end
 
end
 
if targ then
 
if math.abs((targ.Position - C).magnitude - diff) < 5 then
 
damage(targ)
 
end
 
end
 
for i = 0, 1, 1/10 do
 
wait()
 
local x1, x2 = p1.CFrame, p2.CFrame
 
p1.Size = p1.Size + Vector3.new(.2,.2,.2)
 
p2.Size = p1.Size
 
p1.CFrame = x1*CFrame.Angles(math.random(0, 100), math.random(0, 100), math.random(0, 100))
 
p2.CFrame = x2*CFrame.Angles(math.random(0, 100), math.random(0, 100), math.random(0, 100))
 
p1.Transparency = i
 
p2.Transparency = i
 
end
 
p1:Destroy()
 
p2:Destroy()
 
end)