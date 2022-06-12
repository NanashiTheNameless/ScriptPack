

local User=Game:service'Players'.LocalPlayer;
local Char=User.Character or User.CharacterAdded:wait();

local StarterPos=Vector3.new(0,4,0);

local Round=30;
local Radius=5;
local Asd=Round/5;

local P={};
local Num=0;

for i=0,Round do
	
	pcall(function()
		Workspace['Part_'..i]:Destroy();
	end);

	local Rad=math.rad(360/Round*i);
	local Pos=Vector3.new(
		math.cos(Rad)*Radius,
		4,
		math.sin(Rad)*Radius
	);
	if(i~=0)then Num=Num+1;
		if(Num==Asd)then
			Num=0;
			P[#P+1]=Pos;
		end;
		local Brick=Instance.new'Part';
			Brick.Anchored=true;
			Brick.formFactor=3;
			Brick.Size=Vector3.new();
			Brick.CFrame=CFrame.new(StarterPos,Pos)*CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2);
			Brick.BrickColor=BrickColor.new(1003);
			Brick.Parent=Workspace;
			Brick.Name='Part_'..i;
		local Mesh=Instance.new('BlockMesh',Brick);
			Mesh.Scale=Vector3.new(1,1,(StarterPos-Pos).Magnitude*5)+Vector3.new(0,math.random()/10,0);
	end;
	
	StarterPos=Pos;
end;

for i,v in next,{{1;4;};{1;3;};{2;4;};{2;5;};{3;5;};}do --Make better...
	pcall(function()
		Workspace['Part_p'..i]:Destroy();
	end);
	local StarterPos=P[v[1]];
	local Pos=P[v[2]];
	local Brick=Instance.new'Part';
		Brick.Anchored=true;
		Brick.formFactor=3;
		Brick.Size=Vector3.new();
		Brick.CFrame=CFrame.new(StarterPos,Pos)*CFrame.new(0,0,-(StarterPos-Pos).Magnitude/2);
		Brick.BrickColor=BrickColor.new(21);
		Brick.Parent=Workspace;
		Brick.Name='Part_p'..i;
	local Mesh=Instance.new('BlockMesh',Brick);
		Mesh.Scale=Vector3.new(1,1,(StarterPos-Pos).Magnitude*5)+Vector3.new(0,math.random()/10,0);
end;