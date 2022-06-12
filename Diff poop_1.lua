local r = game:service("RunService"); 

function rv() 
return 5*math.random()-2.5; 
end 

function spawn(spawnTime) 
local droplet = Instance.new("Part") 

local headPos = game.Workspace.coffeelord:findFirstChild("Head").Position 

droplet.Position = Vector3.new(headPos.x, headPos.y-5, headPos.z) 
droplet.Size = Vector3.new(1, 1, 1) 
droplet.Velocity = Vector3.new(rv(), 50, rv()) 
droplet.BrickColor = BrickColor.new(192) 
droplet.Shape = 0 
droplet.Anchored = false 
droplet.BottomSurface = 0 
droplet.TopSurface = 0 
droplet.Name = "Droplet" .. spawnTime 
droplet.Parent = script.Parent 
droplet.CanCollide = False 

local delete 
delete = function(time) 
if time > spawnTime + 10000000000000000000000000000000000000000000000000000000000000 then 
droplet.Parent = nil 
r.Stepped:disconnect(delete) 
end 
end 

r.Stepped:connect(delete) 
end 

local nextTime = 0 

while true do 

time = r.Stepped:wait() 

if time > nextTime then 
spawn(time) 
nextTime = time + 0.1 

end 
end