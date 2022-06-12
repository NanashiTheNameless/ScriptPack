_force_insert=function(id,place)
	place=place or
			Instance.new('Model',game:service'InsertService');

	local c=game:GetObjects('rbxassetid://'..id);
	for i=1,#c do
		c[i].Parent=place;
	end;
end;

---------------------------------------------------------------

_force_insert(108955943);