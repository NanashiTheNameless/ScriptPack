--Fencing Restore script made by Yelock--
--Now restoring fencing Please wait ----------
--Censore
--mediafire
--hitler
--megaupload
--globe of geeks
--lego
--cheez
--chicken
--requires c>2
while true do 
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
Spawn.Name="lol"
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
X(game.Teams)
X(game.StarterGui)
wait(0.01)
game.Workspace:InsertContent("rbxassetid://118791953")
wait(0.01)
game.workspace.Base:Destroy()
wait(0.01)
game.workspace.lol:Destroy()
wait(0.01)
game.Lighting.Ambient = Color3.new(255,255,255)
game.Lighting.TimeOfDay = 12
game.Lighting.Brightness = 0.5
game.Lighting.FogEnd = 100000
game.Lighting.GlobalShadows = false -- change it to true if you want :3
game.Lighting.Sky:Destroy()
game.Lighting.FogEnd = 100000
game.Lighting.Brightness = 1
game.Workspace.Terrain:clear()
end
--
local t = Instance.new('Hint',workspace) game.workspace.Hint.Text = "Fencing has successfully been restored."
wait(5)
t:Destroy()