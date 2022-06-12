Meh = "yfc"
me = game:service("Players")[Meh]
char = me.Character

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Construct"
script.Parent = h
end

bin = script.Parent

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

function removerob()
	local lol = char:GetChildren()
	for _,v in pairs(lol) do
		if v.Name == "Constructor" then
			v:remove()
		end
	end
end


function makerob(maus)
	local mod = Instance.new("Model",char)
	mod.Name = "Constructor"
	local main = Instance.new("Part")
	prop(main,mod,true,0,0,2.4,1.3,4,"Navy blue",false,"Custom")
	main.Name = "MainPart"
	main.Position = char.Head.Position
	for i=-1, 1, 2 do
		local fir = Instance.new("Part")
		prop(fir,mod,true,0,0,1,1.8,1,"Black",false,"Custom")
		local wel = Instance.new("Weld")
		weld(wel,main,main,fir,(0.4+math.pi),0,i/2.5,i,1,-1.7)
		local fira = Instance.new("Fire",fir)
		fira.Color = Color3.new(0.1,1,0.1)
		fira.SecondaryColor = fira.Color
		fira.Size = 1
		fira.Heat = 25
	end
	for i=-1, 1, 2 do
		local fir = Instance.new("Part")
		prop(fir,mod,true,0,0,1,1.8,1,"Black",false,"Custom")
		local wel = Instance.new("Weld")
		weld(wel,main,main,fir,(-0.4+math.pi),0,i/2.5,i,1,1.7)
		local fira = Instance.new("Fire",fir)
		fira.Color = Color3.new(0.1,1,0.1)
		fira.SecondaryColor = fira.Color
		fira.Size = 1
		fira.Heat = 25
	end
	for i = -0.6, 0.65, 1.2 do
		local pip = Instance.new("Part")
		prop(pip,mod,true,0,0,0.6,2,0.6,"Black",false,"Custom")
		local mes = Instance.new("SpecialMesh")
		mesh(mes,pip,1,1,1,"Head")
		local we = Instance.new("Weld")
		weld(we,main,main,pip,math.pi/2,-i/3,0,i,-0.3,2.2)
	end
	local bal = Instance.new("Part")
	prop(bal,mod,true,0,0,2.2,1,3.6,"Black",false,"Custom")
	local mf = Instance.new("SpecialMesh")
	mesh(mf,bal,1,1,1,"Sphere")
	local weg = Instance.new("Weld")
	weld(weg,main,main,bal,0,0,0,0,-0.6,0)
	local pos = Instance.new("BodyPosition",main)
	pos.position = maus.Hit.p + Vector3.new(0,25,0)
	pos.maxForce = Vector3.new(7500,7500,7500)
	pos.Name = "BP"
	local bg = Instance.new("BodyGyro",main)
	bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bg.cframe = CFrame.new(main.Position, maus.Hit.p)
	bg.Name = "BG"
	while true do
		wait()
		if maus then
			if maus.Target then
				bg.cframe = CFrame.new(main.Position, maus.Hit.p)
				local heh = math.random(1,35)
				if heh == 1 then
					pos.position = maus.Hit.p + Vector3.new(math.random(-24,24),math.random(10,25),math.random(-24,24))
				end
			end
		end
	end
end

sizes = {"Small", "Medium", "Large"}

function makegui()
	local sc = Instance.new("ScreenGui",me.PlayerGui)
	sc.Name = "Construct"
	local pog = 0.24
	for i=2,6,2 do
		local txt = Instance.new("TextButton",sc)
		txt.Text = sizes[i/2]
		txt.Size = UDim2.new(0.1,0,0.02,0)
		txt.Position = UDim2.new(0,0,pog,0)
		txt.BackgroundColor3 = Color3.new(0,0.7,0)
		txt.BackgroundTransparency = 0.3
		txt.MouseButton1Down:connect(function()
			size = i
		end)
		pog = pog + 0.02
	end
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Construct" then
			v:remove()
		end
	end
end

function checkrob()
	local ok = nil
	local temp = char:findFirstChild("Constructor")
	if temp then
		ok = temp
	end
	return ok
end

function checkmain()
	local kay = checkrob()
	local ok = nil
	if kay then
		local temp = kay:findFirstChild("MainPart")
		if temp then
			ok = temp
		end
	end
	return ok
end

size = 2
mode = "wall"
hold = false
gui = false

function wall(maz, rob)
	local posx = -size*4
	local posz = posx
	local posxd = maz.Hit.p
	repeat
		wait()
		local p = Instance.new("Part")
		prop(p,workspace,true,0,0,size*2,size*1,size*2,"Earth green",true,"Custom")
		p.CFrame = CFrame.new(posxd) * CFrame.new(posx,0,posz) * CFrame.Angles(math.random(-60,60)/100,math.random(-320,320)/100,math.random(-60,60)/100)
		posx = posx + size*1.6
		if posx > size*4 then
			posx = -size*4
			posz = posz + size*1.6
		end
	until posz > size*4
end

bin.Selected:connect(function(mouse)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "e" then
			removerob()
			wait(0.1)
			makerob(mouse)
		elseif key == "q" then
			if gui == false then
				makegui()
				gui = true
			else
				remgui()
				gui = false
			end
		end
	end)
	mouse.Button1Down:connect(function()
		local bot = checkrob()
		if bot then
			if mode == "wall" then
				hold = true
				wall(mouse, bot)
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
end)

bin.Deselected:connect(function()
	removerob()
	remgui()
end)
