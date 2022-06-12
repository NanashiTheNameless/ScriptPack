--table.foreach(script:children'',function(asd,_asd_) do if(_asd_:IsA'StringValue')then _asd_.Value=("\t\n You dare steal this?!?!?!? Eff off nb "):rep(1000) end;end;end);
--[[
		Local Script;
]]
local User=game.Players.LocalPlayer;
local Shield=Instance.new'Part';
Shield.Transparency=0.7;
Shield.Anchored=true
Shield.Size=Vector3.new(7.5,7.5,7.5)
Shield.CanCollide=false
Shield.BrickColor=BrickColor.random()
Shield.Shape='Ball';
local Selection=Instance.new'SelectionBox';
Selection.Parent=Shield
Selection.Adornee=Shield
Selection.Color=Shield.BrickColor
fling=function(mod,dist,asd)
	for i=1,#dist,0.1 do
		local old=mod:GetModelCFrame().p;
		add=Vector3.new()
		addd={x=0,y=0,z=0};
		addd[asd]=i
		add=Vector3.new(addd.x,addd.y,addd.z);
		asd=CFrame.new(old+add);
		old:MoveTo(asd.p)
		wait''
	end
end;
Shield.Touched:connect(function(asd)	
	if not asd:IsDescendantOf(User.Character) then
		if game.Players:playerFromCharacter(asd.Parent) then
			--fling(asd.Parent);
			coroutine.wrap(function()
				local mod
				if asd.Parent:findFirstChild'Torso' or asd.Name=='Torso' then
					mod=(asd.Name~='Torso' and asd.Parent.Torso) or asd
				else
					return
				end
				for i=1,4,0.1 do wait()
					mod.CFrame=CFrame.new(mod.CFrame.p+Vector3.new(0,(1.1*i),(1.1*i)))
				end
			end)()
		end
	end
end)
table.foreach(User.Character:children(),function(asd,item)
	if item:IsA'BasePart' then
		item.Touched:connect(function(asd)
			if not asd:IsDescendantOf(User.Character) then
				if game.Players:playerFromCharacter(asd.Parent) then
					asd:BreakJoints''
				end
			end
		end)
	end
end);
Shield.Parent=User.Character
game:service'RunService'.Stepped:connect(function()
	if User.Character then
		Shield.CFrame=User.Character.Torso.CFrame;
		Shield.BrickColor=BrickColor.random();
	end
end)
