name = "xSoulStealerx"
me = game.Players[name]
char = me.Character

allowed = {"xSoulStealerx", "robert147jansen", "acb227", "neepstars2833", "JLS2710", "xXDarkEnergyXx", "ServerBoost100", "RobloxianFire2", "yandertje", "oxcool1", "pianoman112233"}

basec = BrickColor.new("Bright green")
wallc = BrickColor.new("Brown")
windc = BrickColor.new("Ligth blue")
mod = Instance.new("Model")
mod.Parent = workspace
mod.Name = "xSoulsHouse"

startpoint = CFrame.new(0,700,0)

base = Instance.new("Part")
base.Parent = mod
base.formFactor = 0
base.Size = Vector3.new(250,2,250)
base.CFrame = startpoint * CFrame.new(50,0,50)
base.BrickColor = basec
base.Anchored = true
basemesh = Instance.new("CylinderMesh")
basemesh.Parent = base

ig = base:clone()
ig.Parent = mod
ig.Size = Vector3.new(63,2,63)
ig.BrickColor = wallc
ig.CFrame = startpoint * CFrame.new(0,0.03,0)

for i=0, 4.74, 0.79 do
local d = Instance.new("Part")
d.Parent = mod
d.formFactor = 0
d.Size = Vector3.new(5,25,27)
d.CFrame = startpoint * CFrame.new(0,12.5,0)
d.CFrame = d.CFrame * CFrame.Angles(0,i,0) * CFrame.new(30,0,0)
d.BrickColor = wallc
d.Anchored = true
d.TopSurface = 0
d.BottomSurface = 0
end
for i=0, 5.53, 0.79 do
local f = Instance.new("Part")
f.Parent = mod
f.formFactor = 0
f.Size = Vector3.new(37,3,27)
f.CFrame = startpoint * CFrame.new(0,26,0)
f.CFrame = f.CFrame * CFrame.Angles(0,i,0) * CFrame.new(14,0,0)
f.BrickColor = wallc
f.Anchored = true
f.TopSurface = 0
f.BottomSurface = 0
end
for i=-12.5, 12.5, 25 do
local gh = Instance.new("Part")
gh.Parent = mod
gh.formFactor = 0
gh.Size = Vector3.new(15,15,3)
gh.CFrame = startpoint * CFrame.new(26,8,26)
gh.CFrame = gh.CFrame * CFrame.Angles(0,-0.79,0) * CFrame.new(0,0,i)
gh.BrickColor = wallc
gh.Anchored = true
gh.TopSurface = 0
gh.BottomSurface = 0
end
for i=-12.5, 12.5, 25 do
local gh = Instance.new("Part")
gh.Parent = mod
gh.formFactor = 0
gh.Size = Vector3.new(15,15,3)
gh.CFrame = startpoint * CFrame.new(45,8,45)
gh.CFrame = gh.CFrame * CFrame.Angles(0,-0.79,0) * CFrame.new(0,0,i)
gh.BrickColor = wallc
gh.Anchored = true
gh.TopSurface = 0
gh.BottomSurface = 0
end
for i=-12.5, 12.5, 25 do
local gh = Instance.new("Part")
gh.Parent = mod
gh.formFactor = 0
gh.Size = Vector3.new(14,3,3)
gh.CFrame = startpoint * CFrame.new(36,2,36)
gh.CFrame = gh.CFrame * CFrame.Angles(0,-0.79,0) * CFrame.new(0,0,i)
gh.BrickColor = wallc
gh.Anchored = true
gh.TopSurface = 0
gh.BottomSurface = 0
local g = Instance.new("Part")
g.Parent = mod
g.formFactor = 0
g.Size = Vector3.new(14,5,3)
g.CFrame = startpoint * CFrame.new(36,13,36)
g.CFrame = g.CFrame * CFrame.Angles(0,-0.79,0) * CFrame.new(0,0,i)
g.BrickColor = wallc
g.Anchored = true
g.TopSurface = 0
g.BottomSurface = 0
local h = Instance.new("Part")
h.Parent = mod
h.formFactor = 0
h.Size = Vector3.new(14,11,2)
h.CFrame = startpoint * CFrame.new(36,6.5,36)
h.CFrame = h.CFrame * CFrame.Angles(0,-0.79,0) * CFrame.new(0,0,i)
h.BrickColor = windc
h.Transparency = 0.5
h.Reflectance = 0.2
h.Anchored = true
h.TopSurface = 0
h.BottomSurface = 0
end
local j = Instance.new("Part")
j.Parent = mod
j.formFactor = 0
j.Size = Vector3.new(40,3,28)
j.CFrame = startpoint * CFrame.new(36,16.5,36)
j.CFrame = j.CFrame * CFrame.Angles(0,-0.79,0)
j.BrickColor = wallc
j.Anchored = true
j.TopSurface = 0
j.BottomSurface = 0
local ghh = Instance.new("Part")
ghh.Parent = mod
ghh.formFactor = 0
ghh.Size = Vector3.new(4,10,28)
ghh.CFrame = startpoint * CFrame.new(22,21,22)
ghh.CFrame = ghh.CFrame * CFrame.Angles(0,-0.79,0)
ghh.BrickColor = wallc
ghh.Anchored = true
ghh.TopSurface = 0
ghh.BottomSurface = 0
for i=-1.58, 3, 0.79 do
local d = Instance.new("Part")
d.Parent = mod
d.formFactor = 0
d.Size = Vector3.new(5,25,27)
d.CFrame = startpoint * CFrame.new(90,12.5,55)
d.CFrame = d.CFrame * CFrame.Angles(0,i,0) * CFrame.new(30,0,0)
d.BrickColor = wallc
d.Anchored = true
d.TopSurface = 0
d.BottomSurface = 0
end
local d = Instance.new("Part")
d.Parent = mod
d.formFactor = 0
d.Size = Vector3.new(5,25,47)
d.CFrame = startpoint * CFrame.new(59,12.5,71)
d.CFrame = d.CFrame * CFrame.Angles(0,4.1,0)
d.BrickColor = wallc
d.Anchored = true
d.TopSurface = 0
d.BottomSurface = 0
local bewm = ig:clone()
bewm.Parent = mod
bewm.Size = Vector3.new(63,2,63)
bewm.BrickColor = wallc
bewm.CFrame = startpoint * CFrame.new(90,0.03,55)
local bah = bewm:clone()
bah.Parent = mod
bah.Mesh:remove()
bah.Size = Vector3.new(65,2,23)
bah.CFrame = startpoint * CFrame.new(44,0.03,44) * CFrame.Angles(0,-0.79,0)
bah.TopSurface = 0
bah.BottomSurface = 0
for i=0, 5.53, 0.79 do
local f = Instance.new("Part")
f.Parent = mod
f.formFactor = 0
f.Size = Vector3.new(37,3,27)
f.CFrame = startpoint * CFrame.new(90,26,55)
f.CFrame = f.CFrame * CFrame.Angles(0,i,0) * CFrame.new(14,0,0)
f.BrickColor = wallc
f.Anchored = true
f.TopSurface = 0
f.BottomSurface = 0
end
local gff = Instance.new("Part")
gff.Parent = mod
gff.formFactor = 0
gff.Size = Vector3.new(26,11,2)
gff.CFrame = startpoint * CFrame.new(60,20.5,42)
gff.CFrame = gff.CFrame * CFrame.Angles(0,-1.58,0) * CFrame.new(14,0,0)
gff.BrickColor = wallc
gff.Anchored = true
gff.TopSurface = 0
gff.BottomSurface = 0

local gfjh = Instance.new("WedgePart")
gfjh.Parent = mod
gfjh.formFactor = 0
gfjh.Size = Vector3.new(4,28,27)
gfjh.CFrame = startpoint * CFrame.new(59.5,17,59.5)
gfjh.CFrame = gfjh.CFrame * CFrame.Angles(0,-2.4,1.57) * CFrame.new(0,0,0)
gfjh.BrickColor = wallc
gfjh.Anchored = true
gfjh.TopSurface = 0
gfjh.BottomSurface = 0


tempbrick = {}

for i=0.3, 7.3, 0.3 do
local oo = Instance.new("Part")
oo.Parent = mod
oo.formFactor = 0
oo.Size = Vector3.new(3,1,1)
oo.TopSurface = 0
oo.BottomSurface = 0
oo.Anchored = true
oo.BrickColor = BrickColor.new("Black")
oo.CFrame = workspace.Base.CFrame * CFrame.new(31,6,0)
oo.CFrame = oo.CFrame * CFrame.Angles(i,0,0) * CFrame.new(0,5,0)
local gj = Instance.new("Fire")
gj.Parent = oo
gj.Heat = 10
gj.Size = 4
gj.Enabled = false
coroutine.resume(coroutine.create(function()
	while true do
		wait(0.2)
		local p = math.random(1,6)
		if p == 1 then
			gj.Enabled = true
			wait(1)
			gj.Enabled = false
		end
	end
end))
end

ook = Instance.new("Part")
ook.Parent = mod
ook.formFactor = 0
ook.Size = Vector3.new(1,6,6)
ook.TopSurface = 0
ook.BottomSurface = 0
ook.Anchored = true
ook.BrickColor = windc
ook.Reflectance = 0.6
ook.Transparency = 0.7
ook.CanCollide = false
ook.CFrame = workspace.Base.CFrame * CFrame.new(30,6,0)
ook.CFrame = ook.CFrame * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
mj = Instance.new("SpecialMesh")
mj.Parent = ook
mj.MeshType = "Sphere"
mj.Scale = Vector3.new(1.4,1.4,1.4)

ok = Instance.new("Part")
ok.Parent = mod
ok.formFactor = 0
ok.Size = Vector3.new(11,2,11)
ok.Anchored = true
ok.BrickColor = wallc
ok.Transparency = 0
ok.CFrame = workspace.Base.CFrame * CFrame.new(31.5,6,0)
ok.CFrame = ok.CFrame * CFrame.Angles(0,0,1.57) * CFrame.new(0,0,0)
mdj = Instance.new("CylinderMesh")
mdj.Parent = ok
mdj.Scale = Vector3.new(0.95,0.95,0.95)

allo = Instance.new("Part")
allo.Parent = mod
allo.Anchored = true
allo.CFrame = workspace.Base.CFrame * CFrame.new(31.5,13,0)
allo.Transparency = 1
allo.CanCollide = false
bill = Instance.new("BillboardGui")
bill.Parent = allo
bill.Adornee = bill.Parent
bill.Size = UDim2.new(0,100,0,100)
txt1 = Instance.new("TextLabel")
txt1.Parent = bill
txt1.Position = UDim2.new(0,50,0,-50)
txt1.BackgroundTransparency = 1
txt1.FontSize = "Size24"
txt1.Text = "xSoulStealerxs private house"
txt2 = txt1:clone()
txt2.Parent = bill
txt2.Position = UDim2.new(0,50,0,-20)
txt2.FontSize = "Size14"

fa = txt2:clone()
fa.Position = UDim2.new(0,50,0,0)
fa.Text = ""

allstring = ""
allstring2 = ""
local numb = 0
for i=1, #allowed do
	numb = numb + 1
	if numb >= 7 then
		allstring2 = allstring2..allowed[numb]..", "
	end
end

for i=1, #allowed do
	if i >= 7 then
		fa.Parent = bill
	else
		allstring = allstring..allowed[i]..", "
	end
end
txt2.Text = "Allowed: "..allstring
fa.Text = allstring2

ook.Touched:connect(function(hit)
	local pls = game.Players:findFirstChild(hit.Parent.Name)
	if pls ~= nil then
		for _,v in pairs(allowed) do
			if pls.Name:lower() == v:lower() then
				pls.Character.Torso.CFrame = startpoint * CFrame.new(0,4,0)
			end
		end
	end
end)

for i=0.3, 7.3, 0.3 do
local oo = Instance.new("Part")
oo.Parent = mod
oo.formFactor = 0
oo.Size = Vector3.new(3,1,1)
oo.TopSurface = 0
oo.BottomSurface = 0
oo.Anchored = true
oo.BrickColor = BrickColor.new("Black")
oo.CFrame = startpoint * CFrame.new(26,7,0)
oo.CFrame = oo.CFrame * CFrame.Angles(i,0,0) * CFrame.new(0,5,0)
local gj = Instance.new("Fire")
gj.Parent = oo
gj.Heat = 10
gj.Size = 4
gj.Enabled = false
coroutine.resume(coroutine.create(function()
	while true do
		wait(0.2)
		local p = math.random(1,6)
		if p == 1 then
			gj.Enabled = true
			wait(1)
			gj.Enabled = false
		end
	end
end))
end

hi = Instance.new("Part")
hi.Parent = mod
hi.formFactor = 0
hi.Size = Vector3.new(1,6,6)
hi.TopSurface = 0
hi.BottomSurface = 0
hi.Anchored = true
hi.BrickColor = windc
hi.Reflectance = 0.6
hi.Transparency = 0.7
hi.CanCollide = false
hi.CFrame = startpoint * CFrame.new(25,7,0)
hi.CFrame = hi.CFrame * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
mk = Instance.new("SpecialMesh")
mk.Parent = hi
mk.MeshType = "Sphere"
mk.Scale = Vector3.new(1.4,1.4,1.4)

ok = Instance.new("Part")
ok.Parent = mod
ok.formFactor = 0
ok.Size = Vector3.new(11,2,11)
ok.Anchored = true
ok.BrickColor = wallc
ok.Transparency = 0
ok.CFrame = startpoint * CFrame.new(26.5,7,0)
ok.CFrame = ok.CFrame * CFrame.Angles(0,0,1.57) * CFrame.new(0,0,0)
mdj = Instance.new("CylinderMesh")
mdj.Parent = ok
mdj.Scale = Vector3.new(0.95,0.95,0.95)

hi.Touched:connect(function(hit)
	local pls = game.Players:findFirstChild(hit.Parent.Name)
	if pls ~= nil then
		pls.Character.Torso.CFrame = workspace.Base.CFrame * CFrame.new(0,4,0)
	end
end)

me.Chatted:connect(function(msg)
	if msg == "del" then
		mod:remove()
	end
end)
