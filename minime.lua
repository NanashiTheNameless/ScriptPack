Functions={};
function print_to(player, ...)
	if player then
	local o={...}
	local oo={}
	for i, v in ipairs(o) do
		oo[i]=tostring(v)
	end
	if type(player)=="string" then
		player=getPlayer(player)
		if not player then
			return
		end
	end
	local str = Instance.new('StringValue',player)
	str.Name = 'SB_Output:Output'
	str.Value = game:GetService('HttpService'):JSONEncode{'Print',table.concat(oo, "\t")}	
	end
end

Functions.NewLocalScript=newLocalScript or script:FindFirstChild'JumpScript'and function(Text,Parent)
	local Script=script.JumpScript:clone();
	local Source=Script:FindFirstChild'Source';
		Source.Value=Text;
		Script.Parent=Parent;
		Script.Disabled=false;
	return Script;
end;
Functions.Children=function(Object,Function)
	for i,v in next,Object:GetChildren()do
		Functions.Children(v,Function);
		Function(v);
	end;
end;
Functions.GetBaseSize=function(Object)
	local This={};
	if(Object:IsA'Part')then
		This.Value0='Base/Size/Vector3';
	elseif(Object.className=='SpecialMesh')then
		This.Value0='Base/Scale/Vector3';
	elseif(Object.className=='Weld'or Object.className=='Motor'or Object.className=='Motor6D')then
		This.Value0='Base/C0/CFrame';
		This.Value1='Base/C1/CFrame';
	end;

	for i=0,1 do
		if(This['Value'..i]~=nil)then
			local Value;
			local Value0=This['Value'..i];
			Value=Object:FindFirstChild(Value0);
			if(Value==nil)then
				Value=Instance.new(Value0:match'Base/%w+/(%w+)'..'Value',Object)
					Value.Value=Object[Value0:match'Base/(%w+)/'];
					Value.Name=Value0;
			end;
			This['Value'..i]=Value;
		end;
	end;

	return This.Value0.Value,This.Value1~=nil and This.Value1.Value or nil;
end;
Functions.SetBlock=function(Object,Boolean)
	local BlockItem=Object:FindFirstChild'ResizeBlock'or Instance.new('BoolValue',Object);
		BlockItem.Name='ResizeBlock';
		BlockItem.Value=Boolean;
end;
Functions.GetBlock=function(Object)
	local BlockItem=Object:FindFirstChild'ResizeBlock';
	return BlockItem~=nil and BlockItem.Value or false;
end;
Functions.ResizeCharacter=function(Character,Size)
	local Welds={};

	local Torso=Character:FindFirstChild'Torso';

	Functions.Children(Character,function(Object)
		local C=Object.className;
		if(C=='Weld'or C=='Motor'or C=='Motor6D')then
			local C0,C1=Functions.GetBaseSize(Object);
			local R00,R01,R02,R03,R04,R05,R06,R07,R08,R09,R10,R11=C0:components();
				C0=CFrame.new(R00*Size,R01*Size,R02*Size,R03,R04,R05,R06,R07,R08,R09,R10,R11);
			local R00,R01,R02,R03,R04,R05,R06,R07,R08,R09,R10,R11=C1:components();
				C1=CFrame.new(R00*Size,R01*Size,R02*Size,R03,R04,R05,R06,R07,R08,R09,R10,R11);
			Welds[#Welds+1]={
				Parent=Object.Parent;
				Part0=Object.Part0;
				Part1=Object.Part1;
				Weld=Object;
				C0=C0;
				C1=C1;
			};
		elseif(C=='ShirtGraphic'or C=='Pants'or C=='Shirt')then
			Object.Parent=nil;
		elseif(C=='CharacterMesh')then
			local Mesh=Instance.new('SpecialMesh',Character:FindFirstChild(Object.BodyPart:gsub('%u',function(String)return' '..String;end):sub(2)));
			if(Mesh.Parent~=nil)then
				Mesh.TextureId='http://roblox.com/Asset/?id='..Object.BaseTextureId;
				Mesh.MeshId='http://roblox.com/Asset/?id='..Object.MeshId;
				Object.Parent=nil;
				Object=Mesh;
			end;
		end;
		if(Object.className=='SpecialMesh'and Object.MeshType==Enum.MeshType.FileMesh)then
			Object.Scale=Functions.GetBaseSize(Object)*Size;
		end;
	end);

	for i=1,#Welds do
		local Data=Welds[i];

		Data.Weld.Part0=nil;
		Data.Weld.Part1=nil;

		for i=0,1 do
			Data.Weld['C'..i]=Data['C'..i];

			if(Data['Part'..i]~=nil)then
				local Part=Data['Part'..i];
				if(Part~=nil and Functions.GetBlock(Part)==false)then
					Part.formFactor=3;
					Part.Anchored=true;
					Part.Size=Functions.GetBaseSize(Part)*Size;
					Part:BreakJoints();
					Functions.SetBlock(Part,true);
				end;
			end;
		end;
	end;
	for i=1,#Welds do
		local Data=Welds[i];

		Data.Weld.Parent=Data.Parent;
		Data.Weld.Part0=Data.Part0;
		Data.Weld.Part1=Data.Part1;

		for i=0,1 do
			local Part=Data['Part'..i];
			if(Part~=nil)then
				Part.Anchored=false;
				Functions.SetBlock(Part,false);
			end;
		end;
	end;

	if(Torso~=nil)then
		if(Character:FindFirstChild'LegHelper'==nil)then
			local LegHelper=Instance.new('Part',Character);
				LegHelper.formFactor=3;
				LegHelper.Transparency=1;
				LegHelper.CFrame=Torso.CFrame;
				LegHelper.Size=Functions.GetBaseSize(Torso);
					Functions.GetBaseSize(LegHelper);
				LegHelper.Size=Functions.GetBaseSize(LegHelper)*Size;
				LegHelper:BreakJoints();
			local Weld=Instance.new('Weld',Torso);
				Weld.Part0=Torso;
				Weld.Part1=LegHelper;
				Weld.C0=CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);
				Weld.C1=CFrame.new(1,1,0,0,0,1,0,1,0,-1,-0,-0);

			local C0,C1=Functions.GetBaseSize(Weld);

			local R00,R01,R02,R03,R04,R05,R06,R07,R08,R09,R10,R11=C0:components();
				Weld.C0=CFrame.new(R00*Size,R01*Size,R02*Size,R03,R04,R05,R06,R07,R08,R09,R10,R11);
			local R00,R01,R02,R03,R04,R05,R06,R07,R08,R09,R10,R11=C1:components();
				Weld.C1=CFrame.new(R00*Size,R01*Size,R02*Size,R03,R04,R05,R06,R07,R08,R09,R10,R11);
		end;
		for i,v in ipairs(Character:GetChildren())do
			if(v.ClassName=='Humanoid')then
				v.WalkSpeed=16*Size*2;
				
				
				game.Players:GetPlayerFromCharacter(Character).PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="x/game.Players.LocalPlayer.Character.Humanoid.CameraOffset=Vector3.new(0,-6*"..Size..", 0);game.Players.LocalPlayer.Character.Humanoid.JumpPower=50*"..Size..";workspace.CurrentCamera.FieldOfView=70*"..Size
				break;
			end;
		end;
		Torso.CFrame=Torso.CFrame+Vector3.new(0,Torso.Size.Y*1.6);
	end;
end;
function attachCommands(p)
	p.Chatted:connect(function(msg)
		if msg=="minime" then
			print_to(p, "running tiny character free model (except for the camera by grub)\n say \"fixcam\" to fix your camera afterwards")
	Functions.ResizeCharacter(p.Character, .2)
	local con
	con=p.CharacterAdded:connect(function(char)
	p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="x/workspace.CurrentCamera.FieldOfView=70"
	con:disconnect()
	end)
	elseif msg=="fixcam" then
		print_to(p, "fixing camera")
			p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value="x/workspace.CurrentCamera.FieldOfView=70"
		end
	end)
end
for _, p in ipairs(game.Players:GetPlayers()) do
		attachCommands(p)
end
game.Players.PlayerAdded:connect(attachCommands)