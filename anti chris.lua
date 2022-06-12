plyr = game.Players.acb227 
char = plyr.Character 
fire = Instance.new("Fire", char.Head) 
fire.Heat = 255 
fire.Color = Color3.new(1, 0, 0) 
fire.Size = 2555

local part = Instance.new("Part", char) 
part.Anchored = true 
part.Size = Vector3.new(10, 50, 10) 
part.CFrame = CFrame.new(0, 25, 0) 
part.BrickColor = BrickColor.new("Really black") 
fire2 = Instance.new("Fire", part) 
fire2.Heat = 255 
fire2.Color = Color3.new(1, 0, 0) 
fire2.Size = 2555
local part2 = Instance.new("Part", char) 
part2.Anchored = true 
part2.Size = Vector3.new(40, 15, 9) 
part2.CFrame = CFrame.new(0, 15, 0) 
part2.BrickColor = BrickColor.new("Really black") 
fire3 = Instance.new("Fire", part2) 
fire3.Heat = 255 
fire3.Color = Color3.new(1, 0, 0) 
fire3.Size = 2555
plyr = game.Players.acb227 
char = plyr.Character 
while true do 
for _,v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - char.Torso.Position).magnitude < 25 then 
local fire = Instance.new("Fire", v.Character.Torso) 
fire.Heat = 255 
fire.Color = Color3.new(1, 0, 0) 
fire.Size = 2555
end 
end 
wait() 
end 