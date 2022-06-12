
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
BlockMesh2 = Instance.new("BlockMesh")
StringValue3 = Instance.new("StringValue")
Part4 = Instance.new("Part")
BlockMesh5 = Instance.new("BlockMesh")
Sound6 = Instance.new("Sound")
StringValue7 = Instance.new("StringValue")
Part8 = Instance.new("Part")
BlockMesh9 = Instance.new("BlockMesh")
StringValue10 = Instance.new("StringValue")
Part11 = Instance.new("Part")
CylinderMesh12 = Instance.new("CylinderMesh")
StringValue13 = Instance.new("StringValue")
Part14 = Instance.new("Part")
BlockMesh15 = Instance.new("BlockMesh")
StringValue16 = Instance.new("StringValue")
Part17 = Instance.new("Part")
CylinderMesh18 = Instance.new("CylinderMesh")
StringValue19 = Instance.new("StringValue")
Part20 = Instance.new("Part")
BlockMesh21 = Instance.new("BlockMesh")
StringValue22 = Instance.new("StringValue")
Part23 = Instance.new("Part")
SpecialMesh24 = Instance.new("SpecialMesh")
StringValue25 = Instance.new("StringValue")
Part26 = Instance.new("Part")
CylinderMesh27 = Instance.new("CylinderMesh")
StringValue28 = Instance.new("StringValue")
Script29 = Instance.new("Script")
StringValue30 = Instance.new("StringValue")
Script31 = Instance.new("Script")
StringValue32 = Instance.new("StringValue")
Tool0.Name = "Sandvich"
Tool0.Parent = mas
Tool0.GripForward = Vector3.new(-0.976163507, 0, -0.217036337)
Tool0.GripPos = Vector3.new(0.300000012, 0, 0)
Tool0.GripRight = Vector3.new(0.217036337, -0, -0.976163507)
Part1.Name = "Handle3"
Part1.Parent = Tool0
Part1.BrickColor = BrickColor.new("Bright yellow")
Part1.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part1.FormFactor = Enum.FormFactor.Plate
Part1.Size = Vector3.new(1, 0.400000006, 1)
Part1.CFrame = CFrame.new(1306.77722, 159.278763, 45.2597885, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part1.Position = Vector3.new(1306.77722, 159.278763, 45.2597885)
Part1.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part1.Color = Color3.new(0.960784, 0.803922, 0.188235)
BlockMesh2.Parent = Part1
BlockMesh2.Scale = Vector3.new(1.70000005, 0.100000001, 1.5)
BlockMesh2.Scale = Vector3.new(1.70000005, 0.100000001, 1.5)
StringValue3.Name = "Te"
StringValue3.Parent = Part1
Part4.Name = "Handle"
Part4.Parent = Tool0
Part4.BrickColor = BrickColor.new("Pastel yellow")
Part4.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part4.FormFactor = Enum.FormFactor.Plate
Part4.Size = Vector3.new(1, 0.400000006, 1)
Part4.CFrame = CFrame.new(1306.7771, 159.068756, 45.2598038, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(1, 1, 0.8)
Part4.Position = Vector3.new(1306.7771, 159.068756, 45.2598038)
Part4.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part4.Color = Color3.new(1, 1, 0.8)
BlockMesh5.Parent = Part4
BlockMesh5.Scale = Vector3.new(1.60000002, 0.5, 1.60000002)
BlockMesh5.Scale = Vector3.new(1.60000002, 0.5, 1.60000002)
Sound6.Name = "DrinkSound"
Sound6.Parent = Part4
Sound6.Pitch = 0.55000001192093
Sound6.SoundId = "http://www.roblox.com/asset/?id=12544690"
Sound6.Volume = 1
StringValue7.Name = "Te"
StringValue7.Parent = Part4
Part8.Name = "Handle2"
Part8.Parent = Tool0
Part8.BrickColor = BrickColor.new("Pastel orange")
Part8.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part8.FormFactor = Enum.FormFactor.Plate
Part8.Size = Vector3.new(1, 0.400000006, 1)
Part8.CFrame = CFrame.new(1306.77722, 159.21875, 45.2597923, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(1, 0.788235, 0.788235)
Part8.Position = Vector3.new(1306.77722, 159.21875, 45.2597923)
Part8.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part8.Color = Color3.new(1, 0.788235, 0.788235)
BlockMesh9.Parent = Part8
BlockMesh9.Scale = Vector3.new(1.60000002, 0.25, 1.70000005)
BlockMesh9.Scale = Vector3.new(1.60000002, 0.25, 1.70000005)
StringValue10.Name = "Te"
StringValue10.Parent = Part8
Part11.Name = "Handle4"
Part11.Parent = Tool0
Part11.BrickColor = BrickColor.new("Bright red")
Part11.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part11.FormFactor = Enum.FormFactor.Plate
Part11.Size = Vector3.new(1, 0.400000006, 1)
Part11.CFrame = CFrame.new(1306.46362, 159.338989, 45.0966568, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part11.Position = Vector3.new(1306.46362, 159.338989, 45.0966568)
Part11.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part11.Color = Color3.new(0.768628, 0.156863, 0.109804)
CylinderMesh12.Parent = Part11
CylinderMesh12.Scale = Vector3.new(0.699999988, 0.25, 0.699999988)
CylinderMesh12.Scale = Vector3.new(0.699999988, 0.25, 0.699999988)
StringValue13.Name = "Te"
StringValue13.Parent = Part11
Part14.Name = "Handle5"
Part14.Parent = Tool0
Part14.BrickColor = BrickColor.new("Bright green")
Part14.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part14.FormFactor = Enum.FormFactor.Plate
Part14.Size = Vector3.new(1, 0.400000006, 1)
Part14.CFrame = CFrame.new(1306.77734, 159.333755, 45.2597847, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Color = Color3.new(0.294118, 0.592157, 0.294118)
Part14.Position = Vector3.new(1306.77734, 159.333755, 45.2597847)
Part14.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part14.Color = Color3.new(0.294118, 0.592157, 0.294118)
BlockMesh15.Parent = Part14
BlockMesh15.Scale = Vector3.new(1.70000005, 0.0500000007, 1.70000005)
BlockMesh15.Scale = Vector3.new(1.70000005, 0.0500000007, 1.70000005)
StringValue16.Name = "Te"
StringValue16.Parent = Part14
Part17.Name = "Handle6"
Part17.Parent = Tool0
Part17.BrickColor = BrickColor.new("Brick yellow")
Part17.Rotation = Vector3.new(-148.800003, -15.0900002, 166.509995)
Part17.FormFactor = Enum.FormFactor.Plate
Part17.Size = Vector3.new(1, 0.800000012, 1)
Part17.CFrame = CFrame.new(1306.63196, 159.568878, 45.4630241, -0.938882291, -0.225208953, -0.260349393, -0.33066228, 0.800320506, 0.500149488, 0.0957248211, 0.555669188, -0.825874805)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part17.Position = Vector3.new(1306.63196, 159.568878, 45.4630241)
Part17.Orientation = Vector3.new(-30.0100002, -162.5, -22.4500008)
Part17.Color = Color3.new(0.843137, 0.772549, 0.603922)
CylinderMesh18.Parent = Part17
CylinderMesh18.Scale = Vector3.new(0.0500000007, 1, 0.0500000007)
CylinderMesh18.Scale = Vector3.new(0.0500000007, 1, 0.0500000007)
StringValue19.Name = "Te"
StringValue19.Parent = Part17
Part20.Name = "Top"
Part20.Parent = Tool0
Part20.BrickColor = BrickColor.new("Pastel yellow")
Part20.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part20.FormFactor = Enum.FormFactor.Plate
Part20.Size = Vector3.new(1, 0.400000006, 1)
Part20.CFrame = CFrame.new(1306.77734, 159.448761, 45.2597771, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Color = Color3.new(1, 1, 0.8)
Part20.Position = Vector3.new(1306.77734, 159.448761, 45.2597771)
Part20.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part20.Color = Color3.new(1, 1, 0.8)
BlockMesh21.Parent = Part20
BlockMesh21.Scale = Vector3.new(1.60000002, 0.5, 1.60000002)
BlockMesh21.Scale = Vector3.new(1.60000002, 0.5, 1.60000002)
StringValue22.Name = "Te"
StringValue22.Parent = Part20
Part23.Name = "Handle7"
Part23.Parent = Tool0
Part23.BrickColor = BrickColor.new("Grime")
Part23.Rotation = Vector3.new(-148.800003, -15.0900002, 166.509995)
Part23.FormFactor = Enum.FormFactor.Plate
Part23.Size = Vector3.new(1, 0.400000006, 1)
Part23.CFrame = CFrame.new(1306.5802, 159.752945, 45.5908279, -0.938882291, -0.225208953, -0.260349393, -0.33066228, 0.800320506, 0.500149488, 0.0957248211, 0.555669188, -0.825874805)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
Part23.Position = Vector3.new(1306.5802, 159.752945, 45.5908279)
Part23.Orientation = Vector3.new(-30.0100002, -162.5, -22.4500008)
Part23.Color = Color3.new(0.498039, 0.556863, 0.392157)
SpecialMesh24.Parent = Part23
SpecialMesh24.Scale = Vector3.new(0.25, 0.75, 0.5)
SpecialMesh24.MeshType = Enum.MeshType.Sphere
SpecialMesh24.Scale = Vector3.new(0.25, 0.75, 0.5)
StringValue25.Name = "Te"
StringValue25.Parent = Part23
Part26.Name = "Handle42"
Part26.Parent = Tool0
Part26.BrickColor = BrickColor.new("Bright red")
Part26.Rotation = Vector3.new(-179.990005, -17.5200005, -179.949997)
Part26.FormFactor = Enum.FormFactor.Plate
Part26.Size = Vector3.new(1, 0.400000006, 1)
Part26.CFrame = CFrame.new(1307.09094, 159.338516, 45.4229126, -0.953597844, 0.000793259533, -0.301083595, 0.00077729387, 0.999999642, 0.000172820452, 0.301083624, -6.92292379e-05, -0.953598082)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part26.Position = Vector3.new(1307.09094, 159.338516, 45.4229126)
Part26.Orientation = Vector3.new(-0.00999999978, -162.479996, 0.0399999991)
Part26.Color = Color3.new(0.768628, 0.156863, 0.109804)
CylinderMesh27.Parent = Part26
CylinderMesh27.Scale = Vector3.new(0.699999988, 0.25, 0.699999988)
CylinderMesh27.Scale = Vector3.new(0.699999988, 0.25, 0.699999988)
StringValue28.Name = "Te"
StringValue28.Parent = Part26
Script29.Name = "Welds"
Script29.Parent = Tool0
table.insert(cors,sandbox(Script29,function()
Tool=script.Parent
Handle1 = script.Parent.Handle
Handle2 = script.Parent.Handle2
Handle3 = script.Parent.Handle3
Handle4 = script.Parent.Handle4
Handle5 = script.Parent.Handle5
Handle6 = script.Parent.Handle6
Handle7 = script.Parent.Handle6
Handle8 = script.Parent.Handle7
Top=script.Parent.Top

function equipped()

Handle1:BreakJoints()
Handle8:BreakJoints()

wait(.01)

Weld1 = Instance.new("Weld")
Weld2 = Instance.new("Weld")
Weld3 = Instance.new("Weld")
Weld4 = Instance.new("Weld")
Weld5 = Instance.new("Weld")
Weld6 = Instance.new("Weld")
Weld7 = Instance.new("Weld")
Weld8 = Instance.new("Weld")
Weld9=Instance.new("Weld")

Weld1.Parent=Handle1
Weld1.Part0=Handle1
Weld1.Part1=Handle2
Weld1.C0=CFrame.new(0,.15,0)

Weld2.Parent=Handle1
Weld2.Part0=Handle1
Weld2.Part1=Handle3
Weld2.C0=CFrame.new(0,.21,0)

Weld3.Parent=Handle1
Weld3.Part0=Handle1
Weld3.Part1=Handle4
Weld3.C0=CFrame.new(0.25,.27,0.25)

Weld4.Parent=Handle1
Weld4.Part0=Handle1
Weld4.Part1=Tool.Handle42
Weld4.C0=CFrame.new(-.25,.27,-0.25)

Weld5.Parent=Handle1
Weld5.Part0=Handle1
Weld5.Part1=Tool.Handle5
Weld5.C0=CFrame.new(0,.265,0)

Weld6.Parent=Handle1
Weld6.Part0=Handle1
Weld6.Part1=Top
Weld6.C0=CFrame.new(0,.38,0)

Weld7.Parent=Handle1
Weld7.Part0=Handle1
Weld7.Part1=Handle6
Weld7.C0=CFrame.new(0.2,.5,-.15)*CFrame.fromEulerAnglesXYZ(-math.pi/6,0,-math.pi/8)

Weld8.Parent=Handle1
Weld8.Part0=Handle6
Weld8.Part1=Handle8
Weld8.C0=CFrame.new(0,.23,0)

end
Tool.AncestryChanged:connect(equipped)
end))
StringValue30.Name = "Te"
StringValue30.Parent = Script29
Script31.Name = "SandwichScript"
Script31.Parent = Tool0
table.insert(cors,sandbox(Script31,function()
local Tool = script.Parent;

enabled = true

Uses=3

function onActivated()
	if not enabled  then
		return
	end

	enabled = false
	Tool.GripForward = Vector3.new(-0.976,0,-0.217)
	Tool.GripPos = Vector3.new(0.4,-.6,1)
	Tool.GripRight = Vector3.new(0.217,0, 0.976)
	Tool.GripUp = Vector3.new(0,1,0)


	Tool.Handle.DrinkSound:Play()

	wait(.1)

	local h = Tool.Parent:FindFirstChild("Humanoid")
	if (h ~= nil) then
		if (h.MaxHealth > h.Health + 20) then
			h.Health = h.Health + 10
		else	
			h.Health = h.MaxHealth
		end
	end

	wait(.4)

	local h = Tool.Parent:FindFirstChild("Humanoid")
	if (h ~= nil) then
		if (h.MaxHealth > h.Health + 20) then
			h.Health = h.Health + 7.5
		else	
			h.Health = h.MaxHealth
		end
	end

	wait(.35)

	local h = Tool.Parent:FindFirstChild("Humanoid")
	if (h ~= nil) then
		if (h.MaxHealth > h.Health + 20) then
			h.Health = h.Health + 7.5
		else	
			h.Health = h.MaxHealth
		end
	end

	wait(.4)

	Tool.GripForward = Vector3.new(-0.976,0,-0.217)
	Tool.GripPos = Vector3.new(0.3,0,0)
	Tool.GripRight = Vector3.new(0.217,0,-0.976)
	Tool.GripUp = Vector3.new(0,1,0)

	Uses=Uses-1

	wait(2)


	enabled = true

end

function onEquipped()
	Tool.Handle.OpenSound:play()
end

script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)

while true do
	if Uses==0 then
		Tool.Parent=nil
	end
	Tool.Name="Sandvich("..Uses..")"
	wait()
end

end))
StringValue32.Name = "Te"
StringValue32.Parent = Script31
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
