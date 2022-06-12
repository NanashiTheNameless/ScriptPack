--2D script
for i,p in pairs(game.Players:GetChildren()) do 
if p.Character ~= nil then 
me = p.Name 
local m = game.Players[me].Character 
local torso = m.Torso 
local p = Workspace.Base 
shield = Instance.new("Part") 
shield.Name = "Shield" 
shield.CFrame = torso.CFrame - Vector3.new(0,0.3,0) 
shield.Size = Vector3.new(2, 2, 2) 
shield.formFactor = 0 
shield.BrickColor = BrickColor.new("Lime green")
shield.Parent = p 
shield.Locked = true 
shield.Transparency = 0.6 
shield.Shape = "Ball" 
shield.CanCollide = true 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = shield 
local C1 = torso.CFrame 
local C0 = torso.CFrame - Vector3.new(0,0.3,0) 
w.C1 = C1 
w.C0 = C0 
w.Parent = m 

local D1 = Instance.new("Decal") 
D1.Parent = shield 
D1.Face = "Front" 
D1.Texture = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..me 

local D2 = Instance.new("Decal") 
D2.Parent = shield 
D2.Face = "Back" 
D2.Texture = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&id=53917288" 
end 
end 