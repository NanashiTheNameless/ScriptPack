--Some nasty seizure scripts (By Rufus14)
            screen = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
            frame = Instance.new("Frame", screen)
            frame.Size = UDim2.new(1,0 , 1,0)
            frame.BackgroundTransparency = 0.4
            frame.BackgroundColor3 = Color3.new(1,0,0)
	        game.Players.LocalPlayer.Character.Torso["Left Shoulder"].C0 = game.Players.LocalPlayer.Character.Torso["Left Shoulder"].C0 * CFrame.Angles(0,0,math.random(-1,1))
			game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 = game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 * CFrame.Angles(0,0,math.random(-1,1))
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
            local SEIZURETIME = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            SEIZURETIME.SoundId = "rbxassetid://171914461"
            SEIZURETIME.Looped = true
            SEIZURETIME:Play()
            SEIZURETIME.Volume = 50
            game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"SEIZURE TIME!!!","Red")
            local velocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Torso)
            velocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            velocity.Velocity = Vector3.new(game.Players.LocalPlayer.Character.Torso.CFrame.lookVector,game.Players.LocalPlayer.Character.Torso.CFrame.lookVector ,game.Players.LocalPlayer.Character.Torso.CFrame.lookVector)
            velocity:destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = CFrame.Angles(-90, 0, 0)
            print(game.Players.LocalPlayer.Character.Head.Parent.Name)
            while true do
	            wait()
	            Math = math.random(1,3)
	            if Math == 1 then
		        frame.BackgroundColor3 = Color3.new(1,0,0)
	            end
	            if Math == 2 then
		        frame.BackgroundColor3 = Color3.new(0,1,0)
	            end
	            if Math == 3 then
		        frame.BackgroundColor3 = Color3.new(0,0,1)
	            end
	            game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
	            game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"SEIZURE TIME!!!","Red")
	            game.Players.LocalPlayer.Character.Humanoid.Health = math.random(1,100)
	            game.Players.LocalPlayer.Character.Torso.Neck.C0 = game.Players.LocalPlayer.Character.Torso.Neck.C0 * CFrame.Angles(math.random(-1,1),0,0)
	            game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 * CFrame.Angles(0,0,math.random(-1,1))
			    game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 * CFrame.Angles(0,0,math.random(-1,1))
	            game.Players.LocalPlayer.Character.Torso["Left Shoulder"].C0 = game.Players.LocalPlayer.Character.Torso["Left Shoulder"].C0 * CFrame.Angles(0,0,math.random(-1,1))
			    game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 = game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 * CFrame.Angles(0,0,math.random(-1,1))
			end