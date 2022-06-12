name = "LocalPlayer" 

if game.Players:findFirstChild(name).Backpack:findFirstChild("Bomb") == nil then 
t = Instance.new("HopperBin") 
t.Parent = game.Players:findFirstChild(name).Backpack 
t.Name = "Bomb" 
end 



str = Instance.new("StringValue") 
str.Parent = game.Players:findFirstChild(name).Backpack.Bomb 
str.Name = "creator" 


script.Parent = game.Players:findFirstChild(name).Backpack.Bomb 
bin = script.Parent 
bin.creator.Value = bin.Parent.Parent.Name 

z = Instance.new("Part") 
z.Name = "Bomb" 
z.Size = Vector3.new(1, 1, 1) 
z.BrickColor = BrickColor.new(26) 
z.Shape = "Ball" 
z.Anchored = true 
script.Parent.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() 
if bin.Parent.Parent.Character.Humanoid.Health ~= 0 then 
local u = z:clone() 
u.Parent = Workspace 
u.CFrame = mouse.Hit 
bin.creator:clone().Parent = u 
end 
end) 
mouse.KeyDown:connect(onKeyDown) 
end) 
function onKeyDown(key) 
if (key~=nil) then 
key = key:lower() 
if (key == "e") then 
bombs = game.Workspace:GetChildren() 
for i = 1, #bombs do 
if bombs[i].Name == "Bomb" then 
if bombs[i].creator.Value == bin.Parent.Parent.Name then 
e = Instance.new("Explosion") 
e.Parent = bombs[i] 
e.BlastPressure = 120000 
e.BlastRadius = 12 
e.Position = bombs[i].Position 
wait(0.2) 
bombs[i]:Remove() 
end end end end end end