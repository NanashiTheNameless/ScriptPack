local mouse=game.Players.LocalPlayer:GetMouse()
local torso=workspace:WaitForChild(game.Players.LocalPlayer.Name).Torso
local killing=false
mouse.Button1Down:connect(function()

		local target=mouse.Target
		if target and target.Parent:FindFirstChild"Torso" and not killing then
			killing=true
			local gyro=Instance.new"BodyGyro"
			
			gyro.Parent=torso
			gyro.MaxTorque=Vector3.new(0, math.huge, 0)

			torso["Right Shoulder"].Part1=nil
			local w=Instance.new"Weld"
			w.Parent=torso
			w.Part0=torso
			w.Part1=torso.Parent["Right Arm"]
			w.C0=CFrame.new(2,.5,0)
			w.C1=CFrame.Angles(0, 0, -math.pi/2)
			local weld=Instance.new"Weld"
			local rarm=torso.Parent["Right Arm"]
			local ot=target.Parent:FindFirstChild"Torso"
			gyro.CFrame=CFrame.new(torso.CFrame.p, ot.CFrame.p)*CFrame.Angles(0, math.pi/2, 0)

			ot.Parent.Humanoid.PlatformStand=true
			local op=ot.Parent:GetModelCFrame().p
			for _, p in ipairs(ot.Parent:GetChildren()) do
				if p:IsA"Part" then
					p.CanCollide=false
					p.Anchored=true
				end
			end
			for i=0, .95, wait() do
			ot.Parent:MoveTo(op:lerp(torso.Position, i))
			wait()
			end
			for _, p in ipairs(ot.Parent:GetChildren()) do
				if p:IsA"Part" then
					p.CanCollide=true
					p.Anchored=false
				end
			end
			local mcon
			mcon=mouse.Move:connect(function()
				gyro.CFrame=CFrame.new(torso.CFrame.p, mouse.Hit.p)*CFrame.Angles(0, math.pi/2, 0)
			end)
			weld.Parent=ot
			weld.Part0=ot
			weld.Part1=rarm
			weld.C1=CFrame.new(0, -1, 0)
			weld.C0=CFrame.Angles(0, 0, math.pi/2)*CFrame.new(.5, 0, 0)
			local con
			con=mouse.Button1Down:connect(function()
				con:disconnect()
				mcon:disconnect()
				gyro:Destroy()
				killing=false
				weld:Destroy()
				w:Destroy()
				torso["Right Shoulder"].Part1=rarm
				ot.Velocity=CFrame.Angles(0, math.pi/2, 0)*ot.CFrame.lookVector*-200
				coroutine.wrap(function()
					wait(0.5)
					ot.Parent.Humanoid.Health=0
				end)()
			end)
		end
end)
--w.C1=w.C1*CFrame.Angles(0, .5, .5)