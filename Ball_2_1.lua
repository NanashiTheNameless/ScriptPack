pcall(function() Workspace.Base.Jail:Remove() end) 
noob = "SpleenYanks" 
local spread = 10 
local m = Instance.new("Model") 
m.Name = "Jail" 
m.Parent = Workspace.Base 
for ii = 1,11 do 
for i = 1, 45 do 
p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Cyan") 
p.Transparency = 0.8 
p.Name = "Part"
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = game.Players[noob].Character.Torso.CFrame*(CFrame.fromEulerAnglesXYZ(math.rad(i*8),0,math.rad(ii*8))*CFrame.new(spread,ii/10,0)) 
p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Cyan") 
p.Transparency = 0.8 
p.Name = "Part"
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = game.Players[noob].Character.Torso.CFrame*(CFrame.fromEulerAnglesXYZ(math.rad(i*8),0,math.rad(ii*8))*CFrame.new(-spread,ii/10,0)) 
end 
end 
