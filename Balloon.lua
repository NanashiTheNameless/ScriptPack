--Balloon Fight Balloon for flight
plyr = game.Players.LocalPlayer
char = plyr.Character
torso = char.Torso
mouse = plyr:GetMouse()
Run = game:service'RunService'
deb = game:service'Debris'
ra = char["Right Arm"]
la = char["Left Arm"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
local platform = false
local idle = true
iliketrains = {}


part1 = Instance.new("Part", char)
part1.FormFactor = "Symmetric"
part1.Size = Vector3.new(1, 3, 1)
part1.TopSurface = 0
part1.BottomSurface = 0
part1:BreakJoints()
special = Instance.new("SpecialMesh", part1)
special.MeshId = "http://www.roblox.com/asset/?id=25498565"
special.TextureId = "http://www.roblox.com/asset/?id=26725707"
special.Scale = Vector3.new(2, 2, 2)
w = Instance.new("Weld", char)
w.Part0 = part1
w.Part1 = torso
w.C0 = CFrame.new(-0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, 0.2)
part2 = Instance.new("Part", char)
part2.FormFactor = "Symmetric"
part2.Size = Vector3.new(1, 3, 1)
part2.TopSurface = 0
part2.BottomSurface = 0
part2:BreakJoints()
special2 = Instance.new("SpecialMesh", part2)
special2.MeshId = "http://www.roblox.com/asset/?id=25498565"
special2.TextureId = "http://www.roblox.com/asset/?id=26725707"
special2.Scale = Vector3.new(2, 2, 2)
w2 = Instance.new("Weld", char)
w2.Part0 = part2
w2.Part1 = torso
w2.C0 = CFrame.new(0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, -0.2)



tool = Instance.new("HopperBin", plyr.Backpack)
tool.Name = " "
tool.TextureId = "http://www.roblox.com/asset/?id=27471616"
tool.Selected:connect(function(mouse)
	
	
mouse.Button1Down:connect(function(mouse)
	if equipped then return end
	equipped = true
		coroutine.wrap(function()
	while equipped do
		rs.DesiredAngle = 0
		rs.CurrentAngle = 0
		ls.DesiredAngle = 0
		ls.CurrentAngle = 0
		Run.Stepped:wait()
	end
		end)()
	coroutine.wrap(function()
		idle = false
		coroutine.wrap(function()
		for i = 0, 3 do
		w.C0 = w.C0 * CFrame.new(0, 0.05, 0)
		w2.C0 = w2.C0 * CFrame.new(0, 0.05, 0)
		Run.Stepped:wait()
		end
		wait(0.147)
		for i = 0, 3 do
		w.C0 = w.C0 * CFrame.new(0, -0.05, 0)
		w2.C0 = w2.C0 * CFrame.new(0, -0.05, 0)
		Run.Stepped:wait()
		end
		end)()
		local p = Instance.new("Part", char)
		p.FormFactor = "Custom"
		p.Name = "Platform"
		p.Transparency = 1
		p.Size = Vector3.new(4, 1, 4)
		p.Anchored = true
		for i = 2.5, 6, 0.05 do
		p.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-i, torso.CFrame.z)
		Run.Stepped:wait()
		end
		coroutine.wrap(function()
		p:Destroy()
		end)()
		end)()
for i = 0, 4 do
ls.C0 = ls.C0 * CFrame.Angles(-0.25, 0, 0)
rs.C0 = rs.C0 * CFrame.Angles(-0.25, 0, 0)
Run.Stepped:wait()
end
wait(0.02)
for i = 0, 4 do
	ls.C0 = ls.C0 * CFrame.Angles(0.25, 0, 0)
	rs.C0 = rs.C0 * CFrame.Angles(0.25, 0, 0)
	Run.Stepped:wait()
end
idle = true
equipped = false
end)
end)

	
	
		while idle do
			for i = 0, 3 do
			w.C0 = w.C0 * CFrame.Angles(0, 0.002 * i, 0)
			w2.C0 = w2.C0 * CFrame.Angles(0, -0.002 * i, 0)
			Run.Stepped:wait()
			end
			wait(0.112687)
			for i = 0, 3 do
			w.C0 = w.C0 * CFrame.Angles(0, -0.002 * i, 0)
			w2.C0 = w2.C0 * CFrame.Angles(0, 0.002 * i, 0)
			Run.Stepped:wait()
			end
			wait(0.312687)
		end
	

