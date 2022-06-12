-- Credit Goes To brendonturtle For Making No Name Needed Just Run

--===============Changes===============--
new=                         Instance.new;
unew=                           UDim2.new;
vnew=                         Vector3.new;
fnew=                          CFrame.new;
cnew=                          Color3.new;
bcn=                       BrickColor.new;
look=                   CFrame.lookVector;
rot=            CFrame.fromEulerAnglesXYZ;
--=====================================--

	Tool=new('Tool')
	Tool.Name='AlaStaff'
	Tool.GripPos=vnew(0,.5,0)
	Tool.TextureId='http://www.roblox.com/asset/?id=54353092'
	ToolHandle=new('Part')
	ToolHandle.Material=('Wood')
	ToolHandle.BrickColor=bcn('Reddish brown')
	ToolHandle.Name='Handle'
	ToolHandle.formFactor=3
	ToolHandle.Size=vnew(.5,6,.5)
	ToolHandle.CanCollide=false
	ToolHandle.Parent=Tool
	Tool.Parent=game.Players.LocalPlayer.Backpack
	script.Parent = Tool

		--================Tool!================--
		tool=script.Parent
		staff=tool.Handle
		SmokePart=nil
		--=====================================--

		--===============Player!===============--
		player=nil
		if tool.Parent:IsA('Model')then
			player=game.Players[tool.Parent.Name]
			elseif tool.Parent:IsA('Backpack')then
			player=tool.Parent.Parent
		end
		--=====================================--

		--================Math!================--
		random=                       math.random;
		pi=                               math.pi;
		--=====================================--

		--==============Services!==============--
		debris=             game:service('Debris')
		workspace=       game:service('Workspace')
		lighting=         game:service('Lighting')
		insert=      game:service('InsertService')
		--=====================================--

		--===============Changes===============--
		new=                         Instance.new;
		unew=                           UDim2.new;
		vnew=                         Vector3.new;
		fnew=                          CFrame.new;
		cnew=                          Color3.new;
		bcn=                       BrickColor.new;
		look=                   CFrame.lookVector;
		rot=            CFrame.fromEulerAnglesXYZ;
		soul=                                   0;
		--=====================================--

		clickActive=false
		kayActive=false

		--===========Base Functions!===========--
		x=function(f)coroutine.resume(coroutine.create(f))end
		
		sing=function(name,parent)
			x(function()
				mmo=new('Model')
				debris:AddItem(mmo,1)
				mmo.Name='StaffFunction'..name
				V=new('ObjectValue',mmo)
				V.Value=player
				V.Name='user'
				mmq=new('ObjectValue',mmo)
				mmq.Name='parent'
				mmq.Value=parent
				mmc=mmo:clone()
				debris:AddItem(mmc,1)
				mmc.Parent=lighting
			end)
		end
		
		ko=function(humanoid)
			if humanoid:FindFirstChild('creator',true)then return end
			k=new('ObjectValue')
			k.Name='creator'
			k.Value=player
			k.Parent=humanoid
			player.Character.Humanoid:TakeDamage(-humanoid.MaxHealth)
			soul=soul+1
		end

		s1=function(t)
			x(function()
				clickActive=false
				for i,h in pairs(t.Parent:children())do
					if h:IsA('Humanoid')then
						h:TakeDamage(.1)
						if h.Health<=0 then
							ko(h)
							print'DIE!'
						end
						return
					end
				end
				t:BreakJoints()
				clickActive=false
			end)
		end

		s2=function(t)
			x(function()
				delay(.1,function()s3(t)end)
				if t:FindFirstChild('w-')then return end
				q=player.Character.Torso.CFrame.lookVector
				wq=new('BodyThrust')
				debris:AddItem(wq,.2)
				x(function()debris:AddItem(t.Smoke,.02)end)
				x(function()
					smc=Smoke:clone()
					debris:AddItem(smc,3)
					smc.Enabled=true
					smc.Parent=t
				end)
				wq.force=vnew(40,40,40)
				wq.location=vnew(0,100,1)
				wq.Parent=t
				qwe = Instance.new('BodyVelocity')
				debris:AddItem(qwe,.3)
				qwe.Name='w-'
				qwe.maxForce=Vector3.new(1e7,1e7,1e7)
				qwe.P=125
				qwe.velocity=(Vector3.new(q.x,q.y,q.z)*100)+Vector3.new(0,30,0)
				qwe.Parent=t
				clickActive=false
				for i,h in pairs(t.Parent:children())do
					if h:IsA('Humanoid')then
						h:TakeDamage(10)
						if h.Health<=0 then
							ko(h)
							print'DIE!'
						end
						return
					end
				end
				t:BreakJoints()
				clickActive=false
			end)
		end

		s3=function(t)
			x(function()
				if t.Size.x+t.Size.y+t.Size.z<=20 then
					t.Anchored=false
				end
				if staff:FindFirstChild('ow')or staff:FindFirstChild('wq')then return end
				pa=new('Part')
				debris:AddItem(pa,3)
				pa.Name='ow'
				pa.formFactor=0
				pa.Size=vnew(1,1,1)
				pa.Transparency=1
				pa.CanCollide=false
				pa.Parent=staff
				fire=new('Fire',pa)
				fire.Size=3
				fire.Heat=14
				weld=new('Weld',staff)
				weld.Part0=staff
				weld.Part1=pa
				weld.C0=fnew(0,staff.Size.y/1.3,0)
				clickActive=false
				for i,h in pairs(t.Parent:children())do
					if h:IsA('Humanoid')then
						h:TakeDamage(20)
						if h.Health<=0 then
							ko(h)
						end
						return
					end
				end
				t:BreakJoints()
				clickActive=false
			end)
		end
		--=====================================--
		tool.TextureId='http://www.roblox.com/asset/?id=54353092'
		tool.Activated:connect(function()
			if kayActive==true then return end
			clickActive=true
			mode=mode+1
			if mode==2 then
				a=new('StringValue')
				debris:AddItem(a,1)
				a.Name='toolanim'
				a.Value='Slash'
				a.Parent=tool
			elseif mode==3 then
				s3()
			end
			wait(.3)
			mode=1
			clickActive=false
		end)
		tool.Equipped:connect(function(d)
			pcall(function()staff.CFrame=player.Character['Right Arm'].CFrame end)
			d.KeyUp:connect(function(k)if k=='e'then Round=false end end)
			d.KeyDown:connect(function(k)
				x(function()
					if k=='t'then
						if clickActive==true then return end
						kayActive=true --Rofl
						if d.Target==nil then return end
						torso=player.Character.Torso
						torso.Velocity=vnew(0,0,0)
						torso.RotVelocity=vnew(0,0,0)     
						torso.CFrame=fnew(d.Hit.p.x,d.Hit.p.y+5,d.Hit.p.z)
						torso.Velocity=vnew(0,0,0)
						torso.RotVelocity=vnew(0,0,0)
						Sp.Enabled=true
						wait(.1)
						Sp.Enabled=false
						kayActive=false
					elseif k=='p'then
						if Poisoning==true then print'Poisoning Active!' return end
						Poisoning=true
						Pp=new('Part')
						Pp.formFactor=0
						Pp.Size=vnew(1,1,1)
						Pp.Transparency=.9
						Pp.Position=d.Hit.p
						Pp.BrickColor=BrickColor.Green()
						Pp.CanCollide=false
						Pp.Anchored=true
						new('SpecialMesh',Pp).MeshType='Sphere'
						Pp.Mesh.Scale=vnew(50,50,50)
						Pp.Parent=workspace
						for lw=1,10 do	
							nPp=new('Part')
							nPp.formFactor=0
							nPp.Size=vnew(1,1,1)
							nPp.Transparency=.9
							nPp.CFrame=Pp.CFrame
							nPp.BrickColor=BrickColor.Green()
							nPp.CanCollide=false
							nPp.Anchored=true
							new('SpecialMesh',nPp).MeshType='Sphere'
							nPp.Mesh.Scale=vnew(4.5*lw,4.5*lw,4.5*lw)
							nPp.Parent=Pp
						end
						debris:AddItem(Pp,200*.2)
						delay(0,function()
							for RoundNew=1,200 do
								wait(.2)
								if Pp==nil then break end
								pcall(function()
									for yy,X in ipairs(game:service('Players'):GetPlayers())do
										if X~=player then
											pcall(function()
												if (X.Character.Torso.Position-Pp.Position).magnitude<30 then
													for z,humaa in pairs(X.Character:children())do
														if humaa:IsA('Humanoid')then 
															pcall(function()
																newSound=new('Sound')
																newSound.Parent=X.Backpack
															end)
															humaa:TakeDamage(5)
															if humaa.Health<=0 then
																ko(humaa)
															end
														end
													end
												end
											end)
										end
									end
								end)
							end
							pcall(function()Pp:remove()end)
							Poisoning=false
						end)
					elseif k=='e'then
						if clickActive==true or kayActive==true then return end
						kayActive=true
						Round=true
						Sp.Enabled=true
						soundnew=new('Sound')
						soundnew.SoundId='rbxasset://sounds/collide.wav'
						soundnew.Pitch=.5
						soundnew.Volume=1
						repeat
							wait(.05)
							pcall(function()
								for ah,Vplayer in ipairs(game:service('Players'):GetPlayers())do
									pcall(function()
										if (Vplayer.Character.Torso.Position-d.Hit.p).magnitude<7 then
											for l,o in pairs(Vplayer.Character:children())do
												if o:IsA('Humanoid')then ko(o)end
											end
										end
									end)
								end
								pcall(function()player.Character.Torso.CFrame=fnew(player.Character.Torso.Position,vnew(d.hit.p.x,0,d.hit.p.z))end)
								Apart=new('Part')
								soundnew:clone().Parent=Apart
								debris:AddItem(Apart,.3)
								Apart.formFactor=0
								Apart.Size=vnew(1,1,1)
								Apart.Transparency=.2
								Apart.CanCollide=true
								--Apart.Anchored=true 
								rand=math.random(1,6)
								new('BlockMesh',Apart).Scale=vnew(rand,rand,rand)
								Apart.BrickColor=BrickColor.random()
								Apart.CFrame=rot(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))+d.Hit.p+vnew(math.random(-2,2),math.random(-2,2),math.random(-2,2))
								Apart.Parent=workspace
								pcall(function()Apart.Sound:play()end)
								pcall(function()Apart.Sound:play()end)
								exp=new('Explosion')
								exp.BlastRadius=6
								exp.Position=Apart.Position
								exp.Parent=Apart
							end)
						until Round==false
						pcall(function()
							soundnew:remove()
							Sp.Enabled=false 
						end)
 
						kayActive=false
					elseif k=='n'then
						if clickActive==true then return end
						kayActive=true
						Smoke.RiseVelocity=20
						x(function()
							if Smoke.Enabled==true then return end
							for i,v in pairs(SmokePart:children())do
								x(function()v.Enabled=true end)
							end
							for b=1,10 do
								wait()
								for i,v in pairs(tool:children())do
									if v==staff then
										v.BrickColor=bcn(1003)
										v.Material=('Slate')
										wait()
										v.Material=('Wood')
										v.BrickColor=bcn('Reddish brown')
									end
									if v~=staff and v~=SmokePart and v~=script then
										v.Material=('Plastic')
										v.Transparency=b/10
										if b==10 then
											v:remove()
										end
									end
								end
							end
							for i,v in pairs(SmokePart:children())do
								x(function()v.Enabled=false end)
							end
							Smoke.RiseVelocity=5
							kayActive=false
						end)
					elseif k=='q'then
						if clickActive==true then return end
						kayActive=true
						x(function()
							if Sp.Enabled==true then return end
							Sp.Enabled=true
							Model=new('Model',player.Character)
							debris:AddItem(Model,30)
							Model.Name='Snare'..random(-999999,999999)
							partnew=new('Part')
							partnew.Anchored=true
							partnew.Shape=0
							partnew.Size=vnew(4,4,4)
							partnew.Material=('Slate')
							partnew.BrickColor=bcn('Bright red')
							partnew.BottomSurface=0
							partnew.TopSurface=0
							partnew.Name='Main'
							partnew.CFrame=fnew(d.Hit.p.x,d.Hit.p.y,d.Hit.p.z)
							partnew.Parent=Model
							for ee=1,6 do
								partlist={}
								for aa=1,14 do 
									wait()
									p=new('Part')
									partlist[aa]=p
									p.formFactor=3
									p.CanCollide=false
									p.Size=vnew(2,2,2)
									p.BottomSurface=0
									p.TopSurface=0
									p.Material=('Slate')
									if aa~=1 then
										p.BrickColor=bcn(1003)
										p.Size=Vector3.new(2,2,2/(aa/10))
									end
									p.CFrame=partnew.CFrame
									p.Parent=Model
									if aa==1 then
										w=new('Weld',partnew)
									else
										wq=aa-1
										w=new('Weld',partlist[wq])
									end
									w.Part0=w.Parent
									w.Part1=p
									w.C0=rot(0,0,.25/-aa)+vnew(p.Size.x/2,0,0)
									if aa==2 then
										w.C0=rot(0,ee,.2)+vnew(0,.2,0)
									end
								end
							end
							for i,v in pairs(Model:children())do
								if v:IsA('BasePart')then
									v.Anchored=true
									v:BreakJoints()
								end
							end
							sing('1',partnew)
							Sp.Enabled=false
							kayActive=false
						end)
					end
				end)
			end)			

			x(function()mainarm=player.Character['Right Arm']
				weld=new('Weld',mainarm)
				weld.Part0=weld.Parent
				weld.Part1=staff
				weld.C0=rot(-pi/2,0,0)+vnew(0,-1,.55)
			end)
			tool.TextureId='http://www.roblox.com/asset/?id=54353092'
			mode=1
			if z~=nil then return end
			z='asd'
			for i,v in pairs(tool:children())do
				if v~=staff and v~=script then
					v:remove()
				end
			end
			x(function()
				for cc=1,6 do
					for i=1,13 do
						wait''
						if tool.Parent~=player.Character then
							break
						end
						x(function()
								p=new('Part')
								p.Name=i
								p.formFactor=3
								p.CanCollide=false
								p.Size=vnew(.6,.6,.6)
								p.Material=('Slate')
								if i~=1 then
									p.Size=vnew(.52+i/200,.52-i/40,.52-i/40)
									p.BrickColor=bcn(1003)
								end
								p.CFrame=staff.CFrame
								p.Parent=tool
								if i==1 then
									w=new('Weld',staff)
								else
									qn=tool[i-1]
									w=new('Weld',tool[i-1])
									qn.Name='?'
								end
								w.Part0=w.Parent
								w.Part1=p
								if i==1 then
									w.C0=rot(0,-pi/2*cc/1.5,.2)+vnew(0,staff.Size.y/2,0)
								else
									w.C0=rot(0,0,.2)+vnew(p.Size.x/2,0,0)
								end
							end)
						end
					end
				end)
			p=new('Part')
			p.Shape=0
			p.Name='a'
			p.Material=('Slate')
			p.Size=vnew(1,1,1)
			p.CanCollide=false
			p.Parent=tool
			w=new('Weld',staff)
			w.Part0=staff
			w.Part1=p
			w.C0=fnew(0,staff.Size.y/2,0)

			p=new('Part')
			p.Shape=0
			p.Name='Smoke'
			p.Material=('Slate')
			p.BottomSurface=0
			p.TopSurface=0
			p.Size=vnew(1,1,1)
			p.BrickColor=bcn(1003)
			p.CanCollide=false
			p.Parent=tool
			Smoke=new('Smoke',p)
			Smoke.Size=.01
			Smoke.Enabled=false
			Smoke.Color=cnew(0,0,0)
			Smoke.Opacity=1
			Smoke.RiseVelocity=5
			Sp=new('Sparkles')
			Sp.Enabled=false
			Sp.Parent=p
			Sp.Color=cnew(1,0,0)
			w=new('Weld',staff)
			w.Part0=staff
			w.Part1=p
			w.C0=fnew(0,staff.Size.y/1.3,0)
			SmokePart=p
			hagal={}
			for y=1,4 do
				for i=1,20 do
					if tool.Parent~=player.Character then
						break
					end
					p=new('Part')
					hagal[i]=p
					p.formFactor=3
					p.Name='q'
					p.BrickColor=bcn(1003)
					p.Size=vnew(.5,.4,.5)
					p.Material=('Slate')
					p.CanCollide=false
					p.Parent=tool
					if i==1 then
						w=new('Weld',staff)
					else
						w=new('Weld',hagal[i-1])
					end
					w.Part0=w.Parent
					w.Part1=p
					if i==1 then
						w.C0=rot(0,pi/2*y,0)+vnew(0,(staff.Size.y/2)-i*p.Size.y+.2,0)
					elseif i<=10 then
						w.C0=rot(0,pi/2/i,0)+vnew(.05,-p.Size.y/2,0)
					elseif i>10 then
						w.C0=rot(.1,pi/2/i*6,0)+vnew(.03,-p.Size.y,0)
					end
					wait''
				end
			end
			for i,v in pairs(tool:children())do
				if v.Name=='Smoke'then
					v.Touched:connect(function(a)
						x(function()
							if a.Parent~=player.Character and a.Parent~=tool then
								if mode==1 then
									s1(a)
								elseif mode==2 then
									s2(a)
								elseif mode==3 then
									s3(a)
								end
							end
						end)
					end)
				end
			end
		end)
		tool.Unequipped:connect(function()
			if tool.Parent:IsA('Backpack')then
				for i,v in pairs(tool:children())do
					if v~=staff and v~=script then
						v:remove()
					end
				end
			end
			z=nil
		end)
		x(function()
			player.Character.Humanoid.Died:connect(function()if tool.Parent~=player.Character then tool:remove() return end
				if fakestaff~=nil then return end
				fakestaff=new('Model',workspace)
				debris:AddItem(fakestaff,10)
				for i,v in pairs(tool:children())do
					if v~=script then
						v.Parent=fakestaff
						v.Anchored=true
						x(function()v.Smoke.Enabled=true end)
						x(function()v.Sparkles.Enabled=true end)
					end
				end
				sing('2',fakestaff.Smoke)
				fakestaff.Handle:remove()
				fakestaff:BreakJoints()
				tool:remove()
			end)
		end)
