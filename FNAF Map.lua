
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Model")
o3 = Instance.new("Part")
o4 = Instance.new("Script")
o5 = Instance.new("Sound")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("Model")
o9 = Instance.new("Part")
o10 = Instance.new("SurfaceGui")
o11 = Instance.new("TextLabel")
o12 = Instance.new("ClickDetector")
o13 = Instance.new("Part")
o14 = Instance.new("Decal")
o15 = Instance.new("Decal")
o16 = Instance.new("Sound")
o17 = Instance.new("Part")
o18 = Instance.new("SurfaceGui")
o19 = Instance.new("TextLabel")
o20 = Instance.new("ClickDetector")
o21 = Instance.new("Sound")
o22 = Instance.new("Part")
o23 = Instance.new("PointLight")
o24 = Instance.new("Sound")
o25 = Instance.new("Script")
o26 = Instance.new("Script")
o27 = Instance.new("Sound")
o28 = Instance.new("Model")
o29 = Instance.new("Part")
o30 = Instance.new("Decal")
o31 = Instance.new("Part")
o32 = Instance.new("Part")
o33 = Instance.new("Part")
o34 = Instance.new("Part")
o35 = Instance.new("Part")
o36 = Instance.new("Part")
o37 = Instance.new("Part")
o38 = Instance.new("Part")
o39 = Instance.new("Part")
o40 = Instance.new("Model")
o41 = Instance.new("Model")
o42 = Instance.new("Seat")
o43 = Instance.new("BlockMesh")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Part")
o47 = Instance.new("Part")
o48 = Instance.new("Part")
o49 = Instance.new("Part")
o50 = Instance.new("Part")
o51 = Instance.new("Part")
o52 = Instance.new("Part")
o53 = Instance.new("Part")
o54 = Instance.new("Part")
o55 = Instance.new("Part")
o56 = Instance.new("Model")
o57 = Instance.new("Part")
o58 = Instance.new("SurfaceGui")
o59 = Instance.new("TextLabel")
o60 = Instance.new("ClickDetector")
o61 = Instance.new("Part")
o62 = Instance.new("Decal")
o63 = Instance.new("Decal")
o64 = Instance.new("Sound")
o65 = Instance.new("Part")
o66 = Instance.new("SurfaceGui")
o67 = Instance.new("TextLabel")
o68 = Instance.new("ClickDetector")
o69 = Instance.new("Sound")
o70 = Instance.new("Part")
o71 = Instance.new("PointLight")
o72 = Instance.new("Sound")
o73 = Instance.new("Script")
o74 = Instance.new("Script")
o75 = Instance.new("Model")
o76 = Instance.new("Part")
o77 = Instance.new("Part")
o78 = Instance.new("Part")
o79 = Instance.new("Part")
o80 = Instance.new("Part")
o81 = Instance.new("Part")
o82 = Instance.new("Part")
o83 = Instance.new("Part")
o84 = Instance.new("Part")
o85 = Instance.new("Part")
o86 = Instance.new("Model")
o87 = Instance.new("Part")
o88 = Instance.new("Part")
o89 = Instance.new("PointLight")
o90 = Instance.new("Model")
o91 = Instance.new("Part")
o92 = Instance.new("CylinderMesh")
o93 = Instance.new("Part")
o94 = Instance.new("CylinderMesh")
o95 = Instance.new("Part")
o96 = Instance.new("SpecialMesh")
o97 = Instance.new("Model")
o98 = Instance.new("Model")
o99 = Instance.new("Part")
o100 = Instance.new("Part")
o101 = Instance.new("Part")
o102 = Instance.new("BlockMesh")
o103 = Instance.new("Part")
o104 = Instance.new("BlockMesh")
o105 = Instance.new("Part")
o106 = Instance.new("Part")
o107 = Instance.new("Model")
o108 = Instance.new("Part")
o109 = Instance.new("Part")
o110 = Instance.new("Part")
o111 = Instance.new("BlockMesh")
o112 = Instance.new("Part")
o113 = Instance.new("BlockMesh")
o114 = Instance.new("Part")
o115 = Instance.new("Part")
o116 = Instance.new("Model")
o117 = Instance.new("Part")
o118 = Instance.new("Part")
o119 = Instance.new("Part")
o120 = Instance.new("BlockMesh")
o121 = Instance.new("Part")
o122 = Instance.new("BlockMesh")
o123 = Instance.new("Part")
o124 = Instance.new("Part")
o125 = Instance.new("Model")
o126 = Instance.new("Part")
o127 = Instance.new("Script")
o128 = Instance.new("ManualWeld")
o129 = Instance.new("Part")
o130 = Instance.new("Script")
o131 = Instance.new("ManualWeld")
o132 = Instance.new("Part")
o133 = Instance.new("SpecialMesh")
o134 = Instance.new("Part")
o135 = Instance.new("ManualWeld")
o136 = Instance.new("Part")
o137 = Instance.new("Part")
o138 = Instance.new("ManualWeld")
o139 = Instance.new("Part")
o140 = Instance.new("ManualWeld")
o141 = Instance.new("SpawnLocation")
o142 = Instance.new("Part")
o143 = Instance.new("Script")
o144 = Instance.new("Sound")
o1.Parent = mas
o2.Name = "Desk"
o2.Parent = o1
o3.Parent = o2
o3.BrickColor = BrickColor.new("Black")
o3.Position = Vector3.new(5.85013962, 3.48223495, -40.8499565)
o3.Rotation = Vector3.new(179.99884, -90, 0)
o3.Anchored = true
o3.Size = Vector3.new(4, 0.400000006, 17)
o3.CFrame = CFrame.new(5.85013962, 3.48223495, -40.8499565, -6.19053244e-005, -0.000117910735, -1, -2.00926497e-005, -1, 0.000117911979, -1, 2.00999493e-005, 6.19029524e-005)
o3.BottomSurface = Enum.SurfaceType.Smooth
o3.TopSurface = Enum.SurfaceType.Smooth
o3.Color = Color3.new(0.105882, 0.164706, 0.207843)
o3.Position = Vector3.new(5.85013962, 3.48223495, -40.8499565)
o4.Parent = o3
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0)
script.Sound:Play()

end,o4)
end))
o5.Parent = o4
o5.SoundId = "rbxassetid://719670740"
o5.Volume = 0.050000000745058
o6.Parent = o2
o6.BrickColor = BrickColor.new("Dark stone grey")
o6.Position = Vector3.new(5.84996033, 1.68221855, -40.8499222)
o6.Rotation = Vector3.new(179.99884, -90, 0)
o6.Anchored = true
o6.Size = Vector3.new(4, 3.20000005, 17)
o6.CFrame = CFrame.new(5.84996033, 1.68221855, -40.8499222, -6.18463382e-005, -0.000117963689, -1.00000107, -2.011986e-005, -1.00000882, 0.000117966069, -1.00000989, 2.01276616e-005, 6.1720144e-005)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.388235, 0.372549, 0.384314)
o6.Position = Vector3.new(5.84996033, 1.68221855, -40.8499222)
o7.Parent = o2
o7.BrickColor = BrickColor.new("Dark stone grey")
o7.Position = Vector3.new(5.85016632, 2.28227139, -38.3499451)
o7.Rotation = Vector3.new(179.99884, -90, 0)
o7.Anchored = true
o7.Size = Vector3.new(1, 4.4000001, 17)
o7.CFrame = CFrame.new(5.85016632, 2.28227139, -38.3499451, -6.18463382e-005, -0.000117963689, -1.00000107, -2.011986e-005, -1.00000882, 0.000117966069, -1.00000989, 2.01276616e-005, 6.1720144e-005)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.388235, 0.372549, 0.384314)
o7.Position = Vector3.new(5.85016632, 2.28227139, -38.3499451)
o8.Parent = o1
o9.Name = "DoorButton"
o9.Parent = o8
o9.Material = Enum.Material.Neon
o9.BrickColor = BrickColor.new("Lime green")
o9.Position = Vector3.new(14.3264046, 7.53157949, -57.1381378)
o9.Rotation = Vector3.new(179.932083, 89.9406586, -179.975037)
o9.Anchored = true
o9.Size = Vector3.new(2.19999981, 2.20000005, 0.200000003)
o9.CFrame = CFrame.new(14.3264046, 7.53157949, -57.1381378, -1.6996637e-007, 7.40669748e-011, 0.999999464, 4.63033167e-010, 1.00000882, -5.13296072e-011, -1.00000834, 4.67839101e-010, -4.33064997e-008)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0, 1, 0)
o9.Position = Vector3.new(14.3264046, 7.53157949, -57.1381378)
o10.Parent = o9
o10.CanvasSize = Vector2.new(110, 85)
o11.Name = "Text"
o11.Parent = o10
o11.Size = UDim2.new(1,0,1,0)
o11.Text = "DOOR"
o11.BackgroundColor3 = Color3.new(1, 1, 1)
o11.BackgroundTransparency = 1
o11.Font = Enum.Font.SourceSansBold
o11.FontSize = Enum.FontSize.Size36
o11.TextColor3 = Color3.new(0.560784, 0.560784, 0.560784)
o12.Parent = o9
o12.MaxActivationDistance = 10
o13.Name = "Door"
o13.Parent = o8
o13.Material = Enum.Material.DiamondPlate
o13.BrickColor = BrickColor.new("Black")
o13.Position = Vector3.new(15.1764145, 19.9570637, -51.6380806)
o13.Rotation = Vector3.new(179.932083, 89.9406586, -179.975037)
o13.Anchored = true
o13.Size = Vector3.new(8.5, 13.750001, 1)
o13.CFrame = CFrame.new(15.1764145, 19.9570637, -51.6380806, -1.6996637e-007, 7.40669748e-011, 0.999999464, 4.63033167e-010, 1.00000882, -5.13296072e-011, -1.00000834, 4.67839101e-010, -4.33064997e-008)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.105882, 0.164706, 0.207843)
o13.Position = Vector3.new(15.1764145, 19.9570637, -51.6380806)
o14.Parent = o13
o14.Texture = "http://www.roblox.com/asset/?id=178383193"
o15.Parent = o13
o15.Texture = "http://www.roblox.com/asset/?id=178383193"
o15.Face = Enum.NormalId.Back
o16.Parent = o13
o16.SoundId = "http://www.roblox.com/asset/?id=179054361"
o16.Volume = 1
o17.Name = "LightButton"
o17.Parent = o8
o17.Material = Enum.Material.Neon
o17.BrickColor = BrickColor.new("Institutional white")
o17.Position = Vector3.new(14.3264084, 5.1315527, -57.1381378)
o17.Rotation = Vector3.new(179.932083, 89.9406586, -179.975037)
o17.Anchored = true
o17.Size = Vector3.new(2.19999981, 2.20000005, 0.200000003)
o17.CFrame = CFrame.new(14.3264084, 5.1315527, -57.1381378, -1.6996637e-007, 7.40669748e-011, 0.999999464, 4.63033167e-010, 1.00000882, -5.13296072e-011, -1.00000834, 4.67839101e-010, -4.33064997e-008)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
o17.Position = Vector3.new(14.3264084, 5.1315527, -57.1381378)
o18.Parent = o17
o18.CanvasSize = Vector2.new(110, 85)
o19.Name = "Text"
o19.Parent = o18
o19.Size = UDim2.new(1,0,1,0)
o19.Text = "LIGHT"
o19.BackgroundColor3 = Color3.new(1, 1, 1)
o19.BackgroundTransparency = 1
o19.Font = Enum.Font.SourceSansBold
o19.FontSize = Enum.FontSize.Size36
o19.TextColor3 = Color3.new(0, 0, 0)
o20.Parent = o17
o20.MaxActivationDistance = 10
o21.Parent = o17
o21.SoundId = "http://www.roblox.com/asset/?id=156286438"
o21.Volume = 0
o22.Name = "Light"
o22.Parent = o8
o22.Transparency = 1
o22.Position = Vector3.new(21.4764023, 2.08152962, -53.638092)
o22.Rotation = Vector3.new(179.932083, 89.9406586, -179.975037)
o22.Anchored = true
o22.CanCollide = false
o22.Size = Vector3.new(4, 4, 4)
o22.CFrame = CFrame.new(21.4764023, 2.08152962, -53.638092, -1.6996637e-007, 7.40669748e-011, 0.999999464, 4.63033167e-010, 1.00000882, -5.13296072e-011, -1.00000834, 4.67839101e-010, -4.33064997e-008)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Position = Vector3.new(21.4764023, 2.08152962, -53.638092)
o23.Parent = o22
o23.Color = Color3.new(0, 0, 1)
o23.Enabled = false
o23.Brightness = 0
o23.Range = 15
o24.Parent = o22
o24.SoundId = "http://www.roblox.com/asset/?id=133116870"
o24.Volume = 0
o24.Looped = true
o25.Parent = o22
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()
script.Parent.Sound:play()
while true do
	wait(math.random(1,3))
	script.Parent.Sound:pause()
	script.Parent.PointLight.Enabled = false
	wait(0.1)
	script.Parent.Sound:play()
	script.Parent.PointLight.Enabled = true
end
end,o25)
end))
o26.Name = "Main"
o26.Parent = o8
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
db = false
door = false
script.Parent.LightButton.ClickDetector.MouseClick:connect(function()
	script.Parent.LightButton.Sound:play()
	if script.Parent.Light.PointLight.Brightness == 1 then
		script.Parent.Light.PointLight.Brightness = 0
		script.Parent.Light.Sound.Volume = 0
	elseif script.Parent.Light.PointLight.Brightness == 0 then
		script.Parent.Light.PointLight.Brightness = 1
		script.Parent.Light.Sound.Volume = 0.5
	end
end)

script.Parent.DoorButton.ClickDetector.MouseClick:connect(function()
	if not db then db = true
		if not door then door = true
			script.Parent.Door.Sound:play()
			for i=0,15 do
				script.Parent.Door.CFrame = script.Parent.Door.CFrame - Vector3.new(0,0.8,0)
				wait()
			end
			script.Parent.Door.CFrame = script.Parent.Door.CFrame - Vector3.new(0,0.2,0)
			db = false
		elseif door then door = false
			script.Parent.Door.Sound:play()
			for i=0,15 do
				script.Parent.Door.CFrame = script.Parent.Door.CFrame + Vector3.new(0,0.8,0)
				wait()
			end
			script.Parent.Door.CFrame = script.Parent.Door.CFrame + Vector3.new(0,0.2,0)
			db = false
		end
	end
end)
end,o26)
end))
o27.Parent = o8
o28.Parent = o1
o29.Parent = o28
o29.Material = Enum.Material.SmoothPlastic
o29.Transparency = 1
o29.Position = Vector3.new(11.3622284, 10.4700508, -37.9598465)
o29.Rotation = Vector3.new(2.94140364e-007, 4.69876051, -1.38806033e-009)
o29.Anchored = true
o29.Size = Vector3.new(3.80000329, 5, 0.200000003)
o29.CFrame = CFrame.new(11.3622284, 10.4700508, -37.9598465, 0.996639252, 2.41448059e-011, 0.0819169432, 3.96312316e-010, 1, -5.11646459e-009, -0.0819169581, 5.13173326e-009, 0.996639192)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Position = Vector3.new(11.3622284, 10.4700508, -37.9598465)
o30.Parent = o29
o30.Texture = "http://www.roblox.com/asset/?id=190383101"
o31.Parent = o28
o31.Material = Enum.Material.Pebble
o31.BrickColor = BrickColor.new("Really black")
o31.Position = Vector3.new(-2.82997894, 7.022717, -55.6835175)
o31.Rotation = Vector3.new(0.350073487, -9.84179783, -90.5398178)
o31.Anchored = true
o31.Size = Vector3.new(13.8800001, 0.200000003, 0.200000003)
o31.CFrame = CFrame.new(-2.82997894, 7.022717, -55.6835175, -0.00928289536, 0.985239744, -0.170928314, -0.999927104, -0.0104656806, -0.00601998018, -0.00772000477, 0.170859978, 0.985265076)
o31.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o31.Position = Vector3.new(-2.82997894, 7.022717, -55.6835175)
o32.Parent = o28
o32.Material = Enum.Material.Pebble
o32.BrickColor = BrickColor.new("Really black")
o32.Position = Vector3.new(-2.82998657, 7.02271795, -47.6234398)
o32.Rotation = Vector3.new(0.350073487, -9.84179783, -90.5398178)
o32.Anchored = true
o32.Size = Vector3.new(13.8800001, 0.200000003, 0.200000003)
o32.CFrame = CFrame.new(-2.82998657, 7.02271795, -47.6234398, -0.00928289536, 0.985239744, -0.170928314, -0.999927104, -0.0104656806, -0.00601998018, -0.00772000477, 0.170859978, 0.985265076)
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o32.Position = Vector3.new(-2.82998657, 7.02271795, -47.6234398)
o33.Parent = o28
o33.Material = Enum.Material.Pebble
o33.BrickColor = BrickColor.new("Really black")
o33.Position = Vector3.new(14.6900139, 7.02271748, -47.6234474)
o33.Rotation = Vector3.new(0.350073487, -9.84179783, -90.5398178)
o33.Anchored = true
o33.Size = Vector3.new(13.8800001, 0.200000003, 0.200000003)
o33.CFrame = CFrame.new(14.6900139, 7.02271748, -47.6234474, -0.00928289536, 0.985239744, -0.170928314, -0.999927104, -0.0104656806, -0.00601998018, -0.00772000477, 0.170859978, 0.985265076)
o33.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o33.Position = Vector3.new(14.6900139, 7.02271748, -47.6234474)
o34.Parent = o28
o34.Material = Enum.Material.Pebble
o34.Position = Vector3.new(5.95950222, 13.9504375, -49.4816513)
o34.Rotation = Vector3.new(0.00421806565, -89.6189651, -89.4572983)
o34.Anchored = true
o34.Size = Vector3.new(0.200000003, 23.8299999, 17.489996)
o34.CFrame = CFrame.new(5.95950222, 13.9504375, -49.4816513, 6.30005452e-005, 0.00665106857, -0.999977887, -0.999955893, 0.00939820614, -4.89667855e-007, 0.00939799473, 0.999933779, 0.0066513666)
o34.Position = Vector3.new(5.95950222, 13.9504375, -49.4816513)
o35.Parent = o28
o35.Material = Enum.Material.Pebble
o35.Position = Vector3.new(-2.7399292, 6.98500776, -58.5700607)
o35.Rotation = Vector3.new(2.93601772e-007, -1.14725799e-006, -4.59220617e-009)
o35.Anchored = true
o35.Size = Vector3.new(0.200000003, 13.9699993, 5.65999985)
o35.CFrame = CFrame.new(-2.7399292, 6.98500776, -58.5700607, 1, 8.01491165e-011, -2.00234282e-008, -8.01492206e-011, 1, -5.12431741e-009, 2.00234354e-008, 5.12431741e-009, 1)
o35.Position = Vector3.new(-2.7399292, 6.98500776, -58.5700607)
o36.Parent = o28
o36.Material = Enum.Material.Pebble
o36.Position = Vector3.new(5.82673645, 6.98500776, -61.3121681)
o36.Rotation = Vector3.new(-6.11822486e-007, -89.5859833, -8.62174318e-007)
o36.Anchored = true
o36.Size = Vector3.new(0.200000003, 13.9699993, 17.2799969)
o36.CFrame = CFrame.new(5.82673645, 6.98500776, -61.3121681, 0.00723706186, 1.08901714e-010, -0.999973893, -4.36974501e-009, 1, 7.7279641e-011, 0.999973893, 4.36907044e-009, 0.00723706186)
o36.Position = Vector3.new(5.82673645, 6.98500776, -61.3121681)
o37.Parent = o28
o37.Material = Enum.Material.Pebble
o37.Position = Vector3.new(14.5300598, 7.11000919, -58.5700645)
o37.Rotation = Vector3.new(2.93601772e-007, -1.14725799e-006, -4.59220617e-009)
o37.Anchored = true
o37.Size = Vector3.new(0.200000003, 13.7199993, 5.65999985)
o37.CFrame = CFrame.new(14.5300598, 7.11000919, -58.5700645, 1, 8.01491165e-011, -2.00234282e-008, -8.01492206e-011, 1, -5.12431741e-009, 2.00234354e-008, 5.12431741e-009, 1)
o37.Position = Vector3.new(14.5300598, 7.11000919, -58.5700645)
o38.Parent = o28
o38.Material = Enum.Material.Pebble
o38.BrickColor = BrickColor.new("Really black")
o38.Position = Vector3.new(14.6900177, 7.02271795, -55.7235374)
o38.Rotation = Vector3.new(0.350073487, -9.84179783, -90.5398178)
o38.Anchored = true
o38.Size = Vector3.new(13.8800001, 0.200000003, 0.200000003)
o38.CFrame = CFrame.new(14.6900177, 7.02271795, -55.7235374, -0.00928289536, 0.985239744, -0.170928314, -0.999927104, -0.0104656806, -0.00601998018, -0.00772000477, 0.170859978, 0.985265076)
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38.Position = Vector3.new(14.6900177, 7.02271795, -55.7235374)
o39.Parent = o28
o39.Material = Enum.Material.Pebble
o39.Position = Vector3.new(5.91171646, 7.11000824, -37.6925468)
o39.Rotation = Vector3.new(-6.11822486e-007, -89.5859833, -8.62174318e-007)
o39.Anchored = true
o39.Size = Vector3.new(0.200000003, 13.7199993, 17.829998)
o39.CFrame = CFrame.new(5.91171646, 7.11000824, -37.6925468, 0.00723706186, 1.08901714e-010, -0.999973893, -4.36974501e-009, 1, 7.7279641e-011, 0.999973893, 4.36907044e-009, 0.00723706186)
o39.Position = Vector3.new(5.91171646, 7.11000824, -37.6925468)
o40.Parent = o28
o41.Parent = o40
o42.Parent = o41
o42.BrickColor = BrickColor.new("Mid gray")
o42.Transparency = 1
o42.Position = Vector3.new(6.22978592, 0.850025177, -58.5996552)
o42.Rotation = Vector3.new(179.999451, 0.00624624453, 179.999008)
o42.Size = Vector3.new(3, 1.20000005, 3)
o42.CFrame = CFrame.new(6.22978592, 0.850025177, -58.5996552, -1, -1.72373329e-005, 0.000109017528, -1.7238377e-005, 1, -9.56907115e-006, -0.000109017361, -9.57095017e-006, -1)
o42.BackSurface = Enum.SurfaceType.Weld
o42.BottomSurface = Enum.SurfaceType.Weld
o42.FrontSurface = Enum.SurfaceType.Weld
o42.LeftSurface = Enum.SurfaceType.Weld
o42.RightSurface = Enum.SurfaceType.Weld
o42.TopSurface = Enum.SurfaceType.Weld
o42.Color = Color3.new(0.803922, 0.803922, 0.803922)
o42.Position = Vector3.new(6.22978592, 0.850025177, -58.5996552)
o43.Parent = o42
o44.Parent = o41
o44.BrickColor = BrickColor.new("Really black")
o44.Position = Vector3.new(6.23013306, 1.85044479, -58.5997734)
o44.Rotation = Vector3.new(179.999451, 0.00624963269, 179.999008)
o44.Anchored = true
o44.Size = Vector3.new(2, 0.800000012, 3)
o44.CFrame = CFrame.new(6.23013306, 1.85044479, -58.5997734, -1, -1.72373402e-005, 0.000109076667, -1.72383843e-005, 1, -9.56907024e-006, -0.0001090765, -9.57095017e-006, -1)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Position = Vector3.new(6.23013306, 1.85044479, -58.5997734)
o45.Parent = o44
o45.MeshId = "http://www.roblox.com/asset/?id=96065544"
o45.Scale = Vector3.new(1.5, 1.5, 1.5)
o45.TextureId = "http://www.roblox.com/asset/?id=96065600"
o45.MeshType = Enum.MeshType.FileMesh
o46.Parent = o28
o46.Material = Enum.Material.Pebble
o46.Position = Vector3.new(14.7500648, 2.42002487, -42.5848885)
o46.Rotation = Vector3.new(3.46961542e-007, -1.20061895e-006, -4.59220484e-009)
o46.Anchored = true
o46.Size = Vector3.new(0.200000003, 4.8399992, 9.84999943)
o46.CFrame = CFrame.new(14.7500648, 2.42002487, -42.5848885, 1, 8.01490957e-011, -2.09547526e-008, -8.01492206e-011, 1, -6.05562134e-009, 2.09547579e-008, 6.05562134e-009, 1)
o46.Position = Vector3.new(14.7500648, 2.42002487, -42.5848885)
o47.Parent = o28
o47.Material = Enum.Material.Pebble
o47.Position = Vector3.new(14.7500639, 9.32700634, -38.9898949)
o47.Rotation = Vector3.new(-90, 4.59317917e-009, -1.20061884e-006)
o47.Anchored = true
o47.Size = Vector3.new(0.200000003, 2.16999936, 9.10999966)
o47.CFrame = CFrame.new(14.7500639, 9.32700634, -38.9898949, 1, 2.09547508e-008, 8.0166096e-011, -8.01312419e-011, 0, 1.00000024, 2.0954765e-008, -1.00000024, 0)
o47.Position = Vector3.new(14.7500639, 9.32700634, -38.9898949)
o48.Parent = o28
o48.Material = Enum.Material.Pebble
o48.Position = Vector3.new(14.7500639, 9.39200974, -45.8398857)
o48.Rotation = Vector3.new(-90, 4.59317917e-009, -1.20061884e-006)
o48.Anchored = true
o48.Size = Vector3.new(0.200000003, 3.40999937, 9.10999966)
o48.CFrame = CFrame.new(14.7500639, 9.39200974, -45.8398857, 1, 2.09547508e-008, 8.0166096e-011, -8.01312419e-011, 0, 1.00000024, 2.0954765e-008, -1.00000024, 0)
o48.Position = Vector3.new(14.7500639, 9.39200974, -45.8398857)
o49.Parent = o28
o49.Material = Enum.Material.Pebble
o49.Position = Vector3.new(-2.76993084, 2.28700924, -26.6498756)
o49.Rotation = Vector3.new(-180, 0, -180)
o49.Anchored = true
o49.Size = Vector3.new(0.200000003, 4.72999907, 41.6899986)
o49.CFrame = CFrame.new(-2.76993084, 2.28700924, -26.6498756, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o49.Position = Vector3.new(-2.76993084, 2.28700924, -26.6498756)
o50.Parent = o28
o50.Material = Enum.Material.Pebble
o50.Position = Vector3.new(-2.73993111, 11.404006, -42.6648788)
o50.Rotation = Vector3.new(-180, 0, -180)
o50.Anchored = true
o50.Size = Vector3.new(0.200000003, 4.8399992, 9.57999992)
o50.CFrame = CFrame.new(-2.73993111, 11.404006, -42.6648788, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o50.Position = Vector3.new(-2.73993111, 11.404006, -42.6648788)
o51.Parent = o28
o51.Material = Enum.Material.Pebble
o51.Position = Vector3.new(-2.77993488, 8.90899944, -46.4098701)
o51.Rotation = Vector3.new(-90, 0, -180)
o51.Anchored = true
o51.Size = Vector3.new(0.200000003, 2.19999933, 9.78999996)
o51.CFrame = CFrame.new(-2.77993488, 8.90899944, -46.4098701, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o51.Position = Vector3.new(-2.77993488, 8.90899944, -46.4098701)
o52.Parent = o28
o52.Material = Enum.Material.Pebble
o52.Position = Vector3.new(-2.76993299, -5.74099684, -23.5248833)
o52.Rotation = Vector3.new(-90, 0, -180)
o52.Anchored = true
o52.Size = Vector3.new(0.200000003, 35.4500008, 39.2199974)
o52.CFrame = CFrame.new(-2.76993299, -5.74099684, -23.5248833, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o52.Position = Vector3.new(-2.76993299, -5.74099684, -23.5248833)
o53.Parent = o28
o53.Material = Enum.Material.Pebble
o53.Position = Vector3.new(14.7500639, 11.4820137, -42.5848885)
o53.Rotation = Vector3.new(3.46961542e-007, -1.20061895e-006, -4.59220484e-009)
o53.Anchored = true
o53.Size = Vector3.new(0.200000003, 4.8399992, 9.84999943)
o53.CFrame = CFrame.new(14.7500639, 11.4820137, -42.5848885, 1, 8.01490957e-011, -2.09547526e-008, -8.01492206e-011, 1, -6.05562134e-009, 2.09547579e-008, 6.05562134e-009, 1)
o53.Position = Vector3.new(14.7500639, 11.4820137, -42.5848885)
o54.Parent = o28
o54.BrickColor = BrickColor.new("Institutional white")
o54.Transparency = 0.80000001192093
o54.Position = Vector3.new(14.7600021, 6.93936491, -42.085022)
o54.Size = Vector3.new(0.200000003, 4.19000006, 4.05000019)
o54.CFrame = CFrame.new(14.7600021, 6.93936491, -42.085022, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o54.Color = Color3.new(0.972549, 0.972549, 0.972549)
o54.Position = Vector3.new(14.7600021, 6.93936491, -42.085022)
o55.Parent = o28
o55.BrickColor = BrickColor.new("Institutional white")
o55.Transparency = 0.80000001192093
o55.Position = Vector3.new(-2.75999594, 6.82499027, -43.2750092)
o55.Size = Vector3.new(0.200000003, 4.30000019, 4.05000019)
o55.CFrame = CFrame.new(-2.75999594, 6.82499027, -43.2750092, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o55.Color = Color3.new(0.972549, 0.972549, 0.972549)
o55.Position = Vector3.new(-2.75999594, 6.82499027, -43.2750092)
o56.Parent = o1
o57.Name = "DoorButton"
o57.Parent = o56
o57.Material = Enum.Material.Neon
o57.BrickColor = BrickColor.new("Lime green")
o57.Position = Vector3.new(-2.62368011, 7.5315938, -57.0380898)
o57.Rotation = Vector3.new(-2.68305325e-008, -90, 0)
o57.Anchored = true
o57.Size = Vector3.new(2.19999981, 2.20000005, 0.200000003)
o57.CFrame = CFrame.new(-2.62368011, 7.5315938, -57.0380898, 1.84865414e-007, 7.4066149e-011, -1, 4.68281136e-010, 1, 7.40662393e-011, 1, -4.68281081e-010, 1.84865414e-007)
o57.BottomSurface = Enum.SurfaceType.Smooth
o57.TopSurface = Enum.SurfaceType.Smooth
o57.Color = Color3.new(0, 1, 0)
o57.Position = Vector3.new(-2.62368011, 7.5315938, -57.0380898)
o58.Parent = o57
o58.CanvasSize = Vector2.new(110, 85)
o59.Name = "Text"
o59.Parent = o58
o59.Size = UDim2.new(1,0,1,0)
o59.Text = "DOOR"
o59.BackgroundColor3 = Color3.new(1, 1, 1)
o59.BackgroundTransparency = 1
o59.Font = Enum.Font.SourceSansBold
o59.FontSize = Enum.FontSize.Size36
o59.TextColor3 = Color3.new(0.545098, 0.545098, 0.545098)
o60.Parent = o57
o60.MaxActivationDistance = 10
o61.Name = "Door"
o61.Parent = o56
o61.Material = Enum.Material.DiamondPlate
o61.BrickColor = BrickColor.new("Black")
o61.Position = Vector3.new(-3.22367096, 19.9570751, -51.4131165)
o61.Rotation = Vector3.new(-2.68305325e-008, -90, 0)
o61.Anchored = true
o61.Size = Vector3.new(8.75, 13.750001, 1)
o61.CFrame = CFrame.new(-3.22367096, 19.9570751, -51.4131165, 1.84865414e-007, 7.4066149e-011, -1, 4.68281136e-010, 1, 7.40662393e-011, 1, -4.68281081e-010, 1.84865414e-007)
o61.BottomSurface = Enum.SurfaceType.Smooth
o61.TopSurface = Enum.SurfaceType.Smooth
o61.Color = Color3.new(0.105882, 0.164706, 0.207843)
o61.Position = Vector3.new(-3.22367096, 19.9570751, -51.4131165)
o62.Parent = o61
o62.Texture = "http://www.roblox.com/asset/?id=178383193"
o63.Parent = o61
o63.Texture = "http://www.roblox.com/asset/?id=178383193"
o63.Face = Enum.NormalId.Back
o64.Parent = o61
o64.SoundId = "http://www.roblox.com/asset/?id=179054361"
o64.Volume = 1
o65.Name = "LightButton"
o65.Parent = o56
o65.Material = Enum.Material.Neon
o65.BrickColor = BrickColor.new("Institutional white")
o65.Position = Vector3.new(-2.62368011, 5.13156414, -57.0380898)
o65.Rotation = Vector3.new(-2.68305325e-008, -90, 0)
o65.Anchored = true
o65.Size = Vector3.new(2.19999981, 2.20000005, 0.200000003)
o65.CFrame = CFrame.new(-2.62368011, 5.13156414, -57.0380898, 1.84865414e-007, 7.4066149e-011, -1, 4.68281136e-010, 1, 7.40662393e-011, 1, -4.68281081e-010, 1.84865414e-007)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.TopSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.972549, 0.972549, 0.972549)
o65.Position = Vector3.new(-2.62368011, 5.13156414, -57.0380898)
o66.Parent = o65
o66.CanvasSize = Vector2.new(110, 85)
o67.Name = "Text"
o67.Parent = o66
o67.Size = UDim2.new(1,0,1,0)
o67.Text = "LIGHT"
o67.BackgroundColor3 = Color3.new(1, 1, 1)
o67.BackgroundTransparency = 1
o67.Font = Enum.Font.SourceSansBold
o67.FontSize = Enum.FontSize.Size36
o67.TextColor3 = Color3.new(0, 0, 0)
o68.Parent = o65
o68.MaxActivationDistance = 10
o69.Parent = o65
o69.SoundId = "http://www.roblox.com/asset/?id=156286438"
o69.Volume = 0
o70.Name = "Light"
o70.Parent = o56
o70.Transparency = 1
o70.Position = Vector3.new(-9.52362061, 2.33153915, -49.5381241)
o70.Rotation = Vector3.new(-2.68305325e-008, -90, 0)
o70.Anchored = true
o70.CanCollide = false
o70.Size = Vector3.new(4, 4, 4)
o70.CFrame = CFrame.new(-9.52362061, 2.33153915, -49.5381241, 1.84865414e-007, 7.4066149e-011, -1, 4.68281136e-010, 1, 7.40662393e-011, 1, -4.68281081e-010, 1.84865414e-007)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o70.Position = Vector3.new(-9.52362061, 2.33153915, -49.5381241)
o71.Parent = o70
o71.Color = Color3.new(0, 0, 1)
o71.Brightness = 0
o71.Range = 15
o72.Parent = o70
o72.SoundId = "http://www.roblox.com/asset/?id=133116870"
o72.Volume = 0
o72.Looped = true
o73.Parent = o70
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()
script.Parent.Sound:play()
while true do
	wait(math.random(1,3))
	script.Parent.Sound:pause()
	script.Parent.PointLight.Enabled = false
	wait(0.1)
	script.Parent.Sound:play()
	script.Parent.PointLight.Enabled = true
end
end,o73)
end))
o74.Name = "Main"
o74.Parent = o56
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
db = false
door = false
script.Parent.LightButton.ClickDetector.MouseClick:connect(function()
	script.Parent.LightButton.Sound:play()
	if script.Parent.Light.PointLight.Brightness == 1 then
		script.Parent.Light.PointLight.Brightness = 0
		script.Parent.Light.Sound.Volume = 0
	elseif script.Parent.Light.PointLight.Brightness == 0 then
		script.Parent.Light.PointLight.Brightness = 1
		script.Parent.Light.Sound.Volume = 0.5
	end
end)

script.Parent.DoorButton.ClickDetector.MouseClick:connect(function()
	if not db then db = true
		if not door then door = true
			script.Parent.Door.Sound:play()
			for i=0,15 do
				script.Parent.Door.CFrame = script.Parent.Door.CFrame - Vector3.new(0,0.8,0)
				wait()
			end
			script.Parent.Door.CFrame = script.Parent.Door.CFrame - Vector3.new(0,0.2,0)
			db = false
		elseif door then door = false
			script.Parent.Door.Sound:play()
			for i=0,15 do
				script.Parent.Door.CFrame = script.Parent.Door.CFrame + Vector3.new(0,0.8,0)
				wait()
			end
			script.Parent.Door.CFrame = script.Parent.Door.CFrame + Vector3.new(0,0.2,0)
			db = false
		end
	end
end)
end,o74)
end))
o75.Parent = o1
o76.Parent = o75
o76.Position = Vector3.new(-10.2750006, 7, -61.3500023)
o76.Anchored = true
o76.Size = Vector3.new(15, 14, 0.25)
o76.CFrame = CFrame.new(-10.2750006, 7, -61.3500023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Position = Vector3.new(-10.2750006, 7, -61.3500023)
o77.Parent = o75
o77.Position = Vector3.new(22, 7, -61.375)
o77.Anchored = true
o77.Size = Vector3.new(15, 14, 0.25)
o77.CFrame = CFrame.new(22, 7, -61.375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Position = Vector3.new(22, 7, -61.375)
o78.Parent = o75
o78.Position = Vector3.new(29.625, 7, -33.7499924)
o78.Rotation = Vector3.new(0, 90, 0)
o78.Anchored = true
o78.Size = Vector3.new(55.5, 14, 0.25)
o78.CFrame = CFrame.new(29.625, 7, -33.7499924, 0, 0, 1.00000024, 0, 1, 0, -1.00000024, 0, 0)
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Position = Vector3.new(29.625, 7, -33.7499924)
o79.Parent = o75
o79.Position = Vector3.new(-17.875, 7, -33.4999962)
o79.Rotation = Vector3.new(0, 90, 0)
o79.Anchored = true
o79.Size = Vector3.new(55.5, 14, 0.25)
o79.CFrame = CFrame.new(-17.875, 7, -33.4999962, 0, 0, 1.00000024, 0, 1, 0, -1.00000024, 0, 0)
o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o79.Position = Vector3.new(-17.875, 7, -33.4999962)
o80.Parent = o75
o80.Position = Vector3.new(-2.67499924, 6.06500006, -21.7349949)
o80.Rotation = Vector3.new(0, 90, 0)
o80.Anchored = true
o80.Size = Vector3.new(31.9700012, 15.8699999, 0.25)
o80.CFrame = CFrame.new(-2.67499924, 6.06500006, -21.7349949, 0, 0, 1.00000024, 0, 1, 0, -1.00000024, 0, 0)
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Position = Vector3.new(-2.67499924, 6.06500006, -21.7349949)
o81.Parent = o75
o81.Position = Vector3.new(14.6000385, 3.78497887, -21.9349957)
o81.Rotation = Vector3.new(0, 90, 0)
o81.Anchored = true
o81.Size = Vector3.new(31.7700005, 21.0799999, 0.25)
o81.CFrame = CFrame.new(14.6000385, 3.78497887, -21.9349957, 0, 0, 1.00000024, 0, 1, 0, -1.00000024, 0, 0)
o81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o81.Position = Vector3.new(14.6000385, 3.78497887, -21.9349957)
o82.Parent = o75
o82.Position = Vector3.new(22.1499977, 14.0999985, -33.7249947)
o82.Rotation = Vector3.new(-90, -0.000170752915, 90)
o82.Anchored = true
o82.Size = Vector3.new(55.4500008, 15.1500006, 0.449999988)
o82.CFrame = CFrame.new(22.1499977, 14.0999985, -33.7249947, 0, -1, -2.98020063e-006, 0, -2.98020086e-006, 1, -1, 0, 0)
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Position = Vector3.new(22.1499977, 14.0999985, -33.7249947)
o83.Name = "Darkness"
o83.Parent = o75
o83.Material = Enum.Material.Neon
o83.BrickColor = BrickColor.new("Really black")
o83.Transparency = 0.80000001192093
o83.Position = Vector3.new(22.2750168, 6.95703411, -33.7249947)
o83.Rotation = Vector3.new(-90, -0.000170752915, 90)
o83.Anchored = true
o83.CanCollide = false
o83.Locked = true
o83.Size = Vector3.new(55.4500008, 14.9000006, 13.75)
o83.CFrame = CFrame.new(22.2750168, 6.95703411, -33.7249947, 0, -1, -2.98020063e-006, 0, -2.98020086e-006, 1, -1, 0, 0)
o83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o83.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o83.Position = Vector3.new(22.2750168, 6.95703411, -33.7249947)
o84.Name = "Darkness"
o84.Parent = o75
o84.Material = Enum.Material.Neon
o84.BrickColor = BrickColor.new("Really black")
o84.Transparency = 0.80000001192093
o84.Position = Vector3.new(-10.3249836, 6.95702696, -33.4749947)
o84.Rotation = Vector3.new(-90, -0.000170752915, 90)
o84.Anchored = true
o84.CanCollide = false
o84.Locked = true
o84.Size = Vector3.new(55.4500008, 14.9000006, 13.75)
o84.CFrame = CFrame.new(-10.3249836, 6.95702696, -33.4749947, 0, -1, -2.98020063e-006, 0, -2.98020086e-006, 1, -1, 0, 0)
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o84.Position = Vector3.new(-10.3249836, 6.95702696, -33.4749947)
o85.Parent = o75
o85.Position = Vector3.new(-10.3249989, 14.2249775, -33.5250015)
o85.Rotation = Vector3.new(-90, -0.000170752915, 90)
o85.Anchored = true
o85.Size = Vector3.new(55.4500008, 15.6500006, 0.449999988)
o85.CFrame = CFrame.new(-10.3249989, 14.2249775, -33.5250015, 0, -1, -2.98020063e-006, 0, -2.98020086e-006, 1, -1, 0, 0)
o85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o85.Position = Vector3.new(-10.3249989, 14.2249775, -33.5250015)
o86.Parent = o1
o87.Parent = o86
o87.Material = Enum.Material.Metal
o87.Transparency = 1
o87.Position = Vector3.new(5.70948696, 12.3423119, -48.8199844)
o87.Rotation = Vector3.new(90.0114517, -90, 0)
o87.Anchored = true
o87.FormFactor = Enum.FormFactor.Symmetric
o87.Shape = Enum.PartType.Cylinder
o87.Size = Vector3.new(1, 1, 2)
o87.CFrame = CFrame.new(5.70948696, 12.3423119, -48.8199844, 0.000197927409, 0.000163470788, -1.00000727, -1, -0.000199781673, -0.000197962057, -0.00019981424, 1.00000048, 0.000159682706)
o87.BottomSurface = Enum.SurfaceType.Smooth
o87.TopSurface = Enum.SurfaceType.Smooth
o87.Position = Vector3.new(5.70948696, 12.3423119, -48.8199844)
o88.Name = "light source"
o88.Parent = o86
o88.Material = Enum.Material.Ice
o88.BrickColor = BrickColor.new("New Yeller")
o88.Transparency = 100
o88.Position = Vector3.new(5.7097621, 10.8423176, -48.820076)
o88.Rotation = Vector3.new(90.0000687, 90, 0)
o88.Anchored = true
o88.FormFactor = Enum.FormFactor.Symmetric
o88.Shape = Enum.PartType.Cylinder
o88.Size = Vector3.new(2, 4, 5)
o88.CFrame = CFrame.new(5.7097621, 10.8423176, -48.820076, -0.00019826644, 0.00016810582, 1, 1, -1.07624783e-006, 0.000198266629, 1.10957762e-006, 1, -0.000168105602)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.TopSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(1, 1, 0)
o88.Position = Vector3.new(5.7097621, 10.8423176, -48.820076)
o89.Parent = o88
o89.Color = Color3.new(1, 0.980392, 0.345098)
o89.Brightness = 0.5
o89.Range = 20
o90.Parent = o1
o91.Parent = o90
o91.BrickColor = BrickColor.new("Dark stone grey")
o91.Position = Vector3.new(5.69999981, 12.8400145, -48.8099976)
o91.Rotation = Vector3.new(-180, 0, -0)
o91.Anchored = true
o91.FormFactor = Enum.FormFactor.Plate
o91.Size = Vector3.new(1, 1.20000005, 1)
o91.CFrame = CFrame.new(5.69999981, 12.8400145, -48.8099976, 1, 0, 0, 0, -1, 0, 0, 0, -1)
o91.BottomSurface = Enum.SurfaceType.Smooth
o91.TopSurface = Enum.SurfaceType.Smooth
o91.Color = Color3.new(0.388235, 0.372549, 0.384314)
o91.Position = Vector3.new(5.69999981, 12.8400145, -48.8099976)
o92.Parent = o91
o92.Scale = Vector3.new(0.5, 1, 0.5)
o93.Parent = o90
o93.BrickColor = BrickColor.new("Dark stone grey")
o93.Position = Vector3.new(5.69999981, 13.6400156, -48.8099976)
o93.Rotation = Vector3.new(-180, 0, -0)
o93.Anchored = true
o93.FormFactor = Enum.FormFactor.Plate
o93.Size = Vector3.new(1, 0.400000006, 1)
o93.CFrame = CFrame.new(5.69999981, 13.6400156, -48.8099976, 1, 0, 0, 0, -1, 0, 0, 0, -1)
o93.BottomSurface = Enum.SurfaceType.Smooth
o93.TopSurface = Enum.SurfaceType.Smooth
o93.Color = Color3.new(0.388235, 0.372549, 0.384314)
o93.Position = Vector3.new(5.69999981, 13.6400156, -48.8099976)
o94.Parent = o93
o95.Name = "Cone"
o95.Parent = o90
o95.Transparency = 0.20000000298023
o95.Position = Vector3.new(5.69999981, 11.6400118, -48.8099976)
o95.Rotation = Vector3.new(-0, -90, 0)
o95.Anchored = true
o95.Size = Vector3.new(1, 1.20000005, 1)
o95.CFrame = CFrame.new(5.69999981, 11.6400118, -48.8099976, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
o95.BottomSurface = Enum.SurfaceType.Smooth
o95.TopSurface = Enum.SurfaceType.Smooth
o95.Position = Vector3.new(5.69999981, 11.6400118, -48.8099976)
o96.Parent = o95
o96.MeshId = "http://www.roblox.com/asset/?id=1033714"
o96.Scale = Vector3.new(2, 2, 2)
o96.MeshType = Enum.MeshType.FileMesh
o97.Parent = o1
o98.Parent = o97
o98.PrimaryPart = o101
o99.Name = "Smooth Block Model"
o99.Parent = o98
o99.BrickColor = BrickColor.new("Grey")
o99.Position = Vector3.new(12.7599974, 4.66243362, -41.5778618)
o99.Rotation = Vector3.new(-0, 45.0000458, -0)
o99.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o99.CFrame = CFrame.new(12.7599974, 4.66243362, -41.5778618, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o99.Color = Color3.new(0.631373, 0.647059, 0.635294)
o99.Position = Vector3.new(12.7599974, 4.66243362, -41.5778618)
o100.Name = "Smooth Block Model"
o100.Parent = o98
o100.BrickColor = BrickColor.new("Grey")
o100.Position = Vector3.new(12.4822111, 4.66243362, -40.4666901)
o100.Rotation = Vector3.new(-0, -45.0000458, -0)
o100.Anchored = true
o100.FormFactor = Enum.FormFactor.Plate
o100.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o100.CFrame = CFrame.new(12.4822111, 4.66243362, -40.4666901, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o100.Color = Color3.new(0.631373, 0.647059, 0.635294)
o100.Position = Vector3.new(12.4822111, 4.66243362, -40.4666901)
o101.Name = "Smooth Block Model"
o101.Parent = o98
o101.BrickColor = BrickColor.new("Grey")
o101.Position = Vector3.new(12.0655212, 5.68386459, -40.8833809)
o101.Rotation = Vector3.new(-0, -45.0000458, -0)
o101.Anchored = true
o101.CanCollide = false
o101.FormFactor = Enum.FormFactor.Plate
o101.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o101.CFrame = CFrame.new(12.0655212, 5.68386459, -40.8833809, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o101.Color = Color3.new(0.631373, 0.647059, 0.635294)
o101.Position = Vector3.new(12.0655212, 5.68386459, -40.8833809)
o102.Parent = o101
o102.Scale = Vector3.new(1, 0.785714686, 1)
o103.Name = "Smooth Block Model"
o103.Parent = o98
o103.BrickColor = BrickColor.new("Grey")
o103.Position = Vector3.new(12.0655212, 3.64100266, -40.8833809)
o103.Rotation = Vector3.new(-0, -45.0000458, -0)
o103.Anchored = true
o103.CanCollide = false
o103.FormFactor = Enum.FormFactor.Plate
o103.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o103.CFrame = CFrame.new(12.0655212, 3.64100266, -40.8833809, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o103.Color = Color3.new(0.631373, 0.647059, 0.635294)
o103.Position = Vector3.new(12.0655212, 3.64100266, -40.8833809)
o104.Parent = o103
o104.Scale = Vector3.new(1, 0.785714686, 1)
o105.Name = "Smooth Block Model"
o105.Parent = o98
o105.BrickColor = BrickColor.new("Black")
o105.Position = Vector3.new(11.9761209, 4.66243362, -41.0717735)
o105.Rotation = Vector3.new(-0, -45.0000458, -0)
o105.Size = Vector3.new(1.17857146, 1.88571537, 1.93142951)
o105.CFrame = CFrame.new(11.9761209, 4.66243362, -41.0717735, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o105.Color = Color3.new(0.105882, 0.164706, 0.207843)
o105.Position = Vector3.new(11.9761209, 4.66243362, -41.0717735)
o106.Name = "Smooth Block Model"
o106.Parent = o98
o106.BrickColor = BrickColor.new("Grey")
o106.Position = Vector3.new(11.3710394, 4.66243362, -40.1889)
o106.Rotation = Vector3.new(-0, 45.0000458, -0)
o106.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o106.CFrame = CFrame.new(11.3710394, 4.66243362, -40.1889, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o106.Color = Color3.new(0.631373, 0.647059, 0.635294)
o106.Position = Vector3.new(11.3710394, 4.66243362, -40.1889)
o107.Parent = o97
o107.PrimaryPart = o110
o108.Name = "Smooth Block Model"
o108.Parent = o107
o108.BrickColor = BrickColor.new("Grey")
o108.Position = Vector3.new(11.0932474, 4.66243362, -39.9111061)
o108.Rotation = Vector3.new(-0, 45.0000458, -0)
o108.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o108.CFrame = CFrame.new(11.0932474, 4.66243362, -39.9111061, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o108.Color = Color3.new(0.631373, 0.647059, 0.635294)
o108.Position = Vector3.new(11.0932474, 4.66243362, -39.9111061)
o109.Name = "Smooth Block Model"
o109.Parent = o107
o109.BrickColor = BrickColor.new("Grey")
o109.Position = Vector3.new(10.8154573, 4.66243362, -38.7999344)
o109.Rotation = Vector3.new(-0, -45.0000458, -0)
o109.Anchored = true
o109.FormFactor = Enum.FormFactor.Plate
o109.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o109.CFrame = CFrame.new(10.8154573, 4.66243362, -38.7999344, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o109.Color = Color3.new(0.631373, 0.647059, 0.635294)
o109.Position = Vector3.new(10.8154573, 4.66243362, -38.7999344)
o110.Name = "Smooth Block Model"
o110.Parent = o107
o110.BrickColor = BrickColor.new("Grey")
o110.Position = Vector3.new(10.3987646, 5.68386459, -39.2166252)
o110.Rotation = Vector3.new(-0, -45.0000458, -0)
o110.Anchored = true
o110.CanCollide = false
o110.FormFactor = Enum.FormFactor.Plate
o110.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o110.CFrame = CFrame.new(10.3987646, 5.68386459, -39.2166252, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o110.Color = Color3.new(0.631373, 0.647059, 0.635294)
o110.Position = Vector3.new(10.3987646, 5.68386459, -39.2166252)
o111.Parent = o110
o111.Scale = Vector3.new(1, 0.785714686, 1)
o112.Name = "Smooth Block Model"
o112.Parent = o107
o112.BrickColor = BrickColor.new("Grey")
o112.Position = Vector3.new(10.3987646, 3.64100266, -39.2166252)
o112.Rotation = Vector3.new(-0, -45.0000458, -0)
o112.Anchored = true
o112.CanCollide = false
o112.FormFactor = Enum.FormFactor.Plate
o112.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o112.CFrame = CFrame.new(10.3987646, 3.64100266, -39.2166252, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o112.Color = Color3.new(0.631373, 0.647059, 0.635294)
o112.Position = Vector3.new(10.3987646, 3.64100266, -39.2166252)
o113.Parent = o112
o113.Scale = Vector3.new(1, 0.785714686, 1)
o114.Name = "Smooth Block Model"
o114.Parent = o107
o114.BrickColor = BrickColor.new("Black")
o114.Position = Vector3.new(10.3730049, 4.66243362, -39.4686584)
o114.Rotation = Vector3.new(-0, -45.0000458, -0)
o114.Size = Vector3.new(1.17857146, 1.88571537, 1.89142954)
o114.CFrame = CFrame.new(10.3730049, 4.66243362, -39.4686584, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o114.Color = Color3.new(0.105882, 0.164706, 0.207843)
o114.Position = Vector3.new(10.3730049, 4.66243362, -39.4686584)
o115.Name = "Smooth Block Model"
o115.Parent = o107
o115.BrickColor = BrickColor.new("Grey")
o115.Position = Vector3.new(9.70428181, 4.66243362, -38.5221481)
o115.Rotation = Vector3.new(-0, 45.0000458, -0)
o115.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o115.CFrame = CFrame.new(9.70428181, 4.66243362, -38.5221481, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o115.Color = Color3.new(0.631373, 0.647059, 0.635294)
o115.Position = Vector3.new(9.70428181, 4.66243362, -38.5221481)
o116.Parent = o97
o116.PrimaryPart = o119
o117.Name = "Smooth Block Model"
o117.Parent = o116
o117.BrickColor = BrickColor.new("Grey")
o117.Position = Vector3.new(11.6488304, 6.86243629, -40.4666901)
o117.Rotation = Vector3.new(-0, 45.0000458, -0)
o117.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o117.CFrame = CFrame.new(11.6488304, 6.86243629, -40.4666901, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o117.Color = Color3.new(0.631373, 0.647059, 0.635294)
o117.Position = Vector3.new(11.6488304, 6.86243629, -40.4666901)
o118.Name = "Smooth Block Model"
o118.Parent = o116
o118.BrickColor = BrickColor.new("Grey")
o118.Position = Vector3.new(11.3710403, 6.86243629, -39.3555183)
o118.Rotation = Vector3.new(-0, -45.0000458, -0)
o118.Anchored = true
o118.FormFactor = Enum.FormFactor.Plate
o118.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o118.CFrame = CFrame.new(11.3710403, 6.86243629, -39.3555183, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o118.Color = Color3.new(0.631373, 0.647059, 0.635294)
o118.Position = Vector3.new(11.3710403, 6.86243629, -39.3555183)
o119.Name = "Smooth Block Model"
o119.Parent = o116
o119.BrickColor = BrickColor.new("Grey")
o119.Position = Vector3.new(10.9543505, 7.88386726, -39.7722092)
o119.Rotation = Vector3.new(-0, -45.0000458, -0)
o119.Anchored = true
o119.CanCollide = false
o119.FormFactor = Enum.FormFactor.Plate
o119.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o119.CFrame = CFrame.new(10.9543505, 7.88386726, -39.7722092, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o119.Color = Color3.new(0.631373, 0.647059, 0.635294)
o119.Position = Vector3.new(10.9543505, 7.88386726, -39.7722092)
o120.Parent = o119
o120.Scale = Vector3.new(1, 0.785714686, 1)
o121.Name = "Smooth Block Model"
o121.Parent = o116
o121.BrickColor = BrickColor.new("Grey")
o121.Position = Vector3.new(10.9543505, 5.84100533, -39.7722092)
o121.Rotation = Vector3.new(-0, -45.0000458, -0)
o121.Anchored = true
o121.CanCollide = false
o121.FormFactor = Enum.FormFactor.Plate
o121.Size = Vector3.new(1.57142866, 0.200000003, 2.35714412)
o121.CFrame = CFrame.new(10.9543505, 5.84100533, -39.7722092, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o121.Color = Color3.new(0.631373, 0.647059, 0.635294)
o121.Position = Vector3.new(10.9543505, 5.84100533, -39.7722092)
o122.Parent = o121
o122.Scale = Vector3.new(1, 0.785714686, 1)
o123.Name = "Smooth Block Model"
o123.Parent = o116
o123.BrickColor = BrickColor.new("Black")
o123.Position = Vector3.new(10.8048477, 6.86243629, -39.9217148)
o123.Rotation = Vector3.new(-0, -45.0000458, -0)
o123.Size = Vector3.new(1.20857143, 1.88571537, 1.91142941)
o123.CFrame = CFrame.new(10.8048477, 6.86243629, -39.9217148, 0.707107365, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707107365)
o123.Color = Color3.new(0.105882, 0.164706, 0.207843)
o123.Position = Vector3.new(10.8048477, 6.86243629, -39.9217148)
o124.Name = "Smooth Block Model"
o124.Parent = o116
o124.BrickColor = BrickColor.new("Grey")
o124.Position = Vector3.new(10.2598667, 6.86243629, -39.0777321)
o124.Rotation = Vector3.new(-0, 45.0000458, -0)
o124.Size = Vector3.new(0.392857164, 1.88571537, 1.57142949)
o124.CFrame = CFrame.new(10.2598667, 6.86243629, -39.0777321, 0.707107365, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707107365)
o124.Color = Color3.new(0.631373, 0.647059, 0.635294)
o124.Position = Vector3.new(10.2598667, 6.86243629, -39.0777321)
o125.Name = "Fan"
o125.Parent = o1
o126.Name = "Fan"
o126.Parent = o125
o126.BrickColor = BrickColor.new("Really black")
o126.Position = Vector3.new(0.540704131, 5.88240814, -41.1707001)
o126.Rotation = Vector3.new(-0.000295054284, 45.0004539, -0.000153484696)
o126.Anchored = true
o126.FormFactor = Enum.FormFactor.Custom
o126.Size = Vector3.new(0.200000003, 0.400000036, 2)
o126.CFrame = CFrame.new(0.540704131, 5.88240814, -41.1707001, 0.707112372, 1.89422201e-006, 0.707112372, -9.62566332e-007, 1, 3.64139441e-006, -0.707112372, 3.21177868e-006, 0.707112372)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o126.Position = Vector3.new(0.540704131, 5.88240814, -41.1707001)
o127.Name = "Rotate"
o127.Parent = o126
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
brick = script.Parent
while true do -- Loops script
wait(0.001)
brick.CFrame = brick.CFrame * CFrame.fromEulerAnglesXYZ(0.9999,0,0) -- Change 0.01 to whatever speed you want it to go
end

-- Calamity
end,o127)
end))
o128.Name = "Fan-to-Part Strong Joint"
o128.Parent = o126
o128.C0 = CFrame.new(-0.100000001, -0.200000018, -1, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o128.C1 = CFrame.new(0.400000572, -0.200000763, -0.999999881, 0, 0, -1, 4.37113883e-008, 1, 0, 1, 4.37113883e-008, 0)
o128.Part0 = o126
o128.Part1 = o132
o129.Name = "Fan"
o129.Parent = o125
o129.BrickColor = BrickColor.new("Really black")
o129.Position = Vector3.new(0.540704131, 5.88240814, -41.1707001)
o129.Rotation = Vector3.new(90.0001907, -0.000108530927, -45)
o129.Anchored = true
o129.FormFactor = Enum.FormFactor.Custom
o129.Size = Vector3.new(0.200000003, 0.400000036, 2)
o129.CFrame = CFrame.new(0.540704131, 5.88240814, -41.1707001, 0.707112372, 0.707112372, -1.89422201e-006, -9.62566332e-007, 3.59768296e-006, -1, -0.707112372, 0.707112372, -3.21177868e-006)
o129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o129.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129.Position = Vector3.new(0.540704131, 5.88240814, -41.1707001)
o130.Name = "Rotate"
o130.Parent = o129
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
brick = script.Parent
while true do -- Loops script
wait(0.001)
brick.CFrame = brick.CFrame * CFrame.fromEulerAnglesXYZ(0.9999,0,0) -- Change 0.01 to whatever speed you want it to go
end

-- Calamity
end,o130)
end))
o131.Name = "Fan-to-Part Strong Joint"
o131.Parent = o129
o131.C0 = CFrame.new(-0.100000001, -0.200000018, -1, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o131.C1 = CFrame.new(0.400000572, 0.999999523, -0.199999809, 0, 0, -1, -1, 0, 0, -4.37113883e-008, 1, 0)
o131.Part0 = o129
o131.Part1 = o132
o132.Parent = o125
o132.BrickColor = BrickColor.new("Really black")
o132.Position = Vector3.new(0.187149942, 5.88240814, -40.8171387)
o132.Rotation = Vector3.new(-0.000295054284, 45.0004539, -0.000153484696)
o132.Anchored = true
o132.FormFactor = Enum.FormFactor.Custom
o132.Size = Vector3.new(0.800000012, 0.799999952, 0.800000012)
o132.CFrame = CFrame.new(0.187149942, 5.88240814, -40.8171387, 0.707112372, 1.89422201e-006, 0.707112372, -9.62566332e-007, 1, 3.64139441e-006, -0.707112372, 3.21177868e-006, 0.707112372)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o132.Position = Vector3.new(0.187149942, 5.88240814, -40.8171387)
o133.Parent = o132
o133.MeshType = Enum.MeshType.Cylinder
o134.Parent = o125
o134.BrickColor = BrickColor.new("Really black")
o134.Position = Vector3.new(0.0457255319, 4.98239803, -40.6757278)
o134.Rotation = Vector3.new(-0.000295054284, 45.0004539, -0.000153484696)
o134.Anchored = true
o134.FormFactor = Enum.FormFactor.Custom
o134.Size = Vector3.new(0.400000006, 2.20000005, 0.400000006)
o134.CFrame = CFrame.new(0.0457255319, 4.98239803, -40.6757278, 0.707112372, 1.89422201e-006, 0.707112372, -9.62566332e-007, 1, 3.64139441e-006, -0.707112372, 3.21177868e-006, 0.707112372)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o134.Position = Vector3.new(0.0457255319, 4.98239803, -40.6757278)
o135.Name = "Part-to-Part Strong Joint"
o135.Parent = o134
o135.C0 = CFrame.new(0.200000003, -1.10000002, 0.200000003, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o135.C1 = CFrame.new(-0.400000572, 0.0999999046, 0.200000048, 1, 0, 0, 0, 4.37113883e-008, -1, 0, 1, -4.37113883e-008)
o135.Part0 = o134
o135.Part1 = o136
o136.Parent = o125
o136.BrickColor = BrickColor.new("Really black")
o136.Position = Vector3.new(0.469990849, 3.7824111, -41.0999985)
o136.Rotation = Vector3.new(-0.000295054284, 45.0004539, -0.000153484696)
o136.Anchored = true
o136.FormFactor = Enum.FormFactor.Custom
o136.Size = Vector3.new(1.60000014, 0.200000003, 2.4000001)
o136.CFrame = CFrame.new(0.469990849, 3.7824111, -41.0999985, 0.707112372, 1.89422201e-006, 0.707112372, -9.62566332e-007, 1, 3.64139441e-006, -0.707112372, 3.21177868e-006, 0.707112372)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o136.Position = Vector3.new(0.469990849, 3.7824111, -41.0999985)
o137.Parent = o125
o137.BrickColor = BrickColor.new("Really black")
o137.Position = Vector3.new(0.399277419, 5.88240767, -41.0292816)
o137.Rotation = Vector3.new(-89.9998169, 0.000108530927, 45)
o137.Anchored = true
o137.FormFactor = Enum.FormFactor.Custom
o137.Size = Vector3.new(0.200000003, 0.400000006, 2.80000019)
o137.CFrame = CFrame.new(0.399277419, 5.88240767, -41.0292816, 0.707112372, -0.707112372, 1.89422201e-006, -9.62566332e-007, -3.59768296e-006, 1, -0.707112372, -0.707112372, 3.21177868e-006)
o137.BottomSurface = Enum.SurfaceType.Smooth
o137.TopSurface = Enum.SurfaceType.Smooth
o137.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o137.Position = Vector3.new(0.399277419, 5.88240767, -41.0292816)
o138.Name = "Part-to-Part Strong Joint"
o138.Parent = o137
o138.C0 = CFrame.new(0.100000001, -1, 0.200000003, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o138.C1 = CFrame.new(-0.400000572, 0.0999999046, 0.300000042, 1, 0, 0, 0, 4.37113883e-008, -1, 0, 1, -4.37113883e-008)
o138.Part0 = o137
o139.Parent = o125
o139.BrickColor = BrickColor.new("Really black")
o139.Position = Vector3.new(0.399281621, 5.88240719, -41.0292778)
o139.Rotation = Vector3.new(-0.000295054284, 45.0004539, -0.000153484696)
o139.Anchored = true
o139.FormFactor = Enum.FormFactor.Custom
o139.Size = Vector3.new(0.200000003, 0.400000006, 2.80000019)
o139.CFrame = CFrame.new(0.399281621, 5.88240719, -41.0292778, 0.707112372, 1.89422201e-006, 0.707112372, -9.62566332e-007, 1, 3.64139441e-006, -0.707112372, 3.21177868e-006, 0.707112372)
o139.BottomSurface = Enum.SurfaceType.Smooth
o139.TopSurface = Enum.SurfaceType.Smooth
o139.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o139.Position = Vector3.new(0.399281621, 5.88240719, -41.0292778)
o140.Name = "Part-to-Part Strong Joint"
o140.Parent = o139
o140.C0 = CFrame.new(0.100000001, -1, 0.200000003, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o140.C1 = CFrame.new(-0.400000572, 0.0999999046, 0.300000042, 1, 0, 0, 0, 4.37113883e-008, -1, 0, 1, -4.37113883e-008)
o140.Part0 = o139
o141.Parent = o1
o141.Transparency = 100
o141.Position = Vector3.new(6.19000244, 0.5, -51.789978)
o141.Anchored = true
o141.CanCollide = false
o141.Size = Vector3.new(6, 1, 6)
o141.CFrame = CFrame.new(6.19000244, 0.5, -51.789978, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o141.TopSurface = Enum.SurfaceType.Smooth
o141.Position = Vector3.new(6.19000244, 0.5, -51.789978)
o142.Parent = o1
o142.Transparency = 1
o142.Position = Vector3.new(14.6999998, 14.8249979, -6.4000001)
o142.Anchored = true
o142.CanCollide = false
o142.Size = Vector3.new(4, 1, 2)
o142.CFrame = CFrame.new(14.6999998, 14.8249979, -6.4000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o142.Position = Vector3.new(14.6999998, 14.8249979, -6.4000001)
o143.Parent = o142
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0)
script.Music:play()

end,o143)
end))
o144.Name = "Music"
o144.Parent = o143
o144.SoundId = "rbxassetid://177922849"
o144.Looped = true
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
game:GetService("Lighting").Brightness = 0
game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:GetService("Lighting").GlobalShadows = true
game:GetService("Lighting").OutdoorAmbient = Color3.new(0, 0, 0)
game:GetService("Lighting").Outlines = true
game:GetService("Lighting").GeographicLatitude = 41.733299255371
game:GetService("Lighting").TimeOfDay = "00:00:00"
game:GetService("Lighting").FogColor = Color3.new(0.75, 0.75, 0.75)
game:GetService("Lighting").FogEnd = 100000
game:GetService("Lighting").FogStart = 0