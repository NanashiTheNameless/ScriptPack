plyr = game.Players.yfc
local mode = 0

dist = 25 
me = Workspace.yfc.Head 
script.Parent = me.Parent 
local part = Instance.new("Part") 
part.Parent = me 
part.BrickColor = BrickColor.new("Bright blue") 
part.Transparency = 0.5 
part.Anchored = false 
part.CanCollide = false 
part.Size = Vector3.new(1, 1, 1) 
part:BreakJoints() 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(dist*2, dist*2, dist*2) 
local weld = Instance.new("Weld") 
weld.Parent = part 
weld.Part0 = part 
weld.Part1 = me 

function cmds(msg) 
if msg == "mode:sit" then 
mode = 1 
part.BrickColor = BrickColor.new("Bright neon") 
end 
if msg == "mode:kill" then 
part.BrickColor = BrickColor.new("Bright red") 
mode = 0 
end 
if msg == "mode:fly" then 
mode = 2 
part.BrickColor = BrickColor.new("Bright yellow") 
end 
if msg == "mode:jump" then 
mode = 3 
part.BrickColor = BrickColor.new("Bright green") 
end 
if msg == "mode:kick" then 
mode = 4 
part.BrickColor = BrickColor.new("New Yeller") 
end 
if string.sub(msg, 1, 4) == "mag:" then 
said = string.lower(string.sub(msg, 5)) 
dist = said 
mesh.Scale = Vector3.new(dist*2, dist*2, dist*2) 
end 
end 

while true do 
plyr.Chatted:connect(cmds) 
for _, v in pairs(game.Players:GetChildren()) do 
if not v.Character then return end 
if (v.Character.Torso.Position - me.Position).magnitude < dist then 
if v.Name ~= me.Parent.Name then 
if mode == 0 then 
v.Character:BreakJoints() 
end 
if mode == 1 then 
v.Character.Humanoid.Sit = true 
end 
if mode == 2 then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame + Vector3.new(0, 500, 0) 
end 
if mode == 3 then 
v.Character.Humanoid.Jump = true 
end 
if mode == 4 then 
for i = 0, 1, 0.1 do 
v.Character.Torso.CFrame = v.Character.Torso.CFrame + Vector3.new(math.rad(860*i), 0, 0) 
wait() 
end 
end 
end 
end 
end 
wait(0.3) 
end --mediafire