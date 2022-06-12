-- Sea Wall
Colors = {"Bright blue","Bright bluish green","Pastel Blue","Cyan"} local m = Instance.new("Model") m.Name = "Gen" m.Parent = game.Workspace for z = 1,10 do for y = 1,10 do p = Instance.new("Part") p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)]) p.Anchored = true p.Size = Vector3.new(1,4.8,5) p.Position = Vector3.new(2,y*4.8,(z*5)-1) p.Parent = m wait(.05) end wait(.05) end
-- Dark Wall
Colors = {"Institutional white","Light stone grey","Medium stone grey","Dark stone grey","Black"} local m = Instance.new("Model") m.Name = "Gen" m.Parent = game.Workspace for x = 0,-10,-1 do for y = 1,10 do p = Instance.new("Part") p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)]) p.Anchored = true p.Size = Vector3.new(5,4.8,1) p.Position = Vector3.new(x*5,y*4.8,1) p.Parent = m wait(.05) end wait(.05) end
-- Camo Wall
Colors = {"Bright green","Camo","Earth green","Dark green"} local m = Instance.new("Model") m.Name = "Gen" m.Parent = game.Workspace for x = 0,-10,-1 do for y = 1,10 do p = Instance.new("Part") p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)]) p.Anchored = true p.Size = Vector3.new(5,4.8,1) p.Position = Vector3.new(x*5,y*4.8,51) p.Parent = m wait(.05) end wait(.05) end
-- Earth Wall
Colors = {"Brown","Nougat","Dark orange","Reddish brown","CGA brown"} local m = Instance.new("Model") m.Name = "Gen" m.Parent = game.Workspace for z = 1,10 do for y = 1,10 do p = Instance.new("Part") p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)]) p.Anchored = true p.Size = Vector3.new(1,4.8,5) p.Position = Vector3.new(-52,y*4.8,(z*5)-2) p.Parent = m wait(.05) end wait(.05) end

-- My favorite scripts. I just love randomly generated things.
-- Oh, and to remove the walls:

for i,j in pairs(game.Workspace:GetChildren()) do if j.Name == "Gen" then j:remove() end end 