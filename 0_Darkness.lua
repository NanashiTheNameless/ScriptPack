--This is the normal version of the Darkness script baseplates are deletable and the lighting effects can be changed back.
--This script was put together by Doomdrvk
-- Let me make this clear I'm not a scripter, I just put this together using parts of other scripts that I understand and my miniscule amount of lua knowledge.
for i,v in pairs(game.Players:GetChildren()) do
game:GetService("Chat"):Chat(v.Character.Head,"Darkness Falls Upon You") --Change text here
wait(3)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = true
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 5, 2000)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
wait(1)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
wait(1)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
local pt = Instance.new("Part")
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
wait(1)
pt.BrickColor = BrickColor.new("Really black")
pt.Anchored = true
pt.CanCollide = false
pt.Locked = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Darkness"
pt.Size = Vector3.new(2000, 1, 2000)
wait(2)	
    game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(1,1,1);
            game.Lighting.Ambient=Color3.new(0,0,0);
 	    game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
end