local awshum = 2 
local me = "acb227" 
local player = game.Players[me] 
local char = player.Character 

pcall(function() char["SPLEEEEEEENNYY"]:remove() end)

local pet = Instance.new("Model", char) 
pet.Name = "SPLEEEEEEENNYY" 
local orb = Instance.new("Part", pet) 
orb.Name = "Head" 
orb.BrickColor = BrickColor.new("Bright blue") 
orb.Size = Vector3.new(awshum, 1, awshum) 
orb.Anchored = true 
orb.CFrame = CFrame.new(2, 2, 2) 
local hum = Instance.new("Humanoid", pet) 
hum.Health = 0 
hum.MaxHealth = 0 
local orbm = Instance.new("SpecialMesh", orb) 
orbm.MeshType = "Sphere" 
orbm.Scale = Vector3.new(1, 1.5, 1) 
local faic = Instance.new("Decal", orb) 
faic.Face = "Front" 
faic.Texture = "http://www.roblox.com/asset/?id=56936322" 

while true do 
orb.CFrame = char.Head.CFrame + Vector3.new(0, awshum*2, 0) 
wait() 
end 