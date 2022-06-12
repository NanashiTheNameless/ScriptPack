for _,v in pairs(game.Players:GetPlayers()) do
	for _,k in pairs(v:children()) do
		if k.Name == "teamva" or k.Name == "Gaah" or k.Name == "Trawps" or k.Name == "Attwk" or k.Name == "mainbas" or k.Name == "Barras" or k.Name == "barrack" or k.Name == "bank" or k.Name == "prods" or k.Name == "evrytin" then
			k:remove()
		end
	end
end
wait(0.5)
terraincolors = {"Camo", "Earth green", "Earth green", "Earth green"}
bombcolors = {"Bright red", "Bright yellow", "Neon orange"}
basecf = CFrame.new(workspace.Base.Position)
mainpos = Vector3.new(-60,0.5,-150)
lolpos = CFrame.new(mainpos)
lolok = basecf * lolpos * CFrame.new(0,1,0)
name = "xSoul's board game"
teamcolors = {"Bright violet", "Bright blue", "Bright red", "Bright yellow"}
me = game.Players.xSoulStealerx
players = 4
if game.Players.NumPlayers < players then
	repeat
		players = players - 1
	until players < game.Players.NumPlayers+1
elseif players > 4 and game.Players.NumPlayers > 3 then
	players = 4
end
people = {me}
mplrs = (players - #people)
prodcost = 60
barcost = 200
soldcost = 40
bankcost = 750
factorycost = 2000
towerdist = 6
towerdmg = 8
towercost = 285
soldmg = 15
bombdist = 6
bombd = 80
bombcost = 1000
stealamount = 170
interest = 120
prodgive = 4
eachbarrack = 3
startermoney = 3000
function addcol(plyr,val)
	local bv = Instance.new("StringValue")
	bv.Value = val
	bv.Name = "teamva"
	bv.Parent = plyr
	local go = Instance.new("IntValue",plyr)
	go.Name = "Gaah"
	go.Value = startermoney
	local tr = Instance.new("IntValue",plyr)
	tr.Name = "Trawps"
	tr.Value = 0
	local trf = Instance.new("BoolValue",plyr)
	trf.Name = "Attwk"
	trf.Value = false
	local ob = Instance.new("ObjectValue",plyr)
	ob.Name = "mainbas"
	local ob = Instance.new("ObjectValue",plyr)
	ob.Name = "barrack"
	local tr = Instance.new("IntValue",plyr)
	tr.Name = "Barras"
	tr.Value = 0
	pr = Instance.new("IntValue",plyr)
	pr.Name = "prods"
	pr.Value = 0
	local t = Instance.new("IntValue",plyr)
	t.Name = "bank"
	t.Value = 0
	local t = Instance.new("BoolValue",plyr)
	t.Name = "evrytin"
	t.Value = false
	go.Changed:connect(function(prop)
		if go.Value < 0 then
			go.Value = 0
			if tr.Value > 0 then
				tr.Value = tr.Value - 1
			end
		end
	end)
end
numba = 1
for _,v in pairs(people) do
	addcol(v,teamcolors[numba])
	numba = numba + 1
end
function getplrs()
	if game:service("Players").NumPlayers > mplrs then
		local plrs = game:service("Players"):GetPlayers()
		local plr = plrs[math.random(1,#plrs)]
		local num = 0
		for _,k in pairs(people) do
			if plr.Name == k.Name then
				num = num + 1
			end
		end
		if num == 0 then
			numba = numba + 1
			addcol(plr,teamcolors[numba])
			table.insert(people,plr)
		else
			getplrs()
		end
	end
end
for i=1,mplrs do
getplrs()
end
function getlols(path,pos,ply)
	local obj = nil
	local hel = nil
	local dist = towerdist
	for _,v in pairs(path:children()) do
		if v:findFirstChild("Health") ~= nil and v.Name == "Tile" then
			if v.Owner.Value ~= ply.Name and v.Type.Value ~= "Tower" and v.Type.Value ~= "Main base" then
				if (v.Position - pos).magnitude < dist then
					obj = v
				end
			end
		elseif v:findFirstChild("Amount") ~= nil and v.Name == "Unit" then
			if v.Ownah.Value ~= ply.Name then
				if (v.Position - pos).magnitude < dist then
					obj = v
				end
			end
		end
	end
	return obj,dist
end

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

local lol = workspace:findFirstChild(name)
if lol ~= nil then
	lol:remove()
end

model = Instance.new("Model",workspace)
model.Name = name

function buildingprops(plyr,modu,pa,helth,ty)
	local owner = Instance.new("StringValue",modu)
	owner.Value = plyr.Name
	owner.Name = "Owner"
	local poo = owner:clone()
	poo.Parent = pa
	local hp = Instance.new("IntValue",pa)
	hp.Name = "Health"
	hp.Value = helth
	local mod = Instance.new("StringValue",pa)
	mod.Value = ty
	mod.Name = "Type"
end

function ruin(part)
	local mo = Instance.new("Model",part)
	mo.Name = "Barracks"
	local main = Instance.new("Part")
	prop(main,mo,true,0,0,1.6,0.4,0.6,"Reddish brown",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0,(part.Size.Y/2)+(main.Size.Y/2),-1.3) 
	for i = 1, math.random(4,12) do
		local pile = main:clone()
		pile.Parent = mo
		pile.CFrame = part.CFrame * CFrame.Angles(math.random(-30,30)/100,math.random(-32,32)/10,math.random(-30,30)/100) * CFrame.new(math.random(-10,10)/10,(part.Size.Y/2)+(main.Size.Y/2),math.random(-10,10)/10) 
	end
end

function showhp(show,part,playa)
	local hp = part.Health.Value
	local moneh = Instance.new("BillboardGui",part)
	moneh.Adornee = show
	moneh.Size = UDim2.new(0,20,0,20)
	local money = Instance.new("TextLabel",moneh)
	money.Size = moneh.Size
	money.Position = UDim2.new(0,0,0,-60)
	money.BackgroundTransparency = 1
	money.FontSize = "Size12"
	money.TextColor = BrickColor.new(playa.teamva.Value)
	money.Text = "HP: "..hp
	local chang = true
	function changa(prop)
		if chang then
			money.Text = "HP: "..part.Health.Value
			if part.Health.Value < 1 then
				chang = false
				part.Health.Value = 0
				Instance.new("Fire",part).Heat = 25
				if part.Type.Value == "Barracks" then
					local temp = game.Players:findFirstChild(part.Owner.Value)
					if temp ~= nil then
						temp.Barras.Value = temp.Barras.Value - 1
					end
					temp.barrack.Value = temp.mainbas.Value
				elseif part.Type.Value == "Producer" then
					local temp = game.Players:findFirstChild(part.Owner.Value)
					if temp ~= nil then
						temp.prods.Value = temp.prods.Value - 1
					end
				elseif part.Type.Value == "Main base" then
					for _,v in pairs(model:children()) do
						local own, helth = v:findFirstChild("Owner"), v:findFirstChild("Health")
						if own ~= nil and helth ~= nil then
							if own.Value == part.Owner.Value then
								helth.Value = 0
								local plag = game.Players:findFirstChild(own.Value)
								if plag ~= nil then
									plag.Gaah.Value = 0
								end
							end
						end
					end
				end
				wait(2)
				for _,v in pairs(part:children()) do v:remove() end
				ruin(part)
			end
		end
	end
	coroutine.resume(coroutine.create(function()
		while part.Health.Value > 0 do
			wait(3)
			if part.Health.Value < hp then
				part.Health.Value = part.Health.Value + 1
			end
		end
	end))
	money.Text = "HP: "..part.Health.Value
	part.Health.Changed:connect(changa)
end

function giveresources(plyr,gold,part)
	local bill = Instance.new("BillboardGui",part)
	bill.Size = UDim2.new(0,10,0,10)
	bill.Adornee = part
	local tx = Instance.new("TextLabel",bill)
	tx.Size = bill.Size
	tx.Position = UDim2.new(0,0,0,-70)
	tx.BackgroundTransparency = 1
	tx.FontSize = "Size14"
	tx.TextColor = BrickColor.new("New yeller")
	if gold < 0 then
		tx.Text = gold
		tx.TextColor = BrickColor.new("Really red")
	elseif gold > 0 then
		tx.Text = "+"..gold
		tx.TextColor = BrickColor.new("Lime green")
	elseif gold == 0 then
		tx.Parent = nil
	end
	plyr.Gaah.Value = plyr.Gaah.Value + gold
	coroutine.resume(coroutine.create(function()
		for i = -70, math.random(-210,-150), -15 do
			wait()
			tx.Position = UDim2.new(0,0,0,i)
		end
		wait(0.4)
		tx:remove()
	end))
end

function mainbase(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "MainBase"
	buildingprops(playa,mo,part,6000,"Main base")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,2.3,1,1.2,"Reddish brown",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0.4,(part.Size.Y/2)+(main.Size.Y/2),1.1) 
	showhp(main,part,playa)
	playa.mainbas.Value = main
	local moneh = Instance.new("BillboardGui",main)
	moneh.Size = UDim2.new(0,600,0,100)
	moneh.Adornee = moneh.Parent
	local money = Instance.new("TextLabel",moneh)
	money.TextWrap = true
	money.Size = moneh.Size
	money.Position = UDim2.new(0,0,0,-100)
	money.BackgroundTransparency = 1
	money.FontSize = "Size12"
	money.TextColor = BrickColor.new(playa.teamva.Value)
	function changa(prop)
		money.Text = playa.Name..string.char(10)..[[
		Gold: ]]..playa.Gaah.Value..string.char(10)..[[
		Troops: ]]..playa.Trawps.Value
		if part.Health.Value < 1 then
			part.Health.Value = 0
			Instance.new("Fire",part).Heat = 25
		end
	end
	money.Text = playa.Name..string.char(10)..[[
	Gold: ]]..playa.Gaah.Value..string.char(10)..[[
	Troops: ]]..playa.Trawps.Value
	playa.Gaah.Changed:connect(changa)
	playa.Trawps.Changed:connect(changa)
	part.Health.Changed:connect(changa)
	local sec = Instance.new("Part")
	prop(sec,mo,false,0,0,1,1,2.5,"Reddish brown",true,"Custom")
	sec.CFrame = main.CFrame * CFrame.new(1.15,0,-0.6)
	for i=0,2,0.5 do
		local pile = Instance.new("Part")
		prop(pile,mo,false,0,0,0.35,0.7,0.35,playa.teamva.Value,true,"Custom")
		pile.CFrame = main.CFrame * CFrame.new(-i,-0.3,-0.85)
	end
	coroutine.resume(coroutine.create(function()
		while part.Health.Value > 0 do
			wait(math.random(940,1040)/100)
			giveresources(playa,10+(prodgive*playa.prods.Value),main)
		end
	end))
	coroutine.resume(coroutine.create(function()
		while part.Health.Value > 0 do
			wait(math.random(1700,1800)/100)
			giveresources(playa,-playa.Trawps.Value*2,main)
		end
	end))
end

function producer(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "Produce"
	buildingprops(playa,mo,part,90,"Producer")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,2.1,0.8,2.1,"Reddish brown",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0.4,(part.Size.Y/2)+(main.Size.Y/2),1.1) 
	showhp(main,part,playa)
	for i=0.5,1,0.5 do
		local pile = Instance.new("Part")
		prop(pile,mo,false,0,0,i,i/1.4,i,playa.teamva.Value,true,"Custom")
		pile.CFrame = main.CFrame * CFrame.new(0,i,0)
		Instance.new("CylinderMesh",pile)
	end
	playa.prods.Value = playa.prods.Value + 1
end

function barrack(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "Barracks"
	buildingprops(playa,mo,part,175,"Barracks")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,2.4,1,0.6,"Reddish brown",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0,(part.Size.Y/2)+(main.Size.Y/2),-1.3) 
	showhp(main,part,playa)
	playa.barrack.Value = main
	for i = math.pi/2, math.pi, math.pi/2 do
		local pile = main:clone()
		pile.Parent = mo
		pile.CFrame = part.CFrame * CFrame.Angles(0,i,0) * CFrame.new(0,(part.Size.Y/2)+(main.Size.Y/2),-1.3) 
	end
	local pw = Instance.new("Part")
	prop(pw,mo,false,0,0,0.25,1.5,0.25,"Reddish brown",true,"Custom")
	pw.CFrame = main.CFrame * CFrame.new(0,1.1,0) 
	Instance.new("CylinderMesh",pw)
	local fl = Instance.new("Part")
	prop(fl,mo,false,0,0,0.05,0.5,1,playa.teamva.Value,true,"Custom")
	fl.CFrame = main.CFrame * CFrame.new(0,1.7,0.5) * CFrame.Angles(0,math.pi,0)
	Instance.new("SpecialMesh",fl).MeshType = "Wedge"
	playa.Barras.Value = playa.Barras.Value + 1
end

function bank(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "Bank"
	buildingprops(playa,mo,part,600,"Bank")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,2,2,2,"Reddish brown",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0.2,(part.Size.Y/2)+(main.Size.Y/2),-0.3) 
	showhp(main,part,playa)
	for i = 0, math.pi, math.pi do
		local pile = Instance.new("Part")
		prop(pile,mo,false,0,0,2.4,0.8,1.25,playa.teamva.Value,true,"Custom")
		pile.CFrame = main.CFrame * CFrame.Angles(0,-i,0) * CFrame.new(0,1.4,-0.6) 
		Instance.new("SpecialMesh",pile).MeshType = "Wedge"
	end
	local py = Instance.new("Part")
	prop(py,mo,false,0,0,0.4,0.8,0.6,"Really black",true,"Custom")
	py.CFrame = main.CFrame * CFrame.new(0.9,-0.6,0) 
	coroutine.resume(coroutine.create(function()
		while part.Health.Value > 0 do
			wait(10)
			local df = playa.bank.Value
			playa.bank.Value = playa.bank.Value + df/interest
		end
	end))
end

function factory(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "Factory"
	buildingprops(playa,mo,part,500,"Factory")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,2.9,1.2,1.4,"Dark grey",true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0.5,(part.Size.Y/2)+(main.Size.Y/2),-1.1) 
	showhp(main,part,playa)
	for i = -0.9, 0, 0.9 do
		local pile = Instance.new("Part")
		prop(pile,mo,false,0,0,0.7,1.2,0.7,playa.teamva.Value,true,"Custom")
		pile.CFrame = main.CFrame * CFrame.new(i,(main.Size.Y/2)+(pile.Size.Y/2),0.1) 
		Instance.new("CylinderMesh",pile)
	end
	local pow = Instance.new("Part")
	prop(pow,mo,false,0,0,1.3,0.9,1,"Dark grey",true,"Custom")
	pow.CFrame = part.CFrame * CFrame.new(1.2,(part.Size.Y/2)+(pow.Size.Y/2),0) 
end

function tower(part,playa)
	local mo = Instance.new("Model",part)
	mo.Name = "Tower"
	buildingprops(playa,mo,part,95,"Tower")
	local main = Instance.new("Part")
	prop(main,mo,false,0,0,1.9,0.4,1.9,playa.teamva.Value,true,"Custom")
	main.CFrame = part.CFrame * CFrame.new(0,(part.Size.Y/2)+(main.Size.Y/2),0) 
	Instance.new("CylinderMesh",main)
	local pow = Instance.new("Part")
	prop(pow,mo,false,0,0,1,3,1,"Reddish brown",true,"Custom")
	pow.CFrame = part.CFrame * CFrame.new(0,(part.Size.Y/2)+(pow.Size.Y/2),0) 
	Instance.new("CylinderMesh",pow)
	local hu = Instance.new("Part")
	prop(hu,mo,false,0,0,1.4,0.2,1.4,"Reddish brown",true,"Custom")
	hu.CFrame = pow.CFrame * CFrame.new(0,pow.Size.Y/2,0) 
	local hu2 = Instance.new("Part")
	prop(hu2,mo,false,0,0,1.6,0.2,1.6,"Reddish brown",true,"Custom")
	hu2.CFrame = hu.CFrame * CFrame.new(0,1.2,0) 
	showhp(hu2,part,playa)
	for i=0,math.pi*2,math.pi/2 do
		local ha = Instance.new("Part")
		prop(ha,mo,false,0,0,0.1,1.2,0.1,"Reddish brown",true,"Custom")
		ha.CFrame = hu.CFrame * CFrame.Angles(0,i,0) * CFrame.new(0.6,ha.Size.Y/2,0.6) 
	end
	coroutine.resume(coroutine.create(function()
		while part.Health.Value > 0 do
			wait(0.85)
			local obj,dis = getlols(model,part.Position,playa)
			if obj ~= nil then
				local trail = Instance.new("Part")
				prop(trail,mo,false,0.2,0,0.1,0.1,1,"Bright yellow",true,"Custom")
				trail.CFrame = CFrame.new(hu2.Position,obj.Position) * CFrame.new(0,0,-dis/2)
				local mesi = Instance.new("SpecialMesh",trail)
				mesi.Scale = Vector3.new(1,1,dis)
				mesi.MeshType = "Brick"
				if obj.Name == "Tile" then
					obj.Health.Value = obj.Health.Value - math.random(towerdmg-3,towerdmg+3)
				elseif obj.Name == "Unit" then
					obj.Amount.Value = obj.Amount.Value - 1
				end
				coroutine.resume(coroutine.create(function()
					for i=0.2,1,0.15 do
						wait()
						trail.Transparency = i
					end
					trail:remove()
				end))
			end
		end
	end))
end

function coordinates(screen,xx,zz)
	local po = 10
	for i=1,2 do
		local tx = Instance.new("TextLabel",screen)
		tx.Size = UDim2.new(0,80,0,20)
		tx.Position = UDim2.new(0,po,0.25,0)
		if i == 1 then
			tx.Text = "X:  "..xx
		else
			tx.Text = "Z:  "..zz
		end
		po = po + tx.Size.X.Offset
	end
end

function troops(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "Send/Train troops"
	local buttonprod = Instance.new("TextButton",mmh)
	buttonprod.Size = UDim2.new(0.3,0,0.15,0)
	buttonprod.Position = UDim2.new(0.05,0,0.25,0)
	buttonprod.FontSize = "Size12"
	buttonprod.TextColor3 = Color3.new(1,1,1)
	buttonprod.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonprod.BackgroundTransparency = 0.4
	buttonprod.Text = "Soldier: "..soldcost
	buttonprod.MouseButton1Click:connect(function()
		if ply.Gaah.Value > soldcost-1 and ply.Trawps.Value < ply.Barras.Value*eachbarrack then
			ply.Gaah.Value = ply.Gaah.Value - soldcost
			ply.Trawps.Value = ply.Trawps.Value + 1
		end
	end)
	local buttonpr = Instance.new("TextButton",mmh)
	buttonpr.Size = UDim2.new(0.3,0,0.15,0)
	buttonpr.Position = UDim2.new(0.65,0,0.25,0)
	buttonpr.FontSize = "Size12"
	buttonpr.TextColor3 = Color3.new(1,1,1)
	buttonpr.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonpr.BackgroundTransparency = 0.4
	buttonpr.Text = "Send soldiers"
	buttonpr.TextWrap = true
	local clicka = 1
	buttonpr.MouseButton1Click:connect(function()
		if clicka == 1 then
			buttonpr.FontSize = "Size8"
			buttonpr.Size = UDim2.new(0.45,0,0.4,0)
			buttonpr.Text = [[Touch a brick where you want to attack]]
			ply.Attwk.Value = true
		end
	end)
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.35,0,0.5,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Sell"
	butto.MouseButton1Click:connect(function()
		giveresources(ply,barcost/2,par)
		for _,v in pairs(par:children()) do
			if not v:IsA("TouchTransmitter") and v.className ~= "BillboardGui" then
				v:remove()
			end
		end
		sc:remove()
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.Attwk.Value = false
	end)
end

function close(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "Sell building"
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.35,0,0.4,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Sell"
	butto.MouseButton1Click:connect(function()
		giveresources(ply,prodcost/2,par)
		for _,v in pairs(par:children()) do
			if not v:IsA("TouchTransmitter") and v.className ~= "BillboardGui" then
				v:remove()
			end
		end
		sc:remove()
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.Attwk.Value = false
	end)
end

function close2(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "Sell building"
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.35,0,0.4,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Sell"
	butto.MouseButton1Click:connect(function()
		giveresources(ply,towercost/2,par)
		for _,v in pairs(par:children()) do
			if not v:IsA("TouchTransmitter") and v.className ~= "BillboardGui" then
				v:remove()
			end
		end
		sc:remove()
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.Attwk.Value = false
	end)
end

function bankscreen(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "Bank: "..ply.bank.Value
	ply.bank.Changed:connect(function(prop)
		mk.Text = "Bank: "..ply.bank.Value
	end)
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.35,0,0.6,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Sell"
	butto.MouseButton1Click:connect(function()
		giveresources(ply,(bankcost/2)+ply.bank.Value,par)
		ply.bank.Value = 0
		for _,v in pairs(par:children()) do
			if not v:IsA("TouchTransmitter") and v.className ~= "BillboardGui" then
				v:remove()
			end
		end
		sc:remove()
	end)
	local but = Instance.new("TextButton",mmh)
	but.Size = UDim2.new(0.3,0,0.15,0)
	but.Position = UDim2.new(0.1,0,0.4,0)
	but.FontSize = "Size12"
	but.TextColor3 = Color3.new(1,1,1)
	but.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	but.BackgroundTransparency = 0.4
	but.Text = "Deposit"
	local steal = Instance.new("TextButton",mmh)
	steal.Size = UDim2.new(0.3,0,0.15,0)
	steal.Position = UDim2.new(0.6,0,0.4,0)
	steal.FontSize = "Size12"
	steal.TextColor3 = Color3.new(1,1,1)
	steal.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	steal.BackgroundTransparency = 0.4
	steal.Text = "Withdraw"
	local txtbox = Instance.new("TextBox",mmh)
	txtbox.Size = UDim2.new(0.16,0,0.1,0)
	txtbox.Position = UDim2.new(0.42,0,0.3,0)
	txtbox.FontSize = "Size12"
	txtbox.TextColor3 = Color3.new(1,1,1)
	txtbox.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	txtbox.BackgroundTransparency = 0.4
	txtbox.Text = 0
	but.MouseButton1Click:connect(function()
		local numba = txtbox.Text
		if tonumber(numba) then
			if tonumber(numba) > 0 and tonumber(numba) < ply.Gaah.Value+1 then
				ply.Gaah.Value = ply.Gaah.Value - numba
				ply.bank.Value = ply.bank.Value + numba
			end
		end
	end)
	steal.MouseButton1Click:connect(function()
		local numba = txtbox.Text
		if tonumber(numba) then
			if tonumber(numba) > 0 and tonumber(numba) < ply.bank.Value+1 then
				ply.Gaah.Value = ply.Gaah.Value + numba
				ply.bank.Value = ply.bank.Value - numba
			end
		end
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.78,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.Attwk.Value = false
	end)
end

function factoryscreen(xx,zz,ply,par)
	ply.evrytin.Value = true
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "Factory: Bombs and heavy"
	local buttonprod = Instance.new("TextButton",mmh)
	buttonprod.Size = UDim2.new(0.3,0,0.15,0)
	buttonprod.Position = UDim2.new(0.05,0,0.25,0)
	buttonprod.FontSize = "Size12"
	buttonprod.TextColor3 = Color3.new(1,1,1)
	buttonprod.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonprod.BackgroundTransparency = 0.4
	buttonprod.Text = "Drop bomb: "..bombcost
	buttonprod.MouseButton1Click:connect(function()
		if ply.Gaah.Value > bombcost-1 then
			ply.Gaah.Value = ply.Gaah.Value - bombcost
			local bewm = Instance.new("Part")
			prop(bewm,model,false,0,0,1,3,1,"Navy blue",false,"Custom")
			bewm.CFrame = CFrame.new(ply.Character.Torso.CFrame.x,60,ply.Character.Torso.CFrame.z)
			repeat wait() until bewm.Position.Y < lolok.y+1
			local boo = Instance.new("Part")
			prop(boo,model,false,0.3,0,1,1,1,bombcolors[math.random(1,#bombcolors)],true,"Custom")
			boo.CFrame = CFrame.new(bewm.Position.X, lolok.y,bewm.Position.Z)
			local mi = Instance.new("SpecialMesh",boo)
			mi.MeshType = "Sphere"
			coroutine.resume(coroutine.create(function()
				for i=1, bombdist*2, 1.4 do
					wait()
					mi.Scale = Vector3.new(i,i,i)
					boo.Transparency = i/(bombdist*2)
				end
				boo:remove()
			end))
			for _,v in pairs(model:children()) do
				if v:IsA("BasePart") then
					if v:findFirstChild("Health") then
						if (v.Position - boo.Position).magnitude < bombdist then
							local helt = v.Health
							helt.Value = helt.Value - math.random(bombd - 20, bombd + 20)
						end
					end
				end
			end
			bewm:remove()
		end
	end)
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.35,0,0.5,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Sell"
	butto.MouseButton1Click:connect(function()
		ply.evrytin.Value = false
		giveresources(ply,barcost/2,par)
		for _,v in pairs(par:children()) do
			if not v:IsA("TouchTransmitter") and v.className ~= "BillboardGui" then
				v:remove()
			end
		end
		sc:remove()
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.evrytin.Value = false
	end)
end

function attack(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = par.Owner.Value.."'s "..par.Type.Value
	local butto = Instance.new("TextButton",mmh)
	butto.Size = UDim2.new(0.3,0,0.15,0)
	butto.Position = UDim2.new(0.1,0,0.5,0)
	butto.FontSize = "Size12"
	butto.TextColor3 = Color3.new(1,1,1)
	butto.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	butto.BackgroundTransparency = 0.4
	butto.Text = "Attack"
	local steal = Instance.new("TextButton",mmh)
	steal.Size = UDim2.new(0.3,0,0.15,0)
	steal.Position = UDim2.new(0.6,0,0.5,0)
	steal.FontSize = "Size12"
	steal.TextColor3 = Color3.new(1,1,1)
	steal.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	steal.BackgroundTransparency = 0.4
	steal.Text = "Steal"
	local txtbox = Instance.new("TextBox",mmh)
	txtbox.Size = UDim2.new(0.16,0,0.1,0)
	txtbox.Position = UDim2.new(0.42,0,0.4,0)
	txtbox.FontSize = "Size12"
	txtbox.TextColor3 = Color3.new(1,1,1)
	txtbox.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	txtbox.BackgroundTransparency = 0.4
	txtbox.Text = 1
	butto.MouseButton1Click:connect(function()
		local numba = txtbox.Text
		if tonumber(numba) then
			if tonumber(numba) > 0 and tonumber(numba) < ply.Trawps.Value+1 then
				giveresources(ply,-numba*3,ply.barrack.Value)
				ply.Trawps.Value = ply.Trawps.Value - numba
				local pew = Instance.new("Part")
				prop(pew,model,true,0.1,0,1,4.5,0.6,ply.teamva.Value,true,"Custom")
				pew.CFrame = CFrame.new(ply.barrack.Value.Position, par.Position)
				pew.Name = "Unit"
				local ow = Instance.new("StringValue",pew)
				ow.Name = "Ownah"
				ow.Value = ply.Name
				local va = Instance.new("IntValue",pew)
				va.Value = numba
				va.Name = "Amount"
				va.Changed:connect(function(pro)
					if va.Value < 1 then
						pew:remove()
					end
				end)
				coroutine.resume(coroutine.create(function()
					wait(35)
					pew:remove()
				end))
				local bil = Instance.new("BillboardGui",pew)
				bil.Adornee = pew
				bil.Size = UDim2.new(0,40,0,40)
				local txl = Instance.new("TextLabel",bil)
				txl.Size = bil.Size
				txl.BackgroundTransparency = 1
				txl.TextColor3 = Color3.new(0.6,0,0)
				txl.FontSize = "Size18"
				txl.Text = va.Value.." S"
				txl.Position = UDim2.new(0,0,0,-55)
				local op = game.Players:findFirstChild(par.Owner.Value)
				repeat
					pew.CFrame = pew.CFrame * CFrame.new(0,0,-0.24)
					txl.Text = va.Value.." S"
					wait()
				until (pew.Position - par.Position).magnitude < 3
				local mk2 = op.Trawps.Value
				local diff = mk2 - va.Value
				local retu = va.Value - mk2
				va.Value = retu
				op.Trawps.Value = diff
				par.Health.Value = par.Health.Value - (va.Value*soldmg)
				if diff < 1 then
					op.Trawps.Value = 0
				end
				if retu < 1 then
					pew:remove()
				else
					txl.Text = va.Value.." S"
					pew.CFrame = CFrame.new(par.Position, ply.barrack.Value.Position) * CFrame.new(0,0,-2.5)
					repeat
						pew.CFrame = pew.CFrame * CFrame.new(0,0,-0.24)
						txl.Text = va.Value.." S"
						wait()
					until (pew.Position - ply.barrack.Value.Position).magnitude < 2
					ply.Trawps.Value = ply.Trawps.Value + va.Value
					pew:remove()
				end
			end
		end
	end)
	steal.MouseButton1Click:connect(function()
		local numba = txtbox.Text
		if tonumber(numba) then
			if tonumber(numba) > 0 and tonumber(numba) < ply.Trawps.Value+1 then
				giveresources(ply,-numba,par)
				ply.Trawps.Value = ply.Trawps.Value - numba
				local pew = Instance.new("Part")
				prop(pew,model,true,0.1,0,1,4.5,0.6,ply.teamva.Value,true,"Custom")
				pew.CFrame = CFrame.new(ply.barrack.Value.Position, par.Position)
				pew.Name = "Unit"
				local va = Instance.new("IntValue",pew)
				va.Value = numba
				va.Name = "Amount"
				local vah = Instance.new("StringValue",pew)
				vah.Value = ply.Name
				vah.Name = "Ownah"
				va.Changed:connect(function(pro)
					if va.Value < 1 then
						pew:remove()
					end
				end)
				coroutine.resume(coroutine.create(function()
					wait(25)
					pew:remove()
				end))
				local bil = Instance.new("BillboardGui",pew)
				bil.Adornee = pew
				bil.Size = UDim2.new(0,40,0,40)
				local txl = Instance.new("TextLabel",bil)
				txl.Size = bil.Size
				txl.BackgroundTransparency = 1
				txl.TextColor3 = Color3.new(0,0,0)
				txl.FontSize = "Size18"
				txl.Text = va.Value.." T"
				txl.Position = UDim2.new(0,0,0,-55)
				local op = game.Players:findFirstChild(par.Owner.Value)
				repeat
					pew.CFrame = pew.CFrame * CFrame.new(0,0,-0.5)
					txl.Text = va.Value.." T"
					wait()
				until (pew.Position - par.Position).magnitude < 3
				local nu = math.floor((op.Gaah.Value/stealamount)*va.Value)
				giveresources(op,-nu,par)
				pew.CFrame = CFrame.new(par.Position, ply.barrack.Value.Position) * CFrame.new(0,0,-2.5)
				repeat
					pew.CFrame = pew.CFrame * CFrame.new(0,0,-0.5)
					txl.Text = va.Value.." T"
					wait()
				until (pew.Position - ply.barrack.Value.Position).magnitude < 3
				giveresources(ply,nu,ply.barrack.Value)
				ply.Trawps.Value = ply.Trawps.Value + va.Value
				pew:remove()
			end
		end
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Nvm, close"
	close.MouseButton1Click:connect(function()
		sc:remove()
		ply.Attwk.Value = false
	end)
end

function build(xx,zz,ply,par)
	local hm = ply.PlayerGui:findFirstChild("Coordinates")
	if hm ~= nil then
		hm:remove()
	end
	local sc = Instance.new("ScreenGui",ply.PlayerGui)
	sc.Name = "Coordinates"
	coordinates(sc,xx,zz)
	local mmh = Instance.new("Frame",sc)
	mmh.Style = "RobloxRound"
	mmh.Size = UDim2.new(0.4,0,0.25,0)
	mmh.Position = UDim2.new(0.3,0,0.25,0)
	local mk = Instance.new("TextLabel",mmh)
	mk.Size = UDim2.new(1,0,0.15,0)
	mk.Position = UDim2.new(0,0,0,0)
	mk.FontSize = "Size14"
	mk.TextColor3 = Color3.new(1,1,1)
	mk.BackgroundTransparency = 1
	mk.Text = "What you wanna do/build?"
	local buttonprod = Instance.new("TextButton",mmh)
	buttonprod.Size = UDim2.new(0.3,0,0.15,0)
	buttonprod.Position = UDim2.new(0.05,0,0.25,0)
	buttonprod.FontSize = "Size12"
	buttonprod.TextColor3 = Color3.new(1,1,1)
	buttonprod.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonprod.BackgroundTransparency = 0.4
	buttonprod.Text = "Producer: "..prodcost
	buttonprod.MouseButton1Click:connect(function()
		if par:findFirstChild("Owner") == nil then
		if ply.Gaah.Value > prodcost-1 then
			ply.Gaah.Value = ply.Gaah.Value - prodcost
			producer(par,ply)
		end
		sc:remove()
		end
	end)
	local buttonbar = Instance.new("TextButton",mmh)
	buttonbar.Size = UDim2.new(0.3,0,0.15,0)
	buttonbar.Position = UDim2.new(0.65,0,0.25,0)
	buttonbar.FontSize = "Size12"
	buttonbar.TextColor3 = Color3.new(1,1,1)
	buttonbar.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonbar.BackgroundTransparency = 0.4
	buttonbar.Text = "Barracks: "..barcost
	buttonbar.MouseButton1Click:connect(function()
		if par:findFirstChild("Owner") == nil then
		if ply.Gaah.Value > barcost-1 then
			ply.Gaah.Value = ply.Gaah.Value - barcost
			barrack(par,ply)
		end
		sc:remove()
		end
	end)
	local buttonban = Instance.new("TextButton",mmh)
	buttonban.Size = UDim2.new(0.3,0,0.15,0)
	buttonban.Position = UDim2.new(0.35,0,0.25,0)
	buttonban.FontSize = "Size12"
	buttonban.TextColor3 = Color3.new(1,1,1)
	buttonban.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttonban.BackgroundTransparency = 0.4
	buttonban.Text = "Bank: "..bankcost
	buttonban.MouseButton1Click:connect(function()
		if par:findFirstChild("Owner") == nil then
		if ply.Gaah.Value > bankcost-1 then
			ply.Gaah.Value = ply.Gaah.Value - bankcost
			bank(par,ply)
		end
		sc:remove()
		end
	end)
	local buttf = Instance.new("TextButton",mmh)
	buttf.Size = UDim2.new(0.3,0,0.15,0)
	buttf.Position = UDim2.new(0.05,0,0.42,0)
	buttf.FontSize = "Size12"
	buttf.TextColor3 = Color3.new(1,1,1)
	buttf.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttf.BackgroundTransparency = 0.4
	buttf.Text = "Factory: "..factorycost
	buttf.MouseButton1Click:connect(function()
		if par:findFirstChild("Owner") == nil then
		if ply.Gaah.Value > factorycost-1 then
			ply.Gaah.Value = ply.Gaah.Value - factorycost
			factory(par,ply)
		end
		sc:remove()
		end
	end)
	local buttff = Instance.new("TextButton",mmh)
	buttff.Size = UDim2.new(0.3,0,0.15,0)
	buttff.Position = UDim2.new(0.35,0,0.42,0)
	buttff.FontSize = "Size12"
	buttff.TextColor3 = Color3.new(1,1,1)
	buttff.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	buttff.BackgroundTransparency = 0.4
	buttff.Text = "Tower: "..towercost
	buttff.MouseButton1Click:connect(function()
		if par:findFirstChild("Owner") == nil then
		if ply.Gaah.Value > towercost-1 then
			ply.Gaah.Value = ply.Gaah.Value - towercost
			tower(par,ply)
		end
		sc:remove()
		end
	end)
	local close = Instance.new("TextButton",mmh)
	close.Size = UDim2.new(0.4,0,0.2,0)
	close.Position = UDim2.new(0.3,0,0.7,0)
	close.FontSize = "Size12"
	close.TextColor3 = Color3.new(1,1,1)
	close.BackgroundColor3 = Color3.new(0.2,0.2,0.3)
	close.BackgroundTransparency = 0.4
	close.Text = "Close"
	close.MouseButton1Click:connect(function()
		sc:remove()
	end)
end

atm = 1
x = 40
z = 40
max = x*2.5

repeat
	local dx = x
	local dz = z
	local si = math.random(50,240)/100
	local p = Instance.new("Part")
	prop(p,model,true,0,0,5,si,5,terraincolors[math.random(1,#terraincolors)],true,"Custom")
	p.CFrame = basecf * lolpos * CFrame.new(x,p.Size.Y/2,z) * CFrame.Angles(0,math.rad(math.random(0,4)*90),0)
	p.Name = "Tile"
	if x == 40 and z == 40 then
		mainbase(p,people[atm])
		atm = atm + 1
	elseif x == max and atm == 2 and players > 1 then
		mainbase(p,people[atm])
		atm = atm + 1
	elseif z == max and atm == 3 and players > 2 then
		mainbase(p,people[atm])
		atm = atm + 1
	elseif x == max and atm == 4 and players > 3 then
		mainbase(p,people[atm])
	end
	x = x + p.Size.X
	if x > max then
		x = 40
		z = z + p.Size.Z
	end
	p.Touched:connect(function(hit)
		local plyr = nil
		local num = 0
		for _,v in pairs(people) do
			if v.Name == hit.Parent.Name then
				num = num + 1
				plyr = v
			end
		end
		if num > 0 then
			local own = p:findFirstChild("Owner")
			if own == nil then
				if plyr.Attwk.Value == false and plyr.evrytin.Value == false then
					build(dx,dz,plyr,p)
				end
			else
				if own.Value ~= plyr.Name then
					if plyr.Attwk.Value then
						attack(dx,dz,plyr,p)
					end
				else
					if plyr.Attwk.Value == false and plyr.evrytin.Value == false then
						if p.Type.Value ~= "Main base" then
							if p.Type.Value == "Barracks" then
								troops(dx,dz,plyr,p)
							elseif p.Type.Value == "Producer" then
								close(dx,dz,plyr,p)
							elseif p.Type.Value == "Tower" then
								close2(dx,dz,plyr,p)
							elseif p.Type.Value == "Bank" then
								bankscreen(dx,dz,plyr,p)
							elseif p.Type.Value == "Factory" then
								factoryscreen(dx,dz,plyr,p)
							end
						end
					end
				end
			end
		end
	end)
until z > max
wait(0.4)
for _,v in pairs(people) do
	v.Character:MoveTo(v.mainbas.Value.Position)
end
script.Parent = model
-- lego

local brikkeh = Instance.new("Part")
prop(brikkeh,model,false,0,0,1,1,1,"White",true,"Custom")
brikkeh.CFrame = basecf * lolpos * CFrame.new(x+30,0,z-30)
local sound = Instance.new("Sound",brikkeh)
sound.Volume = 0.8
sound.Pitch = 1
sound.SoundId = ""
soundids = {"http://www.roblox.com/asset/?id=11420933", "http://www.roblox.com/asset/?id=27697735",
"http://www.roblox.com/asset/?id=11420922", "http://www.roblox.com/asset/?id=1280414",
"http://www.roblox.com/asset/?id=1015394", "http://www.roblox.com/asset/?id=1372261",
"http://www.roblox.com/asset/?id=1034065", "http://www.roblox.com/asset/?id=27697743"}
pitches = {1,3,1,1,1,1,1,3.4}

wheregoing = 1

coroutine.resume(coroutine.create(function()
	while true do
		sound.SoundId = soundids[wheregoing]
		sound.Pitch = pitches[wheregoing]
		wait(0.2)
		sound:play()
		wait(65)
		sound:stop()
		wheregoing = wheregoing + 1
		if wheregoing > #pitches then
			wheregoing = 1
		end
		wait(2)
	end
end))
