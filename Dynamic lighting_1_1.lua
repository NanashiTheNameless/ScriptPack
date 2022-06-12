me = game.Players.xSoulStealerx
name = "LolLight"
pcall(function() workspace[name]:remove() end)
local m = Instance.new("Model",workspace)
m.Name = name
cs = {"Institutional white", "White", "Light blue", "Tr. Blue", "Medium blue", "Bright blue", "Navy blue", "Really black"}
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
parts = {}
ball = nil
x = 0
z = 0
max = 80
cent = max/2
repeat
	local p = Instance.new("Part")
	prop(p,m,true,0,0,8,1,8,cs[#cs],true,"Custom")
	p.CFrame = CFrame.new(x,1.5,z)
	Instance.new("BlockMesh",p)
	table.insert(parts,p)
	x = x + p.Size.X
	if x > max then
		x = 0
		z = z + p.Size.Z
	end
until z > max
for i=1,360,10 do
	for g = 3.5, (8 * 3) + 3.5, 8 do
		local p = Instance.new("Part")
		prop(p,m,true,0,0,8,8,2,cs[#cs],true,"Custom")
		p.CFrame = CFrame.new(cent,1.5,cent) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(o,g,-cent)
		Instance.new("BlockMesh",p)
		table.insert(parts,p)
	end
end
local b = Instance.new("Part")
prop(b,m,true,0,0.2,3,3,3,"Institutional white",false,"Custom")
b.Shape = "Ball"
b.Position = Vector3.new(max/2,40,max/2)
wait(2)
coroutine.resume(coroutine.create(function()
while true do
	wait()
	for _,v in pairs(parts) do
		pcall(function()
		local dist = math.floor((v.Position - b.Position).magnitude/3)
		if dist > #cs then
			dist = #cs
		end
		local c = BrickColor.new(cs[dist])
		v.BrickColor = c
		end)
	end
end
end))
if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Bounce"
	script.Parent = h
end
bin = script.Parent
for _,v in pairs(me.Backpack:children()) do
	if v ~= bin then
		v:remove()
	end
end
bin.Selected:connect(function(m)
	m.Button1Down:connect(function()
		b:BreakJoints()
		local cf = CFrame.new(b.Position, m.Hit.p)
		b.Velocity = cf.lookVector * 30 + Vector3.new(0,30,0)
	end)
end)

