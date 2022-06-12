myname=script.Parent.Parent.Parent.Name
me=game.Players:findFirstChild(myname)

wait()
for _,v in pairs(script.Parent:children()) do
	if v.className=="Sound" then
		v:Stop()
	end
end
wait(.5)
Tool=script.Parent
Charge,Maximum,ChargeAnims,Charging,OverE=0,1000,{},false,0
CUR=1
Abilities={}
DCCOLS={BrickColor:Black(),BrickColor.new("Bright violet"),BrickColor.new("Really black"),BrickColor.new("Black"),BrickColor.new("Lavender")}
Contact = false
Corrupt = false
CanAnim=true
DCCO1=function(Torso,ti)
	for i=1, ti do
		if Torso.Parent==nil then
			return
		end
		p=Instance.new("Part")
		p.Name="BlastRing"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.Anchored=true
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.CFrame=Torso.CFrame*CFrame.new(0,4,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
		p.Parent=workspace
		script.Parent.BlastMesh:clone().Parent=p
		coroutine.resume(coroutine.create(function(par) for lol=1, 9 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,.7,1) par.Transparency=lol*.1 par.CFrame=par.CFrame*CFrame.new(0,.3,0) wait() end par.Parent=nil end),p)
		wait(.05)
	end
end
DCCO2=function(Torso,ti)
	for o=1, ti do
		if Torso.Parent==nil then
			return
		end
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=BrickColor.new("Really black")
		p2.Size=Vector3.new(10,10,10)
		p2.formFactor="Symmetric"
		p2.CFrame=Torso.CFrame*CFrame.new(0,.25,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part) for loll=1, 9 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll*.1 part.CFrame=part.CFrame*CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2)
		wait(.025)
	end
end
DCCO3=function(Torso,ti)
	for o=1, ti do
		if Torso.Parent==nil then
			return
		end
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=BrickColor.new("Really black")
		p2.Size=Vector3.new(3,3,3)
		p2.formFactor="Symmetric"
		p2.CFrame=Torso.CFrame*CFrame.new(0,.25,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
		wait(.025)
	end
end

----Corrupt State Area--------------------------------------------------------------------------------------------------------
----Corrupt State Area--------------------------------------------------------------------------------------------------------
----Corrupt State Area--------------------------------------------------------------------------------------------------------

--this replaces Overcharging.
--it still owns everyone around you in one shot (breaking them).

LimitBreak=function(part)
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.Anchored=true
	e.CanCollide=false
	e.formFactor="Plate"
	e.Size=Vector3.new(1,.4,1)
	e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	r=script.Parent.RingMesh:clone()
	r.Parent=e
	e.Parent=Torso.Parent
	coroutine.resume(coroutine.create(function(mesh) for l=1, 20 do r.Parent.Transparency=l/20 r.Scale=r.Scale+Vector3.new(25/l,25/l,.02) wait() end r.Parent.Parent=nil end),r)
	PWN={}
	for _,v in pairs(workspace:children()) do
		if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
			if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
				if v~=vPlayer.Character and (v.Torso.Position-vPlayer.Character.Torso.Position).magnitude<=40 then
					table.insert(PWN,v.Torso)
				end
			end
		end
	end
	wait(.45)
	for _,l in pairs(PWN) do
		v=Instance.new("BodyVelocity")
		v.P=3000
		v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		v.velocity=(l.Position-vPlayer.Character.Torso.Position).unit*30+Vector3.new(0,50,0)
		v.Parent=l
		ra=Instance.new("BodyAngularVelocity")
		ra.P=3000
		ra.maxTorque=Vector3.new(5000,5000,5000)*50000
		ra.angularvelocity=Vector3.new(math.random(-20,20),math.random(-30,30),math.random(-20,20))
		ra.Parent=l
		game:GetService("Debris"):AddItem(v,.2)
		game:GetService("Debris"):AddItem(ra,.2)
	end
	wait(.25)
	for _,v in pairs(PWN) do
		coroutine.resume(coroutine.create(Break),v)
	end
end

doStartup=function(mouse)
	Torso=vPlayer.Character.Torso
	Humanoid=vPlayer.Character.Humanoid
	anim=Humanoid:LoadAnimation(script.Parent.darkcorruptstartanim1)
	anim:Play()
	wait(.25)
	for darkowns=1, 17 do
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	coroutine.resume(coroutine.create(LimitBreak),Torso)
	Corrupt=true
	pt=Instance.new("BodyPosition")
	pt.P=5000
	pt.D=700
	pt.maxForce=Vector3.new(0,math.huge,0)
	pt.position=Torso.Position+Vector3.new(0,4,0)
	pt.Parent=Torso
	wait(1.2)
	CurElapsed=0
	CurrentHealth=Humanoid.Health
	LastHealth=CurrentHealth
	CANIM="idle"
	anim:Stop()
	anim:Remove()
	animloaded=Humanoid:LoadAnimation(script.Parent.darkcorruptidleanim)
	animloaded:Play()
	humanoidFunction=Humanoid.Changed:connect(function(Change)
		if Change=="Health" then
			Dif=LastHealth-Humanoid.Health
			if Dif>0 then
				Humanoid.Health=Humanoid.Health+Dif/2
				print("DAMAGE HALVED.")
			else
				Humanoid.Health=LastHealth
				print("NOHEALING")
			end
			CurrentHealth=Humanoid.Health
			LastHealth=CurrentHealth
		end
	end)
	Tilt=Instance.new("BodyGyro")
	Tilt.P=80000
	Tilt.D=3000
	Tilt.maxTorque=Vector3.new(500000000000000000000000,500000000000000000000000,500000000000000000000000)*50000
	Tilt.cframe=Torso.CFrame
	Tilt.Parent=Torso
	Cam=workspace.CurrentCamera
	vPush=Instance.new("BodyVelocity")
	vPush.P=3000
	vPush.maxForce=Vector3.new(math.huge,0,math.huge)
	vPush.velocity=Vector3.new(0,0,0)
	vPush.Parent=Torso
	coroutine.resume(coroutine.create(function()
		while Corrupt==true do
			wait(.085)
			if vPush.P>0 then
			p=Instance.new("Part")
			p.Name="BlastRing"
			p.TopSurface=0
			p.BottomSurface=0
			p.CanCollide=false
			p.Anchored=true
			p.BrickColor=BrickColor:Black()
			p.Size=Vector3.new(1,1,1)
			p.CFrame=CFrame.new(Torso.Position)-Vector3.new(0,6,0)
			p.Parent=workspace
			script.Parent.BlastMesh:clone().Parent=p
			p.BlastMesh.Scale=Vector3.new(2,1,2)
			coroutine.resume(coroutine.create(function(par,int) for lol=1, 10 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(.2+int/5,int/5,.2+int/5) if int==1.2 then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0,.9,0) end par.Transparency=lol/10 par.CFrame=par.CFrame*CFrame.fromEulerAnglesXYZ(0,math.pi/20*lol,0) wait() end par.Parent=nil end),p,.5)
			p=Instance.new("Part")
			p.TopSurface=0
			p.BottomSurface=0
			p.Anchored=true
			p.CanCollide=false
			p.BrickColor=BrickColor:Black()
			p.Size=Vector3.new(1,1,1)
			p.formFactor="Symmetric"
			p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)
			p.Parent=vPlayer.Character
			Instance.new("BlockMesh").Parent=p
			coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,Charge/160)
			p=Instance.new("Part")
			p.TopSurface=0
			p.BottomSurface=0
			p.Anchored=true
			p.CanCollide=false
			p.BrickColor=BrickColor:Black()
			p.Size=Vector3.new(1,1,1)
			p.formFactor="Symmetric"
			p.CFrame=vPlayer.Character["Left Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)
			p.Parent=vPlayer.Character
			Instance.new("BlockMesh").Parent=p
			coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,Charge/160)	
			end
		end
	end))
	while Charge>0 do
		Vel=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
		Vell=(Vel-Vector3.new(0,0,0)).magnitude
		if CanAnim==true then
		if Vell>=10 and Vell<120 then
			if toload~="move" then
				toload="move"
				animloaded:Stop()
				animloaded:Remove()
				animloaded=Humanoid:LoadAnimation(script.Parent.darkcorruptmoveanim)
				animloaded:Play()
				Tilt.Parent=Torso
				vPush.P=3000
				pt.maxForce=Vector3.new(0,math.huge,0)
				vPush.Parent=Torso
Tilt.maxTorque=Vector3.new(500000000000000000000000,500000000000000000000000,500000000000000000000000)*50000
			end
		else
			if toload~="idle" then
				toload="idle"
				animloaded:Stop()
				animloaded:Remove()
				animloaded=Humanoid:LoadAnimation(script.Parent.darkcorruptidleanim)
				animloaded:Play()
				Tilt.Parent=Torso
				vPush.P=3000
				pt.maxForce=Vector3.new(0,math.huge,0)
				vPush.Parent=Torso
Tilt.maxTorque=Vector3.new(500000000000000000000000,500000000000000000000000,500000000000000000000000)*50000
			end			
		end
		else
			toload="nil"
			animloaded:Stop()
			animloaded:Remove()
			Tilt.cframe=CFrame.new(Torso.Position,Torso.Position+Vector3.new(Torso.CFrame.lookVector.x,0,Torso.CFrame.lookVector.z))
			print(">_>")
			vPush.P=0
			vPush.Parent=nil
			pt.maxForce=Vector3.new(0,0,0)
			wait(.5)
		end
		look=Cam.CoordinateFrame
		Tilt.cframe=look
		mmmm=Vector3.new(Torso.CFrame.lookVector.x,0,Torso.CFrame.lookVector.z)
		intt=((mouse.ViewSizeY-mouse.Y)/10+.5)/170
	--CFrame.new(Torso.Position,Torso.Position+mmmm*30)*CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)
		if toload=="idle" then
			Tilt.cframe=Tilt.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/14 - intt,0,0)
		else
			Tilt.cframe=Tilt.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/6 - intt,0,0)
		end
		vii=Torso.CFrame.lookVector*((mouse.ViewSizeY-mouse.Y)/5-20)
		vPush.velocity=Vector3.new(vii.x*1.3,0,vii.z*1.3)
		wait()
	end
	animloaded:Stop()
	animloaded:Remove()
	humanoidFunction:disconnect()
	anim=Humanoid:LoadAnimation(script.Parent.darkcorruptstartanim2)
	anim:Play()
	pt.position=Torso.Position-Vector3.new(0,4,0)
	pt.Parent=nil
	Tilt.Parent=nil
	vPush.Parent=nil
	Corrupt=false
	wait(2)
	anim:Stop()
	anim:Remove()
	p.Parent=nil
end



----Corrupt State Area--------------------------------------------------------------------------------------------------------
----Corrupt State Area--------------------------------------------------------------------------------------------------------
----Corrupt State Area--------------------------------------------------------------------------------------------------------


SHAKE2=function(CHAR)
	if game.Players:GetPlayerFromCharacter(CHAR)~=nil then
		s=script.Shake2:clone()
		s.Disabled=false
		s.Parent=game.Players:GetPlayerFromCharacter(CHAR).Backpack
	end
end
SHAKE3=function(CHAR)
	if game.Players:GetPlayerFromCharacter(CHAR)~=nil then
		s=script.Shake3:clone()
		s.Disabled=false
		s.Parent=game.Players:GetPlayerFromCharacter(CHAR).Backpack
	end
end

DCContact=function(hit,Tors)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		print(Contact)
		if Contact==false then
			Contact=true
			print("CONTINUE!")
		end
		if h.Health>0 then
			if h.Parent==vPlayer.Character then
				return
			end
			h:TakeDamage(5)
			vl=Instance.new("BodyVelocity")
			vl.P=4000
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=Tors.BodyVelocity.velocity/1.1+Vector3.new(0,18,0)
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*5000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))+Tors.RotVelocity*1.1
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.2)
		end
	end
end
GBConnect=function(hit,vel)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Health>0 then
			if h.Parent==vPlayer.Character then
				return
			end
			h:TakeDamage(El/13)
			vl=Instance.new("BodyVelocity")
			vl.P=4000
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=vel*(5*El*2)+Vector3.new(0,7,0)
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*5000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.2)
		end
	end
end



DBExplode=function(D)
	pf=Instance.new("Part")
	pf.TopSurface=0
	pf.BottomSurface=0
	pf.Anchored=false
	pf.CanCollide=false
	pf.Shape="Ball"
	pf.BrickColor=BrickColor:Black()
	pf.Size=Vector3.new(4,4,4)
	pf.formFactor="Symmetric"
	pf.CFrame=D.CFrame
	pf.Parent=workspace
	vp=Instance.new("BodyPosition")
	vp.P=4000
	vp.maxForce=Vector3.new(50000,50000,50000)*5000000000
	vp.position=pf.Position
	vp.Parent=pf
	pf.Touched:connect(function(hit)
		if hit.Parent==nil then
			return
		end
		h=hit.Parent:FindFirstChild("Humanoid")
		t=hit.Parent:FindFirstChild("Torso")
		if h~=nil and t~=nil then
			if h.Parent==vPlayer.Character then
				return
			end
			if Corrupt==false then
				h:TakeDamage(5)
			else
				h:TakeDamage(6)
			end
			vl=Instance.new("BodyVelocity")
			vl.P=4500
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=(pf.Position-t.Position).unit*30+Vector3.new(0,10,0)
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.2)
		end
	end)
	c=pf.CFrame
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=CFrame.new(c.p)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	r.Parent=workspace
	script.Parent.RingMesh:clone().Parent=r
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Bright violet")
	coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(5,5,.1) wait() end par.Parent=nil end),r)
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=CFrame.new(c.p)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	r.Parent=workspace
	script.Parent.RingMesh:clone().Parent=r
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Really black")
	coroutine.resume(coroutine.create(function(par) for i=1, 7 do par.Transparency=i/7 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(12,12,.3) wait() end par.Parent=nil end),r)
	D.Parent=nil
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor:Black()
	p.Size=Vector3.new(1,1,1)
	p.CFrame=r.CFrame*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
	p.CFrame=p.CFrame-Vector3.new(0,5,0)
	p.Parent=workspace
	script.Parent.BlastMesh:clone().Parent=p
	p.BlastMesh.Scale=Vector3.new(5,5,1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 17 do if Corrupt==false then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,1,1) else par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(2,1.3,2) end par.Transparency=lol/17 par.CFrame=par.CFrame*CFrame.new(0,.1,0) wait() end par.Parent=nil end),p)
	s=script.Parent.DBExplode:clone()
	s.Parent=pf
	s:Play()
	for grow=1, 15 do
		if Corrupt==false then
			pf.Size=pf.Size+Vector3.new(3,3,3)
		else
			pf.Size=pf.Size+Vector3.new(4,4,4)
		end
		pf.Transparency=grow/15
		pf.CFrame=c
		wait()
	end
	pf.Parent=nil
end
DBHit=function(hit,DB)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==vPlayer.Character then
			return
		end
		h:TakeDamage(5)
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vl.velocity=DB.BodyVelocity.velocity*1.05+Vector3.new(0,3,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		DBCon:disconnect()
		DBExplode(DB)
	end
end
PunchHit=function(hit)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==vPlayer.Character then
			return
		end
		PAWNSH:disconnect()
		if Corrupt==false then
			h:TakeDamage(40)
			vl=Instance.new("BodyVelocity")
			vl.P=4500
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=vPlayer.Character.Torso.Velocity/2+Vector3.new(0,15,0)
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.4)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.5)
		else
			h:TakeDamage(75)
			vl=Instance.new("BodyVelocity")
			vl.P=4500
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=vPlayer.Character.Torso.Velocity/1.5+Vector3.new(0,10,0)
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.3)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))*2
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.5)
		end
	end
end
SmashHit=function(hit)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==vPlayer.Character then
			return
		end
	s=script.Parent.DSHit:clone()
	s.Parent=hit
	s:Play()
	game:GetService("Debris"):AddItem(s,2)
			LOLOHAX:disconnect()
			h:TakeDamage(40)
			vl=Instance.new("BodyVelocity")
			vl.P=4500
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=vPlayer.Character.Torso.Velocity/2+Vector3.new(0,2,0)+vPlayer.Character.Torso.CFrame.lookVector*20
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.2)
	end
end
Land=function(hit)
	if hit.Parent==nil or hit.CanCollide==false then
		return
	end
	if hit.Parent:FindFirstChild("Humanoid")==true then
		return
	end
	nCont:disconnect()
	Contact=true
	PWN={}
	for _,v in pairs(workspace:children()) do
		if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
			if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
				if v~=vPlayer.Character and (v.Torso.Position-vPlayer.Character.Torso.Position).magnitude<=50 then
					table.insert(PWN,v.Torso)
				end
			end
		end
	end
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor:Black()
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(Torso.Parent.Head.CFrame.p)-Vector3.new(0,4,0)
	p.Parent=workspace
	script.Parent.BlastMesh:clone().Parent=p
	p.BlastMesh.Scale=Vector3.new(2,3,2)
	if Corrupt==false then
		coroutine.resume(coroutine.create(function(par) for lol=1, 10 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(2,.4,2) par.Transparency=lol*.1 par.CFrame=par.CFrame*CFrame.new(0,.2,0) wait() end par.Parent=nil end),p)
	else
		coroutine.resume(coroutine.create(function(par) for lol=1, 10 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(4,.7,4) par.Transparency=lol*.1 par.CFrame=par.CFrame*CFrame.new(0,.35,0) wait() end par.Parent=nil end),p)
	end

	for _,t in pairs(PWN) do
		if Corrupt==false then
			Mag=(vPlayer.Character.Torso.Position-t.Position).magnitude/10
			t.Parent.Humanoid:TakeDamage(2)
		else
			Mag=(vPlayer.Character.Torso.Position-t.Position).magnitude/7
			t.Parent.Humanoid:TakeDamage(10)
		end
		vl=Instance.new("BodyVelocity")
		vl.P=4000
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vl.velocity=Vector3.new(0,math.random(40,60),0)+(t.Position-vPlayer.Character.Torso.Position).unit*(30/Mag)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*5000
		rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)	
	end
end
doArms=function(Com)
	if Com==true then
		Torso=vPlayer.Character.Torso
		RA=Torso:FindFirstChild("Right Shoulder")
		if RA==nil then
			return
		end
		LA=Torso:FindFirstChild("Left Shoulder")
		if LA==nil then
			return
		end
		RightS=Instance.new("Motor")
		RightS.Name="Right_Shoulder"
		RightS.C0=RA.C0
		RightS.C1=RA.C1
		RightS.Part0=RA.Part0
		RightS.Part1=RA.Part1
		RightS.MaxVelocity=.35
		RightS.Parent=Torso
		LeftS=Instance.new("Motor")
		LeftS.Name="Left_Shoulder"
		LeftS.C0=LA.C0
		LeftS.C1=LA.C1
		LeftS.Part0=LA.Part0
		LeftS.Part1=LA.Part1
		LeftS.MaxVelocity=.35
		LeftS.Parent=Torso
		RA.Parent=nil
		LA.Parent=nil
		RA.Part1=nil
		LA.Part1=nil
	else
		RightS.Part1=nil
		LeftS.Part1=nil
		RightS.Parent=nil
		LeftS.Parent=nil
		RA.Parent=Torso
		LA.Parent=Torso
		RA.Part1=nil
		LA.Part1=nil
		RA.Part1=vPlayer.Character["Right Arm"]
		LA.Part1=vPlayer.Character["Left Arm"]
		wait(.2)
		RA.Part0=Torso
		LA.Part0=Torso
		RA.Part1=vPlayer.Character["Right Arm"]
		LA.Part1=vPlayer.Character["Left Arm"]
	end
end

--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------

--these moves require extreme power. Only jj363 can harness enough dark energy to perform these.

SPIKEHIT=function(hit,p,BOOST)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent~=vPlayer.Character and hit.Parent:FindFirstChild("Torso")~=nil then
		if h.Health>0 then
			h:TakeDamage(3*BOOST)
			vl=Instance.new("BodyVelocity")
			vl.P=4000
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=Vector3.new(0,(BOOST*20),0)+(hit.Parent.Torso.Position-p).unit*(50/BOOST)
			vl.Parent=hit.Parent.Torso
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*5000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=hit.Parent.Torso
			game:GetService("Debris"):AddItem(rl,.2)
			ss=script.Parent.DCHHIT:clone()
			ss.Parent=hit.Parent.Torso
			ss:Play()
		end
	end
end

MakeSpike=function(Location,PO,b)
	Spike=Instance.new("Part")
	Spike.BrickColor=BrickColor.new("Really black")
	Spike.CanCollide=false
	script.Parent.SpikeMesh:clone().Parent=Spike
	Spike.formFactor="Symmetric"
	Spike.Size=Vector3.new(5+b*3,11+b*4,5+b*3)
	Spike.CFrame=CFrame.new(Location-Vector3.new(0,3*b*1.5,0))
	Spike.SpikeMesh.Scale=(Spike.SpikeMesh.Scale*(b/2))*1.5
	v=Instance.new("BodyPosition")
	v.P=4000
	v.maxForce=Vector3.new(5000,math.huge,5000)
	v.position=Spike.Position+Vector3.new(0,28+b*18,0)
	v.Parent=Spike
	Spike.Parent=workspace
	coroutine.resume(coroutine.create(function(BANANA) for i=1, 12 do BANANA.SpikeMesh.Scale=BANANA.SpikeMesh.Scale-Vector3.new(.6,0,.6) BANANA.Transparency=i/12 wait() end BANANA.Parent=nil end),Spike)
	Spike.Touched:connect(function(hit) SPIKEHIT(hit,PO,b) end)
	ss=script.Parent.LOL:clone()
	ss.Pitch=.8/b
	ss.Parent=Spike
	ss:Play()
end

DarkChaser=function()
	Torso=vPlayer.Character:FindFirstChild("Torso")
	if Torso.Velocity.y>5 or Torso.Velocity.y<-5 then
		return
	end
	if Charge>=80 then
		Charge=Charge-80
	else
		return
	end
	Pos=Torso.Position
	Dir=Torso.CFrame.lookVector
	Start=Torso.Position+Dir*7
	b=1
	for t=1, 6 do
	for i=1, 6 do
		if t==6 then
			b=2
		end
		coroutine.resume(coroutine.create(MakeSpike),Pos+Vector3.new(math.cos(i)*(6*t),0,math.sin(i)*(6*t)),Pos,b)
	end
		wait(.1)
	end
end

DarkSmash=function()
	if Charge>=70 then
		Charge=Charge-70
	else
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Scale=Vector3.new(2,2,.1)
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 5 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,.7,0) m.Scale=m.Scale+Vector3.new(1,.3,1) m.Parent.Transparency=i/6 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	pu=Instance.new("BodyVelocity")
	pu.maxForce=Vector3.new(math.huge,0,math.huge)
	pu.velocity=Torso.CFrame.lookVector*3
	pu.Parent=Torso
	wait(.1)
	pu.Parent=nil
	return
	end
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Torso.CFrame.lookVector*3
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Scale=Vector3.new(2,2,.1)
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 6 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,.8,0) m.Scale=m.Scale+Vector3.new(1.4,.35,1.4) m.Parent.Transparency=i/6 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	pu=Instance.new("BodyVelocity")
	pu.P=9000
	pu.maxForce=Vector3.new(math.huge,0,math.huge)
	pu.velocity=Torso.CFrame.lookVector*70
	pu.Parent=Torso
	g=Instance.new("BodyGyro")
	g.Parent=Torso
	for forward=1, 6 do
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="Effect" then
			n=v:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Dark stone grey")
			n.CFrame=n.CFrame+Torso.CFrame.lookVector*(2+forward)
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne,m) for i=1, m do ne.Transparency=i/m wait() end ne.Parent=nil end),n,5+forward)
		elseif v.className=="Hat" then
			n=v.Handle:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Mesh.VertexColor=Vector3.new(0,0,0)
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Dark stone grey")
			n.CFrame=n.CFrame+Torso.CFrame.lookVector*(2+forward)
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne,m) for i=1, m do ne.Transparency=i/m wait() end ne.Parent=nil end),n,5+forward)
		end
	end
	end
	sgb=script.Parent.DS:clone()
	sgb.Parent=Torso
	sgb:Play()
	Dist=Torso.CFrame.lookVector*12.5
	Pos=Torso.Position+Dist
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,0,0)+Dist
	r.Parent=workspace
	script.Parent.RingMesh:clone().Parent=r
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Really black")
	coroutine.resume(coroutine.create(function(par) for i=1, 8 do par.Transparency=i/8 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(1.5,1.5,.3) par.CFrame=par.CFrame*CFrame.new(0,0,.4) wait() end par.Parent=nil end),r)
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Dist
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Scale=Vector3.new(2,2,.1)
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 5 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,.3,0) m.Scale=m.Scale+Vector3.new(1,.6,1) m.Parent.Transparency=i/5 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	
	PWN={}
	for _,v in pairs(workspace:children()) do
		if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil and v~=Torso.Parent and v:FindFirstChild("Torso")~=nil then
			if (v.Torso.Position-Torso.Position).magnitude<=13 then
				vv=Instance.new("BodyVelocity")
				vv.P=800
				vv.maxForce=Vector3.new(5000000,0,5000000)
				vv.velocity=(v.Torso.Position-Torso.Position).unit*2+Torso.CFrame.lookVector*4
				vv.Parent=v.Torso
				game:GetService("Debris"):AddItem(vv,.2)
				vv=Instance.new("BodyAngularVelocity")
				vv.P=400
				vv.maxTorque=Vector3.new(50000,50000,50000)
				vv.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				vv.Parent=v.Torso
				game:GetService("Debris"):AddItem(vv,.2)
				v.Humanoid:TakeDamage(3)
				table.insert(PWN,v)
			end
		end
	end
	for _,v in pairs(PWN) do
		if game.Players:GetPlayerFromCharacter(v)~=nil then
			s=script.Shake4:clone()
			s.Disabled=false
			s.Parent=v
		end
	end
	s=script.Shake4:clone()
	s.Disabled=false
	s.Parent=Torso.Parent
	connector=Instance.new("Part")
	connector.Name="HITSPACE"
	connector.formFactor="Symmetric"
	connector.Size=Vector3.new(4,5,2)
	connector.CanCollide=false
	connector.CFrame=Torso.CFrame
	connector.Transparency=1
	connector.Parent=workspace
	v=Instance.new("BodyVelocity")
	v.P=9000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Torso.CFrame.lookVector*100
	v.Parent=connector
	LOLOHAX=connector.Touched:connect(function(hit) SmashHit(hit) end)
	game:GetService("Debris"):AddItem(connector,.2)

	wait(.125)
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,0,0)+Dist-Torso.CFrame.lookVector*3
	r.Parent=workspace
	script.Parent.RingMesh:clone().Parent=r
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Lavender")
	coroutine.resume(coroutine.create(function(par) for i=1, 7 do par.Transparency=i/7 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(1.3,1.3,.1) par.CFrame=par.CFrame*CFrame.new(0,0,.3) wait() end par.Parent=nil end),r)
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Scale=Vector3.new(1,1,.1)
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 7 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,1.2,0) m.Scale=m.Scale+Vector3.new(1.2,.1,1.2) m.Parent.Transparency=i/7 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	pu.Parent=nil
	wait(.2)
	g.Parent=nil
	sgb.Parent=nil
end


DPunisherGrab=function(hit)
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	print(hit.Parent.Name)
	if h~=nil and t~=nil then
		if h.Health<1 or h.Parent==vPlayer.Character then
			return
		end
		vPlayer.Character.Torso.BodyVelocityM.velocity=Vector3.new(0,0,0)
		Grabbed=t
		DPG:disconnect()
	end
end

DarkDPunisher=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	doArms(true)
	RightS.MaxVelocity=.3
	LeftS.MaxVelocity=.2
	RightS.DesiredAngle=-1.5
	LeftS.DesiredAngle=-.6
	wait(.5)
	RightS.MaxVelocity=1
	LeftS.MaxVelocity=.4
	RightS.DesiredAngle=1.6
	LeftS.DesiredAngle=1.2
	v=Instance.new("BodyVelocity")
	v.Name="BodyVelocityM"
	v.P=3000
	v.maxForce=Vector3.new(math.huge,50000000000000000000,math.huge)
	v.velocity=Torso.CFrame.lookVector*160
	if Corrupt==true then v.velocity=Torso.CFrame.lookVector*200 end
	v.Parent=Torso
	g=Instance.new("BodyGyro")
	g.P=95000
	g.D=100
	g.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
	g.cframe=Torso.CFrame
	g.Parent=Torso
	Grabbed=nil
	DidGrab=false
	sa=Instance.new("Part")
	sa.Name="StrikeArea"
	sa.TopSurface=0
	sa.BottomSurface=0
	sa.CFrame=Torso.Parent.Head.CFrame
	sa.formFactor="Symmetric"
	sa.Transparency=1
	sa.CanCollide=false
	sa.Size=Vector3.new(2,2,2)
	sa.Parent=vPlayer.Character
	ww=Instance.new("Weld")
	ww.Part0=vPlayer.Character["Right Arm"]
	ww.Part1=sa
	ww.Parent=sa
	ww.C0=CFrame.new(0,-1.3,0)
	DPG=sa.Touched:connect(DPunisherGrab)
	for i=1, 7 do
		if Grabbed~=nil then
			DidGrab=true
			break
		end
		wait()
	end
	if DidGrab==false or Charge<60 then
		print("No grab.")
		v.Parent=nil
	else
		Charge=Charge-60
		v.Parent=nil
		pt=Instance.new("BodyPosition")
		pt.P=5000
		pt.maxForce=Vector3.new(0,500000000000000000000000000,0)
		pt.position=Torso.Position
		pt.Parent=Torso
		game:GetService("Debris"):AddItem(pt,4)
		Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(-math.pi/7,0,0)
		g.cframe=CFrame.new(Torso.Position,Torso.Position+Torso.CFrame.lookVector*10)
		print(Grabbed)
		w=Instance.new("Weld")
		w.Part0=Torso
		w.Part1=Grabbed
		w.C0=CFrame.new(1.5,1.75,-1.45)*CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi,0)
		w.Parent=vPlayer.Character["Torso"]
		RightS.MaxVelocity=.2
		RightS.CurrentAngle=1.6
		RightS.DesiredAngle=2.4
		LeftS.DesiredAngle=.2
		wait(.25)
		s=script.Parent.DBC:clone()
		s.Pitch=.375
		s.Parent=Torso
		s:Play()
		for darkowns=1, 12 do
			s.Pitch=s.Pitch+.075
			Grabbed.Parent.Humanoid.Health=Grabbed.Parent.Humanoid.Health-1.5
			p=Instance.new("Part")
			p.TopSurface=0
			p.BottomSurface=0
			p.Anchored=true
			p.CanCollide=false
			p.BrickColor=BrickColor:Black()
			p.Size=Vector3.new(1,1,1)
			p.formFactor="Symmetric"
			p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.4,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
			p.Parent=vPlayer.Character
			Instance.new("BlockMesh").Parent=p
			coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns/1.5)
			wait(.05)
		end
		s:Stop()
		s.Parent=nil
		s=script.Parent.DBExplode:clone()
		s.Pitch=.425
		s.Parent=Grabbed
		s:Play()
		ww.C0=CFrame.new(0,-2,0)
		p=Instance.new("Part")
		p.Name="BlastRing"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.Anchored=true
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
		p.Parent=workspace
		script.Parent.BlastMesh:clone().Parent=p
		p.BlastMesh.Scale=Vector3.new(1,1,1)
		coroutine.resume(coroutine.create(function(par) for lol=1, 11 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(.6,1.8,.6) par.Transparency=lol/11 par.CFrame=par.CFrame*CFrame.new(0,1,0) wait() end par.Parent=nil end),p)
		coroutine.resume(coroutine.create(DCCO2),sa,4)
		coroutine.resume(coroutine.create(DCCO3),sa,8)
		r=Instance.new("Part")
		r.Anchored=true
		r.Name="Ring"
		r.CanCollide=false
		r.TopSurface=0
		r.BottomSurface=0
		r.CFrame=sa.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
		r.Parent=workspace
		script.Parent.RingMesh:clone().Parent=r
		r.RingMesh.Scale=Vector3.new(3,3,3)
		r.BrickColor=BrickColor.new("Really black")
		coroutine.resume(coroutine.create(function(par) for i=1, 15 do par.Transparency=i/15 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(1.5,1.5,.5) par.CFrame=par.CFrame*CFrame.new(0,0,.4) wait() end par.Parent=nil end),r)
		RightS.DesiredAngle=RightS.DesiredAngle+.5
		Dir=(vPlayer.Character["Right Arm"].Position-(( vPlayer.Character["Right Arm"].CFrame * CFrame.new(0,50,0) ).p)).unit
		vlo=Instance.new("BodyVelocity")
		vlo.Name="BodyVelocity"
		vlo.P=4500
		vlo.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vlo.velocity=Dir*20
		if Corrupt==true then vlo.velocity=vlo.velocity*5-Vector3.new(0,60,0) end
		vlo.Parent=Grabbed
		game:GetService("Debris"):AddItem(vlo,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		rl.Parent=Grabbed
		game:GetService("Debris"):AddItem(rl,.2)
		Grabbed.Parent.Humanoid.Health=Grabbed.Parent.Humanoid.Health-70
		p.Parent=nil
		w.Parent=nil
		game:GetService("Debris"):AddItem(s,2)
		pt.Parent=nil
		coroutine.resume(coroutine.create(DCCO3),Grabbed,6)
		wait(.6)
		Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(math.pi/7,0,0)
	end
	wait(.3)
	sa.Parent=nil
	g.Parent=nil
	doArms(false)
end

DarkHide=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=20 then
		Charge=Charge-20
	else
		return
	end
	doArms(true)
	OR=RA.C0
	RightS.C0=OR*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.2,-.5,0)
	RightS.DesiredAngle=2
	LeftS.DesiredAngle=.3
	RightS.MaxVelocity=.2
	LeftS.MaxVelocity=.1
	s=script.Parent.DBC:clone()
	s.Pitch=.9
	s.Parent=Torso
	s:Play()
	for darkowns=1, 12 do
		s.Pitch=s.Pitch-.06
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	for _,v in pairs(vPlayer.Character:children()) do
		if v.className=="Part" then
			coroutine.resume(coroutine.create(function(PAR) for i=1, 5 do PAR.Transparency=i*.2 wait(.02) end end),v)
		elseif v.className=="Hat" and v:FindFirstChild("Handle")~=nil then
			coroutine.resume(coroutine.create(function(PAR) for i=1, 5 do PAR.Transparency=i*.2 wait(.02) end end),v.Handle)
		end
	end
	for darkowns=1, 12 do
		s.Pitch=s.Pitch-.03
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	RightS.DesiredAngle=-1
	LeftS.DesiredAngle=1
	RightS.MaxVelocity=.4
	LeftS.MaxVelocity=.4
	s:Stop()
	s.Parent=nil
	wait(1)
	doArms(false)
	wait(10)
	for _,v in pairs(vPlayer.Character:children()) do
		if v.className=="Part" then
			coroutine.resume(coroutine.create(function(PAR) for i=1, 5 do PAR.Transparency=PAR.Transparency-.2 wait(.02) end PAR.Transparency=0 end),v)
		elseif v.className=="Hat" and v:FindFirstChild("Handle")~=nil then
			coroutine.resume(coroutine.create(function(PAR) for i=1, 5 do PAR.Transparency=PAR.Transparency-.2 wait(.02) end PAR.Transparency=0 end),v.Handle)
		end
	end
end

DoTornado=function(nVel,Pwn)
	t=Instance.new("Part")
	t.BrickColor=BrickColor.new("Black")
	g=Instance.new("BodyGyro")
	g.P=5000
	g.D=50
	g.cframe=CFrame.new(0,0,0)
	g.maxTorque=Vector3.new(5000000000,0,5000000000)*50000000000
	g.Parent=t
	t.formFactor="Symmetric"
	t.Size=Vector3.new(1,1,1)
	t.CanCollide=false
	t.CFrame=CFrame.new(vPlayer.Character.Torso.CFrame.p+vPlayer.Character.Torso.CFrame.lookVector*5+Vector3.new(0,3,0))*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	vm=Instance.new("BodyVelocity")
	vm.P=3000
	vm.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	vm.velocity=vPlayer.Character.Torso.CFrame.lookVector*40+Vector3.new(math.random(-5,5),0,math.random(-5,5))+nVel
	vm.Parent=t
	vl=Instance.new("BodyPosition")
	vl.P=3000
	vl.maxForce=Vector3.new(0,5000000,0)
	vl.position=t.Position
	vl.Parent=t
	r=Instance.new("BodyAngularVelocity")
	r.P=1450
	r.maxTorque=Vector3.new(0,50000000000000000000000000,0)*5000
	r.angularvelocity=Vector3.new(0,250,0)
	r.Parent=t
	s=Instance.new("Sound")
	s.Volume=1
	s.Pitch=.4
	s.SoundId="http://www.roblox.com/asset?id=2101157"
	s.Parent=t
	s:Play()
	script.Mesh:clone().Parent=t
	t.Name="'Nado"
	t.Parent=workspace
	s=script.TORNADO:clone()
	s.VP.Value=vPlayer
	s.Disabled=false
	s.Parent=t
	s.VP.Value=vPlayer
end

DarkStorm=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=50 then
		Charge=Charge-50
	else
		return
	end
	doArms(true)
	OR=RA.C0
	RightS.C0=OR*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.2,-.5,0)
	RightS.DesiredAngle=2
	LeftS.DesiredAngle=.3
	RightS.MaxVelocity=.2
	LeftS.MaxVelocity=.1
	ss=script.Parent.DBC:clone()
	ss.Pitch=.7
	ss.Parent=Torso
	ss:Play()
	lolocaik=16
	if Corrupt==true then lolocaik=8 end
	for darkowns=1, lolocaik do
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	Pos=vPlayer.Character.Torso.CFrame*CFrame.new(3,0,0)
	nDir=(vPlayer.Character.Torso.Position-Pos.p).unit*30
	coroutine.resume(coroutine.create(DoTornado),nDir,PWN)
	Pos=vPlayer.Character.Torso.CFrame*CFrame.new(3,0,0)
	nDir=(vPlayer.Character.Torso.Position-Pos.p).unit*-30
	coroutine.resume(coroutine.create(DoTornado),nDir,PWN)
	coroutine.resume(coroutine.create(DoTornado),Vector3.new(0,0,0),PWN)
	Pos=vPlayer.Character.Torso.CFrame*CFrame.new(3,0,0)
	nDir=(vPlayer.Character.Torso.Position-Pos.p).unit*60
	coroutine.resume(coroutine.create(DoTornado),nDir,PWN)
	Pos=vPlayer.Character.Torso.CFrame*CFrame.new(3,0,0)
	nDir=(vPlayer.Character.Torso.Position-Pos.p).unit*-60
	coroutine.resume(coroutine.create(DoTornado),nDir,PWN)

	RightS.DesiredAngle=-1
	LeftS.DesiredAngle=1
	RightS.MaxVelocity=.4
	LeftS.MaxVelocity=.4
	ss:Stop()
	ss.Parent=nil
	wait(.4)
	doArms(false)
end

DarkWave=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=50 then
		Charge=Charge-50
	else
		return
	end
	doArms(true)
	OR=RA.C0
	RightS.C0=OR*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.2,-.5,0)
	RightS.DesiredAngle=2
	LeftS.DesiredAngle=.3
	RightS.MaxVelocity=.2
	LeftS.MaxVelocity=.1
	ss=script.Parent.DBC:clone()
	ss.Pitch=.8
	ss.Parent=Torso
	ss:Play()
	for darkowns=1, 22 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch-.02
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	RightS.DesiredAngle=-1
	LeftS.DesiredAngle=1
	RightS.MaxVelocity=.4
	LeftS.MaxVelocity=.4
	ss:Stop()
	ss.Parent=nil
	Dir=Torso.CFrame.lookVector
	coroutine.resume(coroutine.create(function(Dir)
	for i=1, 12 do
		p=Instance.new("Part")
		p.Name="BlastRing"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.Anchored=true
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,0,0)+Dir*(9*i+i)-Vector3.new(0,4,0)
		p.Parent=workspace
		script.Parent.BlastMesh:clone().Parent=p
		p.BlastMesh.Scale=Vector3.new(1,.5,1)
		coroutine.resume(coroutine.create(function(par,int) for lol=1, 10 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(.5+int,.6+int,.5+int) if int==1.2 then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0,.9,0) end par.Transparency=lol/10 par.CFrame=par.CFrame*CFrame.new(0,.4+int/3,0) wait() end par.Parent=nil end),p,i*.1)
		PWN={}
		for _,v in pairs(workspace:children()) do
			if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
				if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
					if v~=vPlayer.Character and (v.Torso.Position-p.Position).magnitude<=7+(i) then
						table.insert(PWN,v.Torso)
					end
				end
			end
		end
		for _,t in pairs(PWN) do
			SHAKE2(t.Parent)
			t.Parent.Humanoid:TakeDamage(5)
			Mag=(p.Position-t.Position).magnitude/10
			t.Parent.Humanoid:TakeDamage(2)
			vl=Instance.new("BodyVelocity")
			vl.P=4000
			vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			vl.velocity=Vector3.new(0,math.random(10,15),0)+(t.Position-p.Position).unit*(5/Mag)+Dir*(32)
			if i==12 then
				vl.velocity=vl.velocity+Vector3.new(0,40,0)+(t.Position-p.Position).unit*(20/Mag)
				t.Parent.Humanoid:TakeDamage(5)
				SHAKE3(t.Parent)
			end
			vl.Parent=t
			game:GetService("Debris"):AddItem(vl,.2)
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*5000
			rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			rl.Parent=t
			game:GetService("Debris"):AddItem(rl,.2)	
		end

		wait(.1)
	end
	end),Dir)
	wait(.4)
	doArms(false)
end

GBKEYDOWN=false
DarkGBuster=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=150 then
		Charge=Charge-150
	else
		return
	end
	doArms(true)
	VDIR=Torso.CFrame.lookVector
	OR=RA.C0
	RightS.C0=OR*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.2,-.5,0)
	RightS.DesiredAngle=2
	LeftS.DesiredAngle=.3
	RightS.MaxVelocity=.2
	LeftS.MaxVelocity=.1
	ss=script.Parent.DBC:clone()
	ss.Pitch=.3
	ss.Parent=Torso
	ss:Play()
	Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/2)
	g=Instance.new("BodyGyro")
	g.P=20000
	g.D=800
	g.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
	g.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
	g.Parent=Torso
	El=15
	GBKEYDOWN=true
	while El<60 and GBKEYDOWN==true do
		El=El+1
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.006
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,El)
		wait(.04)
	end
	RightS.MaxVelocity=.4
	RightS.DesiredAngle=0
	LeftS.DesiredAngle=1
	RightS.MaxVelocity=.8
	LeftS.MaxVelocity=.4
	for darkowns=1, 4 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.005
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/70,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,40)
		wait(.04)
	end
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor:Black()
	p.Size=Vector3.new(1,1,1)
	p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	p.Parent=workspace
	script.Parent.BlastMesh:clone().Parent=p
	p.BlastMesh.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 11 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(.6,1.8,.6) par.Transparency=lol/11 par.CFrame=par.CFrame*CFrame.new(0,1,0) wait() end par.Parent=nil end),p)
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,3,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	r.Parent=workspace
	script.Parent.RingMesh:clone().Parent=r
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Really black")
	coroutine.resume(coroutine.create(function(par) for i=1, 15 do par.Transparency=i/15 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(1.5,1.5,.5) par.CFrame=par.CFrame*CFrame.new(0,0,.4) wait() end par.Parent=nil end),r)
	bStart=Instance.new("Part")
	bStart.Name="BlastStart"
	bStart.TopSurface=0
	bStart.BottomSurface=0
	bStart.BrickColor=BrickColor.new("Really black")
	bStart.formFactor="Symmetric"
	bStart.Size=Vector3.new(El/2,El/2,30)
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Scale=Vector3.new(1,1,1)
	m.Parent=bStart
	bStart.Anchored=false
	bStart.CanCollide=false
	bStart.CFrame=Torso.CFrame*CFrame.new(17,0,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
	pv=Instance.new("BodyPosition")
	pv.P=2000
	pv.D=20
	pv.maxForce=Vector3.new(0,500000000000000000000000000000000000000000000000,0)
	pv.position=bStart.Position
	pv.Parent=bStart
	bStart.Parent=workspace
	b=Instance.new("Part")
	b.Name="BlastStart"
	b.TopSurface=0
	b.BottomSurface=0
	b.BrickColor=BrickColor.new("Bright violet")
	b.formFactor="Symmetric"
	b.Size=Vector3.new(El/2,200,El/2)
	m=Instance.new("CylinderMesh")
	m.Parent=b
	b.Anchored=false
	b.CanCollide=false
	b.CFrame=bStart.CFrame*CFrame.new(0,0,217)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	pv2=Instance.new("BodyPosition")
	pv2.P=2000
	pv2.D=20
	pv2.maxForce=Vector3.new(0,50000000000000000000000000000000000000000000000,0)
	pv2.position=b.Position
	pv2.Parent=b
	b.Parent=workspace
	ss:Stop()
	ss.Parent=nil
	be=Instance.new("Part")
	be.Name="BlastStart"
	be.TopSurface=0
	be.BottomSurface=0
	be.BrickColor=BrickColor.new("Dark stone grey")
	be.formFactor="Symmetric"
	be.Size=Vector3.new(El/2,El/2,30)
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Scale=Vector3.new(1,1,1)
	m.Parent=be
	be.Anchored=false
	be.CanCollide=false
	be.CFrame=bStart.CFrame*CFrame.new(0,0,210)
	pv3=Instance.new("BodyPosition")
	pv3.P=2000
	pv3.D=20
	pv3.maxForce=Vector3.new(0,5000000000000000000000000000000000000000,0)
	pv3.position=be.Position
	pv3.Parent=be
	be.Parent=workspace
	pv=Instance.new("BodyPosition")
	pv.P=2000
	pv.D=20
	pv.maxForce=Vector3.new(0,5000000000000000,0)
	pv.position=bStart.Position
	pv.Parent=bStart
	bStart.Parent=workspace
	PUSH=Instance.new("BodyVelocity")
	PUSH.maxForce=Vector3.new(math.huge,0,math.huge)
	PUSH.velocity=-VDIR*(El/10)
	PUSH.Parent=Torso
	for s=1, 4 do
		script.Parent["GB"..tostring(s)]:Play()
	end
	coroutine.resume(coroutine.create(function()
		for i=1, 50 do
			bStart.CFrame=Torso.CFrame*CFrame.new(17,0,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			bStart.CFrame=bStart.CFrame*CFrame.new(math.random(-30,30)/40,math.random(-30,30)/40,0)
			b.CFrame=bStart.CFrame*CFrame.new(0,0,100)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
			be.CFrame=bStart.CFrame*CFrame.new(0,0,200)
			pv.position=bStart.Position
			pv2.position=b.Position
			pv3.position=be.Position
			wait()
		end
	end))
	for i=1, 4 do
		wait(.15)
		p=Instance.new("Part")
		p.Name="BlastRing"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.Anchored=true
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-3,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
		p.Parent=workspace
		script.Parent.BlastMesh:clone().Parent=p
		p.BlastMesh.Scale=Vector3.new(1,1,1)
		coroutine.resume(coroutine.create(function(par) for lol=1, 11 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,.8,1) par.Transparency=lol/11 par.CFrame=par.CFrame*CFrame.new(0,.7,0) wait() end par.Parent=nil end),p)
		r=Instance.new("Part")
		r.Anchored=true
		r.Name="Ring"
		r.CanCollide=false
		r.TopSurface=0
		r.BottomSurface=0
		r.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-i,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
		r.Parent=workspace
		script.Parent.RingMesh:clone().Parent=r
		r.RingMesh.Scale=Vector3.new(3,3,3)
		r.BrickColor=BrickColor.new("Dark stone grey")
		coroutine.resume(coroutine.create(function(par) for i=1, 11 do par.Transparency=i/11 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(1,1,.25) par.CFrame=par.CFrame*CFrame.new(0,0,-.4) wait() end par.Parent=nil end),r)	
		pv.position=bStart.Position
		pv2.position=b.Position
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,130,5)
		connector.CanCollide=false
		connector.CFrame=b.CFrame-Vector3.new(0,7.5,0)
		push=Instance.new("BodyPosition")
		push.P=3000
		push.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		push.position=connector.Position+Vector3.new(0,15,0)
		push.Parent=connector
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		game:GetService("Debris"):AddItem(connector,1)
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,211,1)
		connector.CanCollide=false
		connector.CFrame=b.CFrame+Vector3.new(0,5,0)
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		game:GetService("Debris"):AddItem(connector,1)
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,El/2,1)
		connector.CanCollide=false
		connector.CFrame=bStart.CFrame
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		v=Instance.new("BodyVelocity")
		v.P=2000
		v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		v.velocity=VDIR*400
		v.Parent=connector
		game:GetService("Debris"):AddItem(connector,.7)
	end
	for i=1, 7 do
		wait(.15)
		p=Instance.new("Part")
		p.Name="BlastRing"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.Anchored=true
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-3,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
		p.Parent=workspace
		script.Parent.BlastMesh:clone().Parent=p
		p.BlastMesh.Scale=Vector3.new(1,1,1)
		coroutine.resume(coroutine.create(function(par) for lol=1, 11 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,.8,1) par.Transparency=lol/11 par.CFrame=par.CFrame*CFrame.new(0,.7,0) wait() end par.Parent=nil end),p)	
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,211,5)
		connector.CanCollide=false
		connector.CFrame=b.CFrame-Vector3.new(0,5,0)
		push=Instance.new("BodyPosition")
		push.P=5000
		push.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		push.position=connector.Position+Vector3.new(0,15,0)
		push.Parent=connector
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		game:GetService("Debris"):AddItem(connector,.5)
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,211,8)
		connector.CanCollide=false
		connector.CFrame=b.CFrame+Vector3.new(0,7.5,0)
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		game:GetService("Debris"):AddItem(connector,1)
		connector=Instance.new("Part")
		connector.Name="HITSPACE"
		connector.formFactor="Symmetric"
		connector.Size=Vector3.new(El/2,El/2,1)
		connector.CanCollide=false
		connector.CFrame=bStart.CFrame
		connector.Transparency=1
		connector.Parent=workspace
		connector.Touched:connect(function(hit) GBConnect(hit,VDIR) end)
		v=Instance.new("BodyVelocity")
		v.P=2000
		v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		v.velocity=VDIR*300
		v.Parent=connector
		game:GetService("Debris"):AddItem(connector,.7)
	end
	bStart.Parent=nil
	b.Parent=nil
	be.Parent=nil
	PUSH.Parent=nil
	RightS.DesiredAngle=2
	RightS.MaxVelocity=.6
	wait(1)
	LeftS.DesiredAngle=0
	LeftS.MaxVelocity=.4
	for i=1, 10 do
		wait()
		Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/20)
	end
	g.Parent=nil
	doArms(false)
end


DarkCurse=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=50 then
		Charge=Charge-50
	else
		return
	end
	doArms(true)
	VDIR=Torso.CFrame.lookVector
	OR=RA.C0
	RightS.DesiredAngle=-.9
	LeftS.DesiredAngle=-.3
	RightS.MaxVelocity=.3
	LeftS.MaxVelocity=.1
	ss=script.Parent.DBC:clone()
	ss.Pitch=.3
	ss.Parent=Torso
	ss:Play()
	for darkowns=1, 15 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.007
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/70,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns/2)
		wait(.04)
	end
	RightS.DesiredAngle=1.6
	for darkowns=1, 17 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.003
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/70,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns/5+7.5)
		wait(.04)
	end
	ss:Stop()
	ss.Parent=nil
	ss=script.Parent.DBExplode:clone()
	ss.Parent=Torso
	ss.Pitch=1
	ss:Play()
	game:GetService("Debris"):AddItem(ss,2)
	LeftS.DesiredAngle=.3
	coroutine.resume(coroutine.create(DCCO2),p,1)
	coroutine.resume(coroutine.create(DCCO3),p,3)
		md=12
		if Corrupt==true then md=17 end
		PWN={}
		for _,v in pairs(workspace:children()) do
			if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
				if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
					if v~=vPlayer.Character and (v.Torso.Position-p.Position).magnitude<=md then
						table.insert(PWN,v.Torso)
					end
				end
			end
		end
		for _,t in pairs(PWN) do
			SHAKE3(t.Parent)
			Num=0
			for __,vv in pairs(t.Parent:children()) do
				if vv.Name=="DC" then
					Num=Num+1
				end
			end
			ss=script.Parent.Curse:clone()
			ss.Parent=t
			game:GetService("Debris"):AddItem(ss,2)
			if Num<=1 then
				s=script.DC:clone()
				s.Disabled=false
				s.Parent=t.Parent
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*5000
				rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/5
				rl.Parent=t
				game:GetService("Debris"):AddItem(rl,.1)
				ss.Pitch=.5
				ss:Play()
			else
				ss.Pitch=.37
				ss:Play()
				t.Parent.Humanoid:TakeDamage(5)
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*5000
				rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))*2
				rl.Parent=t
				game:GetService("Debris"):AddItem(rl,.1)
			end
			if Corrupt==true then
				t.Parent.Humanoid:TakeDamage(8)
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*5000
				rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))*2
				rl.Parent=t
				game:GetService("Debris"):AddItem(rl,.1)
			end
		end
	wait(.5)
	doArms(false)
end
	
DarkRiftF=function(par)
	coroutine.resume(coroutine.create(DCCO2),par,250)
	coroutine.resume(coroutine.create(DCCO3),par,250)
	if Corrupt==true then s=script.projPuller:clone() s.Disabled=false s.Parent=par end
	for timelapse=1, 60 do
	PWN={}
		for _,v in pairs(workspace:children()) do
			if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
				if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
					if v~=vPlayer.Character and (v.Torso.Position-par.Position).magnitude<=25 then
						table.insert(PWN,v.Torso)
					end
				end
			end
		end
		for _,t in pairs(PWN) do
				Mag=(par.Position-t.Position).magnitude/2
				t.Parent.Humanoid:TakeDamage(.6)
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*5000
				rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
				rl.Parent=t
				game:GetService("Debris"):AddItem(rl,.1)
				if Mag<=2 then
					t.Parent.Humanoid.Health=t.Parent.Humanoid.Health-.3
					SHAKE3(t.Parent)
				else
					vl=Instance.new("BodyVelocity")
					vl.P=3000
					vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
					vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
					vl.Parent=t
					game:GetService("Debris"):AddItem(vl,.1)
				end
		end
		wait(.08)
	end
	par.Parent=nil
end

DarkRift=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=100 then
		Charge=Charge-100
	else
		return
	end
	doArms(true)
	OR=RA.C0
	RightS.DesiredAngle=-.9
	LeftS.DesiredAngle=-.3
	RightS.MaxVelocity=.3
	LeftS.MaxVelocity=.1
	ss=script.Parent.DBC:clone()
	ss.Pitch=.3
	ss.Parent=Torso
	ss:Play()
	for darkowns=1, 15 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.003
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/70,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns/2)
		wait(.04)
	end
	RightS.DesiredAngle=1.6
	for darkowns=1, 34 do
		p=Instance.new("Part")
		ss.Pitch=ss.Pitch+.002
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/7.5)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 10 do par.Transparency=i/10 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/70,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns/5+7.5)
		wait(.04)
	end
	ss:Stop()
	ss:Remove()
	l=Instance.new("Part")
	l.Name="Rift"
	l.Transparency=0
	l.Anchored=true
	l.CanCollide=false
	l.Size=Vector3.new(1,1,1)
	l.CFrame=p.CFrame
	l.Parent=workspace
	coroutine.resume(coroutine.create(DarkRiftF),l)
	s=script.Parent.GB4:clone()
	s.Pitch=.5
	s.Parent=l
	s:Play()
	wait(.5)
	RightS.DesiredAngle=0
	wait(.2)
	doArms(false)
	wait(.5)
end

DarkSUMMONWEEGEEXD=function(hit)
	if hit==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil then
		vv=game.Players:GetPlayerFromCharacter(hit.Parent)
		if vv~=nil then
			PLGUI=vv.PlayerGui
			m=Instance.new("Message")
			m.Text=PLGUI.Name
			m.Parent=workspace
			wait(1)
			m.Parent=nil
			S=script.Parent.OWNAGEgui:clone()
			S.Parent=PLGUI
		if Charge>=70 then
			Charge=Charge-70
		else
			return
		end
			S.Script.Disabled=false
		end
	end
end

--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------
--------------------MegamanBlue only----------------------------------------------------------------------------------------------------------------------------------

DarkPunch=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=40 then
		Charge=Charge-40
	else
		return
	end
	doArms(true)
	RightS.MaxVelocity=.3
	LeftS.MaxVelocity=.2
	RightS.DesiredAngle=-1.5
	LeftS.DesiredAngle=-.6
	
	for darkowns=1, 6 do
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end

	RightS.MaxVelocity=1
	LeftS.MaxVelocity=.4
	RightS.DesiredAngle=1.6
	LeftS.DesiredAngle=1.2
	v=Instance.new("BodyVelocity")
	v.P=6000
	v.maxForce=Vector3.new(math.huge,5000000000,math.huge)
	v.velocity=Torso.CFrame.lookVector*60
	v.Parent=Torso
	print(v)
	g=Instance.new("BodyGyro")
	g.P=3000
	g.maxTorque=Vector3.new(50000,50000,50000)*50000
	g.cframe=Torso.CFrame
	g.Parent=Torso
	if Corrupt==true then v.velocity=Torso.CFrame.lookVector*120 end

	sa=Instance.new("Part")
	sa.Name="StrikeArea"
	sa.TopSurface=0
	sa.BottomSurface=0
	sa.CFrame=Torso.Parent.Head.CFrame
	sa.formFactor="Symmetric"
	sa.Transparency=1
	sa.CanCollide=false
	sa.Size=Vector3.new(2,1,2)
	sa.Parent=vPlayer.Character
	w=Instance.new("Weld")
	w.Part0=vPlayer.Character["Right Arm"]
	w.Part1=sa
	w.Parent=sa
	w.C0=CFrame.new(0,-1.5,0)
	PAWNSH=sa.Touched:connect(PunchHit)

	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor:Black()
	p.Size=Vector3.new(1,1,1)
	p.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Torso.CFrame.lookVector*-2
	p.Parent=workspace
	script.Parent.BlastMesh:clone().Parent=p
	p.BlastMesh.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 9 do par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(.8,.8,.6) par.Transparency=lol/9 par.CFrame=par.CFrame*CFrame.new(0,.2,0) wait() end par.Parent=nil end),p)
	
	wait(.2)
	sa.Parent=nil
	v.Parent=nil
	wait(.5)
	RightS.DesiredAngle=0
	LeftS.DesiredAngle=0
	wait(.5)
	g.Parent=nil
	doArms(false)
end
DarkBomb=function()
	Torso=vPlayer.Character.Torso
	RA=Torso:FindFirstChild("Right Shoulder")
	if RA==nil then
		return
	end
	LA=Torso:FindFirstChild("Left Shoulder")
	if LA==nil then
		return
	end
	if Charge>=100 then
		Charge=Charge-100
	else
		return
	end
	doArms(true)
	OR=RA.C0
	OL=LA.C0
	RightS.C0=OR*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.2,-.5,0)
	LeftS.C0=OL*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(-.2,-.5,0)
	RightS.DesiredAngle=2
	LeftS.DesiredAngle=-2
	RightS.MaxVelocity=.2
	LeftS.MaxVelocity=.2
	Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(math.pi/9,0,0)
	s=script.Parent.DBC:clone()
	s.Parent=Torso
	s:Play()
	for darkowns=1, 25 do
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Right Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		p=Instance.new("Part")
		p.TopSurface=0
		p.BottomSurface=0
		p.Anchored=true
		p.CanCollide=false
		p.BrickColor=BrickColor:Black()
		p.Size=Vector3.new(1,1,1)
		p.formFactor="Symmetric"
		p.CFrame=vPlayer.Character["Left Arm"].CFrame*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Torso.CFrame.lookVector*(darkowns/12)
		p.Parent=vPlayer.Character
		Instance.new("BlockMesh").Parent=p
		coroutine.resume(coroutine.create(function(par,int) for i=1, 13 do par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.05+int*.025,.05+int*.025,.05+int*.025) par.CFrame=par.CFrame*CFrame.new(0,math.random(0,10)/50,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) wait() end par.Parent=nil end),p,darkowns)
		wait(.05)
	end
	RightS.DesiredAngle=-1
	LeftS.DesiredAngle=1
	RightS.MaxVelocity=.4
	LeftS.MaxVelocity=.4
	s.Parent=nil
	Torso.Neck.C0=Torso.Neck.C0*CFrame.fromEulerAnglesXYZ(-math.pi/9,0,0)

	Dir=Torso.CFrame.lookVector
	Vel=Dir*100
	if Corrupt==true then Vel=Dir*150 end

	bomb=Instance.new("Part")
	bomb.Name="DarkBlast"
	bomb.Transparency=1
	bomb.TopSurface=0
	bomb.BottomSurface=0
	bomb.Anchored=false
	bomb.CanCollide=false
	bomb.Size=Vector3.new(7,1,7)
	bomb.formFactor="Symmetric"
	bomb.CFrame=CFrame.new(Torso.CFrame.p+Vector3.new(0,1,0)+Dir*6,Torso.Position+Dir*50)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
	bomb.Parent=workspace
	DBCon=bomb.Touched:connect(function(hit) DBHit(hit,bomb) end)
	v=Instance.new("BodyVelocity")
	v.P=3000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vel
	v.Parent=bomb
	s=script.Parent.Abscond:clone()
	s.Pitch=.6
	s.Parent=bomb
	s:Play()
	coroutine.resume(coroutine.create(DCCO1),bomb,10)
	coroutine.resume(coroutine.create(DCCO2),bomb,20)	
	for loopwait=1, 20 do
		if bomb.Parent==nil then
			return doArms(false)
		end
		wait(.025)
	end
	DBCon:disconnect()
	DBExplode(bomb)
	doArms(false)
end
DarkBoostStrike=function()
	if Charge>=80 then
		Charge=Charge-80
	else
		return
	end
	script.Parent.Defile:Play()
	Contact=false
	Torso=vPlayer.Character.Torso
	coroutine.resume(coroutine.create(DCCO1),Torso,5)
	coroutine.resume(coroutine.create(DCCO2),Torso,10)
	sa=Instance.new("Part")
	sa.Name="StrikeArea"
	sa.TopSurface=0
	sa.BottomSurface=0
	sa.CFrame=Torso.Parent.Head.CFrame
	sa.formFactor="Symmetric"
	sa.Transparency=1
	sa.CanCollide=false
	sa.Size=Vector3.new(8,1,8)
	sa.Parent=vPlayer.Character
	w=Instance.new("Weld")
	w.Part0=vPlayer.Character.Torso
	w.Part1=sa
	w.Parent=sa
	w.C0=CFrame.new(0,3,0)
	Dir=Torso.CFrame.lookVector
	Vel=Dir*150
	if Corrupt==true then Vel=Dir*200 end
	uv=Instance.new("BodyVelocity")
	uv.P=4000
	uv.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	uv.velocity=Vel
	uv.Parent=Torso
	g=Instance.new("BodyGyro")
	g.P=4500
	g.D=500
	g.maxTorque=Vector3.new(5000000,5000000,5000000)*5000000000000000
	g.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
	g.Parent=Torso
	ContactF=sa.Touched:connect(function(hit) DCContact(hit,Torso) end)
	coroutine.resume(coroutine.create(DCCO3),Torso,10)
	for waitloop=1, 10 do
		wait(.025)
	end
	if Contact==false or Charge<35 then
		ContactF:disconnect()
		uv.velocity=uv.velocity/10
		wait()
		uv.Parent=nil
		g.Parent=nil
	else
		Charge=Charge-35
		print("GOING ON!")
		coroutine.resume(coroutine.create(DCCO1),Torso,5)
		coroutine.resume(coroutine.create(DCCO2),Torso,10)	
		coroutine.resume(coroutine.create(DCCO3),Torso,10)
		Contact=false
		for rise=1, 20 do
			uv.velocity=Dir*(100-(rise*3))+Vector3.new(0,(rise/4)*rise,0)
			g.cframe=CFrame.new(Vector3.new(0,0,0),Torso.Velocity.unit)*CFrame.fromEulerAnglesXYZ(-math.pi/2,math.pi/10*rise,0)
			wait(.25/10)
		end
		if Contact==false or Charge<35 then
			print("DONE")
			ContactF:disconnect()
			uv.velocity=uv.velocity/10
			wait()
			uv.Parent=nil
			g.Parent=nil
		else
			print("CONTINUE!")
			ContactF:disconnect()
			w.C0=CFrame.new(0,-3.5,0)
			nCont=sa.Touched:connect(Land)
			Contact=false
			uv.P=0
			doRing=false
			while true do
				if Torso.Velocity.y<=-10 and doRing==false then
					doRing=true
					coroutine.resume(coroutine.create(DCCO1),Torso,5)
					coroutine.resume(coroutine.create(DCCO2),Torso,10)	
				end
				if Contact==true then
					break
				end
				g.cframe=CFrame.new(Vector3.new(0,0,0),Torso.Velocity.unit)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
				wait()
			end
			Charge=Charge-35
			uv.P=3000
			uv.velocity=Vector3.new(0,0,0)
			wait()
			uv.Parent=nil
			g.Parent=nil
		end
	end
	sa.Parent=nil
end
HPHeal=function(part)
	if part==nil then
		return
	end
	h=part.Parent:FindFirstChild("Humanoid")
	if h~=nil then
		if h.Health<0 then
			return
		end
		Torso=h.Parent:FindFirstChild("Torso")
		if Torso~=nil then
			if (Torso.Position-vPlayer.Character.Torso.Position).magnitude>=20 then
				return
			end
			if Charge>=20 then
				Charge=Charge-20
			else
				return
			end
			s=script.Parent.Imbue:clone()
			s.Pitch=1.2
			s.Parent=Torso
			s:Play()
			game:GetService("Debris"):AddItem(s,2)
			s=script.Parent.Imbue:clone()
			s.Pitch=.8
			s.Parent=vPlayer.Character.Torso
			s:Play()
			game:GetService("Debris"):AddItem(s,2)
			for i=1, 18 do
				e=Instance.new("Part")
				e.TopSurface=0
				e.BottomSurface=0
				e.CanCollide=false
				e.formFactor="Plate"
				e.Size=Vector3.new(1,.4,1)
				e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p+Vector3.new(math.cos(i)*5,0,math.sin(i)*5)+Vector3.new(0,6.4,0),part.Parent.Torso.CFrame.p+Vector3.new(0,6.4,0))
				e.Name="Effect"
				e.BrickColor=BrickColor:Black()
				f=Instance.new("BodyVelocity")
				f.P=500
				f.maxForce=Vector3.new(0,math.huge,0)
				f.velocity=Vector3.new(0,-20,0)
				f.Parent=e
				e.Parent=part.Parent
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),e)
				e=Instance.new("Part")
				e.TopSurface=0
				e.BottomSurface=0
				e.CanCollide=false
				e.formFactor="Plate"
				e.Size=Vector3.new(1,.4,1)
				e.CFrame=CFrame.new(vPlayer.Character.Torso.CFrame.p+Vector3.new(-math.cos(i)*5,0,-math.sin(i)*5)-Vector3.new(0,3.2,0),vPlayer.Character.Torso.CFrame.p-Vector3.new(0,3.2,0))
				e.Name="Effect"
				e.BrickColor=BrickColor:Black()
				f=Instance.new("BodyVelocity")
				f.P=500
				f.maxForce=Vector3.new(0,math.huge,0)
				f.velocity=Vector3.new(0,20,0)
				f.Parent=e
				e.Parent=part.Parent
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),e)
				part.Parent.Humanoid.Health=part.Parent.Humanoid.Health+2
				vPlayer.Character.Humanoid.Health=vPlayer.Character.Humanoid.Health-2
				wait(.1)
			end			
		end
	end
end
HPSteal=function(part)
	if part==nil then
		return
	end
	h=part.Parent:FindFirstChild("Humanoid")
	if h~=nil then
		if h.Health<0 then
			return
		end
		Torso=h.Parent:FindFirstChild("Torso")
		if Torso~=nil then
			if (Torso.Position-vPlayer.Character.Torso.Position).magnitude>=40 then
				return
			end
			if Charge>=60 then
				Charge=Charge-60
			else
				return
			end
			s=script.Parent.Imbue:clone()
			s.Pitch=.8
			s.Parent=Torso
			s:Play()
			game:GetService("Debris"):AddItem(s,2)
			s=script.Parent.Imbue:clone()
			s.Pitch=1.2
			s.Parent=vPlayer.Character.Torso
			s:Play()
			game:GetService("Debris"):AddItem(s,2)
			for i=1, 18 do
				e=Instance.new("Part")
				e.TopSurface=0
				e.BottomSurface=0
				e.CanCollide=false
				e.formFactor="Plate"
				e.Size=Vector3.new(1,.4,1)
				e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p+Vector3.new(math.cos(i)*5,0,math.sin(i)*5)-Vector3.new(0,3.2,0),part.Parent.Torso.CFrame.p-Vector3.new(0,3.2,0))
				e.Name="Effect"
				e.BrickColor=BrickColor:Black()
				f=Instance.new("BodyVelocity")
				f.P=500
				f.maxForce=Vector3.new(0,math.huge,0)
				f.velocity=Vector3.new(0,20,0)
				f.Parent=e
				e.Parent=part.Parent
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),e)
				e=Instance.new("Part")
				e.TopSurface=0
				e.BottomSurface=0
				e.CanCollide=false
				e.formFactor="Plate"
				e.Size=Vector3.new(1,.4,1)
				e.CFrame=CFrame.new(vPlayer.Character.Torso.CFrame.p+Vector3.new(-math.cos(i)*5,0,-math.sin(i)*5)+Vector3.new(0,6.4,0),vPlayer.Character.Torso.CFrame.p+Vector3.new(0,6.4,0))
				e.Name="Effect"
				e.BrickColor=BrickColor:Black()
				f=Instance.new("BodyVelocity")
				f.P=500
				f.maxForce=Vector3.new(0,math.huge,0)
				f.velocity=Vector3.new(0,-20,0)
				f.Parent=e
				e.Parent=part.Parent
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),e)
				part.Parent.Humanoid.Health=part.Parent.Humanoid.Health-2
				vPlayer.Character.Humanoid.Health=vPlayer.Character.Humanoid.Health+2
				wait(.1)
			end			
		end
	end
end
DarkDoubleJump=function()
	Torso=vPlayer.Character:FindFirstChild("Torso")
	if Charge>=5 then
		Charge=Charge-5
	else
		return
	end
	part=Torso
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 6 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,.25,0) m.Scale=m.Scale+Vector3.new(1,.1,1) m.Parent.Transparency=i/6 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	v=Instance.new("BodyVelocity")
	v.P=4000
	v.maxForce=Vector3.new(0,math.huge,0)
	v.velocity=Vector3.new(0,40,0)
	v.Parent=Torso
	g=Instance.new("BodyGyro")
	g.P=3000
	g.maxTorque=Vector3.new(50000,0,50000)*50
	g.cframe=Torso.CFrame
	g.Parent=Torso
	game:GetService("Debris"):AddItem(v,.2)
	s=script.Parent.Break:clone()
	s.Pitch=4.5
	s.Parent=Torso
	s:Play()
	wait(1)
	g:Remove()
	wait(.1)
	s:Remove()
end
DarkSpeedBreak=function()
	if Charge>=3 then
		Charge=Charge-3
	else
		return
	end
	Torso=vPlayer.Character:FindFirstChild("Torso")
	part=Torso
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.Anchored=true
	e.Shape="Ball"
	e.Size=Vector3.new(1,1,1)
	e.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	e.Parent=Torso.Parent
	m=script.Parent.BlastMesh:clone()
	m.Parent=e
	coroutine.resume(coroutine.create(function(m) for i=1, 5 do m.Parent.CFrame=m.Parent.CFrame*CFrame.new(0,2,0) m.Scale=m.Scale+Vector3.new(1.7,.35,1.7) m.Parent.Transparency=i/5 wait() end m.Parent.Parent=nil end),e.BlastMesh)
	v=Instance.new("BodyVelocity")
	v.P=4000
	v.maxForce=Vector3.new(math.huge,500,math.huge)
	v.velocity=Torso.CFrame.lookVector*300
	v.Parent=Torso
	g=Instance.new("BodyGyro")
	g.P=3000
	g.maxTorque=Vector3.new(50000,50000,50000)*50
	g.cframe=Torso.CFrame
	g.Parent=Torso
	con=Torso.Touched:connect(function(hit) if hit.Parent==nil then return end if hit.Parent==vPlayer.Character then return end h=hit.Parent:FindFirstChild("Humanoid") if h~=nil then if h.Parent:FindFirstChild("Torso")==nil then return end h:TakeDamage(0) SHAKE2(hit.Parent) r=Instance.new("BodyAngularVelocity") r.P=2500 r.maxTorque=Vector3.new(50000,50000,50000)*50000 r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) r.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(r,.15) vv=Instance.new("BodyVelocity") vv.P=3000 vv.maxForce=Vector3.new(math.huge,math.huge,math.huge) vv.velocity=(hit.Parent.Torso.Position-Torso.Position).unit*40+Vector3.new(0,60,0) vv.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(vv,.15) end end)		
	s=script.Parent.Break:clone()
	s.Pitch=4
	s.Parent=Torso
	s:Play()
	wait(.07)
	v.Parent=nil
	wait(.05)
	g:Remove()
	con:disconnect()
	wait(.1)
	s:Remove()
end
DarkRepulse=function()
	if Charge>=40 then
		Charge=Charge-40
	else
		return
	end
	Torso=vPlayer.Character:FindFirstChild("Torso")
	part=Torso
	dir=Vector3.new(0,0,0)
	sfx=script.Parent.Defile:clone()
	sfx.Parent=Torso
	sfx:Play()
	for i=1, 15 do
		start=CFrame.new(part.Parent.Torso.CFrame.p)
		e=Instance.new("Part")
		e.TopSurface=0
		e.BottomSurface=0
		e.CanCollide=false
		e.Shape="Ball"
		e.Size=Vector3.new(1,1,1)
		e.CFrame=start+dir*i+Vector3.new((math.random(-10,10)/15*i),(math.random(-10,10)/15*i),(math.random(-10,10)/15*i))
		e.Name="Effect"
		e.BrickColor=BrickColor:Black()
		e.Parent=Torso.Parent
		p=Instance.new("BodyPosition")
		p.P=5000
		p.D=200
		p.maxForce=Vector3.new(50000,50000,50000)*50000
		p.position=e.CFrame.p
		p.Parent=e
		e.Touched:connect(function(hit) if hit.Parent==nil then return end if hit.Parent==vPlayer.Character then return end h=hit.Parent:FindFirstChild("Humanoid") if h~=nil then if h.Parent:FindFirstChild("Torso")==nil then return end h:TakeDamage(1) SHAKE2(hit.Parent) r=Instance.new("BodyAngularVelocity") r.P=2500 r.maxTorque=Vector3.new(50000,50000,50000)*50000 r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) r.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(r,.15) v=Instance.new("BodyVelocity") v.P=3000 v.maxForce=Vector3.new(math.huge,math.huge,math.huge) v.velocity=(hit.Parent.Torso.Position-Torso.Position).unit*10+Vector3.new(0,20,0) v.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(v,.15) end end)		
		coroutine.resume(coroutine.create(function(par,c) for i=1, 12 do par.Size=par.Size+Vector3.new(1,1,1) par.CFrame=c par.Transparency=i/9 wait() end par.Parent=nil end),e,e.CFrame)
		wait(.05)
	end
	sfx:Remove()
	wait(2)
	e.Parent=nil
end
DarkRush=function()
	if Charge>=40 then
		Charge=Charge-40
	else
		return
	end
	Torso=vPlayer.Character:FindFirstChild("Torso")
	rPos=Vector3.new(0,8,0)
	pn=Instance.new("BodyPosition")
	pn.P=6000
	pn.D=150
	pn.maxForce=Vector3.new(500000,500000,500000)*5000
	g=Instance.new("BodyGyro")
	g.P=3000
	g.maxTorque=Vector3.new(50000,50000,50000)*50000
	g.cframe=Torso.CFrame
	g.Parent=Torso
	pn.Parent=Torso
	pn.position=Torso.Position
	to=Torso.Position+Torso.CFrame.lookVector*15+rPos
	cParts=Torso.Parent:GetChildren()
	part=Torso
	s1=script.Parent.Abscond:clone()
	s1.Parent=Torso
	s2=script.Parent.Break:clone()
	s2.Parent=Torso
	s3=script.Parent.Elec:clone()
	s3.Parent=Torso
	for i=1, 4 do
		e=Instance.new("Part")
		e.TopSurface=0
		e.BottomSurface=0
		e.CanCollide=false
		e.Shape="Ball"
		e.Size=Vector3.new(1,1,1)
		e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p+part.Parent.Torso.CFrame.lookVector*(5-i))
		e.Name="Effect"
		e.BrickColor=BrickColor:Black()
		k=Instance.new("Sparkles")
		k.SparkleColor=Color3.new(0,0,255)
		k.Parent=e
		po=Instance.new("BodyPosition")
		po.P=10000
		po.D=2000
		po.maxForce=Vector3.new(5000000,5000000,5000000)*500
		po.position=e.Position
		po.Parent=e
		e.Parent=workspace
		e.Touched:connect(function(hit) if hit.Parent==nil then return end if hit.Parent==vPlayer.Character then return end h=hit.Parent:FindFirstChild("Humanoid") if h~=nil then if h.Parent:FindFirstChild("Torso")==nil then return end h:TakeDamage(5) SHAKE2(hit.Parent) r=Instance.new("BodyAngularVelocity") r.P=2500 r.maxTorque=Vector3.new(50000,50000,50000)*50000 r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) r.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(r,.15) v=Instance.new("BodyVelocity") v.P=3000 v.maxForce=Vector3.new(math.huge,math.huge,math.huge) v.velocity=(hit.Parent.Torso.Position-to).unit*-70+Vector3.new(0,20,0) v.Parent=hit.Parent.Torso game:GetService("Debris"):AddItem(v,.15) end end)
		coroutine.resume(coroutine.create(function(par,pp) for i=1, 6 do par.Size=par.Size+Vector3.new(2,2,2) par.CFrame=pp par.Transparency=i/8 wait() end par.Parent=nil end),e,e.CFrame)
		s1:Play()
		s2:Play()
		s3:Play()
		pn.position=to
		rPos=-rPos
		to=to+Torso.CFrame.lookVector*15+rPos
		wait(.15)
	end
	s1:Remove()
	s2:Remove()
	s3:Remove()
	g.Parent=nil
	pn.Parent=nil
end
Tele=function()
	if Charge>=2 then
		Charge=Charge-2
	else
		return
	end
	part=vPlayer.Character.Torso
	toPos=part.Position+part.CFrame.lookVector*17
	orig=part.Position
	for _,v in pairs(part.Parent:children()) do
		if v.Name=="TRAILER" then
			v.Parent=nil
		end
	end
	for _,v in pairs(part.Parent:children()) do
		if v.className=="Part" then
			n=v:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Dark stone grey")
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		elseif v.className=="Hat" then
			n=v.Handle:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Really black")
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		end
	end
	newc=CFrame.new(toPos,orig)
	part.CFrame=newc
	script.Parent.Abscond:Play()
	--[[for _,v in pairs(part.Parent:children()) do
		if v.className=="Part" then
			n=v:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Really black")
			n.Parent=part.Parent
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		elseif v.className=="Hat" then
			n=v.Handle:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Bright violet")
			n.Parent=part.Parent
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		end
	end]]
	wait(.1)
end
Imbue=function()
	if Charge>=20 then
		Charge=Charge-20
	else
		return
	end
	part=vPlayer.Character.Torso
	script.Parent.Imbue:Play()	
	for i=1, 20 do
		e=Instance.new("Part")
		e.TopSurface=0
		e.BottomSurface=0
		e.CanCollide=false
		e.formFactor="Plate"
		e.Size=Vector3.new(1,.4,1)
		e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p+Vector3.new(math.random(-15,15)/5,3.2,math.random(-15,15)/5))
		e.Name="Effect"
		e.BrickColor=BrickColor:Black()
		f=Instance.new("BodyVelocity")
		f.P=500
		f.maxForce=Vector3.new(0,math.huge,0)
		f.velocity=Vector3.new(0,-15,0)
		f.Parent=e
		e.Parent=part.Parent
		coroutine.resume(coroutine.create(function(par) for i=1, 20 do par.Transparency=i/20 wait() end par.Parent=nil end),e)
		part.Parent.Humanoid.Health=part.Parent.Humanoid.Health+1
		wait(.05)
	end
end
Berserk=function()
	if Charge>=10 then
		Charge=Charge-10
	else
		return
	end
	vPlayer.Character.Humanoid.WalkSpeed=vPlayer.Character.Humanoid.WalkSpeed+2
	vPlayer.Character.Humanoid.Health=vPlayer.Character.Humanoid.Health-10
	vPlayer.Character.Humanoid.MaxHealth=vPlayer.Character.Humanoid.MaxHealth-10
	s=script.Parent.Berserk:clone()
	s.Parent=vPlayer.Character.Torso
	s:Play()
	game:GetService("Debris"):AddItem(s,4)
end
Break=function(hit)
	if Charge>=70 then
		Charge=Charge-70
	else
		return
	end
	if hit==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil then
		e=Instance.new("Part")
		e.TopSurface=0
		e.BottomSurface=0
		e.Reflectance=.05
		e.formFactor="Symmetric"
		e.Size=Vector3.new(1,1,1)
		e.Anchored=true
		e.CanCollide=false
		e.BrickColor=BrickColor.new("Really black")
		e.CFrame=CFrame.new(hit.Position)
		e.Parent=hit.Parent
		Instance.new("BlockMesh").Parent=e
		coroutine.resume(coroutine.create(function(par) for i=1, 13 do par.CFrame=par.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50) par.Transparency=i/13 par.Mesh.Scale=par.Mesh.Scale+Vector3.new(.4,.4,.4) wait() end par.Parent=nil end),e)
		vPP=game.Players:GetPlayerFromCharacter(hit.Parent)
		if vPP~=nil then
			s=script.Shake:clone()
			s.Disabled=false
			s.Parent=vPP.Backpack
		end
		for _,v in pairs(hit.Parent:children()) do
			if v.className=="Part" then
				v.BrickColor=BrickColor.new("Lavender")
				v.RotVelocity=Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))*3
				v:BreakJoints()
				f=Instance.new("BodyVelocity")
				f.P=3000
				f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
				f.velocity=Vector3.new(math.random(-30,30)/10,math.random(-30,30)/10,math.random(-30,30)/10)
				f.Parent=v
				v.CanCollide=false
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),v)
			elseif v.className=="Hat" then
				v.Handle.BrickColor=BrickColor.new("Really black")
				v.Handle.RotVelocity=Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))*3
				v.Handle:BreakJoints()
				f=Instance.new("BodyVelocity")
				f.P=3000
				f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
				f.velocity=Vector3.new(math.random(-30,30)/10,math.random(-30,30)/10,math.random(-30,30)/10)
				f.Parent=v.Handle
				v.Handle.CanCollide=false
				coroutine.resume(coroutine.create(function(par) for i=1, 30 do par.Transparency=i/30 wait() end par.Parent=nil end),v.Handle)
			end
		end
		script.Parent.Break:Play()
	end
end
vPlayer,cPlayer,Torso,BarGUI=nil,nil,nil,nil
HandlePB=function(BAR)
	while true do
		Div=Charge/Maximum
		BAR.PressureBar.DarkBar.Fill.Size=UDim2.new(Div,0,.9,0)
		BAR.PressureBar.DarkBar.Label.Text="player's power: "..tostring(Charge)
		wait()
	end
end
SetupGUI=function()
	BarGUI=vPlayer.PlayerGui:FindFirstChild("PressureGUI")
	if BarGUI==nil then
		BarGUI=script.PressureGUI:clone()
		BarGUI.Parent=vPlayer.PlayerGui
	end
	coroutine.resume(coroutine.create(HandlePB),BarGUI)
end
GetHumanoids=function()
	Fill={}
	for _,v in pairs(game.Workspace:children()) do
		if v.className=="Model" and v:FindFirstChild("Torso")~=nil then
			if v.Humanoid.Health>0 then
				if v.Name~=game.Players:findFirstChild(myname) then
					table.insert(Fill,v)
				end
			end
		end
	end
	return Fill
end
LimitBerzerk=function(m)
	doStartup(m)
end
ChargeAnims["meshFlowOut"]=function(part,m)
	if OverE>0 then
		Col=BarGUI.PressureBar.DarkBar.Fill.BackgroundColor3
		BarGUI.PressureBar.DarkBar.Fill.BackgroundColor3=Color3.new(1,1,1)
		wait(.05)
		BarGUI.PressureBar.DarkBar.Fill.BackgroundColor3=Color3.new(0,0,1)
		if OverE>10 then
			cdeb=false
			LimitBerzerk(m)
			cdeb=true
		end
		return wait(.05)
	end
	e=Instance.new("Part")
	e.TopSurface=0
	e.BottomSurface=0
	e.CanCollide=false
	e.formFactor="Plate"
	e.Size=Vector3.new(1,.4,1)
	e.CFrame=CFrame.new(part.Parent.Torso.CFrame.p+Vector3.new(math.random(-10,10)*(Charge/800)+math.random(-3,3),-3.2,math.random(-10,10)*(Charge/800)+math.random(-3,3)),part.Parent.Torso.CFrame.p-Vector3.new(0,3.2,0))
	e.Name="Effect"
	e.BrickColor=BrickColor:Black()
	f=Instance.new("BodyVelocity")
	f.P=500
	f.maxForce=Vector3.new(0,math.huge,0)
	f.velocity=Vector3.new(0,15+(Charge/40),0)
	f.Parent=e
	e.Parent=part.Parent
	coroutine.resume(coroutine.create(function(par) for i=1, 20 do par.Transparency=i/20 wait() end par.Parent=nil end),e)
	wait(.02)
end
doCharge=function(m)
	downWait=3.5
	if vPlayer.Name~=(myname) then
		if Charge<Maximum-1 then
			Charge=Charge+2
			OverE=0
		else
			OverE=OverE+1
		end
	else
		if Charge<Maximum then
			Charge=Charge+10
			OverE=0
		else
			OverE=OverE+1
		end
	end
	ChargeAnims["meshFlowOut"](vPlayer.Character.Torso,m)
end
dd=true
KeyDown=function(n,m)
	if not dd then return end
	dd=false
	if n=="f" then
		Imbue()
	end
	if n=="g" then
		DarkSmash()
	end
	if n=="h" then
		Break(m.Target)
	end
	if n=="j" then
		Tele()
	end
	if n=="k" then
		DarkRush()
	end
	if n=="l" then
		DarkRepulse()
	end
	if n=="z" then
		DarkSpeedBreak()
	end
	if n=="x" then
		DarkDoubleJump()
	end
	if n=="c" then
		HPSteal(m.Target)
	end
	if n=="v" then
		HPHeal(m.Target)
	end
	if n=="b" then
		CanAnim=false
		DarkBoostStrike()
		CanAnim=true
	end
	if n=="n" then
		CanAnim=false
		DarkBomb()
		CanAnim=true
	end
	if n=="m" then
		CanAnim=false
		DarkPunch()
		CanAnim=true
	end
	if vPlayer.Name~=(myname) then
		dd=true
		return
	end
	if n=="p" then
		CanAnim=false
		DarkDPunisher()
		CanAnim=true
	end
	if n=="u" then
		CanAnim=false
		DarkHide()
		CanAnim=true
	end
	if n=="y" then
		CanAnim=false
		DarkStorm()
		CanAnim=true
	end
	if n=="t" then
		CanAnim=false
		DarkWave()
		CanAnim=true
	end
	if n=="r" then
		CanAnim=false
		DarkGBuster()
		CanAnim=true
	end
	if n=="e" then
		CanAnim=false
		DarkCurse()
		CanAnim=true
	end
	if n=="q" then
		CanAnim=false
		DarkRift()
		CanAnim=true
	end
	if n==";" then
		CanAnim=false
		DarkChaser()
		CanAnim=true
	end
	dd=true
end
cdeb=true
ChargeFunction=function(mouse)
	if not cdeb then return end
	cdeb=false
	Torso=vPlayer.Character.Torso
	Charging=true
	while Charging==true do
		doCharge(mouse)
		wait()
	end
	cdeb=true
end
downWait=4
onEquipped=function(mouse)
	vPlayer=game.Players.LocalPlayer
	if vPlayer==nil then
		return
	end
	mouse.Button1Down:connect(function() ChargeFunction(mouse) end)
	mouse.Button1Up:connect(function() Charging=false end)
	mouse.KeyDown:connect(function(key) KeyDown(key,mouse) end)
	mouse.KeyUp:connect(function(key) if key=="r" then GBKEYDOWN=false end end)
end
Tool.Selected:connect(onEquipped)
wait(1)
while true do
	vPlayer=script.Parent.Parent.Parent
	if vPlayer~=nil then
		if vPlayer.Character~=nil then
			SetupGUI()
			break
		end
	end
	wait(.1)
end
while true do
	if Corrupt==false then
		wait(downWait)
	else
		wait(.1)
	end
	if Charging==false then
		if Charge>0 then
			if downWait>.5 then
				downWait=downWait-.5
			end
			if vPlayer.Name==(myname) then
				if Corrupt==false then
					Charge=Charge-1
				else
					Charge=Charge-4
				end
			else
				Charge=Charge-2
			end
		else
			Charge=0
		end
	end
end