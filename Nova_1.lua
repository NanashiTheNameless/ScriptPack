version_no = "v2.0"
print("NOVA Clear "..version_no.." activated!")
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
if w[i].className == "Script" then
w[i].Disabled = true
end
game:GetService("Debris"):AddItem(w[i], 0)
end 
end 
local a=game.Workspace:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0)
end
game:GetService("Debris"):AddItem(a[s], 0) 
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0) 
end
game:GetService("Debris"):AddItem(a[s], 0)
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0) 
end
game:GetService("Debris"):AddItem(a[s], 0) 
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq]:Remove()
end
a[s]:Remove()
end 
end 
end
local w=game.Debris:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
if w[i]:IsA("Script") then
w[i].Disabled = true
end
game:GetService("Debris"):AddItem(w[i], 0)
end 
end
local w=game.Workspace:GetChildren() 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.Transparency = 1
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local selectionbox=Instance.new("SelectionBox",Base)
selectionbox.Adornee = selectionbox.Parent
selectionbox.Color = BrickColor.new(1,0,0)
local skybox=Instance.new("Sky",game.Lighting)
skybox.SkyboxBk="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxDn="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxLf="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxFt="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxRt="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxUp="http://www.roblox.com/asset/?id=50282196"
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
msg = Instance.new("Hint")
for i=1,#w do 
MC=msg:Clone()
MC.Parent = workspace
MC.Text = w[i].Name.." survived the clear."
wait(0.9)
 MC:Remove()
    end