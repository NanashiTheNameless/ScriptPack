
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
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
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
CylinderMesh37 = Instance.new("CylinderMesh")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
CylinderMesh42 = Instance.new("CylinderMesh")
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
Smoke79 = Instance.new("Smoke")
Part80 = Instance.new("Part")
Smoke81 = Instance.new("Smoke")
Part82 = Instance.new("Part")
Smoke83 = Instance.new("Smoke")
Part84 = Instance.new("Part")
Smoke85 = Instance.new("Smoke")
Part86 = Instance.new("Part")
Part87 = Instance.new("Part")
Smoke88 = Instance.new("Smoke")
Part89 = Instance.new("Part")
Smoke90 = Instance.new("Smoke")
Part91 = Instance.new("Part")
Part92 = Instance.new("Part")
Part93 = Instance.new("Part")
Part94 = Instance.new("Part")
Part95 = Instance.new("Part")
Part96 = Instance.new("Part")
Part97 = Instance.new("Part")
Part98 = Instance.new("Part")
Part99 = Instance.new("Part")
Part100 = Instance.new("Part")
Part101 = Instance.new("Part")
Part102 = Instance.new("Part")
Part103 = Instance.new("Part")
Part104 = Instance.new("Part")
Part105 = Instance.new("Part")
Part106 = Instance.new("Part")
Part107 = Instance.new("Part")
Smoke108 = Instance.new("Smoke")
Part109 = Instance.new("Part")
Part110 = Instance.new("Part")
Part111 = Instance.new("Part")
Part112 = Instance.new("Part")
Part113 = Instance.new("Part")
Part114 = Instance.new("Part")
Part115 = Instance.new("Part")
Part116 = Instance.new("Part")
Part117 = Instance.new("Part")
Part118 = Instance.new("Part")
Smoke119 = Instance.new("Smoke")
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
Script130 = Instance.new("Script")
LocalScript131 = Instance.new("LocalScript")
IntValue132 = Instance.new("IntValue")
IntValue133 = Instance.new("IntValue")
IntValue134 = Instance.new("IntValue")
IntValue135 = Instance.new("IntValue")
IntValue136 = Instance.new("IntValue")
IntValue137 = Instance.new("IntValue")
IntValue138 = Instance.new("IntValue")
IntValue139 = Instance.new("IntValue")
StringValue140 = Instance.new("StringValue")
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
Part152 = Instance.new("Part")
Part153 = Instance.new("Part")
Part154 = Instance.new("Part")
Part155 = Instance.new("Part")
Part156 = Instance.new("Part")
Part157 = Instance.new("Part")
Part158 = Instance.new("Part")
Part159 = Instance.new("Part")
Part160 = Instance.new("Part")
Part161 = Instance.new("Part")
Part162 = Instance.new("Part")
Part163 = Instance.new("Part")
Part164 = Instance.new("Part")
Model165 = Instance.new("Model")
Part166 = Instance.new("Part")
SpecialMesh167 = Instance.new("SpecialMesh")
Part168 = Instance.new("Part")
SpecialMesh169 = Instance.new("SpecialMesh")
Part170 = Instance.new("Part")
Part171 = Instance.new("Part")
Part172 = Instance.new("Part")
Part173 = Instance.new("Part")
Part174 = Instance.new("Part")
Part175 = Instance.new("Part")
Part176 = Instance.new("Part")
Part177 = Instance.new("Part")
Part178 = Instance.new("Part")
Part179 = Instance.new("Part")
Part180 = Instance.new("Part")
Part181 = Instance.new("Part")
Part182 = Instance.new("Part")
Part183 = Instance.new("Part")
Part184 = Instance.new("Part")
Part185 = Instance.new("Part")
Part186 = Instance.new("Part")
Part187 = Instance.new("Part")
Part188 = Instance.new("Part")
Part189 = Instance.new("Part")
Part190 = Instance.new("Part")
Part191 = Instance.new("Part")
StringValue192 = Instance.new("StringValue")
IntValue193 = Instance.new("IntValue")
Model194 = Instance.new("Model")
Script195 = Instance.new("Script")
Part196 = Instance.new("Part")
Script197 = Instance.new("Script")
LocalScript198 = Instance.new("LocalScript")
SpecialMesh199 = Instance.new("SpecialMesh")
Sound200 = Instance.new("Sound")
Sound201 = Instance.new("Sound")
Sound202 = Instance.new("Sound")
Model203 = Instance.new("Model")
Script204 = Instance.new("Script")
Part205 = Instance.new("Part")
Script206 = Instance.new("Script")
LocalScript207 = Instance.new("LocalScript")
SpecialMesh208 = Instance.new("SpecialMesh")
Sound209 = Instance.new("Sound")
Sound210 = Instance.new("Sound")
Sound211 = Instance.new("Sound")
Model212 = Instance.new("Model")
Script213 = Instance.new("Script")
Part214 = Instance.new("Part")
Script215 = Instance.new("Script")
LocalScript216 = Instance.new("LocalScript")
SpecialMesh217 = Instance.new("SpecialMesh")
Sound218 = Instance.new("Sound")
Sound219 = Instance.new("Sound")
Sound220 = Instance.new("Sound")
Model221 = Instance.new("Model")
Script222 = Instance.new("Script")
Part223 = Instance.new("Part")
Script224 = Instance.new("Script")
LocalScript225 = Instance.new("LocalScript")
SpecialMesh226 = Instance.new("SpecialMesh")
Sound227 = Instance.new("Sound")
Sound228 = Instance.new("Sound")
Sound229 = Instance.new("Sound")
Model230 = Instance.new("Model")
Script231 = Instance.new("Script")
Part232 = Instance.new("Part")
Script233 = Instance.new("Script")
LocalScript234 = Instance.new("LocalScript")
SpecialMesh235 = Instance.new("SpecialMesh")
Sound236 = Instance.new("Sound")
Sound237 = Instance.new("Sound")
Sound238 = Instance.new("Sound")
Part239 = Instance.new("Part")
Part240 = Instance.new("Part")
Part241 = Instance.new("Part")
Part242 = Instance.new("Part")
Part243 = Instance.new("Part")
Part244 = Instance.new("Part")
Part245 = Instance.new("Part")
Part246 = Instance.new("Part")
Part247 = Instance.new("Part")
Part248 = Instance.new("Part")
Part249 = Instance.new("Part")
Part250 = Instance.new("Part")
Part251 = Instance.new("Part")
Part252 = Instance.new("Part")
Part253 = Instance.new("Part")
Part254 = Instance.new("Part")
Part255 = Instance.new("Part")
Part256 = Instance.new("Part")
Part257 = Instance.new("Part")
Part258 = Instance.new("Part")
Part259 = Instance.new("Part")
Part260 = Instance.new("Part")
Part261 = Instance.new("Part")
Part262 = Instance.new("Part")
Part263 = Instance.new("Part")
Part264 = Instance.new("Part")
Part265 = Instance.new("Part")
Part266 = Instance.new("Part")
Part267 = Instance.new("Part")
Part268 = Instance.new("Part")
Part269 = Instance.new("Part")
Part270 = Instance.new("Part")
Part271 = Instance.new("Part")
Part272 = Instance.new("Part")
Part273 = Instance.new("Part")
Part274 = Instance.new("Part")
Part275 = Instance.new("Part")
Part276 = Instance.new("Part")
Part277 = Instance.new("Part")
Part278 = Instance.new("Part")
Part279 = Instance.new("Part")
Part280 = Instance.new("Part")
Part281 = Instance.new("Part")
Part282 = Instance.new("Part")
Part283 = Instance.new("Part")
Part284 = Instance.new("Part")
Part285 = Instance.new("Part")
Part286 = Instance.new("Part")
Part287 = Instance.new("Part")
Part288 = Instance.new("Part")
Part289 = Instance.new("Part")
Part290 = Instance.new("Part")
Part291 = Instance.new("Part")
Part292 = Instance.new("Part")
Part293 = Instance.new("Part")
Part294 = Instance.new("Part")
Part295 = Instance.new("Part")
Model0.Name = "Soul Spring"
Model0.Parent = mas
Part1.Parent = Model0
Part1.Material = Enum.Material.Slate
Part1.BrickColor = BrickColor.new("Dark stone grey")
Part1.Rotation = Vector3.new(-16.9300003, -2.46000004, 159.009995)
Part1.Anchored = true
Part1.FormFactor = Enum.FormFactor.Custom
Part1.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part1.CFrame = CFrame.new(-223.588867, 256.416229, -123.697632, -0.932750583, -0.357947022, -0.0430005714, 0.331060231, -0.897638559, 0.29093343, -0.1427387, 0.257132322, 0.955775142)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part1.Position = Vector3.new(-223.588867, 256.416229, -123.697632)
Part1.Orientation = Vector3.new(-16.9099998, -2.57999992, 159.759995)
Part1.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part2.Parent = Model0
Part2.Material = Enum.Material.Slate
Part2.BrickColor = BrickColor.new("Dark stone grey")
Part2.Rotation = Vector3.new(-0.479999989, -17.1000004, -150.979996)
Part2.Anchored = true
Part2.FormFactor = Enum.FormFactor.Custom
Part2.Size = Vector3.new(26.9099922, 11.8898811, 13.809989)
Part2.CFrame = CFrame.new(-179.917755, 352.312561, 101.40274, -0.835782886, 0.463722289, -0.29398337, -0.48728174, -0.873207688, 0.00794632826, -0.253025174, 0.149893478, 0.955776334)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part2.Position = Vector3.new(-179.917755, 352.312561, 101.40274)
Part2.Orientation = Vector3.new(-0.459999979, -17.1000004, -150.839996)
Part2.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part3.Name = "SpawnPoint4"
Part3.Parent = Model0
Part3.Material = Enum.Material.Grass
Part3.BrickColor = BrickColor.new("Earth green")
Part3.Transparency = 1
Part3.Rotation = Vector3.new(-180, 15.4099998, 180)
Part3.Anchored = true
Part3.CanCollide = false
Part3.FormFactor = Enum.FormFactor.Custom
Part3.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part3.CFrame = CFrame.new(-156.18985, 122.35817, -66.4896545, -0.964036882, -3.6624769e-08, 0.265767574, -3.21240918e-08, 1, 2.12815117e-08, -0.265767574, 1.19786847e-08, -0.964036882)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part3.Position = Vector3.new(-156.18985, 122.35817, -66.4896545)
Part3.Orientation = Vector3.new(0, 164.589996, 0)
Part3.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part4.Parent = Model0
Part4.Material = Enum.Material.Sand
Part4.BrickColor = BrickColor.new("Reddish brown")
Part4.Rotation = Vector3.new(22.9799995, 1.41999996, -0.599999964)
Part4.Anchored = true
Part4.FormFactor = Enum.FormFactor.Custom
Part4.Size = Vector3.new(35.4498825, 108.949928, 128.339996)
Part4.CFrame = CFrame.new(162.305695, 227.144104, 59.6460419, 0.999638259, 0.0104948813, 0.0247611329, -1.81827602e-07, 0.920715809, -0.390233397, -0.0268934239, 0.390092224, 0.920382738)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part4.Position = Vector3.new(162.305695, 227.144104, 59.6460419)
Part4.Orientation = Vector3.new(22.9699993, 1.53999996, 0)
Part4.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part5.Name = "SpawnPoint5"
Part5.Parent = Model0
Part5.Material = Enum.Material.Grass
Part5.BrickColor = BrickColor.new("Earth green")
Part5.Transparency = 1
Part5.Rotation = Vector3.new(-180, 14.7199993, 180)
Part5.Anchored = true
Part5.CanCollide = false
Part5.FormFactor = Enum.FormFactor.Custom
Part5.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part5.CFrame = CFrame.new(-181.601196, 122.228584, 113.172974, -0.967180192, -3.68714979e-08, 0.254090488, -3.23848326e-08, 1, 2.18406875e-08, -0.254090488, 1.2895268e-08, -0.967180192)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part5.Position = Vector3.new(-181.601196, 122.228584, 113.172974)
Part5.Orientation = Vector3.new(0, 165.279999, 0)
Part5.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part6.Parent = Model0
Part6.Material = Enum.Material.Slate
Part6.BrickColor = BrickColor.new("Medium blue")
Part6.Rotation = Vector3.new(-70.7200012, -44.7399979, -63.4300003)
Part6.Anchored = true
Part6.FormFactor = Enum.FormFactor.Custom
Part6.Size = Vector3.new(129.069855, 21.1099968, 37.7400627)
Part6.CFrame = CFrame.new(-169.353851, 65.9291382, 117.194649, 0.317783058, 0.635296822, -0.703855693, 0.001999181, 0.74188447, 0.670524716, 0.948161304, -0.214488089, 0.234488413)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.431373, 0.6, 0.792157)
Part6.Position = Vector3.new(-169.353851, 65.9291382, 117.194649)
Part6.Orientation = Vector3.new(-42.1100006, -71.5699997, 0.149999991)
Part6.Color = Color3.new(0.431373, 0.6, 0.792157)
Part7.Parent = Model0
Part7.Material = Enum.Material.Slate
Part7.BrickColor = BrickColor.new("Dark stone grey")
Part7.Rotation = Vector3.new(8.0199995, -15.1799994, 2.1099999)
Part7.Anchored = true
Part7.FormFactor = Enum.FormFactor.Custom
Part7.Size = Vector3.new(247.749878, 8.95000076, 6.60003185)
Part7.CFrame = CFrame.new(-176.01123, 105.747528, 57.3092804, 0.964444339, -0.0355931297, -0.26187849, 7.07069816e-08, 0.990889788, -0.134676248, 0.26428628, 0.12988767, 0.955657899)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part7.Position = Vector3.new(-176.01123, 105.747528, 57.3092804)
Part7.Orientation = Vector3.new(7.73999977, -15.3199997, 0)
Part7.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part8.Parent = Model0
Part8.Material = Enum.Material.Slate
Part8.BrickColor = BrickColor.new("Dark stone grey")
Part8.Rotation = Vector3.new(2.57999992, -16.9099998, -110.239998)
Part8.Anchored = true
Part8.FormFactor = Enum.FormFactor.Custom
Part8.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part8.CFrame = CFrame.new(-187.255219, 338.80072, 66.8723145, -0.331060231, 0.897638559, -0.29093343, -0.932750583, -0.357947022, -0.0430005714, -0.1427387, 0.257132322, 0.955775142)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part8.Position = Vector3.new(-187.255219, 338.80072, 66.8723145)
Part8.Orientation = Vector3.new(2.46000004, -16.9300003, -110.989998)
Part8.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part9.Parent = Model0
Part9.Material = Enum.Material.Slate
Part9.BrickColor = BrickColor.new("Dark stone grey")
Part9.Rotation = Vector3.new(-0.479999989, -17.1000004, -150.979996)
Part9.Anchored = true
Part9.FormFactor = Enum.FormFactor.Custom
Part9.Size = Vector3.new(24.8099937, 11.8898811, 13.809989)
Part9.CFrame = CFrame.new(-186.25531, 347.681122, 114.157059, -0.835782886, 0.463722289, -0.29398337, -0.48728174, -0.873207688, 0.00794632826, -0.253025174, 0.149893478, 0.955776334)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part9.Position = Vector3.new(-186.25531, 347.681122, 114.157059)
Part9.Orientation = Vector3.new(-0.459999979, -17.1000004, -150.839996)
Part9.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part10.Parent = Model0
Part10.Material = Enum.Material.Wood
Part10.BrickColor = BrickColor.new("Reddish brown")
Part10.Rotation = Vector3.new(-180, 3.79999995, 180)
Part10.Anchored = true
Part10.FormFactor = Enum.FormFactor.Custom
Part10.Size = Vector3.new(1.74992001, 2.47999477, 40.0000687)
Part10.CFrame = CFrame.new(76.8186874, 115.718674, -26.1849976, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part10.Position = Vector3.new(76.8186874, 115.718674, -26.1849976)
Part10.Orientation = Vector3.new(0, 176.199997, 0)
Part10.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part11.Parent = Model0
Part11.Material = Enum.Material.Slate
Part11.BrickColor = BrickColor.new("Dark stone grey")
Part11.Rotation = Vector3.new(7.73999977, 0, 0)
Part11.Anchored = true
Part11.FormFactor = Enum.FormFactor.Custom
Part11.Size = Vector3.new(247.749878, 8.95000076, 6.60003185)
Part11.CFrame = CFrame.new(18.435173, 105.777557, 80.5639648, 1, 0, 0, 0, 0.990889788, -0.134676218, 0, 0.134676218, 0.990889788)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part11.Position = Vector3.new(18.435173, 105.777557, 80.5639648)
Part11.Orientation = Vector3.new(7.73999977, 0, 0)
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part12.Parent = Model0
Part12.Material = Enum.Material.Grass
Part12.BrickColor = BrickColor.new("Bright green")
Part12.Rotation = Vector3.new(0, 85.8600006, 0)
Part12.Anchored = true
Part12.FormFactor = Enum.FormFactor.Custom
Part12.Size = Vector3.new(83.9798965, 0.800000191, 123.840065)
Part12.CFrame = CFrame.new(-32.7614822, 112.078819, 139.153305, 0.0722578466, -3.29623973e-08, 0.997386158, 2.924059e-07, 1, 1.18647963e-08, -0.997386158, 2.90784129e-07, 0.0722578466)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Color = Color3.new(0.294118, 0.592157, 0.294118)
Part12.Position = Vector3.new(-32.7614822, 112.078819, 139.153305)
Part12.Orientation = Vector3.new(0, 85.8600006, 0)
Part12.Color = Color3.new(0.294118, 0.592157, 0.294118)
Part13.Name = "SpawnPoint8"
Part13.Parent = Model0
Part13.Material = Enum.Material.Grass
Part13.BrickColor = BrickColor.new("Earth green")
Part13.Transparency = 1
Part13.Rotation = Vector3.new(180, 0, 180)
Part13.Anchored = true
Part13.CanCollide = false
Part13.FormFactor = Enum.FormFactor.Custom
Part13.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part13.CFrame = CFrame.new(24.9291458, 122.228394, 223.269363, -0.999999642, -4.49231194e-08, 1.78813934e-07, -4.49231123e-08, 1, -1.42108547e-14, -1.78813934e-07, 3.90798505e-14, -0.999999642)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part13.Position = Vector3.new(24.9291458, 122.228394, 223.269363)
Part13.Orientation = Vector3.new(0, 180, 0)
Part13.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part14.Parent = Model0
Part14.Material = Enum.Material.Slate
Part14.BrickColor = BrickColor.new("Reddish brown")
Part14.Rotation = Vector3.new(90, 69.6199951, -90)
Part14.Anchored = true
Part14.FormFactor = Enum.FormFactor.Custom
Part14.Size = Vector3.new(25.1999149, 16.6799946, 34.790062)
Part14.CFrame = CFrame.new(61.0708237, 110.626976, 134.045135, 0, 0.348322839, 0.937374532, 0, 0.937374532, -0.348322839, -1, 0, 0)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part14.Position = Vector3.new(61.0708237, 110.626976, 134.045135)
Part14.Orientation = Vector3.new(20.3799992, 90, 0)
Part14.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part15.Parent = Model0
Part15.Material = Enum.Material.Slate
Part15.BrickColor = BrickColor.new("Reddish brown")
Part15.Rotation = Vector3.new(0, 90, 0)
Part15.Anchored = true
Part15.FormFactor = Enum.FormFactor.Custom
Part15.Size = Vector3.new(83.9798965, 17.1599941, 85.3300781)
Part15.CFrame = CFrame.new(5.158638, 115.928818, 144.54512, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part15.Position = Vector3.new(5.158638, 115.928818, 144.54512)
Part15.Orientation = Vector3.new(0, 90, 0)
Part15.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part16.Parent = Model0
Part16.Material = Enum.Material.Slate
Part16.BrickColor = BrickColor.new("Reddish brown")
Part16.Rotation = Vector3.new(0, -15.0899992, 0)
Part16.Anchored = true
Part16.FormFactor = Enum.FormFactor.Custom
Part16.Size = Vector3.new(367.569855, 9.19999886, 202.310028)
Part16.CFrame = CFrame.new(-145.94754, 107.828888, 168.917099, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part16.Position = Vector3.new(-145.94754, 107.828888, 168.917099)
Part16.Orientation = Vector3.new(0, -15.0899992, 0)
Part16.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part17.Parent = Model0
Part17.Material = Enum.Material.Slate
Part17.BrickColor = BrickColor.new("Dark stone grey")
Part17.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part17.Anchored = true
Part17.FormFactor = Enum.FormFactor.Custom
Part17.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part17.CFrame = CFrame.new(-199.781036, 294.203796, -39.6383972, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part17.Position = Vector3.new(-199.781036, 294.203796, -39.6383972)
Part17.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part17.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part18.Name = "SpawnPoint6"
Part18.Parent = Model0
Part18.Material = Enum.Material.Grass
Part18.BrickColor = BrickColor.new("Earth green")
Part18.Transparency = 1
Part18.Rotation = Vector3.new(-180, -27.4399986, 180)
Part18.Anchored = true
Part18.CanCollide = false
Part18.FormFactor = Enum.FormFactor.Custom
Part18.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part18.CFrame = CFrame.new(-100.173622, 158.567673, 161.552399, -0.887473762, -3.27516929e-08, -0.46085766, -5.20395282e-08, 1, 2.91457543e-08, 0.46085766, 4.98489712e-08, -0.887473762)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part18.Position = Vector3.new(-100.173622, 158.567673, 161.552399)
Part18.Orientation = Vector3.new(0, -152.559998, 0)
Part18.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part19.Parent = Model0
Part19.Material = Enum.Material.Slate
Part19.BrickColor = BrickColor.new("Reddish brown")
Part19.Rotation = Vector3.new(0, -15.0899992, 0)
Part19.Anchored = true
Part19.FormFactor = Enum.FormFactor.Custom
Part19.Size = Vector3.new(179.91983, 0.489999056, 202.310028)
Part19.CFrame = CFrame.new(-151.746826, 111.983566, -146.283264, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part19.Position = Vector3.new(-151.746826, 111.983566, -146.283264)
Part19.Orientation = Vector3.new(0, -15.0899992, 0)
Part19.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part20.Parent = Model0
Part20.Material = Enum.Material.Slate
Part20.BrickColor = BrickColor.new("Dark stone grey")
Part20.Rotation = Vector3.new(2.57999992, -16.9099998, -110.239998)
Part20.Anchored = true
Part20.FormFactor = Enum.FormFactor.Custom
Part20.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part20.CFrame = CFrame.new(-193.035187, 336.320587, 82.9922791, -0.331060231, 0.897638559, -0.29093343, -0.932750583, -0.357947022, -0.0430005714, -0.1427387, 0.257132322, 0.955775142)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part20.Position = Vector3.new(-193.035187, 336.320587, 82.9922791)
Part20.Orientation = Vector3.new(2.46000004, -16.9300003, -110.989998)
Part20.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part21.Parent = Model0
Part21.Material = Enum.Material.Slate
Part21.BrickColor = BrickColor.new("Reddish brown")
Part21.Rotation = Vector3.new(-180, 62.5599976, -180)
Part21.Anchored = true
Part21.FormFactor = Enum.FormFactor.Custom
Part21.Size = Vector3.new(83.9798965, 38.6999931, 85.3300781)
Part21.CFrame = CFrame.new(-106.001198, 129.258896, 169.945129, -0.46085763, 3.35980029e-11, 0.88747412, 7.51186835e-10, 1, 3.52268187e-10, -0.88747412, 8.29131652e-10, -0.46085763)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part21.Position = Vector3.new(-106.001198, 129.258896, 169.945129)
Part21.Orientation = Vector3.new(0, 117.439995, 0)
Part21.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part22.Parent = Model0
Part22.Material = Enum.Material.Slate
Part22.BrickColor = BrickColor.new("Reddish brown")
Part22.Rotation = Vector3.new(140.959991, 56.4300003, -145.949997)
Part22.Anchored = true
Part22.FormFactor = Enum.FormFactor.Custom
Part22.Size = Vector3.new(25.1999149, 10.0499945, 70.0200729)
Part22.CFrame = CFrame.new(-37.6364517, 131.818039, 142.098572, -0.458174378, 0.309611082, 0.833196878, -1.0034972e-08, 0.937374532, -0.348322809, -0.88886255, -0.159592643, -0.429481119)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part22.Position = Vector3.new(-37.6364517, 131.818039, 142.098572)
Part22.Orientation = Vector3.new(20.3799992, 117.269997, 0)
Part22.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part23.Parent = Model0
Part23.Material = Enum.Material.Grass
Part23.BrickColor = BrickColor.new("Earth green")
Part23.Rotation = Vector3.new(0, -74.2299957, 0)
Part23.Anchored = true
Part23.FormFactor = Enum.FormFactor.Custom
Part23.Size = Vector3.new(11.3699217, 0.690000057, 13.5200377)
Part23.CFrame = CFrame.new(-100.894417, 112.1539, 91.3067322, 0.271753579, 1.13224552e-07, -0.962366998, 4.01635589e-07, 1, 2.31064959e-07, 0.962366998, -4.4931258e-07, 0.271753579)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part23.Position = Vector3.new(-100.894417, 112.1539, 91.3067322)
Part23.Orientation = Vector3.new(0, -74.2299957, 0)
Part23.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part24.Parent = Model0
Part24.Material = Enum.Material.Slate
Part24.BrickColor = BrickColor.new("Reddish brown")
Part24.Rotation = Vector3.new(180, 62.5599976, -180)
Part24.Anchored = true
Part24.FormFactor = Enum.FormFactor.Custom
Part24.Size = Vector3.new(9.03991604, 26.5999928, 9.73006725)
Part24.CFrame = CFrame.new(-52.4113541, 124.548943, 149.103119, -0.460830092, 9.64244435e-08, 0.887488246, 4.55453417e-08, 0.999999881, -2.60499178e-10, -0.887488544, 4.21074233e-08, -0.460830182)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part24.Position = Vector3.new(-52.4113541, 124.548943, 149.103119)
Part24.Orientation = Vector3.new(0, 117.439995, 0)
Part24.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part25.Parent = Model0
Part25.Material = Enum.Material.Slate
Part25.BrickColor = BrickColor.new("Reddish brown")
Part25.Anchored = true
Part25.FormFactor = Enum.FormFactor.Custom
Part25.Size = Vector3.new(335.249878, 8.95000076, 202.310028)
Part25.CFrame = CFrame.new(-25.3148575, 107.914001, 179.154953, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part25.Position = Vector3.new(-25.3148575, 107.914001, 179.154953)
Part25.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part26.Parent = Model0
Part26.Material = Enum.Material.Slate
Part26.BrickColor = BrickColor.new("Dark stone grey")
Part26.Rotation = Vector3.new(2.57999992, -16.9099998, -140.569992)
Part26.Anchored = true
Part26.FormFactor = Enum.FormFactor.Custom
Part26.Size = Vector3.new(35.8299904, 11.8898811, 13.809989)
Part26.CFrame = CFrame.new(-177.408173, 358.195831, 88.7712555, -0.738957584, 0.607699215, -0.290930659, -0.624434114, -0.779891789, -0.0429968908, -0.253025174, 0.149893478, 0.955776334)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part26.Position = Vector3.new(-177.408173, 358.195831, 88.7712555)
Part26.Orientation = Vector3.new(2.46000004, -16.9300003, -141.319992)
Part26.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part27.Parent = Model0
Part27.Material = Enum.Material.Grass
Part27.BrickColor = BrickColor.new("Earth green")
Part27.Rotation = Vector3.new(39.1899986, 56.5499992, -34.2199974)
Part27.Anchored = true
Part27.FormFactor = Enum.FormFactor.Custom
Part27.Size = Vector3.new(24.1499176, 1.03999531, 136.370041)
Part27.CFrame = CFrame.new(-185.539017, 166.483444, 142.706345, 0.455824167, 0.310031682, 0.834329069, -3.95968414e-08, 0.937374532, -0.348322779, -0.890070081, 0.15877381, 0.427277714)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part27.Position = Vector3.new(-185.539017, 166.483444, 142.706345)
Part27.Orientation = Vector3.new(20.3799992, 62.8799973, 0)
Part27.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part28.Parent = Model0
Part28.Material = Enum.Material.Slate
Part28.BrickColor = BrickColor.new("Dark stone grey")
Part28.Rotation = Vector3.new(0, -15.0899992, -100.25)
Part28.Anchored = true
Part28.FormFactor = Enum.FormFactor.Custom
Part28.Size = Vector3.new(35.0400009, 51.7799797, 44.5299759)
Part28.CFrame = CFrame.new(-237.626434, 296.763977, 76.6294403, -0.171853468, 0.950086772, -0.260383159, -0.984031141, -0.177993178, 1.33071285e-06, -0.0463452078, 0.256225616, 0.96550411)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part28.Position = Vector3.new(-237.626434, 296.763977, 76.6294403)
Part28.Orientation = Vector3.new(0, -15.0899992, -100.25)
Part28.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part29.Parent = Model0
Part29.Material = Enum.Material.Slate
Part29.BrickColor = BrickColor.new("Dark stone grey")
Part29.Rotation = Vector3.new(-0.479999989, -17.1000004, -120.649994)
Part29.Anchored = true
Part29.FormFactor = Enum.FormFactor.Custom
Part29.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part29.CFrame = CFrame.new(-195.363647, 335.641449, 96.7523193, -0.487328559, 0.822241426, -0.293986827, -0.861472785, -0.507740319, 0.00794318318, -0.1427387, 0.257132322, 0.955775142)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part29.Position = Vector3.new(-195.363647, 335.641449, 96.7523193)
Part29.Orientation = Vector3.new(-0.459999979, -17.1000004, -120.509995)
Part29.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part30.Name = "SpawnPoint2"
Part30.Parent = Model0
Part30.Material = Enum.Material.Grass
Part30.BrickColor = BrickColor.new("Earth green")
Part30.Transparency = 1
Part30.Rotation = Vector3.new(-180, 0, 180)
Part30.Anchored = true
Part30.CanCollide = false
Part30.FormFactor = Enum.FormFactor.Custom
Part30.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part30.CFrame = CFrame.new(-78.978096, 152.958221, -114.420105, -0.999999762, -3.14450652e-08, -1.1920929e-07, -3.14450652e-08, 1, 2.33243256e-08, 1.1920929e-07, 2.33243895e-08, -0.999999762)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part30.Position = Vector3.new(-78.978096, 152.958221, -114.420105)
Part30.Orientation = Vector3.new(0, -180, 0)
Part30.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part31.Name = "SpawnPoint3"
Part31.Parent = Model0
Part31.Material = Enum.Material.Grass
Part31.BrickColor = BrickColor.new("Earth green")
Part31.Transparency = 1
Part31.Rotation = Vector3.new(180, 42.8199997, 180)
Part31.Anchored = true
Part31.CanCollide = false
Part31.FormFactor = Enum.FormFactor.Custom
Part31.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part31.CFrame = CFrame.new(-38.0106277, 148.346893, -66.7703552, -0.733469129, -4.09641343e-09, 0.679722428, -3.45585818e-08, 1, -3.12646122e-08, -0.679722428, -4.64218068e-08, -0.733469129)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part31.Position = Vector3.new(-38.0106277, 148.346893, -66.7703552)
Part31.Orientation = Vector3.new(0, 137.179993, 0)
Part31.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part32.Parent = Model0
Part32.Material = Enum.Material.Slate
Part32.BrickColor = BrickColor.new("Dark stone grey")
Part32.Rotation = Vector3.new(7.87999964, -11.3000002, 2.07999992)
Part32.Anchored = true
Part32.FormFactor = Enum.FormFactor.Custom
Part32.Size = Vector3.new(75.939888, 18.8800011, 9.46002865)
Part32.CFrame = CFrame.new(-93.1413651, 96.1655426, 75.8152008, 0.979960978, -0.0355929993, -0.19598411, 0.00911765918, 0.990889788, -0.134367004, 0.198981196, 0.129887491, 0.971357644)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part32.Position = Vector3.new(-93.1413651, 96.1655426, 75.8152008)
Part32.Orientation = Vector3.new(7.71999979, -11.4099998, 0.529999971)
Part32.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part33.Parent = Model0
Part33.Material = Enum.Material.Slate
Part33.BrickColor = BrickColor.new("Medium blue")
Part33.Rotation = Vector3.new(-31, -17.0900002, -10.8800001)
Part33.Anchored = true
Part33.FormFactor = Enum.FormFactor.Custom
Part33.Size = Vector3.new(60.1798515, 19.2800007, 41.3800545)
Part33.CFrame = CFrame.new(-139.730377, 67.7574921, 168.269165, 0.938661635, 0.180439532, -0.293862343, -0.0131611358, 0.87029928, 0.492348522, 0.344586939, -0.458281308, 0.819291532)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.Color = Color3.new(0.431373, 0.6, 0.792157)
Part33.Position = Vector3.new(-139.730377, 67.7574921, 168.269165)
Part33.Orientation = Vector3.new(-29.5, -19.7299995, -0.870000005)
Part33.Color = Color3.new(0.431373, 0.6, 0.792157)
Part34.Parent = Model0
Part34.Material = Enum.Material.Slate
Part34.BrickColor = BrickColor.new("Reddish brown")
Part34.Rotation = Vector3.new(89.0099945, 69.6100006, -88.9499969)
Part34.Anchored = true
Part34.FormFactor = Enum.FormFactor.Custom
Part34.Size = Vector3.new(25.1999149, 10.0499945, 70.0200729)
Part34.CFrame = CFrame.new(70.1867752, 118.187614, -156.315765, 0.00641427841, 0.348315865, 0.937355161, 4.49612223e-08, 0.937374532, -0.348322898, -0.999979198, 0.00223421957, 0.00601234287)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part34.Position = Vector3.new(70.1867752, 118.187614, -156.315765)
Part34.Orientation = Vector3.new(20.3799992, 89.6299973, 0)
Part34.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part35.Parent = Model0
Part35.Material = Enum.Material.Slate
Part35.BrickColor = BrickColor.new("Dark stone grey")
Part35.Rotation = Vector3.new(0, -15.0899992, -114.43)
Part35.Anchored = true
Part35.FormFactor = Enum.FormFactor.Custom
Part35.Size = Vector3.new(32.260006, 15.3998804, 30.3099899)
Part35.CFrame = CFrame.new(-208.105713, 289.603668, 60.1758575, -0.399322331, 0.879055202, -0.260388166, -0.910463095, -0.413589627, 4.82347275e-07, -0.107693531, 0.237074152, 0.965502918)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part35.Position = Vector3.new(-208.105713, 289.603668, 60.1758575)
Part35.Orientation = Vector3.new(0, -15.0899992, -114.43)
Part35.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part36.Parent = Model0
Part36.Material = Enum.Material.Grass
Part36.BrickColor = BrickColor.new("Dark green")
Part36.Rotation = Vector3.new(0, -15.0899992, 0)
Part36.Anchored = true
Part36.FormFactor = Enum.FormFactor.Custom
Part36.Size = Vector3.new(115.329834, 0.200000003, 115.499985)
Part36.CFrame = CFrame.new(-11.7975836, 112.387115, -126.649231, 0.965504289, 1.56975986e-07, -0.260386288, -1.68658076e-07, 1, -2.25197567e-08, 0.260386288, 6.56610126e-08, 0.965504289)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.Color = Color3.new(0.156863, 0.498039, 0.278431)
Part36.Position = Vector3.new(-11.7975836, 112.387115, -126.649231)
Part36.Orientation = Vector3.new(0, -15.0899992, 0)
Part36.Color = Color3.new(0.156863, 0.498039, 0.278431)
CylinderMesh37.Parent = Part36
Part38.Parent = Model0
Part38.Material = Enum.Material.Slate
Part38.BrickColor = BrickColor.new("Dark stone grey")
Part38.Rotation = Vector3.new(-37.6199989, -32.3499985, -141.279999)
Part38.Anchored = true
Part38.FormFactor = Enum.FormFactor.Custom
Part38.Size = Vector3.new(32.260006, 15.3998804, 13.809989)
Part38.CFrame = CFrame.new(-202.593292, 296.023712, 45.6251526, -0.659089327, 0.528479517, -0.535078347, -0.750316381, -0.413592458, 0.515719235, 0.0512423813, 0.741383374, 0.669121385)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part38.Position = Vector3.new(-202.593292, 296.023712, 45.6251526)
Part38.Orientation = Vector3.new(-31.0499992, -38.6499977, -118.860001)
Part38.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part39.Parent = Model0
Part39.Material = Enum.Material.Wood
Part39.BrickColor = BrickColor.new("Reddish brown")
Part39.Rotation = Vector3.new(-180, 3.79999995, 180)
Part39.Anchored = true
Part39.FormFactor = Enum.FormFactor.Custom
Part39.Size = Vector3.new(1.49991953, 2.47999477, 41.4300804)
Part39.CFrame = CFrame.new(53.224205, 115.758591, -27.0022583, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part39.Position = Vector3.new(53.224205, 115.758591, -27.0022583)
Part39.Orientation = Vector3.new(0, 176.199997, 0)
Part39.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part40.Parent = Model0
Part40.Material = Enum.Material.Slate
Part40.BrickColor = BrickColor.new("Reddish brown")
Part40.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part40.Anchored = true
Part40.FormFactor = Enum.FormFactor.Custom
Part40.Size = Vector3.new(25.1999149, 10.0499945, 81.9400711)
Part40.CFrame = CFrame.new(-208.152252, 185.872147, -134.743469, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part40.Position = Vector3.new(-208.152252, 185.872147, -134.743469)
Part40.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part40.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part41.Parent = Model0
Part41.Material = Enum.Material.Grass
Part41.BrickColor = BrickColor.new("Dark green")
Part41.Rotation = Vector3.new(0, -15.0899992, 0)
Part41.Anchored = true
Part41.FormFactor = Enum.FormFactor.Custom
Part41.Size = Vector3.new(141.449844, 0.200000003, 147.980011)
Part41.CFrame = CFrame.new(55.4943008, 112.337173, -114.370026, 0.965504289, 1.56975986e-07, -0.260386288, -1.68658076e-07, 1, -2.25197567e-08, 0.260386288, 6.56610126e-08, 0.965504289)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.Color = Color3.new(0.156863, 0.498039, 0.278431)
Part41.Position = Vector3.new(55.4943008, 112.337173, -114.370026)
Part41.Orientation = Vector3.new(0, -15.0899992, 0)
Part41.Color = Color3.new(0.156863, 0.498039, 0.278431)
CylinderMesh42.Parent = Part41
Part43.Parent = Model0
Part43.Material = Enum.Material.Wood
Part43.BrickColor = BrickColor.new("Reddish brown")
Part43.Rotation = Vector3.new(-180, 3.79999995, 180)
Part43.Anchored = true
Part43.FormFactor = Enum.FormFactor.Custom
Part43.Size = Vector3.new(1.49991953, 2.47999477, 41.4300804)
Part43.CFrame = CFrame.new(53.224205, 62.4496613, 0.417755127, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part43.Position = Vector3.new(53.224205, 62.4496613, 0.417755127)
Part43.Orientation = Vector3.new(0, 176.199997, 0)
Part43.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part44.Parent = Model0
Part44.Material = Enum.Material.Slate
Part44.BrickColor = BrickColor.new("Dark stone grey")
Part44.Rotation = Vector3.new(0, -15.0899992, -114.43)
Part44.Anchored = true
Part44.FormFactor = Enum.FormFactor.Custom
Part44.Size = Vector3.new(58.0500069, 12.58988, 60.2399826)
Part44.CFrame = CFrame.new(-209.495575, 299.131775, 84.0140381, -0.399322331, 0.879055202, -0.260388166, -0.910463095, -0.413589627, 4.82347275e-07, -0.107693531, 0.237074152, 0.965502918)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part44.Position = Vector3.new(-209.495575, 299.131775, 84.0140381)
Part44.Orientation = Vector3.new(0, -15.0899992, -114.43)
Part44.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part45.Parent = Model0
Part45.Material = Enum.Material.Slate
Part45.BrickColor = BrickColor.new("Dark stone grey")
Part45.Rotation = Vector3.new(0, -17.6800003, 0)
Part45.Anchored = true
Part45.FormFactor = Enum.FormFactor.Custom
Part45.Size = Vector3.new(83.9798965, 47.6499977, 125.660072)
Part45.CFrame = CFrame.new(-232.499054, 62.9553604, 97.7351532, 0.952783227, 5.69102156e-07, -0.303652138, -5.02271405e-07, 1, 2.98192674e-07, 0.303652138, -1.31594618e-07, 0.952783227)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part45.Position = Vector3.new(-232.499054, 62.9553604, 97.7351532)
Part45.Orientation = Vector3.new(0, -17.6800003, 0)
Part45.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part46.Parent = Model0
Part46.Material = Enum.Material.Slate
Part46.BrickColor = BrickColor.new("Reddish brown")
Part46.Rotation = Vector3.new(0.239999995, 39.8699989, -0.899999976)
Part46.Anchored = true
Part46.FormFactor = Enum.FormFactor.Custom
Part46.Size = Vector3.new(25.1999149, 10.0499945, 90.8300552)
Part46.CFrame = CFrame.new(-183.292053, 185.452026, -76.1049194, 0.767401993, 0.0120170405, 0.641054749, -0.0129715856, 0.999910414, -0.00321571878, -0.641035676, -0.00584777631, 0.767489076)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part46.Position = Vector3.new(-183.292053, 185.452026, -76.1049194)
Part46.Orientation = Vector3.new(0.179999992, 39.8699989, -0.74000001)
Part46.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part47.Parent = Model0
Part47.Material = Enum.Material.Slate
Part47.BrickColor = BrickColor.new("Reddish brown")
Part47.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part47.Anchored = true
Part47.FormFactor = Enum.FormFactor.Custom
Part47.Size = Vector3.new(20.5099144, 75.9799957, 81.9400711)
Part47.CFrame = CFrame.new(-247.871246, 144.210861, 81.621048, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part47.Position = Vector3.new(-247.871246, 144.210861, 81.621048)
Part47.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part47.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part48.Parent = Model0
Part48.Material = Enum.Material.Slate
Part48.BrickColor = BrickColor.new("Reddish brown")
Part48.Rotation = Vector3.new(69.0499954, 73.6899948, -65.0400009)
Part48.Anchored = true
Part48.FormFactor = Enum.FormFactor.Custom
Part48.Size = Vector3.new(25.1999149, 10.0499945, 218.269989)
Part48.CFrame = CFrame.new(-87.252388, 157.770996, -147.822784, 0.118536167, 0.25461784, 0.959749997, 0.0541646183, 0.963466525, -0.262293875, -0.991471708, 0.0830756277, 0.100413837)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part48.Position = Vector3.new(-87.252388, 157.770996, -147.822784)
Part48.Orientation = Vector3.new(15.21, 84.0299988, 3.22000003)
Part48.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part49.Parent = Model0
Part49.Material = Enum.Material.Slate
Part49.BrickColor = BrickColor.new("Dark stone grey")
Part49.Rotation = Vector3.new(-0.479999989, -17.1000004, -120.649994)
Part49.Anchored = true
Part49.FormFactor = Enum.FormFactor.Custom
Part49.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part49.CFrame = CFrame.new(-200.823669, 331.521332, 109.772308, -0.487328559, 0.822241426, -0.293986827, -0.861472785, -0.507740319, 0.00794318318, -0.1427387, 0.257132322, 0.955775142)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part49.Position = Vector3.new(-200.823669, 331.521332, 109.772308)
Part49.Orientation = Vector3.new(-0.459999979, -17.1000004, -120.509995)
Part49.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part50.Parent = Model0
Part50.Material = Enum.Material.Slate
Part50.BrickColor = BrickColor.new("Dark stone grey")
Part50.Rotation = Vector3.new(-37.6199989, -32.3499985, -171.599991)
Part50.Anchored = true
Part50.FormFactor = Enum.FormFactor.Custom
Part50.Size = Vector3.new(22.4600067, 15.3998804, 13.809989)
Part50.CFrame = CFrame.new(-186.227722, 310.463135, 47.6374817, -0.835737944, 0.123430952, -0.535074949, -0.438861549, -0.735819817, 0.515722156, -0.330063075, 0.665832222, 0.669121802)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part50.Position = Vector3.new(-186.227722, 310.463135, 47.6374817)
Part50.Orientation = Vector3.new(-31.0499992, -38.6499977, -149.190002)
Part50.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part51.Parent = Model0
Part51.Material = Enum.Material.Slate
Part51.BrickColor = BrickColor.new("Reddish brown")
Part51.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part51.Anchored = true
Part51.FormFactor = Enum.FormFactor.Custom
Part51.Size = Vector3.new(20.5099144, 75.9799957, 81.9400711)
Part51.CFrame = CFrame.new(-210.791336, 145.229965, -135.599091, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part51.Position = Vector3.new(-210.791336, 145.229965, -135.599091)
Part51.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part51.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part52.Parent = Model0
Part52.Material = Enum.Material.Slate
Part52.BrickColor = BrickColor.new("Dark stone grey")
Part52.Rotation = Vector3.new(0, -15.0899992, 0)
Part52.Anchored = true
Part52.FormFactor = Enum.FormFactor.Custom
Part52.Size = Vector3.new(367.569855, 6.82000065, 202.310028)
Part52.CFrame = CFrame.new(-145.94754, 106.138969, 168.917099, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part52.Position = Vector3.new(-145.94754, 106.138969, 168.917099)
Part52.Orientation = Vector3.new(0, -15.0899992, 0)
Part52.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part53.Parent = Model0
Part53.Material = Enum.Material.Slate
Part53.BrickColor = BrickColor.new("Bright blue")
Part53.Rotation = Vector3.new(0, -3.79999995, 0)
Part53.Anchored = true
Part53.CanCollide = false
Part53.FormFactor = Enum.FormFactor.Custom
Part53.Size = Vector3.new(249.569962, 1.13, 130.580017)
Part53.CFrame = CFrame.new(28.3183975, 107.983772, 20.329422, 0.997796416, -1.29588955e-07, -0.0663459897, 1.29299806e-07, 1, -8.64730243e-09, 0.0663459897, 5.14704945e-11, 0.997796416)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part53.Position = Vector3.new(28.3183975, 107.983772, 20.329422)
Part53.Orientation = Vector3.new(0, -3.79999995, 0)
Part53.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part54.Parent = Model0
Part54.Material = Enum.Material.Sand
Part54.BrickColor = BrickColor.new("Reddish brown")
Part54.Rotation = Vector3.new(0, -15.0899992, 0)
Part54.Anchored = true
Part54.FormFactor = Enum.FormFactor.Symmetric
Part54.Shape = Enum.PartType.Ball
Part54.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part54.CFrame = CFrame.new(7.15392303, 48.0801125, 12.9575195, 0.965504527, -2.82950974e-09, -0.260386258, -2.82950974e-09, 1, -2.13583231e-08, 0.260386258, 2.13583231e-08, 0.965504527)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part54.Position = Vector3.new(7.15392303, 48.0801125, 12.9575195)
Part54.Orientation = Vector3.new(0, -15.0899992, 0)
Part54.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part55.Parent = Model0
Part55.Material = Enum.Material.Slate
Part55.BrickColor = BrickColor.new("Bright blue")
Part55.Rotation = Vector3.new(0, -15.25, 0)
Part55.Anchored = true
Part55.CanCollide = false
Part55.FormFactor = Enum.FormFactor.Custom
Part55.Size = Vector3.new(163.049988, 0.789999604, 125.29007)
Part55.CFrame = CFrame.new(-113.524208, 86.3044815, 133.466904, 0.964805424, -1.2299941e-07, -0.262963504, 1.18755025e-07, 1, -3.20332489e-08, 0.262963504, -3.20980492e-10, 0.964805424)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part55.Position = Vector3.new(-113.524208, 86.3044815, 133.466904)
Part55.Orientation = Vector3.new(0, -15.25, 0)
Part55.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part56.Parent = Model0
Part56.Material = Enum.Material.Sand
Part56.BrickColor = BrickColor.new("Reddish brown")
Part56.Rotation = Vector3.new(2.81999993, -15.2999992, -0.939999998)
Part56.Anchored = true
Part56.FormFactor = Enum.FormFactor.Custom
Part56.Size = Vector3.new(209.589844, 6.35000086, 102.070076)
Part56.CFrame = CFrame.new(-208.975616, 59.5124054, -13.9459219, 0.96444428, 0.0157837812, -0.26381439, -0.0293233059, 0.998442471, -0.0474632084, 0.262654483, 0.0535115525, 0.963404775)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part56.Position = Vector3.new(-208.975616, 59.5124054, -13.9459219)
Part56.Orientation = Vector3.new(2.72000003, -15.3099995, -1.67999995)
Part56.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part57.Parent = Model0
Part57.Material = Enum.Material.Sand
Part57.BrickColor = BrickColor.new("Reddish brown")
Part57.Rotation = Vector3.new(-3.54999995, -15.2999992, -0.939999998)
Part57.Anchored = true
Part57.FormFactor = Enum.FormFactor.Custom
Part57.Size = Vector3.new(209.589844, 6.35000086, 167.920059)
Part57.CFrame = CFrame.new(-196.955017, 61.4681587, 61.5440063, 0.964444339, 0.0157837793, -0.26381436, 7.07069816e-08, 0.99821502, 0.0597225614, 0.26428628, -0.0575990938, 0.962722659)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part57.Position = Vector3.new(-196.955017, 61.4681587, 61.5440063)
Part57.Orientation = Vector3.new(-3.41999984, -15.3199997, 0)
Part57.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part58.Parent = Model0
Part58.Material = Enum.Material.Wood
Part58.BrickColor = BrickColor.new("Reddish brown")
Part58.Rotation = Vector3.new(-180, 3.79999995, 180)
Part58.Anchored = true
Part58.FormFactor = Enum.FormFactor.Custom
Part58.Size = Vector3.new(25.1999149, 2.54999399, 41.4300804)
Part58.CFrame = CFrame.new(65.0481949, 113.603645, -26.2160339, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part58.Position = Vector3.new(65.0481949, 113.603645, -26.2160339)
Part58.Orientation = Vector3.new(0, 176.199997, 0)
Part58.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part59.Parent = Model0
Part59.Material = Enum.Material.Slate
Part59.BrickColor = BrickColor.new("Dark stone grey")
Part59.Rotation = Vector3.new(12.9699993, -14.9499998, 3.39999986)
Part59.Anchored = true
Part59.FormFactor = Enum.FormFactor.Custom
Part59.Size = Vector3.new(183.44986, 15.8400011, 22.1400299)
Part59.CFrame = CFrame.new(-207.934875, 96.5002594, 52.1574821, 0.964444339, -0.0572940074, -0.258001149, 7.07069816e-08, 0.976218998, -0.216787487, 0.26428628, 0.209079444, 0.941508532)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.TopSurface = Enum.SurfaceType.Smooth
Part59.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part59.Position = Vector3.new(-207.934875, 96.5002594, 52.1574821)
Part59.Orientation = Vector3.new(12.5199995, -15.3199997, 0)
Part59.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part60.Parent = Model0
Part60.Material = Enum.Material.Slate
Part60.BrickColor = BrickColor.new("Medium blue")
Part60.Rotation = Vector3.new(0, -17.6800003, 0)
Part60.Anchored = true
Part60.FormFactor = Enum.FormFactor.Custom
Part60.Size = Vector3.new(83.9798965, 48.2199936, 133.740067)
Part60.CFrame = CFrame.new(-231.272308, 62.080246, 103.085884, 0.952783227, 5.69102156e-07, -0.303652138, -5.02271405e-07, 1, 2.98192674e-07, 0.303652138, -1.31594618e-07, 0.952783227)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Color = Color3.new(0.431373, 0.6, 0.792157)
Part60.Position = Vector3.new(-231.272308, 62.080246, 103.085884)
Part60.Orientation = Vector3.new(0, -17.6800003, 0)
Part60.Color = Color3.new(0.431373, 0.6, 0.792157)
Part61.Parent = Model0
Part61.Material = Enum.Material.Slate
Part61.BrickColor = BrickColor.new("Dark stone grey")
Part61.Rotation = Vector3.new(-17.1000004, 0.459999979, 119.159996)
Part61.Anchored = true
Part61.FormFactor = Enum.FormFactor.Custom
Part61.Size = Vector3.new(37.769989, 11.8898811, 13.809989)
Part61.CFrame = CFrame.new(-204.950043, 238.760696, -103.913177, -0.48728174, -0.873207688, 0.00794632826, 0.835782886, -0.463722289, 0.29398337, -0.253025174, 0.149893478, 0.955776334)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part61.Position = Vector3.new(-204.950043, 238.760696, -103.913177)
Part61.Orientation = Vector3.new(-17.1000004, 0.479999989, 119.019997)
Part61.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part62.Parent = Model0
Part62.Material = Enum.Material.Slate
Part62.BrickColor = BrickColor.new("Reddish brown")
Part62.Rotation = Vector3.new(0, -15.0899992, 0)
Part62.Anchored = true
Part62.FormFactor = Enum.FormFactor.Custom
Part62.Size = Vector3.new(54.4599991, 192.519867, 205.630005)
Part62.CFrame = CFrame.new(-296.66983, 155.577316, 18.5496521, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part62.Position = Vector3.new(-296.66983, 155.577316, 18.5496521)
Part62.Orientation = Vector3.new(0, -15.0899992, 0)
Part62.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part63.Parent = Model0
Part63.Material = Enum.Material.Slate
Part63.BrickColor = BrickColor.new("Bright blue")
Part63.Rotation = Vector3.new(0, -3.79999995, 0)
Part63.Anchored = true
Part63.CanCollide = false
Part63.FormFactor = Enum.FormFactor.Custom
Part63.Size = Vector3.new(249.569962, 1.13, 130.580017)
Part63.CFrame = CFrame.new(28.3183975, 108.324539, 20.329422, 0.997796416, -1.29588955e-07, -0.0663459897, 1.29299806e-07, 1, -8.64730243e-09, 0.0663459897, 5.14704945e-11, 0.997796416)
Part63.BottomSurface = Enum.SurfaceType.Smooth
Part63.TopSurface = Enum.SurfaceType.Smooth
Part63.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part63.Position = Vector3.new(28.3183975, 108.324539, 20.329422)
Part63.Orientation = Vector3.new(0, -3.79999995, 0)
Part63.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part64.Parent = Model0
Part64.Material = Enum.Material.Slate
Part64.BrickColor = BrickColor.new("Medium blue")
Part64.Rotation = Vector3.new(-2.75, 0, 0)
Part64.Anchored = true
Part64.FormFactor = Enum.FormFactor.Custom
Part64.Size = Vector3.new(246.18985, 51.25, 6.60003185)
Part64.CFrame = CFrame.new(18.875206, 82.5042953, -36.6502991, 1, 0, 0, 0, 0.998851836, 0.0479092672, 0, -0.0479092672, 0.998851836)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.Color = Color3.new(0.431373, 0.6, 0.792157)
Part64.Position = Vector3.new(18.875206, 82.5042953, -36.6502991)
Part64.Orientation = Vector3.new(-2.75, 0, 0)
Part64.Color = Color3.new(0.431373, 0.6, 0.792157)
Part65.Parent = Model0
Part65.Material = Enum.Material.Slate
Part65.BrickColor = BrickColor.new("Reddish brown")
Part65.Rotation = Vector3.new(0.379999995, -60.9599991, -0.409999996)
Part65.Anchored = true
Part65.FormFactor = Enum.FormFactor.Custom
Part65.Size = Vector3.new(25.1999149, 10.0499945, 81.9400711)
Part65.CFrame = CFrame.new(-206.222382, 185.085846, 28.8166656, 0.485438883, 0.00348585355, -0.874263644, -0.0129715856, 0.999910414, -0.00321571878, 0.874174774, 0.0129017262, 0.485441595)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part65.Position = Vector3.new(-206.222382, 185.085846, 28.8166656)
Part65.Orientation = Vector3.new(0.179999992, -60.9599991, -0.74000001)
Part65.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part66.Parent = Model0
Part66.Material = Enum.Material.Slate
Part66.BrickColor = BrickColor.new("Dark stone grey")
Part66.Rotation = Vector3.new(2.57999992, -16.9099998, -140.569992)
Part66.Anchored = true
Part66.FormFactor = Enum.FormFactor.Custom
Part66.Size = Vector3.new(27.6799946, 11.8898811, 13.809989)
Part66.CFrame = CFrame.new(-174.639435, 358.131195, 71.6201935, -0.738957584, 0.607699215, -0.290930659, -0.624434114, -0.779891789, -0.0429968908, -0.253025174, 0.149893478, 0.955776334)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part66.Position = Vector3.new(-174.639435, 358.131195, 71.6201935)
Part66.Orientation = Vector3.new(2.46000004, -16.9300003, -141.319992)
Part66.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part67.Parent = Model0
Part67.Material = Enum.Material.Slate
Part67.BrickColor = BrickColor.new("Bright blue")
Part67.Rotation = Vector3.new(0, -15.0899992, 0)
Part67.Anchored = true
Part67.FormFactor = Enum.FormFactor.Custom
Part67.Size = Vector3.new(58.0500069, 144.709885, 41.8699875)
Part67.CFrame = CFrame.new(-292.801544, 180.200867, 9.58996582, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part67.Position = Vector3.new(-292.801544, 180.200867, 9.58996582)
Part67.Orientation = Vector3.new(0, -15.0899992, 0)
Part67.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part68.Name = "SpawnPoint1"
Part68.Parent = Model0
Part68.Material = Enum.Material.Grass
Part68.BrickColor = BrickColor.new("Earth green")
Part68.Transparency = 1
Part68.Rotation = Vector3.new(-180, 15.0899992, 180)
Part68.Anchored = true
Part68.CanCollide = false
Part68.FormFactor = Enum.FormFactor.Custom
Part68.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part68.CFrame = CFrame.new(73.4430008, 122.216866, -78.8666077, -0.965504289, -3.03603507e-08, 0.260386467, -2.53717225e-08, 1, 2.25197407e-08, -0.260386467, 1.51365178e-08, -0.965504289)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part68.Position = Vector3.new(73.4430008, 122.216866, -78.8666077)
Part68.Orientation = Vector3.new(0, 164.910004, 0)
Part68.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part69.Parent = Model0
Part69.Material = Enum.Material.Slate
Part69.BrickColor = BrickColor.new("Bright violet")
Part69.Rotation = Vector3.new(-141.25, -1.09000003, -30.7699986)
Part69.Anchored = true
Part69.FormFactor = Enum.FormFactor.Custom
Part69.Size = Vector3.new(0.200000003, 8.51989079, 14.7499905)
Part69.CFrame = CFrame.new(-226.819427, 340.580017, -6.88864088, 0.859106839, 0.511441886, -0.0190106891, 0.409147084, -0.664012313, 0.625848711, 0.30746153, -0.545449436, -0.779712796)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part69.Position = Vector3.new(-226.819427, 340.580017, -6.88864088)
Part69.Orientation = Vector3.new(-38.7399979, -178.599991, 148.360001)
Part69.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part70.Parent = Model0
Part70.Material = Enum.Material.Slate
Part70.BrickColor = BrickColor.new("Dark stone grey")
Part70.Rotation = Vector3.new(-2.75, 1.89999998, 0.049999997)
Part70.Anchored = true
Part70.FormFactor = Enum.FormFactor.Custom
Part70.Size = Vector3.new(259.939789, 4.03998661, 7.7300334)
Part70.CFrame = CFrame.new(28.774971, 109.561623, -31.5846252, 0.999451756, -0.000883484259, 0.0330953598, -0.000703314727, 0.998851836, 0.0479039997, -0.0330996737, -0.0479010083, 0.998303533)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part70.Position = Vector3.new(28.774971, 109.561623, -31.5846252)
Part70.Orientation = Vector3.new(-2.75, 1.89999998, -0.0399999991)
Part70.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part71.Parent = Model0
Part71.Material = Enum.Material.Slate
Part71.BrickColor = BrickColor.new("Dark stone grey")
Part71.Rotation = Vector3.new(-2.29999995, -16.4499989, -0.239999995)
Part71.Anchored = true
Part71.FormFactor = Enum.FormFactor.Custom
Part71.Size = Vector3.new(229.329727, 3.08999991, 4.58002758)
Part71.CFrame = CFrame.new(-209.997345, 109.449898, -58.2673645, 0.959048688, 0.00406809989, -0.283210903, 0.00712669874, 0.999233365, 0.0384873226, 0.283150107, -0.0389297009, 0.958284557)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part71.Position = Vector3.new(-209.997345, 109.449898, -58.2673645)
Part71.Orientation = Vector3.new(-2.21000004, -16.4599991, 0.409999996)
Part71.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part72.Parent = Model0
Part72.Material = Enum.Material.Sand
Part72.BrickColor = BrickColor.new("Reddish brown")
Part72.Anchored = true
Part72.FormFactor = Enum.FormFactor.Symmetric
Part72.Shape = Enum.PartType.Ball
Part72.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part72.CFrame = CFrame.new(-229.529999, 66.790123, -58.4099426, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part72.Position = Vector3.new(-229.529999, 66.790123, -58.4099426)
Part72.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part73.Parent = Model0
Part73.Material = Enum.Material.Sand
Part73.BrickColor = BrickColor.new("Reddish brown")
Part73.Anchored = true
Part73.FormFactor = Enum.FormFactor.Symmetric
Part73.Shape = Enum.PartType.Ball
Part73.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part73.CFrame = CFrame.new(-202.460083, 47.8998718, -51.2599182, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part73.Position = Vector3.new(-202.460083, 47.8998718, -51.2599182)
Part73.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part74.Parent = Model0
Part74.Material = Enum.Material.Sand
Part74.BrickColor = BrickColor.new("Reddish brown")
Part74.Anchored = true
Part74.FormFactor = Enum.FormFactor.Symmetric
Part74.Shape = Enum.PartType.Ball
Part74.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part74.CFrame = CFrame.new(-257.440002, 53.5699005, 15.3400259, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part74.Position = Vector3.new(-257.440002, 53.5699005, 15.3400259)
Part74.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part75.Parent = Model0
Part75.Material = Enum.Material.Sand
Part75.BrickColor = BrickColor.new("Reddish brown")
Part75.Anchored = true
Part75.FormFactor = Enum.FormFactor.Symmetric
Part75.Shape = Enum.PartType.Ball
Part75.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part75.CFrame = CFrame.new(-232.119934, 66.4799118, -33.9599304, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part75.Position = Vector3.new(-232.119934, 66.4799118, -33.9599304)
Part75.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part76.Parent = Model0
Part76.Material = Enum.Material.Sand
Part76.BrickColor = BrickColor.new("Reddish brown")
Part76.Anchored = true
Part76.FormFactor = Enum.FormFactor.Symmetric
Part76.Shape = Enum.PartType.Ball
Part76.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part76.CFrame = CFrame.new(-258.799927, 66.3096085, 23.7800903, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part76.Position = Vector3.new(-258.799927, 66.3096085, 23.7800903)
Part76.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part77.Parent = Model0
Part77.Material = Enum.Material.Sand
Part77.BrickColor = BrickColor.new("Reddish brown")
Part77.Rotation = Vector3.new(0, -15.0899992, 0)
Part77.Anchored = true
Part77.FormFactor = Enum.FormFactor.Symmetric
Part77.Shape = Enum.PartType.Ball
Part77.Size = Vector3.new(82.8199921, 82.8199921, 82.8199921)
Part77.CFrame = CFrame.new(-128.466125, 41.4100113, 12.9575195, 0.965504527, -2.82950974e-09, -0.260386258, -2.82950974e-09, 1, -2.13583231e-08, 0.260386258, 2.13583231e-08, 0.965504527)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part77.Position = Vector3.new(-128.466125, 41.4100113, 12.9575195)
Part77.Orientation = Vector3.new(0, -15.0899992, 0)
Part77.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part78.Parent = Model0
Part78.Material = Enum.Material.Slate
Part78.BrickColor = BrickColor.new("Really black")
Part78.Transparency = 1
Part78.Rotation = Vector3.new(0, 74.909996, 0)
Part78.Anchored = true
Part78.CanCollide = false
Part78.FormFactor = Enum.FormFactor.Custom
Part78.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part78.CFrame = CFrame.new(-227.353241, 113.193642, 9.64935207, 0.260386169, 1.57273632e-07, 0.965504289, 2.13600924e-08, 0.999999881, -1.68653727e-07, -0.965504289, 6.45400959e-08, 0.260386169)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part78.Position = Vector3.new(-227.353241, 113.193642, 9.64935207)
Part78.Orientation = Vector3.new(0, 74.909996, 0)
Part78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke79.Parent = Part78
Smoke79.Size = 10
Smoke79.Opacity = 0.20000000298023
Part80.Parent = Model0
Part80.Material = Enum.Material.Slate
Part80.BrickColor = BrickColor.new("Really black")
Part80.Transparency = 1
Part80.Rotation = Vector3.new(-180, 15.0899992, -180)
Part80.Anchored = true
Part80.CanCollide = false
Part80.FormFactor = Enum.FormFactor.Custom
Part80.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part80.CFrame = CFrame.new(-204.002991, 111.914345, -19.1249695, -0.96550411, 1.5727484e-07, 0.260386109, 1.6865549e-07, 0.999999523, 2.13618634e-08, -0.260386109, 6.4542256e-08, -0.96550411)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part80.Position = Vector3.new(-204.002991, 111.914345, -19.1249695)
Part80.Orientation = Vector3.new(0, 164.910004, 0)
Part80.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke81.Parent = Part80
Smoke81.Size = 10
Smoke81.Opacity = 0.20000000298023
Part82.Parent = Model0
Part82.Material = Enum.Material.Slate
Part82.BrickColor = BrickColor.new("Really black")
Part82.Transparency = 1
Part82.Rotation = Vector3.new(0, 74.909996, 0)
Part82.Anchored = true
Part82.CanCollide = false
Part82.FormFactor = Enum.FormFactor.Custom
Part82.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part82.CFrame = CFrame.new(-244.866516, 111.376976, 0.934601009, 0.260386169, 1.57273632e-07, 0.965504289, 2.13600924e-08, 0.999999881, -1.68653727e-07, -0.965504289, 6.45400959e-08, 0.260386169)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part82.Position = Vector3.new(-244.866516, 111.376976, 0.934601009)
Part82.Orientation = Vector3.new(0, 74.909996, 0)
Part82.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke83.Parent = Part82
Smoke83.Size = 10
Smoke83.Opacity = 0.20000000298023
Part84.Parent = Model0
Part84.Material = Enum.Material.Slate
Part84.BrickColor = BrickColor.new("Really black")
Part84.Transparency = 1
Part84.Rotation = Vector3.new(0, -15.0899992, 0)
Part84.Anchored = true
Part84.CanCollide = false
Part84.FormFactor = Enum.FormFactor.Custom
Part84.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part84.CFrame = CFrame.new(-205.891663, 110.093842, 0.146789998, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.TopSurface = Enum.SurfaceType.Smooth
Part84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part84.Position = Vector3.new(-205.891663, 110.093842, 0.146789998)
Part84.Orientation = Vector3.new(0, -15.0899992, 0)
Part84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke85.Parent = Part84
Smoke85.Size = 10
Smoke85.Opacity = 0.20000000298023
Part86.Parent = Model0
Part86.Material = Enum.Material.SmoothPlastic
Part86.BrickColor = BrickColor.new("Really black")
Part86.Rotation = Vector3.new(0, 1.53999996, 0)
Part86.Anchored = true
Part86.FormFactor = Enum.FormFactor.Custom
Part86.Size = Vector3.new(27.8698921, 182.709915, 131.350021)
Part86.CFrame = CFrame.new(159.883392, 115.726295, 32.4065399, 0.999638259, 2.75043476e-07, 0.0268951803, -2.72162538e-07, 0.999999881, -1.10776043e-07, -0.0268951766, 1.03416113e-07, 0.99963814)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part86.Position = Vector3.new(159.883392, 115.726295, 32.4065399)
Part86.Orientation = Vector3.new(0, 1.53999996, 0)
Part86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part87.Parent = Model0
Part87.Material = Enum.Material.Slate
Part87.BrickColor = BrickColor.new("Really black")
Part87.Transparency = 1
Part87.Rotation = Vector3.new(-180, 15.0899992, -180)
Part87.Anchored = true
Part87.CanCollide = false
Part87.FormFactor = Enum.FormFactor.Custom
Part87.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part87.CFrame = CFrame.new(-199.694061, 110.256805, -35.331665, -0.96550411, 1.5727484e-07, 0.260386109, 1.6865549e-07, 0.999999523, 2.13618634e-08, -0.260386109, 6.4542256e-08, -0.96550411)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part87.Position = Vector3.new(-199.694061, 110.256805, -35.331665)
Part87.Orientation = Vector3.new(0, 164.910004, 0)
Part87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke88.Parent = Part87
Smoke88.Size = 10
Smoke88.Opacity = 0.20000000298023
Part89.Parent = Model0
Part89.Material = Enum.Material.Slate
Part89.BrickColor = BrickColor.new("Really black")
Part89.Transparency = 1
Part89.Rotation = Vector3.new(-180, -74.909996, -180)
Part89.Anchored = true
Part89.CanCollide = false
Part89.FormFactor = Enum.FormFactor.Custom
Part89.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part89.CFrame = CFrame.new(-214.399841, 110.093842, -52.2063904, -0.26038596, 1.57276844e-07, -0.965503573, -2.13600639e-08, 0.99999845, 1.68657166e-07, 0.965503573, 6.45409202e-08, -0.26038596)
Part89.BottomSurface = Enum.SurfaceType.Smooth
Part89.TopSurface = Enum.SurfaceType.Smooth
Part89.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part89.Position = Vector3.new(-214.399841, 110.093842, -52.2063904)
Part89.Orientation = Vector3.new(0, -105.089996, 0)
Part89.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke90.Parent = Part89
Smoke90.Size = 10
Smoke90.Opacity = 0.20000000298023
Part91.Parent = Model0
Part91.Material = Enum.Material.Slate
Part91.BrickColor = BrickColor.new("Dark stone grey")
Part91.Rotation = Vector3.new(-16.9300003, -2.46000004, 128.679993)
Part91.Anchored = true
Part91.FormFactor = Enum.FormFactor.Custom
Part91.Size = Vector3.new(33.3899918, 11.8898811, 13.809989)
Part91.CFrame = CFrame.new(-202.474426, 241.690872, -118.227348, -0.624434114, -0.779891789, -0.0429968908, 0.738957584, -0.607699215, 0.290930659, -0.253025174, 0.149893478, 0.955776334)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.TopSurface = Enum.SurfaceType.Smooth
Part91.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part91.Position = Vector3.new(-202.474426, 241.690872, -118.227348)
Part91.Orientation = Vector3.new(-16.9099998, -2.57999992, 129.429993)
Part91.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part92.Parent = Model0
Part92.Material = Enum.Material.Slate
Part92.BrickColor = BrickColor.new("Dark stone grey")
Part92.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part92.Anchored = true
Part92.FormFactor = Enum.FormFactor.Custom
Part92.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part92.CFrame = CFrame.new(-205.008698, 294.254974, -24.6943665, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part92.BottomSurface = Enum.SurfaceType.Smooth
Part92.TopSurface = Enum.SurfaceType.Smooth
Part92.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part92.Position = Vector3.new(-205.008698, 294.254974, -24.6943665)
Part92.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part92.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part93.Parent = Model0
Part93.Material = Enum.Material.Slate
Part93.BrickColor = BrickColor.new("Bright blue")
Part93.Rotation = Vector3.new(0, -15.0899992, 0)
Part93.Anchored = true
Part93.CanCollide = false
Part93.FormFactor = Enum.FormFactor.Custom
Part93.Size = Vector3.new(0.200000003, 120.169891, 7.34999084)
Part93.CFrame = CFrame.new(-208.731812, 168.641907, -2.62832594, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part93.BottomSurface = Enum.SurfaceType.Smooth
Part93.TopSurface = Enum.SurfaceType.Smooth
Part93.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part93.Position = Vector3.new(-208.731812, 168.641907, -2.62832594)
Part93.Orientation = Vector3.new(0, -15.0899992, 0)
Part93.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part94.Parent = Model0
Part94.Material = Enum.Material.Slate
Part94.BrickColor = BrickColor.new("Bright blue")
Part94.Rotation = Vector3.new(0, -15.0899992, 0)
Part94.Anchored = true
Part94.CanCollide = false
Part94.FormFactor = Enum.FormFactor.Custom
Part94.Size = Vector3.new(0.200000003, 120.169891, 10.0299911)
Part94.CFrame = CFrame.new(-204.272919, 168.501602, -18.8920593, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part94.BottomSurface = Enum.SurfaceType.Smooth
Part94.TopSurface = Enum.SurfaceType.Smooth
Part94.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part94.Position = Vector3.new(-204.272919, 168.501602, -18.8920593)
Part94.Orientation = Vector3.new(0, -15.0899992, 0)
Part94.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part95.Parent = Model0
Part95.Material = Enum.Material.Slate
Part95.BrickColor = BrickColor.new("Bright blue")
Part95.Rotation = Vector3.new(0, -15.0899992, 0)
Part95.Anchored = true
Part95.CanCollide = false
Part95.FormFactor = Enum.FormFactor.Custom
Part95.Size = Vector3.new(0.200000003, 120.169891, 7.34999084)
Part95.CFrame = CFrame.new(-199.971954, 168.641876, -35.0692444, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part95.BottomSurface = Enum.SurfaceType.Smooth
Part95.TopSurface = Enum.SurfaceType.Smooth
Part95.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part95.Position = Vector3.new(-199.971954, 168.641876, -35.0692444)
Part95.Orientation = Vector3.new(0, -15.0899992, 0)
Part95.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part96.Parent = Model0
Part96.Material = Enum.Material.Slate
Part96.BrickColor = BrickColor.new("Bright blue")
Part96.Rotation = Vector3.new(-180, -74.909996, 0)
Part96.Anchored = true
Part96.CanCollide = false
Part96.FormFactor = Enum.FormFactor.Custom
Part96.Size = Vector3.new(0.200000003, 120.169891, 7.34999084)
Part96.CFrame = CFrame.new(-228.587891, 168.641876, 5.11102295, 0.260386229, -4.58906726e-07, -0.965503991, 3.16140394e-08, -0.999999762, 4.83828501e-07, -0.965504169, -1.56505777e-07, -0.260386169)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part96.Position = Vector3.new(-228.587891, 168.641876, 5.11102295)
Part96.Orientation = Vector3.new(0, -105.089996, 180)
Part96.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part97.Parent = Model0
Part97.Material = Enum.Material.Slate
Part97.BrickColor = BrickColor.new("Bright blue")
Part97.Rotation = Vector3.new(-116.589996, -58.9300003, 59.6999969)
Part97.Anchored = true
Part97.FormFactor = Enum.FormFactor.Custom
Part97.Size = Vector3.new(0.519999981, 9.40988636, 7.34999084)
Part97.CFrame = CFrame.new(-227.276184, 230.550018, 5.14657593, 0.260391176, -0.445604712, -0.856523335, -2.27774808e-06, -0.887126625, 0.46152547, -0.965502858, -0.120175213, -0.231001005)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part97.Position = Vector3.new(-227.276184, 230.550018, 5.14657593)
Part97.Orientation = Vector3.new(-27.4899998, -105.089996, -180)
Part97.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part98.Parent = Model0
Part98.Material = Enum.Material.Slate
Part98.BrickColor = BrickColor.new("Bright blue")
Part98.Rotation = Vector3.new(-116.589996, -58.9300003, 59.6999969)
Part98.Anchored = true
Part98.FormFactor = Enum.FormFactor.Custom
Part98.Size = Vector3.new(0.200000003, 9.40988636, 7.34999084)
Part98.CFrame = CFrame.new(-243.39798, 238.449585, 0.971038997, 0.260391176, -0.445604712, -0.856523335, -2.27774808e-06, -0.887126625, 0.46152547, -0.965502858, -0.120175213, -0.231001005)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part98.Position = Vector3.new(-243.39798, 238.449585, 0.971038997)
Part98.Orientation = Vector3.new(-27.4899998, -105.089996, -180)
Part98.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part99.Parent = Model0
Part99.Material = Enum.Material.Slate
Part99.BrickColor = BrickColor.new("Bright blue")
Part99.Rotation = Vector3.new(-180, -74.909996, 0)
Part99.Anchored = true
Part99.CanCollide = false
Part99.FormFactor = Enum.FormFactor.Custom
Part99.Size = Vector3.new(0.200000003, 128.21991, 7.34999084)
Part99.CFrame = CFrame.new(-244.66803, 172.516449, 0.781005979, 0.260386229, -4.58906726e-07, -0.965503991, 3.16140394e-08, -0.999999762, 4.83828501e-07, -0.965504169, -1.56505777e-07, -0.260386169)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part99.Position = Vector3.new(-244.66803, 172.516449, 0.781005979)
Part99.Orientation = Vector3.new(0, -105.089996, 180)
Part99.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part100.Parent = Model0
Part100.Material = Enum.Material.Slate
Part100.BrickColor = BrickColor.new("Bright blue")
Part100.Rotation = Vector3.new(-180, -74.909996, 0)
Part100.Anchored = true
Part100.CanCollide = false
Part100.FormFactor = Enum.FormFactor.Custom
Part100.Size = Vector3.new(0.200000003, 128.21991, 8.22999001)
Part100.CFrame = CFrame.new(-229.886658, 173.696091, -55.7072449, 0.260386229, -4.58906726e-07, -0.965503991, 3.16140394e-08, -0.999999762, 4.83828501e-07, -0.965504169, -1.56505777e-07, -0.260386169)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part100.Position = Vector3.new(-229.886658, 173.696091, -55.7072449)
Part100.Orientation = Vector3.new(0, -105.089996, 180)
Part100.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part101.Parent = Model0
Part101.Material = Enum.Material.Slate
Part101.BrickColor = BrickColor.new("Bright blue")
Part101.Rotation = Vector3.new(-116.589996, -58.9300003, 59.6999969)
Part101.Anchored = true
Part101.FormFactor = Enum.FormFactor.Custom
Part101.Size = Vector3.new(0.200000003, 8.78988361, 7.16999149)
Part101.CFrame = CFrame.new(-229.159393, 238.989441, -55.5835266, 0.260391176, -0.445604712, -0.856523335, -2.27774808e-06, -0.887126625, 0.46152547, -0.965502858, -0.120175213, -0.231001005)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part101.Position = Vector3.new(-229.159393, 238.989441, -55.5835266)
Part101.Orientation = Vector3.new(-27.4899998, -105.089996, -180)
Part101.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part102.Parent = Model0
Part102.Material = Enum.Material.Slate
Part102.BrickColor = BrickColor.new("Bright blue")
Part102.Rotation = Vector3.new(-180, -74.909996, 0)
Part102.Anchored = true
Part102.CanCollide = false
Part102.FormFactor = Enum.FormFactor.Custom
Part102.Size = Vector3.new(0.200000003, 120.169891, 8.44999123)
Part102.CFrame = CFrame.new(-214.173462, 169.821533, -51.5360413, 0.260386229, -4.58906726e-07, -0.965503991, 3.16140394e-08, -0.999999762, 4.83828501e-07, -0.965504169, -1.56505777e-07, -0.260386169)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part102.Position = Vector3.new(-214.173462, 169.821533, -51.5360413)
Part102.Orientation = Vector3.new(0, -105.089996, 180)
Part102.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part103.Parent = Model0
Part103.Material = Enum.Material.Slate
Part103.BrickColor = BrickColor.new("Bright blue")
Part103.Rotation = Vector3.new(-116.589996, -58.9300003, 59.6999969)
Part103.Anchored = true
Part103.FormFactor = Enum.FormFactor.Custom
Part103.Size = Vector3.new(0.200000003, 8.38988495, 8.5999918)
Part103.CFrame = CFrame.new(-212.615417, 231.764374, -51.1285095, 0.260391176, -0.445604712, -0.856523335, -2.27774808e-06, -0.887126625, 0.46152547, -0.965502858, -0.120175213, -0.231001005)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part103.Position = Vector3.new(-212.615417, 231.764374, -51.1285095)
Part103.Orientation = Vector3.new(-27.4899998, -105.089996, -180)
Part103.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part104.Parent = Model0
Part104.Material = Enum.Material.Slate
Part104.BrickColor = BrickColor.new("Bright blue")
Part104.Rotation = Vector3.new(0, -15.0899992, 0)
Part104.Anchored = true
Part104.FormFactor = Enum.FormFactor.Custom
Part104.Size = Vector3.new(58.0500069, 145.19989, 41.8699875)
Part104.CFrame = CFrame.new(-267.941437, 179.815598, -86.1600342, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.TopSurface = Enum.SurfaceType.Smooth
Part104.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part104.Position = Vector3.new(-267.941437, 179.815598, -86.1600342)
Part104.Orientation = Vector3.new(0, -15.0899992, 0)
Part104.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part105.Parent = Model0
Part105.Material = Enum.Material.Slate
Part105.BrickColor = BrickColor.new("Bright blue")
Part105.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part105.Anchored = true
Part105.FormFactor = Enum.FormFactor.Custom
Part105.Size = Vector3.new(58.7000122, 10.7998819, 58.1899796)
Part105.CFrame = CFrame.new(-232.501251, 235.71167, -26.3264771, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part105.Position = Vector3.new(-232.501251, 235.71167, -26.3264771)
Part105.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part105.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part106.Parent = Model0
Part106.Material = Enum.Material.Slate
Part106.BrickColor = BrickColor.new("Bright blue")
Part106.Rotation = Vector3.new(0, -15.0899992, 0)
Part106.Anchored = true
Part106.FormFactor = Enum.FormFactor.Custom
Part106.Size = Vector3.new(58.7800102, 0.759999931, 59.9699898)
Part106.CFrame = CFrame.new(-284.575287, 252.214539, -40.0890808, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part106.BottomSurface = Enum.SurfaceType.Smooth
Part106.TopSurface = Enum.SurfaceType.Smooth
Part106.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part106.Position = Vector3.new(-284.575287, 252.214539, -40.0890808)
Part106.Orientation = Vector3.new(0, -15.0899992, 0)
Part106.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part107.Parent = Model0
Part107.Material = Enum.Material.Slate
Part107.BrickColor = BrickColor.new("Really black")
Part107.Transparency = 1
Part107.Rotation = Vector3.new(-180, -74.909996, -180)
Part107.Anchored = true
Part107.CanCollide = false
Part107.FormFactor = Enum.FormFactor.Custom
Part107.Size = Vector3.new(0.200000003, 3.06989789, 2.32999158)
Part107.CFrame = CFrame.new(-232.215332, 110.412148, -56.5424194, -0.26038596, 1.57276844e-07, -0.965503573, -2.13600639e-08, 0.99999845, 1.68657166e-07, 0.965503573, 6.45409202e-08, -0.26038596)
Part107.BottomSurface = Enum.SurfaceType.Smooth
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part107.Position = Vector3.new(-232.215332, 110.412148, -56.5424194)
Part107.Orientation = Vector3.new(0, -105.089996, 0)
Part107.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke108.Parent = Part107
Smoke108.Size = 10
Smoke108.Opacity = 0.20000000298023
Part109.Parent = Model0
Part109.Material = Enum.Material.Slate
Part109.BrickColor = BrickColor.new("Dark stone grey")
Part109.Rotation = Vector3.new(-16.9300003, -2.46000004, 159.009995)
Part109.Anchored = true
Part109.FormFactor = Enum.FormFactor.Custom
Part109.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part109.CFrame = CFrame.new(-221.108551, 250.636185, -139.817627, -0.932750583, -0.357947022, -0.0430005714, 0.331060231, -0.897638559, 0.29093343, -0.1427387, 0.257132322, 0.955775142)
Part109.BottomSurface = Enum.SurfaceType.Smooth
Part109.TopSurface = Enum.SurfaceType.Smooth
Part109.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part109.Position = Vector3.new(-221.108551, 250.636185, -139.817627)
Part109.Orientation = Vector3.new(-16.9099998, -2.57999992, 159.759995)
Part109.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part110.Parent = Model0
Part110.Material = Enum.Material.Slate
Part110.BrickColor = BrickColor.new("Dark stone grey")
Part110.Rotation = Vector3.new(0, 5.44000006, 0)
Part110.Anchored = true
Part110.FormFactor = Enum.FormFactor.Custom
Part110.Size = Vector3.new(60.6398811, 38.6999931, 180.600037)
Part110.CFrame = CFrame.new(-266.131012, 87.8203888, 124.711563, 0.99549818, 5.69030689e-08, 0.0947856084, -5.22903107e-08, 1, -5.11499323e-08, -0.0947856084, 4.59633682e-08, 0.99549818)
Part110.BottomSurface = Enum.SurfaceType.Smooth
Part110.TopSurface = Enum.SurfaceType.Smooth
Part110.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part110.Position = Vector3.new(-266.131012, 87.8203888, 124.711563)
Part110.Orientation = Vector3.new(0, 5.44000006, 0)
Part110.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part111.Parent = Model0
Part111.Material = Enum.Material.Slate
Part111.BrickColor = BrickColor.new("Dark stone grey")
Part111.Rotation = Vector3.new(-17.1000004, 0.459999979, 119.159996)
Part111.Anchored = true
Part111.FormFactor = Enum.FormFactor.Custom
Part111.Size = Vector3.new(29.8799934, 11.8898811, 13.809989)
Part111.CFrame = CFrame.new(-210.992371, 247.517731, -91.891449, -0.48728174, -0.873207688, 0.00794632826, 0.835782886, -0.463722289, 0.29398337, -0.253025174, 0.149893478, 0.955776334)
Part111.BottomSurface = Enum.SurfaceType.Smooth
Part111.TopSurface = Enum.SurfaceType.Smooth
Part111.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part111.Position = Vector3.new(-210.992371, 247.517731, -91.891449)
Part111.Orientation = Vector3.new(-17.1000004, 0.479999989, 119.019997)
Part111.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part112.Parent = Model0
Part112.Material = Enum.Material.Slate
Part112.BrickColor = BrickColor.new("Dark stone grey")
Part112.Rotation = Vector3.new(-17.1000004, 0.459999979, 149.48999)
Part112.Anchored = true
Part112.FormFactor = Enum.FormFactor.Custom
Part112.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part112.CFrame = CFrame.new(-228.388641, 264.204468, -96.9176025, -0.861472785, -0.507740319, 0.00794318318, 0.487328559, -0.822241426, 0.293986827, -0.1427387, 0.257132322, 0.955775142)
Part112.BottomSurface = Enum.SurfaceType.Smooth
Part112.TopSurface = Enum.SurfaceType.Smooth
Part112.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part112.Position = Vector3.new(-228.388641, 264.204468, -96.9176025)
Part112.Orientation = Vector3.new(-17.1000004, 0.479999989, 149.349991)
Part112.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part113.Parent = Model0
Part113.Material = Enum.Material.Slate
Part113.BrickColor = BrickColor.new("Dark stone grey")
Part113.Rotation = Vector3.new(-17.1000004, 0.459999979, 149.48999)
Part113.Anchored = true
Part113.FormFactor = Enum.FormFactor.Custom
Part113.Size = Vector3.new(32.260006, 12.6498814, 13.809989)
Part113.CFrame = CFrame.new(-224.268005, 258.74469, -109.937592, -0.861472785, -0.507740319, 0.00794318318, 0.487328559, -0.822241426, 0.293986827, -0.1427387, 0.257132322, 0.955775142)
Part113.BottomSurface = Enum.SurfaceType.Smooth
Part113.TopSurface = Enum.SurfaceType.Smooth
Part113.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part113.Position = Vector3.new(-224.268005, 258.74469, -109.937592)
Part113.Orientation = Vector3.new(-17.1000004, 0.479999989, 149.349991)
Part113.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part114.Parent = Model0
Part114.Material = Enum.Material.Slate
Part114.BrickColor = BrickColor.new("Dark stone grey")
Part114.Rotation = Vector3.new(-16.9300003, -2.46000004, 128.679993)
Part114.Anchored = true
Part114.FormFactor = Enum.FormFactor.Custom
Part114.Size = Vector3.new(27.6799946, 11.8898811, 13.809989)
Part114.CFrame = CFrame.new(-201.777435, 238.020584, -135.069763, -0.624434114, -0.779891789, -0.0429968908, 0.738957584, -0.607699215, 0.290930659, -0.253025174, 0.149893478, 0.955776334)
Part114.BottomSurface = Enum.SurfaceType.Smooth
Part114.TopSurface = Enum.SurfaceType.Smooth
Part114.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part114.Position = Vector3.new(-201.777435, 238.020584, -135.069763)
Part114.Orientation = Vector3.new(-16.9099998, -2.57999992, 129.429993)
Part114.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part115.Parent = Model0
Part115.Material = Enum.Material.Slate
Part115.BrickColor = BrickColor.new("Reddish brown")
Part115.Rotation = Vector3.new(179.539993, 9.64999962, -176.37999)
Part115.Anchored = true
Part115.FormFactor = Enum.FormFactor.Custom
Part115.Size = Vector3.new(25.1999149, 10.0499945, 70.0200729)
Part115.CFrame = CFrame.new(-96.5339127, 144.064392, 106.007904, -0.983872414, 0.0623051934, 0.167670026, 0.0618508831, 0.99805373, -0.00793600827, -0.167838439, 0.00256240088, -0.985811353)
Part115.BottomSurface = Enum.SurfaceType.Smooth
Part115.TopSurface = Enum.SurfaceType.Smooth
Part115.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part115.Position = Vector3.new(-96.5339127, 144.064392, 106.007904)
Part115.Orientation = Vector3.new(0.449999988, 170.349991, 3.54999995)
Part115.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part116.Parent = Model0
Part116.Material = Enum.Material.Slate
Part116.BrickColor = BrickColor.new("Reddish brown")
Part116.Rotation = Vector3.new(-180, 34.3199997, 0)
Part116.Anchored = true
Part116.FormFactor = Enum.FormFactor.Custom
Part116.Size = Vector3.new(54.4599991, 242.389999, 107.01001)
Part116.CFrame = CFrame.new(-249.305878, 225.721909, -144.38681, 0.825854123, -6.2308871e-08, 0.563883662, -1.28974747e-07, -1, 7.84002125e-08, 0.563883662, -1.37470835e-07, -0.825854123)
Part116.BottomSurface = Enum.SurfaceType.Smooth
Part116.TopSurface = Enum.SurfaceType.Smooth
Part116.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part116.Position = Vector3.new(-249.305878, 225.721909, -144.38681)
Part116.Orientation = Vector3.new(0, 145.679993, -180)
Part116.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part117.Name = "SpawnPoint9"
Part117.Parent = Model0
Part117.Material = Enum.Material.Grass
Part117.BrickColor = BrickColor.new("Earth green")
Part117.Transparency = 1
Part117.Rotation = Vector3.new(-180, -27.4399986, 180)
Part117.Anchored = true
Part117.CanCollide = false
Part117.FormFactor = Enum.FormFactor.Custom
Part117.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part117.CFrame = CFrame.new(-102.193581, 159.883316, 174.196136, -0.887473702, -3.27516609e-08, -0.46085754, -5.20394998e-08, 1, 2.91457862e-08, 0.46085754, 4.98489783e-08, -0.887473702)
Part117.BottomSurface = Enum.SurfaceType.Smooth
Part117.TopSurface = Enum.SurfaceType.Smooth
Part117.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part117.Position = Vector3.new(-102.193581, 159.883316, 174.196136)
Part117.Orientation = Vector3.new(0, -152.559998, 0)
Part117.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part118.Parent = Model0
Part118.Material = Enum.Material.Slate
Part118.BrickColor = BrickColor.new("Really black")
Part118.Transparency = 1
Part118.Rotation = Vector3.new(0, -15.0899992, 0)
Part118.Anchored = true
Part118.CanCollide = false
Part118.FormFactor = Enum.FormFactor.Custom
Part118.Size = Vector3.new(0.200000003, 3.06989789, 11.1299915)
Part118.CFrame = CFrame.new(-263.368805, 111.499039, 12.3072195, 0.965502024, 1.57275053e-07, -0.260385543, -1.68655092e-07, 0.999995232, -2.13582592e-08, 0.260385543, 6.45385327e-08, 0.965502024)
Part118.BottomSurface = Enum.SurfaceType.Smooth
Part118.TopSurface = Enum.SurfaceType.Smooth
Part118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part118.Position = Vector3.new(-263.368805, 111.499039, 12.3072195)
Part118.Orientation = Vector3.new(0, -15.0899992, 0)
Part118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Smoke119.Parent = Part118
Smoke119.Size = 20
Smoke119.Opacity = 0.20000000298023
Part120.Parent = Model0
Part120.Material = Enum.Material.Slate
Part120.BrickColor = BrickColor.new("Reddish brown")
Part120.Rotation = Vector3.new(-180, 19.6899986, -45.6899986)
Part120.Anchored = true
Part120.FormFactor = Enum.FormFactor.Custom
Part120.Size = Vector3.new(144.77002, 68.1898804, 161.029968)
Part120.CFrame = CFrame.new(-292.130707, 301.17923, -53.6559448, 0.657734632, 0.673673213, 0.336971194, 0.715519607, -0.698592782, 2.93359744e-06, 0.235407442, 0.241107464, -0.941514611)
Part120.BottomSurface = Enum.SurfaceType.Smooth
Part120.TopSurface = Enum.SurfaceType.Smooth
Part120.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part120.Position = Vector3.new(-292.130707, 301.17923, -53.6559448)
Part120.Orientation = Vector3.new(0, 160.309998, 134.309998)
Part120.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part121.Parent = Model0
Part121.Material = Enum.Material.Slate
Part121.BrickColor = BrickColor.new("Reddish brown")
Part121.Rotation = Vector3.new(-180, 15.0899992, -90)
Part121.Anchored = true
Part121.FormFactor = Enum.FormFactor.Custom
Part121.Size = Vector3.new(41.5700264, 58.3798866, 11.3299475)
Part121.CFrame = CFrame.new(-275.229462, 276.79953, -79.4645081, -1.35247555e-08, 0.965504527, 0.260386348, 1, -2.97264137e-07, 2.10486903e-07, 2.3450049e-07, 0.260386229, -0.96550411)
Part121.BottomSurface = Enum.SurfaceType.Smooth
Part121.TopSurface = Enum.SurfaceType.Smooth
Part121.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part121.Position = Vector3.new(-275.229462, 276.79953, -79.4645081)
Part121.Orientation = Vector3.new(0, 164.910004, 90)
Part121.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part122.Parent = Model0
Part122.Material = Enum.Material.Slate
Part122.BrickColor = BrickColor.new("Reddish brown")
Part122.Rotation = Vector3.new(-180, 15.0899992, -90)
Part122.Anchored = true
Part122.FormFactor = Enum.FormFactor.Custom
Part122.Size = Vector3.new(41.5700264, 58.3798866, 11.3299475)
Part122.CFrame = CFrame.new(-309.331879, 275.049988, 21.0189209, -1.35247555e-08, 0.965504527, 0.260386348, 1, -2.97264137e-07, 2.10486903e-07, 2.3450049e-07, 0.260386229, -0.96550411)
Part122.BottomSurface = Enum.SurfaceType.Smooth
Part122.TopSurface = Enum.SurfaceType.Smooth
Part122.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part122.Position = Vector3.new(-309.331879, 275.049988, 21.0189209)
Part122.Orientation = Vector3.new(0, 164.910004, 90)
Part122.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part123.Parent = Model0
Part123.Material = Enum.Material.Slate
Part123.BrickColor = BrickColor.new("Really black")
Part123.Rotation = Vector3.new(-180, 19.6899986, -91.9700012)
Part123.Anchored = true
Part123.FormFactor = Enum.FormFactor.Custom
Part123.Size = Vector3.new(54.7300224, 40.5998802, 112.249969)
Part123.CFrame = CFrame.new(-306.317352, 255.064575, -36.1816406, -0.0323962159, 0.940956116, 0.336975187, 0.999408066, 0.0344075151, 2.37576228e-06, -0.0115922717, 0.336775512, -0.941513002)
Part123.BottomSurface = Enum.SurfaceType.Smooth
Part123.TopSurface = Enum.SurfaceType.Smooth
Part123.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part123.Position = Vector3.new(-306.317352, 255.064575, -36.1816406)
Part123.Orientation = Vector3.new(0, 160.309998, 88.0299988)
Part123.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part124.Parent = Model0
Part124.Material = Enum.Material.Slate
Part124.BrickColor = BrickColor.new("Bright violet")
Part124.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part124.Anchored = true
Part124.FormFactor = Enum.FormFactor.Custom
Part124.Size = Vector3.new(0.200000003, 28.4998856, 8.62998962)
Part124.CFrame = CFrame.new(-215.259094, 325.663635, -18.9666443, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part124.BottomSurface = Enum.SurfaceType.Smooth
Part124.TopSurface = Enum.SurfaceType.Smooth
Part124.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part124.Position = Vector3.new(-215.259094, 325.663635, -18.9666443)
Part124.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part124.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part125.Parent = Model0
Part125.Material = Enum.Material.Slate
Part125.BrickColor = BrickColor.new("Bright violet")
Part125.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part125.Anchored = true
Part125.FormFactor = Enum.FormFactor.Custom
Part125.Size = Vector3.new(0.200000003, 8.51989079, 8.62998962)
Part125.CFrame = CFrame.new(-224.167084, 346.751678, -22.137146, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part125.BottomSurface = Enum.SurfaceType.Smooth
Part125.TopSurface = Enum.SurfaceType.Smooth
Part125.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part125.Position = Vector3.new(-224.167084, 346.751678, -22.137146)
Part125.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part125.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part126.Parent = Model0
Part126.Material = Enum.Material.Slate
Part126.BrickColor = BrickColor.new("Bright violet")
Part126.Rotation = Vector3.new(138.199997, 30.2999992, -5.75)
Part126.Anchored = true
Part126.FormFactor = Enum.FormFactor.Custom
Part126.Size = Vector3.new(0.200000003, 8.51989079, 14.7499905)
Part126.CFrame = CFrame.new(-216.7966, 341.121674, -35.7572632, 0.859098434, 0.0864325836, 0.504458666, 0.40914759, -0.708132386, -0.575453162, 0.307485551, 0.700769007, -0.643719375)
Part126.BottomSurface = Enum.SurfaceType.Smooth
Part126.TopSurface = Enum.SurfaceType.Smooth
Part126.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part126.Position = Vector3.new(-216.7966, 341.121674, -35.7572632)
Part126.Orientation = Vector3.new(35.1300011, 141.919998, 149.979996)
Part126.Color = Color3.new(0.419608, 0.196078, 0.486275)
Part127.Parent = Model0
Part127.Material = Enum.Material.Slate
Part127.BrickColor = BrickColor.new("Reddish brown")
Part127.Rotation = Vector3.new(39.1899986, 56.5499992, -34.2199974)
Part127.Anchored = true
Part127.FormFactor = Enum.FormFactor.Custom
Part127.Size = Vector3.new(25.1999149, 10.0499945, 132.740051)
Part127.CFrame = CFrame.new(-187.121735, 162.120377, 141.868073, 0.455824167, 0.310031682, 0.834329069, -3.95968414e-08, 0.937374532, -0.348322779, -0.890070081, 0.15877381, 0.427277714)
Part127.BottomSurface = Enum.SurfaceType.Smooth
Part127.TopSurface = Enum.SurfaceType.Smooth
Part127.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part127.Position = Vector3.new(-187.121735, 162.120377, 141.868073)
Part127.Orientation = Vector3.new(20.3799992, 62.8799973, 0)
Part127.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part128.Name = "SpawnPoint7"
Part128.Parent = Model0
Part128.Material = Enum.Material.Grass
Part128.BrickColor = BrickColor.new("Earth green")
Part128.Transparency = 1
Part128.Rotation = Vector3.new(180, 0, 180)
Part128.Anchored = true
Part128.CanCollide = false
Part128.FormFactor = Enum.FormFactor.Custom
Part128.Size = Vector3.new(10.6899996, 19.5599995, 10.290081)
Part128.CFrame = CFrame.new(112.666359, 122.228394, 125.720459, -0.999999642, -4.49231194e-08, 1.78813934e-07, -4.49231123e-08, 1, -1.42108547e-14, -1.78813934e-07, 3.90798505e-14, -0.999999642)
Part128.BottomSurface = Enum.SurfaceType.Smooth
Part128.TopSurface = Enum.SurfaceType.Smooth
Part128.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part128.Position = Vector3.new(112.666359, 122.228394, 125.720459)
Part128.Orientation = Vector3.new(0, 180, 0)
Part128.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part129.Parent = Model0
Part129.Material = Enum.Material.Slate
Part129.BrickColor = BrickColor.new("Reddish brown")
Part129.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part129.Anchored = true
Part129.FormFactor = Enum.FormFactor.Custom
Part129.Size = Vector3.new(25.1999149, 10.0499945, 81.9400711)
Part129.CFrame = CFrame.new(-245.232147, 184.85173, 82.4766693, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part129.BottomSurface = Enum.SurfaceType.Smooth
Part129.TopSurface = Enum.SurfaceType.Smooth
Part129.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part129.Position = Vector3.new(-245.232147, 184.85173, 82.4766693)
Part129.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part129.Color = Color3.new(0.411765, 0.25098, 0.156863)
Script130.Name = "MusicHandler"
Script130.Parent = Model0
table.insert(cors,sandbox(Script130,function()
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
LocalScript131.Name = "MusicScript"
LocalScript131.Parent = Script130
table.insert(cors,sandbox(LocalScript131,function()
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
IntValue132.Name = "Song"
IntValue132.Parent = LocalScript131
IntValue133.Name = "IDs"
IntValue133.Parent = IntValue132
IntValue134.Name = "1"
IntValue134.Parent = IntValue133
IntValue134.Value = 186745378
IntValue135.Name = "Times"
IntValue135.Parent = IntValue132
IntValue136.Name = "1"
IntValue136.Parent = IntValue135
IntValue136.Value = 5488
IntValue137.Name = "LoopStart"
IntValue137.Parent = IntValue132
IntValue137.Value = 1
IntValue138.Name = "LoopEnd"
IntValue138.Parent = IntValue132
IntValue138.Value = 1
IntValue139.Name = "Photo"
IntValue139.Parent = Model0
IntValue139.Value = 201122650
StringValue140.Name = "Creator"
StringValue140.Parent = Model0
StringValue140.Value = "By Qaeo"
Part141.Parent = Model0
Part141.Material = Enum.Material.Slate
Part141.BrickColor = BrickColor.new("Dark stone grey")
Part141.Rotation = Vector3.new(-176.119995, 29.5599995, -20.5299988)
Part141.Anchored = true
Part141.FormFactor = Enum.FormFactor.Custom
Part141.Size = Vector3.new(37.7300148, 43.9600067, 98.5999985)
Part141.CFrame = CFrame.new(-227.154449, 319.593201, -84.2229309, 0.814621091, 0.304987997, 0.493329644, 0.318531185, -0.946080446, 0.058908131, 0.484695226, 0.109152988, -0.867845297)
Part141.BottomSurface = Enum.SurfaceType.Smooth
Part141.TopSurface = Enum.SurfaceType.Smooth
Part141.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part141.Position = Vector3.new(-227.154449, 319.593201, -84.2229309)
Part141.Orientation = Vector3.new(-3.37999988, 150.37999, 161.389999)
Part141.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part142.Parent = Model0
Part142.Material = Enum.Material.Slate
Part142.BrickColor = BrickColor.new("Dark stone grey")
Part142.Rotation = Vector3.new(-20.3099995, 22.2699986, 31.6299992)
Part142.Anchored = true
Part142.FormFactor = Enum.FormFactor.Custom
Part142.Size = Vector3.new(20.160017, 28.0300045, 56.0500183)
Part142.CFrame = CFrame.new(-224.681793, 352.507019, 91.1095428, 0.787914932, -0.48532331, 0.379013032, 0.379814595, 0.867494822, 0.321237326, -0.484695345, -0.10915304, 0.867845178)
Part142.BottomSurface = Enum.SurfaceType.Smooth
Part142.TopSurface = Enum.SurfaceType.Smooth
Part142.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part142.Position = Vector3.new(-224.681793, 352.507019, 91.1095428)
Part142.Orientation = Vector3.new(-18.7399998, 23.5900002, 23.6499996)
Part142.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part143.Parent = Model0
Part143.Material = Enum.Material.Slate
Part143.BrickColor = BrickColor.new("Dark stone grey")
Part143.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part143.Anchored = true
Part143.FormFactor = Enum.FormFactor.Custom
Part143.Size = Vector3.new(11.6300011, 13.3898821, 8.93998814)
Part143.CFrame = CFrame.new(-217.519012, 244.932434, -47.8338013, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part143.BottomSurface = Enum.SurfaceType.Smooth
Part143.TopSurface = Enum.SurfaceType.Smooth
Part143.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part143.Position = Vector3.new(-217.519012, 244.932434, -47.8338013)
Part143.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part143.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part144.Parent = Model0
Part144.Material = Enum.Material.Slate
Part144.BrickColor = BrickColor.new("Dark stone grey")
Part144.Rotation = Vector3.new(-20.3099995, 22.2699986, 31.6299992)
Part144.Anchored = true
Part144.FormFactor = Enum.FormFactor.Custom
Part144.Size = Vector3.new(37.7300148, 43.9600067, 98.5999985)
Part144.CFrame = CFrame.new(-249.309418, 332.74472, 39.6449432, 0.787915111, -0.48532331, 0.379012883, 0.379814684, 0.867494822, 0.321237296, -0.484695196, -0.109152988, 0.867845297)
Part144.BottomSurface = Enum.SurfaceType.Smooth
Part144.TopSurface = Enum.SurfaceType.Smooth
Part144.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part144.Position = Vector3.new(-249.309418, 332.74472, 39.6449432)
Part144.Orientation = Vector3.new(-18.7399998, 23.5900002, 23.6499996)
Part144.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part145.Parent = Model0
Part145.Material = Enum.Material.Slate
Part145.BrickColor = BrickColor.new("Dark stone grey")
Part145.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part145.Anchored = true
Part145.FormFactor = Enum.FormFactor.Custom
Part145.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part145.CFrame = CFrame.new(-215.930389, 286.530609, -45.3013916, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part145.BottomSurface = Enum.SurfaceType.Smooth
Part145.TopSurface = Enum.SurfaceType.Smooth
Part145.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part145.Position = Vector3.new(-215.930389, 286.530609, -45.3013916)
Part145.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part145.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part146.Parent = Model0
Part146.Material = Enum.Material.Slate
Part146.BrickColor = BrickColor.new("Dark stone grey")
Part146.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part146.Anchored = true
Part146.FormFactor = Enum.FormFactor.Custom
Part146.Size = Vector3.new(63.8600082, 51.3100128, 65.4699783)
Part146.CFrame = CFrame.new(-239.168091, 317.242462, -70.9286804, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part146.BottomSurface = Enum.SurfaceType.Smooth
Part146.TopSurface = Enum.SurfaceType.Smooth
Part146.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part146.Position = Vector3.new(-239.168091, 317.242462, -70.9286804)
Part146.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part146.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part147.Parent = Model0
Part147.Material = Enum.Material.Slate
Part147.BrickColor = BrickColor.new("Dark stone grey")
Part147.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part147.Anchored = true
Part147.FormFactor = Enum.FormFactor.Custom
Part147.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part147.CFrame = CFrame.new(-229.859283, 244.617142, 0.116301998, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part147.BottomSurface = Enum.SurfaceType.Smooth
Part147.TopSurface = Enum.SurfaceType.Smooth
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part147.Position = Vector3.new(-229.859283, 244.617142, 0.116301998)
Part147.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part147.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part148.Parent = Model0
Part148.Material = Enum.Material.Slate
Part148.BrickColor = BrickColor.new("Dark stone grey")
Part148.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part148.Anchored = true
Part148.FormFactor = Enum.FormFactor.Custom
Part148.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part148.CFrame = CFrame.new(-211.198242, 294.290283, -7.16552687, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part148.BottomSurface = Enum.SurfaceType.Smooth
Part148.TopSurface = Enum.SurfaceType.Smooth
Part148.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part148.Position = Vector3.new(-211.198242, 294.290283, -7.16552687)
Part148.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part148.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part149.Parent = Model0
Part149.Material = Enum.Material.Slate
Part149.BrickColor = BrickColor.new("Dark stone grey")
Part149.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part149.Anchored = true
Part149.FormFactor = Enum.FormFactor.Custom
Part149.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part149.CFrame = CFrame.new(-209.132935, 236.893402, -10.5773621, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part149.BottomSurface = Enum.SurfaceType.Smooth
Part149.TopSurface = Enum.SurfaceType.Smooth
Part149.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part149.Position = Vector3.new(-209.132935, 236.893402, -10.5773621)
Part149.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part149.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part150.Parent = Model0
Part150.Material = Enum.Material.Slate
Part150.BrickColor = BrickColor.new("Dark stone grey")
Part150.Rotation = Vector3.new(-176.119995, 29.5599995, -20.5299988)
Part150.Anchored = true
Part150.FormFactor = Enum.FormFactor.Custom
Part150.Size = Vector3.new(20.160017, 28.0300045, 56.0500183)
Part150.CFrame = CFrame.new(-195.912811, 324.177673, -135.6875, 0.814620972, 0.304987997, 0.493329793, 0.318531185, -0.946080446, 0.0589081496, 0.484695375, 0.10915304, -0.867845178)
Part150.BottomSurface = Enum.SurfaceType.Smooth
Part150.TopSurface = Enum.SurfaceType.Smooth
Part150.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part150.Position = Vector3.new(-195.912811, 324.177673, -135.6875)
Part150.Orientation = Vector3.new(-3.37999988, 150.37999, 161.389999)
Part150.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part151.Parent = Model0
Part151.Material = Enum.Material.Slate
Part151.BrickColor = BrickColor.new("Dark stone grey")
Part151.Rotation = Vector3.new(-14.6899996, 13.2599993, 24.6599998)
Part151.Anchored = true
Part151.FormFactor = Enum.FormFactor.Custom
Part151.Size = Vector3.new(63.8600082, 51.3100128, 65.4699783)
Part151.CFrame = CFrame.new(-259.210236, 325.545624, 26.3506775, 0.884565949, -0.406092197, 0.229415447, 0.350712895, 0.903372824, 0.246814817, -0.307476938, -0.137864977, 0.941514969)
Part151.BottomSurface = Enum.SurfaceType.Smooth
Part151.TopSurface = Enum.SurfaceType.Smooth
Part151.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part151.Position = Vector3.new(-259.210236, 325.545624, 26.3506775)
Part151.Orientation = Vector3.new(-14.29, 13.6899996, 21.2199993)
Part151.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part152.Parent = Model0
Part152.Material = Enum.Material.Slate
Part152.BrickColor = BrickColor.new("Dark stone grey")
Part152.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part152.Anchored = true
Part152.FormFactor = Enum.FormFactor.Custom
Part152.Size = Vector3.new(11.6300011, 13.3898821, 8.93998814)
Part152.CFrame = CFrame.new(-233.151245, 286.215668, 1.11993396, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part152.BottomSurface = Enum.SurfaceType.Smooth
Part152.TopSurface = Enum.SurfaceType.Smooth
Part152.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part152.Position = Vector3.new(-233.151245, 286.215668, 1.11993396)
Part152.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part152.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part153.Parent = Model0
Part153.Material = Enum.Material.Slate
Part153.BrickColor = BrickColor.new("Dark stone grey")
Part153.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part153.Anchored = true
Part153.FormFactor = Enum.FormFactor.Custom
Part153.Size = Vector3.new(97.9900131, 68.1898804, 58.2799835)
Part153.CFrame = CFrame.new(-260.973724, 313.763397, -35.0736084, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part153.BottomSurface = Enum.SurfaceType.Smooth
Part153.TopSurface = Enum.SurfaceType.Smooth
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part153.Position = Vector3.new(-260.973724, 313.763397, -35.0736084)
Part153.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part153.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part154.Parent = Model0
Part154.Material = Enum.Material.Slate
Part154.BrickColor = BrickColor.new("Dark stone grey")
Part154.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part154.Anchored = true
Part154.FormFactor = Enum.FormFactor.Custom
Part154.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part154.CFrame = CFrame.new(-200.548035, 236.993698, -43.2696838, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part154.BottomSurface = Enum.SurfaceType.Smooth
Part154.TopSurface = Enum.SurfaceType.Smooth
Part154.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part154.Position = Vector3.new(-200.548035, 236.993698, -43.2696838)
Part154.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part154.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part155.Parent = Model0
Part155.Material = Enum.Material.Slate
Part155.BrickColor = BrickColor.new("Dark stone grey")
Part155.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part155.Anchored = true
Part155.FormFactor = Enum.FormFactor.Custom
Part155.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part155.CFrame = CFrame.new(-216.609253, 294.154449, 7.0534668, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part155.BottomSurface = Enum.SurfaceType.Smooth
Part155.TopSurface = Enum.SurfaceType.Smooth
Part155.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part155.Position = Vector3.new(-216.609253, 294.154449, 7.0534668)
Part155.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part155.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part156.Parent = Model0
Part156.Material = Enum.Material.Slate
Part156.BrickColor = BrickColor.new("Dark stone grey")
Part156.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part156.Anchored = true
Part156.FormFactor = Enum.FormFactor.Custom
Part156.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part156.CFrame = CFrame.new(-213.365387, 236.944382, 4.67849684, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part156.BottomSurface = Enum.SurfaceType.Smooth
Part156.TopSurface = Enum.SurfaceType.Smooth
Part156.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part156.Position = Vector3.new(-213.365387, 236.944382, 4.67849684)
Part156.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part156.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part157.Parent = Model0
Part157.Material = Enum.Material.Slate
Part157.BrickColor = BrickColor.new("Dark stone grey")
Part157.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part157.Anchored = true
Part157.FormFactor = Enum.FormFactor.Custom
Part157.Size = Vector3.new(19.5200024, 13.3898821, 8.99998951)
Part157.CFrame = CFrame.new(-252.764069, 276.878052, -5.87545776, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part157.BottomSurface = Enum.SurfaceType.Smooth
Part157.TopSurface = Enum.SurfaceType.Smooth
Part157.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part157.Position = Vector3.new(-252.764069, 276.878052, -5.87545776)
Part157.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part157.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part158.Parent = Model0
Part158.Material = Enum.Material.Slate
Part158.BrickColor = BrickColor.new("Dark stone grey")
Part158.Rotation = Vector3.new(0, -15.0899992, -85.3899994)
Part158.Anchored = true
Part158.FormFactor = Enum.FormFactor.Custom
Part158.Size = Vector3.new(21.2699947, 13.3898821, 8.62998962)
Part158.CFrame = CFrame.new(-254.756714, 264.851624, -6.60665894, 0.0775840506, 0.962381184, -0.260387689, -0.996766329, 0.0803551003, -4.53593111e-06, 0.0209191013, 0.259545952, 0.965503871)
Part158.BottomSurface = Enum.SurfaceType.Smooth
Part158.TopSurface = Enum.SurfaceType.Smooth
Part158.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part158.Position = Vector3.new(-254.756714, 264.851624, -6.60665894)
Part158.Orientation = Vector3.new(0, -15.0899992, -85.3899994)
Part158.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part159.Parent = Model0
Part159.Material = Enum.Material.Slate
Part159.BrickColor = BrickColor.new("Dark stone grey")
Part159.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part159.Anchored = true
Part159.FormFactor = Enum.FormFactor.Custom
Part159.Size = Vector3.new(58.0500069, 12.58988, 58.2799835)
Part159.CFrame = CFrame.new(-232.442963, 234.581406, -26.2747192, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part159.BottomSurface = Enum.SurfaceType.Smooth
Part159.TopSurface = Enum.SurfaceType.Smooth
Part159.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part159.Position = Vector3.new(-232.442963, 234.581406, -26.2747192)
Part159.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part159.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part160.Parent = Model0
Part160.Material = Enum.Material.Slate
Part160.BrickColor = BrickColor.new("Dark stone grey")
Part160.Rotation = Vector3.new(-180, 19.6899986, -24.1499996)
Part160.Anchored = true
Part160.FormFactor = Enum.FormFactor.Custom
Part160.Size = Vector3.new(21.2699947, 13.3898821, 8.62998962)
Part160.CFrame = CFrame.new(-236.284882, 276.835175, -52.5939941, 0.859106541, 0.385208935, 0.336970389, 0.409136623, -0.912473321, 2.15449199e-06, 0.307476997, 0.137864992, -0.941514909)
Part160.BottomSurface = Enum.SurfaceType.Smooth
Part160.TopSurface = Enum.SurfaceType.Smooth
Part160.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part160.Position = Vector3.new(-236.284882, 276.835175, -52.5939941)
Part160.Orientation = Vector3.new(0, 160.309998, 155.849991)
Part160.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part161.Parent = Model0
Part161.Material = Enum.Material.Slate
Part161.BrickColor = BrickColor.new("Dark stone grey")
Part161.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part161.Anchored = true
Part161.FormFactor = Enum.FormFactor.Custom
Part161.Size = Vector3.new(11.6300011, 13.3898821, 8.62998962)
Part161.CFrame = CFrame.new(-204.216095, 236.857819, -28.5046082, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part161.BottomSurface = Enum.SurfaceType.Smooth
Part161.TopSurface = Enum.SurfaceType.Smooth
Part161.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part161.Position = Vector3.new(-204.216095, 236.857819, -28.5046082)
Part161.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part161.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part162.Parent = Model0
Part162.Material = Enum.Material.Slate
Part162.BrickColor = BrickColor.new("Dark stone grey")
Part162.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part162.Anchored = true
Part162.FormFactor = Enum.FormFactor.Custom
Part162.Size = Vector3.new(19.5200024, 13.3898821, 8.99998951)
Part162.CFrame = CFrame.new(-237.617798, 254.268723, -53.277771, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part162.BottomSurface = Enum.SurfaceType.Smooth
Part162.TopSurface = Enum.SurfaceType.Smooth
Part162.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part162.Position = Vector3.new(-237.617798, 254.268723, -53.277771)
Part162.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part162.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part163.Parent = Model0
Part163.Material = Enum.Material.Slate
Part163.BrickColor = BrickColor.new("Dark stone grey")
Part163.Rotation = Vector3.new(0, -15.0899992, -24.1499996)
Part163.Anchored = true
Part163.FormFactor = Enum.FormFactor.Custom
Part163.Size = Vector3.new(21.2699947, 13.3898821, 8.62998962)
Part163.CFrame = CFrame.new(-250.736725, 254.311707, -5.50668287, 0.880996823, 0.395022601, -0.26038608, -0.409136623, 0.912473321, -2.15449199e-06, 0.237594485, 0.106535397, 0.965504348)
Part163.BottomSurface = Enum.SurfaceType.Smooth
Part163.TopSurface = Enum.SurfaceType.Smooth
Part163.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part163.Position = Vector3.new(-250.736725, 254.311707, -5.50668287)
Part163.Orientation = Vector3.new(0, -15.0899992, -24.1499996)
Part163.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part164.Parent = Model0
Part164.Material = Enum.Material.Slate
Part164.BrickColor = BrickColor.new("Dark stone grey")
Part164.Rotation = Vector3.new(0, -15.0899992, -85.3899994)
Part164.Anchored = true
Part164.FormFactor = Enum.FormFactor.Custom
Part164.Size = Vector3.new(21.2699947, 13.3898821, 8.62998962)
Part164.CFrame = CFrame.new(-239.766602, 264.831604, -54.0067101, 0.0775840506, 0.962381184, -0.260387689, -0.996766329, 0.0803551003, -4.53593111e-06, 0.0209191013, 0.259545952, 0.965503871)
Part164.BottomSurface = Enum.SurfaceType.Smooth
Part164.TopSurface = Enum.SurfaceType.Smooth
Part164.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part164.Position = Vector3.new(-239.766602, 264.831604, -54.0067101)
Part164.Orientation = Vector3.new(0, -15.0899992, -85.3899994)
Part164.Color = Color3.new(0.388235, 0.372549, 0.384314)
Model165.Name = "Tree"
Model165.Parent = Model0
Part166.Name = "Tree"
Part166.Parent = Model165
Part166.Rotation = Vector3.new(0, 90, 0)
Part166.Anchored = true
Part166.FormFactor = Enum.FormFactor.Plate
Part166.Size = Vector3.new(22, 81.5999985, 26)
Part166.CFrame = CFrame.new(16.9799576, 165.520477, 144.320068, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part166.BottomSurface = Enum.SurfaceType.Smooth
Part166.TopSurface = Enum.SurfaceType.Smooth
Part166.Position = Vector3.new(16.9799576, 165.520477, 144.320068)
Part166.Orientation = Vector3.new(0, 90, 0)
SpecialMesh167.Parent = Part166
SpecialMesh167.MeshId = "http://www.roblox.com/asset/?id=1090398"
SpecialMesh167.Scale = Vector3.new(80, 80, 80)
SpecialMesh167.TextureId = "http://www.roblox.com/asset/?id=1090399"
SpecialMesh167.MeshType = Enum.MeshType.FileMesh
SpecialMesh167.Scale = Vector3.new(80, 80, 80)
Part168.Parent = Model165
Part168.BrickColor = BrickColor.new("Earth green")
Part168.Rotation = Vector3.new(0, 90, 0)
Part168.Anchored = true
Part168.CanCollide = false
Part168.FormFactor = Enum.FormFactor.Plate
Part168.Size = Vector3.new(72, 24, 152)
Part168.CFrame = CFrame.new(15.6840582, 243.896713, 138.077881, -5.7896371e-10, -9.09494702e-13, 1, 0, 1, -9.09494702e-13, -1, 0, 5.7896371e-10)
Part168.BottomSurface = Enum.SurfaceType.Smooth
Part168.TopSurface = Enum.SurfaceType.Smooth
Part168.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part168.Position = Vector3.new(15.6840582, 243.896713, 138.077881)
Part168.Orientation = Vector3.new(0, 90, 0)
Part168.Color = Color3.new(0.152941, 0.27451, 0.176471)
SpecialMesh169.Parent = Part168
SpecialMesh169.MeshId = "http://www.roblox.com/asset/?id=1095708"
SpecialMesh169.Scale = Vector3.new(180, 200, 230)
SpecialMesh169.MeshType = Enum.MeshType.FileMesh
SpecialMesh169.Scale = Vector3.new(180, 200, 230)
Part170.Parent = Model0
Part170.Material = Enum.Material.Grass
Part170.BrickColor = BrickColor.new("Earth green")
Part170.Rotation = Vector3.new(179.539993, 9.64999962, -176.37999)
Part170.Anchored = true
Part170.FormFactor = Enum.FormFactor.Custom
Part170.Size = Vector3.new(24.1499176, 1.03999531, 69.870079)
Part170.CFrame = CFrame.new(-96.22715, 148.7677, 106.094376, -0.983872414, 0.0623051934, 0.167670026, 0.0618508831, 0.99805373, -0.00793600827, -0.167838439, 0.00256240088, -0.985811353)
Part170.BottomSurface = Enum.SurfaceType.Smooth
Part170.TopSurface = Enum.SurfaceType.Smooth
Part170.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part170.Position = Vector3.new(-96.22715, 148.7677, 106.094376)
Part170.Orientation = Vector3.new(0.449999988, 170.349991, 3.54999995)
Part170.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part171.Parent = Model0
Part171.Material = Enum.Material.Grass
Part171.BrickColor = BrickColor.new("Earth green")
Part171.Rotation = Vector3.new(0, 90, 0)
Part171.Anchored = true
Part171.FormFactor = Enum.FormFactor.Custom
Part171.Size = Vector3.new(83.9798889, 0.199999973, 85.3300705)
Part171.CFrame = CFrame.new(-77.8409195, 143.07811, -124.454895, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part171.BottomSurface = Enum.SurfaceType.Smooth
Part171.TopSurface = Enum.SurfaceType.Smooth
Part171.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part171.Position = Vector3.new(-77.8409195, 143.07811, -124.454895)
Part171.Orientation = Vector3.new(0, 90, 0)
Part171.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part172.Parent = Model0
Part172.Material = Enum.Material.Grass
Part172.BrickColor = BrickColor.new("Earth green")
Part172.Rotation = Vector3.new(69.0499954, 73.6899948, -65.0400009)
Part172.Anchored = true
Part172.FormFactor = Enum.FormFactor.Custom
Part172.Size = Vector3.new(24.1499138, 1.03999519, 219.76004)
Part172.CFrame = CFrame.new(-85.8826065, 162.265457, -147.388855, 0.118536167, 0.25461784, 0.959749997, 0.0541646183, 0.963466525, -0.262293875, -0.991471708, 0.0830756277, 0.100413837)
Part172.BottomSurface = Enum.SurfaceType.Smooth
Part172.TopSurface = Enum.SurfaceType.Smooth
Part172.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part172.Position = Vector3.new(-85.8826065, 162.265457, -147.388855)
Part172.Orientation = Vector3.new(15.21, 84.0299988, 3.22000003)
Part172.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part173.Parent = Model0
Part173.Material = Enum.Material.Grass
Part173.BrickColor = BrickColor.new("Earth green")
Part173.Rotation = Vector3.new(180, 42.8199997, -180)
Part173.Anchored = true
Part173.FormFactor = Enum.FormFactor.Custom
Part173.Size = Vector3.new(70.9998856, 0.199999973, 85.3300705)
Part173.CFrame = CFrame.new(-32.8010941, 138.466644, -92.6661987, -0.733469248, 1.05876385e-09, 0.679722488, -2.75301044e-08, 1, -3.12646016e-08, -0.679722488, -4.1644391e-08, -0.733469248)
Part173.BottomSurface = Enum.SurfaceType.Smooth
Part173.TopSurface = Enum.SurfaceType.Smooth
Part173.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part173.Position = Vector3.new(-32.8010941, 138.466644, -92.6661987)
Part173.Orientation = Vector3.new(0, 137.179993, 0)
Part173.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part174.Parent = Model0
Part174.Material = Enum.Material.Grass
Part174.BrickColor = BrickColor.new("Earth green")
Part174.Rotation = Vector3.new(180, 3.61999989, 180)
Part174.Anchored = true
Part174.FormFactor = Enum.FormFactor.Custom
Part174.Size = Vector3.new(83.9798889, 0.199999973, 85.3300705)
Part174.CFrame = CFrame.new(-3.95093489, 134.886749, -131.594757, -0.99799931, -2.54983608e-08, 0.0632228851, -2.75301044e-08, 1, -3.12646016e-08, -0.0632228851, -3.29425305e-08, -0.99799931)
Part174.BottomSurface = Enum.SurfaceType.Smooth
Part174.TopSurface = Enum.SurfaceType.Smooth
Part174.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part174.Position = Vector3.new(-3.95093489, 134.886749, -131.594757)
Part174.Orientation = Vector3.new(0, 176.37999, 0)
Part174.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part175.Parent = Model0
Part175.Material = Enum.Material.Grass
Part175.BrickColor = BrickColor.new("Earth green")
Part175.Rotation = Vector3.new(89.0099945, 69.6100006, -88.9499969)
Part175.Anchored = true
Part175.FormFactor = Enum.FormFactor.Custom
Part175.Size = Vector3.new(24.1499138, 1.03999519, 71.9900665)
Part175.CFrame = CFrame.new(72.7555923, 122.152061, -156.274567, 0.00641427841, 0.348315865, 0.937355161, 4.49612223e-08, 0.937374532, -0.348322898, -0.999979198, 0.00223421957, 0.00601234287)
Part175.BottomSurface = Enum.SurfaceType.Smooth
Part175.TopSurface = Enum.SurfaceType.Smooth
Part175.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part175.Position = Vector3.new(72.7555923, 122.152061, -156.274567)
Part175.Orientation = Vector3.new(20.3799992, 89.6299973, 0)
Part175.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part176.Parent = Model0
Part176.Material = Enum.Material.Grass
Part176.BrickColor = BrickColor.new("Earth green")
Part176.Rotation = Vector3.new(0, 1.53999996, 0)
Part176.Anchored = true
Part176.FormFactor = Enum.FormFactor.Custom
Part176.Size = Vector3.new(252.739777, 1.19999993, 185.049988)
Part176.CFrame = CFrame.new(32.0386887, 111.818016, -121.915314, 0.999637961, 2.74403817e-07, 0.0268960539, -2.71522822e-07, 1, -1.10777826e-07, -0.0268960539, 1.03436662e-07, 0.999637961)
Part176.BottomSurface = Enum.SurfaceType.Smooth
Part176.TopSurface = Enum.SurfaceType.Smooth
Part176.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part176.Position = Vector3.new(32.0386887, 111.818016, -121.915314)
Part176.Orientation = Vector3.new(0, 1.53999996, 0)
Part176.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part177.Parent = Model0
Part177.Material = Enum.Material.Grass
Part177.BrickColor = BrickColor.new("Earth green")
Part177.Rotation = Vector3.new(0, -15.4099998, 0)
Part177.Anchored = true
Part177.FormFactor = Enum.FormFactor.Custom
Part177.Size = Vector3.new(223.349823, 1.19999993, 185.499985)
Part177.CFrame = CFrame.new(-174.414154, 111.978149, -144.825775, 0.964036882, 2.59766182e-07, -0.265767783, -2.75323913e-07, 1, -2.12814957e-08, 0.265767783, 9.36902111e-08, 0.964036882)
Part177.BottomSurface = Enum.SurfaceType.Smooth
Part177.TopSurface = Enum.SurfaceType.Smooth
Part177.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part177.Position = Vector3.new(-174.414154, 111.978149, -144.825775)
Part177.Orientation = Vector3.new(0, -15.4099998, 0)
Part177.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part178.Parent = Model0
Part178.Material = Enum.Material.Grass
Part178.BrickColor = BrickColor.new("Earth green")
Part178.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part178.Anchored = true
Part178.FormFactor = Enum.FormFactor.Custom
Part178.Size = Vector3.new(24.1499138, 1.03999507, 81.6900482)
Part178.CFrame = CFrame.new(-208.101715, 190.5858, -134.78804, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part178.BottomSurface = Enum.SurfaceType.Smooth
Part178.TopSurface = Enum.SurfaceType.Smooth
Part178.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part178.Position = Vector3.new(-208.101715, 190.5858, -134.78804)
Part178.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part178.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part179.Parent = Model0
Part179.Material = Enum.Material.Grass
Part179.BrickColor = BrickColor.new("Earth green")
Part179.Rotation = Vector3.new(0, -55.8600006, 0)
Part179.Anchored = true
Part179.FormFactor = Enum.FormFactor.Custom
Part179.Size = Vector3.new(17.5799217, 0.690000057, 23.4300365)
Part179.CFrame = CFrame.new(-95.2817154, 112.143364, 92.9481506, 0.56126821, 3.02818847e-07, -0.827634156, -2.17543459e-07, 1, 2.18354131e-07, 0.827634156, 5.74921515e-08, 0.56126821)
Part179.BottomSurface = Enum.SurfaceType.Smooth
Part179.TopSurface = Enum.SurfaceType.Smooth
Part179.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part179.Position = Vector3.new(-95.2817154, 112.143364, 92.9481506)
Part179.Orientation = Vector3.new(0, -55.8600006, 0)
Part179.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part180.Parent = Model0
Part180.Material = Enum.Material.Grass
Part180.BrickColor = BrickColor.new("Earth green")
Part180.Rotation = Vector3.new(0, 58.3899994, 0)
Part180.Anchored = true
Part180.FormFactor = Enum.FormFactor.Custom
Part180.Size = Vector3.new(11.3699217, 0.690000057, 13.5200377)
Part180.CFrame = CFrame.new(-90.3792801, 112.113457, 86.9268494, 0.524175525, 3.75896462e-07, 0.851610363, -8.69990572e-07, 1, 9.40953129e-08, -0.851610363, -7.90214358e-07, 0.524175525)
Part180.BottomSurface = Enum.SurfaceType.Smooth
Part180.TopSurface = Enum.SurfaceType.Smooth
Part180.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part180.Position = Vector3.new(-90.3792801, 112.113457, 86.9268494)
Part180.Orientation = Vector3.new(0, 58.3899994, 0)
Part180.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part181.Parent = Model0
Part181.Material = Enum.Material.Grass
Part181.BrickColor = BrickColor.new("Earth green")
Part181.Anchored = true
Part181.FormFactor = Enum.FormFactor.Custom
Part181.Size = Vector3.new(237.149887, 1.66000021, 212.250076)
Part181.CFrame = CFrame.new(23.715538, 111.618408, 183.994751, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part181.BottomSurface = Enum.SurfaceType.Smooth
Part181.TopSurface = Enum.SurfaceType.Smooth
Part181.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part181.Position = Vector3.new(23.715538, 111.618408, 183.994751)
Part181.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part182.Parent = Model0
Part182.Material = Enum.Material.Grass
Part182.BrickColor = BrickColor.new("Earth green")
Part182.Rotation = Vector3.new(-180, -82.8899994, -180)
Part182.Anchored = true
Part182.FormFactor = Enum.FormFactor.Custom
Part182.Size = Vector3.new(11.3699217, 0.690000057, 13.5200377)
Part182.CFrame = CFrame.new(-110.613991, 112.193443, 91.3065033, -0.123842523, 2.07190197e-07, -0.992302001, 3.69416995e-07, 1, 1.62691919e-07, 0.992302001, -3.46424031e-07, -0.123842523)
Part182.BottomSurface = Enum.SurfaceType.Smooth
Part182.TopSurface = Enum.SurfaceType.Smooth
Part182.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part182.Position = Vector3.new(-110.613991, 112.193443, 91.3065033)
Part182.Orientation = Vector3.new(0, -97.1100006, 0)
Part182.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part183.Parent = Model0
Part183.Material = Enum.Material.Grass
Part183.BrickColor = BrickColor.new("Earth green")
Part183.Rotation = Vector3.new(-180, -75.2799988, -180)
Part183.Anchored = true
Part183.FormFactor = Enum.FormFactor.Custom
Part183.Size = Vector3.new(183.219894, 0.690000057, 227.540024)
Part183.CFrame = CFrame.new(-185.652069, 112.103584, 161.724625, -0.254090518, 2.17147146e-07, -0.967180431, 6.7908536e-07, 1, 4.61093279e-08, 0.967180431, -6.4508157e-07, -0.254090518)
Part183.BottomSurface = Enum.SurfaceType.Smooth
Part183.TopSurface = Enum.SurfaceType.Smooth
Part183.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part183.Position = Vector3.new(-185.652069, 112.103584, 161.724625)
Part183.Orientation = Vector3.new(0, -104.720001, 0)
Part183.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part184.Parent = Model0
Part184.Material = Enum.Material.Grass
Part184.BrickColor = BrickColor.new("Earth green")
Part184.Rotation = Vector3.new(90, 69.6199951, -90)
Part184.Anchored = true
Part184.FormFactor = Enum.FormFactor.Custom
Part184.Size = Vector3.new(24.1499176, 1.03999531, 35.8100739)
Part184.CFrame = CFrame.new(64.3492813, 117.973671, 134.069916, 0, 0.348322839, 0.937374532, 0, 0.937374532, -0.348322839, -1, 0, 0)
Part184.BottomSurface = Enum.SurfaceType.Smooth
Part184.TopSurface = Enum.SurfaceType.Smooth
Part184.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part184.Position = Vector3.new(64.3492813, 117.973671, 134.069916)
Part184.Orientation = Vector3.new(20.3799992, 90, 0)
Part184.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part185.Parent = Model0
Part185.Material = Enum.Material.Grass
Part185.BrickColor = BrickColor.new("Earth green")
Part185.Rotation = Vector3.new(0, 90, 0)
Part185.Anchored = true
Part185.FormFactor = Enum.FormFactor.Custom
Part185.Size = Vector3.new(83.9798965, 0.200000003, 85.3300781)
Part185.CFrame = CFrame.new(5.15903378, 124.587997, 144.544907, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part185.BottomSurface = Enum.SurfaceType.Smooth
Part185.TopSurface = Enum.SurfaceType.Smooth
Part185.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part185.Position = Vector3.new(5.15903378, 124.587997, 144.544907)
Part185.Orientation = Vector3.new(0, 90, 0)
Part185.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part186.Parent = Model0
Part186.Material = Enum.Material.Grass
Part186.BrickColor = BrickColor.new("Earth green")
Part186.Rotation = Vector3.new(140.959991, 56.4300003, -145.949997)
Part186.Anchored = true
Part186.FormFactor = Enum.FormFactor.Custom
Part186.Size = Vector3.new(24.1499176, 1.03999531, 71.9900742)
Part186.CFrame = CFrame.new(-35.3413773, 135.891754, 140.94368, -0.458174378, 0.309611082, 0.833196878, -1.0034972e-08, 0.937374532, -0.348322809, -0.88886255, -0.159592643, -0.429481119)
Part186.BottomSurface = Enum.SurfaceType.Smooth
Part186.TopSurface = Enum.SurfaceType.Smooth
Part186.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part186.Position = Vector3.new(-35.3413773, 135.891754, 140.94368)
Part186.Orientation = Vector3.new(20.3799992, 117.269997, 0)
Part186.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part187.Parent = Model0
Part187.Material = Enum.Material.Grass
Part187.BrickColor = BrickColor.new("Earth green")
Part187.Rotation = Vector3.new(-180, 62.5599976, -180)
Part187.Anchored = true
Part187.FormFactor = Enum.FormFactor.Custom
Part187.Size = Vector3.new(83.9798965, 0.200000003, 85.3300781)
Part187.CFrame = CFrame.new(-106.000801, 148.687622, 169.944916, -0.46085763, 3.35980029e-11, 0.88747412, 7.51186835e-10, 1, 3.52268187e-10, -0.88747412, 8.29131652e-10, -0.46085763)
Part187.BottomSurface = Enum.SurfaceType.Smooth
Part187.TopSurface = Enum.SurfaceType.Smooth
Part187.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part187.Position = Vector3.new(-106.000801, 148.687622, 169.944916)
Part187.Orientation = Vector3.new(0, 117.439995, 0)
Part187.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part188.Parent = Model0
Part188.Material = Enum.Material.Grass
Part188.BrickColor = BrickColor.new("Earth green")
Part188.Rotation = Vector3.new(0.379999995, -60.9599991, -0.409999996)
Part188.Anchored = true
Part188.FormFactor = Enum.FormFactor.Custom
Part188.Size = Vector3.new(24.1499138, 1.03999507, 81.6900482)
Part188.CFrame = CFrame.new(-206.155151, 189.800186, 28.8206635, 0.485438883, 0.00348585355, -0.874263644, -0.0129715856, 0.999910414, -0.00321571878, 0.874174774, 0.0129017262, 0.485441595)
Part188.BottomSurface = Enum.SurfaceType.Smooth
Part188.TopSurface = Enum.SurfaceType.Smooth
Part188.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part188.Position = Vector3.new(-206.155151, 189.800186, 28.8206635)
Part188.Orientation = Vector3.new(0.179999992, -60.9599991, -0.74000001)
Part188.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part189.Parent = Model0
Part189.Material = Enum.Material.Grass
Part189.BrickColor = BrickColor.new("Earth green")
Part189.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part189.Anchored = true
Part189.FormFactor = Enum.FormFactor.Custom
Part189.Size = Vector3.new(24.1499138, 1.03999507, 81.6900482)
Part189.CFrame = CFrame.new(-245.18161, 189.565338, 82.4319916, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part189.BottomSurface = Enum.SurfaceType.Smooth
Part189.TopSurface = Enum.SurfaceType.Smooth
Part189.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part189.Position = Vector3.new(-245.18161, 189.565338, 82.4319916)
Part189.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part189.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part190.Parent = Model0
Part190.Material = Enum.Material.Grass
Part190.BrickColor = BrickColor.new("Earth green")
Part190.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part190.Anchored = true
Part190.FormFactor = Enum.FormFactor.Custom
Part190.Size = Vector3.new(24.1499138, 1.03999507, 71.4900513)
Part190.CFrame = CFrame.new(-166.447937, 189.940216, -18.1802368, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part190.BottomSurface = Enum.SurfaceType.Smooth
Part190.TopSurface = Enum.SurfaceType.Smooth
Part190.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part190.Position = Vector3.new(-166.447937, 189.940216, -18.1802368)
Part190.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part190.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part191.Parent = Model0
Part191.Material = Enum.Material.Grass
Part191.BrickColor = BrickColor.new("Earth green")
Part191.Rotation = Vector3.new(0.239999995, 39.8699989, -0.899999976)
Part191.Anchored = true
Part191.FormFactor = Enum.FormFactor.Custom
Part191.Size = Vector3.new(24.1499138, 1.03999507, 88.4200592)
Part191.CFrame = CFrame.new(-182.607635, 190.163208, -75.3426208, 0.767401993, 0.0120170405, 0.641054749, -0.0129715856, 0.999910414, -0.00321571878, -0.641035676, -0.00584777631, 0.767489076)
Part191.BottomSurface = Enum.SurfaceType.Smooth
Part191.TopSurface = Enum.SurfaceType.Smooth
Part191.Color = Color3.new(0.152941, 0.27451, 0.176471)
Part191.Position = Vector3.new(-182.607635, 190.163208, -75.3426208)
Part191.Orientation = Vector3.new(0.179999992, 39.8699989, -0.74000001)
Part191.Color = Color3.new(0.152941, 0.27451, 0.176471)
StringValue192.Name = "Skytype"
StringValue192.Parent = Model0
StringValue192.Value = "SunsetLake"
IntValue193.Name = "AllowFlare"
IntValue193.Parent = Model0
IntValue193.Value = 198650722
Model194.Name = "HealthPickup"
Model194.Parent = Model0
Script195.Parent = Model194
table.insert(cors,sandbox(Script195,function()
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
Part196.Name = "Bottle"
Part196.Parent = Model194
Part196.BrickColor = BrickColor.new("Bright red")
Part196.Transparency = 0.00099998712539673
Part196.Rotation = Vector3.new(180, 0, 180)
Part196.CanCollide = false
Part196.FormFactor = Enum.FormFactor.Custom
Part196.Size = Vector3.new(2, 2, 2)
Part196.CFrame = CFrame.new(-2.65253401, 130.869003, 115.190186, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part196.BottomSurface = Enum.SurfaceType.Smooth
Part196.TopSurface = Enum.SurfaceType.Smooth
Part196.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part196.Position = Vector3.new(-2.65253401, 130.869003, 115.190186)
Part196.Orientation = Vector3.new(0, -180, 0)
Part196.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script197.Name = "HealScript"
Script197.Parent = Part196
table.insert(cors,sandbox(Script197,function()
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
LocalScript198.Name = "HEAL"
LocalScript198.Parent = Script197
LocalScript198.Disabled = true
table.insert(cors,sandbox(LocalScript198,function()
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
SpecialMesh199.Parent = Part196
SpecialMesh199.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh199.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh199.MeshType = Enum.MeshType.FileMesh
SpecialMesh199.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound200.Parent = Part196
Sound200.Pitch = 1.1499999761581
Sound200.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound200.Volume = 0.75
Sound201.Parent = Part196
Sound201.Pitch = 1.1499999761581
Sound201.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound201.Volume = 0.75
Sound202.Parent = Part196
Sound202.Pitch = 1.1499999761581
Sound202.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound202.Volume = 0.75
Model203.Name = "HealthPickup"
Model203.Parent = Model0
Script204.Parent = Model203
table.insert(cors,sandbox(Script204,function()
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
Part205.Name = "Bottle"
Part205.Parent = Model203
Part205.BrickColor = BrickColor.new("Bright red")
Part205.Transparency = 0.00099998712539673
Part205.Rotation = Vector3.new(180, 0, 180)
Part205.CanCollide = false
Part205.FormFactor = Enum.FormFactor.Custom
Part205.Size = Vector3.new(2, 2, 2)
Part205.CFrame = CFrame.new(-91.7825241, 150.568802, 81.0901947, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part205.BottomSurface = Enum.SurfaceType.Smooth
Part205.TopSurface = Enum.SurfaceType.Smooth
Part205.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part205.Position = Vector3.new(-91.7825241, 150.568802, 81.0901947)
Part205.Orientation = Vector3.new(0, -180, 0)
Part205.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script206.Name = "HealScript"
Script206.Parent = Part205
table.insert(cors,sandbox(Script206,function()
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
LocalScript207.Name = "HEAL"
LocalScript207.Parent = Script206
LocalScript207.Disabled = true
table.insert(cors,sandbox(LocalScript207,function()
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
SpecialMesh208.Parent = Part205
SpecialMesh208.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh208.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh208.MeshType = Enum.MeshType.FileMesh
SpecialMesh208.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound209.Parent = Part205
Sound209.Pitch = 1.1499999761581
Sound209.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound209.Volume = 0.75
Sound210.Parent = Part205
Sound210.Pitch = 1.1499999761581
Sound210.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound210.Volume = 0.75
Sound211.Parent = Part205
Sound211.Pitch = 1.1499999761581
Sound211.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound211.Volume = 0.75
Model212.Name = "HealthPickup"
Model212.Parent = Model0
Script213.Parent = Model212
table.insert(cors,sandbox(Script213,function()
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
Part214.Name = "Bottle"
Part214.Parent = Model212
Part214.BrickColor = BrickColor.new("Bright red")
Part214.Transparency = 0.00099998712539673
Part214.Rotation = Vector3.new(180, 0, 180)
Part214.CanCollide = false
Part214.FormFactor = Enum.FormFactor.Custom
Part214.Size = Vector3.new(2, 2, 2)
Part214.CFrame = CFrame.new(-91.7825241, 150.568802, -106.67984, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part214.BottomSurface = Enum.SurfaceType.Smooth
Part214.TopSurface = Enum.SurfaceType.Smooth
Part214.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part214.Position = Vector3.new(-91.7825241, 150.568802, -106.67984)
Part214.Orientation = Vector3.new(0, -180, 0)
Part214.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script215.Name = "HealScript"
Script215.Parent = Part214
table.insert(cors,sandbox(Script215,function()
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
LocalScript216.Name = "HEAL"
LocalScript216.Parent = Script215
LocalScript216.Disabled = true
table.insert(cors,sandbox(LocalScript216,function()
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
SpecialMesh217.Parent = Part214
SpecialMesh217.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh217.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh217.MeshType = Enum.MeshType.FileMesh
SpecialMesh217.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound218.Parent = Part214
Sound218.Pitch = 1.1499999761581
Sound218.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound218.Volume = 0.75
Sound219.Parent = Part214
Sound219.Pitch = 1.1499999761581
Sound219.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound219.Volume = 0.75
Sound220.Parent = Part214
Sound220.Pitch = 1.1499999761581
Sound220.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound220.Volume = 0.75
Model221.Name = "HealthPickup"
Model221.Parent = Model0
Script222.Parent = Model221
table.insert(cors,sandbox(Script222,function()
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
Part223.Name = "Bottle"
Part223.Parent = Model221
Part223.BrickColor = BrickColor.new("Bright red")
Part223.Transparency = 0.00099998712539673
Part223.Rotation = Vector3.new(180, 0, 180)
Part223.CanCollide = false
Part223.FormFactor = Enum.FormFactor.Custom
Part223.Size = Vector3.new(2, 2, 2)
Part223.CFrame = CFrame.new(-170.012543, 192.20816, -9.12994385, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part223.BottomSurface = Enum.SurfaceType.Smooth
Part223.TopSurface = Enum.SurfaceType.Smooth
Part223.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part223.Position = Vector3.new(-170.012543, 192.20816, -9.12994385)
Part223.Orientation = Vector3.new(0, -180, 0)
Part223.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script224.Name = "HealScript"
Script224.Parent = Part223
table.insert(cors,sandbox(Script224,function()
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
LocalScript225.Name = "HEAL"
LocalScript225.Parent = Script224
LocalScript225.Disabled = true
table.insert(cors,sandbox(LocalScript225,function()
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
SpecialMesh226.Parent = Part223
SpecialMesh226.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh226.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh226.MeshType = Enum.MeshType.FileMesh
SpecialMesh226.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound227.Parent = Part223
Sound227.Pitch = 1.1499999761581
Sound227.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound227.Volume = 0.75
Sound228.Parent = Part223
Sound228.Pitch = 1.1499999761581
Sound228.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound228.Volume = 0.75
Sound229.Parent = Part223
Sound229.Pitch = 1.1499999761581
Sound229.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound229.Volume = 0.75
Model230.Name = "HealthPickup"
Model230.Parent = Model0
Script231.Parent = Model230
table.insert(cors,sandbox(Script231,function()
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
Part232.Name = "Bottle"
Part232.Parent = Model230
Part232.BrickColor = BrickColor.new("Bright red")
Part232.Transparency = 0.00099998712539673
Part232.Rotation = Vector3.new(180, 0, 180)
Part232.CanCollide = false
Part232.FormFactor = Enum.FormFactor.Custom
Part232.Size = Vector3.new(2, 2, 2)
Part232.CFrame = CFrame.new(-179.212555, 87.4296188, 138.830002, -0.99999994, -2.3723878e-08, -2.98023224e-08, -6.73214018e-09, 1, -1.77635684e-15, 5.96046448e-08, -2.69084985e-08, -0.99999994)
Part232.BottomSurface = Enum.SurfaceType.Smooth
Part232.TopSurface = Enum.SurfaceType.Smooth
Part232.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part232.Position = Vector3.new(-179.212555, 87.4296188, 138.830002)
Part232.Orientation = Vector3.new(0, -180, 0)
Part232.Color = Color3.new(0.768628, 0.156863, 0.109804)
Script233.Name = "HealScript"
Script233.Parent = Part232
table.insert(cors,sandbox(Script233,function()
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
LocalScript234.Name = "HEAL"
LocalScript234.Parent = Script233
LocalScript234.Disabled = true
table.insert(cors,sandbox(LocalScript234,function()
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
SpecialMesh235.Parent = Part232
SpecialMesh235.MeshId = "http://www.roblox.com/asset/?id=11409474"
SpecialMesh235.Scale = Vector3.new(2.75, 2.75, 2.75)
SpecialMesh235.MeshType = Enum.MeshType.FileMesh
SpecialMesh235.Scale = Vector3.new(2.75, 2.75, 2.75)
Sound236.Parent = Part232
Sound236.Pitch = 1.1499999761581
Sound236.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound236.Volume = 0.75
Sound237.Parent = Part232
Sound237.Pitch = 1.1499999761581
Sound237.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound237.Volume = 0.75
Sound238.Parent = Part232
Sound238.Pitch = 1.1499999761581
Sound238.SoundId = "http://www.roblox.com/asset/?id=2101144"
Sound238.Volume = 0.75
Part239.Parent = Model0
Part239.Material = Enum.Material.Sand
Part239.BrickColor = BrickColor.new("Reddish brown")
Part239.Rotation = Vector3.new(-24.3400002, 1.39999998, 0.639999986)
Part239.Anchored = true
Part239.FormFactor = Enum.FormFactor.Custom
Part239.Size = Vector3.new(35.4498825, 108.949928, 128.339996)
Part239.CFrame = CFrame.new(158.865692, 223.893845, -17.5639305, 0.999638259, -0.0110803656, 0.0245061163, -2.12132022e-07, 0.911184549, 0.411997974, -0.0268946905, -0.411848933, 0.910855055)
Part239.BottomSurface = Enum.SurfaceType.Smooth
Part239.TopSurface = Enum.SurfaceType.Smooth
Part239.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part239.Position = Vector3.new(158.865692, 223.893845, -17.5639305)
Part239.Orientation = Vector3.new(-24.3299999, 1.53999996, 0)
Part239.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part240.Parent = Model0
Part240.Material = Enum.Material.Slate
Part240.BrickColor = BrickColor.new("Reddish brown")
Part240.Rotation = Vector3.new(180, 71.3600006, -180)
Part240.Anchored = true
Part240.FormFactor = Enum.FormFactor.Custom
Part240.Size = Vector3.new(64.8799973, 246.719986, 107.01001)
Part240.CFrame = CFrame.new(6.82263947, 226.295364, 291.788574, -0.319546074, 6.68061375e-08, 0.94757092, -2.36424938e-07, 1, -1.50230463e-07, -0.94757092, -2.7203626e-07, -0.319546074)
Part240.BottomSurface = Enum.SurfaceType.Smooth
Part240.TopSurface = Enum.SurfaceType.Smooth
Part240.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part240.Position = Vector3.new(6.82263947, 226.295364, 291.788574)
Part240.Orientation = Vector3.new(0, 108.639999, 0)
Part240.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part241.Parent = Model0
Part241.Material = Enum.Material.Slate
Part241.BrickColor = BrickColor.new("Reddish brown")
Part241.Rotation = Vector3.new(0, 89.4300003, 0)
Part241.Anchored = true
Part241.FormFactor = Enum.FormFactor.Custom
Part241.Size = Vector3.new(64.8799973, 243.809937, 107.01001)
Part241.CFrame = CFrame.new(-48.1773758, 227.430634, 291.788574, 0.00998787023, 2.96184606e-08, 0.999950111, -3.41868997e-07, 1, -2.62051447e-08, -0.999950111, -3.41591459e-07, 0.00998787023)
Part241.BottomSurface = Enum.SurfaceType.Smooth
Part241.TopSurface = Enum.SurfaceType.Smooth
Part241.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part241.Position = Vector3.new(-48.1773758, 227.430634, 291.788574)
Part241.Orientation = Vector3.new(0, 89.4300003, 0)
Part241.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part242.Parent = Model0
Part242.Material = Enum.Material.Sand
Part242.BrickColor = BrickColor.new("Reddish brown")
Part242.Rotation = Vector3.new(0, 1.53999996, 0)
Part242.Anchored = true
Part242.FormFactor = Enum.FormFactor.Custom
Part242.Size = Vector3.new(33.3998833, 264.2099, 105.810028)
Part242.CFrame = CFrame.new(156.916077, 227.681793, 131.69371, 0.999638259, 2.75043476e-07, 0.0268951803, -2.72162538e-07, 0.999999881, -1.10776043e-07, -0.0268951766, 1.03416113e-07, 0.99963814)
Part242.BottomSurface = Enum.SurfaceType.Smooth
Part242.TopSurface = Enum.SurfaceType.Smooth
Part242.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part242.Position = Vector3.new(156.916077, 227.681793, 131.69371)
Part242.Orientation = Vector3.new(0, 1.53999996, 0)
Part242.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part243.Parent = Model0
Part243.Material = Enum.Material.Sand
Part243.BrickColor = BrickColor.new("Reddish brown")
Part243.Rotation = Vector3.new(0, 1.53999996, 0)
Part243.Anchored = true
Part243.FormFactor = Enum.FormFactor.Custom
Part243.Size = Vector3.new(35.4498825, 160.429916, 311.889954)
Part243.CFrame = CFrame.new(156.143997, 276.623474, 34.3378143, 0.999638259, 2.75043476e-07, 0.0268951803, -2.72162538e-07, 0.999999881, -1.10776043e-07, -0.0268951766, 1.03416113e-07, 0.99963814)
Part243.BottomSurface = Enum.SurfaceType.Smooth
Part243.TopSurface = Enum.SurfaceType.Smooth
Part243.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part243.Position = Vector3.new(156.143997, 276.623474, 34.3378143)
Part243.Orientation = Vector3.new(0, 1.53999996, 0)
Part243.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part244.Parent = Model0
Part244.Material = Enum.Material.Sand
Part244.BrickColor = BrickColor.new("Reddish brown")
Part244.Rotation = Vector3.new(0, 1.53999996, 0)
Part244.Anchored = true
Part244.FormFactor = Enum.FormFactor.Custom
Part244.Size = Vector3.new(38.6198845, 296.869934, 105.810028)
Part244.CFrame = CFrame.new(154.307022, 200.460953, -81.0360641, 0.999638259, 2.75043476e-07, 0.0268951803, -2.72162538e-07, 0.999999881, -1.10776043e-07, -0.0268951766, 1.03416113e-07, 0.99963814)
Part244.BottomSurface = Enum.SurfaceType.Smooth
Part244.TopSurface = Enum.SurfaceType.Smooth
Part244.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part244.Position = Vector3.new(154.307022, 200.460953, -81.0360641)
Part244.Orientation = Vector3.new(0, 1.53999996, 0)
Part244.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part245.Parent = Model0
Part245.Material = Enum.Material.Slate
Part245.BrickColor = BrickColor.new("Reddish brown")
Part245.Rotation = Vector3.new(180, 56.3099976, -180)
Part245.Anchored = true
Part245.FormFactor = Enum.FormFactor.Custom
Part245.Size = Vector3.new(73.1799927, 250.989914, 146.040009)
Part245.CFrame = CFrame.new(100.378487, 224.680038, 245.010956, -0.554677486, 2.14589562e-07, 0.832065761, 3.27355956e-08, 1, -2.36075294e-07, -0.832065761, -1.03709674e-07, -0.554677486)
Part245.BottomSurface = Enum.SurfaceType.Smooth
Part245.TopSurface = Enum.SurfaceType.Smooth
Part245.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part245.Position = Vector3.new(100.378487, 224.680038, 245.010956)
Part245.Orientation = Vector3.new(0, 123.689995, 0)
Part245.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part246.Parent = Model0
Part246.Material = Enum.Material.Slate
Part246.BrickColor = BrickColor.new("Reddish brown")
Part246.Rotation = Vector3.new(-180, 19.6899986, -45.6899986)
Part246.Anchored = true
Part246.FormFactor = Enum.FormFactor.Custom
Part246.Size = Vector3.new(144.77002, 68.1898804, 161.029968)
Part246.CFrame = CFrame.new(-292.130707, 301.180969, -53.6559448, 0.657734632, 0.673673213, 0.336971194, 0.715519607, -0.698592782, 2.93359744e-06, 0.235407442, 0.241107464, -0.941514611)
Part246.BottomSurface = Enum.SurfaceType.Smooth
Part246.TopSurface = Enum.SurfaceType.Smooth
Part246.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part246.Position = Vector3.new(-292.130707, 301.180969, -53.6559448)
Part246.Orientation = Vector3.new(0, 160.309998, 134.309998)
Part246.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part247.Parent = Model0
Part247.Material = Enum.Material.Slate
Part247.BrickColor = BrickColor.new("Reddish brown")
Part247.Rotation = Vector3.new(180, 56.3099976, -180)
Part247.Anchored = true
Part247.FormFactor = Enum.FormFactor.Custom
Part247.Size = Vector3.new(73.1799927, 250.989914, 146.040009)
Part247.CFrame = CFrame.new(100.378487, 224.680038, 245.010956, -0.554677486, 2.14589562e-07, 0.832065761, 3.27355956e-08, 1, -2.36075294e-07, -0.832065761, -1.03709674e-07, -0.554677486)
Part247.BottomSurface = Enum.SurfaceType.Smooth
Part247.TopSurface = Enum.SurfaceType.Smooth
Part247.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part247.Position = Vector3.new(100.378487, 224.680038, 245.010956)
Part247.Orientation = Vector3.new(0, 123.689995, 0)
Part247.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part248.Parent = Model0
Part248.Material = Enum.Material.Slate
Part248.BrickColor = BrickColor.new("Reddish brown")
Part248.Rotation = Vector3.new(0, 89.4300003, 0)
Part248.Anchored = true
Part248.FormFactor = Enum.FormFactor.Custom
Part248.Size = Vector3.new(64.8799973, 243.809937, 107.01001)
Part248.CFrame = CFrame.new(-48.1773758, 227.430634, 291.788574, 0.00998787023, 2.96184606e-08, 0.999950111, -3.41868997e-07, 1, -2.62051447e-08, -0.999950111, -3.41591459e-07, 0.00998787023)
Part248.BottomSurface = Enum.SurfaceType.Smooth
Part248.TopSurface = Enum.SurfaceType.Smooth
Part248.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part248.Position = Vector3.new(-48.1773758, 227.430634, 291.788574)
Part248.Orientation = Vector3.new(0, 89.4300003, 0)
Part248.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part249.Parent = Model0
Part249.Material = Enum.Material.Slate
Part249.BrickColor = BrickColor.new("Reddish brown")
Part249.Rotation = Vector3.new(0, -15.0899992, 0)
Part249.Anchored = true
Part249.FormFactor = Enum.FormFactor.Custom
Part249.Size = Vector3.new(80.0000076, 360.799927, 205.630005)
Part249.CFrame = CFrame.new(-308.999237, 196.316513, 123.224518, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part249.BottomSurface = Enum.SurfaceType.Smooth
Part249.TopSurface = Enum.SurfaceType.Smooth
Part249.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part249.Position = Vector3.new(-308.999237, 196.316513, 123.224518)
Part249.Orientation = Vector3.new(0, -15.0899992, 0)
Part249.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part250.Parent = Model0
Part250.Material = Enum.Material.Slate
Part250.BrickColor = BrickColor.new("Reddish brown")
Part250.Rotation = Vector3.new(0, 34.3199997, 0)
Part250.Anchored = true
Part250.FormFactor = Enum.FormFactor.Custom
Part250.Size = Vector3.new(54.4599991, 242.389999, 107.01001)
Part250.CFrame = CFrame.new(-273.875885, 225.171494, 206.959167, 0.825854123, -6.2308871e-08, 0.563883662, 1.28974747e-07, 1, -7.84002125e-08, -0.563883662, 1.37470835e-07, 0.825854123)
Part250.BottomSurface = Enum.SurfaceType.Smooth
Part250.TopSurface = Enum.SurfaceType.Smooth
Part250.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part250.Position = Vector3.new(-273.875885, 225.171494, 206.959167)
Part250.Orientation = Vector3.new(0, 34.3199997, 0)
Part250.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part251.Parent = Model0
Part251.Material = Enum.Material.Slate
Part251.BrickColor = BrickColor.new("Reddish brown")
Part251.Rotation = Vector3.new(0, 63.4499969, 0)
Part251.Anchored = true
Part251.FormFactor = Enum.FormFactor.Custom
Part251.Size = Vector3.new(64.8799973, 238.319916, 107.01001)
Part251.CFrame = CFrame.new(-220.557251, 226.886215, 250.978546, 0.446960419, -1.07431411e-07, 0.894553781, 1.00841454e-07, 1, 6.97099551e-08, -0.894553781, 5.90493379e-08, 0.446960419)
Part251.BottomSurface = Enum.SurfaceType.Smooth
Part251.TopSurface = Enum.SurfaceType.Smooth
Part251.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part251.Position = Vector3.new(-220.557251, 226.886215, 250.978546)
Part251.Orientation = Vector3.new(0, 63.4499969, 0)
Part251.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part252.Parent = Model0
Part252.Material = Enum.Material.Slate
Part252.BrickColor = BrickColor.new("Reddish brown")
Part252.Rotation = Vector3.new(0, 81.6100006, 0)
Part252.Anchored = true
Part252.FormFactor = Enum.FormFactor.Custom
Part252.Size = Vector3.new(64.8799973, 245.209946, 107.01001)
Part252.CFrame = CFrame.new(-138.987366, 226.210922, 279.63855, 0.145920724, 5.25884936e-09, 0.989296377, -1.85410428e-07, 1, 2.20322818e-08, -0.989296377, -1.86642055e-07, 0.145920724)
Part252.BottomSurface = Enum.SurfaceType.Smooth
Part252.TopSurface = Enum.SurfaceType.Smooth
Part252.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part252.Position = Vector3.new(-138.987366, 226.210922, 279.63855)
Part252.Orientation = Vector3.new(0, 81.6100006, 0)
Part252.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part253.Parent = Model0
Part253.Material = Enum.Material.Slate
Part253.BrickColor = BrickColor.new("Reddish brown")
Part253.Rotation = Vector3.new(0, 56.3099976, -180)
Part253.Anchored = true
Part253.FormFactor = Enum.FormFactor.Custom
Part253.Size = Vector3.new(73.1799927, 250.989914, 146.040009)
Part253.CFrame = CFrame.new(124.948357, 226.214172, -182.438599, -0.554677486, 2.14589562e-07, 0.832065761, -3.27355956e-08, -1, 2.36075294e-07, 0.832065761, 1.03709674e-07, 0.554677486)
Part253.BottomSurface = Enum.SurfaceType.Smooth
Part253.TopSurface = Enum.SurfaceType.Smooth
Part253.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part253.Position = Vector3.new(124.948357, 226.214172, -182.438599)
Part253.Orientation = Vector3.new(0, 56.3099976, -180)
Part253.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part254.Parent = Model0
Part254.Material = Enum.Material.Slate
Part254.BrickColor = BrickColor.new("Reddish brown")
Part254.Rotation = Vector3.new(0, 71.3600006, -180)
Part254.Anchored = true
Part254.FormFactor = Enum.FormFactor.Custom
Part254.Size = Vector3.new(64.8799973, 246.719986, 107.01001)
Part254.CFrame = CFrame.new(31.3915329, 224.598816, -229.216278, -0.319546074, 6.68061375e-08, 0.94757092, 2.36424938e-07, -1, 1.50230463e-07, 0.94757092, 2.7203626e-07, 0.319546074)
Part254.BottomSurface = Enum.SurfaceType.Smooth
Part254.TopSurface = Enum.SurfaceType.Smooth
Part254.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part254.Position = Vector3.new(31.3915329, 224.598816, -229.216278)
Part254.Orientation = Vector3.new(0, 71.3600006, 180)
Part254.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part255.Parent = Model0
Part255.Material = Enum.Material.Slate
Part255.BrickColor = BrickColor.new("Reddish brown")
Part255.Rotation = Vector3.new(-180, 89.4300003, 0)
Part255.Anchored = true
Part255.FormFactor = Enum.FormFactor.Custom
Part255.Size = Vector3.new(64.8799973, 243.809937, 107.01001)
Part255.CFrame = CFrame.new(-23.6081619, 223.463318, -229.216278, 0.00998787023, 2.96184606e-08, 0.999950111, 3.41868997e-07, -1, 2.62051447e-08, 0.999950111, 3.41591459e-07, -0.00998787023)
Part255.BottomSurface = Enum.SurfaceType.Smooth
Part255.TopSurface = Enum.SurfaceType.Smooth
Part255.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part255.Position = Vector3.new(-23.6081619, 223.463318, -229.216278)
Part255.Orientation = Vector3.new(0, 90.5699997, 180)
Part255.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part256.Parent = Model0
Part256.Material = Enum.Material.Slate
Part256.BrickColor = BrickColor.new("Reddish brown")
Part256.Rotation = Vector3.new(180, 81.6100006, 0)
Part256.Anchored = true
Part256.FormFactor = Enum.FormFactor.Custom
Part256.Size = Vector3.new(64.8799973, 245.209946, 107.01001)
Part256.CFrame = CFrame.new(-114.417274, 225.713196, -217.066254, 0.145920724, 5.25884936e-09, 0.989296377, 1.85410428e-07, -1, -2.20322818e-08, 0.989296377, 1.86642055e-07, -0.145920724)
Part256.BottomSurface = Enum.SurfaceType.Smooth
Part256.TopSurface = Enum.SurfaceType.Smooth
Part256.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part256.Position = Vector3.new(-114.417274, 225.713196, -217.066254)
Part256.Orientation = Vector3.new(0, 98.3899994, 180)
Part256.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part257.Parent = Model0
Part257.Material = Enum.Material.Slate
Part257.BrickColor = BrickColor.new("Reddish brown")
Part257.Rotation = Vector3.new(180, 63.4499969, 0)
Part257.Anchored = true
Part257.FormFactor = Enum.FormFactor.Custom
Part257.Size = Vector3.new(64.8799973, 238.319916, 107.01001)
Part257.CFrame = CFrame.new(-195.987122, 224.007996, -188.406189, 0.446960419, -1.07431411e-07, 0.894553781, -1.00841454e-07, -1, -6.97099551e-08, 0.894553781, -5.90493379e-08, -0.446960419)
Part257.BottomSurface = Enum.SurfaceType.Smooth
Part257.TopSurface = Enum.SurfaceType.Smooth
Part257.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part257.Position = Vector3.new(-195.987122, 224.007996, -188.406189)
Part257.Orientation = Vector3.new(0, 116.549995, -180)
Part257.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part258.Parent = Model0
Part258.Material = Enum.Material.Slate
Part258.BrickColor = BrickColor.new("Reddish brown")
Part258.Rotation = Vector3.new(0, -15.0899992, 0)
Part258.Anchored = true
Part258.FormFactor = Enum.FormFactor.Custom
Part258.Size = Vector3.new(80.0000076, 359.889893, 205.630005)
Part258.CFrame = CFrame.new(-251.009186, 194.501083, -174.235352, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part258.BottomSurface = Enum.SurfaceType.Smooth
Part258.TopSurface = Enum.SurfaceType.Smooth
Part258.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part258.Position = Vector3.new(-251.009186, 194.501083, -174.235352)
Part258.Orientation = Vector3.new(0, -15.0899992, 0)
Part258.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part259.Parent = Model0
Part259.Material = Enum.Material.Slate
Part259.BrickColor = BrickColor.new("Reddish brown")
Part259.Rotation = Vector3.new(0, -15.0899992, 0)
Part259.Anchored = true
Part259.FormFactor = Enum.FormFactor.Custom
Part259.Size = Vector3.new(80.0000076, 360.799927, 205.630005)
Part259.CFrame = CFrame.new(-308.999237, 196.316513, 123.224518, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part259.BottomSurface = Enum.SurfaceType.Smooth
Part259.TopSurface = Enum.SurfaceType.Smooth
Part259.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part259.Position = Vector3.new(-308.999237, 196.316513, 123.224518)
Part259.Orientation = Vector3.new(0, -15.0899992, 0)
Part259.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part260.Parent = Model0
Part260.Material = Enum.Material.Slate
Part260.BrickColor = BrickColor.new("Reddish brown")
Part260.Rotation = Vector3.new(0, 34.3199997, 0)
Part260.Anchored = true
Part260.FormFactor = Enum.FormFactor.Custom
Part260.Size = Vector3.new(54.4599991, 242.389999, 107.01001)
Part260.CFrame = CFrame.new(-273.875885, 225.171494, 206.959167, 0.825854123, -6.2308871e-08, 0.563883662, 1.28974747e-07, 1, -7.84002125e-08, -0.563883662, 1.37470835e-07, 0.825854123)
Part260.BottomSurface = Enum.SurfaceType.Smooth
Part260.TopSurface = Enum.SurfaceType.Smooth
Part260.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part260.Position = Vector3.new(-273.875885, 225.171494, 206.959167)
Part260.Orientation = Vector3.new(0, 34.3199997, 0)
Part260.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part261.Parent = Model0
Part261.Material = Enum.Material.Slate
Part261.BrickColor = BrickColor.new("Reddish brown")
Part261.Rotation = Vector3.new(0, 63.4499969, 0)
Part261.Anchored = true
Part261.FormFactor = Enum.FormFactor.Custom
Part261.Size = Vector3.new(64.8799973, 238.319916, 107.01001)
Part261.CFrame = CFrame.new(-220.557251, 226.886215, 250.978546, 0.446960419, -1.07431411e-07, 0.894553781, 1.00841454e-07, 1, 6.97099551e-08, -0.894553781, 5.90493379e-08, 0.446960419)
Part261.BottomSurface = Enum.SurfaceType.Smooth
Part261.TopSurface = Enum.SurfaceType.Smooth
Part261.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part261.Position = Vector3.new(-220.557251, 226.886215, 250.978546)
Part261.Orientation = Vector3.new(0, 63.4499969, 0)
Part261.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part262.Parent = Model0
Part262.Material = Enum.Material.Slate
Part262.BrickColor = BrickColor.new("Reddish brown")
Part262.Rotation = Vector3.new(0, 81.6100006, 0)
Part262.Anchored = true
Part262.FormFactor = Enum.FormFactor.Custom
Part262.Size = Vector3.new(64.8799973, 245.209946, 107.01001)
Part262.CFrame = CFrame.new(-138.987366, 226.210922, 279.63855, 0.145920724, 5.25884936e-09, 0.989296377, -1.85410428e-07, 1, 2.20322818e-08, -0.989296377, -1.86642055e-07, 0.145920724)
Part262.BottomSurface = Enum.SurfaceType.Smooth
Part262.TopSurface = Enum.SurfaceType.Smooth
Part262.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part262.Position = Vector3.new(-138.987366, 226.210922, 279.63855)
Part262.Orientation = Vector3.new(0, 81.6100006, 0)
Part262.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part263.Parent = Model0
Part263.Material = Enum.Material.Slate
Part263.BrickColor = BrickColor.new("Bright blue")
Part263.Rotation = Vector3.new(0, -15.0899992, 0)
Part263.Anchored = true
Part263.CanCollide = false
Part263.FormFactor = Enum.FormFactor.Custom
Part263.Size = Vector3.new(249.569962, 1.0999999, 122.190002)
Part263.CFrame = CFrame.new(-187.588562, 108.349632, -10.0257416, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part263.BottomSurface = Enum.SurfaceType.Smooth
Part263.TopSurface = Enum.SurfaceType.Smooth
Part263.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part263.Position = Vector3.new(-187.588562, 108.349632, -10.0257416)
Part263.Orientation = Vector3.new(0, -15.0899992, 0)
Part263.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part264.Parent = Model0
Part264.Material = Enum.Material.Slate
Part264.BrickColor = BrickColor.new("Medium blue")
Part264.Rotation = Vector3.new(-2.29999995, -14.9499998, -0.280000001)
Part264.Anchored = true
Part264.FormFactor = Enum.FormFactor.Custom
Part264.Size = Vector3.new(229.329727, 46.3800163, 4.58002758)
Part264.CFrame = CFrame.new(-210.010223, 84.2863388, -64.5812073, 0.966130555, 0.00478623714, -0.258008242, 0.00540232612, 0.999233365, 0.0387666263, 0.257995903, -0.0388475917, 0.965364099)
Part264.BottomSurface = Enum.SurfaceType.Smooth
Part264.TopSurface = Enum.SurfaceType.Smooth
Part264.Color = Color3.new(0.431373, 0.6, 0.792157)
Part264.Position = Vector3.new(-210.010223, 84.2863388, -64.5812073)
Part264.Orientation = Vector3.new(-2.22000003, -14.96, 0.310000002)
Part264.Color = Color3.new(0.431373, 0.6, 0.792157)
Part265.Parent = Model0
Part265.Material = Enum.Material.Slate
Part265.BrickColor = BrickColor.new("Reddish brown")
Part265.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part265.Anchored = true
Part265.FormFactor = Enum.FormFactor.Custom
Part265.Size = Vector3.new(25.1999149, 10.0499945, 71.8300781)
Part265.CFrame = CFrame.new(-166.486359, 185.337524, -18.1788635, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part265.BottomSurface = Enum.SurfaceType.Smooth
Part265.TopSurface = Enum.SurfaceType.Smooth
Part265.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part265.Position = Vector3.new(-166.486359, 185.337524, -18.1788635)
Part265.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part265.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part266.Parent = Model0
Part266.Material = Enum.Material.Slate
Part266.BrickColor = BrickColor.new("Reddish brown")
Part266.Rotation = Vector3.new(0.189999998, -15.7699995, -0.689999998)
Part266.Anchored = true
Part266.FormFactor = Enum.FormFactor.Custom
Part266.Size = Vector3.new(25.1999149, 10.0499945, 81.9400711)
Part266.CFrame = CFrame.new(-208.152252, 185.983246, -134.743469, 0.962269604, 0.0116089918, -0.271850556, -0.0129715214, 0.999910414, -0.00321583543, 0.2717897, 0.0066208858, 0.962334394)
Part266.BottomSurface = Enum.SurfaceType.Smooth
Part266.TopSurface = Enum.SurfaceType.Smooth
Part266.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part266.Position = Vector3.new(-208.152252, 185.983246, -134.743469)
Part266.Orientation = Vector3.new(0.179999992, -15.7699995, -0.74000001)
Part266.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part267.Parent = Model0
Part267.Material = Enum.Material.Slate
Part267.BrickColor = BrickColor.new("Reddish brown")
Part267.Rotation = Vector3.new(69.0499954, 73.6899948, -65.0400009)
Part267.Anchored = true
Part267.FormFactor = Enum.FormFactor.Custom
Part267.Size = Vector3.new(25.1999149, 10.0499945, 218.269989)
Part267.CFrame = CFrame.new(-87.252388, 157.881317, -147.822784, 0.118536167, 0.25461784, 0.959749997, 0.0541646183, 0.963466525, -0.262293875, -0.991471708, 0.0830756277, 0.100413837)
Part267.BottomSurface = Enum.SurfaceType.Smooth
Part267.TopSurface = Enum.SurfaceType.Smooth
Part267.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part267.Position = Vector3.new(-87.252388, 157.881317, -147.822784)
Part267.Orientation = Vector3.new(15.21, 84.0299988, 3.22000003)
Part267.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part268.Parent = Model0
Part268.Material = Enum.Material.Slate
Part268.BrickColor = BrickColor.new("Reddish brown")
Part268.Rotation = Vector3.new(0, 90, 0)
Part268.Anchored = true
Part268.FormFactor = Enum.FormFactor.Custom
Part268.Size = Vector3.new(83.9798965, 46.1800003, 85.3300781)
Part268.CFrame = CFrame.new(-77.8413162, 120.018593, -124.454651, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part268.BottomSurface = Enum.SurfaceType.Smooth
Part268.TopSurface = Enum.SurfaceType.Smooth
Part268.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part268.Position = Vector3.new(-77.8413162, 120.018593, -124.454651)
Part268.Orientation = Vector3.new(0, 90, 0)
Part268.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part269.Parent = Model0
Part269.Material = Enum.Material.Slate
Part269.BrickColor = BrickColor.new("Reddish brown")
Part269.Rotation = Vector3.new(180, 42.8199997, -180)
Part269.Anchored = true
Part269.FormFactor = Enum.FormFactor.Custom
Part269.Size = Vector3.new(71.0498962, 46.1800003, 85.3300781)
Part269.CFrame = CFrame.new(-32.7831802, 115.408318, -92.6489258, -0.733469248, 1.05876385e-09, 0.679722488, -2.75301044e-08, 1, -3.12646016e-08, -0.679722488, -4.1644391e-08, -0.733469248)
Part269.BottomSurface = Enum.SurfaceType.Smooth
Part269.TopSurface = Enum.SurfaceType.Smooth
Part269.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part269.Position = Vector3.new(-32.7831802, 115.408318, -92.6489258)
Part269.Orientation = Vector3.new(0, 137.179993, 0)
Part269.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part270.Parent = Model0
Part270.Material = Enum.Material.Slate
Part270.BrickColor = BrickColor.new("Reddish brown")
Part270.Rotation = Vector3.new(180, 3.61999989, 180)
Part270.Anchored = true
Part270.FormFactor = Enum.FormFactor.Custom
Part270.Size = Vector3.new(83.9798965, 46.1800003, 85.3300781)
Part270.CFrame = CFrame.new(-3.95131683, 111.828362, -131.594513, -0.99799931, -2.54983608e-08, 0.0632228851, -2.75301044e-08, 1, -3.12646016e-08, -0.0632228851, -3.29425305e-08, -0.99799931)
Part270.BottomSurface = Enum.SurfaceType.Smooth
Part270.TopSurface = Enum.SurfaceType.Smooth
Part270.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part270.Position = Vector3.new(-3.95131683, 111.828362, -131.594513)
Part270.Orientation = Vector3.new(0, 176.37999, 0)
Part270.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part271.Parent = Model0
Part271.Material = Enum.Material.Slate
Part271.BrickColor = BrickColor.new("Medium blue")
Part271.Rotation = Vector3.new(12.9699993, -14.9499998, 3.39999986)
Part271.Anchored = true
Part271.FormFactor = Enum.FormFactor.Custom
Part271.Size = Vector3.new(213.809799, 46.3800163, 10.4300299)
Part271.CFrame = CFrame.new(-219.704315, 83.8214493, 38.5687561, 0.964444339, -0.0572940074, -0.258001149, 7.07069816e-08, 0.976218998, -0.216787487, 0.26428628, 0.209079444, 0.941508532)
Part271.BottomSurface = Enum.SurfaceType.Smooth
Part271.TopSurface = Enum.SurfaceType.Smooth
Part271.Color = Color3.new(0.431373, 0.6, 0.792157)
Part271.Position = Vector3.new(-219.704315, 83.8214493, 38.5687561)
Part271.Orientation = Vector3.new(12.5199995, -15.3199997, 0)
Part271.Color = Color3.new(0.431373, 0.6, 0.792157)
Part272.Parent = Model0
Part272.Material = Enum.Material.Slate
Part272.BrickColor = BrickColor.new("Medium blue")
Part272.Rotation = Vector3.new(7.87999964, -11.3000002, 2.07999992)
Part272.Anchored = true
Part272.FormFactor = Enum.FormFactor.Custom
Part272.Size = Vector3.new(75.939888, 21.9900036, 8.65003204)
Part272.CFrame = CFrame.new(-93.0938492, 96.4971924, 73.8180695, 0.979960978, -0.0355929993, -0.19598411, 0.00911765918, 0.990889788, -0.134367004, 0.198981196, 0.129887491, 0.971357644)
Part272.BottomSurface = Enum.SurfaceType.Smooth
Part272.TopSurface = Enum.SurfaceType.Smooth
Part272.Color = Color3.new(0.431373, 0.6, 0.792157)
Part272.Position = Vector3.new(-93.0938492, 96.4971924, 73.8180695)
Part272.Orientation = Vector3.new(7.71999979, -11.4099998, 0.529999971)
Part272.Color = Color3.new(0.431373, 0.6, 0.792157)
Part273.Parent = Model0
Part273.Material = Enum.Material.Slate
Part273.BrickColor = BrickColor.new("Medium blue")
Part273.Rotation = Vector3.new(12.5199995, 0, 0)
Part273.Anchored = true
Part273.FormFactor = Enum.FormFactor.Custom
Part273.Size = Vector3.new(223.239838, 51.25, 6.60003185)
Part273.CFrame = CFrame.new(30.3502121, 82.2113419, 72.6089325, 1, 0, 0, 0, 0.976218998, -0.216787487, 0, 0.216787487, 0.976218998)
Part273.BottomSurface = Enum.SurfaceType.Smooth
Part273.TopSurface = Enum.SurfaceType.Smooth
Part273.Color = Color3.new(0.431373, 0.6, 0.792157)
Part273.Position = Vector3.new(30.3502121, 82.2113419, 72.6089325)
Part273.Orientation = Vector3.new(12.5199995, 0, 0)
Part273.Color = Color3.new(0.431373, 0.6, 0.792157)
Part274.Parent = Model0
Part274.Material = Enum.Material.Slate
Part274.BrickColor = BrickColor.new("Medium blue")
Part274.Rotation = Vector3.new(-88.659996, 27.75, 86.4599991)
Part274.Anchored = true
Part274.FormFactor = Enum.FormFactor.Custom
Part274.Size = Vector3.new(86.5497665, 19.1599941, 32.6100578)
Part274.CFrame = CFrame.new(-65.9732437, 67.2971649, 115.804031, 0.0546462499, -0.883275151, 0.465659231, -0.00546581671, 0.466084152, 0.884723306, -0.998490691, -0.0508924611, 0.0206419025)
Part274.BottomSurface = Enum.SurfaceType.Smooth
Part274.TopSurface = Enum.SurfaceType.Smooth
Part274.Color = Color3.new(0.431373, 0.6, 0.792157)
Part274.Position = Vector3.new(-65.9732437, 67.2971649, 115.804031)
Part274.Orientation = Vector3.new(-62.2199974, 87.4599991, -0.669999957)
Part274.Color = Color3.new(0.431373, 0.6, 0.792157)
Part275.Parent = Model0
Part275.Material = Enum.Material.Slate
Part275.BrickColor = BrickColor.new("Medium blue")
Part275.Rotation = Vector3.new(-44.9300003, 29.4399986, 25.9399986)
Part275.Anchored = true
Part275.FormFactor = Enum.FormFactor.Custom
Part275.Size = Vector3.new(77.3298111, 19.1599941, 39.0200348)
Part275.CFrame = CFrame.new(-81.8952713, 66.870636, 159.459076, 0.783111155, -0.380988926, 0.491512865, -0.00238078483, 0.788520813, 0.615003645, -0.621876419, -0.482786298, 0.616591752)
Part275.BottomSurface = Enum.SurfaceType.Smooth
Part275.TopSurface = Enum.SurfaceType.Smooth
Part275.Color = Color3.new(0.431373, 0.6, 0.792157)
Part275.Position = Vector3.new(-81.8952713, 66.870636, 159.459076)
Part275.Orientation = Vector3.new(-37.9500008, 38.5599976, -0.170000002)
Part275.Color = Color3.new(0.431373, 0.6, 0.792157)
Part276.Parent = Model0
Part276.Material = Enum.Material.Slate
Part276.BrickColor = BrickColor.new("Medium blue")
Part276.Rotation = Vector3.new(-23.6099987, 3.17999983, 0)
Part276.Anchored = true
Part276.FormFactor = Enum.FormFactor.Custom
Part276.Size = Vector3.new(64.4098511, 21.0999966, 45.940052)
Part276.CFrame = CFrame.new(-106.304756, 67.6358185, 174.678467, 0.998456001, 1.46924515e-06, 0.0555543415, -0.0222468749, 0.916327119, 0.399810612, -0.0509049967, -0.400428861, 0.914912522)
Part276.BottomSurface = Enum.SurfaceType.Smooth
Part276.TopSurface = Enum.SurfaceType.Smooth
Part276.Color = Color3.new(0.431373, 0.6, 0.792157)
Part276.Position = Vector3.new(-106.304756, 67.6358185, 174.678467)
Part276.Orientation = Vector3.new(-23.5699997, 3.47000003, -1.38999999)
Part276.Color = Color3.new(0.431373, 0.6, 0.792157)
Part277.Parent = Model0
Part277.Material = Enum.Material.Sand
Part277.BrickColor = BrickColor.new("Reddish brown")
Part277.Rotation = Vector3.new(2.95000005, 0, 0)
Part277.Anchored = true
Part277.FormFactor = Enum.FormFactor.Custom
Part277.Size = Vector3.new(267.599884, 6.80000162, 91.7700577)
Part277.CFrame = CFrame.new(8.51015472, 56.9624443, 5.40286255, 1, 3.5164065e-09, -1.81790014e-10, -3.52110208e-09, 0.998677969, -0.051401183, 7.96315271e-13, 0.051401183, 0.998677969)
Part277.BottomSurface = Enum.SurfaceType.Smooth
Part277.TopSurface = Enum.SurfaceType.Smooth
Part277.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part277.Position = Vector3.new(8.51015472, 56.9624443, 5.40286255)
Part277.Orientation = Vector3.new(2.95000005, 0, 0)
Part277.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part278.Parent = Model0
Part278.Material = Enum.Material.Sand
Part278.BrickColor = BrickColor.new("Reddish brown")
Part278.Rotation = Vector3.new(-3.41999984, 0, 0)
Part278.Anchored = true
Part278.FormFactor = Enum.FormFactor.Custom
Part278.Size = Vector3.new(267.599884, 6.80000162, 164.660049)
Part278.CFrame = CFrame.new(8.51016998, 61.6254234, 88.5427094, 1, 0, 0, 0, 0.99821502, 0.0597225726, 0, -0.0597225726, 0.99821502)
Part278.BottomSurface = Enum.SurfaceType.Smooth
Part278.TopSurface = Enum.SurfaceType.Smooth
Part278.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part278.Position = Vector3.new(8.51016998, 61.6254234, 88.5427094)
Part278.Orientation = Vector3.new(-3.41999984, 0, 0)
Part278.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part279.Parent = Model0
Part279.Material = Enum.Material.Slate
Part279.BrickColor = BrickColor.new("Bright blue")
Part279.Rotation = Vector3.new(0, -15.0899992, 0)
Part279.Anchored = true
Part279.CanCollide = false
Part279.FormFactor = Enum.FormFactor.Custom
Part279.Size = Vector3.new(249.569962, 1.0999999, 122.190002)
Part279.CFrame = CFrame.new(-187.588562, 108.008865, -10.0257416, 0.965504348, 1.57275821e-07, -0.260386199, -1.68655504e-07, 1, -2.13583178e-08, 0.260386199, 6.45388525e-08, 0.965504348)
Part279.BottomSurface = Enum.SurfaceType.Smooth
Part279.TopSurface = Enum.SurfaceType.Smooth
Part279.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part279.Position = Vector3.new(-187.588562, 108.008865, -10.0257416)
Part279.Orientation = Vector3.new(0, -15.0899992, 0)
Part279.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part280.Parent = Model0
Part280.Material = Enum.Material.Slate
Part280.BrickColor = BrickColor.new("Dark stone grey")
Part280.Rotation = Vector3.new(0, 41.3099976, -180)
Part280.Anchored = true
Part280.FormFactor = Enum.FormFactor.Custom
Part280.Size = Vector3.new(16.2000008, 3.50988197, 37.7199936)
Part280.CFrame = CFrame.new(-196.210205, 88.8952026, 192.487839, -0.751199186, 1.73437911e-07, 0.660073936, -4.3998844e-07, -0.999999166, 2.93272706e-07, 0.660073578, -4.93513198e-07, 0.751199245)
Part280.BottomSurface = Enum.SurfaceType.Smooth
Part280.TopSurface = Enum.SurfaceType.Smooth
Part280.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part280.Position = Vector3.new(-196.210205, 88.8952026, 192.487839)
Part280.Orientation = Vector3.new(0, 41.3099976, -180)
Part280.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part281.Parent = Model0
Part281.Material = Enum.Material.Slate
Part281.BrickColor = BrickColor.new("Dark stone grey")
Part281.Rotation = Vector3.new(0, 41.3099976, 0)
Part281.Anchored = true
Part281.FormFactor = Enum.FormFactor.Custom
Part281.Size = Vector3.new(83.9798965, 48.2199936, 125.660072)
Part281.CFrame = CFrame.new(-166.805389, 63.0303535, 225.007095, 0.751200259, 1.80281162e-07, 0.660074413, -4.97685164e-07, 1, 2.93273274e-07, -0.660074413, -5.48814398e-07, 0.751200259)
Part281.BottomSurface = Enum.SurfaceType.Smooth
Part281.TopSurface = Enum.SurfaceType.Smooth
Part281.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part281.Position = Vector3.new(-166.805389, 63.0303535, 225.007095)
Part281.Orientation = Vector3.new(0, 41.3099976, 0)
Part281.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part282.Parent = Model0
Part282.Material = Enum.Material.Slate
Part282.BrickColor = BrickColor.new("Dark stone grey")
Part282.Rotation = Vector3.new(0, 14.5099993, 0)
Part282.Anchored = true
Part282.FormFactor = Enum.FormFactor.Custom
Part282.Size = Vector3.new(83.9798965, 47.9799919, 150.230042)
Part282.CFrame = CFrame.new(-219.823273, 63.0904007, 123.682236, 0.968083501, 2.39589951e-07, 0.250629932, -2.61012502e-07, 1, 5.22360182e-08, -0.250629932, -1.15986495e-07, 0.968083501)
Part282.BottomSurface = Enum.SurfaceType.Smooth
Part282.TopSurface = Enum.SurfaceType.Smooth
Part282.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part282.Position = Vector3.new(-219.823273, 63.0904007, 123.682236)
Part282.Orientation = Vector3.new(0, 14.5099993, 0)
Part282.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part283.Parent = Model0
Part283.Material = Enum.Material.Slate
Part283.BrickColor = BrickColor.new("Dark stone grey")
Part283.Rotation = Vector3.new(-180, 83.2699966, 180)
Part283.Anchored = true
Part283.FormFactor = Enum.FormFactor.Custom
Part283.Size = Vector3.new(83.9798965, 48.2199936, 125.660072)
Part283.CFrame = CFrame.new(-77.606842, 63.0502014, 229.636963, -0.117272526, -3.49611611e-07, 0.993100107, -4.97685164e-07, 1, 2.93273274e-07, -0.993100107, -4.59858938e-07, -0.117272526)
Part283.BottomSurface = Enum.SurfaceType.Smooth
Part283.TopSurface = Enum.SurfaceType.Smooth
Part283.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part283.Position = Vector3.new(-77.606842, 63.0502014, 229.636963)
Part283.Orientation = Vector3.new(0, 96.7299957, 0)
Part283.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part284.Parent = Model0
Part284.Material = Enum.Material.Slate
Part284.BrickColor = BrickColor.new("Dark stone grey")
Part284.Rotation = Vector3.new(0, 73.5, 0)
Part284.Anchored = true
Part284.FormFactor = Enum.FormFactor.Custom
Part284.Size = Vector3.new(83.9798965, 48.2199936, 125.660072)
Part284.CFrame = CFrame.new(-152.845459, 63.0005226, 223.12709, 0.284058511, 2.38605349e-08, 0.958807111, -2.54510041e-07, 1, 5.05161637e-08, -0.958807111, -2.58375422e-07, 0.284058511)
Part284.BottomSurface = Enum.SurfaceType.Smooth
Part284.TopSurface = Enum.SurfaceType.Smooth
Part284.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part284.Position = Vector3.new(-152.845459, 63.0005226, 223.12709)
Part284.Orientation = Vector3.new(0, 73.5, 0)
Part284.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part285.Parent = Model0
Part285.Material = Enum.Material.Slate
Part285.BrickColor = BrickColor.new("Dark stone grey")
Part285.Rotation = Vector3.new(-180, 51.0699997, 180)
Part285.Anchored = true
Part285.FormFactor = Enum.FormFactor.Custom
Part285.Size = Vector3.new(83.9798965, 48.2199936, 125.660072)
Part285.CFrame = CFrame.new(-71.2338257, 63.0203705, 217.075317, -0.628324509, -1.99213801e-07, 0.777951837, -2.54510041e-07, 1, 5.05161637e-08, -0.777951837, -1.66255973e-07, -0.628324509)
Part285.BottomSurface = Enum.SurfaceType.Smooth
Part285.TopSurface = Enum.SurfaceType.Smooth
Part285.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part285.Position = Vector3.new(-71.2338257, 63.0203705, 217.075317)
Part285.Orientation = Vector3.new(0, 128.929993, 0)
Part285.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part286.Parent = Model0
Part286.Material = Enum.Material.Slate
Part286.BrickColor = BrickColor.new("Dark stone grey")
Part286.Rotation = Vector3.new(-180, 1.46999991, -180)
Part286.Anchored = true
Part286.FormFactor = Enum.FormFactor.Custom
Part286.Size = Vector3.new(48.4998856, 38.6999931, 163.330063)
Part286.CFrame = CFrame.new(-41.7149963, 85.0003815, 163.371658, -0.999670386, 5.6175023e-11, 0.0256570056, 6.31480007e-11, 1, 2.76113826e-10, -0.0256570056, 2.77634554e-10, -0.999670386)
Part286.BottomSurface = Enum.SurfaceType.Smooth
Part286.TopSurface = Enum.SurfaceType.Smooth
Part286.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part286.Position = Vector3.new(-41.7149963, 85.0003815, 163.371658)
Part286.Orientation = Vector3.new(0, 178.529999, 0)
Part286.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part287.Parent = Model0
Part287.Material = Enum.Material.Slate
Part287.BrickColor = BrickColor.new("Dark stone grey")
Part287.Rotation = Vector3.new(-180, 44.3999977, 180)
Part287.Anchored = true
Part287.FormFactor = Enum.FormFactor.Custom
Part287.Size = Vector3.new(48.4998856, 38.6999931, 85.3300781)
Part287.CFrame = CFrame.new(-79.9332275, 86.3103943, 275.591461, -0.714493215, -1.69772404e-10, 0.699642241, 2.52943977e-12, 1, 2.45428095e-10, -0.699642241, 1.77117779e-10, -0.714493215)
Part287.BottomSurface = Enum.SurfaceType.Smooth
Part287.TopSurface = Enum.SurfaceType.Smooth
Part287.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part287.Position = Vector3.new(-79.9332275, 86.3103943, 275.591461)
Part287.Orientation = Vector3.new(0, 135.599991, 0)
Part287.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part288.Parent = Model0
Part288.Material = Enum.Material.Slate
Part288.BrickColor = BrickColor.new("Dark stone grey")
Part288.Rotation = Vector3.new(-180, 79.0599976, 180)
Part288.Anchored = true
Part288.FormFactor = Enum.FormFactor.Custom
Part288.Size = Vector3.new(48.4998856, 38.6999931, 85.3300781)
Part288.CFrame = CFrame.new(-114.176788, 84.1305313, 284.431335, -0.189777181, -2.59075261e-10, 0.981827199, 6.31480007e-11, 1, 2.76113826e-10, -0.981827199, 1.14527797e-10, -0.189777181)
Part288.BottomSurface = Enum.SurfaceType.Smooth
Part288.TopSurface = Enum.SurfaceType.Smooth
Part288.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part288.Position = Vector3.new(-114.176788, 84.1305313, 284.431335)
Part288.Orientation = Vector3.new(0, 100.939995, 0)
Part288.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part289.Parent = Model0
Part289.Material = Enum.Material.Slate
Part289.BrickColor = BrickColor.new("Dark stone grey")
Part289.Rotation = Vector3.new(0, 58.0099983, 0)
Part289.Anchored = true
Part289.FormFactor = Enum.FormFactor.Custom
Part289.Size = Vector3.new(48.4998856, 38.6999931, 85.3300781)
Part289.CFrame = CFrame.new(-193.696747, 85.4405365, 263.82135, 0.529746652, -2.09464515e-10, 0.848155975, 2.52943977e-12, 1, 2.45428095e-10, -0.848155975, -1.27742095e-10, 0.529746652)
Part289.BottomSurface = Enum.SurfaceType.Smooth
Part289.TopSurface = Enum.SurfaceType.Smooth
Part289.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part289.Position = Vector3.new(-193.696747, 85.4405365, 263.82135)
Part289.Orientation = Vector3.new(0, 58.0099983, 0)
Part289.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part290.Parent = Model0
Part290.Material = Enum.Material.Slate
Part290.BrickColor = BrickColor.new("Dark stone grey")
Part290.Rotation = Vector3.new(0, 48.3699989, 0)
Part290.Anchored = true
Part290.FormFactor = Enum.FormFactor.Custom
Part290.Size = Vector3.new(48.4998856, 38.6999931, 73.3900757)
Part290.CFrame = CFrame.new(-232.920349, 86.5103683, 234.648315, 0.664355218, 5.66805198e-08, 0.747416854, -3.22175797e-09, 1, -7.29716376e-08, -0.747416854, 4.60712037e-08, 0.664355218)
Part290.BottomSurface = Enum.SurfaceType.Smooth
Part290.TopSurface = Enum.SurfaceType.Smooth
Part290.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part290.Position = Vector3.new(-232.920349, 86.5103683, 234.648315)
Part290.Orientation = Vector3.new(0, 48.3699989, 0)
Part290.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part291.Parent = Model0
Part291.Material = Enum.Material.Wood
Part291.BrickColor = BrickColor.new("Reddish brown")
Part291.Rotation = Vector3.new(138.919998, 0, 180)
Part291.Anchored = true
Part291.FormFactor = Enum.FormFactor.Custom
Part291.Size = Vector3.new(25.1999149, 2.54999399, 84.5300674)
Part291.CFrame = CFrame.new(63.7284012, 83.5370178, 47.4168549, -0.999999762, -2.13955502e-07, 7.92243156e-07, -7.57455553e-07, 0.753742039, -0.657170177, -5.45948978e-07, -0.657170415, -0.753742397)
Part291.BottomSurface = Enum.SurfaceType.Smooth
Part291.TopSurface = Enum.SurfaceType.Smooth
Part291.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part291.Position = Vector3.new(63.7284012, 83.5370178, 47.4168549)
Part291.Orientation = Vector3.new(41.079998, 180, 0)
Part291.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part292.Parent = Model0
Part292.Material = Enum.Material.Wood
Part292.BrickColor = BrickColor.new("Reddish brown")
Part292.Rotation = Vector3.new(138.919998, 0, 180)
Part292.Anchored = true
Part292.FormFactor = Enum.FormFactor.Custom
Part292.Size = Vector3.new(1.8099153, 2.54999399, 84.5300674)
Part292.CFrame = CFrame.new(52.0334244, 86.687027, 47.4168549, -0.999999762, -2.13955502e-07, 7.92243156e-07, -7.57455553e-07, 0.753742039, -0.657170177, -5.45948978e-07, -0.657170415, -0.753742397)
Part292.BottomSurface = Enum.SurfaceType.Smooth
Part292.TopSurface = Enum.SurfaceType.Smooth
Part292.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part292.Position = Vector3.new(52.0334244, 86.687027, 47.4168549)
Part292.Orientation = Vector3.new(41.079998, 180, 0)
Part292.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part293.Parent = Model0
Part293.Material = Enum.Material.Wood
Part293.BrickColor = BrickColor.new("Reddish brown")
Part293.Rotation = Vector3.new(138.919998, 0, 180)
Part293.Anchored = true
Part293.FormFactor = Enum.FormFactor.Custom
Part293.Size = Vector3.new(1.8099153, 2.54999399, 84.5300674)
Part293.CFrame = CFrame.new(75.6333694, 86.3470078, 47.4168549, -0.999999762, -2.13955502e-07, 7.92243156e-07, -7.57455553e-07, 0.753742039, -0.657170177, -5.45948978e-07, -0.657170415, -0.753742397)
Part293.BottomSurface = Enum.SurfaceType.Smooth
Part293.TopSurface = Enum.SurfaceType.Smooth
Part293.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part293.Position = Vector3.new(75.6333694, 86.3470078, 47.4168549)
Part293.Orientation = Vector3.new(41.079998, 180, 0)
Part293.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part294.Parent = Model0
Part294.Material = Enum.Material.Wood
Part294.BrickColor = BrickColor.new("Reddish brown")
Part294.Rotation = Vector3.new(-180, 3.79999995, 180)
Part294.Anchored = true
Part294.FormFactor = Enum.FormFactor.Custom
Part294.Size = Vector3.new(1.74992001, 2.47999477, 41.4300804)
Part294.CFrame = CFrame.new(76.866066, 62.4096832, 0.52154541, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part294.BottomSurface = Enum.SurfaceType.Smooth
Part294.TopSurface = Enum.SurfaceType.Smooth
Part294.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part294.Position = Vector3.new(76.866066, 62.4096832, 0.52154541)
Part294.Orientation = Vector3.new(0, 176.199997, 0)
Part294.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part295.Parent = Model0
Part295.Material = Enum.Material.Wood
Part295.BrickColor = BrickColor.new("Reddish brown")
Part295.Rotation = Vector3.new(-180, 3.79999995, 180)
Part295.Anchored = true
Part295.FormFactor = Enum.FormFactor.Custom
Part295.Size = Vector3.new(25.1999149, 2.54999399, 41.4300804)
Part295.CFrame = CFrame.new(65.0481949, 60.2946396, 1.20396423, -0.997796476, -3.84090448e-08, 0.0663452893, -1.13634897e-07, 0.999999821, 8.65179572e-09, -0.0663454086, 6.06981416e-08, -0.997796953)
Part295.BottomSurface = Enum.SurfaceType.Smooth
Part295.TopSurface = Enum.SurfaceType.Smooth
Part295.Color = Color3.new(0.411765, 0.25098, 0.156863)
Part295.Position = Vector3.new(65.0481949, 60.2946396, 1.20396423)
Part295.Orientation = Vector3.new(0, 176.199997, 0)
Part295.Color = Color3.new(0.411765, 0.25098, 0.156863)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
