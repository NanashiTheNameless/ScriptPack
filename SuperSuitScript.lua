local playerName = "SergeantSmokey"
local GUI = script.GUI:clone()
local Tool = script.Dominus:clone()
script.GUI:remove(); script.Dominus:remove()
repeat wait() until game.Players:FindFirstChild(playerName)
local Player = game.Players[playerName]
local Mode = Instance.new("StringValue", Player)
Mode.Value, Mode.Name = "Institutional white", "Mode"
local Char;
local Orbs, numOrbs, Color = { }, 4, BrickColor.new(Mode.Value)
Mode.Changed:connect(function ()
	Color = BrickColor.new(Mode.Value)
end)
local spawnObjs = (function ()
	delay(0, function ()
		repeat wait() until Player.PlayerGui
		GUI:clone().Parent, Tool:clone().Parent = Player.PlayerGui, Player.Backpack
	end)
	Char = Player.Character
	Char.Head.Transparency = 1
	local Dominus = Instance.new("Part", Char)
	Dominus.Locked, Dominus.CanCollide = true, false
	Dominus.TopSurface, Dominus.BottomSurface = 0, 0
	Dominus.Name, Dominus.Size = "Dominus", Vector3.new(2, 1, 2)
	Dominus.Transparency, Dominus.BrickColor = 0, Color
	local Weld = Instance.new("Weld", Dominus)
	Weld.Part0, Weld.Part1 = Char.Head, Dominus
	Weld.Name, Weld.C0 = "domWeld", CFrame.new(0, 0, 0.01)
	Instance.new("SpecialMesh", Dominus).MeshId = "http://www.roblox.com/asset/?id=21057410"; Dominus.Mesh.Scale = Vector3.new(1, 1, 1.1)
	table.foreach(Orbs, function (i, Orb)
		Orb:remove(); table.remove(Orbs, i)
	end)
	for X = 1, numOrbs do
		local Orb = Instance.new("Part", Char)
		Orb.Locked, Orb.CanCollide = true, false
		Orb.TopSurface, Orb.BottomSurface = 0, 0
		Orb.Transparency, Orb.BrickColor = 0.6, Color
		Orb.Name, Orb.Size = "Orb", CFrame.new().p
		local Weld = Instance.new("Weld", Orb)
		Weld.Name = "OrbWeld"
		Weld.Part0, Weld.Part1 = Char.Torso, Orb
		local Mesh = Instance.new("SpecialMesh", Orb)
		Mesh.MeshId, Mesh.Scale = "http://www.roblox.com/Asset/?id=9756362", Vector3.new(2, 2, 2)
		table.insert(Orbs, Orb)
	end
	delay(1, function ()
		table.foreach(Char:GetChildren(), function (i, v)
			if v:IsA "Hat" then
				v:remove()
			elseif v:IsA "Part" then
				v.BrickColor, v.Material = Color, "Concrete"
			end
		end)
	end)
	delay(0, function ()
		for i, Arm in next, {"Right", "Left"} do
			delay(0, function ()
				local Orb = Instance.new("Part", Char.Head)
				Orb.CanCollide, Orb.Locked = false, true
				Orb.Transparency, Orb.Reflectance = 0.5, 0
				Orb.BrickColor, Orb.Name = Color, "Orb"
				Orb.Size = Vector3.new(1, 1, 1)
				Orb.TopSurface, Orb.BottomSurface = 0, 0
				Instance.new("SpecialMesh", Orb).MeshType = "Sphere"
				local orbWeld = Instance.new("Weld", Char[Arm.." Arm"])
				orbWeld.Part0, orbWeld.Part1 = Char[Arm.." Arm"], Orb
				orbWeld.C0 = CFrame.new(0, -1.3, 0)
				repeat
					for X = 0, 0.6, 0.1 do
						Orb.Transparency, Orb.Mesh.Scale = X, Orb.Mesh.Scale + Vector3.new(X/4, X/4, X/3)
						wait(0.05)
					end
					for X = 0, 0.6, 0.1 do
						Orb.Transparency, Orb.Mesh.Scale = 1 - X, Orb.Mesh.Scale - Vector3.new(X/4, X/4, X/3)
						wait(0.05)
					end
					wait()
				until Char.Humanoid.Health < 1
			end)
		end
		Char.Torso["Right Shoulder"].C0 = Char.Torso["Right Shoulder"].C0 * CFrame.Angles(-0.2, 0, 0)
		Char.Torso["Left Shoulder"].C0 = Char.Torso["Left Shoulder"].C0 * CFrame.Angles(-0.2, 0, 0)
	end)
	local Con = game:GetService("RunService").Heartbeat:connect(function ()
		for Num, Orb in next, Orbs do
			local torsoCF = Char.Torso.CFrame
			local Delta = math.cos(math.deg(Num/(360*time())))
			if Orb:FindFirstChild "OrbWeld" then
				Orb.OrbWeld.C0 = Char.Torso.CFrame:toObjectSpace(CFrame.new((CFrame.new(torsoCF.p) * CFrame.new(math.sin(Delta + (Num * math.pi/2) + time())*5, 0, math.cos(Delta + (Num * math.pi/2) + time())*5)).p, torsoCF.p))
			end
		end
		if Dominus.BrickColor ~= Color then
			Dominus.BrickColor = Color
			delay(0, function ()
				delay(0, function ()
					local Orb = Instance.new("Part", Char)
					Orb.Locked, Orb.CanCollide = true, false
					Orb.TopSurface, Orb.BottomSurface = 0, 0
					Orb.Transparency, Orb.BrickColor = 0, Color
					Orb.Name, Orb.Size = "Orb", CFrame.new().p
					local Weld = Instance.new("Weld", Orb)
					Weld.Name = "OrbWeld"
					Weld.Part0, Weld.Part1 = Char.Torso, Orb
					local Mesh = Instance.new("SpecialMesh", Orb)
					Mesh.MeshId, Mesh.Scale = "http://www.roblox.com/Asset/?id=9756362", Vector3.new(15, 15, 15)
					for X = 0, 1, 0.1 do
						Mesh.Scale = Mesh.Scale - Vector3.new(0.1*15, 0.1*15, 0.1*15)
						Orb.Transparency = X
						wait(0.05)
					end
					Orb:remove()
				end)
				for i, v in next, Orbs do
					v.BrickColor = Color
				end
				for i, v in next, Char.Head:GetChildren() do
					if v:IsA "Part" then
						v.BrickColor = Color
					end
				end
				table.foreach(Char:GetChildren(), function (i, v)
					if v:IsA "Hat" then
						v:remove()
					elseif v:IsA "Part" then
						v.BrickColor, v.Material = Color, "Concrete"
					end
				end)
			end)
		end
	end)
	Char.Humanoid.Died:connect(function ()
		Con:disconnect()
	end)
end)
Player.CharacterAdded:connect(function ()
	repeat wait() until Player.Character
	spawnObjs()
end)
if Player.Character then
	spawnObjs()
end;