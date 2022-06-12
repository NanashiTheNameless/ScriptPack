myname = "xSoulStealerx"
me = game.Players[myname]
char = me.Character
name = "MiniRocketLauncher"
explodecolors = {"Really red", "Neon orange", "Bright red", "New Yeller", "Bright yellow", "Bright orange"}
sm = {"Really black", "Black"}
acceleratemax = 100
accelerateincrease = 0.55
MassDestruct = 100
MaxEnergy = 160
Energy = MaxEnergy
EnergyCost = 0.3
IncreaseEnergy = 10
MaxSpeed = 120
MinSpeed = MaxSpeed/4
SpeedIncrease = 0.34
Speed = MinSpeed

function GiveHp(mass)
	return (mass*(mass/9.6)/9.6) + 8
end

function BrickDmg(d, part, pos)
	local dm = math.random(d/2.5,d/1.5)
	dm = (dm - (part.Position - pos.p).magnitude)
	if dm < 0 then dm = 0 end
	return dm
end

function CheckEnergy()
	if Energy > MaxEnergy then
		Energy = MaxEnergy
	elseif Energy < 0 then Energy = 0 end
end

hold = false
jethold = false
sel = false
abletofire = true
JetsOn = false
Flying = false
order = 1
modes = {{"Normal", 6, 5400, 18, 32, 0.4, 7}, {"Accelerate", 7, 4200, 22, 5, 0.5, 9}, {"Machine gun", 4, 1400, 11, 65, 0.18, 3}, {"Blast", 11, 2000, 34, 23, 0.9, 13}}
mode = modes[order]
screenname = "MiniRocketGui"
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

swoosh = Instance.new("Sound")
swoosh.Looped = true
swoosh.Volume = 0.4
swoosh.Pitch = 1.9
swoosh.SoundId = "rbxasset://sounds\\Rocket whoosh 01.wav"

bewm = Instance.new("Sound")
bewm.Looped = false
bewm.Volume = 0.7
bewm.Pitch = 1.5
bewm.SoundId = "http://www.roblox.com/asset/?id=2101148"

boom = Instance.new("Sound")
boom.Looped = false
boom.Volume = 0.5
boom.Pitch = 0.55
boom.SoundId = "http://www.roblox.com/asset/?id=2691586"

flys = Instance.new("Sound")
flys.Looped = true
flys.Volume = 0.8
flys.Pitch = 0.4
flys.SoundId = "rbxasset://sounds\\Rocket whoosh 01.wav"

function getnoobs(pos,dist)
	local stoof = {}
	local mods = {}
	for _,v in pairs(workspace:children()) do
		if v:IsA("BasePart") then
			if (v.Position - pos).magnitude < dist and v.Anchored == false then
				table.insert(stoof,v)
			end
		elseif v:IsA("Model") and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v ~= char then
			if (v.Torso.Position - pos).magnitude < dist then
				table.insert(mods,v)
			end
		end
		for _,k in pairs(v:children()) do
			if k:IsA("BasePart") then
				if (k.Position - pos).magnitude < dist and k.Anchored == false then
					table.insert(stoof,k)
				end
			end
			for _,o in pairs(k:children()) do
				if o:IsA("BasePart") then
					if (o.Position - pos).magnitude < dist and o.Anchored == false then
						table.insert(stoof,o)
					end
				end
			end
		end
	end
	return stoof, mods
end

for i,v in pairs(me.PlayerGui:children()) do
	if v.Name == screenname then v:remove() end
end

screen = Instance.new("ScreenGui",me.PlayerGui)
screen.Name = screenname

fra = Instance.new("Frame",screen)
fra.Style = "RobloxRound"
fra.Size = UDim2.new(0,120,0,25)
fra.Position = UDim2.new(0.5,-60,0,0)

txt = Instance.new("TextLabel",fra)
txt.BackgroundTransparency = 1
txt.TextColor3 = Color3.new(1,1,1)
txt.Size = UDim2.new(1,0,1,0)
txt.Text = modes[order][1]
txt.FontSize = "Size12"

fra2 = Instance.new("Frame",screen)
fra2.BackgroundColor3 = Color3.new(0.1,0.2,0.4)
fra2.Size = UDim2.new(0,240,0,19)
fra2.Position = UDim2.new(0.5,-305,0,3)

energybar = Instance.new("Frame",fra2)
energybar.Size = UDim2.new(Energy/MaxEnergy,0,1,0)
energybar.BackgroundColor3 = Color3.new(0.1,0.3,0.9)
energybar.BorderSizePixel = 0

entext = Instance.new("TextLabel",fra2)
entext.BackgroundTransparency = 1
entext.TextColor3 = Color3.new(1,1,1)
entext.Size = UDim2.new(1,0,1,0)
entext.Text = Energy.."/"..MaxEnergy
entext.FontSize = "Size14"

sptext = Instance.new("TextLabel",fra)
sptext.BackgroundTransparency = 1
sptext.TextColor3 = Color3.new(1,1,1)
sptext.Position = UDim2.new(1.1,0,0.5,0)
sptext.Text = "0/0"
sptext.TextXAlignment = "Left"
sptext.FontSize = "Size14"

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

function GetCF(pos1, pos2)
local pos4 = Vector3.new(pos2.X, pos1.Y, pos2.Z)
return CFrame.new(pos1, pos4)
end

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

coroutine.resume(coroutine.create(function()
	while true do
		if Flying == false then
			Energy = Energy + IncreaseEnergy
		end
		CheckEnergy()
		local mag = torso.Velocity.magnitude
		local lolmag = mag
		local col = nil
		sptext.Text = math.floor(mag).."/"..MaxSpeed
		if lolmag > MaxSpeed then
			lolmag = MaxSpeed
			sptext.TextColor3 = Color3.new(1, 0, 0.2)
			sptext.Text = sptext.Text.."!!"
		else
			sptext.TextColor3 = Color3.new(lolmag/MaxSpeed, (lolmag/MaxSpeed)/1.7, 0)
		end
		energybar.Size = UDim2.new(Energy/MaxEnergy,0,1,0)
		entext.Text = math.floor(Energy).."/"..math.floor(MaxEnergy)
		wait()
	end
end))

flys.Parent = torso

bg = Instance.new("BodyGyro")
bg.P = 18000
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)

for i,v in pairs(char:children()) do
	if v.Name == name then v:remove() end
end

launcher = Instance.new("Model")
launcher.Name = name


--[[LAUNCHER
LAUNCHER
LAUNCHER
LAUNCHER
LAUNCHER
LAUNCHER
LAUNCHER
LAUNCHER
]]

main = Instance.new("Part")
prop( main, launcher, false, 0, 0, 1.1, 0.6, 1.1, "Dark grey", false, "Custom" )
mainmesh = Instance.new("SpecialMesh",main)
mainmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mainmesh.Scale = Vector3.new(1.2,1.2,7)
weaponweld = Instance.new("Weld")
weld( weaponweld, rarm, main, math.pi / 2, 0, 0, 0, -0.3, 0 )

neck = Instance.new("Part")
prop( neck, launcher, false, 0, 0, 0.6, 1, 0.6, "Medium grey", false, "Custom" )
Instance.new("CylinderMesh",neck)
neckweld = Instance.new("Weld")
weld( neckweld, main, neck, 0, 0, 0, 0, 0, 0.1 )

pew = Instance.new("Part")
prop( pew, launcher, false, 0, 0, 0.9, 0.9, 1.5, "Dark grey", false, "Custom" )
Instance.new("SpecialMesh",pew).MeshType = "Sphere"
mehweld = Instance.new("Weld")
weld( mehweld, neck, pew, 0, 0, 0, 0, 0, -0.3 )

tube = Instance.new("Part")
prop( tube, launcher, false, 0, 0, 0.9, 0.9, 1.5, "Medium grey", false, "Custom" )
local tubemesh = mainmesh:clone()
tubemesh.Parent = tube
tubemesh.Scale = Vector3.new(0.9,0.9,8)
lolweld = Instance.new("Weld")
weld( lolweld, pew, tube, 0, 0, 0, 0, 0, 0.7 )

bewm.Parent = tube

missile = Instance.new("Part")
prop( missile, launcher, false, 0, 0, 0.1, 1.2, 0.1, "Really red", false, "Custom" )
local sp = Instance.new("SpecialMesh",missile)
sp.MeshType = "Sphere" sp.Scale = Vector3.new(0.6,1,0.6)
missweld = Instance.new("Weld")
weld( missweld, tube, missile, math.pi/2, 0, 0, 0, 0, -0.1 )

for x = -0.31, -0.15, 0.15 do
for i=0,360,60 do
local miss = Instance.new("Part")
prop( miss, launcher, false, 0, 0, 0.1, 1.2, 0.1, "Bright red", false, "Custom" )
local sp = Instance.new("SpecialMesh",miss)
sp.MeshType = "Sphere" sp.Scale = Vector3.new(0.6,1,0.6)
local miweld = Instance.new("Weld")
miweld.C0 = CFrame.Angles(0,math.rad(i),0)
weld( miweld, missile, miss, 0, 0, 0, x, 0, 0 )
end
end

--[[JET
JET
JET
JET
JET
JET
]]

Jets = {}

for i = -0.5, 0.5, 1 do
	local p = Instance.new("Part")
	prop(p, launcher, false, 0, 0, 1.2, 2.1, 0.2, "Medium grey", false, "Custom")
	local wl = Instance.new("Weld")
	weld(wl, torso, p, 0, 0, i, -i/1.3, 0, -0.5)
	
	local jet = Instance.new("Part")
	prop(jet, launcher, false, 0, 0, 0.6, 1.7, 0.6, "Dark grey", false, "Custom")
	Instance.new("CylinderMesh",jet)
	local wa = Instance.new("Weld")
	weld(wa, p, jet, 0, 0, -i, i*4, 1.2, -1)
	
	local ho = Instance.new("Part")
	prop(ho, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Medium grey", false, "Custom")
	local wad = Instance.new("Weld")
	weld(wad, jet, ho, math.pi/2, 0, 0, 0, 0.78, 0)
	
	local jets = Instance.new("Part")
	prop(jets, launcher, false, 0, 0.05, 0.8, 1.4, 0.8, "Dark grey", false, "Custom")
	Instance.new("SpecialMesh",jets)
	local wa2 = Instance.new("Weld")
	weld(wa2, ho, jets, 0, 0, 0, 0, 0.5, 0)
	
	local gas = Instance.new("Part")
	prop(gas, launcher, false, 0, 0, 1, 0.5, 1, "Medium grey", false, "Custom")
	Instance.new("SpecialMesh",gas)
	local wa3 = Instance.new("Weld")
	weld(wa3, jets, gas, 0, 0, 0, 0, 0.7, 0)
	
	table.insert(Jets, {wa2, gas, jets})
	
	for o = -0.3, 0.4, 0.6 do
		local p2 = Instance.new("Part")
		prop(p2, launcher, false, 0, 0.05, 0.8, 2.1, 0.2, "Dark grey", false, "Custom")
		local w2 = Instance.new("Weld")
		weld(w2, p, p2, -1.1, 0, o*1.6, -o*2.2, -1.26, -0.6)
		local p3 = Instance.new("Part")
		prop(p3, launcher, false, 0, 0, 1.3, 0.7, 0.4, "Bright red", false, "Custom")
		local w3 = Instance.new("Weld")
		weld(w3, p2, p3, 0, 0, 0, 0, -0.75, 0)
	end
end

rb = Instance.new("Part")
prop( rb, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
rh = Instance.new("Weld")
weld( rh, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop( lb, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
lh = Instance.new("Weld")
weld( lh, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)

lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)

rightbattle = nil
leftbattle = nil

launcher.Parent = char

selectmotion = function()
	rw.Part1 = rarm
	lw.Part1 = larm
	coroutine.resume(coroutine.create(function()
	for x = 0, 0.6, 0.1 do
		neckweld.C0 = CFrame.new(0,x*1.2,x/1.5)
		mehweld.C0 = CFrame.new(0,x,0)
		wait()
	end
	end))
	for i=0,90,10 do
		rw.C0 = CFrame.Angles(math.rad(i),0,0) * CFrame.new(math.rad(-i/3),math.rad(-i/4),0)
		lw.C0 = CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(math.rad(i/3),math.rad(-i/1.7),0)
		wait()
	end
	if rightbattle == nil then
		rightbattle = rw.C0
		leftbattle = lw.C0
	end
end

deselmotion = function()
	coroutine.resume(coroutine.create(function()
	for x = 0.6, 0, -0.1 do
		neckweld.C0 = CFrame.new(0,x*1.2,x)
		mehweld.C0 = CFrame.new(0,x,0)
		wait()
	end
	end))
	for i=90,0,-10 do
		rw.C0 = CFrame.Angles(math.rad(i),0,0) * CFrame.new(math.rad(-i/3),math.rad(-i/4),0)
		lw.C0 = CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(math.rad(i/3),math.rad(-i/1.7),0)
		wait()
	end
	rw.Part1 = nil
	lw.Part1 = nil
end

effect = function()
	local pos = tube.CFrame * CFrame.new(0,0,-0.8)
	local p = Instance.new("Part")
	prop( p, workspace, false, 0, 0, 1, 1, 1, "Neon orange", true, "Custom" )
	p.CFrame = pos
	local pwn = Instance.new("SpecialMesh",p)
	pwn.Scale = Vector3.new(0.5,0.4,0.5)
	pwn.MeshId = "http://www.roblox.com/asset/?id=20329976"
	for i=0.2,1.5,0.3 do
		pwn.Scale = Vector3.new(i,i/1.4,i)
		p.CFrame = pos * CFrame.Angles(-math.pi/2,i,0)
		p.Transparency = (i/1.5)-0.2
		wait()
	end
	p:remove()
end

movearm = function()
	bewm:play()
	local rp, lp = rw.C0, lw.C0
	for i=0,30,30/2 do
		rw.C0 = rp * CFrame.Angles(math.rad(i/3),0,0) * CFrame.new(0,math.rad(i/3),0)
		lw.C0 = lp * CFrame.Angles(math.rad(i/5),0,0) * CFrame.new(0,math.rad(i/5),0)
		wait()
	end
	for i=30,0,-30/3 do
		rw.C0 = rp * CFrame.Angles(math.rad(i/3),0,0) * CFrame.new(0,math.rad(i/3),0)
		lw.C0 = lp * CFrame.Angles(math.rad(i/5),0,0) * CFrame.new(0,math.rad(i/5),0)
		wait()
	end
end

explode = function(p,s,mo)
	s:stop()
	local exdmg = mo[4]
	local exdist = mo[2]
	local expl = Instance.new("Model",workspace)
	expl.Name = "xS explode"
	local pos = CFrame.new(p.Position)
	local parts, hums = getnoobs(pos.p, exdist)
	local p = Instance.new("Part")
	prop(p,expl,false,1,0,1,1,1,1,true,"Brick")
	p.CFrame = pos
	local poo = boom:clone()
	poo.Parent = p
	poo:play()
	for i,v in pairs(parts) do
		local minus = BrickDmg(exdmg, v, pos)
		if v:GetMass() < MassDestruct and v.Parent:findFirstChild("Humanoid") == nil and v.Parent ~= launcher then
			local hp = v:findFirstChild("Hp")
			if hp ~= nil then
				hp.Value = hp.Value - minus
				if hp.Value <= 0 then
					v:breakJoints()
				end
			else
				local lol = Instance.new("IntValue")
				lol.Name = "Hp"
				lol.Value = GiveHp(v:GetMass())
				lol.Parent = v
				lol.Changed:connect(function()
					if lol.Value <= 0 then
						v:breakJoints()
					end
				end)
				lol.Value = lol.Value - minus
			end
		end
		local teehee = minus*1.2
		v.Velocity = CFrame.new(pos.p, v.Position).lookVector * teehee
		v.RotVelocity = Vector3.new(math.random(-teehee,teehee), math.random(-teehee,teehee), math.random(-teehee,teehee))
	end
	for i,v in pairs(hums) do
		v.Humanoid.Health = v.Humanoid.Health - math.random(exdmg/1.3,exdmg*1.3)
	end
	for i=1,math.random(7,14) do
		local spike = Instance.new("Part")
		prop( spike, workspace, false, 0, 0, 1, 1, 1, explodecolors[math.random(1,#explodecolors)], true, "Custom" )
		local a,b,c = math.random(-32,32)/10, math.random(-32,32)/10, math.random(-32,32)/10
		spike.CFrame = pos * CFrame.Angles(a,b,c) * CFrame.new(0,exdist/6,0)
		local mes = Instance.new("SpecialMesh",spike)
		mes.MeshId = "http://www.roblox.com/asset/?id=1033714"
		mes.Scale = Vector3.new(math.random(exdist*1.3,exdist*2.5)/10,math.random(exdist*5,exdist*10)/10,math.random(exdist*1.3,exdist*2.5)/10)
		local cf = spike.CFrame
		coroutine.resume(coroutine.create(function()
			local wah = exdist*1.2
			for y=0,wah,math.random(wah/12,wah/7) do
				wait()
				spike.CFrame = cf * CFrame.new(0,y,0)
				spike.Transparency = (y/wah) - 0.08
			end
			spike:remove()
		end))
	end
	coroutine.resume(coroutine.create(function()
	for i=1,math.random(2,6) do
		wait()
		local siz = math.random((exdist/3)*10, (exdist/1.8)*10)/10
		local pk = Instance.new("Part")
		prop(pk, workspace, false, 0.1, 0, 1, 1, 1, explodecolors[math.random(1,#explodecolors)], true, "Custom" )
		pk.CFrame = pos * CFrame.new(math.random(-exdist*10,exdist*10)/25, math.random(-exdist*10,exdist*10)/25, math.random(-exdist*10,exdist*10)/25)
		local ms = Instance.new("SpecialMesh",pk)
		ms.MeshType = "Sphere"
		ms.Scale = Vector3.new(siz,siz,siz)
		coroutine.resume(coroutine.create(function()
			for x=0.1, 1, 0.15 do
				wait()
				pk.Transparency = x
			end
			pk:remove()
		end))
	end
	end))
	coroutine.resume(coroutine.create(function()
		for b=1,math.random(6,13) do
			wait()
			local siz = math.random((exdist/4)*10, (exdist/2.8)*10)/10
			local pk = Instance.new("Part")
			prop(pk, workspace, false, 0.1, 0, 1, 1, 1, sm[math.random(1,#sm)], true, "Custom" )
			pk.CFrame = pos * CFrame.new(math.random(-exdist*10,exdist*10)/25, math.random(-exdist*10,exdist*10)/25, math.random(-exdist*10,exdist*10)/25)
			local ms = Instance.new("SpecialMesh",pk)
			ms.MeshType = "Sphere"
			ms.Scale = Vector3.new(siz,siz,siz)
			local trul = pk.CFrame
			coroutine.resume(coroutine.create(function()
				for x=0.1, 1, 0.2 do
					wait()
					pk.Transparency = x
					pk.CFrame = trul * CFrame.Angles(math.random(-35,35)/100,math.random(-35,35)/100,math.random(-35,35)/100) * CFrame.new(0,x*4,0)
				end
				pk:remove()
			end))
		end
	end))
	wait(1)
	expl:remove()
end

function smoke(p)
	while p.Parent ~= nil do
		wait(0.11)
		local siz = math.random(4,12)/10
		local sp = Instance.new("Part")
		prop(sp,workspace,false,0.1,0,siz,siz,siz,sm[math.random(1,#sm)],true,"Custom")
		sp.CFrame = p.CFrame * CFrame.new(0,0,0.8) * CFrame.Angles(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
		local sme = Instance.new("SpecialMesh",sp)
		sme.MeshType = "Sphere"
		local c = sp.CFrame
		coroutine.resume(coroutine.create(function()
			for i=0.1, 1, 0.2 do
				wait()
				sp.CFrame = c * CFrame.new(0,0,i*4)
				sp.Transparency = i
				sme.Scale = Vector3.new(1+i,1+i,1+i)
			end
			sp:remove()
		end))
	end
end

function smokejet(p)
	while Flying do
		wait(0.06)
		for _,v in pairs(p) do
			local siz = math.random(5,15)/10
			local sp = Instance.new("Part")
			prop(sp,workspace,false,0.1,0,siz,siz,siz,sm[math.random(1,#sm)],true,"Custom")
			sp.CFrame = v[2].CFrame * CFrame.new(0,-0.3,0) * CFrame.Angles(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
			local sme = Instance.new("SpecialMesh",sp)
			sme.MeshType = "Sphere"
			local fi = Instance.new("Part")
			prop(fi,workspace,false,0.1,0,siz,siz,siz,explodecolors[math.random(1,#explodecolors)],true,"Custom")
			fi.CFrame = v[2].CFrame * CFrame.new(0,-0.3,0)* CFrame.Angles(math.pi,0,0) * CFrame.Angles(math.random(-3,3)/10, math.random(-3,3)/10, math.random(-3,3)/10)
			local fmes = Instance.new("SpecialMesh",fi)
			fmes.Scale = Vector3.new(0.4,0.5,0.4)
			fmes.MeshId = "http://www.roblox.com/asset/?id=20329976"
			local c, c2 = sp.CFrame, fi.CFrame
			coroutine.resume(coroutine.create(function()
				for i=0.1, 2, 0.18 do
					wait()
					sp.CFrame = c * CFrame.new(0,-i*3,0) + Vector3.new(0,i*4,0)
					sp.Transparency = i/2.2
					fi.Transparency = i/2
					fi.CFrame = c2 * CFrame.new(0,i*2,0)
					fmes.Scale = Vector3.new(0.4+(i/1.8),0.5+(i/1.8),0.4+(i/1.8))
					sme.Scale = Vector3.new(1+(i/1.4),1+(i/1.4),1+(i/1.4))
				end
				sp:remove()
				fi:remove()
			end))
		end
	end
end

fly = function()
	if Flying == false and JetsOn == false and Energy >= EnergyCost then
	bv.Parent = torso
	Flying = true
	coroutine.resume(coroutine.create(function()
	smokejet(Jets, Flying)
	end))
	flys:play()
	Speed = MinSpeed
	while jethold do
		if Energy <= 0 then break end
		if Speed < MaxSpeed then
			Speed = Speed + SpeedIncrease
		else Speed = MaxSpeed end
		local cf = Jets[1][3].CFrame * CFrame.Angles(math.pi/2,0,0)
		bv.velocity = cf.lookVector * Speed
		Energy = Energy - EnergyCost
		wait()
		bv.velocity = Vector3.new(0,0,0)
	end
	local ha = math.random(1,2) if ha == 1 then flys:stop() else flys:pause() end
	bv.Parent = nil
	bv.velocity = Vector3.new(0,0,0)
	Speed = MinSpeed
	wait(0.3)
	Flying = false
	end
end

fire = function(mousepos, pos, target)

	local moda = mode
	
	if Energy >= moda[7] then
	Energy = Energy - moda[7]
	coroutine.resume(coroutine.create(effect))
	local hitable = true
	local pewm = Instance.new("Part")
	prop( pewm, nil, false, 0, 0, 0.4, 0.4, 0.7, "Medium grey", false, "Custom" )
	Instance.new("SpecialMesh",pewm).MeshType = "Sphere"

	local projectile = Instance.new("Part")
	prop( projectile, workspace, false, 0, 0, 0.3, 0.3, 1.3, "Bright red", false, "Custom" )
	Instance.new("SpecialMesh",projectile).MeshType = "Sphere"

	local wi = Instance.new("Weld")
	weld(wi,projectile,nil,0,0,0,0,0,-0.4)

	local swo = swoosh:clone()
	swo.Parent = projectile
	swo:play()
	local bv = nil
	local sped = 0

	coroutine.resume(coroutine.create(function() wait(0.8) smoke(projectile) end))
	coroutine.resume(coroutine.create(function() wait(7) if projectile.Parent ~= nil then coroutine.resume(coroutine.create(function() explode(projectile, swo, moda) end)) projectile:remove() end end))
	coroutine.resume(coroutine.create(movearm))
	coroutine.resume(coroutine.create(function()
		repeat wait() until bv ~= nil
		if moda[1] == "Accelerate" then
			for i = moda[5], acceleratemax, accelerateincrease do
				sped = i
				wait()
			end
		else
			sped = moda[5]
		end
	end))
	projectile.Touched:connect(function(hit)
		if hit.CanCollide == true and hit:GetMass() >= 3.5 and hitable then
			coroutine.resume(coroutine.create(function() hitable = false explode(projectile, swo, moda) end))
			projectile:remove()
		end
	end)
	projectile.CFrame = pos * CFrame.new(0,0,-1)
	pewm.Parent = projectile
	pewm.CFrame = projectile.CFrame
	wi.Part1 = pewm
	local bg = Instance.new("BodyGyro")
	bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	bg.P = moda[3]
	bg.Parent = projectile
	bg.cframe = CFrame.new(projectile.Position, projectile.CFrame * CFrame.new(0,0,-10).p)
	bv = Instance.new("BodyVelocity")
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	bv.velocity = projectile.CFrame.lookVector * sped
	bv.Parent = projectile
	if target ~= nil then
		local lolpos = target.CFrame:pointToObjectSpace(mousepos)
		repeat
			wait()
			bg.cframe = CFrame.new(projectile.Position, target.CFrame * CFrame.new(lolpos).p)
			bv.velocity = projectile.CFrame.lookVector * sped
		until (projectile.Position - target.CFrame * CFrame.new(lolpos).p).magnitude < 2
		if hitable then
			hitable = false
			coroutine.resume(coroutine.create(function() explode(projectile, swo, moda) end))
			projectile:remove()
		end
	else
		local lolaha = mousepos
		projectile.CFrame = CFrame.new(pos.p, mousepos)
		repeat
			wait()
			bv.velocity = projectile.CFrame.lookVector * sped
			bg.cframe = CFrame.new(projectile.Position, lolaha)
		until projectile.Parent == nil
	end
	end
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "MiniRocket"
	script.Parent = h
end

bin = script.Parent

function select(mouse)
	selectmotion()
	mouse.Icon = "http://www.roblox.com/asset/?id=45117007"
	sel = true
	coroutine.resume(coroutine.create(function()
		for i=1,4 do
			bg.Parent = nil
			wait()
			bg.Parent = torso
		end
	end))
	coroutine.resume(coroutine.create(function()
		while sel do 
			local po = torso.Position+Vector3.new(0,0.85,0)
			local offset=(po.Y-mouse.Hit.p.Y)/60 
			local mag=(po-mouse.Hit.p).magnitude/80 
			offset=offset/mag 
			torso.Neck.C0 = necko * CFrame.Angles(offset,0,0) 
			rw.C0 = rightbattle * CFrame.Angles(-offset, 0,0) 
			lw.C0 = leftbattle * CFrame.Angles(-offset,0,0) 
			for i,v in pairs(Jets) do
				v[1].C0 = CFrame.Angles(offset,0,0) 
			end
			bg.cframe = GetCF(torso.Position, mouse.Hit.p)
			wait() 
		end --Fenrier was here o3o
		rw.C0 = rightbattle
		lw.C0 = leftbattle
		torso.Neck.C0 = necko
	end))
	mouse.Button1Down:connect(function()
		hold = true
		while hold do
			coroutine.resume(coroutine.create(function() fire(mouse.Hit.p, tube.CFrame, mouse.Target) end))
			for i=0,mode[6],0.03 do
				if hold == false then break end
				wait()
			end
		end
	end)
	mouse.Button1Up:connect(function() hold = false end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "e" then
			order = order + 1
			if order > #modes then
				order = 1
			end
			mode = modes[order]
			txt.Text = mode[1]
		elseif key == "q" then
			order = order - 1
			if order < 1 then
				order = #modes
			end
			mode = modes[order]
			txt.Text = mode[1]
		elseif key == string.char(48) then
			jethold = true
			fly()
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if key == string.char(48) then
			jethold = false
		end
	end)
end

function desel()
	sel = false
	bg.Parent = nil
	deselmotion()
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

