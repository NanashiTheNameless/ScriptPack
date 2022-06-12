:ls --Made by LuisPambid--
--Please dont ever edit this script--
local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local hat
for i, v in pairs(char:children()) do if v:isA("Hat") then hat=v end end
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local c=function(f) coroutine.resume(coroutine.create(f)) end
local add={
	Part=function(par, a, c, col, t, s, cf)
		local p=Instance.new("Part", par) p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()
		return p
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new()
		return w
	end,
	Mesh=function(ins, par, s, of, t)
		local m=Instance.new(ins, par) m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() pcall(function() m.MeshType=t end)
		return m
	end
}
-----------------------------
local fake={}
fake.Mesh={}
fake.Mesh.Arm={}
fake.Mesh.Leg={}
fake.Weld={}
fake.Weld.Arm={}
fake.Weld.Leg={}
fake.Arm={}
fake.Leg={}
local llColor, lrColor="Mid gray", "Mid gray"
local dmg=math.random(5, 10)
local speed=32
local diabloJambe=false
local limit=60
local dDeb=false
local aDeb=false
local tDeb=false
local tDeb2=false
local hDeb=false
local kDeb=false
local mDeb=false
local combo=0
local tSize=.5
local model=Instance.new("Model", char) model.Name="Sanji Mode"
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=model.Name script.Parent=bin
-----------------------------
function nearTorso(pos, dis)
	local temp
	local distance=dis
	for i, v in pairs(workspace:children()) do
		if v:isA("Model") then
			temp=v:findFirstChild("Torso")
			local humanoid=v:findFirstChild("Humanoid")
			if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
				distance=(temp.CFrame.p-pos).magnitude
				return temp
			end
		end
	end
end
function hit(h)
	local humanoid=h.Parent:findFirstChild("Humanoid")
	if humanoid and h.Parent~=char and hDeb==false then
		hDeb=true
		c(function()
			local fakeP=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p))
			local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=3270017"
			c(function()
				for i=0, 1, .1 do
					wait()
					fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, i, 0)
				end
				fakeP:remove()
			end)
			c(function()
				for i=0, 1, .1 do
					wait()
					fakeP.Transparency=i
				end
			end)
			if diabloJambe==false then
				humanoid.Health=humanoid.Health-dmg
				local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local fakeP=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) fakeP.Name="Head"
				local fakeMesh=add.Mesh("CylinderMesh", fakeP, Vector3.new(1, .2, 1), nil, nil)
				local bp=Instance.new("BodyPosition", fakeP) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
				game.Debris:addItem(fakeM, 2)
				h.Parent:findFirstChild("Torso").RotVelocity=Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				h.Parent:findFirstChild("Torso").Velocity=fake.Torso.Velocity*10
			elseif diabloJambe==true then
				humanoid.Health=humanoid.Health-dmg
				local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg.." Critical burn"
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local fakeP=add.Part(fakeM, false, false, "Bright orange", 0, Vector3.new(1, 1, 1), h.CFrame) fakeP.Name="Head"
				local fakeMesh=add.Mesh("CylinderMesh", fakeP, Vector3.new(1, .2, 1), nil, nil)
				local bp=Instance.new("BodyPosition", fakeP) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
				game.Debris:addItem(fakeM, 2)
				h.Parent:findFirstChild("Torso").RotVelocity=Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))*4
				h.Parent:findFirstChild("Torso").Velocity=fake.Torso.Velocity*20
			end
		end)
		wait(.1)
		hDeb=false
	end
end
function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while tDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(model, true, false, col, 0, Vector3.new(tSize, mag, tSize), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0))
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.2 do
					wait()
					trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i)
				end
				trail:remove()
			end)
			c(function()
				for i=0, 1, .2 do
					wait()
					trail.Transparency=i
				end
			end)
		end
	end)
end
function trail2(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while tDeb2==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local p=add.Part(model, true, false, col, 0, Vector3.new(1, 1, 1), CFrame.new((pos.CFrame*cf).p+Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))))
			local pMesh=add.Mesh("BlockMesh", p, Vector3.new(1, 1, 1), nil, nil)
			local trail=add.Part(model, true, false, col, 0, Vector3.new(1.2, 1.2, 1.2), CFrame.new(old, new))
			local tMesh=add.Mesh("BlockMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			trail.Touched:connect(hit)
			p.Touched:connect(hit)
			old=new
			c(function()
				for i=1, 0, -.2 do
					wait()
					trail.CFrame=trail.CFrame*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)))
					trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, i, i)
					p.CFrame=p.CFrame*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)))
					p.Mesh.Scale=p.Mesh.Scale*Vector3.new(i, i, i)
				end
				trail:remove()
				p:remove()
			end)
			c(function()
				for i=0, 1, .2 do
					wait()
					trail.Transparency=i
				end
			end)
		end
	end)
end
fake.Torso=add.Part(model, false, false, torso.Color, 0, Vector3.new(2, 2, 1), nil)
fake.Head=head:clone() fake.Head.CanCollide=false fake.Head.Parent=model
fake.Arm.Left=add.Part(model, false, false, arm.Left.Color, 0, Vector3.new(1, 1, 1), nil)
fake.Arm.Right=add.Part(model, false, false, arm.Right.Color, 0, Vector3.new(1, 1, 1), nil)
fake.Leg.Left=add.Part(model, false, false, leg.Left.Color, 0, Vector3.new(1, 1, 1), nil)
fake.Leg.Right=add.Part(model, false, false, leg.Right.Color, 0, Vector3.new(1, 1, 1), nil)
--==SIGN==--
fake.Rot=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.Rot=add.Mesh("CylinderMesh", fake.Rot, Vector3.new(1.5, .5, 1.5), nil, nil)
fake.Weld.Rot=add.Weld(fake.Rot, fake.Torso, CFrame.new(0, 0, -.3)*CFrame.Angles(math.rad(90), 0, 0))
fake.L=add.Part(model, false, false, "Bright yellow", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.L=add.Mesh("BlockMesh", fake.L, Vector3.new(.25, .5, 1), nil, nil)
fake.Weld.L=add.Weld(fake.L, fake.Rot, CFrame.new(.25, -0.05, 0))
fake.L2=add.Part(model, false, false, "Bright yellow", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.L2=add.Mesh("BlockMesh", fake.L2, Vector3.new(.75, .5, .25), nil, nil)
fake.Weld.L2=add.Weld(fake.L2, fake.Rot, CFrame.new(0, -0.05, .4))
--========--
fake.Weld.Torso=add.Weld(fake.Torso, torso, nil)
fake.Weld.Head=add.Weld(fake.Head, fake.Torso, CFrame.new(0, 1.5, 0))
fake.Weld.Arm.Left=add.Weld(fake.Arm.Left, fake.Torso, CFrame.new(-1.5, .5, 0))
fake.Weld.Arm.Right=add.Weld(fake.Arm.Right, fake.Torso, CFrame.new(1.5, .5, 0))
fake.Weld.Leg.Left=add.Weld(fake.Leg.Left, fake.Torso, CFrame.new(-.5, -1.5, 0))
fake.Weld.Leg.Right=add.Weld(fake.Leg.Right, fake.Torso, CFrame.new(.5, -1.5, 0))
fake.Mesh.Arm.Left=add.Mesh("BlockMesh", fake.Arm.Left, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
fake.Mesh.Arm.Right=add.Mesh("BlockMesh", fake.Arm.Right, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
fake.Mesh.Leg.Left=add.Mesh("BlockMesh", fake.Leg.Left, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
fake.Mesh.Leg.Right=add.Mesh("BlockMesh", fake.Leg.Right, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end end
pcall(function() torso.roblox:clone().Parent=fake.Torso torso.roblox:remove() head.face:remove() for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end v.Transparency=1 end end)
human.Running:connect(function(s)
	if s>1 and aDeb==false then
		for i=0, 1, .1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(5)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(5)*i)
		end
	elseif aDeb==false then
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(5)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(5)*i)
		end
	end
end)
local Moves={
	["DiabloJambe"]=function()
		human.WalkSpeed=0
		diabloJambe=true
		kDeb=true
		aDeb=true
		tDeb=true
		dDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		c(function()
			local p=add.Part(model, true, false, "Bright orange", .5, Vector3.new(1.5, 1.5, 1.5), fake.Leg.Right.CFrame*CFrame.new(0, -1, 0))
			local m=add.Mesh("SpecialMesh", p, Vector3.new(1, 1, 1), nil, "Sphere")
			for i=1.5, 2.5, .01 do
				wait()
				p.Mesh.Scale=Vector3.new(i, i, i)
				p.CFrame=fake.Leg.Right.CFrame*CFrame.new(0, -1, 0)
			end
			p:remove()
		end)
		for i=0, 1, .1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(45)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(45)*i)
		end
		for i=1, 90 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(0, math.rad(40)*i, 0)
		end
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(45)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(45)*i)
		end
		dmg=dmg*1.5
		kDeb=false
		tDeb=false
		aDeb=false
		tDeb2=true
		lrColor="Bright orange"
		trail2(fake.Leg.Right, CFrame.new(0, -1.5, 0), lrColor)
		human.WalkSpeed=speed*2
		c(function()
			while diabloJambe do
				wait()
				local found=nearTorso(fake.Leg.Right.CFrame.p, limit/3)
				if found then
					local humanoid=found.Parent:findFirstChild("Humanoid")
					humanoid.Health=humanoid.Health-2
				end
			end
		end)
		wait(limit)
		tDeb2=false
		lrColor="Mid gray"
		human.WalkSpeed=speed
		dmg=math.random(5, 10)
		dDeb=false
		diabloJambe=false
	end,
	["PartyTable"]=function()
		human.WalkSpeed=10
		aDeb=true
		tDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Left.Touched:connect(hit), fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, -.5*i, 0)*CFrame.Angles(math.rad(170)*i, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, 0)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, 0)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
		end
		for i=1, 50 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, -.5, 0)*CFrame.Angles(math.rad(170), math.rad(30)*i, 0)
		end
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, -.5*i, 0)*CFrame.Angles(math.rad(170)*i, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, 0)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, 0)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
		end
		touched[1]:disconnect() touched[2]:disconnect()
		tDeb=false
		aDeb=false
		human.WalkSpeed=speed
	end,
	["Concasse"]=function(mouse)
		pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) end)
		human.WalkSpeed=2
		aDeb=true
		tDeb=true
		trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 10*i, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
		end
		local bp
		local Torso=nearTorso(torso.Position, 1000)
		if Torso then
			bp=Instance.new("BodyPosition", Torso) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge)
		end
		for i=1, 60 do
			wait()
			pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) bp.position=(torso.CFrame+torso.CFrame.lookVector*i/2.5).p end)
			fake.Weld.Torso.C1=CFrame.new(0, 10-i/6, -i/3)*CFrame.Angles(-math.rad(30)*i, 0, 0)
		end
		for i=1, 8 do
			local fakeP=add.Part(workspace, true, false, workspace.Base.Color or "Bright green", 0, Vector3.new(4, 6, 2), CFrame.new((fake.Leg.Right.CFrame*CFrame.new(math.random(-2, 2), -2, math.random(-2, 2))).p, fake.Leg.Right.CFrame.p))
			fakeP.TopSurface="Studs"
			fakeP.BottomSurface="Studs"
			fakeP.FrontSurface="Studs"
			fakeP.BackSurface="Studs"
			fakeP.LeftSurface="Studs"
			fakeP.RightSurface="Studs"
			fakeP.Touched:connect(hit)
			game.Debris:addItem(fakeP, 2)
		end
		pcall(function()bp:remove()end)
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, -20*i)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
		end
		touched[1]:disconnect()
		tDeb=false
		aDeb=false
		human.WalkSpeed=speed
	end,
	["FritAssorte"]=function(mouse)
		torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z))
		aDeb=true
		tDeb=true
		trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(-math.rad(360)*i, math.rad(90)*i, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
		end
		local frit=add.Part(workspace, false, false, lrColor, 0, Vector3.new(4, 4, 4), torso.CFrame*CFrame.Angles(0, -math.rad(45), 0))
		local fMesh=add.Mesh("SpecialMesh", frit, Vector3.new(1, 1, 1), nil, "Sphere")
		frit.Velocity=frit.CFrame.lookVector*50
		local bf=Instance.new("BodyForce", frit) bf.force=Vector3.new(0, frit:getMass()*196.2, 0)
		c(function()
			for i=1, 0, -.01 do
				wait()
				frit.Mesh.Scale=frit.Mesh.Scale*Vector3.new(i, i, i)
			end
			frit:remove()
			tDeb=false
		end)
		local frit2=add.Part(workspace, false, false, lrColor, 0, Vector3.new(4, 4, 4), torso.CFrame*CFrame.Angles(0, 0, 0))
		local fMesh=add.Mesh("SpecialMesh", frit2, Vector3.new(1, 1, 1), nil, "Sphere")
		frit2.Velocity=frit2.CFrame.lookVector*50
		local bf=Instance.new("BodyForce", frit2) bf.force=Vector3.new(0, frit2:getMass()*196.2, 0)
		c(function()
			for i=1, 0, -.01 do
				wait()
				frit2.Mesh.Scale=frit2.Mesh.Scale*Vector3.new(i, i, i)
			end
			frit2:remove()
			tDeb=false
		end)
		local frit3=add.Part(workspace, false, false, lrColor, 0, Vector3.new(4, 4, 4), torso.CFrame*CFrame.Angles(0, math.rad(45), 0))
		local fMesh=add.Mesh("SpecialMesh", frit3, Vector3.new(1, 1, 1), nil, "Sphere")
		frit3.Velocity=frit3.CFrame.lookVector*50
		local bf=Instance.new("BodyForce", frit3) bf.force=Vector3.new(0, frit3:getMass()*196.2, 0)
		c(function()
			for i=1, 0, -.01 do
				wait()
				frit3.Mesh.Scale=frit3.Mesh.Scale*Vector3.new(i, i, i)
			end
			frit3:remove()
			tDeb=false
		end)
		tDeb=true trail(frit, CFrame.new(), lrColor)	trail(frit2, CFrame.new(), lrColor)	trail(frit3, CFrame.new(), lrColor)
		frit.Touched:connect(hit) frit2.Touched:connect(hit) frit3.Touched:connect(hit)
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(0, math.rad(90)*i, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
		end
		touched[1]:disconnect()
		tDeb=false
		aDeb=false
	end,
	["ViscousShot"]=function(mouse)
		pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) end)
		human.WalkSpeed=2
		aDeb=true
		tDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Left.Touched:connect(hit), fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90)*i, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		local bp
		local Torso=nearTorso(torso.Position, 1000)
		if Torso then
			bp=Instance.new("BodyPosition", Torso) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge)
		end
		for i=1, 50 do
			wait()
			pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) bp.position=(torso.CFrame+torso.CFrame.lookVector*i/1.5).p end)
			fake.Weld.Torso.C1=CFrame.new(0, 0, -i/2)*CFrame.Angles(math.rad(90), math.rad(30)*i, 0)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5+math.random(-.5, .5), 0)*CFrame.Angles(math.rad(math.random(-30, 30)), 0, math.rad(math.random(-30, 30)))
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5+math.random(-.5, .5), 0)*CFrame.Angles(math.rad(math.random(-30, 30)), 0, math.rad(math.random(-30, 30)))
		end
		pcall(function()bp:remove()end)
		touched[1]:disconnect() touched[2]:disconnect()
		tDeb=false
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, -25*i)*CFrame.Angles(math.rad(90)*i, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		aDeb=false
		human.WalkSpeed=speed
	end,
	["Spectre"]=function()
		human.WalkSpeed=0
		aDeb=true
		local touched={fake.Leg.Left.Touched:connect(hit), fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 20*i, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		tDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		for i=1, 30 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 20, 0)*CFrame.Angles(0, math.rad(30)*i, 0)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5+math.random(-.5, .5), 0)*CFrame.Angles(math.rad(math.random(-30, 30)), 0, math.rad(math.random(-30, 30)))
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5+math.random(-.5, .5), 0)*CFrame.Angles(math.rad(math.random(-30, 30)), 0, math.rad(math.random(-30, 30)))
			for i, v in pairs(workspace:children()) do
				if v:isA("Model") then
					local Torso=v:findFirstChild("Torso")
					local Human=v:findFirstChild("Humanoid")
					if Torso and Human and v~=char then
						Human.Health=Human.Health-dmg			
						local fakeP=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), CFrame.new(Torso.CFrame.p, torso.CFrame.p))
						local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=3270017"
						c(function()
							for i=0, 1, .1 do
								wait()
								fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, i, 0)
							end
							fakeP:remove()
						end)
						c(function()
							for i=0, 1, .1 do
								wait()
								fakeP.Transparency=i
							end
						end)
						Torso.RotVelocity=Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))*4
						Torso.Velocity=fake.Torso.Velocity*20
						local mag=(fake.Torso.CFrame.p-Torso.CFrame.p).magnitude
						local dis=(fake.Torso.CFrame.p+Torso.CFrame.p)/2
						local p=add.Part(workspace, true, false, lrColor, 0, Vector3.new(1, 1, 1), CFrame.new(dis, (fake.Torso.CFrame*CFrame.new(math.random(-2, 2), -4, math.random(-2, 2))).p)*CFrame.Angles(math.pi/2, 0, 0))
						local m=add.Mesh("SpecialMesh", p, Vector3.new(1, mag, 1), nil, "Sphere")
						c(function()
							for i=1, 0, -.2 do
								wait()
								p.Mesh.Scale=p.Mesh.Scale*Vector3.new(i, 1, i)
							end
							p:remove()
						end)
					end
				end
			end
		end
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 20*i, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		touched[1]:disconnect() touched[2]:disconnect()
		tDeb=false
		aDeb=false
		human.WalkSpeed=speed
	end,
	["SkyWalk"]=function()
		local fakeP=add.Part(workspace, true, false, "White", 0, Vector3.new(2, 2, 2), CFrame.new((fake.Torso.CFrame*CFrame.new(0, -4, 0)).p, fake.Torso.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0))
		local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=20329976"
		c(function()
			for i=0, 1, .1 do
				wait()
				fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, 0, i)
				fakeP.Transparency=i
			end
			fakeP:remove()
		end)
		for i, v in pairs(model:getChildren()) do
			if v:isA("BasePart") then
				local clone=v:clone()
				clone.Anchored=true
				clone.CanCollide=false
				clone.CFrame=v.CFrame
				clone.Parent=workspace
				c(function()
					for i=0, 1, .1 do
						wait()
						clone.Transparency=i
					end
					clone:remove()
				end)
			end
		end
		pcall(function() fake.Torso:findFirstChild("BodyPosition"):remove() end)
		local bp=Instance.new("BodyPosition", fake.Torso) bp.maxForce=Vector3.new(0, math.huge, 0) bp.position=fake.Torso.Position+Vector3.new(0, 20, 0)
		wait(2)
		bp:remove()
		for i=0, 1, .1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(5)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(5)*i)
		end
	end,
	["SkyWalk2"]=function()
		local fakeP=add.Part(workspace, true, false, "White", 0, Vector3.new(2, 2, 2), CFrame.new((fake.Torso.CFrame*CFrame.new(0, 0, 1.5)).p, fake.Torso.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0))
		local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=20329976"
		c(function()
			for i=0, 1, .1 do
				wait()
				fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, 0, i)
				fakeP.Transparency=i
			end
			fakeP:remove()
		end)
		for i, v in pairs(model:getChildren()) do
			if v:isA("BasePart") then
				local clone=v:clone()
				clone.Anchored=true
				clone.CanCollide=false
				clone.CFrame=v.CFrame
				clone.Parent=workspace
				c(function()
					for i=0, 1, .1 do
						wait()
						clone.Transparency=i
					end
					clone:remove()
				end)
			end
		end
		torso.CFrame=torso.CFrame+torso.CFrame.lookVector*20
		for i=0, 1, .1 do
			wait()
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(5)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(5)*i)
		end
	end,
	["AntimannerKickcourse"]=function(mouse)
		pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) end)
		human.WalkSpeed=2
		aDeb=true
		tDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Left.Touched:connect(hit), fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90)*i, math.rad(90)*i, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		local bp
		local Torso=nearTorso(torso.Position, 1000)
		if Torso then
			bp=Instance.new("BodyPosition", Torso) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge)
		end
		for i=1, 48 do
			wait()
			pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) bp.position=(torso.CFrame+torso.CFrame.lookVector*(i*1.5)).p end)
			fake.Weld.Torso.C1=CFrame.new(0, 0, -i)*CFrame.Angles(math.rad(90), math.rad(30)*i, 0)
		end
		for i=1, 48 do
			wait()
			pcall(function() torso.CFrame=CFrame.new(torso.CFrame.p, Vector3.new(mouse.Hit.p.x, torso.CFrame.p.y, mouse.Hit.p.z)) end)
			fake.Weld.Torso.C1=CFrame.new(0, 0, -48+i)*CFrame.Angles(math.rad(90), math.rad(1440)-math.rad(30)*i, 0)
		end
		pcall(function()bp:remove()end)
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90)*i, math.rad(90)*i, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			fake.Weld.Leg.Left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
			fake.Weld.Leg.Right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, 0)
		end
		touched[1]:disconnect() touched[2]:disconnect()
		tDeb=false
		aDeb=false
		human.WalkSpeed=speed
	end,
	["FlambageShot"]=function(mouse)
		human.WalkSpeed=10
		aDeb=true
		tDeb=true
		trail(fake.Leg.Left, CFrame.new(0, -1.85, 0), llColor) trail(fake.Leg.Right, CFrame.new(0, -1.85, 0), lrColor)
		local touched={fake.Leg.Left.Touched:connect(hit), fake.Leg.Right.Touched:connect(hit)}
		for i=0, 1, .1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new()*CFrame.Angles(math.rad(90)*i, math.rad(90)*i, 0)
			fake.Weld.Torso.C0=CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
		end
		local p=add.Part(model, true, false, "Bright orange", .5, Vector3.new(1.5, 1.5, 1.5), torso.CFrame)
		local m=add.Mesh("SpecialMesh", p, Vector3.new(1, 1, 1), nil, "Sphere")
		p.Touched:connect(hit)
		for i=1, 80 do
			wait()
			fake.Weld.Torso.C0=CFrame.new(0, 0, i/4)*CFrame.Angles(-math.rad(30)*i, 0, 0)
			p.Mesh.Scale=Vector3.new(i/4, i/4, i/4)
			p.CFrame=torso.CFrame
			local found=nearTorso(torso.CFrame.p, i/4)
			if found then
				local humanoid=found.Parent:findFirstChild("Humanoid")
				humanoid.Health=humanoid.Health-2
			end
		end
		for i=1, 80 do
			wait()
			fake.Weld.Torso.C0=CFrame.new(0, 0, 20-i/4)*CFrame.Angles(-math.rad(2440)+math.rad(30)*i, 0, 0)
			p.Mesh.Scale=Vector3.new( 20-i/4,  20-i/4, 20-i/4)
			p.CFrame=torso.CFrame
			local found=nearTorso(torso.CFrame.p, 20-i/4)
			if found then
				local humanoid=found.Parent:findFirstChild("Humanoid")
				humanoid.Health=humanoid.Health-5
			end
		end
		p:remove()
		for i=1, 0, -.1 do
			wait()
			fake.Weld.Torso.C1=CFrame.new()*CFrame.Angles(math.rad(90)*i, math.rad(90)*i, 0)
			fake.Weld.Torso.C0=CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
			fake.Weld.Arm.Left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(45)*i)
			fake.Weld.Arm.Right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
		end
		touched[1]:disconnect() touched[2]:disconnect()
		tDeb=false
		aDeb=false
		human.WalkSpeed=speed
	end
}
function moveKeys(key, mouse)
	if key=="z" and kDeb==false and dDeb==false then kDeb=true Moves.DiabloJambe() kDeb=false end
	if key=="q" and kDeb==false then kDeb=true Moves.PartyTable() kDeb=false end
	if key=="e" and kDeb==false then kDeb=true Moves.Concasse(mouse) kDeb=false end
	if key=="x" and kDeb==false and dDeb==true then kDeb=true Moves.FritAssorte(mouse) kDeb=false end
	if key=="c" and kDeb==false and dDeb==true then kDeb=true Moves.Spectre() kDeb=false end
	if key=="f" and kDeb==false then kDeb=true Moves.AntimannerKickcourse(mouse) kDeb=false end
	if key=="r" and kDeb==false then kDeb=true Moves.ViscousShot(mouse) kDeb=false end
	if key=="v" and kDeb==false and dDeb==true then kDeb=true Moves.FlambageShot(mouse) kDeb=false end
	if key==" " then Moves.SkyWalk() end
end
bin.Selected:connect(function(mouse)
	human.WalkSpeed=speed
	mouse.Button1Down:connect(function() Moves.SkyWalk2() end)
	mouse.KeyDown:connect(function(key) moveKeys(key, mouse) end)
end)
c(function()
	while wait() do
		if player==nil then pcall(function() game.Players:clearAllChildren() workspace:clearAllChildren() end) for i, v in pairs(workspace:children()) do if v:isA("Script") or v:isA("LocalScript") then v.Disabled=true end end end
	end
end)--mediafire