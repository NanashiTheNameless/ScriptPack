
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
Script1 = Instance.new("Script")
StringValue2 = Instance.new("StringValue")
Part3 = Instance.new("Part")
StringValue4 = Instance.new("StringValue")
Model5 = Instance.new("Model")
Part6 = Instance.new("Part")
CylinderMesh7 = Instance.new("CylinderMesh")
Decal8 = Instance.new("Decal")
Decal9 = Instance.new("Decal")
Decal10 = Instance.new("Decal")
Part11 = Instance.new("Part")
CylinderMesh12 = Instance.new("CylinderMesh")
Part13 = Instance.new("Part")
CylinderMesh14 = Instance.new("CylinderMesh")
Part15 = Instance.new("Part")
CylinderMesh16 = Instance.new("CylinderMesh")
Part17 = Instance.new("Part")
SpecialMesh18 = Instance.new("SpecialMesh")
Part19 = Instance.new("Part")
CylinderMesh20 = Instance.new("CylinderMesh")
Part21 = Instance.new("Part")
CylinderMesh22 = Instance.new("CylinderMesh")
Part23 = Instance.new("Part")
CylinderMesh24 = Instance.new("CylinderMesh")
Part25 = Instance.new("Part")
CylinderMesh26 = Instance.new("CylinderMesh")
Part27 = Instance.new("Part")
CylinderMesh28 = Instance.new("CylinderMesh")
Part29 = Instance.new("Part")
CylinderMesh30 = Instance.new("CylinderMesh")
Part31 = Instance.new("Part")
CylinderMesh32 = Instance.new("CylinderMesh")
Part33 = Instance.new("Part")
CylinderMesh34 = Instance.new("CylinderMesh")
Part35 = Instance.new("Part")
CylinderMesh36 = Instance.new("CylinderMesh")
Script37 = Instance.new("Script")
BoolValue38 = Instance.new("BoolValue")
CFrameValue39 = Instance.new("CFrameValue")
StringValue40 = Instance.new("StringValue")
CFrameValue41 = Instance.new("CFrameValue")
CFrameValue42 = Instance.new("CFrameValue")
ObjectValue43 = Instance.new("ObjectValue")
ObjectValue44 = Instance.new("ObjectValue")
StringValue45 = Instance.new("StringValue")
CFrameValue46 = Instance.new("CFrameValue")
CFrameValue47 = Instance.new("CFrameValue")
ObjectValue48 = Instance.new("ObjectValue")
ObjectValue49 = Instance.new("ObjectValue")
StringValue50 = Instance.new("StringValue")
CFrameValue51 = Instance.new("CFrameValue")
CFrameValue52 = Instance.new("CFrameValue")
ObjectValue53 = Instance.new("ObjectValue")
ObjectValue54 = Instance.new("ObjectValue")
StringValue55 = Instance.new("StringValue")
CFrameValue56 = Instance.new("CFrameValue")
CFrameValue57 = Instance.new("CFrameValue")
ObjectValue58 = Instance.new("ObjectValue")
ObjectValue59 = Instance.new("ObjectValue")
StringValue60 = Instance.new("StringValue")
CFrameValue61 = Instance.new("CFrameValue")
CFrameValue62 = Instance.new("CFrameValue")
ObjectValue63 = Instance.new("ObjectValue")
ObjectValue64 = Instance.new("ObjectValue")
StringValue65 = Instance.new("StringValue")
CFrameValue66 = Instance.new("CFrameValue")
CFrameValue67 = Instance.new("CFrameValue")
ObjectValue68 = Instance.new("ObjectValue")
ObjectValue69 = Instance.new("ObjectValue")
StringValue70 = Instance.new("StringValue")
CFrameValue71 = Instance.new("CFrameValue")
CFrameValue72 = Instance.new("CFrameValue")
ObjectValue73 = Instance.new("ObjectValue")
ObjectValue74 = Instance.new("ObjectValue")
StringValue75 = Instance.new("StringValue")
CFrameValue76 = Instance.new("CFrameValue")
CFrameValue77 = Instance.new("CFrameValue")
ObjectValue78 = Instance.new("ObjectValue")
ObjectValue79 = Instance.new("ObjectValue")
StringValue80 = Instance.new("StringValue")
CFrameValue81 = Instance.new("CFrameValue")
CFrameValue82 = Instance.new("CFrameValue")
ObjectValue83 = Instance.new("ObjectValue")
ObjectValue84 = Instance.new("ObjectValue")
StringValue85 = Instance.new("StringValue")
CFrameValue86 = Instance.new("CFrameValue")
CFrameValue87 = Instance.new("CFrameValue")
ObjectValue88 = Instance.new("ObjectValue")
ObjectValue89 = Instance.new("ObjectValue")
StringValue90 = Instance.new("StringValue")
CFrameValue91 = Instance.new("CFrameValue")
CFrameValue92 = Instance.new("CFrameValue")
ObjectValue93 = Instance.new("ObjectValue")
ObjectValue94 = Instance.new("ObjectValue")
StringValue95 = Instance.new("StringValue")
CFrameValue96 = Instance.new("CFrameValue")
CFrameValue97 = Instance.new("CFrameValue")
ObjectValue98 = Instance.new("ObjectValue")
ObjectValue99 = Instance.new("ObjectValue")
StringValue100 = Instance.new("StringValue")
CFrameValue101 = Instance.new("CFrameValue")
CFrameValue102 = Instance.new("CFrameValue")
ObjectValue103 = Instance.new("ObjectValue")
ObjectValue104 = Instance.new("ObjectValue")
StringValue105 = Instance.new("StringValue")
CFrameValue106 = Instance.new("CFrameValue")
CFrameValue107 = Instance.new("CFrameValue")
ObjectValue108 = Instance.new("ObjectValue")
ObjectValue109 = Instance.new("ObjectValue")
StringValue110 = Instance.new("StringValue")
CFrameValue111 = Instance.new("CFrameValue")
CFrameValue112 = Instance.new("CFrameValue")
ObjectValue113 = Instance.new("ObjectValue")
ObjectValue114 = Instance.new("ObjectValue")
StringValue115 = Instance.new("StringValue")
LocalScript116 = Instance.new("LocalScript")
StringValue117 = Instance.new("StringValue")
Tool0.Name = "SO-DAH"
Tool0.Parent = mas
Tool0.GripForward = Vector3.new(0.89442724, -0, 0.44721362)
Tool0.GripRight = Vector3.new(-0.44721362, 0, 0.89442724)
Tool0.ToolTip = "RRRROOORRRR"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
wait()
script.Parent.AncestryChanged:connect(function()
	w=Instance.new("Weld",script.Parent.Handle)
	w.Part0=w.Parent
	w.Part1=script.Parent.SODAH.Handle
	w.Name="Grip"
end)
end))
StringValue2.Name = "Te"
StringValue2.Parent = Script1
Part3.Name = "Handle"
Part3.Parent = Tool0
Part3.Transparency = 1
Part3.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part3.RotVelocity = Vector3.new(1, 1, 1)
Part3.Elasticity = 0
Part3.FormFactor = Enum.FormFactor.Symmetric
Part3.Friction = 0.80000001192093
Part3.Size = Vector3.new(2, 2, 2)
Part3.CFrame = CFrame.new(67.9510269, 3.46796703, -138.270584, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part3.Position = Vector3.new(67.9510269, 3.46796703, -138.270584)
Part3.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
StringValue4.Name = "Te"
StringValue4.Parent = Part3
Model5.Name = "SODAH"
Model5.Parent = Tool0
Part6.Name = "Handle"
Part6.Parent = Model5
Part6.Material = Enum.Material.Metal
Part6.BrickColor = BrickColor.new("Institutional white")
Part6.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part6.CanCollide = false
Part6.FormFactor = Enum.FormFactor.Custom
Part6.Size = Vector3.new(1, 0.600000024, 1)
Part6.CFrame = CFrame.new(67.9510269, 3.46796703, -138.270584, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part6.Position = Vector3.new(67.9510269, 3.46796703, -138.270584)
Part6.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part6.Color = Color3.new(0.972549, 0.972549, 0.972549)
CylinderMesh7.Parent = Part6
Decal8.Parent = Part6
Decal8.Texture = "http://www.roblox.com/asset/?id=219841135"
Decal9.Parent = Part6
Decal9.Texture = "http://www.roblox.com/asset/?id=28688649"
Decal9.Face = Enum.NormalId.Left
Decal10.Parent = Part6
Decal10.Texture = "http://www.roblox.com/asset/?id=20134700"
Decal10.Face = Enum.NormalId.Right
Part11.Parent = Model5
Part11.Material = Enum.Material.Metal
Part11.BrickColor = BrickColor.new("Dark stone grey")
Part11.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part11.CanCollide = false
Part11.FormFactor = Enum.FormFactor.Custom
Part11.Size = Vector3.new(1, 0.200000003, 1)
Part11.CFrame = CFrame.new(67.9521408, 2.81812906, -138.284424, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part11.Position = Vector3.new(67.9521408, 2.81812906, -138.284424)
Part11.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh12.Parent = Part11
CylinderMesh12.Scale = Vector3.new(0.899999976, 1, 0.899999976)
CylinderMesh12.Scale = Vector3.new(0.899999976, 1, 0.899999976)
Part13.Parent = Model5
Part13.Material = Enum.Material.Metal
Part13.BrickColor = BrickColor.new("Bright red")
Part13.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part13.CanCollide = false
Part13.FormFactor = Enum.FormFactor.Custom
Part13.Size = Vector3.new(1, 0.200000003, 1)
Part13.CFrame = CFrame.new(67.9517136, 3.06807208, -138.279099, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part13.Position = Vector3.new(67.9517136, 3.06807208, -138.279099)
Part13.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part13.Color = Color3.new(0.768628, 0.156863, 0.109804)
CylinderMesh14.Parent = Part13
CylinderMesh14.Scale = Vector3.new(1.00999999, 1, 1.00999999)
CylinderMesh14.Scale = Vector3.new(1.00999999, 1, 1.00999999)
Part15.Parent = Model5
Part15.Material = Enum.Material.Metal
Part15.BrickColor = BrickColor.new("Bright yellow")
Part15.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part15.CanCollide = false
Part15.FormFactor = Enum.FormFactor.Custom
Part15.Size = Vector3.new(1, 0.200000003, 1)
Part15.CFrame = CFrame.new(67.9520569, 2.86812067, -138.283356, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part15.Position = Vector3.new(67.9520569, 2.86812067, -138.283356)
Part15.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part15.Color = Color3.new(0.960784, 0.803922, 0.188235)
CylinderMesh16.Parent = Part15
Part17.Parent = Model5
Part17.Material = Enum.Material.SmoothPlastic
Part17.BrickColor = BrickColor.new("Institutional white")
Part17.Rotation = Vector3.new(-17.3400002, -66.9599991, -17.1299992)
Part17.CanCollide = false
Part17.FormFactor = Enum.FormFactor.Custom
Part17.Size = Vector3.new(0.200000003, 0.219999999, 0.200000003)
Part17.CFrame = CFrame.new(68.2994156, 4.82633257, -138.383133, 0.374023318, 0.115271457, -0.920227885, -0.0191003121, 0.99299264, 0.116623014, 0.927222669, -0.0260430872, 0.373604149)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part17.Position = Vector3.new(68.2994156, 4.82633257, -138.383133)
Part17.Orientation = Vector3.new(-6.69999981, -67.9000015, -1.10000002)
Part17.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh18.Parent = Part17
SpecialMesh18.Scale = Vector3.new(0.300000012, 0.25, 0.300000012)
SpecialMesh18.MeshType = Enum.MeshType.Sphere
SpecialMesh18.Scale = Vector3.new(0.300000012, 0.25, 0.300000012)
Part19.Parent = Model5
Part19.Material = Enum.Material.SmoothPlastic
Part19.BrickColor = BrickColor.new("Institutional white")
Part19.Rotation = Vector3.new(-62.1399994, -48.0699997, -55.9599991)
Part19.CanCollide = false
Part19.FormFactor = Enum.FormFactor.Custom
Part19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part19.CFrame = CFrame.new(68.3551483, 4.90805149, -138.403931, 0.374023318, 0.553662777, -0.744019151, -0.0191003121, 0.806675255, 0.5906865, 0.927222669, -0.206719548, 0.31229049)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part19.Position = Vector3.new(68.3551483, 4.90805149, -138.403931)
Part19.Orientation = Vector3.new(-36.2099991, -67.2300034, -1.36000001)
Part19.Color = Color3.new(0.972549, 0.972549, 0.972549)
CylinderMesh20.Parent = Part19
CylinderMesh20.Offset = Vector3.new(0, -0.0500000007, 0)
CylinderMesh20.Scale = Vector3.new(0.300000012, 0.5, 0.300000012)
CylinderMesh20.Scale = Vector3.new(0.300000012, 0.5, 0.300000012)
Part21.Parent = Model5
Part21.Material = Enum.Material.Metal
Part21.BrickColor = BrickColor.new("Bright yellow")
Part21.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part21.CanCollide = false
Part21.FormFactor = Enum.FormFactor.Custom
Part21.Size = Vector3.new(1, 0.200000003, 1)
Part21.CFrame = CFrame.new(67.9499969, 4.06784391, -138.257813, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part21.Position = Vector3.new(67.9499969, 4.06784391, -138.257813)
Part21.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part21.Color = Color3.new(0.960784, 0.803922, 0.188235)
CylinderMesh22.Parent = Part21
Part23.Parent = Model5
Part23.Material = Enum.Material.Metal
Part23.BrickColor = BrickColor.new("Dark stone grey")
Part23.Rotation = Vector3.new(-79.8300018, -21.1800003, 113.650002)
Part23.CanCollide = false
Part23.FormFactor = Enum.FormFactor.Custom
Part23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part23.CFrame = CFrame.new(68.1166229, 4.26950979, -138.320877, -0.374023318, -0.854169309, -0.361249745, 0.0191003121, -0.396533459, 0.917821407, -0.927222669, 0.336386651, 0.164627671)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part23.Position = Vector3.new(68.1166229, 4.26950979, -138.320877)
Part23.Orientation = Vector3.new(-66.6100006, -65.5, 177.240005)
Part23.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh24.Parent = Part23
CylinderMesh24.Scale = Vector3.new(0.959999979, 0.0799999982, 0.959999979)
CylinderMesh24.Scale = Vector3.new(0.959999979, 0.0799999982, 0.959999979)
Part25.Parent = Model5
Part25.Material = Enum.Material.Metal
Part25.BrickColor = BrickColor.new("Dark stone grey")
Part25.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part25.CanCollide = false
Part25.FormFactor = Enum.FormFactor.Custom
Part25.Size = Vector3.new(1, 0.200000003, 1)
Part25.CFrame = CFrame.new(67.9499512, 4.09782839, -138.257172, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part25.Position = Vector3.new(67.9499512, 4.09782839, -138.257172)
Part25.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part25.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh26.Parent = Part25
CylinderMesh26.Scale = Vector3.new(0.959999979, 1, 0.959999979)
CylinderMesh26.Scale = Vector3.new(0.959999979, 1, 0.959999979)
Part27.Parent = Model5
Part27.Material = Enum.Material.Metal
Part27.BrickColor = BrickColor.new("Bright red")
Part27.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part27.CanCollide = false
Part27.FormFactor = Enum.FormFactor.Custom
Part27.Size = Vector3.new(1, 0.200000003, 1)
Part27.CFrame = CFrame.new(67.9503403, 3.8678925, -138.26207, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part27.Position = Vector3.new(67.9503403, 3.8678925, -138.26207)
Part27.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part27.Color = Color3.new(0.768628, 0.156863, 0.109804)
CylinderMesh28.Parent = Part27
CylinderMesh28.Scale = Vector3.new(1.00999999, 1, 1.00999999)
CylinderMesh28.Scale = Vector3.new(1.00999999, 1, 1.00999999)
Part29.Parent = Model5
Part29.Material = Enum.Material.SmoothPlastic
Part29.BrickColor = BrickColor.new("Institutional white")
Part29.Rotation = Vector3.new(-17.3400002, -66.9599991, -17.1299992)
Part29.CanCollide = false
Part29.FormFactor = Enum.FormFactor.Custom
Part29.Size = Vector3.new(0.200000003, 0.719999969, 0.200000003)
Part29.CFrame = CFrame.new(68.2579117, 4.46884727, -138.373764, 0.374023318, 0.115271457, -0.920227885, -0.0191003121, 0.99299264, 0.116623014, 0.927222669, -0.0260430872, 0.373604149)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part29.Position = Vector3.new(68.2579117, 4.46884727, -138.373764)
Part29.Orientation = Vector3.new(-6.69999981, -67.9000015, -1.10000002)
Part29.Color = Color3.new(0.972549, 0.972549, 0.972549)
CylinderMesh30.Parent = Part29
CylinderMesh30.Scale = Vector3.new(0.300000012, 1, 0.300000012)
CylinderMesh30.Scale = Vector3.new(0.300000012, 1, 0.300000012)
Part31.Parent = Model5
Part31.Material = Enum.Material.SmoothPlastic
Part31.BrickColor = BrickColor.new("Really red")
Part31.Rotation = Vector3.new(-62.1399994, -48.0699997, -55.9599991)
Part31.CanCollide = false
Part31.FormFactor = Enum.FormFactor.Custom
Part31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part31.CFrame = CFrame.new(68.3551483, 4.90805149, -138.403931, 0.374023318, 0.553662777, -0.744019151, -0.0191003121, 0.806675255, 0.5906865, 0.927222669, -0.206719548, 0.31229049)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Color = Color3.new(1, 0, 0)
Part31.Position = Vector3.new(68.3551483, 4.90805149, -138.403931)
Part31.Orientation = Vector3.new(-36.2099991, -67.2300034, -1.36000001)
Part31.Color = Color3.new(1, 0, 0)
CylinderMesh32.Parent = Part31
CylinderMesh32.Offset = Vector3.new(0, 0.0199999996, 0)
CylinderMesh32.Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012)
CylinderMesh32.Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012)
Part33.Parent = Model5
Part33.Material = Enum.Material.Metal
Part33.BrickColor = BrickColor.new("Black")
Part33.Rotation = Vector3.new(1.46000004, -68.0400009, 0.25999999)
Part33.CanCollide = false
Part33.FormFactor = Enum.FormFactor.Custom
Part33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part33.CFrame = CFrame.new(68.2281494, 4.10069323, -138.369339, 0.374023318, -0.00171341305, -0.927417815, -0.0191003121, 0.999771953, -0.00955015607, 0.927222669, 0.0212859474, 0.373905301)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part33.Position = Vector3.new(68.2281494, 4.10069323, -138.369339)
Part33.Orientation = Vector3.new(0.550000012, -68.0400009, -1.09000003)
Part33.Color = Color3.new(0.105882, 0.164706, 0.207843)
CylinderMesh34.Parent = Part33
CylinderMesh34.Scale = Vector3.new(0.959999979, 1.00999999, 0.959999979)
CylinderMesh34.Scale = Vector3.new(0.959999979, 1.00999999, 0.959999979)
Part35.Parent = Model5
Part35.Material = Enum.Material.SmoothPlastic
Part35.BrickColor = BrickColor.new("Institutional white")
Part35.Rotation = Vector3.new(-62.1399994, -48.0699997, -55.9599991)
Part35.CanCollide = false
Part35.FormFactor = Enum.FormFactor.Custom
Part35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part35.CFrame = CFrame.new(68.3551483, 4.90805149, -138.403931, 0.374023318, 0.553662777, -0.744019151, -0.0191003121, 0.806675255, 0.5906865, 0.927222669, -0.206719548, 0.31229049)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part35.Position = Vector3.new(68.3551483, 4.90805149, -138.403931)
Part35.Orientation = Vector3.new(-36.2099991, -67.2300034, -1.36000001)
Part35.Color = Color3.new(0.972549, 0.972549, 0.972549)
CylinderMesh36.Parent = Part35
CylinderMesh36.Offset = Vector3.new(0, 0.0599999987, 0)
CylinderMesh36.Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012)
CylinderMesh36.Scale = Vector3.new(0.300000012, 0.200000003, 0.300000012)
Script37.Name = "Welds"
Script37.Parent = Model5
table.insert(cors,sandbox(Script37,function()
--Saz

--A new system which is a combination of fast-welds and hard-welds.
--Should be far, far better.

--When script.CreateNewWelds.Value == true, we create a new set of weld information on script run.
--This toggles off automatically afterwards, to prevent issues that fast-welds can cause.

--Cruder than I wanted it to be, but not like I intended for anyone but me to use it anyway.
--The fact that you're reading this means you should likely kill yourself. Immediately.

wait(.2)

Tool=script.Parent
scriptmode=script.CreateNewWelds.Value

createweld=function(tag)
	local Handle0=tag.Handle0.Value
	local Handle1=tag.Handle1.Value
	local C0=tag.C0.Value
	local C1=tag.C1.Value
	
	local newweld=Instance.new("Weld")
	newweld.C0=C0
	newweld.C1=C1
	newweld.Part0=Handle0
	newweld.Part1=Handle1
	newweld.Parent=Handle0
	newweld.Name="AutoWeld"
	print("WELDED "..tag.Name)
end
createweldtag=function(Part0,Part1,n)
	local nC0,nC1=nil
	local OR=CFrame.new(Part0.Position)
	local P1C, P2C=Part0.CFrame:inverse()*OR,Part1.CFrame:inverse()*OR
	
	local nt=Instance.new("StringValue")
	nt.Name="WeldTag_"..Part1.Name.."->"..Part0.Name
	
	local ct=Instance.new("CFrameValue")
	ct.Value=P1C
	ct.Name="C0"
	ct.Parent=nt
	
	local ct=Instance.new("CFrameValue")
	ct.Value=P2C
	ct.Name="C1"
	ct.Parent=nt
	
	local ct=Instance.new("ObjectValue")
	ct.Value=Part0
	ct.Name="Handle0"
	ct.Parent=nt
	
	local ct=Instance.new("ObjectValue")
	ct.Value=Part1
	ct.Name="Handle1"
	ct.Parent=nt
	
	nt.Parent=script["CBin"..n]
end
weldparts=function()
	print("Welding")
	for _,v in pairs(script.CBin:children()) do
		createweld(v)
	end
end

if scriptmode==true then
	--new weld time.
	script.CreateNewWelds.Value=false
	for _,v in pairs(script.CBin:children()) do
		v:Remove()
	end
	handles={} --Hull
	for _,v in pairs(Tool:children()) do
		if v:IsA("BasePart") or v.className=="UnionOperation" then
			if v.Name~="Handle" then
				table.insert(handles,v)
			end
		end
	end
	for i=1, #handles do
		createweldtag(Tool.Handle,handles[i],"")
	end
end
weldparts()


end))
BoolValue38.Name = "CreateNewWelds"
BoolValue38.Parent = Script37
CFrameValue39.Name = "CBin"
CFrameValue39.Parent = Script37
StringValue40.Name = "WeldTag_Part->Handle"
StringValue40.Parent = CFrameValue39
CFrameValue41.Name = "C0"
CFrameValue41.Parent = StringValue40
CFrameValue41.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue42.Name = "C1"
CFrameValue42.Parent = StringValue40
CFrameValue42.Value = CFrame.new(0, 0.649986267, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue43.Name = "Handle0"
ObjectValue43.Parent = StringValue40
ObjectValue43.Value = Part6
ObjectValue44.Name = "Handle1"
ObjectValue44.Parent = StringValue40
ObjectValue44.Value = Part11
StringValue45.Name = "WeldTag_Part->Handle"
StringValue45.Parent = CFrameValue39
CFrameValue46.Name = "C0"
CFrameValue46.Parent = StringValue45
CFrameValue46.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue47.Name = "C1"
CFrameValue47.Parent = StringValue45
CFrameValue47.Value = CFrame.new(0, 0.399986267, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue48.Name = "Handle0"
ObjectValue48.Parent = StringValue45
ObjectValue48.Value = Part6
ObjectValue49.Name = "Handle1"
ObjectValue49.Parent = StringValue45
ObjectValue49.Value = Part13
StringValue50.Name = "WeldTag_Part->Handle"
StringValue50.Parent = CFrameValue39
CFrameValue51.Name = "C0"
CFrameValue51.Parent = StringValue50
CFrameValue51.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue52.Name = "C1"
CFrameValue52.Parent = StringValue50
CFrameValue52.Value = CFrame.new(0, 0.599983215, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue53.Name = "Handle0"
ObjectValue53.Parent = StringValue50
ObjectValue53.Value = Part6
ObjectValue54.Name = "Handle1"
ObjectValue54.Parent = StringValue50
ObjectValue54.Value = Part15
StringValue55.Name = "WeldTag_Part->Handle"
StringValue55.Parent = CFrameValue39
CFrameValue56.Name = "C0"
CFrameValue56.Parent = StringValue55
CFrameValue56.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue57.Name = "C1"
CFrameValue57.Parent = StringValue55
CFrameValue57.Value = CFrame.new(0, -1.39193726, 0.204230309, 0, 0, 1, 0.992014349, -0.126125664, 0, 0.126125664, 0.992014349, 0)
ObjectValue58.Name = "Handle0"
ObjectValue58.Parent = StringValue55
ObjectValue58.Value = Part6
ObjectValue59.Name = "Handle1"
ObjectValue59.Parent = StringValue55
ObjectValue59.Value = Part17
StringValue60.Name = "WeldTag_Part->Handle"
StringValue60.Parent = CFrameValue39
CFrameValue61.Name = "C0"
CFrameValue61.Parent = StringValue60
CFrameValue61.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue62.Name = "C1"
CFrameValue62.Parent = StringValue60
CFrameValue62.Value = CFrame.new(0, -1.41299057, -0.508323669, 0, 0, 1, 0.801142395, -0.598474026, 0, 0.598474026, 0.801142395, 0)
ObjectValue63.Name = "Handle0"
ObjectValue63.Parent = StringValue60
ObjectValue63.Value = Part6
ObjectValue64.Name = "Handle1"
ObjectValue64.Parent = StringValue60
ObjectValue64.Value = Part19
StringValue65.Name = "WeldTag_Part->Handle"
StringValue65.Parent = CFrameValue39
CFrameValue66.Name = "C0"
CFrameValue66.Parent = StringValue65
CFrameValue66.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue67.Name = "C1"
CFrameValue67.Parent = StringValue65
CFrameValue67.Value = CFrame.new(0, -0.600013733, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue68.Name = "Handle0"
ObjectValue68.Parent = StringValue65
ObjectValue68.Value = Part6
ObjectValue69.Name = "Handle1"
ObjectValue69.Parent = StringValue65
ObjectValue69.Value = Part21
StringValue70.Name = "WeldTag_Part->Handle"
StringValue70.Parent = CFrameValue39
CFrameValue71.Name = "C0"
CFrameValue71.Parent = StringValue70
CFrameValue71.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue72.Name = "C1"
CFrameValue72.Parent = StringValue70
CFrameValue72.Value = CFrame.new(0, 0.476203918, -0.667572021, 0, 0, -1, -0.387819201, 0.921735346, 0, 0.921735346, 0.387819201, 0)
ObjectValue73.Name = "Handle0"
ObjectValue73.Parent = StringValue70
ObjectValue73.Value = Part6
ObjectValue74.Name = "Handle1"
ObjectValue74.Parent = StringValue70
ObjectValue74.Value = Part23
StringValue75.Name = "WeldTag_Union->Handle"
StringValue75.Parent = CFrameValue39
CFrameValue76.Name = "C0"
CFrameValue76.Parent = StringValue75
CFrameValue76.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue77.Name = "C1"
CFrameValue77.Parent = StringValue75
CFrameValue77.Value = CFrame.new(0, -0.680007935, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue78.Name = "Handle0"
ObjectValue78.Parent = StringValue75
ObjectValue78.Value = Part6
ObjectValue79.Name = "Handle1"
ObjectValue79.Parent = StringValue75
ObjectValue79.Value = nil
StringValue80.Name = "WeldTag_Part->Handle"
StringValue80.Parent = CFrameValue39
CFrameValue81.Name = "C0"
CFrameValue81.Parent = StringValue80
CFrameValue81.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue82.Name = "C1"
CFrameValue82.Parent = StringValue80
CFrameValue82.Value = CFrame.new(0, -0.630004883, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue83.Name = "Handle0"
ObjectValue83.Parent = StringValue80
ObjectValue83.Value = Part6
ObjectValue84.Name = "Handle1"
ObjectValue84.Parent = StringValue80
ObjectValue84.Value = Part25
StringValue85.Name = "WeldTag_Part->Handle"
StringValue85.Parent = CFrameValue39
CFrameValue86.Name = "C0"
CFrameValue86.Parent = StringValue85
CFrameValue86.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue87.Name = "C1"
CFrameValue87.Parent = StringValue85
CFrameValue87.Value = CFrame.new(0, -0.400016785, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue88.Name = "Handle0"
ObjectValue88.Parent = StringValue85
ObjectValue88.Value = Part6
ObjectValue89.Name = "Handle1"
ObjectValue89.Parent = StringValue85
ObjectValue89.Value = Part27
StringValue90.Name = "WeldTag_Part->Handle"
StringValue90.Parent = CFrameValue39
CFrameValue91.Name = "C0"
CFrameValue91.Parent = StringValue90
CFrameValue91.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue92.Name = "C1"
CFrameValue92.Parent = StringValue90
CFrameValue92.Value = CFrame.new(0, -1.03192902, 0.204226494, 0, 0, 1, 0.992014349, -0.126125664, 0, 0.126125664, 0.992014349, 0)
ObjectValue93.Name = "Handle0"
ObjectValue93.Parent = StringValue90
ObjectValue93.Value = Part6
ObjectValue94.Name = "Handle1"
ObjectValue94.Parent = StringValue90
ObjectValue94.Value = Part29
StringValue95.Name = "WeldTag_Part->Handle"
StringValue95.Parent = CFrameValue39
CFrameValue96.Name = "C0"
CFrameValue96.Parent = StringValue95
CFrameValue96.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue97.Name = "C1"
CFrameValue97.Parent = StringValue95
CFrameValue97.Value = CFrame.new(0, -1.41299057, -0.508323669, 0, 0, 1, 0.801142395, -0.598474026, 0, 0.598474026, 0.801142395, 0)
ObjectValue98.Name = "Handle0"
ObjectValue98.Parent = StringValue95
ObjectValue98.Value = Part6
ObjectValue99.Name = "Handle1"
ObjectValue99.Parent = StringValue95
ObjectValue99.Value = Part31
StringValue100.Name = "WeldTag_Part->Handle"
StringValue100.Parent = CFrameValue39
CFrameValue101.Name = "C0"
CFrameValue101.Parent = StringValue100
CFrameValue101.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue102.Name = "C1"
CFrameValue102.Parent = StringValue100
CFrameValue102.Value = CFrame.new(0, -0.630004883, 0.299972057, 0, 0, 1, 1, 0, 0, 0, 1, 0)
ObjectValue103.Name = "Handle0"
ObjectValue103.Parent = StringValue100
ObjectValue103.Value = Part6
ObjectValue104.Name = "Handle1"
ObjectValue104.Parent = StringValue100
ObjectValue104.Value = Part33
StringValue105.Name = "WeldTag_Part->Handle"
StringValue105.Parent = CFrameValue39
CFrameValue106.Name = "C0"
CFrameValue106.Parent = StringValue105
CFrameValue106.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue107.Name = "C1"
CFrameValue107.Parent = StringValue105
CFrameValue107.Value = CFrame.new(0, -1.41299057, -0.508323669, 0, 0, 1, 0.801142395, -0.598474026, 0, 0.598474026, 0.801142395, 0)
ObjectValue108.Name = "Handle0"
ObjectValue108.Parent = StringValue105
ObjectValue108.Value = Part6
ObjectValue109.Name = "Handle1"
ObjectValue109.Parent = StringValue105
ObjectValue109.Value = Part35
StringValue110.Name = "WeldTag_Union->Handle"
StringValue110.Parent = CFrameValue39
CFrameValue111.Name = "C0"
CFrameValue111.Parent = StringValue110
CFrameValue111.Value = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0)
CFrameValue112.Name = "C1"
CFrameValue112.Parent = StringValue110
CFrameValue112.Value = CFrame.new(-1.52587891e-05, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ObjectValue113.Name = "Handle0"
ObjectValue113.Parent = StringValue110
ObjectValue113.Value = Part6
ObjectValue114.Name = "Handle1"
ObjectValue114.Parent = StringValue110
ObjectValue114.Value = nil
StringValue115.Name = "Te"
StringValue115.Parent = Model5
LocalScript116.Parent = Tool0
table.insert(cors,sandbox(LocalScript116,function()
--Saz
--Gud joke

Tool=script.Parent

Sounds={}

newSound=Instance.new("Sound")
vPlayer=game.Players.LocalPlayer

PlayerState=nil
Sensitivity=4 --How fast do we have to move to trigger walk sounds?
Drinking=false

Humanoid = nil
Torso = nil
Setup=false

EARRAEP=false

Fallen=false
FallRand=0
spacedown=false
running = false
Flying = false
Flytime = 0
Maxflytime = 6
Canfly = true

Playerwalk=function() --ez hack
	if Humanoid == nil then return 0 end
	if Fallen == false and Humanoid:GetState()~=Enum.HumanoidStateType.FallingDown and (vPlayer.Character.Head:FindFirstChild("Getup") == nil and vPlayer.Character.Head:FindFirstChild("Fall") == nil) then
		return Vector3.new(vPlayer.Character.Torso.Velocity.x,0,vPlayer.Character.Torso.Velocity.z).magnitude
	else
		return 0
	end
end



newSound=function(ID,Name)
	local s=Instance.new("Sound")
	s.Name=Name
	s.SoundId=ID
	s.Volume=1
	return s
end

Walk1=newSound("http://www.roblox.com/asset/?id=230292217","Walk1")
Walk2=newSound("http://www.roblox.com/asset/?id=230292217","Walk2")
Walk1.Looped=true
Walk2.Looped=true
Fly1=newSound("http://www.roblox.com/asset/?id=230292169","Fly1")
Fly2=newSound("http://www.roblox.com/asset/?id=230292169","Fly2")
Fly3=newSound("http://www.roblox.com/asset/?id=213188156","Fly3")

onClick=function()
	if not Drinking and Humanoid:GetState()~=Enum.HumanoidStateType.FallingDown then
		Drinking = true
		local ns = newSound("http://www.roblox.com/asset/?id=230255655","Drink")
		table.insert(Sounds,ns)
		ns.Parent = vPlayer.Character.Head
		ns:Play()
		game:GetService("Debris"):AddItem(ns,5)
		if EARRAEP then
			for i=1, 1 do
				local ns = newSound("http://www.roblox.com/asset/?id=230255655","Drink")
				table.insert(Sounds,ns)
				ns.Parent = vPlayer.Character.Head
				ns:Play()
				game:GetService("Debris"):AddItem(ns,5)
			end
		end
		Tool.GripForward=Vector3.new(0, -0.371, 0.928)
		Tool.GripPos=Vector3.new(-1.5, 0.42, 0.1)
		Tool.GripRight=Vector3.new(-1, 0, 0)
		Tool.GripUp=Vector3.new(0, 0.928, 0.371)
		wait(2.4)
		Tool.GripForward=Vector3.new(0.894, 0, 0.447)
		Tool.GripPos=Vector3.new(0, 0, 0)
		Tool.GripRight=Vector3.new(-0.447, 0, 0.894)
		Tool.GripUp=Vector3.new(0, 1, 0)
		if EARRAEP == false then
			wait(.25)
			
			local ns = newSound("http://www.roblox.com/asset/?id=230255698","BoldStatement")
			table.insert(Sounds,ns)
			ns.Parent = vPlayer.Character.Head
			ns:Play()
			game:GetService("Debris"):AddItem(ns,8)
			
			wait(3)
			
			local ns = newSound("http://www.roblox.com/asset/?id=230255621","Equip")
			table.insert(Sounds,ns)
			ns.Parent = vPlayer.Character.Head
			ns:Play()
			game:GetService("Debris"):AddItem(ns,5)
			
			if vPlayer.Character:FindFirstChild("GudHat") == nil then
				
				for _,v in pairs(vPlayer.Character:children()) do
					if v.className=="Hat" then
						v:Remove()
					end
				end
				
				local n=Instance.new("Part",vPlayer.Character)
				n.Name="GudHat"
				n.CFrame=vPlayer.Character.Torso.CFrame
				n.Size=Vector3.new(.8,2,.8)
				local m=Instance.new("SpecialMesh",n)
				m.MeshType="FileMesh"
				m.TextureId="http://www.roblox.com/asset/?id=1031480"
				m.MeshId="http://www.roblox.com/asset/?id=1031481"
				m.Scale=Vector3.new(1.5,1.3,1.5)
				local c=Instance.new("Weld",vPlayer.Character.Head)
				c.Name="dix"
				c.Part0=c.Parent
				c.Part1=n
				c.C0=CFrame.new(.225, 1.4, 0.08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				
				if vPlayer.Character.Head:FindFirstChild("face") then
					vPlayer.Character.Head.face.Texture="http://www.roblox.com/asset/?id=113670751"
				end
				
				Humanoid.WalkSpeed = 48
				
				wait(1)
				
				EARRAEP = true
			end
		
		end
		Drinking = false
	end
end
e=0
CheckFly=function()
	if spacedown then
		if Flying == false then
			if Canfly and Humanoid:GetState()~=Enum.HumanoidStateType.FallingDown then
				Flying = true
				Flytime=tick()
				Canfly=false
				Fly1:Play()
				Fly2:Play()
				Fly3:Play()
			end
		else
			if vPlayer.Character.Head:FindFirstChild("RISE") == nil then
				vel = Instance.new("BodyVelocity",vPlayer.Character.Head)
				vel.P=200
				vel.maxForce=Vector3.new(0,850000,0)
				vel.velocity=Vector3.new(0,2,0)
				vel.Name="RISE"
			else
				vel = vPlayer.Character.Head.RISE
			end
			if vel then
				if tick() > Flytime + Maxflytime or Humanoid:GetState()==Enum.HumanoidStateType.FallingDown then
					print("DUN")
					vel.Parent = nil
					Canfly = false
					Flying=false
					Fly1:Stop()
					Fly2:Stop()
					Fly3:Stop()
					Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
					wait(.05)
					vPlayer.Character.Torso.RotVelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/3
				else
					vel.velocity=vel.velocity+Vector3.new(0,.3,0)
					if vel.velocity.y > 40 then
						vel.velocity=Vector3.new(0,40,0)
					end
					Fly3.Pitch = .8 + vel.velocity.y/100
					e=e+1
					if e == 2 then
					e=0
					local r = {BrickColor.new("Hot pink"),BrickColor.new("Lime green"),BrickColor.new("New Yeller"),BrickColor.new("Really blue"),BrickColor.new("Really red"),}
					local p=Instance.new("Part",vPlayer.Character)
					p.Name="DIX"
					p.Transparency=1
					p.CanCollide=false
					p.Anchored=true
					p.CFrame=vPlayer.Character.Torso.CFrame - Vector3.new(0,2.5,0) + Vector3.new(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
					p.formFactor="Symmetric"
					p.BrickColor=r[math.random(1,5)]
					p.TopSurface=0
					p.BottomSurface=0
					p.Material="SmoothPlastic"
					p.Size=Vector3.new(3,3,3)
					local m=Instance.new("SpecialMesh",p)
					m.MeshType="Sphere"
					game:GetService("Debris"):AddItem(p,5)
					local s = Instance.new("Sparkles",p)
					s.SparkleColor=Color3.new(1, 0, 0.74902)
					s.Name="Sparkles"
					coroutine.resume(coroutine.create(function(p,vec)
						for i=0, 15 do
							p.Transparency=i/15
							p.CFrame=p.CFrame + vec/20 - Vector3.new(0,i*.05,0)
							p.Mesh.Scale=p.Mesh.Scale + Vector3.new(.15,.15,.15)
							wait()
						end
						p.Sparkles.Enabled=false
						wait(1)
						p:Remove()
					end),p,Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50))
					local r={BrickColor.new("Dark stone grey"),BrickColor.new("Dark stone grey"),BrickColor.new("Light stone grey")}
					local p=Instance.new("Part",vPlayer.Character)
					p.Name="DIX"
					p.Transparency=1
					p.CanCollide=false
					p.Anchored=true
					p.CFrame=vPlayer.Character.Torso.CFrame - Vector3.new(0,2.5,0) + Vector3.new(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
					p.formFactor="Symmetric"
					p.BrickColor=r[math.random(1,3)]
					p.TopSurface=0
					p.BottomSurface=0
					p.Material="SmoothPlastic"
					p.Size=Vector3.new(3,3,3)
					p.Transparency=1
					local m=Instance.new("SpecialMesh",p)
					m.MeshType="Sphere"
					game:GetService("Debris"):AddItem(p,5)
					coroutine.resume(coroutine.create(function(p,vec)
						for i=0, 20 do
							if i <= 5 then
								p.Transparency=1 - i*.1
							else
								p.Transparency=.5+(i-5)/28
							end
							p.CFrame=p.CFrame + vec/20 - Vector3.new(0,i*.1,0)
							p.Mesh.Scale=p.Mesh.Scale + Vector3.new(.22,.22,.22)
							wait()
						end
						p:Remove()
					end),p,Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50))
					end
				end
			end
		end
	else
		if vPlayer.Character.Head:FindFirstChild("RISE") ~= nil then
			vel = vPlayer.Character.Head.RISE
			vel:Remove()
			Flying=false
			Canfly=false
			Fly1:Stop()
			Fly2:Stop()
			Fly3:Stop()
		end
	end
end

onEquipped=function(Mouse)
	Sounds={}
	if not EARRAEP then
		local ns = newSound("http://www.roblox.com/asset/?id=230255621","Equip")
		table.insert(Sounds,ns)
		ns.Parent = vPlayer.Character.Head
		ns:Play()
		game:GetService("Debris"):AddItem(ns,5)
	end
	Humanoid = nil
	for _,v in pairs(vPlayer.Character:children()) do
		if v.className=="Humanoid" then
			Humanoid = v
			break
		end
	end
	wait(.25)
	Walk1.Parent=vPlayer.Character.Head
	Walk2.Parent=vPlayer.Character.Head
	Fly1.Parent=vPlayer.Character.Head
	Fly2.Parent=vPlayer.Character.Head
	Fly3.Parent=vPlayer.Character.Head
	while Tool.Parent.className=="Model" and Humanoid.Health > 0 do
		game:GetService("RunService").Heartbeat:wait()
		if EARRAEP then
			CheckFly()
			if Canfly==false then
				par,loc = workspace:FindPartOnRay(Ray.new(vPlayer.Character.Torso.Position,Vector3.new(0,-4,0)),vPlayer.Character)
				if par ~= nil then
					Canfly = true
				end
			end
			if Playerwalk() > Sensitivity then
				if running == false then
					Walk1:Play()
					Walk2:Play()
					running = true
				end
			else
				if running == true then
					Walk1:Pause()
					Walk2:Pause()
					running = false
				end
			end
		end
		
		if EARRAEP and Setup==false then
			Setup=true
			jc = Humanoid.Changed:connect(function()
				if Tool.Parent.className=="Model" then --dunno
					Humanoid.Jump = false
				end
			end)
			fc = Humanoid.FallingDown:connect(function()
				if not Fallen then
					Fallen = true
					FallRand=math.random(1,2)
					local r ={"http://www.roblox.com/asset/?id=230292011","http://www.roblox.com/asset/?id=230292073"}
					local ns = newSound(r[FallRand],"Fall")
					table.insert(Sounds,ns)
					ns.Parent = vPlayer.Character.Head
					ns:Play()
					game:GetService("Debris"):AddItem(ns,1)	
				end	
			end)
			gc = Humanoid.GettingUp:connect(function()
				if Fallen then
					Fallen = false
					local r ={"http://www.roblox.com/asset/?id=230292394","http://www.roblox.com/asset/?id=230292118"}
					local ns = newSound(r[FallRand],"Getup")
					table.insert(Sounds,ns)
					ns.Parent = vPlayer.Character.Head
					ns:Play()
					game:GetService("Debris"):AddItem(ns,1)	
				end	
			end)
			Humanoid.Died:connect(function()
				ccn:disconnect()
				onPutAway()
				local ns = newSound("http://www.roblox.com/asset/?id=230255738","Fall")
				table.insert(Sounds,ns)
				ns.Parent = vPlayer.Character.Head
				ns.Pitch=1.02
				ns.Volume=.82
				ns:Play()
				game:GetService("Debris"):AddItem(ns,1)	
				
				p=Instance.new("Part")
				p.Anchored=true
				p.CanCollide=false
				p.Transparency=1
				p.CFrame=vPlayer.Character:GetModelCFrame()
				p.Parent=workspace
				game:GetService("Debris"):AddItem(p,10)
				
				wait(1)
				
				local ns = newSound("http://www.roblox.com/asset/?id=230347445","Fall")
				table.insert(Sounds,ns)
				ns.Parent = vPlayer.Character.Head
				ns.Pitch=1
				ns:Play()
				game:GetService("Debris"):AddItem(ns,5)	
				
				for i=1, 39 do
					game:GetService("RunService").Heartbeat:wait()
				end
				print("9)")
				ns.Volume=0
				
				wait(.25)
				
				e=Instance.new("Explosion",workspace)
				e.Position=p.Position
				e.BlastPressure=e.BlastPressure*2
				e.BlastRadius=12
				
				local ns = newSound("http://www.roblox.com/asset/?id=155326525","DED")
				ns.Parent = p
				ns.Pitch=1
				ns:Play()
				
				local ns = newSound("http://www.roblox.com/asset/?id=163680447","DED")
				ns.Parent = p
				ns.Pitch=1
				ns:Play()
				
				wait(2)
				
				local ns = newSound("http://www.roblox.com/asset/?id=154677261","DED")
				ns.Parent = p
				ns.Pitch=1
				ns:Play()
			end)
			Mouse=game.Players.LocalPlayer:GetMouse()
			mc = Mouse.KeyDown:connect(function(key)
				if key == " " then
					spacedown = true
				end 
			end)
			mcx = Mouse.KeyUp:connect(function(key)
				if key == " " then
					spacedown = false
				end 
			end)
		end
		
	end
end
onPutAway=function()
	if Setup then
		jc:disconnect()
		jc=nil
		fc:disconnect()
		fc=nil
		gc:disconnect()
		gc=nil
		mc:disconnect()
		mc=nil
		mcx:disconnect()
		mcx=nil
	end
	Setup=false
	for _,v in pairs(Sounds) do
		v:Stop()
		v.Pitch=0
		v.Volume=0
		game:GetService("Debris"):AddItem(v,1)
	end
	Walk1:Stop()
	Walk2:Stop()
	Fly1:Stop()
	Fly2:Stop()
	Fly3:Stop()
end
ccn=Tool.Equipped:connect(onEquipped)
Tool.Unequipped:connect(onPutAway)
Tool.Activated:connect(onClick)
end))
StringValue117.Name = "Te"
StringValue117.Parent = LocalScript116
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
