if script == nil then return end


Player = game.Players:FindFirstChild("DarkShadow6")
Name = "Emote"
selected = false
Button1Down = false
mode = 1
modeText = "None"


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	Joint = Instance.new("Motor")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	Joint.MaxVelocity = 0.1
	if Limb == 1 then
		C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Joint.Name = "Right Hip 2"
	elseif(Limb == 4) then
		C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.C0 = C0
	Joint.C1 = C1
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Joints[Limb].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Joints[Limb].C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Joints[Limb].C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
	elseif(Limb == 4) then
		Joints[Limb].C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Joints[Limb].C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end 
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone() 
	Character.Animate:Remove() 
	Animate.Parent = Character 
end


function Weld(x, y)
	weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character ~= nil and Button1Down == false then
		if mode == 1 then
			mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
			Button1Down = true
			local part0 = Player.Character:FindFirstChild("Torso")
			local part1 = Player.Character:FindFirstChild("Head")
			if part0 == nil or part1 == nil then return end
			local weld = part0:FindFirstChild("Neck")
			if weld == nil then return end
			local weldC1 = CFrame.new()
			while Button1Down == true and part0 ~= nil and part1 ~= nil and weld ~= nil and mode == 1 do
				local pos = (part0.CFrame * CFrame.new(0, 1.5, 0)).p
				weld.C0 = CFrame.new(0, 1, 0)
				weld.C1 = (((CFrame.new(pos, mouse.Hit.p) - pos):inverse()) * (part0.CFrame - part0.Position)) * CFrame.new(0, -0.5, 0)
				weldC1 = weld.C1
				wait()
			end
			for i = 0.1, 1, 0.05 do
				weld.C1 = weldC1 / CFrame.new(i, i, i)
				wait()
			end
		elseif mode == 2 then
			mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
			Button1Down = true
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.75, Player.Character)
			SetSpeed(2, 0.75, Player.Character)
			SetAngle(1, math.rad(180), Player.Character)
			SetAngle(2, math.rad(180), Player.Character)
			while Button1Down == true and mode == 2 do
				wait()
			end
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetAngle(2, 0, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
		end
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	Button1Down = false
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" then
		mode = mode - 1
		if mode < 0 then
			mode = 2
		end
	end
	if key == "e" then
		mode = mode + 1
		if mode > 2 then
			mode = 0
		end
	end
	if mode == 1 then
		modeText = "Look"
	elseif mode == 2 then
		modeText = "Surrender"
	else
		modeText = "None"
	end
	script.Parent.Name = modeText
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	script.Parent.Name = modeText
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	script.Parent.Name = Name
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end