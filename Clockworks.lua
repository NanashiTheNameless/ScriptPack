game.Players.ic3w0lf589.CharacterAppearance = "http://www.roblox.com/Data/Get.ashx?hash=34ae6867183859adff63d67e2bd36665;http://www.roblox.com/Data/AssetFetch.ashx?hash=3958d55616025a333b61ba0908a2df92&isapproved=true" 

script.Parent = game.Workspace.ic3w0lf589.TeapotTurret 

local hat = script.Parent 
local Rocket = hat.Handle 
local block = hat.Handle:clone() 
block.Size = Vector3.new(4,7,3) 
block.Name = "shield" 
number = 4 
radius = 6 

teapot = hat.Handle:clone() 
teapot.Size = Vector3.new(65,65,65) 
teapot.Mesh.Scale = Vector3.new(100,100,100) 
teapot.Name = "massive teapot" 
teapot.Size = Vector3.new(65,65,65) 
teapot.Mesh.Scale = Vector3.new(100,100,100) 
teapot.Name = "massive teapot" 

function either(number) 
if(math.random(1,2) == 1) then return number end 
return -number 
end 

function glue(x, y) 
weld = Instance.new("Weld") 

weld.Part0 = x 
weld.Part1 = y 

local HitPos = x.Position 

local CJ = CFrame.new(HitPos) 
local C0 = x.CFrame:inverse() *CJ 
local C1 = y.CFrame:inverse() * CJ 

weld.C0 = C0 
weld.C1 = C1 

weld.Parent = x 
end 

function fire(vTarget,offset) 
obj = vTarget 
vTarget = vTarget.Position 


local dir = vTarget - hat.Handle.Position 
dir = dir.unit 
missile = {} 
pos = {} 
hatFrame = {} 
misFrame = {} 
seed = {} 
for i=1,number do 
seed[i] = math.random(0,100000) 
missile[i] = Rocket:clone() 
missile[i].Name = "teapot" .. seed[i] 
pos[i] = hat.Handle.Position + Vector3.new(math.random(-10,10),4,math.random(-10,10)) 
hatFrame[i] = hat.Handle.CFrame 
misFrame[i] = hatFrame[i] * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,0)) 
--missile.Position = pos 
missile[i].CFrame = CFrame.new(pos[i], pos[i] + dir) 

missile[i].RocketScript.Disabled = false 
missile[i].Parent = game.Workspace 
missile[i].homing:Fire() 
missile[i].homing.ThrustP = 50 
missile[i].homing.TargetOffset = misFrame[i].p + offset 
end 

wait(.4) 

for i=1,number do 
teapot = game.Workspace:findFirstChild("teapot" .. seed[i]) 
if(teapot ~= nil) then 
teapot.homing.ThrustP = 30 
teapot.homing.TargetOffset = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)) 
teapot.homing.Target = obj 
end 
end 
end 

function shield() 
Torso = hat.Parent.Torso.CFrame 
bricks = {} 
bricks[1] = Torso * CFrame.new(0,0,-radius) 
bricks[2] = Torso * CFrame.new(0,0,radius) 
bricks[3] = Torso * CFrame.new(-radius,0,0) 
bricks[4] = Torso * CFrame.new(radius,0,0) 
for i=1,#bricks do 
newbrick = block:clone() 
newbrick.CFrame = CFrame.new(bricks[i].p, Torso.p) 
newbrick.Parent = game.Workspace 
glue(newbrick,hat.Parent.Torso) 
end 
end 

debounce = true 
function teapottouch(hit) 
if not debounce then return end 
debounce = false 
pos = hit.Position 
boom = Instance.new("Explosion") 
boom.BlastRadius = 30 
boom.BlastPressure = 500000 
boom.Position = pos 
boom.Parent = game.Workspace 
wait(1) 
debounce = true 
end 

function gf(player) 
Torso = player.Position 
pos = Torso + Vector3.new(0,750,0) 
pot = teapot:clone() 
pot.Position = pos 
pot.Elasticity = 0.1 
pot.Parent = game.Workspace 
connection = pot.Touched:connect(teapottouch) 
end 

function kill(hit) 
local human = hit.Parent:findFirstChild("Humanoid") 
if (human ~= nil) then 
human.Health = 0 
end 
end 

function trigger(msg, recipient) 
if(msg == "spew!") then 
children = game.Players:children() 
for i=1,#children do 
if(children[i].Name ~= "[YOUR NAME]") then fire(children[i].Character.Torso,Vector3.new(0,25,0)) end 
end 
end 
if(msg == "abort") then 
children = game.Workspace:children() 
for i=1,#children do 
if(string.sub(children[i].Name,1,6) == "teapot") then children[i].homing:Abort() end 
if(children[i].Name == "shield" or children[i].Name == "massive teapot" or children[i].Name == "TVehicle") then children[i]:remove() end 
end 
end 
if(msg == "shield!") then 
shield() 
end 
if(msg == "i can fly") then 
hat.TVehicle:move((hat.Handle.CFrame * CFrame.new(0,3,-10)).p) 
hat.TVehicle.Front.Propulsion.TargetOffset = hat.Handle.Position + Vector3.new(5,-5,0) 
end 
if(msg == "arm front") then 
hat.TVehicle.Front.Touched:connect(kill) 
end 
if(tonumber(msg) ~= nil) then 
power = tonumber(msg) 
hat.TVehicle.Front.Propulsion.MaxSpeed = power 
end 
children = game.Players:children() 
for i=1,#children do 
if(children[i].Name == msg) then 
torso = children[i].Character.Torso 
prop = hat.TVehicle.Front.Propulsion:clone() 
prop.Target = hat.TVehicle.back 
prop.MaxSpeed = 1000 
prop.TargetOffset = Vector3.new(0,0,0) 
prop.MaxTorque = Vector3.new(4e+10,4e+10,4e+10) 
prop.Parent = torso 
prop:Fire() 
end 
end 
if(string.sub(msg,1,6) ~= "Teapot") then return end 
name = string.sub(msg,8,-2) 
children = game.Players:children() 
for i=1,#children do 
if(children[i].Name == name) then fire(children[i].Character.Torso,Vector3.new(0,25,0)) end 
end 

end 

wait(1) 
while hat.Parent.Name == "Workspace" do wait(2) end 
print("Hat picked up") 
name = hat.Parent.Name 
if(name ~= "ic3w0lf589" and name ~= "lawhl") then return end 
print("vinceyoung66 confirmed") 
game.Players.ic3w0lf589.Chatted:connect(trigger) 

hat.Fly2.Parent = game.Players.ic3w0lf589.Backpack 
hat["The One Tool"].Parent = game.Players.ic3w0lf589.Backpack

~Vinceyoung66~
