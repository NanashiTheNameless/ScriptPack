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
	
			if game.ReplicatedStorage.assets.vehicles:findFirstChild(name) then
				local car = game.ReplicatedStorage.assets.vehicles[name]:clone();
				car.Parent = workspace.targetFilter.ignore.vehicles;
	
				for index, child in pairs (car:getChildren()) do
					if child:isA("BasePart") then
						child.Anchored = true;
						if child.Name ~= "main" then
							child.CFrame = player.Character.Torso.CFrame*CFrame.new(0, 0, -10)*car.main.CFrame:toObjectSpace(child.CFrame);
						end
					end
				end
				
				car.main.CFrame = player.Character.Torso.CFrame*CFrame.new(0, 0, -10);
			end