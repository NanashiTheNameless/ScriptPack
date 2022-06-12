function prop(part, parent, collide, shap, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.Shape = shap
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

gui = nil
weld = nil
ball = nil

function makegui(player,bul)
	if gui ~= nil then
		gui:remove()
		gui = nil
	end
	if weld ~= nil then
		weld:remove()
		weld = nil
	end
	bul.CanCollide = false
	local to = player.Character.Torso
	local we = Instance.new("Weld",to)
	we.Part0 = we.Parent
	we.Part1 = bul
	we.C1 = CFrame.new(0,1.5,3.5)
	weld = we
	local sc = Instance.new("ScreenGui",player.PlayerGui)
	sc.Name = "SoccerBall"
	local fra = Instance.new("Frame",sc)
	fra.Size = UDim2.new(0.15,0,0.2,0)
	fra.Position = UDim2.new(0,0,0.25,0)
	local kick = Instance.new("TextButton",fra)
	kick.Size = UDim2.new(1,0,0.33,0)
	kick.Position = UDim2.new(0,0,0,0)
	kick.Text = "Kick"
	kick.MouseButton1Down:connect(function()
		gui:remove()
		gui = nil
		weld:remove()
		weld = nil
		bul.CanCollide = true
		wait(0.06)
		bul.Velocity = to.CFrame.lookVector * 90 + Vector3.new(0,50,0)
	end)
	local pass = Instance.new("TextButton",fra)
	pass.Size = UDim2.new(1,0,0.33,0)
	pass.Position = UDim2.new(0,0,0.33,0)
	pass.Text = "Pass"
	pass.MouseButton1Down:connect(function()
		pass:remove()
		kick:remove()
		local pos = 150
		for _,v in pairs(game.Players:GetPlayers()) do
			if v.Character ~= nil and v.Name ~= player.Name then
			local tor = v.Character:findFirstChild("Torso")
				if tor ~= nil then
					local button = Instance.new("TextButton",fra)
					button.Size = UDim2.new(0,150,0,25)
					button.Position = UDim2.new(0,0,0,pos)
					button.Text = v.Name
					button.MouseButton1Down:connect(function()
						to.CFrame = CFrame.new(to.Position, tor.Position)
						gui:remove()
						gui = nil
						weld:remove()
						weld = nil
						bul.CanCollide = true
						wait(0.06)
						bul.Velocity = to.CFrame.lookVector * 55 + Vector3.new(0,30,0)
					end)
					pos = pos + 25
				end
			end
		end
	end)
	local drop = Instance.new("TextButton",fra)
	drop.Size = UDim2.new(1,0,0.33,0)
	drop.Position = UDim2.new(0,0,0.66,0)
	drop.Text = "Drop"
	drop.MouseButton1Down:connect(function()
		gui:remove()
		gui = nil
		weld:remove()
		weld = nil
		bul.CanCollide = true
	end)
	gui = sc
end

function makeball()
if gui ~= nil then
	gui:remove()
	gui = nil
end
if weld ~= nil then
	weld:remove()
	weld = nil
end
ball = nil
bal = Instance.new("Part")
prop(bal,workspace,true,"Ball",0,0,2.6,2.6,2.6,"White",false,"Custom")
bal.CFrame = game.Players.xSoulStealerx.Character.Torso.CFrame * CFrame.new(0,-1,-15)
bal.Friction = 1
ball = bal
ball.Touched:connect(function(hit)
	local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
	if plr ~= nil then
		makegui(plr,ball)
	end
end)
ball.Changed:connect(function(prop)
	if prop == "Parent" then
		if ball.Parent == nil then
			makeball()
		end
	end
end)
end
makeball()
