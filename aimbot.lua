if leleltru then
		local lelp={}
		local lelt={}
		local bestp
		local aimbased=true
		local weightbased=false
		local sightbased=true
		local autoshoot=false
		local shooting=false
		input.keyboard.onkeydown:connect(function(key)
			if input.keyboard.down.leftalt then
				if key=="u" then
					autoshoot=not autoshoot
					print("autoshoot",autoshoot)
				elseif key=="j" then
					aimbased=not aimbased
					print("aim",aimbased)
				elseif key=="k" then
					weightbased=not weightbased
					print("weight",weightbased)
				elseif key=="l" then
					sightbased=not sightbased
					print("sight",sightbased)
				end
			end
		end)
		char.aimbotstep=function()
			local players=game.Players:GetChildren()
			for i,v in next,players do
				if v.Character and v.Character:FindFirstChild("Head") then
					if not lelp[v] then
						lelp[v]={}
					end
					table.insert(lelp[v],1,v.Character.Head.Position)
					table.remove(lelp[v],17)
				else
					lelp[v]=nil
				end
			end
			table.insert(lelt,1,tick())
			table.remove(lelt,17)
			local ignorelist={camera.currentcamera,character,workspace.Ignore}
			if input.keyboard.down["leftalt"] and weapon and aimbotshit.speed then
				aimbotshit.fuckoff=true
				if bestp and hud:getplayerhealth(bestp)<=0 or not bestp then
					bestp=nil
				--[[local bestdot=1-2^-5
					for i,v in next,players do
						if lelp[v] and v~=game.Players.LocalPlayer and v.TeamColor~=game.Players.LocalPlayer.TeamColor then
							--print(lelp[v][1])
							local whatever=vector.anglesyx(camera.angles.x,camera.angles.y):Dot((lelp[v][1]-camera.cframe.p).unit)
							if whatever>bestdot then
								bestdot=whatever--hud:getplayerhealth(
								bestp=v
							end
						end
					end]]
					--NEW ALG
					local look=vector.anglesyx(camera.angles.x,camera.angles.y)
					local bestscore=0
					for i,v in next,players do
						ignorelist[#ignorelist+1]=v.Character
					end
					for i,v in next,players do
						if lelp[v] and v~=game.Players.LocalPlayer and v.TeamColor~=game.Players.LocalPlayer.TeamColor then
							local rel=lelp[v][1]-camera.cframe.p
							local lookvalue=look:Dot(rel.unit)
							lookvalue=math.pi-math.acos(lookvalue<-1 and -1 or lookvalue<1 and lookvalue or 1)
							local tlook=replication.playerangles(v)
							local tlookvalue=-vector.anglesyx(tlook.x,tlook.y):Dot(rel.unit)
							tlookvalue=math.pi-math.acos(tlookvalue<-1 and -1 or tlookvalue<1 and tlookvalue or 1)
							local healthvalue=hud:getplayerhealth(v)
							healthvalue=healthvalue<=0 and 0 or 1/healthvalue
							local distvalue=1/rel.magnitude
							local score=(aimbased and lookvalue or 1)*(weightbased and tlookvalue*healthvalue*distvalue or 1)
							if score>bestscore then
								local lel=raycast(workspace,ray(camera.cframe.p,rel),ignorelist)
								if sightbased and not lel or not sightbased then
									bestscore=score
									bestp=v
								end
							end
						end
					end
				end
				if bestp then
					local bestlelp=lelp[bestp]
					local lel=raycast(workspace,ray(camera.cframe.p,bestlelp[1]-camera.cframe.p),ignorelist)
					if sightbased and lel then
						bestp=nil
					end
					local v=physics.trajectory(camera.cframe.p,aimbotshit.addv and rootpart.Velocity/loltimescale or nv,aimbotshit.accel,bestlelp[1],(bestlelp[1]-bestlelp[#bestlelp])/(lelt[1]-lelt[#bestlelp]),nv,aimbotshit.speed)
					--print(bestpart.Velocity)
					--print(bestlelp[1],(bestlelp[1]-bestlelp[#bestlelp])/(lelt[1]-lelt[#bestlelp]))
					if v then
						camera:setlookvector(v)
						if autoshoot then
							shooting=true
						end
					else
						if autoshoot and shooting then
							shooting=false
							weapon:shoot(false)
							if weapon.setaim then weapon:setaim(false) end
						end
					end
				else
					if autoshoot and shooting then
						shooting=false
						weapon:shoot(false)
						if weapon.setaim then weapon:setaim(false) end
					end
				end
			else
				if shooting then
					shooting=false
					weapon:shoot(false)
					if weapon.setaim then weapon:setaim(false) end
				end
				bestp=nil
				aimbotshit.fuckoff=nil
			end
		end
		function char.lelelelelstep()
			if shooting and autoshoot then
				if weapon.setaim then weapon:setaim(true) end
				weapon:shoot(true)
			end
		end
	else
		char.aimbotstep=function() end
		char.lelelelelstep=function() end
	end