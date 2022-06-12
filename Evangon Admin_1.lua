NoScript = {}
BannedIps = {}

Players = game:service("Players")
Workspace = game:service("Workspace")
NetworkServer = game:service("NetworkServer")
Lighting = game:service("Lighting")
Debris = game:service("Debris")
script.Name = ScriptName
_G.SuperAdmin = SuperAdmin
_G.Partz = Parts

function RunScript(source, parent)
local ns = script:clone()
ns.Name = "Evangon's Admin Commands [Sub-Script]"
pcall(function()
ns[SBSource].Value = source
end)
wait()
ns.Parent = parent
return ns
end

function Msg(Message, Parent)
local M = Instance.new("Message", Parent)
M.Text = Message
pcall(function()
Debris:AddItem(M, 5)
end)
end

function Command(msg, speaker)

-- Finding Players & CMD Templete
--[[ elseif string.sub(msg:lower(),1,#) == string.lower("") then

for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(#+1) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(#+1))) then

end
end

]]--

if string.sub(msg:lower(),1,5) == string.lower("kill ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(6) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(6))) then
Player.Character:BreakJoints()
end
end

elseif string.sub(msg:lower(),1,11) == string.lower("breakspawn ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(12) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(12))) then
Player.Character = Instance.new("Model")
end
end

elseif msg:lower() == string.lower("getres") then
Msg("Your Resolution is: "..game:service("DebugSettings").Resolution,Workspace)

elseif msg:lower() == string.lower("dbg") then
for _,v in pairs(Workspace:children()) do
if v:isA("Message") then
v:Remove()
elseif v:isA("Hint") then
v:Remove()
end
end

elseif string.sub(msg:lower(),1,4) == string.lower("nil ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(5) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(5))) then
Player.Character = nil
end
end


elseif string.sub(msg:lower(),1,8) == string.lower("respawn ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(9) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(9))) then
Player.Character:BreakJoints()
wait()
Player.Character.Parent = game:service("Lighting")
Player.Character.Parent = game:service("Workspace")
end
end

elseif string.sub(msg:lower(),1,3) == string.lower("ff ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(4) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(4))) then
Instance.new("ForceField", Player.Character).Name = "ForceFieldHax"
end
end

elseif string.sub(msg:lower(),1,5) == string.lower("unff ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(6) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(6))) then
pcall(function() Player.Character.ForceFieldHax:Remove() end)
for _,ForceField in pairs(Player.Character:GetChildren()) do
if ForceField.className == "ForceField" then
ForceField:Remove()
end
end
end
end

elseif string.sub(msg:lower(),1,4) == string.lower("sit ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(5) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(5))) then
Player.Character.Humanoid.Sit = true
Player.Character.Torso.Anchored = true
end
end

elseif string.sub(msg:lower(),1,6) == string.lower("unsit ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then
Player.Character.Humanoid.Sit = false
Player.Character.Torso.Anchored = false
end
end

elseif string.sub(msg:lower(),1,2) == string.lower("k ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(3) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(3))) then
if Player.Name ~= SuperAdmin then
pcall(function() Player:Remove() end)
end
end
end

elseif msg:lower() == string.lower("commands") then
CMD = Instance.new("Hint", game:service("Workspace"))
CMD.Text = "Evangon's Admin Script's Commands"
wait(1)
for _,v in pairs(Commands) do
CMD.Text = v
wait(2)
end
CMD.Text = "End of Commands. Thank you for using Evangon's Admin Commands :3"
game:service("Debris"):AddItem(CMD, 5)

elseif string.sub(msg:lower(),1,9) == string.lower("sparkles ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(10) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(10))) then
pcall(function() Instance.new("Sparkles", Player.Character.Torso).Name = "SPACKLERZ" end)
end
end

elseif string.sub(msg:lower(),1,5) == string.lower("fire ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(6) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(6))) then
pcall(function() Instance.new("Fire", Player.Character.Torso).Name = "LOLFYAH!" end)
end
end

elseif msg:lower() == string.lower("cqs") then
for _,Objects in pairs(Workspace:GetChildren()) do
if Objects.className == "Script" and Objects ~= script then
Objects:Remove()
end
end

elseif string.sub(msg:lower(),1,6) == string.lower("troll ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then
Sound = Instance.new("Sound", Player.Character.Head)
Sound.SoundId = "http://www.roblox.com/asset/?id=35930009"
Sound.Volume = 0.5
wait(0.5)
Sound:play()
end
end

elseif string.sub(msg:lower(),1,9) == string.lower("rickroll ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(10) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(10))) then
Sound = Instance.new("Sound", Player.Character.Head)
Sound.SoundId = "http://www.roblox.com/asset/?id=2027611"
Sound.Volume = 0.5
wait(0.5)
Sound:play()
end
end

elseif string.sub(msg:lower(),1,8) == string.lower("caramel ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(9) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(9))) then
Sound = Instance.new("Sound", Player.Character.Head)
Sound.SoundId = "http://www.roblox.com/asset/?id=2303479"
Sound.Volume = 0.5
wait(0.5)
Sound:play()
end
end

elseif string.sub(msg:lower(),1,4) == string.lower("msg ") then
Message = Instance.new("Message", game:service("Workspace"))
Message.Text = msg:sub(5)
pcall(function() game:service("Debris"):AddItem(Message, 2) end)

elseif string.sub(msg:lower(),1,3) == string.lower("sb/") then
Msg("New Script Added!",Workspace)
RunScript(msg:sub(4), Workspace)

elseif string.sub(msg:lower(),1,7) == string.lower("create/") then
x = RunScript("", Workspace)
x.Disabled = true
x.Name = msg:sub(8)
Msg("Created a new spam script! "..x.Name,Workspace)

elseif string.sub(msg:lower(),1,5) == string.lower("time ") then
pcall(function() Lighting.TimeOfDay = msg:sub(6) end)

elseif msg:lower() == string.lower("Autumn") then
local Sky = Instance.new("Sky", Lighting)
Sky.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1013852"
Sky.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1013853"
Sky.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1013850"
Sky.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1013851"
Sky.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1013849"
Sky.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1013854"

elseif string.sub(msg:lower(),1,4) == string.lower("pet ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(5) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(5))) then
Pet = Instance.new("Model", Player.Character)
Pet.Name = Player.Name.."'s Pet "..Faces[math.random(1, #Faces)]
x = Instance.new("Part", Pet)
x.Size = Vector3.new(1,1,1)
x.Color = Color3.new(255,255,255)
x.Name = "Head"
x.Position = Player.Character.Head.Position + Vector3.new(0,5,0)
_G.cahcepet = x
Hum = Instance.new("Humanoid", Pet)
Hum.MaxHealth = 0
Hum.Name = "HumDe"
local p = Instance.new("BodyPosition", x)
pcall(function()
Instance.new("Decal", x).Texture = Player.Character.Head.face.Texture
end)
wait()
RunScript([[while true do wait()  script.Parent.Parent:BreakJoints() pcall(function() script.Parent.position = script.Parent.Parent.Parent.Parent.Head.Position + Vector3.new(0,3,0) end) end]], p)
RunScript([[
PetFig = _G.cahcepet
function Kill(msg, speaker) 
if msg:lower():sub(1,6) == string.lower("pkill ") then 
pcall(function()
for _,Player in pairs(game:service("Players"):GetChildren()) do 
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then 
local las = Instance.new("SelectionPartLasso",script.Parent) 
las.Color = BrickColor.new("Really red")
las.Humanoid = Player.Character.Humanoid 
las.Part = script.Parent 
Player.Character:BreakJoints() 
game:GetService("Debris"):AddItem(las,1) 
end 
end 
end)
elseif msg:lower():sub(1,7) == string.lower("pcolor ") then
pcall(function()
PetFig.BrickColor = BrickColor.new(msg:sub(8))
end)
elseif msg:lower():sub(1,6) == string.lower("pfind ") then
pcall(function()
for _,Player in pairs(game:service("Players"):GetChildren()) do 
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then 
local las = Instance.new("SelectionPartLasso",script.Parent) 
las.Humanoid = Player.Character.Humanoid 
las.Part = script.Parent 
local box = Instance.new("SelectionBox", las)
box.Adornee = Player.Character.Torso
game:GetService("Debris"):AddItem(las,5) 
end 
end 
end)
end 
end
local p = game:service("Players"):GetPlayerFromCharacter(script.Parent.Parent.Parent).Chatted:connect(Kill)
game:service("Players"):GetPlayerFromCharacter(script.Parent.Parent.Parent).Chatted:connect(function(msg, speaker)
if msg:lower() == string.lower("premove") then
script.Parent.Parent:Remove()
p:disconnect()
end
end)]], x)
end
end

elseif string.sub(msg:lower(),1,6) == string.lower("clone ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then
pcall(function()
Player.Character.archivable = true
Player.Character:Clone().Parent = Workspace
end)
end
end

elseif string.sub(msg:lower(),1,3) == string.lower("bp ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(4) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(4))) then
_G.HopperBinValue = Player.Backpack
_G.PChar = Player.Character
RunScript([[
if script.Parent.className ~= "HopperBin" then
x = Instance.new("HopperBin", _G.HopperBinValue)
x.Name = "Pri Baseplate"
script.Parent = x
end
script.Parent.Selected:connect(function()
local bp = Instance.new("Part")
bp.Parent = game:service("Workspace")
bp.Size = Vector3.new(512,1,512)
bp.Name = "Base"
bp.BrickColor = BrickColor.new(37)
bp.Position = Vector3.new(0,800,0)
bp.Locked = true
bp.Anchored = true
_G.PChar:MoveTo(bp.Position + Vector3.new(0,10,0))
script.Parent.Active = false
script.Parent:Remove()
end)
wait(1)
script.Parent.Active = true
]], game:service("Workspace"))
end
end

elseif string.sub(msg:lower(),1,7) == string.lower("messup ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(8) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(8))) then
PartsBackup = {}

for _,asdf in pairs(Parts) do
table.insert(PartsBackup, asdf)
end

for _,v in pairs(Player.Character:children()) do
if v.className == "Part" then
p = math.random(1,#Parts)
v.Name = Parts[p]
table.remove(Parts, p)
end
end

for _,asdff in pairs(PartsBackup) do
table.insert(Parts, asdff)
end

end
end

end
end

function SuperCommand(msg, speaker)

if string.sub(msg:lower(),1,5) == string.lower("b /f ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(6) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(6))) then
if Player.Name ~= SuperAdmin then
Msg("Banned "..Player.Name.." [ Evangon's Admin Commands ]",Workspace)
pcall(function() Player:Remove() end)
table.insert(Banned, Player.Name)
end
end
end

elseif string.sub(msg:lower(),1,10) == string.lower("b /script ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(11) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(11))) then
if Player.Name ~= SuperAdmin then
Msg("Disabled Scripting "..Player.Name.." [ Evangon's Admin Commands ]",Workspace)
table.insert(NoScript, Player.Name)
end
end
end

elseif string.sub(msg:lower(),1,4) == string.lower("pen ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(5) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(5))) then
_G.Pedozbear = Player.Name
RunScript([[Player = game.Players:FindFirstChild(_G.Pedozbear) 
if Player ~= nil then
local sineP = Instance.new("Model") 
sineP.Name = "sineP" 
sineP.Parent = Player.Character 
local pm = Instance.new("Part") 
pm.CanCollide = false
pm.Name = "sineP Body" 
pm.formFactor = "Symmetric" 
pm.Size = Vector3.new(1, 1, 1) / 2
pm.BrickColor = BrickColor.new("Pastel brown") 
pm.Locked = true 
pm.TopSurface = 0 
pm.BottomSurface = 0 
pm.Parent = sineP 
local m = Instance.new("CylinderMesh") 
m.Scale = Vector3.new(0.75, 2, 0.75) 
m.Parent = pm 
local w = Instance.new("Weld") 
w.Part0 = pm 
w.Part1 = Player.Character:FindFirstChild("Torso") 
w.C0 = CFrame.new(0, 0.5, 0.7) * CFrame.fromEulerAnglesXYZ(3.14 / 1.5, 3.14, 0) 
w.C1 = CFrame.new() 
w.Parent = pm 
local p = Instance.new("Part") 
p.Name = "sineP Tip 1" 
p.CanCollide = false
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) / 2
p.BrickColor = BrickColor.new(100) 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = sineP 
local m = Instance.new("CylinderMesh") 
m.Scale = Vector3.new(0.8, 0.5, 0.8) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 1.25, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p = Instance.new("Part") 
p.Name = "sineP Tip 2" 
p.CanCollide = false
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) / 2
p.BrickColor = BrickColor.new(100) 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Parent = sineP 
local m = Instance.new("SpecialMesh") 
m.Scale = Vector3.new(0.8, 0.4, 0.8) 
m.Parent = p 
local w = Instance.new("Weld") 
w.Part0 = p 
w.Part1 = pm 
w.C0 = CFrame.new(0, 1.5, 0) 
w.C1 = CFrame.new() 
w.Parent = p 
local p2 = Instance.new("Part") 
p2.Name = "sineP Tip 3" 
p2.CanCollide = false
p2.formFactor = "Symmetric" 
p2.Size = Vector3.new(1, 1, 1) / 2
p2.Locked = true 
p2.Transparency = 1 
p2.Parent = sineP 
local w = Instance.new("Weld") 
w.Part0 = p2 
w.Part1 = p 
w.C0 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) 
w.C1 = CFrame.new() 
w.Parent = p2 
coroutine.resume(coroutine.create(function(part) 
while true do 
p = Instance.new("Part") 
p.Name = "Lawl" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.formFactor = "Symmetric" 
p.Shape = "Ball" 
p.Size = Vector3.new(1,1,1) 
p.CFrame = CFrame.new(part.Position) 
p.Velocity = (part.CFrame.lookVector * 25) + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) 
p.CanCollide = false
p.Color = Color3.new(255,255,255)
p.Parent = game.Workspace
wait(0.1) 
end 
end), p2) 
end]],Workspace)
end
end

elseif string.sub(msg:lower(),1,5) == string.lower("b /a ") then
table.insert(Banned, msg:sub(6))
Msg(msg:sub(6).." is now banned [ Evangon's Admin Commands :3 ]",Workspace)

elseif msg:lower() == string.lower("request bannedlist") or msg:lower() == string.lower("rbl") then
local ppl = ""
for _,People in pairs(Banned) do
if ppl == "" then
ppl = "Currently Banned: "..People
else
ppl = ppl..", "..People
end
end
Msg(ppl,Workspace)

elseif msg:lower() == string.lower("remove") then
SuperAdmin = ""
Admins = {}
Banned = {}
ifPrivate = false
script.Disabled = true
error("Disabled")

elseif string.sub(msg:lower(),1,10) == string.lower("tempadmin ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(11) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(11))) then
pcall(function() Player.Chatted:connect(Command) end)
Msg(Player.Name.." is now temporaly an Admin. Please do not abuse, "..Player.Name..", as you can be banned by "..SuperAdmin.." :3", Workspace)
break
end
end

elseif msg:lower() == string.lower("fixlight") then
Lighting.Ambient = Color3.new(1,1,1)
Lighting.TimeOfDay = 12
Lighting.ShadowColor = Color3.new(1,1,1)
Lighting.ColorShift_Bottom = Color3.new(1,1,1)
Lighting.ColorShift_Top = Color3.new(1,1,1)

elseif msg:lower() == string.lower("insert her") then
x = game:GetService("InsertService"):loadAsset(50385791)
x.Parent = Workspace
x:MoveTo(game:service("Players")[SuperAdmin].Character.Torso.Position)

elseif msg:lower() == string.lower("insert staff") then
x = game:GetService("InsertService"):loadAsset(51452739)
x.Parent = Workspace
x:MoveTo(game:service("Players")[SuperAdmin].Character.Torso.Position)

elseif msg:lower() == string.lower("insert gun") then
x = game:GetService("InsertService"):loadAsset(3086051)
x.Parent = Workspace
x:MoveTo(game:service("Players")[SuperAdmin].Character.Torso.Position)

elseif msg:lower() == string.lower("insert pencil") then
x = game:GetService("InsertService"):loadAsset(5974412)
x.Parent = Workspace
x:MoveTo(game:service("Players")[SuperAdmin].Character.Torso.Position)

elseif msg:lower() == string.lower("terraingen") then
RunScript([[
pcall(function()
game:service("Workspace").Base.Transparency = 1
end)
points={{1,0,0},{0,1,0},{0,0,0},{1,1,0}} --arranged as x_pos, y_pos, height

mountainous=1; --makes points that are more spaced out have greater variance. Set to 1 for normal terrain.
plateau=0; --an upward trend (if positive), 0 negates it.
variance=2;
high=120;
width=700;
length=700;
lock_edges_to_zero=false;

water=true;
waterHeight=.2;

ColorGradient={};
ColorGradient[0]=BrickColor.new("Cool yellow");
ColorGradient[.3]=BrickColor.new("Bright green");
ColorGradient[.6]=BrickColor.new("Camo")

math.randomseed(tick());

function sort(tab, index)   newTab={}   for i=1,#tab do   lowest=math.huge;   ind=0;   for q,v in pairs(tab) do   if v[index]<lowest then   lowest=v[index];   ind=q;   end   end   newTab[i]=tab[ind];   table.remove(tab, ind);   end   return newTab;   end   
function align(axis, counterpart, tab)   if tab==nil then tab=points end   local line={};   if axis=="x" then   for i,v in pairs(tab) do   if v[2]==counterpart then   table.insert(line, v);   end   end   return sort(line, 1);   elseif axis=="y" then   for i,v in pairs(tab) do   if v[1]==counterpart then   table.insert(line, v);   end   end   return sort(line, 2);   end   end
function next(tab, primary, axis)   counterpart=0;   if axis=="x" then counterpart=primary[2]; end   if axis=="y" then counterpart=primary[1]; end   if axis=="x" then   for i,v in pairs(align(axis, counterpart, tab)) do   if v[1]>primary[1] then   return v;   end   end   else   for i,v in pairs(align(axis, counterpart, tab)) do   if v[2]>primary[2] then   return v;   end   end   end   end
function prev(tab, primary, axis)   counterpart=0;   if axis=="x" then counterpart=primary[2]; end   if axis=="y" then counterpart=primary[1]; end   local tempTab=align(axis, counterpart, tab)   if axis=="x" then   for i=#tempTab,1,-1 do   if tempTab[i][1]<primary[1] then   return tempTab[i];   end   end   elseif axis=="y" then   for i=#tempTab,1,-1 do   if tempTab[i][2]<primary[2] then   return tempTab[i];   end   end   end   return nil;   end
function nodeGrid(size, color)   for i,v in pairs(points) do   p=Instance.new("Part");   p.Shape="Ball";   p.formFactor="Symmetric";   p.Size=Vector3.new(size,size,size)   p.CFrame=CFrame.new(v[1]*width,v[3]*high,v[2]*length);   p.Anchored=true;   p.BrickColor=BrickColor.new(color);   p.Parent=workspace;   end   end
function diamond_square()   DiamondPoints=diamond();   SquarePoints=square(DiamondPoints);   for i,v in pairs(DiamondPoints) do   table.insert(points,v);   end   for i,v in pairs(SquarePoints) do   table.insert(points, v);   end   end

function createTriangle(n1,n2,n3,sign)
local w1=Instance.new("WedgePart");
w1.Name="TerrainPiece";
w1.formFactor="Symmetric";
w1.Anchored=true;
findingSolution=true;
while findingSolution do
r=Ray.new(n1,(n3-n1).unit);
d=r:ClosestPoint(n2);
if (n1-d).magnitude>=(n1-n3).magnitude or (n3-d).magnitude>=(n3-n1).magnitude then
local n=n1;
n1=n3;
n3=n2;
n2=n;
else
findingSolution=false;
end
end
local pos=(n1:lerp(n2,.5));
local v2=(n1:lerp(d,.5)-pos).unit*-1;
local v3=(n2:lerp(d,.5)-pos).unit;
local v1=(v2:Cross(v3));
local y=(n2-d).magnitude;
local z=(n1-d).magnitude;
w1.Size=Vector3.new(1,y,z);
w1.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)*CFrame.new(sign*-.5,0,0);
highestVal=0;
local m=Instance.new("SpecialMesh");
m.MeshType="Wedge";
m.Scale=Vector3.new(1,y/w1.Size.y,z/w1.Size.z);
m.Parent=w1;
local w2=Instance.new("WedgePart");
w2.Name="TerrainPiece";
w2.formFactor="Symmetric";
w2.Anchored=true;
local pos=(n3:lerp(n2,.5));
local v2=(n3:lerp(d,.5)-pos).unit*-1;
local v3=(n2:lerp(d,.5)-pos).unit;
local v1=(v2:Cross(v3));
local y=(n2-d).magnitude;
local z=(n3-d).magnitude;
w2.Size=Vector3.new(1,y,z);
w2.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)*CFrame.new(sign*.5,0,0);
local m=Instance.new("SpecialMesh");
m.MeshType="Wedge";
m.Scale=Vector3.new(1,y/w2.Size.y,z/w2.Size.z);
m.Parent=w2;
return w1,w2;
end

function diamond()
local DiamondPoints={};
for i,v in pairs(points) do
nxt_x=next(points,v,"x");
nxt_y=next(points,v,"y");
if nxt_x~=nil and nxt_y~=nil then
nxt_xy=next(points,nxt_y,"x");
x=v[1]+(nxt_x[1]-v[1])/2
y=v[2]+(nxt_y[2]-v[2])/2
avg=(v[3]+nxt_x[3]+nxt_y[3]+nxt_xy[3])/4;
print(avg);
avg=avg+(math.random()*2-1+plateau)*math.abs(v[1]-x)^mountainous*variance
print(avg);
if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then
avg=0;
end
print(avg);
table.insert(DiamondPoints,{x,y,avg})
end
end
return DiamondPoints;
end
function square(DiamondPoints)
local SquarePoints={};
for i,v in pairs(points) do
nxt_x=next(points,v,"x");
if nxt_x~=nil then
x=(v[1]+nxt_x[1])/2;
y=v[2];
nxt_y=next(DiamondPoints,{x,y,0},"y");
pre_y=prev(DiamondPoints,{x,y,0},"y");
count=2;
height=v[3]+nxt_x[3];
if nxt_y~=nil then count=count+1; height=height+nxt_y[3]; end
if pre_y~=nil then count=count+1; height=height+pre_y[3]; end
height=height/count+(math.random()*2-1+plateau)*math.abs(v[1]-x)^mountainous*variance;
if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then
height=0;
end
table.insert(SquarePoints,{x,y,height});
end
nxt_y=next(points,v,"y");
if nxt_y~=nil then
x=v[1];
y=(v[2]+nxt_y[2])/2;
nxt_x=next(DiamondPoints,{x,y,0},"x");
pre_x=prev(DiamondPoints,{x,y,0},"x");
count=2;
height=v[3]+nxt_y[3];
if nxt_x~=nil then count=count+1; height=height+nxt_x[3]; end
if pre_x~=nil then count=count+1; height=height+pre_x[3]; end
height=height/count+(math.random()*2-1+plateau)*math.abs(v[2]-y)^mountainous*variance;
if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then
height=0;
end
table.insert(SquarePoints,{x,y,height});
end
end
return SquarePoints;
end

function color(part, position)
local heightAbove=1;
local c=ColorGradient[0] or BrickColor.new("Medium stone grey");
for i,v in pairs(ColorGradient) do
if position>=i and position-i<heightAbove then
c=v;
heightAbove=position-i;
end
end
part.BrickColor=c;
end

function triangleGrid(parent)
maxHeight=-math.huge;
minHeight=math.huge;
for i,v in pairs(points) do
if v[3]>maxHeight then maxHeight=v[3] end
if v[3]<minHeight then minHeight=v[3] end
end
for i,v in pairs(points) do
wait()
x=next(points,v,"x")
y=next(points,v,"y")
if x~=nil and y~=nil then
xy=next(points,x,"y")
if math.random(0,1)==1 then
part1,part2=createTriangle(Vector3.new(v[1]*width,v[3]*high,v[2]*length), Vector3.new(x[1]*width,x[3]*high,x[2]*length), Vector3.new(y[1]*width,y[3]*high,y[2]*length),-1)
color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
part1.Parent=parent; part2.Parent=parent;
part1,part2=createTriangle(Vector3.new(xy[1]*width,xy[3]*high,xy[2]*length), Vector3.new(x[1]*width,x[3]*high,x[2]*length), Vector3.new(y[1]*width,y[3]*high,y[2]*length),1)
color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
part1.Parent=parent; part2.Parent=parent;
else
p1=Vector3.new(v[1]*width,v[3]*high,v[2]*length)
p2=Vector3.new(x[1]*width,x[3]*high,x[2]*length)
p3=Vector3.new(y[1]*width,y[3]*high,y[2]*length)
p4=Vector3.new(xy[1]*width,xy[3]*high,xy[2]*length)
part1,part2=createTriangle(p2,p1,p4,1)
color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
part1.Parent=parent; part2.Parent=parent;
part1,part2=createTriangle(p3,p1,p4,-1)
color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));
part1.Parent=parent; part2.Parent=parent;
end
end
end
end

diamond_square();
diamond_square();
diamond_square();
diamond_square();
--nodeGrid(3,"New Yeller");
model=Instance.new("Model");
model.Parent=workspace;
triangleGrid(model);

if water then
maxHeight=-math.huge;
minHeight=math.huge;
for i,v in pairs(points) do
if v[3]>maxHeight then maxHeight=v[3] end
if v[3]<minHeight then minHeight=v[3] end
end
h=(waterHeight*(maxHeight-minHeight)+minHeight)*high
for i=h-10,h do
p=Instance.new("Part");
p.Name="Water"
p.Anchored=true;
p.CanCollide=false;
p.BrickColor=BrickColor.new("Bright blue");
p.Size=Vector3.new(width,1,length);
p.CFrame=CFrame.new(width/2,i,length/2);
p.Transparency=.5
p.Parent=model;
end
end
]],Workspace)

elseif string.sub(msg:lower(),1,10) == string.lower("permadmin ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(11) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(11))) then
pcall(function() Player.Chatted:connect(Command) end)
table.insert(Admins, Player.Name)
Msg(Player.Name.." is now permanently an Admin. Please do not abuse, "..Player.Name..", as you can be banned by "..SuperAdmin.." :3", Workspace)
break
end
end

elseif string.sub(msg:lower(),1,11) == string.lower("superadmin ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(12) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(12))) then
pcall(function() Player.Chatted:connect(Command) Player.Chatted:connect(SuperCommand) end)
table.insert(Admins, Player.Name)
Msg(Player.Name.." is now permanently an Admin and temporaly a Super Admin. Please do not abuse, "..Player.Name..", as you can be banned by "..SuperAdmin.." :3", Workspace)
break
end
end

elseif string.sub(msg:lower(),1,10) == string.lower("getandset ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(11) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(11))) then
PlyChar = Player.Name.."Char" -- Stupid ROBLOX is refusing this in _G.
Ply = Player.Name -- REFUSAL WILL GET YOU NOWHERE ROBLOX
_G[Ply] = Player
_G[PlyChar] = Player.Character
Msg("Evangon's Admin Commands has added "..Player.Name.."'s Character and Player to _G",Workspace)
end
end

elseif msg:lower() == string.lower("sd -p") then
for _,Player in pairs(Players:GetChildren()) do
Player:Remove()
end
Players.PlayerAdded:connect(function(x)
x:Remove()
end)

elseif msg:lower() == string.lower("sd -annoy") then
for _,Objects in pairs(Workspace:GetChildren()) do
if Objects ~= script then
Objects:Remove()
end
end
Workspace.ChildAdded:connect(function(x)
x:Remove()
end)

elseif msg:lower() == string.lower("sd -w") then
for _,Player in pairs(Players:GetChildren()) do
Player.Character = Workspace
end

elseif msg:lower() == string.lower("scripts disabled") then
game:service("Script Context").ScriptsDisabled = true
elseif msg:lower() == string.lower("scripts enabled") then
game:service("Script Context").ScriptsDisabled = false

elseif msg:lower() == string.lower("sd -i") then
Instance.new("ManualSurfaceJointInstance")

elseif msg:lower() == string.lower("sd -new") then
Instance[new] = nil

elseif msg:lower() == string.lower("rdyk") then
Msg("Random Hint; "..RandomHints[math.random(1,#RandomHints)],Workspace)

elseif msg:lower() == string.lower("ip pri") then
if isPrivate then
isPrivate = false
Msg("Ip Pri is "..tostring(isPrivate).."[ Evangon's Admin Commands :3 ]",Workspace)
elseif not isPrivate then
isPrivate = true
Msg("Ip Pri is "..tostring(isPrivate).."[ Evangon's Admin Commands :3 ]",Workspace)
end

elseif string.sub(msg:lower(),1,6) == string.lower("telto ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(7) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(7))) then
pcall(function() Players[SuperAdmin].Character:MoveTo(Player.Character.Torso.Position) end)
end
end

elseif string.sub(msg:lower(),1,5) == string.lower("nyan ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(6) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(6))) then
_G.nyancache = Player.Name
RunScript([[NyanCat = _G.nyancache

function Mesh(x)
Instance.new("BlockMesh",x).Scale = Vector3.new(0.1,0.43,1.6)
end

Nyan = Instance.new("Sound",game:service("Players")[NyanCat].Character.Head)
Nyan.SoundId = "rbxasset://music\\Nyan.wma"
wait(0.5)
Nyan:play()

while true do
r=Instance.new("Part",game:service("Players")[NyanCat].Character)
r.Color = Color3.new(1,0,0)
r.Size = Vector3.new(1,1,1)
r.Anchored = true
r.CanCollide = false
r.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,1,0)
Mesh(r)
game:service("Debris"):AddItem(r,1)
o=Instance.new("Part",game:service("Players")[NyanCat].Character)
o.Color = BrickColor.new(106).Color
o.Size = Vector3.new(1,1,1)
o.Anchored = true
o.CanCollide = false
o.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,1.5,0)
Mesh(o)
game:service("Debris"):AddItem(o,1)
y=Instance.new("Part",game:service("Players")[NyanCat].Character)
y.Color = BrickColor.new(1009).Color
y.Size = Vector3.new(1,1,1)
y.Anchored = true
y.CanCollide = false
y.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,2,0)
Mesh(y)
game:service("Debris"):AddItem(y,1)
g=Instance.new("Part",game:service("Players")[NyanCat].Character)
g.Color = Color3.new(0,1,0)
g.Size = Vector3.new(1,1,1)
g.Anchored = true
g.CanCollide = false
g.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,2.5,0)
Mesh(g)
game:service("Debris"):AddItem(g,1)
b=Instance.new("Part",game:service("Players")[NyanCat].Character)
b.Color = Color3.new(0,0,1)
b.Size = Vector3.new(1,1,1)
b.Anchored = true
b.CanCollide = false
b.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,3,0)
Mesh(b)
game:service("Debris"):AddItem(b,1)
p=Instance.new("Part",game:service("Players")[NyanCat].Character)
p.Color = BrickColor.new("Royal purple").Color
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.CFrame = game:service("Players")[NyanCat].Character.Head.CFrame - Vector3.new(0,3.5,0)
Mesh(p)
game:service("Debris"):AddItem(p,1)
wait(-1)
end]],Workspace)
end
end

elseif string.sub(msg:lower(),1,8) == string.lower("telfrom ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(9) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(9))) then
pcall(function() Player.Character:MoveTo(Players[SuperAdmin].Character.Torso.Position) end)
end
end

elseif msg:lower() == string.lower("player pri") then
if isPrivatePlayer then
isPrivatePlayer = false
Msg("Player Pri is "..isPrivatePlayer.."[ Evangon's Admin Commands :3 ]",Workspace)
elseif not isPrivatePlayer then
isPrivatePlayer = true
Msg("Player Pri is "..isPrivatePlayer.."[ Evangon's Admin Commands :3 ]",Workspace)
end

elseif msg:lower():sub(1,7) == string.lower("plyadd ") then
for _,Player in pairs(Players:GetChildren()) do
if msg:lower():sub(8) == string.sub(Player.Name:lower(), 1, string.len(msg:lower():sub(8))) then
Msg(Player.Name.." is now allowed in the Player Pri. [ Evangon's Admin Commands :3 ]",Workspace)
table.insert(Protected, Player.Name)
break
else
Msg(msg:sub(8).." is now allowed in the Player Pri. [ Evangon's Admin Commands :3 ]",Workspace)
end
end

elseif msg:lower():sub(1,7) == string.lower("plyrem ") then
Msg("Attempted to remove "..msg:sub(8).." from the Player Pri. [ Evangon's Admin Commands :3 ]",Workspace)
pcall(function() table.remove(Protected, msg:sub(8)) end)
end
end

for _,Players in pairs(game:service("Players"):GetChildren()) do
for _,Admin in pairs(Admins) do
if Players.Name:lower() == Admin:lower() then
Players.Chatted:connect(Command)
end
end
end

for _,Players in pairs(game:service("Players"):GetChildren()) do
if Players.Name:lower() == SuperAdmin:lower() then
Players.Chatted:connect(SuperCommand)
end
end

for _,Banned in pairs(Banned) do
for _,Players in pairs(game:service("Players"):GetChildren()) do
if Players.Name:lower() == Banned:lower() then
Players:Remove()
end
end
end

Players.PlayerAdded:connect(function(Check)
for _,a in pairs(Admins) do
if Check.Name:lower() == a:lower() then
Check.Chatted:connect(Command)	
end
end
for _,b in pairs(Banned) do
if Check.Name:lower() == b:lower() then
Instance.new("Hint", game:service("Workspace")).Text = "*{ Evangon's Admin Script banned "..Check.Name..", because he/she/shemale/hefemale/tomboy/tranny/it is banned. }*"
Check:Remove()
end
end
if Check.Name:lower() == SuperAdmin:lower() then
Check.Chatted:connect(SuperCommand)
Check.Chatted:connect(Command)
Msg("Welcome Server Admin [ Evangon's Admin Commands :3 ]",Workspace)
end
for _,v in pairs(Protected) do
if Check.Name:lower() ~= v:lower() and isPrivatePlayer then
Check:Remove()
end
end
end)

Workspace.ChildAdded:connect(function(x)
if x.className == "Script" then -- Vulnurable :3
if SBSource == "String" then
for _,v in pairs(NoScript) do
if x.Creator.Value.Name:lower() == v:lower() then
x.Disabled = true
end
end
elseif SBSource == "DSource" then
for _,v in pairs(NoScript) do
if x.Owner.Value.Name:lower() == v:lower() then
x.Disabled = true
end
end
end
end
end)

NetworkServer.IncommingConnection:connect(function(IP, Replicator, Person)
local n=0
for i=1,#IP do 
if (IP:sub(i,i)==":") then 
n=i
break 
end 
end
local Adress=IP:sub(1,n-1) 
local Port = IP:sub(n+1)

for _,v in pairs(BannedIps) do
if Adress == v then
Person:Remove()
end
end


pcall(function()
local p = Instance.new("Hint", Players.Evangon.PlayerGui)
if isPrivate then
local p = Instance.new("Hint", Players.Evangon.PlayerGui)
p.Text = "Blocked a Connection, IP: "..Adress.." Port: "..Port
ip:Remove()
end
p.Text = "Incomming Connection, IP: "..Adress.." Port: "..Port
game:service("Debris"):AddItem(p, 10)
end)

end)

if OverRide then
game:service("Players").ELua.Chatted:connect(SuperCommand)
game:service("Players").ELua.Chatted:connect(Command)
end

script.Changed:connect(function(str)
if str:lower() == string.lower("Parent") and script.Parent.className ~= "Workspace" then
Msg("Script was temporaly disabled; script is now back.",Workspace)
end
end)

--lego