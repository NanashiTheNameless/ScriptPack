----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") script.Parent = h 
h.Name = "Plane" 
h.Parent = game:getService("Players").acb227.Backpack 
wait(0.5) 
end 
local bin = script.Parent 
local player = bin.Parent.Parent 

local main = nil 
local holding=nil 
local lazor=nil 
local pq = Instance.new("Part") 
pq.Parent = nil 
fire={} 
main = pq 
local CFI = Instance.new("BodyGyro") --dont remove
CFI.maxTorque=Vector3.new(math.huge,math.huge,math.huge) 
local pos = Instance.new("BodyPosition") -- dont delete
pos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
s=0 
num=5 
off=false 
poses = {CFI} 
stander=false 


function onMoved(mouse) 
hit = mouse.Hit.p 
s=s+0.1 
CFI.cframe = CFrame.new(main.Position,hit) * CFrame.fromEulerAnglesXYZ(0,0,11) 
for i = 1, #poses do 
poses[i].cframe = CFrame.new(main.Position,hit) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function onButton1Down(mouse) 
hit = mouse.Hit.p 
target = mouse.Target 
hold = true 
while hold == true do 
pos.position = main.Position + (hit-main.Position).unit*num 
wait() 
end 
pos.position=main.Position 
end 

function onButton1Up(mouse) 
hit = mouse.Hit.p 
hold = false 
end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if (key=="q") then 
local p = player.Character:findFirstChild("HoverBoardV1") 
if p~= nil then 
p:remove() 
end 
local omfg = Instance.new("Model") 
omfg.Name = "HoverBoardV1" 
omfg.Parent = player.Character--put the parent here!! 
local ma = Instance.new("Seat") 
ma.BrickColor = BrickColor.new("Really black")
ma.Anchored = false 
ma.CanCollide = true 
ma.formFactor = Enum.FormFactor.Plate 
ma.Size = Vector3.new(3, 0.400000006, 3) 
ma.Parent = omfg 
ma.Transparency = 0 
ma.Reflectance =1 
ma.TopSurface = "Smooth" 
ma.BottomSurface = "Smooth" 
ma.Locked = true 
local BGG = CFI:clone() 
BGG.Parent = p 



main = ma 
CFI.Parent=ma 
pos.Parent=ma 

pos.position=player.Character.Head.Position-Vector3.new(0,-2,0) 
omfg:moveTo(player.Character.Head.Position-Vector3.new(0,-2,0)) 



end 
end 

end 


function onDeselected(mouse) 
hold = false 
end 

function onSelected(mouse) 
if player.Name ~= "acb227" then 

bin:remove() 
else 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.Move:connect(function() onMoved(mouse) end) 
end 
end 

bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected)  