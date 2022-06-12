me = game.Players.acb227.Character


if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") script.Parent = h 
h.Name = "MultiTool" 
h.Parent = game:getService("Players").acb227.Backpack 
wait(0.5) 
end 
bin = script.Parent 
player = bin.Parent.Parent 

-------------------------------magnatude bit-------------------------
main = nil 
holding=nil 
lazor=nil 
c = me.Head 
local pq = Instance.new("Part") 
pq.Parent = nil 
fire={} 
main = pq 
local CFI = Instance.new("BodyGyro") 
CFI.maxTorque=Vector3.new(math.huge,math.huge,math.huge) 
local pos = Instance.new("BodyPosition") 
pos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
s=0 
num=5 
off=false 
poses = {CFI} 
stander=false 
function wire(pos1,pos2,col,tra,ref) 
local P = Instance.new("Part") 
local P2 = pos1 
local P1 = pos2 
P.Name = "Wire" 
local Place0 = CFrame.new(P1.x,P1.y,P1.z) 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(P1 - P2).magnitude) 
P.CFrame = CFrame.new((P1 + P2)/2,Place0.p) 
P.Parent = script.Parent 
P.BrickColor = BrickColor.new(col) 
P.Transparency = tra 
P.Reflectance = ref 
P.Anchored = true 
P.CanCollide = false 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Parent=player.Character 
local m = Instance.new("SpecialMesh") 
m.Parent = P 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.2,0.2,1) 
game:getService("Debris"):AddItem(P,0.5) 
end 


function onMoved(mouse) 

end 

function onButton1Down(mouse) 

end 

function onButton1Up(mouse) 

end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="k" then 
if mouse.Target ~= nil and mouse.Target.Name ~= "Base" then 
mouse.Target:remove ()
end 
wire(c.Position,mouse.hit.p,"Really red",0.5,0.5) ----------it being used
end 
end 

if key=="b" then 
if mouse.Target ~= nil then 
bomb = Instance.new("Part") 
bomb.Size = Vector3.new(1, 1, 1) 
bomb.Parent = game.Workspace
bomb.Position = mouse.hit.p
bomb.Name = "staffstuff"
smoke = Instance.new("Smoke") 
smoke.Parent = bomb
smoke.Opacity = 0.5
smoke.size = 30
end 
wire(c.Position,mouse.hit.p,"Really red",0.5,0.5) ----------it being used
end 

end 


function onDeselected(mouse) 
hold = false 
end 




function onSelected(mouse) 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.Move:connect(function() onMoved(mouse) end) 
end 

print("good")

bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected)  