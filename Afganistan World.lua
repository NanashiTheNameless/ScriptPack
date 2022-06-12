WARSOUNDS = true -- plays war sounds
-------------------------
if WARSOUNDS == true then
myears = Instance.new('Sound')
myears.Parent = workspace
myears.Looped = true
myears.Name = "Darude on meth"
myears.Playing = true
myears.SoundId = "rbxassetid://216599097"
myears.Volume = .5
myears.TimePosition = 0
end
game.Lighting.TimeOfDay = "14"
game.Lighting.Brightness = 1.3
o1 = Instance.new("Sky")
o1.Name = "Desert Sky"
o1.Parent = game.Lighting
o1.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1013852"
o1.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1013853"
o1.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1013850"
o1.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1013851"
o1.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1013849"
o1.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1013854"
for _,c in pairs(game.Workspace:GetChildren()) do
	    if c:IsA("Part") then
        c.BrickColor = BrickColor.new("Brick yellow")
	    end
		    if c:IsA("Model") then
        	for _,b in pairs(c:GetChildren()) do
	    if b:IsA("Part") then
        b.BrickColor = BrickColor.new("Brick yellow")
	    end
			    if b:IsA("Model") then
        	for _,a in pairs(b:GetChildren()) do
	    if a:IsA("Part") then
        a.BrickColor = BrickColor.new("Brick yellow")
	    end
    end
			end
end
		end
	end