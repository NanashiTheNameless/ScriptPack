me = "acb227" 

p = Instance.new("Part",Workspace) 
p.BrickColor = BrickColor.random() 
p.Name = "Base" 
p.Size = Vector3.new(1,1,1) 
p.Anchored = true 
p.Shape = "Ball" 
p.CFrame = game.Players[me].Character.Torso.CFrame + Vector3.new(0,0,-4)

f = Instance.new("Fire",p)
f.Color= p.Color

while true do 
--[[if p.CFrame.X => game.Players[me].Character.Torso.CFrame.X+10 then 
p.CFrame.X = game.Players[me].Character.Torso.CFrame.X+10 
end 
if game.Players[me].Character.Torso.CFrame.X-10 => p.CFrame.X then 
p.CFrame.X = game.Players[me].Character.Torso.CFrame.X-10 
end 
if p.CFrame.Y => game.Players[me].Character.Torso.CFrame.Y+5 then 
p.CFrame.Y = game.Players[me].Character.Torso.CFrame.Y+5 
end 
if p.CFrame.Y <= game.Players[me].Character.Torso.CFrame.Y-3 then 
p.CFrame.Y = game.Players[me].Character.Torso.CFrame.Y-3 
end 
if p.CFrame.Z => game.Players[me].Character.Torso.CFrame.Z+10 then 
p.CFrame.Z = game.Players[me].Character.Torso.CFrame.Z+10 
end 
if p.CFrame.Z <= game.Players[me].Character.Torso.CFrame.Z-10 then 
p.CFrame.Z = game.Players[me].Character.Torso.CFrame.Z-10 
end]] 

p.CFrame = p.CFrame + Vector3.new(math.random(-0.6,0.6),math.random(-0.2,0.4),math.random(-0.6,0.6))
wait(0.1) 
end 