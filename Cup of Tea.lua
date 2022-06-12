--Saz

vPlayer=game.Players.LocalPlayer

	Tool=Instance.new("Tool")
	Tool.Name="Tea"
	Tool.Parent=vPlayer.Backpack
	Handle=Instance.new("Part")
	Handle.Size=Vector3.new(2.6,2.6,2.6)
	Handle.TopSurface=0
	Handle.BottomSurface=0
	Handle.Name="Handle"
	Handle.formFactor="Custom"
	Handle.Parent=Tool
	Handle.BrickColor=BrickColor:White()
	Tool.GripRight=Vector3.new(0,0,1)
	Tool.GripPos=Vector3.new(-1.08,-.1,.1)
	 
	m=Instance.new("SpecialMesh")
	m.MeshType="FileMesh"
	m.MeshId="http://www.roblox.com/asset/?id=1029523"
	m.Parent=Handle
	m.Scale=Vector3.new(.05,.05,.05)

	Mouse=vPlayer:GetMouse()
	deb=true
	onClick=function()
		if deb==false then
			return
		end
		deb=false
		e=0
		rs=vPlayer.Character["Torso"]["Right Shoulder"]
		
		
		s=Instance.new("Sound")
		s.SoundId="http://www.roblox.com/asset/?id=159257160"
		s.Volume=1
		s.Parent=Tool.Handle
		s:Play()
		game:GetService("Debris"):AddItem(s,5)
		wait(5)
		lolol=rs.C0
		for i=1, 4 do
			rs.C0=rs.C0*CFrame.fromEulerAnglesXYZ(0,0,math.rad(30))
			wait(.031)
		end
		for i=1, 2 do
			rs.C0=rs.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.rad(30))
			wait(.031)
		end
		--throw
		hh=Tool.Handle:clone()
		dir=(hh.Position - game.Players.LocalPlayer:GetMouse().Hit.p).unit*-1
		Tool.Handle.Transparency=1
		hh.CanCollide=true
		hh.Parent=workspace
		hh.Velocity=dir*200+Vector3.new(0,5,0)
		ff=Instance.new("BodyForce")
		ff.force=Vector3.new(0,hh:GetMass()*140,0)
		ff.Parent=hh
		for i=1, 2 do
			rs.C0=rs.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.rad(30))
			hh.Velocity=dir*300
			wait(.031)
		end
		hh.Touched:connect(function(hit)
			if hit==nil then return end
			if hit.Parent==nil then return end
			if hit.Parent:FindFirstChild("Humanoid")~=nil and hh:FindFirstChild("Hit")==nil then
				if hit.Parent==game.Players.LocalPlayer.Character then return end
				hit.Parent:BreakJoints()
				s=Instance.new("Sound")
				s.Volume=1
				s.Parent=hh
				s.Name="Hit1"
				s.SoundId="http://www.roblox.com/asset/?id=160423437"
				s:Play()
				
				for i=1, 4 do
				s5=Instance.new("Sound")
				s5.Volume=1
				s5.Parent=hh
				s5.Name="Hit"
				s5.SoundId="http://www.roblox.com/asset/?id=138122923"
				s5.Pitch=.85
				s5:Play()
				end
				
				for _,v in pairs(hit.Parent:children()) do
					if v:IsA("BasePart") then
						v.Velocity=(v.Position - hh.Position).unit * 90 + Vector3.new(math.random(-20,20),math.random(0,20),math.random(-20,20))
						v.RotVelocity=-v.Velocity * 1.2
					end
				end
				
				hh.Transparency=1
				for i=1, 30 do
					p=Instance.new("Part")
					p.TopSurface=0
					p.BottomSurface=0
					p.Name="Shard"
					p.CFrame=hh.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) + Vector3.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10)
					p.BrickColor=hh.BrickColor
					p.CanCollide=false
					p.formFactor="Custom"
					p.Size=Vector3.new(.2,.2,.2)
					if math.random(1,3)==1 then
						m=Instance.new("BlockMesh")
						m.Scale=Vector3.new(math.random(10,15)/10,.2,math.random(10,15)/10)
						m.Parent=p
					else
						m=Instance.new("SpecialMesh")
						m.MeshType="Wedge"
						m.Scale=Vector3.new(math.random(10,15)/10,.2,math.random(10,15)/10)
						m.Parent=p
					end
					p.RotVelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
					p.Velocity=p.RotVelocity + Vector3.new(0,25,0) + hh.Velocity / 6
					p.Parent=workspace
				end
				
				hh.Anchored=true
				
			end
			if hit.Parent:FindFirstChild("Humanoid")==nil and hh:FindFirstChild("Hit")==nil and hit.CanCollide==true then
				hh.Transparency=1
				for i=1, 30 do
					p=Instance.new("Part")
					p.TopSurface=0
					p.BottomSurface=0
					p.Name="Shard"
					p.CFrame=hh.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) + Vector3.new(math.random(-15,15)/10,math.random(-15,15)/10,math.random(-15,15)/10)
					p.BrickColor=hh.BrickColor
					p.CanCollide=false
					p.formFactor="Custom"
					p.Size=Vector3.new(.2,.2,.2)
					if math.random(1,3)==1 then
						m=Instance.new("BlockMesh")
						m.Scale=Vector3.new(math.random(10,15)/10,.2,math.random(10,15)/10)
						m.Parent=p
					else
						m=Instance.new("SpecialMesh")
						m.MeshType="Wedge"
						m.Scale=Vector3.new(math.random(10,15)/10,.2,math.random(10,15)/10)
						m.Parent=p
					end
					p.RotVelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
					p.Velocity=p.RotVelocity + Vector3.new(0,25,0) + hh.Velocity / 6
					p.Parent=workspace
				end
				for i=1, 4 do
				s5=Instance.new("Sound")
				s5.Volume=1
				s5.Parent=hh
				s5.Name="Hit"
				s5.SoundId="http://www.roblox.com/asset/?id=138122923"
				s5.Pitch=.85
				s5:Play()
				end
				hh.Anchored=true
			end
		end)
		game:GetService("Debris"):AddItem(hh,5)
		wait(2.7)
		Tool.Handle.Transparency=0
		deb=true
	end
	Tool.Activated:connect(onClick)