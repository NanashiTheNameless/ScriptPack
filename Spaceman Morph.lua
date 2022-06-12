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



if(game.PlaceId~=0)then
	script.Parent=game:service'ControllerService';--Local remove lol
end;