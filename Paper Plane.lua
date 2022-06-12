
repeat wait() until game:IsLoaded() and game:service("Players").LocalPlayer.Character ~= nil;
wait(0.4) 
for i, v in pairs(game:service("Players").LocalPlayer.Character:children()) do 
if v ~= script then 
v:Destroy() 
end 
end 

local player = game:service("Players").LocalPlayer
local mouse = player:GetMouse() 
local cam = workspace.CurrentCamera 
local char = player.Character 
local Torsoz = char:findFirstChild("Torso") 
local NV = Vector3.new() 
local Main 
local W,S = false,false 
local DoublePress = {nil,0} 
script.Parent = char 

local TrailParts = {} 
local Acceleration = 0.08 
local Speed = 0 
local MinSpeed = 0 
local MaxSpeed = 3.2 
local DesiredDirection = cam.CoordinateFrame.lookVector 
local Direction = DesiredDirection 
local Roll = 0 
local AllowTrails = true 

script.Name = "AdvFlight" 

local P = Instance.new("Part") 
P.Anchored = true 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.2,0.2,0.2) 
P.Locked = true 
P.TopSurface = 10 
P.BottomSurface = 10 
P.FrontSurface = 10 
P.BackSurface = 10 
P.LeftSurface = 10 
P.RightSurface = 10 
P.Material = "Pebble" 
P.BrickColor = BrickColor.new("White") 

local shipp 
local shadow 
local campart 

function RAY(pos, dir, startpos, endpos, distleft, collidedlist) 
collidedlist = collidedlist or {char} 
startpos = startpos or pos 
distleft = distleft or dir.unit * dir.magnitude 
endpos = endpos or pos + distleft 
local ray = Ray.new(pos, distleft) 
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
if hitz ~= nil then 
if hitz.CanCollide == false then 
table.insert(collidedlist, hitz) 
local newpos = enz 
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
if newdistleft ~= NV then 
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist) 
end 
end 
end 
return hitz, enz, ray 
end 

function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end 

function HSV(H,S,V) 
H = H % 360 
local C = V * S 
local H2 = H/60 
local X = C * (1 - math.abs((H2 %2) -1)) 
local color = Color3.new(0,0,0) 
if H2 <= 0 then 
color = Color3.new(C,0,0) 
elseif 0 <= H2 and H2 <= 1 then 
color = Color3.new(C,X,0) 
elseif 1 <= H2 and H2 <= 2 then 
color = Color3.new(X,C,0) 
elseif 2 <= H2 and H2 <= 3 then 
color = Color3.new(0,C,X) 
elseif 3 <= H2 and H2 <= 4 then 
color = Color3.new(0,X,C) 
elseif 4 <= H2 and H2 <= 5 then 
color = Color3.new(X,0,C) 
elseif 5 <= H2 and H2 <= 6 then 
color = Color3.new(C,0,X) 
end 
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m) 
end 

function Build(shiptype) 
AllowTrails = true 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Ship" then 
v:remove() 
end 
end 
for i, v in pairs(TrailParts) do 
for _,V in pairs(v[3]) do 
V:Destroy() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "Ship" 

------------------------ Speeder Ship Type -----------------------------
if shiptype == "Speeder" then 

shipp = P:Clone() 
shipp.Parent = mdl 
shipp.Size = Vector3.new(1,1,2.2) 
local shipwing1 = P:Clone() 
shipwing1.Parent = mdl 
shipwing1.Size = Vector3.new(0.6,1.2,2) 
local mesh = Instance.new("SpecialMesh", shipwing1) 
mesh.MeshType = "Wedge" 
local shipwing2 = shipwing1:Clone() 
shipwing2.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 
local shipwing21 = P:Clone() 
shipwing21.Parent = mdl 
shipwing21.Size = Vector3.new(0.32,1.1,2.6) 
local mesh = Instance.new("SpecialMesh", shipwing21) 
mesh.MeshType = "Wedge" 
local shipwing22 = shipwing21:Clone() 
shipwing22.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 

local shipwi = P:Clone() 
shipwi.Parent = mdl 
shipwi.Size = Vector3.new(1,1,1.2) 
local mesh = Instance.new("SpecialMesh", shipwi) 
mesh.MeshType = "Wedge" 
local shipwi2 = P:Clone() 
shipwi2.Parent = mdl 
shipwi2.Size = Vector3.new(0.7,0.7,0.84) 
shipwi2.Material = "SmoothPlastic" 
shipwi2.BrickColor = BrickColor.new("Pastel blue") 
shipwi2.Reflectance = 0.6 
local mesh = Instance.new("SpecialMesh", shipwi2) 
mesh.MeshType = "Wedge" 

shadow = P:Clone() 
shadow.Parent = mdl 
shadow.Name = "Shadow" 
shadow.Material = "SmoothPlastic" 
shadow.BrickColor = BrickColor.new("Really black") 
local mesh = Instance.new("SpecialMesh",shadow) 
mesh.MeshType = "Sphere" 

TrailParts = {} 
table.insert(TrailParts,{shipp,1,{},cam.CoordinateFrame.p,CFrame.new(0,0,1),0.5,18}) 
table.insert(TrailParts,{shipwing1,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
table.insert(TrailParts,{shipwing2,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
for _, V in pairs(TrailParts) do 
for i = 1, V[7] do 
local p = P:Clone() 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshId = "http://www.roblox.com/asset/?id=9856898" 
mesh.TextureId = "http://www.roblox.com/asset/?id=48358980" 
p.BrickColor = BrickColor.new("Dark stone grey") 
table.insert(V[3],p) 
end 
end 

function ReposParts() 
shipwing1.CFrame = shipp.CFrame * CFrame.new(-1.1,-0.195,-0.14) * CFrame.Angles(0,0,math.pi/2) 
shipwing2.CFrame = shipp.CFrame * CFrame.new(1.1,-0.195,-0.14) * CFrame.Angles(0,0,-math.pi/2) 
shipwing21.CFrame = shipp.CFrame * CFrame.new(-1.05,-0.34,-0.45) * CFrame.Angles(0,0,math.pi/2) 
shipwing22.CFrame = shipp.CFrame * CFrame.new(1.05,-0.34,-0.45) * CFrame.Angles(0,0,-math.pi/2) 
shipwi.CFrame = shipp.CFrame * CFrame.new(0,0,-1.7) 
shipwi2.CFrame = shipwi.CFrame * CFrame.new(0,0.015,-0.015) 
campart.CFrame = shipp.CFrame + Vector3.new(0,1.5,0) 
end 
cam.CameraSubject = campart 
cam.CameraType = "Track" 

shipp.CFrame = CFrame.new(NV,Direction) + cam.CoordinateFrame.p 
ReposParts() 

end 

AllowTrails = true 
end 
Build("Speeder") 

function B1D() 
Build("Speeder") 
end 

function RollThatSht(direc) 
if Roll == 0 then 
for i = 1, 50 do 
Roll = (-360 + math.cos(math.pi/50*i) * 360) * direc 
wait(0.02) 
end 
Roll = 0 
end 
end 

function KD(key) 
if key == "w" then 
W = true 
elseif key == "s" then 
S = true 
end 

local rollpls = 0 
if key == DoublePress[1] and tick() - DoublePress[2] < 0.32 then 
DoublePress = {nil,0} 
if key == "a" then 
rollpls = -1 
elseif key == "d" then 
rollpls = 1 
end 
end 

DoublePress = {key,tick()} 
if rollpls ~= 0 then 
RollThatSht(rollpls) 
end 
end 

function KU(key) 
if key == "w" then 
W = false 
elseif key == "s" then 
S = false 
end 
end 

function Equip() 
end 

function Unequip() 
end 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(B1D) 
mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 



local count = 0 
local hue = 0 
--game:GetService("RunService").Stepped:connect(function() 
while wait(0.02) do 

------ Speed --------
local valu = (0.002*MaxSpeed) + ((Speed/MaxSpeed)*Acceleration)
if W == true then 
Speed = Speed + valu 
elseif S == true then 
Speed = Speed - valu 
end 
if Speed > MaxSpeed then 
Speed = MaxSpeed 
elseif Speed < MinSpeed then 
Speed = MinSpeed 
end 

------ left/right tilt ---------
local target = 180 + math.floor(math.deg(math.atan2(DesiredDirection.x,DesiredDirection.z))) 
local current = 180 + math.floor(math.deg(math.atan2(Direction.x,Direction.z))) 
local swing = 0 
if math.abs(math.abs(current-target) - 360) > math.abs(target-current) then 
swing = target-current 
else 
swing = (current > target and -(math.abs(current-target) - 360)) or (current < target and math.abs(current-target) - 360) 
end 

DesiredDirection = cam.CoordinateFrame.lookVector 
------ direction smoothening ------ 
local dir = DesiredDirection.unit 
if Direction ~= dir then 
if (Direction - dir).magnitude < 0.01 then 
Direction = dir 
else 
local dist = ((dir - Direction).unit * (dir - Direction).magnitude) /10 
Direction = (Direction + dist).unit 
end 
end 

shipp.CFrame = (CFrame.new(NV,Direction) + shipp.Position + (Direction.unit * Speed)) * CFrame.Angles(0,0,math.rad(Roll) + math.rad(swing/2)) 
ReposParts() 

------ shadow ------
local ghitz, genz = RAY(shipp.Position,Vector3.new(0,-26,0)) 
local angles = CFrame.new() 
if ghitz ~= nil and ghitz.className ~= "Terrain" and ((ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Block) or (ghitz.className ~= "Part" and ghitz:IsA("BasePart"))) then 
local wvec,vec = FindSurface(ghitz,genz) 
angles = CFrame.new(NV,wvec) * CFrame.Angles(-math.pi/2,0,0) 
elseif ghitz ~= nil and (ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Ball) then 
angles = (CFrame.new(ghitz.Position, genz) - ghitz.Position) * CFrame.Angles(-math.pi/2,0,0) 
end 
shadow.CFrame = CFrame.new(genz) * angles 
shadow.Transparency = 0.5 + (((shipp.Position - genz).magnitude /26)*0.5)
shadow.Mesh.Scale = (Vector3.new(4.4,0.25,4.4) * 5) * (1-(shipp.Position - genz).magnitude /26)

------- Trails ----------------------- 
if AllowTrails == true then 
count = (count+1)%1 
hue = (hue+1) % 360
local rgb = HSV(hue,0.65,0.85) 
for _,v in pairs(TrailParts) do 
local to = (v[1].CFrame * v[5]).p
if Speed > MinSpeed + 0.2 then 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].CFrame = CFrame.new((v[4] + to)/2,to) * CFrame.Angles(math.pi/2,math.rad(Roll) + math.rad(swing/2),0) 
v[3][v[2]].Mesh.Scale = Vector3.new(v[6],(v[4] - to).magnitude*2,v[6]) 
v[3][v[2]].Mesh.VertexColor = Vector3.new(rgb.r,rgb.g,rgb.b) 
v[3][v[2]].Transparency = 0.15 
v[3][v[2]].Parent = game.Players.LocalPlayer.Character
else 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].Parent = nil 
end 

v[4] = to 
end 
end 

end 
