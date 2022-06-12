--mediafire gtfo password


--==Player Variables==--
local player=game.Players.LocalPlayer
local character=player.Character
local head=character.Head
local torso=character.Torso
local humanoid=character.Humanoid
local arm={
	Left=character["Left Arm"];
	Right=character["Right Arm"];
}
local leg={
	Left=character["Left Leg"];
	Right=character["Right Leg"];
}

--==Customizations==--
local trailColor="White"
local trailSize=.2
local name="Sword of Heroes"
local model
local bin
local safeList={"rigletto"}
if character:findFirstChild(name) or player.Backpack:findFirstChild(name)~=nil then
	character:findFirstChild(name):remove()
	player.Backpack:findFirstChild(name):remove()
	bin=Instance.new("HopperBin", player.Backpack)
	bin.Name=name
	model=Instance.new("Model", character)
	model.Name=name
else
	bin=Instance.new("HopperBin", player.Backpack)
	bin.Name=name
	model=Instance.new("Model", character)
	model.Name=name
end

local add={
	Part=function(parent, anc, coll, color, t, size, cf)
		local p=Instance.new("Part", parent)
		p.TopSurface="Smooth"
		p.BottomSurface="Smooth"
		p.FormFactor="Custom"
		p.Anchored=anc
		p.CanCollide=coll
		p.BrickColor=BrickColor.new(color)
		p.Transparency=t
		p.Size=size
		p.CFrame=cf
		return p
	end;
	Weld=function(parent, p1, c1)
		local w=Instance.new("Weld", parent)
		w.Part0=w.Parent or Parent
		w.Part1= p1
		w.C1=c1
		return w
	end;
	Mesh=function(ins, parent, scale, type)
		local m
		if ins=="CylinderMesh" or ins=="BlockMesh" then
			m=Instance.new(ins, parent)
			m.Scale=scale
		elseif ins=="SpecialMesh" then
			m=Instance.new(ins, parent)
			m.Scale=scale
			m.MeshType=type
		end
		return m
	end;
	Body=function(ins, parent, vector)
		local b
		if b=="BodyGyro" then
			b=Instance.new(ins, parent)
			b.maxTorque=Vector3.new(math.huge, math.huge, math.huge)
			b.cframe=vector
		elseif b=="BodyForce" then
			b=Instance.new(ins, parent)
			b.force=vector
		elseif b=="BodyVelocity" then
			b=Instance.new(ins, parent)
			b.maxForce=Vector3.new(math.huge, math.huge, math.huge)
			b.velocity=vector
		elseif b=="BodyPosition" then
			b=Instance.new(ins, parent)
			b.maxForce=Vector3.new(math.huge, math.huge, math.huge)
			v.position=vector
		end
		return b
	end;
	Sound=function(parent, id)
		local s=Instance.new("Sound", parent)
		s.SoundId=id
		return s
	end;
}

--==Deb Values==--
local trailDeb=false
local keyDeb=false
local w, a, s, d=false, false, false, false
local mouseDeb=false
local combo=0
local hitDeb=false
local c=function(f)coroutine.resume(coroutine.create(f))end

--==Other Variables==--
local trailBricks={}
local sword={}
sword.Suit={}
sword.Part={}
sword.Mesh={}
sword.Weld={}

local fake={}
fake.Arm={}
fake.Arm.Left=nil
fake.Arm.Right=nil
fake.Leg={}
fake.Leg.Left=nil
fake.Leg.Right=nil
fake.Head=nil
fake.Torso=nil
fake.Weld={}

--==Functions==--
function computePos(pos1, pos2)
	local pos3=Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end

function computeWeld(pos1, pos2)
	local pos3=(pos1/2+pos2/2)
	return pos3
end

function trail(obj)
	trailDeb=true
	local last=obj.Position
	c(function()
		while trailDeb==true do
			wait()
			local new=obj.Position
			local magnitude=(last-new).magnitude
			local distance=(last+new)/2
			local trailLine=add.Part(workspace, true, false, trailColor, 0, Vector3.new(trailSize, magnitude, trailSize), CFrame.new(distance, new)*CFrame.Angles(math.pi/2, 0, 0))
			local cylinderMesh=add.Mesh("SpecialMesh", trailLine, Vector3.new(1, 1, 1), "Head")
			trailLine.Name="Trail"
			last=new
			c(function()
				for i=1, 0, -.1 do
					wait()
					trailLine.Mesh.Scale=trailLine.Mesh.Scale*Vector3.new(i, 1, i)
				end
				trailLine:remove()
			end)
		end
	end)
end

--==MenuScript==--
function createSword()
	sword.Suit={
		Carry=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), CFrame.new());
		CarryTip=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), CFrame.new());
		Sheat=add.Part(model, false, false, "Bright blue", 0, Vector3.new(1, 1, 1), CFrame.new());
		BeltFront=add.Part(model, false, false, "Bright blue", 0, Vector3.new(1, 1, 1), CFrame.new());
		BeltTop=add.Part(model, false, false, "Bright blue", 0, Vector3.new(1, 1, 1), CFrame.new());
		BeltBottom=add.Part(model, false, false, "Bright blue", 0, Vector3.new(1, 1, 1), CFrame.new());
	}
	sword.Part={
		Handle=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), CFrame.new());
		Hold=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), CFrame.new());
		Support=add.Part(model, false, false, "Bright red", 0, Vector3.new(1, 1, 1), CFrame.new());
		Blade=add.Part(model, false, false, "Dark stone grey", 0, Vector3.new(1, 1, 1), CFrame.new());
		BladeTip=add.Part(model, false, false, "Dark stone grey", 0, Vector3.new(1, 1, 1), CFrame.new());
	}
	sword.Mesh={
		Carry=add.Mesh("BlockMesh", sword.Suit.Carry, Vector3.new(.5, 6, .2), nil);
		CarryTip=add.Mesh("SpecialMesh", sword.Suit.CarryTip, Vector3.new(.2, 1, .5), "Wedge");
		Sheat=add.Mesh("BlockMesh", sword.Suit.Sheat, Vector3.new(.2, 4.5, .22), nil);
		BeltFront=add.Mesh("BlockMesh", sword.Suit.BeltFront, Vector3.new(.2, 3, .1), nil);
		BeltTop=add.Mesh("BlockMesh", sword.Suit.BeltTop, Vector3.new(.2, .1, 1.2), nil);
		BeltBottom=add.Mesh("BlockMesh", sword.Suit.BeltBottom, Vector3.new(.1, .2, 1.2), nil);	
		--==SwordParts MESHES==--
		Handle=add.Mesh("CylinderMesh", sword.Part.Handle, Vector3.new(.2, .8, .2), nil);
		Hold=add.Mesh("CylinderMesh", sword.Part.Hold, Vector3.new(.5, .2, .5), nil);
		Support=add.Mesh("BlockMesh", sword.Part.Support, Vector3.new(.2, 2, .18), nil);
		Blade=add.Mesh("BlockMesh", sword.Part.Blade, Vector3.new(.45, 5, .15), nil);
		BladeTip=add.Mesh("SpecialMesh", sword.Part.BladeTip, Vector3.new(.15, 1, .45), "Wedge");
	}
	sword.Weld={
		Carry=add.Weld(sword.Suit.Carry, fake.Torso, CFrame.new(0, 0, computeWeld(sword.Mesh.Carry.Scale.z, fake.Torso.Size.z))*CFrame.Angles(0, 0, -math.rad(45)));
		CarryTip=add.Weld(sword.Suit.CarryTip, sword.Suit.Carry, CFrame.new(0, -computeWeld(sword.Mesh.CarryTip.Scale.y, sword.Mesh.Carry.Scale.y), 0)*CFrame.Angles(math.rad(180), -math.rad(90), 0));
		Sheat=add.Weld(sword.Suit.Sheat, sword.Suit.Carry, CFrame.new());
		BeltFront=add.Weld(sword.Suit.BeltFront, fake.Torso, CFrame.new(0, 0, -computeWeld(sword.Mesh.BeltFront.Scale.z, fake.Torso.Size.z))*CFrame.Angles(0, 0, -math.rad(45)));
		BeltTop=add.Weld(sword.Suit.BeltTop, fake.Torso, CFrame.new(1, computeWeld(sword.Mesh.BeltTop.Scale.y, fake.Torso.Size.y), 0));
		BeltBottom=add.Weld(sword.Suit.BeltBottom, fake.Torso, CFrame.new(-1, -1, 0));
		--==SwordParts WELDZ==--
		Handle=add.Weld(sword.Part.Handle, sword.Suit.Carry, CFrame.new(0, computeWeld(sword.Mesh.Handle.Scale.y, sword.Mesh.Carry.Scale.y)+.1, 0));
		Hold=add.Weld(sword.Part.Hold, sword.Part.Handle, CFrame.new(0, -computeWeld(sword.Mesh.Hold.Scale.y, sword.Mesh.Handle.Scale.y), 0));
		Support=add.Weld(sword.Part.Support, sword.Part.Hold, CFrame.new(0, -computeWeld(sword.Mesh.Support.Scale.y, sword.Mesh.Hold.Scale.y), 0));
		Blade=add.Weld(sword.Part.Blade, sword.Part.Hold, CFrame.new(0, -computeWeld(sword.Mesh.Blade.Scale.y, sword.Mesh.Hold.Scale.y), 0));
		BladeTip=add.Weld(sword.Part.BladeTip, sword.Part.Blade, CFrame.new(0, -computeWeld(sword.Mesh.BladeTip.Scale.y, sword.Mesh.Blade.Scale.y), 0)*CFrame.Angles(math.rad(180), -math.rad(90), 0));
	}
end

function createFake()
	torso.Transparency=1
	fake.Torso=add.Part(character, false, false, torso.Color, 0, Vector3.new(2, 2, 1), CFrame.new())
	fake.Torso.Name="__TorsoPrototype"
	fake.Arm.Left=add.Part(model, false, false, "Really black", 1, Vector3.new(1, 1, 1), CFrame.new())
	fake.Arm.Right=add.Part(model, false, false, "Really black", 1, Vector3.new(1, 1, 1), CFrame.new())
	fake.Leg.Left=add.Part(model, false, false, "Really black", 1, Vector3.new(1, 1, 1), CFrame.new())
	fake.Leg.Right=add.Part(model, false, false, "Really black", 1, Vector3.new(1, 1, 1), CFrame.new())
	fake.Weld={
		add.Weld(fake.Arm.Left, fake.Torso, CFrame.new(-1.5, .5, 0)); add.Weld(fake.Arm.Right, fake.Torso, CFrame.new(1.5, .5, 0)); add.Weld(fake.Torso, torso, CFrame.new(0, 0, 0));
		add.Weld(fake.Leg.Left, fake.Torso, CFrame.new(-.5, -1.5, 0)); add.Weld(fake.Leg.Right, fake.Torso, CFrame.new(.5, -1.5, 0));
		Left=add.Weld(fake.Arm.Left, arm.Left, CFrame.new(0, .5, 0));
		Right=add.Weld(fake.Arm.Right, arm.Right, CFrame.new(0, .5, 0));
		LegLeft=add.Weld(fake.Leg.Left, leg.Left, CFrame.new(0, .5, 0));
		LegRight=add.Weld(fake.Leg.Right, leg.Right, CFrame.new(0, .5, 0));
		Torso=add.Weld(fake.Torso, torso, CFrame.new());
	}
end

function slice(hit)
	if hit.ClassName=="Part"  and hit.Parent~=character and hit.Name~="Base" and hit.Name~="Trail" then
		c(function()
			local yPos=hit.CFrame.p.y-(hit.Size.y/2)
			local pyPos=sword.Part.BladeTip.CFrame.p.y
			if pyPos<yPos or pyPos>(yPos+hit.Size.y) then return end
			local cut=hit:clone()
			local cut2=hit:clone()
			hit:remove()
			cut.Parent=workspace
			cut2.Parent=workspace
			cut.TopSurface="Smooth"; cut.BottomSurface="Smooth"
			cut2.TopSurface="Smooth"; cut2.BottomSurface="Smooth"
			cut.Anchored=true
			cut2.Anchored=true
			cut.CanCollide=true
			cut2.CanCollide=true
			cut.FormFactor="Custom"
			cut2.FormFactor="Custom"
			cut.Size=Vector3.new(cut.Size.x, cut.Size.y-(pyPos-yPos), cut.Size.z)
			cut2.Size=Vector3.new(cut2.Size.x, (pyPos-yPos), cut2.Size.z)
			cut.CFrame=hit.CFrame*CFrame.new(0, cut2.Size.y/2, 0)
			cut2.CFrame=hit.CFrame*CFrame.new(0, -cut.Size.y/2, 0)
			pcall(function() cut.Mesh.Scale=Vector3.new(cut.Mesh.Scale.x, cut.Mesh.Scale.y-(pyPos-hit.CFrame.p.y-hit.Mesh.Scale.y/2), cut.Mesh.Scale.z) end)
			pcall(function() cut2.Mesh.Scale=Vector3.new(cut2.Mesh.Scale.x, (pyPos-hit.CFrame.p.y-hit.Mesh.Scale.y/2), cut2.Mesh.Scale.z) end)
			for i=0, .1, .01 do
				wait()
				cut.CFrame=cut.CFrame*CFrame.new(1*i, 0, 0)
				cut2.CFrame=cut2.CFrame*CFrame.new(-1*i, 0, 0)
			end
			cut:remove()
			cut2:remove()
		end)
	end
end

function shadow(obj)
	local clone=obj:clone()
	clone.Anchored=true
	clone.CanCollide=false
	clone.CFrame=obj.CFrame
	clone.Transparency=0
	clone.Parent=workspace
	pcall(function() clone:findFirstChild("roblox"):remove() end)
	c(function()
		for i=0, 1, .1 do
			wait()
			clone.Transparency=i
		end
		clone:remove()
	end)
end

function forward()
	for i, v in pairs(character:getChildren()) do
		if v.ClassName=="Part" then
			shadow(v)
		end
	end
	for i, v in pairs(sword.Part) do
		shadow(v)
	end
	for i, v in pairs(sword.Suit) do
		shadow(v)
	end
	torso.CFrame=torso.CFrame+torso.CFrame.lookVector*20
end

function jump()
	humanoid.Jump=false
	for i, v in pairs(character:getChildren()) do
		if v.ClassName=="Part" then
			shadow(v)
		end
	end
	for i, v in pairs(sword.Part) do
		shadow(v)
	end
	for i, v in pairs(sword.Suit) do
		shadow(v)
	end
	torso.CFrame=torso.CFrame*CFrame.new(0, 20, 0)
end

function keyDown(key)
	if key=="f" then forward() end
	if key==" " then jump() end
end

function keyUp(key)
end

local slashSound=add.Sound(torso, "rbxasset://sounds//swordslash.wav")
function attackMouse()
	combo=combo+1
	if combo==1 and mouseDeb==false then
		slashSound:Play()
		trail(sword.Part.BladeTip)
		mouseDeb=true
		animate=true
		fake.Weld.Right.C0=CFrame.Angles(0, 0, math.rad(90))
		for i=0, 1, .2 do
			wait()
			sword.Weld.Handle.C0=CFrame.Angles(0, 0, -math.rad(45)*i)
			fake.Weld.Torso.C0=CFrame.Angles(0, -math.rad(90)*i, 0)
			fake.Weld.Right.C0=CFrame.Angles(0, math.rad(45)*i, math.rad(90))
		end
		if combo<1 then combo=2
			animate=true
			mouseDeb=true
			trail(sword.Part.BladeTip)
			for i=0, 1, .2 do
				wait()
				fake.Weld.Right.C0=CFrame.Angles(0, math.rad(45)-(math.rad(180)*i), math.rad(90))
			end
			trailDeb=false
			for i=1, 0, -.2 do
				wait()
				sword.Weld.Handle.C0=CFrame.Angles(0, 0, -math.rad(45)*i)
				fake.Weld.Torso.C0=CFrame.Angles(0, -math.rad(90)*i, 0)
				fake.Weld.Right.C0=CFrame.Angles(0, -math.rad(135)*i, math.rad(90)*i)
			end
			mouseDeb=false
			animate=false
			return
		end
		trailDeb=false
		for i=1, 0, -.2 do
			wait()
			sword.Weld.Handle.C0=CFrame.Angles(0, 0, -math.rad(45)*i)
			fake.Weld.Torso.C0=CFrame.Angles(0, -math.rad(90)*i, 0)
			fake.Weld.Right.C0=CFrame.Angles(math.rad(45)*i, math.rad(45)*i, 0)
		end
		mouseDeb=false
		animate=false
	end
	combo=0
end

local selectDeb=false
local deb=false
function onSelected(mouse)
	bin:remove()
	print("Selected")
	createFake()
	if deb==false then
		deb=true
		createSword()
	end
	humanoid.WalkSpeed=50
	humanoid.MaxHealth=math.huge
	if selectDeb==false then
		selectDeb=true
		for i=0, 1, .1 do
			wait()
			sword.Part.Handle.Transparency=i
			sword.Part.Hold.Transparency=i
			sword.Part.Support.Transparency=i
			sword.Part.Blade.Transparency=i
			sword.Part.BladeTip.Transparency=i
			sword.Weld.Handle.C1=CFrame.new(0, computeWeld(sword.Mesh.Handle.Scale.y, sword.Mesh.Carry.Scale.y)+.1+2*i, 0)
			fake.Weld.Right.C0=CFrame.Angles(math.rad(90)*i, 0, math.rad(90)*i)
		end
		sword.Weld.Handle.Part1=arm.Right
		sword.Weld.Handle.C1=CFrame.new(0, -1, 0)*CFrame.Angles(math.rad(90), -math.rad(90), 0)
		for i=1, 0, -.1 do
			wait()
			sword.Part.Handle.Transparency=i
			sword.Part.Hold.Transparency=i
			sword.Part.Support.Transparency=i
			sword.Part.Blade.Transparency=i
			sword.Part.BladeTip.Transparency=i
			fake.Weld.Right.C0=CFrame.Angles(math.rad(90)*i, 0, math.rad(90)*i)
		end
		selectDeb=false
	end
	mouse.KeyDown:connect(keyDown)
	mouse.KeyUp:connect(keyUp)
	mouse.Button1Down:connect(attackMouse)
	for i, v in pairs(sword.Part) do
		local event=v.Touched:connect(slice)
		while event do wait() end
		event:disconnect()
	end
end
script.Parent=bin
bin.Selected:connect(onSelected)