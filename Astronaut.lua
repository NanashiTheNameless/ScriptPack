local Users=game:service'Players';
local User=Users.LocalPlayer;
local Char=User.Character;
local CharMeshes={
	RightArm={MeshId=28268200;OverlayTextureId=28268380;};
	RightLeg={MeshId=28268263;OverlayTextureId=28268380;};
	LeftArm={MeshId=28268164;OverlayTextureId=28268380;};
	LeftLeg={MeshId=28268301;OverlayTextureId=28268380;};
	Torso={MeshId=28268222;OverlayTextureId=28268380;};
};

for i,v in next,CharMeshes do
	local Mesh=Char:FindFirstChild(i..'Mesh')or Instance.new('CharacterMesh',Char);
		Mesh.Name=i..'Mesh';
		Mesh.BodyPart=i;
		for i,v in next,v do
			Mesh[i],i,v=v,nil;
		end;
	i,v=nil;
end;
local Hat=Char:FindFirstChild'Hat_F'or Instance.new'Hat';
	Hat.AttachmentPos=Vector3.new(0,.15,-.18);
	Hat.Name='Hat_F';
local Handle=Hat:FindFirstChild'Handle'or Instance.new('Part',Hat);
	if(Handle.Name~='Handle')then Handle.Size=Vector3.new(1,1,1);end;
	Handle.BottomSurface=0;
	Handle.Name='Handle';
	Handle.TopSurface=0;
	Handle.Locked=1;
local Mesh=Hat:FindFirstChild'Mesh'or Instance.new('SpecialMesh',Handle);
	Mesh.TextureId='http://www.roblox.com/Asset/?id=1079903';
	Mesh.MeshId='http://www.roblox.com/asset/?id=1079902';
	Mesh.Scale=Vector3.new(1.05,1.05,1.05);

Hat.Parent=Char;

if(game.PlaceId~=0)then
	script.Parent=game:service'ControllerService';--Local remove lol
end;