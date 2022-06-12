
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
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
BlockMesh3 = Instance.new("BlockMesh")
Part4 = Instance.new("Part")
BlockMesh5 = Instance.new("BlockMesh")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
Part20 = Instance.new("Part")
Part21 = Instance.new("Part")
Part22 = Instance.new("Part")
Part23 = Instance.new("Part")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
Part26 = Instance.new("Part")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
Part29 = Instance.new("Part")
Part30 = Instance.new("Part")
Part31 = Instance.new("Part")
Part32 = Instance.new("Part")
Part33 = Instance.new("Part")
Part34 = Instance.new("Part")
Part35 = Instance.new("Part")
Part36 = Instance.new("Part")
Part37 = Instance.new("Part")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
Part42 = Instance.new("Part")
Part43 = Instance.new("Part")
Part44 = Instance.new("Part")
Part45 = Instance.new("Part")
Part46 = Instance.new("Part")
Part47 = Instance.new("Part")
Part48 = Instance.new("Part")
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
Part59 = Instance.new("Part")
Part60 = Instance.new("Part")
Part61 = Instance.new("Part")
Part62 = Instance.new("Part")
Part63 = Instance.new("Part")
Part64 = Instance.new("Part")
Part65 = Instance.new("Part")
Part66 = Instance.new("Part")
Part67 = Instance.new("Part")
Part68 = Instance.new("Part")
Part69 = Instance.new("Part")
Part70 = Instance.new("Part")
Part71 = Instance.new("Part")
Part72 = Instance.new("Part")
Part73 = Instance.new("Part")
Part74 = Instance.new("Part")
Part75 = Instance.new("Part")
Part76 = Instance.new("Part")
Part77 = Instance.new("Part")
Part78 = Instance.new("Part")
Part79 = Instance.new("Part")
Part80 = Instance.new("Part")
Part81 = Instance.new("Part")
Part82 = Instance.new("Part")
Part83 = Instance.new("Part")
Part84 = Instance.new("Part")
Part85 = Instance.new("Part")
Part86 = Instance.new("Part")
Part87 = Instance.new("Part")
Model88 = Instance.new("Model")
Script89 = Instance.new("Script")
Part90 = Instance.new("Part")
Script91 = Instance.new("Script")
LocalScript92 = Instance.new("LocalScript")
SpecialMesh93 = Instance.new("SpecialMesh")
Sound94 = Instance.new("Sound")
Sound95 = Instance.new("Sound")
Sound96 = Instance.new("Sound")
Model97 = Instance.new("Model")
Script98 = Instance.new("Script")
Part99 = Instance.new("Part")
Script100 = Instance.new("Script")
LocalScript101 = Instance.new("LocalScript")
SpecialMesh102 = Instance.new("SpecialMesh")
Sound103 = Instance.new("Sound")
Sound104 = Instance.new("Sound")
Sound105 = Instance.new("Sound")
Model106 = Instance.new("Model")
Script107 = Instance.new("Script")
Part108 = Instance.new("Part")
Script109 = Instance.new("Script")
LocalScript110 = Instance.new("LocalScript")
SpecialMesh111 = Instance.new("SpecialMesh")
Sound112 = Instance.new("Sound")
Sound113 = Instance.new("Sound")
Sound114 = Instance.new("Sound")
Script115 = Instance.new("Script")
Part116 = Instance.new("Part")
Part117 = Instance.new("Part")
Part118 = Instance.new("Part")
Part119 = Instance.new("Part")
Part120 = Instance.new("Part")
Part121 = Instance.new("Part")
Part122 = Instance.new("Part")
Part123 = Instance.new("Part")
Part124 = Instance.new("Part")
Part125 = Instance.new("Part")
Part126 = Instance.new("Part")
Part127 = Instance.new("Part")
Part128 = Instance.new("Part")
Part129 = Instance.new("Part")
Part130 = Instance.new("Part")
Part131 = Instance.new("Part")
Part132 = Instance.new("Part")
Part133 = Instance.new("Part")
Part134 = Instance.new("Part")
Part135 = Instance.new("Part")
Part136 = Instance.new("Part")
Part137 = Instance.new("Part")
Part138 = Instance.new("Part")
Part139 = Instance.new("Part")
Part140 = Instance.new("Part")
Part141 = Instance.new("Part")
Part142 = Instance.new("Part")
Part143 = Instance.new("Part")
Part144 = Instance.new("Part")
Part145 = Instance.new("Part")
Part146 = Instance.new("Part")
Part147 = Instance.new("Part")
Part148 = Instance.new("Part")
Part149 = Instance.new("Part")
Part150 = Instance.new("Part")
Part151 = Instance.new("Part")
SpecialMesh152 = Instance.new("SpecialMesh")
Sound153 = Instance.new("Sound")
Sound154 = Instance.new("Sound")
Part155 = Instance.new("Part")
Part156 = Instance.new("Part")
Part157 = Instance.new("Part")
Part158 = Instance.new("Part")
SpecialMesh159 = Instance.new("SpecialMesh")
Part160 = Instance.new("Part")
Part161 = Instance.new("Part")
SpecialMesh162 = Instance.new("SpecialMesh")
Part163 = Instance.new("Part")
Part164 = Instance.new("Part")
Part165 = Instance.new("Part")
Part166 = Instance.new("Part")
Decal167 = Instance.new("Decal")
Part168 = Instance.new("Part")
Part169 = Instance.new("Part")
Part170 = Instance.new("Part")
Part171 = Instance.new("Part")
Part172 = Instance.new("Part")
Part173 = Instance.new("Part")
SpecialMesh174 = Instance.new("SpecialMesh")
Part175 = Instance.new("Part")
Part176 = Instance.new("Part")
Part177 = Instance.new("Part")
Part178 = Instance.new("Part")
Part179 = Instance.new("Part")
Part180 = Instance.new("Part")
SpecialMesh181 = Instance.new("SpecialMesh")
Part182 = Instance.new("Part")
Part183 = Instance.new("Part")
Part184 = Instance.new("Part")
Part185 = Instance.new("Part")
Part186 = Instance.new("Part")
Part187 = Instance.new("Part")
SpecialMesh188 = Instance.new("SpecialMesh")
Part189 = Instance.new("Part")
SpecialMesh190 = Instance.new("SpecialMesh")
Part191 = Instance.new("Part")
SpecialMesh192 = Instance.new("SpecialMesh")
Part193 = Instance.new("Part")
Part194 = Instance.new("Part")
Part195 = Instance.new("Part")
SpecialMesh196 = Instance.new("SpecialMesh")
Part197 = Instance.new("Part")
SpecialMesh198 = Instance.new("SpecialMesh")
Part199 = Instance.new("Part")
Script200 = Instance.new("Script")
LocalScript201 = Instance.new("LocalScript")
IntValue202 = Instance.new("IntValue")
IntValue203 = Instance.new("IntValue")
IntValue204 = Instance.new("IntValue")
IntValue205 = Instance.new("IntValue")
IntValue206 = Instance.new("IntValue")
IntValue207 = Instance.new("IntValue")
IntValue208 = Instance.new("IntValue")
StringValue209 = Instance.new("StringValue")
StringValue210 = Instance.new("StringValue")
IntValue211 = Instance.new("IntValue")
StringValue212 = Instance.new("StringValue")
Model0.Name = "Poseidon"
Model0.Parent = mas
Part1.Parent = Model0
Part1.Material = Enum.Material.Slate
Part1.BrickColor = BrickColor.new("Brown")
Part1.Rotation = Vector3.new(0, -70.1900024, 0)
Part1.Anchored = true
Part1.FormFactor = Enum.FormFactor.Custom
Part1.Size = Vector3.new(38.1979218, 14.8719997, 208.070114)
Part1.CFrame = CFrame.new(139.691437, -8.92495728, 368.986084, 0.338975668, -4.82759333e-07, -0.940795124, 1.78995947e-06, 1, 1.31796341e-07, 0.940795124, -1.72866089e-06, 0.338975668)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part1.Position = Vector3.new(139.691437, -8.92495728, 368.986084)
Part1.Orientation = Vector3.new(0, -70.1900024, 0)
Part1.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part2.Parent = Model0
Part2.Material = Enum.Material.Slate
Part2.BrickColor = BrickColor.new("Steel blue")
Part2.Transparency = 0.5
Part2.Anchored = true
Part2.FormFactor = Enum.FormFactor.Custom
Part2.Size = Vector3.new(118.267914, 0.200000003, 121.224129)
Part2.CFrame = CFrame.new(-1.01541138, -227.434464, 4.21603394, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.new(0.321569, 0.486275, 0.682353)
Part2.Position = Vector3.new(-1.01541138, -227.434464, 4.21603394)
Part2.Color = Color3.new(0.321569, 0.486275, 0.682353)
BlockMesh3.Parent = Part2
BlockMesh3.Scale = Vector3.new(50, 1, 50)
BlockMesh3.Scale = Vector3.new(50, 1, 50)
Part4.Parent = Model0
Part4.Material = Enum.Material.Slate
Part4.BrickColor = BrickColor.new("Steel blue")
Part4.Anchored = true
Part4.FormFactor = Enum.FormFactor.Custom
Part4.Size = Vector3.new(118.267914, 0.200000003, 121.224129)
Part4.CFrame = CFrame.new(-1.01541138, -236.804108, 4.21603394, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0.321569, 0.486275, 0.682353)
Part4.Position = Vector3.new(-1.01541138, -236.804108, 4.21603394)
Part4.Color = Color3.new(0.321569, 0.486275, 0.682353)
BlockMesh5.Parent = Part4
BlockMesh5.Scale = Vector3.new(50, 1, 50)
BlockMesh5.Scale = Vector3.new(50, 1, 50)
Part6.Parent = Model0
Part6.Material = Enum.Material.Cobblestone
Part6.BrickColor = BrickColor.new("Dark stone grey")
Part6.Rotation = Vector3.new(-1.01999998, 86.7300034, 0.75999999)
Part6.Anchored = true
Part6.FormFactor = Enum.FormFactor.Custom
Part6.Size = Vector3.new(92.7599487, 1.24000001, 22.5310955)
Part6.CFrame = CFrame.new(4.99655151, 37.2288208, 223.467926, 0.0570949987, -0.000760017778, 0.998368502, -0.0044209999, 0.999989748, 0.00101408141, -0.998359025, -0.00447168574, 0.0570910498)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part6.Position = Vector3.new(4.99655151, 37.2288208, 223.467926)
Part6.Orientation = Vector3.new(-0.0599999987, 86.7300034, -0.25)
Part6.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part7.Parent = Model0
Part7.Material = Enum.Material.Cobblestone
Part7.BrickColor = BrickColor.new("Smoky grey")
Part7.Rotation = Vector3.new(-1.01999998, 86.7300034, 0.75999999)
Part7.Anchored = true
Part7.FormFactor = Enum.FormFactor.Custom
Part7.Size = Vector3.new(91.1799469, 8.03000069, 29.2210979)
Part7.CFrame = CFrame.new(4.53341675, 41.5744019, 223.442566, 0.0570949987, -0.000760017778, 0.998368502, -0.0044209999, 0.999989748, 0.00101408141, -0.998359025, -0.00447168574, 0.0570910498)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part7.Position = Vector3.new(4.53341675, 41.5744019, 223.442566)
Part7.Orientation = Vector3.new(-0.0599999987, 86.7300034, -0.25)
Part7.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part8.Parent = Model0
Part8.Material = Enum.Material.Cobblestone
Part8.BrickColor = BrickColor.new("Dark stone grey")
Part8.Rotation = Vector3.new(-1.01999998, 86.7300034, 0.75999999)
Part8.Anchored = true
Part8.FormFactor = Enum.FormFactor.Custom
Part8.Size = Vector3.new(91.7499466, 0.99000001, 29.3911018)
Part8.CFrame = CFrame.new(4.83459473, 45.5788574, 223.442047, 0.0570949987, -0.000760017778, 0.998368502, -0.0044209999, 0.999989748, 0.00101408141, -0.998359025, -0.00447168574, 0.0570910498)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part8.Position = Vector3.new(4.83459473, 45.5788574, 223.442047)
Part8.Orientation = Vector3.new(-0.0599999987, 86.7300034, -0.25)
Part8.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part9.Parent = Model0
Part9.Material = Enum.Material.Cobblestone
Part9.BrickColor = BrickColor.new("Dark stone grey")
Part9.Rotation = Vector3.new(82.3099976, 64.7600021, -81.5)
Part9.Anchored = true
Part9.FormFactor = Enum.FormFactor.Custom
Part9.Size = Vector3.new(91.7499466, 0.99000001, 48.2811012)
Part9.CFrame = CFrame.new(40.7548218, 35.6017456, 225.672943, 0.0629979819, 0.42178008, 0.904506922, 0, 0.90630722, -0.422619551, -0.998013735, 0.0266241767, 0.0570955202)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part9.Position = Vector3.new(40.7548218, 35.6017456, 225.672943)
Part9.Orientation = Vector3.new(25, 86.3899994, 0)
Part9.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part10.Parent = Model0
Part10.Material = Enum.Material.Cobblestone
Part10.BrickColor = BrickColor.new("Dark stone grey")
Part10.Rotation = Vector3.new(82.3099976, 64.7600021, -81.5)
Part10.Anchored = true
Part10.FormFactor = Enum.FormFactor.Custom
Part10.Size = Vector3.new(92.7599487, 1.24000001, 45.2710953)
Part10.CFrame = CFrame.new(35.7913513, 28.4799805, 225.35965, 0.0629979819, 0.42178008, 0.904506922, 0, 0.90630722, -0.422619551, -0.998013735, 0.0266241767, 0.0570955202)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part10.Position = Vector3.new(35.7913513, 28.4799805, 225.35965)
Part10.Orientation = Vector3.new(25, 86.3899994, 0)
Part10.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part11.Parent = Model0
Part11.Material = Enum.Material.Cobblestone
Part11.BrickColor = BrickColor.new("Smoky grey")
Part11.Rotation = Vector3.new(82.3099976, 64.7600021, -81.5)
Part11.Anchored = true
Part11.FormFactor = Enum.FormFactor.Custom
Part11.Size = Vector3.new(91.1799469, 9.55000019, 44.5510979)
Part11.CFrame = CFrame.new(36.8596497, 32.1654053, 225.427094, 0.0629979819, 0.42178008, 0.904506922, 0, 0.90630722, -0.422619551, -0.998013735, 0.0266241767, 0.0570955202)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part11.Position = Vector3.new(36.8596497, 32.1654053, 225.427094)
Part11.Orientation = Vector3.new(25, 86.3899994, 0)
Part11.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part12.Parent = Model0
Part12.Material = Enum.Material.Cobblestone
Part12.BrickColor = BrickColor.new("Dark stone grey")
Part12.Rotation = Vector3.new(97.6900024, -64.7600021, 98.5)
Part12.Anchored = true
Part12.FormFactor = Enum.FormFactor.Custom
Part12.Size = Vector3.new(91.7499466, 0.99000001, 46.9511032)
Part12.CFrame = CFrame.new(-31.1102905, 35.3209229, 221.226654, -0.0629979819, -0.42178008, -0.904507041, 0, 0.90630722, -0.422619551, 0.998013735, -0.0266241767, -0.0570955276)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part12.Position = Vector3.new(-31.1102905, 35.3209229, 221.226654)
Part12.Orientation = Vector3.new(25, -93.6100006, 0)
Part12.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part13.Parent = Model0
Part13.Material = Enum.Material.Cobblestone
Part13.BrickColor = BrickColor.new("Smoky grey")
Part13.Rotation = Vector3.new(97.6900024, -64.7600021, 98.5)
Part13.Anchored = true
Part13.FormFactor = Enum.FormFactor.Custom
Part13.Size = Vector3.new(91.1799469, 9.55000019, 43.9510994)
Part13.CFrame = CFrame.new(-26.8849792, 32.0375366, 221.493347, -0.0629979819, -0.42178008, -0.904507041, 0, 0.90630722, -0.422619551, 0.998013735, -0.0266241767, -0.0570955276)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part13.Position = Vector3.new(-26.8849792, 32.0375366, 221.493347)
Part13.Orientation = Vector3.new(25, -93.6100006, 0)
Part13.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part14.Parent = Model0
Part14.Material = Enum.Material.Cobblestone
Part14.BrickColor = BrickColor.new("Dark stone grey")
Part14.Rotation = Vector3.new(97.6900024, -64.7600021, 98.5)
Part14.Anchored = true
Part14.FormFactor = Enum.FormFactor.Custom
Part14.Size = Vector3.new(92.7599487, 1.24000001, 45.2710953)
Part14.CFrame = CFrame.new(-25.5453186, 27.8689575, 221.577911, -0.0629979819, -0.42178008, -0.904507041, 0, 0.90630722, -0.422619551, 0.998013735, -0.0266241767, -0.0570955276)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part14.Position = Vector3.new(-25.5453186, 27.8689575, 221.577911)
Part14.Orientation = Vector3.new(25, -93.6100006, 0)
Part14.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part15.Parent = Model0
Part15.Material = Enum.Material.Cobblestone
Part15.BrickColor = BrickColor.new("Smoky grey")
Part15.Rotation = Vector3.new(180, -86.3899994, 180)
Part15.Anchored = true
Part15.FormFactor = Enum.FormFactor.Custom
Part15.Size = Vector3.new(5.98995209, 35.1399994, 5.41109467)
Part15.CFrame = CFrame.new(-32.0666809, 12.9093628, 183.587769, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part15.Position = Vector3.new(-32.0666809, 12.9093628, 183.587769)
Part15.Orientation = Vector3.new(0, -93.6100006, 0)
Part15.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part16.Parent = Model0
Part16.Material = Enum.Material.Cobblestone
Part16.BrickColor = BrickColor.new("Smoky grey")
Part16.Rotation = Vector3.new(180, -86.3899994, 180)
Part16.Anchored = true
Part16.FormFactor = Enum.FormFactor.Custom
Part16.Size = Vector3.new(5.61995316, 35.1399994, 5.41109467)
Part16.CFrame = CFrame.new(-36.927887, 12.9093628, 260.599487, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part16.Position = Vector3.new(-36.927887, 12.9093628, 260.599487)
Part16.Orientation = Vector3.new(0, -93.6100006, 0)
Part16.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part17.Parent = Model0
Part17.Material = Enum.Material.Cobblestone
Part17.BrickColor = BrickColor.new("Smoky grey")
Part17.Rotation = Vector3.new(180, -86.3899994, 180)
Part17.Anchored = true
Part17.FormFactor = Enum.FormFactor.Custom
Part17.Size = Vector3.new(5.41995335, 35.1399994, 5.41109467)
Part17.CFrame = CFrame.new(-35.7933044, 12.9093628, 242.625305, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part17.Position = Vector3.new(-35.7933044, 12.9093628, 242.625305)
Part17.Orientation = Vector3.new(0, -93.6100006, 0)
Part17.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part18.Parent = Model0
Part18.Material = Enum.Material.Cobblestone
Part18.BrickColor = BrickColor.new("Smoky grey")
Part18.Rotation = Vector3.new(180, -86.3899994, 180)
Part18.Anchored = true
Part18.FormFactor = Enum.FormFactor.Custom
Part18.Size = Vector3.new(6.34995365, 35.1399994, 5.41109467)
Part18.CFrame = CFrame.new(-34.4429626, 12.9093628, 221.232819, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part18.Position = Vector3.new(-34.4429626, 12.9093628, 221.232819)
Part18.Orientation = Vector3.new(0, -93.6100006, 0)
Part18.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part19.Parent = Model0
Part19.Material = Enum.Material.Cobblestone
Part19.BrickColor = BrickColor.new("Smoky grey")
Part19.Rotation = Vector3.new(180, -86.3899994, 180)
Part19.Anchored = true
Part19.FormFactor = Enum.FormFactor.Custom
Part19.Size = Vector3.new(5.58995342, 35.1399994, 5.41109467)
Part19.CFrame = CFrame.new(-33.2258301, 12.9093628, 201.951202, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part19.Position = Vector3.new(-33.2258301, 12.9093628, 201.951202)
Part19.Orientation = Vector3.new(0, -93.6100006, 0)
Part19.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part20.Parent = Model0
Part20.Material = Enum.Material.Cobblestone
Part20.BrickColor = BrickColor.new("Smoky grey")
Part20.Rotation = Vector3.new(180, -86.3899994, 180)
Part20.Anchored = true
Part20.FormFactor = Enum.FormFactor.Custom
Part20.Size = Vector3.new(5.98995209, 35.1399994, 5.41109467)
Part20.CFrame = CFrame.new(47.3533325, 12.9093628, 187.007782, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part20.Position = Vector3.new(47.3533325, 12.9093628, 187.007782)
Part20.Orientation = Vector3.new(0, -93.6100006, 0)
Part20.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part21.Parent = Model0
Part21.Material = Enum.Material.Cobblestone
Part21.BrickColor = BrickColor.new("Smoky grey")
Part21.Rotation = Vector3.new(180, -86.3899994, 180)
Part21.Anchored = true
Part21.FormFactor = Enum.FormFactor.Custom
Part21.Size = Vector3.new(5.41995335, 35.1399994, 5.41109467)
Part21.CFrame = CFrame.new(43.626709, 12.9093628, 246.045288, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part21.Position = Vector3.new(43.626709, 12.9093628, 246.045288)
Part21.Orientation = Vector3.new(0, -93.6100006, 0)
Part21.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part22.Parent = Model0
Part22.Material = Enum.Material.Cobblestone
Part22.BrickColor = BrickColor.new("Smoky grey")
Part22.Rotation = Vector3.new(180, -86.3899994, 180)
Part22.Anchored = true
Part22.FormFactor = Enum.FormFactor.Custom
Part22.Size = Vector3.new(5.61995316, 35.1399994, 5.41109467)
Part22.CFrame = CFrame.new(42.4921265, 12.9093628, 264.019531, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part22.Position = Vector3.new(42.4921265, 12.9093628, 264.019531)
Part22.Orientation = Vector3.new(0, -93.6100006, 0)
Part22.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part23.Parent = Model0
Part23.Material = Enum.Material.Cobblestone
Part23.BrickColor = BrickColor.new("Smoky grey")
Part23.Rotation = Vector3.new(180, -86.3899994, 180)
Part23.Anchored = true
Part23.FormFactor = Enum.FormFactor.Custom
Part23.Size = Vector3.new(5.58995342, 35.1399994, 5.41109467)
Part23.CFrame = CFrame.new(46.1941833, 12.9093628, 205.371216, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part23.Position = Vector3.new(46.1941833, 12.9093628, 205.371216)
Part23.Orientation = Vector3.new(0, -93.6100006, 0)
Part23.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part24.Parent = Model0
Part24.Material = Enum.Material.Cobblestone
Part24.BrickColor = BrickColor.new("Smoky grey")
Part24.Rotation = Vector3.new(180, -86.3899994, 180)
Part24.Anchored = true
Part24.FormFactor = Enum.FormFactor.Custom
Part24.Size = Vector3.new(6.34995365, 35.1399994, 5.41109467)
Part24.CFrame = CFrame.new(44.9770508, 12.9093628, 224.652832, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part24.Position = Vector3.new(44.9770508, 12.9093628, 224.652832)
Part24.Orientation = Vector3.new(0, -93.6100006, 0)
Part24.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part25.Parent = Model0
Part25.Material = Enum.Material.Cobblestone
Part25.BrickColor = BrickColor.new("Smoky grey")
Part25.Rotation = Vector3.new(180, -86.3899994, 180)
Part25.Anchored = true
Part25.FormFactor = Enum.FormFactor.Custom
Part25.Size = Vector3.new(92.7599487, 1.24000001, 88.4910965)
Part25.CFrame = CFrame.new(4.82141113, -4.04122925, 222.207703, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part25.Position = Vector3.new(4.82141113, -4.04122925, 222.207703)
Part25.Orientation = Vector3.new(0, -93.6100006, 0)
Part25.Color = Color3.new(0.356863, 0.364706, 0.411765)
Part26.Parent = Model0
Part26.Material = Enum.Material.Slate
Part26.BrickColor = BrickColor.new("Sand red")
Part26.Rotation = Vector3.new(0, 90, 0)
Part26.Anchored = true
Part26.FormFactor = Enum.FormFactor.Custom
Part26.Size = Vector3.new(41.1619186, 146.040985, 127.173134)
Part26.CFrame = CFrame.new(2.87411499, 83.8338013, -114.820938, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part26.Position = Vector3.new(2.87411499, 83.8338013, -114.820938)
Part26.Orientation = Vector3.new(0, 90, 0)
Part26.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part27.Parent = Model0
Part27.Material = Enum.Material.Grass
Part27.BrickColor = BrickColor.new("Cork")
Part27.Rotation = Vector3.new(180, -68.9199982, 180)
Part27.Anchored = true
Part27.FormFactor = Enum.FormFactor.Custom
Part27.Size = Vector3.new(45.7499237, 0.321999371, 273.980072)
Part27.CFrame = CFrame.new(180.109589, 0.0955505371, 13.2420654, -0.3596268, -8.25977565e-07, -0.93309623, 5.1374036e-07, 1, -1.08320273e-06, 0.93309623, -8.68917823e-07, -0.3596268)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part27.Position = Vector3.new(180.109589, 0.0955505371, 13.2420654)
Part27.Orientation = Vector3.new(0, -111.080002, 0)
Part27.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part28.Parent = Model0
Part28.Material = Enum.Material.Grass
Part28.BrickColor = BrickColor.new("Brick yellow")
Part28.Rotation = Vector3.new(0, -18.6100006, 0)
Part28.Anchored = true
Part28.FormFactor = Enum.FormFactor.Custom
Part28.Size = Vector3.new(31.3599243, 0.284999073, 208.070114)
Part28.CFrame = CFrame.new(331.122589, -0.670379639, 207.899994, 0.947702467, -9.12465453e-07, -0.319155097, 1.27099304e-06, 1, 9.15096734e-07, 0.319155097, -1.27288331e-06, 0.947702467)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part28.Position = Vector3.new(331.122589, -0.670379639, 207.899994)
Part28.Orientation = Vector3.new(0, -18.6100006, 0)
Part28.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part29.Parent = Model0
Part29.Material = Enum.Material.Grass
Part29.BrickColor = BrickColor.new("Pastel yellow")
Part29.Rotation = Vector3.new(0, -70.1900024, 0)
Part29.Anchored = true
Part29.FormFactor = Enum.FormFactor.Custom
Part29.Size = Vector3.new(38.1979218, 0.406999588, 208.070114)
Part29.CFrame = CFrame.new(139.691437, -1.50418091, 368.986084, 0.338975668, -4.82759333e-07, -0.940795124, 1.78995947e-06, 1, 1.31796341e-07, 0.940795124, -1.72866089e-06, 0.338975668)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Color = Color3.new(1, 1, 0.8)
Part29.Position = Vector3.new(139.691437, -1.50418091, 368.986084)
Part29.Orientation = Vector3.new(0, -70.1900024, 0)
Part29.Color = Color3.new(1, 1, 0.8)
Part30.Parent = Model0
Part30.Material = Enum.Material.Grass
Part30.BrickColor = BrickColor.new("Brick yellow")
Part30.Rotation = Vector3.new(0, 63.5800018, 0)
Part30.Anchored = true
Part30.FormFactor = Enum.FormFactor.Custom
Part30.Size = Vector3.new(138.469955, 0.534002304, 147.430099)
Part30.CFrame = CFrame.new(282.80661, -1.5874939, 309.835083, 0.444902062, 0, 0.895579219, 0, 1, 0, -0.895579219, 0, 0.444902062)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part30.Position = Vector3.new(282.80661, -1.5874939, 309.835083)
Part30.Orientation = Vector3.new(0, 63.5800018, 0)
Part30.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part31.Parent = Model0
Part31.Material = Enum.Material.Grass
Part31.BrickColor = BrickColor.new("Brick yellow")
Part31.Rotation = Vector3.new(0, 33.5800018, 0)
Part31.Anchored = true
Part31.FormFactor = Enum.FormFactor.Custom
Part31.Size = Vector3.new(138.469955, 0.534002304, 147.430099)
Part31.CFrame = CFrame.new(282.80661, -0.245666504, 309.835083, 0.833085895, -1.11519661e-07, 0.55314368, 5.8126794e-08, 1, 1.14066296e-07, -0.55314368, -6.28745482e-08, 0.833085895)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part31.Position = Vector3.new(282.80661, -0.245666504, 309.835083)
Part31.Orientation = Vector3.new(0, 33.5800018, 0)
Part31.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part32.Parent = Model0
Part32.Material = Enum.Material.Grass
Part32.BrickColor = BrickColor.new("Cork")
Part32.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part32.Anchored = true
Part32.FormFactor = Enum.FormFactor.Custom
Part32.Size = Vector3.new(30.8799267, 0.208999634, 39.7000427)
Part32.CFrame = CFrame.new(3.04953003, -2.40985107, 106.009064, -0.00023168081, -0.00174524682, -0.99999845, 0.0259599388, 0.999661446, -0.00175067305, 0.999662936, -0.0259603113, -0.000186295874)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part32.Position = Vector3.new(3.04953003, -2.40985107, 106.009064)
Part32.Orientation = Vector3.new(0.100000001, -90.0100021, 1.49000001)
Part32.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part33.Parent = Model0
Part33.Material = Enum.Material.Grass
Part33.BrickColor = BrickColor.new("Brick yellow")
Part33.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part33.Anchored = true
Part33.FormFactor = Enum.FormFactor.Custom
Part33.Size = Vector3.new(30.8799267, 0.208999634, 46.1600456)
Part33.CFrame = CFrame.new(3.04953003, -1.07943726, 97.8290405, -0.00023168081, -0.00174524682, -0.99999845, 0.0259599388, 0.999661446, -0.00175067305, 0.999662936, -0.0259603113, -0.000186295874)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part33.Position = Vector3.new(3.04953003, -1.07943726, 97.8290405)
Part33.Orientation = Vector3.new(0.100000001, -90.0100021, 1.49000001)
Part33.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part34.Parent = Model0
Part34.Material = Enum.Material.Grass
Part34.BrickColor = BrickColor.new("Brick yellow")
Part34.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part34.Anchored = true
Part34.FormFactor = Enum.FormFactor.Custom
Part34.Size = Vector3.new(30.8799267, 0.208999634, 28.1900444)
Part34.CFrame = CFrame.new(3.04953003, -3.50866699, 112.249054, -0.00023168081, -0.00174524682, -0.99999845, 0.0259599388, 0.999661446, -0.00175067305, 0.999662936, -0.0259603113, -0.000186295874)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part34.Position = Vector3.new(3.04953003, -3.50866699, 112.249054)
Part34.Orientation = Vector3.new(0.100000001, -90.0100021, 1.49000001)
Part34.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part35.Parent = Model0
Part35.Material = Enum.Material.Grass
Part35.BrickColor = BrickColor.new("Cork")
Part35.Rotation = Vector3.new(0, -90, 0)
Part35.Anchored = true
Part35.FormFactor = Enum.FormFactor.Custom
Part35.Size = Vector3.new(97.519928, 0.290999591, 25.8400459)
Part35.CFrame = CFrame.new(3.52261353, -5.83224487, 145.711029, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part35.Position = Vector3.new(3.52261353, -5.83224487, 145.711029)
Part35.Orientation = Vector3.new(0, -90, 0)
Part35.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part36.Parent = Model0
Part36.Material = Enum.Material.Slate
Part36.BrickColor = BrickColor.new("Brown")
Part36.Rotation = Vector3.new(180, -86.3899994, 180)
Part36.Anchored = true
Part36.FormFactor = Enum.FormFactor.Custom
Part36.Size = Vector3.new(67.2719498, 160.421997, 68.1690979)
Part36.CFrame = CFrame.new(3.21005249, -158.351379, 220.082947, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part36.Position = Vector3.new(3.21005249, -158.351379, 220.082947)
Part36.Orientation = Vector3.new(0, -93.6100006, 0)
Part36.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part37.Parent = Model0
Part37.Material = Enum.Material.Slate
Part37.BrickColor = BrickColor.new("Brown")
Part37.Rotation = Vector3.new(180, -86.3899994, 180)
Part37.Anchored = true
Part37.FormFactor = Enum.FormFactor.Custom
Part37.Size = Vector3.new(83.3229523, 86.5010071, 86.4440994)
Part37.CFrame = CFrame.new(5.13684082, -195.31308, 221.361359, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part37.Position = Vector3.new(5.13684082, -195.31308, 221.361359)
Part37.Orientation = Vector3.new(0, -93.6100006, 0)
Part37.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part38.Parent = Model0
Part38.Material = Enum.Material.Slate
Part38.BrickColor = BrickColor.new("Brown")
Part38.Rotation = Vector3.new(180, -86.3899994, 180)
Part38.Anchored = true
Part38.FormFactor = Enum.FormFactor.Custom
Part38.Size = Vector3.new(83.3229523, 71.7330017, 86.4440994)
Part38.CFrame = CFrame.new(5.13687134, -52.5808716, 221.361389, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part38.Position = Vector3.new(5.13687134, -52.5808716, 221.361389)
Part38.Orientation = Vector3.new(0, -93.6100006, 0)
Part38.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part39.Parent = Model0
Part39.Material = Enum.Material.Slate
Part39.BrickColor = BrickColor.new("Brown")
Part39.Rotation = Vector3.new(180, -56.3899994, 180)
Part39.Anchored = true
Part39.FormFactor = Enum.FormFactor.Custom
Part39.Size = Vector3.new(96.1999512, 16.7400055, 98.7810974)
Part39.CFrame = CFrame.new(4.82141113, -15.9920959, 222.207703, -0.553564548, -3.47546063e-07, -0.832806289, 2.92143284e-07, 1, -6.11506209e-07, 0.832806289, -5.81806887e-07, -0.553564548)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part39.Position = Vector3.new(4.82141113, -15.9920959, 222.207703)
Part39.Orientation = Vector3.new(0, -123.610001, 0)
Part39.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part40.Parent = Model0
Part40.Material = Enum.Material.Grass
Part40.BrickColor = BrickColor.new("Brick yellow")
Part40.Rotation = Vector3.new(180, -56.3899994, 180)
Part40.Anchored = true
Part40.FormFactor = Enum.FormFactor.Custom
Part40.Size = Vector3.new(96.1999512, 0.409999996, 98.7810974)
Part40.CFrame = CFrame.new(4.82141113, -7.5965271, 222.207703, -0.553564548, -3.47546063e-07, -0.832806289, 2.92143284e-07, 1, -6.11506209e-07, 0.832806289, -5.81806887e-07, -0.553564548)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part40.Position = Vector3.new(4.82141113, -7.5965271, 222.207703)
Part40.Orientation = Vector3.new(0, -123.610001, 0)
Part40.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part41.Parent = Model0
Part41.Material = Enum.Material.Slate
Part41.BrickColor = BrickColor.new("Brown")
Part41.Rotation = Vector3.new(180, -86.3899994, 180)
Part41.Anchored = true
Part41.FormFactor = Enum.FormFactor.Custom
Part41.Size = Vector3.new(96.1999512, 16.7400055, 98.7810974)
Part41.CFrame = CFrame.new(4.82141113, -12.8526917, 222.207703, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part41.Position = Vector3.new(4.82141113, -12.8526917, 222.207703)
Part41.Orientation = Vector3.new(0, -93.6100006, 0)
Part41.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part42.Parent = Model0
Part42.Material = Enum.Material.Grass
Part42.BrickColor = BrickColor.new("Cork")
Part42.Rotation = Vector3.new(180, -86.3899994, 180)
Part42.Anchored = true
Part42.FormFactor = Enum.FormFactor.Custom
Part42.Size = Vector3.new(96.1999512, 0.409999996, 98.7810974)
Part42.CFrame = CFrame.new(4.82141113, -4.4571228, 222.207703, -0.0629976317, -5.65245216e-07, -0.998013675, 2.20123184e-07, 1, -5.80265009e-07, 0.998013675, -2.56241037e-07, -0.0629976317)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part42.Position = Vector3.new(4.82141113, -4.4571228, 222.207703)
Part42.Orientation = Vector3.new(0, -93.6100006, 0)
Part42.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part43.Parent = Model0
Part43.Material = Enum.Material.Slate
Part43.BrickColor = BrickColor.new("Brown")
Part43.Rotation = Vector3.new(180, -81.3899994, 180)
Part43.Anchored = true
Part43.FormFactor = Enum.FormFactor.Custom
Part43.Size = Vector3.new(99.66996, 195.170013, 110.910095)
Part43.CFrame = CFrame.new(-302.011688, -148.689056, 54.4701538, -0.149740458, -6.16907343e-08, -0.988725305, -1.26414079e-08, 1, -6.04796924e-08, 0.988725305, 3.44262041e-09, -0.149740458)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part43.Position = Vector3.new(-302.011688, -148.689056, 54.4701538)
Part43.Orientation = Vector3.new(0, -98.6100006, 0)
Part43.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part44.Parent = Model0
Part44.Material = Enum.Material.Slate
Part44.BrickColor = BrickColor.new("Brown")
Part44.Rotation = Vector3.new(180, -81.3899994, 180)
Part44.Anchored = true
Part44.FormFactor = Enum.FormFactor.Custom
Part44.Size = Vector3.new(115.859962, 43.0300102, 125.020096)
Part44.CFrame = CFrame.new(-302.039398, -39.4031982, 54.6530609, -0.149740458, -6.16907343e-08, -0.988725305, -1.26414079e-08, 1, -6.04796924e-08, 0.988725305, 3.44262041e-09, -0.149740458)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part44.Position = Vector3.new(-302.039398, -39.4031982, 54.6530609)
Part44.Orientation = Vector3.new(0, -98.6100006, 0)
Part44.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part45.Parent = Model0
Part45.Material = Enum.Material.Slate
Part45.BrickColor = BrickColor.new("Brown")
Part45.Rotation = Vector3.new(180, -86.3899994, 180)
Part45.Anchored = true
Part45.FormFactor = Enum.FormFactor.Custom
Part45.Size = Vector3.new(138.469955, 16.7400055, 147.430099)
Part45.CFrame = CFrame.new(-302.039398, -8.51141357, 54.6530609, -0.062997207, -5.70661655e-07, -0.998013675, 1.43240868e-07, 1, -5.80839071e-07, 0.998013675, -1.79547527e-07, -0.062997207)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part45.Position = Vector3.new(-302.039398, -8.51141357, 54.6530609)
Part45.Orientation = Vector3.new(0, -93.6100006, 0)
Part45.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part46.Parent = Model0
Part46.Material = Enum.Material.Grass
Part46.BrickColor = BrickColor.new("Cork")
Part46.Rotation = Vector3.new(180, -86.3899994, 180)
Part46.Anchored = true
Part46.FormFactor = Enum.FormFactor.Custom
Part46.Size = Vector3.new(138.469955, 0.409999996, 147.430099)
Part46.CFrame = CFrame.new(-302.039398, -0.115509033, 54.6530609, -0.062997207, -5.70661655e-07, -0.998013675, 1.43240868e-07, 1, -5.80839071e-07, 0.998013675, -1.79547527e-07, -0.062997207)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part46.Position = Vector3.new(-302.039398, -0.115509033, 54.6530609)
Part46.Orientation = Vector3.new(0, -93.6100006, 0)
Part46.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part47.Parent = Model0
Part47.Material = Enum.Material.Slate
Part47.BrickColor = BrickColor.new("Brown")
Part47.Rotation = Vector3.new(-180, -66.3899994, -180)
Part47.Anchored = true
Part47.FormFactor = Enum.FormFactor.Custom
Part47.Size = Vector3.new(99.66996, 190.790009, 110.910095)
Part47.CFrame = CFrame.new(-358.965302, -146.498428, 310.483521, -0.400538921, 0, -0.916279733, 0, 1, 0, 0.916279733, 0, -0.400538951)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part47.Position = Vector3.new(-358.965302, -146.498428, 310.483521)
Part47.Orientation = Vector3.new(0, -113.610001, 0)
Part47.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part48.Parent = Model0
Part48.Material = Enum.Material.Slate
Part48.BrickColor = BrickColor.new("Brown")
Part48.Rotation = Vector3.new(180, -71.3899994, 180)
Part48.Anchored = true
Part48.FormFactor = Enum.FormFactor.Custom
Part48.Size = Vector3.new(138.469955, 16.7400055, 147.430099)
Part48.CFrame = CFrame.new(-359.039398, -8.51141357, 310.653076, -0.319155633, -4.68109164e-07, -0.947702408, 2.12738797e-07, 1, -5.65584742e-07, 0.947702408, -3.82122437e-07, -0.319155633)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part48.Position = Vector3.new(-359.039398, -8.51141357, 310.653076)
Part48.Orientation = Vector3.new(0, -108.610001, 0)
Part48.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part49.Parent = Model0
Part49.Material = Enum.Material.Slate
Part49.BrickColor = BrickColor.new("Brown")
Part49.Anchored = true
Part49.FormFactor = Enum.FormFactor.Custom
Part49.Size = Vector3.new(138.469955, 42.1100006, 147.430099)
Part49.CFrame = CFrame.new(-14.3424225, -19.3088074, 407.765991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part49.Position = Vector3.new(-14.3424225, -19.3088074, 407.765991)
Part49.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part50.Parent = Model0
Part50.Material = Enum.Material.Slate
Part50.BrickColor = BrickColor.new("Brown")
Part50.Rotation = Vector3.new(-4.28999996, -7, -0.519999981)
Part50.Anchored = true
Part50.FormFactor = Enum.FormFactor.Custom
Part50.Size = Vector3.new(13.759922, 15.0599995, 75.3841171)
Part50.CFrame = CFrame.new(0.257385254, -9.92904663, 299.24469, 0.992500544, 0.00908493157, -0.121901914, -1.79047163e-07, 0.997234464, 0.074319005, 0.122239992, -0.0737616271, 0.989755869)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part50.Position = Vector3.new(0.257385254, -9.92904663, 299.24469)
Part50.Orientation = Vector3.new(-4.26000023, -7.01999998, 0)
Part50.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part51.Parent = Model0
Part51.Material = Enum.Material.Grass
Part51.BrickColor = BrickColor.new("Brick yellow")
Part51.Rotation = Vector3.new(179.990005, 89.8600006, -179.990005)
Part51.Anchored = true
Part51.FormFactor = Enum.FormFactor.Custom
Part51.Size = Vector3.new(37.7099228, 0.270999551, 208.070114)
Part51.CFrame = CFrame.new(-157.381378, -0.77911377, 29.0570984, -0.00241692201, 5.94467508e-07, 0.999997079, 4.53066605e-06, 1, -5.83518954e-07, -0.999997079, 4.52923996e-06, -0.00241692225)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part51.Position = Vector3.new(-157.381378, -0.77911377, 29.0570984)
Part51.Orientation = Vector3.new(0, 90.1399994, 0)
Part51.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part52.Parent = Model0
Part52.Material = Enum.Material.Slate
Part52.BrickColor = BrickColor.new("Brown")
Part52.Rotation = Vector3.new(179.990005, 89.8600006, -179.990005)
Part52.Anchored = true
Part52.FormFactor = Enum.FormFactor.Custom
Part52.Size = Vector3.new(37.7099228, 15.0599995, 208.070114)
Part52.CFrame = CFrame.new(-157.381378, -8.37380981, 29.0570679, -0.00241692201, 5.94467508e-07, 0.999997079, 4.53066605e-06, 1, -5.83518954e-07, -0.999997079, 4.52923996e-06, -0.00241692225)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part52.Position = Vector3.new(-157.381378, -8.37380981, 29.0570679)
Part52.Orientation = Vector3.new(0, 90.1399994, 0)
Part52.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part53.Parent = Model0
Part53.Material = Enum.Material.Grass
Part53.BrickColor = BrickColor.new("Cork")
Part53.Anchored = true
Part53.FormFactor = Enum.FormFactor.Custom
Part53.Size = Vector3.new(187.439911, 0.285000563, 191.390121)
Part53.CFrame = CFrame.new(2.78259277, -0.0399169922, 13.9360352, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part53.Position = Vector3.new(2.78259277, -0.0399169922, 13.9360352)
Part53.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part54.Parent = Model0
Part54.Material = Enum.Material.Slate
Part54.BrickColor = BrickColor.new("Brown")
Part54.Anchored = true
Part54.FormFactor = Enum.FormFactor.Custom
Part54.Size = Vector3.new(118.267914, 218.141998, 121.224129)
Part54.CFrame = CFrame.new(-1.01541138, -167.581131, 4.21603394, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part54.Position = Vector3.new(-1.01541138, -167.581131, 4.21603394)
Part54.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part55.Parent = Model0
Part55.Material = Enum.Material.Slate
Part55.BrickColor = BrickColor.new("Brown")
Part55.Anchored = true
Part55.FormFactor = Enum.FormFactor.Custom
Part55.Size = Vector3.new(146.369934, 35.5699959, 178.19014)
Part55.CFrame = CFrame.new(-3.33432007, -40.7182312, 17.7330322, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part55.Position = Vector3.new(-3.33432007, -40.7182312, 17.7330322)
Part55.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part56.Parent = Model0
Part56.Material = Enum.Material.Slate
Part56.BrickColor = BrickColor.new("Brown")
Part56.Rotation = Vector3.new(180, 81.0800018, -180)
Part56.Anchored = true
Part56.FormFactor = Enum.FormFactor.Custom
Part56.Size = Vector3.new(18.4979229, 17.3670006, 16.0460739)
Part56.CFrame = CFrame.new(-84.1921082, -9.09085083, 398.96637, -0.155102164, 1.11436862e-06, 0.987898409, 5.26830718e-07, 1, -1.04530591e-06, -0.987898409, 3.58326048e-07, -0.155102164)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part56.Position = Vector3.new(-84.1921082, -9.09085083, 398.96637)
Part56.Orientation = Vector3.new(0, 98.9199982, 0)
Part56.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part57.Parent = Model0
Part57.Material = Enum.Material.Slate
Part57.BrickColor = BrickColor.new("Brown")
Part57.Rotation = Vector3.new(0, 33.5800018, 0)
Part57.Anchored = true
Part57.FormFactor = Enum.FormFactor.Custom
Part57.Size = Vector3.new(138.469955, 41.4420013, 147.430099)
Part57.CFrame = CFrame.new(282.80661, -20.9681702, 309.835083, 0.833085954, -1.11519661e-07, 0.55314368, 5.81267017e-08, 1, 1.14066303e-07, -0.55314368, -6.28748467e-08, 0.833085954)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part57.Position = Vector3.new(282.80661, -20.9681702, 309.835083)
Part57.Orientation = Vector3.new(0, 33.5800018, 0)
Part57.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part58.Parent = Model0
Part58.Material = Enum.Material.Slate
Part58.BrickColor = BrickColor.new("Brown")
Part58.Rotation = Vector3.new(0, 33.5800018, 0)
Part58.Anchored = true
Part58.FormFactor = Enum.FormFactor.Custom
Part58.Size = Vector3.new(114.109955, 42.1100006, 132.900101)
Part58.CFrame = CFrame.new(282.646576, -50.0310974, 312.979065, 0.833085895, -3.44201254e-08, 0.55314362, -3.44201254e-08, 1, 1.14066296e-07, -0.55314362, -1.14066296e-07, 0.833085895)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part58.Position = Vector3.new(282.646576, -50.0310974, 312.979065)
Part58.Orientation = Vector3.new(0, 33.5800018, 0)
Part58.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part59.Parent = Model0
Part59.Material = Enum.Material.Slate
Part59.BrickColor = BrickColor.new("Brown")
Part59.Rotation = Vector3.new(0, 33.5800018, 0)
Part59.Anchored = true
Part59.FormFactor = Enum.FormFactor.Custom
Part59.Size = Vector3.new(81.7399597, 234.855011, 105.17009)
Part59.CFrame = CFrame.new(282.331635, -162.486816, 311.307068, 0.833085895, -3.44201254e-08, 0.55314362, -3.44201254e-08, 1, 1.14066296e-07, -0.55314362, -1.14066296e-07, 0.833085895)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.TopSurface = Enum.SurfaceType.Smooth
Part59.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part59.Position = Vector3.new(282.331635, -162.486816, 311.307068)
Part59.Orientation = Vector3.new(0, 33.5800018, 0)
Part59.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part60.Parent = Model0
Part60.Material = Enum.Material.Grass
Part60.BrickColor = BrickColor.new("Brick yellow")
Part60.Anchored = true
Part60.FormFactor = Enum.FormFactor.Custom
Part60.Size = Vector3.new(138.469955, 0.289999843, 147.430099)
Part60.CFrame = CFrame.new(-14.3424225, 1.76269531, 407.765991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part60.Position = Vector3.new(-14.3424225, 1.76269531, 407.765991)
Part60.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part61.Parent = Model0
Part61.Material = Enum.Material.Slate
Part61.BrickColor = BrickColor.new("Brown")
Part61.Rotation = Vector3.new(0, -18.6100006, 0)
Part61.Anchored = true
Part61.FormFactor = Enum.FormFactor.Custom
Part61.Size = Vector3.new(31.3599243, 14.8639994, 208.070114)
Part61.CFrame = CFrame.new(331.122589, -8.15628052, 207.899994, 0.947702467, -9.12465453e-07, -0.319155097, 1.27099304e-06, 1, 9.15096734e-07, 0.319155097, -1.27288331e-06, 0.947702467)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part61.Position = Vector3.new(331.122589, -8.15628052, 207.899994)
Part61.Orientation = Vector3.new(0, -18.6100006, 0)
Part61.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part62.Parent = Model0
Part62.Material = Enum.Material.Slate
Part62.BrickColor = BrickColor.new("Brown")
Part62.Rotation = Vector3.new(0, 71.3899994, 0)
Part62.Anchored = true
Part62.FormFactor = Enum.FormFactor.Custom
Part62.Size = Vector3.new(138.469955, 42.1100006, 147.430099)
Part62.CFrame = CFrame.new(376.295624, -20.4401245, 73.4250488, 0.319155633, 4.68109164e-07, 0.947702408, 2.12738797e-07, 1, -5.65584742e-07, -0.947702408, 3.82122437e-07, 0.319155633)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part62.Position = Vector3.new(376.295624, -20.4401245, 73.4250488)
Part62.Orientation = Vector3.new(0, 71.3899994, 0)
Part62.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part63.Parent = Model0
Part63.Material = Enum.Material.Slate
Part63.BrickColor = BrickColor.new("Brown")
Part63.Rotation = Vector3.new(0, 71.3899994, 0)
Part63.Anchored = true
Part63.FormFactor = Enum.FormFactor.Custom
Part63.Size = Vector3.new(114.109955, 209.658005, 132.900101)
Part63.CFrame = CFrame.new(374.180573, -135.196747, 71.6940308, 0.319155604, 4.97645885e-07, 0.947702289, 1.20191956e-07, 1, -5.65584628e-07, -0.947702289, 2.94415742e-07, 0.319155604)
Part63.BottomSurface = Enum.SurfaceType.Smooth
Part63.TopSurface = Enum.SurfaceType.Smooth
Part63.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part63.Position = Vector3.new(374.180573, -135.196747, 71.6940308)
Part63.Orientation = Vector3.new(0, 71.3899994, 0)
Part63.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part64.Parent = Model0
Part64.Material = Enum.Material.Slate
Part64.BrickColor = BrickColor.new("Brown")
Part64.Anchored = true
Part64.FormFactor = Enum.FormFactor.Custom
Part64.Size = Vector3.new(100.963959, 161.934998, 115.472107)
Part64.CFrame = CFrame.new(-27.0503845, -190.009766, 415.762024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part64.Position = Vector3.new(-27.0503845, -190.009766, 415.762024)
Part64.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part65.Parent = Model0
Part65.Material = Enum.Material.Slate
Part65.BrickColor = BrickColor.new("Brown")
Part65.Anchored = true
Part65.FormFactor = Enum.FormFactor.Custom
Part65.Size = Vector3.new(114.109955, 42.1100006, 132.900101)
Part65.CFrame = CFrame.new(-20.4773865, -50.1896667, 410.010925, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part65.Position = Vector3.new(-20.4773865, -50.1896667, 410.010925)
Part65.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part66.Parent = Model0
Part66.Material = Enum.Material.Slate
Part66.BrickColor = BrickColor.new("Brown")
Part66.Rotation = Vector3.new(180, -68.9199982, 180)
Part66.Anchored = true
Part66.FormFactor = Enum.FormFactor.Custom
Part66.Size = Vector3.new(45.7499237, 15.0599995, 273.980072)
Part66.CFrame = CFrame.new(180.109589, -7.78518677, 13.2420654, -0.359622508, -7.85899147e-07, -0.93309623, 5.33124535e-07, 0.999998391, -1.04529306e-06, 0.933095992, -8.65918594e-07, -0.359622389)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part66.Position = Vector3.new(180.109589, -7.78518677, 13.2420654)
Part66.Orientation = Vector3.new(0, -111.080002, 0)
Part66.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part67.Parent = Model0
Part67.Material = Enum.Material.Slate
Part67.BrickColor = BrickColor.new("Brown")
Part67.Rotation = Vector3.new(-180, 18.6100006, -180)
Part67.Anchored = true
Part67.FormFactor = Enum.FormFactor.Custom
Part67.Size = Vector3.new(44.4659195, 17.0589981, 208.070114)
Part67.CFrame = CFrame.new(-313.777374, -9.49536133, 176.208038, -0.947700799, 9.12463861e-07, 0.319155097, 1.26860311e-06, 0.999998391, 9.15094915e-07, -0.319154978, 1.26466887e-06, -0.94770062)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part67.Position = Vector3.new(-313.777374, -9.49536133, 176.208038)
Part67.Orientation = Vector3.new(0, 161.389999, 0)
Part67.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part68.Parent = Model0
Part68.Material = Enum.Material.Slate
Part68.BrickColor = BrickColor.new("Brown")
Part68.Rotation = Vector3.new(-180, -56.3899994, -180)
Part68.Anchored = true
Part68.FormFactor = Enum.FormFactor.Custom
Part68.Size = Vector3.new(172.469955, 16.7400055, 187.430099)
Part68.CFrame = CFrame.new(-366.285004, -9.83224487, 313.364075, -0.55356437, 0, -0.832806408, 0, 1, 0, 0.832806468, 0, -0.553564429)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part68.Position = Vector3.new(-366.285004, -9.83224487, 313.364075)
Part68.Orientation = Vector3.new(0, -123.610001, 0)
Part68.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part69.Parent = Model0
Part69.Material = Enum.Material.Grass
Part69.BrickColor = BrickColor.new("Cork")
Part69.Rotation = Vector3.new(-180, -56.3899994, -180)
Part69.Anchored = true
Part69.FormFactor = Enum.FormFactor.Custom
Part69.Size = Vector3.new(172.469955, 0.409999996, 187.430099)
Part69.CFrame = CFrame.new(-366.285004, -1.43673706, 313.364075, -0.55356437, 0, -0.832806408, 0, 1, 0, 0.832806468, 0, -0.553564429)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part69.Position = Vector3.new(-366.285004, -1.43673706, 313.364075)
Part69.Orientation = Vector3.new(0, -123.610001, 0)
Part69.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part70.Parent = Model0
Part70.Material = Enum.Material.Grass
Part70.BrickColor = BrickColor.new("Cork")
Part70.Rotation = Vector3.new(-180, 18.6100006, -180)
Part70.Anchored = true
Part70.FormFactor = Enum.FormFactor.Custom
Part70.Size = Vector3.new(44.1499214, 1.05999947, 208.070114)
Part70.CFrame = CFrame.new(-313.866425, -1.14248657, 176.17804, -0.947700799, 9.12463861e-07, 0.319155097, 1.26860311e-06, 0.999998391, 9.15094915e-07, -0.319154978, 1.26466887e-06, -0.94770062)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part70.Position = Vector3.new(-313.866425, -1.14248657, 176.17804)
Part70.Orientation = Vector3.new(0, 161.389999, 0)
Part70.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part71.Parent = Model0
Part71.Material = Enum.Material.Slate
Part71.BrickColor = BrickColor.new("Brown")
Part71.Rotation = Vector3.new(-180, -66.3899994, -180)
Part71.Anchored = true
Part71.FormFactor = Enum.FormFactor.Custom
Part71.Size = Vector3.new(115.859962, 43.0300102, 125.020096)
Part71.CFrame = CFrame.new(-359.039398, -39.4031982, 310.653076, -0.400538921, 0, -0.916279733, 0, 1, 0, 0.916279733, 0, -0.400538951)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part71.Position = Vector3.new(-359.039398, -39.4031982, 310.653076)
Part71.Orientation = Vector3.new(0, -113.610001, 0)
Part71.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part72.Parent = Model0
Part72.Material = Enum.Material.Grass
Part72.BrickColor = BrickColor.new("Brick yellow")
Part72.Rotation = Vector3.new(180, -71.3899994, 180)
Part72.Anchored = true
Part72.FormFactor = Enum.FormFactor.Custom
Part72.Size = Vector3.new(138.469955, 0.409999996, 147.430099)
Part72.CFrame = CFrame.new(-359.039398, -0.115509033, 310.653076, -0.319155633, -4.68109164e-07, -0.947702408, 2.12738797e-07, 1, -5.65584742e-07, 0.947702408, -3.82122437e-07, -0.319155633)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part72.Position = Vector3.new(-359.039398, -0.115509033, 310.653076)
Part72.Orientation = Vector3.new(0, -108.610001, 0)
Part72.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part73.Parent = Model0
Part73.Material = Enum.Material.Grass
Part73.BrickColor = BrickColor.new("Cork")
Part73.Rotation = Vector3.new(0, 71.3899994, 0)
Part73.Anchored = true
Part73.FormFactor = Enum.FormFactor.Custom
Part73.Size = Vector3.new(138.469955, 0.652999699, 147.430099)
Part73.CFrame = CFrame.new(376.295624, 0.799102783, 73.4250488, 0.319155365, 4.68108766e-07, 0.947702408, 2.12738996e-07, 1, -5.65584287e-07, -0.947702408, 3.82122494e-07, 0.319155365)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part73.Position = Vector3.new(376.295624, 0.799102783, 73.4250488)
Part73.Orientation = Vector3.new(0, 71.3899994, 0)
Part73.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part74.Parent = Model0
Part74.Material = Enum.Material.Slate
Part74.BrickColor = BrickColor.new("Brown")
Part74.Rotation = Vector3.new(0, -90, 0)
Part74.Anchored = true
Part74.FormFactor = Enum.FormFactor.Custom
Part74.Size = Vector3.new(97.519928, 8.77999973, 25.8400459)
Part74.CFrame = CFrame.new(3.52261353, -10.1875, 145.711029, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part74.Position = Vector3.new(3.52261353, -10.1875, 145.711029)
Part74.Orientation = Vector3.new(0, -90, 0)
Part74.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part75.Parent = Model0
Part75.Material = Enum.Material.Slate
Part75.BrickColor = BrickColor.new("Brown")
Part75.Rotation = Vector3.new(0, 89.9800034, 0.209999993)
Part75.Anchored = true
Part75.FormFactor = Enum.FormFactor.Custom
Part75.Size = Vector3.new(41.8999214, 137.720001, 3.70000005)
Part75.CFrame = CFrame.new(-69.043396, 62.7405396, -128.762955, 0.00034530327, -1.26949726e-06, 0.99999994, 0.00367644569, 0.999993265, 0, -0.999993205, 0.00367644546, 0.000345305598)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part75.Position = Vector3.new(-69.043396, 62.7405396, -128.762955)
Part75.Orientation = Vector3.new(0, 89.9800034, 0.209999993)
Part75.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part76.Parent = Model0
Part76.Material = Enum.Material.Slate
Part76.BrickColor = BrickColor.new("Brown")
Part76.Rotation = Vector3.new(0, 68.9199982, 0)
Part76.Anchored = true
Part76.FormFactor = Enum.FormFactor.Custom
Part76.Size = Vector3.new(49.9459229, 15.0599995, 273.980072)
Part76.CFrame = CFrame.new(-167.660889, -10.2437134, 383.309631, 0.3596268, 7.85908526e-07, 0.93309623, 5.26830718e-07, 1, -1.04530591e-06, -0.93309623, 8.67503786e-07, 0.3596268)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part76.Position = Vector3.new(-167.660889, -10.2437134, 383.309631)
Part76.Orientation = Vector3.new(0, 68.9199982, 0)
Part76.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part77.Parent = Model0
Part77.Material = Enum.Material.Slate
Part77.BrickColor = BrickColor.new("Brown")
Part77.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part77.Anchored = true
Part77.FormFactor = Enum.FormFactor.Custom
Part77.Size = Vector3.new(30.8799267, 8.77999973, 46.1600456)
Part77.CFrame = CFrame.new(3.04956055, -5.24569702, 97.8290405, -1.49011655e-07, -1.12250211e-06, -0.99999845, 9.35988453e-07, 0.999998391, -1.12023963e-06, 0.999998212, -9.28538384e-07, -1.19208998e-07)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part77.Position = Vector3.new(3.04956055, -5.24569702, 97.8290405)
Part77.Orientation = Vector3.new(0, -90, 0)
Part77.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part78.Parent = Model0
Part78.Material = Enum.Material.Slate
Part78.BrickColor = BrickColor.new("Brown")
Part78.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part78.Anchored = true
Part78.FormFactor = Enum.FormFactor.Custom
Part78.Size = Vector3.new(30.8799267, 8.77999973, 39.7000427)
Part78.CFrame = CFrame.new(3.04956055, -6.57437134, 106.009064, -1.49011655e-07, -1.12250211e-06, -0.99999845, 9.35988453e-07, 0.999998391, -1.12023963e-06, 0.999998212, -9.28538384e-07, -1.19208998e-07)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part78.Position = Vector3.new(3.04956055, -6.57437134, 106.009064)
Part78.Orientation = Vector3.new(0, -90, 0)
Part78.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part79.Parent = Model0
Part79.Material = Enum.Material.Slate
Part79.BrickColor = BrickColor.new("Brown")
Part79.Rotation = Vector3.new(96.0699997, -89.9000015, 97.5599976)
Part79.Anchored = true
Part79.FormFactor = Enum.FormFactor.Custom
Part79.Size = Vector3.new(30.8799267, 8.77999973, 28.1900444)
Part79.CFrame = CFrame.new(3.04956055, -7.67355347, 112.249054, -1.49011655e-07, -1.12250211e-06, -0.99999845, 9.35988453e-07, 0.999998391, -1.12023963e-06, 0.999998212, -9.28538384e-07, -1.19208998e-07)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part79.Position = Vector3.new(3.04956055, -7.67355347, 112.249054)
Part79.Orientation = Vector3.new(0, -90, 0)
Part79.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part80.Parent = Model0
Part80.Material = Enum.Material.Slate
Part80.BrickColor = BrickColor.new("Brown")
Part80.Rotation = Vector3.new(0, 89.9800034, 0.209999993)
Part80.Anchored = true
Part80.FormFactor = Enum.FormFactor.Custom
Part80.Size = Vector3.new(66.6399231, 12.0900021, 140.820129)
Part80.CFrame = CFrame.new(2.96664429, 1.00143433, -116.39296, 0.00034530327, -1.26949726e-06, 0.99999994, 0.00367644569, 0.999993265, 0, -0.999993205, 0.00367644546, 0.000345305598)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part80.Position = Vector3.new(2.96664429, 1.00143433, -116.39296)
Part80.Orientation = Vector3.new(0, 89.9800034, 0.209999993)
Part80.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part81.Parent = Model0
Part81.Material = Enum.Material.Slate
Part81.BrickColor = BrickColor.new("Brown")
Part81.Rotation = Vector3.new(0, 89.9800034, 0.209999993)
Part81.Anchored = true
Part81.FormFactor = Enum.FormFactor.Custom
Part81.Size = Vector3.new(41.8999214, 137.470001, 3.70000005)
Part81.CFrame = CFrame.new(73.8366089, 62.2061768, -128.762955, 0.00034530327, -1.26949726e-06, 0.99999994, 0.00367644569, 0.999993265, 0, -0.999993205, 0.00367644546, 0.000345305598)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part81.Position = Vector3.new(73.8366089, 62.2061768, -128.762955)
Part81.Orientation = Vector3.new(0, 89.9800034, 0.209999993)
Part81.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part82.Parent = Model0
Part82.Material = Enum.Material.Grass
Part82.BrickColor = BrickColor.new("Cork")
Part82.Rotation = Vector3.new(-4.28999996, -7, -0.519999981)
Part82.Anchored = true
Part82.FormFactor = Enum.FormFactor.Custom
Part82.Size = Vector3.new(13.759922, 0.467999458, 75.3841171)
Part82.CFrame = CFrame.new(0.323669434, -2.31311035, 298.706543, 0.992500544, 0.00908493251, -0.121901914, -1.81607902e-07, 0.997234523, 0.0743189976, 0.122239977, -0.0737616271, 0.989755809)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part82.Position = Vector3.new(0.323669434, -2.31311035, 298.706543)
Part82.Orientation = Vector3.new(-4.26000023, -7.01999998, 0)
Part82.Color = Color3.new(0.737255, 0.607843, 0.364706)
Part83.Parent = Model0
Part83.Material = Enum.Material.Grass
Part83.BrickColor = BrickColor.new("Brick yellow")
Part83.Rotation = Vector3.new(0, 68.9199982, 0)
Part83.Anchored = true
Part83.FormFactor = Enum.FormFactor.Custom
Part83.Size = Vector3.new(49.9459229, 0.515999377, 273.980072)
Part83.CFrame = CFrame.new(-167.660889, -2.81021118, 383.309631, 0.3596268, 7.85908526e-07, 0.93309623, 5.26830718e-07, 1, -1.04530591e-06, -0.93309623, 8.67503786e-07, 0.3596268)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part83.Position = Vector3.new(-167.660889, -2.81021118, 383.309631)
Part83.Orientation = Vector3.new(0, 68.9199982, 0)
Part83.Color = Color3.new(0.843137, 0.772549, 0.603922)
Part84.Parent = Model0
Part84.Material = Enum.Material.Slate
Part84.BrickColor = BrickColor.new("Brown")
Part84.Rotation = Vector3.new(0, 63.5800018, 0)
Part84.Anchored = true
Part84.FormFactor = Enum.FormFactor.Custom
Part84.Size = Vector3.new(138.469955, 41.4420013, 147.430099)
Part84.CFrame = CFrame.new(282.80661, -22.3088379, 309.835083, 0.444902122, 0, 0.895579219, 0, 1, 0, -0.895579219, 0, 0.444902122)
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.TopSurface = Enum.SurfaceType.Smooth
Part84.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part84.Position = Vector3.new(282.80661, -22.3088379, 309.835083)
Part84.Orientation = Vector3.new(0, 63.5800018, 0)
Part84.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part85.Parent = Model0
Part85.Material = Enum.Material.Slate
Part85.BrickColor = BrickColor.new("Brown")
Part85.Anchored = true
Part85.FormFactor = Enum.FormFactor.Custom
Part85.Size = Vector3.new(187.299911, 22.6630001, 191.390121)
Part85.CFrame = CFrame.new(2.8526001, -11.5986633, 13.9360352, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part85.Position = Vector3.new(2.8526001, -11.5986633, 13.9360352)
Part85.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part86.Parent = Model0
Part86.Material = Enum.Material.Slate
Part86.BrickColor = BrickColor.new("Brown")
Part86.Rotation = Vector3.new(0, 63.5800018, 0)
Part86.Anchored = true
Part86.FormFactor = Enum.FormFactor.Custom
Part86.Size = Vector3.new(114.109955, 42.1100006, 132.900101)
Part86.CFrame = CFrame.new(284.23996, -51.3705139, 312.637878, 0.444902122, 0, 0.895579219, 0, 1, 0, -0.895579219, 0, 0.444902122)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part86.Position = Vector3.new(284.23996, -51.3705139, 312.637878)
Part86.Orientation = Vector3.new(0, 63.5800018, 0)
Part86.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part87.Parent = Model0
Part87.Material = Enum.Material.Slate
Part87.BrickColor = BrickColor.new("Brown")
Part87.Rotation = Vector3.new(0, 89.9800034, 0.209999993)
Part87.Anchored = true
Part87.FormFactor = Enum.FormFactor.Custom
Part87.Size = Vector3.new(60.6399231, 15.3600025, 140.270126)
Part87.CFrame = CFrame.new(2.96664429, 2.63729858, -119.39296, 0.00034530327, -1.26949726e-06, 0.99999994, 0.00367644569, 0.999993265, 0, -0.999993205, 0.00367644546, 0.000345305598)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part87.Position = Vector3.new(2.96664429, 2.63729858, -119.39296)
Part87.Orientation = Vector3.new(0, 89.9800034, 0.209999993)
Part87.Color = Color3.new(0.486275, 0.360784, 0.27451)
Model88.Name = "HealthPickup"
Model88.Parent = Model0
Script89.Parent = Model88
table.insert(cors,sandbox(Script89,function()
wait()
bottle = script.Parent.Bottle
newBottle = bottle:clone()
deb = false

function regen()
if deb == false then
bottle = script.Parent:findFirstChild("Bottle")
if bottle == nil then
deb = true
wait(35)
bottle = newBottle:clone()
bottle.Parent = script.Parent
end
deb = false
end
end

script.Parent.ChildRemoved:connect(regen)

end))
Part90.Name = "Bottle"
Part90.Parent = Model88
Part90.BrickColor = BrickColor.new("Bright red")
Part90.Transparency = 0.00099998712539673
Part90.Rotation = Vector3.new(180, 0, 180)
Part90.CanCollide = false
Part90.FormFactor = Enum.FormFactor.Custom
Part90.Size = Vector3.new(2, 2, 2)
Part90.CFrame = CFrame.new(-267.909973, 5.18121338, 60.9611816, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part90.Position = Vector3.new(-267.909973, 5.18121338, 60.9611816)
Part90.Orientation = Vector3.new(0, -180, 0)
Part90.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script91.Name = "HealScript"
Script91.Parent = Part90
table.insert(cors,sandbox(Script91,function()
bottle = script.Parent

deb = false

healSound = Instance.new("Sound")
healSound.SoundId = "http://www.roblox.com/asset/?id=2101144"
healSound.Volume = 0.75
healSound.Pitch = 1.15
healSound.Parent = bottle

wait()

bottle.CFrame = bottle.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/12,0,0)

bp = Instance.new("BodyPosition")
bp.D = 1250
bp.P = 10000
bp.maxForce = Vector3.new(50000,50000,50000)
bp.position = bottle.Position
bp.Parent = bottle

wait(0.15)

bottle.Anchored = false
--[[
bg = Instance.new("BodyGyro")
bg.D = 500
bg.P = 3000
bg.maxTorque = Vector3.new(400000,0,400000)
bg.cframe = bottle.CFrame
bg.Parent = bottle
]]
wait()

ba = Instance.new("BodyAngularVelocity")
ba.P = 50000
ba.angularvelocity = Vector3.new(0,-2.5,0)
ba.maxTorque = Vector3.new(ba.P,ba.P,ba.P)
ba.Parent = bottle

function heal(hit)
if deb == false then
deb = true
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil then
local sc1 = hum.Parent:findFirstChild("HEAL")
if sc1 ~= nil then
wait(0.1)
deb = false
end
if hum.Health < hum.MaxHealth then
healSound:play()
local sc = script.HEAL:clone()
sc.Disabled = false
sc.Parent = hum.Parent
wait()
bottle:remove()
end
end
deb = false
end
end

bottle.Touched:connect(heal)

end))
LocalScript92.Name = "HEAL"
LocalScript92.Parent = Script91
LocalScript92.Disabled = true
table.insert(cors,sandbox(LocalScript92,function()
wait()

guy = script.Parent

deb = false
--[[
function energize(hum)
local p = game.Players:GetPlayerFromCharacter(hum.Parent)
if p ~= nil then
local stats = p.PlayerGui:findFirstChild("Stats")
if stats ~= nil then
local e = stats:findFirstChild("Energy")
if e ~= nil then
e.Value.Value = 100
end
end
end
end
]]
function heal()
local hum = guy:findFirstChild("Humanoid")
if hum ~= nil then
if hum.Health < hum.MaxHealth then
hum:TakeDamage(-60)
--energize(hum)
wait()
hum:TakeDamage(1)
wait()
hum:TakeDamage(-1)
wait()
script:remove()
end
end
end

heal()

script:remove()

end))
SpecialMesh93.Parent = Part90
SpecialMesh93.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh93.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh93.MeshType = Enum.MeshType.FileMesh
SpecialMesh93.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound94.Parent = Part90
Sound94.Pitch = 1.1499999761581
Sound94.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound94.Volume = 0.75
Sound95.Parent = Part90
Sound95.Pitch = 1.1499999761581
Sound95.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound95.Volume = 0.75
Sound96.Parent = Part90
Sound96.Pitch = 1.1499999761581
Sound96.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound96.Volume = 0.75
Model97.Name = "HealthPickup"
Model97.Parent = Model0
Script98.Parent = Model97
table.insert(cors,sandbox(Script98,function()
wait()
bottle = script.Parent.Bottle
newBottle = bottle:clone()
deb = false

function regen()
if deb == false then
bottle = script.Parent:findFirstChild("Bottle")
if bottle == nil then
deb = true
wait(35)
bottle = newBottle:clone()
bottle.Parent = script.Parent
end
deb = false
end
end

script.Parent.ChildRemoved:connect(regen)

end))
Part99.Name = "Bottle"
Part99.Parent = Model97
Part99.BrickColor = BrickColor.new("Bright red")
Part99.Transparency = 0.00099998712539673
Part99.Rotation = Vector3.new(180, 0, 180)
Part99.CanCollide = false
Part99.FormFactor = Enum.FormFactor.Custom
Part99.Size = Vector3.new(2, 2, 2)
Part99.CFrame = CFrame.new(384.920013, 5.18121338, 70.6212158, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part99.Position = Vector3.new(384.920013, 5.18121338, 70.6212158)
Part99.Orientation = Vector3.new(0, -180, 0)
Part99.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script100.Name = "HealScript"
Script100.Parent = Part99
table.insert(cors,sandbox(Script100,function()
bottle = script.Parent

deb = false

healSound = Instance.new("Sound")
healSound.SoundId = "http://www.roblox.com/asset/?id=2101144"
healSound.Volume = 0.75
healSound.Pitch = 1.15
healSound.Parent = bottle

wait()

bottle.CFrame = bottle.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/12,0,0)

bp = Instance.new("BodyPosition")
bp.D = 1250
bp.P = 10000
bp.maxForce = Vector3.new(50000,50000,50000)
bp.position = bottle.Position
bp.Parent = bottle

wait(0.15)

bottle.Anchored = false
--[[
bg = Instance.new("BodyGyro")
bg.D = 500
bg.P = 3000
bg.maxTorque = Vector3.new(400000,0,400000)
bg.cframe = bottle.CFrame
bg.Parent = bottle
]]
wait()

ba = Instance.new("BodyAngularVelocity")
ba.P = 50000
ba.angularvelocity = Vector3.new(0,-2.5,0)
ba.maxTorque = Vector3.new(ba.P,ba.P,ba.P)
ba.Parent = bottle

function heal(hit)
if deb == false then
deb = true
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil then
local sc1 = hum.Parent:findFirstChild("HEAL")
if sc1 ~= nil then
wait(0.1)
deb = false
end
if hum.Health < hum.MaxHealth then
healSound:play()
local sc = script.HEAL:clone()
sc.Disabled = false
sc.Parent = hum.Parent
wait()
bottle:remove()
end
end
deb = false
end
end

bottle.Touched:connect(heal)

end))
LocalScript101.Name = "HEAL"
LocalScript101.Parent = Script100
LocalScript101.Disabled = true
table.insert(cors,sandbox(LocalScript101,function()
wait()

guy = script.Parent

deb = false
--[[
function energize(hum)
local p = game.Players:GetPlayerFromCharacter(hum.Parent)
if p ~= nil then
local stats = p.PlayerGui:findFirstChild("Stats")
if stats ~= nil then
local e = stats:findFirstChild("Energy")
if e ~= nil then
e.Value.Value = 100
end
end
end
end
]]
function heal()
local hum = guy:findFirstChild("Humanoid")
if hum ~= nil then
if hum.Health < hum.MaxHealth then
hum:TakeDamage(-60)
--energize(hum)
wait()
hum:TakeDamage(1)
wait()
hum:TakeDamage(-1)
wait()
script:remove()
end
end
end

heal()

script:remove()

end))
SpecialMesh102.Parent = Part99
SpecialMesh102.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh102.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh102.MeshType = Enum.MeshType.FileMesh
SpecialMesh102.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound103.Parent = Part99
Sound103.Pitch = 1.1499999761581
Sound103.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound103.Volume = 0.75
Sound104.Parent = Part99
Sound104.Pitch = 1.1499999761581
Sound104.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound104.Volume = 0.75
Sound105.Parent = Part99
Sound105.Pitch = 1.1499999761581
Sound105.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound105.Volume = 0.75
Model106.Name = "HealthPickup"
Model106.Parent = Model0
Script107.Parent = Model106
table.insert(cors,sandbox(Script107,function()
wait()
bottle = script.Parent.Bottle
newBottle = bottle:clone()
deb = false

function regen()
if deb == false then
bottle = script.Parent:findFirstChild("Bottle")
if bottle == nil then
deb = true
wait(35)
bottle = newBottle:clone()
bottle.Parent = script.Parent
end
deb = false
end
end

script.Parent.ChildRemoved:connect(regen)

end))
Part108.Name = "Bottle"
Part108.Parent = Model106
Part108.BrickColor = BrickColor.new("Bright red")
Part108.Transparency = 0.00099998712539673
Part108.Rotation = Vector3.new(180, 0, 180)
Part108.CanCollide = false
Part108.FormFactor = Enum.FormFactor.Custom
Part108.Size = Vector3.new(2, 2, 2)
Part108.CFrame = CFrame.new(279.000092, 7.08166504, 319.211243, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part108.BottomSurface = Enum.SurfaceType.Smooth
Part108.TopSurface = Enum.SurfaceType.Smooth
Part108.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part108.Position = Vector3.new(279.000092, 7.08166504, 319.211243)
Part108.Orientation = Vector3.new(0, -180, 0)
Part108.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script109.Name = "HealScript"
Script109.Parent = Part108
table.insert(cors,sandbox(Script109,function()
bottle = script.Parent

deb = false

healSound = Instance.new("Sound")
healSound.SoundId = "http://www.roblox.com/asset/?id=2101144"
healSound.Volume = 0.75
healSound.Pitch = 1.15
healSound.Parent = bottle

wait()

bottle.CFrame = bottle.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/12,0,0)

bp = Instance.new("BodyPosition")
bp.D = 1250
bp.P = 10000
bp.maxForce = Vector3.new(50000,50000,50000)
bp.position = bottle.Position
bp.Parent = bottle

wait(0.15)

bottle.Anchored = false
--[[
bg = Instance.new("BodyGyro")
bg.D = 500
bg.P = 3000
bg.maxTorque = Vector3.new(400000,0,400000)
bg.cframe = bottle.CFrame
bg.Parent = bottle
]]
wait()

ba = Instance.new("BodyAngularVelocity")
ba.P = 50000
ba.angularvelocity = Vector3.new(0,-2.5,0)
ba.maxTorque = Vector3.new(ba.P,ba.P,ba.P)
ba.Parent = bottle

function heal(hit)
if deb == false then
deb = true
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil then
local sc1 = hum.Parent:findFirstChild("HEAL")
if sc1 ~= nil then
wait(0.1)
deb = false
end
if hum.Health < hum.MaxHealth then
healSound:play()
local sc = script.HEAL:clone()
sc.Disabled = false
sc.Parent = hum.Parent
wait()
bottle:remove()
end
end
deb = false
end
end

bottle.Touched:connect(heal)

end))
LocalScript110.Name = "HEAL"
LocalScript110.Parent = Script109
LocalScript110.Disabled = true
table.insert(cors,sandbox(LocalScript110,function()
wait()

guy = script.Parent

deb = false
--[[
function energize(hum)
local p = game.Players:GetPlayerFromCharacter(hum.Parent)
if p ~= nil then
local stats = p.PlayerGui:findFirstChild("Stats")
if stats ~= nil then
local e = stats:findFirstChild("Energy")
if e ~= nil then
e.Value.Value = 100
end
end
end
end
]]
function heal()
local hum = guy:findFirstChild("Humanoid")
if hum ~= nil then
if hum.Health < hum.MaxHealth then
hum:TakeDamage(-60)
--energize(hum)
wait()
hum:TakeDamage(1)
wait()
hum:TakeDamage(-1)
wait()
script:remove()
end
end
end

heal()

script:remove()

end))
SpecialMesh111.Parent = Part108
SpecialMesh111.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh111.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh111.MeshType = Enum.MeshType.FileMesh
SpecialMesh111.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound112.Parent = Part108
Sound112.Pitch = 1.1499999761581
Sound112.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound112.Volume = 0.75
Sound113.Parent = Part108
Sound113.Pitch = 1.1499999761581
Sound113.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound113.Volume = 0.75
Sound114.Parent = Part108
Sound114.Pitch = 1.1499999761581
Sound114.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound114.Volume = 0.75
Script115.Name = "CloudScript"
Script115.Parent = Model0
table.insert(cors,sandbox(Script115,function()
--Made by uSukDude


amount=16
speeds={30,61}
limits={
	Vector3.new(-3000,600,-3000),
	Vector3.new(3000,700,3000)
}
cloudname="Cumulus"				--put a cloud that you want it to clone into lighting and enter it's name here, or this script will generate one for you.
cloudsgroupname="Clouds"
releasecooldown=5
rotatedclouds=true		--If you want the clouds all facing the same direction, set this to false. True will randomly rotate them.





rate=1/30
lastrelease=0
debris=game:GetService("Debris")

local clouds=script.Parent:FindFirstChild(cloudsgroupname) or Instance.new("Model",script.Parent)
clouds.Name=cloudsgroupname



function generatecloud()
	local p=Instance.new("Part")
	p.Name=cloudname
	p.Transparency=.7
	p.BrickColor=BrickColor.new("Institutional white")
	p.formFactor="Custom"
	p.Size=Vector3.new(0,0,0)
	p.TopSurface="Smooth"
	p.BottomSurface="Smooth"
	p.Anchored=true
	p.CanCollide=false
	local m=Instance.new("SpecialMesh")
	m.MeshId="http://www.roblox.com/asset/?id=111820358"
	m.TextureId=""
	m.Scale=Vector3.new(math.random(1000,1300),math.random(500,700),math.random(1000,1300))
	m.Parent=p
	return p
end
function createcloud(pos)
	local clonecloud=game.Lighting:FindFirstChild(cloudname)
	local newcloud=(clonecloud and clonecloud:clone()) or generatecloud()
	newcloud.CFrame=CFrame.new(pos)
	if rotatedclouds then
		newcloud.CFrame=newcloud.CFrame*CFrame.Angles(0,math.pi*2*math.random(),0)
	end
	newcloud.Name="CloudSpeed"..tostring(math.random(speeds[1],speeds[2]))
	debris:AddItem(newcloud,7*60)
	newcloud.Transparency=1
	newcloud.Parent=clouds
end


local gc=clouds:GetChildren()	--creates initial population
local missing=amount-#gc
if missing>0 then
	for i=1,missing do
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),math.random(limits[1].z,limits[2].z)))
	end
end


while true do
	local t1,t2=wait(rate)
	local gc=clouds:GetChildren()
	if #gc<amount and lastrelease<t2 then
		lastrelease=t2+releasecooldown
		createcloud(Vector3.new(math.random(limits[1].x,limits[2].x),math.random(limits[1].y,limits[2].y),limits[2].z))
	end
	for i,v in pairs(gc) do
		local speed=string.sub(v.Name,11)
		v.CFrame=v.CFrame+Vector3.new(0,0,-speed*rate)
		if v.Position.z<limits[1].z then
			v.Transparency=v.Transparency+(rate/3)
			if v.Transparency>1 then
				v:remove()
			end
		elseif v.Transparency>0.5 then
			v.Transparency=v.Transparency-(rate/3)
			if v.Transparency<0.5 then
				v.Transparency=0.5
			end
		end
	end
end








end))
Part116.Name = "SpawnPoint9"
Part116.Parent = Model0
Part116.Material = Enum.Material.Slate
Part116.BrickColor = BrickColor.new("Brown")
Part116.Transparency = 1
Part116.Rotation = Vector3.new(-95.6999969, -89.9700012, -84.1500015)
Part116.Anchored = true
Part116.CanCollide = false
Part116.FormFactor = Enum.FormFactor.Symmetric
Part116.Size = Vector3.new(2, 1, 2)
Part116.CFrame = CFrame.new(-14.3993225, 9.84643555, 374.506042, 5.96046448e-08, 5.82205701e-07, -0.999999821, -9.0126882e-08, 0.999999762, 5.96796156e-07, 1, 9.15906142e-08, -5.96046448e-08)
Part116.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part116.Position = Vector3.new(-14.3993225, 9.84643555, 374.506042)
Part116.Orientation = Vector3.new(0, -90, 0)
Part116.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part117.Name = "SpawnPoint8"
Part117.Parent = Model0
Part117.Material = Enum.Material.Slate
Part117.BrickColor = BrickColor.new("Brown")
Part117.Transparency = 1
Part117.Rotation = Vector3.new(-95.6999969, -89.9700012, -84.1500015)
Part117.Anchored = true
Part117.CanCollide = false
Part117.FormFactor = Enum.FormFactor.Symmetric
Part117.Size = Vector3.new(2, 1, 2)
Part117.CFrame = CFrame.new(13.200531, 8.84643555, 403.706055, 5.96046448e-08, 5.82205701e-07, -0.999999821, -9.0126882e-08, 0.999999762, 5.96796156e-07, 1, 9.15906142e-08, -5.96046448e-08)
Part117.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part117.Position = Vector3.new(13.200531, 8.84643555, 403.706055)
Part117.Orientation = Vector3.new(0, -90, 0)
Part117.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part118.Name = "SpawnPoint7"
Part118.Parent = Model0
Part118.Material = Enum.Material.Slate
Part118.BrickColor = BrickColor.new("Brown")
Part118.Transparency = 1
Part118.Rotation = Vector3.new(-95.6999969, -89.9700012, -84.1500015)
Part118.Anchored = true
Part118.CanCollide = false
Part118.FormFactor = Enum.FormFactor.Symmetric
Part118.Size = Vector3.new(2, 1, 2)
Part118.CFrame = CFrame.new(-27.9994202, 7.84643555, 394.506042, 5.96046448e-08, 5.82205701e-07, -0.999999821, -9.0126882e-08, 0.999999762, 5.96796156e-07, 1, 9.15906142e-08, -5.96046448e-08)
Part118.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part118.Position = Vector3.new(-27.9994202, 7.84643555, 394.506042)
Part118.Orientation = Vector3.new(0, -90, 0)
Part118.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part119.Name = "SpawnPoint6"
Part119.Parent = Model0
Part119.Material = Enum.Material.Slate
Part119.BrickColor = BrickColor.new("Brown")
Part119.Transparency = 1
Part119.Rotation = Vector3.new(-95.6999969, -89.9700012, -84.1500015)
Part119.Anchored = true
Part119.CanCollide = false
Part119.FormFactor = Enum.FormFactor.Symmetric
Part119.Size = Vector3.new(2, 1, 2)
Part119.CFrame = CFrame.new(-3.70742798, 8.01916504, 13.6311035, 5.96046448e-08, 5.82205701e-07, -0.999999821, -9.0126882e-08, 0.999999762, 5.96796156e-07, 1, 9.15906142e-08, -5.96046448e-08)
Part119.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part119.Position = Vector3.new(-3.70742798, 8.01916504, 13.6311035)
Part119.Orientation = Vector3.new(0, -90, 0)
Part119.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part120.Name = "SpawnPoint5"
Part120.Parent = Model0
Part120.Material = Enum.Material.Slate
Part120.BrickColor = BrickColor.new("Brown")
Part120.Transparency = 1
Part120.Rotation = Vector3.new(-180, -71.3899994, -180)
Part120.Anchored = true
Part120.CanCollide = false
Part120.FormFactor = Enum.FormFactor.Symmetric
Part120.Size = Vector3.new(2, 1, 2)
Part120.CFrame = CFrame.new(-250.286377, 13.3183594, 73.2360535, -0.319155633, 5.53441225e-07, -0.94770211, 1.00344039e-07, 0.999999762, 5.65585083e-07, 0.947702229, 8.68771792e-08, -0.319155782)
Part120.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part120.Position = Vector3.new(-250.286377, 13.3183594, 73.2360535)
Part120.Orientation = Vector3.new(0, -108.610001, 0)
Part120.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part121.Name = "SpawnPoint4"
Part121.Parent = Model0
Part121.Material = Enum.Material.Slate
Part121.BrickColor = BrickColor.new("Brown")
Part121.Transparency = 1
Part121.Rotation = Vector3.new(-180, -71.3899994, -180)
Part121.Anchored = true
Part121.CanCollide = false
Part121.FormFactor = Enum.FormFactor.Symmetric
Part121.Size = Vector3.new(2, 1, 2)
Part121.CFrame = CFrame.new(-354.746429, 16.2509766, 314.406067, -0.319155633, 5.53441225e-07, -0.94770211, 1.00344039e-07, 0.999999762, 5.65585083e-07, 0.947702229, 8.68771792e-08, -0.319155782)
Part121.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part121.Position = Vector3.new(-354.746429, 16.2509766, 314.406067)
Part121.Orientation = Vector3.new(0, -108.610001, 0)
Part121.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part122.Name = "SpawnPoint3"
Part122.Parent = Model0
Part122.Material = Enum.Material.Slate
Part122.BrickColor = BrickColor.new("Brown")
Part122.Transparency = 1
Part122.Rotation = Vector3.new(-180, -71.3899994, -180)
Part122.Anchored = true
Part122.CanCollide = false
Part122.FormFactor = Enum.FormFactor.Symmetric
Part122.Size = Vector3.new(2, 1, 2)
Part122.CFrame = CFrame.new(369.216644, 8.68670654, 75.000061, -0.319155633, 5.53441225e-07, -0.94770211, 1.00344039e-07, 0.999999762, 5.65585083e-07, 0.947702229, 8.68771792e-08, -0.319155782)
Part122.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part122.Position = Vector3.new(369.216644, 8.68670654, 75.000061)
Part122.Orientation = Vector3.new(0, -108.610001, 0)
Part122.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part123.Name = "SpawnPoint2"
Part123.Parent = Model0
Part123.Material = Enum.Material.Slate
Part123.BrickColor = BrickColor.new("Brown")
Part123.Transparency = 1
Part123.Rotation = Vector3.new(-172.979996, -89.9700012, -176.389999)
Part123.Anchored = true
Part123.CanCollide = false
Part123.FormFactor = Enum.FormFactor.Symmetric
Part123.Size = Vector3.new(2, 1, 2)
Part123.CFrame = CFrame.new(267.729584, 9.30224609, 315.927002, -5.96046448e-08, 3.75568554e-09, -0.999999821, 4.6595412e-09, 0.999999762, 1.83461157e-08, 1, -3.19584226e-09, -1.49011612e-07)
Part123.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part123.Position = Vector3.new(267.729584, 9.30224609, 315.927002)
Part123.Orientation = Vector3.new(0, -90, 0)
Part123.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part124.Name = "SpawnPoint1"
Part124.Parent = Model0
Part124.Material = Enum.Material.Slate
Part124.BrickColor = BrickColor.new("Brown")
Part124.Transparency = 1
Part124.Rotation = Vector3.new(-172.979996, -89.9700012, -176.389999)
Part124.Anchored = true
Part124.CanCollide = false
Part124.FormFactor = Enum.FormFactor.Symmetric
Part124.Size = Vector3.new(2, 1, 2)
Part124.CFrame = CFrame.new(-8.41946411, 8.3024292, 411.307007, -5.96046448e-08, 3.75568554e-09, -0.999999821, 4.6595412e-09, 0.999999762, 1.83461157e-08, 1, -3.19584226e-09, -1.49011612e-07)
Part124.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part124.Position = Vector3.new(-8.41946411, 8.3024292, 411.307007)
Part124.Orientation = Vector3.new(0, -90, 0)
Part124.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part125.Parent = Model0
Part125.Material = Enum.Material.Slate
Part125.BrickColor = BrickColor.new("Brown")
Part125.Anchored = true
Part125.FormFactor = Enum.FormFactor.Custom
Part125.Size = Vector3.new(81.7399597, 81.7200089, 105.17009)
Part125.CFrame = CFrame.new(-22.5473785, -97.8727951, 415.276001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part125.BottomSurface = Enum.SurfaceType.Smooth
Part125.TopSurface = Enum.SurfaceType.Smooth
Part125.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part125.Position = Vector3.new(-22.5473785, -97.8727951, 415.276001)
Part125.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part126.Parent = Model0
Part126.Material = Enum.Material.Slate
Part126.BrickColor = BrickColor.new("Brown")
Part126.Rotation = Vector3.new(0, 89.9800034, 0.209999993)
Part126.Anchored = true
Part126.FormFactor = Enum.FormFactor.Custom
Part126.Size = Vector3.new(68.1099243, 23.473999, 147.070129)
Part126.CFrame = CFrame.new(3.99194336, -8.08502197, -115.682083, 0.00034530327, -1.26949726e-06, 0.99999994, 0.00367644569, 0.999993265, 0, -0.999993205, 0.00367644546, 0.000345305598)
Part126.BottomSurface = Enum.SurfaceType.Smooth
Part126.TopSurface = Enum.SurfaceType.Smooth
Part126.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part126.Position = Vector3.new(3.99194336, -8.08502197, -115.682083)
Part126.Orientation = Vector3.new(0, 89.9800034, 0.209999993)
Part126.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part127.Parent = Model0
Part127.Material = Enum.Material.Slate
Part127.BrickColor = BrickColor.new("Dark stone grey")
Part127.Rotation = Vector3.new(-180, 0, -180)
Part127.Anchored = true
Part127.FormFactor = Enum.FormFactor.Plate
Part127.Size = Vector3.new(3, 22.3999996, 99.3999939)
Part127.CFrame = CFrame.new(94.5426331, 11.4842529, 54.4910278, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part127.BottomSurface = Enum.SurfaceType.Smooth
Part127.TopSurface = Enum.SurfaceType.Smooth
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part127.Position = Vector3.new(94.5426331, 11.4842529, 54.4910278)
Part127.Orientation = Vector3.new(0, 180, 0)
Part127.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part128.Parent = Model0
Part128.Material = Enum.Material.Slate
Part128.BrickColor = BrickColor.new("Brown")
Part128.Rotation = Vector3.new(0, 90, 0)
Part128.Anchored = true
Part128.FormFactor = Enum.FormFactor.Custom
Part128.Size = Vector3.new(54.8699226, 193.841995, 139.130127)
Part128.CFrame = CFrame.new(2.78262329, 70.4717407, -122.088943, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Part128.BottomSurface = Enum.SurfaceType.Smooth
Part128.TopSurface = Enum.SurfaceType.Smooth
Part128.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part128.Position = Vector3.new(2.78262329, 70.4717407, -122.088943)
Part128.Orientation = Vector3.new(0, 90, 0)
Part128.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part129.Parent = Model0
Part129.Material = Enum.Material.Concrete
Part129.BrickColor = BrickColor.new("Mid gray")
Part129.Rotation = Vector3.new(-180, 0, -90)
Part129.Anchored = true
Part129.FormFactor = Enum.FormFactor.Plate
Part129.Size = Vector3.new(2, 0.400000006, 99)
Part129.CFrame = CFrame.new(-63.767395, -0.286956787, 25.6910248, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, 1.50995803e-07, 1.50995803e-07, 6.60023616e-15, -1)
Part129.BottomSurface = Enum.SurfaceType.Smooth
Part129.TopSurface = Enum.SurfaceType.Smooth
Part129.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part129.Position = Vector3.new(-63.767395, -0.286956787, 25.6910248)
Part129.Orientation = Vector3.new(0, 180, 90)
Part129.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part130.Parent = Model0
Part130.Material = Enum.Material.Slate
Part130.BrickColor = BrickColor.new("Dark stone grey")
Part130.Rotation = Vector3.new(0, 89.9800034, 0)
Part130.Anchored = true
Part130.FormFactor = Enum.FormFactor.Plate
Part130.Size = Vector3.new(3, 22.3999996, 97)
Part130.CFrame = CFrame.new(-41.457428, 11.4842529, 105.69104, 0, 0, 0.99999994, 0, 0.999999881, 0, -0.99999994, 0, 0)
Part130.BottomSurface = Enum.SurfaceType.Smooth
Part130.TopSurface = Enum.SurfaceType.Smooth
Part130.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part130.Position = Vector3.new(-41.457428, 11.4842529, 105.69104)
Part130.Orientation = Vector3.new(0, 90, 0)
Part130.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part131.Parent = Model0
Part131.Material = Enum.Material.Slate
Part131.BrickColor = BrickColor.new("Dark stone grey")
Part131.Rotation = Vector3.new(-180, 0, -180)
Part131.Anchored = true
Part131.FormFactor = Enum.FormFactor.Plate
Part131.Size = Vector3.new(3, 22.3999996, 57.8300018)
Part131.CFrame = CFrame.new(-88.4573669, 11.4842529, 75.2760468, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part131.BottomSurface = Enum.SurfaceType.Smooth
Part131.TopSurface = Enum.SurfaceType.Smooth
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part131.Position = Vector3.new(-88.4573669, 11.4842529, 75.2760468)
Part131.Orientation = Vector3.new(0, 180, 0)
Part131.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part132.Parent = Model0
Part132.Material = Enum.Material.Concrete
Part132.BrickColor = BrickColor.new("Mid gray")
Part132.Rotation = Vector3.new(-180, 0, -90)
Part132.Anchored = true
Part132.FormFactor = Enum.FormFactor.Plate
Part132.Size = Vector3.new(2, 0.400000006, 99)
Part132.CFrame = CFrame.new(2.04263306, -0.286956787, 25.5910187, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, 1.50995803e-07, 1.50995803e-07, 6.60023616e-15, -1)
Part132.BottomSurface = Enum.SurfaceType.Smooth
Part132.TopSurface = Enum.SurfaceType.Smooth
Part132.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part132.Position = Vector3.new(2.04263306, -0.286956787, 25.5910187)
Part132.Orientation = Vector3.new(0, 180, 90)
Part132.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part133.Parent = Model0
Part133.Material = Enum.Material.Slate
Part133.BrickColor = BrickColor.new("Dark stone grey")
Part133.Anchored = true
Part133.FormFactor = Enum.FormFactor.Plate
Part133.Size = Vector3.new(186, 5.20000029, 190)
Part133.CFrame = CFrame.new(3.04260254, -2.3163147, 12.1910248, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part133.BottomSurface = Enum.SurfaceType.Smooth
Part133.TopSurface = Enum.SurfaceType.Smooth
Part133.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part133.Position = Vector3.new(3.04260254, -2.3163147, 12.1910248)
Part133.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part134.Parent = Model0
Part134.Material = Enum.Material.Slate
Part134.BrickColor = BrickColor.new("Dark stone grey")
Part134.Rotation = Vector3.new(0, -90, 0)
Part134.Anchored = true
Part134.FormFactor = Enum.FormFactor.Plate
Part134.Size = Vector3.new(3, 12.8000002, 6)
Part134.CFrame = CFrame.new(10.0426025, 16.2844238, 105.69104, -5.14090061e-07, 3.69857389e-09, -1, -1.1147959e-08, 1, 3.23365734e-09, 1, 1.11746203e-08, -5.17815351e-07)
Part134.BottomSurface = Enum.SurfaceType.Smooth
Part134.TopSurface = Enum.SurfaceType.Smooth
Part134.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part134.Position = Vector3.new(10.0426025, 16.2844238, 105.69104)
Part134.Orientation = Vector3.new(0, -90, 0)
Part134.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part135.Parent = Model0
Part135.Material = Enum.Material.Slate
Part135.Anchored = true
Part135.FormFactor = Enum.FormFactor.Plate
Part135.Size = Vector3.new(180, 0.400000006, 184)
Part135.CFrame = CFrame.new(3.04263306, 0.212585449, 12.1910248, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part135.BottomSurface = Enum.SurfaceType.Smooth
Part135.TopSurface = Enum.SurfaceType.Smooth
Part135.Position = Vector3.new(3.04263306, 0.212585449, 12.1910248)
Part136.Parent = Model0
Part136.Material = Enum.Material.Concrete
Part136.BrickColor = BrickColor.new("Dark stone grey")
Part136.Rotation = Vector3.new(180, 0, 180)
Part136.Anchored = true
Part136.FormFactor = Enum.FormFactor.Plate
Part136.Size = Vector3.new(132, 0.400000006, 99)
Part136.CFrame = CFrame.new(2.04263306, 0.412628174, 25.6910248, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
Part136.BottomSurface = Enum.SurfaceType.Smooth
Part136.TopSurface = Enum.SurfaceType.Smooth
Part136.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part136.Position = Vector3.new(2.04263306, 0.412628174, 25.6910248)
Part136.Orientation = Vector3.new(0, 180, 0)
Part136.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part137.Parent = Model0
Part137.Material = Enum.Material.Slate
Part137.BrickColor = BrickColor.new("Dark stone grey")
Part137.Rotation = Vector3.new(30, -89.9700012, 29.0400009)
Part137.Anchored = true
Part137.FormFactor = Enum.FormFactor.Plate
Part137.Size = Vector3.new(4, 4.14000034, 3.45000005)
Part137.CFrame = CFrame.new(2.64108276, 25.0936279, -69.5025024, 0.000426872371, -0.000236972235, -0.999999881, -0.0168200731, 0.999858439, -0.000244118753, 0.999858439, 0.0168201625, 0.000422826066)
Part137.BottomSurface = Enum.SurfaceType.Smooth
Part137.TopSurface = Enum.SurfaceType.Smooth
Part137.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part137.Position = Vector3.new(2.64108276, 25.0936279, -69.5025024)
Part137.Orientation = Vector3.new(0.00999999978, -89.9800034, -0.959999979)
Part137.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part138.Parent = Model0
Part138.Material = Enum.Material.Concrete
Part138.BrickColor = BrickColor.new("Mid gray")
Part138.Rotation = Vector3.new(90, 90, 0)
Part138.Anchored = true
Part138.FormFactor = Enum.FormFactor.Plate
Part138.Size = Vector3.new(2, 0.400000006, 132)
Part138.CFrame = CFrame.new(2.04263306, -0.286956787, 75.0010986, -4.37113883e-08, 0, 1, 1, 7.54979013e-08, 4.37113883e-08, -7.54979013e-08, 1, -3.30011808e-15)
Part138.BottomSurface = Enum.SurfaceType.Smooth
Part138.TopSurface = Enum.SurfaceType.Smooth
Part138.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part138.Position = Vector3.new(2.04263306, -0.286956787, 75.0010986)
Part138.Orientation = Vector3.new(0, 90, 90)
Part138.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part139.Parent = Model0
Part139.Material = Enum.Material.Slate
Part139.BrickColor = BrickColor.new("Dark stone grey")
Part139.Rotation = Vector3.new(-90, 60, 0)
Part139.Anchored = true
Part139.FormFactor = Enum.FormFactor.Plate
Part139.Size = Vector3.new(6, 2.79999995, 5)
Part139.CFrame = CFrame.new(13.8425903, 10.7833252, 105.791031, 0.49999997, -4.99342683e-08, 0.866025448, -0.866025448, 4.27773088e-08, 0.49999997, -6.20133704e-08, -1, -2.18556924e-08)
Part139.BottomSurface = Enum.SurfaceType.Smooth
Part139.TopSurface = Enum.SurfaceType.Smooth
Part139.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part139.Position = Vector3.new(13.8425903, 10.7833252, 105.791031)
Part139.Orientation = Vector3.new(-30, 90, -90)
Part139.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part140.Parent = Model0
Part140.Material = Enum.Material.Concrete
Part140.BrickColor = BrickColor.new("Mid gray")
Part140.Rotation = Vector3.new(90, 90, 0)
Part140.Anchored = true
Part140.FormFactor = Enum.FormFactor.Plate
Part140.Size = Vector3.new(2, 0.400000006, 132)
Part140.CFrame = CFrame.new(2.04263306, -0.286956787, -23.618927, -4.37113883e-08, 0, 1, 1, -4.37113883e-08, 4.37113883e-08, 4.37113883e-08, 1, 1.91068547e-15)
Part140.BottomSurface = Enum.SurfaceType.Smooth
Part140.TopSurface = Enum.SurfaceType.Smooth
Part140.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part140.Position = Vector3.new(2.04263306, -0.286956787, -23.618927)
Part140.Orientation = Vector3.new(0, 90, 90)
Part140.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part141.Parent = Model0
Part141.Material = Enum.Material.Slate
Part141.BrickColor = BrickColor.new("Dark stone grey")
Part141.Rotation = Vector3.new(0, 0, 8)
Part141.Anchored = true
Part141.FormFactor = Enum.FormFactor.Plate
Part141.Size = Vector3.new(4, 8.80000019, 4)
Part141.CFrame = CFrame.new(5.14260864, 9.96337891, -69.6089478, 0.990268052, -0.139173135, 0, 0.139173135, 0.990268052, 0, 0, 0, 1)
Part141.BottomSurface = Enum.SurfaceType.Smooth
Part141.TopSurface = Enum.SurfaceType.Smooth
Part141.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part141.Position = Vector3.new(5.14260864, 9.96337891, -69.6089478)
Part141.Orientation = Vector3.new(0, 0, 8)
Part141.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part142.Parent = Model0
Part142.Material = Enum.Material.Slate
Part142.BrickColor = BrickColor.new("Dark stone grey")
Part142.Rotation = Vector3.new(90, 30, -180)
Part142.Anchored = true
Part142.FormFactor = Enum.FormFactor.Plate
Part142.Size = Vector3.new(6, 2.79999995, 5)
Part142.CFrame = CFrame.new(6.74261475, 10.7833252, 105.791031, -0.866025388, 0, 0.50000006, -0.50000006, -4.37113883e-08, -0.866025388, 2.18556959e-08, -1, 3.78551732e-08)
Part142.BottomSurface = Enum.SurfaceType.Smooth
Part142.TopSurface = Enum.SurfaceType.Smooth
Part142.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part142.Position = Vector3.new(6.74261475, 10.7833252, 105.791031)
Part142.Orientation = Vector3.new(60, 90, -90)
Part142.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part143.Parent = Model0
Part143.Material = Enum.Material.Slate
Part143.BrickColor = BrickColor.new("Dark stone grey")
Part143.Rotation = Vector3.new(0, -90, 0)
Part143.Anchored = true
Part143.FormFactor = Enum.FormFactor.Plate
Part143.Size = Vector3.new(20, 5.20000029, 24)
Part143.CFrame = CFrame.new(3.04263306, 2.96322632, -69.80896, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part143.BottomSurface = Enum.SurfaceType.Smooth
Part143.TopSurface = Enum.SurfaceType.Smooth
Part143.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part143.Position = Vector3.new(3.04263306, 2.96322632, -69.80896)
Part143.Orientation = Vector3.new(0, -90, 0)
Part143.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part144.Parent = Model0
Part144.Material = Enum.Material.Slate
Part144.BrickColor = BrickColor.new("Dark stone grey")
Part144.Rotation = Vector3.new(90, 60, -180)
Part144.Anchored = true
Part144.FormFactor = Enum.FormFactor.Plate
Part144.Size = Vector3.new(6, 2.79999995, 5)
Part144.CFrame = CFrame.new(7.04257202, -1.51766968, 105.791031, -0.49999997, 7.54978942e-08, 0.866025448, -0.866025448, 1.74477606e-07, -0.49999997, -1.88850976e-07, -1, -2.18556924e-08)
Part144.BottomSurface = Enum.SurfaceType.Smooth
Part144.TopSurface = Enum.SurfaceType.Smooth
Part144.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part144.Position = Vector3.new(7.04257202, -1.51766968, 105.791031)
Part144.Orientation = Vector3.new(30, 90, -90)
Part144.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part145.Parent = Model0
Part145.Material = Enum.Material.Slate
Part145.BrickColor = BrickColor.new("Brown")
Part145.Rotation = Vector3.new(165, 15, 180)
Part145.Anchored = true
Part145.FormFactor = Enum.FormFactor.Plate
Part145.Size = Vector3.new(6, 2.79999995, 5)
Part145.CFrame = CFrame.new(-261.937317, 0.271026611, 109.370987, -0.965919137, -1.11153258e-06, 0.258816242, -0.066985786, 0.965920568, -0.249995694, -0.249996856, -0.258812398, -0.933005631)
Part145.BottomSurface = Enum.SurfaceType.Smooth
Part145.TopSurface = Enum.SurfaceType.Smooth
Part145.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part145.Position = Vector3.new(-261.937317, 0.271026611, 109.370987)
Part145.Orientation = Vector3.new(14.4799995, 164.5, -3.97000003)
Part145.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part146.Parent = Model0
Part146.Material = Enum.Material.Slate
Part146.BrickColor = BrickColor.new("Brown")
Part146.Rotation = Vector3.new(-180, -15, -165)
Part146.Anchored = true
Part146.FormFactor = Enum.FormFactor.Plate
Part146.Size = Vector3.new(6, 2.79999995, 5)
Part146.CFrame = CFrame.new(-256.437347, -0.428588867, 110.370972, -0.93300575, 0.249997526, -0.258818388, 0.258817136, 0.965919793, 3.23355198e-06, 0.25000003, -0.0669825599, -0.965916753)
Part146.BottomSurface = Enum.SurfaceType.Smooth
Part146.TopSurface = Enum.SurfaceType.Smooth
Part146.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part146.Position = Vector3.new(-256.437347, -0.428588867, 110.370972)
Part146.Orientation = Vector3.new(0, -165, 15)
Part146.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part147.Parent = Model0
Part147.Material = Enum.Material.Slate
Part147.BrickColor = BrickColor.new("Dark stone grey")
Part147.Rotation = Vector3.new(30, -89.9700012, 29.0400009)
Part147.Anchored = true
Part147.FormFactor = Enum.FormFactor.Plate
Part147.Size = Vector3.new(4, 8.80000019, 8)
Part147.CFrame = CFrame.new(2.64260864, 18.7633667, -69.6089478, 0.000426872371, -0.000236972235, -0.999999881, -0.0168200731, 0.999858439, -0.000244118753, 0.999858439, 0.0168201625, 0.000422826066)
Part147.BottomSurface = Enum.SurfaceType.Smooth
Part147.TopSurface = Enum.SurfaceType.Smooth
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part147.Position = Vector3.new(2.64260864, 18.7633667, -69.6089478)
Part147.Orientation = Vector3.new(0.00999999978, -89.9800034, -0.959999979)
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part148.Parent = Model0
Part148.Material = Enum.Material.Slate
Part148.BrickColor = BrickColor.new("Dark stone grey")
Part148.Rotation = Vector3.new(90, 80, 180)
Part148.Anchored = true
Part148.FormFactor = Enum.FormFactor.Plate
Part148.Size = Vector3.new(6, 2.79999995, 5)
Part148.CFrame = CFrame.new(15.0426025, 4.38320923, 105.791031, -0.173648223, -2.62201532e-08, 0.98480773, -0.98480773, -1.04990441e-07, -0.173648223, 1.07948495e-07, -1, -7.59040475e-09)
Part148.BottomSurface = Enum.SurfaceType.Smooth
Part148.TopSurface = Enum.SurfaceType.Smooth
Part148.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part148.Position = Vector3.new(15.0426025, 4.38320923, 105.791031)
Part148.Orientation = Vector3.new(10, 90, -90)
Part148.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part149.Parent = Model0
Part149.Material = Enum.Material.Slate
Part149.BrickColor = BrickColor.new("Dark stone grey")
Part149.Rotation = Vector3.new(-179.039993, -0.0199999996, -24.0100002)
Part149.Anchored = true
Part149.FormFactor = Enum.FormFactor.Plate
Part149.Size = Vector3.new(4, 8.80000019, 4)
Part149.CFrame = CFrame.new(8.64257813, 19.2667236, -69.6081238, 0.91344893, 0.406953037, -0.000426954648, 0.406902105, -0.913316905, 0.0168183558, 0.00645433646, -0.0155364387, -0.999858439)
Part149.BottomSurface = Enum.SurfaceType.Smooth
Part149.TopSurface = Enum.SurfaceType.Smooth
Part149.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part149.Position = Vector3.new(8.64257813, 19.2667236, -69.6081238)
Part149.Orientation = Vector3.new(-0.959999979, -179.979996, 155.990005)
Part149.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part150.Parent = Model0
Part150.Material = Enum.Material.Wood
Part150.BrickColor = BrickColor.new("Brown")
Part150.Rotation = Vector3.new(0, -90, 0)
Part150.Anchored = true
Part150.FormFactor = Enum.FormFactor.Plate
Part150.Size = Vector3.new(5, 0.400000006, 22)
Part150.CFrame = CFrame.new(3.04263306, 3.76321411, -58.30896, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
Part150.BottomSurface = Enum.SurfaceType.Smooth
Part150.TopSurface = Enum.SurfaceType.Smooth
Part150.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part150.Position = Vector3.new(3.04263306, 3.76321411, -58.30896)
Part150.Orientation = Vector3.new(0, -90, 0)
Part150.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part151.Name = "Handle"
Part151.Parent = Model0
Part151.BrickColor = BrickColor.new("Mid gray")
Part151.Rotation = Vector3.new(0, -29.9699993, 0)
Part151.Anchored = true
Part151.FormFactor = Enum.FormFactor.Plate
Part151.Size = Vector3.new(1, 1.60000002, 1)
Part151.CFrame = CFrame.new(-0.457366943, 4.55438232, -57.7089233, 0.86626941, -5.16336804e-08, -0.499577075, 5.96046448e-08, 1, 0, 0.499577075, -2.97771141e-08, 0.86626941)
Part151.BottomSurface = Enum.SurfaceType.Smooth
Part151.TopSurface = Enum.SurfaceType.Smooth
Part151.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part151.Position = Vector3.new(-0.457366943, 4.55438232, -57.7089233)
Part151.Orientation = Vector3.new(0, -29.9699993, 0)
Part151.Color = Color3.new(0.803922, 0.803922, 0.803922)
SpecialMesh152.Parent = Part151
SpecialMesh152.MeshId = "http://www.roblox.com/asset/?id=13116112"
SpecialMesh152.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
SpecialMesh152.TextureId = "http://www.roblox.com/asset/?id=13116132"
SpecialMesh152.MeshType = Enum.MeshType.FileMesh
SpecialMesh152.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
Sound153.Name = "DrinkSound"
Sound153.Parent = Part151
Sound153.SoundId = "http://www.roblox.com/asset/?id=10722059"
Sound154.Name = "OpenSound"
Sound154.Parent = Part151
Sound154.SoundId = "http://www.roblox.com/asset/?id=13114759"
Sound154.Volume = 1
Part155.Parent = Model0
Part155.Material = Enum.Material.Slate
Part155.BrickColor = BrickColor.new("Dark stone grey")
Part155.Rotation = Vector3.new(0, 89.9800034, 0)
Part155.Anchored = true
Part155.FormFactor = Enum.FormFactor.Plate
Part155.Size = Vector3.new(2, 2.79999995, 15)
Part155.CFrame = CFrame.new(10.5426025, -3.51635742, 108.191025, 0, 0, 0.99999994, 0, 0.999999881, 0, -0.99999994, 0, 0)
Part155.BottomSurface = Enum.SurfaceType.Smooth
Part155.TopSurface = Enum.SurfaceType.Smooth
Part155.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part155.Position = Vector3.new(10.5426025, -3.51635742, 108.191025)
Part155.Orientation = Vector3.new(0, 90, 0)
Part155.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part156.Parent = Model0
Part156.Material = Enum.Material.Slate
Part156.BrickColor = BrickColor.new("Brown")
Part156.Rotation = Vector3.new(165, 15, -150)
Part156.Anchored = true
Part156.FormFactor = Enum.FormFactor.Plate
Part156.Size = Vector3.new(6, 2.79999995, 5)
Part156.CFrame = CFrame.new(-255.937347, -0.828033447, 114.370941, -0.836511016, 0.482958734, 0.258816242, 0.42494902, 0.870004475, -0.249995694, -0.345909864, -0.0991396457, -0.933005631)
Part156.BottomSurface = Enum.SurfaceType.Smooth
Part156.TopSurface = Enum.SurfaceType.Smooth
Part156.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part156.Position = Vector3.new(-255.937347, -0.828033447, 114.370941)
Part156.Orientation = Vector3.new(14.4799995, 164.5, 26.0300007)
Part156.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part157.Parent = Model0
Part157.Material = Enum.Material.Slate
Part157.BrickColor = BrickColor.new("Dark stone grey")
Part157.Rotation = Vector3.new(0, 90, 0)
Part157.Anchored = true
Part157.FormFactor = Enum.FormFactor.Plate
Part157.Size = Vector3.new(2, 1.20000005, 3)
Part157.CFrame = CFrame.new(16.5426025, -1.51766968, 108.191025, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part157.BottomSurface = Enum.SurfaceType.Smooth
Part157.TopSurface = Enum.SurfaceType.Smooth
Part157.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part157.Position = Vector3.new(16.5426025, -1.51766968, 108.191025)
Part157.Orientation = Vector3.new(0, 90, 0)
Part157.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part158.Name = "Handle"
Part158.Parent = Model0
Part158.Rotation = Vector3.new(-180, 0, -180)
Part158.Anchored = true
Part158.FormFactor = Enum.FormFactor.Symmetric
Part158.Size = Vector3.new(1, 2, 1)
Part158.CFrame = CFrame.new(-8.45739746, 6.06390381, -79.30896, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1)
Part158.BottomSurface = Enum.SurfaceType.Smooth
Part158.TopSurface = Enum.SurfaceType.Smooth
Part158.Position = Vector3.new(-8.45739746, 6.06390381, -79.30896)
Part158.Orientation = Vector3.new(0, -180, 0)
SpecialMesh159.Parent = Part158
SpecialMesh159.MeshId = "http://www.roblox.com/asset/?id=10698598"
SpecialMesh159.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
SpecialMesh159.TextureId = "http://www.roblox.com/asset/?id=10698599"
SpecialMesh159.MeshType = Enum.MeshType.FileMesh
SpecialMesh159.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
Part160.Parent = Model0
Part160.Material = Enum.Material.Slate
Part160.BrickColor = BrickColor.new("Dark stone grey")
Part160.Rotation = Vector3.new(0, 90, 0)
Part160.Anchored = true
Part160.FormFactor = Enum.FormFactor.Plate
Part160.Size = Vector3.new(3, 22.3999996, 180)
Part160.CFrame = CFrame.new(3.04260254, 11.4842529, -81.30896, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part160.BottomSurface = Enum.SurfaceType.Smooth
Part160.TopSurface = Enum.SurfaceType.Smooth
Part160.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part160.Position = Vector3.new(3.04260254, 11.4842529, -81.30896)
Part160.Orientation = Vector3.new(0, 90, 0)
Part160.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part161.Name = "Handle"
Part161.Parent = Model0
Part161.Rotation = Vector3.new(0, -90, 0)
Part161.Anchored = true
Part161.FormFactor = Enum.FormFactor.Symmetric
Part161.Size = Vector3.new(1, 2, 1)
Part161.CFrame = CFrame.new(14.5426025, 6.08392334, -79.30896, 1.19248806e-08, 0, -1, 6.79557903e-22, 1, 8.10364665e-30, 1, -6.79557903e-22, 1.19248806e-08)
Part161.BottomSurface = Enum.SurfaceType.Smooth
Part161.TopSurface = Enum.SurfaceType.Smooth
Part161.Position = Vector3.new(14.5426025, 6.08392334, -79.30896)
Part161.Orientation = Vector3.new(0, -90, 0)
SpecialMesh162.Parent = Part161
SpecialMesh162.MeshId = "http://www.roblox.com/asset/?id=10698598"
SpecialMesh162.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
SpecialMesh162.TextureId = "http://www.roblox.com/asset/?id=10698599"
SpecialMesh162.MeshType = Enum.MeshType.FileMesh
SpecialMesh162.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
Part163.Parent = Model0
Part163.Material = Enum.Material.Slate
Part163.BrickColor = BrickColor.new("Brown")
Part163.Rotation = Vector3.new(-165, 15, 165)
Part163.Anchored = true
Part163.FormFactor = Enum.FormFactor.Plate
Part163.Size = Vector3.new(6, 2.79999995, 5)
Part163.CFrame = CFrame.new(-261.13736, -0.268310547, 113.370941, -0.933006108, -0.249998719, 0.258815885, -0.185292721, 0.950343788, 0.250001311, -0.308465719, 0.185298175, -0.933003247)
Part163.BottomSurface = Enum.SurfaceType.Smooth
Part163.TopSurface = Enum.SurfaceType.Smooth
Part163.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part163.Position = Vector3.new(-261.13736, -0.268310547, 113.370941)
Part163.Orientation = Vector3.new(-14.4799995, 164.5, -11.0299997)
Part163.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part164.Parent = Model0
Part164.Material = Enum.Material.Slate
Part164.BrickColor = BrickColor.new("Dark stone grey")
Part164.Rotation = Vector3.new(-180, 0, -180)
Part164.Anchored = true
Part164.FormFactor = Enum.FormFactor.Plate
Part164.Size = Vector3.new(3, 22.3999996, 89.4200058)
Part164.CFrame = CFrame.new(-88.4573669, 11.4842529, -35.9189758, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part164.BottomSurface = Enum.SurfaceType.Smooth
Part164.TopSurface = Enum.SurfaceType.Smooth
Part164.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part164.Position = Vector3.new(-88.4573669, 11.4842529, -35.9189758)
Part164.Orientation = Vector3.new(0, 180, 0)
Part164.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part165.Parent = Model0
Part165.Material = Enum.Material.Slate
Part165.BrickColor = BrickColor.new("Dark stone grey")
Part165.Rotation = Vector3.new(174, -89, 180)
Part165.Anchored = true
Part165.FormFactor = Enum.FormFactor.Plate
Part165.Size = Vector3.new(4, 8.80000019, 4)
Part165.CFrame = CFrame.new(0.542633057, 9.96337891, -69.0089111, -0.0174522642, -2.63521871e-09, -0.99984771, 0.104512662, 0.994521856, -0.00182426302, 0.994370401, -0.104528584, -0.0173566584)
Part165.BottomSurface = Enum.SurfaceType.Smooth
Part165.TopSurface = Enum.SurfaceType.Smooth
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part165.Position = Vector3.new(0.542633057, 9.96337891, -69.0089111)
Part165.Orientation = Vector3.new(0.100000001, -90.9899979, 6)
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part166.Parent = Model0
Part166.Material = Enum.Material.Slate
Part166.Rotation = Vector3.new(-97, 0, 165)
Part166.Anchored = true
Part166.FormFactor = Enum.FormFactor.Plate
Part166.Size = Vector3.new(6, 2.79999995, 5)
Part166.CFrame = CFrame.new(-258.63739, 2.77200317, 112.270996, -0.965919137, -0.258815855, -1.24797225e-06, -0.0315409936, 0.117712975, 0.9925403, -0.256886274, 0.958718121, -0.121863693)
Part166.BottomSurface = Enum.SurfaceType.Smooth
Part166.TopSurface = Enum.SurfaceType.Smooth
Part166.Position = Vector3.new(-258.63739, 2.77200317, 112.270996)
Part166.Orientation = Vector3.new(-83, -180, -15)
Decal167.Parent = Part166
Decal167.Texture = "http://www.roblox.com/asset/?id=321566065"
Decal167.Face = Enum.NormalId.Top
Part168.Parent = Model0
Part168.Material = Enum.Material.Slate
Part168.BrickColor = BrickColor.new("Dark stone grey")
Part168.Rotation = Vector3.new(0, 90, 0)
Part168.Anchored = true
Part168.FormFactor = Enum.FormFactor.Plate
Part168.Size = Vector3.new(3, 22.3999996, 83)
Part168.CFrame = CFrame.new(54.5426025, 11.4842529, 105.69104, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part168.BottomSurface = Enum.SurfaceType.Smooth
Part168.TopSurface = Enum.SurfaceType.Smooth
Part168.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part168.Position = Vector3.new(54.5426025, 11.4842529, 105.69104)
Part168.Orientation = Vector3.new(0, 90, 0)
Part168.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part169.Parent = Model0
Part169.Material = Enum.Material.Slate
Part169.BrickColor = BrickColor.new("Dark stone grey")
Part169.Rotation = Vector3.new(-149.220001, 75.0299988, 149.220001)
Part169.Anchored = true
Part169.FormFactor = Enum.FormFactor.Plate
Part169.Size = Vector3.new(2, 1.20000005, 2)
Part169.CFrame = CFrame.new(9.14260864, -1.49771118, 108.150986, -0.221864641, -0.132153913, 0.966080427, -0.0149123669, 0.991116881, 0.132154077, -0.974963427, 0.0149137676, -0.221864551)
Part169.BottomSurface = Enum.SurfaceType.Smooth
Part169.TopSurface = Enum.SurfaceType.Smooth
Part169.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part169.Position = Vector3.new(9.14260864, -1.49771118, 108.150986)
Part169.Orientation = Vector3.new(-7.59000015, 102.93, -0.860000014)
Part169.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part170.Parent = Model0
Part170.Material = Enum.Material.Slate
Part170.BrickColor = BrickColor.new("Dark stone grey")
Part170.Rotation = Vector3.new(0, 75, 0)
Part170.Anchored = true
Part170.FormFactor = Enum.FormFactor.Plate
Part170.Size = Vector3.new(2, 1.20000005, 3)
Part170.CFrame = CFrame.new(11.5426025, -1.51766968, 107.190979, 0.258819073, 0, 0.965925813, 0, 1, 0, -0.965925813, 0, 0.258819073)
Part170.BottomSurface = Enum.SurfaceType.Smooth
Part170.TopSurface = Enum.SurfaceType.Smooth
Part170.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part170.Position = Vector3.new(11.5426025, -1.51766968, 107.190979)
Part170.Orientation = Vector3.new(0, 75, 0)
Part170.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part171.Parent = Model0
Part171.Material = Enum.Material.Slate
Part171.BrickColor = BrickColor.new("Dark stone grey")
Part171.Rotation = Vector3.new(0, 90, 0)
Part171.Anchored = true
Part171.FormFactor = Enum.FormFactor.Plate
Part171.Size = Vector3.new(2, 1.20000005, 6)
Part171.CFrame = CFrame.new(6.04263306, -1.51766968, 108.191025, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part171.BottomSurface = Enum.SurfaceType.Smooth
Part171.TopSurface = Enum.SurfaceType.Smooth
Part171.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part171.Position = Vector3.new(6.04263306, -1.51766968, 108.191025)
Part171.Orientation = Vector3.new(0, 90, 0)
Part171.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part172.Parent = Model0
Part172.Material = Enum.Material.Slate
Part172.BrickColor = BrickColor.new("Dark stone grey")
Part172.Rotation = Vector3.new(180, -15, 180)
Part172.Anchored = true
Part172.FormFactor = Enum.FormFactor.Plate
Part172.Size = Vector3.new(2, 1.20000005, 3)
Part172.CFrame = CFrame.new(14.3425903, -1.51766968, 106.891022, -0.965925813, -8.44439185e-08, -0.258819073, -4.83421836e-08, 1, -1.45850748e-07, 0.258819073, -1.28369123e-07, -0.965925813)
Part172.BottomSurface = Enum.SurfaceType.Smooth
Part172.TopSurface = Enum.SurfaceType.Smooth
Part172.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part172.Position = Vector3.new(14.3425903, -1.51766968, 106.891022)
Part172.Orientation = Vector3.new(0, -165, 0)
Part172.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part173.Name = "Handle"
Part173.Parent = Model0
Part173.Rotation = Vector3.new(180, 0, 180)
Part173.Anchored = true
Part173.FormFactor = Enum.FormFactor.Symmetric
Part173.Size = Vector3.new(1, 2, 1)
Part173.CFrame = CFrame.new(14.5426331, 6.06390381, -60.30896, -1, -8.74227766e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 7.64274186e-15, -8.74227766e-08, -1)
Part173.BottomSurface = Enum.SurfaceType.Smooth
Part173.TopSurface = Enum.SurfaceType.Smooth
Part173.Position = Vector3.new(14.5426331, 6.06390381, -60.30896)
Part173.Orientation = Vector3.new(0, 180, 0)
SpecialMesh174.Parent = Part173
SpecialMesh174.MeshId = "http://www.roblox.com/asset/?id=10698598"
SpecialMesh174.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
SpecialMesh174.TextureId = "http://www.roblox.com/asset/?id=10698599"
SpecialMesh174.MeshType = Enum.MeshType.FileMesh
SpecialMesh174.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
Part175.Parent = Model0
Part175.Material = Enum.Material.Concrete
Part175.BrickColor = BrickColor.new("Mid gray")
Part175.Rotation = Vector3.new(180, 0, -90)
Part175.Anchored = true
Part175.FormFactor = Enum.FormFactor.Plate
Part175.Size = Vector3.new(2, 0.400000006, 99)
Part175.CFrame = CFrame.new(68.0426025, -0.286956787, 25.6810455, -4.37113883e-08, 1, 0, 1, 4.37113883e-08, -1.50995803e-07, -1.50995803e-07, -6.60023616e-15, -1)
Part175.BottomSurface = Enum.SurfaceType.Smooth
Part175.TopSurface = Enum.SurfaceType.Smooth
Part175.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part175.Position = Vector3.new(68.0426025, -0.286956787, 25.6810455)
Part175.Orientation = Vector3.new(0, 180, 90)
Part175.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part176.Parent = Model0
Part176.Material = Enum.Material.Slate
Part176.BrickColor = BrickColor.new("Dark stone grey")
Part176.Rotation = Vector3.new(180, 60, 180)
Part176.Anchored = true
Part176.FormFactor = Enum.FormFactor.Plate
Part176.Size = Vector3.new(2, 1.20000005, 3)
Part176.CFrame = CFrame.new(11.0426025, -1.51766968, 107.390976, -0.50000006, -4.37113918e-08, 0.866025388, -1.63133123e-07, 1, -4.37113918e-08, -0.866025388, -1.63133123e-07, -0.50000006)
Part176.BottomSurface = Enum.SurfaceType.Smooth
Part176.TopSurface = Enum.SurfaceType.Smooth
Part176.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part176.Position = Vector3.new(11.0426025, -1.51766968, 107.390976)
Part176.Orientation = Vector3.new(0, 120, 0)
Part176.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part177.Parent = Model0
Part177.Material = Enum.Material.Slate
Part177.BrickColor = BrickColor.new("Sand red")
Part177.Rotation = Vector3.new(0, -90, 0)
Part177.Anchored = true
Part177.FormFactor = Enum.FormFactor.Plate
Part177.Size = Vector3.new(4, 0.400000006, 4)
Part177.CFrame = CFrame.new(3.04263306, 0.362915039, -51.80896, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
Part177.BottomSurface = Enum.SurfaceType.Smooth
Part177.TopSurface = Enum.SurfaceType.Smooth
Part177.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part177.Position = Vector3.new(3.04263306, 0.362915039, -51.80896)
Part177.Orientation = Vector3.new(0, -90, 0)
Part177.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part178.Parent = Model0
Part178.Material = Enum.Material.Slate
Part178.BrickColor = BrickColor.new("Dark stone grey")
Part178.Rotation = Vector3.new(0, 90, 0)
Part178.Anchored = true
Part178.FormFactor = Enum.FormFactor.Plate
Part178.Size = Vector3.new(2, 1.60000002, 15)
Part178.CFrame = CFrame.new(10.5426331, -4.11764526, 112.191025, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part178.BottomSurface = Enum.SurfaceType.Smooth
Part178.TopSurface = Enum.SurfaceType.Smooth
Part178.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part178.Position = Vector3.new(10.5426331, -4.11764526, 112.191025)
Part178.Orientation = Vector3.new(0, 90, 0)
Part178.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part179.Parent = Model0
Part179.Material = Enum.Material.Slate
Part179.BrickColor = BrickColor.new("Dark stone grey")
Part179.Rotation = Vector3.new(0, 45, 0)
Part179.Anchored = true
Part179.FormFactor = Enum.FormFactor.Plate
Part179.Size = Vector3.new(2, 1.20000005, 3)
Part179.CFrame = CFrame.new(12.9425964, -1.51766968, 107.390976, 0.707106829, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106829)
Part179.BottomSurface = Enum.SurfaceType.Smooth
Part179.TopSurface = Enum.SurfaceType.Smooth
Part179.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part179.Position = Vector3.new(12.9425964, -1.51766968, 107.390976)
Part179.Orientation = Vector3.new(0, 45, 0)
Part179.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part180.Name = "Turkeyleg"
Part180.Parent = Model0
Part180.BrickColor = BrickColor.new("Mid gray")
Part180.Rotation = Vector3.new(90, 0, -45)
Part180.Anchored = true
Part180.FormFactor = Enum.FormFactor.Plate
Part180.Size = Vector3.new(1, 1.60000002, 1)
Part180.CFrame = CFrame.new(1.54263306, 4.06445313, -57.6089478, 0.707106769, 0.707106769, 0, 3.09086197e-08, -3.09086197e-08, -1, -0.707106769, 0.707106769, -4.37113883e-08)
Part180.BottomSurface = Enum.SurfaceType.Smooth
Part180.TopSurface = Enum.SurfaceType.Smooth
Part180.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part180.Position = Vector3.new(1.54263306, 4.06445313, -57.6089478)
Part180.Orientation = Vector3.new(90, 45, 0)
Part180.Color = Color3.new(0.803922, 0.803922, 0.803922)
SpecialMesh181.Parent = Part180
SpecialMesh181.MeshId = "http://www.roblox.com/asset/?id=13073626"
SpecialMesh181.Scale = Vector3.new(1.5, 1.5, 1.5)
SpecialMesh181.TextureId = "http://www.roblox.com/asset/?id=13073598"
SpecialMesh181.MeshType = Enum.MeshType.FileMesh
SpecialMesh181.Scale = Vector3.new(1.5, 1.5, 1.5)
Part182.Parent = Model0
Part182.Material = Enum.Material.Slate
Part182.BrickColor = BrickColor.new("Dark stone grey")
Part182.Rotation = Vector3.new(-180, 0, -180)
Part182.Anchored = true
Part182.FormFactor = Enum.FormFactor.Plate
Part182.Size = Vector3.new(3, 22.3999996, 42.2700043)
Part182.CFrame = CFrame.new(94.5426331, 11.4842529, -61.0239868, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part182.BottomSurface = Enum.SurfaceType.Smooth
Part182.TopSurface = Enum.SurfaceType.Smooth
Part182.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part182.Position = Vector3.new(94.5426331, 11.4842529, -61.0239868)
Part182.Orientation = Vector3.new(0, 180, 0)
Part182.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part183.Parent = Model0
Part183.Material = Enum.Material.Wood
Part183.BrickColor = BrickColor.new("Brown")
Part183.Rotation = Vector3.new(0, -90, 0)
Part183.Anchored = true
Part183.FormFactor = Enum.FormFactor.Plate
Part183.Size = Vector3.new(1, 3.20000005, 1)
Part183.CFrame = CFrame.new(13.5426331, 1.96322632, -56.30896, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part183.BottomSurface = Enum.SurfaceType.Smooth
Part183.TopSurface = Enum.SurfaceType.Smooth
Part183.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part183.Position = Vector3.new(13.5426331, 1.96322632, -56.30896)
Part183.Orientation = Vector3.new(0, -90, 0)
Part183.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part184.Parent = Model0
Part184.Material = Enum.Material.Slate
Part184.BrickColor = BrickColor.new("Sand red")
Part184.Rotation = Vector3.new(0, -90, 0)
Part184.Anchored = true
Part184.FormFactor = Enum.FormFactor.Plate
Part184.Size = Vector3.new(4, 0.400000006, 4)
Part184.CFrame = CFrame.new(-4.95736694, 0.362915039, -51.80896, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
Part184.BottomSurface = Enum.SurfaceType.Smooth
Part184.TopSurface = Enum.SurfaceType.Smooth
Part184.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part184.Position = Vector3.new(-4.95736694, 0.362915039, -51.80896)
Part184.Orientation = Vector3.new(0, -90, 0)
Part184.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part185.Parent = Model0
Part185.Material = Enum.Material.Slate
Part185.BrickColor = BrickColor.new("Dark stone grey")
Part185.Rotation = Vector3.new(0, 90, 0)
Part185.Anchored = true
Part185.FormFactor = Enum.FormFactor.Plate
Part185.Size = Vector3.new(2, 2.79999995, 15)
Part185.CFrame = CFrame.new(10.5426331, -3.51635742, 110.191025, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Part185.BottomSurface = Enum.SurfaceType.Smooth
Part185.TopSurface = Enum.SurfaceType.Smooth
Part185.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part185.Position = Vector3.new(10.5426331, -3.51635742, 110.191025)
Part185.Orientation = Vector3.new(0, 90, 0)
Part185.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part186.Parent = Model0
Part186.Material = Enum.Material.Wood
Part186.BrickColor = BrickColor.new("Brown")
Part186.Rotation = Vector3.new(0, -90, 0)
Part186.Anchored = true
Part186.FormFactor = Enum.FormFactor.Plate
Part186.Size = Vector3.new(1, 3.20000005, 1)
Part186.CFrame = CFrame.new(-7.45739746, 1.96322632, -56.30896, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part186.BottomSurface = Enum.SurfaceType.Smooth
Part186.TopSurface = Enum.SurfaceType.Smooth
Part186.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part186.Position = Vector3.new(-7.45739746, 1.96322632, -56.30896)
Part186.Orientation = Vector3.new(0, -90, 0)
Part186.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part187.Name = "Turkeyleg"
Part187.Parent = Model0
Part187.BrickColor = BrickColor.new("Mid gray")
Part187.Rotation = Vector3.new(90, 0, 165)
Part187.Anchored = true
Part187.FormFactor = Enum.FormFactor.Plate
Part187.Size = Vector3.new(1, 1.60000002, 1)
Part187.CFrame = CFrame.new(6.54263306, 4.06445313, -57.6089478, -0.965925813, -0.258819133, 2.16381835e-07, -2.2032215e-07, -1.37818006e-08, -1, 0.258819133, -0.965925813, -4.37113883e-08)
Part187.BottomSurface = Enum.SurfaceType.Smooth
Part187.TopSurface = Enum.SurfaceType.Smooth
Part187.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part187.Position = Vector3.new(6.54263306, 4.06445313, -57.6089478)
Part187.Orientation = Vector3.new(90, -165, 0)
Part187.Color = Color3.new(0.803922, 0.803922, 0.803922)
SpecialMesh188.Parent = Part187
SpecialMesh188.MeshId = "http://www.roblox.com/asset/?id=13073626"
SpecialMesh188.Scale = Vector3.new(1.5, 1.5, 1.5)
SpecialMesh188.TextureId = "http://www.roblox.com/asset/?id=13073598"
SpecialMesh188.MeshType = Enum.MeshType.FileMesh
SpecialMesh188.Scale = Vector3.new(1.5, 1.5, 1.5)
Part189.Name = "Coin"
Part189.Parent = Model0
Part189.BrickColor = BrickColor.new("New Yeller")
Part189.Rotation = Vector3.new(45, -45, 15)
Part189.Anchored = true
Part189.CanCollide = false
Part189.FormFactor = Enum.FormFactor.Plate
Part189.Size = Vector3.new(1, 0.400000006, 1)
Part189.CFrame = CFrame.new(-3.35742188, 4.92272949, -58.8088989, 0.683012664, -0.183012694, -0.707106769, -0.299950182, 0.812422156, -0.49999997, 0.665975571, 0.553603172, 0.49999997)
Part189.BottomSurface = Enum.SurfaceType.Smooth
Part189.TopSurface = Enum.SurfaceType.Smooth
Part189.Color = Color3.new(1, 1, 0)
Part189.Position = Vector3.new(-3.35742188, 4.92272949, -58.8088989)
Part189.Orientation = Vector3.new(30, -54.7400017, -20.2600002)
Part189.Color = Color3.new(1, 1, 0)
SpecialMesh190.Parent = Part189
SpecialMesh190.MeshId = "http://www.roblox.com/asset/?id=19059116"
SpecialMesh190.Scale = Vector3.new(3, 3, 3)
SpecialMesh190.TextureId = "http://www.roblox.com/asset/?id=19059111"
SpecialMesh190.MeshType = Enum.MeshType.FileMesh
SpecialMesh190.Scale = Vector3.new(3, 3, 3)
Part191.Name = "Handle"
Part191.Parent = Model0
Part191.Rotation = Vector3.new(0, 90, 0)
Part191.Anchored = true
Part191.FormFactor = Enum.FormFactor.Symmetric
Part191.Size = Vector3.new(1, 2, 1)
Part191.CFrame = CFrame.new(-8.45739746, 6.06390381, -60.30896, 1.62920685e-07, 1.42429793e-14, 1, -1.74845553e-07, 1, 1.42429793e-14, -1, -1.74845553e-07, 1.62920685e-07)
Part191.BottomSurface = Enum.SurfaceType.Smooth
Part191.TopSurface = Enum.SurfaceType.Smooth
Part191.Position = Vector3.new(-8.45739746, 6.06390381, -60.30896)
Part191.Orientation = Vector3.new(0, 90, 0)
SpecialMesh192.Parent = Part191
SpecialMesh192.MeshId = "http://www.roblox.com/asset/?id=10698598"
SpecialMesh192.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
SpecialMesh192.TextureId = "http://www.roblox.com/asset/?id=10698599"
SpecialMesh192.MeshType = Enum.MeshType.FileMesh
SpecialMesh192.Scale = Vector3.new(0.899999976, 0.899999976, 0.899999976)
Part193.Parent = Model0
Part193.Material = Enum.Material.Slate
Part193.BrickColor = BrickColor.new("Sand red")
Part193.Rotation = Vector3.new(0, -90, 0)
Part193.Anchored = true
Part193.FormFactor = Enum.FormFactor.Plate
Part193.Size = Vector3.new(4, 0.400000006, 4)
Part193.CFrame = CFrame.new(11.0426331, 0.362915039, -51.80896, -4.37113883e-08, 0, -1, 3.58820421e-06, 1, -1.56845389e-13, 1, -3.58820421e-06, -4.37113883e-08)
Part193.BottomSurface = Enum.SurfaceType.Smooth
Part193.TopSurface = Enum.SurfaceType.Smooth
Part193.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part193.Position = Vector3.new(11.0426331, 0.362915039, -51.80896)
Part193.Orientation = Vector3.new(0, -90, 0)
Part193.Color = Color3.new(0.584314, 0.47451, 0.466667)
Part194.Parent = Model0
Part194.Material = Enum.Material.Slate
Part194.BrickColor = BrickColor.new("Dark stone grey")
Part194.Rotation = Vector3.new(-164.039993, 14.9799995, 14.9899998)
Part194.Anchored = true
Part194.FormFactor = Enum.FormFactor.Plate
Part194.Size = Vector3.new(4, 8.80000019, 4)
Part194.CFrame = CFrame.new(-3.4574585, 19.7633667, -70.8030701, 0.933178544, -0.249807432, 0.258406699, -0.317269951, -0.91035682, 0.265688241, 0.168871403, -0.329919249, -0.928781867)
Part194.BottomSurface = Enum.SurfaceType.Smooth
Part194.TopSurface = Enum.SurfaceType.Smooth
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part194.Position = Vector3.new(-3.4574585, 19.7633667, -70.8030701)
Part194.Orientation = Vector3.new(-15.4099998, 164.449997, -160.789993)
Part194.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part195.Name = "Handle"
Part195.Parent = Model0
Part195.BrickColor = BrickColor.new("Bright green")
Part195.Rotation = Vector3.new(-180, 60, 180)
Part195.Anchored = true
Part195.Size = Vector3.new(2, 1.20000005, 2)
Part195.CFrame = CFrame.new(4.04263306, 4.55407715, -57.80896, -0.500000119, -6.62832463e-07, 0.866025388, -1.21922153e-06, 1, 6.14549549e-08, -0.866025388, -1.02514923e-06, -0.500000119)
Part195.Color = Color3.new(0.294118, 0.592157, 0.294118)
Part195.Position = Vector3.new(4.04263306, 4.55407715, -57.80896)
Part195.Orientation = Vector3.new(0, 120, 0)
Part195.Color = Color3.new(0.294118, 0.592157, 0.294118)
SpecialMesh196.Parent = Part195
SpecialMesh196.MeshId = "http://www.roblox.com/asset/?id=13650677"
SpecialMesh196.TextureId = "http://www.roblox.com/asset/?id=13650651"
SpecialMesh196.MeshType = Enum.MeshType.FileMesh
Part197.Name = "Handle"
Part197.Parent = Model0
Part197.BrickColor = BrickColor.new("Mid gray")
Part197.Rotation = Vector3.new(179.949997, -58.4199982, 179.970001)
Part197.Anchored = true
Part197.FormFactor = Enum.FormFactor.Plate
Part197.Size = Vector3.new(1, 1.20000005, 1)
Part197.CFrame = CFrame.new(7.54550171, 4.55438232, -58.90448, -0.523667037, -0.000229857847, -0.851922989, 0.000317907223, 0.999999821, -0.000465224381, 0.851922929, -0.00051445514, -0.523666859)
Part197.BottomSurface = Enum.SurfaceType.Smooth
Part197.TopSurface = Enum.SurfaceType.Smooth
Part197.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part197.Position = Vector3.new(7.54550171, 4.55438232, -58.90448)
Part197.Orientation = Vector3.new(0.0299999993, -121.580002, 0.0199999996)
Part197.Color = Color3.new(0.803922, 0.803922, 0.803922)
SpecialMesh198.Parent = Part197
SpecialMesh198.MeshId = "http://www.roblox.com/asset/?id=10470609"
SpecialMesh198.Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005)
SpecialMesh198.TextureId = "http://www.roblox.com/asset/?id=10470600"
SpecialMesh198.MeshType = Enum.MeshType.FileMesh
SpecialMesh198.Scale = Vector3.new(1.20000005, 1.20000005, 1.20000005)
Part199.Parent = Model0
Part199.Material = Enum.Material.Slate
Part199.BrickColor = BrickColor.new("Dark stone grey")
Part199.Rotation = Vector3.new(90, 20, 0)
Part199.Anchored = true
Part199.FormFactor = Enum.FormFactor.Plate
Part199.Size = Vector3.new(6, 2.79999995, 5)
Part199.CFrame = CFrame.new(11.9464417, -1.04397583, 105.791031, 0.939692616, -7.7884394e-08, 0.342020124, 0.342020124, -7.20589881e-08, -0.939692616, 9.78330164e-08, 1, -4.10752676e-08)
Part199.BottomSurface = Enum.SurfaceType.Smooth
Part199.TopSurface = Enum.SurfaceType.Smooth
Part199.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part199.Position = Vector3.new(11.9464417, -1.04397583, 105.791031)
Part199.Orientation = Vector3.new(70, 90, 90)
Part199.Color = Color3.new(0.388235, 0.372549, 0.384314)
Script200.Name = "MusicHandler"
Script200.Parent = Model0
table.insert(cors,sandbox(Script200,function()
onSpawn=function(new)
	if game.Players:GetPlayerFromCharacter(new)~=nil then
		while game.Players:GetPlayerFromCharacter(new).PlayerGui==nil do
			wait()
		end
		if game.Players:GetPlayerFromCharacter(new).PlayerGui:FindFirstChild("MusicScript")==nil then
			s=script.MusicScript:clone()
			s.Disabled=false
			s.Parent=game.Players:GetPlayerFromCharacter(new).PlayerGui
		end
	end
end
workspace.ChildAdded:connect(onSpawn)


end))
LocalScript201.Name = "MusicScript"
LocalScript201.Parent = Script200
table.insert(cors,sandbox(LocalScript201,function()
wait(1)
--Saz
--For black magic

--Setup vars
vPlayer=game.Workspace.CurrentCamera
if vPlayer:FindFirstChild("MusicStartTime")==nil then
	
	wait(8)
	
	v=Instance.new("IntValue")
	v.Name="MusicStartTime"
	v.Parent=vPlayer
	v=Instance.new("IntValue")
	v.Name="MusicAt"
	v.Parent=vPlayer
	v=Instance.new("IntValue")
	v.Name="MusicNext"
	v.Parent=vPlayer
	
	v=Instance.new("IntValue")
	v.Name="Volume"
	v.Parent=vPlayer
	v.Value=80
	
	v=Instance.new("IntValue")
	v.Name="OtherVar"
	v.Parent=vPlayer
	
	v=Instance.new("Sound")
	v.SoundId=""
	v.Volume=.8
		v.Pitch=1
	v.Name="Music"
	v.Parent=vPlayer
end

MusicAt=vPlayer.MusicAt
MusicStartTime=vPlayer.MusicStartTime
MusicNext=vPlayer.MusicNext
Other=vPlayer.OtherVar
Music=vPlayer.Music
Music.Pitch=1
prefix="http://www.roblox.com/asset/?id="

Song=vPlayer:FindFirstChild("Song")
NewSong=false
if Song~=nil then
	DoesMatch=true
	if #Song.IDs:children() ~= #script.Song.IDs:children() then
		DoesMatch=false
	else
		for _,v in pairs(Song.IDs:children()) do
			if v.Value~=script.Song.IDs[v.Name].Value then
				DoesMatch=false --New song.
				break
			end
		end
	end
	print(":>")
	if DoesMatch==false then
		print(":)")
		Song:Remove()
		NewSong=true
	end
end

if Song==nil then
	NewSong=true
else
	if Song.Value~=1 then
		NewSong=true
	end
end

if NewSong==true then
	Song=script.Song:clone()
	Song.Parent=vPlayer
end

RTime=function(Num)
	return MusicStartTime.Value + Song.Times[MusicAt.Value].Value*.01
end

if NewSong==true then
	Music:Stop()
	MusicAt.Value=1
	if string.len(Song["IDs"][MusicAt.Value].Value) <= 7 then
		Music.SoundId=""
	else
		Music.SoundId=prefix..Song["IDs"][MusicAt.Value].Value
	end
	MusicStartTime.Value=tick()
	Music:Play()
	Song.Value=1
end

while true do
	if vPlayer:FindFirstChild("MusicLock")==nil then
		if tick()>=RTime(MusicAt.Value) then
			--new id
			check=MusicAt.Value+1
			nextat=MusicAt.Value
			if Song["IDs"]:FindFirstChild(check)~=nil or MusicAt.Value==Song.LoopEnd.Value then --nowhere to go.
				--try the loop
				nextat=Song.LoopStart.Value
			else
				nextat=MusicAt.Value+1
			end
			MusicAt.Value=nextat
			Music:Stop()
		if string.len(Song["IDs"][MusicAt.Value].Value) <= 7 then
			Music.SoundId=""
		else
			Music.SoundId=prefix..Song["IDs"][MusicAt.Value].Value
		end
			MusicStartTime.Value=tick()
			Music:Play()
		end
	else
		Music:Stop()
	end
	Music.Volume=vPlayer.Volume.Value / 100
	wait()
end
end))
IntValue202.Name = "Song"
IntValue202.Parent = LocalScript201
IntValue203.Name = "IDs"
IntValue203.Parent = IntValue202
IntValue204.Name = "1"
IntValue204.Parent = IntValue203
IntValue204.Value = 508524475
IntValue205.Name = "Times"
IntValue205.Parent = IntValue202
IntValue206.Name = "1"
IntValue206.Parent = IntValue205
IntValue206.Value = 12000
IntValue207.Name = "LoopStart"
IntValue207.Parent = IntValue202
IntValue207.Value = 1
IntValue208.Name = "LoopEnd"
IntValue208.Parent = IntValue202
IntValue208.Value = 2
StringValue209.Name = "Te"
StringValue209.Parent = LocalScript201
StringValue210.Name = "Creator"
StringValue210.Parent = Model0
StringValue210.Value = "By Qaeo"
IntValue211.Name = "Photo"
IntValue211.Parent = Model0
IntValue211.Value = 198646956
StringValue212.Name = "Skytype"
StringValue212.Parent = Model0
StringValue212.Value = "RustyWhiteSky"
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end