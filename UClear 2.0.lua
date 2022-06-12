game.Workspace.Terrain:clear()
function X(ws)
for _, v in pairs(ws:GetChildren()) do
v.Archivable = true
if v.Name ~= "UClear" and v.Name ~= "Terrain" and game.Players:GetPlayerFromCharacter(v)==nil and v~=game.Workspace.CurrentCamera then
if v:IsA("Script") or v:IsA("LocalScript") then
v.Disabled = true
v:remove()
else
v:remove()
end
end
if game.Workspace:findFirstChild("Base") ~= nil then
else
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
end
end
end
X(game.Workspace)
X(game.Lighting)
X(game.StarterGui)
X(game.StarterPack)
X(game.Debris)
X(game.Teams)