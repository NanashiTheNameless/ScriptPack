			local hub = game.CoreGui.skryptec_hub
			local dzrbottom = hub.DeadzoneBottomFrame
			local dzrvaluee = dzrbottom.DZRValue.Text
			local dzrtypee = dzrbottom.DZRType.Text
			local GUI = game.StarterGui.GUI
			local player = game.Players.LocalPlayer
			local user = player.Character;
			local cam = workspace.CurrentCamera;
			local count = tonumber(dzrvaluee);
			local name = dzrtypee; 
			local model = false;
			
			for index, child in pairs(game.ReplicatedStorage.assets.items:getChildren()) do
				if string.lower(child.Name) == "item"..string.lower(name) then
					model = true;
					name = child.Name;
				end
			end
	
			if count and model then
				for step = 1, count do
					local hit, position = workspace:FindPartOnRayWithIgnoreList(Ray.new((user.Torso.CFrame*CFrame.new(0, 0, -2.5)).p, Vector3.new(0, -30, 0)), {cam, workspace.targetFilter.ignore});
					local area = CFrame.new(position+Vector3.new(0, 1, 0))*CFrame.Angles(0, math.rad(math.random(0, 359)), 0);
	
					local drop = game.ReplicatedStorage.assets.items[name]:clone();
	
					Instance.new("BoolValue", drop).Name = "given";
					drop.Parent = workspace.targetFilter.ignore.items;
					local origin = drop.main.CFrame;
					for index, child in pairs(drop:getChildren()) do
						if child:isA("BasePart") then
							child.Anchored = true;
							child.CanCollide = false;
	
							child.CFrame = area*origin:toObjectSpace(child.CFrame);
							
							if child.Name == "light" or child.Name == "laser" then
								child:Destroy();
							end
						end
					end
				end
			end