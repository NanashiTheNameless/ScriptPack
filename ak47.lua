--if you still remember my m4 this like the same but more awesome more functions



-- Have fun YoungWarlock
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "AK-47"
t1 = Instance.new("Tool", m)
t1.Name = "AK-47"
t1.GripForward = Vector3.new(-0.258036137, 0, -0.966135323)
t1.GripPos = Vector3.new(0, -0.600000024, 0.200000003)
t1.GripRight = Vector3.new(0.966135323, 0, -0.258036137)
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Black")
p1.CFrame = CFrame.new(32.3103065, 1.34467649, 19.1913166, -0.236840531, 0.890679955, 0.38806361, -0.966548562, -0.256479144, -0.00122941914, 0.0984351635, -0.375373423, 0.9216308)
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.0803571492, 0.241071433, 0.482142866)
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Black")
p2.CFrame = CFrame.new(32.3104362, 1.27168703, 19.1911659, -0.240230083, 0.889771879, -0.38806361, 0.965295315, 0.261156857, 0.00122941914, 0.102439381, -0.374300569, -0.9216308)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.0803571492, 0.241071433, 0.482142866)
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Reddish brown")
p3.CFrame = CFrame.new(31.6097755, 1.30955815, 17.9325161, -0.00175453722, 0.921629846, -0.38806361, 0.999996126, 0.00242134929, 0.00122941914, 0.00207272917, -0.388059884, -0.9216308)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.224999994, 0.200000003, 0.687857151)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(1, 0.739286005, 1)
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Black")
p4.CFrame = CFrame.new(32.2739143, 1.27159107, 19.2065449, 0.236840621, 0.890680194, -0.38806361, 0.9665488, -0.256479204, 0.00122941914, -0.0984351933, -0.375373542, -0.9216308)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.0803571492, 0.241071433, 0.482142866)
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Black")
p5.CFrame = CFrame.new(32.2737846, 1.34458053, 19.2066956, 0.240230113, 0.889771998, 0.38806361, -0.965295434, 0.261156917, -0.00122941914, -0.102439396, -0.374300629, 0.9216308)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.0803571492, 0.241071433, 0.482142866)
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Black")
p6.CFrame = CFrame.new(32.2797546, 1.30810511, 19.200655, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.0803571492, 0.160714746, 0.241071433)
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Medium stone grey")
p7.Name = "Port1"
p7.CFrame = CFrame.new(31.3718891, 1.46110725, 17.5010242, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Offset = Vector3.new(0, 0, 0.00321428571)
b7.Scale = Vector3.new(0.369642824, 0.224999994, 0.0482142866)
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Medium stone grey")
p8.Name = "Port"
p8.CFrame = CFrame.new(31.3338451, 1.41948545, 17.3896904, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.250713527)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0482142866, 0.305357158, 1)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Black")
p9.CFrame = CFrame.new(31.8302479, 1.30875659, 18.5058136, 0.00175452209, 0.38806361, -0.921629906, -0.999996185, -0.00122941914, -0.00242137676, -0.00207272125, 0.9216308, 0.388059914)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.539999962, 0.200000003)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("CylinderMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.642857194, 1, 0.642857194)
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Black")
p10.CFrame = CFrame.new(31.615612, 1.31252873, 17.279623, -0.921629906, -0.00175452209, -0.38806361, -0.00242137676, 0.999996185, 0.00122941914, 0.388059914, 0.00207272125, -0.9216308)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=3270017"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.224999994, 0.224999994, 0.803571403)
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Black")
p11.CFrame = CFrame.new(31.3877449, 1.31108546, 17.0076256, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.321428567)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.321428597, 0.160714298, 1)
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Black")
p12.CFrame = CFrame.new(31.5095882, 1.31286454, 17.0278206, -0.921629906, -0.00175452209, -0.38806361, -0.00242137676, 0.999996185, 0.00122941914, 0.388059914, 0.00207272125, -0.9216308)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.224999994, 0.224999994, 1.60714281)
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Black")
p13.CFrame = CFrame.new(31.6162376, 1.3115375, 16.9829121, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("CylinderMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.482142866, 0.321428597, 0.482142866)
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Black")
p14.CFrame = CFrame.new(31.3924236, 1.3108989, 17.1015644, -0.00175452209, 0.921629906, -0.38806361, 0.999996185, 0.00242137676, 0.00122941914, 0.00207272125, -0.388059914, -0.9216308)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.200000003, 0.498214275)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.803571403, 0.160714298, 1)
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Black")
p15.CFrame = CFrame.new(31.5093365, 1.45589972, 17.0281162, 0.921629965, 0.00175452221, -0.38806361, 0.00242137699, -0.999996245, 0.00122941914, -0.388059944, -0.00207272149, -0.9216308)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("CylinderMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.482142866, 0.321428597, 0.482142866)
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Black")
p16.CFrame = CFrame.new(31.2704945, 1.31063282, 17.1267452, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.21214284, 0.289285719)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.883928537, 1, 1)
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Black")
p17.CFrame = CFrame.new(31.285778, 1.31054997, 17.1795979, 0.00175452232, 0.38806361, -0.921630025, -0.999996305, -0.00122941914, -0.00242137723, -0.00207272172, 0.9216308, 0.388059974)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.20892857, 1.01571441, 0.200000003)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("CylinderMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.20000005, 1, 0.771428585)
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Really black")
p18.Reflectance = 0.40000000596046
p18.Transparency = 0.89999997615814
p18.CFrame = CFrame.new(31.5251827, 1.31120789, 17.0648441, 0.00175452232, 0.38806361, -0.921630025, -0.999996305, -0.00122941914, -0.00242137723, -0.00207272172, 0.9216308, 0.388059974)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.20892857, 0.200000003, 0.200000003)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("CylinderMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.60000014, 0.803571403, 1.02857137)
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Black")
p19.Name = "Sights"
p19.CFrame = CFrame.new(31.524559, 1.31120992, 17.0633621, -0.921630025, -0.00175452232, -0.38806361, -0.00242137723, 0.999996305, 0.00122941914, 0.388059974, 0.00207272172, -0.9216308)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
g1 = Instance.new("BillboardGui", p19)
g1.Size = UDim2.new(0.02000000141561, 0, 0.02000000141561, 0)
o1 = Instance.new("ImageLabel", g1)
o1.Active = true
o1.BackgroundTransparency = 1
o1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o1.BorderSizePixel = 0
o1.Size = UDim2.new(1, 1, 1, 1)
o1.ClipsDescendants = true
o1.Image = "http://www.roblox.com/asset/?id=131394739"
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.192857146, 0.192857146, 3.21428561)
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Black")
p20.CFrame = CFrame.new(31.2406406, 1.31054711, 17.1428013, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.20892857, 0.200000003, 1.08642781)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(1, 0.401785702, 1)
p21 = Instance.new("Part", t1)
p21.BrickColor = BrickColor.new("Black")
p21.CFrame = CFrame.new(31.2925301, 1.41515493, 17.1176052, 0.38806361, -0.00175449485, -0.921630025, -0.00122941914, 0.999996305, -0.00242134742, 0.9216308, 0.00207271008, 0.388059974)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.28928566, 0.200000003, 0.200000003)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(1, 0.160714239, 0.819642603)
p22 = Instance.new("Part", t1)
p22.BrickColor = BrickColor.new("Black")
p22.CFrame = CFrame.new(31.2928963, 1.20622706, 17.1171722, -0.38806361, 0.00175449485, -0.921630025, 0.00122941914, -0.999996305, -0.00242134742, -0.9216308, -0.00207271008, 0.388059974)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.28928566, 0.200000003, 0.200000003)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p22)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(1, 0.160714239, 0.819642603)
p23 = Instance.new("Part", t1)
p23.BrickColor = BrickColor.new("Black")
p23.CFrame = CFrame.new(31.4347458, 1.31310153, 16.8500748, -0.921630025, -0.00175452232, -0.38806361, -0.00242137723, 0.999996305, 0.00122941914, 0.388059974, 0.00207272172, -0.9216308)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.20892857, 0.20892857, 0.482142866)
p24 = Instance.new("Part", t1)
p24.BrickColor = BrickColor.new("Black")
p24.CFrame = CFrame.new(31.0886955, 1.31117427, 16.7115402, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p24)
b24.MeshType = Enum.MeshType.Sphere
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.771428585, 0.771428585, 0.771428585)
p25 = Instance.new("Part", t1)
p25.BrickColor = BrickColor.new("Black")
p25.Name = "Handle"
p25.CFrame = CFrame.new(31.0879955, 1.31025803, 17.1530151, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.241071433, 0.241071492, 1.15392864)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
x1 = Instance.new("Sound", p25)
x1.Name = "ChargingHandleBack"
x1.Pitch = 0.89999997615814
x1.SoundId = "http://www.roblox.com/asset/?id=94191778"
x1.Volume = 1
x1.Looped = false
x1.PlayOnRemove = false
x2 = Instance.new("Sound", p25)
x2.Name = "ChargingHandleForward"
x2.Pitch = 2
x2.SoundId = "http://roblox.com/asset/?id=10209636"
x2.Volume = 1
x2.Looped = false
x2.PlayOnRemove = false
x3 = Instance.new("Sound", p25)
x3.Name = "FireModeClick"
x3.Pitch = 1.5
x3.SoundId = "rbxasset://sounds/switch.wav"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p25)
x4.Name = "MagazineIn"
x4.Pitch = 1.2000000476837
x4.SoundId = "http://roblox.com/asset/?id=10209834"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
x5 = Instance.new("Sound", p25)
x5.Name = "MagazineOut"
x5.Pitch = 0.80000001192093
x5.SoundId = "http://roblox.com/asset/?id=10209834"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = false
x6 = Instance.new("Sound", p25)
x6.Name = "NoAmmoClick"
x6.Pitch = 2
x6.SoundId = "rbxasset://sounds/switch.wav"
x6.Volume = 1
x6.Looped = false
x6.PlayOnRemove = false
x7 = Instance.new("Sound", p25)
x7.Name = "ShootSound"
x7.Pitch = 0.80000001192093
x7.SoundId = "http://roblox.com/asset/?id=10209859 "
x7.Volume = 1
x7.Looped = false
x7.PlayOnRemove = false
b25 = Instance.new("BlockMesh", p25)
b25.Name = "Mesh"
p26 = Instance.new("Part", t1)
p26.BrickColor = BrickColor.new("Black")
p26.CFrame = CFrame.new(31.667305, 1.30887771, 18.3093605, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.308571488, 0.200000003)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.964285731, 1, 0.224999934)
p27 = Instance.new("Part", t1)
p27.BrickColor = BrickColor.new("Black")
p27.CFrame = CFrame.new(32.155098, 1.30777013, 19.2566147, -0.00175452232, 0.921630025, -0.38806361, 0.999996305, 0.00242137723, 0.00122941914, 0.00207272172, -0.388059974, -0.9216308)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.241071433, 0.200000003)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("BlockMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.401785702, 1, 0.482142866)
p28 = Instance.new("Part", t1)
p28.BrickColor = BrickColor.new("Black")
p28.CFrame = CFrame.new(32.127037, 1.30785906, 19.18997, 0.00175452232, 0.921630025, 0.38806361, -0.999996305, 0.00242137723, -0.00122941914, -0.00207272172, -0.388059974, 0.9216308)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.241071433, 0.200000003)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p28)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.401785702, 1, 0.241071433)
p29 = Instance.new("Part", t1)
p29.BrickColor = BrickColor.new("Black")
p29.CFrame = CFrame.new(31.0444984, 1.31111443, 16.7030659, -0.00175452232, 0.9821015, 0.188339919, 0.999996305, 0.00133274868, 0.00236607715, 0.00207272172, 0.188343376, -0.982100129)
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("CylinderMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(1.06071436, 0.433928847, 0.771428585)
p30 = Instance.new("Part", t1)
p30.BrickColor = BrickColor.new("Black")
p30.CFrame = CFrame.new(31.0156441, 1.3112427, 16.616745, 0.00175452232, 0.921630025, 0.388063669, -0.999996305, 0.00242137746, -0.00122941926, -0.00207272172, -0.388060004, 0.9216308)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.20892857, 0.200000003, 0.200000003)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p30)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(1, 0.433928549, 0.28928569)
p31 = Instance.new("Part", t1)
p31.BrickColor = BrickColor.new("Black")
p31.CFrame = CFrame.new(31.8688736, 1.30831659, 18.7507019, -0.00175452232, 0.789788008, -0.613376141, 0.999996305, 0.00265706819, 0.000560829241, 0.00207272172, -0.613372803, -0.789789677)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("BlockMesh", p31)
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.482142866, 0.964285433, 0.482142866)
p32 = Instance.new("Part", t1)
p32.BrickColor = BrickColor.new("Reddish brown")
p32.CFrame = CFrame.new(30.7794342, 1.31128716, 16.3953476, -0.00175452232, 0.921630085, -0.388063669, 0.999996305, 0.00242137769, 0.00122941937, 0.00207272172, -0.388060063, -0.921630859)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.224999994, 0.241071433, 0.200000003)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p32)
b32.MeshType = Enum.MeshType.Wedge
b32.Name = "Mesh"
b32.Scale = Vector3.new(1, 1, 0.803571403)
p33 = Instance.new("Part", t1)
p33.BrickColor = BrickColor.new("Reddish brown")
p33.CFrame = CFrame.new(30.5232811, 1.31116307, 16.23839, -0.00175452232, 0.774681687, -0.632347941, 0.999996305, 0.00266988715, 0.000496231427, 0.00207272172, -0.632344723, -0.774683475)
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.224999994, 0.241071433, 1.1378572)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("BlockMesh", p33)
b33.Name = "Mesh"
p34 = Instance.new("Part", t1)
p34.BrickColor = BrickColor.new("Reddish brown")
p34.CFrame = CFrame.new(30.8466625, 1.31046319, 16.8497696, -0.00175452232, 0.37728852, -0.926093519, 0.999996305, 0.00258150394, -0.000842841808, 0.00207272172, -0.926091552, -0.37729165)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 0.200000003, 0.260357082)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.964285731, 0.883928537, 1)
p35 = Instance.new("Part", t1)
p35.BrickColor = BrickColor.new("Reddish brown")
p35.CFrame = CFrame.new(31.4542503, 1.30914927, 17.9979935, -0.00175452232, 0.921630263, -0.388063759, 0.999996305, 0.00242137816, 0.00122941984, 0.00207272172, -0.388060153, -0.921631098)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.257142872, 0.200000003, 0.687857151)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(1, 0.98035717, 1)
p36 = Instance.new("Part", t1)
p36.BrickColor = BrickColor.new("Reddish brown")
p36.CFrame = CFrame.new(30.5874958, 1.3118093, 15.9809217, -0.00175452232, 0.921630383, -0.388063818, 0.999996305, 0.00242137839, 0.00122941996, 0.00207272172, -0.388060212, -0.921631217)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.224999994, 0.273214281, 0.752142906)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("BlockMesh", p36)
b36.Name = "Mesh"
p37 = Instance.new("Part", t1)
p37.BrickColor = BrickColor.new("Black")
p37.CFrame = CFrame.new(31.6022949, 1.3086201, 18.3785877, 0.00175452232, 0.388063878, -0.921630502, -0.999996305, -0.00122942007, -0.00242137862, -0.00207272172, 0.921631336, 0.388060272)
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("CylinderMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.723214269, 0.642857194, 0.723214269)
p38 = Instance.new("Part", t1)
p38.BrickColor = BrickColor.new("Black")
p38.CFrame = CFrame.new(30.9665375, 1.30993891, 17.204155, 0.00175452232, -0.921630502, -0.388063878, -0.999996305, -0.00242137862, 0.00122942007, -0.00207272172, 0.388060272, -0.921631336)
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.241071433, 0.200000003, 1.15392864)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Wedge
b38.Name = "Mesh"
b38.Scale = Vector3.new(1, 0.112499982, 1)
p39 = Instance.new("Part", t1)
p39.BrickColor = BrickColor.new("Dark stone grey")
p39.CFrame = CFrame.new(30.8612194, 1.31009233, 17.040987, -0.00175452232, 0.921630502, -0.388063878, 0.999996305, 0.00242137862, 0.00122942007, 0.00207272172, -0.388060272, -0.921631336)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.401785702, 0.321428597, 0.241071433)
p40 = Instance.new("Part", t1)
p40.BrickColor = BrickColor.new("Black")
p40.CFrame = CFrame.new(30.2878265, 1.31190026, 15.6833582, -0.00175452232, 0.921630621, -0.388063937, 0.999996305, 0.00242137886, 0.00122942019, 0.00207272172, -0.388060331, -0.921631455)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.224999994, 0.594642878, 0.200000003)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(1, 1, 0.144643098)
p41 = Instance.new("Part", t1)
p41.BrickColor = BrickColor.new("Reddish brown")
p41.CFrame = CFrame.new(30.7554321, 1.31016135, 16.9181252, -0.00175452232, 0.92163074, -0.388063997, 0.999996305, 0.00242137909, 0.0012294203, 0.00207272172, -0.388060391, -0.921631575)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.200000003, 0.200000003, 0.241071403)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("BlockMesh", p41)
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.964285731, 0.787500083, 1)
p42 = Instance.new("Part", t1)
p42.BrickColor = BrickColor.new("Reddish brown")
p42.CFrame = CFrame.new(30.3795872, 1.31087995, 16.2533035, 0.00175452232, -0.92163074, -0.388063997, -0.999996305, -0.00242137909, 0.0012294203, -0.00207272172, 0.388060391, -0.921631575)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.224999994, 0.321428567, 1.09285712)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p42)
b42.MeshType = Enum.MeshType.Wedge
b42.Name = "Mesh"
p43 = Instance.new("Part", t1)
p43.BrickColor = BrickColor.new("Black")
p43.CFrame = CFrame.new(31.8162155, 1.30794239, 18.8866329, 0.00175452232, 0.388063997, -0.92163074, -0.999996305, -0.0012294203, -0.00242137909, -0.00207272172, 0.921631575, 0.388060391)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.200000003, 1.16678572, 0.200000003)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("CylinderMesh", p43)
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.5625, 1, 0.5625)
p44 = Instance.new("Part", t1)
p44.BrickColor = BrickColor.new("Black")
p44.CFrame = CFrame.new(31.7900219, 1.30802536, 18.8244247, 0.00175452232, 0.388063997, -0.92163074, -0.999996305, -0.0012294203, -0.00242137909, -0.00207272172, 0.921631575, 0.388060391)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.200000003, 0.20892857, 0.200000003)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("CylinderMesh", p44)
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.642857194, 1, 0.642857194)
p45 = Instance.new("Part", t1)
p45.BrickColor = BrickColor.new("Dark stone grey")
p45.CFrame = CFrame.new(30.8221836, 1.30993903, 17.0818882, -0.00175452232, 0.37728858, -0.926093936, 0.999996305, 0.00258150487, -0.000842842215, 0.00207272172, -0.926092029, -0.377291739)
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("BlockMesh", p45)
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.401785702, 0.482142866, 0.176785722)
p46 = Instance.new("Part", t1)
p46.BrickColor = BrickColor.new("Reddish brown")
p46.CFrame = CFrame.new(31.3490887, 1.30887294, 18.0422707, 0.00175452232, -0.921630561, -0.388063967, -0.999996305, -0.00242137886, 0.00122942019, -0.00207272172, 0.388060361, -0.921631455)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.257142872, 0.200000003, 0.687856853)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p46)
b46.MeshType = Enum.MeshType.Wedge
b46.Name = "Mesh"
b46.Scale = Vector3.new(1, 0.160714298, 1)
p47 = Instance.new("Part", t1)
p47.BrickColor = BrickColor.new("Black")
p47.CFrame = CFrame.new(30.941988, 1.30959606, 17.3487625, -0.00175452232, 0.921630561, -0.388063967, 0.999996305, 0.00242137886, 0.00122942019, 0.00207272172, -0.388060361, -0.921631455)
p47.CanCollide = false
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("BlockMesh", p47)
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.964285731, 0.867857158, 0.626785815)
p48 = Instance.new("Part", t1)
p48.BrickColor = BrickColor.new("Black")
p48.CFrame = CFrame.new(30.7297916, 1.30981731, 17.0623837, -0.00175452232, 0.926093817, 0.37728855, 0.999996305, 0.000842841866, 0.00258150464, 0.00207272172, 0.377291769, -0.926091909)
p48.CanCollide = false
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("BlockMesh", p48)
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.5625, 0.0482142866, 0.305357665)
p49 = Instance.new("Part", t1)
p49.BrickColor = BrickColor.new("Black")
p49.CFrame = CFrame.new(31.9927158, 1.30738318, 19.3058147, 0.00175452232, 0.388063937, -0.921630442, -0.999996305, -0.00122942007, -0.00242137862, -0.00207272172, 0.921631336, 0.388060302)
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("CylinderMesh", p49)
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.642857194, 0.964285731, 0.642857194)
p50 = Instance.new("Part", t1)
p50.BrickColor = BrickColor.new("Black")
p50.CFrame = CFrame.new(30.8383045, 1.30947351, 17.3201218, -0.00175452232, -0.377288461, 0.926093578, 0.999996305, -0.00258150394, 0.000842841633, 0.00207272172, 0.926091671, 0.377291679)
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("BlockMesh", p50)
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.5625, 0.0482142866, 0.305357665)
p51 = Instance.new("Part", t1)
p51.BrickColor = BrickColor.new("Black")
p51.CFrame = CFrame.new(30.7652512, 1.30959797, 17.1982307, -0.00175452232, 0.921630025, -0.388063759, 0.999996305, 0.00242137746, 0.00122941949, 0.00207272172, -0.388060153, -0.921630979)
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.200000003, 0.200000003, 0.244285688)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("BlockMesh", p51)
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.562500477, 0.0482142866, 1)
p52 = Instance.new("Part", t1)
p52.BrickColor = BrickColor.new("Black")
p52.CFrame = CFrame.new(32.0956154, 1.30705714, 19.5502014, 0.00175452232, 0.388063759, -0.921630025, -0.999996305, -0.00122941949, -0.00242137746, -0.00207272172, 0.921630979, 0.388060153)
p52.CanCollide = false
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.200000003, 0.273214281, 0.200000003)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("CylinderMesh", p52)
b52.Name = "Mesh"
b52.Scale = Vector3.new(0.723214269, 1, 0.723214269)
p53 = Instance.new("Part", t1)
p53.BrickColor = BrickColor.new("Reddish brown")
p53.CFrame = CFrame.new(30.5855827, 1.30978322, 16.9567833, -0.00175452232, -0.136305332, -0.990664005, 0.999996305, 0.00181422569, -0.00202067266, 0.00207272172, -0.990664005, 0.136301592)
p53.CanCollide = false
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.200000003, 0.228214294, 0.308571428)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("BlockMesh", p53)
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.964285731, 1, 1)
p54 = Instance.new("Part", t1)
p54.BrickColor = BrickColor.new("Institutional white")
p54.Transparency = 1
p54.Name = "Muzzle"
p54.CFrame = CFrame.new(32.1487846, 1.30687153, 19.684763, -0.00175452232, 0.921629071, -0.388063371, 0.999996305, 0.0024213749, 0.00122941821, 0.00207272172, -0.388059735, -0.921630025)
p54.CanCollide = false
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
g2 = Instance.new("BillboardGui", p54)
g2.Enabled = false
g2.Size = UDim2.new(2, 0, 2, 0)
o2 = Instance.new("ImageLabel", g2)
o2.BackgroundTransparency = 1
o2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o2.BorderSizePixel = 0
o2.Name = "Flash"
o2.Size = UDim2.new(1, 1, 1, 1)
o2.ClipsDescendants = true
o2.Image = "http://www.roblox.com/asset/?id=131435802"
x8 = Instance.new("PointLight", p54)
x8.Color = Color3.new(1, 0.988235, 0.870588)
x8.Range = 30
x8.Enabled = false
b54 = Instance.new("BlockMesh", p54)
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.482142866, 0.482142866, 0.0803571492)
p55 = Instance.new("Part", t1)
p55.BrickColor = BrickColor.new("Reddish brown")
p55.CFrame = CFrame.new(30.5185852, 1.30973279, 16.9243736, -0.00175452232, 0.0272757113, -0.999624252, 0.999996305, 0.00211980566, -0.00169733469, 0.00207272172, -0.999623656, -0.0272794068)
p55.CanCollide = false
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.200000003, 0.200000003, 0.244285643)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("BlockMesh", p55)
b55.Name = "Mesh"
b55.Scale = Vector3.new(0.964285731, 0.803571701, 1)
p56 = Instance.new("Part", t1)
p56.BrickColor = BrickColor.new("Medium stone grey")
p56.Name = "Magazine"
p56.CFrame = CFrame.new(30.874651, 1.30889547, 17.6297474, -0.00175460125, 0.903824151, -0.427894771, 0.999996305, 0.00247278297, 0.00112262822, 0.00207275921, -0.427891195, -0.903825283)
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.200000003, 0.549642563, 0.318214267)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("BlockMesh", p56)
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.482142866, 1, 1)
p57 = Instance.new("Part", t1)
p57.BrickColor = BrickColor.new("Reddish brown")
p57.CFrame = CFrame.new(30.4127502, 1.30944407, 16.9740715, -0.00175452221, -0.136305124, -0.990662396, 0.999996305, 0.00181422289, -0.00202066964, 0.00207272172, -0.990662456, 0.136301368)
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.200000003, 0.273214221, 0.200000003)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("BlockMesh", p57)
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.964285731, 1, 0.353571653)
s1 = script:clone()
g3 = Instance.new("ScreenGui", s1)
g3.Name = "HudGui"
o3 = Instance.new("TextLabel", g3)
o3.BackgroundColor3 = Color3.new(0.992157, 0.984314, 1)
o3.BackgroundTransparency = 1
o3.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o3.BorderSizePixel = 0
o3.Name = "AmmoMaxLabel"
o3.Position = UDim2.new(1, -165, 1, -130)
o3.Size = UDim2.new(0, 0, 0, -30)
o3.Text = "20"
o3.TextWrapped = true
o3.TextColor3 = Color3.new(1, 1, 1)
o3.TextStrokeTransparency = 0
o3.FontSize = Enum.FontSize.Size24
o3.TextXAlignment = Enum.TextXAlignment.Left
o3.TextYAlignment = Enum.TextYAlignment.Bottom
o4 = Instance.new("TextLabel", g3)
o4.BackgroundTransparency = 1
o4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o4.BorderSizePixel = 0
o4.Name = "Instructions"
o4.Position = UDim2.new(1, -40, 1, -190)
o4.Size = UDim2.new(0, -300, 0, -20)
o4.Text = "(r)Reload | (v)Fire Selector | (z)Zoom"
o4.TextWrapped = true
o4.TextColor3 = Color3.new(1, 1, 1)
o4.TextStrokeTransparency = 0
o4.FontSize = Enum.FontSize.Size9
o4.TextXAlignment = Enum.TextXAlignment.Right
o5 = Instance.new("TextLabel", g3)
o5.BackgroundTransparency = 1
o5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o5.BorderSizePixel = 0
o5.Name = "ModeLabel"
o5.Position = UDim2.new(1, -40, 1, -165)
o5.Size = UDim2.new(0, 0, 0, -30)
o5.Text = "Auto"
o5.TextColor3 = Color3.new(1, 1, 1)
o5.TextStrokeTransparency = 0
o5.TextXAlignment = Enum.TextXAlignment.Right
o6 = Instance.new("ImageLabel", g3)
o6.BackgroundTransparency = 1
o6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o6.BorderSizePixel = 0
o6.Name = "ClipPic"
o6.Position = UDim2.new(1, -105, 1, -140)
o6.Size = UDim2.new(0, -8, 0, -15)
o6.Image = "http://www.roblox.com/asset/?id=131543027"
o7 = Instance.new("TextLabel", g3)
o7.BackgroundTransparency = 1
o7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o7.BorderSizePixel = 0
o7.Name = "MagazinesCarriedLabel"
o7.Position = UDim2.new(1, -100, 1, -140)
o7.Size = UDim2.new(0, 0, 0, -15)
o7.Text = "x 6"
o7.TextColor3 = Color3.new(1, 1, 1)
o7.TextStrokeTransparency = 0
o7.FontSize = Enum.FontSize.Size10
o7.TextXAlignment = Enum.TextXAlignment.Left
o8 = Instance.new("TextLabel", g3)
o8.BackgroundTransparency = 1
o8.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o8.BorderSizePixel = 0
o8.Name = "AmmoLoadedLabel"
o8.Position = UDim2.new(1, -185, 1, -135)
o8.Size = UDim2.new(0, 0, 0, -30)
o8.Text = "20"
o8.TextColor3 = Color3.new(1, 1, 1)
o8.TextStrokeTransparency = 0
o8.FontSize = Enum.FontSize.Size36
o8.TextXAlignment = Enum.TextXAlignment.Right
o8.TextYAlignment = Enum.TextYAlignment.Bottom
o9 = Instance.new("TextLabel", g3)
o9.BackgroundColor3 = Color3.new(0.992157, 0.984314, 1)
o9.BackgroundTransparency = 1
o9.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
o9.BorderSizePixel = 0
o9.Name = "SlashLarge"
o9.Position = UDim2.new(1, -165, 1, -120)
o9.Size = UDim2.new(0, 0, 0, -30)
o9.Text = "/"
o9.TextColor3 = Color3.new(1, 1, 1)
o9.TextStrokeTransparency = 0
o9.FontSize = Enum.FontSize.Size48
o9.TextXAlignment = Enum.TextXAlignment.Right
o9.TextYAlignment = Enum.TextYAlignment.Bottom
o10 = Instance.new("Frame", g3)
o10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o10.Position = UDim2.new(1, -30, 1, -125)
o10.Size = UDim2.new(0, -215, 0, -90)
o10.Style = Enum.FrameStyle.RobloxRound
s1.Name = "GunScript"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
-- DECLARATION OF VARIABLES
local tool = script.Parent
local Cam = game.Workspace.CurrentCamera
local canReload = true
local isFiring = false
local canZoom = true
local canCycleModes = true
local isZoomed = false
local arms = nil
local torso = nil
local welds = {}
local cancelStatus = true
local cooldownInterrupted = false
local reloading = false
local recoilMultiplier = 1
local toolIsEquipped = true

wait(0.03)

local ChargingHandleBack = tool.Handle.ChargingHandleBack
local ChargingHandleForward = tool.Handle.ChargingHandleForward
local NoAmmoClick = tool.Handle.NoAmmoClick
local MagazineOut = tool.Handle.MagazineOut
local MagazineIn= tool.Handle.MagazineIn
local FireModeClick = tool.Handle.FireModeClick

local playerPlayer
local playerCharacter
local playerHumanoid
local playerSpeed
local wasAmmoLoaded
local toolIsEquipped

--local moveDetect
--local isBobbing = false

local flashListBig = { -- List of image IDs for Muzzleflash -- big
	"131435802",
	"131435817",
	"131435825",
}

local fireStreakLimiter = Instance.new("DoubleConstrainedValue") -- Constrains the recoil
	fireStreakLimiter.MaxValue = 10
	fireStreakLimiter.MinValue = 0
	fireStreakLimiter.Value = 0
	
local aimLimiterY = Instance.new("DoubleConstrainedValue") -- Constrains the aim in the Y axis
	aimLimiterY.MaxValue = math.rad(70)
	aimLimiterY.MinValue = math.rad(-45)
	aimLimiterY.Value = 0

local fireStreak = fireStreakLimiter.Value

-- DECLARATION OF VARIABLES: You can modify the ones below this. Names are intuitive.
--AMMUNITION MECHANICS
local usesMagazines = true -- Uses Magazines: bullets still loaded into magazine after reloading are wasted. Turn of for infinite ammo.
local MagazinesCarried = 6 -- Clips you begin with.
local AmmoLoaded = 30 -- Ammo the gun starts with. Reccommended to be equal to AmmoMax
local AmmoMax = 30 -- Magazine size
--ZOOM
local zoomMin = 70 -- FOV default
local zoomMax = 40 -- FOV zoom in
local zoomFrames = 5 -- Larger number = slower zoom speed
local zoomWalkSpeedMultiplier = 0.5 -- Slows character down by this factor upon zooming
--GUN DAMAGE
local gunDamage = 35 -- duh
local damageIsMultiplied = true -- When true, damage is multiplies depending on where the player is hit. When false, damage dealt is fixed.
local headDamageMultiplier = 2.5 -- gunDamage * headDamageMultiplier 
local torsoDamageMultiplier = 1 -- gunDamage * torsoDamageMultiplier
local limbDamageMultiplier = 0.7 -- gunDamage * limbDamageMultiplier
local rateOfFireScale = 1 -- the minimum is 0. Each additional unit increases the firing delay by ~0.03 seconds.
--RECOIL
local recoilX = 3 -- Kind of hard to explain. Larger values mean larger recoil. Go figure.
local recoily = 4
local defaultRecoilMultiplier = 1
local zoomRecoilMultiplier = 0.6 -- Zooming multiplies recoil by this amount
--RAYCASTING
local range = 350 -- [range - (spreadX OR spreadY)] should be less than 1000
local spreadX = 5 -- 
local spreadY = 5
--FIRE MODES
local fireMode = 1 -- Fire mode gun starts with. Look at the list below for a guide.
local burstLength = 3 -- Length of a burst.
--ANIMATIONS
local breathFrames = 180 -- Frames for one breath. Lower values mean faster breathing. I suppose you can do something with this.
--END. Anything below here. Feel free to modify yourself, if you know what you're doing.

local fireModeValues = { -- Modes
	[1] = "Automatic",
	[2] = "Semi-Automatic",
	[3] = tostring(burstLength).."-Round Burst"
}

print[[Made by YoungWarlock!]] -- Please don't remove me :c -- This only prints in the output window. 

-- Change how you want the shell casing to look here.
local Shell = Instance.new("Part")
Shell.BrickColor = BrickColor.new(24)
Shell.Name = "Shell"
Shell.Locked = true
Shell.formFactor = 3
Shell.CanCollide = true
Shell.Size = Vector3.new(.2,.2,.2)
Shell.CanCollide = true
--Shell.Parent = game.Workspace
local ShellMesh = Instance.new("CylinderMesh")
ShellMesh.Scale = Vector3.new(0.30, 1, 0.30)

--[[INDEXLIST: Here's an index for all the important bits here and a brief description. 
	CTRL + F is the search function.
	-------------------------------------------------------------------------------------------------------
	INDEX ..... Description
	-------------------------------------------------------------------------------------------------------
	INDEXLIST ... Brings you right here!
	F-LOADV ..... Gets the player, character, and humanoid.
	F-CNGST ..... Called to disable the gun while performing actions.
	F-CONV3 ..... Converts an user-friendly RGB value into a Color3 Value.
	F-CONVD ..... Shortens converting degree angles to radians.
	F-UPDAM ..... Updates the ammo counter whenever the gun is fired.
	F-UPDTH ..... Updates the HUD whenever the gun is reloaded or equipped.
	F-RECCD ..... Whenever the gun is fired, this function is called. Cools down the recoil of the gun.
	F-WELDR ..... Welds the arms.
	CR-BRETH .... Makes the breathing animation
	F-AIMMO ..... Makes the gun aim up and down, makes the torso move side to side. 
	F-UPDAI ..... Updates the arms/torso whenever the weapon is shot.
	F-STPFI ..... Lets the gun know that the player isn't firing anymore.
	F-CRTSH ..... Creates shell casing.
	F-RYCSH ..... Fires a bullet. As the name implies, it's a raycasting weapon.
	CR-TAGHU .... Damages and tags the hit player.
	CR-RAYMV .... Animates the ray so that it seems to travel. 
	CR-RCLAN .... Animates recoil and camera.
	F-MAUTO ..... Automatic mode
	F-MSEMI ..... Semi-automatic mode
	F-MBRST ..... Burst fire mode
	F-ACTVT ..... Whenever the tool is used
	F-CHRGN ..... Pulls the charging handle of some guns whenever the gun is reloaded empty.
	F-RELOD ..... Reloading
	F-RMVWD ..... Removes the arm weld and restores previous values.
	F-ONDIE ..... Restores values when the player dies.
	F-ZOMIN ..... Zooms in the gun.
	F-ZMOUT ..... Zooms out the gun.
	F-MDCHG ..... Changes the firemodes.
	F-FMANI ..... Animation for changing fire modes.
	F-CMDKS ..... List of key bindings.
]]
	
function loadValues() -- INDEX: F-LOADV ... Gets the player, character, and humanoid.
	wait(0.03)
	cancelStatus = true -- Unequipping the gun will stop the gun from reloading any bullets
	tool.Enabled = true
	
	playerPlayer = game.Players.LocalPlayer
	playerCharacter = playerPlayer.Character
	playerHumanoid = playerCharacter.Humanoid
	
	if playerHumanoid then
		playerSpeed = playerHumanoid.WalkSpeed
	else
		print [[Humanoid not found]]
	end
	
	recoilMultiplier = 1 -- Restores the recoil multiplier, in case the player unequips the weapon while zoomed
end

function changeGunStatus(status) -- INDEX: F-CNGST ... Called to disable the gun while performing actions.
	if status == "disable" then
		canCycleModes = false
		canReload = false
		canZoom = false
		reloading = true
	elseif status == "enable" then
		canCycleModes = true
		canReload = true
		canZoom = true
		reloading = false
	else
		print[[Invalid Input]] -- Debugging
	end
end

function convertColor3(r, g, b) -- INDEX: F-CONV3 ... Converts an user-friendly RGB value into a Color3 Value.
	return Color3.new(r/255,g/255,b/255)
end

function convertToCFrameDegrees(xa, ya, za) -- INDEX: F-CONVD ... Shortens converting degree angles to radians. CFrame.Anges(math.rad(10), math.rad(20) math.rad(30)) = convertToCFrameDegrees(10,20,30). Much shorter.
	return CFrame.Angles(math.rad(xa), math.rad(ya), math.rad(za))
end

function updateAmmo() -- INDEX: F-UPDAM ... Updates the ammo counter whenever the gun is fired.
	Hud.AmmoLoadedLabel.Text = tostring(AmmoLoaded)
	if AmmoLoaded <= AmmoMax/2 then
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,0) -- Changes text color to yellow when remaining ammo is <= 1/2 of max.
		if AmmoLoaded <= AmmoMax/4 then
			Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,0,0) -- Changes text color to yellow when remaining ammo is <= 1/4 of max.
		end
	else
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,255) -- Text color is white, otherwise.
	end
end

function updateHUD() -- INDEX: F-UPDTH ... Updates the HUD whenever the gun is reloaded or equipped. Uses F-UPDTA to update ammo.
	Hud.ModeLabel.Text = (fireModeValues[fireMode])
	if usesClips then
		Hud.MagazinesCarriedLabel.Text = "x "..MagazinesCarried
	else
		Hud.MagazinesCarriedLabel.Visible = false
		Hud.ClipPic.Visible = false
	end
	Hud.AmmoMaxLabel.Text = tostring(AmmoMax)
	updateAmmo()
end

function recoilCooldown() -- INDEX: F-RECCD ... Whenever the gun is fired, this function is called. Cools down the recoil of the gun.
coroutine.resume(coroutine.create(function ()
wait(0.2)
	while fireStreakLimiter.Value > 0 and not cooldownInterrupted do
		wait(.10 - fireStreakLimiter.Value/100)
		fireStreakLimiter.Value = fireStreakLimiter.Value - 1
		fireStreak = fireStreakLimiter.Value
	end
end))
end

function WeldArms(mouse) -- INDEX: F-WELDR ... Welds the arms. Credit to ipod. Modified by YoungWarlock. Arms now match the color and mesh that the player is wearing.
	toolIsEquipped = true
	print[[Made by YoungWarlock!]]
	loadValues()
	Hud = script.HudGui:Clone()
	Hud.Parent = playerPlayer.PlayerGui
	updateHUD()
	if playerPlayer then
		playerPlayer.CameraMode = "LockFirstPerson"
	end
	mouse.KeyDown:connect(commandKeys)
	mouse.Button1Up:connect(stopFiring)
	
	mouse.Icon = "http://www.roblox.com/asset/?id=131424826" -- Crosshair.
	--mouse.Icon = "http://www.roblox.com/asset/?id=133339236" -- Invisible mouse.
	
	arms = {tool.Parent:FindFirstChild("Left Arm"), tool.Parent:FindFirstChild("Right Arm")}
	torso = tool.Parent:FindFirstChild("Torso")

	if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}

		if sh ~= nil then
			local yes = true

			if yes then
				yes = false
				sh[1].Part1 = nil
				sh[2].Part1 = nil

				local falseArmLeft = arms[1]:clone()
				falseArmLeftG = falseArmLeft
				falseArmLeft.Parent = tool
				falseArmLeft.BrickColor = arms[1].BrickColor
				local meshCheck1 = tool.Parent:FindFirstChild("leftarm")
				if meshCheck1 then
					meshBody1 = Instance.new("SpecialMesh")
					meshBody1.Parent = falseArmLeft
					meshBody1.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck1.MeshId)
					meshBody1.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault1 = Instance.new("BlockMesh")
					meshDefault1.Parent = falseArmLeft
					meshDefault1.Scale = Vector3.new(.80,.95,.80)
					meshDefault1.Parent = falseArmLeft
				end

				local falseArmWeldLeft = Instance.new("Weld")
				falseArmWeldLeft.Parent = falseArmLeft
				falseArmWeldLeft.Part0 = falseArmLeft
				falseArmWeldLeft.Part1 = arms[1]

				local falseArmRight = arms[2]:clone()
				falseArmRightG = falseArmRight
				falseArmRight.Parent = tool
				falseArmRight.BrickColor = arms[2].BrickColor
				
				local meshCheck2 = tool.Parent:FindFirstChild("rightarm")
				if meshCheck2 then
					meshBody2 = Instance.new("SpecialMesh")
					meshBody2.Parent = falseArmRight
					meshBody2.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck2.MeshId)
					meshBody2.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault2 = Instance.new("BlockMesh")
					meshDefault2.Parent = falseArmRight
					meshDefault2.Scale = Vector3.new(.80,.95,.80)
					meshDefault2.Parent = falseArmRight
				end

				local falseArmWeldRight = Instance.new("Weld")
				falseArmWeldRight.Parent = falseArmRight
				falseArmWeldRight.Part0 = falseArmRight
				falseArmWeldRight.Part1 = arms[2]

				local weldLeft = Instance.new("Weld") -- left arm
				weldLeftG = weldLeft
				weldLeft.Part0 = torso
				weldLeft.Parent = torso
				weldLeft.Part1 = arms[1]
				weldLeft.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90)
				
				--X position value moves arm DOWNWARDS... X angle value rotates arm IN (C)
				--Y position value moves arm FORWARD... Y angle value tilts arm UPWARDS (C)
				--Z position value moves arm AWAY... Z angle value tilts arm INWARDS (C)
				
				welds[1] = weldLeft
				
				local weldRight = Instance.new("Weld") -- right arm
				weldRightG = weldRight
				weldRight.Part0 = torso
				weldRight.Parent = torso
				weldRight.Part1 = arms[2]
				weldRight.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0)
				welds[2] = weldRight
				
				--X position value moves arm INSIDE... X angle value tilts arm DOWNWARDS (C)
				--Y position value moves arm FORWARD... Y angle value rotates arm AWAY (C)
				--Z position value moves arm UPWARDS... Z angle value tilts arm OUTWARDS (C)
				--X GripPos value move tool INSIDE. Y GripPos value move tool DOWNWARDS. Z GripPos value move tool FORWARDS.
			
				--NOTE: Use these when you're modifying the gun positions. These happen if the values are increased. Hopefully you understand my wording. I may be wrong on some of these...
				
				aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))

				weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value, 0, 0)
				weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value, 0, 0)
	
				local hit = playerHumanoid.TargetPoint
				local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
				local dir = (newHit - tool.Sights.Position).unit	
				local spawnPos = playerCharacter.Torso.Position
				local pos = spawnPos + (dir * 0)
				playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
				--Adapted from the bodygyro script that makes your character move around. Thanks!
				
				coroutine.resume(coroutine.create( --INDEX: CR-BRETH ... Makes the breathing animation
					function()
						while toolIsEquipped do
							for i = 0, 2 * math.pi, (2 * math.pi/breathFrames) do
								weldLeftG.C1 = weldLeftG.C1 + Vector3.new(-math.sin(i)/500,0,0)
								weldRightG.C1 = weldRightG.C1 + Vector3.new(0,0,math.sin(i)/500)
								wait()
							end
						end
					end
				))
				
--[[				moveDetect = 1

coroutine.resume(coroutine.create(function()
	while wait() do
		while moveDetect > 0.01 and toolIsEquipped do
			local curPos = playerCharacter.Torso.Position
			for i = 0, 2 * math.pi, (math.pi/6) do
				Cam.CoordinateFrame = Cam.CoordinateFrame + Vector3.new(0,-math.sin(i)/300,0)
				wait()
			end
			wait()
			moveDetect = (playerCharacter.Torso.Position - curPos).magnitude
		end
	end
end))]]
					
	function aim() -- INDEX: F-AIMMO ... Fired whenever the mouse is moved. This is the one that makes the gun aim up and down, makes the torso move side to side. 
		local aimLastY = aimLimiterY.Value
		aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))

		weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
		weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
		
		local hit = playerHumanoid.TargetPoint
		local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
		local dir = (newHit - tool.Sights.Position).unit	
		local spawnPos = playerCharacter.Torso.Position
		local pos = spawnPos + (dir * 0)
		playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
	end
	mouse.Move:connect(aim)		

			end
		end
	end
end

function updateAim() -- INDEX: F-UPDAI ... Updates the arms/torso whenever the weapon is shot.
	
	local aimLastY = aimLimiterY.Value
	aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))
	
	weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
	weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
	
	local hit = playerHumanoid.TargetPoint
	local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
	local dir = (newHit - tool.Sights.Position).unit	
	local spawnPos = playerCharacter.Torso.Position
	local pos = spawnPos + (dir * 0)
	playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
	
end

function stopFiring(mouse) -- INDEX: F-STPFI ... Lets the gun know that the player isn't firing anymore.
	isFiring = false
end

function createShellCasing() -- INDEX: F-CRTSH ... Creates shell casing from a Part named "Port". Hooray for a bullet casing! ~~YoungWarlock
	local ShellClone = Shell:Clone()
	ShellClone.Parent = playerCharacter
	ShellClone.CFrame = tool.Port.CFrame * convertToCFrameDegrees(90,0,0)
	ShellClone.Velocity = Vector3.new(0,math.random(10,40),0) + (tool.Port.CFrame * convertToCFrameDegrees(0,math.random(-140,-90),0)).lookVector * (math.random(5,25))
	ShellClone.RotVelocity = Vector3.new(0,0,(math.random(200,400) / 10))
	local ShellMeshClone = ShellMesh:Clone()
	ShellMeshClone.Parent = ShellClone
	game.Debris:AddItem(ShellClone, 0.4) --Add it to the debris. No script can match this one's reliability.
end



function raycastShoot() -- INDEX: F-RYCSH ... Fires a bullet. As the name implies, it's a raycasting weapon.
	local ray = Ray.new(tool.Handle.CFrame.p, ((playerHumanoid.TargetPoint - tool.Handle.CFrame.p).unit * (range) + Vector3.new(math.random(-100,100)/100 * spreadX,math.random(-100,100)/100 * spreadY,math.random(0,0)))) 
	local hit, position = game.Workspace:FindPartOnRay(ray, tool.Parent)-- ignoreList)
 
	local ShootSound = tool.Handle.ShootSound
	ShootSound.Pitch = math.random(100,105)/100
	ShootSound:Play()	
	
	updateAmmo()
	
    local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")

coroutine.resume(coroutine.create( -- INDES: CR-TAGHU ... Damages and tags the hit player.
	function () 
		if humanoid and humanoid.Parent.Name ~= tool.Parent.Name then --and hit:IsDescendantOf(humanoid.Parent) then			
			while humanoid:FindFirstChild("creator") do -- removes any previous tags on the humanoid
				humanoid:FindFirstChild("creator"):Destroy()
			end
			local KillRecord = Instance.new("ObjectValue")
			KillRecord.Value = playerPlayer
			KillRecord.Name = "creator"
			KillRecord.Parent = humanoid
			if damageIsMultiplied then -- if damage is multiplied depending on where the player is hit...
				if hit.Name == "Head" then 
					humanoid:TakeDamage(gunDamage * headDamageMultiplier)
				elseif hit.Name == "Torso" then
					humanoid:TakeDamage(gunDamage * torsoDamageMultiplier)
				else -- If you didn't hit the torso or the head, you probably hit a limb... Right?
					humanoid:TakeDamage(gunDamage * limbDamageMultiplier)
				end
			else -- otherwise
					humanoid:TakeDamage(gunDamage) -- It does base damage
			end
			wait(1)
			if humanoid then
				local tagCheck = humanoid:findFirstChild("creator")
				if tagCheck then
					tagCheck:Destroy()
				end
			end
		end
	end))
	
	local distance = (position - tool.Muzzle.CFrame.p).magnitude
	local rayPart = Instance.new("Part", tool)
		rayPart.Name          = "RayPart"
		rayPart.BrickColor    = BrickColor.new(24)
		rayPart.Transparency  = 0.5
		rayPart.Anchored      = true
		rayPart.CanCollide    = false
		rayPart.TopSurface    = Enum.SurfaceType.Smooth
		rayPart.BottomSurface = Enum.SurfaceType.Smooth
		rayPart.formFactor    = Enum.FormFactor.Custom
		rayPart.Size          = Vector3.new(.2, 1, .2)
		rayPart.CFrame        = CFrame.new(position, tool.Muzzle.CFrame.p) * CFrame.new(0, 0, 1) * convertToCFrameDegrees(90, 0, 0)
		local rayMesh = Instance.new("CylinderMesh",rayPart)
		rayMesh.Scale = Vector3.new(1,10,1)
		rayMesh.Offset = Vector3.new(0, -distance + rayMesh.Scale.y/2, 0)

	coroutine.resume(coroutine.create( -- INDEX: CR-RAYMV ... Animates the ray so that it seems to travel. 
		function () 
			for i = 0, distance - rayMesh.Scale.y, 30 do
				rayMesh.Offset = rayMesh.Offset + Vector3.new(0, 30, 0)
				wait(0.03)		
			end
			rayPart:Destroy()
		end
	))

	game.Debris:AddItem(rayPart, 2) -- Adding something to debris is more reliable than using a script.

	local recoilXTemp = math.random(-100,100)/100*recoilX
	local recoilyTemp = math.random(80,100)/100*recoily
	local recoilFrames = 2
		
	fireStreakLimiter.Value = fireStreakLimiter.Value + 1
	fireStreak = fireStreakLimiter.Value
	
	coroutine.resume(coroutine.create( -- INDES: CR-RCLAN ... Animates recoil and camera. Camera recoil was based off of a script somewhere.
		function () 
			local recoilFormula = fireStreak^1.4/30 * recoilMultiplier
			for i = 1, recoilFrames do
				tool.Port.Mesh.Offset = tool.Port.Mesh.Offset + Vector3.new(0,0,0 + 0.23/recoilFrames)
				tool.Port1.Mesh.Offset = tool.Port.Mesh.Offset + Vector3.new(0,0,0 + 0.23/recoilFrames)
				local camRotation = Cam.CoordinateFrame - Cam.CoordinateFrame.p
				local camScroll = (Cam.CoordinateFrame.p - Cam.Focus.p).magnitude
				local ncf = CFrame.new(Cam.Focus.p)*camRotation*convertToCFrameDegrees(recoilyTemp/recoilFrames * recoilFormula, recoilXTemp/recoilFrames * recoilFormula, 0)
				weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, -0.1/recoilFrames, -0.1/recoilFrames))
				weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, -0.1/recoilFrames, 0))
				Cam.CoordinateFrame = ncf*CFrame.new(0, 0, camScroll)
				Cam.CoordinateFrame = Cam.CoordinateFrame  * CFrame.new(0,0,-0.1/recoilFrames)
				wait(0.03)
			end
		end
	))
	
	updateAim()
		
		wait(0.03)
		
		weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, 0.1, 0.1))
		weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, 0.1, 0))
		
		Cam.CoordinateFrame = Cam.CoordinateFrame  * CFrame.new(0,0,0.1)

		tool.Muzzle.PointLight.Enabled = true
		tool.Muzzle.BillboardGui.Flash.Image = "http://www.roblox.com/asset/?id="..flashListBig[math.random(1,#flashListBig)] -- Muzzle flash!
		tool.Muzzle.BillboardGui.Enabled = true
		
		createShellCasing() -- Shell casing!
		
		tool.Port.Mesh.Offset = Vector3.new(0,0,0)
		tool.Port1.Mesh.Offset = Vector3.new(0,0,0.003)	
		wait(0.03)
		
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
		
		if rateOfFireScale > 0 then -- How the rate of fire is controled.
			wait(0.03 * rateOfFireScale)
		end
end

function modeAutomatic() -- INDEX: F-MAUTO ... Automatic mode
	isFiring = true
	while isFiring == true do
		if not isReloading and playerHumanoid.Health > 0 then
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		elseif playerHumanoid.Health <= 0 then
			tool:Destroy()
		end
	end
end

function modeSingle() -- INDEX: F-MSEMI ... Semi-automatic mode
	if playerHumanoid.Health > 0 then
		if AmmoLoaded > 0 then
			AmmoLoaded = AmmoLoaded - 1
			raycastShoot()
		else
			NoAmmoClick:Play()
			canReload = true
			Reload()
		end
	wait(0.03)
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end

function modeBurst() -- INDEX: F-MBRST ... Burst fire mode
	if playerHumanoid.Health > 0 then
		for i = 1, burstLength do
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		end
		wait(0.03)
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end
		
function onActivated() -- INDEX: F-ACTVT ... Whenever the tool is used
	if not tool.Enabled then
		return
	end

	tool.Enabled = false
	changeGunStatus("disable")
	cooldownInterrupted = true
	if fireMode == 1 then
		modeAutomatic()
	
	elseif fireMode == 2 then
		modeSingle()
		
	elseif fireMode == 3 then
		modeBurst()
	end
tool.Enabled = true
cooldownInterrupted = false
changeGunStatus("enable")
recoilCooldown()
end
		
function chargingHandle() -- F-CHRGN ... Pulls the charging handle of some guns whenever the gun is reloaded empty. Hooray for realism!
	local reloadTween = 10
	for i = 1, reloadTween do
		weldLeftG.C1 = CFrame.new(-0.05 -0.30/reloadTween*i , 0.7 + 0.4/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 - 20/reloadTween*i, 0 + 35/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.95 + 0.5/reloadTween*i, -0.4 + 0.5/reloadTween*i, 0.3 - 1.5/reloadTween*i) *convertToCFrameDegrees(-95 + 5/reloadTween*i, -15 + 30/reloadTween*i, 0 + -80/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	wait(0.1)
	local reloadTween = 4
	for i = 1, reloadTween do
		tool.Port.Mesh.Offset = Vector3.new(0,0,0 + 0.23/reloadTween*i)
		tool.Port1.Mesh.Offset = Vector3.new(0,0,0.003 + 0.23/reloadTween*i)	
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 1.1 + -0.4/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(305 + 20/reloadTween*i, 35 + 0/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + 0/reloadTween*i, 0.1 + -0.2/reloadTween*i, -1.2 + 0/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + 0/reloadTween*i, -80 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	ChargingHandleBack:Play()
	wait(0.2)
	local reloadTween = 3
	for i = 1, reloadTween do
		tool.Port.Mesh.Offset = Vector3.new(0,0,0.23 + -0.23/reloadTween*i)
		tool.Port1.Mesh.Offset = Vector3.new(0,0,0.233 + -0.23/reloadTween*i)	
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 0.7 + 0/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 + 0/reloadTween*i, 35 + 5/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + 0/reloadTween*i, -0.1 + 0/reloadTween*i, -1.2 + 0/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + 0/reloadTween*i, -80 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	ChargingHandleForward:Play()
	wait(0.2)
	local reloadTween = 8
	for i = 1, reloadTween do	
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 0.7 + 0.2/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 + -20/reloadTween*i, 40 + -35/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + -0.5/reloadTween*i, -0.1 + -0.3/reloadTween*i, -1.2 + 1.5/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + -30/reloadTween*i, -80 + 80/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	
	weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
end

function Reload() -- F-RELOD ... Reloading
	if canReload then
		cooldownInterrupted = false
		cancelStatus = false
		recoilCooldown()
		if usesClips then
			if MagazinesCarried <= 0 then 
				return
			end
		MagazinesCarried = MagazinesCarried - 1
		end
		wasAmmoLoaded = AmmoLoaded
		AmmoLoaded = 0
		updateHUD()
		changeGunStatus("disable")
		tool.Enabled = false
		if isZoomed then
			zoomOut()
		end
		wait(.1)
		local reloadTween = 12
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(-0.35 + 1.5/reloadTween*i , 0.9 - 1/reloadTween*i, 0.7 - 1/reloadTween*i) * convertToCFrameDegrees(305 + 30/reloadTween*i, 5 + 30/reloadTween*i, -90 + 90/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			weldRightG.C1 = CFrame.new(-0.95 + 0/reloadTween*i, -0.4 + 0.3/reloadTween*i, 0.3 + 0.8/reloadTween*i) * convertToCFrameDegrees(-90, -15, 0 + 15/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)
		end
		

		MagazineOut:Play()
		
		local magazineUsedProp = tool.Magazine:Clone()
		magazineUsedProp.CFrame = tool.Magazine.CFrame
		magazineUsedProp.CanCollide = true
		magazineUsedProp.Parent = Workspace
		game.Debris:AddItem(magazineUsedProp, 3)
		tool.Magazine.Transparency = 1
		
		wait(.3)
		local magazineNewProp = tool.Magazine:Clone()
		magazineNewProp.Transparency = 0
		magazineNewProp.Name = "MagazineProp"
		magazineNewProp.Parent = tool
		
		local magazineNewPropWeld = Instance.new("Weld")
		leftarm = tool.Parent["Left Arm"]
		magazineNewPropWeldG = magazineNewPropWeld
		magazineNewPropWeld.Parent =  magazineNewProp
		magazineNewPropWeld.Part0 =  magazineNewProp
		magazineNewPropWeld.Part1 = leftarm
		magazineNewPropWeld.C0 = CFrame.new(-0,-.6,0.8) * convertToCFrameDegrees(0, 90, 90)
		
		local reloadTween = 12
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(1.15 - 1.2/reloadTween*i , -0.1 + 0.8/reloadTween*i, -0.3 + 1/reloadTween*i) * convertToCFrameDegrees(335 - 10/reloadTween*i, 35 - 35/reloadTween*i, -0 - 90/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
			weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.1 - 0.3/reloadTween*i, 1.1 - 0.8/reloadTween*i) * convertToCFrameDegrees(-90 - 5/reloadTween*i, -15, 15 - 15/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)
		end
		while tool:FindFirstChild("MagazineProp") do
			tool:FindFirstChild("MagazineProp"):Destroy()
		end
		tool.Magazine.Transparency = 0

		MagazineIn:Play()
		
		wait(.2)
		
		if wasAmmoLoaded == 0 then
			chargingHandle()
		else
			
			local reloadTween = 6
			for i = 1, reloadTween do
				weldLeftG.C1 = CFrame.new(-0.05 -0.30/reloadTween*i , 0.7 + 0.2/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 - 20/reloadTween*i, 0 + 5/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
				weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.4 - 0.0/reloadTween*i, 0.3 - 0.0/reloadTween*i) *convertToCFrameDegrees(-95 + 5/reloadTween*i, -15, 0 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)		
			end
			
		end
		
		weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.2)


		if not cancelStatus then
			if wasAmmoLoaded == 0 then
				AmmoLoaded = AmmoMax
			else
				AmmoLoaded = AmmoMax + 1 -- YES, THERE IS STILL A BOOLET CHAMBERED
			end
		end
		changeGunStatus("enable")
		tool.Enabled = true
		updateHUD()
	end
end

function removeWeldArms(mouse) -- INDEX: F-RMVWD ... Removes the arm weld and restores previous values.
	toolIsEquipped = false
	changeGunStatus("enable")
	cancelStatus = true
	recoilMultiplier = defaultRecoilMultiplier
	if Cam then
		Cam.CameraSubject = playerHumanoid
		Cam.CameraType = "Custom"
		Cam.FieldOfView = zoomMin
	end
	if tool then
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
	end
	if playerHumanoid then
		playerHumanoid.WalkSpeed = playerSpeed
	end
	if playerPlayer then
		playerPlayer.CameraMode = "Classic"
	end
	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
		wait(0.03)
	end
	
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
				falseArmLeftG:Destroy()
				falseArmRightG:Destroy()
			end
		end
	end
end

function onDied() -- INDEX: F-ONDIE ... Restores values when the player dies.
	toolIsEquipped = false
	changeGunStatus("enable")
	recoilMultiplier = defaultRecoilMultiplier
	if Cam then
		Cam.CameraSubject = playerHumanoid
		Cam.CameraType = "Custom"
		Cam.FieldOfView = zoomMin
	end
	if tool then
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
	end
	if playerHumanoid then
		playerHumanoid.WalkSpeed = playerSpeed
	end
	if playerPlayer then
		playerPlayer.CameraMode = "Classic"
	end
	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
		wait(0.03)
	end
end

function zoomIn() -- INDEX: F-ZOMIN ... Zooms in the gun.
	recoilMultiplier = zoomRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed * zoomWalkSpeedMultiplier
	playerPlayer.CameraMode = "LockFirstPerson"
	wait(0.03)
	Cam.CameraType = "Attach"
	Cam.CameraSubject = tool.Sights
	Cam.Focus = tool.Sights.CFrame
	wait(0.03)
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMax - Cam.FieldOfView)/3
		Cam.CoordinateFrame = tool.Sights.CFrame * CFrame.new(0,0,1.6) * CFrame.new(0,0,-0.6/zoomFrames*i)
		wait(0.03)
	end
	Cam.CoordinateFrame = tool.Sights.CFrame * CFrame.new(0,0,1.0)
	Cam.FieldOfView = zoomMax
	isZoomed = true
	tool.Equipped:connect(function(mouse)
		mouse.Icon = "http://www.roblox.com/asset/?id=133339236" -- Invisible mouse.
	end)
end

function zoomOut() -- INDEX: F-ZMOUT ... Zooms out the gun.
	recoilMultiplier = defaultRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed
	Cam.CameraSubject = playerHumanoid
	playerPlayer.CameraMode = "LockFirstPerson"
	Cam.CameraType = "Custom"
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMin - Cam.FieldOfView)/3
		wait(0.03)
	end
	Cam.FieldOfView = zoomMin
	isZoomed = false
		tool.Equipped:connect(function(mouse)
		mouse.Icon = "http://www.roblox.com/asset/?id=131424826" -- Crosshair.
	end)
end

function fireModeChange() -- INDEX: F-MDCHG ... Changes the firemodes.
	FireModeClick:Play()
	if fireMode == 1 then
		fireMode = 2
		updateHUD()
	elseif fireMode == 2 then
		fireMode = 3
		updateHUD()
	elseif fireMode == 3 then
		fireMode = 1
		updateHUD()
	end
end

function fireModeAnimate() -- INDEX: F-FMANI ... Animation for changing fire modes.

	local fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.9 - 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(305 + 30/fireModeAnimateTween*i, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4 + 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 0 + 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.6, 0.2 - .1/fireModeAnimateTween*i)
		wait(0.03)
	end
	
	wait(.1)
	fireModeAnimateTween = 3
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 - 0/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 + 0/fireModeAnimateTween*i, 5 - 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 + 0/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 + 0/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.6, 0.1 - 0/fireModeAnimateTween*i)
		wait(0.03)
	end
	fireModeChange()
	
	wait(0.2)
	fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 + 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 - 30/fireModeAnimateTween*i, -5 + 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 - 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 - 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.6, 0.1 + 0.1/fireModeAnimateTween*i)
		wait(0.03)
	end
	weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	tool.GripPos = Vector3.new(0, -0.6, 0.2)
end

function commandKeys(key) -- INDEX: F-CMDKS ... List of key bindings.
	if key == "v" and canCycleModes then
		changeGunStatus("disable")
		fireModeAnimate()
		wait(.5)
		changeGunStatus("enable")
	elseif key == "z" and canZoom then
		changeGunStatus("disable")
		if not isZoomed then
			zoomIn()
		elseif isZoomed then
			zoomOut()
		end
		wait(.5)
		changeGunStatus("enable")
	elseif key == "r" and canReload and not reloading and AmmoLoaded < AmmoMax then
		changeGunStatus("disable")
		reloading = true
		canReload = true
		Reload()
		reloading = false
		wait(.5)
		changeGunStatus("enable")
	end
end

tool.Equipped:connect(WeldArms)
tool.Unequipped:connect(removeWeldArms)
tool.Activated:connect(onActivated)
game.Players.LocalPlayer.Character.Humanoid.Died:connect(onDied)
]===]
s1.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(0.756184518, -2.74319601, -2.33517456, 0.965925753, -0.258819014, 0, 0.258819014, 0.965925753, 0, 0, 0, 1)
w1.Part1 = p2
w1.C1 = CFrame.new(0.787225664, -2.73487854, 2.33517456, -0.965925753, -0.258819014, 0, -0.258819014, 0.965925753, 0, 0, 0, -1)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(0.787225664, -2.73487854, 2.33517456, -0.965925753, -0.258819014, 0, -0.258819014, 0.965925753, 0, 0, 0, -1)
w2.Part1 = p3
w2.C1 = CFrame.new(0.0160714388, -2.68821263, 0.903213501, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(0.0160714388, -2.68821263, 0.903213501, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w3.Part1 = p4
w3.C1 = CFrame.new(-0.675425708, -2.72381067, 2.33517456, -0.965925813, 0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, -1)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-0.675425708, -2.72381067, 2.33517456, -0.965925813, 0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, -1)
w4.Part1 = p5
w4.C1 = CFrame.new(-0.706466854, -2.7154932, -2.33517456, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-0.706466854, -2.7154932, -2.33517456, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1)
w5.Part1 = p6
w5.C1 = CFrame.new(0.0160714388, -2.81357121, 2.33197021, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w6 = Instance.new("Weld", p6)
w6.Name = "Port1_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(0.0160714388, -2.81357121, 2.33197021, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w6.Part1 = p7
w6.C1 = CFrame.new(-0.135000229, -2.63678288, 0.413036346, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w7 = Instance.new("Weld", p7)
w7.Name = "Port_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-0.135000229, -2.63678288, 0.413036346, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.0932145119, -2.64482427, 0.295715332, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.0932145119, -2.64482427, 0.295715332, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w8.Part1 = p9
w8.C1 = CFrame.new(-0.0160714388, -1.51714325, 2.66893315, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-0.0160714388, -1.51714325, 2.66893315, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w9.Part1 = p10
w9.C1 = CFrame.new(2.94696355, 0.0144642591, 0.303749084, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(2.94696355, 0.0144642591, 0.303749084, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w10.Part1 = p11
w10.C1 = CFrame.new(0.0160714388, -2.84250188, -0.0353572369, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(0.0160714388, -2.84250188, -0.0353572369, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w11.Part1 = p12
w11.C1 = CFrame.new(2.94696355, 0.0144642591, 0.0305356979, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(2.94696355, 0.0144642591, 0.0305356979, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w12.Part1 = p13
w12.C1 = CFrame.new(0.0160714388, -3.06267858, 0.0305356979, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(0.0160714388, -3.06267858, 0.0305356979, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w13.Part1 = p14
w13.C1 = CFrame.new(0.0160714388, -2.81035924, 0.0530357361, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(0.0160714388, -2.81035924, 0.0530357361, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w14.Part1 = p15
w14.C1 = CFrame.new(-2.94696331, 0.128571495, 0.0305356979, 0, 0.99999994, 0, 0.99999994, 0, 0, 0, 0, -1)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-2.94696331, 0.128571495, 0.0305356979, 0, 0.99999994, 0, 0.99999994, 0, 0, 0, 0, -1)
w15.Part1 = p16
w15.C1 = CFrame.new(0.0160713792, -2.68821263, 0.0289286375, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(0.0160713792, -2.68821263, 0.0289286375, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w16.Part1 = p17
w16.C1 = CFrame.new(-0.0160714388, -0.083571434, 2.68178868, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-0.0160714388, -0.083571434, 2.68178868, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w17.Part1 = p18
w17.C1 = CFrame.new(-0.0160714388, -0.0707144737, 2.94696355, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w18 = Instance.new("Weld", p18)
w18.Name = "Sights_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.0160714388, -0.0707144737, 2.94696355, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w18.Part1 = p19
w18.C1 = CFrame.new(2.94696355, 0.0160714388, 0.0691070557, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(2.94696355, 0.0160714388, 0.0691070557, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w19.Part1 = p20
w19.C1 = CFrame.new(0.0160714388, -2.65446782, 0.03214252, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(0.0160714388, -2.65446782, 0.03214252, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w20.Part1 = p21
w20.C1 = CFrame.new(-0.0289285183, -0.0883928165, 2.71232152, 0, 0, 1, -1, 2.98023224e-008, 8.8817842e-016, -2.98023224e-008, -1, 0)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-0.0289285183, -0.0883928165, 2.71232152, 0, 0, 1, -1, 2.98023224e-008, 8.8817842e-016, -2.98023224e-008, -1, 0)
w21.Part1 = p22
w21.C1 = CFrame.new(0.0289286375, -0.120535769, 2.71232152, 0, 0, -1, 1, -2.98023224e-008, -8.8817842e-016, -2.98023224e-008, -1, 0)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(0.0289286375, -0.120535769, 2.71232152, 0, 0, -1, 1, -2.98023224e-008, -8.8817842e-016, -2.98023224e-008, -1, 0)
w22.Part1 = p23
w22.C1 = CFrame.new(2.94696355, 0.0144642591, -0.162321091, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(2.94696355, 0.0144642591, -0.162321091, 0, -1, -0, -1, 0, -0, 0, 0, -1)
w23.Part1 = p24
w23.C1 = CFrame.new(0.0160714388, -2.68178868, -0.424285889, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w24 = Instance.new("Weld", p24)
w24.Name = "Handle_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(0.0160714388, -2.68178868, -0.424285889, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w24.Part1 = p25
w24.C1 = CFrame.new(0.0160714388, -2.50982213, -0.0176784992, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(0.0160714388, -2.50982213, -0.0176784992, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w25.Part1 = p26
w25.C1 = CFrame.new(0.0160714388, -2.59499669, 1.27285767, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(0.0160714388, -2.59499669, 1.27285767, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w26.Part1 = p27
w26.C1 = CFrame.new(0.0160714388, -2.67696691, 2.33517456, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(0.0160714388, -2.67696691, 2.33517456, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w27.Part1 = p28
w27.C1 = CFrame.new(-0.0160714388, -2.67696691, -2.26286316, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-0.0160714388, -2.67696691, -2.26286316, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28.Part1 = p29
w28.C1 = CFrame.new(0.0160714388, -1.95102918, -1.84061432, -1, 0, 0, 0, 0.832050264, 0.554700196, 0, 0.554700196, -0.832050264)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(0.0160714388, -1.95102918, -1.84061432, -1, 0, 0, 0, 0.832050264, 0.554700196, 0, 0.554700196, -0.832050264)
w29.Part1 = p30
w29.C1 = CFrame.new(-0.0160714388, -2.65124822, 0.540000916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-0.0160714388, -2.65124822, 0.540000916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30.Part1 = p31
w30.C1 = CFrame.new(0.0160714388, -2.06562233, 2.37332678, -1, 0, 0, 0, 0.965925813, -0.258819044, 0, -0.258819044, -0.965925813)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(0.0160714388, -2.06562233, 2.37332678, -1, 0, 0, 0, 0.965925813, -0.258819044, 0, -0.258819044, -0.965925813)
w31.Part1 = p32
w31.C1 = CFrame.new(0.0160714388, -2.51946568, -0.835712433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(0.0160714388, -2.51946568, -0.835712433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w32.Part1 = p33
w32.C1 = CFrame.new(0.0160714388, -2.5537107, -0.374415815, -1, 0, 0, 0, 0.959365368, -0.282166302, 0, -0.282166302, -0.959365368)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(0.0160714388, -2.5537107, -0.374415815, -1, 0, 0, 0, 0.959365368, -0.282166302, 0, -0.282166302, -0.959365368)
w33.Part1 = p34
w33.C1 = CFrame.new(0.0160714388, -1.97699273, 1.42430127, -1, 0, 0, 0, 0.707106769, -0.707106769, 0, -0.707106769, -0.707106769)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(0.0160714388, -1.97699273, 1.42430127, -1, 0, 0, 0, 0.707106769, -0.707106769, 0, -0.707106769, -0.707106769)
w34.Part1 = p35
w34.C1 = CFrame.new(0.0160714388, -2.51946568, 0.903213501, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(0.0160714388, -2.51946568, 0.903213501, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w35.Part1 = p36
w35.C1 = CFrame.new(0.0160714388, -2.50339031, -1.29214466, -1, 0, 0, 0, 0.999999881, 0, 0, 0, -0.999999881)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(0.0160714388, -2.50339031, -1.29214466, -1, 0, 0, 0, 0.999999881, 0, 0, 0, -0.999999881)
w36.Part1 = p37
w36.C1 = CFrame.new(-0.0160714388, -1.31143188, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-0.0160714388, -1.31143188, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w37.Part1 = p38
w37.C1 = CFrame.new(-0.0160714388, 2.37803197, -0.0176784992, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(-0.0160714388, 2.37803197, -0.0176784992, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w38.Part1 = p39
w38.C1 = CFrame.new(0.0160714388, -2.34428716, -0.208929062, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(0.0160714388, -2.34428716, -0.208929062, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w39.Part1 = p40
w39.C1 = CFrame.new(0.0160714388, -2.34267712, -1.68267798, -1, 0, 0, 0, 0.999999881, 0, 0, 0, -0.999999881)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(0.0160714388, -2.34267712, -1.68267798, -1, 0, 0, 0, 0.999999881, 0, 0, 0, -0.999999881)
w40.Part1 = p41
w40.C1 = CFrame.new(0.0160714388, -2.29446721, -0.363214493, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(0.0160714388, -2.29446721, -0.363214493, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w41.Part1 = p42
w41.C1 = CFrame.new(-0.0160714388, 2.20606923, -1.12178802, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(-0.0160714388, 2.20606923, -1.12178802, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w42.Part1 = p43
w42.C1 = CFrame.new(-0.0160714388, -1.86267853, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w43 = Instance.new("Weld", p43)
w43.Name = "Part_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(-0.0160714388, -1.86267853, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w43.Part1 = p44
w43.C1 = CFrame.new(-0.0160714388, -1.79518127, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w44 = Instance.new("Weld", p44)
w44.Name = "Part_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(-0.0160714388, -1.79518127, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w44.Part1 = p45
w44.C1 = CFrame.new(0.0160714388, -1.75278902, 1.48920751, -1, 0, 0, 0, 0.707106709, -0.707106769, 0, -0.707106769, -0.707106709)
w45 = Instance.new("Weld", p45)
w45.Name = "Part_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(0.0160714388, -1.75278902, 1.48920751, -1, 0, 0, 0, 0.707106709, -0.707106769, 0, -0.707106769, -0.707106709)
w45.Part1 = p46
w45.C1 = CFrame.new(-0.0160713792, 2.40536046, 0.903213501, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w46 = Instance.new("Weld", p46)
w46.Name = "Part_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(-0.0160713792, 2.40536046, 0.903213501, 1, 0, 0, 0, -1, 0, 0, 0, -1)
w46.Part1 = p47
w46.C1 = CFrame.new(0.0160714388, -2.29928899, 0.106071472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w47 = Instance.new("Weld", p47)
w47.Name = "Part_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(0.0160714388, -2.29928899, 0.106071472, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w47.Part1 = p48
w47.C1 = CFrame.new(0.0160714388, -1.39628398, -1.73599315, -1, 0, 0, 0, 0.707106709, 0.707106769, 0, 0.707106769, -0.707106709)
w48 = Instance.new("Weld", p48)
w48.Name = "Part_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(0.0160714388, -1.39628398, -1.73599315, -1, 0, 0, 0, 0.707106709, 0.707106769, 0, 0.707106769, -0.707106709)
w48.Part1 = p49
w48.C1 = CFrame.new(-0.0160714388, -2.31750488, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w49 = Instance.new("Weld", p49)
w49.Name = "Part_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(-0.0160714388, -2.31750488, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w49.Part1 = p50
w49.C1 = CFrame.new(0.0160714388, 1.5382452, -1.59402049, -1, 0, 0, 0, -0.70710665, 0.70710659, 0, 0.70710659, 0.70710665)
w50 = Instance.new("Weld", p50)
w50.Name = "Part_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(0.0160714388, 1.5382452, -1.59402049, -1, 0, 0, 0, -0.70710665, 0.70710659, 0, 0.70710659, 0.70710665)
w50.Part1 = p51
w50.C1 = CFrame.new(0.0160714388, -2.19481969, -0.101250172, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w51 = Instance.new("Weld", p51)
w51.Name = "Part_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(0.0160714388, -2.19481969, -0.101250172, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w51.Part1 = p52
w51.C1 = CFrame.new(-0.0160714388, -2.58267212, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w52 = Instance.new("Weld", p52)
w52.Name = "Part_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(-0.0160714388, -2.58267212, 2.50821233, 1, 0, -0, 0, 0, 1, 0, -1, 0)
w52.Part1 = p53
w52.C1 = CFrame.new(0.0160714388, -0.929545939, 1.94874859, -1, 0, 0, 0, 0.258818924, -0.965925336, 0, -0.965925336, -0.258818924)
w53 = Instance.new("Weld", p53)
w53.Name = "Muzzle_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(0.0160714388, -0.929545939, 1.94874859, -1, 0, 0, 0, 0.258818924, -0.965925336, 0, -0.965925336, -0.258818924)
w53.Part1 = p54
w53.C1 = CFrame.new(0.0160714388, -2.50500035, 2.72732544, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w54 = Instance.new("Weld", p54)
w54.Name = "Part_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(0.0160714388, -2.50500035, 2.72732544, -1, 0, 0, 0, 1, 0, 0, 0, -1)
w54.Part1 = p55
w54.C1 = CFrame.new(0.0160714388, -1.26582658, 1.70297062, -1, 0, 0, 0, 0.4130584, -0.910704195, 0, -0.910704195, -0.4130584)
w55 = Instance.new("Weld", p55)
w55.Name = "Magazine_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(0.0160714388, -1.26582658, 1.70297062, -1, 0, 0, 0, 0.4130584, -0.910704195, 0, -0.910704195, -0.4130584)
w55.Part1 = p56
w55.C1 = CFrame.new(0.0160716232, -2.11138749, 0.431415588, -1, -8.7339572e-008, 3.81334031e-009, -8.74227766e-008, 0.999048233, -0.0436195284, 0, -0.0436195284, -0.999048233)
w56 = Instance.new("Weld", p56)
w56.Name = "Part_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(0.0160716232, -2.11138749, 0.431415588, -1, -8.7339572e-008, 3.81334031e-009, -8.74227766e-008, 0.999048233, -0.0436195284, 0, -0.0436195284, -0.999048233)
w56.Part1 = p57
w56.C1 = CFrame.new(0.0160714388, -0.935975611, 1.77517748, -1, 0, 0, 0, 0.258818924, -0.965925336, 0, -0.965925336, -0.258818924)
m.Parent = game:service("Workspace")
m:MakeJoints()