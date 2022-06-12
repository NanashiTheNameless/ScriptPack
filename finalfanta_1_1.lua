me = game.Players.xSoulStealerx

pcall(function()
	wait(0.1)
	me.Backpack["Final Fantasy"]:remove()
	wait(0.1)
end)

h = Instance.new("HopperBin",me.Backpack)
h.Name = "Final Fantasy"
script.Parent = h

bin = script.Parent

ruincs = {"Dark grey", "Medium blue", "Medium stone grey"}

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
part:BreakJoints()
end

function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

torso = me.Character.Torso

rb = Instance.new("Part")
prop(rb,me.Character,false,1,0,1,1,1,"White",false,"Symmetric")
rt = Instance.new("Weld")
weld(rt,torso,torso,rb,0,0,0,-1,-0.5,0)

lb = Instance.new("Part")
prop(lb,me.Character,false,1,0,1,1,1,"White",false,"Symmetric")
lt = Instance.new("Weld")
weld(lt,torso,torso,lb,0,0,0,1.05,-0.5,0)

bars = 0
barsnumber = 0
increase = true

rarm = me.Character["Right Arm"]
larm = me.Character["Left Arm"]

rw = Instance.new("Weld")
weld(rw,rb,rb,nil,0.6,0,-0.4,-0.2,0.5,-0.2)

lw = Instance.new("Weld")
weld(lw,lb,lb,nil,0.3,0,0.4,0.2,0.5,-0.12)

neck = me.Character.Torso.Neck
neckorg = neck.C0

function makegui(player)
	local sc = Instance.new("ScreenGui",me.PlayerGui)
	sc.Name = "Attacks"
	local mf = Instance.new("Frame",sc)
	mf.Size = UDim2.new(0.45,0,0.35,0)
	mf.Position = UDim2.new(0,0,0.65,0)
	mf.BackgroundTransparency = 0.6
	mf.BackgroundColor3 = Color3.new(0.3,0.2,0.6)
	local ba = Instance.new("Frame",mf)
	ba.Size = UDim2.new(0.8,0,0.07,0)
	ba.BackgroundColor3 = Color3.new(0,0,0.4)
	ba.Position = UDim2.new(0.1,0,0.1,0)
	for i=0,0.8,0.2 do
		local lol = Instance.new("Frame",ba)
		lol.Size = UDim2.new(0.2,0,1,0)
		lol.Position = UDim2.new(i,0,0,0)
		lol.BackgroundColor3 = Color3.new(0,0,0.6)
		lol.BorderColor3 = Color3.new(0,0,0)
	end
	barmeter = Instance.new("Frame",ba)
	barmeter.Size = UDim2.new(barsnumber/5,0,1,0)
	barmeter.BackgroundColor3 = Color3.new(0.6,0.6,1)
	barmeter.BackgroundTransparency = 0.6
	coroutine.resume(coroutine.create(function()
		while true do
			wait()
			if increase and bars < 5 then
				barsnumber = barsnumber + 0.05
				bars = math.floor(barsnumber)
				barmeter.Size = UDim2.new(barsnumber/5,0,1,0)
			end
		end
	end))
end

function removegui(player)
	for _,v in pairs(player.PlayerGui:GetChildren()) do
		if v.Name == "Attacks" then
			v:remove()
		end
	end
end


function eff(tab,part)
	local heh = math.random(1,#tab)
	local p = Instance.new("Part")
	prop(p,workspace,false,0.4,0,1,1,1,ruincs[heh],true,"Symmetric")
	p.CFrame = part.CFrame * CFrame.new(0,-1,0)
	local ms = math.random(60,150)/100
	local ms2 = math.random(60,150)/100
	local ms3 = math.random(60,150)/100
	local mef = Instance.new("SpecialMesh")
	mesh(mef,p,ms,ms2,ms3,"Sphere")
	coroutine.resume(coroutine.create(function()
		for kk=0.4,1,0.05 do
			wait()
			p.Transparency = kk
			mef.Scale = mef.Scale + Vector3.new(ms/10,ms2/10,ms3/10)
		end
		p:remove()
	end))
end

function ruin(r,l,n,bar,player)
	for i=1, bar do
		bars = bars - 1
		barsnumber = bars
		barmeter.Size = UDim2.new(barsnumber/5,0,1,0)
		for o=1, 10 do
			r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(0.14,-0.07,-0.1)
			l.C0 = l.C0 * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
			neck.C0 = neck.C0 * CFrame.fromEulerAnglesXYZ(0,0,0)
			eff(ruincs,rarm)
			wait()
		end
		wait(0.06)
		for i=1, 7 do
			r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(0.3,0,0)
			l.C0 = l.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.1)
			neck.C0 = neck.C0 * CFrame.fromEulerAnglesXYZ(0,0,0)
			eff(ruincs,rarm)
			wait()
		end
		wait(0.04)
		for i=1, 3 do
			r.C0 = r.C0 * CFrame.fromEulerAnglesXYZ(0,0.38,0.28)
			l.C0 = l.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,-0.1)
			neck.C0 = neck.C0 * CFrame.fromEulerAnglesXYZ(0,0,0)
			wait()
		end
		r.C0 = CFrame.new(0,0,0)
		l.C0 = CFrame.new(0,0,0)
		neck.C0 = neckorg
	end
end

deb = true

bin.Selected:connect(function(mouse)
	rw.Part1 = rarm
	lw.Part1 = larm
	makegui(me)
	mouse.Button1Down:connect(function()
		if deb then
			deb = false
			increase = false
			ruin(rw,lw,neck,bars)
			increase = true
			deb = true
		end
	end)
end)

bin.Deselected:connect(function()
	rw.Part1 = nil
	lw.Part1 = nil
	removegui(me)
end)

--lego