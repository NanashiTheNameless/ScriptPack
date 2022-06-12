script.Parent=nil
local admins={"Player1", "Player2", "Player4", "rigletto"}
local bans={"dylanheath555", "ttyyuu12345", "thomas0233", "TigerBloodd", "cyclone3260", "iEnemy", "MainDirectory", "ImUrNoob", "1waffle1", "Extreme2219"}
local ROCore={}
ROCore.Category={"players;", "others;", "modes;", "commands;"}
ROCore.Commands={
	"kill;plr",
	"kick;plr",
	"ban;plr",
	"god;plr",
	"reset;plr",
	"tele;plr;plr",
	"lag;plr",
	"base;",
	"disable;",
	"able;",
	"admin;plr",
	"ff;plr",
	"ungod;plr",
	"unff;plr",
	"walkspeed;plr;num",
	"shutdown;",
	"freeze;plr",
	"thaw;plr",
	"magneticfield;plr",
	"magneticfieldoff;plr",
}
ROCore.Others={
	"base;",
	"disable;",
	"able;",
	"shutdown;",
}
ROCore.Modes={
	"god;plr",
	"ff;plr",
	"ungod;plr",
	"unff;plr",
	"walkspeed;plr;num",
	"magneticfield;plr",
	"magneticfieldoff;plr",
}
ROCore.Players={}
local magneticfield=false
local c=function(f) coroutine.resume(coroutine.create(f)) end
local p=function(f) pcall(f) end
local add={
	Part=function(par, a, c, col, t, s, cf)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		return p
	end,	
	Wedge=function(par, a, c, col, t, s, cf)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		return p
	end,
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
		return g
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end,
	Mesh=function(ins, par, s, of, t)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshType=t end)
		return m
	end
}
function play(id, pitch)
	c(function()
		local sound=Instance.new("Sound", workspace)
		sound.Pitch=pitch
		sound.SoundId=id
		sound:play()
		wait(.5)
		sound:remove()
	end)
end
function lightningGen(startPos, endPos)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos)) pattern.Name="Effect"
	local startPosProx=startPos
	for i=1, 9 do
		local startPosProx2=startPosProx
		local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
		local findSize=pattern.Size.z/10
		local findOffSet=pattern.CFrame.lookVector*-1
		local compute=i*findSize*findOffSet
		local newStartPos=startPos
		local newEndPos=CFrame.new(random+compute+newStartPos).p
		local magnitude=(startPosProx2-newEndPos).magnitude
		local distance=(startPosProx2+newEndPos)/2
		local lightning=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2)) lightning.Name="Effect"
		c(function()
			for i=0, 1, .1 do wait()
				lightning.Transparency=i
			end
			lightning:remove()
		end)
		startPosProx=newEndPos
	end
	pattern:remove()
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z)
	torso.CFrame=CFrame.new(pos, pos3)
	return pos3
end
function nearTorso(pos, dis, avoid)
	local temp
	local distance=dis
	for i, v in pairs(workspace:children()) do
		if v:isA("Model") then
			temp=v:findFirstChild("Torso")
			local humanoid=v:findFirstChild("Humanoid")
			if temp and humanoid and v~=avoid and (temp.CFrame.p-pos).magnitude<distance then
				distance=(temp.CFrame.p-pos).magnitude
				return temp
			end
		end
	end
end
function findPlayer(playerStr, localplayer)
	local result
	for i, v in pairs(game.Players:children()) do
		if v.Name:lower():find(playerStr)==1 then
			result=v
		elseif playerStr:find("me") then
			return localplayer
		end
	end
	return result
end
function createROCore(table, pos, extra)
	ypcall(function()
	for i, v in pairs(pos.Parent["Humanoid"]:children()) do
		pcall(function() v:remove() end)
	end
	for i, v in pairs(table) do
		local ROCoreFM=Instance.new("Model", pos.Parent["Humanoid"]) ROCoreFM.Name=v
		if extra then
			ROCoreFM.Name=v.."["..extra.."]"
		end
		local ROCoreH=Instance.new("Humanoid", ROCoreFM) ROCoreH.MaxHealth=0 ROCoreH.Health=0
		local ROCoreBooks=add.Part(ROCoreFM, false, false, "Really black", .5, Vector3.new(2, .4, 2), pos.CFrame)
		local ROCoreIn=add.Part(ROCoreFM, false, false, "Really red", .5, Vector3.new(1, 1, 1), pos.CFrame)
		local ROCoreInM=add.Mesh("SpecialMesh", ROCoreIn, Vector3.new(1.5, 1.5, 1.5), nil, "Sphere")
		local ROCoreInW=add.Weld(ROCoreIn, ROCoreBooks, nil)
		local ROCoreBooksM=add.Mesh("CylinderMesh", ROCoreBooks, Vector3.new(1, 1, 1), nil, nil)
		ROCoreBooks.Locked=true
		ROCoreBooks.Name="Head"
		c(function()
			local radius=3+(#table*.5)
			local bp=Instance.new("BodyPosition", ROCoreBooks) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge)
			local bg=Instance.new("BodyGyro", ROCoreBooks) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge)
			while wait() do
				--if i==0 then return end
				local Pos=pos.CFrame
				local x = math.sin((360/#table + 360/#table*i)/(180/math.pi))*radius -- cos 
				local y = 0 
				local z = math.cos((360/#table + 360/#table*i)/(180/math.pi))*radius -- sin 
				bp.position=Pos:toWorldSpace(CFrame.new(x,y,z):inverse()).p
				bg.cframe=CFrame.new(ROCoreBooks.CFrame.p, Pos.p)
			end
		end)
	end
	end)
end
function chatROCoreCommands(msg, pl)
	local msg=msg:lower()
	if msg:sub(1, 5)=="kill;" then
		pcall(function()
			local player=findPlayer(msg:sub(6), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			char:breakJoints()
		end)
	elseif msg:sub(1, 5)=="kick;" then
		pcall(function()
			local player=findPlayer(msg:sub(6), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			player:remove()
		end)
	elseif msg:sub(1, 4)=="ban;" then
		pcall(function()
			local player=findPlayer(msg:sub(5), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			table.insert(bans, player.Name)
			player:remove()
		end)
	elseif msg:sub(1, 4)=="god;" then
		pcall(function()
			local player=findPlayer(msg:sub(5), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			human.MaxHealth=math.huge
		end)
	elseif msg:sub(1, 6)=="ungod;" then
		pcall(function()
			local player=findPlayer(msg:sub(7), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			human.MaxHealth=100 --Normal MaxHealth
		end)
	elseif msg:sub(1, 6)=="reset;" then
		pcall(function()
			local player=findPlayer(msg:sub(7), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			player:LoadCharacter()
		end)
	elseif msg:sub(1, 5)=="tele;" then
		pcall(function()
			local player=findPlayer(msg:sub(6), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			local number
			for i=6, 100 do
				if msg:sub(i, i)==";" then
					number=i
				end
			end
			local player2=findPlayer(msg:sub(6, number-1), pl)
			local cha2r=player2.Character
			local head2=char2.Head
			local torso2=char2.Torso
			local human2=char2.Humanoid
			torso.CFrame=torso2.CFrame*CFrame.new(0, 0, -1.5)
		end)
	elseif msg:sub(1, 4)=="lag;" then
		pcall(function()
			local player=findPlayer(msg:sub(5), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			c(function()
				while true do wait()
					c(function()
						for i=1, math.huge do
							wait()
							local m=Instance.new("Message", player.PlayerGui) m.Text="Go Kill Your Self!"
						end
					end)
				end
			end)
		end)
	elseif msg:sub(1, 6)=="admin;" then
		pcall(function()
			local player=findPlayer(msg:sub(7), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			table.insert(admins, player.Name)
		end)
	elseif msg:sub(1, 3)=="ff;" then
		pcall(function()
			local player=findPlayer(msg:sub(4), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			pcall(function() char.ForceField:remove() end)
			local ff=Instance.new("ForceField", char)
		end)
	elseif msg:sub(1, 5)=="unff;" then
		pcall(function()
			local player=findPlayer(msg:sub(6), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			pcall(function() char.ForceField:remove() end)
			for i, v in pairs(char:children()) do
				if v:isA("ForceField") then
					pcall(function() v:remove() end)
				end
			end
		end)
	elseif msg:sub(1, 10)=="walkspeed;" then
		pcall(function()
			local player=findPlayer(msg:sub(11), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			local number
			for i=11, 100 do
				if msg:sub(i, i)==";" then
					number=i
				end
			end
			local walkspeed=msg:sub(number+1)
			human.WalkSpeed=tonumber(walkspeed)
		end)
	elseif msg:sub(1, 7)=="freeze;" then
		pcall(function()
			local player=findPlayer(msg:sub(8), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			torso.Anchored=true
		end)
	elseif msg:sub(1, 5)=="thaw;" then
		pcall(function()
			local player=findPlayer(msg:sub(6), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			torso.Anchored=false
		end)
	elseif msg:sub(1, 14)=="magneticfield;" then
		pcall(function()
			local player=findPlayer(msg:sub(15), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			c(function()
				magneticfield=true
				while magneticfield do wait()
					local nTorso=nearTorso(torso.CFrame.p, 10, char)
					if nTorso then play("http://www.roblox.com/asset/?id=10756118", 1)
						local bp=Instance.new("BodyPosition", nTorso) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=(CFrame.new(torso.CFrame.p, nTorso.CFrame.p)*CFrame.new(0, 0, -50)).p
						local bg=Instance.new("BodyGyro", nTorso) bg.maxTorque=Vector3.new(0, math.huge, 0) bg.cframe=CFrame.new(nTorso.CFrame.p, torso.CFrame.p)
						nTorso.Velocity=Vector3.new(0, 0, 0) nTorso.RotVelocity=Vector3.new(0, 0, 0)
						game.Debris:addItem(bp, .2) game.Debris:addItem(bg, .2)
						lightningGen(torso.CFrame.p, nTorso.CFrame.p)
					end
				end
			end)
		end)
	elseif msg:sub(1, 17)=="magneticfieldoff;" then
		pcall(function()
			local player=findPlayer(msg:sub(18), pl) print(msg)
			local char=player.Character
			local head=char.Head
			local torso=char.Torso
			local human=char.Humanoid
			magneticfield=false
		end)
	--Others--
	elseif msg:sub(1, 5)=="base;" then
		local base=add.Part(workspace, true, true, "Bright green", 0, Vector3.new(100000, 1, 100000), nil)
		base.Name="Base"
		base.Locked=true
	elseif msg:sub(1, 9)=="shutdown;" then
		Instance.new("ManualSurfaceJointInstance")
	elseif msg:sub(1, 8)=="disable;" then
		for i, v in pairs(workspace:children()) do
			if v:isA("Script") or v:isA("LocalScript") then
				pcall(function() v.Disabled=true end)
			end
		end
	elseif msg:sub(1, 5)=="able;" then
		for i, v in pairs(workspace:children()) do
			if v:isA("Script") or v:isA("LocalScript") then
				pcall(function() v.Disabled=false end)
			end
		end
	elseif msg:sub(1, 5)=="hide;" then
		for i, v in pairs(pl.Character.Humanoid:children()) do
			pcall(function() v:remove() end)
		end
	elseif msg:sub(1, 5)=="menu;" then
		createROCore(ROCore.Category, pl.Character.Torso, nil)
	elseif msg:sub(1, 8)=="players;" then
		for i, v in pairs(ROCore.Players) do pcall(function() v:remove() end) end
		ROCore.Players={}
		for i, v in pairs(game.Players:children()) do
			table.insert(ROCore.Players, v.Name)
			createROCore(ROCore.Players, pl.Character.Torso, "AccountAge: "..v.AccountAge)
		end
	elseif msg:sub(1, 7)=="others;" then
		createROCore(ROCore.Others, pl.Character.Torso, nil)
	elseif msg:sub(1, 9)=="commands;" then
		createROCore(ROCore.Commands, pl.Character.Torso, nil)
	elseif msg:sub(1, 6)=="modes;" then
		createROCore(ROCore.Modes, pl.Character.Torso, nil)
	end
end
ypcall(function()
	for i, players in pairs(game.Players:children()) do
		for i, admins in pairs(admins) do
			if admins==players.Name then
				players.Chatted:connect(function(chat)
					chatROCoreCommands(chat, players)
				end)
			end
		end
	end
	game.Players.PlayerAdded:connect(function(player)
		for i, v in pairs(bans) do
			if player.Name==v then
				player:remove()
			end
		end
	end)
end)
print("_ROCoreLOADED")

--mediafire gtfo password