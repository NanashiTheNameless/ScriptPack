me = game.Players.yfc.Character.Torso
name = "yfc's Machine"
mainpos = Vector3.new(me.Position.X + 10,0.3,me.Position.Z)
maxdist = 7
imgs = {"http://www.roblox.com/asset/?id=43267871","http://www.roblox.com/asset/?id=43267737",
"http://www.roblox.com/asset/?id=43267826","http://www.roblox.com/asset/?id=43267704",
"http://www.roblox.com/asset/?id=43267858"}

a = imgs[1]
b = imgs[2]
c = imgs[3]
d = imgs[4]
e = imgs[5]

give = true
function givestats(player)
	local stat = Instance.new("IntValue")
	stat.Name = "leaderstats"
	local tix = Instance.new("IntValue")
	tix.Name = "Tix"
	tix.Value = 25
	tix.Parent = stat
	stat.Parent = player
end
for _,v in pairs(game.Players:GetPlayers()) do
	if v:findFirstChild("leaderstats") == nil then
		givestats(v)
	end
end
game.Players.PlayerAdded:connect(function(plyr) if give then givestats(plyr) end end)

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

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

dings = {}

function getplyr(pos)
	local dist = maxdist
	local plyr = nil
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Character ~= nil then
			local to = v.Character:findFirstChild("Torso")
			if to ~= nil then
				if (to.Position - pos).magnitude < dist then
					dist = (to.Position - pos).magnitude
					plyr = v
				end
			end
		end
	end
	return plyr
end

function reward(first,second,third,mod,pos,play)
	local k = 0
	if first.Texture == a and second.Texture == a and third.Texture == a then
		k = 3
	elseif first.Texture == b and second.Texture == b and third.Texture == b then
		k = 5
	elseif first.Texture == c and second.Texture == c and third.Texture == c then
		k = 8
	elseif first.Texture == d and second.Texture == d and third.Texture == d then
		k = 25
	elseif first.Texture == e and second.Texture == e and third.Texture == e then
		k = 75
	elseif first.Texture == d and second.Texture == d or third.Texture == d and second.Texture == d or third.Texture == d and first.Texture == d then
		k = 14
	elseif first.Texture == e and second.Texture == e or third.Texture == e and second.Texture == e or third.Texture == e and first.Texture == e then
		k = 35
	end
	for i=1,k do
		wait()
		local t = Instance.new("Part")
		prop(t, mod, true, 0, 0, 0.6, 0.1, 0.3, "Bright yellow", false, "Custom")
		t.CFrame = CFrame.new(pos + Vector3.new(math.random(-100,100)/100,0,math.random(-50,50)/100)) * CFrame.Angles(0,math.random(-32,32)/10,0)
		local dec = Instance.new("Decal",t)
		dec.Face = "Top"
		dec.Texture = "http://www.roblox.com/asset/?id=42602113"
		local de2 = dec:clone()
		de2.Parent = t
		de2.Face = "Bottom"
		local de = true
		coroutine.resume(coroutine.create(function()
			wait(23)
			t:remove()
		end))
		t.Touched:connect(function(hit)
			if de then
				if hit.Parent.Name == play.Name then
					local sta = play:findFirstChild("leaderstats")
					if sta ~= nil then
						local tx = sta:findFirstChild("Tix")
						if tx ~= nil then
							de = false
							tx.Value = tx.Value + 1
							t:remove()
						end
					end
				end
			end
		end)
	end
end

local lol = workspace:findFirstChild(name)
if lol ~= nil then
	lol:remove()
end

machine = Instance.new("Model",workspace.Base)
machine.Name = name

mainpart = Instance.new("Part")
prop(mainpart,machine,true,0,0,5.7,9,5.1,"Bright red",true,"Custom")
mainpart.CFrame = CFrame.new(mainpos) * CFrame.new(0,mainpart.Size.Y/2,0)

dec1 = Instance.new("Part")
prop(dec1,machine,true,0,0,5,9.1,4.3,"Black",true,"Custom")
dec1.CFrame = mainpart.CFrame

dec2 = Instance.new("Part")
prop(dec2,machine,true,0,0,5,8.4,5.2,"Black",true,"Custom")
dec2.CFrame = mainpart.CFrame

dec3 = Instance.new("Part")
prop(dec3,machine,true,0,0,5.8,8.4,4.3,"Black",true,"Custom")
dec3.CFrame = mainpart.CFrame

vend1 = Instance.new("Part")
prop(vend1,machine,true,0,0,1.8,1.8,1.8,"Bright red",true,"Custom")
vend1.CFrame = mainpart.CFrame * CFrame.new(-3.2,0,1.2)
Instance.new("SpecialMesh",vend1).MeshType = "Sphere"

vend2 = Instance.new("Part")
prop(vend2,machine,true,0,0,0.7,3.5,0.7,"Black",true,"Custom")
vend2.CFrame = vend1.CFrame * CFrame.new(-0.3,2.3,0)
Instance.new("SpecialMesh",vend2)

vend3 = Instance.new("Part")
prop(vend3,machine,true,0,0,1.3,1.3,1.3,"Bright red",true,"Custom")
vend3.CFrame = vend2.CFrame * CFrame.new(0,1.8,0)
Instance.new("SpecialMesh",vend3).MeshType = "Sphere"

click = Instance.new("ClickDetector",vend1)
click.MaxActivationDistance = maxdist
click.Name = "ClickHere"
abletoclick = true

for i=-180,-70,15 do
	local part = Instance.new("Part")
	prop(part,machine,false,0,0,3,0.4,0.1,"Black",true,"Custom")
	part.CFrame = mainpart.CFrame * CFrame.new(1.1,-1,2.8) * CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,0,-1)
	table.insert(dings,part)
	for o=-1.5,1.5,3 do
		local part2 = Instance.new("Part")
		prop(part2,machine,false,0,0,0.1,0.4,1.2,"Bright red",true,"Custom")
		part2.CFrame = part.CFrame * CFrame.new(o,0,part2.Size.Z/2)
	end
end

things = {}
for i= -1.5, 1.5, 1.5 do
	local thing1 = Instance.new("Part")
	prop(thing1,machine,true,0,0,1.5,1,1.5,"White",true,"Custom")
	thing1.CFrame = mainpart.CFrame * CFrame.new(i,2,2.3) * CFrame.Angles(0,0,-math.pi/2)
	Instance.new("CylinderMesh",thing1)
	local dec = Instance.new("Decal",thing1)
	dec.Face = "Back"
	dec.Texture = imgs[1]
	table.insert(things,thing1)
end
on = things[1]
sec = things[2]
thi = things[3]

click.MouseClick:connect(function()
	if abletoclick == true then
		local player = getplyr(vend1.Position)
		if player ~= nil then
			local sta = player:findFirstChild("leaderstats")
			if sta ~= nil then
				local tc = sta:findFirstChild("Tix")
				if tc ~= nil then
					tc.Value = tc.Value - 4
				end
			end
			if abletoclick == true then
			abletoclick = false
			local bp = Instance.new("BodyPosition",player.Character.Torso)
			local to = bp.Parent
			local larm = to:findFirstChild("Left Shoulder")
			bp.P = 15000
			bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.position = mainpart.CFrame * CFrame.new(-2,-1,4).p
			local bg = Instance.new("BodyGyro",player.Character.Torso)
			bg.P = 15000
			bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.cframe = CFrame.new(to.Position, vend1.Position - Vector3.new(0,0.8,0))
			wait(0.4)
			bg.cframe = CFrame.new(to.Position, vend1.Position - Vector3.new(0,0.8,0))
			local orig = nil
			if larm ~= nil then
				orig = larm.C0
				for i=0, 3, 0.4 do
					larm.C0 = orig * CFrame.fromEulerAnglesXYZ(0,0,-i)
					wait()
				end
				wait(0.1)
			else
				wait(0.2)
			end
			for i=0, 1.3, 0.15 do
				wait()
				vend2.CFrame = vend1.CFrame * CFrame.Angles(i,0,0) * CFrame.new(-0.3,2.3,0)
				vend3.CFrame = vend2.CFrame * CFrame.new(0,1.8,0)
				if larm ~= nil then
					larm.C0 = larm.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.3)
				end
			end
			if larm ~= nil then
				larm.C0 = orig
			end
			wait(0.2)
			for i=1.3, 0, -0.3 do
				wait()
				vend2.CFrame = vend1.CFrame * CFrame.Angles(i,0,0) * CFrame.new(-0.3,2.3,0)
				vend3.CFrame = vend2.CFrame * CFrame.new(0,1.8,0)
			end
			bp.position = mainpart.CFrame * CFrame.new(0,-1,5.5).p
			bg.cframe = CFrame.new(to.Position, mainpart.Position)
			coroutine.resume(coroutine.create(function()
				wait(0.6)
				bg.cframe = CFrame.new(to.Position, mainpart.Position)
			end))
			for o=1,math.random(60,160) do
				local he = math.random(1,5)
				local he1 = math.random(1,5)
				local he2 = math.random(1,5)
				on.Decal.Texture = imgs[he]
				sec.Decal.Texture = imgs[he1]
				thi.Decal.Texture = imgs[he2]
				wait()
			end
			reward(on.Decal,sec.Decal,thi.Decal,machine,mainpart.CFrame * CFrame.new(1.1,-0.9,3).p,player)
			bp:remove()
			bg:remove()
			wait(1)
			abletoclick = true
			end
		end
	end
end)

game.Players.xSoulStealerx.Chatted:connect(function(msg)
	if msg == "leader" then
		give = false
		for _,v in pairs(game.Players:GetPlayers()) do
			if v:findFirstChild("leaderstats") ~= nil then
				v.leaderstats:remove()
			end
		end
	end
end)
