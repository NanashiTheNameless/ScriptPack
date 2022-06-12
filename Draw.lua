if script == nil then return end


ModelName = "Draw"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false


function Weld(x, y)
	local Weld = Instance.new("Weld")
	Weld.Part0 = x
	Weld.Part1 = y
	Weld.C0 = x.CFrame:inverse() * CFrame.new(x.Position)
	Weld.C1 = y.CFrame:inverse() * CFrame.new(x.Position)
	Weld.Parent = x
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	local Start = Mouse.Hit.p
	while Button1Down == true do
		local Magnitude = (Start - Mouse.Hit.p).magnitude
		if (Mouse.Target:IsA("BasePart")) then
			local Draw = Instance.new("Part", Player.Character)
			Draw.Name = "Draw"
			Draw.TopSurface = 0
			Draw.BottomSurface = 0
			Draw.Anchored = true
			Draw.CanCollide = false
			Draw.FormFactor = "Custom"
			Draw.Size = Vector3.new(Magnitude, 0.2, 0.2)
			Draw.CFrame = CFrame.new(Start, Mouse.Hit.p) * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(Magnitude / 2, Draw.Size.z / 2,0)
			Start = Mouse.Hit.p
		end
		wait()
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "q" then
		for _, Part in pairs(Player.Character:GetChildren()) do
			if Part.Name == "Draw" then
				Part:Remove()
			end
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	Selected = true
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	Button1Down = false
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end