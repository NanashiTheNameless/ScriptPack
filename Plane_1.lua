wait'';
local Player=game.Players.LocalPlayer
local Bin=Instance.new'HopperBin'
	Bin.Name='?'
	Bin.Parent=Player.Backpack

script.Parent=Bin

Run=Instance.new'BoolValue'
Speed=Instance.new'NumberValue'

Speed.Value=40

Part=function(Size,BrickColor_,Parent)
	local Part=Instance.new'Part'
		Part.formFactor=3
		Part.Locked=3
		Part.BottomSurface=0
		Part.TopSurface=0
		Part.CanCollide=false
		Part.Size=Size
		Part.BrickColor=BrickColor.new(BrickColor_)
		Part.Parent=Parent
	return Part
end
Weld=function(Part0,Part1,C0,C1)
	Part1.CFrame=Part0.CFrame
	local Weld=Instance.new('Motor6D',Part0)
		Weld.Part0=Part0
		Weld.Part1=Part1
		pcall(function()Weld.C0=C0 end)
		pcall(function()Weld.C1=C1 end)
	return Weld
end

Ray.KeyCmds={
	f=function()end;
	v=function()
		Run.Value=false
		Velocity.velocity=Vector3.new(0,.156)
	end;
	x=function()
		Char:BreakJoints''
		for i,v in pairs(Head:children'')do
			v:remove''
		end
	end;
}
if not Ray.Tails or game.PlaceId==0 then
	Ray.Tails={}
end

PutTail=function()
	local StartPos=Head.Position
	coroutine.wrap(function()
		game:service'RunService'.Stepped:wait''
		local Tail=Ray.Tails[1]
		if not Tail then
			Tail=Part(Vector3.new(.1,.1,.2),'1003')
			Tail.Anchored=0
			Instance.new('BlockMesh',Tail)
		else
			table.remove(Ray.Tails,1)
		end
		Tail.CFrame=CFrame.new((StartPos+Head.Position)/2,Head.Position)
		Tail.Mesh.Scale=Vector3.new(1,1,(StartPos-Head.Position).Magnitude*5) 
		Tail.Parent=Player.Character.Body
		for i=0,1,.1 do
			--Tail.Transparency=i
			game:service'RunService'.Stepped:wait''
		end
		Tail.Parent=nil
		table.insert(Ray.Tails,Tail)
	end)''
end

Bin.Selected:connect(function(Mouse)
	Bin.Parent=nil
	Mouse.Icon='http://www.roblox.com/Asset/?id=26956024'
	
	Char=Player.Character
	Torso=Char.Torso
	Head=Char.Head
	Human=Char.Humanoid
	
	for i,v in pairs(Player.Character:children'')do
		if v:IsA'Hat'or v:IsA'BaseScript'then v:remove''end
		if v.Name:match'Left'or v.Name:match'Right'then v:remove''end
		if v:IsA'BasePart'then v.Transparency=1 end
	end
	for i,v in pairs(Head:children'')do
		v:remove''
	end
	for i,v in pairs(Torso:children'')do
		if v.Name~='Neck'then
			v:remove''
		end
	end
	
	Torso.Neck.C0=CFrame.new(0,0,0)
	Torso.Neck.C1=CFrame.new(0,0,0)
	
	Human.PlatformStand=0
	
	if Char:FindFirstChild'Body'then
		Char.Body:remove''
	end
	
	local Body=Instance.new('Model',Char)
		Body.Name='Body'
	local Wing1=Part(Vector3.new(2,.2,.6),'1003',Body)
		Weld(Head,Wing1,CFrame.new(-1,0,0),CFrame.Angles(0,math.rad(-45),0))
	local Wing2=Part(Vector3.new(2,.2,.6),'1003',Body)
		Weld(Head,Wing2,CFrame.new(1,0,0),CFrame.Angles(0,math.rad(45),0))
	Head2=Part(Vector3.new(1,.24,1),'1002',Body)
		Weld(Head,Head2,CFrame.new(0,0,-.75),CFrame.Angles(0,math.rad(45),0))
	
	Velocity=Instance.new('BodyVelocity',Head)
		Velocity.velocity=Vector3.new(0,.156)
	Gyro=Instance.new('BodyGyro',Head)
	
	Mouse.KeyDown:connect(function(Key)
		pcall(Ray.KeyCmds[Key])
	end)
	Mouse.Button1Down:connect(function()
		Run.Value=true
		Gyro.maxTorque=Vector3.new(99999999,99999999,99999999)
		Gyro.cframe=CFrame.new(Torso.Position,Mouse.Hit.p)*CFrame.Angles(math.rad(0),0,0)
		Torso.CFrame=CFrame.new(Torso.Position,Mouse.Hit.p)*CFrame.Angles(math.rad(0),0,0)
		Velocity.maxForce=Vector3.new(99999999,99999999,99999999)
		Velocity.velocity=CFrame.new(Torso.Position,Mouse.Hit.p).lookVector*Speed.Value
	end)
	Mouse.Move:connect(function()
		if not Run.Value then return end
		Gyro.cframe=CFrame.new(Torso.Position,Mouse.Hit.p)*CFrame.Angles(math.rad(0),0,0)
		Torso.CFrame=CFrame.new(Torso.Position,Mouse.Hit.p)*CFrame.Angles(math.rad(0),0,0)
		Velocity.velocity=CFrame.new(Torso.Position,Mouse.Hit.p).lookVector*Speed.Value
	end)
	Human.Died:connect(function()
		Run.Value=false
	end)
	while Player.Character:FindFirstChild'Body'and Mouse and Body.Parent do
		while not Run.Value do Run.Changed:wait''end
		PutTail''
		game:service'RunService'.Stepped:wait''
	end
end)