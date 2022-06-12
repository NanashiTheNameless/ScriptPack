script.Parent = nil

Player = game.Players.LocalPlayer
Char = Player.Character
PlayerGui = Player.PlayerGui
Screen = Instance.new("ScreenGui", PlayerGui)
Screen.Name = "TestGUI"
KB = Instance.new("TextButton", Screen)
KB.Name = "KB"
KB.Text = "Reset"
KB.Position = UDim2.new(0.05, 0, 0.4, 0)
KB.Size = UDim2.new(0.1, 0, 0.1, 0)
KB.Font = "Arial"
KB.FontSize = "Size24"
KB.TextWrapped = true
KB.BackgroundColor3 = Color3.new(0, 0, 1)
KB.TextColor3 = Color3.new(1, 1, 0)
KB.BackgroundTransparency = 0.7
KB.MouseButton1Down:connect(function()
    Char:BreakJoints()
end)
GB = Instance.new("TextButton", Screen)
GB.Name = "GB"
GB.Text = "God me"
GB.Position = UDim2.new(0.05, 0, 0.5, 0)
GB.Size = UDim2.new(0.1, 0, 0.1, 0)
GB.Font = "Arial"
GB.FontSize = "Size24"
GB.TextWrapped = true
GB.BackgroundColor3 = Color3.new(0, 0, 1)
GB.TextColor3 = Color3.new(1, 1, 0)
GB.BackgroundTransparency = 0.7
GB.MouseButton1Down:connect(function()
    Char.Humanoid.MaxHealth = math.huge
end)
TRN = Instance.new("TextButton", Screen)
TRN.Name = "TRN"
TRN.Text = "Terrain"
TRN.Position = UDim2.new(0.25, 0, 0.7, 0)
TRN.Size = UDim2.new(0.1, 0, 0.1, 0)
TRN.Font = "Arial"
TRN.FontSize = "Size24"
TRN.TextWrapped = true
TRN.BackgroundColor3 = Color3.new(0, 0, 1)
TRN.TextColor3 = Color3.new(1, 1, 0)
TRN.BackgroundTransparency = 0.7
TRN.MouseButton1Down:connect(function()
mod = Instance.new("Model") 
mod.Parent = game.Workspace.Base 
mod.Name = "GenScip" 
scale = 10 
char1 = {"Dark green", "part", 0, true, scale/2.5} 
char2 = {"Reddish brown", "clif", 0, true, scale*1.5,scale*2} 
char3 = {"23", "wate", 0.6, false, scale/2.5} 
char4 = {"Pastel brown", "sand", 0, true, scale/2.5} 
x = 0 
z = -100 
n1 = 0 
n2 = 0 
n3 = 0 
zonlay = math.random(1,3) 
if zonlay == 1 then 
n1 = math.random(1,30) 
n2 = math.random(40,50) 
n3 = math.random(60,100) 
end 
if zonlay == 2 then 
n1 = math.random(60,100) 
n2 = math.random(40,50) 
n3 = math.random(10, 30) 
end 
if zonlay == 3 then 
n1 = math.random(30,60) 
n2 = math.random(1,20) 
n3 = math.random(70,100) 
end 
spawns = 0 
trees = 0 

function decs(p) 
m = Instance.new("SpawnLocation") 
m.Parent = mod 
m.Size = Vector3.new(scale/2,char1[5],scale/2) 
m.BrickColor = BrickColor.new("Really black") 
m.Anchored = true 
m.CFrame = p.CFrame * CFrame.new(0,char1[5]/2,0) 
spawns = spawns + 1 
end 

function dect(p) 
if p.BrickColor.Name == char1[1] then else return end 
m = Instance.new("Part") 
m.Parent = mod 
m.Name = "Tree" 
m.Size = Vector3.new(scale/2,char1[5],scale/2) 
m.BrickColor = BrickColor.new("Dark green") 
m.Anchored = true 
m.CFrame = p.CFrame * CFrame.new(0,p.Size.Y/3,0) 
msh = Instance.new("SpecialMesh") 
msh.Parent = m 
msh.MeshId = "ff54d21ba63ff3073f34fda5cd1be3f1" 
msh.TextureId = "http://www.roblox.com/asset/?id=37476561" 
msh.Scale = Vector3.new(0.1,0.1,0.1) 
trees = trees + 1 
end 



function decor(par, tab, xb, zb) 
number = string.sub(par.Name:lower(), 5) 
par.Size = Vector3.new(scale,tab[math.random(5,#tab)],scale) 
par.BrickColor = BrickColor.new(tab[1]) 
par.Transparency = tab[3] 
par.CanCollide = tab[4] 
if tab[1] == "Reddish brown" then 
local variation = math.random(1,100)*-0.04 
par.CFrame = CFrame.new(xb,par.Size.Y/1.8+variation,zb) 
par.Friction = 0.6 
end 
if tab[1] == "Dark green" then 
local variation = math.random(1,100)*-0.004 
par.CFrame = CFrame.new(xb,par.Size.Y/1.5+variation,zb) 
par.Friction = 0.6 
end 
if tab[1] == "23" or tab[1] == "Pastel brown" then 
par.CFrame = CFrame.new(xb,par.Size.Y/1.5,zb) 
if tab[1] == "23" then 
par.Friction = 0.9 
end 
end 
end 

function scan(part, char, type) 
if type == "land" then 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) <= 15 then 
decor(tri[i], char, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
end 
elseif type == "water" then 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) > 0 and math.ceil((tri[i].Position - part.Position).magnitude) < 20 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
decor(tri[i], char, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
if math.ceil((tri[i].Position - part.Position).magnitude) > 20 and math.ceil((tri[i].Position - part.Position).magnitude) < 30 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
decor(tri[i], char4, tri[i].CFrame.X, tri[i].CFrame.Z) 
end 
end 
end 
end 

function forestscan(part) 
tri = mod:GetChildren() 
for i = 1, #tri do 
if math.ceil((tri[i].Position - part.Position).magnitude) < 20 then 
if string.sub(tri[i].Name:lower(), 1, 4) == "part" then else return end 
dect(tri[i]) 
end 
end 
end 

function createtile(number) 
p = Instance.new("Part") 
p.Parent = mod 
p.Name = "Part" ..tostring(number) 
if number == n1 or number == n2 then 
p.Name = "Clif" ..tostring(number) 
decor(p, char2, x, z) 
else 
if number == n3 then 
p.Name = "Wate" ..tostring(number) 
decor(p, char3, x, z) 
else 
decor(p, char1, x, z) 
end 
end 
p.BottomSurface = "Smooth" 
p.TopSurface = "Smooth" 
p.Anchored = true 
if x >= scale*25 then 
x = 0 
z = z + scale 
elseif x < scale*25 then 
x = x + scale 
end 
end 

for i = 1, 208 do 
wait() 
createtile(i) 
end 
t = mod:GetChildren() 
for i = 1, #t do 
if string.sub(t[i].Name:lower(), 1, 4) == "clif" then 
scan(t[i], char2, "land") 
end 
if string.sub(t[i].Name:lower(), 1, 4) == "wate" then 
scan(t[i], char3, "water") 
end 
if string.sub(t[i].Name:lower(), 1, 4) == "part" then 
local lol = math.random(1,25) 
if spawns == 0 and lol == 10 then 
decs(t[i]) 
end 
local lol2 = math.random(1,25) 
if trees == 0 and lol2 == 20 then 
dect(t[i]) 
forestscan(t[i]) 
end 
end 
end 


 

end)
RSTR = Instance.new("TextButton", Screen)
RSTR.Name = "RSTR"
RSTR.Text = "Clear game"
RSTR.Position = UDim2.new(0.25, 0, 0.5, 0)
RSTR.Size = UDim2.new(0.1, 0, 0.1, 0)
RSTR.Font = "Arial"
RSTR.FontSize = "Size24"
RSTR.TextWrapped = true
RSTR.BackgroundColor3 = Color3.new(0, 0, 1)
RSTR.TextColor3 = Color3.new(1, 1, 0)
RSTR.BackgroundTransparency = 0.7
RSTR.MouseButton1Down:connect(function()
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
Base.BrickColor=BrickColor.new("Bright green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Studs" 
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
end)
FRST = Instance.new("TextButton", Screen)
FRST.Name = "FRST"
FRST.Text = "Jungle"
FRST.Position = UDim2.new(0.25, 0, 0.4, 0)
FRST.Size = UDim2.new(0.1, 0, 0.1, 0)
FRST.Font = "Arial"
FRST.FontSize = "Size24"
FRST.TextWrapped = true
FRST.BackgroundColor3 = Color3.new(0, 0, 1)
FRST.TextColor3 = Color3.new(1, 1, 0)
FRST.BackgroundTransparency = 0.7
FRST.MouseButton1Down:connect(function()
size = 240

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Wood = {"Brown", "Reddish brown"}
Leaves = {"Earth green", "Bright green", "Dark green", "Camo"}
LeafMeshes = {{"http://www.roblox.com/asset/?id=16659363", V3(2.05,-1.6,2.05)},
{"http://www.roblox.com/asset/?id=1091940", V3(1.2,0.6,1.2)}}

Rock = {"Medium grey", "Dark grey"}

Add = {
	Mesh = function(P, Id, Id2, scale)
		local m = Instance.new("SpecialMesh", P)
		m.Scale = scale
		m.MeshId = Id
		m.TextureId = Id2
	end
}

function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = V3(X,Y,Z)
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

Mod = Instance.new("Model",workspace)
Mod.Name = "Jungle"

Models = {
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local cen = cf * CN(0, 0, -38*siz)
		local wo = Wood[MRA(1,#Wood)]
		local le = Leaves[MRA(1,#Leaves)]
		local last = nil
		for i = 0, 1, 0.2 do
			local p = Part(m, true, true, 0, 0, wo, 3*siz, 5.7*siz, 3*siz)
			Instance.new("SpecialMesh",p)
			p.CFrame = cen * CA(MR(-40*i), 0, 0) * CN(0, 0, 38*siz)
			if wo == Wood[1] then wo = Wood[2] else wo = Wood[1] end
			last = p
		end
		local messa = LeafMeshes[MRA(1,#LeafMeshes)]
		local a = -3
		if messa == LeafMeshes[1] then
			a = 0.4
		end
		last.BrickColor = BrickColor.new(le)
		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		local m = Add.Mesh(p, messa[1], "", V3((messa[2].X*10)*siz,(messa[2].Y*10)*siz,(messa[2].Z*10)*siz))
		p.CFrame = last.CFrame * CN(0, a*siz, 0) * CA(MP+MR(20), 0, 0)
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local ro1, ro2 = Rock[MRA(1,#Rock)], Rock[MRA(1,#Rock)]
		local p = Part(m, true, true, 0, 0, ro1, 7.5*siz, 7.5*siz, 7.5*siz)
		p.CFrame = cf * CN(0, 1.8*siz, 4*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1290033", "", V3(5*siz, 5*siz, 5*siz))

		local p2 = Part(m, true, true, 0, 0, ro2, 5.5*siz, 5.5*siz, 5.5*siz)
		p2.CFrame = cf * CN(7*siz, 1.5*siz, -6*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1290033", "", V3(3.8*siz, 3.8*siz, 3.8*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local le = Leaves[MRA(1,#Leaves)]

		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		p.CFrame = cf * CN(2*siz, 1.6*siz, -4*siz) * CA(0, 0, 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1095708", "", V3(12*siz, 11*siz, 10*siz))

		local p2 = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)
		p2.CFrame = cf * CN(-4*siz, 1.1*siz, -1*siz) * CA(0, MR(-34), 0)
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1095708", "", V3(10*siz, 7.5*siz, 8*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)

		local p = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)
		p.CFrame = cf * CN(2*siz, 1.1*siz, -4*siz) * CA(0, 0, 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(10*siz, 14*siz, 10*siz))

		local p2 = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)
		p2.CFrame = cf * CN(-4*siz, 0.7*siz, 1*siz) * CA(MR(MRA(-15,15)), MR(MRA(-180,180)), MR(MRA(-15,15)))
		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(7*siz, 11*siz, 6*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)

		local p = Part(m, true, true, 0, 0, "White", 1.2*siz, 6*siz, 1.2*siz)
		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 3.2*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)
		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1090398", "http://www.roblox.com/asset/?id=1090399", V3(3.5*siz, 5*siz, 3.5*siz))
	end,
	function(cf, siz)
		local m = Instance.new("Model",Mod)
		local col = Wood[MRA(1,#Wood)]
		local p = Part(m, true, true, 0, 0, col, 2.8*siz, 22*siz, 2.8*siz)
		Instance.new("SpecialMesh",p)
		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 11*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)
		local leave = Leaves[MRA(1, #Leaves)]
		local mes = LeafMeshes[MRA(1, #LeafMeshes)]
		local a = 3
		local ca = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))
		if mes == LeafMeshes[1] then
			a = -0.5
			ca = ca * CA(MP, 0, 0)
		end
		for i = 1, MRA(1,5) do
			local cf2 = p.CFrame * CA(0, MR(MRA(-180,180)), 0) * CN(0, (MRA(2*100, 14*100)/100)*siz, -1.4*siz)
			local center = cf2 * CN(0, 0, -8*siz) * CA(0, 0, 0)
			local first = nil
			for x = 0, 45, 15 do
				local p2 = Part(m, true, true, 0, 0, col, 2.5*siz, 4*siz, 2.5*siz)
				Instance.new("SpecialMesh", p2)
				p2.CFrame = center * CN(0, 0, 4*siz) * CA(MR(x), 0, 0) * CN(0, 0, 10*siz) * CA(0, 0, 0)
				if first == nil then first = p2 end
			end
			local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)
			Add.Mesh(p3, mes[1], "", (mes[2]*7)*siz)
			local ca2 = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))
			if mes == LeafMeshes[1] then
				ca2 = ca2 * CA(MP, 0, 0)
			end
			p3.CFrame = first.CFrame * CN(0, a*siz, 0) * ca2
		end
		local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)
		Add.Mesh(p3, mes[1], "", (mes[2]*9)*siz)
		local cn = p.CFrame * CN(0, 11*siz, 0)
		p3.CFrame = cn * CN(0, a*siz, 0) * ca
	end,
}

pos = CN(0, 0, 0)


local base = Part(Mod, true, true, 0, 0, Leaves[MRA(1,#Leaves)], size, 1, size)
base.CFrame = pos * CN(0, 1, 0)
base.Material = "Grass"

for x = -size/2, size/2, 20 do
	for z = -size/2, size/2, 20 do
		Models[MRA(1, #Models)](pos * CN(x+(MRA(-4*1000, 4*1000)/1000), 1.2, z+(MRA(-4*1000, 4*1000)/1000)) * CA(0, MR(MRA(-180,180)), 0), MRA(1.1*100, 2.4*100)/100)
	end
	wait(0.2)
end

end)
RKT = Instance.new("TextButton", Screen)
RKT.Name = "RKT"
RKT.Text = "TF2 Launcher"
RKT.Position = UDim2.new(0.25, 0, 0.3, 0)
RKT.Size = UDim2.new(0.1, 0, 0.1, 0)
RKT.Font = "Arial"
RKT.FontSize = "Size24"
RKT.TextWrapped = true
RKT.BackgroundColor3 = Color3.new(0, 0, 1)
RKT.TextColor3 = Color3.new(1, 1, 0)
RKT.BackgroundTransparency = 0.7
RKT.MouseButton1Down:connect(function()
script.Parent = nil
 
it = Instance.new
 
v3=Vector3.new
 
bc=BrickColor.new
 
c3=Color3.new
 
cn=CFrame.new
 
ca=CFrame.Angles
 
ca2=function(a,b,c) return ca(math.rad(a),math.rad(b),math.rad(c)) end
 
ti=table.insert
 
tr=table.remove
 
rn=math.random
 
rd=math.rad
 
mf=math.floor
 
ud = UDim2.new
 
inf=math.huge
 
dg=math.deg
 
mdeg=math.deg
 
v310=v3(1/0,1/0,1/0)
 
pi=math.pi
 
w=wait
 
cf=cn
 
bn=bc
 
ts=tostring
 
 
Workspace=game:GetService("Workspace")
 
Players=game:GetService("Players")
 
LocalPlayer=Players.LocalPlayer
 
Lighting=game:GetService("Lighting")
 
Debris=game:GetService("Debris")
 
 
work=Workspace
 
serv=Players
 
tb=LocalPlayer
 
light=Lighting
 
deb=Debris
 
 
asset = "http://www.roblox.com/asset/?id="
 
ds = {}
 
ds.Tile="58426060" -- texture
 
ds.RedDecal='91015882'  
 
ds.RedDecal2='91015899'  
 
ds.RedDecal3='91046114'
 
ds.AnonymousMask="19367193" -- mesh
 
ds.AnonymousMaskTexture="72393530" -- texture
 
ds.Balloon="10207677"
 
ds.CelestialCircle="78036587"
 
ds.SFOTHMoonArc="74132307"
 
ds.Claw = "10681506"
 
ds.Scream = "89487903"
 
ds.Ring = "3270017"
 
ds.Crack = "49173398"
 
ds.Cloud = "1095708"
 
ds.Slash3 = "10209640"
 
ds.Spike = "1033714"
 
ds.ThisIsRobloxSound="96673085"
 
ds.BashMiss="92597296"
 
ds.TelamonsterSword="93180631"
 
ds.TelamonsterSwordT="93180676"
 
ds.Rock = "1290033"
 
ds.Crown = "1323306"
 
ds.Hood = "16952952"
 
ds.Slash = "10209645"
 
ds.Slash2 = "46760716"
 
ds.MadFace = "2235131"
 
ds.BanditMask = "20637493"
 
ds.Hood2 = "25211365"
 
ds.HoodT2 = "64240784"
 
ds.Axe = "12768042"
 
ds.AxeT = "12768034"
 
ds.Fist = "65322375"
 
ds.Tree1 = "1090398"
 
ds.Vine = "13108500"
 
ds.VineT = "17585271"
 
ds.TreeTexture = "2861779"
 
ds.Tug = "31173820" -- sound
 
ds.Fire = "2693346" --"2760979"
 
ds.Hit = "2801263"
 
ds.BulletHole = "64291961"
 
ds.Camo = "4268107"
 
ds.Gradient1 = "70060415"
 
ds.DWrench = "70628302"
 
ds.DHealth = "70635804"
 
ds.Shine="48965808"
 
ds.GothicMusic="27697699"
 
 
qi = function(ttz) -- instance v2
 
 local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2)
 
 if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end
 
 
table.foreach(ds,function(a,b) -- asset loader
 
 if tonumber(b:sub(1,3)) then ds[a] = asset .. b game:service'ContentProvider':Preload(ds[a])  end end)
 
 
q = function(f) -- quick coroutine function
 
 coroutine.resume(coroutine.create(function() f() end)) end
 
 
 
ft = function(tablez,item) -- table finder
 
 for i=1,#tablez do if tablez[i] == item then return i end end  return nil end
 
 
ft2 = function(tablez,item) -- table finder 2
 
 for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end
 
 
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2) -- part maker
 
 local fp=nil
 
 if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then
 
 fp=it("Part",pa)
 
 fp.Shape=sh or "Block"
 
 fp.formFactor="Custom"
 
 elseif sh == "Wedge" then
 
 fp=it("WedgePart",pa)
 
 fp.formFactor="Custom"
 
 elseif sh == "CornerWedge" then
 
 fp=it("CornerWedgePart",pa)
 
 elseif sh == "VehicleSeat" then
 
 fp=it("VehicleSeat",pa)
 
 elseif sh == "Seat" then
 
 fp=it("Seat",pa)
 
 end
 
 fp.Size=v3(x or 4,y or 2,z or 2)
 
 fp.Friction = 2
 
 fp.CanCollide=c or true
 
 fp.Anchored=a or false
 
 fp.BrickColor=bc(bc2 or "")
 
 fp.Transparency=tr or 0
 
 fp.Reflectance=re or 0
 
 fp.BottomSurface=0
 
 fp.Name=pn or "UnNamed"
 
 fp.Locked = true
 
 fp.TopSurface=0
 
 fp.CFrame=cn(0,0,0)
 
 fp:BreakJoints()
 
 fp.Anchored = a
 
 return fp
 
end
 
 
function ClearClass(Object,Class) for _,v in pairs(Object:GetChildren()) do if v:IsA(Class) then v:Destroy() end end end
 
 
function re(par,obj) -- object remover
 
 if par:findFirstChild(obj) then
 
 par[obj]:Remove''
 
 end
 
end
 
 
function invis(o) -- model invisible
 
 for i,v in pairs(o:children()) do
 
 if v:IsA("BasePart") then
 
 v.Transparency=1
 
 end
 
 invis(v)
 
 end
 
end
 
 
FragmentIgnore={}
 
function Fragment(part, pos) -- The part to slice, and the position of the blade(might have to modify it).
 
        if part:IsA("Terrain") or part.Name=="Hitbox" then return end
 
        local s = part.Size
 
        local d = part.CFrame:pointToObjectSpace(pos)
 
        local d = Vector3.new(math.floor(d.x * 2 + 0.5) / 2, math.floor(d.y * 2 + 0.5) / 2, math.floor(d.z / 2 + 0.5) * 2)
 
        if math.abs(d.x)*2 / s.x <= 8 and math.abs(d.y)*2 / s.y <= 8 and math.abs(d.z)*2 / s.z <= 8 then
 
                table.insert(FragmentIgnore,part)
 
                local part1 = part:Clone() -- Top
 
                local part2 = part:Clone() -- Bottom
 
                table.insert(FragmentIgnore,part1)
 
                table.insert(FragmentIgnore,part2)
 
                local size1 = s.y/2 - d.y
 
                local size2 = s.y/2 + d.y
 
                local frame1 = s.y/2 - size1/2
 
                local frame2 = -s.y/2 + size2/2
 
                part1.formFactor = "Custom"
 
                part2.formFactor = "Custom"
 
                part1.Size = Vector3.new(part.Size.x, size1, part.Size.Z)
 
                part2.Size = Vector3.new(part.Size.x, size2, part.Size.Z)
 
                part1.CFrame = part.CFrame * CFrame.new(0, frame1, 0)
 
                part2.CFrame = part.CFrame * CFrame.new(0, frame2, 0)
 
                part2.Parent = Workspace
 
                part1.Parent = Workspace
 
                part2:BreakJoints()
 
                part1:BreakJoints()
 
                part:Destroy()
 
        end
 
end
 
 
function newhats(p,o,o2) -- new hats yeyeyey
 
 for i,v in pairs(p:children()) do
 
 if v:IsA("Hat") then
 
 local np=v.Handle:Clone''
 
 np.Transparency=0
 
 np.Mesh.Scale=np.Mesh.Scale*1.04
 
 np.Parent=o
 
 np.CFrame=v.Handle.CFrame
 
 np.Name="Hat"
 
 stick2(np,o2,o)
 
 end
 
 end
 
end
 
 
fade = function(prt,incr) --brick fader
 
 q(function()  for i=prt.Transparency,1,incr do  prt.Transparency=i wait()  end prt:Remove'' end) end
 
 
 
function weld(pa,p0,p1,x,y,z,a,b,c)
 
 local fw=it("Weld",pa)
 
 fw.Part0=p0
 
 fw.Part1=p1
 
 fw.C0=cn(x,y,z)*ca(a,b,c)
 
 return fw
 
end
 
 
 
stick = function(hit2,hit) -- stick function
 
 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) end
 
 
function stick2(hit2,hit,tostick) -- stick2 function
 
 local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cn(HitPos) local C0=hit2.CFrame:inverse()
 
 
*CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end
 
 
ray = function(Pos, Dir,tab) -- ray cast
 
 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab) end
 
 
 
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end
 
 
sTrail={}
 
function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)
 
local oldpos=(ob.CFrame *ofz).p local lopz2=0
 
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1
 
local mag=(oldpos - obp).magnitude
 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true
 
tr.CFrame=cn(oldpos,obp)
 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)
 
cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)
 
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end
 
repeat loltr()
 
wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end
 
 
Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail
 
 q(function()
 
 local oldpos=(ob.CFrame *ofz).p
 
 for i=1,times do
 
 if effon==true then
 
 local obp=(ob.CFrame *ofz).p
 
 local mag=(oldpos - obp).magnitude
 
 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col)
 
 tr.Anchored=true
 
 tr.CFrame=cn(oldpos,obp)
 
 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)
 
 trm=it("CylinderMesh",tr)
 
 trm.Scale=v3(thickz,mag*5,thickz)
 
 q(function()
 
 for i=thickz,0,thickz/10 do
 
 trm.Scale=v3(i,mag*5,i)
 
 wait()
 
 end
 
 tr:Remove''
 
 end)
 
 tr.CFrame=tr.CFrame *ca(rd(90),0,0)
 
 oldpos=obp wait(waitz)
 
 end
 
 end
 
 end)
 
end
 
 
de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris
 
 
GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() -- Glowmesh
 
local spi=pa(rootz,"glowmesh","Block",mv3.X,mv3.Y,mv3.Z,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) spi.CanCollide=false if
 
 
meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim=it("BlockMesh",spi) else
 
 
spim.MeshType="FileMesh" spim.MeshId=meshid2 end
 
if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end
 
for i=l1,l2,l3 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end)
 
end
 
 
DetectSurface = function(pos, part) -- Surface Detector
 
local surface = nil local pospos = part.CFrame
 
local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape
 
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
 
surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}
 
else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}
 
elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right",
 
 
ca(0, 0, rd(-90))}
 
elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca
 
 
(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end
 
 
BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function
 
local Surface = DetectSurface(HitPos, HitObj)
 
local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
 
if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole
 
local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})
 
bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end q(function() wait(5) for i=0,1,0.05 do bl.Size=v3(-i*sc,0,-i*sc) wait() end de(bl,0) end)
 
end
 
 
so = function(id,par,vol,pit) q(function() -- Sound maker
 
local sou = qi({"Sound",par or workspace,Volume=vol,Pitch=pit or 1,SoundId=id})
 
wait() sou:play() wait(6) sou:Remove() end) end
 
 
-- local/so(asset..ds.GothicMusic,workspace,1,2.6)
 
 
function GetRegion(p0,p1,f,f2) q(function()
 
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and
 
 
v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and
 
 
v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end
 
end) end
 
 
 
FindGround = function(pos) -- ground finder
 
 local ax,ay,az = pos:toEulerAnglesXYZ()
 
 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
 
 if bhit and bpos then
 
 return cn(bpos)*ca(ax,ay,az)
 
 end
 
 return nil
 
end
 
 
function NPC(Name, Position) -- npc maker
 
        local Character = Instance.new("Model")
 
        Character.Name = Name
 
        local Humanoid = Instance.new("Humanoid")
 
        Humanoid.Parent = Character
 
        local Template = Instance.new("Part")
 
        Template.FormFactor = "Custom"
 
        Template.Size = Vector3.new(1, 2, 1)
 
        Template.Locked = true
 
        local Head = Template:Clone()
 
        Head.Name = "Head"
 
        Head.TopSurface = "Smooth"
 
        Head.BottomSurface = "Smooth"
 
        Head.Size = Vector3.new(2, 1, 1)
 
        Head.Parent = Character
 
        local Mesh = Instance.new("SpecialMesh")
 
        Mesh.MeshType = "Head"
 
        Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
 
        Mesh.Parent = Head
 
        local Face = Instance.new("Decal")
 
        Face.Name = "face"
 
        Face.Texture = "rbxasset://textures/face.png"
 
        Face.Parent = Head
 
        local Torso = Template:Clone()
 
        Torso.Name = "Torso"
 
        Torso.LeftSurface = "Weld"
 
        Torso.RightSurface = "Weld"
 
        Torso.CFrame = CFrame.new(0, 10000, 0)
 
        Torso.Size = Vector3.new(2, 2, 1)
 
        Torso.Parent = Character
 
        local TShirt = Instance.new("Decal")
 
        TShirt.Name = "roblox"
 
        TShirt.Parent = Torso
 
        local LeftArm = Template:Clone()
 
        LeftArm.Name = "Left Arm"
 
        LeftArm.Parent = Character
 
        local RightArm = Template:Clone()
 
        RightArm.Name = "Right Arm"
 
        RightArm.Parent = Character
 
        local LeftLeg = Template:Clone()
 
        LeftLeg.Name = "Left Leg"
 
        LeftLeg.Parent = Character
 
        local RightLeg = Template:Clone()
 
        RightLeg.Name = "Right Leg"
 
        RightLeg.Parent = Character
 
        Character:BreakJoints()
 
        local Neck = Instance.new("Weld")
 
        Neck.Name = "Neck"
 
        Neck.Part0 = Torso
 
        Neck.Part1 = Head
 
        Neck.C0 = CFrame.new(0, 1.5, 0)
 
        Neck.Parent = Torso
 
        local LeftShoulder = Instance.new("Motor")
 
        LeftShoulder.Name = "Left Shoulder"
 
        LeftShoulder.Part0 = Torso
 
        LeftShoulder.Part1 = LeftArm
 
        LeftShoulder.MaxVelocity = 0.1
 
        LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - RightArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -
 
 
math.pi / 2, 0)
 
        LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftShoulder.Parent = Torso
 
        local RightShoulder = Instance.new("Motor")
 
        RightShoulder.Name = "Right Shoulder"
 
        RightShoulder.Part0 = Torso
 
        RightShoulder.Part1 = RightArm
 
        RightShoulder.MaxVelocity = 0.1
 
        RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0,
 
 
math.pi / 2, 0)
 
        RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightShoulder.Parent = Torso
 
        local LeftHip = Instance.new("Motor")
 
        LeftHip.Name = "Left Hip"
 
        LeftHip.Part0 = Torso
 
        LeftHip.Part1 = LeftLeg
 
        LeftHip.MaxVelocity = 0.1
 
        LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)
 
        LeftHip.Parent = Torso
 
        local RightHip = Instance.new("Motor")
 
        RightHip.Name = "Right Hip"
 
        RightHip.Part0 = Torso
 
        RightHip.Part1 = RightLeg
 
        RightHip.MaxVelocity = 0.1
 
        RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)
 
        RightHip.Parent = Torso
 
        local BodyColors = Instance.new("BodyColors")
 
        BodyColors.LeftArmColor = BrickColor.new("Bright yellow")
 
        BodyColors.RightArmColor = BrickColor.new("Bright yellow")
 
        BodyColors.LeftLegColor = BrickColor.new("Br. yellowish green")
 
        BodyColors.RightLegColor = BrickColor.new("Br. yellowish green")
 
        BodyColors.HeadColor = BrickColor.new("Bright yellow")
 
        BodyColors.TorsoColor = BrickColor.new("Bright blue")
 
        BodyColors.Parent = Character
 
        Character.Parent = Workspace
 
        Character:MoveTo(Position)
 
        Character:MoveTo(Torso.Position + Vector3.new(0, 3, 0))
 
        return Character
 
end
 
 
AddBV=function(str,cfr,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBV' then par.LibBV:Remove() end
 
tbbodyvelocity=qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,1/0,1/0),Name='LibBV'} deb:AddItem(tbbodyvelocity,debt)
 
end
 
 
AddBG=function(str,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBG' then par.LibBG:Remove() end
 
tbbodygyro=qi{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Name='LibBG'} deb:AddItem(tbbodygyro,debt)
 
end
 
 
AddBAV=function(vec3,par,debt)
 
if not par then return end
 
if par:findFirstChild'LibBAV' then par.LibBAV:Remove() end
 
tbbodyangularvelocity=qi{'BodyAngularVelocity',par,maxTorque=v3(1/0,1/0,1/0),angularvelocity=vec3,Name='LibBAV'} deb:AddItem(tbbodyangularvelocity,debt)
 
end
 
 
Dmg = function(Hum,Dealt,Hitter)
 
local HM=Hum.Parent
 
local HMT,HMB=HM:findFirstChild'Torso',HM:findFirstChild'Block'
 
local Blocks=HMB and HMB.Value>0
 
if HMT then
 
local mm=qi{'Model',HMT} qi{'Humanoid',mm,MaxHealth=0} deb:AddItem(mm,1)
 
local mp= qi{'Part',mm,Name='Head',formFactor="Custom",Anchored=true,CanCollide=false,Size=v3(1,0.2,1),CFrame=HMT.CFrame*cn(rn(-
 
 
100,100)/50,3,rn(-100,100)/50)} qi{'BlockMesh',mp}
 
if Blocks then
 
mm.Name='Block!'
 
mp.BrickColor=bn'Bright blue'
 
HMB.Value=HMB.Value-1
 
else
 
mm.Name=Dealt
 
mp.BrickColor=bn'Bright red'
 
end
 
end
 
if not Blocks then  
 
Hum.Health=Hum.Health-Dealt
 
end
 
end
 
 
GetHum = function(part)
 
local Hum,HT,block
 
for i,v in pairs(part.Parent:children()) do
 
if v:IsA("Humanoid") then
 
Hum=v
 
elseif v.Name=='Torso' then
 
HT=v
 
elseif v.Name=='Block' and v:IsA("NumberValue") then
 
block=v
 
end
 
end
 
return Hum,HT,block
 
end
 
 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness
 
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
 
for i=1,tym do
 
local li = it("Part",c) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = bc(col)
 
li.formFactor = "Custom" li.CanCollide = false li.Size = v3(th,th,magz/tym) local ofz = v3(trz[rn(1,2)],trz[rn(1,2)],trz[rn(1,2)])
 
local trolpos = cn(curpos,p1)*cn(0,0,magz/tym).p+ofz
 
if tym == i then
 
local magz2 = (curpos - p1).magnitude li.Size = v3(th,th,magz2)
 
li.CFrame = cn(curpos,p1)*cn(0,0,-magz2/2)
 
else
 
li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/tym/2)
 
end
 
curpos = li.CFrame*cn(0,0,magz/tym/2).p de(li,0.25)
 
end
 
end
 
 
MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker
 
 q(function()
 
 if not debz then
 
 debz = 5
 
 end
 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0))) if bhit and bpos then
 
 for i=1,tyms do
 
 q(function()
 
 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name)
 
 gr.Material = bhit.Material
 
 gr.TopSurface = bhit.TopSurface
 
 gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40)))
 
 wait(debz)
 
 fade(gr,0.1)
 
 end)
 
 end
 
 end
 
 end)
 
end
 
 
MakeCrack = function(pos,sc,debz,par) -- crackmaker
 
 q(function()
 
 if not debz then
 
 debz = 5
 
 end
 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
 
 if bhit and bpos then
 
local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
 
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
 
 end
 
 end)
 
end
 
 
a = {}
 
a.insw={}
 
function cleanweld(wexx,namzi)
 
 local tn=ft2(a.insw,wexx)
 
 if tn==nil then return end
 
 if namzi=="p0" then
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0
 
 end
 
end
 
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 q(function()
 
 c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 end)
 
end
 
a.Welding=0
 
function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
 
 if ft2(a.insw,wexx)==nil then
 
 ti(a.insw,{wexx,{}})
 
 local tn=ft2(a.insw,wexx)
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ()
 
 end
 
 local tn=ft2(a.insw,wexx)
 
 local xx2,yy2,zz2=0,0,0
 
 local x2,y2,z2=0,0,0
 
 if c0orc1==0 then
 
 xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]
 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]
 
 elseif c0orc1==1 then
 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 
 x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]
 
 else
 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]
 
 end a.Welding=a.Welding + 1
 
 local twa=1
 
 if smmx >= 1 then
 
 else
 
 for i=smmx,0.8,smmx do
 
 twa = 1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 if fu then
 
 q(fu)
 
 end
 
 wait()
 
 end
 
 for i=0.8,1,smmx*0.45 do
 
 twa = 1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 wait()
 
 end
 
 end
 
 local i=1
 
 if c0orc1==0 then
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 elseif c0orc1==1 then
 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)
 
 
*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 
 end
 
 a.Welding=a.Welding - 1
 
 local tn=ft2(a.insw,wexx)
 
 if c0orc1==0 then
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 elseif c0orc1==1 then
 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 elseif c0orc1==3 then
 
 local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z
 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 
 local x,y,z=wexx.C1:toEulerAnglesXYZ()
 
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 
 end
 
end
 
 
Welds={}
 
Ani=function(w,a,b,c,d,e,f,ty,inc,sined)
 
if not Welds[w] then
 
local d0,e0,f0=w.C0:toEulerAnglesXYZ() local d1,e1,f1=w.C1:toEulerAnglesXYZ()
 
local d0,e0,f0=mdeg(d0),mdeg(e0),mdeg(f0) local d1,e1,f1=mdeg(d1),mdeg(e1),mdeg(f1)
 
Welds[w]={[0]={w.C0.x,w.C0.y,w.C0.z,d0,e0,f0},[1]={w.C1.x,w.C1.y,w.C1.z,d1,e1,f1}}
 
end
 
local c0,c1=Welds[w][0],Welds[w][1]
 
c0[1],c0[2],c0[3]=w.C0.x,w.C0.y,w.C0.z
 
c1[1],c1[2],c1[3]=w.C1.x,w.C1.y,w.C1.z
 
local A0,B0,C0,D0,E0,F0 = unpack(c0)
 
local A1,B1,C1,D1,E1,F1 = unpack(c1)
 
local Do = function(i)
 
if ty==0 then
 
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2( D0-((D0-d)*i) , E0-(((E0-e)/1)*i) , F0-((F0-f)*i) )
 
elseif ty==1 then
 
w.C1=cn( A1-((A1-a)*i) , B1-((B1-b)*i) , C1-((C1-c)*i) ) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
 
else
 
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2(D0,E0,F0)
 
w.C1=cn(A1,B1,C1) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
 
end
 
end
 
for i=inc,1,inc do
 
Do(sined and math.sin(math.pi/2*i) or i)
 
wait()
 
end
 
Do(1)
 
if ty==0 then
 
c0[4],c0[5],c0[6]=d,e,f
 
else
 
c1[4],c1[5],c1[6]=d,e,f
 
end
 
end
 
qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined) end) end
 
rAni=function(w)
 
Welds[w]=nil
 
end
 
 
gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function
 
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
 
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
 
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do
 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
 
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end
 
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
 
wait()
 
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
 
if not bhit.Anchored then
 
if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end
 
else if bhit.Name~="Base" then bhit.Anchored=false bhit:BreakJoints() end end bb:Remove()
 
if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
 
end) end
 
 
dive = function(ob2,pro,ite,stof)
 
local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then
 
for i=1,#stof do v[stof[i][1]] = stof[i][2] end else div(v) end end end
 
div(ob2)
 
end
 
 
fc = function(ob,cl)
 
for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end
 
end
 
 
function se(Key,Text)
 
local Values = {}
 
for value in (Text..Key):gmatch("(.-)"..Key) do
 
table.insert(Values,value)
 
end return Values
 
end
 
 
local thefenv = getfenv()
 
getfenv()["rmhelp"] = function()
 
local nus = 0
 
for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)
 
print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")
 
end
 
end
 
end
 
 
for i,v in pairs(thefenv) do
 
_G[i] = v --print(i)
 
end
 
 
_G[" rm".."dx "] = [[
 
for i,v in pairs(_G) do
 
if i ~= "wait" and i ~= "script" then
 
getfenv()[i] = v
 
end
 
end
 
]]
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
script:ClearAllChildren()
 
loadstring(_G[" rmdx "])()
 
 
Player=game:GetService("Players").LocalPlayer
 
Char=Player.Character
 
Backpack=Player.Backpack
 
PlayerGui=Player.PlayerGui
 
Torso=Char.Torso
 
Head=Char.Head
 
Hum=Char.Humanoid
 
Cam=workspace.CurrentCamera
 
Tn="Rocket Launcher"
 
 
pcall(function() Backpack[Tn]:Remove() end)
 
pcall(function() Cam[Tn]:Remove() end)
 
pcall(function() thesuit=Char[''] end)
 
pcall(function() thesuit[Tn]:Remove() end)
 
pcall(function() PlayerGui[Tn]:Remove() end)
 
 
CModel=qi{'Model',Cam,Name=Tn}
 
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
 
Suit=qi{'Model',Char,Name=''}
 
Weapon=qi{'Model',Suit,Name=Tn}
 
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
 
 
Mode="Normal"
 
equip="unequipped"
 
anim=""
 
keys={}
 
fmouse=nil
 
Gyr0z=false
 
LastShot=0
 
 
ids = {}
 
ids.Shoot = 2691586
 
ids.Shoot2 = 10209842
 
ids.Ring =  3270017
 
ids.Fire = 10209821
 
ids.Crown = 20329976
 
ids.Crown2 = 1323306
 
ids.Icon = 52611635
 
ids.Spike = 1033714
 
ids.Hit = 10209590
 
ids.Explode = 2697431
 
ids.Rocket = 103970395
 
 
for i,v in pairs(ids) do
 
if type(v)=='number' then
 
ids[i]='http://www.roblox.com/asset/?id='..v
 
end
 
end
 
 
Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
 
if _G.Limbz then
 
Limbs.LS=Limbs.LS or _G.Limbz.LS
 
Limbs.RS=Limbs.RS or _G.Limbz.RS
 
Limbs.LH=Limbs.LH or _G.Limbz.LH
 
Limbs.RH=Limbs.RH or _G.Limbz.RH
 
end
 
_G.Limbz=Limbs
 
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
 
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
 
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
 
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
 
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
 
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
 
 
pcall(function() thesuit:Remove() end)
 
 
pcall(function() Head.face.Transparency=0 end)
 
Head.Transparency=0.99 Torso.Transparency=1
 
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck
 
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
 
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
 
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1
 
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
 
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.MaxHealth=200 Hum.Health=Hum.MaxHealth
 
 
Armz=false
 
Legz=false
 
Arms = function(on) Armz=on
 
if on then
 
LS.Part1=nil RS.Part1=nil
 
la.Part0=fTorso ra.Part0=fTorso
 
la.Part1=LA ra.Part1=RA
 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0)
 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
 
else
 
LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA
 
la.Part1=nil ra.Part1=nil
 
end
 
end
 
 
Legs = function(on) Legz=on
 
if on then
 
LH.Part1=nil RH.Part1=nil
 
ll.Part0=fTorso rl.Part0=fTorso
 
ll.Part1=LL rl.Part1=RL
 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0)
 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
 
else
 
LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL
 
ll.Part1=nil rl.Part1=nil
 
end
 
end
 
Arms'' Legs''
 
 
WDesign=function()
 
hp=pa(Weapon,"","Block",0,0,0,false,false,1,0) haw=weld(hp,Torso,hp,1,1,0.6,rd(180),0,rd(90))
 
ha=pa(Weapon,"","Block",0.25,0.9,0.4,false,false,0,0,"Br. yellowish orange") weld(ha,hp,ha,0,0,0,0,rd(90),0)
 
p=pa(Weapon,"","Block",0.35,0.5,0.45,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.45+0.25,0,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.4,0.8,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,0.9+0.25,-0.175,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.05,0.325,rd(180),0,0) qi{'SpecialMesh',p,MeshType="Wedge"}
 
p=pa(Weapon,"","Block",0.35,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.25,0.325,0,0,0) qi{'BlockMesh',p}
 
tr=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,"Dark stone grey") weld(tr,ha,tr,0,0.8,-0.35,0,rd(90),0) qi{'SpecialMesh',tr,MeshId=ids.Ring,Scale=v3(0.4,0.4,1)}
 
p=pa(Weapon,"","Block",0.2,0.25,0.2,false,false,0,0,"Dark stone grey") weld(p,tr,p,-0.15,0,0,0,0,rd(10)) qi{'BlockMesh',p,Scale=v3(1,1,0.5)}
 
bp=pa(Weapon,"","Block",0.7,2.5,0.7,false,false,0,0,"Dark stone grey") weld(bp,ha,bp,0,1.6,-0.5-0.125,rd(90),0,0) qi{'CylinderMesh',bp}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,1.25,0,rd(180),0,0) qi{'SpecialMesh',p,Scale=v3(0.4,4,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.9,0.2,0.9,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,2.7,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Br. yellowish orange") weld(p,bp,p,0,3.1,0,0,0,0) qi{'SpecialMesh',p,Scale=v3(0.4,1,0.4),MeshId=ids.Spike}
 
p=pa(Weapon,"","Block",0.6,0.5,0.6,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.35,0,0,0,0) qi{'CylinderMesh',p}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.25,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.7,0.2,0.7,false,false,0,0,"Dark stone grey") weld(p,bp,p,0,3.45,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.5,1)}
 
for i=0,360,360/10 do
 
local p=pa(Weapon,"","Block",0.2,1,0.5,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}pw.C0=cn(0,3.9,0)*ca(0,rd(i),0)*cn(0.5,0,0)*ca(0,0,rd(-35))
 
local p=pa(Weapon,"","Block",0.3,0.2,0.7,false,false,0,0,"Dark stone grey") local pw=weld(p,bp,p,0,0,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,1)}pw.C0=cn(0,4.3,0)*ca(0,rd(i),0)*cn(0.9,0,0)
 
end
 
bar=pa(Weapon,"","Block",0.65,1.2,0.65,false,false,0,0,"Dark stone grey") weld(bar,bp,bar,0,-1.5,0,0,0,0) qi{'CylinderMesh',bar}
 
p=pa(Weapon,"","Block",0.45,1,0.45,false,false,0,0,"Really black") weld(p,bar,p,0,-0.6,0,0,0,0) qi{'CylinderMesh',p,Scale=v3(1,0.02,1)}
 
p=pa(Weapon,"","Block",0.25,1.5,0.4,false,false,0,0,"Br. yellowish orange") weld(p,ha,p,0,0.3,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.35,0.5,0.9,false,false,0,0,"Dark stone grey") weld(p,ha,p,0,1.1,-1.8,0,0,0) qi{'BlockMesh',p}
 
p=pa(Weapon,"","Block",0.2,0.3,0.4,false,false,0,0,"Dark stone grey") weld(p,bar,p,-0.1,0,-0.3,rd(90),0,0) qi{'BlockMesh',p}
 
pb=pa(Weapon,"","Block",0.3,0.2,0.5,false,false,0,0,"Dark stone grey") weld(pb,bar,pb,-0.1,0,-0.5,rd(-90),0,0) qi{'BlockMesh',pb,Scale=v3(1,0.5,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,-0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.2,0.3,0.5,false,false,0,0,"Dark stone grey") weld(p,pb,p,0.125,0.2,0,0,0,0) qi{'SpecialMesh',p,MeshType="Wedge",Scale=v3(0.25,1,1)}
 
p=pa(Weapon,"","Block",0.25,0.6,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.2,0,rd(-15),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.25,0.3,0.2,false,false,0,0,"Dark stone grey") weld(p,pb,p,0,0.6,0,rd(25),0,0) qi{'BlockMesh',p,Scale=v3(1,1,0.25)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,-0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
p=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,"Dark stone grey") weld(p,bp,p,0.4,0.75,0,0,0,0) qi{'BlockMesh',p,Scale=v3(1,0.5,0.5)}
 
pl=pa(Weapon,"","Block",0.2,2,0.7,false,false,0,0,"Dark stone grey") weld(pl,bp,pl,0.6,0,0,0,0,0) qi{'BlockMesh',pl,Scale=v3(0.5,1,1)}
 
p=pa(Weapon,"","Block",0.2,2,0.6,false,false,0,0,"Dark stone grey") weld(p,pl,p,-0.275,0,-0.5,0,rd(60),0) qi{'BlockMesh',p,Scale=v3(0.5,1,1)}
 
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
 
end
 
 
WDesign()
 
Arms(false) Legs(false)
 
 
Dealt={20,70}
 
BBD,BBT=0,{}
 
 
function Destroy(Directory,Part,Distance)
 
for i,v in pairs(Directory:GetChildren()) do
 
if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name then
 
if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
 
v.Anchored=false
 
v:BreakJoints()
 
v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0)
 
v.Velocity=cn(Part.Position,v.Position).lookVector*50
 
end
 
elseif v:IsA("Model") or v:IsA("Script") then
 
Destroy(v,Part,Distance)
 
end
 
end
 
end
 
 
SplashDmg=function(Part,Distance)
 
q(function()
 
so(ids.Explode,Part,1,0.4)
 
qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}
 
for i,v in pairs(workspace:GetChildren()) do
 
if v:FindFirstChild("Torso",true) then
 
local vTorso=v:FindFirstChild("Torso",true)
 
if (vTorso.Position-Part.Position).magnitude<=Distance then
 
local vHum=GetHum(vTorso)
 
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
 
BBT[vHum.Parent]=1
 
if rn(1,20)==1 then
 
Dmg(vHum,rn(Dealt[1],Dealt[2])*3)
 
else
 
Dmg(vHum,rn(Dealt[1],Dealt[2]))
 
end
 
if BBD==2 and vTorso then
 
vHum.PlatformStand=true
 
if vHum.Jump then
 
AddBV(140,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
else
 
AddBV(110,cn(Part.Position,vTorso.Position),vTorso,0.3)
 
end
 
if vTorso.Parent~=Char then
 
AddBAV(v3(rn(-25,25),rn(-25,25),rn(-25,25)),vTorso,0.4)
 
end
 
q(function()
 
wait(0.4)
 
vHum.PlatformStand=false
 
end)
 
end
 
so(ids.Hit,vTorso,1,1)
 
BBT[vHum.Parent]=nil
 
end
 
end
 
end
 
end)
 
end
 
 
Fire = function(speed,sc,cff,dest)
 
q(function()
 
bb = pa(workspace,"bullet","Block",0.5*sc,2.8*sc,0.5*sc,false,true,0,0,"Black") qi{"SpecialMesh",bb,MeshId=ids.Rocket} bb.CanCollide=false
 
bb.CFrame = cn(cff.p,dest)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,bar,m,0,-0.825,0.05,rd(180),0,0) fade(m,0.2)
 
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,bar,m,0,-1,0,rd(180),0,0) fade(m,0.2)
 
so(ids.Fire,ha,1,1)
 
for i=1,100 do
 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,0,2)).p)
 
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end
 
bb.CFrame=bb.CFrame*cn(0,0,-speed)
 
GlowMesh(false,"block",Weapon,v3(1,1,1),"Bright red",bb.CFrame*cn(rn(-5,5),rn(-5,5),rn(1,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0.1,1,0.07)
 
wait()
 
end
 
local Surface = DetectSurface(bpos,bhit)
 
local C = cn(bpos) * ca(bhit.CFrame:toEulerAnglesXYZ()) * Surface[2]
 
if Surface[1] == "Anything" then C = Surface[2] end
 
GlowMesh(false,ids.Crown,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
GlowMesh(false,ids.Crown2,Weapon,v3(6,4,6),"Bright orange",C*cn(0,1.5,0),0.25,1,0.05)
 
BBD=2
 
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
 
SplashDmg(bb,12)
 
Destroy(workspace,bb,12)
 
BBD=0
 
game:GetService("Debris"):AddItem(bb,1)
 
end)
 
end
 
 
function Stance(speed)
 
c2(ra,speed,3,1.25,0.5,-0.25,-90,-65,0)
 
c2(la,speed,3,-1.25,0.5,-0.25,-90,-20,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,-65,0)
 
c2(tw,speed,3,0,0,0,0,65,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,0,-1,0.8,-90,-90,0,0,speed,1)
 
end
 
 
function Reset(speed)
 
c2(ra,speed,3,1.5,0.5,0,0,0,0)
 
c2(la,speed,3,-1.5,0.5,0,0,0,0)
 
c2(ll,speed,3,-0.5,-1,0,0,0,0)
 
c2(rl,speed,3,0.5,-1,0,0,0,0)
 
c2(hw,speed,3,0,1.5,0,0,0,0)
 
c2(tw,speed,3,0,0,0,0,0,0)
 
c2(neck,speed,3,0,1.5,0,0,0,0)
 
Ani(haw,1,1,0.6,180,0,90,0,speed,1)
 
end
 
 
function Button1Down()
 
if equip=="equipped" and anim=="" and (tick()-LastShot)>=0.8 and Hum.Health>0 then
 
LastShot=tick()
 
Fire(4,1,bar.CFrame*cn(0,-2,0),fmouse.Hit.p)
 
end
 
end
 
 
function KeyDown(key)
 
key=key:lower()
 
keys[key]=true
 
end
 
 
function KeyUp(key)
 
key=key:lower()
 
keys[key]=false
 
end
 
 
function Move()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end
 
 
Tool.Selected:connect(function(mouse)
 
fmouse=mouse Gyr0z=true
 
if equip=="unequipped" and anim=="" then
 
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = RA.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Stance(0.1) equip="equipped"
 
end
 
mouse.Button1Down:connect(Button1Down)
 
mouse.KeyDown:connect(KeyDown)
 
mouse.KeyUp:connect(KeyUp)
 
mouse.Move:connect(Move)
 
end)
 
 
Tool.Deselected:connect(function()
 
fmouse=nil Gyr0z=false
 
if equip=="equipped" and anim=="" then
 
equip="unequipping" c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
 
local ofs = Torso.CFrame:toObjectSpace(hp.CFrame)
 
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
 
Reset(0.1)
 
Arms(false) Legs(false) equip="unequipped"
 
end
 
end)
 
 
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
 
game:GetService("RunService").Stepped:connect(function()
 
if equip=="equipped" and anim=="" then
 
c2(ra,1,3,1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
c2(la,1,3,-1.25,0.5,-0.25,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
 
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
 
end
 
if Gyr0z then
 
Gyro.maxTorque=v3(1/0,1/0,1/0)
 
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
 
else
 
Gyro.maxTorque = v3(0,0,0)
 
end
 
end)
end)
UGB = Instance.new("TextButton", Screen)
UGB.Name = "UGB"
UGB.Text = "Ungod me"
UGB.Position = UDim2.new(0.05, 0, 0.6, 0)
UGB.Size = UDim2.new(0.1, 0, 0.1, 0)
UGB.Font = "Arial"
UGB.FontSize = "Size24"
UGB.TextWrapped = true
UGB.BackgroundColor3 = Color3.new(0, 0, 1)
UGB.TextColor3 = Color3.new(1, 1, 0)
UGB.BackgroundTransparency = 0.7
UGB.MouseButton1Down:connect(function()
    Char.Humanoid.MaxHealth = 100
    Char.Humanoid.Health = 100
end)
PIPE = Instance.new("TextButton", Screen)
PIPE.Name = "PIPE"
PIPE.Text = "Pipebomb launcher"
PIPE.Position = UDim2.new(0.35, 0, 0.3, 0)
PIPE.Size = UDim2.new(0.1, 0, 0.1, 0)
PIPE.Font = "Arial"
PIPE.FontSize = "Size24"
PIPE.TextWrapped = true
PIPE.BackgroundColor3 = Color3.new(0, 0, 1)
PIPE.TextColor3 = Color3.new(1, 1, 0)
PIPE.BackgroundTransparency = 0.7
PIPE.MouseButton1Down:connect(function()
script.Parent = nil



it = Instance.new

v3=Vector3.new

bc=BrickColor.new 

c3=Color3.new 

cn=CFrame.new 

ca=CFrame.Angles

ca2=function(a,b,c) 

return ca(math.rad(a),math.rad(b),math.rad(c)) 

end

ti=table.insert 

tr=table.remove 

rn=math.random 

rd=math.rad 

mf=math.floor

ud = UDim2.new

inf=math.huge

dg=math.deg

mdeg=math.deg

v310=v3(1/0,1/0,1/0)

pi=math.pi

w=wait

cf=cn

bn=bc

ts=tostring



Workspace=game:GetService("Workspace")

Players=game:GetService("Players")

Player=Players.LocalPlayer

Lighting=game:GetService("Lighting")

Debris=game:GetService("Debris")



work=Workspace

server=Players

tb=Player

lighting=Lighting

deb=Debris



asset = "http://www.roblox.com/asset/?id="

Asset=asset



ids = {}

ids.Shoot = 10209633

ids.Reload = 10209636

ids.Crown = 20329976

ids.Crown2 = 1323306

ids.Icon = 52611635

ids.Explode = 2697431

ids.Ring =  3270017 



for i,v in pairs(ids) do 

if type(v)=='number' then 

ids[i]='http://www.roblox.com/asset/?id='..v

end

game:GetService("ContentProvider"):Preload(ids[i])

end



qi = function(ttz)

 local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2) 

 if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end



q = function(f)

 coroutine.resume(coroutine.create(function() f() end)) end 

 

ft = function(tablez,item)

 for i=1,#tablez do if tablez[i] == item then return i end end  return nil end



ft2 = function(tablez,item)

 for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end



pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2)

 local fp=nil 

 if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then 

 fp=it("Part",pa) 

 fp.Shape=sh or "Block" 

 fp.formFactor="Custom" 

 elseif sh == "Wedge" then 

 fp=it("WedgePart",pa) 

 fp.formFactor="Custom"

 elseif sh == "CornerWedge" then 

 fp=it("CornerWedgePart",pa) 

 elseif sh == "VehicleSeat" then 

 fp=it("VehicleSeat",pa) 

 elseif sh == "Seat" then 

 fp=it("Seat",pa) 

 end 

 fp.Size=v3(x or 4,y or 2,z or 2) 

 fp.Friction = 2 

 fp.CanCollide=c or true

 fp.Anchored=a or false

 fp.BrickColor=bc(bc2 or "") 

 fp.Transparency=tr or 0

 fp.Reflectance=re or 0

 fp.BottomSurface=0 

 fp.Name=pn or "TBLib Part"

 fp.Locked = true

 fp.TopSurface=0 

 fp.CFrame=cn(0,0,0)

 fp:BreakJoints() 

 fp.Anchored = a 

 return fp 

end 



function ClearClass(Object,Class) 

for _,v in pairs(Object:GetChildren()) do 

if v:IsA(Class) then 

v:Destroy() 

end 

end 

end



function GetClass(Object,Class)

for _,v in pairs(Object:GetChildren()) do

if v:IsA(Class) then

return v

end

end

end



function re(par,obj)

 if par:findFirstChild(obj) then 

 par[obj]:Remove'' 

 end 

end 



function invis(o)

 for i,v in pairs(o:children()) do 

 if v:IsA("BasePart") then 

 v.Transparency=1 

 end 

 invis(v) 

 end 

end 



function newhats(p,o,o2)

 for i,v in pairs(p:children()) do 

 if v:IsA("Hat") then 

 local np=v.Handle:Clone'' 

 np.Transparency=0 

 np.Mesh.Scale=np.Mesh.Scale*1.04 

 np.Parent=o 

 np.CFrame=v.Handle.CFrame 

 np.Name="Hat"

 stick2(np,o2,o) 

 end 

 end 

end 



fade = function(prt,incr)

 q(function()  

 for i=prt.Transparency,1,incr do  

 prt.Transparency=i 

 wait()  

 end 

 prt:Remove'' 

 end) 

end

 

function weld(pa,p0,p1,x,y,z,a,b,c) 

 local fw=it("Weld",pa) 

 fw.Part0=p0 

 fw.Part1=p1 

 fw.C0=cn(x,y,z)*ca(a,b,c) 

 return fw 

end





stick = function(hit2,hit)

 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) 

end 



function stick2(hit2,hit,tostick)

 local weld=it("Weld") 

 weld.Part0=tostick 

 weld.Part1=hit2 

 local HitPos=hit.Position 

 local CJ=cn(HitPos) 

 local C0=hit2.CFrame:inverse() *CJ 

 local C1=hit.CFrame:inverse() * CJ weld.C0=C1 

 weld.C1=C0 

 weld.Parent=hit2 

end 



ray = function(Pos, Dir,tab)

 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab)

end 

 

function rtab(tabz,obj) 

 for i=1,#tabz do 

 if tabz[i] == obj then 

 tr(tabz,i) 

 break 

 end 

 end 

end 



sTrail={}

function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)

local oldpos=(ob.CFrame *ofz).p local lopz2=0

local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1

local mag=(oldpos - obp).magnitude 

local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 

tr.CFrame=cn(oldpos,obp) 

tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)

local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)

cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)

tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 

repeat loltr()

wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end



Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail

 q(function() 

 local oldpos=(ob.CFrame *ofz).p 

 for i=1,times do 

 if effon==true then

 local obp=(ob.CFrame *ofz).p 

 local mag=(oldpos - obp).magnitude 

 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col)

 tr.Anchored=true 

 tr.CFrame=cn(oldpos,obp) 

 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 

 trm=it("CylinderMesh",tr) 

 trm.Scale=v3(thickz,mag*5,thickz) 

 q(function() 

 for i=thickz,0,thickz/10 do 

 trm.Scale=v3(i,mag*5,i) 

 wait() 

 end 

 tr:Remove'' 

 end) 

 tr.CFrame=tr.CFrame *ca(rd(90),0,0) 

 oldpos=obp wait(waitz) 

 end

 end

 end) 

end



de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris



GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() -- Glowmesh

local spi=pa(rootz,"glowmesh","Block",mv3.X,mv3.Y,mv3.Z,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) spi.CanCollide=false if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim=it("BlockMesh",spi) else spim.MeshType="FileMesh" spim.MeshId=meshid2 end

if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 

for i=l1,l2,l3 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end) 

end



DetectSurface = function(pos, part) -- Surface Detector

local surface = nil local pospos = part.CFrame

local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape

if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then

surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}

else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}

elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", ca(0, 0, rd(-90))}

elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end



BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function

local Surface = DetectSurface(HitPos, HitObj)

local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]

if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole

local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})

bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end q(function() wait(5) for i=0,1,0.05 do bl.Size=v3(-i*sc,0,-i*sc) wait() end de(bl,0) end) 

end



so = function(id,par,vol,pit) q(function() -- Sound maker

local sou = qi({"Sound",par or workspace,Volume=vol,Pitch=pit or 1,SoundId=id})

wait() sou:play() wait(6) sou:Remove() end) end



-- local/so(asset..ds.GothicMusic,workspace,1,2.6)



function GetRegion(p0,p1,f,f2) q(function()

for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end

end) end 

 

FindGround = function(pos) -- ground finder

 local ax,ay,az = pos:toEulerAnglesXYZ()

 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))

 if bhit and bpos then 

 return cn(bpos)*ca(ax,ay,az) 

 end 

 return nil 

end



function NPC(Name, Position) -- npc maker

        local Character = Instance.new("Model")

        Character.Name = Name

        local Humanoid = Instance.new("Humanoid")

        Humanoid.Parent = Character

        local Template = Instance.new("Part")

        Template.FormFactor = "Custom"

        Template.Size = Vector3.new(1, 2, 1)

        Template.Locked = true

        local Head = Template:Clone()

        Head.Name = "Head"

        Head.TopSurface = "Smooth"

        Head.BottomSurface = "Smooth"

        Head.Size = Vector3.new(2, 1, 1)

        Head.Parent = Character

        local Mesh = Instance.new("SpecialMesh")

        Mesh.MeshType = "Head"

        Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)

        Mesh.Parent = Head

        local Face = Instance.new("Decal")

        Face.Name = "face"

        Face.Texture = "rbxasset://textures/face.png"

        Face.Parent = Head

        local Torso = Template:Clone()

        Torso.Name = "Torso"

        Torso.LeftSurface = "Weld"

        Torso.RightSurface = "Weld"

        Torso.CFrame = CFrame.new(0, 10000, 0)

        Torso.Size = Vector3.new(2, 2, 1)

        Torso.Parent = Character

        local TShirt = Instance.new("Decal")

        TShirt.Name = "roblox"

        TShirt.Parent = Torso

        local LeftArm = Template:Clone()

        LeftArm.Name = "Left Arm"

        LeftArm.Parent = Character

        local RightArm = Template:Clone()

        RightArm.Name = "Right Arm"

        RightArm.Parent = Character

        local LeftLeg = Template:Clone()

        LeftLeg.Name = "Left Leg"

        LeftLeg.Parent = Character

        local RightLeg = Template:Clone()

        RightLeg.Name = "Right Leg"

        RightLeg.Parent = Character

        Character:BreakJoints()

        local Neck = Instance.new("Weld")

        Neck.Name = "Neck"

        Neck.Part0 = Torso

        Neck.Part1 = Head

        Neck.C0 = CFrame.new(0, 1.5, 0)

        Neck.Parent = Torso

        local LeftShoulder = Instance.new("Motor")

        LeftShoulder.Name = "Left Shoulder"

        LeftShoulder.Part0 = Torso

        LeftShoulder.Part1 = LeftArm

        LeftShoulder.MaxVelocity = 0.1

        LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - RightArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)

        LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)

        LeftShoulder.Parent = Torso

        local RightShoulder = Instance.new("Motor")

        RightShoulder.Name = "Right Shoulder"

        RightShoulder.Part0 = Torso

        RightShoulder.Part1 = RightArm

        RightShoulder.MaxVelocity = 0.1

        RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)

        RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)

        RightShoulder.Parent = Torso

        local LeftHip = Instance.new("Motor")

        LeftHip.Name = "Left Hip"

        LeftHip.Part0 = Torso

        LeftHip.Part1 = LeftLeg

        LeftHip.MaxVelocity = 0.1

        LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)

        LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)

        LeftHip.Parent = Torso

        local RightHip = Instance.new("Motor")

        RightHip.Name = "Right Hip"

        RightHip.Part0 = Torso

        RightHip.Part1 = RightLeg

        RightHip.MaxVelocity = 0.1

        RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)

        RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)

        RightHip.Parent = Torso

        local BodyColors = Instance.new("BodyColors")

        BodyColors.LeftArmColor = BrickColor.new("Bright yellow")

        BodyColors.RightArmColor = BrickColor.new("Bright yellow")

        BodyColors.LeftLegColor = BrickColor.new("Br. yellowish green")

        BodyColors.RightLegColor = BrickColor.new("Br. yellowish green")

        BodyColors.HeadColor = BrickColor.new("Bright yellow")

        BodyColors.TorsoColor = BrickColor.new("Bright blue")

        BodyColors.Parent = Character

        Character.Parent = Workspace

        Character:MoveTo(Position)

        Character:MoveTo(Torso.Position + Vector3.new(0, 3, 0))

        return Character

end



AddBV=function(str,cfr,par,debt)

if not par then return end 

if par:findFirstChild'LibBV' then par.LibBV:Remove() end 

tbbodyvelocity=qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,1/0,1/0),Name='LibBV'} deb:AddItem(tbbodyvelocity,debt)

end



AddBG=function(str,par,debt)

if not par then return end 

if par:findFirstChild'LibBG' then par.LibBG:Remove() end 

tbbodygyro=qi{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Name='LibBG'} deb:AddItem(tbbodygyro,debt)

end



AddBAV=function(vec3,par,debt)

if not par then return end

if par:findFirstChild'LibBAV' then par.LibBAV:Remove() end

tbbodyangularvelocity=qi{'BodyAngularVelocity',par,maxTorque=v3(1/0,1/0,1/0),angularvelocity=vec3,Name='LibBAV'} deb:AddItem(tbbodyangularvelocity,debt)

end



Dmg = function(Hum,Dealt,Critical)

local HM=Hum.Parent

local HMT,HMB=HM:findFirstChild'Torso',HM:findFirstChild'Block'

local Blocks=HMB and HMB.Value>0

if HMT then

local mm=qi{'Model',HMT} qi{'Humanoid',mm,MaxHealth=0} deb:AddItem(mm,1)

local mp= qi{'Part',mm,Name='Head',formFactor="Custom",Anchored=true,CanCollide=false,Size=v3(1,0.2,1),CFrame=HMT.CFrame*cn(rn(-100,100)/50,3,rn(-100,100)/50)} qi{'BlockMesh',mp}

if Blocks then 

mm.Name='Block!'

mp.BrickColor=bn'Bright blue'

HMB.Value=HMB.Value-1

elseif not Blocks then

mm.Name=Dealt

mp.BrickColor=bn'Bright red'

end

if Critical then

mm.Name="Crit! "..Dealt

else

mm.Name=Dealt

end

end

if not Blocks then  

Hum:TakeDamage(Dealt)

end

end



GetHum = function(part)

local Hum,HT,block

for i,v in pairs(part.Parent:children()) do 

if v:IsA("Humanoid") then

Hum=v

elseif v.Name=='Torso' then

HT=v

elseif v.Name=='Block' and v:IsA("NumberValue") then

block=v

end

end

return Hum,HT,block

end



Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness

local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}

for i=1,tym do 

local li = it("Part",c) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = bc(col)

li.formFactor = "Custom" li.CanCollide = false li.Size = v3(th,th,magz/tym) local ofz = v3(trz[rn(1,2)],trz[rn(1,2)],trz[rn(1,2)]) 

local trolpos = cn(curpos,p1)*cn(0,0,magz/tym).p+ofz

if tym == i then 

local magz2 = (curpos - p1).magnitude li.Size = v3(th,th,magz2)

li.CFrame = cn(curpos,p1)*cn(0,0,-magz2/2)

else

li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/tym/2)

end

curpos = li.CFrame*cn(0,0,magz/tym/2).p de(li,0.25)

end

end



MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker

 q(function() 

 if not debz then 

 debz = 5 

 end 

 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))

 if bhit and bpos then

 for i=1,tyms do 

 q(function()

 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) 

 gr.Material = bhit.Material 

 gr.TopSurface = bhit.TopSurface

 gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) 

 wait(debz) 

 fade(gr,0.1)

 end) 

 end

 end 

 end)

end



MakeCrack = function(pos,sc,debz,par) -- crackmaker

 q(function() 

 if not debz then 

 debz = 5 

 end 

 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))

 if bhit and bpos then

local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)

local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)

 end 

 end)

end



a = {}

a.insw={}

function cleanweld(wexx,namzi) 

 local tn=ft2(a.insw,wexx) 

 if tn==nil then return end 

 if namzi=="p0" then 

 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then

 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then

 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then

 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 

 end

end

function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 

 q(function() 

 c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 

 end) 

end

a.Welding=0 

function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)

 if ft2(a.insw,wexx)==nil then 

 ti(a.insw,{wexx,{}}) 

 local tn=ft2(a.insw,wexx) 

 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 

 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 

 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()

 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() 

 end 

 local tn=ft2(a.insw,wexx) 

 local xx2,yy2,zz2=0,0,0 

 local x2,y2,z2=0,0,0 

 if c0orc1==0 then 

 xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] 

 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 

 elseif c0orc1==1 then 

 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] 

 x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] 

 else 

 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]

 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 

 end a.Welding=a.Welding + 1 

 local twa=1 

 if smmx >= 1 then 

 else 

 for i=smmx,0.8,smmx do 

 twa = 1 

 if c0orc1==0 then 

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 elseif c0orc1==1 then 

 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 else local x,y,z = wexx.C0:toEulerAnglesXYZ()

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)

 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))

 end 

 if fu then 

 q(fu) 

 end 

 wait() 

 end 

 for i=0.8,1,smmx*0.45 do 

 twa = 1 

 if c0orc1==0 then 

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 elseif c0orc1==1 then 

 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 else local x,y,z = wexx.C0:toEulerAnglesXYZ()

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)

 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))

 end

 wait() 

 end 

 end 

 local i=1 

 if c0orc1==0 then 

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 elseif c0orc1==1 then 

 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 

 else local x,y,z = wexx.C0:toEulerAnglesXYZ()

 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)

 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))

 end 

 a.Welding=a.Welding - 1 

 local tn=ft2(a.insw,wexx)

 if c0orc1==0 then 

 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)

 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)

 elseif c0orc1==1 then

 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)

 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)

 elseif c0orc1==3 then

 local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z 

 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)

 local x,y,z=wexx.C1:toEulerAnglesXYZ()

 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)

 end 

end 



Welds={}

Ani=function(w,a,b,c,d,e,f,ty,inc,sined)

if not Welds[w] then

local d0,e0,f0=w.C0:toEulerAnglesXYZ() local d1,e1,f1=w.C1:toEulerAnglesXYZ()

local d0,e0,f0=mdeg(d0),mdeg(e0),mdeg(f0) local d1,e1,f1=mdeg(d1),mdeg(e1),mdeg(f1)

Welds[w]={[0]={w.C0.x,w.C0.y,w.C0.z,d0,e0,f0},[1]={w.C1.x,w.C1.y,w.C1.z,d1,e1,f1}}

end

local c0,c1=Welds[w][0],Welds[w][1]

c0[1],c0[2],c0[3]=w.C0.x,w.C0.y,w.C0.z

c1[1],c1[2],c1[3]=w.C1.x,w.C1.y,w.C1.z

local A0,B0,C0,D0,E0,F0 = unpack(c0)

local A1,B1,C1,D1,E1,F1 = unpack(c1)

local Do = function(i)

if ty==0 then

w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2( D0-((D0-d)*i) , E0-(((E0-e)/1)*i) , F0-((F0-f)*i) )

elseif ty==1 then

w.C1=cn( A1-((A1-a)*i) , B1-((B1-b)*i) , C1-((C1-c)*i) ) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )

else

w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2(D0,E0,F0)

w.C1=cn(A1,B1,C1) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )

end

end

for i=inc,1,inc do 

Do(sined and math.sin(math.pi/2*i) or i)

wait()

end

Do(1)

if ty==0 then

c0[4],c0[5],c0[6]=d,e,f 

else

c1[4],c1[5],c1[6]=d,e,f 

end

end

qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined) end) end

rAni=function(w)

Welds[w]=nil

end



gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function

local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})

bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))

so(ds.Fire,bb,0.3,1) wait() for i=1,50 do 

bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)

if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end

bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)

wait()

end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)

if not bhit.Anchored then 

if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end 

else if bhit.Name~="Base" then bhit.Anchored=false bhit:BreakJoints() end end bb:Remove()

if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end

end) end



dive = function(ob2,pro,ite,stof)

local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then 

for i=1,#stof do v[stof[i][1]] = stof[i][2] end else div(v) end end end 

div(ob2)

end



fc = function(ob,cl)

for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end 

end



function se(Key,Text) 

local Values = {} 

for value in (Text..Key):gmatch("(.-)"..Key) do 

table.insert(Values,value)

end return Values 

end



local thefenv = getfenv()

getfenv()["rmhelp"] = function() 

local nus = 0

for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)

print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")

end

end

end



for i,v in pairs(thefenv) do 

_G[i] = v

--print(i)

end



_G[" r".."m".."d".."x "] = [[

for i,v in pairs(_G) do 

if i ~= "wait" and i ~= "script" then

getfenv()[i] = v

end

end

]]
---------------------------------------------------------
script:ClearAllChildren()

loadstring(_G[" rmdx "])()



Player=game:GetService("Players").LocalPlayer

Char=Player.Character

Backpack=Player.Backpack

PlayerGui=Player.PlayerGui

Torso=Char.Torso

Head=Char.Head

Hum=Char.Humanoid

Cam=workspace.CurrentCamera

Tn="Pipebomb Launcher"




pcall(function() Backpack[Tn]:Remove() end)

pcall(function() Cam[Tn]:Remove() end)

pcall(function() thesuit=Char[''] end)

pcall(function() thesuit[Tn]:Remove() end)

pcall(function() PlayerGui[Tn]:Remove() end)



CModel=qi{'Model',Cam,Name=Tn}

Tool=qi{'HopperBin',Player.Backpack,Name=Tn}

Suit=qi{'Model',Char,Name=''}

Weapon=qi{'Model',Suit,Name=Tn}

Gui=qi{'ScreenGui',PlayerGui,Name=Tn}



equip="unequipped"

anim=""

keys={}

fmouse=nil

PipeRotate=0

Clip=6

LastShot=0



ids = {}

ids.Shoot = 10209633

ids.Reload = 10209636

ids.Crown = 20329976

ids.Crown2 = 1323306

ids.Icon = 52611635

ids.Explode = 2697431

ids.Ring =  3270017 



for i,v in pairs(ids) do 

if type(v)=='number' then 

ids[i]='http://www.roblox.com/asset/?id='..v

end

game:GetService("ContentProvider"):Preload(ids[i])

end



Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}

if _G.Limbz then 

Limbs.LS=Limbs.LS or _G.Limbz.LS

Limbs.RS=Limbs.RS or _G.Limbz.RS

Limbs.LH=Limbs.LH or _G.Limbz.LH

Limbs.RH=Limbs.RH or _G.Limbz.RH

end 

_G.Limbz=Limbs

Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)

c2(Torso.Neck,1,3,0,1.5,0,0,0,0)

LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH

LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']

LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso

LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL



pcall(function() thesuit:Remove() end)



Head.face.Transparency=0 

Head.Transparency=1 Torso.Transparency=1

fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck

tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}

fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)

hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1

la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}

ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}

newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.WalkSpeed=16 Hum.MaxHealth=175



Armz=false

Legz=false

Arms = function(on) Armz=on

if on then

LS.Part1=nil RS.Part1=nil

la.Part0=fTorso ra.Part0=fTorso

la.Part1=LA ra.Part1=RA 

la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 

ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)

else

LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA

la.Part1=nil ra.Part1=nil

end

end



Legs = function(on) Legz=on

if on then

LH.Part1=nil RH.Part1=nil

ll.Part0=fTorso rl.Part0=fTorso

ll.Part1=LL rl.Part1=RL 

ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 

rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)

else

LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL

ll.Part1=nil rl.Part1=nil

end

end

Arms'' Legs''



WDesign=function(c)

ha=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,0.5,2.5,1,rd(270),0,rd(90))

gp=pa(Weapon,"","Block",0.2,1,0.2,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.35,0,rd(-90),0,0) qi{'SpecialMesh',gp,MeshType='Wedge'}

gp=pa(Weapon,"","Block",0.2,0.7,0.2,false,false,0,0,c[2]) weld(gp,ha,gp,0,-0.1,0.55,0,0,0) qi{'BlockMesh',gp,Scale=v3(1,1,0.5)}

gp=pa(Weapon,"","Block",0.2,0.5,0.5,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.115,-0.5,rd(45),0,0)

gp=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.1,-0.95,rd(15),0,0)

gpp=pa(Weapon,"","Block",0.21,0.6,0.3,false,false,0,0,c[3]) weld(gpp,ha,gpp,0,0,-1.5,0,0,0)

gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,0,rd(90),0) qi{'SpecialMesh',gp,MeshId=ids.Ring,Scale=v3(0.35,0.35,1)}

gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,rd(10),rd(90),0) qi{'BlockMesh',gp,Scale=v3(0.25,1,0.25)}

gp1=pa(Weapon,"","Block",1.2,0.2,1.2,false,false,0,0,c[3]) weld(gp1,gpp,gp1,0,-0.25,-0.2,rd(90),0,0) qi{'CylinderMesh',gp1}

p1=pa(Weapon,"","Block",0.4,1.3,0.2,false,false,0,0,c[3]) weld(p1,gp1,p1,0,0,0.1,rd(90),0,0)

p2=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[3]) weld(p2,p1,p2,0,1.3/2,0,0,0,rd(90)) qi{'CylinderMesh',p2}

hinge=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[4]) hingew=weld(hinge,p2,hinge,0,0,0,0,rd(0),0) qi{'CylinderMesh',hinge,Scale=v3(0.6,1.001,0.6)}

p3=pa(Weapon,"","Block",0.4,0.3,0.2,false,false,0,0,c[3]) weld(p3,p1,p3,0,-1.3/2,0,0,0,0) qi{'BlockMesh',p3}

p4=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p4,p3,p4,0.15,-0.2,0,0,0,0) qi{'BlockMesh',p4,Scale=v3(0.5,1,1)}

p5=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p5,p3,p5,-0.15,-0.2,0,0,0,0) qi{'BlockMesh',p5,Scale=v3(0.5,1,1)}

p6=pa(Weapon,"","Block",0.4,0.2,0.7,false,false,0,0,c[3]) weld(p6,hinge,p6,0,0,0.35,0,0,rd(-90)) qi{'BlockMesh',p6,Scale=v3(1,0.5,1)}

p7=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p7,p6,p7,0,0,0.55,rd(180),0,0) qi{'SpecialMesh',p7,Scale=v3(1,0.5,1),MeshType="Wedge"}

p8=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p8,p7,p8,0,-0.15,0,rd(180),0,0) qi{'SpecialMesh',p8,MeshType="Wedge"}

p9=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p9,p8,p9,0,0,0.35,0,0,0) qi{'BlockMesh',p9}

p10=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p10,p9,p10,0,0,0.3,0,rd(180),0) qi{'SpecialMesh',p10,MeshType="Wedge"}

p11=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p11,p10,p11,0,-0.2,0,0,0,0) qi{'BlockMesh',p11}

p12=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p12,p11,p12,0.35,0,0,0,rd(-90),0) qi{'SpecialMesh',p12,MeshType="Wedge"}

p13=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p13,p11,p13,-0.35,0,0,0,rd(90),0) qi{'SpecialMesh',p13,MeshType="Wedge"}

p14=pa(Weapon,"","Block",1.5,0.3,1.5,false,false,0,0,c[3]) weld(p14,p11,p14,0,-0.7,0,rd(90),0,0) qi{'CylinderMesh',p14}

p15=pa(Weapon,"","Block",1.3,0.2,1.3,false,false,0,0,c[2]) weld(p15,p14,p15,0,0.25,0,0,0,0) qi{'CylinderMesh',p15}

p16=pa(Weapon,"","Block",0.2,1.4,0.2,false,false,0,0,c[2]) piperw=weld(p16,p15,p16,0,0.7,0,0,rd(30),0) qi{'CylinderMesh',p16}

for i=0,360,360/6 do 

p16p=pa(Weapon,"","Block",0.5,1.1,0.5,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p} p16pw.C0=cn(0,-0.05,0)*ca(0,rd(i),0)*cn(0.4,0,0) 

p16p=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[5]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.5,0)*ca(0,rd(i),0)*cn(0.4,0,0) 

p16p=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.51,0)*ca(0,rd(i),0)*cn(0.4,0,0) 

end

p17=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p17,p14,p17,0,0,0.75,rd(90),rd(180),0) qi{'SpecialMesh',p17,MeshType="Wedge",Scale=v3(1,1,1)}

p18=pa(Weapon,"","Block",0.2,0.2,1.5,false,false,0,0,c[3]) weld(p18,p17,p18,0,0.05,0.9,0,0,0) qi{'BlockMesh',p18,Scale=v3(1,0.5,1)}

p19=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p19,p18,p19,0,0.1,0,0,0,0) qi{'SpecialMesh',p19,Scale=v3(0.5,0.5,1),MeshType="Wedge"}

p20=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p20,p19,p20,0,0,0.25,0,0,0) qi{'BlockMesh',p20,Scale=v3(0.5,0.5,1)}

p21=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p21,p20,p21,0,0,0.175,0,rd(180),0) qi{'SpecialMesh',p21,Scale=v3(0.5,0.5,0.25),MeshType="Wedge"}

p22=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(p22,p20,p22,0,0,0.05,0,0,rd(90)) qi{'CylinderMesh',p22,Scale=v3(0.25,0.51,0.25)}

p23=pa(Weapon,"","Block",0.75,0.8,0.75,false,false,0,0,c[2]) weld(p23,p14,p23,0,0.1,0.3,0,0,0) qi{'SpecialMesh',p23} -- start of barrel

p24=pa(Weapon,"","Block",0.6,1.8,0.6,false,false,0,0,c[2]) weld(p24,p23,p24,0,-0.9,0,0,0,0) qi{'CylinderMesh',p24}

p25=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[6]) weld(p25,p24,p25,0,-0.9,0,0,0,0) qi{'CylinderMesh',p25,Scale=v3(1,0.1,1)}

p26=pa(Weapon,"","Block",0.65,0.2,0.65,false,false,0,0,c[3]) weld(p26,p24,p26,0,-0.4,0,0,0,0) qi{'CylinderMesh',p26,Scale=v3(1,1,1)}

p26=pa(Weapon,"","Block",0.6,0.4,0.8,false,false,0,0,c[1]) weld(p26,p24,p26,0,0.17,-0.4,rd(90),0,0)

p27=pa(Weapon,"","Block",0.6,0.4,0.4,false,false,0,0,c[1]) weld(p27,p26,p27,0,0,0.6,rd(180),0,0) qi{'SpecialMesh',p27,MeshType="Wedge"}

for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end

end



WDesign({"Reddish brown","Black","Dark stone grey","White","Medium stone grey","Really black"}) Arms(false) Legs(false)



BBD,BBT=0,{}

Dealt={20,40}



function Destroy(Directory,Part,Distance) 

for i,v in pairs(Directory:GetChildren()) do 

if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name and v.Name~="Ignore" and v.Name~="Base" then 

if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then

v.Anchored=false

v:BreakJoints()

v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0) 

v.Velocity=cn(Part.Position,v.Position).lookVector*50

end

elseif v:IsA("Model") or v:IsA("Script") or v:IsA("BasePart") and v.Name=="Base" then 

Destroy(v,Part,Distance) 

end 

end

end



SplashDmg=function(Part,Distance)

q(function()

qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}

for i,v in pairs(workspace:GetChildren()) do

if v:FindFirstChild("Torso",true) then

local vTorso=v:FindFirstChild("Torso",true)

if (vTorso.Position-Part.Position).magnitude<=Distance then

local vHum=GetHum(vTorso)

if not vHum or BBD==0 or BBT[vHum.Parent] then return end

BBT[vHum.Parent]=1

if rn(1,20)==1 then

Dmg(vHum,rn(Dealt[1],Dealt[2])*3,true)

else

Dmg(vHum,rn(Dealt[1],Dealt[2]),false)

end

if BBD==2 and vTorso then 

vHum.PlatformStand=true

if vHum.Jump then

AddBV(120,cn(Part.Position,vTorso.Position),vTorso,0.4) 

else

AddBV(100,cn(Part.Position,vTorso.Position),vTorso,0.4) 

end

if vTorso.Parent~=Char then

AddBAV(v3(rn(-50,50),rn(-50,50),rn(-50,50)),vTorso,0.4)

end

q(function()

wait(0.6)

vHum.PlatformStand=false

end)

end

so(ids.Hit,vTorso,1,1)

BBT[vHum.Parent]=nil

end

end

end

end)

end



Fire = function(speed,sc,cff,dest) 

q(function()

local bb = pa(workspace,"bullet","Block",0.4*sc,0.6*sc,0.4*sc,false,true,0,0,"Bright red") bb.CanCollide=false qi{"CylinderMesh",bb} 

local pp0 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Bright red") pp0.CanCollide=false qi{"SpecialMesh",pp0,MeshType="Sphere",Scale=v3(2,2,2)} 

local pp1 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Black") pp1.CanCollide=false qi{"CylinderMesh",pp1,Scale=v3(2.02,0.25,2.02)} 

local pp2 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Black") pp2.CanCollide=false qi{"CylinderMesh",pp2,Scale=v3(2.02,2,2.02)} 

bb.CFrame = cn(cff.p,dest)*ca(rd(-90),0,0)

local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,p25,m,0,-0.6,0.05,rd(180),0,0) fade(m,0.2)

local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,p25,m,0,-0.8,0,rd(180),0,0) fade(m,0.2)

for i=1,100 do 

bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-2,0)).p)

bhit2,bpos2=ray(pp0.Position,pp0.Position - (pp0.CFrame *cn(0,-2,0)).p)

bhit3,bpos3=ray(pp1.Position,bb.Position - (pp1.CFrame *cn(0,-2,0)).p)

bhit4,bpos4=ray(pp2.Position,pp0.Position - (pp2.CFrame *cn(0,-2,0)).p)

if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end

if bhit2 and bhit2.Name ~= "bullet" and bhit2.Name ~= "bullethole" and bhit2.Name~="muzzle" and bpos2 and (bpos2 - bb.Position).magnitude < speed then break end

if bhit3 and bhit3.Name ~= "bullet" and bhit3.Name ~= "bullethole" and bhit3.Name~="muzzle" and bpos3 and (bpos3 - bb.Position).magnitude < speed then break end

if bhit4 and bhit4.Name ~= "bullet" and bhit4.Name ~= "bullethole" and bhit4.Name~="muzzle" and bpos4 and (bpos4 - bb.Position).magnitude < speed then break end

bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.3),0,0)

pp0.CFrame=bb.CFrame*cn(0,0.3,0)

pp1.CFrame=bb.CFrame*cn(0,-0.3,0)

pp2.CFrame=bb.CFrame*cn(0,0.1,0)

wait()

end 

GlowMesh(false,"sphere",Weapon,v3(3,3,3),"Bright red",cn(bpos),0.25,1,0.05)

BBD=2

sopart=pa(workspace,"bullet","Block",0,0,0,true,true,1,0)

bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)

pp0.CFrame=bb.CFrame*cn(0,0.3,0)

pp1.CFrame=bb.CFrame*cn(0,-0.3,0)

pp2.CFrame=bb.CFrame*cn(0,0.1,0)

sopart.CFrame=bb.CFrame

so(ids.Explode,sopart,1,0.4)

SplashDmg(bb,11)

Destroy(workspace,bb,13)

BBD=0

deb:AddItem(bb,1)

deb:AddItem(sopart,1)

end) 

end 



function Stance(speed)

c2(ra,speed,3,1.25,0.5,-0.25,-75,-65,0)

c2(la,speed,3,-1.25,0.5,-0.25,-70,-20,0)

c2(ll,speed,3,-0.5,-1,0,0,0,0)

c2(rl,speed,3,0.5,-1,0,0,0,0)

c2(hw,speed,3,0,1.5,0,0,-65,0)

c2(tw,speed,3,0,0,0,0,65,0)

c2(neck,speed,3,0,1.5,0,0,0,0)

c2(hingew,speed,3,0,0,0,0,0,0)

c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)

Ani(haw,0,0.5,0,-75,0,0,0,speed/2,1)

end



function Reset(speed)

c2(ra,speed,3,1.5,0.5,0,0,0,0)

c2(la,speed,3,-1.5,0.5,0,0,0,0)

c2(ll,speed,3,-0.5,-1,0,0,0,0)

c2(rl,speed,3,0.5,-1,0,0,0,0)

c2(hw,speed,3,0,1.5,0,0,0,0)

c2(tw,speed,3,0,0,0,0,0,0)

c2(neck,speed,3,0,1.5,0,0,0,0)

c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)

c2(hingew,speed,3,0,0,0,0,0,0)

Ani(haw,0.5,2.5,1,270,0,90,0,speed,1)

end



function Button1Down()

if Clip>0 and anim=="" and (tick()-LastShot)>=0.6 then

LastShot=tick()

so(ids.Shoot,ha,1,1)

Fire(3,1,p25.CFrame*cn(0,-1,0),fmouse.Hit.p)

Clip=Clip-1

PipeRotate=PipeRotate+60

c2(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)

elseif Clip==0 and anim=="" and (tick()-LastShot)>=0.6 then

anim="Reloading"

c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)

c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)

c2(hw,0.1,3,0,1.5,0,0,-65,0)

c1(hingew,0.15,3,0,0,0,0,-90,0)

for i=1,6 do

PipeRotate=PipeRotate+60

c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)

local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}

local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}

local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}

local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}

c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)

c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)

so(ids.Reload,ha,1,1)

c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)

Clip=i

deb:AddItem(pipe,0.05)

end

Stance(0.15)

anim=""

end

end



function KeyDown(key)

key=key:lower()

keys[key]=true

if key=="r" and anim=="" and equip=="equipped" and Clip==0 then

anim="Reloading"

c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)

c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)

c2(hw,0.1,3,0,1.5,0,0,-65,0)

c1(hingew,0.15,3,0,0,0,0,-90,0)

for i=1,6 do

PipeRotate=PipeRotate+60

c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)

local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}

local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}

local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}

local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}

c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)

c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)

so(ids.Reload,ha,1,1)

c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)

Clip=i

deb:AddItem(pipe,0.05)

end

Stance(0.15)

anim=""

end

end



Tool.Selected:connect(function(mouse)

fmouse=mouse

if equip=="unequipped" and anim=="" then

equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)

local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 

haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)

Stance(0.2) equip="equipped"

end

mouse.Button1Down:connect(Button1Down)

mouse.KeyDown:connect(KeyDown)

end)



Tool.Deselected:connect(function()

fmouse=nil

if equip=="equipped" and anim=="" then

equip="unequipping"  c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)

local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)

haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)

Reset(0.1)

Arms(false) Legs(false) equip="unequipped"

end

end)



Gyro=qi{"BodyGyro",Torso,D=50,P=1500}

game:GetService("RunService").Stepped:connect(function()

if fmouse~=nil then  

Gyro.maxTorque=v3(1/0,1/0,1/0)

Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z)) 

else

Gyro.maxTorque = v3(0,0,0) 

end 

if equip=="equipped" and anim=="" and fmouse~=nil then

c2(ra,1,3,1.25,0.5,-0.25,-75+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)

c2(la,1,3,-1.25,0.5,-0.25,-70+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)

c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)

end

end)
end)
FFB = Instance.new("TextButton", Screen)
FFB.Name = "FFB"
FFB.Text = "FF me"
FFB.Position = UDim2.new(0.05, 0, 0.7, 0)
FFB.Size = UDim2.new(0.1, 0, 0.1, 0)
FFB.Font = "Arial"
FFB.FontSize = "Size24"
FFB.TextWrapped = true
FFB.BackgroundColor3 = Color3.new(0, 0, 1)
FFB.TextColor3 = Color3.new(1, 1, 0)
FFB.BackgroundTransparency = 0.7
FFB.MouseButton1Down:connect(function()
   Instance.new('ForceField',game.Players.LocalPlayer.Character)
end)
UFFB = Instance.new("TextButton", Screen)
UFFB.Name = "UFFB"
UFFB.Text = "Unff me"
UFFB.Position = UDim2.new(0.05, 0, 0.8, 0)
UFFB.Size = UDim2.new(0.1, 0, 0.1, 0)
UFFB.Font = "Arial"
UFFB.FontSize = "Size24"
UFFB.TextWrapped = true
UFFB.BackgroundColor3 = Color3.new(0, 0, 1)
UFFB.TextColor3 = Color3.new(1, 1, 0)
UFFB.BackgroundTransparency = 0.7
UFFB.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.ForceField:Destroy()
end)
GAB = Instance.new("TextButton", Screen)
GAB.Name = "GAB"
GAB.Text = "Get DDH"
GAB.Position = UDim2.new(0.15, 0, 0.4, 0)
GAB.Size = UDim2.new(0.1, 0, 0.1, 0)
GAB.Font = "Arial"
GAB.FontSize = "Size24"
GAB.TextWrapped = true
GAB.BackgroundColor3 = Color3.new(0, 0, 1)
GAB.TextColor3 = Color3.new(1, 1, 0)
GAB.BackgroundTransparency = 0.7
GAB.MouseButton1Down:connect(function()
   game:GetService('InsertService'):LoadAsset(108149175):children()[1].Parent = game.Players.LocalPlayer.Backpack
end)
GAB2 = Instance.new("TextButton", Screen)
GAB2.Name = "GAB2"
GAB2.Text = "Get Fallen Artemis"
GAB2.Position = UDim2.new(0.15, 0, 0.5, 0)
GAB2.Size = UDim2.new(0.1, 0, 0.1, 0)
GAB2.Font = "Arial"
GAB2.FontSize = "Size24"
GAB2.TextWrapped = true
GAB2.BackgroundColor3 = Color3.new(0, 0, 1)
GAB2.TextColor3 = Color3.new(1, 1, 0)
GAB2.BackgroundTransparency = 0.7
GAB2.MouseButton1Down:connect(function()
   game:GetService('InsertService'):LoadAsset(110892267):children()[1].Parent = game.Players.LocalPlayer.Backpack
end)
GAB3 = Instance.new("TextButton", Screen)
GAB3.Name = "GAB3"
GAB3.Text = "Get R-Orb"
GAB3.Position = UDim2.new(0.15, 0, 0.6, 0)
GAB3.Size = UDim2.new(0.1, 0, 0.1, 0)
GAB3.Font = "Arial"
GAB3.FontSize = "Size24"
GAB3.TextWrapped = true
GAB3.BackgroundColor3 = Color3.new(0, 0, 1)
GAB3.TextColor3 = Color3.new(1, 1, 0)
GAB3.BackgroundTransparency = 0.7
GAB3.MouseButton1Down:connect(function()
   game:GetService('InsertService'):LoadAsset(98411393):children()[1].Parent = game.Players.LocalPlayer.Backpack
end)
GAB4 = Instance.new("TextButton", Screen)
GAB4.Name = "GAB4"
GAB4.Text = "Get Minion"
GAB4.Position = UDim2.new(0.15, 0, 0.7, 0)
GAB4.Size = UDim2.new(0.1, 0, 0.1, 0)
GAB4.Font = "Arial"
GAB4.FontSize = "Size24"
GAB4.TextWrapped = true
GAB4.BackgroundColor3 = Color3.new(0, 0, 1)
GAB4.TextColor3 = Color3.new(1, 1, 0)
GAB4.BackgroundTransparency = 0.7
GAB4.MouseButton1Down:connect(function()
   game:GetService('InsertService'):LoadAsset(89488524):children()[1].Parent = game.Players.LocalPlayer.Backpack
end)
GAB5 = Instance.new("TextButton", Screen)
GAB5.Name = "GAB5"
GAB5.Text = "Get Gun"
GAB5.Position = UDim2.new(0.15, 0, 0.8, 0)
GAB5.Size = UDim2.new(0.1, 0, 0.1, 0)
GAB5.Font = "Arial"
GAB5.FontSize = "Size24"
GAB5.TextWrapped = true
GAB5.BackgroundColor3 = Color3.new(0, 0, 1)
GAB5.TextColor3 = Color3.new(1, 1, 0)
GAB5.BackgroundTransparency = 0.7
GAB5.MouseButton1Down:connect(function()
   game:GetService('InsertService'):LoadAsset(97885552):children()[1].Parent = game.Players.LocalPlayer.Backpack
end)
TRN2 = Instance.new("TextButton", Screen)
TRN2.Name = "TRN2"
TRN2.Text = "Terrain2"
TRN2.Position = UDim2.new(0.25, 0, 0.8, 0)
TRN2.Size = UDim2.new(0.1, 0, 0.1, 0)
TRN2.Font = "Arial"
TRN2.FontSize = "Size24"
TRN2.TextWrapped = true
TRN2.BackgroundColor3 = Color3.new(0, 0, 1)
TRN2.TextColor3 = Color3.new(1, 1, 0)
TRN2.BackgroundTransparency = 0.7
TRN2.MouseButton1Down:connect(function()
model=Instance.new("Model")
model.Name="a"
model.Parent=workspace
nodes={
{1,1,1,1,1,1,1,1,1,1}; --1
{1,20,80,250,220,130,80,50,120,1}; --2
{1,50,90,210,60,170,210,100,40,1}; --3
{1,90,100,300,600,650,600,200,140,1}; --4
{1,60,100,350,650,750,650,200,30,1}; --5
{1,140,100,300,600,650,600,200,80,1}; --6
{1,110,100,350,480,230,160,100,50,1}; --7
{1,120,120,240,300,240,170,150,100,1}; --8
{1,80,80,10,30,90,60,40,50,1}; --9
{1,1,1,1,1,1,1,1,1,1}; --50
}
colorRange={}
colorRange[0]="Dark stone grey"
colorRange[70]="Dark green"
colorRange[80]="Camo"
colorRange[90]="Bright green"
colorRange[20]="Brown"
colorRange[40]="Dark stone grey"
colorRange[60]="Dark grey"
colorRange[80]="White"
flat_bricks=true --keep this at true for now...
width=40
depth=40
height=100
elevation=0
function createTriangle(n1,n2,n3)
local w1=Instance.new("WedgePart")
w1.formFactor="Symmetric"
w1.Anchored=true
w1.Name="awxsd561"
findingSolution=true
while findingSolution do
r=Ray.new(n1,(n3-n1).unit)
d=r:ClosestPoint(n2)
if (n1-d).magnitude>=(n1-n3).magnitude or (n3-d).magnitude>=(n3-n1).magnitude then
local n=n1
n1=n3
n3=n2
n2=n
else
findingSolution=false
end
end
local pos=(n1:lerp(n2,.5))
local v2=(n1:lerp(d,.5)-pos).unit*-1
local v3=(n2:lerp(d,.5)-pos).unit
local v1=(v2:Cross(v3))
local y=(n2-d).magnitude
local z=(n1-d).magnitude
w1.Size=Vector3.new(2,math.ceil(y),math.ceil(z)) +Vector3.new(0,1,1)
w1.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)
highestVal=0
for i,v in pairs(colorRange) do
if i>=highestVal and (pos.y-elevation)/height*100/255>=i then
highestVal=i
end
end
w1.BrickColor=BrickColor.new(colorRange[highestVal])
if flat_bricks then
local m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Scale=Vector3.new(0,y/math.ceil(y),z/math.ceil(z))
m.Parent=w1
else
w1.CFrame=w1.CFrame*CFrame.new(-.5,0,0)
end
local w2=Instance.new("WedgePart")
w2.formFactor="Symmetric"
w2.Name="awx"
w2.Anchored=true
local pos=(n3:lerp(n2,.5))
local v2=(n3:lerp(d,.5)-pos).unit*-1
local v3=(n2:lerp(d,.5)-pos).unit
local v1=(v2:Cross(v3))
local y=(n2-d).magnitude
local z=(n3-d).magnitude
w2.Size=Vector3.new(2,math.ceil(y),math.ceil(z)) +Vector3.new(0,1,1)
w2.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)
highestVal=0
for i,v in pairs(colorRange) do
if i>=highestVal and (pos.y-elevation)/height*100/255>=i then
highestVal=i
end
end
w2.BrickColor=BrickColor.new(colorRange[highestVal])
if flat_bricks then
local m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Scale=Vector3.new(0,y/math.ceil(y),z/math.ceil(z))
m.Parent=w2
else
w2.CFrame=w2.CFrame*CFrame.new(.5,0,0)
end
w2.Parent=model
w1.Parent=model
end
height=height/255
startPos=Vector3.new(0,0,0)
for a=1,#nodes-1 do
for b=1,#nodes[a]-1 do
createTriangle(Vector3.new((a+1)*width+startPos.x,nodes[a+1][b]*height+startPos.y,b*depth+startPos.z),Vector3.new(a*width+startPos.x,nodes[a][b]*height+startPos.y,b*depth+startPos.z),Vector3.new(a*width+startPos.x,nodes[a][b+1]*height+startPos.y,(b+1)*depth+startPos.z))
createTriangle(Vector3.new(a*width+startPos.x,nodes[a][b+1]*height+startPos.y,(b+1)*depth+startPos.z),Vector3.new((a+1)*width+startPos.x,nodes[a+1][b+1]*height+startPos.y,(b+1)*depth+startPos.z),Vector3.new((a+1)*width+startPos.x,nodes[a+1][b]*height+startPos.y,b*depth+startPos.z))
wait()
end
end

end)
VIS = Instance.new("TextButton", Screen)
VIS.Name = "VIS"
VIS.Text = "Open"
VIS.Position = UDim2.new(0.55, 0, 0, 50)
VIS.Size = UDim2.new(0, 80, 0, 50)
VIS.Font = "ArialBold"
VIS.FontSize = "Size24"
VIS.TextWrapped = true
VIS.BackgroundColor3 = Color3.new(0, 1, 0)
VIS.TextColor3 = Color3.new(1, 1, 0)
VIS.BackgroundTransparency = 0
VIS.Visible = false
VIS.MouseButton1Down:connect(function()
   game.Players.LocalPlayer.PlayerGui.TestGUI.VIS.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.VIS.Draggable = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.KB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.UGB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.FFB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.UFFB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB2.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB3.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB4.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB5.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.RTB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.CB.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.RKT.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.FRST.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.RSTR.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.CSTL.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.TRN.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.TRN2.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.PIPE.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.STRK.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.FLY.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.WING.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.CAPE.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.PENT.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.CMDS.Visible = true
end)
CB = Instance.new("TextButton", Screen)
CB.Name = "CB"
CB.Text = "Close"
CB.Position = UDim2.new(0.15, 0, 0.3, 0)
CB.Size = UDim2.new(0.1, 0, 0.1, 0)
CB.Font = "ArialBold"
CB.FontSize = "Size24"
CB.TextWrapped = true
CB.BackgroundColor3 = Color3.new(0, 1, 0)
CB.TextColor3 = Color3.new(1, 1, 0)
CB.BackgroundTransparency = 0
CB.MouseButton1Down:connect(function()
   game.Players.LocalPlayer.PlayerGui.TestGUI.VIS.Visible = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.VIS.Draggable = true
   game.Players.LocalPlayer.PlayerGui.TestGUI.KB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.UGB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.FFB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.UFFB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB2.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB3.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB4.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.GAB5.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.RTB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.CB.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.RKT.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.FRST.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.RSTR.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.CSTL.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.TRN.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.TRN2.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.PIPE.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.STRK.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.FLY.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.WING.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.CAPE.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.PENT.Visible = false
   game.Players.LocalPlayer.PlayerGui.TestGUI.CMDS.Visible = false
end)
CSTL = Instance.new("TextButton", Screen)
CSTL.Name = "CSTL"
CSTL.Text = "House"
CSTL.Position = UDim2.new(0.25, 0, 0.6, 0)
CSTL.Size = UDim2.new(0.1, 0, 0.1, 0)
CSTL.Font = "Arial"
CSTL.FontSize = "Size24"
CSTL.TextWrapped = true
CSTL.BackgroundColor3 = Color3.new(0, 0, 1)
CSTL.TextColor3 = Color3.new(1, 1, 0)
CSTL.BackgroundTransparency = 0.7
CSTL.MouseButton1Down:connect(function()
me = game.Players.LocalPlayer

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function remove(thing)
	thing.Parent = nil
end

local mod = Instance.new("Model",workspace)
mod.Name = "HouseMake, xS"

function makeroom(pos)
	local floor = Instance.new("Part")
	prop(floor,mod,true,0,0,35,1,35,"Black",true,"Custom")
	floor.CFrame = pos
	local roof = Instance.new("Part")
	prop(roof,mod,true,0,0,35,1,35,"Black",true,"Custom")
	roof.CFrame = floor.CFrame * CFrame.new(0,13,0)
	for i=-90,179,90 do
		local wall = Instance.new("Part")
		prop(wall,mod,true,0,0,36,13,1,"White",true,"Custom")
		wall.CFrame = pos * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,wall.Size.Y/2,floor.Size.X/2)
		local click = Instance.new("ClickDetector",wall)
		click.MouseClick:connect(function()
			local poz = wall.CFrame * CFrame.new(0,-wall.Size.Y/2,floor.Size.X/2)
			makeroom(poz)
			for o= -12 ,12, 24 do
				local wa = Instance.new("Part")
				prop(wa,mod,true,0,0,12,13,1,"White",true,"Custom")
				wa.CFrame = wall.CFrame * CFrame.new(o,0,0)
			end
			wall:remove()
		end)
	end
end

makeroom(CFrame.new(me.Character.Torso.Position) * CFrame.new(0,-2,40))

end)
TXT = Instance.new("TextLabel", Screen)
TXT.Name = "CREDITZ"
TXT.Text = "Welcome to no-point-in-this-gui-just-for-fun-lol-now-screw-off made by xxgoten567xx/xxgoten567xx. now discontinued"
TXT.Position = UDim2.new(0, 0, 0, 0)
TXT.Size = UDim2.new(1, 0, 0, 50)
TXT.Font = "ArialBold"
TXT.FontSize = "Size18"
TXT.TextWrapped = true
TXT.BackgroundColor3 = Color3.new(145, 44, 165)
TXT.TextColor3 = Color3.new(17, 232, 13)
TXT.BackgroundTransparency = 0
STRK = Instance.new("TextButton", Screen)
STRK.Name = "STRK"
STRK.Text = "Striker"
STRK.Position = UDim2.new(0.35, 0, 0.4, 0)
STRK.Size = UDim2.new(0.1, 0, 0.1, 0)
STRK.Font = "Arial"
STRK.FontSize = "Size24"
STRK.TextWrapped = true
STRK.BackgroundColor3 = Color3.new(0, 0, 1)
STRK.TextColor3 = Color3.new(1, 1, 0)
STRK.BackgroundTransparency = 0.7
STRK.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer	

local bin = Instance.new("HopperBin", player.Backpack)

bin.Name = "Striker unit"
	
local camera = game:GetService("Workspace").CurrentCamera
local character = player.Character

local torso = character:FindFirstChild("Torso")
local humanoid = character:FindFirstChild("Humanoid")
local neck = torso:FindFirstChild("Neck")

local rightLeg = character:FindFirstChild("Right Leg")
local leftLeg = character:FindFirstChild("Left Leg")

local rightHip = torso:FindFirstChild("Right Hip")
local leftHip = torso:FindFirstChild("Left Hip")

local neckAngle = neck.C1
local rightHipAngle = rightHip.C1
local leftHipAngle = leftHip.C1

local leftWeld = Instance.new("Weld") 
local rightWeld = Instance.new("Weld") 

local velocity = Instance.new("BodyVelocity")
local gyro = Instance.new("BodyGyro")
local pos = Instance.new("BodyPosition")

local parts = {"StrikerOne", "StrikerTwo", "JointOne", "JointTwo", "PropellerOne", "PropellerTwo"}
local welds = {"SWelderOne", "SWelderTwo", "JWelderOne", "JWelderTwo", "PWelderOne", "PWelderTwo"}

local strikerColor = "Really black"
local propellerColor = "White"
local jointColor = "Bright blue"

local mainModel = Instance.new("Model")
local cframePart = Instance.new("Part")

local toolSelected = false
local runNext = false
local strikerLoaded = false
local connected = false
local turn = false
local forward = false
local backward = false
local onleft = false
local onright = false
local onup = false
local ondown = false


local gyroAngleX = 0
local desiredGyroAngleX = 0
local gyroAngleY = 0
local desiredGyroAngleY = 0
local gyroAngleZ = 0
local desiredGyroAngleZ = 0
local angleSetSpeed = 5
local rotationIndice = 0
local maxRotation = 70
local motorSpeed = 0
local desiredSpeed = 0
local xPartPos = 0
local desiredXPartPos = 0
local yPartPos = 0
local desiredYPartPos = 0

function Striker(delay) 

	wait(delay)

	mainModel.Name = "Striker"
	mainModel.Archivable = false
	mainModel.Parent = character

	for index, name in pairs(parts) do

		getfenv()[name] = Instance.new("Part")
		getfenv()[name].Name = name
		getfenv()[name].Anchored = true
		getfenv()[name].Locked = true
		getfenv()[name].CanCollide = false
		getfenv()[name].Transparency = 1
		getfenv()[name].CFrame = CFrame.new(0, math.huge, 0)
		getfenv()[name].FormFactor = Enum.FormFactor.Custom
		getfenv()[name].BottomSurface = Enum.SurfaceType.Smooth
		getfenv()[name].TopSurface = Enum.SurfaceType.Smooth
		
		if index <= 2 then
		
			getfenv()[name].BrickColor = BrickColor.new(strikerColor)
			getfenv()[name].Size = Vector3.new(1.1, 1.5, 1.1)
			
		elseif index == 3 or index == 4 then
		
			getfenv()[name].BrickColor = BrickColor.new(jointColor)
			getfenv()[name].Size = Vector3.new(0.25, 0.25, 0.25)

		elseif index >= 5 then
		
			getfenv()[name].BrickColor = BrickColor.new(propellerColor)
			getfenv()[name].Size = Vector3.new(1.55, 0.2, 0.2)
			
		end
		
		getfenv()[name].Parent = mainModel
		
		coroutine.resume(coroutine.create(function()
		
			for i = getfenv()[name].Transparency, 0, -0.1 do 
			
				if toolSelected then wait() getfenv()[name].Transparency = i end
				
			end
		
		end))
		
	end
	
	for index, name in pairs(welds) do
	
		getfenv()[name] = Instance.new("Weld")
		getfenv()[name].Parent = mainModel
		getfenv()[name].Name = name
		
		if index == 1 then 
		
			getfenv()[name].Part0 = leftLeg 
			StrikerOne.Anchored = false
			getfenv()[name].Part1 = StrikerOne
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 2 then 
		
			getfenv()[name].Part0 = rightLeg
			StrikerTwo.Anchored = false
			getfenv()[name].Part1 = StrikerTwo
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 3 then 
		
			getfenv()[name].Part0 = StrikerOne
			JointOne.Anchored = false
			getfenv()[name].Part1 = JointOne
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointOne.CanCollide = true
			
		elseif index == 4 then 
		
			getfenv()[name].Part0 = StrikerTwo 
			JointTwo.Anchored = false
			getfenv()[name].Part1 = JointTwo
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointTwo.CanCollide = true
			
		elseif index == 5 then 
		
			getfenv()[name].Part0 = JointOne
			PropellerOne.Anchored = false
			getfenv()[name].Part1 = PropellerOne
		
		elseif index == 6 then 
		
			getfenv()[name].Part0 = JointTwo
			PropellerTwo.Anchored = false
			getfenv()[name].Part1 = PropellerTwo
			
		end
		
	end
	
	wait(0.1)
	
	strikerLoaded = true
	
end

function SetAngles(cfr, x, y, z) print("Settings")

	local x2, y2, z2 = cfr.C1:toEulerAnglesXYZ()
	
	x = math.rad(x)
	y = math.rad(y)
	z = math.rad(z)
	
	x2 = math.rad(x2)
	y2 = math.rad(y2)
	z2 = math.rad(z2)

	coroutine.resume(coroutine.create(function() local v1 local v2
	
		if x2 < x then v1, v2 = x2, x else v1, v2 = x, x2 end 
		
		for i = v1, v2, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(i/v2, 0, 0)
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v3 local v4
	
		if y2 < y then v3, v4 = y2, y else v3, v4 = y, x2 end
		
		for i = v3, v4, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, i/v4, 0) 
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v5 local v6
	
		if z2 < z then v5, v6 = z2, z else v5, v6 = z, z2 end
		
		for i = v5, v6, (v5 - v6) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, 0, i/v6)
			
		end 
		
	end))
	
end

function Connection(mouse)

	toolSelected = true

	coroutine.resume(coroutine.create(function() repeat wait()

		if toolSelected then
		
			if leftHip ~= nil then
			
				leftHip.DesiredAngle = 0
				leftHip.CurrentAngle = 0
				
			end
		
			if rightHip ~= nil then
			
				rightHip.DesiredAngle = 0
				rightHip.CurrentAngle = 0
				
			end
			
			runNext = true
		
		else break end

	until false return false end))
	
	repeat wait() until runNext
	
	humanoid.PlatformStand = true
	
	torso.Anchored = true wait()
	torso.Velocity = Vector3.new(0, 0, 0)
	torso.RotVelocity = Vector3.new(0, 0, 0)
	
	leftHipAngle = leftHip.C1
	rightHipAngle = rightHip.C1
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	torso.Anchored = false
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 20, 1 do wait()
	
		if toolSelected then
		
			pos.position = pos.position + Vector3.new(0, 0.2, 0)
			torso.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(18), 0)
			humanoid.PlatformStand = true
	
			leftHip.C1 = leftHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), -math.rad(0.5), -math.rad(0.5))
			rightHip.C1 = rightHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), math.rad(0.5), math.rad(0.5))
			
		end
		
	end
	
	local x22, y22, z22 = leftHip.C1:toEulerAnglesXYZ()
	
	repeat wait() until strikerLoaded
	
	gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	gyro.Parent = torso
	gyro.P = 1500
	
	velocity.Parent = torso
	velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	velocity.P = 125
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	
	coroutine.resume(coroutine.create(function()
	
		while strikerLoaded do wait(0.03405) if toolSelected and rotationIndice < maxRotation then rotationIndice = rotationIndice + 0.25 
		
			if desiredSpeed ~= 0 then if desiredSpeed > 0 then motorSpeed = desiredSpeed - (maxRotation - rotationIndice) elseif desiredSpeed < 0 then motorSpeed = desiredSpeed + (maxRotation - rotationIndice) end else motorSpeed = 0 end
			if desiredXPartPos ~= 0 then if desiredXPartPos > 0 then xPartPos = desiredXPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredXPartPos < 0 then xPartPos = desiredXPartPos + (maxRotation/2 - rotationIndice/2) end else xPartPos = 0 end
			if desiredYPartPos ~= 0 then if desiredYPartPos > 0 then yPartPos = desiredYPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredYPartPos < 0 then yPartPos = desiredYPartPos + (maxRotation/2 - rotationIndice/2) end else yPartPos = 0 end
			
			if desiredGyroAngleX ~= 0 then if desiredGyroAngleX > 0 then gyroAngleX = math.rad(desiredGyroAngleX - (maxRotation - rotationIndice)) elseif desiredGyroAngleX < 0 then gyroAngleX = math.rad(desiredGyroAngleX + (maxRotation - rotationIndice)) end else gyroAngleX = 0 end
			if desiredGyroAngleY ~= 0 then if desiredGyroAngleY > 0 then gyroAngleY = math.rad(desiredGyroAngleY - (maxRotation - rotationIndice)) elseif desiredGyroAngleY < 0 then gyroAngleY = math.rad(desiredGyroAngleY + (maxRotation - rotationIndice)) end else gyroAngleY = 0 end
			if desiredGyroAngleZ ~= 0 then if desiredGyroAngleZ > 0 then gyroAngleZ = math.rad(desiredGyroAngleZ - (maxRotation - rotationIndice)) elseif desiredGyroAngleZ < 0 then gyroAngleZ = math.rad(desiredGyroAngleZ + (maxRotation - rotationIndice)) end else gyroAngleZ = 0 end
		
			elseif toolSelected and rotationIndice == maxRotation then humanoid.PlatformStand = true motorSpeed = desiredSpeed gyroAngleX = math.rad(desiredGyroAngleX) gyroAngleY = math.rad(desiredGyroAngleY) gyroAngleZ = math.rad(desiredGyroAngleZ) xPartPos = desiredXPartPos yPartPos = desiredYPartPos end
		
			if PropellerOne ~= nil and PWelderOne ~= nil then
			
				PWelderOne.C1 = PWelderOne.C1 * CFrame.fromEulerAnglesXYZ(0, -math.rad(rotationIndice), 0)
				
			end
			
			if PropellerTwo ~= nil and PWelderTwo ~= nil then
			
				PWelderTwo.C1 = PWelderTwo.C1 * CFrame.fromEulerAnglesXYZ(0, math.rad(rotationIndice), 0)
				
			end
			
			if cframePart ~= nil then

				cframePart.Size = Vector3.new(0.2, 0.2, 0.2)
				cframePart.CFrame = CFrame.new(torso.CFrame.p, camera.CoordinateFrame.lookVector * 10000000) + Vector3.new(xPartPos, yPartPos, 0)
				
			end
			
			if velocity ~= nil then if velocity.Parent == torso then velocity.velocity = (cframePart.CFrame - cframePart.CFrame.p) * Vector3.new(xPartPos, yPartPos, -motorSpeed) end end
			if gyro ~= nil then if gyro.Parent == torso then gyro.cframe = CFrame.new(gyro.cframe.p, camera.CoordinateFrame.lookVector * 10000000) * CFrame.fromEulerAnglesXYZ(gyroAngleX, gyroAngleY, gyroAngleZ) end end
			
		end return
		
	end)) connected = true stand = true
	
	mouse.KeyDown:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardDown()
		elseif key == "s" then BackwardDown()
		elseif key == "a" then LeftDown()
		elseif key == "d" then RightDown()
		elseif key == "e" then UpDown()
		elseif key == "q" then DownDown()
		
	end end)
	
	mouse.KeyUp:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardUp() if backward then BackwardDown() end
		elseif key == "s" then BackwardUp() if forward then ForwardDown() end
		elseif key == "a" then LeftUp() if onright then RightDown() end
		elseif key == "d" then RightUp() if onleft then LeftDown() end
		elseif key == "e" then UpUp() if ondown then DownDown() end
		elseif key == "q" then DownUp() if onup then UpDown() end
		
	end end)

end

function Disconnection()

	toolSelected = false wait()
	
	for index, name in pairs(parts) do 
	
		if getfenv()[name] ~= nil then
		
			coroutine.resume(coroutine.create(function()
			
				for i = getfenv()[name].Transparency, 1, 0.1 do wait()
						
					getfenv()[name].Transparency = i
							
				end
			
			end))
			
		end 
		
	end
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 10, 1 do wait()
		
		pos.position = pos.position - Vector3.new(0, 0.15, 0)
		humanoid.PlatformStand = true

		leftHip.C1 = leftHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), -math.rad(-1), -math.rad(-1))
		rightHip.C1 = rightHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-1), math.rad(-1))
		
	end wait()
	
	humanoid.PlatformStand = false
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	if gyro ~= nil then if gyro.Parent == torso then gyro:remove() end end
	if velocity ~= nil then if velocity.Parent == torso then velocity:remove() end end
	if mainModel ~= nil then mainModel:remove() end
	
	strikerLoaded = false
	rotationIndice = 0
	motorSpeed = 0
	desiredSpeed = 0
	
	ForwardUp()
	BackwardUp()
	LeftUp()
	RightUp()
	
	forward = false
	backward = false
	onleft = false
	onright = false
	onup = false
	ondown = false
	
	leftHip.C1 = leftHipAngle
	rightHip.C1 = rightHipAngle
	
	connected = false

end

function ForwardDown() forward = true

	desiredGyroAngleX = -maxRotation
	desiredSpeed = maxRotation

end

function BackwardDown() backward = true

	desiredGyroAngleX = maxRotation
	desiredSpeed = -maxRotation

end

function ForwardUp() forward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function BackwardUp() backward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function LeftDown() onleft = true

	desiredGyroAngleY = -maxRotation
	desiredXPartPos = -maxRotation/2

end

function RightDown() onright = true

	desiredGyroAngleY = maxRotation
	desiredXPartPos = maxRotation/2

end

function LeftUp() onleft = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function RightUp() onright = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function UpDown() onup = true

	desiredYPartPos = maxRotation/2

end

function DownDown() ondown = true

	desiredYPartPos = -maxRotation/2

end

function UpUp() onup = false

	desiredYPartPos = 0

end

function DownUp() ondown = false

	desiredYPartPos = 0

end


bin.Selected:connect(Connection)
bin.Deselected:connect(Disconnection)

--mediafire
		
end)
FLY = Instance.new("TextButton", Screen)
FLY.Name = "FLY"
FLY.Text = "Fly tool [striker edited]"
FLY.Position = UDim2.new(0.35, 0, 0.5, 0)
FLY.Size = UDim2.new(0.1, 0, 0.1, 0)
FLY.Font = "Arial"
FLY.FontSize = "Size24"
FLY.TextWrapped = true
FLY.BackgroundColor3 = Color3.new(0, 0, 1)
FLY.TextColor3 = Color3.new(1, 1, 0)
FLY.BackgroundTransparency = 0.7
FLY.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer	

local bin = Instance.new("HopperBin", player.Backpack)

bin.Name = "Fly"
	
local camera = game:GetService("Workspace").CurrentCamera
local character = player.Character

local torso = character:FindFirstChild("Torso")
local humanoid = character:FindFirstChild("Humanoid")
local neck = torso:FindFirstChild("Neck")

local rightLeg = character:FindFirstChild("Right Leg")
local leftLeg = character:FindFirstChild("Left Leg")

local rightHip = torso:FindFirstChild("Right Hip")
local leftHip = torso:FindFirstChild("Left Hip")

local neckAngle = neck.C1
local rightHipAngle = rightHip.C1
local leftHipAngle = leftHip.C1

local leftWeld = Instance.new("Weld") 
local rightWeld = Instance.new("Weld") 

local velocity = Instance.new("BodyVelocity")
local gyro = Instance.new("BodyGyro")
local pos = Instance.new("BodyPosition")

local parts = {"StrikerOne", "StrikerTwo", "JointOne", "JointTwo", "PropellerOne", "PropellerTwo"}
local welds = {"SWelderOne", "SWelderTwo", "JWelderOne", "JWelderTwo", "PWelderOne", "PWelderTwo"}

local strikerColor = "Really black"
local propellerColor = "White"
local jointColor = "Bright blue"

local mainModel = Instance.new("Model")
local cframePart = Instance.new("Part")

local toolSelected = false
local runNext = false
local strikerLoaded = false
local connected = false
local turn = false
local forward = false
local backward = false
local onleft = false
local onright = false
local onup = false
local ondown = false


local gyroAngleX = 0
local desiredGyroAngleX = 0
local gyroAngleY = 0
local desiredGyroAngleY = 0
local gyroAngleZ = 0
local desiredGyroAngleZ = 0
local angleSetSpeed = 5
local rotationIndice = 0
local maxRotation = 70
local motorSpeed = 0
local desiredSpeed = 0
local xPartPos = 0
local desiredXPartPos = 0
local yPartPos = 0
local desiredYPartPos = 0

function Striker(delay) 

	wait(delay)

	mainModel.Name = "Striker"
	mainModel.Archivable = false
	mainModel.Parent = character

	
	wait(0.1)
	
	strikerLoaded = true
	
end

function SetAngles(cfr, x, y, z) print("Settings")

	local x2, y2, z2 = cfr.C1:toEulerAnglesXYZ()
	
	x = math.rad(x)
	y = math.rad(y)
	z = math.rad(z)
	
	x2 = math.rad(x2)
	y2 = math.rad(y2)
	z2 = math.rad(z2)

	coroutine.resume(coroutine.create(function() local v1 local v2
	
		if x2 < x then v1, v2 = x2, x else v1, v2 = x, x2 end 
		
		for i = v1, v2, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(i/v2, 0, 0)
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v3 local v4
	
		if y2 < y then v3, v4 = y2, y else v3, v4 = y, x2 end
		
		for i = v3, v4, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, i/v4, 0) 
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v5 local v6
	
		if z2 < z then v5, v6 = z2, z else v5, v6 = z, z2 end
		
		for i = v5, v6, (v5 - v6) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, 0, i/v6)
			
		end 
		
	end))
	
end

function Connection(mouse)

	toolSelected = true

	coroutine.resume(coroutine.create(function() repeat wait()

		if toolSelected then
		
			if leftHip ~= nil then
			
				leftHip.DesiredAngle = 0
				leftHip.CurrentAngle = 0
				
			end
		
			if rightHip ~= nil then
			
				rightHip.DesiredAngle = 0
				rightHip.CurrentAngle = 0
				
			end
			
			runNext = true
		
		else break end

	until false return false end))
	
	repeat wait() until runNext
	
	humanoid.PlatformStand = true
	
	torso.Anchored = true wait()
	torso.Velocity = Vector3.new(0, 0, 0)
	torso.RotVelocity = Vector3.new(0, 0, 0)
	
	leftHipAngle = leftHip.C1
	rightHipAngle = rightHip.C1
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	torso.Anchored = false
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 20, 1 do wait()
	
		if toolSelected then
		
			pos.position = pos.position + Vector3.new(0, 0.2, 0)
			torso.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(18), 0)
			humanoid.PlatformStand = true
	
			leftHip.C1 = leftHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), -math.rad(0.5), -math.rad(0.5))
			rightHip.C1 = rightHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), math.rad(0.5), math.rad(0.5))
			
		end
		
	end
	
	local x22, y22, z22 = leftHip.C1:toEulerAnglesXYZ()
	
	repeat wait() until strikerLoaded
	
	gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	gyro.Parent = torso
	gyro.P = 1500
	
	velocity.Parent = torso
	velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	velocity.P = 125
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	
	coroutine.resume(coroutine.create(function()
	
		while strikerLoaded do wait(0.03405) if toolSelected and rotationIndice < maxRotation then rotationIndice = rotationIndice + 0.25 
		
			if desiredSpeed ~= 0 then if desiredSpeed > 0 then motorSpeed = desiredSpeed - (maxRotation - rotationIndice) elseif desiredSpeed < 0 then motorSpeed = desiredSpeed + (maxRotation - rotationIndice) end else motorSpeed = 0 end
			if desiredXPartPos ~= 0 then if desiredXPartPos > 0 then xPartPos = desiredXPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredXPartPos < 0 then xPartPos = desiredXPartPos + (maxRotation/2 - rotationIndice/2) end else xPartPos = 0 end
			if desiredYPartPos ~= 0 then if desiredYPartPos > 0 then yPartPos = desiredYPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredYPartPos < 0 then yPartPos = desiredYPartPos + (maxRotation/2 - rotationIndice/2) end else yPartPos = 0 end
			
			if desiredGyroAngleX ~= 0 then if desiredGyroAngleX > 0 then gyroAngleX = math.rad(desiredGyroAngleX - (maxRotation - rotationIndice)) elseif desiredGyroAngleX < 0 then gyroAngleX = math.rad(desiredGyroAngleX + (maxRotation - rotationIndice)) end else gyroAngleX = 0 end
			if desiredGyroAngleY ~= 0 then if desiredGyroAngleY > 0 then gyroAngleY = math.rad(desiredGyroAngleY - (maxRotation - rotationIndice)) elseif desiredGyroAngleY < 0 then gyroAngleY = math.rad(desiredGyroAngleY + (maxRotation - rotationIndice)) end else gyroAngleY = 0 end
			if desiredGyroAngleZ ~= 0 then if desiredGyroAngleZ > 0 then gyroAngleZ = math.rad(desiredGyroAngleZ - (maxRotation - rotationIndice)) elseif desiredGyroAngleZ < 0 then gyroAngleZ = math.rad(desiredGyroAngleZ + (maxRotation - rotationIndice)) end else gyroAngleZ = 0 end
		
			elseif toolSelected and rotationIndice == maxRotation then humanoid.PlatformStand = true motorSpeed = desiredSpeed gyroAngleX = math.rad(desiredGyroAngleX) gyroAngleY = math.rad(desiredGyroAngleY) gyroAngleZ = math.rad(desiredGyroAngleZ) xPartPos = desiredXPartPos yPartPos = desiredYPartPos end
		
			if PropellerOne ~= nil and PWelderOne ~= nil then
			
				PWelderOne.C1 = PWelderOne.C1 * CFrame.fromEulerAnglesXYZ(0, -math.rad(rotationIndice), 0)
				
			end
			
			if PropellerTwo ~= nil and PWelderTwo ~= nil then
			
				PWelderTwo.C1 = PWelderTwo.C1 * CFrame.fromEulerAnglesXYZ(0, math.rad(rotationIndice), 0)
				
			end
			
			if cframePart ~= nil then

				cframePart.Size = Vector3.new(0.2, 0.2, 0.2)
				cframePart.CFrame = CFrame.new(torso.CFrame.p, camera.CoordinateFrame.lookVector * 10000000) + Vector3.new(xPartPos, yPartPos, 0)
				
			end
			
			if velocity ~= nil then if velocity.Parent == torso then velocity.velocity = (cframePart.CFrame - cframePart.CFrame.p) * Vector3.new(xPartPos, yPartPos, -motorSpeed) end end
			if gyro ~= nil then if gyro.Parent == torso then gyro.cframe = CFrame.new(gyro.cframe.p, camera.CoordinateFrame.lookVector * 10000000) * CFrame.fromEulerAnglesXYZ(gyroAngleX, gyroAngleY, gyroAngleZ) end end
			
		end return
		
	end)) connected = true stand = true
	
	mouse.KeyDown:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardDown()
		elseif key == "s" then BackwardDown()
		elseif key == "a" then LeftDown()
		elseif key == "d" then RightDown()
		elseif key == "e" then UpDown()
		elseif key == "q" then DownDown()
		
	end end)
	
	mouse.KeyUp:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardUp() if backward then BackwardDown() end
		elseif key == "s" then BackwardUp() if forward then ForwardDown() end
		elseif key == "a" then LeftUp() if onright then RightDown() end
		elseif key == "d" then RightUp() if onleft then LeftDown() end
		elseif key == "e" then UpUp() if ondown then DownDown() end
		elseif key == "q" then DownUp() if onup then UpDown() end
		
	end end)

end

function Disconnection()

	toolSelected = false wait()
	
	for index, name in pairs(parts) do 
	
		if getfenv()[name] ~= nil then
		
			coroutine.resume(coroutine.create(function()
			
				for i = getfenv()[name].Transparency, 1, 0.1 do wait()
						
					getfenv()[name].Transparency = i
							
				end
			
			end))
			
		end 
		
	end
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 10, 1 do wait()
		
		pos.position = pos.position - Vector3.new(0, 0.15, 0)
		humanoid.PlatformStand = true

		leftHip.C1 = leftHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), -math.rad(-1), -math.rad(-1))
		rightHip.C1 = rightHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-1), math.rad(-1))
		
	end wait()
	
	humanoid.PlatformStand = false
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	if gyro ~= nil then if gyro.Parent == torso then gyro:remove() end end
	if velocity ~= nil then if velocity.Parent == torso then velocity:remove() end end
	if mainModel ~= nil then mainModel:remove() end
	
	strikerLoaded = false
	rotationIndice = 0
	motorSpeed = 0
	desiredSpeed = 0
	
	ForwardUp()
	BackwardUp()
	LeftUp()
	RightUp()
	
	forward = false
	backward = false
	onleft = false
	onright = false
	onup = false
	ondown = false
	
	leftHip.C1 = leftHipAngle
	rightHip.C1 = rightHipAngle
	
	connected = false

end

function ForwardDown() forward = true

	desiredGyroAngleX = -maxRotation
	desiredSpeed = maxRotation

end

function BackwardDown() backward = true

	desiredGyroAngleX = maxRotation
	desiredSpeed = -maxRotation

end

function ForwardUp() forward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function BackwardUp() backward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function LeftDown() onleft = true

	desiredGyroAngleY = -maxRotation
	desiredXPartPos = -maxRotation/2

end

function RightDown() onright = true

	desiredGyroAngleY = maxRotation
	desiredXPartPos = maxRotation/2

end

function LeftUp() onleft = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function RightUp() onright = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function UpDown() onup = true

	desiredYPartPos = maxRotation/2

end

function DownDown() ondown = true

	desiredYPartPos = -maxRotation/2

end

function UpUp() onup = false

	desiredYPartPos = 0

end

function DownUp() ondown = false

	desiredYPartPos = 0

end


bin.Selected:connect(Connection)
bin.Deselected:connect(Disconnection)

--mediafire
		
end)
WING = Instance.new("TextButton", Screen)
WING.Name = "WING"
WING.Text = "Wings"
WING.Position = UDim2.new(0.35, 0, 0.6, 0)
WING.Size = UDim2.new(0.1, 0, 0.1, 0)
WING.Font = "Arial"
WING.FontSize = "Size24"
WING.TextWrapped = true
WING.BackgroundColor3 = Color3.new(0, 0, 1)
WING.TextColor3 = Color3.new(1, 1, 0)
WING.BackgroundTransparency = 0.7
WING.MouseButton1Down:connect(function()
function fly()

for i,v in pairs(script:GetChildren()) do

        pcall(function() v.Value = "" end)

        game:GetService("Debris"):AddItem(v,.1)

end

function weld(p0,p1,c0,c1,par)

        local w = Instance.new("Weld",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        return w

end

local motors = {}

function motor(p0,p1,c0,c1,des,vel,par)

        local w = Instance.new("Motor6D",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        w.MaxVelocity = tonumber(vel) or .05

        w.DesiredAngle = tonumber(des) or 0

        return w

end

function lerp(a,b,c)

    return a+(b-a)*c

end

function clerp(c1,c2,al)

        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

        local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

function ccomplerp(c1,c2,al)

        local com1 = {c1:components()}

        local com2 = {c2:components()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(unpack(com1))

end

function tickwave(time,length,offset)

        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length

end

function invcol(c)

        c = c.Color

        return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))

end

local oc = oc or function(...) return ... end

local plr = game.Players.LocalPlayer

local char = plr.Character

local tor = char.Torso

local hum = char.Humanoid

hum.PlatformStand = false

pcall(function()

        char.Wings:Destroy()

end)

pcall(function()

        char.Angel:Destroy() -- hat

end)

local mod = Instance.new("Model",char)

mod.Name = "Wings"

local special = {

        --antiboomz0r = {"Really black","Institutional white",0,0,false,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        antiboomz0r = {"New Yeller",nil,0.4,0.7,true,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        --antiboomz0r = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        taart = {"Royal purple",nil,.4,.4,true},

        mitta = {"Black",nil,0,0,false},

        penjuin3 = {"White",nil,0,0,false},

        thepc8110 = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        nonspeaker = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        littleau999 = {"Reddish brown",1030,0,0,false},

        unscripter = {"Really black","Really black",.2,0,true,Color3.new(0,0,0),Color3.new(0,0,0)},

        oxcool1 = {"Really black","White",.2,0,false,Color3.new(0,0,0),Color3.new(0,0,0)},

        krodmiss = {"Really black",nil,0,0,false},

}

local topcolor = invcol(char.Torso.BrickColor)

local feacolor = char.Torso.BrickColor

local ptrans = 0

local pref = 0

local fire = false

local fmcol = Color3.new()

local fscol = Color3.new()

local spec = special[plr.Name:lower()]

if spec then

        topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]

end

local part = Instance.new("Part")

part.FormFactor = "Custom"

part.Size = Vector3.new(.2,.2,.2)

part.TopSurface,part.BottomSurface = 0,0

part.CanCollide = false

part.BrickColor = topcolor

part.Transparency = ptrans

part.Reflectance = pref

local ef = Instance.new("Fire",fire and part or nil)

ef.Size = .15

ef.Color = fmcol or Color3.new()

ef.SecondaryColor = fscol or Color3.new()

part:BreakJoints()


function newpart()

        local clone = part:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end

local feath = newpart()

feath.BrickColor = feacolor

feath.Transparency = 0

Instance.new("SpecialMesh",feath).MeshType = "Sphere"

function newfeather()

        local clone = feath:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end


---------- RIGHT WING

local r1 = newpart()

r1.Size = Vector3.new(.3,1.5,.3)*1.2

local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)

local r2 = newpart()

r2.Size = Vector3.new(.4,1.8,.4)*1.2

local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)

local r3 = newpart()

r3.Size = Vector3.new(.3,2.2,.3)*1.2

local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)

local r4 = newpart()

r4.Size = Vector3.new(.25,1.2,.25)*1.2

local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local rf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

---------- LEFT WING

local l1 = newpart()

l1.Size = Vector3.new(.3,1.5,.3)*1.2

local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)

local l2 = newpart()

l2.Size = Vector3.new(.4,1.8,.4)*1.2

local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)

local l3 = newpart()

l3.Size = Vector3.new(.3,2.2,.3)*1.2

local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)

local l4 = newpart()

l4.Size = Vector3.new(.25,1.2,.25)*1.2

local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local lf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rwing = {rm1,rm2,rm3,rm4}

local lwing = {lm1,lm2,lm3,lm4}

local oc0 = {}

for i,v in pairs(rwing) do

        oc0[v] = v.C0

end

for i,v in pairs(lwing) do

        oc0[v] = v.C0

end

function gotResized()

        if lastsize then

                if tor.Size == lastsize then return end -- This shouldn't happen?

                local scaleVec = tor.Size/lastsize

                for i,v in pairs(oc0) do

                        oc0[i] = v-v.p+scaleVec*v.p

                end

                lastsize = tor.Size

        end

        lastsize = tor.Size

end

tor.Changed:connect(function(p)

        if p == "Size" then

                gotResized()

        end

end)

gotResized()

local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;}--0,.3,0,0

local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0}

local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}

local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0}


function setwings(tab,time)

        time = time or 10

        for i=1,4 do

                rwing[i].DesiredAngle = tab[i]

                lwing[i].DesiredAngle = tab[i]

                rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time

                lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time

                local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())

                local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())

        end

        for i,v in pairs(rf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

end

setwings(outhigh,1)

flying = false

moving = false

for i,v in pairs(tor:GetChildren()) do

        if v.ClassName:lower():match("body") then

                v:Destroy()

        end

end

local ctor = tor:Clone()

ctor:ClearAllChildren()

ctor.Name = "cTorso"

ctor.Transparency = 1

ctor.CanCollide = false

ctor.FormFactor = "Custom"

ctor.Size = Vector3.new(.2,.2,.2)

ctor.Parent = mod

weld(tor,ctor)

local bg = Instance.new("BodyGyro",ctor)

bg.maxTorque = Vector3.new()

bg.P = 15000

bg.D = 1000

local bv = Instance.new("BodyVelocity",ctor)

bv.maxForce = Vector3.new()

bv.P = 15000

vel = Vector3.new()

cf = CFrame.new()

flspd = 0


keysdown = {}

keypressed = {}

ktime = {}

descendtimer = 0

jumptime = tick()

hum.Jumping:connect(function()

        jumptime = tick()

end)

cam = workspace.CurrentCamera

kd = plr:GetMouse().KeyDown:connect(oc(function(key) 

        keysdown[key] = true 

        keypressed[key] = true 

        if key == "q" then 

                descendtimer = tick() 

        elseif key == " " and not hum.Jump then 

                jumptime = tick()

        elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then

                reqrotx = key == "a" and math.pi*2 or -math.pi*2

        end

        ktime[key] = tick() 

end))

ku = plr:GetMouse().KeyUp:connect(function(key) 

        keysdown[key] = false 

        if key == " " then 

                descendtimer = tick() 

        end 

end)

function mid(a,b,c)

        return math.max(a,math.min(b,c or -a))

end

function bn(a)

        return a and 1 or 0

end

function gm(tar)

        local m = 0

        for i,v in pairs(tar:GetChildren()) do

                if v:IsA("BasePart") then

                        m = m + v:GetMass()

                end

                        m = m + gm(v)

        end

        return m

end

reqrotx = 0

local grav = 196.2

local con

con = game:GetService("RunService").Stepped:connect(oc(function()

        --[[if not mod:IsDescendantOf(workspace) then

                pcall(function() kd:disconnect() end)

                pcall(function() ku:disconnect() end)

                bg:Destroy()

                bv:Destroy()

                con:disconnect()

                script:Destroy()

                return

        end]]

        local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)

        local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z

        if flying then

                local lfldir = fldir

                fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit

                local lmoving = moving

                moving = fldir.magnitude > .1

                if lmoving and not moving then

                        idledir = lfldir*Vector3.new(1,0,1)

                        descendtimer = tick()

                end

                local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])

                if moving and keysdown["0"] and lmoving then

                        fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit

                end

                local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))

                local descending = (not moving and keysdown["q"] and not keysdown[" "])

                cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)

                local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05

                hum.PlatformStand = true

                bg.maxTorque = Vector3.new(1,1,1)*9e5

                local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector

                bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)

                reqrotx = reqrotx - reqrotx/10

                bv.maxForce = Vector3.new(1,1,1)*9e4*.5

                local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2

                local ani = tickwave(1.5-anioff,1)

                bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6) 

                vel = moving and cf.lookVector*flspd or Vector3.new()

                flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))

                setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)

                for i=1,4 do

                        --CFrame.Angles(-.5+bn(i==3)*2.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1)

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)

                end

                local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})

                if hit and down.Y < -.85 and tick()-flystart > 1 then

                        flying = false

                        hum.PlatformStand = false

                        tor.Velocity = Vector3.new()

                end

        else

                bg.maxTorque = Vector3.new()

                bv.maxForce = Vector3.new()

                local ani = tickwave(walking and .8 or 4.5,1)

                setwings(idle,10)

                local x,y,z = fspd/160,uspd/700,sspd/900

                for i=1,4 do

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)

                end

                if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then

                        vel = Vector3.new(0,50,0)

                        bv.velocity = vel

                        idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)

                        cf = tor.CFrame * CFrame.Angles(-.01,0,0)

                        tor.CFrame = cf

                        bg.cframe = cf

                        flystart = tick()

                        flying = true

                end

        end

        keypressed = {}

end))



end fly()
end)
CAPE = Instance.new("TextButton", Screen)
CAPE.Name = "CAPE"
CAPE.Text = "Cape"
CAPE.Position = UDim2.new(0.35, 0, 0.7, 0)
CAPE.Size = UDim2.new(0.1, 0, 0.1, 0)
CAPE.Font = "Arial"
CAPE.FontSize = "Size24"
CAPE.TextWrapped = true
CAPE.BackgroundColor3 = Color3.new(0, 0, 1)
CAPE.TextColor3 = Color3.new(1, 1, 0)
CAPE.BackgroundTransparency = 0.7
CAPE.MouseButton1Down:connect(function()
wait(0.4);
local ta1 = 5;
function Cape(player,color)
color = color or player.Torso.BrickColor; 
if (player:FindFirstChild("Head") == nil) then return nil; end 
local m = Instance.new("Model"); 
m.Name = "cape32283483472924379834728978392437248932798342789347892484949237828374979432792478492323478942378932"; 
local neckpiece = Instance.new("Part",m);
neckpiece.formFactor = "Plate";
neckpiece.Size = Vector3.new(2,.4,1);
neckpiece.Name = "NeckPiece";
neckpiece.BrickColor = color;
neckpiece.CanCollide = false;
neckpiece.TopSurface = "Smooth";
neckpiece.BottomSurface = "Smooth";
local neckweld = Instance.new("Weld",neckpiece);

neckweld.Part0 = player.Head;
neckweld.Part1 = neckpiece;
neckweld.C0 = CFrame.new(0,-.5,0); 
local seg1 = neckpiece:Clone(); 
seg1.Size = Vector3.new(3,.4,1);
seg1.Parent = m;
seg1.Name = "Segment_1";
local seg1w = Instance.new("Weld",seg1);
seg1w.Part0 = neckpiece;
seg1w.Part1 = seg1;
seg1w.C0 = CFrame.new(0,0,.45);
seg1w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-80),0,0); 
local seg2 = seg1:Clone();
seg2.Parent = m;
seg2.Name = "Segment_2";
local seg2w = Instance.new("Weld",seg2);
seg2w.Part0 = seg1;
seg2w.Part1 = seg2;
seg2w.C0 = CFrame.new(0,0,.45);
seg2w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-5),0,0);
m.Parent = player;
local seg3 = seg2:Clone();
seg3.Parent = m;
seg3.Name = "Segment_3";
local seg3w = Instance.new("Weld",seg3);
seg3w.Part0 = seg2;
seg3w.Part1 = seg3;
seg3w.C0 = CFrame.new(0,0,.45);
seg3w.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(-2),0,0);
local seg4 = seg3:Clone();
seg4.Name = "Segment_4";
seg4.Parent = m;
local seg4w = Instance.new("Weld",seg4);
seg4w.Part0 = seg3;
seg4w.Part1 = seg4;
seg4w.C0 = CFrame.new(0,0,.45);
seg4w.C1 = CFrame.new(0,0,-.45);
return m;
end

function Flex(cape,vals)
for i,v in pairs(vals) do
if(i ~= 1) then 
cape:GetChildren()[i].Weld.C1 = CFrame.new(0,0,-.45)*CFrame.Angles(math.rad(vals[i-1]),0,0);
end
end
end
local char = game.Players.LocalPlayer.Character;
local cape = Cape(char);
local lastfrstrad = -60;
for i=0, math.huge do
local frstrad = -60;
ta = ta1 * char.Torso.Velocity.magnitude/16 + 1 * (math.random()+.5);
if(ta>10) then
ta = math.random(90,100)/10;
end
frstrad = frstrad + (char.Torso.Velocity.magnitude) + math.sin(i)*3*ta;
if(frstrad > 65) then
frstrad = 65;
elseif (char.Torso.Velocity.magnitude < 5) then
frstrad = -80;
end
if(char.Humanoid:HasCustomStatus("Flying"))then
frstrad = -80;
ta = 15;
end
frstrad = (frstrad+lastfrstrad)/2;
lastfrstrad = frstrad;
Flex(cape,{frstrad,math.sin(i+20)*-1*ta,math.sin(i+20)*2*ta,math.sin(i+20)*ta,math.sin(i+20)*-1*ta});
wait(.05);
end

print 'Hello world!'
end)
PENT = Instance.new("TextButton", Screen)
PENT.Name = "PENT"
PENT.Text = "Random ass pentagon"
PENT.Position = UDim2.new(0.35, 0, 0.8, 0)
PENT.Size = UDim2.new(0.1, 0, 0.1, 0)
PENT.Font = "Arial"
PENT.FontSize = "Size24"
PENT.TextWrapped = true
PENT.BackgroundColor3 = Color3.new(0, 0, 1)
PENT.TextColor3 = Color3.new(1, 1, 0)
PENT.BackgroundTransparency = 0.7
PENT.MouseButton1Down:connect(function()
CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Scale = 3

Pos = V3(100, 0, 0)
Pos = Pos + V3(0, 1, 0)

function Part(P, Anch, Coll, Tran, Ref, Col, Size)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Size
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

for i,v in pairs(workspace:children()) do if v.Name == "Building" then v:remove() end end 

local Mod = Instance.new("Model")
Mod.Name = "Building"

for i = 0, 360, 72 do
	local cf = CN(Pos) * CA(0, MR(i), 0) * CN(0, 17.5*Scale, -100*Scale)
	local p = Part(Mod, true, true, 0, 0, "Dark grey", V3(15*Scale, 45*Scale, 15*Scale))
	p.CFrame = cf * CN(0, 5*Scale, 0)
	for x = 60, 120, 10 do
		local p2 = Part(Mod, true, true, 0, 0, "Dark grey", V3(25*Scale, 19.5*Scale, 12*Scale))
		local cen = cf * CA(0, MR(36), 0) * CN(-60*Scale, -70*Scale, 0)
		p2.CFrame = cen * CA(0, 0, MR(x)) * CN(98*Scale, 0, 0)
	end
	local p2 = Part(Mod, true, true, 0, 0, "Dark grey", V3(138*Scale, 1*Scale, 95*Scale))
	p2.CFrame = CN(Pos) * CA(0, MR(i+36), 0) * CN(0, 0, -47.5*Scale)
	local p3 = Part(Mod, true, true, 0, 0, "Dark grey", V3(138*Scale, 25*Scale, 95*Scale))
	p3.CFrame = CN(Pos) * CA(0, MR(i+36), 0) * CN(0, 50*Scale, -47.5*Scale)
end

Mod.Parent = workspace
end)
CMDS = Instance.new("TextButton", Screen)
CMDS.Name = "CMDS"
CMDS.Text = "Commands [xxgoten567xx only]"
CMDS.Position = UDim2.new(0.45, 0, 0.3, 0)
CMDS.Size = UDim2.new(0.1, 0, 0.1, 0)
CMDS.Font = "Arial"
CMDS.FontSize = "Size24"
CMDS.TextWrapped = true
CMDS.BackgroundColor3 = Color3.new(0, 0, 1)
CMDS.TextColor3 = Color3.new(1, 1, 0)
CMDS.BackgroundTransparency = 0.7
CMDS.MouseButton1Down:connect(function()
script.Parent = nil

local colppl={}
local skids={}
local cmds={}
local ppladdress={}
local guipopup=true
local lp=false
local chat=false
local ps=false
local vs=1.00
--[[Music IDs:
Wind Of Fjords:1015394
]]--
--[[Functions]]--
for i,v in pairs(script:GetChildren()) do
    pcall(function()
        if v.Name=="DSource" then
            v:remove()
        end
    end)
end
model=Instance.new("Model",game.Lighting)
model.Name="People"
model1=Instance.new("Model",model)
model1.Name="AFK"
function AddCommand(Command,Func)
    table.insert(cmds,{Command=Command,Func=Func})
end
function AddIP(player,ip)
        table.insert(ppladdress,{Name=player,IP=ip})
end
function Music(v)
        music=Instance.new("Sound",game.Workspace)
        music.Name="Sound;Admin"
        music.SoundId="http://www.roblox.com/asset/?id="..v
        music:Play()
        Hint("Playing music")
end
function FindIP(Text,Speaker)
    for i,v in pairs(ppladdress) do
        if v.Name:lower():find(Text:lower())==1 then
            local H=Instance.new("Hint",Speaker.PlayerGui)
            H.Text=v.Name .. " - " .. v.IP
            game:service("Debris"):AddItem(H,5)
                        return
        end
    end
        H=Instance.new("Hint",Speaker.PlayerGui)
        H.Text="Could not find user!"
        game:service("Debris"):AddItem(H,2)
end
function SecIP(Text)
    for i,v in pairs(ppladdress) do
        if v.Name:lower():find(Text:lower())==1 then
            return v.IP
        end
    end
end
function Shutdown()
Instance.new("ManualSurfaceJointInstance",workspace)
end
function Hint(texts)
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(game.Players:GetChildren()) do
                        a=Instance.new("ScreenGui",v.PlayerGui)
                        a.Name="Message"
                        b=Instance.new("Frame",a)
                        b.Size=UDim2.new(1,0,0.07,0)
                        b.BackgroundTransparency=1
                        b.BackgroundColor3=Color3.new(0,0,0)
                        c=Instance.new("TextLabel",b)
                        c.FontSize="Size14"
                        c.Position=UDim2.new(0.5,0,0.5,0)
                        c.TextColor3=Color3.new(0,255,0)
                                for tr=1,#texts do
                                        c.Text=texts:sub(1,tr)
                                        wait()
                                end
                        game:service("Debris"):AddItem(a,2)
                end
        end))
end
function PrintPlayers()
        Hint(#game.NetworkServer:GetChildren().." is amount of players")
end
function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
        local funcw = Instance.new("Weld") 
        funcw.Name = zName 
        funcw.Parent = zParent 
        funcw.Part0 = zPart0 
        funcw.Part1 = zPart1 
        if (zCoco == true) then 
        funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
        else 
        funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
        end 
        return funcw 
end 
function SearchPlayer(Player,Speaker,tab)
    if tab==nil then tab={} end
    if Player:lower()=="others" then
        local s={}
        for i,v in pairs(game.Players:GetChildren()) do
            if v~=Speaker then
            table.insert(s,v)
            end
        end
    return s
    end
    if Player:lower()=="all" then
        local s={}
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(s,v)
        end
        return s
    end
    if Player:lower()=="nonadmins" then
        local b={}
        for i,v in pairs(game.Players:GetPlayers()) do
                local admin=false
                for a,x in pairs(colppl) do
                    if v.Name:lower()==x:lower() then
                         admin=true
                    end
                    if admin==false then
                        table.insert(b,v)
                    end
                end
            end
        return b
    end
    if Player:lower()=="admins" then
        local b={}
        for i,v in pairs(game.Players:GetPlayers()) do
            for __,_ in pairs(colppl) do
                if v.Name:lower()==_:lower() then
                    table.insert(b,v)
                end
            end
        end
        return b
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name:lower():find(Player:lower())==1 then
            table.insert(tab,v)
        end
    end
    if Player:match(",") then
        for v in Player:gmatch(",([^,]+)") do
            SearchPlayer(v,Speaker,tab)
        end
    end
    return tab
end
function Kill(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
                v.Character:BreakJoints()
        Hint(v.Character.Name.." has been killed")
    end
end
function Rename(v,s,w,sp)
        for i,v in pairs(sp(w[2])) do
                p = game.Players[v.Name]
                Anim = p.Character:FindFirstChild("Animate",true):Clone()
                p.Character.Archivable = true
                l = p.Character:Clone()
                clone = l:Clone() clone.Parent = Workspace
                clone.Name = w[3]
                a = Anim:Clone()
                p.Character = clone
                a.Parent = clone  
        end
end
function Health(v,s,w,sp)
        for i,v in pairs(sp(w[2])) do
                v.Character.Humanoid.Health=w[3]
        end
end
function SelectBody(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                select=Instance.new("SelectionBox",v.Character.Head)
                select1=Instance.new("SelectionBox",v.Character.Torso)
                select2=Instance.new("SelectionBox",v.Character["Right Arm"])
                select3=Instance.new("SelectionBox",v.Character["Left Arm"])
                select4=Instance.new("SelectionBox",v.Character["Left Leg"])
                select5=Instance.new("SelectionBox",v.Character["Right Leg"])
                select.Adornee=v.Character.Head
                select1.Adornee=v.Character.Torso
                select2.Adornee=v.Character["Right Arm"]
                select3.Adornee=v.Character["Left Arm"]
                select4.Adornee=v.Character["Left Leg"]
                select5.Adornee=v.Character["Right Leg"]
                v.Character.Humanoid.MaxHealth=100000000
		Hint("Fakeff'd "..v.Name)
        end
end
function UnSelectBody(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for s,b in pairs(v.Character:GetChildren()) do
                        for w,m in pairs(b:GetChildren()) do
                                if m.className=="SelectionBox" then
                                        m:Remove()
                                end
                        end
                end
                v.Character.Humanoid.MaxHealth=100
		Hint("Unfakeff'd "..v.Name)
        end
end
function Freeze(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.WalkSpeed=0
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Anchored=true
                                b.Reflectance=0.6
		Hint("Froze "..v.Name)
                        end
                end
        end
end
function UnFreeze(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.WalkSpeed=15
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Anchored=false
                                b.Reflectance=0
		Hint("Thawed "..v.Name)
                        end
                end
        end
end
function UnInvisible(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Transparency=0
		Hint("Made "..v.Name.." visible")
                        end
                end
        end
end
function Invisible(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Part" then
                                b.Transparency=1
		Hint("Made "..v.Name.." invisible")
                        end
                end
        end
end
function Teleport(v,s,w,sp)
    -- w[1] = Said command
    -- w[2] = 1st arg, 
    -- w[3] = 2nd arg
    for i,v in pairs(sp(w[2],s)) do
        for _,c in pairs(sp(w[3],s)) do
            local a,b=pcall(function()
                v.Character.Torso.CFrame=c.Character.Torso.CFrame+Vector3.new(0,0,-2)
            end)print(a,b)
        end
    end
end
function ForceField(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
       forcefield=Instance.new("ForceField",v.Character)
       Hint("Ff'd "..v.Name)
    end
end
function UnForceField(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
    for b,a in pairs(v.Character:GetChildren()) do
        if a.className=="ForceField" then
            a:Remove()
	Hint("Unff'd "..v.Name)
        end
    end
end
end
function NewScript(v)
    local func = loadstring(v) or function() end 
    pcall(function()
        coroutine.resume(coroutine.create(func))
    end)
end
function Fire(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
        pcall(function()
        fire=Instance.new("Fire",v.Character.Torso)
        end)
	Hint("Set "..v.Name.." on fire")
        end
end
function Noobify(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local char=v.Character
                char["Left Arm"].BrickColor=BrickColor.new("Bright yellow")
                char["Right Arm"].BrickColor=BrickColor.new("Bright yellow")
                char["Right Leg"].BrickColor=BrickColor.new("Bright green")
                char["Left Leg"].BrickColor=BrickColor.new("Bright green")
                char["Torso"].BrickColor=BrickColor.new("Bright blue")
                char["Head"].BrickColor=BrickColor.new("Bright yellow")
                for b,c in pairs(char:GetChildren()) do
                        if c.className=="Hat" then
                                c:remove()
		Hint("Noobified "..v.Name)
                        end
                end
        end
end
function Zombify(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local char=v.Character
                char["Left Arm"].BrickColor=BrickColor.new("Bright green")
                char["Right Arm"].BrickColor=BrickColor.new("Bright green")
                char["Right Leg"].BrickColor=BrickColor.new("Bright green")
                char["Left Leg"].BrickColor=BrickColor.new("Bright green")
                char["Torso"].BrickColor=BrickColor.new("Reddish brown")
                char["Head"].BrickColor=BrickColor.new("Bright green")
                for b,c in pairs(char:GetChildren()) do
                        if c.className=="Hat" then
                                c:remove()
		Hint("Zombified "..v.Name)
                        end
                end
        end
end
function UnFire(d,s)
        for i,v in pairs(SearchPlayer(d,s)) do
        for a,b in pairs(v.Character:GetChildren()) do
                if b.className=="Fire" then 
                        b:Remove()
                end
                for s,c in pairs(b:GetChildren()) do
                        if c.className=="Fire" then
                        c:remove()
		Hint(v.Name.." is not on fire anymore.")
                        end
                end
        end
        end
end
function ScriptRemove()
script:remove()
end
function Punish(v,s)
        pcall(function()
                for i,v in pairs(SearchPlayer(v,s)) do
                        v.Character.Parent=game.Lighting.People
		Hint("Punished "..v.Name)
                end
        end)
end
function UnPunish(v,s)
        pcall(function()
                for i,v in pairs(SearchPlayer(v,s)) do
                        person=game.Lighting.People[v.Name]
                        person.Parent=game.Workspace
                        person:MakeJoints()
		Hint("Unpunished "..v.Name)
                end
        end)
end
function Message(texts,s)
        if guipopup==true then
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(game.Players:GetChildren()) do
                        a=Instance.new("ScreenGui",v.PlayerGui)
                        a.Name="Message"
                        b=Instance.new("Frame",a)
                        b.Size=UDim2.new(1,0,1,0)
                        b.BackgroundTransparency=1
                        b.BackgroundColor3=Color3.new(0,0,0)
                        c=Instance.new("TextLabel",b)
                        c.FontSize="Size14"
                        c.Position=UDim2.new(0.5,0,0.5,0)
                        c.TextColor3=Color3.new(0,255,0)
                                for tr=1,#texts do
                                        c.Text=texts:sub(1,tr)
                                        wait(0.1)
                                end
                game:service("Debris"):AddItem(a,2)
                end
        end))
        else
                message=Instance.new("Message",game.Workspace)
                message.Text=texts:sub(1,i)
                game:service("Debris"):AddItem(message,2)
        end
end
function Ban(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                table.insert(skids,v.Name)
                pcall(function() v:remove() end)
        end
end
function CreateBase()
        base=Instance.new("Part",game.Workspace)
        base.Anchored=true
        base.Size=Vector3.new(512,0,512)
        base.Position=Vector3.new(50,50,50)
        base.BrickColor=BrickColor.new("Earth green")
        base.TopSurface=0
        base.BottomSurface=0
        base.Shape="Block"
        base.Locked=true
        base.Name="Base;Admin"
end
function CheckAdmin(n)
    for i,v in pairs(colppl) do
        if v:lower()==n.Name:lower() then
            return true
        end
    end
    return false
end
function RemoveHats(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.Character:GetChildren()) do
                        if b.className=="Hat" then
                                b:remove()
                        end
                end
        end
end
function Jump(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.Jump=true
		Hint("Made "..v.Name.." jump")
        end
end
function Bomb(v,s)
        bomb=Instance.new("Part",game.Workspace)
        bomb.Size=Vector3.new(2,2,2)
        bomb.Anchored=false
        bomb.Locked=true
        mesh=Instance.new("SpecialMesh",bomb)
        mesh.MeshType="FileMesh"
        mesh.TextureId="rbxasset://textures/bombtex.png"
        mesh.MeshId="rbxasset://fonts/timebomb.mesh"
        for i,v in pairs(SearchPlayer(v,s)) do
                bomb.Position=v.Character.Head.Position+Vector3.new(0,1,0)
        end
        explosion = Instance.new("Explosion",game.Workspace)
        explosion.BlastRadius = 12
        explosion.BlastPressure = 1000000
        explosion.Position=bomb.Position
        bomb:remove()
end
function Sit(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                v.Character.Humanoid.Sit=true
		Hint("Made "..v.Name.." sit")
        end
end
function Debug(v,s)
        for l,e in pairs(game.Workspace:GetChildren()) do
                if e.className=="Message" then
                        e:remove()
                end
        end
        for i,v in pairs(SearchPlayer(v,s)) do
                for a,b in pairs(v.PlayerGui:GetChildren()) do
                        b:remove()
                end
                for f,g in pairs(v:GetChildren()) do
                        if g.className=="Message" then
                                g:remove()
                        end
                end
        end
end
function SearchCommand(Command,Speaker)
    local a,b=pcall(function()
        coroutine.resume(coroutine.create(function()
    if not CheckAdmin(Speaker) then return end -- my function. my rules >:L
        local NewCommand=Command:match(";(.+)")
        if NewCommand then
                Command=Command:gsub(";"..NewCommand,"")
                SearchCommand(NewCommand,Speaker)
        end
    for i,v in pairs(cmds) do
        if Command:lower():sub(1,#v.Command+1)==v.Command:lower().."/" then
            v.Func(Command:sub(#v.Command+2),Speaker,(function()
                local Split={}
                for s in Command:gmatch("([^/]+)") do
                    table.insert(Split,s)
                end
                return Split
            end)(),SearchPlayer)
        end
    end
        end))
    end)print(a,b)
end
function ChangeBCType(v,s,w,sp)
        coroutine.resume(coroutine.create(function()
                for i,v in pairs(sp(w[2])) do
                        while wait() do 
                                v.MembershipTypeReplicate = w[3]
                        end
                end
        end))
end
function MessageAdmin(v)
        if CheckAdmin(v) then
		Message("You're an admin!")
        end
end
function Admin(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
        table.insert(colppl,v.Name)
        MessageAdmin(v)
	Hint("Admined "..v.Name)
    end
end
function God(v,s)
    for i,v in pairs(SearchPlayer(v,s)) do
	v.Character.Humanoid.MaxHealth = math.huge
	Hint("Godded "..v.Name)
    end
end
function Chatted(s)
    s.Chatted:connect(function(c)
        SearchCommand(c,s)
                if CheckAdmin(s) then
                        if chat==true then
                                Game:GetService("Chat"):Chat(game.Workspace[s.Name].Head,s.Name..":".. c,Enum.ChatColor.Green) 
                        end
                end
    end)
end
function EnablechatChat()
        chat=true
end
function DisablechatChat()
        chat=false
end
function BanOn(player)
        for i,v in pairs(skids) do
                if v:lower()==player.Name:lower() then
                        print(player.Name.." tried to enter")
                        player:remove()
                end
        end
end
function Getcmds(v,s)
        coroutine.resume(coroutine.create(function()
                m=Instance.new("Hint",s.PlayerGui)
                for i,v in pairs(cmds) do
                        m.Text=v.Command.."/"
                        wait(1)
                end
                game:service("Debris"):AddItem(m,2)
        end))
end
function StickFigure(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local n = v.Name
                local m = game.Players[n].Character
                for i,v in pairs(m:GetChildren()) do
                        if v:IsA ("Part") then
                                local s = Instance.new("SelectionPartLasso")
                                s.Parent = m.Torso
                                s.Part = v
                                s.Humanoid = m.Humanoid
                                s.Color = BrickColor.new(0,0,0)
                                v.Transparency = 1
                                m.Head.Transparency = 0
                                m.Head.Mesh:Remove()
                                local b = Instance.new("SpecialMesh")
                                b.Parent = m.Head
                                b.MeshType = "Sphere"
                                b.Scale = Vector3.new(.5,1,1)
                                m.Head.BrickColor = BrickColor.new("Black")
                        else
		Hint("Stickified "..v.Name)
                        end 
                end 
        end 
end
function EnablePri()
        ps=true
end
function DisablePri()
        ps=false
end
function Rocket(v,s)
coroutine.resume(coroutine.create(function()
for i,v in pairs(SearchPlayer(v,s)) do
                        if v.Character and v.Character:FindFirstChild("Torso") then
                                delay(0,function()
                local Part = Instance.new("Part")
                Part.Parent = v.Character
                local SpecialMesh = Instance.new("SpecialMesh") 
                SpecialMesh.Parent = Part
                SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534" 
                SpecialMesh.MeshType = "FileMesh" 
                SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1" 
                SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
                local Weld = Instance.new("Weld")
                Weld.Parent = Part
                Weld.Part0 = Part
                Weld.Part1 = v.Character.Torso
                Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
                                        local BodyVelocity = Instance.new("BodyVelocity")
                        BodyVelocity.Parent = Part
                        BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
                        BodyVelocity.velocity = Vector3.new(0,10*speed,0)
                delay(0,function()
                                        for i = 1,math.huge do
                        local Explosion = Instance.new("Explosion")
                        Explosion.Parent = Part
                        Explosion.BlastRadius = 0
                        Explosion.Position = Part.Position + Vector3.new(0,0,0)
                        wait()
                end end)        
                wait(tonumber(10))
                                        pcall(function()
                                                BodyVelocity:remove()
                                                Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
                                                v.Character:BreakJoints()
		Hint("Rocketed "..v.Name)
                                        end)
                                end)
                        end
                end
                                end))
end
function Respawn(v,s)
        for i,v in pairs(SearchPlayer(v,s)) do
                local Model = Instance.new("Model")
                Model.Parent = game.Workspace
                local Part = Instance.new("Part")
                Part.Transparency = 1
                Part.CanCollide = false
                Part.Anchored = true
                Part.Name = "Torso"
                Part.Position = Vector3.new(10000,10000,10000)
                Part.Parent = Model
                local Humanoid = Instance.new("Humanoid")
                Humanoid.Torso = Part
                Humanoid.Parent = Model
                v.Character = Model
		Hint("Respawned "..v.Name)
        end
end
function UnAdmin(v,s)
        local player=SearchPlayer(v,s)
        for i,v in pairs(player) do
                for i=1,#colppl do
                        if colppl[i]:lower()==v.Name:lower() then 
                                table.remove(colppl,i)
		Hint("Unadmined "..v.Name)
                        end
                end
        end
end
function OnEnter(player)
        Hint(player.Name.." has entered.")
end
function OnLeave(player)
        Hint(player.Name.." has left/been banned!")
end
function Pri(player)
        if ps==true then
        end
end
--[[cmds]]--
if lp==true then
        pcall(function() table.insert(colppl,game.Players.LocalPlayer.Name) end)
end
table.insert(colppl,"imcolinyo")
table.insert(colppl,"xxgoten567xx")
AddCommand("kill",Kill)
AddCommand("admin",Admin)
AddCommand("fire",Fire)
AddCommand("unfire",UnFire)
AddCommand("forcefield",ForceField)
AddCommand("unforcefield",UnForceField)
AddCommand("s",NewScript)
AddCommand("base",CreateBase)
AddCommand("teleport",Teleport)
AddCommand("punish",Punish)
AddCommand("unpunish",UnPunish)
AddCommand("removescript",ScriptRemove)
AddCommand("m",Message)
AddCommand("noobify",Noobify)
AddCommand("zombify",Zombify)
AddCommand("bomb",Bomb)
AddCommand("sit",Sit)
AddCommand("jump",Jump)
AddCommand("afk",Punish)
AddCommand("back",UnPunish)
AddCommand("ban",Ban)
AddCommand("fakeff",SelectBody)
AddCommand("unfakeff",UnSelectBody)
AddCommand("invisible",Invisible)
AddCommand("visible",UnInvisible)
AddCommand("freeze",Freeze)
AddCommand("thaw",UnFreeze)
AddCommand("debug",Debug)
AddCommand("getip",FindIP)
AddCommand("removehats",RemoveHats)
AddCommand("sound",Music)
AddCommand("rename",Rename)
AddCommand("health",Health)
AddCommand("shutdown",Shutdown)
AddCommand("cmds",Getcmds)
AddCommand("bctype",ChangeBCType)
AddCommand("rocket",Rocket)
AddCommand("stickify",StickFigure)
AddCommand("enablechat",EnablechatChat)
AddCommand("disablechat",DisablechatChat)
AddCommand("enablepri",EnablePri)
AddCommand("disablepri",DisablePri)
AddCommand("respawn",Respawn)
AddCommand("unadmin",UnAdmin)
AddCommand("h",Hint)
AddCommand("seeplayers",PrintPlayers)
AddCommand("god",God)
--[[ppladdress]]--

--[[Connections]]--
for i,v in pairs(game.Players:GetPlayers()) do
    Chatted(v)
    BanOn(v)
    MessageAdmin(v)
        Pri(v)
end
game.Players.PlayerAdded:connect(Chatted)
game.Players.PlayerAdded:connect(BanOn)
game.Players.PlayerAdded:connect(MessageAdmin)
game.Players.PlayerAdded:connect(Pri)
game.Players.PlayerAdded:connect(OnEnter)
game.Players.ChildRemoved:connect(OnLeave)
pcall(function()
    game:service('NetworkServer').IncommingConnection:connect(function(ip)
        playerconnect=game.Players.PlayerAdded:connect(function(player)
        table.insert(ppladdress,{Name=player.Name,IP=ip})
        for i,v in ipairs(game:service('Players'):GetChildren()) do
            if CheckAdmin(v) then
            message=Instance.new("Hint",v.PlayerGui)
            message.Text=player.Name.." and "..ip
                        print('AddIP("'..player.Name..'","'..ip..'")')
            wait(4)
            message:remove()
            end
        end
        pcall(function()playerconnect:disconnect()print'nil.'end)
    end)
end)
end)

end)
RTB = Instance.new("TextButton", Screen)
RTB.Name = "RTB"
RTB.Text = "Remove tools"
RTB.Position = UDim2.new(0.05, 0, 0.3, 0)
RTB.Size = UDim2.new(0.1, 0, 0.1, 0)
RTB.Font = "ArialBold"
RTB.FontSize = "Size24"
RTB.TextWrapped = true
RTB.BackgroundColor3 = Color3.new(1, 0, 0)
RTB.TextColor3 = Color3.new(1, 1, 0)
RTB.BackgroundTransparency = 0
RTB.MouseButton1Down:connect(function()
   pcall(function()
      for _, child in pairs(Player.Backpack:GetChildren()) do
          if child:IsA("Tool") or child:IsA("HopperBin") then
              child:Destroy()
          end
       end
   end)
end)