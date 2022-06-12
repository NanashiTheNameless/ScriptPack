local meshID='http://www.roblox.com/asset/?id=23265015'
local textureID='http://www.roblox.com/asset/?id=23264988'
local create=assert(LoadLibrary'RbxUtility').Create
local player=game:service'Players'.LocalPlayer
local mouse=player:GetMouse()
local krakenmesh
local camera = workspace.CurrentCamera
local kraken
local save = CFrame.new(0,0,0)
local ckraken=function()
kraken=create'Part'{
Name=game:service'Players':GetChildren()[math.random(1,#game:service'Players':GetChildren())].Name,
Parent=workspace,
Anchored=true,
Locked = true,
CFrame = save,
BrickColor = BrickColor.new('Bright red'),
Size=Vector3.new(10,10,10),
[create.E'Touched'] = function(m)
if m and m.Parent and m.Parent:IsA'Model' and m.Parent:FindFirstChild'Humanoid' then
m.Parent.Humanoid.Health=0
end
end
}
krakenmesh=create'SpecialMesh'{
Name='Mesh',
MeshId=meshID,
TextureId=textureID,
Parent=kraken,
Scale=Vector3.new(10,10,10),
}
end

wait(2)
player.Character:Destroy()
ckraken()
camera.CameraSubject=kraken
_G.ms = 1
dup = false
wup = false
sup = false
aup = false
eup = false
qup = false
zup = false
xup = false
mouse.KeyUp:connect(function(k)
if k:lower()=='d' then
dup = true
end
if k:lower()=='w' then
wup = true
end
if k:lower()=='s' then
sup = true
end
if k:lower()=='a' then
aup = true
end
if k:lower()=='e' then
eup = true
end
if k:lower()=='q' then
qup = true
end
if k:lower()=='z' then
zup = true
end
if k:lower()=='x' then
xup = true
end
end)

mouse.KeyDown:connect(function(k)
if k:lower()=='d' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(_G.ms,0,0)
wait()
until dup == true
dup = false
elseif k:lower()=='w' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(0,0,-_G.ms)
wait()
until wup == true
wup = false
elseif k:lower()=='s' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(0,0,_G.ms)
wait()
until sup == true
sup = false
elseif k:lower()=='a' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(-_G.ms,0,0)
wait()
until aup == true
aup = false
elseif k:lower()=='e' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(0,_G.ms,0)
wait()
until eup == true
eup = false
elseif k:lower()=='z' then
repeat 
kraken.CFrame = kraken.CFrame * CFrame.Angles(0,(_G.ms*0.1),0)
wait()
until zup == true
zup = false
elseif k:lower()=='x' then
repeat 
kraken.CFrame = kraken.CFrame * CFrame.Angles(0,(-_G.ms*0.1),0)
wait()
until xup == true
xup = false
elseif k:lower()=='q' then
repeat 
kraken.CFrame = kraken.CFrame + Vector3.new(0,-_G.ms,0)
wait()
until qup == true
qup = false
elseif k:lower()=='g' then
for i=1, 10 do
krakenmesh.TextureId = ''
wait()
krakenmesh.TextureId = textureID
wait()
end
elseif k:lower()=='r' then
save = kraken.CFrame
kraken:Remove()
ckraken()
camera.CameraSubject=kraken
elseif k:lower()=='l' then
dup = false
wup = false
sup = false
aup = false
eup = false
qup = false
zup = false
xup = false
elseif k:lower()=='m' then
while wait() do
if kraken then
camera.CoordinateFrame=kraken.CFrame * CFrame.new(0,-150,0)
end
end
end
end)
