local mod = Instance.new("Modle") 
mod.Parent = workspace 
mod.Name = "Tower" 
--/Edit under this\-- 
local Color = "Bright blue" --Change to your color 
local Trans = 5 --Change to the transparency you want the bricks 
local Reflect = 5 --Change to the reflectancy you want the bricks 





--/Don't edit below this\--
local ha = Instance.new("Part") 
ha.Name = "Part" 
ha.Parent = mod 
ha.Anchored = true 
ha.Size = Vector3.new(15,1,15) 
ha.CFrame = CFrame.new(0, 0, 35) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new(Color) 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = Trans 
ha.Reflectance = Reflect 