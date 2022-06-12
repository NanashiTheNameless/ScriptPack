print(time'')
if script then if game.PlaceId~=0 then script.Parent=a end end
waitingFor=function(instance,stuff)
	while not instance[stuff]do
		instance.Changed:wait''
	end
	return instance[stuff]
end

Removes={'Hat','Pants','Shirt','ShirtGraphic','BodyColors'}

WaitingForObjectum=function(instance,p,name)
	if p:lower''=='name'then
		p='Name'
	elseif p:lower''=='class'then
		p='ClassName'
	end
	if p~='ClassName'and p~='Name'then return nil end
	while 0 do
		for i,v in pairs(instance:children'')do
			if v[p]:lower''==name:lower''then
				return v
			end
		end
		wait''
	end
end

GetAll=function(Start)
	local AllObj={}
	InsertObjectToList=function(obj)
		pcall(function()
			for lol,child in pairs(obj:children())do
				if script~=nil then
					if child~=script then
						InsertObjectToList(child)
						table.insert(AllObj,child)
					end
				else
					InsertObjectToList(child)
					table.insert(AllObj,child)
				end
			end
		end)
	end
	InsertObjectToList(Start)
	return AllObj
end

X=function(f)
	local CreatedFunction=coroutine.create(f)
	coroutine.resume(CreatedFunction)
end

Rot=CFrame.fromEulerAnglesXYZ

Player=game.Players.LocalPlayer

Status='None'

CreatePart=function(Size,Parent)
	local Part=Instance.new'Part'
	Part.formFactor=3
	Part.BottomSurface=0
	Part.TopSurface=0
	Part.Size=Size
	Part.Parent=Parent
	return Part
end
LoadCheck=function(Character)
	for i,v in pairs(Character:children'')do
		if v.Name=='Black Metal Set'or v:IsA'Hat'then
			v:remove''
		end
	end
	local BlackMetalSet=Instance.new'Model'
	BlackMetalSet.Name='Black Metal Set'
	BlackMetalSet.Parent=Character
end
LoadBlackMetalSetAnimate=function(Character)
	local Humanoid=WaitingForObjectum(Character,'class','Humanoid')
	Humanoid.Died:connect(onDied)
	Humanoid.Running:connect(function()Status='run'end)
	Humanoid.Jumping:connect(function()Status='jump'end)
	Humanoid.Climbing:connect(function()Status='climb'end)
	Humanoid.GettingUp:connect(function()Status='getup'end)
	Humanoid.FreeFalling:connect(function()Status='freefall'end)
	Humanoid.FallingDown:connect(function()Status='falldown'end)
	Humanoid.Seated:connect(function()Status='sit'end)
	Humanoid.PlatformStanding:connect(function()Status='stand'end)
end
LoadHeadSet=function(Character)
	for i,v in pairs(Head:children'')do
		if v.Name=='face'then
			v.Texture='rbxassetid://55668987'
		end
	end
	local HeadSet=Instance.new'Model'
	HeadSet.Name='Head Set'
	HeadSet.Parent=WaitingForObjectum(Character,'Name','Black Metal Set')
	
	local Horn=Instance.new'Part'
	Horn.formFactor=0
	Horn.Size=Vector3.new(1,1,1)
	Horn.CFrame=Head.CFrame
	Horn.CanCollide=false
	Horn.Parent=HeadSet
	local HornWeld=Instance.new'Motor'
	HornWeld.Parent=Head
	HornWeld.Part0=Head
	HornWeld.Part1=Horn
	HornWeld.C0=Rot(-.3,0,0)+Vector3.new(0,.3,-.2)
	local HornMesh=Instance.new'SpecialMesh'
	HornMesh.MeshId='http://www.roblox.com/asset/?id=2264333'
	HornMesh.TextureId='http://www.roblox.com/asset/?id=2264330'
	HornMesh.VertexColor=Vector3.new(.3,0,0)
	HornMesh.Scale=Vector3.new(.3,.3,.3)
	HornMesh.Parent=Horn
	
	local Hood=Instance.new'Part'
	Hood.formFactor=0
	Hood.Size=Vector3.new(2,2,1)
	Hood.CFrame=Head.CFrame
	Hood.CanCollide=false
	Hood.BrickColor=BrickColor.new'1003'
	Hood.Parent=HeadSet
	local HoodMesh=Instance.new'SpecialMesh'
	HoodMesh.Scale=Vector3.new(1.05,1.05,1.05)
	HoodMesh.VertexColor=Vector3.new(.2,0,0)
	HoodMesh.MeshId='http://www.roblox.com/asset/?id=16952952'
	HoodMesh.TextureId='http://www.roblox.com/asset/?id=34495525'
	HoodMesh.Parent=Hood
	local HoodWeld=Instance.new'Motor'
	HoodWeld.Parent=Head
	HoodWeld.Part0=Head
	HoodWeld.Part1=Hood
	HoodWeld.C0=CFrame.new(0,.25,-.12)
	
	local Mask=Instance.new'Part'
	Mask.formFactor=3
	Mask.Size=Vector3.new(2,.4,1)
	Mask.CFrame=Head.CFrame
	Mask.CanCollide=false
	Mask.BrickColor=BrickColor.new'1003'
	Mask.Parent=HeadSet
	local MaskMesh=Instance.new'SpecialMesh'
	MaskMesh.Scale=Vector3.new(.13,.15,.09)
	MaskMesh.MeshId='http://www.roblox.com/asset/?id=5158270'
	MaskMesh.TextureId='http://www.roblox.com/asset/?id=43098386'
	MaskMesh.Parent=Mask
	local MaskWeld=Instance.new'Motor'
	MaskWeld.Parent=Head
	MaskWeld.Part0=Head
	MaskWeld.Part1=Mask
	MaskWeld.C0=Rot(-math.rad(100),0,0)+Vector3.new(0,-.08,-.6)
	X(function()
		while MaskMesh do
			for i=1,10 do
				MaskMesh.VertexColor=Vector3.new(i/10,0,0)
				wait'.1'
			end
			for i=1,9 do
				MaskMesh.VertexColor=Vector3.new(1-i/10,0,0)
				wait'.1'
			end
		end
	end)
	local Eye1=Instance.new'Part'
	Eye1.formFactor=3
	Eye1.Size=Vector3.new(1,.4,1)
	Eye1.CFrame=Head.CFrame
	Eye1.CanCollide=false
	Eye1.BrickColor=BrickColor.new'1003'
	Eye1.Parent=HeadSet
	local Eye1Mesh=Instance.new'SpecialMesh'
	Eye1Mesh.Scale=Vector3.new(.8,.7,.5)
	Eye1Mesh.MeshId='http://www.roblox.com/asset/?id=1185246'
	Eye1Mesh.TextureId='http://www.roblox.com/asset/?id=32763014'
	Eye1Mesh.Parent=Eye1
	local Eye1Weld=Instance.new'Motor'
	Eye1Weld.Parent=Head
	Eye1Weld.Part0=Head
	Eye1Weld.Part1=Eye1
	Eye1Weld.C0=CFrame.new(.2,0,-.5)
	local Eye2=Instance.new'Part'
	Eye2.formFactor=3
	Eye2.Size=Vector3.new(1,.4,1)
	Eye2.CFrame=Head.CFrame
	Eye2.CanCollide=false
	Eye2.BrickColor=BrickColor.new'1003'
	Eye2.Parent=HeadSet
	local Eye2Mesh=Instance.new'SpecialMesh'
	Eye2Mesh.Scale=Vector3.new(.8,.7,.5)
	Eye2Mesh.MeshId='http://www.roblox.com/asset/?id=1185246'
	Eye2Mesh.TextureId='http://www.roblox.com/asset/?id=32763014'
	Eye2Mesh.Parent=Eye2
	local Eye2Weld=Instance.new'Motor'
	Eye2Weld.Parent=Head
	Eye2Weld.Part0=Head
	Eye2Weld.Part1=Eye2
	Eye2Weld.C0=CFrame.new(-.2,0,-.5)
	X(function()
		while 0 do
			wait(math.random(1,11))
			if Eye1Mesh then
				Eye1Mesh.VertexColor=Vector3.new(0,0,0)
			end
			if Eye2Mesh then
				Eye2Mesh.VertexColor=Vector3.new(0,0,0)
			end
			wait(math.random(1,5)/50)
			if Eye1Mesh then
				Eye1Mesh.VertexColor=Vector3.new(1,0,0)
			end
			if Eye2Mesh then
				Eye2Mesh.VertexColor=Vector3.new(1,0,0)
			end
		end
	end)
end
LoadArmSet=function(Character)
	wait'.2'
	local RS,LR,RightArm,LeftArm
	--RS=waitingFor(Torso,'Right Shoulder')
	--LS=waitingFor(Torso,'Left Shoulder')
	RightArm=WaitingForObjectum(Character,'Name','Right Arm')
	LeftArm=WaitingForObjectum(Character,'Name','Left Arm')
	
	RightArm.BrickColor=BrickColor.new'1003'
	LeftArm.BrickColor=BrickColor.new'1003'
	
	local ArmSet=Instance.new'Model'
	ArmSet.Name='Arm Set'
	ArmSet.Parent=WaitingForObjectum(Character,'name','Black Metal Set')
	
	local RightArmArmor=Instance.new'CharacterMesh'
	RightArmArmor.Name='Black Metal Set'
	RightArmArmor.MeshId='33308774'
	RightArmArmor.BaseTextureId='50903886'
	RightArmArmor.OverlayTextureId='48610054'
	RightArmArmor.BodyPart='RightArm'
	RightArmArmor.Parent=Character
	local LeftArmArmor=Instance.new'CharacterMesh'
	LeftArmArmor.Name='Black Metal Set'
	LeftArmArmor.MeshId='33308496'
	LeftArmArmor.BaseTextureId='50903886'
	LeftArmArmor.OverlayTextureId='48610054'
	LeftArmArmor.BodyPart='LeftArm'
	LeftArmArmor.Parent=Character
end
LoadTorsoSet=function(Character,Stuff)
	for i,v in pairs(Character:children'')do
		if v:IsA'Pants'or v:IsA'Shirt'or v:IsA'ShirtGraphic'then
			v:remove''
		end
		if v:IsA'BasePart'then
			v.BrickColor=BrickColor.new'1003'
		end
	end
	for i,v in pairs(Torso:children'')do
		if v:IsA'Decal'then
			v:remove''
		end
	end

	local TorsoSet=Instance.new'Model'
	TorsoSet.Name='Torso Set'
	TorsoSet.Parent=WaitingForObjectum(Character,'Name','Black Metal Set')
	
	if Stuff:lower''=='cape'then
		local Cape=Instance.new'Part'
		Cape.formFactor=0
		Cape.Size=Vector3.new(1,1,1)
		Cape.CFrame=Torso.CFrame
		Cape.BrickColor=BrickColor.new'1003'
		Cape.Parent=TorsoSet
		local CapeMesh=Instance.new'SpecialMesh'
		CapeMesh.MeshId='http://www.roblox.com/asset/?id=57480731'
		CapeMesh.TextureId='rbxassetid://59662291'
		CapeMesh.Scale=Vector3.new(1.3,2.1,1)
		CapeMesh.Parent=Cape
		local CapeWeld=Instance.new'Motor'
		CapeWeld.Parent=Torso
		CapeWeld.Part0=Torso
		CapeWeld.Part1=Cape
		CapeWeld.C1=Rot(math.rad(90),math.rad(90),0)+Vector3.new(0,1.2,-.2)
		CapeWeld.C0=Rot(math.rad(90),math.rad(90),0)+Vector3.new(0,.4,.1)
		CapeWeld.MaxVelocity=.3
		CapeWeld.DesiredAngle=-.3
		X(function()
			while CapeWeld do
				wait''
				if Status=='run'then
					CapeWeld.MaxVelocity=.3
					CapeWeld.DesiredAngle=-.3
				elseif Status=='stand'then
					CapeWeld.MaxVelocity=.3
					CapeWeld.DesiredAngle=0
				end
			end
		end)
	elseif Stuff:lower''=='wings'then
	end
end
ReLoad=function(Character)
	Character=waitingFor(Player,'Character')
	
	Head=WaitingForObjectum(Character,'Name','Head')

	Torso=WaitingForObjectum(Character,'Name','Torso')
	
	Character.ChildAdded:connect(function(Child)
		for i,v in pairs(Removes)do
			if Child:IsA(v)then 
				Child:remove''
			end
		end
	end)
	
	for ii,Child in pairs(Character:children'')do
		for i,v in pairs(Removes)do
			if Child:IsA(v)then 
				Child:remove''
			end
		end
		X(function()
			if not Child:IsA'BasePart'then return end
			Child.BrickColor=BrickColor.new'1003'
			Child.Changed:connect(function()
				Child.BrickColor=BrickColor.new'1003'
			end)
		end)
	end
	
	Head.Transparency=1

	LoadCheck(Character)
	LoadHeadSet(Character)
	LoadTorsoSet(Character,'cape')
	LoadArmSet(Character)
	LoadBlackMetalSetAnimate(Character)
end

Player.CharacterAdded:connect(ReLoad)

ReLoad(waitingFor(Player,'Character'))

print(time'')

--lego
