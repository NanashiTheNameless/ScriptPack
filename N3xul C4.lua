--Made by N3xul
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
o1 = Instance.new("Tool")
o2 = Instance.new("LocalScript")
o3 = Instance.new("Script")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("Sound")
o15 = Instance.new("Sound")
o17 = Instance.new("Part")
o18 = Instance.new("BlockMesh")
o19 = Instance.new("Part")
o20 = Instance.new("BlockMesh")
o21 = Instance.new("Part")
o22 = Instance.new("BlockMesh")
o23 = Instance.new("Part")
o24 = Instance.new("CylinderMesh")
o25 = Instance.new("Part")
o26 = Instance.new("BlockMesh")
o27 = Instance.new("Part")
o28 = Instance.new("CylinderMesh")
o29 = Instance.new("Part")
o30 = Instance.new("CylinderMesh")
o31 = Instance.new("Part")
o32 = Instance.new("BlockMesh")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("CylinderMesh")
o37 = Instance.new("Part")
o38 = Instance.new("CylinderMesh")
o39 = Instance.new("Part")
o40 = Instance.new("CylinderMesh")
o41 = Instance.new("Part")
o42 = Instance.new("Decal")
o43 = Instance.new("BlockMesh")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("CylinderMesh")
o48 = Instance.new("Part")
o49 = Instance.new("BlockMesh")
o50 = Instance.new("Part")
o51 = Instance.new("BlockMesh")
o52 = Instance.new("Part")
o53 = Instance.new("CylinderMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("CylinderMesh")
o58 = Instance.new("Part")
o59 = Instance.new("BlockMesh")
o60 = Instance.new("Part")
o61 = Instance.new("CylinderMesh")
o62 = Instance.new("Part")
o63 = Instance.new("CylinderMesh")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("Part")
o67 = Instance.new("CylinderMesh")
o68 = Instance.new("Part")
o69 = Instance.new("CylinderMesh")
o70 = Instance.new("Part")
o71 = Instance.new("BlockMesh")
o72 = Instance.new("Part")
o73 = Instance.new("CylinderMesh")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("Part")
o77 = Instance.new("BlockMesh")
o78 = Instance.new("Part")
o79 = Instance.new("CylinderMesh")
o80 = Instance.new("Part")
o81 = Instance.new("BlockMesh")
o82 = Instance.new("Part")
o83 = Instance.new("CylinderMesh")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("Part")
o87 = Instance.new("BlockMesh")
o88 = Instance.new("Part")
o89 = Instance.new("BlockMesh")
o90 = Instance.new("Script")
o91 = Instance.new("Script")
o1.Name = "C4"
o1.Parent = mas
o1.GripForward = Vector3.new(-0.44721359, 0, -0.89442718)
o1.GripRight = Vector3.new(0.89442718, 0, -0.44721359)
o2.Name = "BackupWeld"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o2)
end))
o3.Name = "BombBlink"
o3.Parent = o1
o3.Disabled = true
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local Mesh = script.Parent.Mesh
local blink = false

while true do

	blink = not blink
	if blink then
		Mesh.TextureId = "http://www.roblox.com/asset/?id=28512114"
	else
		Mesh.TextureId = "http://www.roblox.com/asset/?id=33378623"
	end
	wait(2)

end

end,o3)
end))
o4.Name = "C1"
o4.Parent = o1
o4.BrickColor = BrickColor.new("Sand green")
o4.Position = Vector3.new(24.5733223, 0.166703999, 71.6800003)
o4.Rotation = Vector3.new(-89.9999924, 90, 0)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.300000012, 1.66666663, 1)
o4.CFrame = CFrame.new(24.5733223, 0.166703999, 71.6800003, -1.1920929e-007, 3.73034936e-014, 1, -1, 1.50995845e-007, -1.1920929e-007, -1.5099576e-007, -1, -7.10542736e-015)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.470588, 0.564706, 0.509804)
o4.Position = Vector3.new(24.5733223, 0.166703999, 71.6800003)
o5.Parent = o4
o5.Offset = Vector3.new(-2.70000005, 0, 0)
o6.Name = "C2"
o6.Parent = o1
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(24.5733223, 0.166703999, 71.6800003)
o6.Rotation = Vector3.new(-90, 90, 0)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.333333343, 0.200000003, 1.0333333)
o6.CFrame = CFrame.new(24.5733223, 0.166703999, 71.6800003, -2.08616257e-007, 2.48689991e-014, 1, -1, 1.0728445e-007, -2.08616257e-007, -1.07284379e-007, -1, -1.42108547e-014)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Position = Vector3.new(24.5733223, 0.166703999, 71.6800003)
o7.Parent = o6
o7.Offset = Vector3.new(-2.70000005, 0, 0)
o7.Scale = Vector3.new(1, 0.833333373, 1)
o8.Name = "C3"
o8.Parent = o1
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(24.4399891, 0.166702002, 71.6800003)
o8.Rotation = Vector3.new(-180, -0.999999881, 90.0000076)
o8.Anchored = true
o8.CanCollide = false
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.333333343, 0.200000003, 1.70000005)
o8.CFrame = CFrame.new(24.4399891, 0.166702002, 71.6800003, -2.08616257e-007, -0.99984771, -0.0174524039, -1, 1.78813934e-007, 1.86264515e-009, 7.6290263e-010, 0.0174524058, -0.99984771)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Position = Vector3.new(24.4399891, 0.166702002, 71.6800003)
o9.Parent = o8
o9.Offset = Vector3.new(-2.70000005, 0, 0)
o9.Scale = Vector3.new(1, 0.833333373, 1)
o10.Name = "C4"
o10.Parent = o1
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(24.6733227, 0.166701004, 71.6800003)
o10.Rotation = Vector3.new(-180, -4, 90.0000076)
o10.Anchored = true
o10.CanCollide = false
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.333333343, 0.200000003, 1.70000005)
o10.CFrame = CFrame.new(24.6733227, 0.166701004, 71.6800003, -2.08616257e-007, -0.997564077, -0.0697564706, -1, 1.78813934e-007, 9.31322575e-009, 3.04918757e-009, 0.0697564706, -0.997564077)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(24.6733227, 0.166701004, 71.6800003)
o11.Parent = o10
o11.Offset = Vector3.new(-2.70000005, 0, 0)
o11.Scale = Vector3.new(1, 0.833333373, 1)
o12.Name = "Handle"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Sand green")
o12.Position = Vector3.new(24.8899956, 3.31667495, 70.7299881)
o12.Rotation = Vector3.new(8.65142465e-006, 90, 0)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.633333325, 0.200000003, 0.200000003)
o12.CFrame = CFrame.new(24.8899956, 3.31667495, 70.7299881, -4.37113599e-008, 1.1920929e-007, 1, 1.50995845e-007, 1, -1.1920929e-007, -1, 1.5099576e-007, -4.37113954e-008)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.470588, 0.564706, 0.509804)
o12.Position = Vector3.new(24.8899956, 3.31667495, 70.7299881)
o13.Parent = o12
o13.Scale = Vector3.new(1, 0.333333343, 0.833333373)
o14.Name = "Plant"
o14.Parent = o12
o14.SoundId = "http://www.roblox.com/asset/?id=28518380"
o15.Name = "Detonate"
o15.Parent = o12
o15.Pitch = 0.5
o15.SoundId = "http://www.roblox.com/asset/?id=14863866"
o15.Volume = 1
o15.PlayOnRemove = true
o17.Parent = o1
o17.BrickColor = BrickColor.new("Bright red")
o17.Position = Vector3.new(24.965004, 4.24778414, 70.7966614)
o17.Rotation = Vector3.new(-90, 30.0000076, -90)
o17.Anchored = true
o17.CanCollide = false
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o17.CFrame = CFrame.new(24.965004, 4.24778414, 70.7966614, -3.78551874e-008, 0.866025329, 0.500000119, -8.54287592e-008, -0.500000119, 0.866025329, 1, -9.93080462e-009, 9.29109589e-008)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.768628, 0.156863, 0.109804)
o17.Position = Vector3.new(24.965004, 4.24778414, 70.7966614)
o18.Parent = o17
o18.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
o19.Parent = o1
o19.BrickColor = BrickColor.new("Bright red")
o19.Position = Vector3.new(25.0605335, 4.34657717, 70.6633301)
o19.Rotation = Vector3.new(-90, 30.0000076, -90)
o19.Anchored = true
o19.CanCollide = false
o19.FormFactor = Enum.FormFactor.Custom
o19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o19.CFrame = CFrame.new(25.0605335, 4.34657717, 70.6633301, -3.78551874e-008, 0.866025329, 0.500000119, -8.54287592e-008, -0.500000119, 0.866025329, 1, -9.93080462e-009, 9.29109589e-008)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.768628, 0.156863, 0.109804)
o19.Position = Vector3.new(25.0605335, 4.34657717, 70.6633301)
o20.Parent = o19
o20.Scale = Vector3.new(0.166666672, 0.166666672, 0.833333373)
o21.Parent = o1
o21.BrickColor = BrickColor.new("Bright red")
o21.Position = Vector3.new(25.0605087, 4.34653521, 70.7966614)
o21.Rotation = Vector3.new(-90, 30.0000076, -90)
o21.Anchored = true
o21.CanCollide = false
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o21.CFrame = CFrame.new(25.0605087, 4.34653521, 70.7966614, -3.78551803e-008, 0.866025329, 0.500000119, -8.54287237e-008, -0.500000119, 0.866025329, 1, -9.93081528e-009, 9.29109945e-008)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.768628, 0.156863, 0.109804)
o21.Position = Vector3.new(25.0605087, 4.34653521, 70.7966614)
o22.Parent = o21
o22.Scale = Vector3.new(0.166666672, 0.166666672, 0.833333373)
o23.Parent = o1
o23.BrickColor = BrickColor.new("Bright red")
o23.Position = Vector3.new(24.9433365, 4.11335278, 70.7299881)
o23.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o23.Anchored = true
o23.CanCollide = false
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o23.CFrame = CFrame.new(24.9433365, 4.11335278, 70.7299881, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.768628, 0.156863, 0.109804)
o23.Position = Vector3.new(24.9433365, 4.11335278, 70.7299881)
o24.Parent = o23
o24.Scale = Vector3.new(0.5, 0.166666672, 0.5)
o25.Parent = o1
o25.BrickColor = BrickColor.new("Black")
o25.Position = Vector3.new(24.9400043, 4.18335104, 70.8966675)
o25.Rotation = Vector3.new(-180, 2.13733285e-012, -180)
o25.Anchored = true
o25.CanCollide = false
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(0.200000003, 0.466666669, 0.200000003)
o25.CFrame = CFrame.new(24.9400043, 4.18335104, 70.8966675, -1, 1.1920929e-007, 3.73034936e-014, 1.1920929e-007, 1, 1.50995845e-007, 7.10542736e-015, 1.5099576e-007, -1)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.105882, 0.164706, 0.207843)
o25.Position = Vector3.new(24.9400043, 4.18335104, 70.8966675)
o26.Parent = o25
o26.Scale = Vector3.new(0.333333343, 1, 0.5)
o27.Parent = o1
o27.BrickColor = BrickColor.new("Bright red")
o27.Position = Vector3.new(24.9566708, 4.23335075, 70.6633301)
o27.Rotation = Vector3.new(-89.9999924, 6.83018925e-006, 180)
o27.Anchored = true
o27.CanCollide = false
o27.FormFactor = Enum.FormFactor.Custom
o27.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o27.CFrame = CFrame.new(24.9566708, 4.23335075, 70.6633301, -1, -3.73034936e-014, 1.1920929e-007, 1.1920929e-007, -1.50995845e-007, 1, 7.10542736e-015, 1, 1.5099576e-007)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.768628, 0.156863, 0.109804)
o27.Position = Vector3.new(24.9566708, 4.23335075, 70.6633301)
o28.Parent = o27
o28.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
o29.Parent = o1
o29.BrickColor = BrickColor.new("Really black")
o29.Position = Vector3.new(24.8900013, 4.92666388, 70.5066681)
o29.Rotation = Vector3.new(-180, 6.1066652e-013, 6.83018925e-006)
o29.Anchored = true
o29.CanCollide = false
o29.FormFactor = Enum.FormFactor.Custom
o29.Size = Vector3.new(0.200000003, 0.666666687, 0.200000003)
o29.CFrame = CFrame.new(24.8900013, 4.92666388, 70.5066681, 1, -1.1920929e-007, 1.0658141e-014, -1.1920929e-007, -1, 4.26325641e-014, -7.10542736e-015, 4.26325641e-014, -1)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Position = Vector3.new(24.8900013, 4.92666388, 70.5066681)
o30.Parent = o29
o30.Scale = Vector3.new(0.166666672, 1, 0.166666672)
o31.Parent = o1
o31.BrickColor = BrickColor.new("Sand green")
o31.Position = Vector3.new(24.8899994, 3.88335705, 70.996666)
o31.Rotation = Vector3.new(8.65142465e-006, -2.13733285e-012, -6.83018925e-006)
o31.Anchored = true
o31.CanCollide = false
o31.FormFactor = Enum.FormFactor.Custom
o31.Size = Vector3.new(0.200000003, 1.06666672, 0.200000003)
o31.CFrame = CFrame.new(24.8899994, 3.88335705, 70.996666, 1, 1.1920929e-007, -3.73034936e-014, -1.1920929e-007, 1, -1.50995845e-007, -7.10542736e-015, 1.5099576e-007, 1)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.470588, 0.564706, 0.509804)
o31.Position = Vector3.new(24.8899994, 3.88335705, 70.996666)
o32.Parent = o31
o32.Scale = Vector3.new(0.833333373, 1, 0.5)
o33.Parent = o1
o33.BrickColor = BrickColor.new("Light stone grey")
o33.Position = Vector3.new(24.9366646, 3.40001011, 70.6799927)
o33.Rotation = Vector3.new(-180, 1.01777755e-012, -180)
o33.Anchored = true
o33.CanCollide = false
o33.FormFactor = Enum.FormFactor.Custom
o33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o33.CFrame = CFrame.new(24.9366646, 3.40001011, 70.6799927, -1, 5.96046448e-008, 1.77635684e-014, 5.96046448e-008, 1, 6.35730686e-008, 0, 6.35729904e-008, -1)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.898039, 0.894118, 0.87451)
o33.Position = Vector3.new(24.9366646, 3.40001011, 70.6799927)
o34.Parent = o33
o34.Scale = Vector3.new(0.166666672, 0.166666672, 0.333333343)
o35.Parent = o1
o35.BrickColor = BrickColor.new("Dark stone grey")
o35.Position = Vector3.new(24.965004, 4.41167402, 70.9366608)
o35.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o35.Anchored = true
o35.CanCollide = false
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o35.CFrame = CFrame.new(24.965004, 4.41167402, 70.9366608, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.388235, 0.372549, 0.384314)
o35.Position = Vector3.new(24.965004, 4.41167402, 70.9366608)
o36.Parent = o35
o36.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
o37.Parent = o1
o37.BrickColor = BrickColor.new("Really black")
o37.Position = Vector3.new(24.8900013, 4.57667112, 70.5066681)
o37.Rotation = Vector3.new(-180, 6.1066652e-013, 6.83018925e-006)
o37.Anchored = true
o37.CanCollide = false
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o37.CFrame = CFrame.new(24.8900013, 4.57667112, 70.5066681, 1, -1.1920929e-007, 1.0658141e-014, -1.1920929e-007, -1, 4.26325641e-014, -7.10542736e-015, 4.26325641e-014, -1)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37.Position = Vector3.new(24.8900013, 4.57667112, 70.5066681)
o38.Parent = o37
o38.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
o39.Parent = o1
o39.BrickColor = BrickColor.new("Light stone grey")
o39.Position = Vector3.new(24.9440002, 3.55001688, 70.5999985)
o39.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o39.Anchored = true
o39.CanCollide = false
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o39.CFrame = CFrame.new(24.9440002, 3.55001688, 70.5999985, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o39.BottomSurface = Enum.SurfaceType.Smooth
o39.TopSurface = Enum.SurfaceType.Smooth
o39.Color = Color3.new(0.898039, 0.894118, 0.87451)
o39.Position = Vector3.new(24.9440002, 3.55001688, 70.5999985)
o40.Parent = o39
o40.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
o41.Parent = o1
o41.Position = Vector3.new(24.9599991, 3.6333549, 70.7299881)
o41.Rotation = Vector3.new(180, -0, -180)
o41.Anchored = true
o41.CanCollide = false
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 0.266666681, 0.400000006)
o41.CFrame = CFrame.new(24.9599991, 3.6333549, 70.7299881, -1, 0, -0, -0, 1, -0, -0, 0, -1)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Position = Vector3.new(24.9599991, 3.6333549, 70.7299881)
o42.Parent = o41
o42.Texture = "http://www.roblox.com/asset/?id=54493820"
o42.Face = Enum.NormalId.Left
o43.Parent = o41
o43.Offset = Vector3.new(0, 0.100000001, 0)
o43.Scale = Vector3.new(0.166666672, 1, 1)
o44.Parent = o1
o44.BrickColor = BrickColor.new("Sand green")
o44.Position = Vector3.new(24.8900013, 4.45001078, 70.7299881)
o44.Rotation = Vector3.new(8.65142465e-006, -2.13733285e-012, -6.83018925e-006)
o44.Anchored = true
o44.CanCollide = false
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.200000003, 0.200000003, 0.633333325)
o44.CFrame = CFrame.new(24.8900013, 4.45001078, 70.7299881, 1, 1.1920929e-007, -3.73034936e-014, -1.1920929e-007, 1, -1.50995845e-007, -7.10542736e-015, 1.5099576e-007, 1)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.470588, 0.564706, 0.509804)
o44.Position = Vector3.new(24.8900013, 4.45001078, 70.7299881)
o45.Parent = o44
o45.Scale = Vector3.new(0.833333373, 0.333333343, 1)
o46.Parent = o1
o46.BrickColor = BrickColor.new("Sand green")
o46.Position = Vector3.new(24.8900013, 4.48333979, 70.7299881)
o46.Rotation = Vector3.new(-89.9999924, 6.83018925e-006, -2.13733285e-012)
o46.Anchored = true
o46.CanCollide = false
o46.FormFactor = Enum.FormFactor.Custom
o46.Size = Vector3.new(0.200000003, 0.633333325, 0.200000003)
o46.CFrame = CFrame.new(24.8900013, 4.48333979, 70.7299881, 1, 3.73034936e-014, 1.1920929e-007, -1.1920929e-007, 1.50995845e-007, 1, -7.10542736e-015, -1, 1.5099576e-007)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.470588, 0.564706, 0.509804)
o46.Position = Vector3.new(24.8900013, 4.48333979, 70.7299881)
o47.Parent = o46
o47.Scale = Vector3.new(0.833333373, 1, 0.833333373)
o48.Parent = o1
o48.BrickColor = BrickColor.new("Black")
o48.Position = Vector3.new(24.9400005, 3.76669097, 70.7299881)
o48.Rotation = Vector3.new(-180, 2.13733285e-012, -180)
o48.Anchored = true
o48.CanCollide = false
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.200000003, 0.366666675, 0.433333337)
o48.CFrame = CFrame.new(24.9400005, 3.76669097, 70.7299881, -1, 1.1920929e-007, 3.73034936e-014, 1.1920929e-007, 1, 1.50995845e-007, 7.10542736e-015, 1.5099576e-007, -1)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.TopSurface = Enum.SurfaceType.Smooth
o48.Color = Color3.new(0.105882, 0.164706, 0.207843)
o48.Position = Vector3.new(24.9400005, 3.76669097, 70.7299881)
o49.Parent = o48
o49.Scale = Vector3.new(0.333333343, 1, 1)
o50.Parent = o1
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(24.9333305, 3.46668005, 70.7299881)
o50.Rotation = Vector3.new(-180, 6.1066652e-013, -180)
o50.Anchored = true
o50.CanCollide = false
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.200000003, 0.233333334, 0.433333337)
o50.CFrame = CFrame.new(24.9333305, 3.46668005, 70.7299881, -1, 0, 1.0658141e-014, 0, 1, 4.26325641e-014, 1.0658141e-014, -4.26325641e-014, -1)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Position = Vector3.new(24.9333305, 3.46668005, 70.7299881)
o51.Parent = o50
o51.Scale = Vector3.new(0.166666672, 1, 1)
o52.Parent = o1
o52.BrickColor = BrickColor.new("Sand green")
o52.Position = Vector3.new(24.8900013, 4.53333712, 70.5066681)
o52.Rotation = Vector3.new(-180, 6.1066652e-013, 6.83018925e-006)
o52.Anchored = true
o52.CanCollide = false
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o52.CFrame = CFrame.new(24.8900013, 4.53333712, 70.5066681, 1, -1.1920929e-007, 1.0658141e-014, -1.1920929e-007, -1, 4.26325641e-014, -7.10542736e-015, 4.26325641e-014, -1)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.470588, 0.564706, 0.509804)
o52.Position = Vector3.new(24.8900013, 4.53333712, 70.5066681)
o53.Parent = o52
o53.Scale = Vector3.new(0.666666687, 0.5, 0.666666687)
o54.Parent = o1
o54.BrickColor = BrickColor.new("Sand green")
o54.Position = Vector3.new(24.8900032, 3.85002303, 70.4633331)
o54.Rotation = Vector3.new(8.65142465e-006, -2.13733285e-012, -6.83018925e-006)
o54.Anchored = true
o54.CanCollide = false
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.200000003, 1.06666672, 0.200000003)
o54.CFrame = CFrame.new(24.8900032, 3.85002303, 70.4633331, 1, 1.1920929e-007, -3.73034936e-014, -1.1920929e-007, 1, -1.50995845e-007, -7.10542736e-015, 1.5099576e-007, 1)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.470588, 0.564706, 0.509804)
o54.Position = Vector3.new(24.8900032, 3.85002303, 70.4633331)
o55.Parent = o54
o55.Offset = Vector3.new(0, 0.0350000001, 0)
o55.Scale = Vector3.new(0.833333373, 1, 0.5)
o56.Parent = o1
o56.Position = Vector3.new(24.8900013, 5.27666283, 70.5066681)
o56.Rotation = Vector3.new(-180, 6.1066652e-013, 6.83018925e-006)
o56.Anchored = true
o56.CanCollide = false
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o56.CFrame = CFrame.new(24.8900013, 5.27666283, 70.5066681, 1, -1.1920929e-007, 1.0658141e-014, -1.1920929e-007, -1, 4.26325641e-014, -7.10542736e-015, 4.26325641e-014, -1)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Position = Vector3.new(24.8900013, 5.27666283, 70.5066681)
o57.Parent = o56
o57.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
o58.Parent = o1
o58.BrickColor = BrickColor.new("Black")
o58.Position = Vector3.new(24.9400024, 4.36668301, 70.7299881)
o58.Rotation = Vector3.new(-180, 2.13733285e-012, -180)
o58.Anchored = true
o58.CanCollide = false
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
o58.CFrame = CFrame.new(24.9400024, 4.36668301, 70.7299881, -1, 1.1920929e-007, 3.73034936e-014, 1.1920929e-007, 1, 1.50995845e-007, 7.10542736e-015, 1.5099576e-007, -1)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.105882, 0.164706, 0.207843)
o58.Position = Vector3.new(24.9400024, 4.36668301, 70.7299881)
o59.Parent = o58
o59.Scale = Vector3.new(0.333333343, 0.5, 1)
o60.Parent = o1
o60.BrickColor = BrickColor.new("Sand green")
o60.Position = Vector3.new(24.8899975, 3.28334093, 70.7299881)
o60.Rotation = Vector3.new(-90, 6.83018925e-006, -1.42488874e-012)
o60.Anchored = true
o60.CanCollide = false
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.200000003, 0.633333325, 0.200000003)
o60.CFrame = CFrame.new(24.8899975, 3.28334093, 70.7299881, 1, 2.48689991e-014, 1.1920929e-007, -1.1920929e-007, 1.0728445e-007, 1, -7.10542736e-015, -1, 1.07284372e-007)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.TopSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.470588, 0.564706, 0.509804)
o60.Position = Vector3.new(24.8899975, 3.28334093, 70.7299881)
o61.Parent = o60
o61.Scale = Vector3.new(0.833333373, 1, 0.833333373)
o62.Parent = o1
o62.BrickColor = BrickColor.new("Mid gray")
o62.Position = Vector3.new(24.9266682, 4.11335278, 70.7299881)
o62.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o62.Anchored = true
o62.CanCollide = false
o62.FormFactor = Enum.FormFactor.Custom
o62.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o62.CFrame = CFrame.new(24.9266682, 4.11335278, 70.7299881, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.803922, 0.803922, 0.803922)
o62.Position = Vector3.new(24.9266682, 4.11335278, 70.7299881)
o63.Parent = o62
o63.Scale = Vector3.new(0.666666687, 0.166666672, 0.666666687)
o64.Parent = o1
o64.BrickColor = BrickColor.new("Sand green")
o64.Position = Vector3.new(24.8566666, 3.88335705, 70.7299881)
o64.Rotation = Vector3.new(8.65142465e-006, -2.13733285e-012, -6.83018925e-006)
o64.Anchored = true
o64.CanCollide = false
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.200000003, 1.06666672, 0.433333337)
o64.CFrame = CFrame.new(24.8566666, 3.88335705, 70.7299881, 1, 1.1920929e-007, -3.73034936e-014, -1.1920929e-007, 1, -1.50995845e-007, -7.10542736e-015, 1.5099576e-007, 1)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.TopSurface = Enum.SurfaceType.Smooth
o64.Color = Color3.new(0.470588, 0.564706, 0.509804)
o64.Position = Vector3.new(24.8566666, 3.88335705, 70.7299881)
o65.Parent = o64
o65.Scale = Vector3.new(0.5, 1, 1)
o66.Parent = o1
o66.BrickColor = BrickColor.new("Black")
o66.Position = Vector3.new(24.8900013, 4.48333979, 70.9300003)
o66.Rotation = Vector3.new(-90, 6.83018925e-006, -1.42488874e-012)
o66.Anchored = true
o66.CanCollide = false
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o66.CFrame = CFrame.new(24.8900013, 4.48333979, 70.9300003, 1, 2.48689991e-014, 1.1920929e-007, -1.1920929e-007, 1.0728445e-007, 1, -7.10542736e-015, -1, 1.07284372e-007)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.105882, 0.164706, 0.207843)
o66.Position = Vector3.new(24.8900013, 4.48333979, 70.9300003)
o67.Parent = o66
o67.Scale = Vector3.new(0.850000024, 0.0666666701, 0.850000024)
o68.Parent = o1
o68.BrickColor = BrickColor.new("Bright red")
o68.Position = Vector3.new(24.9566708, 4.23335075, 70.7966614)
o68.Rotation = Vector3.new(-89.9999924, 6.83018925e-006, 180)
o68.Anchored = true
o68.CanCollide = false
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o68.CFrame = CFrame.new(24.9566708, 4.23335075, 70.7966614, -1, -3.73034936e-014, 1.1920929e-007, 1.1920929e-007, -1.50995845e-007, 1, 7.10542736e-015, 1, 1.5099576e-007)
o68.BottomSurface = Enum.SurfaceType.Smooth
o68.TopSurface = Enum.SurfaceType.Smooth
o68.Color = Color3.new(0.768628, 0.156863, 0.109804)
o68.Position = Vector3.new(24.9566708, 4.23335075, 70.7966614)
o69.Parent = o68
o69.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
o70.Parent = o1
o70.BrickColor = BrickColor.new("Bright red")
o70.Position = Vector3.new(25.0233345, 4.34881783, 70.7299881)
o70.Rotation = Vector3.new(-90, 30.0000076, -90)
o70.Anchored = true
o70.CanCollide = false
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o70.CFrame = CFrame.new(25.0233345, 4.34881783, 70.7299881, -3.78551874e-008, 0.866025329, 0.500000119, -8.54287592e-008, -0.500000119, 0.866025329, 1, -9.93080462e-009, 9.29109589e-008)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o70.Color = Color3.new(0.768628, 0.156863, 0.109804)
o70.Position = Vector3.new(25.0233345, 4.34881783, 70.7299881)
o71.Parent = o70
o71.Scale = Vector3.new(0.833333373, 0.166666672, 1)
o72.Parent = o1
o72.BrickColor = BrickColor.new("Black")
o72.Position = Vector3.new(24.9566708, 4.23335075, 70.7299881)
o72.Rotation = Vector3.new(-89.9999924, 6.83018925e-006, 180)
o72.Anchored = true
o72.CanCollide = false
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o72.CFrame = CFrame.new(24.9566708, 4.23335075, 70.7299881, -1, -3.73034936e-014, 1.1920929e-007, 1.1920929e-007, -1.50995845e-007, 1, 7.10542736e-015, 1, 1.5099576e-007)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o72.Color = Color3.new(0.105882, 0.164706, 0.207843)
o72.Position = Vector3.new(24.9566708, 4.23335075, 70.7299881)
o73.Parent = o72
o73.Scale = Vector3.new(0.166666672, 0.5, 0.166666672)
o74.Parent = o1
o74.BrickColor = BrickColor.new("Black")
o74.Position = Vector3.new(24.9400043, 4.15002012, 70.5633316)
o74.Rotation = Vector3.new(-180, 2.13733285e-012, -180)
o74.Anchored = true
o74.CanCollide = false
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.200000003, 0.466666669, 0.200000003)
o74.CFrame = CFrame.new(24.9400043, 4.15002012, 70.5633316, -1, 1.1920929e-007, 3.73034936e-014, 1.1920929e-007, 1, 1.50995845e-007, 7.10542736e-015, 1.5099576e-007, -1)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.TopSurface = Enum.SurfaceType.Smooth
o74.Color = Color3.new(0.105882, 0.164706, 0.207843)
o74.Position = Vector3.new(24.9400043, 4.15002012, 70.5633316)
o75.Parent = o74
o75.Offset = Vector3.new(0, 0.0340000018, 0)
o75.Scale = Vector3.new(0.333333343, 1, 0.5)
o76.Parent = o1
o76.BrickColor = BrickColor.new("Really black")
o76.Position = Vector3.new(24.9506664, 3.5166831, 70.5999985)
o76.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o76.Anchored = true
o76.CanCollide = false
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o76.CFrame = CFrame.new(24.9506664, 3.5166831, 70.5999985, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.TopSurface = Enum.SurfaceType.Smooth
o76.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o76.Position = Vector3.new(24.9506664, 3.5166831, 70.5999985)
o77.Parent = o76
o77.Scale = Vector3.new(0.0333333351, 0.0333333351, 0.5)
o78.Parent = o1
o78.BrickColor = BrickColor.new("Black")
o78.Position = Vector3.new(24.9583359, 4.41167402, 70.9366608)
o78.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o78.Anchored = true
o78.CanCollide = false
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o78.CFrame = CFrame.new(24.9583359, 4.41167402, 70.9366608, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o78.BottomSurface = Enum.SurfaceType.Smooth
o78.TopSurface = Enum.SurfaceType.Smooth
o78.Color = Color3.new(0.105882, 0.164706, 0.207843)
o78.Position = Vector3.new(24.9583359, 4.41167402, 70.9366608)
o79.Parent = o78
o79.Scale = Vector3.new(0.666666687, 0.166666672, 0.666666687)
o80.Parent = o1
o80.BrickColor = BrickColor.new("Light stone grey")
o80.Position = Vector3.new(24.9366646, 3.40001011, 70.8133392)
o80.Rotation = Vector3.new(-180, 1.01777755e-012, -180)
o80.Anchored = true
o80.CanCollide = false
o80.FormFactor = Enum.FormFactor.Custom
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o80.CFrame = CFrame.new(24.9366646, 3.40001011, 70.8133392, -1, 5.96046448e-008, 1.77635684e-014, 5.96046448e-008, 1, 6.35730686e-008, 0, 6.35729904e-008, -1)
o80.BottomSurface = Enum.SurfaceType.Smooth
o80.TopSurface = Enum.SurfaceType.Smooth
o80.Color = Color3.new(0.898039, 0.894118, 0.87451)
o80.Position = Vector3.new(24.9366646, 3.40001011, 70.8133392)
o81.Parent = o80
o81.Scale = Vector3.new(0.166666672, 0.166666672, 0.333333343)
o82.Parent = o1
o82.BrickColor = BrickColor.new("Light stone grey")
o82.Position = Vector3.new(24.9466667, 3.53002095, 70.8300018)
o82.Rotation = Vector3.new(-90, 6.83018925e-006, 90)
o82.Anchored = true
o82.CanCollide = false
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o82.CFrame = CFrame.new(24.9466667, 3.53002095, 70.8300018, -4.37113705e-008, -1, 1.1920929e-007, 1.0728445e-007, 1.1920929e-007, 1, -1, 4.37113954e-008, 1.07284372e-007)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o82.Color = Color3.new(0.898039, 0.894118, 0.87451)
o82.Position = Vector3.new(24.9466667, 3.53002095, 70.8300018)
o83.Parent = o82
o83.Scale = Vector3.new(0.5, 0.166666672, 0.5)
o84.Parent = o1
o84.BrickColor = BrickColor.new("Really black")
o84.Position = Vector3.new(24.9706688, 3.89335489, 70.7133331)
o84.Rotation = Vector3.new(-180, 6.1066652e-013, -90)
o84.Anchored = true
o84.CanCollide = false
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(0.200000003, 0.200000003, 0.433333337)
o84.CFrame = CFrame.new(24.9706688, 3.89335489, 70.7133331, 0, 1, 1.0658141e-014, 1, 0, 4.26325641e-014, -4.26325641e-014, -1.0658141e-014, -1)
o84.BottomSurface = Enum.SurfaceType.Smooth
o84.TopSurface = Enum.SurfaceType.Smooth
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o84.Position = Vector3.new(24.9706688, 3.89335489, 70.7133331)
o85.Parent = o84
o85.Offset = Vector3.new(0, 0, -0.0179999992)
o85.Scale = Vector3.new(0.0333333351, 0.0333333351, 1)
o86.Parent = o1
o86.BrickColor = BrickColor.new("Black")
o86.Position = Vector3.new(24.923336, 4.13335419, 70.7299881)
o86.Rotation = Vector3.new(-180, 2.13733285e-012, -180)
o86.Anchored = true
o86.CanCollide = false
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.200000003, 0.366666675, 0.300000012)
o86.CFrame = CFrame.new(24.923336, 4.13335419, 70.7299881, -1, 1.1920929e-007, 3.73034936e-014, 1.1920929e-007, 1, 1.50995845e-007, 7.10542736e-015, 1.5099576e-007, -1)
o86.BottomSurface = Enum.SurfaceType.Smooth
o86.TopSurface = Enum.SurfaceType.Smooth
o86.Color = Color3.new(0.105882, 0.164706, 0.207843)
o86.Position = Vector3.new(24.923336, 4.13335419, 70.7299881)
o87.Parent = o86
o87.Scale = Vector3.new(0.166666672, 1, 1)
o88.Parent = o1
o88.BrickColor = BrickColor.new("Bright red")
o88.Position = Vector3.new(24.965004, 4.24778414, 70.6633301)
o88.Rotation = Vector3.new(-90, 30.0000076, -90)
o88.Anchored = true
o88.CanCollide = false
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o88.CFrame = CFrame.new(24.965004, 4.24778414, 70.6633301, -3.78551874e-008, 0.866025329, 0.500000119, -8.54287592e-008, -0.500000119, 0.866025329, 1, -9.93080462e-009, 9.29109589e-008)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.TopSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.768628, 0.156863, 0.109804)
o88.Position = Vector3.new(24.965004, 4.24778414, 70.6633301)
o89.Parent = o88
o89.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
o90.Name = "PlantBomb"
o90.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
Tool = script.Parent
local arms = nil
local torso = nil
local weld33 = nil 
local weld55 = nil
local welds = {}
local planting = true
local bomb = nil
local slimesbricks={} --Fixed, now you can just clear a table to remove bricks.

local sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=28517063"
sound.Looped = true

local explosion = Instance.new("Sound")
explosion.SoundId = "rbxasset://sounds/vehicleExplosion"
explosion.Volume = 0.01
explosion:Play()
explosion.Volume = 0.5

function plant(pos)
	
	Tool.Handle.Plant:Play()
   
	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local spawnPos = vCharacter.PrimaryPart.Position

	bomb = Instance.new("Part")
	bomb.Locked = true
	bomb.formFactor = 2
	bomb.Size = Vector3.new(1,0.4,1)
	bomb.Name = "Mine"
	bomb.Position = pos

	sound.Parent = bomb
	sound:Play()

	explosion:Stop()

	local mesh = Instance.new("SpecialMesh")
	mesh.MeshId = "http://www.roblox.com/asset/?id=28511843"
	mesh.TextureId = "http://www.roblox.com/asset/?id=28512114"
	mesh.Parent = bomb

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = bomb

	local script = Tool.BombBlink:clone()
	script.Parent = bomb
	script.Disabled = false

	bomb.Parent = game.Workspace
	bomb.Touched:connect(function(part)
		if part ~= Tool.Handle and part.Parent:FindFirstChild("Humanoid") == nil then
			bomb.Anchored = true
			bomb.CanCollide = false
		end
	end)
end

function blowUp()

	local e = Instance.new("Explosion")
	e.BlastPressure = 10
	e.BlastRadius = 10
	e.Parent = game.Workspace
	e.Position = bomb.Position
	sound:Stop()
	explosion.Parent = e
	explosion:Play()
	bomb:remove()

   Tool.Handle.Detonate:Play()
	for i=1,#slimesbricks do --OH EMM GEE!
		slimesbricks[i]:Remove()
	end
   
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-89), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-88), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-87), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-88), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-89), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-25), 0)
   wait()
end

function Equip(mouse) --woohoo
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Instance.new("BlockMesh")
mesh1.Scale = Vector3.new(.9,.9,.9)
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new(26)
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Instance.new("BlockMesh")
mesh2.Scale = Vector3.new(.9,.9,.9)
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new(26)
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.1, math.rad(-90))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-25), 0)
welds[2] = weld2
Takeout()
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function Dropanim()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.7, math.rad(-90))
Tool.C1.Transparency = 1
local Cpart1 = Tool.C1:clone()
Cpart1.Parent = game.Workspace
Cpart1.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart1.Anchored = true
Cpart1.Transparency = 0
Tool.C2.Transparency = 1
table.insert(slimesbricks,Cpart1)
local Cpart2 = Tool.C2:clone()
Cpart2.Parent = game.Workspace
Cpart2.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart2.Anchored = true
Cpart2.Transparency = 0
Tool.C3.Transparency = 1
table.insert(slimesbricks,Cpart2)
local Cpart3 = Tool.C3:clone()
Cpart3.Parent = game.Workspace
Cpart3.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart3.Anchored = true
Cpart3.Transparency = 0
Tool.C4.Transparency = 1
table.insert(slimesbricks,Cpart3)
local Cpart4 = Tool.C4:clone()
Cpart4.Parent = game.Workspace
Cpart4.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart4.Anchored = true
Cpart4.Transparency = 0
table.insert(slimesbricks,Cpart4)
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.6, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.5, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.4, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.3, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.2, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.1, math.rad(-90))
Tool.C1.Transparency = 0
Tool.C2.Transparency = 0
Tool.C3.Transparency = 0
Tool.C4.Transparency = 0
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end

	local targetPos = humanoid.TargetPoint

	if planting then
		plant(Tool.C1.Position)
      Dropanim()
		planting = false
	else
		blowUp()
		planting = true
	end

	Tool.Enabled = true
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=54564144"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)
end,o90)
end))
o91.Name = "-(Read me)-"
o91.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--This C4 is made by manofthelol
--Thanks to slimeball105 for helping me script it and thanks to dynastorious for the idea

--Do not complain about the C4 being misshaped
--Simply go in edit and select the C4 model
--Auto-place it in the starterpack and the bricks are how they should be
--Blame roblox for this annoying bug

--Anyway enjoy

end,o91)
end))
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end