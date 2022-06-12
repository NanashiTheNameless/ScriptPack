--/----------------------------------\--
--|-> Loading functions............<-|-- 
--\----------------------------------/-- 

	-- Tables --

iOrb= {} --> Orb Data
iBan= {} --> Ban table
iCmd= {} --> Commands using players, booleans and numbers or nothing
iStr= {} --> Commands using strings, booleans or nothing
iVal= {} --> Commands using three value like Color3 or Vector3 or nothing
iLkl= {} --> Loopkill table
iGod= {} --> Godmode with event function table
iAll= {} --> Group all the commands to print them
iHlp= {} --> Group all the commands to print info
iTls= {} --> Group all the gears and building tools'name to print them
iGrb= {} --> Players grabbed by orb

	-- Settings --

iOrb.Player=game:GetService("Players").LocalPlayer
iOrb.CharacterClone=nil
iOrb.PlayerName=iOrb.Player.Name
iOrb.DefaultParent=game.Workspace
iOrb.TempData=Instance.new("Model")
iOrb.TempBackpack=Instance.new("Model",iOrb.TempData)
iOrb.OrbParent=nil
iOrb.Torso=nil
iOrb.Version="2"
iOrb.OrbName=iOrb.Player.Name.." Soul"
iOrb.Name=iOrb.OrbName
iOrb.OrbedName=iOrb.Player.Name
iOrb.StopCheck=false
iOrb.runmsg=false
iOrb.Clearing=false
iOrb.Part=false
iOrb.Model=nil
iOrb.Orb=nil
iOrb.OrbTorso=nil
iOrb.Humanoid=nil
iOrb.FireColorChange=true
iOrb.Fire=nil
iOrb.Char=nil
iOrb.Pos=nil
iOrb.inUse=false
iOrb.Move=true
iOrb.LoadAnimation=true
iOrb.Unremovable=true
iOrb.LocalOrb=false
iOrb.Orbed=false
iOrb.CreateOrb=true
iOrb.Trail=true
iOrb.TSize=.6
iOrb.sCmdExecution=true
iOrb.Respawning=false
iOrb.FEnabled=true
iOrb.FHeat=1
iOrb.FSize=2
iOrb.PDist=.35
iOrb.PSize=.2
iOrb.RotSpeed=8
iOrb.RotCoef=iOrb.RotSpeed
iOrb.ChatColor="Red"
iOrb.ColorChange=true
iOrb.ColorChangeSpeed=15
iOrb.ColorOne=0/215
iOrb.ColorTwo=145/235
iOrb.Size=Vector3.new(1,1,1)
iOrb.BaseX=4.25
iOrb.BaseY=0
iOrb.BaseZ=0
iOrb.LeviY=0
iOrb.LeviRise=1.5
iOrb.LeviSpeed=.06
iOrb.PPersistence=.4 
iOrb.Turn=true
iOrb.Particles=true

	-- Building Tools --

iBuild= {

	stampertool=73089166,
	clone=73089204,
	delete=73089190,
	rotate=58880579,
	wiring=60791062,
	stamperconfig=73089239,
	paint=18474459,
	groupdragger=36334760,
	resize=58901534,
	standardconfig=16975388,
	material=58901405,
	surface=58901575

}

	-- Gears Tools --

iGears= {

	coil=16688968,
	rctruck=52180871,
	bow=55917429,
	epicsauce=31314931,
	dancegrenade=65545955,
	blackholebomb=28277486,
	skateboard=27902406,
	freezeray=42845853,
	atmoblaster=50937815,
	platformproducer=34898883,
	wallwalker=35683911,
	sentry=68603151,
	zombiestaff=26421972,
	gravitygun=34901961,
	banhammer=10468797,
	unseeneye=71422361,
	ancalagon=62350883,
	vinestaff=30847733,
	leviatingstaff=48596324,
	polaritystaff=61459706,
	zeusstaff=66416616,
	gravityhammer=33866846,
	magicninja=30847779,
	dualkamas=60888284,
	bbgun=42845609,
	rocket=32356064,
	r80launcher=69209924,
	illuminatingspear=69947379,
	deathspeakerzombie=51760061,
	cursedflamethrower=59175769,
	laservision=69499452,
	deamselixir=65082246,
	hydrianelixir=55917420,
	fermionblade=50938746,
	quantumentangler=72644644,
	egoexpander=26774629,
	kamipotion=66426498,
	missiletoe=66896565,
	azuresword=69499437,
	magiccarpet=71037028,
	blizzardwand=68354832,
	froststaff=66896601,
	lightingorb=72644629,
	confusoray=48596305,
	danceblaster=45941451,
	grapplehook=30393548,
	deathspeakerbook=59848474,
	dracovinbook=49491736,
	dracovinwand=56561607,
	princesswand=49491716,
	flashbang=16979083,
	novawand=27860496,
	darkspellbook=56561579,
	rcplane=69210407,
	icicleslicer=66823689,
	kotikozphaser=61459678,
	ghostfiresword=64220933,
	ninjabomb=64869947,
	supergdisruptor=14516975,
	blastgun=18268645,
	windstaff=18462637,
	atomicdisintegrator=13838639,
	handcannon=33867016,
	flamethrower=33879504,
	hypnocannon=35366155,
	scythe=28275809,
	rccar=31839203,
	woodlandstaff=11373617,
	emraldscatterblaster=22969230,
	scatterblaster=21420014,
	broom=36913601,
	armcannon=48847374,
	frosthammer=71422327,
	dualaxes=69947367,
	gloomystaff=33382711,
	blowdryer=11719016,
	tnt=12902404,
	schoolagefist=65469882,
	skullcracker=65469908,
	remotemine=33383241,
	moonwalkpotion=32353654,
	winsomewand=32355966,
	atomizer=35293856,
	tazerblade=50938773,
	azurestaff=32858662,
	velocityphaser=16469499,
	tornadegrenade=47871646,
	roboarm=35366215,
	hoverboard=64160547,
	vilethorn=54694334,
	darknessstaff=69210321,
	evileyewand=62827121,
	awestar=18010691,
	swordandshield=51302649,
	sparkstaff=10760425,
	undoingaxe=73799348,
	dragonslayer=73232786,
	screechpotion=73232825,
	dualcannons=73265108,
	gravitron=74385438,
	razevenge=74385386,
	glorylauncher=74385418,
	spikegrenade=73888479,
	victoryblaster=75550907,
	superheropotion=76262706

}

	-- Unremovable --

if iOrb.Unremovable then coroutine.resume(coroutine.create(function() script:Destroy() end)) end

	-- iSCmd Backup --
	
function iBackupsCmd()
	iOrb.TSize=.875 iOrb.PDist=.35 iOrb.PSize=.2 iOrb.Fire.Size=iOrb.FSize iOrb.RotSpeed=8 iOrb.BaseX=4.25 iOrb.BaseY=0 iOrb.BaseZ=0 iOrb.RotCoef=iOrb.RotSpeed
end

	-- Default Parent --

coroutine.resume(coroutine.create(function()
	if iOrb.DefaultParent~=iOrb.Player.Character then return else repeat wait()
	if iOrb.Player.Character~=nil then iOrb.DefaultParent=iOrb.Player.Character end
until false end end))

	-- Orb Child Remover --
	
coroutine.resume(coroutine.create(function() repeat wait()
	if iOrb.Orb~=nil then for _,v in pairs(iOrb.Orb:GetChildren())do if not v:IsA("Fire") then v:Destroy() end end end
until false end))

	-- iBan players --
	
function banPlayers(plr)
	if plr:IsA("Player") then
		for _,v in pairs(iBan) do
			if tostring(v) == plr.Name then
				plr:remove()
			end
		end
	end
end

	-- iLkl Players --
	
coroutine.resume(coroutine.create(function() repeat wait()
	for _,v in pairs(iLkl)do
		coroutine.resume(coroutine.create(function()
			for i,p in pairs(game.Players:GetPlayers())do
				if tostring(p):match(tostring(v)) then
					if p.Character~=nil then
						p.Character:BreakJoints()
					end
				end
			end
		end))
	end
until false end))

	-- Torso Finder --

coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Player.Character~=nil then
	if not iOrb.Player.Character:FindFirstChild("Torso") then iOrb.Torso=nil else iOrb.Torso=iOrb.Player.Character:FindFirstChild("Torso") end
end until false end))

	-- Hint Function --

function iHint(string,tm,removeHint) if iOrb.Player~=nil and string~=nil and game.Workspace.CurrentCamera~=nil then local hint=nil
	coroutine.resume(coroutine.create(function()
		if not game.Workspace.CurrentCamera:FindFirstChild(iOrb.Player.Name.."HINT") then hint=Instance.new("Hint",game.Workspace.CurrentCamera) hint.Name=iOrb.Player.Name.."HINT" hint.Text=string else hint=game.Workspace.CurrentCamera:FindFirstChild(iOrb.Player.Name.."HINT") hint.Text=string end if removeHint then wait(tm) hint:Destroy()
		for _,v in pairs(game.Workspace.CurrentCamera:GetChildren())do if v:IsA("Hint") and v.Name==iOrb.Player.Name.."HINT" then v:Destroy() end end end
end)) end end

	-- Typing effect --
	
function iTypeMsg(msg,tme) if not iOrb.inUse then if not iOrb.runmsg then iHint('',0,true) iOrb.inUse=false return end iOrb.inUse=true
	for i=1,msg:len(),1 do wait()
		iHint(msg:sub(1,i))
	end wait(tme)
	for i=1,msg:len(),1 do wait()
		iHint(msg:sub(i,msg:len()))
	end wait() iHint('',0,true) iOrb.inUse=false
end end

	-- Local Orb --

coroutine.resume(coroutine.create(function() repeat wait() if iOrb.LocalOrb~=nil or iOrb.Orbed~=nil then
	if iOrb.LocalOrb==true and iOrb.Orbed==false then iOrb.OrbParent=game.Workspace.CurrentCamera
	elseif iOrb.LocalOrb==false and iOrb.Orbed==false then iOrb.OrbParent=iOrb.DefaultParent
	elseif iOrb.Orbed==true then iOrb.OrbParent=game.Workspace iOrb.LocalOrb=false end end
until false end))

	-- iOrb Chat Function --

function iOrbChat(msg)
	if iOrb.Orbed and iOrb.Part and iOrb.Orb~=nil then game:GetService("Chat"):Chat(iOrb.Orb,msg,iOrb.ChatColor) iStr.rename(msg) end
	for cmd,func in pairs(iCmd) do
		if msg:sub(1,tostring(cmd):len()+1)==tostring(cmd)..":" then msg=msg:lower() msg=string.gsub(msg:sub(1,tostring(cmd):len()+1),":","(\'")..msg:sub(tostring(cmd):len()+2)
			if tostring(cmd) ~= "rotspeed" or tostring(cmd) ~= "x" or tostring(cmd) ~= "y" or tostring(cmd) ~= "z" then coroutine.resume(coroutine.create(iSCmd)) end
			local command=msg:gsub(",","\',\'")
			command=command:gsub(" ","\',\'")
			command=command:gsub("/","\',\'")
			command=command:gsub(":","\',\'")
			command=command:gsub("%.","\',\'")
			command=command:gsub("|","\') iCmd."..tostring(cmd).."(\'")
			command="iCmd."..command.."\')"
			coroutine.resume(coroutine.create(function()loadstring(command)()end)) return
		end
	end
	for cmd2,func2 in pairs(iStr) do
		if msg:sub(1,tostring(cmd2):len()+1)==tostring(cmd2)..":" then
			coroutine.resume(coroutine.create(iSCmd))
			coroutine.resume(coroutine.create(function()loadstring("iStr."..tostring(cmd2).."([===["..msg:sub(tostring(cmd2):len()+2).."]===])")()end)) return
		end
	end
	for cmd3,func3 in pairs(iVal) do
		if msg:sub(1,tostring(cmd3):len()+1)==tostring(cmd3)..":" then
			local command=msg:gsub(":",",")
			command=command:gsub(" ",",")
			command=command:gsub("/",",")	
			command=command:gsub("%.",",")
			coroutine.resume(coroutine.create(iSCmd))
			coroutine.resume(coroutine.create(function()loadstring("iVal."..tostring(cmd3).."("..command:sub(tostring(cmd3):len()+2)..")")()end)) return
		end
	end
end

	-- Remove Orb --

function iRemoveOrb(path) coroutine.resume(coroutine.create(function()
	for _,v in pairs(path:GetChildren())do
	if v.Name==iOrb.Name then v:remove() end end
	if iOrb.Orbed then 	for _,v in pairs(game.Workspace:GetChildren())do
	if v.Name==iOrb.Name then v:remove() end
end end end))end coroutine.resume(coroutine.create(function() wait(.1) iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) end))

	-- Orb Antiban Persistence --
	
coroutine.resume(coroutine.create(function()
	repeat wait() if not game.Players:FindFirstChild(iOrb.PlayerName) or game.Players:FindFirstChild(iOrb.PlayerName) and not game.Players:FindFirstChild(iOrb.PlayerName):IsA("Player") then iOrb.Particles=true if iOrb.Fire~=nil then iOrb.Fire.Enabled=true end iOrb.CreateOrb=false iOrb.Orbed=true iOrb.LocalOrb=false iOrb.sCmdExecution=false iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) wait(.1) iOrb.Name=iOrb.OrbedName wait() iOrb.CreateOrb=true break end until iOrb.StopCheck wait()
	if iPrimaryChat~=nil then iPrimaryChat:disconnect() end wait() if not iOrb.StopCheck then
	iSecondChat=iOrb.Player.Chatted:connect(iOrbChat) end
end))

	-- Match Players --

function iGetPlayer(str) local players={} string=str:lower()
	if string=="me" and iOrb.Orbed==false then table.insert(players,iOrb.Player)
	elseif string=="all" or string=="" or string==nil then
		for _,v in pairs(game.Players:GetPlayers())do
			table.insert(players,v)
		end
	elseif string=="others" then
		for _,v in pairs(game.Players:GetPlayers())do
			if v~=iOrb.Player then
				table.insert(players,v)
		end end
	else for _,v in pairs(game.Players:GetPlayers())do
		if string.lower(v.Name:sub(1,string:len()))==string then
			table.insert(players,v)
		end end
	end return players
end

	-- Trail Creation --

function iTrailCreation()
	if iOrb.Orb~=nil then
		if iOrb.Trail then
			coroutine.resume(coroutine.create(function()
				local cOrb=iOrb.Orb:Clone()
				cOrb.Name="cTrail"
				cOrb.Anchored=true
				cOrb.Locked=true
				cOrb.CanCollide=false
				cOrb.Shape="Block"
				cOrb.FormFactor="Custom"
				cOrb.Size=Vector3.new(iOrb.TSize,iOrb.TSize,iOrb.TSize)
				cOrb.Parent=iOrb.Orb.Parent
				for _,v in pairs(cOrb:GetChildren())do v:remove() end
				cOrb.CFrame=CFrame.new(iOrb.Orb.CFrame.p)*CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(360)),math.random(0,math.rad(360)),math.random(0,math.rad(360)))
				local cPos=cOrb.CFrame.p
				cOrb.Transparency=0.2
				for i=1,10,1 do wait()
					pcall(function()
						cOrb.Size=cOrb.Size-Vector3.new(0.075,0.075,0.075)
						cOrb.Transparency=cOrb.Transparency+0.075
						cOrb.CFrame=CFrame.new(cPos)*CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(360)),math.random(0,math.rad(360)),math.random(0,math.rad(360)))
					end)
				end
				pcall(function() cOrb:remove() end)
			end)) else for _,v in pairs(iOrb.Orb.Parent:GetChildren())do if v.Name=="cOrb" and v:IsA("BasePart") then v:remove() end end end
	end
end

	-- Particles Creation --

function iParticlesCreation(vector,dis,size)
	if iOrb.Orb~=nil and iOrb.LoadAnimation then
		if iOrb.Particles then if iOrb.Orb~=nil and iOrb.LoadAnimation then
			local cOrb=iOrb.Orb:Clone() 
			cOrb.Name="cParticle"
			cOrb.Anchored=true
			cOrb.Locked=true
			cOrb.CanCollide=false
			cOrb.Shape="Block"
			cOrb.FormFactor="Custom"
			cOrb.Reflectance=0
			if size==nil then cOrb.Size=Vector3.new(iOrb.PSize,iOrb.PSize,iOrb.PSize) else
				cOrb.Size=Vector3.new(size,size,size)
			end
			for _,v in pairs(cOrb:GetChildren())do v:remove() end
			cOrb.Parent=iOrb.Orb.Parent
			cOrb.CFrame=CFrame.new(vector)*CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(360)),math.random(0,math.rad(360)),math.random(0,math.rad(360)))*CFrame.new(Vector3.new((math.random(-iOrb.Orb.Size.X-dis,iOrb.Orb.Size.X+dis))*math.cos(math.rad(0,360)),(math.random(-iOrb.Orb.Size.X-dis,iOrb.Orb.Size.X+dis))*math.cos(math.rad(0,360)),(math.random(-iOrb.Orb.Size.X-dis,iOrb.Orb.Size.X+dis))*math.sin(math.rad(0,360))))
			local cPos=cOrb.CFrame.p
			cOrb.Transparency=.3
			local cOrb2=cOrb:Clone()
			cOrb2.Parent=iOrb.Orb.Parent
			cOrb2.Name="cParticle2"
			cOrb2.Reflectance=0
			coroutine.resume(coroutine.create(function(cOrb,cOrb2)
				for i=1,10,1 do wait() if iOrb.Orb~=nil and iOrb.Particles and iOrb.LoadAnimation then
					cOrb2.Transparency=cOrb2.Transparency+0.1
					cOrb2.Size=cOrb2.Size+Vector3.new(.04,.04,.04)
					cOrb2.CFrame=cOrb.CFrame
				else cOrb:remove() cOrb2:remove() end end
			end),cOrb,cOrb2)
			wait(iOrb.PPersistence)
			for i=1,10,1 do wait() if iOrb.Orb~=nil and iOrb.Particles and iOrb.LoadAnimation then
				cOrb.Transparency=cOrb.Transparency+0.1
			else cOrb:remove() cOrb2:remove() end end
			cOrb:remove() cOrb2:remove()
		end end
	end
end

	-- Orb Execution Animation --

function iSCmd()
	if iOrb.Orb==nil or iOrb.Part==false or iOrb.sCmdExecution==false or iOrb.Orbed then return end
	local cOrb=iOrb.Orb:Clone()
	cOrb.Name="cOrb"
	cOrb.Reflectance=0
	cOrb.Anchored=true
	cOrb.Locked=true
	cOrb.CanCollide=false
	cOrb.Parent=iOrb.Orb.Parent
	iOrb.PDist=iOrb.PDist+1.5
	iOrb.PSize=iOrb.PSize+.15
	iOrb.TSize=iOrb.TSize+.65
	if iOrb.Turn then
		if iOrb.RotSpeed~=0 then
			iOrb.RotSpeed = iOrb.RotSpeed+2.5
		end
	end
	if iOrb.Fire~=nil then
		iOrb.Fire.Size=iOrb.Fire.Size+3
	end
	for i = 1, 10, 1 do wait()
		if iOrb.Orb~=nil and iOrb.Part and cOrb~=nil and iOrb.Orbed==false and iOrb.sCmdExecution then
			cOrb.Transparency=cOrb.Transparency+0.1
			cOrb.Size=iOrb.Orb.Size+Vector3.new(i,i,i)
			cOrb.CFrame=iOrb.Orb.CFrame
			if iOrb.Turn then
				iOrb.BaseX=iOrb.BaseX+iOrb.RotCoef/20
			end
		else iBackupsCmd() end
	end
	if cOrb~=nil then cOrb:remove() else iBackupsCmd() end
	wait(.7)
	if iOrb.Orb~=nil and iOrb.Part and cOrb~=nil and iOrb.Orbed==false and iOrb.sCmdExecution then
		coroutine.resume(coroutine.create(function() wait(.275)
			for i=1, 20, 1 do wait()
				if iOrb.Turn then
					if iOrb.Orb~=nil and iOrb.Part and cOrb~=nil and iOrb.Orbed==false and iOrb.sCmdExecution then
						iOrb.BaseX=iOrb.BaseX-iOrb.RotCoef/40
						if iOrb.RotSpeed~=0 then
							iOrb.RotSpeed = iOrb.RotSpeed-0.125
						end
					else iBackupsCmd() end
				end
			end
		end))
		iOrb.PDist=iOrb.PDist-1.5
		iOrb.PSize=iOrb.PSize-.15
		iOrb.TSize=iOrb.TSize-.65
		if iOrb.Fire~=nil then
			iOrb.Fire.Size=iOrb.Fire.Size-3
		end
	else iBackupsCmd() end
end

	-- Ray Function --

function iPCmd(playerTable,color)
	if playerTable==nil then return end
		for _,player in pairs(playerTable)do coroutine.resume(coroutine.create(function()
			if player.Character~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.OrbParent then if player==iOrb.Player and iOrb.Orbed then else
				if player.Character:FindFirstChild("Torso") then if player.Character.Torso:IsA("Part") then
					if color==nil then iColor=Color3.new(iOrb.Orb.Color) else iColor=color end
					local iFocus=false
					local iTarget=player.Character.Torso.CFrame.p
					local iDist=(iOrb.Orb.CFrame.p-iTarget).magnitude if iDist > 1000 then return end
					local iRay=Instance.new("Part")
							iRay.CFrame=CFrame.new(Vector3.new(0,100000,0))
							iRay.Name="iRay"
							iRay.Anchored=true
							iRay.Locked=true
							iRay.CanCollide=false  
							iRay.Reflectance=.3
							iRay.Transparency=.2
							iRay.Shape="Block"
							iRay.FormFactor="Custom"
							iRay.BrickColor=BrickColor.new(color)
							iRay.Size=Vector3.new(.2,.2,.2)
							iRay.BrickColor=iOrb.Orb.BrickColor
							iRay.Parent=iOrb.Orb.Parent
							for i=10, 1, -2 do wait()
								iTarget=player.Character.Torso.CFrame.p
								iDist=(iOrb.Orb.CFrame.p-iTarget).magnitude
								iRay.Color=iOrb.Orb.Color
								iRay.Size=Vector3.new(.2,.2,iDist/i)
								iRay.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iTarget)*CFrame.new(Vector3.new(0,0,-(iDist/i)/2)) 
							end iFocus=true
							coroutine.resume(coroutine.create(function(iFocus,iRay,iDist,iTarget) while iFocus and wait() do
								if player.Character~=nil then if not player.Character:FindFirstChild("Torso") then break end else break end
								iTarget=player.Character.Torso.CFrame.p
								iDist=(iOrb.Orb.CFrame.p-iTarget).magnitude
								iRay.Color=iOrb.Orb.Color
								iRay.Size=Vector3.new(.2,.2,iDist)
								iRay.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iTarget)*CFrame.new(Vector3.new(0,0,-iDist/2))
							end end),iFocus,iRay,iDist,iTarget)
					local iTar=iOrb.Orb:Clone()
							iTar.Name="iTar"
							iTar.Reflectance=0
							iTar.Anchored=true
							iTar.Locked=true
							iTar.CanCollide=false
							iTar.CFrame=player.Character.Torso.CFrame
							iTar.Transparency=.3
							iTar.BrickColor=BrickColor.new(iColor)
							iTar.Parent=iOrb.Orb.Parent
							coroutine.resume(coroutine.create(function(iTar)
								for i = 1, 15, 1 do wait()
									if player.Character~=nil then if not player.Character:FindFirstChild("Torso") then break end else break end
									iTar.Transparency=iTar.Transparency+.0325
									iTar.Size=Vector3.new(i,i,i)
									iTar.CFrame=player.Character.Torso.CFrame
								end
								for i = 4, 1, -1 do wait()
									if player.Character~=nil then if not player.Character:FindFirstChild("Torso") then break end else break end
									iTar.Transparency=iTar.Transparency+.0375
									iTar.Size=Vector3.new(i*2,i*2,i*2)
									iTar.CFrame=player.Character.Torso.CFrame
								end wait()
								iTar:remove()
							end),iTar)
					local iPersist=iRay:clone()
							iPersist.Name="iPersist"
							iPersist.BrickColor=BrickColor.new(iColor)
							iPersist.Reflectance=0
							iPersist.Anchored=true
							iPersist.Locked=true
							iPersist.CanCollide=false
							iPersist.CFrame=iRay.CFrame
							iPersist.Parent=iOrb.Orb.Parent
							for i = 1, 10, 1 do wait()
								iPersist.Transparency=iPersist.Transparency+.1
								iPersist.Size=iRay.Size+Vector3.new(i/20,i/20,0)
								iPersist.CFrame=iRay.CFrame
							end
							iPersist:remove() wait(.075)
							for i = 1, 10, 1 do wait()
								iRay.Transparency=iRay.Transparency+.1
							end iFocus=false iRay:remove() wait(2)
				end
			end	end
		end
	end)) end wait(.75)
end

	-- Orb Creation and Verification --

coroutine.resume(coroutine.create(function() repeat wait(.1) 
	if iOrb.LocalOrb==true and iOrb.Orbed==false then iOrb.OrbParent=game.Workspace.CurrentCamera
	elseif iOrb.LocalOrb==false and iOrb.Orbed==false then iOrb.OrbParent=iOrb.DefaultParent
	elseif iOrb.Orbed==true then iOrb.OrbParent=game.Workspace end
	coroutine.resume(coroutine.create(function()
	if iOrb.CreateOrb then
	if iOrb.OrbParent~=nil and iOrb.CreateOrb then
		if iOrb.Player.Character~=nil and iOrb.Torso~=nil and iOrb.CreateOrb or iOrb.Orbed==true and iOrb.CreateOrb then
			if not iOrb.OrbParent:FindFirstChild(iOrb.Name) and iOrb.CreateOrb then iOrb.Part=false iOrb.Orb=nil iOrb.Model=nil
				local iModel=Instance.new("Model",iOrb.OrbParent) iModel.Name=iOrb.Name iModel.Archivable=false iOrb.Model=iModel
			end if iOrb.OrbParent:FindFirstChild(iOrb.Name):IsA("Model") and iOrb.CreateOrb and iOrb.Torso~=nil then
					local iModel=iOrb.OrbParent:FindFirstChild(iOrb.Name) iOrb.Model=iModel
					if not iModel:FindFirstChild("Torso") and iOrb.CreateOrb and iOrb.Torso~=nil then iOrb.Part=false iOrb.Fire=nil iOrb.OrbTorso=nil
						local iTorso=Instance.new("Part",iModel)
								iTorso.Name="Torso"
								iTorso.Anchored=false
								iTorso.Locked=true
								iTorso.Transparency=1
								iTorso.CanCollide=false
								iTorso.Shape="Ball"
								iTorso.Color=Color3.new(iOrb.ColorOne,iOrb.ColorOne,iOrb.ColorOne)
								iTorso.Size=iOrb.Size
								iTorso.CFrame=CFrame.new(Vector3.new(0,10000,0))
								iTorso.BottomSurface="Smooth"
								iTorso.TopSurface="Smooth"
								iOrb.OrbTorso=iTorso end
					if not iModel:FindFirstChild("Head") and iOrb.CreateOrb and iOrb.Torso~=nil then iOrb.Part=false iOrb.Orb=nil iOrb.Fire=nil
						local iHead=Instance.new("Part",iModel)
								iHead.Name="Head"
								iHead.Anchored=true
								iHead.Locked=true
								iHead.Reflectance=.2
								iHead.CanCollide=false
								iHead.Shape="Ball"
								iHead.Color=Color3.new(iOrb.ColorOne,iOrb.ColorOne,iOrb.ColorOne)
								iHead.Size=iOrb.Size
								iHead.CFrame=CFrame.new(iOrb.Torso.CFrame.p+Vector3.new(0,5,0))
								iHead.BottomSurface="Smooth"
								iHead.TopSurface="Smooth"
								iModel.PrimaryPart=iHead
								iOrb.Orb=iHead
						local iFire=Instance.new("Fire")
								iFire.Name="iFire"
								iFire.Color=Color3.new(iOrb.ColorTwo,iOrb.ColorTwo,iOrb.ColorTwo)
								iFire.SecondaryColor=Color3.new(iOrb.ColorOne,iOrb.ColorOne,iOrb.ColorOne)
								iFire.Size=iOrb.FSize
								iFire.Heat=iOrb.FHeat
								iFire.Enabled=iOrb.FEnabled
								iFire.Parent=iHead
								iOrb.Fire=iFire
					else if iModel:FindFirstChild("Head"):IsA("Part") and iOrb.CreateOrb then
							local iHead=iModel:FindFirstChild("Head") iOrb.Orb=iHead iModel.PrimaryPart=iHead
							if not iHead:FindFirstChild("iFire") then iOrb.Fire=nil
							local iFire=Instance.new("Fire")
								iFire.Name="iFire"
								iFire.Color=Color3.new(iOrb.ColorTwo,iOrb.ColorTwo,iOrb.ColorTwo)
								iFire.SecondaryColor=Color3.new(iOrb.ColorOne,iOrb.ColorOne,iOrb.ColorOne)
								iFire.Size=iOrb.FSize
								iFire.Heat=iOrb.FHeat
								iFire.Enabled=iOrb.FEnabled
								iFire.Parent=iHead
								iOrb.Fire=iFire
					end end end if not iModel:FindFirstChild("Humanoid") and iOrb.CreateOrb then iOrb.Part=false iOrb.Humanoid=nil
						local iHumanoid=Instance.new("Humanoid",iModel)
								iHumanoid.MaxHealth=0
								iHumanoid.Health=0
								iOrb.Humanoid=iHumanoid
					end iOrb.Part=true
	end end else iOrb.Part=false iOrb.Orb=nil end end end))
until false end))

	-- Grabber --
	
coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Orb~=nil and iOrb.Part then
	for _,v in pairs(iGrb) do coroutine.resume(coroutine.create(function()
		if v~=game.Players.LocalPlayer then
			if v.Character~=nil then
				if v.Character:FindFirstChild("Torso") then
					v.Character.Torso.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iOrb.Orb.CFrame.lookVector*1000)
					v.Character.Torso.Anchored=true
				end
				if v.Character:FindFirstChild("Humanoid") then
					v.Character.Humanoid.WalkSpeed=0
					v.Character.Humanoid.PlatformStand=true
				end
				function getParts(path)
					for _,pl in pairs(path:GetChildren())do
						if pl:IsA("BasePart") or v:IsA("Decal") then
							pl.Transparency=.65
						end getParts(pl)
					end
				end getParts(v.Character)
			end
		end
	end)) end
end until false end))

	-- Hint Commands Function --
	
function iHintCmd(string)
	for index,v in pairs(iCmd) do if string~=nil and string~="" then if tostring(index):lower():find(string:lower()) then
		table.insert(iAll,tostring(index))
	end elseif string==nil or string=="" then table.insert(iAll,tostring(index)) end end
	for index,v in pairs(iStr) do if string~=nil and string~="" then if tostring(index):lower():find(string) then
		table.insert(iAll,tostring(index))
	end elseif string==nil or string=="" then table.insert(iAll,tostring(index)) end end
	for index,v in pairs(iVal) do if string~=nil and string~="" then if tostring(index):lower():find(string) then
		table.insert(iAll,tostring(index))
	end elseif string==nil or string=="" then table.insert(iAll,tostring(index)) end end
	iOrb.runmsg=true iTypeMsg(#iAll.." command(s) found.",2)
	for _,v in pairs(iAll) do if not iOrb.runmsg then break end
		iTypeMsg(v..":",1)
	end iOrb.runmsg=false
	for i = #iAll, 1, -1 do
		table.remove(iAll,i)
	end
end

	-- Hint Gears Name Function --
	
function iHintTools(string)
	for index,v in pairs(iBuild) do if string~=nil and string~="" then if tostring(index):lower():find(string:lower()) then
		table.insert(iTls,tostring(index).." ( Building tool )")
	end elseif string==nil or string=="" then table.insert(iTls,tostring(index)) end end
	for index,v in pairs(iGears) do if string~=nil and string~="" then if tostring(index):lower():find(string) then
		table.insert(iTls,tostring(index).." ( Gear tool )")
	end elseif string==nil or string=="" then table.insert(iTls,tostring(index)) end end
	iOrb.runmsg=true iTypeMsg(#iTls.." tool(s) found.",2)
	for _,v in pairs(iTls) do if not iOrb.runmsg then break end
		iTypeMsg(v,1)
	end iOrb.runmsg=false
	for i = #iTls, 1, -1 do
		table.remove(iTls,i)
	end
end

	-- Orbed --
	
coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Orbed==true then iOrb.Move=false iOrb.Player.Character=nil
	if iOrb.OrbParent~=nil and game.Workspace.CurrentCamera~=nil and iOrb.Part and iOrb.Orb~=nil then iOrb.BaseX=-1.5 iOrb.BaseY=-1.5 iOrb.BaseZ=6
		iOrb.Orb.CFrame=CFrame.new(game.Workspace.CurrentCamera.CoordinateFrame.p,game.Workspace.CurrentCamera.CoordinateFrame.lookVector*10000)*CFrame.new(Vector3.new(iOrb.BaseX,iOrb.BaseY,-iOrb.BaseZ))
	end
end until false end))

	-- Trail --

coroutine.resume(coroutine.create(function() repeat wait(.035)
	if iOrb.Orb~=nil and iOrb.LoadAnimation then
		if iOrb.Trail then
			coroutine.resume(coroutine.create(iTrailCreation))
		else for _,v in pairs(iOrb.Orb.Parent:GetChildren())do if v.Name=="cTrail" and v:IsA("BasePart") then v:remove() end end end
	end
until false end))

	-- Particles --

coroutine.resume(coroutine.create(function() repeat wait(.1)
	if iOrb.Orb~=nil and iOrb.LoadAnimation then
		if iOrb.Particles then
			coroutine.resume(coroutine.create(iParticlesCreation),iOrb.Orb.CFrame.p,iOrb.PDist)
		else for _,v in pairs(iOrb.Orb.Parent:GetChildren())do if v.Name=="cParticle" and v:IsA("BasePart") then v:remove() end end end
	end
until false end))

	-- Properties Loops --
	
coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Orb~=nil and iOrb.Part then 
	iOrb.Orb.Locked=true 
	iOrb.Orb.Anchored=true 
	iOrb.Orb.CanCollide=false end 
	if iOrb.OrbTorso~=nil then 
		iOrb.OrbTorso.Anchored=false
		iOrb.OrbTorso.Locked=true 
		iOrb.OrbTorso.CanCollide=false 
	end
	if iOrb.Model~=nil then 
		iOrb.Model.Archivable=false
	end 
until false end))

	-- Color Change --

coroutine.resume(coroutine.create(function() repeat wait(.5)
	if iOrb.Orb~=nil and iOrb.Part then
		for i=iOrb.ColorOne,iOrb.ColorTwo,iOrb.ColorChangeSpeed/255 do wait()
			if iOrb.Orb~=nil and iOrb.Part then
				if iOrb.ColorChange and iOrb.Part and iOrb.Orb~=nil then
					iOrb.Orb.Color=Color3.new(i,i-15/255,i)
				end
				if iOrb.Fire~=nil then
					if iOrb.Fire.Enabled then
						if iOrb.FireColorChange then
							iOrb.Fire.Color=Color3.new(1-i,1-i,1-i)
							iOrb.Fire.SecondaryColor=Color3.new(i,i,i)
						end
					end
				end
			end
		end wait(.5)
		for i=iOrb.ColorTwo,iOrb.ColorOne,-iOrb.ColorChangeSpeed/255 do wait()
			if iOrb.Orb~=nil and iOrb.Part then
				if iOrb.ColorChange and iOrb.Part and iOrb.Orb~=nil then
					iOrb.Orb.Color=Color3.new(i,i-15/255,i)
				end
				if iOrb.Fire~=nil then
					if iOrb.Fire.Enabled then
						if iOrb.FireColorChange then
							iOrb.Fire.Color=Color3.new(1-i,1-i,1-i)
							iOrb.Fire.SecondaryColor=Color3.new(i,i,i)
						end
					end
				end
			end
		end
	end
until false end))

	-- ID Inserter --
	
function iInsertool(player,id) if player~=nil and id~=nil then game:GetService("InsertService"):ApproveAssetId(id)
	local insrt = game:GetService("InsertService"):LoadAsset(id)
	for _, v in pairs(insrt:GetChildren()) do
		if player:FindFirstChild("Backpack") then v:Clone().Parent = player:FindFirstChild("Backpack")
		else local bpk=Instance.new("Backpack",player) v:Clone().Parent = bpk end
end end end

	-- Orb Torso Motor and Transparency --
	
coroutine.resume(coroutine.create(function() repeat wait() 
	if iOrb.Orb~=nil and iOrb.OrbTorso~=nil then 
		iOrb.OrbTorso.Transparency = 1
		iOrb.OrbTorso.Reflectance = 1
		if not iOrb.OrbTorso:FindFirstChild("Neck") then
			local motor = Instance.new("Motor6D",iOrb.OrbTorso)
			motor.Name = "Neck"
			motor.Part0 = iOrb.OrbTorso
			motor.Part1 = iOrb.Orb
		end
		if iOrb.OrbTorso:FindFirstChild("Neck") then
			local motor = iOrb.OrbTorso.Neck
			motor.Part0 = iOrb.Orb
			motor.Part1 = iOrb.OrbTorso
		end
	end
until false end))

	-- Rotation and Levitation --

coroutine.resume(coroutine.create(function() local i=1 repeat wait()
	if iOrb.Turn then
		if iOrb.RotSpeed > 0 then
			if iOrb.OrbParent~=nil and iOrb.Torso~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.Move and iOrb.Orbed==false then
				if i==360 then i=1 end
				iOrb.Orb.CFrame=CFrame.new(iOrb.Torso.CFrame.p)*CFrame.new(Vector3.new(iOrb.BaseX*math.cos(math.rad(i)),iOrb.LeviY,iOrb.BaseX*math.sin(math.rad(i))))
				iOrb.Orb.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iOrb.Torso.CFrame.lookVector*10000)
				if i+iOrb.RotSpeed > 360 then i=360 else i=i+iOrb.RotSpeed end
			end
		elseif iOrb.RotSpeed < 0 then
			if iOrb.OrbParent~=nil and iOrb.Torso~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.Move and iOrb.Orbed==false then
				if i==360 then i=1 end
				iOrb.Orb.CFrame=CFrame.new(iOrb.Torso.CFrame.p)*CFrame.new(Vector3.new(iOrb.BaseX*math.cos(-math.rad(i)),iOrb.LeviY,iOrb.BaseX*math.sin(-math.rad(i))))
				iOrb.Orb.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iOrb.Torso.CFrame.lookVector*10000)
				if i-iOrb.RotSpeed > 360 then i=360 else i=i-iOrb.RotSpeed end
			end
		elseif iOrb.RotSpeed==0 then
			if iOrb.OrbParent~=nil and iOrb.Torso~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.Move and iOrb.Orbed==false then
				iOrb.Orb.CFrame=iOrb.Torso.CFrame*CFrame.new(Vector3.new(iOrb.BaseX,iOrb.LeviY,-iOrb.BaseZ))
				iOrb.Orb.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iOrb.Torso.CFrame.lookVector*10000)
			end 
		end
	else if iOrb.OrbParent~=nil and iOrb.Torso~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.Move and iOrb.Orbed==false then
		iOrb.Orb.CFrame=iOrb.Torso.CFrame*CFrame.new(Vector3.new(iOrb.BaseX,iOrb.LeviY,-iOrb.BaseZ))
		iOrb.Orb.CFrame=CFrame.new(iOrb.Orb.CFrame.p,iOrb.Torso.CFrame.lookVector*10000)
	end end
until false end))

	-- Levitation Values --

coroutine.resume(coroutine.create(function() repeat
	if iOrb.OrbParent~=nil and iOrb.Torso~=nil and iOrb.Part and iOrb.Orb~=nil and iOrb.Move and iOrb.Orbed==false then
		function leviUp(n,n2)
			for i=iOrb.BaseY,iOrb.BaseY+iOrb.LeviRise*n,iOrb.LeviSpeed*n2 do
				wait()iOrb.LeviY=i
			end
		end
		function leviDown(n,n2) 
			for i=iOrb.BaseY+iOrb.LeviRise*n,iOrb.BaseY,iOrb.LeviSpeed*n2 do
				wait()iOrb.LeviY=i
			end
		end
		leviUp(1,1)wait(.05)leviDown(1,-1)leviUp(-1,-1)wait(.05)leviDown(-1,1)
	else wait(.1) end
until false end)) 

	-- iStriker Function v1 --

function iStriker()

	local player = game:GetService("Players").LocalPlayer	

	local bin = Instance.new("HopperBin", player.Backpack)

	bin.Name = "iStriker unit"
		
	local camera = game:GetService("Workspace").CurrentCamera
	local character = player.Character

	local torso = character:FindFirstChild("Torso")
	local humanoid = character:FindFirstChild("Humanoid")
	local neck = torso:FindFirstChild("Neck")

	local rightLeg = character:FindFirstChild("Right Leg")
	local leftLeg = character:FindFirstChild("Left Leg")

	local rightHip = torso:FindFirstChild("Right Hip")
	local leftHip = torso:FindFirstChild("Left Hip")

	local neckAngle = neck.C1
	local rightHipAngle = rightHip.C1
	local leftHipAngle = leftHip.C1

	local leftWeld = Instance.new("Weld") 
	local rightWeld = Instance.new("Weld") 

	local velocity = Instance.new("BodyVelocity")
	local gyro = Instance.new("BodyGyro")
	local pos = Instance.new("BodyPosition")

	local parts = {"StrikerOne", "StrikerTwo", "JointOne", "JointTwo", "PropellerOne", "PropellerTwo"}
	local welds = {"SWelderOne", "SWelderTwo", "JWelderOne", "JWelderTwo", "PWelderOne", "PWelderTwo"}

	local strikerColor = "Really black"
	local propellerColor = "White"
	local jointColor = "Bright green"

	local mainModel = Instance.new("Model")
	local cframePart = Instance.new("Part")

	local toolSelected = false
	local runNext = false
	local strikerLoaded = false
	local connected = false
	local turn = false
	local forward = false
	local backward = false
	local onleft = false
	local onright = false
	local onup = false
	local ondown = false

	local gyroAngleX = 0
	local desiredGyroAngleX = 0
	local gyroAngleY = 0
	local desiredGyroAngleY = 0
	local gyroAngleZ = 0
	local desiredGyroAngleZ = 0
	local angleSetSpeed = 5
	local rotationIndice = 0
	local maxRotation = 70
	local motorSpeed = 0
	local desiredSpeed = 0
	local xPartPos = 0
	local desiredXPartPos = 0
	local yPartPos = 0
	local desiredYPartPos = 0

	function Strk(delay) 

		wait(delay)

		mainModel.Name = "Striker"
		mainModel.Archivable = false
		mainModel.Parent = character

		for index, name in pairs(parts) do

			getfenv()[name] = Instance.new("Part")
			getfenv()[name].Name = name
			getfenv()[name].Anchored = true
			getfenv()[name].Locked = true
			getfenv()[name].CanCollide = false
			getfenv()[name].Transparency = 1
			getfenv()[name].CFrame = CFrame.new(0, math.huge, 0)
			getfenv()[name].FormFactor = Enum.FormFactor.Custom
			getfenv()[name].BottomSurface = Enum.SurfaceType.Smooth
			getfenv()[name].TopSurface = Enum.SurfaceType.Smooth
			
			if index <= 2 then
			
				getfenv()[name].BrickColor = BrickColor.new(strikerColor)
				getfenv()[name].Size = Vector3.new(1.1, 1.5, 1.1)
				
			elseif index == 3 or index == 4 then
			
				getfenv()[name].BrickColor = BrickColor.new(jointColor)
				getfenv()[name].Size = Vector3.new(0.25, 0.25, 0.25)

			elseif index >= 5 then
			
				getfenv()[name].BrickColor = BrickColor.new(propellerColor)
				getfenv()[name].Size = Vector3.new(1.55, 0.2, 0.2)
				
			end
			
			getfenv()[name].Parent = mainModel
			
			coroutine.resume(coroutine.create(function()
			
				for i = getfenv()[name].Transparency, 0, -0.1 do 
				
					if toolSelected then wait() getfenv()[name].Transparency = i end
					
				end
			
			end))
			
		end
		
		for index, name in pairs(welds) do
		
			getfenv()[name] = Instance.new("Weld")
			getfenv()[name].Parent = mainModel
			getfenv()[name].Name = name
			
			if index == 1 then 
			
				getfenv()[name].Part0 = leftLeg 
				StrikerOne.Anchored = false
				getfenv()[name].Part1 = StrikerOne
				getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
				
			elseif index == 2 then 
			
				getfenv()[name].Part0 = rightLeg
				StrikerTwo.Anchored = false
				getfenv()[name].Part1 = StrikerTwo
				getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
				
			elseif index == 3 then 
			
				getfenv()[name].Part0 = StrikerOne
				JointOne.Anchored = false
				getfenv()[name].Part1 = JointOne
				getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
				JointOne.CanCollide = true
				
			elseif index == 4 then 
			
				getfenv()[name].Part0 = StrikerTwo 
				JointTwo.Anchored = false
				getfenv()[name].Part1 = JointTwo
				getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
				JointTwo.CanCollide = true
				
			elseif index == 5 then 
			
				getfenv()[name].Part0 = JointOne
				PropellerOne.Anchored = false
				getfenv()[name].Part1 = PropellerOne
			
			elseif index == 6 then 
			
				getfenv()[name].Part0 = JointTwo
				PropellerTwo.Anchored = false
				getfenv()[name].Part1 = PropellerTwo
				
			end
			
		end
		
		wait(0.1)
		
		strikerLoaded = true
		
	end

	function Connection(mouse)

		toolSelected = true

		coroutine.resume(coroutine.create(function() repeat wait()

			if toolSelected then
			
				if leftHip ~= nil then
				
					leftHip.DesiredAngle = 0
					leftHip.CurrentAngle = 0
					
				end
			
				if rightHip ~= nil then
				
					rightHip.DesiredAngle = 0
					rightHip.CurrentAngle = 0
					
				end
				
				runNext = true
			
			else break end

		until false return false end))
		
		repeat wait() until runNext
		
		humanoid.PlatformStand = true
		
		torso.Anchored = true wait()
		torso.Velocity = Vector3.new(0, 0, 0)
		torso.RotVelocity = Vector3.new(0, 0, 0)
		
		leftHipAngle = leftHip.C1
		rightHipAngle = rightHip.C1
		
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.Parent = torso
		pos.position = torso.CFrame.p
		
		torso.Anchored = false
		
		coroutine.resume(coroutine.create(Strk),0.2)
		
		for i = 1, 20, 1 do wait()
		
			if toolSelected then
			
				pos.position = pos.position + Vector3.new(0, 0.2, 0)
				torso.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(18), 0)
				humanoid.PlatformStand = true
		
				leftHip.C1 = leftHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), -math.rad(0.5), -math.rad(0.5))
				rightHip.C1 = rightHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), math.rad(0.5), math.rad(0.5))
				
			end
			
		end
		
		local x22, y22, z22 = leftHip.C1:toEulerAnglesXYZ()
		
		repeat wait() until strikerLoaded
		
		gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		gyro.Parent = torso
		gyro.P = 1500
		
		velocity.Parent = torso
		velocity.maxForce = Vector3.new(5500, 5500, 5500)
		velocity.P = 100
		
		if pos ~= nil then if pos.Parent == torso then pos:remove() end end
		
		coroutine.resume(coroutine.create(function()
		
			while strikerLoaded do wait(0.03405) if toolSelected and rotationIndice < maxRotation then rotationIndice = rotationIndice + 0.25 
			
				if desiredSpeed ~= 0 then if desiredSpeed > 0 then motorSpeed = desiredSpeed - (maxRotation - rotationIndice) elseif desiredSpeed < 0 then motorSpeed = desiredSpeed + (maxRotation - rotationIndice) end else motorSpeed = 0 end
				if desiredXPartPos ~= 0 then if desiredXPartPos > 0 then xPartPos = desiredXPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredXPartPos < 0 then xPartPos = desiredXPartPos + (maxRotation/2 - rotationIndice/2) end else xPartPos = 0 end
				if desiredYPartPos ~= 0 then if desiredYPartPos > 0 then yPartPos = desiredYPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredYPartPos < 0 then yPartPos = desiredYPartPos + (maxRotation/2 - rotationIndice/2) end else yPartPos = 0 end
				
				if desiredGyroAngleX ~= 0 then if desiredGyroAngleX > 0 then gyroAngleX = math.rad(desiredGyroAngleX - (maxRotation - rotationIndice)) elseif desiredGyroAngleX < 0 then gyroAngleX = math.rad(desiredGyroAngleX + (maxRotation - rotationIndice)) end else gyroAngleX = 0 end
				if desiredGyroAngleY ~= 0 then if desiredGyroAngleY > 0 then gyroAngleY = math.rad(desiredGyroAngleY - (maxRotation - rotationIndice)) elseif desiredGyroAngleY < 0 then gyroAngleY = math.rad(desiredGyroAngleY + (maxRotation - rotationIndice)) end else gyroAngleY = 0 end
				if desiredGyroAngleZ ~= 0 then if desiredGyroAngleZ > 0 then gyroAngleZ = math.rad(desiredGyroAngleZ - (maxRotation - rotationIndice)) elseif desiredGyroAngleZ < 0 then gyroAngleZ = math.rad(desiredGyroAngleZ + (maxRotation - rotationIndice)) end else gyroAngleZ = 0 end
			
				elseif toolSelected and rotationIndice == maxRotation then humanoid.PlatformStand = true motorSpeed = desiredSpeed gyroAngleX = math.rad(desiredGyroAngleX) gyroAngleY = math.rad(desiredGyroAngleY) gyroAngleZ = math.rad(desiredGyroAngleZ) xPartPos = desiredXPartPos yPartPos = desiredYPartPos end
			
				if PropellerOne ~= nil and PWelderOne ~= nil then
				
					PWelderOne.C1 = PWelderOne.C1 * CFrame.fromEulerAnglesXYZ(0, -math.rad(rotationIndice), 0)
					
				end
				
				if PropellerTwo ~= nil and PWelderTwo ~= nil then
				
					PWelderTwo.C1 = PWelderTwo.C1 * CFrame.fromEulerAnglesXYZ(0, math.rad(rotationIndice), 0)
					
				end
				
				if cframePart ~= nil then

					cframePart.Size = Vector3.new(0.2, 0.2, 0.2)
					cframePart.CFrame = CFrame.new(torso.CFrame.p, camera.CoordinateFrame.lookVector * 10000000) + Vector3.new(xPartPos, yPartPos, 0)
					
				end
				
				if velocity ~= nil then if velocity.Parent == torso then velocity.velocity = (cframePart.CFrame - cframePart.CFrame.p) * Vector3.new(xPartPos, yPartPos, -motorSpeed) end end
				if gyro ~= nil then if gyro.Parent == torso then gyro.cframe = CFrame.new(gyro.cframe.p, camera.CoordinateFrame.lookVector * 10000000) * CFrame.fromEulerAnglesXYZ(gyroAngleX, gyroAngleY, gyroAngleZ) end end
				
			end return
			
		end)) connected = true stand = true
		
		mouse.KeyDown:connect(function(key) key = key:lower()
		
			if key == "w" then ForwardDown()
			elseif key == "s" then BackwardDown()
			elseif key == "a" then LeftDown()
			elseif key == "d" then RightDown()
			elseif key == "e" then UpDown()
			elseif key == "q" then DownDown()
			
		end end)
		
		mouse.KeyUp:connect(function(key) key = key:lower()
		
			if key == "w" then ForwardUp() if backward then BackwardDown() end
			elseif key == "s" then BackwardUp() if forward then ForwardDown() end
			elseif key == "a" then LeftUp() if onright then RightDown() end
			elseif key == "d" then RightUp() if onleft then LeftDown() end
			elseif key == "e" then UpUp() if ondown then DownDown() end
			elseif key == "q" then DownUp() if onup then UpDown() end
			
		end end)

	end

	function Disconnection()

		toolSelected = false wait()
		
		for index, name in pairs(parts) do 
		
			if getfenv()[name] ~= nil then
			
				coroutine.resume(coroutine.create(function()
				
					for i = getfenv()[name].Transparency, 1, 0.1 do wait()
							
						getfenv()[name].Transparency = i
								
					end
				
				end))
				
			end 
			
		end
		
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.Parent = torso
		pos.position = torso.CFrame.p
		
		coroutine.resume(coroutine.create(Strk),0.2)
		
		for i = 1, 10, 1 do wait()
			
			pos.position = pos.position - Vector3.new(0, 0.15, 0)
			humanoid.PlatformStand = true

			leftHip.C1 = leftHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), -math.rad(-1), -math.rad(-1))
			rightHip.C1 = rightHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-1), math.rad(-1))
			
		end wait()
		
		humanoid.PlatformStand = false
		
		if pos ~= nil then if pos.Parent == torso then pos:remove() end end
		if gyro ~= nil then if gyro.Parent == torso then gyro:remove() end end
		if velocity ~= nil then if velocity.Parent == torso then velocity:remove() end end
		if mainModel ~= nil then mainModel:remove() end
		
		strikerLoaded = false
		rotationIndice = 0
		motorSpeed = 0
		desiredSpeed = 0
		
		ForwardUp()
		BackwardUp()
		LeftUp()
		RightUp()
		
		forward = false
		backward = false
		onleft = false
		onright = false
		onup = false
		ondown = false
		
		leftHip.C1 = leftHipAngle
		rightHip.C1 = rightHipAngle
		
		connected = false

	end

	function ForwardDown() forward = true

		desiredGyroAngleX = -maxRotation
		desiredSpeed = maxRotation

	end

	function BackwardDown() backward = true

		desiredGyroAngleX = maxRotation
		desiredSpeed = -maxRotation

	end

	function ForwardUp() forward = false

		desiredGyroAngleX = 0
		desiredSpeed = 0

	end

	function BackwardUp() backward = false

		desiredGyroAngleX = 0
		desiredSpeed = 0

	end

	function LeftDown() onleft = true

		desiredGyroAngleY = -maxRotation
		desiredXPartPos = -maxRotation/2

	end

	function RightDown() onright = true

		desiredGyroAngleY = maxRotation
		desiredXPartPos = maxRotation/2

	end

	function LeftUp() onleft = false

		desiredGyroAngleY = 0
		desiredXPartPos = 0

	end

	function RightUp() onright = false

		desiredGyroAngleY = 0
		desiredXPartPos = 0

	end

	function UpDown() onup = true

		desiredYPartPos = maxRotation/2

	end

	function DownDown() ondown = true

		desiredYPartPos = -maxRotation/2

	end

	function UpUp() onup = false

		desiredYPartPos = 0

	end

	function DownUp() ondown = false

		desiredYPartPos = 0

	end


	bin.Selected:connect(Connection)
	bin.Deselected:connect(Disconnection)

end

	-- iBTool Function v2 --
	
function iCreateBtools()
	plr=iOrb.Player
	if plr:FindFirstChild("PlayerGui") then plg=plr.PlayerGui else return end
	bin=Instance.new("HopperBin",plr:FindFirstChild("Backpack"))
	bin.Name="iBTools"
	bin.Selected:connect(function(mouse)
		box=Instance.new("SelectionBox")
		lso=Instance.new("SelectionPointLasso")
		lso.Visible=false
		coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Humanoid~=nil then
		lso.Humanoid=iOrb.Humanoid end until false end))
		md1=1
		md2=1
		md3=1
		clr=true
		ste=false
		lvi=false
		cle=false
		tme=.5
		function createGui()
			gui=Instance.new("ScreenGui",plg)
			gui.Name="iBGui"
			--PanelGUI--
			frm=Instance.new("Frame",gui)
			frm.Visible=false
			frm.Name="iBPanel"
			frm.Position=UDim2.new(0.0199999996,0,0.400000006,0)
			frm.Size=UDim2.new(0.150000006,0,0.400000006,0)
			frm.Style="RobloxRound"
			frm.ZIndex=8
			lab=Instance.new("TextLabel",frm)
			lab.Name="iBTitle"
			lab.BackgroundTransparency=1
			lab.Size=UDim2.new(1,0,0.150000006,0)
			lab.ZIndex=9
			lab.Font="ArialBold"
			lab.FontSize="Size18"
			lab.Text="iBuildTools Panel"
			lab.TextColor3=Color3.new(1,1,1)
			lab.TextStrokeTransparency=0
			lab.TextStrokeColor3=Color3.new(0,0,0)
			del=Instance.new("TextButton",frm)
			del.Name="iBDelete"
			del.BackgroundTransparency=1
			del.Position=UDim2.new(0,0,0.200000003,0)
			del.Size=UDim2.new(1,0,0.119999997,0)
			del.Style="RobloxButtonDefault"
			del.ZIndex=9
			del.Font="ArialBold"
			del.FontSize="Size12"
			del.Text="Delete"
			del.TextColor3=Color3.new(1,1,1)
			del.Selected=true
			ach=Instance.new("TextButton",frm)
			ach.Name="iBAnchor"
			ach.BackgroundTransparency=1
			ach.Position=UDim2.new(0,0,0.330000013,0)
			ach.Size=UDim2.new(1,0,0.119999997,0)
			ach.Style="RobloxButton"
			ach.ZIndex=9
			ach.Font="ArialBold"
			ach.FontSize="Size12"
			ach.Text="Anchor"
			ach.TextColor3=Color3.new(1,1,1)
			col=Instance.new("TextButton",frm)
			col.Name="iBCanCollide"
			col.BackgroundTransparency=1
			col.Position=UDim2.new(0,0,0.460000008,0)
			col.Size=UDim2.new(1,0,0.119999997,0)
			col.Style="RobloxButton"
			col.ZIndex=9
			col.Font="ArialBold"
			col.FontSize="Size12"
			col.Text="CanCollide"
			col.TextColor3=Color3.new(1,1,1)
			lck=Instance.new("TextButton",frm)
			lck.Name="iBLock"
			lck.BackgroundTransparency=1
			lck.Position=UDim2.new(0,0,0.579999983,0)
			lck.Size=UDim2.new(1,0,0.119999997,0)
			lck.Style="RobloxButton"
			lck.ZIndex=9
			lck.Font="ArialBold"
			lck.FontSize="Size12"
			lck.Text="Lock"
			lck.TextColor3=Color3.new(1,1,1)
			brk=Instance.new("TextButton",frm)
			brk.Name="iBBreak"
			brk.BackgroundTransparency=1
			brk.Position=UDim2.new(0,0,0.699999988,0)
			brk.Size=UDim2.new(1,0,0.119999997,0)
			brk.Style="RobloxButton"
			brk.ZIndex=9
			brk.Font="ArialBold"
			brk.FontSize="Size12"
			brk.Text="BreakJoints"
			brk.TextColor3=Color3.new(1,1,1)
			set=Instance.new("TextButton",frm)
			set.Name="iBSettings"
			set.BackgroundTransparency=1
			set.Position=UDim2.new(0,0,0.829999983,0)
			set.Size=UDim2.new(1,0,0.119999997,0)
			set.Style="RobloxButton"
			set.ZIndex=9
			set.Font="ArialBold"
			set.FontSize="Size12"
			set.Text="Settings"
			set.TextColor3=Color3.new(1,1,1)
			frm.Visible=true
			--SettingsGUI--
			frs=Instance.new("Frame",gui)
			frs.Visible=false
			frs.Name="iBSettings"
			frs.Position=UDim2.new(0.389999986,0,0.400000006,0)
			frs.Size=UDim2.new(0.25,0,0.25,0)
			frs.Style="RobloxRound"
			frs.ZIndex=8
			frw=Instance.new("Frame",frs)
			frw.Name="iBWindow"
			frw.Position=UDim2.new(0,0,0.25999999,0)
			frw.Size=UDim2.new(1,0,0.74000001,0)
			frw.Style="RobloxRound"
			frw.ZIndex=8
			cls=Instance.new("TextButton",frs)
			cls.Name="iBClose"
			cls.Position=UDim2.new(0.850000024,0,-0.00999999978,0)
			cls.Size=UDim2.new(0.150000006,0,0.219999999,0)
			cls.Style="RobloxButtonDefault"
			cls.ZIndex=10
			cls.Font="ArialBold"
			cls.FontSize="Size12"
			cls.Text="X"
			cls.TextColor3=Color3.new(1,0,0)
			wtl=Instance.new("TextLabel",frs)
			wtl.Name="iBTitle"
			wtl.BackgroundTransparency=1
			wtl.Size=UDim2.new(1,0,0.25,0)
			wtl.ZIndex=9
			wtl.Font="ArialBold"
			wtl.FontSize="Size14"
			wtl.Text="iBuildTools Settings Window"
			wtl.TextColor3=Color3.new(1,1,1)
			wtl.TextStrokeColor3=Color3.new(0,0,0)
			wtl.TextStrokeTransparency=0
			wtl.TextXAlignment="Left"
			clk=Instance.new("TextLabel",frw)
			clk.Name="iBClick"
			clk.BackgroundTransparency=1
			clk.Size=UDim2.new(1,0,0.330000013,0)
			clk.ZIndex=10
			clk.Font="ArialBold"
			clk.FontSize="Size12"
			clk.TextColor3=Color3.new(1,1,1)
			clk.Text=" - Click Mode : "
			clk.TextStrokeColor3=Color3.new(0,0,0)
			clk.TextStrokeTransparency=0
			clk.TextXAlignment="Left"
			ray=Instance.new("TextLabel",frw)
			ray.Name="iBRay"
			ray.BackgroundTransparency=1
			ray.Position=UDim2.new(0,0,0.330000013,0)
			ray.Size=UDim2.new(1,0,0.330000013,0)
			ray.ZIndex=10
			ray.Font="ArialBold"
			ray.FontSize="Size12"
			ray.TextColor3=Color3.new(1,1,1)
			ray.Text=" - Ray Mode : "
			ray.TextStrokeColor3=Color3.new(0,0,0)
			ray.TextStrokeTransparency=0
			ray.TextXAlignment="Left"
			rfc=Instance.new("TextLabel",frw)
			rfc.Name="iBRayFunction"
			rfc.BackgroundTransparency=1
			rfc.Position=UDim2.new(0,0,0.660000013,0)
			rfc.Size=UDim2.new(1,0,0.330000013,0)
			rfc.ZIndex=10
			rfc.Font="ArialBold"
			rfc.FontSize="Size12"
			rfc.TextColor3=Color3.new(1,1,1)
			rfc.Text=" - Ray Function : "
			rfc.TextStrokeColor3=Color3.new(0,0,0)
			rfc.TextStrokeTransparency=0
			rfc.TextXAlignment="Left"
			ckb=Instance.new("TextButton",frw)
			ckb.Name="iBClickButton"
			ckb.Position=UDim2.new(0.400000006,0,0,0)
			ckb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			ckb.ZIndex=10
			ckb.Selected=true
			ckb.Style="RobloxButtonDefault"
			ckb.Font="ArialBold"
			ckb.FontSize="Size12"
			ckb.Text="Enabled"
			ckb.TextColor3=Color3.new(0,1,0)
			ryb=Instance.new("TextButton",frw)
			ryb.Name="iBRayButton"
			ryb.Position=UDim2.new(0.400000006,0,0.330000013,0)
			ryb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			ryb.Style="RobloxButton"
			ryb.ZIndex=10
			ryb.Font="ArialBold"
			ryb.FontSize="Size12"
			ryb.Text="Disabled"
			ryb.TextColor3=Color3.new(1,0,0)
			rfb=Instance.new("TextButton",frw)
			rfb.Name="iBRayFButton"
			rfb.Position=UDim2.new(0.400000006,0,0.660000013,0)
			rfb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			rfb.Style="RobloxButtonDefault"
			rfb.ZIndex=10
			rfb.Font="ArialBold"
			rfb.FontSize="Size12"
			rfb.Text="Enable Propertie"
			rfb.TextColor3=Color3.new(0,1,0)
		end createGui()
		coroutine.resume(coroutine.create(function()
			while(mouse)and wait() do
				if(box)and(ray)then
					if(lvi)then
						lso.Visible=true
					else
						lso.Visible=false
					end
					if(md1==1)then
						if(clr)then
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									box.Visible=true
									box.Parent=game.Workspace.CurrentCamera
									box.Adornee=mouse.Target
									if(md2==1)then
										box.Color=BrickColor.new("Bright red")
									elseif(md2==2)then
										if(mouse.Target.Anchored)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==3)then
										if(mouse.Target.CanCollide)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==4)then
										if(mouse.Target.Locked)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==5)then
										box.Color=BrickColor.new("Bright blue")
									end
								end
							else
								box.Visible=false
								box.Parent=nil
								box.Adornee=nil
							end
						end
					elseif(md1==2)then
						lso.Point=mouse.Hit.p
						box.Visible=false
						box.Parent=nil
						box.Adornee=nil
						if(md2~=1)and(md2~=5)then
							if(md3==1)then
								lso.Color=BrickColor.new("Camo")
							elseif(md3==2)then
								lso.Color=BrickColor.new("Bright red")
							end
						elseif(md2==1)then
							if(cle)then
								lso.Color=BrickColor.new("Bright red")
							else
								lso.Color=BrickColor.new("Bright blue")
							end
						elseif(md2==5)then
							if(cle)then
								lso.Color=BrickColor.new("Bright red")
							else
								lso.Color=BrickColor.new("Bright blue")
							end
						end
					end
				end
			end
		end))
		function delDown()
			del_downFunc=mouse.Button1Down:connect(function()
				md2=1
				if(md2==1)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								mouse.Target:remove()
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									mouse.Target:remove()
									cle=true
									wait(tme)
									cle=false
								else
									cle=false
								end
							else
								cle=false
							end
						end
					end
				end
			end)
		end
		function delUp()
			del_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				cle=false
				lso.Parent=nil
			end)
		end
		function achDown()
			ach_downFunc=mouse.Button1Down:connect(function()
				md2=2
				if(md2==2)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.Anchored)then
									mouse.Target.Anchored=false
								else
									mouse.Target.Anchored=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.Anchored=true
									elseif(md3==2)then
										mouse.Target.Anchored=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function achUp()
			ach_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function colDown()
			col_downFunc=mouse.Button1Down:connect(function()
				md2=3
				if(md2==3)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.CanCollide)then
									mouse.Target.CanCollide=false
								else
									mouse.Target.CanCollide=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.CanCollide=true
									elseif(md3==2)then
										mouse.Target.CanCollide=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function colUp()
			col_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function lckDown()
			lck_downFunc=mouse.Button1Down:connect(function()
				md2=4
				if(md2==4)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.Locked)then
									mouse.Target.Locked=false
								else
									mouse.Target.Locked=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.Locked=true
									elseif(md3==2)then
										mouse.Target.Locked=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function lckUp()
			lck_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function brkDown()
			brk_downFunc=mouse.Button1Down:connect(function()
				md2=5
				if(md2==5)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								clr=false
								box.Color=BrickColor.new("Bright red")
								mouse.Target:BreakJoints()
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))and(mouse.Target~=iOrb.Orb)or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									mouse.Target:BreakJoints()
									cle=true
								else
									cle=true
								end
							else
								cle=false
							end
						end
					end
				end
			end)
		end
		function brkUp()
			brk_upFunc=mouse.Button1Up:connect(function()
				clr=true
				lvi=false
				cle=false
			end)
		end
		delDown()
		delUp()
		achDown()
		achUp()
		colDown()
		colUp()
		lckDown()
		lckUp()
		brkDown()
		brkUp()
		del.MouseButton1Click:connect(function()
			md2=1
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButtonDefault"
			del.Selected=true
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			delDown()
			delUp()
		end)
		ach.MouseButton1Click:connect(function()
			md2=2
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButtonDefault"
			ach.Selected=true
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			achDown()
			achUp()
		end)
		col.MouseButton1Click:connect(function()
			md2=3
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButtonDefault"
			col.Selected=true
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			colDown()
			colUp()
		end)
		lck.MouseButton1Click:connect(function()
			md2=4
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButtonDefault"
			lck.Selected=true
			brk.Style="RobloxButton"
			brk.Selected=false
			lckDown()
			lckUp()
		end)
		brk.MouseButton1Click:connect(function()
			md2=5
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButtonDefault"
			brk.Selected=true
			brkDown()
			brkUp()
		end)
		set.MouseButton1Click:connect(function()
			if(ste)then
				ste=false
				frs.Visible=false
				set.Style="RobloxButton"
			else
				ste=true
				frs.Visible=true
				set.Style="RobloxButtonDefault"
			end
		end)
		cls.MouseButton1Click:connect(function()
			ste=false
			frs.Visible=false
			set.Style="RobloxButton"
		end)
		ckb.MouseButton1Click:connect(function()
			md1=1
			ckb.Style="RobloxButtonDefault"
			ckb.Selected=true
			ckb.Text="Enabled"
			ckb.TextColor3=Color3.new(0,1,0)
			ryb.Style="RobloxButton"
			ryb.Selected=false
			ryb.Text="Disabled"
			ryb.TextColor3=Color3.new(1,0,0)
		end)
		ryb.MouseButton1Click:connect(function()
			md1=2
			ryb.Style="RobloxButtonDefault"
			ryb.Selected=true
			ryb.Text="Enabled"
			ryb.TextColor3=Color3.new(0,1,0)
			ckb.Style="RobloxButton"
			ckb.Selected=false
			ckb.Text="Disabled"
			ckb.TextColor3=Color3.new(1,0,0)
		end)
		rfb.MouseButton1Click:connect(function()
			if(md3==1)then
				md3=2
				rfb.Style="RobloxButton"
				rfb.Text="Disable Propertie"
				rfb.TextColor3=Color3.new(1,0,0)
			elseif(md3==2)then
				md3=1
				rfb.Style="RobloxButtonDefault"
				rfb.Text="Enable Propertie"
				rfb.TextColor3=Color3.new(0,1,0)
			end
		end)
	end)
	bin.Deselected:connect(function()
		clr=false
		if(box~=nil)then
			box:Destroy()
		end
		if(lso~=nil)then
			lso:Destroy()
		end
		if(gui~=nil)then
			gui:Destroy()
		end
	end)
end

	-- Run chatEvent --

iPrimaryChat=iOrb.Player.Chatted:connect(iOrbChat)

	-- Commands --

iCmd.turn=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" then iOrb.Turn=true elseif boolean=="false" then iOrb.Turn=false end
end

iCmd.tena=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" then iOrb.Trail=true elseif boolean=="false" then iOrb.Trail=false end
end

iCmd.fena=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" then if iOrb.Fire~=nil then iOrb.Fire.Enabled=true end elseif boolean=="false" then if iOrb.Fire~=nil then iOrb.Fire.Enabled=false end end
end

iCmd.move=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" and not iOrb.Move then iOrb.Move=true elseif boolean=="false" then iOrb.Move=false end
end

iCmd.fchange=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" then iOrb.FireColorChange=true elseif boolean=="false" then iOrb.FireColorChange=false end
end

iCmd.localorb=function(boolean) if not iOrb.Orbed then
	if boolean=="true" or boolean==nil or boolean=="" then iOrb.LocalOrb=true if not iOrb.Orbed then iOrb.OrbParent=game.Workspace.CurrentCamera end iOrb.LoadAnimation=false iOrb.CreateOrb=false wait() iRemoveOrb(iOrb.DefaultParent) wait(.1) iOrb.LoadAnimation=true wait() iOrb.CreateOrb=true elseif boolean=="false" then if not iOrb.Orbed then iOrb.OrbParent=iOrb.DefaultParent end iOrb.LocalOrb=false iOrb.LoadAnimation=false iOrb.CreateOrb=false wait() iRemoveOrb(game.Workspace.CurrentCamera) wait(.1) iOrb.LoadAnimation=true wait() iOrb.CreateOrb=true end
end end

iCmd.particles=function(boolean)
	if boolean=="true" or boolean==nil or boolean=="" then iOrb.Particles=true elseif boolean=="false" then iOrb.Particles=false end
end

iCmd.rotspeed=function(number)
	if tonumber(number,10) then iOrb.RotSpeed=tonumber(number,10) iOrb.RotCoef=tonumber(number,10) end
end

iCmd.levirise=function(number)
	if tonumber(number,10) then iOrb.LeviRise=tonumber(number,10) end
end

iCmd.levispeed=function(number)
	if tonumber(number,10) then iOrb.LeviSpeed=tonumber(number,10) end
end

iCmd.tsize=function(number)
	if tonumber(number,10) then iOrb.TSize=tonumber(number,10) end
end

iCmd.fsize=function(number)
	if tonumber(number,10) then if iOrb.Fire~=nil then iOrb.Fire.Size=tonumber(number,10) end end
end

iCmd.fheat=function(number)
	if tonumber(number,10) then if iOrb.Fire~=nil then iOrb.Fire.Heat=tonumber(number,10) end end
end

iCmd.x=function(number)
	if tonumber(number,10) then iOrb.BaseX=tonumber(number,10) end
end

iCmd.y=function(number)
	if tonumber(number,10) then iOrb.BaseY=tonumber(number,10) end
end

iCmd.z=function(number)
	if tonumber(number,10) then iOrb.BaseZ=tonumber(number,10) end
end

iCmd.kill=function(player) 
	player=iGetPlayer(player) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		if v.Character~=nil then
			v.Character:BreakJoints()
		end
	end
end

iCmd.kl=function(player) iCmd.kill(player) end

iCmd.loopkill=function(player)
	player=iGetPlayer(player) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		table.insert(iLkl,tostring(v))
	end
end

iCmd.lkl=function(player) iCmd.loopkill(player) end

iCmd.unloopkill=function(player) player=iGetPlayer(player)
	for _,v in pairs(player) do
		for i,t in pairs(iLkl) do
			if tostring(v):match(t) then table.remove(iLkl,i) end
		end
	end
end

iCmd.unlkl=function(player) iCmd.unloopkill(player) end

iCmd.kick=function(player) 
	player=iGetPlayer(player) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		local obj=Instance.new("ObjectValue",game.Players) obj.Name=v.Name v:Destroy()
	end
end

iCmd.banlist=function()
	for _,v in pairs(iBan) do
		iOrb.runmsg=true iTypeMsg(tostring(v):sub(1,i),1) iOrb.runmsg=false
	end
end

iCmd.ban=function(player)
	player=iGetPlayer(player) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		table.insert(iBan,v) local obj=Instance.new("ObjectValue",game.Players) obj.Name=v.Name v:Destroy()
	end
end

iCmd.unban=function(player) plrb=iGetPlayer(player)
	for _,v in pairs(plrb) do
		for i,t in pairs(iBan) do
			if tostring(v):match(t) then table.remove(iBan,i) end
		end
	end
	for _,v in pairs(iBan) do if player~=nil or player~="" or player~="all" then
		if string.lower(tostring(v):sub(1,player:len()))==player:lower() then
			table.remove(iBan,_) if game.Players:FindFirstChild(v) then if game.Players:FindFirstChild(v):IsA("ObjectValue") then game.Players:FindFirstChild(v):remove() end end
		end
	elseif player==nil or player=="" or player=="all" then table.remove(iBan,_) if game.Players:FindFirstChild(v):IsA("ObjectValue") then game.Players:FindFirstChild(v):remove() end end end
end

iCmd.orb=function() if not iOrb.Orbed and game.Players.LocalPlayer~=nil then 
	iOrb.Player.Character.Archivable=true
	iOrb.CharacterClone = iOrb.Player.Character:clone()
	iOrb.CreateOrb=false iOrb.Orbed=true iOrb.LocalOrb=false iOrb.sCmdExecution=false iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) wait(.05) iOrb.Name=iOrb.OrbedName wait() iOrb.CreateOrb=true
end end

iCmd.char=function() if iOrb.Orbed and game.Players:FindFirstChild(iOrb.PlayerName) then if not game.Players:FindFirstChild(iOrb.PlayerName):IsA("ObjectValue") then wait()
	local currentOrbPosition = iOrb.Orb.CFrame
	iOrb.CreateOrb=false iOrb.Orbed=false iOrb.LocalOrb=false iOrb.sCmdExecution=true iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) iRemoveOrb(game.Workspace) iOrb.Name=iOrb.OrbName iBackupsCmd() wait()
	iOrb.CharacterClone.Parent=game.Workspace
	iOrb.Player.Character = iOrb.CharacterClone
	if iOrb.CharacterClone:FindFirstChild("Animate") then
		iOrb.CharacterClone.Animate.Disabled = true
		wait()
		iOrb.CharacterClone.Animate.Disabled = false
	end
	repeat wait() until game.Players.LocalPlayer.Character~=nil and game.Players.LocalPlayer.Character:FindFirstChild("Torso") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 iOrb.CharacterClone:FindFirstChild("Torso").CFrame=CFrame.new(currentOrbPosition.p) iOrb.CharacterClone.Archivable=false iOrb.CharacterClone=nil iOrb.CreateOrb=true iOrb.Move=true
end end end

iCmd.fly=function() if not iOrb.Orbed then
	if iOrb.Player ~= nil then
		if iOrb.Player.Character ~= nil then
			iStriker()
		end
	end
end end

iCmd.ff=function(player)
	player=iGetPlayer(player) 
	iPCmd(player,"Bright blue")
	for _,v in pairs(player) do
		if v.Character~=nil then
			Instance.new("ForceField",v.Character)
		end
	end
end

iCmd.explode=function(player) 
	if iOrb.Orbed and iOrb.Orb~=nil and player=="me" then
		local boom=Instance.new("Explosion",iOrb.Orb)
		boom.Position=iOrb.Orb.CFrame.p
		boom.ExplosionType=2
	else
		player=iGetPlayer(player) 
		iPCmd(player,"Bright red")
		for _,v in pairs(player) do
			if v.Character~=nil then
				if v.Character:FindFirstChild("Torso") then
					local boom=Instance.new("Explosion",v.Character.Torso)
					boom.Position=v.Character.Torso.CFrame.p
					boom.ExplosionType=2
				end
			end
		end
	end
end

iCmd.expl=function(player) iCmd.explode(player) end

iCmd.tower=function(player,height,duration) 
	player=iGetPlayer(player) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		if v == iOrb.Player and iOrb.Orbed then else
			if v.Character~=nil then
				if v.Character:FindFirstChild("Torso") then
					coroutine.wrap(function()
						local heightValue = nil
						local part = Instance.new("Part",game.Workspace)
						part.Name = "iTower"
						part.Anchored = true
						part.Locked = true
						part.CanCollide = true
						part.FormFactor = Enum.FormFactor.Custom
						part.Material = Enum.Material.Concrete
						part.BottomSurface="Smooth"
						part.TopSurface="Smooth"
						part.BrickColor = BrickColor.new("Medium stone grey")
						part.Size = Vector3.new(10,.2,10)
						part.CFrame = v.Character.Torso.CFrame * CFrame.new(0,-2.5,0)
						if height == "" or tonumber(height) <= 0 or height == nil then heightValue = 30
						else heightValue = tonumber(height) end
						for i = part.Size.y, heightValue, .25 do wait()
							local currentPos = part.CFrame
							part.Size = Vector3.new(10,i,10)
							part.CFrame = currentPos * CFrame.new(0,.25/2,0)
						end
						coroutine.wrap(function()
							local durationValue = nil
							if duration == "" or duration == nil or tonumber(duration) > 120 or tonumber(duration) <= 0 then durationValue = 15
							else durationValue = tonumber(duration) end
							wait(durationValue)
							if part ~= nil and part.Parent == game.Workspace then
								for i = part.Size.y, .2, -.25 do wait()
									pcall(function()
										local currentPos = part.CFrame
										part.Size = Vector3.new(10,i,10)
										part.CFrame = currentPos * CFrame.new(0,-.25/2,0)
									end)
								end
								pcall(function() part:remove() end)
							end
						end)()
					end)()
				end
			end
		end
	end
end

iCmd.respawn=function(player)
	player=iGetPlayer(player) 
	iPCmd(player,"Bright blue")
	for _,v in pairs(player) do coroutine.resume(coroutine.create(function()
		if v==game.Players.LocalPlayer and iOrb.Orbed then return end
		local model=Instance.new("Model",game.Workspace)
		local humanoid=Instance.new("Humanoid",model)
		local head=Instance.new("Part",model)
		head.Anchored=true
		head.Locked=true
		head.CanCollide=true
		head.Transparency=1
		head.CFrame=CFrame.new(0,100000,0)
		head.Name="Torso"
		head.FormFactor="Custom"
		head.Size=Vector3.new(.2,.2,.2)
		model.Name=""
		humanoid.MaxHealth=math.huge
		v.Character=model wait(.1)
		if v==game.Players.LocalPlayer then iOrb.runmsg=true iTypeMsg("Respawning. Please wait...",3) iOrb.runmsg=false end end))
	end
end

iCmd.resp=function(player) iCmd.respawn(player) end

iCmd.punish=function(player)
	player=iGetPlayer(tostring(player)) 
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		if v.Character~=nil then
			v.Character.Parent=game:GetService("Debris")
		end
	end
end

iCmd.pun=function(player) iCmd.punish(player) end

iCmd.unpunish=function(player)
	player=iGetPlayer(tostring(player)) 
	iPCmd(player,"Camo")
	for _,v in pairs(player) do
		if v.Character~=nil then
			for i,p in pairs(game:GetService("Debris"):GetChildren())do
				if p:IsA("Model") and game.Players:FindFirstChild(p.Name) then
					p.Parent=game.Workspace
					p:MakeJoints()
				end
			end
		end
	end
end

iCmd.unpun=function(player) iCmd.unpunish(player) end

iCmd.unff=function(player)
	player=iGetPlayer(tostring(player)) 
	iPCmd(player,"Bright blue")
	for _,v in pairs(player) do
		if v.Character~=nil then
			for _,e in pairs(v.Character:GetChildren())do
				if e:IsA("ForceField") then
					e:remove()
				end
			end
		end
	end
end

iCmd.skydive=function(player) 
	player=iGetPlayer(player)
	iPCmd(player,"Bright blue")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Torso") then
				coroutine.resume(coroutine.create(function() for i=1,26,1 do wait() v.Character.Torso.CFrame=CFrame.new(0,1000,0) end end))
			end
		end
	end
end

iCmd.tp=function(player,player2) 
	player=iGetPlayer(player)
	player2=iGetPlayer(player2)
	coroutine.resume(coroutine.create(iPCmd),player,"Bright blue")
	iPCmd(player2,"Bright blue")
	for _,v in pairs(player) do
		for i,v2 in pairs(player2) do if v~=v2 then
			if v.Character~=nil and v2.Character~=nil then
				if v.Character:FindFirstChild("Torso") and v2.Character:FindFirstChild("Torso") then
					coroutine.resume(coroutine.create(function() for i=1,26,1 do wait() v.Character.Torso.CFrame=CFrame.new(v2.Character.Torso.CFrame.p)*CFrame.new(Vector3.new(0,6,0)) end end))
				end
			end
		end end
	end
end

iCmd.tele=function(player,player2) iCmd.tp(player,player2) end

iCmd.teleport=function(player,player2) iCmd.tp(player,player2) end

iCmd.teletoorb=function(player) 
	player=iGetPlayer(player)
	iPCmd(player,"Bright blue")
	for _,v in pairs(player) do
		if v.Character~=nil and iOrb.Orb~=nil then
			if v.Character:FindFirstChild("Torso") then
				coroutine.resume(coroutine.create(function() for i=1,26,1 do wait() v.Character.Torso.CFrame=iOrb.Orb.CFrame*CFrame.new(0,4,0) end end))
			end
		end
	end
end

iCmd.tto=function(player) iCmd.teletoorb(player) end

iCmd.grab=function(player) 
	player=iGetPlayer(player)
	iPCmd(player,"Magenta")
	for _,v in pairs(player) do
		table.insert(iGrb,v)
	end
end

iCmd.release=function(player) 
	player=iGetPlayer(player)
	for _,v in pairs(player) do
		for i,pl in pairs(iGrb) do
			if pl==v then table.remove(iGrb,i)
				if v.Character~=nil then
					if v.Character:FindFirstChild("Torso") then
						v.Character.Torso.Anchored=false
						if iOrb.Orb~=nil then
							v.Character.Torso.CFrame=iOrb.Orb.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
						elseif game.Workspace.CurrentCamera~=nil then
							v.Character.Torso.CFrame=game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
						end
					end
					if v.Character:FindFirstChild("Humanoid") then
						v.Character.Humanoid.WalkSpeed=16
						v.Character.Humanoid.PlatformStand=false
					end
					function getParts(path)
						for _,pl in pairs(path:GetChildren())do
							if pl:IsA("BasePart") or v:IsA("Decal") then
								pl.Transparency=0
							end getParts(pl)
						end
					end getParts(v.Character)
				end
			end
		end
	end
end

iCmd.drop=function(player) iCmd.release(player) end

iCmd.renew=function() if iOrb.Orb~=nil then
	iOrb.LoadAnimation=false wait() iOrb.CreateOrb=false wait() iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) if iOrb.Orbed then iRemoveOrb(game.Workspace) end wait(.1) iOrb.CreateOrb=true wait() iOrb.LoadAnimation=true
end end

iCmd.nogravity=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Bright yellow")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Torso") then
				local grav = Instance.new("BodyForce")
				grav.force=Vector3.new(0,2500,0)
				for i,b in pairs(v.Character.Torso:GetChildren())do if b:IsA("BodyForce") then b:remove() end end grav.Parent = v.Character.Torso
			end
		end
	end
end

iCmd.nograv=function(player) iCmd.nogravity(player) end

iCmd.setgrav=function(player,number)
	player=iGetPlayer(player)
	iPCmd(player,"Bright yellow")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if tonumber(number,10) and v.Character:FindFirstChild("Torso") then
				local grav = Instance.new("BodyForce")
				grav.force=Vector3.new(0,-10*tonumber(number,10),0)
				for i,b in pairs(v.Character.Torso:GetChildren())do if b:IsA("BodyForce") then b:remove() end end grav.Parent = v.Character.Torso
			end
		end
	end
end

iCmd.setgravity=function(player,number) iCmd.setgrav(player,number) end

iCmd.gravity=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Bright yellow")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Torso") then
				for i,b in pairs(v.Character.Torso:GetChildren())do if b:IsA("BodyForce") then b:remove() end end
			end
		end
	end
end

iCmd.grav=function(player) iCmd.gravity(player) end

iCmd.walkspeed=function(player,number)
	player=iGetPlayer(player)
	iPCmd(player,"Bright yellow")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if tonumber(number,10) and v.Character:FindFirstChild("Humanoid") then
				v.Character.Humanoid.WalkSpeed=tonumber(number,10)
			end
		end
	end
end

iCmd.ws=function(player,number) iCmd.walkspeed(player,number) end

iCmd.sit=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Grime")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Humanoid") then
				v.Character.Humanoid.Sit=true
			end
		end
	end
end

iCmd.jump=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Grime")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Humanoid") then
				v.Character.Humanoid.Jump=true
			end
		end
	end
end

iCmd.platformstand=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Grime")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Humanoid") then
				v.Character.Humanoid.PlatformStand=true
			end
		end
	end
end

iCmd.ps=function(player) iCmd.platformstand(player) end

iCmd.heal=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Camo")
	for _,v in pairs(player) do
		if v.Character~=nil then coroutine.resume(coroutine.create(function()
			if v.Character:FindFirstChild("Humanoid") then
				for i=1, 26, 1 do wait()
					v.Character.Humanoid.Health=v.Character.Humanoid.MaxHealth
				end
			end
		end)) end
	end
end

iCmd.undead=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Camo")
	for _,v in pairs(player) do
		if v.Character~=nil then coroutine.resume(coroutine.create(function()
			if v.Character:FindFirstChild("Humanoid") then
				for i=1, 26, 1 do wait()
					v.Character.Humanoid.MaxHealth=math.huge
					v.Character.Humanoid.Health=math.huge
				end
			end
		end)) end
	end
end

iCmd.sethealth=function(player,number) if tonumber(number,10) then
	player=iGetPlayer(player)
	iPCmd(player,"Camo")
	for _,v in pairs(player) do
		if v.Character~=nil then coroutine.resume(coroutine.create(function()
			if v.Character:FindFirstChild("Humanoid") then
				for i=1, 26, 1 do
					v.Character.Humanoid.MaxHealth=tonumber(number,10) wait()
					v.Character.Humanoid.Health=tonumber(number,10)
				end
			end
		end)) end
	end
end end

iCmd.find=function(player)
	player=iGetPlayer(player) iPCmd(player,"White")
end

iCmd.damage=function(player,number)
	player=iGetPlayer(player)
	iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if tonumber(number,10) and v.Character:FindFirstChild("Humanoid") then
				v.Character.Humanoid.Health=v.Character.Humanoid.Health-tonumber(number,10)
			end
		end
	end
end

iCmd.dmg=function(player,number) iCmd.damage(player,number) end

iStr.rename=function(string) if iOrb.Model~=nil then if string:len() > 60 then if iOrb.Orbed then 
	iOrb.Name=iOrb.PlayerName.." : "..string:sub(1,60) iOrb.Model.Name=iOrb.PlayerName.." : "..string:sub(1,60) else iOrb.Name=string:sub(1,60) iOrb.Model.Name=string:sub(1,60) end elseif string:len() <= 60 and string:len() > 0 then if iOrb.Orbed then iOrb.Name=iOrb.PlayerName.." : "..string iOrb.Model.Name=iOrb.PlayerName.." : "..string else iOrb.Name=string iOrb.Model.Name=string end elseif string==nil or string:len()==0 then if iOrb.Orbed then iOrb.Name=iOrb.PlayerName iOrb.Model.Name=iOrb.PlayerName else iOrb.Name="" iOrb.Model.Name="" end end
end end

iStr.setname=function(string)
	if iOrb.Player~=nil then
		if iOrb.Player.Character~=nil then
			local ToolsTable= {}
			local CharTool = nil
			for index, tool in pairs(iOrb.Player.Character:GetChildren()) do
				if tool:IsA("Tool") then
					tool.Parent = nil
					CharTool = tool
				end
			end
			for index, tool in pairs(iOrb.Player.Backpack:GetChildren()) do
				tool.Parent = nil
				table.insert(ToolsTable, tool)
			end
			iOrb.Player.Character.Archivable = true
			iOrb.CharacterClone = iOrb.Player.Character:Clone()
			iOrb.CharacterClone.Name = string
			iOrb.CharacterClone.Archivable = false
			iOrb.CharacterClone.Parent = game.Workspace
			iOrb.Player.Character = iOrb.CharacterClone
			if iOrb.CharacterClone:FindFirstChild("Animate") then
				iOrb.CharacterClone.Animate.Disabled = true
				wait()
				iOrb.CharacterClone.Animate.Disabled = false
			end
			iOrb.CharacterClone.Archivable = false
			iOrb.CharacterClone = nil
			wait(.1)
			if CharTool ~= nil then
				CharTool.Parent = iOrb.Player.Character
			end
			for index, tool in pairs(ToolsTabke) do
				tool.Parent = iOrb.Player.Backpack
			end
		end
	end
end

iStr.sn=function(string) iStr.setname(string) end

iCmd.freeze=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Teal")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function freeze(path) 
				for _,v in pairs(path:GetChildren())do 
					if v:IsA("BasePart") then 
						v.Anchored=true 
					end freeze(v) 
			end end freeze(v.Character)
			if v.Character:FindFirstChild("Torso") then v.Character.Torso.CFrame=v.Character.Torso.CFrame*CFrame.new(Vector3.new(0,1.5,0)) v.Character.Torso.Transparency=1 end
			if v.Character:FindFirstChild("Humanoid") then v.Character.Humanoid.WalkSpeed=0 end
		end
	end
end

iCmd.unfreeze=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Teal")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function freeze(path) 
				for _,v in pairs(path:GetChildren())do 
					if v:IsA("BasePart") then 
						v.Anchored=false
					end freeze(v) 
			end end freeze(v.Character)
			if v.Character:FindFirstChild("Torso") then v.Character.Torso.Transparency=0 end
			if v.Character:FindFirstChild("Humanoid") then v.Character.Humanoid.WalkSpeed=16 end
		end
	end
end

iCmd.thaw=function(player) iCmd.unfreeze(player) end

iCmd.lock=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Alder")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function freeze(path) 
				for _,v in pairs(path:GetChildren())do 
					if v:IsA("BasePart") then 
						v.Locked=true 
					end freeze(v) 
			end end freeze(v.Character)
		end
	end
end

iCmd.unlock=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Pastel violet")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function freeze(path) 
				for _,v in pairs(path:GetChildren())do 
					if v:IsA("BasePart") then 
						v.Locked=false
					end freeze(v) 
			end end freeze(v.Character)
		end
	end
end

iCmd.hide=function() if iOrb.Orb~=nil then
	iOrb.Fire.Enabled=false iOrb.Particles=false iOrb.Trail=false iOrb.Orb.Transparency=1
end end

iCmd.show=function() if iOrb.Orb~=nil then
	iOrb.Fire.Enabled=true iOrb.Particles=true iOrb.Trail=true iOrb.Orb.Transparency=0
end end

iCmd.invisible=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Royal purple")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v==iOrb.Player then if not iOrb.Orbed then iCmd.hide('') end end
			function visi(path)
				for _,v in pairs(path:GetChildren())do
					if v:IsA("BasePart") or v:IsA("Decal") then
						v.Transparency=1
					end
				visi(v)
				end
			end visi(v.Character)
		end
	end
end

iCmd.invisi=function(player) iCmd.invisible(player) end

iCmd.visible=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Pink")
	for _,v in pairs(player) do
		if v.Character~=nil then
			if v==iOrb.Player then if not iOrb.Orbed then iCmd.show('') end end
			function visi(path)
				for _,v in pairs(path:GetChildren())do
					if v:IsA("BasePart") or v:IsA("Decal") then
						v.Transparency=0
					end
				visi(v)
				end
			end visi(v.Character)
		end
	end
end

iCmd.visi=function(player) iCmd.visible(player) end

iCmd.fire=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Really red")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("BasePart") then
						Instance.new("Fire",x)
					end obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.unfire=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Really red")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("Fire") then
						x:remove()
					end obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.smoke=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Dark stone grey")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("BasePart") then
						Instance.new("Smoke",x)
					end obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.unsmoke=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"Dark stone grey")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("Smoke") then
						x:remove()
					end obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.sparkles=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"White")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("BasePart") then
						Instance.new("Sparkles",x)
					end obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.unsparkles=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"White")
	for _,v in pairs(player) do
		if v.Character~=nil then
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("Sparkles") then
						x:remove()
					end
				obj(x)
				end
			end obj(v.Character)
		end
	end
end

iCmd.god=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"White")
	for _,v in pairs(player) do
		if v.Character~=nil then
			local _Info = {tostring(v.Name)}
			function obj(path)
				for _,x in pairs(path:GetChildren())do
					if x:IsA("BasePart") then
						local _Event = x.Touched:connect(function(part)
							part.Anchored = true
							coroutine.wrap(function()
								for i = 0, 1, 0.1 do wait()
									part.Transparency = i
								end
								part:remove()
							end)()
						end) table.insert(_Info, _Event)
					end obj(x)
				end
			end obj(v.Character)
			table.insert(iGod, _Info)
		end
	end
end

iCmd.ungod=function(player)
	player=iGetPlayer(player)
	iPCmd(player,"White")
	for i,gt in pairs(iGod)do
		for _,v in pairs(player) do
			if i:sub(1,v.Name:len()) == v.Name then
				table.remove(iGod, i)
			end
		end
	end
end

iCmd.unit=function(player) if iOrb.Orbed==true and game.Workspace.CurrentCamera~=nil then
	if player==nil or player=="" then game.Workspace.CurrentCamera.CoordinateFrame=CFrame.new(0,1,0) else
	player=iGetPlayer(player)
	for _,v in pairs(player)do
		if v.Character~=nil then
			if v.Character:FindFirstChild("Torso") then
				game.Workspace.CurrentCamera.CoordinateFrame=v.Character.Torso.CFrame
				game.Workspace.CurrentCamera.Focus=CFrame.new((v.Character.Torso.CFrame.lookVector)*1000)
			end
		end
	end end
end end

iStr.time=function(string)
	game:GetService("Lighting").TimeOfDay=string
end

iCmd.fogend=function(number)
	if tonumber(number,10) then game:GetService("Lighting").FogEnd=tonumber(number,10) end
end

iCmd.fogstart=function(number)
	if tonumber(number,10) then game:GetService("Lighting").FogStart=tonumber(number,10) end
end

iVal.fogcolor=function(x,y,z)
	game:GetService("Lighting").FogColor=Color3.new(x/255,y/255,z/255)
end

iVal.fcolor1=function(x,y,z) iOrb.FireColorChange=false
	iOrb.Fire.Color=Color3.new(x/255,y/255,z/255)
end

iVal.fcolor2=function(x,y,z) iOrb.FireColorChange=false
	iOrb.Fire.SecondaryColor=Color3.new(x/235,y/235,z/235)
end

iVal.fcolor=function(x,y,z) iOrb.FireColorChange=false
	iOrb.Fire.Color=Color3.new(x/255,y/255,z/255)
	iOrb.Fire.SecondaryColor=Color3.new(x/245,y/245,z/245)
end

iVal.ambient=function(x,y,z)
	game:GetService("Lighting").Ambient=Color3.new(x/255,y/255,z/255)
end

iCmd.nbc=function(player) player=iGetPlayer(player)
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function() v.MembershipTypeReplicate = 0 end))
	end
end

iCmd.bc=function(player) player=iGetPlayer(player) iPCmd(player,"Cool yellow")
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function() v.MembershipTypeReplicate = 1 end))
	end
end

iCmd.tbc=function(player) player=iGetPlayer(player) iPCmd(player,"Bright orange")
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function() v.MembershipTypeReplicate = 2 end))
	end
end

iCmd.obc=function(player) player=iGetPlayer(player) iPCmd(player,"Black")
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function() v.MembershipTypeReplicate = 3 end))
	end
end

iCmd.morning=function()
	coroutine.resume(coroutine.create(function()
		game:GetService("Lighting").TimeOfDay="6:30:00"
		game:GetService("Lighting").FogStart=0
		game:GetService("Lighting").FogEnd=100000
		game:GetService("Lighting").Ambient=Color3.new(165/255,165/255,165/255)
	end))
end

iCmd.day=function()
	coroutine.resume(coroutine.create(function()
		game:GetService("Lighting").TimeOfDay="12:00:00"
		game:GetService("Lighting").FogStart=0
		game:GetService("Lighting").FogEnd=100000
		game:GetService("Lighting").Ambient=Color3.new(170/255,170/255,170/255)
	end))
end

iCmd.evening=function()
	coroutine.resume(coroutine.create(function()
		game:GetService("Lighting").TimeOfDay="17:57:00"
		game:GetService("Lighting").FogStart=0
		game:GetService("Lighting").FogEnd=100000
		game:GetService("Lighting").FogColor=Color3.new(0,0,0)
		game:GetService("Lighting").Ambient=Color3.new(100/255,100/255,100/255)
	end))
end

iCmd.night=function()
	coroutine.resume(coroutine.create(function()
		game:GetService("Lighting").TimeOfDay="00:00:00"
		game:GetService("Lighting").FogStart=0
		game:GetService("Lighting").FogEnd=300
		game:GetService("Lighting").FogColor=Color3.new(0,0,0)
		game:GetService("Lighting").Ambient=Color3.new(20/255,20/255,20/255)
	end))
end

iCmd.base=function()
	coroutine.resume(coroutine.create(function()
		local base=Instance.new("Part",game.Workspace) base.Name="Base" base.Anchored=true base.Locked=true base.Size=Vector3.new(1000,1.2,1000) base.BrickColor=BrickColor.new("Camo") base.Material="Grass" base.CFrame=CFrame.new(0,0,0) base.BottomSurface="Smooth" base.TopSurface="Smooth"
		local spawn=Instance.new("SpawnLocation",base) spawn.Anchored=true spawn.Locked=true spawn.CanCollide=false spawn.Size=Vector3.new(1.2,1.2,1.2) spawn.Transparency=1 spawn.CFrame=CFrame.new(0,0,0)
	end))
end

iCmd.clear=function()
	coroutine.resume(coroutine.create(function() iOrb.Clearing=true
		for _,v in pairs(game.Workspace:GetChildren())do
			if not game.Players:GetPlayerFromCharacter(v) and v~=game.Workspace.CurrentCamera then
				if v:IsA("BaseScript") then v.Disabled=true end pcall(function() v:Destroy() end)
			end
		end
		for _,v in pairs(game:GetService("Lighting"):GetChildren())do
			if v:IsA("Sky") then
				v:Destroy()
			end
		end
		iCmd.day() iCmd.base() iOrb.Clearing=false
	end))
end

iCmd.terrainclear=function()
	for _,v in pairs(game.Workspace:GetChildren())do
		if v:IsA("Terrain") then v:Clear() end
	end
end

iCmd.rmsg=function()
	coroutine.resume(coroutine.create(function()
		for _,v in pairs(game.Workspace:GetChildren())do
			if v:IsA("Message") or v:IsA("Hint") then
				v:Destroy()
			end
		end
		for _,v in pairs(game.Players:GetPlayers())do
			if v:FindFirstChild("PlayerGui") then
				if v:IsA("Message") or v:IsA("Hint") then
					v:Destroy()
				end
			end
		end
	end))
end

iCmd.bt=function(player,toolname) player=iGetPlayer(player) iPCmd(player,"Navy blue")
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function()
			if toolname == nil or toolname == "" and v==iOrb.Player then
				coroutine.resume(coroutine.create(iCreateBtools))
			end
			for i,t in pairs(iBuild) do
				if toolname == nil or toolname == "" then
					iInsertool(v,t)
				else
					if tostring(i) == toolname then
						iInsertool(v,t)
					end
				end
			end
end)) end end

iCmd.bts=function(player,toolname) iCmd.bt(player,toolname) end
iCmd.btool=function(player,toolname) iCmd.bt(player,toolname) end
iCmd.btools=function(player,toolname) iCmd.bt(player,toolname) end

iCmd.gr=function(player,gearname) player=iGetPlayer(player) iPCmd(player,"Navy blue") 
	for _,v in pairs(player) do
		coroutine.resume(coroutine.create(function()
			for i,t in pairs(iGears) do
				if gearname == nil or gearname == "" then
					iInsertool(v,t)
				else
					if tostring(i) == gearname then
						iInsertool(v,t)
					end
				end
			end
		end))
	end
end

iCmd.grs=function(player,gearname) iCmd.gr(player,gearname) end
iCmd.gear=function(player,gearname) iCmd.gr(player,gearname) end
iCmd.gears=function(player,gearname) iCmd.gr(player,gearname) end

iCmd.rt=function(player) player=iGetPlayer(player) iPCmd(player,"Bright red")
	for _,v in pairs(player) do
		if v:FindFirstChild("Backpack") then
			for i,tools in pairs(v.Backpack:GetChildren())do
				tools:Destroy()
			end
		end
		if v.Character ~= nil then
			for i,tool in pairs(v.Character:GetChildren())do
				if tool:IsA("Tool") then
					tool:Destroy()
				end
			end
		end
	end
end

iCmd.rts=function(player) iCmd.rt(player) end
iCmd.rtool=function(player) iCmd.rt(player) end
iCmd.rtools=function(player) iCmd.rt(player) end

iCmd.endorb=function()
	iOrb.runmsg=false iOrb.StopCheck=true iOrb.LoadAnimation=false iOrb.CreateOrb=false wait() iRemoveOrb(iOrb.DefaultParent) iRemoveOrb(game.Workspace.CurrentCamera) if iOrb.Orbed then iRemoveOrb(game.Workspace) end if iPrimaryChat~=nil then iPrimaryChat:disconnect() end if iSecondChat~=nil then iSecondChat:disconnect() end iOrb.Orb=nil iOrb.Part=false iOrb.Model=nil error("End of Orb Script")
end

iStr.help=function(string) iOrb.runmsg=true
	if string==nil or string=="" then
		iTypeMsg(" -> How to use Imike2's [qORBp] ? <-",2)
		iTypeMsg("Tip : if you want to stop printing help, say 'stop:'",2)
		iTypeMsg("Base of use -> command:argument",2)
		iTypeMsg("Type cmd: or cmds: or command: or commands: to print commands (won't work if help works)",2)
		iTypeMsg("You can search all the commands with kill in them -> cmd:kill",2)
		iTypeMsg("Type help:command to have more informations about a command and how to use it",2)
		iTypeMsg("If argument is a boolean, 'command:' or 'command:true' will enable the command",2)
		iTypeMsg("If you want to disable the command, say 'command:false'",2)
		iTypeMsg("If argument is a player, you can match name (Imi instead of Imike2), me for me, others for everyone exept you...",2)
		iTypeMsg("...and all, a space or nothing for everyone",2)
		iTypeMsg("Nothing for everyone mean for example 'kill:'. This command will kill everyone, same as 'kill: '.",2)
		iTypeMsg("Warning 1 ! If you type kill: me, you'll kill everyone because there is a space between 'kill:' and 'me'",2)
		iTypeMsg("Warning 2 ! If you type kill:n, you'll kill all the players with a name that begin by 'n'",2)
		iTypeMsg("If a command expects 2 arguments, say for example teleport: me (space between teleport: and me means eveyone)",2)
		iTypeMsg("There are several ways to execute a command with 2 or 3 arguments",2)
		iTypeMsg("A simple space -> fogcolor:255 255 255 | tele:others me",2)
		iTypeMsg("Two points : fogcolor:255:255:255 | tele:others:me",2)
		iTypeMsg("A slash : fogcolor:255/255/255 | tele:others/me",2)
		iTypeMsg("A comma : fogcolor:255,255,255 | tele:others,me",2)
		iTypeMsg("A dot : fogcolor:255.255.255 | tele:others.me",2)
		iTypeMsg("All the arguments between [ ] means that's an optional argument",2)
		iTypeMsg("If you want to execute a command for 2 or 3 players, separate names with '|'",2)
		iTypeMsg("Example 1 : kill:me|player2 (it will kill me and player2)",2)
		iTypeMsg("Example 2 : tele:me/player2|player4/player3 (it will teleport me to player2 and player4 to player3",2)
	elseif string~=nil and string~="" then
		for index,v in pairs(iCmd) do
			table.insert(iHlp,tostring(index))
		end
		for index,v in pairs(iStr) do
			table.insert(iHlp,tostring(index))
		end
		for index,v in pairs(iVal) do
			table.insert(iHlp,tostring(index))
		end
		for index,cmd in pairs(iHlp) do cmd=tostring(cmd) if cmd==string:lower() then if cmd=="help" then iTypeMsg("Print help or explain you how a command works -> "..cmd..":[command]",2)
			elseif cmd=="endorb" then iTypeMsg("Delete the orb -> "..cmd..":",2)
			elseif cmd=="rtools" then iTypeMsg("Remove player tools -> "..cmd..":player",2)
			elseif cmd=="rtool" then iTypeMsg("Remove player tools -> "..cmd..":player",2)
			elseif cmd=="rts" then iTypeMsg("Remove player tools -> "..cmd..":player",2) 
			elseif cmd=="rt" then iTypeMsg("Remove player tools -> "..cmd..":",2)
			elseif cmd=="toolslist" then iTypeMsg("Print gears and building tools'name present in this orb -> "..cmd..":[string]",2)
			elseif cmd=="tl" then iTypeMsg("Print gears and building tools'name present in this orb -> "..cmd..":[string]",2)
			elseif cmd=="gears" then iTypeMsg("Give gears ( or a specific gear ) to player -> "..cmd..":player[:gearname]",2)
			elseif cmd=="gear" then iTypeMsg("Give gears ( or a specific gear ) to player -> "..cmd..":player[:gearname]",2)
			elseif cmd=="grs" then iTypeMsg("Give gears ( or a specific gear ) to player -> "..cmd..":player[:gearname]",2)
			elseif cmd=="gr" then iTypeMsg("Give gears ( or a specific gear ) to player -> "..cmd..":player[:gearname]",2)
			elseif cmd=="btools" then iTypeMsg("Give building tools -> "..cmd..":player[:toolname]",2)
			elseif cmd=="btool" then iTypeMsg("Give building tools -> "..cmd..":player[:toolname]",2)
			elseif cmd=="bts" then iTypeMsg("Give building tools -> "..cmd..":player[:toolname]",2)
			elseif cmd=="bt" then iTypeMsg("Give building tools -> "..cmd..":player[:toolname]",2)
			elseif cmd=="rmsg" then iTypeMsg("Remove messsages -> "..cmd..":",2)
			elseif cmd=="terrainclear" then iTypeMsg("Remove all the terrain bricks -> "..cmd..":",2)
			elseif cmd=="clear" then iTypeMsg("Clear workspace and spawn a base -> "..cmd..":",2)
			elseif cmd=="base" then iTypeMsg("Spawn a base -> "..cmd..":",2)
			elseif cmd=="night" then iTypeMsg("Change the current day to night -> "..cmd..":",2)
			elseif cmd=="evening" then iTypeMsg("Change the current day to evening -> "..cmd..":",2)
			elseif cmd=="morning" then iTypeMsg("Change the current day to morning -> "..cmd..":",2)
			elseif cmd=="day" then iTypeMsg("Change the current day to midday -> "..cmd..":",2)
			elseif cmd=="obc" then iTypeMsg("Set player membership to outrageous builders club -> "..cmd..":player",2)
			elseif cmd=="tbc" then iTypeMsg("Set player membership to turbo builders club -> "..cmd..":player",2)
			elseif cmd=="bc" then iTypeMsg("Set player membership to builders club -> "..cmd..":player",2)
			elseif cmd=="nbc" then iTypeMsg("Set player membership to none -> "..cmd..":player",2)
			elseif cmd=="ambient" then iTypeMsg("Change game ambient -> "..cmd..":color1,color2,color3",2)
			elseif cmd=="fcolor" then iTypeMsg("Change fire primary color and secondary color of orb -> "..cmd..":color1,color2,color3",2)
			elseif cmd=="fcolor1" then iTypeMsg("Change fire primary color of orb -> "..cmd..":",2)
			elseif cmd=="fcolor2" then iTypeMsg("Change fire secondary color of orb -> "..cmd..":",2)
			elseif cmd=="fogstart" then iTypeMsg("Set Fog Start value -> "..cmd..":value",2)
			elseif cmd=="fogend" then iTypeMsg("Set Fog End value -> "..cmd..":value",2)
			elseif cmd=="time" then iTypeMsg("Change game time -> "..cmd..":hour:minute:second",2)
			elseif cmd=="unit" then iTypeMsg("When you're an orb, teleport you to vector 0,0,0 or player position -> "..cmd..":[player]",2)
			elseif cmd=="fogcolor" then iTypeMsg("Change Fog Color -> "..cmd..":color1,color2,color3",2)
			elseif cmd=="show" then iTypeMsg("Makes visible your orb -> "..cmd..":",2)
			elseif cmd=="hide" then iTypeMsg("Makes invisible your orb -> "..cmd..":",2)
			elseif cmd=="unsparkles" then iTypeMsg("Remove player sparkles -> "..cmd..":player",2)
			elseif cmd=="sparkles" then iTypeMsg("Sparkles player -> "..cmd..":player",2)
			elseif cmd=="unsmoke" then iTypeMsg("Remove player smoke -> "..cmd..":player",2)
			elseif cmd=="smoke" then iTypeMsg("Smoke player -> "..cmd..":player",2)
			elseif cmd=="unfire" then iTypeMsg("Remove player fire -> "..cmd..":player",2)
			elseif cmd=="fire" then iTypeMsg("Fire player -> "..cmd..":player",2)
			elseif cmd=="visi" then iTypeMsg("Makes player visible -> "..cmd..":player",2)
			elseif cmd=="visible" then iTypeMsg("Makes player visible -> "..cmd..":player",2)
			elseif cmd=="invisi" then iTypeMsg("Makes player invisible -> "..cmd..":",2)
			elseif cmd=="invisible" then iTypeMsg("Makes player invisible -> "..cmd..":player",2)
			elseif cmd=="unlock" then iTypeMsg("Lock player -> "..cmd..":player",2)
			elseif cmd=="lock" then iTypeMsg("Unlock player -> "..cmd..":player",2)
			elseif cmd=="freeze" then iTypeMsg("Freeze player -> "..cmd..":player",2)
			elseif cmd=="unfreeze" then iTypeMsg("Thaw player -> "..cmd..":player",2)
			elseif cmd=="thaw" then iTypeMsg("Thaw player -> "..cmd..":player",2)
			elseif cmd=="rename" then iTypeMsg("Rename orb -> "..cmd..":string",2)
			elseif cmd=="damage" then iTypeMsg("Damage player -> "..cmd..":player,number",2)
			elseif cmd=="dmg" then iTypeMsg("Damage player -> "..cmd..":player,number",2)
			elseif cmd=="find" then iTypeMsg("Find player position using orb ray -> "..cmd..":player",2)
			elseif cmd=="sethealth" then iTypeMsg("Change player health -> "..cmd..":player,number",2)
			elseif cmd=="setname" then iTypeMsg("Change local character name -> "..cmd..":string",2)
			elseif cmd=="sn" then iTypeMsg("Change local character name -> "..cmd..":string",2)
			elseif cmd=="undead" then iTypeMsg("Give infinite health to player -> "..cmd..":player",2)
			elseif cmd=="heal" then iTypeMsg("Heal player -> "..cmd..":player",2)
			elseif cmd=="ps" then iTypeMsg("Platformstand player -> "..cmd..":player",2)
			elseif cmd=="platformstand" then iTypeMsg("Platformstand player -> "..cmd..":player",2)
			elseif cmd=="sit" then iTypeMsg("Sit player -> "..cmd..":player",2)
			elseif cmd=="jump" then iTypeMsg("Jump player -> "..cmd..":player",2)
			elseif cmd=="ws" then iTypeMsg("Change player walk speed -> "..cmd..":player,number",2)
			elseif cmd=="walkspeed" then iTypeMsg("Change player walk speed -> "..cmd..":player,number",2)
			elseif cmd=="grav" then iTypeMsg("Restore normal player gravity -> "..cmd..":player",2)
			elseif cmd=="gravity" then iTypeMsg("Restore normal player gravity -> "..cmd..":player",2)
			elseif cmd=="nograv" then iTypeMsg("Change player gravity -> "..cmd..":player",2)
			elseif cmd=="nogravity" then iTypeMsg("Change player gravity -> "..cmd..":player",2)
			elseif cmd=="setgrav" then iTypeMsg("Change player gravity by your value -> "..cmd..":player,number",2)
			elseif cmd=="setgravity" then iTypeMsg("Change player gravity by your value -> "..cmd..":player,number",2)
			elseif cmd=="renew" then iTypeMsg("Delete current orb and makes a new one -> "..cmd..":",2)
			elseif cmd=="drop" then iTypeMsg("Release player from your orb -> "..cmd..":player",2)
			elseif cmd=="release" then iTypeMsg("Release player from your orb -> "..cmd..":player",2)
			elseif cmd=="grab" then iTypeMsg("Grab player to your orb -> "..cmd..":player",2)
			elseif cmd=="tto" then iTypeMsg("Teleport player to your orb -> "..cmd..":player",2)
			elseif cmd=="teletoorb" then iTypeMsg("Teleport player to your orb -> "..cmd..":player",2)
			elseif cmd=="tp" then iTypeMsg("Teleport player1 to player2 -> "..cmd..":player1,player2",2)
			elseif cmd=="teleport" then iTypeMsg("Teleport player1 to player2 -> "..cmd..":player1,player2",2)
			elseif cmd=="tele" then iTypeMsg("Teleport player1 to player2 -> "..cmd..":player1,player2",2)
			elseif cmd=="tower" then iTypeMsg("Rise player on a tower (max duration time -> 120 sec.) -> "..cmd..":player[:height[:duration]]",2)
			elseif cmd=="skydive" then iTypeMsg("Skydive player -> "..cmd..":player",2)
			elseif cmd=="unff" then iTypeMsg("Give forcefield to player -> "..cmd..":player",2)
			elseif cmd=="ff" then iTypeMsg("Give forcefield to player -> "..cmd..":player",2)
			elseif cmd=="pun" then iTypeMsg("Punish player -> "..cmd..":player",2)
			elseif cmd=="punish" then iTypeMsg("Punish player -> "..cmd..":player",2)
			elseif cmd=="unpun" then iTypeMsg("Unpunish player -> "..cmd..":player",2)
			elseif cmd=="unpunish" then iTypeMsg("Unpunish player -> "..cmd..":player",2)
			elseif cmd=="resp" then iTypeMsg("Respawn player -> "..cmd..":player",2)
			elseif cmd=="respawn" then iTypeMsg("Respawn player -> "..cmd..":player",2)
			elseif cmd=="expl" then iTypeMsg("Explode player (if you're an orb and say expl:me, it will explode your orb) -> "..cmd..":player",2)
			elseif cmd=="explode" then iTypeMsg("Explode player (if you're an orb and say explode:me, it will explode your orb) -> "..cmd..":player",2)
			elseif cmd=="char" then iTypeMsg("Load your character (doesn't work when you're kicked) -> "..cmd..":",2)
			elseif cmd=="orb" then iTypeMsg("Makes you into orb -> "..cmd..":",2)
			elseif cmd=="unban" then iTypeMsg("Unban player -> "..cmd..":player",2)
			elseif cmd=="ban" then iTypeMsg("Ban player -> "..cmd..":player",2)
			elseif cmd=="fly" then iTypeMsg("Give you a fly tool I scripted -> "..cmd..":",2)
			elseif cmd=="banlist" then iTypeMsg("Print banned list -> "..cmd..":",2)
			elseif cmd=="kick" then iTypeMsg("Kick player -> "..cmd..":player",2)
			elseif cmd=="lkl" then iTypeMsg("Loopkill player -> "..cmd..":player",2)
			elseif cmd=="loopkill" then iTypeMsg("Loopkill player -> "..cmd..":player",2)
			elseif cmd=="unlkl" then iTypeMsg("Unloopkill player -> "..cmd..":player",2)
			elseif cmd=="unloopkill" then iTypeMsg("Unloopkill player -> "..cmd..":player",2)
			elseif cmd=="kl" then iTypeMsg("Kill player -> "..cmd..":player",2)
			elseif cmd=="kill" then iTypeMsg("Kill player -> "..cmd..":player",2)
			elseif cmd=="x" then iTypeMsg("Set x base position from your torso -> "..cmd..":number",2)
			elseif cmd=="y" then iTypeMsg("Set y base position from your torso -> "..cmd..":number",2)
			elseif cmd=="z" then iTypeMsg("Set z base position from your torso -> "..cmd..":number",2)
			elseif cmd=="fheat" then iTypeMsg("Set heat of orb fire -> "..cmd..":number",2)
			elseif cmd=="fsize" then iTypeMsg("Set size of orb fire -> "..cmd..":number",2)
			elseif cmd=="tsize" then iTypeMsg("Set size of orb trail -> "..cmd..":number",2)
			elseif cmd=="levirise" then iTypeMsg("Set maximum levitation rise of orb -> "..cmd..":number",2)
			elseif cmd=="rotspeed" then iTypeMsg("Set rotation speed of orb if it turn (max:360) -> "..cmd..":number",2)
			elseif cmd=="levispeed" then iTypeMsg("Set levitation rise speed of orb -> "..cmd..":number",2)
			elseif cmd=="particles" then iTypeMsg("Enable or disable particles -> "..cmd..":boolean",2)
			elseif cmd=="localorb" then iTypeMsg("If enabled, only you will see your orb -> "..cmd..":boolean",2)
			elseif cmd=="move" then iTypeMsg("If disabled, orb won't move -> "..cmd..":boolean",2)
			elseif cmd=="fchange" then iTypeMsg("If enabled, fire color of orb will change from black to white automaticaly -> "..cmd..":boolean",2)
			elseif cmd=="fena" then iTypeMsg("Enable or disable orb fire -> "..cmd..":boolean",2)
			elseif cmd=="tena" then iTypeMsg("Enable or disable orb trail -> "..cmd..":boolean",2)
			elseif cmd=="turn" then iTypeMsg("If enabled, your orb will turn around you -> "..cmd..":boolean",2)
			elseif cmd=="sc" then iTypeMsg("Execute script -> "..cmd..":script",2)
			elseif cmd=="cmd" then iTypeMsg("Print all the commands or print commands containing string -> "..cmd..":[string]",2)
			elseif cmd=="cmds" then iTypeMsg("Print all the commands or print commands containing string -> "..cmd..":[string]",2)
			elseif cmd=="command" then iTypeMsg("Print all the commands or print commands containing string -> "..cmd..":[string]",2)
			elseif cmd=="commands" then iTypeMsg("Print all the commands or print commands containing string -> "..cmd..":[string]",2)
			elseif cmd=="stop" then iTypeMsg("Stop printing commands or help -> "..cmd..":",2)
		else iTypeMsg("Unknown or non-existing help for this command...",2) end end end
		for i = #iHlp, 1, -1 do
			table.remove(iHlp,i)
		end
	end iOrb.runmsg=false
end

--iStr.sc=function(string) coroutine.wrap(function() loadstring(string)() end)() end

iStr.cmd=function(string) iHintCmd(string) end
iStr.cmds=function(string) iHintCmd(string) end
iStr.command=function(string) iHintCmd(string) end
iStr.commands=function(string) iHintCmd(string) end 

iStr.toolslist=function(string) iHintTools(string) end
iStr.tl=function(string) iHintTools(string) end 

iCmd.stop=function() iOrb.runmsg=false end

	-- Run iBan --
	
game.Players.ChildAdded:connect(banPlayers)
coroutine.resume(coroutine.create(function() for _,v in pairs(game.Players:GetPlayers())do banPlayers(v) end end))

	-- Credit goes to Imike2, for his [qORBp] V2 --