who = "luxulux" 
players = game:GetService('Players') 
plyr = players[who] 
char = plyr.Character 
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
pg = plyr.PlayerGui 
local spells = {'Ashumta', 'Macrata', 'Ancros', 'Fralla', 'Dumconto', 'Uchno', 'Briese', 'Terlan', 'Pracos', 'Fergo', 'Nufahn', 'Thidal', 'Bumhoos', 'Cratonoes', 'Yargoes', 'Leghtius', 'hovamgo'} 
local spell = "Ashumta" 
local spellnum = 1 

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
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end 
end
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Wand"]:remove() end) 

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "Wand"

local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()

local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()

local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)

local shaft = Instance.new("Part") 
prop(shaft, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft.Material = "Wood" 
local shaftm = Instance.new("SpecialMesh") 
mesh(shaftm, shaft, 1, 1, 1, "Head")
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1, -0.5, shaft, shaft, Rarm, 1.55, 0, 0) 

pcall(function() pg.Spells:remove() end) 
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "Spells" 

local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 200) 
back.Size = UDim2.new(0, 200, 0, 200) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Reddish brown") 
back.BackgroundTransparency = 0.15
local id = Instance.new("TextLabel", back) 
id.Position = UDim2.new(0, 0, 0, 0) 
id.Size = UDim2.new(0, 200, 0, 20) 
id.BorderSizePixel = 0 
id.BackgroundColor = BrickColor.new("Really black") 
id.BackgroundTransparency = 0.5 
id.TextColor = BrickColor.new("White") 
id.Text = "Current Spell: " ..spell.. "" 
id.TextWrap = true 
local bac = Instance.new("TextButton", back) 
bac.Position = UDim2.new(0, 0, 0, 20) 
bac.Size = UDim2.new(0, 100, 0, 20) 
bac.BorderSizePixel = 0 
bac.BackgroundColor = BrickColor.new("Really black") 
bac.BackgroundTransparency = 0.5 
bac.TextColor = BrickColor.new("White") 
bac.Text = "Back" 
local next = Instance.new("TextButton", back) 
next.Position = UDim2.new(0, 100, 0, 20) 
next.Size = UDim2.new(0, 100, 0, 20) 
next.BorderSizePixel = 0 
next.BackgroundColor = BrickColor.new("Really black") 
next.BackgroundTransparency = 0.5 
next.TextColor = BrickColor.new("White") 
next.Text = "Next" 
next.MouseButton1Click:connect(function()
if spellnum == 17 then 
spellnum = 1 
else 
spellnum = spellnum + 1 
end 
end) 
bac.MouseButton1Click:connect(function()
if spellnum == 1 then 
spellnum = 17 
else 
spellnum = spellnum - 1 
end 
end) 

coroutine.resume(coroutine.create(function() 
while wait() do 
if spellnum == 1 then 
spell = "" ..spells[1].. "" 
end 
if spellnum == 2 then 
spell = "" ..spells[2].. "" 
end 
if spellnum == 3 then 
spell = "" ..spells[3].. "" 
end 
if spellnum == 4 then 
spell = "" ..spells[4].. "" 
end 
if spellnum == 5 then 
spell = "" ..spells[5].. "" 
end 
if spellnum == 6 then 
spell = "" ..spells[6].. "" 
end 
if spellnum == 7 then 
spell = "" ..spells[7].. "" 
end 
if spellnum == 8 then 
spell = "" ..spells[8].. "" 
end 
if spellnum == 9 then 
spell = "" ..spells[9].. "" 
end 
if spellnum == 10 then 
spell = "" ..spells[10].. "" 
end 
if spellnum == 11 then 
spell = "" ..spells[11].. "" 
end 
if spellnum == 12 then 
spell = "" ..spells[12].. "" 
end 
if spellnum == 13 then 
spell = "" ..spells[13].. "" 
end 
if spellnum == 14 then 
spell = "" ..spells[14].. "" 
end 
if spellnum == 15 then 
spell = "" ..spells[15].. "" 
end 
if spellnum == 16 then 
spell = "" ..spells[16].. "" 
end 
if spellnum == 17 then 
spell = "" ..spells[17].. "" 
end 
id.Text = "Current Spell: " ..spell.. "" 
end 
end)) 

if script.Parent.className ~= "HopperBin" then
pcall(function() plyr.Backpack.Wand:remove() end) 
    local h = Instance.new("HopperBin", plyr.Backpack)
    h.Name = "Wand"
    script.Parent = h
end


local bin = script.Parent

function spark(pos, part)
	Hit = part.CFrame
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = pos 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = workspace
	P.BrickColor = BrickColor.Black()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = part.CFrame
	for c1 = 1, 1 do
		oldHit = part.CFrame 
		for count = 1, 9 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = pos.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = P 
			s.BrickColor = BrickColor.new("New Yeller")
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.Blue()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = P 
		s.BrickColor = BrickColor.new("New Yeller")
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.5)
	end
	P:remove()
end

function onSelected(mouse)
RAW.Part1 = Rarm 
for i = 0, 1, 0.2 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
    mouse.Button1Down:connect(function()
if spellnum == 1 then 
local pos1 = shaft.CFrame + Vector3.new(0, 1, 0) 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part", workspace) 
shot.Name = "SpellShot" 
shot.CanCollide = false 
shot.Anchored = true 
shot.Size = Vector3.new(1,1,(pos1.p - pos2).magnitude) 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.CFrame = CFrame.new((pos1.p + pos2)/2,pos1.p) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.2, 0.2, 1) 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
shot:remove() 
end)) 
for _,v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - pos2).magnitude < 2 and v.Name ~= who then 
v.Character.Humanoid:TakeDamage(10) 
end 
end 
end 
if spellnum == 2 then 
local pos1 = shaft.CFrame + Vector3.new(0, 1, 0) 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part", workspace) 
shot.Name = "SpellShot" 
shot.CanCollide = false 
shot.Anchored = true 
shot.Size = Vector3.new(1,1,(pos1.p - pos2).magnitude) 
shot.BrickColor = BrickColor.new("Really blue") 
shot.CFrame = CFrame.new((pos1.p + pos2)/2,pos1.p) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.2, 0.2, 1) 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
shot:remove() 
end)) 
for _,v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - pos2).magnitude < 2 and v.Name ~= who then 
v.Character.Humanoid.PlatformStand = true 
end 
end 
end 
if spellnum == 3 then 
local pos1 = shaft.CFrame + Vector3.new(0, 1, 0) 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part", workspace) 
shot.Name = "SpellShot" 
shot.CanCollide = false 
shot.Anchored = true 
shot.Size = Vector3.new(1,1,(pos1.p - pos2).magnitude) 
shot.BrickColor = BrickColor.new("Really red") 
shot.CFrame = CFrame.new((pos1.p + pos2)/2,pos1.p) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.2, 0.2, 1) 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
shot:remove() 
end)) 
for _,v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - pos2).magnitude < 2 and v.Name ~= who then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(1.55*2, 0, 0) 
end 
end 
end 
if spellnum == 4 then 
local shot = Instance.new("Part", workspace) 
shot.Name = "SpellWave" 
shot.CanCollide = false 
shot.Anchored = true 
shot.Size = Vector3.new(1,1,1) 
shot.BrickColor = BrickColor.new("Really black") 
shot.CFrame = Torso.CFrame + Vector3.new(0, -1, 0) 
local shotm = Instance.new("SpecialMesh", shot) 
shotm.Scale = Vector3.new(1, 3, 1) 
shotm.MeshType = "FileMesh" 
shotm.MeshId = "http://www.roblox.com/asset/?id=20329976" 
local count = 0 
coroutine.resume(coroutine.create(function() 
while wait() do 
if count <= 50 then 
count = count + 1 
shotm.Scale = shotm.Scale + Vector3.new(0.5, 0, 0.5) 
for _,v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - shot.Position).magnitude < count/2 and v.Name ~= who then 
v.Character.Humanoid:TakeDamage(5) 
end 
end 
else 
break 
end 
end 
shot:remove() 
end)) 
end 
if spellnum == 5 then 
local posy = mouse.hit.p + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)) 
local shot = Instance.new("Part", workspace) 
shot.Name = "SpellWave" 
shot.CanCollide = false 
shot.Anchored = true 
shot.Size = Vector3.new(1,1,1) 
shot.BrickColor = BrickColor.new("Mid stone grey") 
shot.CFrame = Torso.CFrame + Vector3.new(0, 50, 0) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(5, 3, 5) 
coroutine.resume(coroutine.create(function() 
spark(CFrame.new(posy), shot)
end)) 
local posy = mouse.hit.p + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)) 
coroutine.resume(coroutine.create(function() 
spark(CFrame.new(posy), shot)
end)) 
local posy = mouse.hit.p + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)) 
coroutine.resume(coroutine.create(function() 
spark(CFrame.new(posy), shot)
end)) 
wait(1) 
shot:remove() 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
	end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.2 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
RAW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)