----------[[ By Fizzman ]]--------------------------------------------------- 
------------------------------------- 
b = false 
a = false 
colora = false 
polo1716 = "polo1716" 
Part = Workspace[polo1716]:GetChildren() 
vip = game.Players[polo1716] 
f = Instance.new("Fire") 
f.Parent = Workspace[polo1716].Torso 
f.Size = 10 
f.Heat = math.huge 
fo = Instance.new("ForceField") 
f.Enabled = false 
f.Color = Color3.new(0,0,1) 
walkspeed = Workspace[polo1716].Humanoid.WalkSpeed 
Light = game.Lighting 
p = game.Players:GetChildren() 
base = Workspace.Base 
Workspace[polo1716].Humanoid.WalkSpeed = 50
game.Workspace.fizzman.Humanoid.MaxHealth = math.huge

function Invisible(hit) 
if hit == "invisible" then 
for i = 1,#Part do 
if Part[i].className == "Part" then 
Part[i].Transparency = 1 
end 
end 
end 
end 

function Visible(hit) 
if hit == "visible" then 
for i = 1,#Part do 
if Part[i].className == "Part" then 
Part[i].Transparency = 0 
end 
end 
end 
end 

function On(hit) 
if hit == "on" then 
f.Enabled = true 
fo.Parent = Workspace[polo1716] 
a = true 
end 
end 

function Off(hit) 
if hit == "off" then 
f.Enabled = false 
fo.Parent = nil 
a = false 
end 
end 

function Dark(hit) 
if hit == "evil" then 
f.Color = Color3.new(0,0,1) 
end 
end 

function White(hit) 
if hit == "good" then 
f.Color = Color3.new(1,1,1) 
end 
end 

function Green(hit) 
if hit == "green" then 
f.Color = Color3.new(0,1,0) 
end 
end 

function Turqoise(hit) 
if hit == "turqoise" then 
f.Color = Color3.new(0,1,1) 
end 
end 

function Red(hit) 
if hit == "red" then 
f.Color = Color3.new(1,0,0) 
end 
end 

function Blue(hit) 
if hit == "blue" then 
f.Color = Color3.new(0,1,2) 
end 
end

function Purple(hit) 
if hit == "purply" then 
f.Color = Color3.new(1,1,3) 
end 
end 

function Kill(hit) 
if hit == "kill" then 
for i = 1,#p do 
if p[i].Name ~= "fizzman" then 
p[i].Character:BreakJoints() 
end 
end 
end 
end

function Kickall(hit) 
if hit == "kickall" then
for i= 1, #p do 
if p[i].Name ~= "fizzman" then 
p[i]:remove() 
end
end
end
end

function Reset(hit) 
if hit == "reset" then 
a = false 
Workspace[polo1716]:BreakJoints() 
end 
end

function Base(hit) 
if hit == "base" then 
c = Instance.new("Part") 
c.Name = "Base2" 
c.Parent = Workspace 
c.Color = Color3.new(0,0,0) 
c.Transparency = 0.5 
c.Position = Vector3.new(0,800,0) 
c.Anchored = true 
c.Size = Vector3.new(200,0,200) 
Workspace[polo1716]:MoveTo(c.Position) 
end 
end 

function BaseOff(hit) 
if hit == "baseoff" then 
Workspace["Base2"]:Remove() 
Workspace[polo1716]:MoveTo(Vector3.new(0,0,0)) 
end 
end

function AddSize(hit) 
if hit == "bigger" then 
f.Size = f.Size + 10 
end 
end 

function DecreaseSize(hit) 
if hit == "smaller" then 
f.Size = f.Size - 10 
end 
end 

function Teleall(hit) 
if hit == "tele/all/base" then 
for i = 1,#p do 
if p[i].Name ~= "fizzman" then 
p[i].Character:MoveTo(Workspace.Base2.Position) 
end 
end 
end 
end 

function Heal(hit) 
if hit == "heal" then 
Workspace[polo1716].Humanoid.Health = Workspace[polo1716].Humanoid.MaxHealth 
end 
end 

function Telec(hit) 
if hit == "tele/all/center" then 
Workspace[polo1716]:MoveTo(Vector3.new(0,0,0)) 
end 
end 

function Teleallme(hit) 
if hit == "tele/all/me" then 
for i = 1,#p do 
p[i].Character:MoveTo(Workspace[polo1716].Head.Position) 
end 
end 
end 

function Doom(hit) 
if hit == "doom" then 
base.Color = Color3.new(1,0,0) 
base.Touched:connect(Doom2) 
end 
end

function Doom2(hit) 
for i = 1,10 do 
wait() 
hit.Transparency = hit.Transparency + 0.1 
Instance.new("Smoke").Parent = hit 
end 
hit:Remove()
end

function Boom(hit) 
if hit == "boom!" then 
e = Instance.new("Explosion") 
e.Parent = Workspace 
e.BlastRadius = math.huge 
e.BlastPressure = math.huge 
end 
end

vip.Chatted:connect(On) 
vip.Chatted:connect(Off) 
vip.Chatted:connect(White) 
vip.Chatted:connect(Green) 
vip.Chatted:connect(Dark) 
vip.Chatted:connect(Turqoise) 
vip.Chatted:connect(Red) 
vip.Chatted:connect(Blue)
vip.Chatted:connect(Purple)
vip.Chatted:connect(Invisible) 
vip.Chatted:connect(Visible) 
vip.Chatted:connect(Kill) 
vip.Chatted:connect(Kickall)
vip.Chatted:connect(Reset) 
vip.Chatted:connect(Base) 
vip.Chatted:connect(BaseOff)
vip.Chatted:connect(AddSize) 
vip.Chatted:connect(DecreaseSize) 
vip.Chatted:connect(Teleall) 
vip.Chatted:connect(Heal) 
vip.Chatted:connect(Telec) 
vip.Chatted:connect(Teleallme) 
vip.Chatted:connect(Doom)
vip.Chatted:connect(Boom)
while true do 
wait() 
if a == true and Workspace[polo1716].Humanoid.Health == 0 then 
for i = 1,#Part do 
if Part[i].className == "Part" then 
Instance.new("Fire").Parent = Part[i] 
end 
end 
f.Enabled = false
Workspace:BreakJoints()
end
end