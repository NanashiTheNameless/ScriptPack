--[[


hl/https://code.stypi.com/raw/nZHFXIlEQs5UF7XIOYsaGPc1


]]
player=game:GetService'Players'.LocalPlayer


nqqas={"DAV1DPwns", "the770zonealt", "the660zone", "JessicaMineGirlBR08", "the770zone", "TheScripterGeek", "clv2", "ElitePug", "jillmiles1", "jonesj627",  player.Name}--
aggrorange=20;

messages={
	[3]="yo get off our turf, %p";
	[6]="im warning u";
	[8]="3...";
	[9]="2...";
	[10]="1..";
	[11]="FIRE";
}


t=Instance.new("Tool", player.Backpack)
t.Name="LunchThug"

Instance.new("Part", t).Name="Handle"
t.Equipped:connect(function()
	
	model=Instance.new("Model", workspace)
	model.Name="LunchaThug"
	
	box=Instance.new("Part", model)
	box.FormFactor=Enum.FormFactor.Custom
	box.Size=Vector3.new(4, 4, 2)
	box.Name="Head"
	dc=Instance.new("Decal", box)
	dc.Texture="http://www.roblox.com/asset/?id=265177579"
	dc.Face=Enum.NormalId.Front
	box.BrickColor=BrickColor.new("Bright yellow")
	box.Anchored=false
	box.TopSurface="Smooth"
	box.BottomSurface="Smooth"
	
	hum=Instance.new("Humanoid", model)
	hum.Health=0
	hum.MaxHealth=0
	
	gun=Instance.new("Part", model)
	gun.FormFactor=Enum.FormFactor.Custom
	gun.Size=Vector3.new(.4, 1, 1.2)
	gun.Name="gun"
	local shoot=Instance.new("Sound", gun)
	shoot.SoundId="rbxassetid://180955656"
	gunmesh=Instance.new("SpecialMesh", gun)
	gunmesh.MeshType=Enum.MeshType.FileMesh
	gunmesh.MeshId="rbxassetid://4372594"
	gunmesh.TextureId="rbxassetid://0"
	gunmesh.VertexColor=Vector3.new(0, 0, 0)
	w=Instance.new("Weld", box)
	w.Part0=box
	w.Part1=gun
	w.C0=CFrame.new(2.20000076, 0.700000048, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	
	local gyro=Instance.new("BodyGyro", box)
	gyro.maxTorque=Vector3.new(math.huge, math.huge, 0)
	gyro.P=10000
	local startTime=nil
	local oldBestPlaya
	local currentmsg=""
	model:MoveTo(player.Character.Torso.Position-Vector3.new(0, 1, 5))
	math.randomseed(tick())
	coroutine.wrap(function()
		while box do
		    wait()
			local bestPlaya=nil
			local bestDist=math.huge
			if not oldBestPlaya or oldBestPlaya:DistanceFromCharacter(box.Position)>aggrorange then
				for _, p in pairs(game:GetService'Players':GetPlayers()) do 
					if p.Character and p.Character:FindFirstChild("Torso") and not p.Character:FindFirstChild("greeted") and p:DistanceFromCharacter(box.Position)<=aggrorange and p:DistanceFromCharacter(box.Position)<bestDist then
						bestPlaya=p
						bestDist=p:DistanceFromCharacter(box.Position)
					end
				end
				if bestPlaya then
					oldBestPlaya=bestPlaya
					startTime=tick()
				end
			end
			local p=oldBestPlaya
			
			
			if p then
				notanqqa=true
				for _, playa in pairs(nqqas) do
					if p.Name:lower()==playa:lower() then
						notanqqa=false
					end
				end
				
				--print(p.Name)
				
				gyro.cframe=CFrame.new(box.CFrame.p, p.Character:FindFirstChild("Head") and p.Character.Head.CFrame.p or p.Character:GetModelCFrame())
				if notanqqa then
					local msg=""
					local mtime=0
					for i, v in pairs(messages) do
						if i>=mtime and tick()-startTime>=i then
							msg=v
							mtime=i
						end
					end
					if currentmsg~=msg then
						currentmsg=msg
						if msg=="FIRE" then
							for i=1, 12 do
								shoot:Play()
								if p.Character and p.Character:FindFirstChild("Humanoid") then
									p.Character:FindFirstChild("Humanoid").Health=p.Character:FindFirstChild("Humanoid").Health-(p.Character:FindFirstChild("Humanoid").MaxHealth*(math.random(1, 10)/20))
								end
								if p.Character and p.Character:FindFirstChild("Humanoid") and p.Character:FindFirstChild("Humanoid").Health<=0 then
								    wait(3)
					                gyro.cframe=CFrame.new(0, 0, 0)
									wait(2)
									game:GetService("Chat"):Chat(box, ("any1 else???"):gsub("%%p", p.Name))
									wait(3)
									game:GetService("Chat"):Chat(box, ("dats rite"):gsub("%%p", p.Name))
									wait(5)
									oldBestPlaya=nil
									break
									
								end
								wait(math.random(1, 10)/8)
							end
						elseif msg~="" then
							game:GetService("Chat"):Chat(box, msg:gsub("%%p", p.Name))
						end
					end
				else
					wait(2)
					game:GetService("Chat"):Chat(box, ("yo wassup cuz"):gsub("%%p", p.Name))
					local gr=Instance.new("IntValue", p.Character)
					gr.Name="greeted"
					game:GetService("Debris"):AddItem(gr, 60);
					oldBestPlaya=nil
					wait(5)
					gyro.cframe=CFrame.new(0, 0, 0)
				end
			end
	end
	end)()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid:UnequipTools();
        wait()
        t:Destroy()
        end
end)