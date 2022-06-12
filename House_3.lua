me="lordsheen" 
player=game.Players[me] 
char=player.Character 
t=char.Torso 

pcall(function() char.MiniHouse:Remove() end) 

color = {BrickColor.new("Really red"),BrickColor.new("Really blue"),BrickColor.new("Dark green"),BrickColor.new("Bright orange")} 
selected = math.random(1,#color) 

m=Instance.new("Model",char) 
m.Name="MiniHouse" 


b=Instance.new("Seat",m) 
b.Name="Block" 
b.Size=Vector3.new(4,4,4) 
b.BrickColor=color[selected] 
Instance.new("BlockMesh",b) 

bp=Instance.new("BodyPosition",b) 
bp.position = Vector3.new(t.Position.X,t.Position.Y+6,t.Position.Z+4)

c=Instance.new("WedgePart",m) 
c.Name="Roof1" 
c.BrickColor=BrickColor.new("Really black") 
c.Size=Vector3.new(4,1,2) 

d=Instance.new("WedgePart",m) 
d.Name="Roof1" 
d.BrickColor=BrickColor.new("Really black") 
d.Size=Vector3.new(4,1,2) 



local w = Instance.new("Weld") 
w.Part1 = b 
w.Part0 = c 
local C1 = b.CFrame 
local C0 = CFrame.Angles(0,math.pi/2,0)*(b.CFrame-Vector3.new(b.Size.Z/4,b.Size.Y/2+c.Size.Y/2,0)) 
w.C1 = C1 
w.C0 = C0 
w.Parent = m 

local w = Instance.new("Weld") 
w.Part1 = b 
w.Part0 = d 
local C1 = b.CFrame 
local C0 = CFrame.Angles(0,math.pi+math.pi/2,0)*(b.CFrame-Vector3.new(-b.Size.Z/4,b.Size.Y/2+c.Size.Y/2,0)) 
w.C1 = C1 
w.C0 = C0 
w.Parent = m 

while true do 
wait() 
bp.position = Vector3.new(t.Position.X,t.Position.Y+6,t.Position.Z+4) 
end 

while true do 
wait(2) 
color = {BrickColor.new("Really red"),BrickColor.new("Really blue"),BrickColor.new("Dark green"),BrickColor.new("Bright orange")} 
selected = math.random(1,#color) 
b.BrickColor=color[selected] 
end 