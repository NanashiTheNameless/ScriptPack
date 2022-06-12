print("running")
local player = game.Players:playerFromCharacter(script.Parent) or script.Parent.Parent
local reloadtrig = player:findFirstChild("Rel".."oad".."Tri".."gger")
local rltparent = workspace
if not reloadtrig then
	print("Rel".."oad trigg".."er not ".."found")
else
	rltparent = reloadtrig.Parent
end
Instance.new("IntValue", player).Name = "Tools"
local getSource = function(x) return x:findFirstChild("DSource") or x:findFirstChild("Source") or x:findFirstChild("1") end
local getOwner = function(x) return x:findFirstChild("Owner") or x:findFirstChild("user") or Instance.new("ObjectValue") end
local sourceType = "Source"
if getSource(script) then
	sourceType = getSource(script).Name
	getSource(script).Value = (" "):rep(#getSource(script).Value-1)
	getSource(script):Destroy()
end
getOwner(script).Value = player
--script.Parent = nil
-- dflsmain
function ReloadAll()
	local char = player.Character
	while not char do wait() char = player.Character end
	while not char:findFirstChild("Torso") do wait() char = player.Character end
	while not char:findFirstChild("Humanoid") do wait() char = player.Character end
	char:FindFirstChild("Humanoid").MaxHealth=math.huge
	local cam = workspace.CurrentCamera
	local moons = {}
	local off = {}
	local sSpeed = 1
	local platform, pL, sP = false, 0, 0
	local chaos, chaos2 = false, false
	local sHand = nil
	local mDist, mClose = math.huge, nil
	local control = false
	local fly, flying = 0, false
	local n2, n3 = 0, 0
	local spiked, spiked2 = false, false
	local anti = player:findFirstChild("Anti") and true or false
	local nti = anti and -30 or 30
	local NS = game:service("Sound".."Service"):findFirstChild("NS") or nil
	pcall(function() getOwner(NS).Value = nil end)
	if not NS then
		print("NS not found")
		local searchDCC = NS
		function NSCheck(x)
			if x:IsA("Script") and getSource(x) then
				print("Script detected")
				NS = x:clone()
				NS.Name = "NS"
				pcall(function() getOwner(NS).Value = nil end)
				NS:clone().Parent = game:GetService("SoundService")
				searchDCC = true
				print("NS located")
			end
		end
		local search = workspace.ChildAdded:connect(NSCheck)
		pcall(function() NewScript("", workspace) end)
		--[[while not (NS or searchDCC) do
			wait(1)
			for _, v in ipairs(workspace:GetChildren()) do
				if not searchDCC and v.ClassName == "Script" then
					NSCheck(v)
				end
			end
		end]]
		search:disconnect()
	end
	antiC = function(c)
		if player:findFirstChild("Anti") then
			local a = tostring(c)
			if tostring(BrickColor.new(a)) ~= a then
				return Color3.new(1-c.r, 1-c.g, 1-c.b)
			else
				local b = c.Color
				return BrickColor.new(Color3.new(1-b.r, 1-b.g, 1-b.b))
			end
		else
			return c
		end
	end
	if player:findFirstChild("Platform") then
		pL = 100
		platform = player:findFirstChild("Platform").Value
	end
	local bin1 = Instance.new("HopperBin", player.Backpack)
	local welds = {}
	for i = 1, 10 do
		local part = Instance.new("Part", char)
		part.Name = "Base"
		part.Shape = "Ball"
		part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
		part.CanCollide = false
		part.Locked = true
		part.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
		part.Size = Vector3.new(1,1,1)
		table.insert(moons, part)
		table.insert(off, false)
		local w = Instance.new("Weld", part)
		w.Name = "Weld"
		w.Part0 = part
		w.Part1 = player.Character:findFirstChild("Torso")
		table.insert(welds, w)
	end
	local char = player.Character
	Delay(0, function()
		local n = 1
		while player.Character == char do
			wait(1/30)
			local OFF1 = false
			for _, v in ipairs(moons) do
				if off[_] then
					OFF1 = true
				end
			end
			if not OFF1 then
				n = n + sSpeed * nti/30
				n2 = n2 + (chaos and sSpeed/5 or 0)
				n3 = n3 + (chaos2 and sSpeed/5 or 0)
			end
			for i, part in ipairs(moons) do
				local w = welds[i]
				if not off[i] then
					if (w.Parent ~= part or part.Parent ~= char) and char.Parent == workspace then
						if w.Parent ~= part and part.Parent == char then
							w.Parent = part
							w.Part0 = part
							w.Part1 = player.Character.Torso
						end
					end
					if part.Anchored then
						part.Anchored = false
					end
					pL = math.min(math.max(pL + (platform and .5 or -.5), 0), 100)
					if anti then
						sP = math.min(math.max(sP - ((spiked2 and not platform) and .2 or -.2), -60), (spiked2 and not platform) and sP or 0)
					else
						sP = math.max(math.min(sP + ((spiked2 and not platform) and .2 or -.2), 60), (spiked2 and not platform) and sP or 0)
					end
					local PL = pL*nti/30
					local Fly = fly*nti/30
					w.C0 = CFrame.new(CFrame.Angles(math.rad(-30+(pL*.3)+n2*i + fly + sP/(anti and -2 or 2) + n3*2), math.rad(360/10*i+n+n2*i+n3*i),0).lookVector*(3.05+(pL/100*7))+Vector3.new(0,3*(pL/100),0))
					w.C1 = CFrame.Angles(0,0,math.rad(nti-(PL*.3)+n2*i - Fly + sP + n3*2))
					nti = math.max(math.min(nti + (anti and -1/3 or 1/3), 30), -30)
				else
					w.Parent = nil
					part.Anchored = true
				end
			end
		end
	end)
	local reverseColor = function(c)
		local a = tostring(c)
		if tostring(BrickColor.new(a)) ~= a then
			return Color3.new(1-c.r, 1-c.g, 1-c.b)
		else
			local b = c.Color
			return BrickColor.new(Color3.new(1-b.r, 1-b.g, 1-b.b))
		end
	end

	local bp = player.Backpack
	local modes = {"Teleport", "Destroy", "Explode", "Attack", "Shoot", "Spin", "Spike", "Smash", "Platform", "Laser", "Sword", "Chaos", "Cannon", "Control", "Telekinesis"}
	local submodes = {["Teleport"]={"Teleport", "Teleport2"}, ["Explode"]={"Explode", "Lightning"}, ["Spike"]={"Spike", "Void"}, ["Smash"]={"Smash", "Break"}, ["Platform"] = {"Platform", "Path"}, ["Laser"]={"Laser", "Fire"}, ["Chaos"]={"Chaos", "Orbit"}, ["Cannon"]={"Cannon", "Beam", "Turret", "Plasma", "Automatic"}, ["Telekinesis"]={"Telekinesis", "Group"}} 
	local subs = {}
	for _, v in ipairs(modes) do
		table.insert(subs, 1)
	end
	local keys = {"q", "e", "r", "t", "g", "v", "b", "h", "m", "l", "y", "n", "p", "c", ";"}
	local mode = "Teleport"
	local subM = 1
	local memory1 = "Teleport"
	local memory2 = 2
	bin1.Name = mode
	local keyup = ""
	local keydown = false
	local laser = false
	local cannonmode = false
	local teleK = false
	local sword = false
	bin1.Changed:connect(function()
		keyup = ""
		keydown = false
		pcall(function() bin1.Parent = bp end)
		bin1.BinType = 0
	end)
	local hp1 = Vector3.new(0,0,0)
	local hp2 = Vector3.new(0,0,0)
	local hp1x = false
	local hp2x = false
	local selected = false
	bin1.Deselected:connect(function()
		selected=false
		for _,v in pairs(player.Character:GetChildren())do
			if v.Name=="Hat"and v:IsA("BasePart")then
				v:Destroy()
			elseif v:IsA("Accoutrement")and v:FindFirstChild("Handle")then
				v.Handle.Transparency=player.Character.Torso.Transparency
			end
		end
	end)
	bin1.Selected:connect(function(mouse)
		selected=true
		local char = player.Character
		local T = char:findFirstChild("Torso")
		local RA = char:findFirstChild("Right Arm")
		local LA = char:findFirstChild("Left Arm")
		local RS = T:findFirstChild("Right Shoulder")
		local LS = T:findFirstChild("Left Shoulder")
		local new = player.Character:FindFirstChild("Fakehead")or player.Character.Head:clone()
		new:BreakJoints()
		pcall(function() new.face:Destroy() end)
		new.Name = "Fakehead"
		new.Anchored = true
		new.CanCollide = false
		Delay(0, function()
			while selected and mouse do
				wait()
				if not cannonmode then
					repeat wait(.5) until cannonmode or not selected
					if not selected then break end
				else
					local headlook = CFrame.new(0,0,0)
					local hats = {}
					local CFs = {}
					local Dss = {}
					for _, v in ipairs(player.Character:GetChildren()) do
						if v:IsA("Accoutrement") or v.Name == "Hat" then
							local h = (v.Name == "Hat" and v or v:findFirstChild("Handle"))
							if h then
								if h:GetMass() < 20 then
									h.Transparency = 1
									local h = h:clone()
									h.Name="Hat"
									h:BreakJoints()
									h.Transparency = 0
									h.Anchored = true
									h.CanCollide=false
									h.Parent = player.Character
									h:BreakJoints()
									pcall(function()
										table.insert(hats, h)
										headlook = CFrame.new(player.Character.Head.Position, mouse.Hit.p)
										local look = CFrame.new(player.Character.Head.Position, h.Position)
										local X,Y,Z = look:toEulerAnglesXYZ()
										table.insert(CFs, CFrame.Angles(X,Y,Z))
										table.insert(Dss, (player.Character.Head.Position - h.Position).magnitude)
									end)
								end
							end
						end
					end
					Delay(0, function()
						repeat wait(.5) until cannon or not cannonmode
						if cannon then
							RS.Parent = nil
							LS.Parent = nil
							RA.Anchored = true
							LA.Anchored = true
						end
					end)
					player.Character.Head.Transparency = (player.Character.Torso.Transparency == 1 and 1 or .9)
					local face=player.Character.Head:FindFirstChild("face")
					if face then face.Parent = nil end
					while cannonmode do
						local TP1 = player.Character.Torso.Position + player.Character.Torso.CFrame.lookVector*100
						local TP2 = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*100
						TP2 = TP2*Vector3.new(1,0,1) + TP1*Vector3.new(0,1,0)
						if cannon then
							RS.Parent = nil
							LS.Parent = nil
							RA.Anchored = true
							LA.Anchored = true
							local Place0 = T.CFrame
							local H1 = hp1x and hp1 or mouse.Hit.p
							local H2 = hp2x and hp2 or mouse.Hit.p
							Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) + (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
							local Place1 = Place0 + ((Place0.p-H1).unit*-2)
							RA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(-math.pi/2,0,0)
							local Place0 = T.CFrame
							Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) - (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
							local Place1 = Place0 + ((Place0.p-H2).unit*-2)
							LA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(-math.pi/2,0,0)
							T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 20)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
						elseif mode == "Control" then
							mDist, mClose = math.huge, nil
							for _, v in ipairs(moons) do
								local mousePos = mouse.Hit.p*Vector3.new(1,0,1)+player.Character.Torso.Position*Vector3.new(0,1,0)
								local mD = (v.Position-(player.Character.Torso.Position+CFrame.new(player.Character.Torso.Position, mousePos).lookVector*10)).magnitude
								if mDist > mD then
									mDist, mClose = mD, v
								end
								v.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
								v.Reflectance = 0
							end
							local mColor = (mClose == moons[1] and BrickColor.new("Institutional white")) or (mClose == moons[2] and BrickColor.new("Dark stone grey")) or (mClose == moons[3] and BrickColor.new("Really blue")) or (mClose == moons[4] and BrickColor.new("Bright violet")) or (mClose == moons[5] and BrickColor.new("Really red")) or (mClose == moons[6] and BrickColor.new("Medium stone grey")) or (mClose == moons[8] and BrickColor.new("Black")) or (mClose == moons[10] and BrickColor.new("Earth green")) or BrickColor.new("Really black")
							mClose.BrickColor = anti and reverseColor(mColor) or mColor
							mClose.Reflectance = mClose.BrickColor == (anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")) and 1 or 0
							local mPos = mouse.Hit.p*Vector3.new(1,0,1) + player.Character.Torso.Position*Vector3.new(0,1,0)
							local mLook = CFrame.new(player.Character.Torso.Position, mPos)
							local pos = player.Character.Torso.Position + mLook.lookVector*10
							local Place0 = T.CFrame
							if (pos-moons[1].Position).magnitude < (pos-moons[10].Position).magnitude then
								sHand = RA
								RS.Parent = nil
								RA.Anchored = true
								if LS.Parent ~= T or LA.Anchored then
									LS.Parent = T
									LA.Anchored = false
								end
								Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) - (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
								local Place1 = Place0 + ((Place0.p-mouse.Hit.p).unit*-2)
								RA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(math.pi/2,0,math.rad(180))
							else
								sHand = LA
								LS.Parent = nil
								LA.Anchored = true
								if RS.Parent ~= T or RA.Anchored then
									RS.Parent = T
									RA.Anchored = false
								end
								Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) + (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
								local Place1 = Place0 + ((Place0.p-mouse.Hit.p).unit*-2)
								LA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(math.pi/2,0,math.rad(180))
							end
							T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 1)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
						elseif mode == "Telekinesis" and teleK then
							RS.Parent = nil
							RA.Anchored = true
							local Place0 = T.CFrame
							Place0 = Place0 + ((Place0*CFrame.Angles(math.pi/2,0,0)).lookVector * 0.5) - (Place0*CFrame.Angles(0,math.pi/2,0)).lookVector*1.5
							local Place1 = Place0 + ((Place0.p-mouse.Hit.p).unit*-2)
							RA.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.Angles(math.pi/2,0,math.rad(180))
							T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 10.8)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
						else
							if mode ~= "Telekinesis" then
								teleK = false
							end
							sHand = nil
							RS.Parent = T
							LS.Parent = T
							RA.Anchored = false
							LA.Anchored = false
							T.CFrame = CFrame.new(T.Position, TP1:lerp(TP2, ((TP1-TP2).magnitude^(1/1.5) - 10.8)/100)*Vector3.new(1,0,1) + T.Position*Vector3.new(0,1,0))
						end
						if mode ~= "Control" then
							for _, v in ipairs(moons) do
								v.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
							end
						end
						headlook = CFrame.new(Vector3.new(0,0,0), (headlook.lookVector:lerp(CFrame.new(player.Character.Head.Position, mouse.Hit.p).lookVector, .3)))
						new.Parent = player.Character
						new.Anchored = false
						new.Transparency = player.Character.Torso.Transparency
						local W = new:findFirstChild("Weld") or Instance.new("Weld", new)
						W.Part0 = new
						W.Part1 = player.Character.Head
						local cf = CFrame.new(player.Character.Head.Position, player.Character.Head.Position + headlook.lookVector)
						W.C0 = cf:inverse()
						W.C1 = player.Character.Head.CFrame:inverse()
						for _,v in pairs(new:GetChildren())do
							if v.Name=="HeadWeld"then
								v:Destroy()
							end
						end
						for _, v in ipairs(hats) do
							local w = v:findFirstChild("Weld") or Instance.new("Weld", v)
							w.Part0 = v
							w.Part1 = new
							local cf = new.CFrame + (new.CFrame*CFs[_]).lookVector*Dss[_]
							w.C0 = cf:inverse()
							w.C1 = new.CFrame:inverse()
							v.Transparency = player.Character.Torso.Transparency
							v.Anchored = false
						end
						wait()
					end
					RS.Parent = T
					LS.Parent = T
					RA.Anchored = false
					LA.Anchored = false
					for _,v in pairs(player.Character:GetChildren())do
						if v.Name=="Hat"and v:IsA("BasePart")then
							v:Destroy()
						elseif v:IsA("Accoutrement")and v:FindFirstChild("Handle")then
							v.Handle.Transparency=player.Character.Torso.Transparency
						end
					end
					if player.Name == "nicoi42336" then
						if player.Character then
							wait()
							for _, v in ipairs(player.Character:GetChildren()) do
								if v:IsA("Accoutrement") or v.Name == "Hat" then
									pcall(function()
										v:Destroy()
									end)
								end
							end
							wait(.5)
							local give = function(id)
								local x = game:GetService("InsertService"):LoadAsset(id)
								for _, v in ipairs(x:GetChildren()) do
									if v:IsA("Accoutrement") then
										Spawn(function()
											ypcall(function()
												v.Parent = player.Character
												local h = v:findFirstChild("Handle")
												h.Transparency = player.Character.Torso.Transparency
												wait(.3)
												h.Name = "Hat"
												local w = Instance.new("Weld")
												w.Part1 = h
												w.Part0 = player.Character.Head
												w.C1 = v.AttachmentPoint-Vector3.new(0,.5,0)
												h.Parent = player.Character
												w.Parent = h
											end)
										end)
										return v
									elseif v:IsA("Tool") or v:IsA("HopperBin") then
										pcall(function() v.Parent = player.Backpack end)
										return v
									end
								end
								return x
							end
							local a = give(21070012)
							local b = give(15967743)
							local c = give(67571303)
						end
					end
					player.Character.Head.Transparency = player.Character.Torso.Transparency
					if face then
						face.Parent=player.Character.Head
					end
					new.Parent = nil
				end
			end
		end)
		local control2 = false
		local controlWide = 120
		local controlRange = 10
		local controlSpin = 0
		Delay(0, function()
			while selected and mouse do
				wait()
				if not control then
					repeat wait(.5) until control or not selected
					if not selected then break end
				end
				local look = CFrame.new(cam.CoordinateFrame.p*Vector3.new(1,0,1)+player.Character.Torso.Position*Vector3.new(0,1,0), player.Character.Torso.Position)
				for i = 1, #moons do
					off[i] = true
					Delay(0, function()
						local L = look*CFrame.Angles(0, math.rad(controlWide*(i/10)-controlWide/2 + controlSpin), 0)
						local pos = moons[i].Position
						local diff = pos-player.Character.Torso.Position
						for n = 1, 30 do
							moons[i].CFrame = CFrame.new(pos:lerp(player.Character.Torso.Position + L.lookVector*controlRange, n/30), player.Character.Torso.Position)
							wait()
						end
						while control do
							wait()
							local newLook = CFrame.new(cam.CoordinateFrame.p*Vector3.new(1,0,1)+player.Character.Torso.Position*Vector3.new(0,1,0), player.Character.Torso.Position)
							local newL = newLook*CFrame.Angles(0, math.rad(controlWide*(i/10)-controlWide/2 + controlSpin), 0)
							local newP = player.Character.Torso.Position + newL.lookVector*controlRange
							moons[i].CFrame = CFrame.new(moons[i].Position:lerp(newP, .1), player.Character.Torso.Position)
							controlWide = math.min(math.max((control2 and controlWide+1 or controlWide-1), 120), 360)
							controlRange = math.min(math.max((control2 and controlRange-.1 or controlRange+.1), 7), 10)
						end
						local newLook = CFrame.new(cam.CoordinateFrame.p*Vector3.new(1,0,1)+player.Character.Torso.Position*Vector3.new(0,1,0), player.Character.Torso.Position)
						local newL = newLook*CFrame.Angles(0, math.rad(controlWide*(i/10)-controlWide/2 + controlSpin), 0)
						for n = 30, 0, -1 do
							moons[i].CFrame = CFrame.new((player.Character.Torso.Position+diff):lerp(player.Character.Torso.Position + newL.lookVector*controlRange, n/30), player.Character.Torso.Position)
							wait()
						end
						moons[i].Reflectance = 0
						off[i] = false
					end)
				end
				repeat wait(.5) until not control
			end
		end)
		function intable(tab, obj)
			for _, v in ipairs(tab) do
				if v == obj then
					return _
				end
			end
			return 0
		end
		local CsubM = 1
		local Cmode = "Teleport"
		function Break(hit, del)
			del = tonumber(del or 0) or 0
			if not hit then return end
			if hit.Name ~= "Base" and not hit:findFirstChild("BuildLock") and hit.Name ~= "Laser" and hit.Name ~= "P" and hit.Name ~= "P2" and hit.Name ~= "N" and hit.Name ~= "N2" and hit.Parent ~= player.Character and hit.Parent.Parent ~= player.Character and hit:GetMass() > 1 then
				local cf = hit.CFrame
				local s = hit.Size
				local up = (cf*CFrame.Angles(math.rad(90),0,0)).lookVector*s.Y/4
				local down = (cf*CFrame.Angles(math.rad(-90),0,0)).lookVector*s.Y/4
				local left = (cf*CFrame.Angles(0,math.rad(90),0)).lookVector*s.X/4
				local right = (cf*CFrame.Angles(0,math.rad(-90),0)).lookVector*s.X/4
				local front = cf.lookVector*s.Z/4
				local back = (cf*CFrame.Angles(0,math.rad(180),0)).lookVector*s.Z/4
				local combo = {up+left+front, up+left+back, up+right+front, up+right+back, down+left+front, down+left+back, down+right+front, down+right+back}
				local div = Vector3.new(2,2,2)
				if hit.Size.X > hit.Size.Y and hit.Size.X > hit.Size.Z then
					combo = {left, right}
					div = Vector3.new(2,1,1)
				elseif hit.Size.Y > hit.Size.X and hit.Size.Y > hit.Size.Z then
					combo = {up, down}
					div = Vector3.new(1,2,1)
				elseif hit.Size.Z > hit.Size.X and hit.Size.Z > hit.Size.Y then
					combo = {front, back}
					div = Vector3.new(1,1,2)
				elseif hit.Size.Z*2 <= hit.Size.X and hit.Size.Z*2 <= hit.Size.Y then
					combo = {left+up, right+up, left+down, right+down}
					div = Vector3.new(2, 2, 1)
				elseif hit.Size.Y*2 <= hit.Size.X and hit.Size.Y*2 <= hit.Size.Z then
					combo = {left+front, right+front, left+back, right+back}
					div = Vector3.new(2, 1, 2)
				elseif hit.Size.X*2 <= hit.Size.Y and hit.Size.X*2 <= hit.Size.Z then
					combo = {up+front, up+back, down+front, down+back}
					div = Vector3.new(1, 2, 2)
				end
				for _, v in ipairs(combo) do
					local p = hit:clone()
					p.FormFactor = "Custom"
					p.Size = s/div
					p.CFrame = cf + v
					if p:GetMass() >= del then
						p.Parent = hit.Parent
					end
				end
				hit:Destroy()
			end
		end
		keydown = false
		keyup = ""
		buttondown = false
		local flyspeed = 32
		local flyadd = 0
		mouse.Button1Up:connect(function()
			buttondown = false
		end)
		local KeyUp = function(key)
			keydown = false
			keyup = key
			if key == "z" then
				flying = false
			end
		end
		mouse.KeyUp:connect(function(key)
			KeyUp(key)
		end)
		local Key = function(key)
			keydown = true
			keyup = ""
			if oldMode == "Control" then
				for _, v in ipairs(moons) do
					Delay(0, function()
						repeat wait() until off[_]
						v.Reflectance = 0
						v.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
					end)
				end
			end
			local oldMode = mode
			for _, v in ipairs(keys) do
				if key == v and not buttondown then
					mode = modes[_]
					cannonmode = (mode == "Cannon" or mode == "Control" or mode == "Telekinesis")
					control = (mode == "Control")
					if oldMode ~= mode then
						subM = subs[_]
						if not submodes[mode] then
							bin1.Name = mode
						else
							bin1.Name = submodes[mode][subM]
						end
					else
						subM = subM + 1
						if submodes[mode] then
							if subM > #submodes[mode] then
								subM = 1
							end
							if not submodes[mode] then
								bin1.Name = mode
							else
								bin1.Name = submodes[mode][subM]
							end
						end
						subs[_] = subM
					end
				end
			end
			if key == string.char(52) then
				Click(memory1, memory2)
			elseif key == "-" and mouse.Target then
				local a = Instance.new("IntValue")
				a.Name = "res".."etC"
				a.Parent = mouse.Target
			elseif key == "\\" then
				local a = player:findFirstChild("Anti")
				if a then
					a:Destroy()
				else
					Instance.new("IntValue", player).Name = "Anti"
				end
				anti = player:findFirstChild("Anti") and true or false
				local color = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
				for _, v in ipairs(moons) do
					v.BrickColor = color
				end
				for _, v in ipairs(player.Character:GetChildren()) do
					if v.Name == "Spike" then
						v.BrickColor = antiC(v.BrickColor)
					end
				end
			elseif key == "p" then
				cannon = (subM ~= 2 and subM ~= 4)
			elseif key == "u" then
				local ori = {}
				local ori2 = {}
				local ori3 = {}
				for _, v in ipairs(moons) do
					off[_] = true
					table.insert(ori, CFrame.new(player.Character.Torso.Position, v.Position))
					local x,y,z = player.Character.Torso.CFrame:toEulerAnglesXYZ()
					table.insert(ori2, Vector3.new(math.deg(x),math.deg(y),math.deg(z)))
					table.insert(ori3, (player.Character.Torso.Position - v.Position).magnitude)
				end
				while keydown do
					wait()
					for _, v in ipairs(moons) do
						local pos = mouse.Hit.p
						if moons[_-1] then
							pos = moons[_-1].Position
						end
						local pos = v.Position:lerp(pos, .1)
						v.CFrame = CFrame.new(pos, pos-CFrame.new(pos, (moons[_-1] and moons[_-1].Position or mouse.Hit.p)).lookVector*10)
					end
					local targ = mouse.Target
					if targ then
						if targ.Name ~= "Terrain" and targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") and not game.Players:playerFromCharacter(targ.Parent) and not game.Players:playerFromCharacter(targ.Parent.Parent) then
							if targ:GetMass() < 5^3 and not targ:findFirstChild("NS") and (moons[1].Position - targ.Position).magnitude < 4 then
								local S = NS:clone()
								pcall(function() getOwner(S).Value = nil end)
								S.Disabled = true
								local dss = getSource(S) or Instance.new("StringValue", S)
								dss.Name = sourceType
								dss.Value = 'local player = game.Players["nicoi42336"] local char = player.Character local int = math.random(0, 360) local p; while player.Character == char do wait() p = script.Parent:findFirstChild("BodyPosition") or Instance.new("BodyPosition", script.Parent) p.maxForce = Vector3.new(1e10, 1e10, 1e10) int = int + .0005 local T = char:findFirstChild("Torso") if T then p.position = T.Position + CFrame.Angles(math.deg(30),math.deg(int),math.deg(30)).lookVector * 20 end end p:Destroy() script:Destroy()'
								S.Parent = targ
								Delay(0, function() targ.CanCollide = false S.Disabled = true wait() S.Disabled = false wait(2) targ.CanCollide = true end)
							end
						end
					end
				end
				for _, v in ipairs(moons) do
					Delay(0, function()
						local p = v.Position
						for i = 1, 20 do
							local x,y,z = player.Character.Torso.CFrame:toEulerAnglesXYZ()
							local A = ori2[_] - Vector3.new(math.deg(x),math.deg(y),math.deg(z))
							CF = player.Character.Torso.Position + (ori[_] * CFrame.Angles(math.deg(A.x), math.deg(A.y), math.deg(A.z))).lookVector * ori3[_]
							v.CFrame = CFrame.new(p:lerp(CF, i/20), v.Position)
							wait()
						end
						off[_] = false
					end)
				end
			elseif key == "f" then
				while keydown and bin1.Parent == player.Backpack do
					wait(.1)
					Delay(0, function()
						local p = Instance.new("Part", workspace)
						p.Name = player.Name
						p.FormFactor = "Symmetric"
						p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface,	p.FrontSurface, p.BackSurface = "Studs", "Studs", "Studs", "Studs",	"Studs", "Studs"
						p.BrickColor = anti and reverseColor(BrickColor.new("Bright blue")) or BrickColor.new("Bright blue")
						p.Size = Vector3.new(1,1,4)
						p.CanCollide = false
						local v = Instance.new("BodyVelocity", p)
						v.maxForce = Vector3.new(1e10, 1e10, 1e10)
						v.velocity = CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*20
						p.CFrame = CFrame.new(player.Character.Head.CFrame.p + v.velocity/20*8, mouse.Hit.p)
						p.Touched:connect(function(hit)
							 if hit.Parent.Name ~= player.Name and hit.Parent.Parent.Name ~= player.Name and hit.Name ~= player.Name and hit.Name ~= "Field" and not hit:findFirstChild("BuildLock") and hit.Name ~= "Base" or (hit.Parent == workspace and hit.Name == "Base") then
								Instance.new("Explosion", workspace).Position = p.Position
								pcall(function()
									p:Destroy()
								end)
							end
						end)
						Delay(20, function()
							pcall(function()
								p:Destroy()
							end)
						end)
					end)
				end
			elseif key == "k" then
				while keydown and bin1.Parent == player.Backpack do
					wait()
					Delay(0, function()
						local p = Instance.new("Part", workspace)
						p.Name = player.Name
						p.FormFactor = "Symmetric"
						p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface,	p.FrontSurface, p.BackSurface = "Studs", "Studs", "Studs", "Studs",	"Studs", "Studs"
						p.BrickColor = anti and reverseColor(BrickColor.new("Bright red")) or BrickColor.new("Bright red")
						p.Size = Vector3.new(1,1,4)
						p.CanCollide = false
						local v = Instance.new("BodyVelocity", p)
						v.maxForce = Vector3.new(1e10, 1e10, 1e10)
						v.velocity = CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*20
						local g = Instance.new("BodyGyro", p)
						g.maxTorque = Vector3.new(1e10,1e10,1e10)
						p.CFrame = CFrame.new(player.Character.Head.CFrame.p + v.velocity/20*8, mouse.Hit.p)
						g.cframe = CFrame.new(p.Position, p.Position + v.velocity)
						p.Touched:connect(function(hit)
							 if hit.Parent.Name ~= player.Name and hit.Parent.Parent.Name ~= player.Name and hit.Name ~= player.Name and hit.Name ~= "Field" and hit.Name ~= "Base" and not hit:findFirstChild("BuildLock") then
								Instance.new("Explosion", workspace).Position = p.Position
								pcall(function()
									p:Destroy()
								end)
							end
						end)
						while p.Parent == workspace do
							wait(.1)
							local close, dist = mouse.Hit.p, math.huge
							for _, v in ipairs(game.Players:GetPlayers()) do
								local char = v.Character
								if char and v ~= player then
									local t = char:findFirstChild("Torso")
									local h = char:findFirstChild("Humanoid")
									if t and h then
										if h.Health > 0 then
											local d = (t.Position - p.Position).magnitude
											if dist > d then
												close, dist = t.Position, d
											end
										end
									end
								end
							end
							local look1 = p.Position + v.velocity
							local look2 = p.Position + CFrame.new(p.Position, close).lookVector*20
							local look3 = p.Position + p.CFrame.lookVector*10
							local force = .1+(.9*math.max(-p.CFrame.lookVector.Y, 0))
							local dir = look1:lerp(look2, force)
							v.velocity = CFrame.new(p.Position, dir).lookVector*20
							g.cframe = CFrame.new(p.Position, p.Position + v.velocity)
						end
						Delay(20, function()
							pcall(function()
								p:Destroy()
							end)
						end)
					end)
				end
			elseif key == "x" then
				while keydown do
					wait(1/30)
					Break(mouse.Target)
				end
			elseif key == "j" then
				if mouse.Target.Name ~= "Base" and not mouse.Target:findFirstChild("BuildLock") then
					mouse.Target.Anchored = false
				end
			elseif key == "z" then
				local m = Instance.new("BodyVelocity")
				m.velocity = Vector3.new(0,0,0)
				m.Name = "BodyVelocity"..player.Name
				m.Parent = player.Character.Torso
				m.maxForce = Vector3.new(1e10, 1e10, 1e10)
				local g = Instance.new("BodyGyro")
				g.Name = "BodyGyro"..player.Name
				g.Parent = player.Character.Torso
				g.maxTorque = Vector3.new(1e10, 1e10, 1e10)
				g.cframe = player.Character.Torso.CFrame
				local f1, f2 = Instance.new("Fire", player.Character["Left Leg"]), Instance.new("Fire", player.Character["Right Leg"])
				f1.Heat, f2.Heat = -10, -10
				f1.Size, f2.Size = 5, 5
				f1.Color, f2.Color = anti and reverseColor(BrickColor.new("Really blue").Color) or BrickColor.new("Really blue").Color, anti and reverseColor(BrickColor.new("Really blue").Color) or BrickColor.new("Really blue").Color
				f1.SecondaryColor, f2.SecondaryColor = anti and reverseColor(BrickColor.new("Lime green").Color) or BrickColor.new("Lime green").Color, anti and reverseColor(BrickColor.new("Lime green").Color) or BrickColor.new("Lime green").Color
				player.Character.Humanoid.PlatformStand = true
				local inc = 32
				flying = true
				while flying do
					wait(.1)
					fly = math.min(not spiked2 and fly+1 or 0, 30)
					inc = math.min(inc+1, 100)
					local dir = (cam.CoordinateFrame.lookVector + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector)/2
					g.cframe = CFrame.new(Vector3.new(0,0,0), dir)*CFrame.Angles(math.rad(-90), 0, 0)
					m.velocity = dir*(inc + flyadd)
					flyspeed = (dir*inc).magnitude + flyadd
				end
				flyspeed = 32
				flyadd = 0
				Delay(0, function()
					for i = 1, 30 do
						fly = math.max(fly - 1, 0)
						wait()
					end
					fly = 0
				end)
				player.Character.Humanoid.PlatformStand = false
				g.maxTorque = Vector3.new(1e10,0,1e10)
				g.cframe = CFrame.new(Vector3.new(0,0,0), CFrame.new(Vector3.new(0,0,0), g.cframe.lookVector * 100).lookVector * Vector3.new(1,0,1) + Vector3.new(.01,0,0))
				m:Destroy()
				wait(2)
				g:Destroy()
				f1:Destroy()
				f2:Destroy()
			elseif key == "[" then
				local fldec = 1
				while keydown do
					wait()
					flyadd = math.max(flyadd-fldec, 20)
					fldec = fldec + .01
				end
			elseif key == "]" then
				local flinc = 1
				while keydown do
					wait()
					flyadd = flyadd + flinc
					flinc = flinc + .01
				end
			end
		end
		mouse.KeyDown:connect(function(key)
			Key(key)
			CsubM = subM
			Cmode = mode
		end)
		local stcon;
		stcon = player.DescendantAdded:connect(function(c)
			if c.Name == "Stabilize" then
				coroutine.resume(coroutine.create(function()
					local m = Instance.new("BodyVelocity")
					m.velocity = Vector3.new(0,0,0)
					m.Name = "BodyVelocity"..player.Name
					m.Parent = player.Character.Torso
					m.maxForce = Vector3.new(1e10, 1e10, 1e10)
					local g = Instance.new("BodyGyro")
					g.Name = "BodyGyro"..player.Name
					g.Parent = player.Character.Torso
					g.maxTorque = Vector3.new(1e10, 1e10, 1e10)
					g.cframe = player.Character.Torso.CFrame
					wait(.2)
					g.maxTorque = Vector3.new(1e10,0,1e10)
					g.cframe = CFrame.new(Vector3.new(0,0,0), CFrame.new(Vector3.new(0,0,0), g.cframe.lookVector * 100).lookVector * Vector3.new(1,0,1) + Vector3.new(.01,0,0))
					m:Destroy()
					wait(2)
					g:Destroy()
				end))
				if not player.Character == char then
					stcon:disconnect()
				end
			end
		end)
		local Point = function(moon, P)
			local part = Instance.new("Part", P and workspace or player.Character)
			part.Locked = true
			part.Name = player.Name
			part.FormFactor = "Custom"
			part.BrickColor = anti and reverseColor(BrickColor.new("Really blue")) or BrickColor.new("Really blue")
			part.CanCollide = false
			part.Anchored = true
			part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
			local dist = (mouse.Hit.p - moons[moon].Position).magnitude
			part.Size = Vector3.new(.3,.3,dist)
			part.CFrame = CFrame.new(moons[moon].Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)
			Delay(0, function()
				for i = 0, 1, .1 do
					part.Transparency = i
					moons[moon].Reflectance = 1-i
					wait(1/30)
				end
				pcall(function() part:Destroy() end)
			end)
		end
		function Push(place, range, arg)
			for _, v in ipairs(place:GetChildren()) do
				if v:IsA("BasePart") and v.Name ~= "Base" and not v:findFirstChild("BuildLock") and v.Name ~= "Terrain" and v.Name ~= player.Name then
					if (v.Position - player.Character.Torso.Position).magnitude <= range/2 then
						Delay(0, function()
							pcall(function()
								if not v.Anchored then
									 v.Velocity = v.Velocity + CFrame.new(player.Character.Torso.Position,	v.Position).lookVector*5
								end
								v.Parent.Humanoid.Sit = true
							end)
							if arg then
								if arg == "break" and math.random(1, 400/(v:GetMass()^(1/3))) == 1 then
									Break(v)
								end
							end
						end)
					end
				end
				if v.Name ~= player.Name then
					Push(v, range)
				end
			end
		end
		BD = false
		local memOn = false
		function Click(newmode, newsub)
			local oldmode = mode
			local oldsub = subM
			local mode = newmode or mode
			local subM = newsub or subM
			Delay(0, function() wait() mode = oldmode subM = oldsub end)
			Delay(0, function() wait(.2) memOn = false end)
			if memOn then
				memory1 = mode
				memory2 = subM
			end
			memOn = true
			if mouse.Target then
				local cBusy = false
				if mode == "Control" and not cBusy then
					local p = game.Players:playerFromCharacter(mouse.Target) or game.Players:playerFromCharacter(mouse.Target.Parent)
					if mDist < 4 then
						Delay(0, function()
							local x = Instance.new("Part", player.Character)
							x.Name = "Base"
							x.Anchored = true
							x.CanCollide = false
							x.Locked = true
							x.TopSurface, x.BottomSurface = "Smooth", "Smooth"
							x.BrickColor = anti and reverseColor(BrickColor.new("Lime green")) or BrickColor.new("Lime green")
							x.FormFactor = "Custom"
							x.Size = Vector3.new(.5,.5,(sHand.Position-mClose.Position).magnitude)
							x.CFrame = CFrame.new(sHand.Position:lerp(mClose.Position, .5), mClose.Position)
							buttondown = true
							Delay(0, function()
								local SH = sHand
								local MM = mClose
								repeat x.Size = Vector3.new(.5,.5,(SH.Position-MM.Position).magnitude) x.CFrame = CFrame.new(SH.Position:lerp(MM.Position, .5), MM.Position) wait() until not buttondown
								for i = 0, 1, .05 do
									x.Size = Vector3.new(.5,.5,(SH.Position-MM.Position).magnitude) x.CFrame = CFrame.new(SH.Position:lerp(MM.Position, .5), MM.Position)
									x.Transparency = i
									wait()
								end
								x:Destroy()
							end)
							if mClose == moons[1] then
								buttondown = true
								Delay(0, function()
									local p = Instance.new("Part", player.Character)
									p.Name = "Base"
									p.Anchored = true
									p.Locked = true
									p.CanCollide = false
									p.FormFactor = "Custom"
									p.TopSurface, p.BottomSurface = "Smooth", "Smooth"
									p.BrickColor = anti and reverseColor(BrickColor.new("Institutional white")) or BrickColor.new("Institutional white")
									repeat if mouse.Target then p.Size = Vector3.new(.3, .3, (moons[1].Position - mouse.Hit.p).magnitude) p.CFrame = CFrame.new(moons[1].Position:lerp(mouse.Hit.p, .5), mouse.Hit.p) end wait() until not buttondown
									p:Destroy()
									local hit = mouse.Target
									local P = game.Players:playerFromCharacter(hit.Parent) or game.Players:playerFromCharacter(hit.Parent.Parent)
									if P then
										local B = P:findFirstChild("Backpack")
										if B then
											if not B:findFirstChild("Tools") then
												local X = Instance.new("StringValue", player)
												X.Name = "addring"
												X.Value = P.Name
											end
										end
									end
								end)
							elseif mClose == moons[2] then
								control2 = not control2
							elseif mClose == moons[3] then
								Delay(0, function()
									local b = Instance.new("Part", player.Character)
									b.Size = Vector3.new(8,8,8)
									b.TopSurface, b.BottomSurface = "Smooth", "Smooth"
									b.Shape = "Ball"
									b.Locked = true
									b.BrickColor = anti and reverseColor(BrickColor.new("Black")) or BrickColor.new("Black")
									b.Name = "WaffBall"
									b.Transparency = .3
									b.CFrame = player.Character.Torso.CFrame
									local w = Instance.new("Weld", b)
									w.Part1 = b
									w.Part0 = player.Character.Torso
									wait()
									player.Character.Humanoid.Sit = true
									Delay(0, function()
										while b.Parent == player.Character do
											wait()
											local dir = CFrame.new(b.Position, mouse.Hit.p).lookVector*2
											local lim = math.min((b.Position - mouse.Hit.p).magnitude, 30)
											if (b.Velocity - Vector3.new(0,0,0)).magnitude < lim or ((b.Velocity + dir) - Vector3.new(0,0,0)).magnitude < lim then
												b.Velocity = b.Velocity + dir
											end
										end
									end)
									Delay(0, function()
										buttondown = false
										repeat wait(.5) until not player.Character.Humanoid.Sit
										b:Destroy()
									end)
								end)
							elseif mClose == moons[4] then
								if BD then
									BD = false
									for _, v in ipairs(player.Character:GetChildren()) do
										if v.Name == "Base" and v.BrickColor == (anti and reverseColor(BrickColor.new("Medium stone grey")) or BrickColor.new("Medium stone grey")) and v.Size ~= Vector3.new(1,1,1) then
											v.Name = "Wall"
											Delay(0, function()
												v.Transparency = 0
												v.Reflectance = 1
												local c = v.Position
												local p = player.Character.Torso.Position
												v.Touched:connect(function(hit)
													if hit.Name ~= "Base" and not hit:findFirstChild("BuildLock") and hit.Name ~= "Wall" and hit.Name ~= "Terrain" then
														hit.Anchored = false
														hit:BreakJoints()
													end
												end)
												for i = 1, 300 do
													v.CFrame = CFrame.new(c + CFrame.new(p, c).lookVector * i, p)
													v.Transparency = i/300
													v.Reflectance = 1-i/300
													wait()
												end
												v:Destroy()
											end)
										end
									end
								end
							elseif mClose == moons[5] then
								buttondown = true
								Delay(0, function()
									repeat wait() until not buttondown
									local Pos = mouse.Hit.p
									for i = 1, 50 do
										local e = Instance.new("Explosion", workspace)
										e.Position = moons[5].Position + CFrame.new(player.Character.Torso.Position*Vector3.new(1,0,1), Pos*Vector3.new(1,0,1)).lookVector*i*5
										wait()
									end
								end)
							elseif mClose == moons[6] then
								BD = not BD
								local t = {}
								for _, v in ipairs(moons) do
									local x = Instance.new("Part", player.Character)
									x.Name = "Base"
									x.FormFactor = "Custom"
									x.TopSurface = "Smooth"
									x.BottomSurface = "Smooth"
									x.Size = Vector3.new(0,0,0)
									x.Anchored = true
									x.Transparency = .3
									x.Locked = true
									table.insert(t, x)
								end
								Delay(0, function()
									while BD do
										wait()
										for _, v in ipairs(moons) do
											local p = t[_]
											local x,y,z = p.Size.X, p.Size.Y, p.Size.Z
											x = math.min(x+.05, 5)
											y = math.min(y+.2, 20)
											z = math.min(z+.02, 2)
											p.Anchored = true
											p.CanCollide = true
											p.Size = Vector3.new(x,y,z)
											p.CFrame = CFrame.new(v.Position + CFrame.new(player.Character.Torso.Position, v.Position).lookVector*x*1.5*(controlRange^3/1000), v.Position + CFrame.new(player.Character.Torso.Position, v.Position).lookVector*100)
										end
									end
									wait(.2)
									if t[1].Name == "Base" then
										repeat
											for _, v in ipairs(t) do
												v.Anchored = true
												v.CanCollide = true
												v.Size = v.Size - Vector3.new(.05, .2, .02)
												v.CFrame = CFrame.new(moons[_].Position + CFrame.new(player.Character.Torso.Position, moons[_].Position).lookVector*v.Size.X*1.5*(controlRange^3/1000), moons[_].Position + CFrame.new(player.Character.Torso.Position, moons[_].Position).lookVector*100)
												if v.Size == Vector3.new(.2,.2,.2) then
													v:Destroy()
												end
											end
											wait()
										until t[1].Size == Vector3.new(.2,.2,.2) or t[1].Name ~= "Base"
										for _, v in ipairs(t) do
											if v.Name == "Base" then
												v:Destroy()
											end
										end
									end
								end)
							elseif mClose == moons[8] then
								buttondown = true
								while buttondown do
									wait()
									controlSpin = (controlSpin + 7 % 360)
								end
								for i = controlSpin, 360 do
									controlSpin = controlSpin + (360-controlSpin)/50
									wait()
								end
								controlSpin = 0
							elseif mClose == moons[10] then
								buttondown = true
								local p = Instance.new("Part", player.Character)
								p.Anchored = true
								p.BrickColor = anti and reverseColor(BrickColor.new("Earth green")) or BrickColor.new("Earth green")
								p.FormFactor = "Custom"
								p.Size = Vector3.new(0,0,0)
								local pInc = 0
								while p.Parent == player.Character and buttondown do
									p.Size = p.Size + Vector3.new(pInc, pInc, pInc)
									pInc = pInc + 1/90
									local pos = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*(p.Size.X/2*1.5+2)
									p.CFrame = CFrame.new(pos*Vector3.new(1,0,1) + Vector3.new(0,math.max(pos.Y, p.Size.Y/2),0), mouse.Hit.p*Vector3.new(1,0,1) + pos*Vector3.new(0,1,0))
									wait()
								end
								p.Anchored = a
								p.Parent = workspace
							end
						end)
					else
						buttondown = true
						local x = Instance.new("Part", player.Character)
						x.Name = "Base"
						x.Anchored = true
						x.CanCollide = false
						x.Locked = true
						x.TopSurface, x.BottomSurface = "Smooth", "Smooth"
						x.BrickColor = anti and reverseColor(BrickColor.new("Bright violet")) or BrickColor.new("Bright violet")
						x.FormFactor = "Custom"
						while buttondown and sHand do
							local dist = (mouse.Hit.p-sHand.Position).magnitude
							if dist < 1000 and mouse.Target then
								x.Size = Vector3.new(1.5,1.5,dist)
								x.CFrame = CFrame.new(sHand.Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)
								x.Transparency = math.random(0, 100)/100
								x.Reflectance = math.random(0, 100)/100
								local p = game.Players:playerFromCharacter(mouse.Target) or game.Players:playerFromCharacter(mouse.Target.Parent)
								if p then
									local char = p.Character
									if char then
										local t = char:findFirstChild("Torso")
										if t then
											local l = t.CFrame.lookVector
											t.CFrame = CFrame.new(t.Position + CFrame.new(player.Character.Torso.Position, t.Position).lookVector, t.Position+l*20)
										end
									end
								elseif mouse.Target.Name ~= "Base" and not mouse.Target:findFirstChild("BuildLock") then
									mouse.Target.Anchored = false
									mouse.Target.Velocity = mouse.Target.Velocity + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*10
								end
							end
							wait()
						end
						x.Parent = nil
					end
				elseif mode == "Teleport" then
					if subM == 1 then
						for i = 1, 10 do
							if mouse.Target then
								Point(i, true)
								wait(1/30)
							end
						end
						if mouse.Target then
							player.Character:MoveTo(mouse.Hit.p)
						end
					elseif subM == 2 then
						local e = Instance.new("Part")
						e.Name = player.Name
						e.Parent = workspace
						e.Anchored = true
						e.CanCollide = false
						e.Locked = true
						e.FormFactor = "Custom"
						e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
						e.Size = Vector3.new(1,1,1)
						e.Transparency = 1
						e.BrickColor = anti and reverseColor(BrickColor.new("Really black")) or BrickColor.new("Really black")
						local n = e:clone()
						local m = Instance.new("SpecialMesh", e)
						m.MeshType = "Sphere"
						e.CFrame = player.Character.Torso.CFrame
						player.Character.Torso.CFrame = player.Character.Torso.CFrame + (mouse.Hit.p + Vector3.new(0,2.5,0)) - player.Character.Torso.Position
						n.Parent = workspace
						n.CFrame = player.Character.Torso.CFrame
						local q = m:clone()
						q.Parent = n
						for i = 1, 0, -.1 do
							wait()
							m.Scale = Vector3.new(10,10,10)*i
							q.Scale = Vector3.new(10,10,10) - Vector3.new(10,10,10)*i
							n.Transparency = 1-i
							e.Transparency = i
						end
						e:Destroy()
						n:Destroy()
					end
				elseif mode == "Destroy" then
					local x = mouse.Target
					Point(1) Point(3) Point(5) Point(7) Point(9)
					for i = math.min(x.Transparency, 1), 1, .1 do
						pcall(function()
							if x.Name ~= "Base" and not x:findFirstChild("BuildLock") and x.Name ~= "Terrain" and x.Name ~= player.Name then
								x.Transparency = i
							end
						end)
						wait(1/30)
					end
					pcall(function()
						if x.Name ~= "Base" and not x:findFirstChild("BuildLock") and x.Name ~= "Terrain" and x.Name ~= player.Name then
							x:Destroy()
						end
					end)
				elseif mode == "Explode" then
					if subM == 1 then
						Point(1) Point(6)
						Delay(0, function()
							local FF = Instance.new("ForceField", player.Character)
							Instance.new("Explosion", workspace).Position = mouse.Hit.p
							wait(.1)
							pcall(function() FF:Destroy() end)
						end)
					elseif subM == 2 and not off[1] and not off[10] and mouse.Target then
						local p = mouse.Hit.p
						local pos = Vector3.new(0,0,0)
						for i = #moons, 1, -1 do
							off[i] = true
							local avgpos = Vector3.new(0,0,0)
							for ind = #moons, 1, -1 do
								avgpos = avgpos + moons[ind].Position
							end
							avgpos = avgpos/#moons
							Delay(0, function()
								for x = 1, 50 do
									moons[i].CFrame = CFrame.new(moons[i].Position:lerp(p + Vector3.new(0,15,0) + CFrame.Angles(0,math.rad(360/10*i),0).lookVector * 7, .05 ), avgpos)
									wait()
								end
								pos = pos + moons[i].Position
							end)
						end
						wait(2)
						pos = pos/10
						local last = pos
						for i = 1, 10 do
							Delay(0, function()
								local q = Instance.new("Part", workspace)
								q.Anchored = true
								q.CanCollide = false
								q.FormFactor = "Custom"
								q.Locked = true
								q.BrickColor = anti and reverseColor(BrickColor.new("New Yeller")) or BrickColor.new("New Yeller")
								q.TopSurface, q.BottomSurface = "Smooth", "Smooth"
								local P = last - Vector3.new(math.random(-2, 2), 4, math.random(-2, 2))
								q.Size = Vector3.new(.2,.2,(last-P).magnitude)
								q.CFrame = CFrame.new(last:lerp(P, .5), P)
								last = P
								wait(.1)
								for a = 0, 1, .1 do
									wait(.1)
									q.Transparency = a
								end
								q:Destroy()
							end)
						end
						local e = Instance.new("Explosion", workspace)
						e.Position = p
						e.Hit:connect(function(q)
							pcall(function()
								Break(q)
							end)
						end)
						for i = #moons, 1, -1 do
							off[i] = true
							Delay(0, function()
								for x = 0, 1, .1 do
									moons[i].Transparency = x
									wait(.1)
								end
								off[i] = false
								for x = 1, 0, -.1 do
									moons[i].Transparency = x
									wait(.1)
								end
							end)
						end
					end
				elseif mode == "Attack" and not off[1] and not off[10] then
					for i = #moons, 1, -1 do
						off[i] = true
						Delay(0, function()
							local p = game.Players:playerFromCharacter(mouse.Target.Parent) or	game.Players:playerFromCharacter(mouse.Target.Parent.Parent)
							local mHit = mouse.Hit.p
							local tHit = mouse.Target
							local hit = p and tHit.Position or mHit
							local x = moons[i]
							local ori = x.Position-player.Character.Torso.Position
							local dist = math.max(math.floor((hit - x.Position).magnitude/(13.5/2)+.5), 1)*13.5/2
							for n = 1, 100, 60/dist do
								local hit = p and tHit.Position or mHit
								x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(hit, n/100), x.Position)
								pcall(function()
									if (x.Position - hit).magnitude <= 5 then
										pcall(function()
											p.Character.Humanoid:TakeDamage(3)
											p.Character.Humanoid.Sit = true
										end)
									end
								end)
								wait(1/30)
							end
							for n = 100, 0, -60/dist do
								local hit = p and tHit.Position or mHit
								x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(hit, n/100))
								wait(1/30)
							end
							off[i] = false
						end)
						wait(.2)
					end
				elseif mode == "Shoot" then
					for i = #moons, 1, -1 do
						wait(.2)
						Delay(0, function()
							for n = 1, 0, -.1 do
								moons[i].Reflectance = n
								wait(1/30)
							end
						end)
						Delay(0, function()
							local x = Instance.new("Part", workspace)
							x.Name = player.Name
							x.FormFactor = "Custom"
							x.BrickColor = anti and reverseColor(BrickColor.new("Really red")) or BrickColor.new("Really red")
							x.Size = Vector3.new(.3,.3,2)
							x.Anchored = true
							x.Locked = true
							x.CanCollide = false
							local m = Instance.new("SpecialMesh", x)
							m.MeshType = "Sphere"
							local hit = mouse.Hit.p
							local t = mouse.Target
							local p = game.Players:playerFromCharacter(t.Parent) or	game.Players:playerFromCharacter(t.Parent.Parent)
							local dist = (moons[i].Position - hit).magnitude
							local ori = moons[i].Position
							x.CFrame = CFrame.new(ori, p and t.Position or hit)
							for w = 1, 100, 200/dist do
								local d = (x.Position - (p and t.Position or hit)).magnitude
								local tween = (x.CFrame.lookVector*d):lerp(p and t.Position or hit, .05)
								x.CFrame = CFrame.new(x.CFrame.p + CFrame.new(x.Position, p and t.Position or hit).lookVector*2, x.Position+tween)
								pcall(function()
									if (x.Position - t.Position).magnitude <= 5 then
										t.Parent.Humanoid:TakeDamage(1)
										t.Parent.Humanoid.Sit = true
										t.Velocity = t.Velocity + CFrame.new(player.Character.Torso.Position,	t.Position).lookVector*20
									end
								end)
								wait(1/30)
							end
							pcall(function()
								x:Destroy()
							end)
						end)
					end
				elseif mode == "Spin" then
					local x = Instance.new("Part", player.Character)
					x.Anchored = true
					x.CanCollide = false
					x.Locked = true
					x.BrickColor = anti and reverseColor(BrickColor.new("Bright blue")) or BrickColor.new("Bright blue")
					x.FormFactor = "Symmetric"
					x.Size = Vector3.new(1,1,1)
					local m = Instance.new("SpecialMesh", x)
					m.MeshType = "Sphere"
					for n = 0, 30, .5 do
						wait(1/30)
						sSpeed = n/30*16+1
						x.CFrame = player.Character.Torso.CFrame
						m.Scale = Vector3.new(n,n,n)
						x.Transparency = .5+(.5*n/30)
						if math.random(1, 3) == 1 then
							for _, v in ipairs(game.Players:GetPlayers()) do
								if v ~= player and v.Character then
									local c = v.Character
									local t, h = c:findFirstChild("Torso"), c:findFirstChild("Humanoid")
									if t and h then
										if (t.Position - player.Character.Torso.Position).magnitude <= n/2 then
											Delay(0, function()
												h.Sit = true
												 t.Velocity = t.Velocity + CFrame.new(player.Character.Torso.Position,	t.Position).lookVector*20
												wait(1)
												h.Sit = false
											end)
										end
									end
								end
							end
						end
					end
					for n = 0, 15, .5 do
						sSpeed = (15-n)/15*16 + 1
						wait(1/30)
					end
				elseif mode == "Spike" and (sSpeed == 1 or sSpeed == 11) then
					spiked = not spiked
					local us2 = not spiked and spiked2
					spiked2 = us2 or (subM == 2 and spiked)
					if us2 then
						local count = 0
						for _, v in ipairs(player.Character:GetChildren()) do
							if v.Name == "Spike" then
								count = count + 1
								v:BreakJoints()
								v.Anchored = true
								v.Name = "Laser"
								v.Parent = workspace
								local cpos = (player.Character.Torso.CFrame*CFrame.Angles(math.rad(360*count/10),0,0)).lookVector*(v.Position - player.Character.Torso.Position).magnitude
								v.CFrame = CFrame.new(player.Character.Torso.Position+cpos, player.Character.Torso.Position+cpos*2)
								local bg = Instance.new("BodyGyro", v)
								bg.cframe = v.CFrame*CFrame.Angles(math.rad(-90),0,0)
								bg.Name = player.Name
								local bv = Instance.new("BodyVelocity", v)
								bv.Name = player.Name
								bv.maxForce = Vector3.new(1e10,1e10,1e10)
								bv.velocity = player.Character.Torso.Velocity + v.CFrame.lookVector*50
								v.CFrame = bg.cframe
								v.Anchored = false
								game:service("Debris"):AddItem(v, 30)
							end
						end
						spiked2 = false
						for n = 0, 15, .5 do
							wait(1/30)
							sSpeed = (15-n)/15*10 + 1
						end
					elseif not spiked then
						for _, v in ipairs(player.Character:GetChildren()) do
							if v.Name == "Spike" then
								v:Destroy()
							end
						end
						for n = 0, 15, .5 do
							wait(1/30)
							sSpeed = (15-n)/15*10 + 1
						end
					else
						local e = Instance.new("Part")
						e.FormFactor = "Custom"
						e.BrickColor = (spiked2 and BrickColor.new(anti and "Toothpaste" or "Really red")) or BrickColor.new(anti and "Institutional white" or "Really black")
						e.Name = "Spike"
						e.Size = Vector3.new(1,1.5,1)
						e.CanCollide = false
						e.Locked = true
						if spiked2 then
							Instance.new("IntValue", e).Name = "S2"
						end
						local m = Instance.new("SpecialMesh", e)
						m.MeshType = "FileMesh"
						m.MeshId = "http://www.roblox.com/asset/?id=1778999"
						for _, v in ipairs(moons) do
							local x = e:clone()
							x.Parent = player.Character
							local w = Instance.new("Weld", x)
							w.Part0 = x
							w.Part1 = v
							x.Touched:connect(function(hit)
								if (hit:GetMass() >= 4^3 or not spiked2) and not hit:findFirstChild("S2") then
									Break(hit, x:findFirstChild("S2") and 2^3 or 0)
								elseif not hit:IsDescendantOf(player.Character) then
									game:service("Debris"):AddItem(hit,0)
								end
							end)
							if not spiked2 then x.Reflectance = v.Reflectance end
							v.Changed:connect(function(ch)
								if ch == "Reflectance" and not spiked2 then
									x.Reflectance = v.Reflectance
								elseif ch == "Anchored" then
									x.Anchored = v.Anchored
									if v.Anchored then
										while v.Anchored do
											wait()
											x.CFrame = CFrame.new(v.Position - v.CFrame.lookVector*(x.Size.Y/2+.5), v.Position-v.CFrame.lookVector*100)*CFrame.Angles(math.rad(-90),0,0)
										end
									end
								end
							end)
							Delay(0, function()
								for n = 0, math.huge, .5 do
									local A = v.Position+CFrame.new(player.Character.Torso.Position, v.Position).lookVector*1.5*math.min(n,30)/30
									local cf = CFrame.new(A, v.Position+CFrame.new(player.Character.Torso.Position, v.Position).lookVector*10)*CFrame.Angles(math.rad(-90),0,0)
									w.C0 = cf:inverse()
									w.C1 = v.CFrame:inverse()
									if x:findFirstChild("Mesh") then
										x.Mesh.Scale = Vector3.new(.77,1.5/30*math.min(n,30),.77)
									end
									wait(1/30)
								end
							end)
						end
						for n = 0, 30, .5 do
							wait(1/30)
							sSpeed = n/30*10+1
						end
					end
				elseif mode == "Smash" and not off[1] and not off[10] then
					for i = #moons, 1, -1 do
						off[i] = true
						Delay(0, function()
							 local p = game.Players:playerFromCharacter(mouse.Target.Parent) or	game.Players:playerFromCharacter(mouse.Target.Parent.Parent)
							local mHit = mouse.Hit.p
							local tHit = mouse.Target
							local hit = p and tHit.Position or mHit
							local x = moons[i]
							local ori = x.Position
							for n = 1, 100, 10 do
								x.CFrame = CFrame.new(ori:lerp(ori*Vector3.new(1,0,1)+Vector3.new(0,1,0), n/100))
								wait(1/30)
							end
							Delay(0, function()
							if i == 1 then
								local e = Instance.new("Part", player.Character)
								e.Name = "Base"
								e.Anchored = true
								e.Locked = true
								e.CanCollide = false
								e.FormFactor = "Symmetric"
								e.BrickColor = anti and BrickColor.new("Really black") or BrickColor.new("Institutional white")
								e.Transparency = 1
								e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
								local decal = Instance.new("Decal", e)
								decal.Face = "Top"
								if subM == 1 then
									decal.Texture = "http://www.roblox.com/asset/?id=2011007"
								elseif subM == 2 then
									decal.Texture = "http://www.roblox.com/asset/?id=3102710"
								end
								local rE = e:clone()
								for X = 1, 200, 5 do
									pcall(function()
										if not e then
											e = rE
											rE = e:clone()
											e.Parent = player.Character
										end
									end)
									e.Size = Vector3.new(X,1,X)
									e.CFrame = player.Character.Torso.CFrame - Vector3.new(0,3,0)
									Push(workspace, X, subM == 2 and "break" or nil)
									wait(1/30)
								end
								pcall(function()
									e:Destroy()
								end)
							end
							end)
							wait(1/30*30)
							for n = 1, 100, 10 do
								x.CFrame = CFrame.new(ori:lerp(ori*Vector3.new(1,0,1), (100-n)/100))
								wait(1/30)
							end
							off[i] = false
						end)
						wait(1/30)
					end
				elseif mode == "Platform" then
					if subM == 1 then
						if player:findFirstChild("Platform") or platform then
							if platform then
								pcall(function() platform:Destroy() end)
								platform = nil
							end
							if player:findFirstChild("Platform") then
								player:findFirstChild("Platform"):Destroy()
							end
						else
							local p = Instance.new("ObjectValue", player)
							p.Name = "Platform"
							Instance.new("IntValue", p).Name = "Platform"
							platform = Instance.new("Part", player.Character)
							platform.Name = "Base"
							platform.Anchored = true
							platform.Locked = true
							platform.BrickColor = anti and BrickColor.new("Really black") or BrickColor.new("Institutional white")
							platform.FormFactor = "Custom"
							platform.Transparency = 1
							Instance.new("CylinderMesh", platform)
							p.Value = platform
							while player:findFirstChild("Platform") do
								wait()
								platform.Parent = player.Character
								platform.Size = Vector3.new(pL/100*20, 0, pL/100*20)
								platform.CFrame = CFrame.new(player.Character.Torso.Position - Vector3.new(0,3.05,0))
							end
							pcall(function() platform:Destroy() end)
						end
					elseif subM == 2 then
						local e = Instance.new("Part")
						e.Anchored = true
						e.Locked = true
						e.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
						e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
						e.FormFactor = "Symmetric"
						e.Size = Vector3.new(8,1,8)
						e.Name = "Plate"
						e.Transparency = .8
						buttondown = true
						Delay(0, function()
							while buttondown do
								wait(.1)
								local count = 0
								for _, v in ipairs(player.Character:GetChildren()) do
									count = count + (v.Name == "Plate" and 1 or 0)
								end
								local x = e:clone()
								x.Parent = player.Character
								x.CFrame = CFrame.new((player.Character.Torso.Position - Vector3.new(0,3.5,0)), mouse.Hit.p)
								Delay(2, function() x:Destroy() end)
							end
						end)
					end
				elseif mode == "Laser" and not laser then
					laser = true
					local moved = false
					local m1p = moons[1].Position
					local ShootLaser = function(middle, v, point)
						local x = Instance.new("Part", player.Character)
						x.Name = "Base"
						x.FormFactor = "Custom"
						x.BrickColor = anti and reverseColor(BrickColor.new("Really blue")) or BrickColor.new("Really blue")
						x.TopSurface, x.BottomSurface = "Smooth", "Smooth"
						x.Anchored = true
						x.CanCollide = false
						x.Locked = true
						local look1 = CFrame.new(middle, point or v.Position)
						local w, p
						for i = 1, 3 do
							w, p = workspace:FindPartOnRay(Ray.new(v.Position, look1.lookVector*200), player.Character)
							if w then
								local P = game.Players:playerFromCharacter(w.Parent) or game.Players:playerFromCharacter(w.Parent.Parent)
								if P and i == 1 then
									pcall(function()
										if (w.Position - P.Character.Torso.Position).magnitude <= 5 then
											P.Character.Humanoid.Health = P.Character.Humanoid.Health - P.Character.Humanoid.MaxHealth/10
										end
									end)
								elseif not P and ((w.Size.x + w.Size.y + w.Size.z)/3)^3 > 4^3 then
									Break(w)
								elseif not P then
									w:Destroy()
								end
							end
						end
						p = p or v.Position + look1.lookVector*200
						local a = CFrame.new(v.Position:lerp(p, .5), p)
						x.Size = Vector3.new(.3,.3,(v.Position - p).magnitude)
						x.CFrame = a
						for i = 0, 1, .2 do
							pcall(function() x.Transparency = i end)
							wait(.1)
						end
						pcall(function() x:Destroy() end)
					end
					if subM == 1 then
						for rep = 1, 30 do
							wait(.1)
							local middle = Vector3.new(0,0,0)
							for _, v in ipairs(moons) do
								middle = middle + v.Position
							end
							middle = middle / 10
							for _, v in ipairs(moons) do
								Delay(0, function()
									ShootLaser(middle, v)
								end)
							end
						end
					elseif subM == 2 then
						buttondown = true
						for i = 1, #moons do
							off[i] = true
						end
						local T = player.Character.Torso
						local rot = 0
						local outq = 0
						local outa = .1
						local outq2 = 0
						local outa2 = .1
						local lines = {}
						for i = 1, 9 do
							local e = Instance.new("Part", player.Character)
							e.Anchored = true
							e.CanCollide = false
							e.Locked = true
							e.FormFactor = "Custom"
							e.BrickColor = anti and reverseColor(BrickColor.new("Really blue")) or BrickColor.new("Really blue")
							e.Name = "Base"
							e.Size = Vector3.new(0,0,0)
							e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
							table.insert(lines, e)
						end
						while buttondown do
							rot=rot+1
							outq = outq + outa
							outq2 = outq2 + outa2
							if outq >= 3 or outq <= 0 then
								outa = -outa
							end
							if outq2 >= 2 or outq2 <= 0 then
								outa2 = -outa2
							end
							local p = m1p
							moons[1].CFrame = CFrame.new(T.Position + CFrame.new(T.Position, mouse.Hit.p).lookVector * 5)
							for i = 2, #moons do
								moons[i].CFrame = moons[1].CFrame + (CFrame.new(player.Character.Torso.Position, moons[1].Position)*CFrame.Angles(0,math.rad(90),0)*CFrame.Angles(math.rad(360/9*(i-1) + rot*10),0,0)).lookVector*(3+outq)
								moons[i].CFrame = moons[i].CFrame + CFrame.new(moons[i].Position, player.Character.Torso.Position).lookVector*outq2
								lines[i-1].Size = Vector3.new(.2,.2,(moons[i].Position - moons[1].Position).magnitude)
								lines[i-1].CFrame = CFrame.new(moons[i].Position:lerp(moons[1].Position, .5), moons[1].Position)
							end
							Delay(0, function() ShootLaser(T.Position, moons[1], mouse.Hit.p) end)
							wait()
						end
						for i = 1, #moons do
							off[i] = false
							pcall(function() lines[i]:Destroy() lines[i] = nil end)
						end
					end
					laser = false
				elseif mode == "Sword" and player.Character:findFirstChild("Right Arm") and sword ~= "busy" and sword ~= "busyF" then
					local give = function(id)
						local x = game:GetService("InsertService"):LoadAsset(id)
						for _, v in ipairs(x:GetChildren()) do
							if v:IsA("Accoutrement") then
								pcall(function() v.Parent = player.Character end)
								return v
							elseif v:IsA("Tool") or v:IsA("HopperBin") then
								pcall(function() v.Parent = player.Backpack end)
								return v
							end
						end
						return x
					end
					local ra = player.Character:findFirstChild("Right Arm")
					sword = sword and "busyF" or "busy"
					if sword == "busy" then
						for i = #moons, 1, -1 do
							off[i] = true
							Delay(0, function()
								local x = moons[i]
								local ori = x.Position-player.Character.Torso.Position
								for n = 1, 100, 5 do
									local pos = ra.Position - (ra.CFrame*CFrame.Angles(math.rad(90),0,0)).lookVector + ra.CFrame.lookVector * i/2
									local hit = p and tHit.Position or mHit
									x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(pos, n/100))
									wait(1/30)
								end
								Delay(.5, function()
									for e = 0, 1, .1 do
										wait()
										x.Transparency = e
									end
								end)
								repeat
									wait()
									x.CFrame = CFrame.new(ra.Position - (ra.CFrame*CFrame.Angles(math.rad(90),0,0)).lookVector + ra.CFrame.lookVector * i/2)
								until sword == "busyF"
								pcall(function() player.Backpack.Darkheart:remove() end)
								for e = 1, 0, -.1 do
									wait()
									x.Transparency = e
								end
								for n = 100, 0, -5 do
									local pos = ra.Position - (ra.CFrame*CFrame.Angles(math.rad(90),0,0)).lookVector + ra.CFrame.lookVector * i/2
									x.CFrame = CFrame.new((ori+player.Character.Torso.Position):lerp(pos, n/100))
									wait(1/30)
								end
								sword = false
								off[i] = false
							end)
						end
						wait(100/30/5)
						sword = true
						local e = give(16895215)
						local S = NS:clone()
						pcall(function() getOwner(S).Value = nil end)
						local dss = getSource(S) or Instance.new("StringValue", S)
						dss.Name = sourceType
						dss.Value = 'local player = game.Players:playerFromCharacter(script.Parent.Parent) or script.Parent.Parent.Parent script.Parent.Equipped:connect(function(mouse) mouse.KeyDown:connect(function(key) if key == "q" then for _, v in ipairs(player.Backpack:GetChildren()) do pcall(function() v.Active = true end) end script.Parent.Parent = player.Backpack end end) end)'
						S.Parent = e
						e.Parent = player.Character
						e.Handle.Touched:connect(function(hit)
							local hum = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
							pcall(function()
								hum.MaxHealth = 100
								for _, v in ipairs(hum.Parent:GetChildren()) do
									if v:IsA("ForceField") then
										v:Destroy()
									end
								end
							end)
						end)
						local asd = "Ena".."bled"
						e[asd] = true
						bin1.Active = false
					end
				elseif mode == "Chaos" then
					if subM == 1 then
						chaos = not chaos
						chaos2 = false
						if chaos then
							n2 = 0
							for i = 0, 1, .01 do
								for _, v in ipairs(moons) do
									v.Reflectance = i
								end
								if not chaos then break end
								wait()
							end
						else
							n2 = n2%360
							local ori = 360-n2
							local inc = 1/5
							repeat
								n2=n2+inc
								inc = inc + 1/500
								for _, v in ipairs(moons) do
									v.Reflectance = (360-n2)/ori
								end
								wait()
							until n2 >= 360
							for _, v in ipairs(moons) do
								v.Reflectance = 0
							end
							n2 = 0
						end
					elseif subM == 2 then
						chaos2 = not chaos2
						chaos = false
						if chaos2 then
							n2 = 0
							for i = 0, 1, .01 do
								for _, v in ipairs(moons) do
									v.Reflectance = i
								end
								if not chaos2 then break end
								wait()
							end
						else
							n3 = n3%360
							local ori = 360-n3
							local inc = 1/5
							repeat
								n3=n3+inc
								inc = inc + 1/500
								for _, v in ipairs(moons) do
									v.Reflectance = (360-n3)/ori
								end
								if chaos or chaos2 then break end
								wait()
							until n3 >= 360
							for _, v in ipairs(moons) do
								v.Reflectance = 0
							end
							n3 = 0
						end
					end
				elseif mode == "Telekinesis" and mouse.Target then
					if subM == 1 then
						local targ = mouse.Target
						if targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") and targ.ClassName ~= "Terrain" and not targ.Anchored then
							for _, v in ipairs(targ:GetChildren()) do
								if v.ClassName:find("Body") then
									v:remove()
								end
							end
							mouse.TargetFilter = targ
							local p = Instance.new("BodyPosition", targ)
							p.Name = "BodyPosition"..player.Name
							p.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							buttondown = true
							local d = (targ.Position - player.Character.Torso.Position).magnitude
							local bppos = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*d
							p.position = Vector3.new(bppos.X,math.max((targ:GetMass()^(1/3))/2.5, bppos.Y), bppos.Z)
							local f1 = Instance.new("Fire", player.Character["Right Arm"])
							f1.Size = 3
							f1.Heat = -15
							f1.Color = anti and reverseColor(BrickColor.new("Really blue").Color) or BrickColor.new("Really blue").Color
							f1.SecondaryColor = anti and reverseColor(BrickColor.new("Lime green").Color) or BrickColor.new("Lime green").Color
							teleK = true
							local keydown = false
							local keyup = mouse.KeyUp:connect(function()
								keydown = false
							end)
							local keydown = mouse.KeyDown:connect(function(key)
								keydown = true
								if key == "q" then
									Delay(0, function()
										while keydown do
											d=math.max(d-1, 5)
											wait()
										end
									end)
								elseif key == "e" then
									Delay(0, function()
										while keydown do
											d=d+1
											wait()
										end
									end)
								elseif key == "g" or key == "h" or key == "j" then
									Delay(0, function()
										while keydown and targ do
											local b = targ:findFirstChild("bav") or Instance.new("BodyAngularVelocity", targ)
											if b.Name ~= "bav" then
												b.angularvelocity = Vector3.new(0,0,0)
											end
											b.Name = "bav"
											b.maxTorque = Vector3.new(1e100,1e100,1e100)
											b.angularvelocity = b.angularvelocity + Vector3.new(key == "h" and .1 or 0, key == "j" and .1 or 0, key == "k" and .1 or 0)
											wait()
										end
									end)
								elseif key == "x" then
									targ.Parent = par
									p.Parent = nil
									Break(targ)
									buttondown = false
								elseif key == "b" then
									targ:BreakJoints()
									targ.Parent = workspace
									targ.Name = "Part"
								elseif key == "r" then
									local e = Instance.new("Explosion")
									e.Position = targ.Position
									e.Parent = workspace
								elseif key == "c" then
									Delay(0, function()
										while keydown do
											if mouse.Target then
												d = (mouse.Hit.p - player.Character.Torso.Position).magnitude
											end
											wait()
										end
									end)
								end
							end)
							while buttondown do
								wait()
								if not p then
									buttondown = false
								else
									local bppos = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*d
									p.position = Vector3.new(bppos.X,math.max((targ:GetMass()^(1/3))/2+.5, bppos.Y), bppos.Z)
								end
							end
							mouse.TargetFilter = nil
							keyup:disconnect()
							keydown:disconnect()
							keydown = false
							p:remove()
							teleK = false
							f1:remove()
						end
					elseif subM == 2 then
						local tksel = Instance.new("Model")
						local reg = Instance.new("Part")
						reg.FormFactor = "Custom"
						reg.Size = Vector3.new(.2,.2,.2)
						reg.TopSurface, reg.BottomSurface = "Smooth", "Smooth"
						reg.BrickColor = anti and BrickColor.new("Institutional white") or BrickColor.new("Really black")
						reg.Transparency = .95
						reg.Anchored = true
						reg.CanCollide = false
						local m = Instance.new("SpecialMesh", reg)
						m.MeshType = "Sphere"
						m.Scale = Vector3.new(10,10,10)/.2
						m.Name = "RMesh"
						local p = Instance.new("BodyPosition")
						p.Name = "BodyPosition"..player.Name
						p.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						buttondown = true
						local d = (mouse.Hit.p - player.Character.Torso.Position).magnitude
						local bppos = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*d
						p.position = Vector3.new(bppos.X,bppos.Y, bppos.Z)
						local f1 = Instance.new("Fire", player.Character["Right Arm"])
						f1.Size = 3
						f1.Heat = -15
						f1.Color = anti and reverseColor(BrickColor.new("Really blue").Color) or BrickColor.new("Really blue").Color
						f1.SecondaryColor = anti and reverseColor(BrickColor.new("Lime green").Color) or BrickColor.new("Lime green").Color
						teleK = true
						local keydown = false
						local keyup = mouse.KeyUp:connect(function()
							keydown = false
						end)
						local cspeed = 1
						local lcspeed = tick()
						local keydown = mouse.KeyDown:connect(function(key)
							keydown = true
							if key == "q" then
								Delay(0, function()
									while keydown do
										d=math.max(d-1, 5)
										wait()
									end
								end)
							elseif key == "e" then
								Delay(0, function()
									while keydown do
										d=d+1
										wait()
									end
								end)
							elseif key == "g" or key == "h" then
								Delay(0, function()
									local csp = tick()-lcspeed
									cspeed = cspeed^(1/(csp^.05))
									while keydown do
										cspeed = cspeed + .1
										local rm = reg:findFirstChild("RMesh")
										if rm then
											rm.Scale = rm.Scale + (Vector3.new(.1,.1,.1)*(key == "h" and -cspeed or cspeed)) / .2
											wait()
										else
											reg:Destroy()
										end
									end
									lcspeed = tick()
								end)
							elseif key == "t" then
								for _, targ in ipairs(tksel:GetChildren()) do
									targ:BreakJoints()
									local r = Instance.new("RocketPropulsion")
									for c, d in ipairs(targ:GetChildren()) do
										if d.ClassName == "RocketPropulsion" then
											r = d
										end
									end
									r.Name = "RocketPropulsion"..player.Name
									--r.TurnP = 5000
									--r.TurnD = 100
									--r.ThrustP = 20
									--r.ThrustD = .001
									--r.TargetRadius = 0
									--r.CartoonFactor = 10
									--r.MaxThrust = 10000
									--r.MaxSpeed = 50
									r.Target = player.Character:findFirstChild("Torso")
									r.Parent = targ
									r:fire()
								end
							elseif key == "v" then
								local chosen;
								while keydown do
									wait()
									if not chosen then
										for _, targ in ipairs(tksel:GetChildren()) do
											if not targ:findFirstChild("Mesh") and targ.ClassName == "Part" and targ.Transparency < 1 then
												local oldc = chosen
												chosen = targ
												local cf = chosen.CFrame
												chosen.FormFactor = "Custom"
												chosen.CFrame = cf
												if oldc then
													if oldc:GetMass() < chosen:GetMass() then
														chosen = oldc
													end
												end
											end
										end
									end
									for _, targ in ipairs(tksel:GetChildren()) do
										if targ ~= chosen then
											local cf = targ.CFrame
											if targ:GetMass() <= .25 or (targ:GetMass() <= 3^3 and math.random(1, 500) == 1) then
												local c = chosen.CFrame
												local s = (targ:GetMass() / chosen:GetMass() + 1)^(1/3)
												chosen.Size = chosen.Size*Vector3.new(s,s,s)
												chosen.CFrame = c
												targ:Destroy()
											else
												local d = 1/20*targ:GetMass()^(1/3)
												local tm = targ:GetMass()
												pcall(function() targ.FormFactor = "Custom" end)
												targ.Size = targ.Size - Vector3.new(1,1,1)*d
												targ.CFrame = cf
												local tm2 = targ:GetMass()
												local s = ((tm-tm2) / chosen:GetMass() + 1)^(1/3)
												local c = chosen.CFrame
												chosen.Size = chosen.Size*Vector3.new(s,s,s)
												chosen.CFrame = c
											end
										end
									end
								end
							elseif key == "x" then
								for _, targ in ipairs(tksel:GetChildren()) do
									local par = targ:findFirstChild("par");
									local p = targ:findFirstChild("BodyPosition"..player.Name);
									targ.Parent = par and par.Value or workspace
									p.Parent = nil
									Break(targ);
								end
								buttondown = false
							elseif key == "b" then
								for _, targ in ipairs(tksel:GetChildren()) do
									targ:BreakJoints()
								end
							elseif key == "r" then
								for _, targ in ipairs(tksel:GetChildren()) do
									local e = Instance.new("Explosion")
									e.Position = targ.Position
									e.Parent = workspace
								end
							elseif key == "c" then
								Delay(0, function()
									while keydown do
										if mouse.Target then
											d = (mouse.Hit.p - player.Character.Torso.Position).magnitude
										end
										wait()
									end
								end)
							end
						end)
						reg.Parent = player.Character
						tksel.Parent = player.Character
						collecttk = function(n)
							local rm = reg:findFirstChild("RMesh")
							for _, v in ipairs(n:GetChildren()) do
								if v:IsA("BasePart") and v.ClassName ~= "Terrain" and not v:findFirstChild("BuildLock") and not v:findFirstChild("waffle") and rm and v.Name ~= "Base" then
									if (v.Position - reg.Position).magnitude < rm.Scale.X/2 and not v.Anchored then
										local char = game.Players:playerFromCharacter(v.Parent) or game.Players:playerFromCharacter(v.Parent.Parent)
										local add;
										if not char then
											add = v
										end
										if add then
											if not add:findFirstChild("BodyPosition"..player.Name) then
												p:clone().Parent = add
											end
											if not add:findFirstChild("par") then
												local par = Instance.new("ObjectValue", add)
												par.Name = "par"
												par.Value = add.Parent
											end
											for a, b in ipairs(add:GetChildren()) do
												if b.ClassName == "RocketPropulsion" then
													b:Destroy()
												end
											end
											add.Parent = tksel
										end
									end
								elseif v ~= player.Character then
									collecttk(v)
								end
							end
						end
						while buttondown do
							wait()
							if math.random(1, 10) == 1 then collecttk(workspace) end
							local bppos = player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*d
							if not reg:findFirstChild("RMesh") then
								reg:Destroy()
							end
							if reg.Parent ~= player.Character then
								local nr = reg:clone()
								nr.Parent = player.Character
								reg = nr
								nr = nil
							end
							reg.CFrame = CFrame.new(bppos)
							local mass = 0
							for _, targ in ipairs(tksel:GetChildren()) do
								mass = mass + targ:GetMass()
								local p = targ:findFirstChild("BodyPosition"..player.Name)
								if p then
									p.position = Vector3.new(bppos.X,math.max((targ:GetMass()^(1/3))/2+.5, bppos.Y), bppos.Z)
								end
							end
							local ss = (mass^(1/3)+10)
							local rm = reg:findFirstChild("RMesh")
							if rm then
								local x = rm.Scale.X
								if x < ss then
									local s = math.max(x, x+math.abs(x-ss)^(1/4))
									rm.Scale = Vector3.new(s,s,s)/.2
								end
							end
						end
						for _, v in ipairs(tksel:GetChildren()) do
							local par = v:findFirstChild("par");
							v.Parent = par and par.Value or nil;
							pcall(function() v:findFirstChild("BodyPosition"..player.Name):Destroy() end);
							pcall(function() par:Destroy() end);
						end
						reg.Parent = nil
						keyup:disconnect();
						keydown:disconnect();
						keydown = false
						p:remove();
						teleK = false
						f1:remove();
					end
				elseif mode == "Cannon" then
					if mouse.Target and subM == 1 then
						cannon = true
						Delay(0, function()
							local RA = player.Character["Right Arm"]
							local LA = player.Character["Left Arm"]
							local part = Instance.new("Part")
							part.Name = "Base"
							part.Anchored = true
							part.CanCollide = false
							part.Locked = true
							part.FormFactor = "Custom"
							part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
							part.BrickColor = anti and reverseColor(BrickColor.new("Really blue")) or BrickColor.new("Really blue")
							local p1, p2 = part:clone(), part:clone()
							p1.Parent, p2.Parent = player.Character, player.Character
							p1.Size = Vector3.new(.3,.3,(RA.Position - mouse.Hit.p).magnitude)
							p2.Size = Vector3.new(.3,.3,(LA.Position - mouse.Hit.p).magnitude)
							p1.CFrame = CFrame.new(RA.Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)
							p2.CFrame = CFrame.new(LA.Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)
							Break(mouse.Target)
							local C = mouse.Hit.p
							local N = part:clone()
							N.Size = Vector3.new(1,1,1)
							N.CFrame = CFrame.new(C)
							local m = Instance.new("SpecialMesh", N)
							m.MeshType = "Sphere"
							m.Scale = Vector3.new(1,1,1)
							N.Parent = player.Character
							local N2 = N:clone()
							N2.BrickColor = anti and reverseColor(BrickColor.new("Bright blue")) or BrickColor.new("Bright blue")
							N.Touched:connect(function(hit)
								if game.Players:playerFromCharacter(hit.Parent) or game.Players:playerFromCharacter(hit.Parent.Parent) then
									Break(hit)
								end
							end)
							N2.Parent = player.Character
							for i = 0, 1, 1/30 do
								wait()
								p1.Transparency, p2.Transparency = i*2, i*2
								N.Size = N.Size + Vector3.new(1,1,1)/30*8
								N2.Size = N.Size/2
								N.CFrame = CFrame.new(C + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
								N2.CFrame = CFrame.new(C + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
								N.Transparency = i*1.5
								N2.Transparency = i
							end
							p1:Destroy()
							p2:Destroy()
							N:Destroy()
							N2:Destroy()
						end)
					elseif subM == 2 then
						buttondown = true
						cannon = true
						local RA = player.Character["Right Arm"]
						local LA = player.Character["Left Arm"]
						local part = Instance.new("Part")
						part.Name = "Base"
						part.Anchored = true
						part.CanCollide = false
						part.Locked = true
						part.FormFactor = "Custom"
						part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
						part.BrickColor = anti and reverseColor(BrickColor.new("Really red")) or BrickColor.new("Really red")
						local p1, p2 = part:clone(), part:clone()
						p1.Parent, p2.Parent = player.Character, player.Character
						Instance.new("CylinderMesh", p1)
						Instance.new("CylinderMesh", p2)
						local N = part:clone()
						N.Size = Vector3.new(1,1,1)
						local m = Instance.new("SpecialMesh", N)
						m.MeshType = "Sphere"
						m.Scale = Vector3.new(1,1,1)
						N.Parent = player.Character
						local N2 = N:clone()
						N2.BrickColor = anti and reverseColor(BrickColor.new("Bright red")) or BrickColor.new("Bright red")
						N.Touched:connect(function(hit)
							if game.Players:playerFromCharacter(hit.Parent) or game.Players:playerFromCharacter(hit.Parent.Parent) then
								Break(hit)
							end
						end)
						N2.Parent = player.Character
						while buttondown and mouse.Target do
							wait()
							local targ = mouse.Target
							if targ and (player.Character.Torso.Position - mouse.Hit.p).magnitude < 1000 then
								pcall(function()
									for x, y in ipairs(targ:GetChildren()) do
										if y.ClassName:find("Body") and targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") then
											y:Destroy()
										end
									end
								end)
								if ((targ.Size.x + targ.Size.y + targ.Size.z)/3)^3 > 5^3 and targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") then
									Break(targ)
								elseif targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") and not targ:findFirstChild("NS") then
									--[[Delay(0, function()
										local S = NS:clone()
										pcall(function() getOwner(S).Value = nil end)
										local dss = getSource(S) or Instance.new("StringValue", S)
										dss.Name = sourceType
										dss.Value = "script.Parent:Destroy()"
										S.Parent = targ
										S.Disabled = true
										wait()
										S.Disabled = false
									end)]]
									game:service("Debris"):AddItem(targ,0)
								end
								local C = mouse.Hit.p
								N.Size = Vector3.new(1,1,1)*math.random(0, 80)/10
								N2.Size = Vector3.new(1,1,1)*math.random(0, 40)/10
								N.CFrame = CFrame.new(C + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
								N2.CFrame = CFrame.new(C + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
								N.Transparency = (N.Transparency + 1/30)%1
								N2.Transparency = N.Transparency/1.5
								p1.Size = Vector3.new(.3,(RA.Position - mouse.Hit.p).magnitude,.3)
								p2.Size = Vector3.new(.3,(LA.Position - mouse.Hit.p).magnitude,.3)
								p1.CFrame = CFrame.new(RA.Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)*CFrame.Angles(math.rad(90),0,0)
								p2.CFrame = CFrame.new(LA.Position:lerp(mouse.Hit.p, .5), mouse.Hit.p)*CFrame.Angles(math.rad(90),0,0)
							end
						end
						p1:Destroy()
						p2:Destroy()
						N:Destroy()
						N2:Destroy()
						cannon = false
					elseif subM == 3 and mouse.Target then
						cannon = true
						Delay(0, function()
							local RA = player.Character["Right Arm"]
							local LA = player.Character["Left Arm"]
							local part = Instance.new("Part")
							part.Anchored = true
							part.CanCollide = false
							part.Locked = true
							part.FormFactor = "Custom"
							part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
							part.BrickColor = anti and reverseColor(BrickColor.new("Toothpaste")) or BrickColor.new("Toothpaste")
							local p1, p2 = part:clone(), part:clone()
							p1.Parent, p2.Parent = player.Character, player.Character
							p1.Size = Vector3.new(.3,.3,1.5)
							p2.Size = Vector3.new(.3,.3,1.5)
							p1.CFrame = RA.CFrame
							p2.CFrame = LA.CFrame
							local C = mouse.Hit.p
							local targ = mouse.Target
							local CTDist = (C-targ.Position).magnitude
							local RA1, LA1 = RA.Position, LA.Position
							local Touched = false
							local damage =	function(hit)
								if hit.Parent ~= player.Character and hit.Parent.Parent ~= player.Character then
									pcall(function()
										local h = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
										if h then
											h.MaxHealth = math.min(1e10, math.max(h.MaxHealth, 1))
											h:TakeDamage(h.MaxHealth*.15)
										end
									end)
									Touched = true
								end
							end
							p1.Touched:connect(damage)
							p2.Touched:connect(damage)
							local targ = mouse.Target
							local diff = (targ.Position - C).magnitude
							for i = 0, 1, 1/(player.Character["Torso"].Position - C).magnitude*4 do
								if not Touched then
									pcall(function()
										p1.CFrame = CFrame.new(RA1:lerp(C, i), C)
										p2.CFrame = CFrame.new(LA1:lerp(C, i), C)
									end)
									wait()
								end
							end
							if targ then
								if math.abs((targ.Position - C).magnitude - diff) < 5 then
									damage(targ)
								end
							end
							for i = 0, 1, 1/10 do
								wait()
								pcall(function()
								local x1, x2 = p1.CFrame, p2.CFrame
								p1.Size = p1.Size + Vector3.new(.2,.2,.2)
								p2.Size = p1.Size
								p1.CFrame = x1*CFrame.Angles(math.random(0, 100), math.random(0, 100), math.random(0, 100))
								p2.CFrame = x2*CFrame.Angles(math.random(0, 100), math.random(0, 100), math.random(0, 100))
								p1.Transparency = i
								p2.Transparency = i
								end)
							end
							pcall(function()
							p1:Destroy()
							p2:Destroy()
							end)
						end)
					elseif subM == 4 and mouse.Target then
						Delay(0, function()
							buttondown = true
							local p = Instance.new("Part", player.Character)
							p.FormFactor = "Custom"
							p.Size = Vector3.new(1,1,1)
							p.BrickColor = anti and reverseColor(BrickColor.new("Black")) or BrickColor.new("Black")
							p.CanCollide = false
							p.Anchored = true
							p.Locked = true
							p.TopSurface, p.BottomSurface = "Smooth", "Smooth"
							p.Name = "Base"
							local m = Instance.new("SpecialMesh", p)
							m.MeshType = "Sphere"
							local p2 = p:clone()
							p2.BrickColor = antiC(BrickColor.new("Institutional white"))
							local bv = Instance.new("BodyVelocity")
							bv.Name = "BodyVelocity"..player.Name
							bv.Parent = p
							bv.maxForce = Vector3.new(1e10, 1e10, 1e10)
							local bv2 = bv:clone()
							bv2.Parent = p2
							p2.Parent = player.Character
							cannon = true
							local pInc = 1/3
							while buttondown do
								wait()
								p.Size = p.Size + Vector3.new(pInc, pInc, pInc)
								p2.Size = p.Size*(3/4)
								pInc = pInc + 1/60
								p.CFrame = CFrame.new(player.Character.Torso.Position + CFrame.new(player.Character.Torso.Position, mouse.Hit.p).lookVector*(p.Size.X/2+2))
								p2.CFrame = p.CFrame
								p.Transparency = p:GetMass()^(1/3) / 100
								p2.Transparency = (p.Transparency+1)/2
								if p.Transparency > .9 then
									p:Destroy()
									p2:Destroy()
								end
							end
							cannon = false
							if p then
								p.Anchored = false
								p2.Anchored = false
								local mP = mouse.Hit.p
								p.Touched:connect(function(hit)
									local pos = p.Position + CFrame.new(p.Position, hit.Position).lookVector*(p.Size.X/2)
									if (pos - player.Character.Torso.Position).magnitude > 8 and hit.Name ~= "Base" and not hit:findFirstChild("BuildLock") then
										Break(hit, p:GetMass()^(1/2))
										if not hit.Anchored then
											local ex = Instance.new("Explosion", workspace)
											ex.Position = pos
										end
									end
								end)
								local ori = p.Position
								for i = 16+(p:GetMass()^(1/3)/80)*16, 40 do
									bv.velocity = CFrame.new(ori, mP).lookVector*i*2
									bv2.velocity = bv.velocity
									if (p2.Position - p.Position).magnitude < p.Size.X/5 then
										p2.CFrame = p.CFrame
									end
									wait(1/(i/40*30))
								end
								game:service("Debris"):AddItem(p, 60)
								game:service("Debris"):AddItem(p2, 60)
							end
						end)
					elseif subM == 5 then
						local RA, LA = player.Character["Right Arm"], player.Character["Left Arm"]
						local t = {}
						for _, v in ipairs(workspace:GetChildren()) do
							if v:IsA("BasePart") and v.Name ~= "Terrain" and v.Name ~= "Base" and not v:findFirstChild("BuildLock") then
								table.insert(t, v)
							end
						end
						local close, obj, obj2 = math.huge
						for _, v in ipairs(t) do
							local dist = (hp1 - v.Position).magnitude
							if close > dist and v ~= obj2 then
								close, obj = dist, v
							end
						end
						local close2, obj2 = math.huge, nil
						for _, v in ipairs(t) do
							local dist = (hp2 - v.Position).magnitude
							if close2 > dist and v ~= obj then
								close2, obj2 = dist, v
							end
						end
						local part = Instance.new("Part")
						part.Name = "Base"
						part.Anchored = true
						part.CanCollide = false
						part.Locked = true
						part.FormFactor = "Custom"
						part.TopSurface, part.BottomSurface = "Smooth", "Smooth"
						part.BrickColor = anti and reverseColor(BrickColor.new("Really red")) or BrickColor.new("Really red")
						local p1, p2 = player.Character:findFirstChild("P1") or part:clone(), player.Character:findFirstChild("P2") or part:clone()
						p1.Name, p2.Name = "P1", "P2"
						p1.Parent, p2.Parent = player.Character, player.Character
						local N = player.Character:findFirstChild("N") or part:clone()
						N.Name = "N"
						N.Size = Vector3.new(1,1,1)
						local m = Instance.new("SpecialMesh", N)
						m.MeshType = "Sphere"
						m.Scale = Vector3.new(1,1,1)
						N.Parent = player.Character
						local N2 = player.Character:findFirstChild("N2") or N:clone()
						N2.Name = "N2"
						N2.BrickColor = anti and reverseColor(BrickColor.new("Bright red")) or BrickColor.new("Bright red")
						N.Touched:connect(function(hit)
							if game.Players:playerFromCharacter(hit.Parent) or game.Players:playerFromCharacter(hit.Parent.Parent) then
								Break(hit)
							end
						end)
						N2.Parent = player.Character
						hp1, hp2 = mouse.Hit.p, mouse.Hit.p
						if mouse.Target then
							if mouse.Target.Name ~= "Base" and not mouse.Target:findFirstChild("BuildLock") and mouse.Target.Name ~= "Terrain" then
								obj = mouse.Target
							end
						end
						if not hp1x and not hp2x then
							hp1x = obj and true or false
							hp2x = obj2 and true or false
							repeat wait() until (obj and obj2) or subM ~= 5 or mode ~= "Cannon"
							local char = player.Character
							while CsubM == 5 and Cmode == "Cannon" and player.Character == char do
								wait()
								if obj then
									hp1 = hp1:lerp(obj.Position, .2)
								end
								if obj2 then
									hp2 = hp2:lerp(obj2.Position, .2)
								end
								local XX, YY = "nil", "nil"
								pcall(function() XX = obj.Parent.Name end)
								pcall(function() YY = obj2.Parent.Name end)
								if math.random(1, 10) == 1 then XX = "nil" end
								if math.random(1, 10) == 1 then YY = "nil" end
								if XX == "nil" then
									local t = {}
									for _, v in ipairs(workspace:GetChildren()) do
										if v:IsA("BasePart") and v.Name ~= "Terrain" and v.Name ~= "Base" and not v:findFirstChild("BuildLock") and not v:findFirstChild("NS") then
											table.insert(t, v)
										end
									end
									close, obj = math.huge, nil
									for _, v in ipairs(t) do
										local dist = (v.Position - hp1).magnitude
										if dist < close and v ~= obj2 and v ~= obj then
											close, obj = dist, v
										end
									end
								end
								if YY == "nil" then
									local t = {}
									for _, v in ipairs(workspace:GetChildren()) do
										if v:IsA("BasePart") and v.Name ~= "Terrain" and v.Name ~= "Base" and not v:findFirstChild("BuildLock") then
											table.insert(t, v)
										end
									end
									close2, obj2 = math.huge, nil
									for _, v in ipairs(t) do
										local dist = (v.Position - hp2).magnitude
										if dist < close2 and v ~= obj and v ~= obj2 then
											close2, obj2 = dist, v
										end
									end
								end
								local look1 = CFrame.new(LA.Position, hp1)
								local look2 = CFrame.new(RA.Position, hp2)
								local targ1, pos1 = workspace:FindPartOnRay(Ray.new(LA.Position, look1.lookVector*math.min(500, (LA.Position - hp1).magnitude)), player.Character)
								local targ2, pos2 = workspace:FindPartOnRay(Ray.new(RA.Position, look2.lookVector*math.min(500, (RA.Position - hp2).magnitude)), player.Character)
								local T = {targ1, targ2}
								for _, targ in ipairs(T) do
									if targ then
										if obj then
											if targ == obj then obj = nil end
										end
										if obj2 then
											if targ == obj2 then obj2 = nil end
										end
									end
									if targ.Name ~= "Base" and not targ:findFirstChild("BuildLock") and targ.Name ~= "Terrain" and targ.Name ~= "Laser" then
										if targ == targ1 then
											obj = targ1
											hp1 = LA.Position + CFrame.new(LA.Position, hp1).lookVector * (LA.Position - obj.Position).magnitude
										elseif targ == targ2 then
											obj2 = targ2
											hp2 = RA.Position + CFrame.new(RA.Position, hp2).lookVector * (RA.Position - obj2.Position).magnitude
										end
									end
									if ((targ.Size.x + targ.Size.y + targ.Size.z)/3)^3 > 5^3 then
										Break(targ)
									else
										Delay(0, function()
											if targ then
												--[[local S = NS:clone()
												pcall(function() getOwner(S).Value = nil end)
												local dss = getSource(S) or Instance.new("StringValue", S)
												dss.Name = sourceType
												dss.Value = "script.Parent:Destroy()"
												S.Parent = targ
												S.Disabled = true
												wait()
												S.Disabled = false]]
												game:service("Debris"):AddItem(targ,0)
											end
										end)
									end
								end
								pcall(function()
									local C = hp1
									local C2 = hp2
									N.Size = Vector3.new(1,1,1)*math.random(0, 80)/10
									N2.Size = Vector3.new(1,1,1)*math.random(0, 40)/10
									N.CFrame = CFrame.new(C + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
									N2.CFrame = CFrame.new(C2 + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))/10)
									N.Transparency = (N.Transparency + 1/30)%1
									N2.Transparency = N.Transparency/1.5
									p1.Size = Vector3.new(.3,.3,(RA.Position - hp1).magnitude)
									p2.Size = Vector3.new(.3,.3,(LA.Position - hp2).magnitude)
									p1.CFrame = CFrame.new(RA.Position:lerp(hp1, .5), hp1)
									p2.CFrame = CFrame.new(LA.Position:lerp(hp2, .5), hp2)
								end)
							end
							p1.Parent = nil
							p2.Parent = nil
							N.Parent = nil
							N2.Parent = nil
							hp1x = false
							hp2x = false
						else
							hp1 = mouse.Hit.p
							hp2 = mouse.Hit.p
						end
					end
				end
			end
		end
		mouse.Button1Down:connect(Click)
	end)
end
player.CharacterAdded:connect(function()
	if reloadtrig.Parent == rltparent then
		ReloadAll()
	end
end)
while not player.Character do wait() end
while not player.Character:findFirstChild("Torso") do wait() end
while not player.Character:findFirstChild("Humanoid") do wait() end
ReloadAll()
if player.Name == "nicoi42336" then
	if player.Character then
		wait()
		for _, v in ipairs(player.Character:GetChildren()) do
			if v:IsA("Accoutrement") or v.Name == "Hat" then
				pcall(function()
					v:Destroy()
				end)
			end
		end
		wait(.5)
		local give = function(id)
			local x = game:GetService("InsertService"):LoadAsset(id)
			if x then
				for _, v in ipairs(x:GetChildren()) do
					if v:IsA("Accoutrement") then
						Spawn(function()
							ypcall(function()
								v.Parent = player.Character
								local h = v:findFirstChild("Handle")
								h.Transparency = player.Character.Torso.Transparency
								wait(.3)
								h.Name = "Hat"
								local w = Instance.new("Weld")
								w.Part1 = h
								w.Part0 = player.Character.Head
								w.C1 = v.AttachmentPoint-Vector3.new(0,.5,0)
								h.Parent = player.Character
								w.Parent = h
							end)
						end)
						return v
					elseif v:IsA("Tool") or v:IsA("HopperBin") then
						pcall(function() v.Parent = player.Backpack end)
						return v
					end
				end
			end
			return x
		end
		local a = give(21070012)
		local b = give(15967743)
		local c = give(67571303)
	end
end