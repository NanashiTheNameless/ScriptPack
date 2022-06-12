me = game.Players.xSoulStealerx
names = {"I has caiks", "n00b", "1337", "leet", "epicsauce", "pancaiks", "TROLOLOLO"}
saund = Instance.new("Sound")
saund.SoundId = "rbxasset://sounds/uuhhh.wav"
saund.Pitch = 1
saund.Name = "LOL"
saund.Volume = 0.8

noobs = {}

si = 1

_G.music = function(mo)
	local mus = Instance.new("Sound")
	mus.Volume = 0.6
	mus.Pitch = 1
	mus.SoundId = "http://www.roblox.com/asset/?id=11420933"
	mus.Name = "niib"
	mus.Parent = workspace
	wait()
	mus:play()
	coroutine.resume(coroutine.create(function() wait(120) mus:stop() wait(1) mus:remove() end)) 
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
			
function makenpc(pos)
	local siz = si
	local mod = Instance.new("Model")
	mod.Name = names[math.random(1,#names)]
	table.insert(noobs,mod)
	local torso = Instance.new("Part")
	prop(torso,mod,false,0,0,siz*2,siz*2,siz,"Bright blue",false,"Custom")
	torso.Name = "Torso"

	local hed = Instance.new("Part")
	prop(hed,mod,false,0,0,siz*2,siz,siz,"Bright yellow",false,"Custom")
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
	prop(rarm,mod,false,0,0,siz,siz*2,siz,"Bright yellow",false,"Custom")
	rarm.Name = "Right Arm"

	local rp = Instance.new("Part")
	prop(rp,mod,false,1,0,1,1,1,"Bright yellow",false,"Custom")
	rp.Name = "Right Arm"

	local rw = Instance.new("Weld")
	weld(rw,torso,rp,0,0,0,-(siz*1.2),-(siz*0.5),0)

	local larm = Instance.new("Part")
	prop(larm,mod,false,0,0,siz,siz*2,siz,"Bright yellow",false,"Custom")
	larm.Name = "Left Arm"

	local rleg = Instance.new("Part")
	prop(rleg,mod,false,0,0,siz,siz*2,siz,"Olive",false,"Custom")
	rleg.Name = "Right Leg"

	local lleg = Instance.new("Part")
	prop(lleg,mod,false,0,0,siz,siz*2,siz,"Olive",false,"Custom")
	lleg.Name = "Left Leg"

	local neck = Instance.new("Weld")
	weld(neck,torso,hed,0,0,0,0,-(siz*1.5),0)
	neck.Name = "Neck"
	
	local raw = Instance.new("Weld")
	weld(raw,rp,rarm,0,0,0,0,siz*0.9,0)

	local law = Instance.new("Weld")
	weld(law,torso,larm,0,0,0,siz*1.5,0,0)

	local rlw = Instance.new("Weld")
	weld(rlw,torso,rleg,0,0,0,-(siz*0.5),siz*2,0)

	local llw = Instance.new("Weld")
	weld(llw,torso,lleg,0,0,0,siz*0.5,siz*2,0)

	local ob = Instance.new("ObjectValue",mod)
	ob.Name = "Noob"

	local hum = Instance.new("Humanoid",mod)
	hum.MaxHealth = 100 + (siz*40)
	wait()
	hum.Health = hum.MaxHealth
	hum.Name = "Humanoid"
	hum.WalkSpeed = 9

	local sword = Instance.new("Part")
	prop(sword,mod,false,0,0,siz,siz,siz*4,"White",false,"Custom")
	sword.Name = "Sword"
	
	local sw = Instance.new("Weld")
	weld(sw,rarm,sword,0,math.pi,math.pi/2,0,siz,siz*1.4)
	local sm = Instance.new("SpecialMesh",sword)
	sm.MeshType = "FileMesh"
	sm.MeshId = "http://www.roblox.com/asset/?id=24712232"
	sm.TextureId = "http://www.roblox.com/asset/?id=24718993"
	sm.Scale = Vector3.new(siz,siz,siz)

	mod.Parent = workspace
	mod:MakeJoints()
	mod:MoveTo(pos)

	local orig = CFrame.fromEulerAnglesXYZ(math.pi/2,0.2,-0.4) * CFrame.new(0,0,0)
	raw.C0 = orig

	hum.Died:connect(function()
		wait(4)
		mod:remove()
	end)
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
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "e" then
			si = si + 0.5
		elseif key == "q" then
			si = si - 0.5
			if si < 0.5 then
				si = 0.5
			end
		end
	end)
end

bin.Selected:connect(sel)

