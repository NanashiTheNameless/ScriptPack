script.Parent = nil

local LocalScriptCode = [[

wait(1)

script.Parent = nil

local Rotation = 0
local Rotation2 = 0

Workspace.CurrentCamera:ClearAllChildren()

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Char = Player.Character
local Geometry = game:GetService("Lighting")
local BTablets = {}
local CurTabs = {}
local Tablets = {}

FindCharacter = function(Str)
	local Found = nil
	for i = 1,#Str do
		if string.gmatch(string.sub(Str:lower(),i,i), "[%p/%s]+") then
			for i2 in string.gmatch(string.sub(Str:lower(),i,i), "[%p/%s]+") do
				if i2 ~= "-" then
					Found = i
				end
			end
		end
	end
	return Found
end

function _G.QuaternionFromCFrame(cf)
	local mx,  my,  mz,
	      m00, m01, m02,
	      m10, m11, m12,
	      m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
	else
		local i = 0
		if m11 > m00 then i = 1 end
		if m22 > (i == 0 and m00 or m11) then i = 2 end
		if i == 0 then
			local s = math.sqrt(m00-m11-m22+1)
			local recip = 0.5/s
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
		elseif i == 1 then
			local s = math.sqrt(m11-m22-m00+1)
			local recip = 0.5/s
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
		elseif i == 2 then
			local s = math.sqrt(m22-m00-m11+1)
			local recip = 0.5/s
			return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
		end
	end
end
 
function _G.QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w*xs, w*ys, w*zs
	--
	local xx = x*xs
	local xy = x*ys
	local xz = x*zs
	local yy = y*ys
	local yz = y*zs
	local zz = z*zs
	--
	return CFrame.new(px,        py,        pz,
	                  1-(yy+zz), xy - wz,   xz + wy,
	                  xy + wz,   1-(xx+zz), yz - wx,
	                  xz - wy,   yz + wx,   1-(xx+yy))
end
 
function _G.QuaternionSlerp(a, b, t)
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((1-t)*theta)*invSinTheta
			finishInterp = math.sin(t*theta)*invSinTheta 
		else
			startInterp = 1-t
			finishInterp = t
		end
	else
		if (1+cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t-1)*theta)*invSinTheta
			finishInterp = math.sin(t*theta)*invSinTheta
		else
			startInterp = t-1
			finishInterp = t
		end
	end
	return a[1]*startInterp + b[1]*finishInterp,
	       a[2]*startInterp + b[2]*finishInterp,
	       a[3]*startInterp + b[3]*finishInterp,
	       a[4]*startInterp + b[4]*finishInterp	       
end

local TweenVar = 0
 
function _G.TweenCFrame(part, b, length)
	TweenVar = TweenVar+1
	coroutine.resume(coroutine.create(function()
		local a = part.CFrame
		local TVar = TweenVar
		local qa = {_G.QuaternionFromCFrame(a)}
		local qb = {_G.QuaternionFromCFrame(b)}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		--
		local c = 0
		local tot = 0
		--
		local startTime = tick()
		while true do
			if TweenVar ~= TVar then
				break
			end
			wait(0.0000000000000000000000000000000000000000000000000000000000001)
			local t = (tick()-startTime)/length
			local _t = 1-t
			if t > 1 then break end
			local startT = tick()
			local cf = _G.QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,
											 _G.QuaternionSlerp(qa, qb, t))
			tot = tot+(tick()-startT)
			c = c + 1
			part.CFrame = cf
		end
	end))
end

CreateTablet = function(Plr,Msg,Func,Dur)
	local Val = Instance.new("StringValue",Geometry)
	Val.Name = "CreatePing"
	Val.Value = Plr
	local Val2 = Instance.new("StringValue",Val)
	Val2.Name = "Message"
	Val2.Value = Msg
	local Val3 = Instance.new("NumberValue",Val)
	Val3.Name = "Func"
	Val3.Value = Func
	if Dur then
		if type(Dur) == "Number" then
			local Val3 = Instance.new("NumberValue",Val)
			Val3.Name = "Dur"
			Val3.Value = Dur
		else
			local Val3 = Instance.new("StringValue",Val)
			Val3.Name = "Color"
			Val3.Value = Dur
		end
	end
end

function GetTablets(Player)
	local Tabs = {}
	for i,v in pairs(Tablets) do
		if v[3] == Player.Name then
			table.insert(Tabs,{BTablets[i],v[4],v[3]})
		end
	end
	return Tabs
end

local InTablet = false

tablefind = function(tab,index,op)
	local Found = nil
	for i,v in pairs(tab) do
		if not op then
			if index == v then
				Found = i
				break
			end
		else
			if index == v[op] then
				Found = i
				break
			end
		end
	end
	return Found
end

while true do
	Char = Player.Character
	if Geometry:FindFirstChild("ShutdownAdmin") or Geometry:FindFirstChild(Player.Name) then
		Shutdown = true
		Workspace.CurrentCamera:ClearAllChildren()
		pcall(function()
			game.Debris:AddItem(Geometry:FindFirstChild("ShutdownAdmin"),0.1)
		end)
		pcall(function()
			game.Debris:AddItem(Geometry:FindFirstChild(Player.Name),0.1)
		end)
	end
	if not Shutdown then
		if Geometry:FindFirstChild("Tablets") then
			Tablets = loadstring("return " .. Geometry.Tablets.Value)()
			if #Tablets ~= #BTablets then
				InTablet = false
				for i,v in pairs(BTablets) do
					v:Destroy()
				end
				BTablets = {}
				local Used = {}
				for i,v in pairs(Tablets) do
					pcall(function()
						local AlertP = Instance.new("Part",Workspace.CurrentCamera)
						AlertP.Anchored = true
						AlertP.CanCollide = false
						AlertP.FormFactor = "Custom"
						AlertP.BrickColor = BrickColor.new(v[2])
						AlertP.Transparency = 0.35
						AlertP.Size = Vector3.new(2,3,0)
						AlertP.Name = "AlertPart"
						local Box = Instance.new("SelectionBox",AlertP)
						Box.Adornee = AlertP
						Box.Color = BrickColor.new(v[2])
						Box.Transparency = 0.35
						local CFR = Char.Torso.CFrame
						if #CurTabs > 0 then
							for i3,v3 in pairs(CurTabs) do
								if v3[2][1] == v[1] and v3[2][2] == v[2] and v3[2][3] == v[3] and v3[2][4] == v[4] and not tablefind(Used,i3) then
									CFR = v3[1]
									table.insert(Used,i3)
									break
								end
							end
						end
						AlertP.CFrame = CFR
						if v[4] and v[4] ~= 0 then
							local Lasso = Instance.new("SelectionPartLasso",AlertP)
							Lasso.Color = BrickColor.new(v[2])
							local CD = Instance.new("ClickDetector",AlertP)
							CD.MaxActivationDistance = math.huge
							CD.MouseHoverEnter:connect(function(p)
								if p.Name == v[3] then
									pcall(function()
										InTablet = true
										Lasso.Humanoid = p.Character.Humanoid
										Lasso.Part = AlertP
									end)
								end
							end)
							CD.MouseClick:connect(function(p)
								if p.Name == v[3] then
									pcall(function()
										InTablet = false
										if v[4] == 1 then
											local Val = Instance.new("StringValue",Geometry)
											Val.Name = "RemoveTablet"
											Val.Value = i
											AlertP:Destroy()
										elseif v[4] == 2 then
											for i,v in pairs(BTablets) do
												if Tablets[i][3] == p.Name then
													v:Destroy()
												end
											end
											local Val = Instance.new("StringValue",Geometry)
											Val.Name = "ClearPings"
											Val.Value = p.Name
										elseif v[4] == 3 then
											for i,v in pairs(BTablets) do
												if Tablets[i][3] == p.Name then
													v:Destroy()
												end
											end
											local Plr = Players:FindFirstChild(v[5])
											local Val = Instance.new("StringValue",Geometry)
											Val.Name = "ClearPings"
											Val.Value = p.Name
											CreateTablet(p.Name,"Showing Info For "..Plr.Name,0)
											CreateTablet(p.Name,"Account Age: "..math.floor(Plr.AccountAge/365).." Years and "..(Plr.AccountAge/365-math.floor(Plr.AccountAge/365))*365 .." Days",0)
											CreateTablet(p.Name,"UserId: "..Plr.userId,0)
											CreateTablet(p.Name,"Membership Type: "..string.sub(tostring(Plr.MembershipType),FindCharacter(tostring(Plr.MembershipType))+1),0)
											CreateTablet(p.Name,"Is Game Owner: "..tostring(Plr.userId==game.CreatorId),0)
											CreateTablet(p.Name,"Dismiss",2,"Bright red")
										end
									end)
								end
							end)
							CD.MouseHoverLeave:connect(function(p)
								if p.Name == v[3] then
									pcall(function()
										InTablet = false
										Lasso.Humanoid = nil
										Lasso.Part = nil
									end)
								end
							end)
						end
						local BGUI = Instance.new("BillboardGui")
						BGUI.Name = "AdminGUI"
						BGUI.Size = UDim2.new(0,1,0,1)
						BGUI.StudsOffset = Vector3.new(0,2.5,0)
						BGUI.Parent = AlertP
						BGUI.Adornee = AlertP
						local BText = Instance.new("TextLabel",BGUI)
						BText.Name = "Text"
						BText.FontSize = "Size14"
						BText.TextStrokeTransparency = 0
						BText.TextColor3 = AlertP.Color
						BText.Font = "ArialBold"
						BText.Text = v[1]
						table.insert(BTablets,AlertP)
					end)
				end
			end
		end
		if not InTablet then
			Rotation = Rotation+0.000075
		end
		Rotation2 = Rotation2+0.000075
		if Rotation >= 360 then
			Rotation = 0
		end
		for i2,v2 in pairs(Players:GetChildren()) do
			pcall(function()
				local Tabs = GetTablets(v2)
				local Num = 0
				local Done = false
				local counter = 0
				local counter2 = 0
				for i,v in pairs(Tabs) do
					if v[2] == 2 then
						Num = Num+1
					end
				end
				for i,v in pairs(Tabs) do
					if workspace.CurrentCamera then
						if (workspace.CurrentCamera.CoordinateFrame.p-v[1].Position).Magnitude > 200 then
							v[1].AdminGUI.Text.Visible = false
						else
							v[1].AdminGUI.Text.Visible = true
						end
					end
					if v[2] ~= 2 then
						counter2 = counter2+1
						local Pos = v2.Character.Torso.CFrame
						local Radius = 5 + (#Tabs-Num*0.7)
						local X = 0
						local Z = 0
						if v[3] == Player.Name then
							X = math.cos((counter2/(#Tabs-Num) - ((0.5/(#Tabs-Num))+Rotation*2)) * math.pi*2) * Radius
							Z = math.sin((counter2/(#Tabs-Num) - ((0.5/(#Tabs-Num))+Rotation*2)) * math.pi*2) * Radius
						else
							X = math.cos((counter2/(#Tabs-Num) - ((0.5/(#Tabs-Num))+Rotation2*2)) * math.pi*2) * Radius
							Z = math.sin((counter2/(#Tabs-Num) - ((0.5/(#Tabs-Num))+Rotation2*2)) * math.pi*2) * Radius
						end
						local tabletPosition = Pos * CFrame.Angles(0,math.rad(90),0):toWorldSpace(CFrame.new(X,0,Z):inverse())
						local WantedCFrame = tabletPosition
						WantedCFrame = CFrame.new(WantedCFrame.p,Pos.p) * CFrame.Angles(math.rad(30), 0, 0)
						_G.TweenCFrame(v[1],WantedCFrame,0.075)
					elseif v[2] == 2 and not Done then
						local Pos = v2.Character.Torso.CFrame
						counter = counter+1
						local Radius = 3 + (counter*0.7)
						local X = math.cos((counter/1 - ((0.5/1))) * math.pi*2) * Radius
						local Z = math.sin((counter/1 - ((0.5/1))) * math.pi*2) * Radius
						local tabletPosition = Pos * CFrame.new(0,3,0) * CFrame.Angles(0,math.rad(90),0):toWorldSpace(CFrame.new(X,0,Z):inverse())
						local WantedCFrame = tabletPosition
						WantedCFrame = CFrame.new(WantedCFrame.p,Pos.p)
						_G.TweenCFrame(v[1],WantedCFrame,0.075)
						Done = true
					else
						local Pos = v2.Character.Torso.CFrame
						local X = math.huge
						local Z = math.huge
						local tabletPosition = Pos * CFrame.new(0,3,0) * CFrame.Angles(0,math.rad(90),0):toWorldSpace(CFrame.new(X,0,Z):inverse())
						local WantedCFrame = tabletPosition
						WantedCFrame = CFrame.new(WantedCFrame.p,Pos.p)
						_G.TweenCFrame(v[1],WantedCFrame,0.075)
					end
					CurTabs = {}
					for i,v in pairs(BTablets) do
						table.insert(CurTabs,{v.CFrame,Tablets[i]})
					end
				end
			end)
		end
	else
		break
	end
	wait(0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
end

]]

local RejoinCode = 'game:GetService("TeleportService"):Teleport('..game.PlaceId..')'

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Geometry = game:GetService("Lighting")

if not NLS then
	NLS = function(Source,Parent)
		local Scr = script.NLS:Clone()
		Scr.Code.Value = Source
		Scr.Parent = Parent
		return Scr
	end
end

oldtonumber = tonumber

tonumber = function(str)
	if string.sub(str,1,1) == "-" then
		return oldtonumber(string.sub(str,2))*-1
	else
		return oldtonumber(str)
	end
end

tablefind = function(tab,index,op)
	local Found = nil
	for i,v in pairs(tab) do
		if not op then
			if index == v then
				Found = i
				break
			end
		else
			if index == v[op] then
				Found = i
				break
			end
		end
	end
	return Found
end

local Zoticus = {}

Zoticus["Ranks"] = {
	[-2] = "Lagged",
	[-1] = "Banned",
	[0] = "Guest",
	[1] = "Member",
	[2] = "Mod",
	[3] = "Ultra Mod",
	[4] = "Admin",
	[5] = "Ultra Admin",
	[6] = "Developer",
	[7] = "Owner",
}

Zoticus["Colors"] = {
	[-2] = "Black",
	[-1] = "Black",
	[0] = "Neon orange",
	[1] = "Bright blue",
	[2] = "Bright red",
	[3] = "Bright green",
	[4] = "Bright violet",
	[5] = "Medium green",
	[6] = "Bright orange",
	[7] = "New Yeller",
}

Zoticus["Players"] = {
	{"rigletto",7},
	{"Player",7},
}

Zoticus["Highlight"] = function(Obj, Color)
	if Obj:IsA("BasePart") then
		local SelectionBox = Instance.new("SelectionBox",Obj)
		SelectionBox.Adornee = Obj
		SelectionBox.Transparency = 0.5
		SelectionBox.Color = BrickColor.new(Color)
	end
	for i,v in pairs(Obj:GetChildren()) do
		Zoticus.Highlight(v, Color)
	end
end

Zoticus["UnHighlight"] = function(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("SelectionBox") then
			v:Destroy()
		end
		Zoticus.UnHighlight(v)
	end
end

Zoticus["Fire"] = function(Obj, Color)
	if Obj:IsA("BasePart") then
		local Fire = Instance.new("Fire",Obj)
		Fire.Color = BrickColor.new(Color).Color
		Fire.SecondaryColor = Color3.new(0,0,0)
	end
	for i,v in pairs(Obj:GetChildren()) do
		Zoticus.Fire(v, Color)
	end
end

Zoticus["UnFire"] = function(Obj)
	for i,v in pairs(Obj:GetChildren()) do
		if v:IsA("Fire") then
			v:Destroy()
		end
		Zoticus.UnFire(v)
	end
end

Zoticus["GetRank"] = function(Plr)
	if tablefind(Zoticus.Players,Plr.Name,1) then
		return Zoticus.Players[tablefind(Zoticus.Players,Plr.Name,1)][2], Zoticus.Ranks[Zoticus.Players[tablefind(Zoticus.Players,Plr.Name,1)][2]]
	end
end

Zoticus["Tablets"] = {}

Zoticus["Alert"] = function(Mesg,Color,Plr,Func,Debris,Extra)
	coroutine.resume(coroutine.create(function()
		local Tab = {Mesg,Color,Plr,Func,Extra}
		table.insert(Zoticus.Tablets,Tab)
		if Debris and Debris > 0 then
			wait(Debris)
			if tablefind(Zoticus.Tablets,Tab) then
				table.remove(Zoticus.Tablets,tablefind(Zoticus.Tablets,Tab))
			end
		end
	end))
end

Zoticus["Connections"] = {}

Zoticus["Remove"] = function(Objects,Plr)
	if Objects == "Tablets" then
		if Plr then
			for i = 1,#Zoticus.Tablets do
				for i,v in pairs(Zoticus.Tablets) do
					if v[3].Name == tostring(Plr) then
						table.remove(Zoticus.Tablets,i)
					end
				end
			end
		else
			Zoticus.Tablets = {}
		end
	else
		for i,v in pairs(Zoticus.Connections) do
			v:disconnect()
		end
		pcall(function() Geometry.Tablets:Destroy() end)
		Zoticus.Remove("Tablets")
		script.Disabled = true
		script:Destroy()
		for i,v in pairs(Players:GetChildren()) do
			Instance.new("StringValue",Geometry).Name = v.Name
		end
		Zoticus = {}
		error("You have removed Zoticus admin.")
	end
end

Zoticus["MatchPlayers"] = function(Str,Plr)
	local Found = {}
	for i in string.gmatch(Str:lower(), "[%w_/%s]+") do
		if i == "me" and not tablefind(Found,Plr) then
			table.insert(Found,Plr)
		elseif i == "all" then
			for i2,v2 in pairs(Players:GetChildren()) do
				if not tablefind(Found,v2) then
					table.insert(Found,v2)
				end
			end
		elseif i == "others" then
			for i2,v2 in pairs(Players:GetChildren()) do
				if not tablefind(Found,v2) and v2 ~= Plr then
					table.insert(Found,v2)
				end
			end
		elseif string.sub(i,1,4) == "rank" and string.sub(i,5) ~= "ed" then
			for i2,v2 in pairs(Players:GetChildren()) do
				if not tablefind(Found,v2) and Zoticus.GetRank(v2) == tonumber(string.sub(i,5)) then
					table.insert(Found,v2)
				end
			end
		elseif i == "ranked" then
			for i2,v2 in pairs(Players:GetChildren()) do
				if not tablefind(Found,v2) and Zoticus.GetRank(v2) > 0 then
					table.insert(Found,v2)
				end
			end
		elseif i == "nonranked" then
			for i2,v2 in pairs(Players:GetChildren()) do
				if not tablefind(Found,v2) and Zoticus.GetRank(v2) < 1 then
					table.insert(Found,v2)
				end
			end
		else
			for i2,v2 in pairs(Players:GetChildren()) do
				if string.find(v2.Name:lower(),i) and not tablefind(Found,v2) then
					table.insert(Found,v2)
				end
			end
		end
	end
	return Found
end

Zoticus["FindCharacter"] = function(Str)
	local Found = nil
	for i = 1,#Str do
		if string.gmatch(string.sub(Str:lower(),i,i), "[%p/%s]+") then
			for i2 in string.gmatch(string.sub(Str:lower(),i,i), "[%p/%s]+") do
				if i2 ~= "-" then
					Found = i
				end
			end
		end
	end
	return Found
end

Zoticus["Chatted"] = function(Msg, Plr)
	local Rk = Zoticus.GetRank(Plr)
	if Rk >= 0 then
		if Msg:lower() == "reset" then
			Plr:LoadCharacter()
		end
	end
	if Rk >= 1 then
		if string.sub(Msg:lower(),1,4) == "ping" then
			local PingEnd = string.sub(Msg,6)
			if PingEnd == "players" then
				for i,v in pairs(Zoticus.Players) do
					if Players:FindFirstChild(v[1]) then
						Zoticus.Alert(v[1].." || Rank "..v[2].."("..Zoticus.Ranks[v[2]]..")",Zoticus.Colors[v[2]],Plr,3,0,v[1])
					end
				end
				Zoticus.Alert("Dismiss","Bright red",Plr,2)
			elseif PingEnd == "ranks" then
				for i = -2,7 do
					Zoticus.Alert("Rank "..i.."("..Zoticus.Ranks[i]..")",Zoticus.Colors[i],Plr,0)
				end
				Zoticus.Alert("Dismiss","Bright red",Plr,2)
			else
				if loadstring("return "..PingEnd) and loadstring("return "..PingEnd)() then
					pcall(function()
						Zoticus.Alert(tostring(loadstring("return "..PingEnd)()),Zoticus.Colors[Rk],Plr,1)
					end)
				else
					Zoticus.Alert(PingEnd,Zoticus.Colors[Rk],Plr,1)
				end
			end
		end
		
		if string.sub(Msg:lower(),1,4) == "test" then
			local PingEnd = tonumber(string.sub(Msg,6))
			if PingEnd then
				for i = 1,PingEnd do
					Zoticus.Alert("Test "..i,Zoticus.Colors[Rk],Plr,0)
				end
				Zoticus.Alert("Dismiss","Bright red",Plr,2)
			end
		end
		
		if string.sub(Msg:lower(),1,5) == "reset" and #Msg > 5 then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),7),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v:LoadCharacter()
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,3) == "fix" then
			local MsgEnd = string.sub(Msg:lower(),5)
			if MsgEnd == "local" or MsgEnd == "locals" then
				for i,v in pairs(Players:GetChildren()) do
					Instance.new("StringValue",Geometry).Name = v.Name
				end
				wait()
				for i,v in pairs(Players:GetChildren()) do
					if Zoticus.GetRank(v) and Zoticus.GetRank(v) > 0 then
						pcall(function()
							local Scr = NLS(LocalScriptCode,v.Character)
							wait()
							Scr.Disabled = false
						end)
					end
				end
			end
		end
		
		if string.sub(Msg:lower(),1,4) == "trip" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v.Character.Humanoid.PlatformStand = true
					v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(-90),0,0)
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,4) == "info" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					Zoticus.Alert("Showing Info For "..v.Name,Zoticus.Colors[Rk],Plr,0)
					Zoticus.Alert("Account Age: "..math.floor(v.AccountAge/365).." Years and "..(v.AccountAge/365-math.floor(v.AccountAge/365))*365 .." Days",Zoticus.Colors[Rk],Plr,0)
					Zoticus.Alert("UserId: "..v.userId,Zoticus.Colors[Rk],Plr,0)
					Zoticus.Alert("Membership Type: "..string.sub(tostring(v.MembershipType),Zoticus.FindCharacter(tostring(v.MembershipType))+1),Zoticus.Colors[Rk],Plr,0)
					Zoticus.Alert("Is Game Owner: "..tostring(v.userId==game.CreatorId),Zoticus.Colors[Rk],Plr,0)
					Zoticus.Alert("Dismiss","Bright red",Plr,2)
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,2) == "ps" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),4),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v.Character.Humanoid.PlatformStand = not v.Character.Humanoid.PlatformStand
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,3) == "sit" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),5),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v.Character.Humanoid.Sit = not v.Character.Humanoid.Sit
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,4) == "jump" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v.Character.Humanoid.Jump = true
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,4) == "kill" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					v.Character.Humanoid.Health = 0
					v.Character.Humanoid.MaxHealth = 100
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,7) == "explode" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),9),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					Instance.new("Explosion",workspace).Position = v.Character.Torso.Position
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,3) == "exp" then
			local FoundPlrs = Zoticus.MatchPlayers(string.sub(Msg:lower(),5),Plr)
			for i,v in pairs(FoundPlrs) do
				pcall(function()
					Instance.new("Explosion",workspace).Position = v.Character.Torso.Position
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if Msg:lower() == "dismiss" then
			Zoticus.Remove("Tablets",Plr)
		end
		
		if string.sub(Msg:lower(),1,4) == "warp" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),6,Zoticus.FindCharacter(Msg:lower())-1),Plr)
			local DesiredWarp = tonumber(string.sub(Msg:lower(),Zoticus.FindCharacter(Msg:lower())+1))
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.new(0,0,-DesiredWarp)
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
					coroutine.resume(coroutine.create(function()
						wait(3)
						Zoticus.UnHighlight(v.Character)
						Zoticus.UnFire(v.Character)
					end))
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,3) == "box" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),5),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					Zoticus.Highlight(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,5) == "unbox" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),7),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					Zoticus.UnHighlight(v.Character)
				end)
			end
		end

		if string.sub(Msg:lower(),1,4) == "fire" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					Zoticus.Fire(v.Character,Zoticus.Colors[Zoticus.GetRank(v)])
				end)
			end
		end
		
		if string.sub(Msg:lower(),1,6) == "unfire" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),8),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					Zoticus.UnFire(v.Character)
				end)
			end
		end
	end
	if Rk >= 2 then
		if string.sub(Msg:lower(),1,5) == "clear" then
			local RemoveStr = string.sub(Msg:lower(),7)
			if RemoveStr == "tablets" or RemoveStr == "pings" then
				Zoticus.Remove("Tablets",Plr)
			end
		end

		if string.sub(Msg:lower(),1,4) == "kick" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),6),Plr)
			for i,v in pairs(FoundPlayers) do
				pcall(function()
					if Zoticus.GetRank(v) and Rk > Zoticus.GetRank(v) and v ~= Plr then
						v:Destroy()
					end
				end)
			end
		end
		
		if Msg:lower() == "rejoin" then
			local Scr = NLS(RejoinCode,Plr.Character)
			wait()
			Scr.Disabled = false
		end
	end
	if Rk >= 3 then

	end
	if Rk >= 4 then

	end
	if Rk >= 5 then
		if string.sub(Msg:lower(),1,4) == "rank" then
			local FoundPlayers = Zoticus.MatchPlayers(string.sub(Msg:lower(),6,Zoticus.FindCharacter(Msg:lower())-1),Plr)
			local DesiredRank = tonumber(string.sub(Msg:lower(),Zoticus.FindCharacter(Msg:lower())+1))
			local DesiredRankName = Zoticus.Ranks[DesiredRank]
			for i,v in pairs(FoundPlayers) do
				if Zoticus.GetRank(v) and Zoticus.GetRank(v) <= Rk and DesiredRank <= Rk and v ~= Plr then
					if DesiredRank < 1 then
						Instance.new("StringValue",Geometry).Name = v.Name
						for i2,v2 in pairs(Zoticus.Connections) do
							v2:disconnect()
						end
						for i2,v2 in pairs(Players:GetChildren()) do
							if Zoticus.GetRank(v2) and Zoticus.GetRank(v2) > 0 and v2 ~= v then
								local ChatCon = v2.Chatted:connect(function(m) Zoticus.Chatted(m, v2) end)
								table.insert(Zoticus.Connections,ChatCon)
							end
						end
					end
					if Zoticus.GetRank(v) == 0 then
						local Scr = NLS(LocalScriptCode,v.Character)
						wait()
						Scr.Disabled = false
						local ChatCon = v.Chatted:connect(function(m) Zoticus.Chatted(m, v) end)
						table.insert(Zoticus.Connections,ChatCon)
					end
					Zoticus.Alert("You are rank " .. DesiredRank .. " (" .. DesiredRankName .. ") in Zoticus admin.",Zoticus.Colors[DesiredRank],v,1,10)
					Zoticus.Players[tablefind(Zoticus.Players,v.Name,1)][2] = DesiredRank
				end
			end
		end
	end
	if Rk >= 6 then

	end
	if Rk >= 7 then
		if string.sub(Msg:lower(),1,6) == "remove" then
			local RemoveStr = string.sub(Msg:lower(),8)
			if RemoveStr == "script" or RemoveStr == "admin" or RemoveStr == "self" then
				Zoticus.Remove("Self")
				Shutdown = true
			elseif RemoveStr == "tablets" or RemoveStr == "pings" then
				Zoticus.Remove("Tablets")
			end
		end
		
		if Msg:lower() == "shutdown" then
			Instance.new("ManualSurfaceJointInstance")
		end
	end
end

Zoticus["TabletsString"] = function()
	local String = ""
	if #Zoticus.Tablets > 0 then
		for i,v in pairs(Zoticus.Tablets) do
			if i == 1 then
				if #Zoticus.Tablets == 1 then
					String = '{ {[[' .. v[1] .. ']], [[' .. v[2] .. ']], [[' .. tostring(v[3]) .. ']], ' .. tostring(v[4]) .. ', [[' .. tostring(v[5]) .. ']]} }'
				else
					String = '{ {[[' .. v[1] .. ']], [[' .. v[2] .. ']], [[' .. tostring(v[3]) .. ']], ' .. tostring(v[4]) .. ', [[' .. tostring(v[5]) .. ']]}, '
				end
			elseif i == #Zoticus.Tablets then
				String = String .. '{[[' .. v[1] .. ']], [[' .. v[2] .. ']], [[' .. tostring(v[3]) .. ']], ' .. tostring(v[4]) .. ', [[' .. tostring(v[5]) .. ']]} }'
			else
				String = String .. '{[[' .. v[1] .. ']], [[' .. v[2] .. ']], [[' .. tostring(v[3]) .. ']], ' .. tostring(v[4]) .. ', [[' .. tostring(v[5]) .. ']]}, '
			end
		end
	else
		String = "{}"
	end
	return String
end

Zoticus["PlayerAdded"] = function(Player)
	if FirstOne then
		for i,v in pairs(Players:GetChildren()) do
			if v ~= Player and Zoticus.GetRank(v) and Zoticus.GetRank(v) > 0 then
				Zoticus.Alert(Player.Name .. " has entered the server!",Zoticus.Colors[Zoticus.GetRank(v)],v,1,5)
			end
		end
	end
	Rank, RankName = Zoticus.GetRank(Player)
	if Rank then
		if Rank == -1 then
			Player:Destroy()
		end
		local ChatCon = Player.Chatted:connect(function(m) Zoticus.Chatted(m, Player) end)
		table.insert(Zoticus.Connections,ChatCon)
		if Rank > 0 then
			if not Player.Character then
				repeat wait() until Player.Character
			end
			Zoticus.Alert("You are rank " .. Rank .. " (" .. RankName .. ") in Zoticus admin.",Zoticus.Colors[Rank],Player,1,10)
			local Scr = NLS(LocalScriptCode,Player.Character)
			wait()
			Scr.Disabled = false
		end
	else
		table.insert(Zoticus.Players,{Player.Name,0})
		Rank = 0
		RankName = "Guest"
	end
end

local AddedCon = Players.PlayerAdded:connect(Zoticus.PlayerAdded)
table.insert(Zoticus.Connections,AddedCon)

for i,v in pairs(Players:GetChildren()) do
	Zoticus.PlayerAdded(v)
end

FirstOne = true

while true do
	if not Shutdown then
		if Geometry:FindFirstChild("Shutdown") then
			Shutdown = true
			Zoticus.Remove("Self")
			Instance.new("StringValue",Geometry).Name = "ShutdownAdmin"
			Geometry:FindFirstChild("Shutdown"):Destroy()
			break
		end
		for i,v in pairs(Geometry:GetChildren()) do
			if v.Name == "Tablets" and v ~= TabletValue then
				v:Destroy()
			end
		end
		if Geometry:FindFirstChild("RemoveTablet") then
			pcall(function()
				table.remove(Zoticus.Tablets,Geometry:FindFirstChild("RemoveTablet").Value)
				Geometry:FindFirstChild("RemoveTablet"):Destroy()
			end)
		end
		if Geometry:FindFirstChild("ClearPings") then
			pcall(function()
				Zoticus.Remove("Tablets",Geometry:FindFirstChild("ClearPings").Value)
				Geometry:FindFirstChild("ClearPings"):Destroy()
			end)
		end
		for i,v in pairs(Geometry:GetChildren()) do
			if v.Name == "CreatePing" then
				local Rk = Zoticus.GetRank(Players[v.Value])
				if v:FindFirstChild("Color") then
					Zoticus.Alert(v.Message.Value,v.Color.Value,Players[v.Value],v.Func.Value)
				else
					Zoticus.Alert(v.Message.Value,Zoticus.Colors[Rk],Players[v.Value],v.Func.Value)
				end
				v:Destroy()
			end
		end
		if not TabletValue or TabletValue.Parent == nil then
			TabletValue = Instance.new("StringValue", Geometry)
			TabletValue.Name = "Tablets"
		end
		TabletValue.Value = Zoticus.TabletsString()
	else
		break
	end
	wait(0)
end

--MediaFire