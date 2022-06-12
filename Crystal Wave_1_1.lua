tool = Instance.new("Tool") 
Handle = Instance.new("Part") 

Handle.Shape = "Ball" 
Handle.formFactor = 0 
Handle.TopSurface = 0 
Handle.BottomSurface = 0 
Handle.Locked = true 
Handle.Transparency = 0 
Handle.Reflectance = 1 
Handle.Name = "Handle" 
Handle.BrickColor = BrickColor.new("Really red") 
Handle.Transparency = 0.3 
Handle.Size = Vector3.new(1,1,1) 
Handle.Parent = tool 

RockFolder = Instance.new("Model") 
RockFolder.Name = "Rocks" 
RockFolder.Parent = Workspace 


function Sound(SoundId) 
s = Instance.new("Sound") 
s.SoundId = SoundId 
s.Name = "ToolSound" 
s.Parent = Handle 
s.Pitch = 1 
s.Volume = 1 
return s 
end 

Engage = Sound("http://www.roblox.com/asset/?id=11450310") 

RockFolder.ChildAdded:connect(function(Stone) 
Stone.Touched:connect(function (hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= tool.Parent.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health-100 
hit.Parent.Humanoid.Sit = true 
hit.Parent.Torso.Velocity = Vector3.new(math.random(-0,00),math.random(125,150),math.random(-00,00)) 
end 
end) 
Stone.CFrame = Stone.CFrame*CFrame.new(0,0,0) 
for i=1,25 do 
Stone.CFrame = Stone.CFrame*CFrame.new(0,0.8,0) 
wait() 
end 
wait(0.05) 
for i=1,25 do 
Stone.CFrame = Stone.CFrame*CFrame.new(0,-0.8,0) 
wait() 
end 
Stone:remove() 
end) 



function Stone(CFRAME,Number) 
S = Instance.new("Part") 
S.Name = "Rock" 
S.formFactor = 0 
S.Anchored = true 
S.TopSurface = "Smooth" 
S.BottomSurface = "Smooth" 
S.Locked = true 
S.Transparency = 0.3 
S.Reflectance = 1 
S.CanCollide = true 
S.Size = Vector3.new(math.random(02,07),math.random(20,25),math.random(02,07)) 
S.BrickColor = BrickColor.new("Really red") 
S.CFrame = CFRAME*CFrame.new(0,0,Number*10)*CFrame.fromEulerAnglesXYZ(2*math.pi/760*math.random(-20,20),2*math.pi/760*math.random(- 

500,500),2*math.pi/360*math.random(-20,20)) 
S.Parent = RockFolder 

end 


D = false 

tool.Activated:connect(function() 
if D == true then return end 
Engage:play() 
D = true 
Dir = tool.Parent.Torso.CFrame 
print(Dir) 
for i=1,100 do 
Stone(Dir,i*-1) 
wait(0.05) 
end 
D = false 
end) 

Player = game.Players.yfc 
tool.Parent = Player.Backpack 
RockFolder.Parent = Player.Character 
tool.Name = "Crystal Wave" 
--[[p = Instance.new("Part") 
p.Parent = Workspace 
p.Anchored = true 
p.BottomSurface = "Smooth" 
p.Position = Vector3.new(10, 50, 20) 
p2 = p:clone() 
p2.Parent = Workspace 
p2.Position = Vector3.new(20, 15, 2) 
a = Instance.new("Part") 
a.Parent = Workspace 
a.Anchored = true 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 
a.BrickColor = BrickColor.new("Really red") 
a.Size = Vector3.new(1,((p.Position - p2.Position).magnitude),1) 
a.CFrame = CFrame.new((p1.Position+ p2.Position)/2, p1.Position)*CFrame.fromEulerAnglesXYZ(math.pi/7, 0, 0) 



]] 
