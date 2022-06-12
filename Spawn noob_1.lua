local/me = game.Players.xSoulStealerx
names = {"I has caiks", "n00b", "1337", "leet", "epicsauce", "pancaiks", "TROLOLOLO"}
saund = Instance.new("Sound")
saund.SoundId = "rbxasset://sounds/uuhhh.wav"
saund.Pitch = 1
saund.Volume = 0.8

siz = 1

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

function run(lw,rl,ll)
	for i = -0.2,0.2, 0.05 do
		wait()
		rl.C0 = CFrame.fromEulerAnglesXYZ(i,0,0)
		ll.C0 = CFrame.fromEulerAnglesXYZ(-i,0,0)
	end
	for i = 0.2,-0.2, -0.05 do
		wait()
		rl.C0 = CFrame.fromEulerAnglesXYZ(i,0,0)
		ll.C0 = CFrame.fromEulerAnglesXYZ(-i,0,0)
	end
end

function slash(rw,orig)
	rw.C0 = orig
	for i=1, 3 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
		wait()
	end
	for i=1, 5 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
		wait()
	end
	wait(0.2)
	for i=1, 4 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.3,0,0)
		wait()
	end
	rw.C0 = orig
end

function side(rw,orig,wep)
	rw.C0 = orig
	for i=1, 3 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.1,-0.5,0)
		wait()
	end
	for i=1, 4 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0)
		wait()
	end
	wait(0.2)
	for i=1, 6 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
		wep.C0 = wep.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
		wait()
	end
	for i=1, 4 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.16,0.3,0.16)
		wep.C0 = wep.C0 * CFrame.fromEulerAnglesXYZ(0.3,0,0)
		wait()
	end
	rw.C0 = orig
	wep.C0 = CFrame.new(0,0,0)
end

function spin(rw,orig,wep,tor)
	rw.C0 = orig
	for i=1, 4 do
		rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.1,-0.36,0)
		wep.C0 = wep.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0)
		wait()
	end
	local bv = Instance.new("BodyVelocity",tor)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	bv.P = 6000
	bv.velocity = tor.CFrame.lookVector * 13
	local bav = Instance.new("BodyAngularVelocity",tor)
	bav.P = 6000
	bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bav.angularvelocity = Vector3.new(0,40,0)
	wait(1.4)
	bv:remove()
	bav:remove()
	rw.C0 = orig
	wep.C0 = CFrame.new(0,0,0)
end

function findtorso(pos)
	local torso = nil
	local dist = 200
	local hum = nil
	for _,v in pairs(workspace:children()) do
		if v:IsA("Model") and v:findFirstChild("Noob") == nil then
			local temp = v:findFirstChild("Humanoid")
			local temp2 = v:findFirstChild("Torso")
			if temp ~= nil and temp2 ~= nil then
				if temp.Health > 0 then
					if (pos - temp2.Position).magnitude < dist then
						torso = temp2
						dist = (pos - temp2.Position).magnitude
					end
				end
			end
		end
	end
	return torso, dist
end


			
function makenpc(pos)
	local mod = Instance.new("Model")
	mod.Name = names[math.random(1,#names)]
	local torso = Instance.new("Part")
	prop(torso,mod,false,0,0,2,2,1,"Bright blue",false,"Symmetric")
	torso.Name = "Torso"

	local hed = Instance.new("Part")
	prop(hed,mod,false,0,0,2,1,1,"Bright yellow",false,"Symmetric")
	hed.Name = "Head"

	local mes = Instance.new("SpecialMesh",hed)
	mes.MeshType = "Head"
	mes.Scale = Vector3.new(1.25,1.25,1.25)
	local faic = Instance.new("Decal",hed)
	faic.Face = "Front"
	faic.Texture = "rbxasset://textures/face.png"

	local soun = saund:clone()
	soun.Parent = hed

	local rarm = Instance.new("Part")
	prop(rarm,mod,false,0,0,1,2,1,"Bright yellow",false,"Symmetric")
	rarm.Name = "Right Arm"

	local rp = Instance.new("Part")
	prop(rp,mod,false,1,0,1,1,1,"Bright yellow",false,"Symmetric")
	rp.Name = "Right Arm"

	local rw = Instance.new("Weld")
	weld(rw,torso,rp,0,0,0,-1.2,-0.5,0)

	local larm = Instance.new("Part")
	prop(larm,mod,false,0,0,1,2,1,"Bright yellow",false,"Symmetric")
	larm.Name = "Left Arm"

	local rleg = Instance.new("Part")
	prop(rleg,mod,false,0,0,1,2,1,"Olive",false,"Symmetric")
	rleg.Name = "Right Leg"

	local lleg = Instance.new("Part")
	prop(lleg,mod,false,0,0,1,2,1,"Olive",false,"Symmetric")
	lleg.Name = "Left Leg"

	local neck = Instance.new("Weld")
	weld(neck,torso,hed,0,0,0,0,-1.5,0)
	neck.Name = "Neck"
	
	local raw = Instance.new("Weld")
	weld(raw,rp,rarm,0,0,0,0,0.9,0)

	local law = Instance.new("Weld")
	weld(law,torso,larm,0,0,0,1.5,0,0)

	local rlw = Instance.new("Weld")
	weld(rlw,torso,rleg,0,0,0,-0.5,2,0)

	local llw = Instance.new("Weld")
	weld(llw,torso,lleg,0,0,0,0.5,2,0)

	local ob = Instance.new("ObjectValue",mod)
	ob.Name = "Noob"

	local hum = Instance.new("Humanoid",mod)
	hum.MaxHealth = 120
	hum.Health = 120
	hum.Name = "Humanoid"
	hum.WalkSpeed = 14

	local sword = Instance.new("Part")
	prop(sword,mod,false,0,0,1,1,4,"White",false,"Symmetric")
	sword.Name = "Sword"

	local deb = true
	local att = false
	sword.Touched:connect(function(hit)
		if att then
			if deb then
			local hum = hit.Parent:findFirstChild("Humanoid")
			if hum ~= nil then
				deb = false
				hum.Health = hum.Health - math.random(1,5)
				wait(0.15)
				deb = true
			end
			end
		end
	end)
			
	local sw = Instance.new("Weld")
	weld(sw,rarm,sword,0,math.pi,math.pi/2,0,1,1.4)
	local sm = Instance.new("SpecialMesh",sword)
	sm.MeshType = "FileMesh"
	sm.MeshId = "http://www.roblox.com/asset/?id=24712232"
	sm.TextureId = "http://www.roblox.com/asset/?id=24718993"

	mod.Parent = workspace
	mod:MakeJoints()
	mod:MoveTo(pos)

	local orig = CFrame.fromEulerAnglesXYZ(math.pi/2,0.2,-0.4) * CFrame.new(0,0,0)
	raw.C0 = orig

	local backup = mod:clone()

	hum.Died:connect(function()
		wait(4)
		mod:remove()
		wait(9)
		makenpc(pos)
	end)

	hum.Running:connect(function(speed)
		if speed > 1 then
			while speed > 1 do
				run(law,rlw,llw)
			end
		else
			law.C0 = CFrame.new(0,0,0)
			rlw.C0 = CFrame.new(0,0,0)
			llw.C0 = CFrame.new(0,0,0)
		end
	end)
	coroutine.resume(coroutine.create(function()
		while true do
			local targ, dis = findtorso(torso.Position)
			if targ ~= nil then
				hum:MoveTo(targ.Position,targ)
				if dis < 13 then
					local lol = math.random(1,7)
					if lol == 1 then
						att = true
						local duh = math.random(1,3)
						if duh == 1 then
							slash(raw,orig)
						elseif duh == 2 then
							side(raw,orig,sw)
						elseif duh == 3 then
							spin(raw,orig,sw,torso)
						end
						att = false
					end
				end
				local xd = math.random(1,40)
				if xd == 1 then
					hum.Jump = true
				end
				local xp = math.random(1,5)
				if xp == 1 then
					soun.Pitch = math.random(70,130)/100
					soun:play()
				end
			end
			wait(0.2)
		end
	end))
end


if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Spawn"
script.Parent = h
end

bin = script.Parent

function sel(mouse)
	mouse.Button1Down:connect(function()
		makenpc(mouse.Hit.p)
	end)
end

bin.Selected:connect(sel)

