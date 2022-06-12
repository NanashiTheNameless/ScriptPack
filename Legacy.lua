	--MADE BY SAVAGEMUNKEY
	--UTTERLY SLOPPY C:	
	
	local Plr = game.Players.LocalPlayer --LocalScript
	local Char = Plr.Character
	local Mouse = Plr:GetMouse()
	workspace.CurrentCamera.CameraSubject = Char.Head
	
	--game["Run Service"].RenderStepped:connect(function(_)
	Char.Humanoid.WalkSpeed = 4
	Char.Humanoid.MaxHealth = 50000
	Char.Humanoid.Health = 50000
	--end)

	local PrimaryColor = 'Really black'
	local SecondaryColor = 'Institutional white'
	
	local debounce = false	
	
	local Height = 0
	local Music = true
	
	for _,v in next, Char:GetChildren() do
		if v:IsA('Hat') then
			v:Destroy()
		end
	end	
	
	wait(.1)
	Char.Torso.Anchored = true
	
	local Hat = Instance.new('Hat',Char)
	local Handle = Instance.new('Part',Hat)
	Handle.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
	Handle.Anchored = true
	Handle.CanCollide = false
	Handle.Material = 'Neon'
	local HatMesh = Instance.new('SpecialMesh',Handle)
	HatMesh.MeshId = 'rbxassetid://30166087'
	HatMesh.TextureId = 'rbxassetid://30166098'
	--http://www.roblox.com/asset/?id=3270017
	local Hat2 = Instance.new('Hat',Char)
	local Handle2 = Instance.new('Part',Hat2)
	Handle2.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
	Handle2.Anchored = true
	Handle2.CanCollide = false
	Handle2.Material = 'Neon'
	local HatMesh2 = Instance.new('SpecialMesh',Handle2)
	HatMesh2.MeshId = 'rbxassetid://128154773'
	HatMesh2.TextureId = 'rbxassetid://128154785'

	local Hat3 = Instance.new('Hat',Char)
	local Handle3 = Instance.new('Part',Hat3)
	Handle3.CFrame = Char.Head.CFrame * CFrame.new(0,.2,0)
	Handle3.Anchored = true
	Handle3.CanCollide = false
	Handle3.Material = 'Neon'
	Handle3.BrickColor = BrickColor.new('Really black')
	local HatMesh3 = Instance.new('SpecialMesh',Handle3)
	HatMesh3.MeshId = 'rbxassetid://3270017'
	--HatMesh3.TextureId = 'rbxassetid://128154785'	
	HatMesh3.Scale = Vector3.new(2,2,1)
	
	game["Run Service"].RenderStepped:connect(function()
		Handle.CFrame = Char.Head.CFrame * CFrame.new(0,.16,-.3)
		Handle2.CFrame = Char.Head.CFrame * CFrame.new(0,.6,0)
		Handle3.CFrame = Char.Head.CFrame * CFrame.new(0,1.3,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
	end)
	
	Char.Torso.Anchored = false	
	
	local Face = Instance.new('Decal',Char.Head)
	Face.Name = 'face'
	if Char.Head:findFirstChild('face') then
	Char.Head['face']:Destroy()
	end
	Face.Texture = 'rbxassetid://13603673'

	local Sound = Instance.new('Sound',Char.Head)
	Sound.SoundId = 'rbxassetid://147703674'
	Sound.Pitch = .82
	Sound.Looped = true
	Sound.Volume = 1
	
	if Music then
	Sound:Play()
	end

	local ra = Char:FindFirstChild('Right Arm')
	local ts = Char.Torso
	local la = Char:FindFirstChild('Left Arm')
	local ll = Char:FindFirstChild('Left Leg')
	local rl = Char:FindFirstChild('Right Leg')
	local hd = Char.Head
	local root = Char:FindFirstChild('HumanoidRootPart')
	
	rarm = ra
	larm = la
	torso = ts
	hed = hd
	root = root
	lleg = ll
	rleg = rl
	
function clerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

newWeld = function(wp,w0,w1,c0,c1)
	local Weld = Instance.new('Weld',wp or nil)
	Weld.Name = w0.Name..'To'..w1.Name
	Weld.Part0 = w0 or nil
	Weld.Part1 = w1 or nil
	Weld.C0 = c0 or CFrame.fromEulerAnglesXYZ(0,0,0)
	Weld.C1 = c1 or CFrame.new(0,0,0)
end

--[[WELDZ]]--
newWeld(torso,torso,root,nil,CFrame.new(0,2,0))
newWeld(torso,torso,rarm,CFrame.fromEulerAnglesXYZ(-.43,0,.54),CFrame.new(-1.6,.75,-.35))
newWeld(torso,torso,larm,CFrame.fromEulerAnglesXYZ(-.43,0,-.54),CFrame.new(1.6,.75,-.35))--]]
--newWeld(torso,torso,rarm,CFrame.fromEulerAnglesXYZ(.2,0,0),CFrame.new(-1.5,0,0))
--newWeld(torso,torso,larm,CFrame.fromEulerAnglesXYZ(.2,0,0),CFrame.new(1.5,0,0))
newWeld(torso,torso,hed,CFrame.fromEulerAnglesXYZ(-.35,.01,0),CFrame.new(0,-1.43,-.3))
newWeld(torso,torso,rleg,CFrame.fromEulerAnglesXYZ(0,0,0),CFrame.new(-.5,2,0))
newWeld(torso,torso,lleg,CFrame.fromEulerAnglesXYZ(-.2,0,0),CFrame.new(.5,2,.2))
-------------
running = false

Mouse.KeyDown:connect(function(k)   
k = k:lower()
if k == 'w' then
running = true
end
end)

Mouse.KeyUp:connect(function(k)
if k:lower() == 'w' then
running = false
end
end)

spawn(function()
	while wait() do
		for i = 1,30 do
					if running then
						torso['TorsoToLeft Leg'].C0 = torso['TorsoToLeft Leg'].C0 * CFrame.fromEulerAnglesXYZ(.001,0,0)
						torso['TorsoToLeft Arm'].C0 = torso['TorsoToLeft Arm'].C0 * CFrame.fromEulerAnglesXYZ(.002,.0005,.0005)						
						torso['TorsoToRight Arm'].C0 = torso['TorsoToRight Arm'].C0 * CFrame.fromEulerAnglesXYZ(.002,.0005,.0005)
						torso['TorsoToRight Leg'].C0 = torso['TorsoToRight Leg'].C0 * CFrame.fromEulerAnglesXYZ(.001,0,0)	
						torso['TorsoToHead'].C0 = torso['TorsoToHead'].C0 * CFrame.fromEulerAnglesXYZ(-.002,0,0)					
						game["Run Service"].RenderStepped:wait()
					end
				end
				wait(.05)
				for i = 1,30 do
					if running then
						torso['TorsoToLeft Leg'].C0 = torso['TorsoToLeft Leg'].C0 * CFrame.fromEulerAnglesXYZ(-.001,0,0)
						torso['TorsoToHead'].C0 = torso['TorsoToHead'].C0 * CFrame.fromEulerAnglesXYZ(.002,0,0)						
						torso['TorsoToRight Arm'].C0 = torso['TorsoToRight Arm'].C0 * CFrame.fromEulerAnglesXYZ(-.002,-.0005,-.0005)
						torso['TorsoToLeft Arm'].C0 = torso['TorsoToLeft Arm'].C0 * CFrame.fromEulerAnglesXYZ(-.002,-.0005,-.0005)						
						torso['TorsoToRight Leg'].C0 = torso['TorsoToRight Leg'].C0 * CFrame.fromEulerAnglesXYZ(-.001,0,0)						
						--game["Run Service"].RenderStepped:wait()
						game["Run Service"].RenderStepped:wait()
					end
				end
				wait(.2)
				end
end)

FloatPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(PrimaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

OnTouch = function(Toucher)
	if Toucher.Parent.Name ~= Plr.Name and Toucher.Parent:FindFirstChild('Humanoid') then
		local Hum = Toucher.Parent:FindFirstChild('Humanoid')
		Hum.Health = Hum.Health - .7		
	end
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

TouchKill = function(Toucher)
	if Toucher.Parent then
		if Toucher.Parent:FindFirstChild('Humanoid') then
			local P = Toucher.Parent:FindFirstChild('Humanoid')
			if P ~= nil and P.Parent.Name ~= Plr.Name then
				P.Health = P.Health - math.random(4,17)
			end
		end
	end
end;

Particle = function()
	local Part = Instance.new('Part',torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.Touched:connect(function(I)OnTouch(I)end)
	Part.CanCollide = false
	Part.CFrame = torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)

--Guns

Gun1 = Instance.new('Model',Char)
Gun1.Name = 'GUN1MODEL'
a = Instance.new('Part',Gun1)
a.CanCollide = false
a.Name = 'PartAGun1'
a.Shape = 'Ball'
a.TopSurface = 10
a.BottomSurface = 0
a.FormFactor = 3
a.Size = Vector3.new(1,1,1)
a.Transparency = .4
a.BrickColor = BrickColor.new(PrimaryColor)
newWeld(torso,torso,a,CFrame.fromEulerAnglesXYZ(0,0,0),CFrame.new(-1.3,-1.6,0))

Gun2 = Instance.new('Model',Char)
Gun2.Name = 'GUN2MODEL'
a2 = Instance.new('Part',Gun2)
a2.CanCollide = false
a2.Name = 'PartAGun2'
a2.Shape = 'Ball'
a2.TopSurface = 10
a2.BottomSurface = 0
a2.FormFactor = 3
a2.Size = Vector3.new(1,1,1)
a2.Transparency = .4
a2.BrickColor = BrickColor.new(SecondaryColor)
newWeld(torso,torso,a2,CFrame.fromEulerAnglesXYZ(0,0,0),CFrame.new(1.3,-1.6,0))

--	
	local Hand1 = Instance.new('Part',a)
	Hand1.FormFactor = 'Custom'	
	Hand1.Name = 'Hand1'
	game["Run Service"].RenderStepped:wait()
	Hand1.Size = Vector3.new(.5,.5,.5)
	Hand1.Transparency = .4
	Hand1.BrickColor = BrickColor.new(SecondaryColor)
	Hand1.Material = 'Neon'
	--Hand1.Anchored = true
	Hand1.CanCollide = false
	newWeld(a,a,Hand1,CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random()),CFrame.new(0,0,0))
	game["Run Service"].RenderStepped:wait()	
	
	local Hand2 = Instance.new('Part',a2)
	Hand2.FormFactor = 'Custom'	
	Hand2.Name = 'Hand1'
	game["Run Service"].RenderStepped:wait()
	Hand2.Size = Vector3.new(.5,.5,.5)
	Hand2.Transparency = .4
	Hand2.BrickColor = BrickColor.new(PrimaryColor)
	Hand2.Material = 'Neon'
	--Hand2.Anchored = true
	Hand2.CanCollide = false
	newWeld(a2,a2,Hand2,CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random()),CFrame.new(0,0,0))
	game["Run Service"].RenderStepped:wait()--]]	

game["Run Service"].RenderStepped:connect(function()
	torso['TorsoToPartAGun1'].C1 = torso['TorsoToPartAGun1'].C1 * CFrame.new(0,math.sin(tick())/200,0) * CFrame.fromEulerAnglesXYZ(math.sin(tick()/3)/3000,0,math.sin(tick()/3)/1100)
	torso['TorsoToPartAGun2'].C1 = torso['TorsoToPartAGun2'].C1 * CFrame.new(0,math.sin(tick())/200,0) * CFrame.fromEulerAnglesXYZ(math.sin(tick()/3)/3000,0,math.sin(tick()/3)/1100)
end)
	
--

Lightning = function(Start,End,Times,Offset,Thickness,Transparency) 
     local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset} 
     for i=1,Times do  
         local li = Instance.new("Part",workspace) li.BrickColor = BrickColor.new(PrimaryColor) li.TopSurface = 0 li.Material = 'Neon' li.BottomSurface = 0 li.Anchored = true li.Name = 'LightningPeice' li.Transparency = Transparency or 0.4 
     
         li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])  
         local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz 
         if Times == i then  
             local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2) 
             li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2) 
         else 
             li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2) 
         end 
         curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p spawn(function()wait(.3)Fade(li,.02)end)
		li.Touched:connect(function(I)
		TouchKill(I,0)
		end)    
 end 

 end 

Orbital = function()
	local lzr = Instance.new('Part',workspace.Base)
	lzr.Transparency = .3
	lzr.Anchored = true
	lzr.CFrame = CFrame.new(Mouse.Hit.X,0,Mouse.Hit.Z)-- * CFrame.fromEulerAnglesXYZ(0,0,86.4)
	lzr.BrickColor = BrickColor.new(SecondaryColor)
	local lzrmesh = Instance.new('CylinderMesh',lzr)
	lzrmesh.Scale = Vector3.new(10,10000,10)
	wait(.2)
	spawn(function()
		for i = 1,15 do
			lzrmesh.Scale = lzrmesh.Scale - Vector3.new(.5,0,.5)
			wait(.001)
		end
		wait(.1)
		local lzr2 = Instance.new('Part',workspace.Base)
	lzr2.Transparency = .3
	lzr2.Anchored = true
	lzr2.CFrame = lzr.CFrame-- * CFrame.fromEulerAnglesXYZ(0,0,86.4)
	lzr2.BrickColor = BrickColor.new(PrimaryColor)
	local lzrmesh2 = Instance.new('CylinderMesh',lzr2)
	lzrmesh2.Scale = Vector3.new(0,10000,0)
	for i = 1,20 do
		lzr2.Touched:connect(function(I)TouchKill(I)end)
			lzrmesh2.Scale = lzrmesh2.Scale + Vector3.new(.4,0,.4)
			local ex = Instance.new('Explosion',workspace)
	ex.Position = lzr2.Position
			game["Run Service"].RenderStepped:wait()
	end
	for i = 1,20 do
		lzr2.Transparency = lzr2.Transparency + .05
		
		game["Run Service"].RenderStepped:wait()
	end
	lzr:Destroy()
	lzr2:Destroy()

	end)
end

Fade2 = function(Item)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			wait()
		end
		Item:Destroy()
	end)
end

CounterTp = function()
	debounce = true
	Invis()
	debounce = false
	torso.CFrame = torso.CFrame * CFrame.new(0,0,-25) * CFrame.fromEulerAnglesXYZ(0,64.4*2,0)
	Vis()
end

PSpike = function()
	local pa = Instance.new('Part',workspace.Base)
	pa.Anchored = true
	pa.Transparency = .3
	pa.CanCollide = false
	pa.Size = Vector3.new(4,1,1)
	pa.Material = 'Neon'
	local msh = Instance.new('BlockMesh',pa)
	msh.Scale = Vector3.new(2,1,1)
	game.Debris:AddItem(pa,5)
	pa.BrickColor = BrickColor.new('Really red')
	pa.CFrame = torso.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) * CFrame.new(Mouse.Hit.p,pa.Position)
	wait()
	--local sp = Instance.new('SpecialMesh',pa)
	--sp.MeshId = 'http://www.roblox.com/asset/?id=1033714'
	--sp.Scale = Vector3.new(.5,5,.5)
end

Pulse = function()
	local pul = Instance.new('Part',workspace.Base)
	pul.Size = Vector3.new(14,14,14)
	pul.Anchored = true
	pul.Transparency = .4
	pul.BrickColor = BrickColor.new(PrimaryColor)
	pul.TopSurface = 10
	pul.CanCollide = false
	pul.Shape = 'Ball'
	pul.Touched:connect(function(I)
			TouchKill(I)
		end)
	pul.CFrame = torso.CFrame
	pul.BottomSurface = 10
	local mshh = Instance.new('SpecialMesh',pul)
	mshh.MeshType = Enum.MeshType.Sphere
	mshh.Scale = Vector3.new(1,1,1)
	spawn(function()
		for i = 1,20 do
		mshh.Scale = mshh.Scale - Vector3.new(.1,.1,.1)
		wait()
		end
		wait(1)
		pul.BrickColor = BrickColor.new(SecondaryColor)
		spawn(function()wait(.5)Fade2(pul,.001)end)
		for i = 1,20 do
		mshh.Scale = mshh.Scale + Vector3.new(.2,.2,.2)
		wait()
		end
	end)
	--Fade2(pul,.001)
end;

auto = false

Mouse.KeyDown:connect(function(k)
	if k:lower() == 'q' then
	auto = true 
     while auto == true and debounce == false do
	debounce = true
	wait(.7)
	debounce = false
	local S = Instance.new('Sound',a)
	S.Pitch = .7
	S.Volume = .3
	S.SoundId = 'rbxassetid://177807944'
	S:Play()
         Lightning(a.Position,Mouse.Hit.p,math.random(5,10),math.random(-1,.7),.05,.4) 
wait(.1)		 
		Lightning(a2.Position,Mouse.Hit.p,math.random(5,10),math.random(-1,.7),.05,.4) 
end
	elseif k:lower() == 'f' then
	Orbital()
	elseif k:lower() == 'e' then
		Pulse()
	elseif k:lower() == 't' then
		CounterTp()
	elseif k:lower() == 'r' then
		PSpike()
	elseif k:lower() == 'z' then
		for i = 1,10 do
			Height = Height + .001
			game["Run Service"].RenderStepped:wait()
		end
	elseif k:lower() == 'x' then
		for i = 1,10 do
			Height = Height - .001
			game["Run Service"].RenderStepped:wait()
		end
	elseif k:lower() == 'c' then
		--for i = 1,10 do
			Height = 0
		--end
end
end)

Mouse.KeyUp:connect(function(k)
	if k:lower() == 'q' then		
		wait()
		auto = false
		end
end)

game["Run Service"].RenderStepped:connect(function(_)
	Particle()
	torso['TorsoToHumanoidRootPart'].C1 = torso['TorsoToHumanoidRootPart'].C1 * CFrame.new(0,Height+math.sin(tick())/150,0)
end)

tor = Char.Torso
Debounce = false

Invis = function()
	for i = 1,20 do
	Char['Right Arm'].Transparency = Char['Right Arm'].Transparency + .05 
	Char['Left Arm'].Transparency = Char['Left Arm'].Transparency + .05
	Char['Right Leg'].Transparency = Char['Right Leg'].Transparency + .05
	Char['Left Leg'].Transparency = Char['Left Leg'].Transparency + .05
	Char['Head'].Transparency = Char['Head'].Transparency + .05
	Char['Torso'].Transparency = Char['Torso'].Transparency + .05
	Char.Head['face'].Transparency = Char.Head['face'].Transparency + .05
	game["Run Service"].RenderStepped:wait()
	end
end

Vis = function()
	for i = 1,20 do
	Char['Right Arm'].Transparency = Char['Right Arm'].Transparency - .05 
	Char['Left Arm'].Transparency = Char['Left Arm'].Transparency - .05
	Char['Right Leg'].Transparency = Char['Right Leg'].Transparency - .05
	Char['Left Leg'].Transparency = Char['Left Leg'].Transparency - .05
	Char['Head'].Transparency = Char['Head'].Transparency - .05
	Char['Torso'].Transparency = Char['Torso'].Transparency - .05
	Char.Head['face'].Transparency = Char.Head['face'].Transparency - .05
	game["Run Service"].RenderStepped:wait()
	end
end

Fade = function(Part)
	if Part:IsA'Part' then
		for i = 1,20 do
			Part.Transparency = Part.Transparency + .05
			Part.Size = Part.Size - Vector3.new(.04,.04,.04)
			Part.CFrame = Part.CFrame * CFrame.new(0,-.1,0)
			wait()
		end
		Part:Destroy()
	end
end

Teleport = function(cx,cy,cz)
	Debounce = true
	tor.Anchored = true
	Invis()
	--MakeTpPart()
	tor.Anchored = false
	tor.CFrame = CFrame.new(cx,cy,cz) * CFrame.new(0,3,0)
	tor.Anchored = true
	Vis()
	tor.Anchored = false
	Debounce = false
end;

Mouse.Button1Down:connect(function()
	if not Debounce then
	Teleport(Mouse.Hit.X,Mouse.Hit.Y,Mouse.Hit.Z)
	end
end)

--[[GUIS]]--
local sg = Instance.new('ScreenGui',Plr.PlayerGui)
local tlb = Instance.new('TextLabel',sg)
tlb.Size = UDim2.new(0,200,0,23)
tlb.BackgroundTransparency = .2
tlb.TextTransparency = 0
tlb.TextStrokeTransparency = 1
tlb.TextStrokeColor3 = Color3.new(255,255,255)
tlb.BackgroundColor3 = Color3.new(-255,-255,-255)
tlb.Font = 'ArialBold'
tlb.FontSize = 'Size24'
tlb.BorderSizePixel = 0
tlb.TextColor3 = Color3.new(255,255,255)
tlb.Position = UDim2.new(1,-201,0,400)
game["Run Service"].RenderStepped:connect(function(_)
tlb.Text = 'Health; '..math.floor(Char.Humanoid.Health+.1)
end)

local tb = Instance.new('TextButton',sg)
tb.Size = UDim2.new(0,200,0,23)
tb.BackgroundTransparency = .2
tb.TextTransparency = 0
tb.BorderSizePixel = 0
tb.TextStrokeTransparency = 1
tb.TextStrokeColor3 = Color3.new(255,255,255)
tb.BackgroundColor3 = Color3.new(-255,-255,-255)
tb.Font = 'ArialBold'
tb.FontSize = 'Size24'
tb.TextColor3 = Color3.new(255,255,255)
tb.Position = UDim2.new(1,-201,0,424)
tb.Text = 'Open Controls'

local frame = Instance.new('Frame',sg)
	frame.Size = UDim2.new(0,200,0,185)
	frame.Name = 'SGFrame'
	frame.Position = UDim2.new(1,-201,1,0)
	frame.BorderSizePixel = 0
	frame.BackgroundTransparency = .2
	frame.BackgroundColor3 = Color3.new(-255,-255,-255)
	local con1 = Instance.new('TextLabel',frame)
	con1.BackgroundTransparency = 1
	con1.BackgroundColor3 = frame.BackgroundColor3
	con1.BorderSizePixel = 0
	con1.Text = 'Q; Lightning'
	con1.TextColor3 = Color3.new(255,255,255)
	con1.Font = 'ArialBold'
	con1.FontSize = 'Size18'
	con1.Size = UDim2.new(1,0,0,23)
	local con2 = Instance.new('TextLabel',frame)
	con2.BackgroundTransparency = 1
	con2.BackgroundColor3 = frame.BackgroundColor3
	con2.BorderSizePixel = 0
	con2.Text = 'F; Pulse Beam'
	con2.TextColor3 = Color3.new(255,255,255)
	con2.Font = 'ArialBold'
	con2.Position = UDim2.new(0,0,0,23)
	con2.FontSize = 'Size18'
	con2.Size = UDim2.new(1,0,0,23)
	local con3 = Instance.new('TextLabel',frame)
	con3.BackgroundTransparency = 1
	con3.BackgroundColor3 = frame.BackgroundColor3
	con3.BorderSizePixel = 0
	con3.Text = 'Z; Increase Rise'
	con3.TextColor3 = Color3.new(255,255,255)
	con3.Font = 'ArialBold'
	con3.Position = UDim2.new(0,0,0,46)
	con3.FontSize = 'Size18'
	con3.Size = UDim2.new(1,0,0,23)
	local con4 = Instance.new('TextLabel',frame)
	con4.BackgroundTransparency = 1
	con4.BackgroundColor3 = frame.BackgroundColor3
	con4.BorderSizePixel = 0
	con4.Text = 'X; Decrease Rise'
	con4.TextColor3 = Color3.new(255,255,255)
	con4.Font = 'ArialBold'
	con4.Position = UDim2.new(0,0,0,69)
	con4.FontSize = 'Size18'
	con4.Size = UDim2.new(1,0,0,23)
	local con5 = Instance.new('TextLabel',frame)
	con5.BackgroundTransparency = 1
	con5.BackgroundColor3 = frame.BackgroundColor3
	con5.BorderSizePixel = 0
	con5.Text = 'C; Zero Rise'
	con5.TextColor3 = Color3.new(255,255,255)
	con5.Font = 'ArialBold'
	con5.Position = UDim2.new(0,0,0,92)
	con5.FontSize = 'Size18'
	con5.Size = UDim2.new(1,0,0,23)
	
	local con6 = Instance.new('TextLabel',frame)
	con6.BackgroundTransparency = 1
	con6.BackgroundColor3 = frame.BackgroundColor3
	con6.BorderSizePixel = 0
	con6.Text = 'MouseClick; Teleport'
	con6.TextColor3 = Color3.new(255,255,255)
	con6.Font = 'ArialBold'
	con6.Position = UDim2.new(0,0,0,115)
	con6.FontSize = 'Size18'
	con6.Size = UDim2.new(1,0,0,23)
	
	local con7 = Instance.new('TextLabel',frame)
	con7.BackgroundTransparency = 1
	con7.BackgroundColor3 = frame.BackgroundColor3
	con7.BorderSizePixel = 0
	con7.Text = 'E; Discharge'
	con7.TextColor3 = Color3.new(255,255,255)
	con7.Font = 'ArialBold'
	con7.Position = UDim2.new(0,0,0,139)
	con7.FontSize = 'Size18'
	con7.Size = UDim2.new(1,0,0,23)
	
	local con8 = Instance.new('TextLabel',frame)
	con8.BackgroundTransparency = 1
	con8.BackgroundColor3 = frame.BackgroundColor3
	con8.BorderSizePixel = 0
	con8.Text = 'T; Dodge'
	con8.TextColor3 = Color3.new(255,255,255)
	con8.Font = 'ArialBold'
	con8.Position = UDim2.new(0,0,0,163)
	con8.FontSize = 'Size18'
	con8.Size = UDim2.new(1,0,0,23)
	
tb.MouseButton1Down:connect(function()
if tb.Text == 'Open Controls' then
	tb.Text = 'Close Controls'
	frame:TweenPosition(UDim2.new(1,-201,0,448),'Out','Quint',2,true)
	elseif tb.Text == 'Close Controls' then
	frame:TweenPosition(UDim2.new(1,-208,1,0),'In','Quint',2,true)
	tb.Text = 'Open Controls'
	end
end)

--End