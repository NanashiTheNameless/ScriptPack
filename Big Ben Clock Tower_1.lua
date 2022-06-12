--By kash5

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
m.Name = "Big Ben"
m1 = Instance.new("Model")
m1.Name = "Small Block"
m1.Parent = m
m2 = Instance.new("Model")
m2.Name = "Wall"
m2.Parent = m1
m3 = Instance.new("Model")
m3.Name = "Wall"
m3.Parent = m1
m4 = Instance.new("Model")
m4.Name = "Wall"
m4.Parent = m1
m5 = Instance.new("Model")
m5.Name = "Wall"
m5.Parent = m1
m6 = Instance.new("Model")
m6.Name = "Small Block"
m6.Parent = m
m7 = Instance.new("Model")
m7.Name = "Wall"
m7.Parent = m6
m8 = Instance.new("Model")
m8.Name = "Wall"
m8.Parent = m6
m9 = Instance.new("Model")
m9.Name = "Wall"
m9.Parent = m6
m10 = Instance.new("Model")
m10.Name = "Wall"
m10.Parent = m6
m11 = Instance.new("Model")
m11.Name = "Middle Block"
m11.Parent = m
m12 = Instance.new("Model")
m12.Name = "Wall"
m12.Parent = m11
m13 = Instance.new("Model")
m13.Name = "Wall"
m13.Parent = m11
m14 = Instance.new("Model")
m14.Name = "Wall"
m14.Parent = m11
m15 = Instance.new("Model")
m15.Name = "Wall"
m15.Parent = m11
m16 = Instance.new("Model")
m16.Name = "Middle Block"
m16.Parent = m
m17 = Instance.new("Model")
m17.Name = "Wall"
m17.Parent = m16
m18 = Instance.new("Model")
m18.Name = "Wall"
m18.Parent = m16
m19 = Instance.new("Model")
m19.Name = "Wall"
m19.Parent = m16
m20 = Instance.new("Model")
m20.Name = "Wall"
m20.Parent = m16
m21 = Instance.new("Model")
m21.Name = "Staircases"
m21.Parent = m
m22 = Instance.new("Model")
m22.Name = "Staircase"
m22.Parent = m21
m23 = Instance.new("Model")
m23.Name = "Staircase"
m23.Parent = m21
m24 = Instance.new("Model")
m24.Name = "Staircase"
m24.Parent = m21
m25 = Instance.new("Model")
m25.Name = "Staircase"
m25.Parent = m21
m26 = Instance.new("Model")
m26.Name = "Staircase"
m26.Parent = m21
m27 = Instance.new("Model")
m27.Name = "Staircase"
m27.Parent = m21
m28 = Instance.new("Model")
m28.Name = "Staircase"
m28.Parent = m21
m29 = Instance.new("Model")
m29.Name = "Staircase"
m29.Parent = m21
m30 = Instance.new("Model")
m30.Name = "Middle Block"
m30.Parent = m
m31 = Instance.new("Model")
m31.Name = "Wall"
m31.Parent = m30
m32 = Instance.new("Model")
m32.Name = "Wall"
m32.Parent = m30
m33 = Instance.new("Model")
m33.Name = "Wall"
m33.Parent = m30
m34 = Instance.new("Model")
m34.Name = "Wall"
m34.Parent = m30
m35 = Instance.new("Model")
m35.Name = "Post"
m35.Parent = m30
m36 = Instance.new("Model")
m36.Name = "Ground Block"
m36.Parent = m
m37 = Instance.new("Model")
m37.Name = "Door"
m37.Parent = m36
m38 = Instance.new("Model")
m38.Name = "Door"
m38.Parent = m36
m39 = Instance.new("Model")
m39.Name = "Door"
m39.Parent = m36
m40 = Instance.new("Model")
m40.Name = "Door"
m40.Parent = m36
m41 = Instance.new("Model")
m41.Name = "Clock"
m41.Parent = m
m42 = Instance.new("Model")
m42.Name = "Clock Block Staircase"
m42.Parent = m41
m43 = Instance.new("Model")
m43.Name = "Staircase"
m43.Parent = m42
m44 = Instance.new("Model")
m44.Name = "Staircase"
m44.Parent = m42
m45 = Instance.new("Model")
m45.Name = "Clockface"
m45.Parent = m41
m46 = Instance.new("Model")
m46.Name = "Gold Bars"
m46.Parent = m41
m47 = Instance.new("Model")
m47.Name = "Bells"
m47.Parent = m41
m48 = Instance.new("Model")
m48.Name = "Bells"
m48.Parent = m41
m49 = Instance.new("Model")
m49.Name = "Top Block"
m49.Parent = m
m50 = Instance.new("Model")
m50.Name = "Column"
m50.Parent = m49
m51 = Instance.new("Model")
m51.Name = "Fence"
m51.Parent = m49
m52 = Instance.new("Model")
m52.Name = "Column"
m52.Parent = m49
m53 = Instance.new("Model")
m53.Name = "Floor"
m53.Parent = m49
m54 = Instance.new("Model")
m54.Name = "Roof"
m54.Parent = m49
m55 = Instance.new("Model")
m55.Name = "Post"
m55.Parent = m54
m56 = Instance.new("Model")
m56.Name = "Post"
m56.Parent = m54
m57 = Instance.new("Model")
m57.Name = "Post"
m57.Parent = m54
m58 = Instance.new("Model")
m58.Name = "Post"
m58.Parent = m54
m59 = Instance.new("Model")
m59.Name = "Post"
m59.Parent = m54
m60 = Instance.new("Model")
m60.Name = "Post"
m60.Parent = m54
m61 = Instance.new("Model")
m61.Name = "Post"
m61.Parent = m54
m62 = Instance.new("Model")
m62.Name = "Fence"
m62.Parent = m49
m63 = Instance.new("Model")
m63.Name = "Fence"
m63.Parent = m49
m64 = Instance.new("Model")
m64.Name = "Column"
m64.Parent = m49
m65 = Instance.new("Model")
m65.Name = "Column"
m65.Parent = m49
m66 = Instance.new("Model")
m66.Name = "Fence"
m66.Parent = m49
p1 = Instance.new("Part", m1)
p1.BrickColor = BrickColor.new("Reddish brown")
p1.Material = Enum.Material.Slate
p1.CFrame = CFrame.new(-117.5, 103.789955, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.FormFactor = Enum.FormFactor.Plate
p1.Size = Vector3.new(2, 0.400000006, 48)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Weld
p2 = Instance.new("Part", m1)
p2.BrickColor = BrickColor.new("Reddish brown")
p2.Material = Enum.Material.Slate
p2.CFrame = CFrame.new(-140.5, 103.789955, 80.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p2.FormFactor = Enum.FormFactor.Plate
p2.Size = Vector3.new(2, 0.400000006, 48)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Weld
p3 = Instance.new("Part", m1)
p3.BrickColor = BrickColor.new("Reddish brown")
p3.Material = Enum.Material.Slate
p3.CFrame = CFrame.new(-165.5, 103.789955, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p3.FormFactor = Enum.FormFactor.Plate
p3.Size = Vector3.new(2, 0.400000006, 48)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Weld
p4 = Instance.new("Part", m1)
p4.BrickColor = BrickColor.new("Reddish brown")
p4.Material = Enum.Material.Slate
p4.CFrame = CFrame.new(-142.5, 103.789955, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p4.FormFactor = Enum.FormFactor.Plate
p4.Size = Vector3.new(2, 0.400000006, 48)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Weld
p5 = Instance.new("Part", m1)
p5.BrickColor = BrickColor.new("Reddish brown")
p5.Material = Enum.Material.Slate
p5.CFrame = CFrame.new(-140.5, 116.189964, 80.5000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p5.FormFactor = Enum.FormFactor.Plate
p5.Size = Vector3.new(2, 0.400000006, 48)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Weld
p6 = Instance.new("Part", m1)
p6.BrickColor = BrickColor.new("Reddish brown")
p6.Material = Enum.Material.Slate
p6.CFrame = CFrame.new(-142.5, 116.189964, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p6.FormFactor = Enum.FormFactor.Plate
p6.Size = Vector3.new(2, 0.400000006, 48)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Weld
p7 = Instance.new("Part", m1)
p7.BrickColor = BrickColor.new("Reddish brown")
p7.Material = Enum.Material.Slate
p7.CFrame = CFrame.new(-165.5, 116.189949, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p7.FormFactor = Enum.FormFactor.Plate
p7.Size = Vector3.new(2, 0.400000006, 48)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Weld
p8 = Instance.new("Part", m1)
p8.BrickColor = BrickColor.new("Reddish brown")
p8.Material = Enum.Material.Slate
p8.CFrame = CFrame.new(-117.5, 116.189964, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p8.FormFactor = Enum.FormFactor.Plate
p8.Size = Vector3.new(2, 0.400000006, 48)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Weld
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Br. yellowish orange")
p9.Material = Enum.Material.Concrete
p9.CFrame = CFrame.new(-117, 109.989952, 124.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p9.Size = Vector3.new(2, 11.9999962, 3)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Br. yellowish orange")
p10.Material = Enum.Material.Concrete
p10.CFrame = CFrame.new(-117.5, 109.989967, 126.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p10.Size = Vector3.new(2, 12.0000038, 2)
p10.BottomSurface = Enum.SurfaceType.Weld
p10.TopSurface = Enum.SurfaceType.Weld
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Br. yellowish orange")
p11.Material = Enum.Material.Concrete
p11.CFrame = CFrame.new(-117.5, 109.989967, 121.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p11.Size = Vector3.new(4, 12.0000114, 2)
p11.BottomSurface = Enum.SurfaceType.Weld
p11.TopSurface = Enum.SurfaceType.Weld
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Br. yellowish orange")
p12.Material = Enum.Material.Concrete
p12.CFrame = CFrame.new(-117, 109.989967, 115.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p12.Size = Vector3.new(2, 11.9999933, 1)
p12.BottomSurface = Enum.SurfaceType.Weld
p12.TopSurface = Enum.SurfaceType.Weld
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Br. yellowish orange")
p13.Material = Enum.Material.Concrete
p13.CFrame = CFrame.new(-117, 109.989967, 111.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p13.Size = Vector3.new(2, 11.9999981, 1)
p13.BottomSurface = Enum.SurfaceType.Weld
p13.TopSurface = Enum.SurfaceType.Weld
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Br. yellowish orange")
p14.Material = Enum.Material.Concrete
p14.CFrame = CFrame.new(-117, 109.989967, 107.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p14.Size = Vector3.new(2, 11.9999905, 1)
p14.BottomSurface = Enum.SurfaceType.Weld
p14.TopSurface = Enum.SurfaceType.Weld
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Br. yellowish orange")
p15.Material = Enum.Material.Concrete
p15.CFrame = CFrame.new(-118, 109.989967, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p15.Size = Vector3.new(30, 12.000001, 1)
p15.BottomSurface = Enum.SurfaceType.Weld
p15.TopSurface = Enum.SurfaceType.Weld
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Br. yellowish orange")
p16.Material = Enum.Material.Concrete
p16.CFrame = CFrame.new(-117, 109.989967, 97.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p16.Size = Vector3.new(2, 12.0000029, 1)
p16.BottomSurface = Enum.SurfaceType.Weld
p16.TopSurface = Enum.SurfaceType.Weld
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Br. yellowish orange")
p17.Material = Enum.Material.Concrete
p17.CFrame = CFrame.new(-117, 109.989967, 101.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p17.Size = Vector3.new(2, 12, 1)
p17.BottomSurface = Enum.SurfaceType.Weld
p17.TopSurface = Enum.SurfaceType.Weld
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Br. yellowish orange")
p18.Material = Enum.Material.Concrete
p18.CFrame = CFrame.new(-117, 109.989967, 93.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p18.Size = Vector3.new(2, 12.000001, 1)
p18.BottomSurface = Enum.SurfaceType.Weld
p18.TopSurface = Enum.SurfaceType.Weld
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Br. yellowish orange")
p19.Material = Enum.Material.Concrete
p19.CFrame = CFrame.new(-117.5, 109.989967, 82.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p19.Size = Vector3.new(2, 11.9999886, 2)
p19.BottomSurface = Enum.SurfaceType.Weld
p19.TopSurface = Enum.SurfaceType.Weld
p20 = Instance.new("Part", m2)
p20.BrickColor = BrickColor.new("Br. yellowish orange")
p20.Material = Enum.Material.Concrete
p20.CFrame = CFrame.new(-117, 109.989952, 84.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p20.Size = Vector3.new(2, 12.000001, 3)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
p21 = Instance.new("Part", m2)
p21.BrickColor = BrickColor.new("Br. yellowish orange")
p21.Material = Enum.Material.Concrete
p21.CFrame = CFrame.new(-117.5, 109.989967, 87.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p21.Size = Vector3.new(4, 12.0000019, 2)
p21.BottomSurface = Enum.SurfaceType.Weld
p21.TopSurface = Enum.SurfaceType.Weld
p22 = Instance.new("Part", m3)
p22.BrickColor = BrickColor.new("Br. yellowish orange")
p22.Material = Enum.Material.Concrete
p22.CFrame = CFrame.new(-164.5, 109.989967, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p22.Size = Vector3.new(4, 11.9999847, 2)
p22.BottomSurface = Enum.SurfaceType.Weld
p22.TopSurface = Enum.SurfaceType.Weld
p23 = Instance.new("Part", m3)
p23.BrickColor = BrickColor.new("Br. yellowish orange")
p23.Material = Enum.Material.Concrete
p23.CFrame = CFrame.new(-121.5, 109.989952, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p23.Size = Vector3.new(2, 11.9999866, 3)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
p24 = Instance.new("Part", m3)
p24.BrickColor = BrickColor.new("Br. yellowish orange")
p24.Material = Enum.Material.Concrete
p24.CFrame = CFrame.new(-118.5, 109.989967, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p24.Size = Vector3.new(4, 11.9999847, 2)
p24.BottomSurface = Enum.SurfaceType.Weld
p24.TopSurface = Enum.SurfaceType.Weld
p25 = Instance.new("Part", m3)
p25.BrickColor = BrickColor.new("Br. yellowish orange")
p25.Material = Enum.Material.Concrete
p25.CFrame = CFrame.new(-148.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p25.Size = Vector3.new(2, 11.9999924, 1)
p25.BottomSurface = Enum.SurfaceType.Weld
p25.TopSurface = Enum.SurfaceType.Weld
p26 = Instance.new("Part", m3)
p26.BrickColor = BrickColor.new("Br. yellowish orange")
p26.Material = Enum.Material.Concrete
p26.CFrame = CFrame.new(-134.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p26.Size = Vector3.new(2, 11.9999943, 1)
p26.BottomSurface = Enum.SurfaceType.Weld
p26.TopSurface = Enum.SurfaceType.Weld
p27 = Instance.new("Part", m3)
p27.BrickColor = BrickColor.new("Br. yellowish orange")
p27.Material = Enum.Material.Concrete
p27.CFrame = CFrame.new(-152.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p27.Size = Vector3.new(2, 11.9999847, 1)
p27.BottomSurface = Enum.SurfaceType.Weld
p27.TopSurface = Enum.SurfaceType.Weld
p28 = Instance.new("Part", m3)
p28.BrickColor = BrickColor.new("Br. yellowish orange")
p28.Material = Enum.Material.Concrete
p28.CFrame = CFrame.new(-141.5, 109.989967, 128.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p28.Size = Vector3.new(30, 11.9999886, 1)
p28.BottomSurface = Enum.SurfaceType.Weld
p28.TopSurface = Enum.SurfaceType.Weld
p29 = Instance.new("Part", m3)
p29.BrickColor = BrickColor.new("Br. yellowish orange")
p29.Material = Enum.Material.Concrete
p29.CFrame = CFrame.new(-138.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p29.Size = Vector3.new(2, 11.9999847, 1)
p29.BottomSurface = Enum.SurfaceType.Weld
p29.TopSurface = Enum.SurfaceType.Weld
p30 = Instance.new("Part", m3)
p30.BrickColor = BrickColor.new("Br. yellowish orange")
p30.Material = Enum.Material.Concrete
p30.CFrame = CFrame.new(-144.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p30.Size = Vector3.new(2, 12.000001, 1)
p30.BottomSurface = Enum.SurfaceType.Weld
p30.TopSurface = Enum.SurfaceType.Weld
p31 = Instance.new("Part", m3)
p31.BrickColor = BrickColor.new("Br. yellowish orange")
p31.Material = Enum.Material.Concrete
p31.CFrame = CFrame.new(-130.5, 109.989967, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p31.Size = Vector3.new(2, 12.000001, 1)
p31.BottomSurface = Enum.SurfaceType.Weld
p31.TopSurface = Enum.SurfaceType.Weld
p32 = Instance.new("Part", m3)
p32.BrickColor = BrickColor.new("Br. yellowish orange")
p32.Material = Enum.Material.Concrete
p32.CFrame = CFrame.new(-124.5, 109.989967, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p32.Size = Vector3.new(4, 11.9999866, 2)
p32.BottomSurface = Enum.SurfaceType.Weld
p32.TopSurface = Enum.SurfaceType.Weld
p33 = Instance.new("Part", m3)
p33.BrickColor = BrickColor.new("Br. yellowish orange")
p33.Material = Enum.Material.Concrete
p33.CFrame = CFrame.new(-158.5, 109.989967, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p33.Size = Vector3.new(4, 11.9999886, 2)
p33.BottomSurface = Enum.SurfaceType.Weld
p33.TopSurface = Enum.SurfaceType.Weld
p34 = Instance.new("Part", m3)
p34.BrickColor = BrickColor.new("Br. yellowish orange")
p34.Material = Enum.Material.Concrete
p34.CFrame = CFrame.new(-161.5, 109.989952, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p34.Size = Vector3.new(2, 11.9999905, 3)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
p35 = Instance.new("Part", m4)
p35.BrickColor = BrickColor.new("Br. yellowish orange")
p35.Material = Enum.Material.Concrete
p35.CFrame = CFrame.new(-118.5, 109.989967, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p35.Size = Vector3.new(4, 11.9999847, 2)
p35.BottomSurface = Enum.SurfaceType.Weld
p35.TopSurface = Enum.SurfaceType.Weld
p36 = Instance.new("Part", m4)
p36.BrickColor = BrickColor.new("Br. yellowish orange")
p36.Material = Enum.Material.Concrete
p36.CFrame = CFrame.new(-161.5, 109.989952, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p36.Size = Vector3.new(2, 11.9999866, 3)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
p37 = Instance.new("Part", m4)
p37.BrickColor = BrickColor.new("Br. yellowish orange")
p37.Material = Enum.Material.Concrete
p37.CFrame = CFrame.new(-164.5, 109.989952, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p37.Size = Vector3.new(4, 11.9999847, 2)
p37.BottomSurface = Enum.SurfaceType.Weld
p37.TopSurface = Enum.SurfaceType.Weld
p38 = Instance.new("Part", m4)
p38.BrickColor = BrickColor.new("Br. yellowish orange")
p38.Material = Enum.Material.Concrete
p38.CFrame = CFrame.new(-134.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p38.Size = Vector3.new(2, 11.9999924, 1)
p38.BottomSurface = Enum.SurfaceType.Weld
p38.TopSurface = Enum.SurfaceType.Weld
p39 = Instance.new("Part", m4)
p39.BrickColor = BrickColor.new("Br. yellowish orange")
p39.Material = Enum.Material.Concrete
p39.CFrame = CFrame.new(-148.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p39.Size = Vector3.new(2, 11.9999943, 1)
p39.BottomSurface = Enum.SurfaceType.Weld
p39.TopSurface = Enum.SurfaceType.Weld
p40 = Instance.new("Part", m4)
p40.BrickColor = BrickColor.new("Br. yellowish orange")
p40.Material = Enum.Material.Concrete
p40.CFrame = CFrame.new(-130.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p40.Size = Vector3.new(2, 11.9999847, 1)
p40.BottomSurface = Enum.SurfaceType.Weld
p40.TopSurface = Enum.SurfaceType.Weld
p41 = Instance.new("Part", m4)
p41.BrickColor = BrickColor.new("Br. yellowish orange")
p41.Material = Enum.Material.Concrete
p41.CFrame = CFrame.new(-141.5, 109.989967, 81.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p41.Size = Vector3.new(30, 11.9999886, 1)
p41.BottomSurface = Enum.SurfaceType.Weld
p41.TopSurface = Enum.SurfaceType.Weld
p42 = Instance.new("Part", m4)
p42.BrickColor = BrickColor.new("Br. yellowish orange")
p42.Material = Enum.Material.Concrete
p42.CFrame = CFrame.new(-144.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p42.Size = Vector3.new(2, 11.9999847, 1)
p42.BottomSurface = Enum.SurfaceType.Weld
p42.TopSurface = Enum.SurfaceType.Weld
p43 = Instance.new("Part", m4)
p43.BrickColor = BrickColor.new("Br. yellowish orange")
p43.Material = Enum.Material.Concrete
p43.CFrame = CFrame.new(-138.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p43.Size = Vector3.new(2, 12.000001, 1)
p43.BottomSurface = Enum.SurfaceType.Weld
p43.TopSurface = Enum.SurfaceType.Weld
p44 = Instance.new("Part", m4)
p44.BrickColor = BrickColor.new("Br. yellowish orange")
p44.Material = Enum.Material.Concrete
p44.CFrame = CFrame.new(-152.5, 109.989967, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p44.Size = Vector3.new(2, 12.000001, 1)
p44.BottomSurface = Enum.SurfaceType.Weld
p44.TopSurface = Enum.SurfaceType.Weld
p45 = Instance.new("Part", m4)
p45.BrickColor = BrickColor.new("Br. yellowish orange")
p45.Material = Enum.Material.Concrete
p45.CFrame = CFrame.new(-158.5, 109.989967, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p45.Size = Vector3.new(4, 11.9999866, 2)
p45.BottomSurface = Enum.SurfaceType.Weld
p45.TopSurface = Enum.SurfaceType.Weld
p46 = Instance.new("Part", m4)
p46.BrickColor = BrickColor.new("Br. yellowish orange")
p46.Material = Enum.Material.Concrete
p46.CFrame = CFrame.new(-124.5, 109.989967, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p46.Size = Vector3.new(4, 11.9999886, 2)
p46.BottomSurface = Enum.SurfaceType.Weld
p46.TopSurface = Enum.SurfaceType.Weld
p47 = Instance.new("Part", m4)
p47.BrickColor = BrickColor.new("Br. yellowish orange")
p47.Material = Enum.Material.Concrete
p47.CFrame = CFrame.new(-121.5, 109.989952, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p47.Size = Vector3.new(2, 11.9999905, 3)
p47.BottomSurface = Enum.SurfaceType.Smooth
p47.TopSurface = Enum.SurfaceType.Smooth
p48 = Instance.new("Part", m5)
p48.BrickColor = BrickColor.new("Br. yellowish orange")
p48.Material = Enum.Material.Concrete
p48.CFrame = CFrame.new(-166, 109.989952, 84.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p48.Size = Vector3.new(2, 11.9999962, 3)
p48.BottomSurface = Enum.SurfaceType.Smooth
p48.TopSurface = Enum.SurfaceType.Smooth
p49 = Instance.new("Part", m5)
p49.BrickColor = BrickColor.new("Br. yellowish orange")
p49.Material = Enum.Material.Concrete
p49.CFrame = CFrame.new(-165.5, 109.989952, 82.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p49.Size = Vector3.new(2, 12.0000038, 2)
p49.BottomSurface = Enum.SurfaceType.Weld
p49.TopSurface = Enum.SurfaceType.Weld
p50 = Instance.new("Part", m5)
p50.BrickColor = BrickColor.new("Br. yellowish orange")
p50.Material = Enum.Material.Concrete
p50.CFrame = CFrame.new(-165.5, 109.989952, 87.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p50.Size = Vector3.new(4, 12.0000114, 2)
p50.BottomSurface = Enum.SurfaceType.Weld
p50.TopSurface = Enum.SurfaceType.Weld
p51 = Instance.new("Part", m5)
p51.BrickColor = BrickColor.new("Br. yellowish orange")
p51.Material = Enum.Material.Concrete
p51.CFrame = CFrame.new(-166, 109.989952, 93.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p51.Size = Vector3.new(2, 11.9999933, 1)
p51.BottomSurface = Enum.SurfaceType.Weld
p51.TopSurface = Enum.SurfaceType.Weld
p52 = Instance.new("Part", m5)
p52.BrickColor = BrickColor.new("Br. yellowish orange")
p52.Material = Enum.Material.Concrete
p52.CFrame = CFrame.new(-166, 109.989952, 97.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p52.Size = Vector3.new(2, 11.9999981, 1)
p52.BottomSurface = Enum.SurfaceType.Weld
p52.TopSurface = Enum.SurfaceType.Weld
p53 = Instance.new("Part", m5)
p53.BrickColor = BrickColor.new("Br. yellowish orange")
p53.Material = Enum.Material.Concrete
p53.CFrame = CFrame.new(-166, 109.989952, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p53.Size = Vector3.new(2, 11.9999905, 1)
p53.BottomSurface = Enum.SurfaceType.Weld
p53.TopSurface = Enum.SurfaceType.Weld
p54 = Instance.new("Part", m5)
p54.BrickColor = BrickColor.new("Br. yellowish orange")
p54.Material = Enum.Material.Concrete
p54.CFrame = CFrame.new(-165, 109.989952, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p54.Size = Vector3.new(30, 12.000001, 1)
p54.BottomSurface = Enum.SurfaceType.Weld
p54.TopSurface = Enum.SurfaceType.Weld
p55 = Instance.new("Part", m5)
p55.BrickColor = BrickColor.new("Br. yellowish orange")
p55.Material = Enum.Material.Concrete
p55.CFrame = CFrame.new(-166, 109.989952, 111.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p55.Size = Vector3.new(2, 12.0000029, 1)
p55.BottomSurface = Enum.SurfaceType.Weld
p55.TopSurface = Enum.SurfaceType.Weld
p56 = Instance.new("Part", m5)
p56.BrickColor = BrickColor.new("Br. yellowish orange")
p56.Material = Enum.Material.Concrete
p56.CFrame = CFrame.new(-166, 109.989952, 107.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p56.Size = Vector3.new(2, 12, 1)
p56.BottomSurface = Enum.SurfaceType.Weld
p56.TopSurface = Enum.SurfaceType.Weld
p57 = Instance.new("Part", m5)
p57.BrickColor = BrickColor.new("Br. yellowish orange")
p57.Material = Enum.Material.Concrete
p57.CFrame = CFrame.new(-166, 109.989952, 115.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p57.Size = Vector3.new(2, 12.000001, 1)
p57.BottomSurface = Enum.SurfaceType.Weld
p57.TopSurface = Enum.SurfaceType.Weld
p58 = Instance.new("Part", m5)
p58.BrickColor = BrickColor.new("Br. yellowish orange")
p58.Material = Enum.Material.Concrete
p58.CFrame = CFrame.new(-165.5, 109.989952, 126.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p58.Size = Vector3.new(2, 11.9999886, 2)
p58.BottomSurface = Enum.SurfaceType.Weld
p58.TopSurface = Enum.SurfaceType.Weld
p59 = Instance.new("Part", m5)
p59.BrickColor = BrickColor.new("Br. yellowish orange")
p59.Material = Enum.Material.Concrete
p59.CFrame = CFrame.new(-166, 109.989952, 124.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p59.Size = Vector3.new(2, 12.000001, 3)
p59.BottomSurface = Enum.SurfaceType.Smooth
p59.TopSurface = Enum.SurfaceType.Smooth
p60 = Instance.new("Part", m5)
p60.BrickColor = BrickColor.new("Br. yellowish orange")
p60.Material = Enum.Material.Concrete
p60.CFrame = CFrame.new(-165.5, 109.989952, 121.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p60.Size = Vector3.new(4, 12.0000019, 2)
p60.BottomSurface = Enum.SurfaceType.Weld
p60.TopSurface = Enum.SurfaceType.Weld
p61 = Instance.new("Part", m6)
p61.BrickColor = BrickColor.new("Reddish brown")
p61.Material = Enum.Material.Slate
p61.CFrame = CFrame.new(-117.5, 52.5899506, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p61.FormFactor = Enum.FormFactor.Plate
p61.Size = Vector3.new(2, 0.400000006, 48)
p61.BottomSurface = Enum.SurfaceType.Smooth
p61.TopSurface = Enum.SurfaceType.Weld
p62 = Instance.new("Part", m6)
p62.BrickColor = BrickColor.new("Reddish brown")
p62.Material = Enum.Material.Slate
p62.CFrame = CFrame.new(-140.5, 52.5899506, 80.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p62.FormFactor = Enum.FormFactor.Plate
p62.Size = Vector3.new(2, 0.400000006, 48)
p62.BottomSurface = Enum.SurfaceType.Smooth
p62.TopSurface = Enum.SurfaceType.Weld
p63 = Instance.new("Part", m6)
p63.BrickColor = BrickColor.new("Reddish brown")
p63.Material = Enum.Material.Slate
p63.CFrame = CFrame.new(-165.5, 52.5899506, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p63.FormFactor = Enum.FormFactor.Plate
p63.Size = Vector3.new(2, 0.400000006, 48)
p63.BottomSurface = Enum.SurfaceType.Smooth
p63.TopSurface = Enum.SurfaceType.Weld
p64 = Instance.new("Part", m6)
p64.BrickColor = BrickColor.new("Reddish brown")
p64.Material = Enum.Material.Slate
p64.CFrame = CFrame.new(-142.5, 52.5899506, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p64.FormFactor = Enum.FormFactor.Plate
p64.Size = Vector3.new(2, 0.400000006, 48)
p64.BottomSurface = Enum.SurfaceType.Smooth
p64.TopSurface = Enum.SurfaceType.Weld
p65 = Instance.new("Part", m6)
p65.BrickColor = BrickColor.new("Reddish brown")
p65.Material = Enum.Material.Slate
p65.CFrame = CFrame.new(-140.5, 64.9899521, 80.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p65.FormFactor = Enum.FormFactor.Plate
p65.Size = Vector3.new(2, 0.400000006, 48)
p65.BottomSurface = Enum.SurfaceType.Smooth
p65.TopSurface = Enum.SurfaceType.Weld
p66 = Instance.new("Part", m6)
p66.BrickColor = BrickColor.new("Reddish brown")
p66.Material = Enum.Material.Slate
p66.CFrame = CFrame.new(-142.5, 64.9899521, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p66.FormFactor = Enum.FormFactor.Plate
p66.Size = Vector3.new(2, 0.400000006, 48)
p66.BottomSurface = Enum.SurfaceType.Smooth
p66.TopSurface = Enum.SurfaceType.Weld
p67 = Instance.new("Part", m6)
p67.BrickColor = BrickColor.new("Reddish brown")
p67.Material = Enum.Material.Slate
p67.CFrame = CFrame.new(-165.5, 64.9899521, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p67.FormFactor = Enum.FormFactor.Plate
p67.Size = Vector3.new(2, 0.400000006, 48)
p67.BottomSurface = Enum.SurfaceType.Smooth
p67.TopSurface = Enum.SurfaceType.Weld
p68 = Instance.new("Part", m6)
p68.BrickColor = BrickColor.new("Reddish brown")
p68.Material = Enum.Material.Slate
p68.CFrame = CFrame.new(-117.5, 64.9899521, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p68.FormFactor = Enum.FormFactor.Plate
p68.Size = Vector3.new(2, 0.400000006, 48)
p68.BottomSurface = Enum.SurfaceType.Smooth
p68.TopSurface = Enum.SurfaceType.Weld
p69 = Instance.new("Part", m7)
p69.BrickColor = BrickColor.new("Br. yellowish orange")
p69.Material = Enum.Material.Concrete
p69.CFrame = CFrame.new(-117, 58.7899513, 124.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p69.Size = Vector3.new(2, 11.9999962, 3)
p69.BottomSurface = Enum.SurfaceType.Smooth
p69.TopSurface = Enum.SurfaceType.Smooth
p70 = Instance.new("Part", m7)
p70.BrickColor = BrickColor.new("Br. yellowish orange")
p70.Material = Enum.Material.Concrete
p70.CFrame = CFrame.new(-117.5, 58.7899513, 126.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p70.Size = Vector3.new(2, 12.0000038, 2)
p70.BottomSurface = Enum.SurfaceType.Weld
p70.TopSurface = Enum.SurfaceType.Weld
p71 = Instance.new("Part", m7)
p71.BrickColor = BrickColor.new("Br. yellowish orange")
p71.Material = Enum.Material.Concrete
p71.CFrame = CFrame.new(-117.5, 58.7899513, 121.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p71.Size = Vector3.new(4, 12.0000114, 2)
p71.BottomSurface = Enum.SurfaceType.Weld
p71.TopSurface = Enum.SurfaceType.Weld
p72 = Instance.new("Part", m7)
p72.BrickColor = BrickColor.new("Br. yellowish orange")
p72.Material = Enum.Material.Concrete
p72.CFrame = CFrame.new(-117, 58.7899513, 115.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p72.Size = Vector3.new(2, 11.9999933, 1)
p72.BottomSurface = Enum.SurfaceType.Weld
p72.TopSurface = Enum.SurfaceType.Weld
p73 = Instance.new("Part", m7)
p73.BrickColor = BrickColor.new("Br. yellowish orange")
p73.Material = Enum.Material.Concrete
p73.CFrame = CFrame.new(-117, 58.7899513, 111.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p73.Size = Vector3.new(2, 11.9999981, 1)
p73.BottomSurface = Enum.SurfaceType.Weld
p73.TopSurface = Enum.SurfaceType.Weld
p74 = Instance.new("Part", m7)
p74.BrickColor = BrickColor.new("Br. yellowish orange")
p74.Material = Enum.Material.Concrete
p74.CFrame = CFrame.new(-117, 58.7899513, 107.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p74.Size = Vector3.new(2, 11.9999905, 1)
p74.BottomSurface = Enum.SurfaceType.Weld
p74.TopSurface = Enum.SurfaceType.Weld
p75 = Instance.new("Part", m7)
p75.BrickColor = BrickColor.new("Br. yellowish orange")
p75.Material = Enum.Material.Concrete
p75.CFrame = CFrame.new(-118, 58.7899513, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p75.Size = Vector3.new(30, 12.000001, 1)
p75.BottomSurface = Enum.SurfaceType.Weld
p75.TopSurface = Enum.SurfaceType.Weld
p76 = Instance.new("Part", m7)
p76.BrickColor = BrickColor.new("Br. yellowish orange")
p76.Material = Enum.Material.Concrete
p76.CFrame = CFrame.new(-117, 58.7899513, 97.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p76.Size = Vector3.new(2, 12.0000029, 1)
p76.BottomSurface = Enum.SurfaceType.Weld
p76.TopSurface = Enum.SurfaceType.Weld
p77 = Instance.new("Part", m7)
p77.BrickColor = BrickColor.new("Br. yellowish orange")
p77.Material = Enum.Material.Concrete
p77.CFrame = CFrame.new(-117, 58.7899513, 101.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p77.Size = Vector3.new(2, 12, 1)
p77.BottomSurface = Enum.SurfaceType.Weld
p77.TopSurface = Enum.SurfaceType.Weld
p78 = Instance.new("Part", m7)
p78.BrickColor = BrickColor.new("Br. yellowish orange")
p78.Material = Enum.Material.Concrete
p78.CFrame = CFrame.new(-117, 58.7899513, 93.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p78.Size = Vector3.new(2, 12.000001, 1)
p78.BottomSurface = Enum.SurfaceType.Weld
p78.TopSurface = Enum.SurfaceType.Weld
p79 = Instance.new("Part", m7)
p79.BrickColor = BrickColor.new("Br. yellowish orange")
p79.Material = Enum.Material.Concrete
p79.CFrame = CFrame.new(-117.5, 58.7899513, 82.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p79.Size = Vector3.new(2, 11.9999886, 2)
p79.BottomSurface = Enum.SurfaceType.Weld
p79.TopSurface = Enum.SurfaceType.Weld
p80 = Instance.new("Part", m7)
p80.BrickColor = BrickColor.new("Br. yellowish orange")
p80.Material = Enum.Material.Concrete
p80.CFrame = CFrame.new(-117, 58.7899513, 84.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p80.Size = Vector3.new(2, 12.000001, 3)
p80.BottomSurface = Enum.SurfaceType.Smooth
p80.TopSurface = Enum.SurfaceType.Smooth
p81 = Instance.new("Part", m7)
p81.BrickColor = BrickColor.new("Br. yellowish orange")
p81.Material = Enum.Material.Concrete
p81.CFrame = CFrame.new(-117.5, 58.7899513, 87.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p81.Size = Vector3.new(4, 12.0000019, 2)
p81.BottomSurface = Enum.SurfaceType.Weld
p81.TopSurface = Enum.SurfaceType.Weld
p82 = Instance.new("Part", m8)
p82.BrickColor = BrickColor.new("Br. yellowish orange")
p82.Material = Enum.Material.Concrete
p82.CFrame = CFrame.new(-164.5, 58.7899513, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p82.Size = Vector3.new(4, 11.9999847, 2)
p82.BottomSurface = Enum.SurfaceType.Weld
p82.TopSurface = Enum.SurfaceType.Weld
p83 = Instance.new("Part", m8)
p83.BrickColor = BrickColor.new("Br. yellowish orange")
p83.Material = Enum.Material.Concrete
p83.CFrame = CFrame.new(-121.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p83.Size = Vector3.new(2, 11.9999866, 3)
p83.BottomSurface = Enum.SurfaceType.Smooth
p83.TopSurface = Enum.SurfaceType.Smooth
p84 = Instance.new("Part", m8)
p84.BrickColor = BrickColor.new("Br. yellowish orange")
p84.Material = Enum.Material.Concrete
p84.CFrame = CFrame.new(-118.5, 58.7899513, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p84.Size = Vector3.new(4, 11.9999847, 2)
p84.BottomSurface = Enum.SurfaceType.Weld
p84.TopSurface = Enum.SurfaceType.Weld
p85 = Instance.new("Part", m8)
p85.BrickColor = BrickColor.new("Br. yellowish orange")
p85.Material = Enum.Material.Concrete
p85.CFrame = CFrame.new(-148.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p85.Size = Vector3.new(2, 11.9999924, 1)
p85.BottomSurface = Enum.SurfaceType.Weld
p85.TopSurface = Enum.SurfaceType.Weld
p86 = Instance.new("Part", m8)
p86.BrickColor = BrickColor.new("Br. yellowish orange")
p86.Material = Enum.Material.Concrete
p86.CFrame = CFrame.new(-134.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p86.Size = Vector3.new(2, 11.9999943, 1)
p86.BottomSurface = Enum.SurfaceType.Weld
p86.TopSurface = Enum.SurfaceType.Weld
p87 = Instance.new("Part", m8)
p87.BrickColor = BrickColor.new("Br. yellowish orange")
p87.Material = Enum.Material.Concrete
p87.CFrame = CFrame.new(-152.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p87.Size = Vector3.new(2, 11.9999847, 1)
p87.BottomSurface = Enum.SurfaceType.Weld
p87.TopSurface = Enum.SurfaceType.Weld
p88 = Instance.new("Part", m8)
p88.BrickColor = BrickColor.new("Br. yellowish orange")
p88.Material = Enum.Material.Concrete
p88.CFrame = CFrame.new(-141.5, 58.7899513, 128.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p88.Size = Vector3.new(30, 11.9999886, 1)
p88.BottomSurface = Enum.SurfaceType.Weld
p88.TopSurface = Enum.SurfaceType.Weld
p89 = Instance.new("Part", m8)
p89.BrickColor = BrickColor.new("Br. yellowish orange")
p89.Material = Enum.Material.Concrete
p89.CFrame = CFrame.new(-138.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p89.Size = Vector3.new(2, 11.9999847, 1)
p89.BottomSurface = Enum.SurfaceType.Weld
p89.TopSurface = Enum.SurfaceType.Weld
p90 = Instance.new("Part", m8)
p90.BrickColor = BrickColor.new("Br. yellowish orange")
p90.Material = Enum.Material.Concrete
p90.CFrame = CFrame.new(-144.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p90.Size = Vector3.new(2, 12.000001, 1)
p90.BottomSurface = Enum.SurfaceType.Weld
p90.TopSurface = Enum.SurfaceType.Weld
p91 = Instance.new("Part", m8)
p91.BrickColor = BrickColor.new("Br. yellowish orange")
p91.Material = Enum.Material.Concrete
p91.CFrame = CFrame.new(-130.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p91.Size = Vector3.new(2, 12.000001, 1)
p91.BottomSurface = Enum.SurfaceType.Weld
p91.TopSurface = Enum.SurfaceType.Weld
p92 = Instance.new("Part", m8)
p92.BrickColor = BrickColor.new("Br. yellowish orange")
p92.Material = Enum.Material.Concrete
p92.CFrame = CFrame.new(-124.5, 58.7899513, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p92.Size = Vector3.new(4, 11.9999866, 2)
p92.BottomSurface = Enum.SurfaceType.Weld
p92.TopSurface = Enum.SurfaceType.Weld
p93 = Instance.new("Part", m8)
p93.BrickColor = BrickColor.new("Br. yellowish orange")
p93.Material = Enum.Material.Concrete
p93.CFrame = CFrame.new(-158.5, 58.7899513, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p93.Size = Vector3.new(4, 11.9999886, 2)
p93.BottomSurface = Enum.SurfaceType.Weld
p93.TopSurface = Enum.SurfaceType.Weld
p94 = Instance.new("Part", m8)
p94.BrickColor = BrickColor.new("Br. yellowish orange")
p94.Material = Enum.Material.Concrete
p94.CFrame = CFrame.new(-161.5, 58.7899513, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p94.Size = Vector3.new(2, 11.9999905, 3)
p94.BottomSurface = Enum.SurfaceType.Smooth
p94.TopSurface = Enum.SurfaceType.Smooth
p95 = Instance.new("Part", m9)
p95.BrickColor = BrickColor.new("Br. yellowish orange")
p95.Material = Enum.Material.Concrete
p95.CFrame = CFrame.new(-118.5, 58.7899513, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p95.Size = Vector3.new(4, 11.9999847, 2)
p95.BottomSurface = Enum.SurfaceType.Weld
p95.TopSurface = Enum.SurfaceType.Weld
p96 = Instance.new("Part", m9)
p96.BrickColor = BrickColor.new("Br. yellowish orange")
p96.Material = Enum.Material.Concrete
p96.CFrame = CFrame.new(-161.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p96.Size = Vector3.new(2, 11.9999866, 3)
p96.BottomSurface = Enum.SurfaceType.Smooth
p96.TopSurface = Enum.SurfaceType.Smooth
p97 = Instance.new("Part", m9)
p97.BrickColor = BrickColor.new("Br. yellowish orange")
p97.Material = Enum.Material.Concrete
p97.CFrame = CFrame.new(-164.5, 58.7899513, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p97.Size = Vector3.new(4, 11.9999847, 2)
p97.BottomSurface = Enum.SurfaceType.Weld
p97.TopSurface = Enum.SurfaceType.Weld
p98 = Instance.new("Part", m9)
p98.BrickColor = BrickColor.new("Br. yellowish orange")
p98.Material = Enum.Material.Concrete
p98.CFrame = CFrame.new(-134.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p98.Size = Vector3.new(2, 11.9999924, 1)
p98.BottomSurface = Enum.SurfaceType.Weld
p98.TopSurface = Enum.SurfaceType.Weld
p99 = Instance.new("Part", m9)
p99.BrickColor = BrickColor.new("Br. yellowish orange")
p99.Material = Enum.Material.Concrete
p99.CFrame = CFrame.new(-148.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p99.Size = Vector3.new(2, 11.9999943, 1)
p99.BottomSurface = Enum.SurfaceType.Weld
p99.TopSurface = Enum.SurfaceType.Weld
p100 = Instance.new("Part", m9)
p100.BrickColor = BrickColor.new("Br. yellowish orange")
p100.Material = Enum.Material.Concrete
p100.CFrame = CFrame.new(-130.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p100.Size = Vector3.new(2, 11.9999847, 1)
p100.BottomSurface = Enum.SurfaceType.Weld
p100.TopSurface = Enum.SurfaceType.Weld
p101 = Instance.new("Part", m9)
p101.BrickColor = BrickColor.new("Br. yellowish orange")
p101.Material = Enum.Material.Concrete
p101.CFrame = CFrame.new(-141.5, 58.7899513, 81.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p101.Size = Vector3.new(30, 11.9999886, 1)
p101.BottomSurface = Enum.SurfaceType.Weld
p101.TopSurface = Enum.SurfaceType.Weld
p102 = Instance.new("Part", m9)
p102.BrickColor = BrickColor.new("Br. yellowish orange")
p102.Material = Enum.Material.Concrete
p102.CFrame = CFrame.new(-144.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p102.Size = Vector3.new(2, 11.9999847, 1)
p102.BottomSurface = Enum.SurfaceType.Weld
p102.TopSurface = Enum.SurfaceType.Weld
p103 = Instance.new("Part", m9)
p103.BrickColor = BrickColor.new("Br. yellowish orange")
p103.Material = Enum.Material.Concrete
p103.CFrame = CFrame.new(-138.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p103.Size = Vector3.new(2, 12.000001, 1)
p103.BottomSurface = Enum.SurfaceType.Weld
p103.TopSurface = Enum.SurfaceType.Weld
p104 = Instance.new("Part", m9)
p104.BrickColor = BrickColor.new("Br. yellowish orange")
p104.Material = Enum.Material.Concrete
p104.CFrame = CFrame.new(-152.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p104.Size = Vector3.new(2, 12.000001, 1)
p104.BottomSurface = Enum.SurfaceType.Weld
p104.TopSurface = Enum.SurfaceType.Weld
p105 = Instance.new("Part", m9)
p105.BrickColor = BrickColor.new("Br. yellowish orange")
p105.Material = Enum.Material.Concrete
p105.CFrame = CFrame.new(-158.5, 58.7899513, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p105.Size = Vector3.new(4, 11.9999866, 2)
p105.BottomSurface = Enum.SurfaceType.Weld
p105.TopSurface = Enum.SurfaceType.Weld
p106 = Instance.new("Part", m9)
p106.BrickColor = BrickColor.new("Br. yellowish orange")
p106.Material = Enum.Material.Concrete
p106.CFrame = CFrame.new(-124.5, 58.7899513, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p106.Size = Vector3.new(4, 11.9999886, 2)
p106.BottomSurface = Enum.SurfaceType.Weld
p106.TopSurface = Enum.SurfaceType.Weld
p107 = Instance.new("Part", m9)
p107.BrickColor = BrickColor.new("Br. yellowish orange")
p107.Material = Enum.Material.Concrete
p107.CFrame = CFrame.new(-121.5, 58.7899513, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p107.Size = Vector3.new(2, 11.9999905, 3)
p107.BottomSurface = Enum.SurfaceType.Smooth
p107.TopSurface = Enum.SurfaceType.Smooth
p108 = Instance.new("Part", m10)
p108.BrickColor = BrickColor.new("Br. yellowish orange")
p108.Material = Enum.Material.Concrete
p108.CFrame = CFrame.new(-166, 58.7899513, 84.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p108.Size = Vector3.new(2, 11.9999962, 3)
p108.BottomSurface = Enum.SurfaceType.Smooth
p108.TopSurface = Enum.SurfaceType.Smooth
p109 = Instance.new("Part", m10)
p109.BrickColor = BrickColor.new("Br. yellowish orange")
p109.Material = Enum.Material.Concrete
p109.CFrame = CFrame.new(-165.5, 58.7899513, 82.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p109.Size = Vector3.new(2, 12.0000038, 2)
p109.BottomSurface = Enum.SurfaceType.Weld
p109.TopSurface = Enum.SurfaceType.Weld
p110 = Instance.new("Part", m10)
p110.BrickColor = BrickColor.new("Br. yellowish orange")
p110.Material = Enum.Material.Concrete
p110.CFrame = CFrame.new(-165.5, 58.7899513, 87.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p110.Size = Vector3.new(4, 12.0000114, 2)
p110.BottomSurface = Enum.SurfaceType.Weld
p110.TopSurface = Enum.SurfaceType.Weld
p111 = Instance.new("Part", m10)
p111.BrickColor = BrickColor.new("Br. yellowish orange")
p111.Material = Enum.Material.Concrete
p111.CFrame = CFrame.new(-166, 58.7899513, 93.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p111.Size = Vector3.new(2, 11.9999933, 1)
p111.BottomSurface = Enum.SurfaceType.Weld
p111.TopSurface = Enum.SurfaceType.Weld
p112 = Instance.new("Part", m10)
p112.BrickColor = BrickColor.new("Br. yellowish orange")
p112.Material = Enum.Material.Concrete
p112.CFrame = CFrame.new(-166, 58.7899513, 97.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p112.Size = Vector3.new(2, 11.9999981, 1)
p112.BottomSurface = Enum.SurfaceType.Weld
p112.TopSurface = Enum.SurfaceType.Weld
p113 = Instance.new("Part", m10)
p113.BrickColor = BrickColor.new("Br. yellowish orange")
p113.Material = Enum.Material.Concrete
p113.CFrame = CFrame.new(-166, 58.7899513, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p113.Size = Vector3.new(2, 11.9999905, 1)
p113.BottomSurface = Enum.SurfaceType.Weld
p113.TopSurface = Enum.SurfaceType.Weld
p114 = Instance.new("Part", m10)
p114.BrickColor = BrickColor.new("Br. yellowish orange")
p114.Material = Enum.Material.Concrete
p114.CFrame = CFrame.new(-165, 58.7899513, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p114.Size = Vector3.new(30, 12.000001, 1)
p114.BottomSurface = Enum.SurfaceType.Weld
p114.TopSurface = Enum.SurfaceType.Weld
p115 = Instance.new("Part", m10)
p115.BrickColor = BrickColor.new("Br. yellowish orange")
p115.Material = Enum.Material.Concrete
p115.CFrame = CFrame.new(-166, 58.7899513, 111.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p115.Size = Vector3.new(2, 12.0000029, 1)
p115.BottomSurface = Enum.SurfaceType.Weld
p115.TopSurface = Enum.SurfaceType.Weld
p116 = Instance.new("Part", m10)
p116.BrickColor = BrickColor.new("Br. yellowish orange")
p116.Material = Enum.Material.Concrete
p116.CFrame = CFrame.new(-166, 58.7899513, 107.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p116.Size = Vector3.new(2, 12, 1)
p116.BottomSurface = Enum.SurfaceType.Weld
p116.TopSurface = Enum.SurfaceType.Weld
p117 = Instance.new("Part", m10)
p117.BrickColor = BrickColor.new("Br. yellowish orange")
p117.Material = Enum.Material.Concrete
p117.CFrame = CFrame.new(-166, 58.7899513, 115.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p117.Size = Vector3.new(2, 12.000001, 1)
p117.BottomSurface = Enum.SurfaceType.Weld
p117.TopSurface = Enum.SurfaceType.Weld
p118 = Instance.new("Part", m10)
p118.BrickColor = BrickColor.new("Br. yellowish orange")
p118.Material = Enum.Material.Concrete
p118.CFrame = CFrame.new(-165.5, 58.7899513, 126.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p118.Size = Vector3.new(2, 11.9999886, 2)
p118.BottomSurface = Enum.SurfaceType.Weld
p118.TopSurface = Enum.SurfaceType.Weld
p119 = Instance.new("Part", m10)
p119.BrickColor = BrickColor.new("Br. yellowish orange")
p119.Material = Enum.Material.Concrete
p119.CFrame = CFrame.new(-166, 58.7899513, 124.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p119.Size = Vector3.new(2, 12.000001, 3)
p119.BottomSurface = Enum.SurfaceType.Smooth
p119.TopSurface = Enum.SurfaceType.Smooth
p120 = Instance.new("Part", m10)
p120.BrickColor = BrickColor.new("Br. yellowish orange")
p120.Material = Enum.Material.Concrete
p120.CFrame = CFrame.new(-165.5, 58.7899513, 121.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p120.Size = Vector3.new(4, 12.0000019, 2)
p120.BottomSurface = Enum.SurfaceType.Weld
p120.TopSurface = Enum.SurfaceType.Weld
p121 = Instance.new("Part", m12)
p121.BrickColor = BrickColor.new("Br. yellowish orange")
p121.Material = Enum.Material.Concrete
p121.CFrame = CFrame.new(-118.5, 84.3899536, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p121.Size = Vector3.new(4, 38.3999977, 2)
p121.BottomSurface = Enum.SurfaceType.Weld
p121.TopSurface = Enum.SurfaceType.Weld
p122 = Instance.new("Part", m12)
p122.BrickColor = BrickColor.new("Br. yellowish orange")
p122.Material = Enum.Material.Concrete
p122.CFrame = CFrame.new(-164.5, 84.3899536, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p122.Size = Vector3.new(4, 38.3999977, 2)
p122.BottomSurface = Enum.SurfaceType.Weld
p122.TopSurface = Enum.SurfaceType.Weld
p123 = Instance.new("Part", m12)
p123.BrickColor = BrickColor.new("Br. yellowish orange")
p123.Material = Enum.Material.Concrete
p123.CFrame = CFrame.new(-161.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p123.Size = Vector3.new(2, 38.3999977, 3)
p123.BottomSurface = Enum.SurfaceType.Smooth
p123.TopSurface = Enum.SurfaceType.Weld
p124 = Instance.new("Part", m12)
p124.BrickColor = BrickColor.new("Br. yellowish orange")
p124.Material = Enum.Material.Concrete
p124.CFrame = CFrame.new(-121.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p124.Size = Vector3.new(2, 38.3999977, 3)
p124.BottomSurface = Enum.SurfaceType.Smooth
p124.TopSurface = Enum.SurfaceType.Smooth
p125 = Instance.new("Part", m12)
p125.BrickColor = BrickColor.new("Br. yellowish orange")
p125.Material = Enum.Material.Concrete
p125.CFrame = CFrame.new(-158.5, 84.3899536, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p125.Size = Vector3.new(4, 38.3999977, 2)
p125.BottomSurface = Enum.SurfaceType.Weld
p125.TopSurface = Enum.SurfaceType.Weld
p126 = Instance.new("Part", m12)
p126.BrickColor = BrickColor.new("Br. yellowish orange")
p126.Material = Enum.Material.Concrete
p126.CFrame = CFrame.new(-124.5, 84.3899536, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p126.Size = Vector3.new(4, 38.3999977, 2)
p126.BottomSurface = Enum.SurfaceType.Weld
p126.TopSurface = Enum.SurfaceType.Weld
p127 = Instance.new("Part", m12)
p127.BrickColor = BrickColor.new("Br. yellowish orange")
p127.Material = Enum.Material.Concrete
p127.CFrame = CFrame.new(-141.5, 84.3899536, 81.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p127.Size = Vector3.new(30, 38.3999977, 1)
p127.BottomSurface = Enum.SurfaceType.Weld
p127.TopSurface = Enum.SurfaceType.Weld
p128 = Instance.new("Part", m12)
p128.BrickColor = BrickColor.new("Br. yellowish orange")
p128.Material = Enum.Material.Concrete
p128.CFrame = CFrame.new(-144.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p128.Size = Vector3.new(2, 38.3999977, 1)
p128.BottomSurface = Enum.SurfaceType.Weld
p128.TopSurface = Enum.SurfaceType.Weld
p129 = Instance.new("Part", m12)
p129.BrickColor = BrickColor.new("Br. yellowish orange")
p129.Material = Enum.Material.Concrete
p129.CFrame = CFrame.new(-152.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p129.FormFactor = Enum.FormFactor.Custom
p129.Size = Vector3.new(2, 38.4000015, 1)
p129.BottomSurface = Enum.SurfaceType.Weld
p129.TopSurface = Enum.SurfaceType.Weld
p130 = Instance.new("Part", m12)
p130.BrickColor = BrickColor.new("Br. yellowish orange")
p130.Material = Enum.Material.Concrete
p130.CFrame = CFrame.new(-148.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p130.Size = Vector3.new(2, 38.4000053, 1)
p130.BottomSurface = Enum.SurfaceType.Weld
p130.TopSurface = Enum.SurfaceType.Weld
p131 = Instance.new("Part", m12)
p131.BrickColor = BrickColor.new("Br. yellowish orange")
p131.Material = Enum.Material.Concrete
p131.CFrame = CFrame.new(-138.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p131.FormFactor = Enum.FormFactor.Custom
p131.Size = Vector3.new(2, 38.4000015, 1)
p131.BottomSurface = Enum.SurfaceType.Weld
p131.TopSurface = Enum.SurfaceType.Weld
p132 = Instance.new("Part", m12)
p132.BrickColor = BrickColor.new("Br. yellowish orange")
p132.Material = Enum.Material.Concrete
p132.CFrame = CFrame.new(-134.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p132.Size = Vector3.new(2, 38.4000053, 1)
p132.BottomSurface = Enum.SurfaceType.Weld
p132.TopSurface = Enum.SurfaceType.Weld
p133 = Instance.new("Part", m12)
p133.BrickColor = BrickColor.new("Br. yellowish orange")
p133.Material = Enum.Material.Concrete
p133.CFrame = CFrame.new(-130.5, 84.3899536, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p133.Size = Vector3.new(2, 38.3999977, 1)
p133.BottomSurface = Enum.SurfaceType.Weld
p133.TopSurface = Enum.SurfaceType.Weld
p134 = Instance.new("Part", m13)
p134.BrickColor = BrickColor.new("Br. yellowish orange")
p134.Material = Enum.Material.Concrete
p134.CFrame = CFrame.new(-117, 84.3899536, 124.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p134.Size = Vector3.new(2, 38.4000092, 3)
p134.BottomSurface = Enum.SurfaceType.Smooth
p134.TopSurface = Enum.SurfaceType.Smooth
p135 = Instance.new("Part", m13)
p135.BrickColor = BrickColor.new("Br. yellowish orange")
p135.Material = Enum.Material.Concrete
p135.CFrame = CFrame.new(-117.5, 84.3899536, 126.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p135.Size = Vector3.new(2, 38.4000092, 2)
p135.BottomSurface = Enum.SurfaceType.Weld
p135.TopSurface = Enum.SurfaceType.Weld
p136 = Instance.new("Part", m13)
p136.BrickColor = BrickColor.new("Br. yellowish orange")
p136.Material = Enum.Material.Concrete
p136.CFrame = CFrame.new(-117.5, 84.3899536, 121.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p136.Size = Vector3.new(4, 38.400013, 2)
p136.BottomSurface = Enum.SurfaceType.Weld
p136.TopSurface = Enum.SurfaceType.Weld
p137 = Instance.new("Part", m13)
p137.BrickColor = BrickColor.new("Br. yellowish orange")
p137.Material = Enum.Material.Concrete
p137.CFrame = CFrame.new(-117, 84.3899536, 115.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p137.Size = Vector3.new(2, 38.3999977, 1)
p137.BottomSurface = Enum.SurfaceType.Weld
p137.TopSurface = Enum.SurfaceType.Weld
p138 = Instance.new("Part", m13)
p138.BrickColor = BrickColor.new("Br. yellowish orange")
p138.Material = Enum.Material.Concrete
p138.CFrame = CFrame.new(-117, 84.3899536, 111.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p138.Size = Vector3.new(2, 38.4000053, 1)
p138.BottomSurface = Enum.SurfaceType.Weld
p138.TopSurface = Enum.SurfaceType.Weld
p139 = Instance.new("Part", m13)
p139.BrickColor = BrickColor.new("Br. yellowish orange")
p139.Material = Enum.Material.Concrete
p139.CFrame = CFrame.new(-117, 84.3899536, 107.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p139.Size = Vector3.new(2, 38.3999977, 1)
p139.BottomSurface = Enum.SurfaceType.Weld
p139.TopSurface = Enum.SurfaceType.Weld
p140 = Instance.new("Part", m13)
p140.BrickColor = BrickColor.new("Br. yellowish orange")
p140.Material = Enum.Material.Concrete
p140.CFrame = CFrame.new(-118, 84.3899536, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p140.Size = Vector3.new(30, 38.3999977, 1)
p140.BottomSurface = Enum.SurfaceType.Weld
p140.TopSurface = Enum.SurfaceType.Weld
p141 = Instance.new("Part", m13)
p141.BrickColor = BrickColor.new("Br. yellowish orange")
p141.Material = Enum.Material.Concrete
p141.CFrame = CFrame.new(-117, 84.3899536, 97.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p141.Size = Vector3.new(2, 38.4000053, 1)
p141.BottomSurface = Enum.SurfaceType.Weld
p141.TopSurface = Enum.SurfaceType.Weld
p142 = Instance.new("Part", m13)
p142.BrickColor = BrickColor.new("Br. yellowish orange")
p142.Material = Enum.Material.Concrete
p142.CFrame = CFrame.new(-117, 84.3899536, 101.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p142.Size = Vector3.new(2, 38.4000015, 1)
p142.BottomSurface = Enum.SurfaceType.Weld
p142.TopSurface = Enum.SurfaceType.Weld
p143 = Instance.new("Part", m13)
p143.BrickColor = BrickColor.new("Br. yellowish orange")
p143.Material = Enum.Material.Concrete
p143.CFrame = CFrame.new(-117, 84.3899536, 93.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p143.FormFactor = Enum.FormFactor.Custom
p143.Size = Vector3.new(2, 38.4000015, 1)
p143.BottomSurface = Enum.SurfaceType.Weld
p143.TopSurface = Enum.SurfaceType.Weld
p144 = Instance.new("Part", m13)
p144.BrickColor = BrickColor.new("Br. yellowish orange")
p144.Material = Enum.Material.Concrete
p144.CFrame = CFrame.new(-117.5, 84.3899536, 82.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p144.Size = Vector3.new(2, 38.3999977, 2)
p144.BottomSurface = Enum.SurfaceType.Weld
p144.TopSurface = Enum.SurfaceType.Weld
p145 = Instance.new("Part", m13)
p145.BrickColor = BrickColor.new("Br. yellowish orange")
p145.Material = Enum.Material.Concrete
p145.CFrame = CFrame.new(-117, 84.3899536, 84.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p145.Size = Vector3.new(2, 38.3999977, 3)
p145.BottomSurface = Enum.SurfaceType.Smooth
p145.TopSurface = Enum.SurfaceType.Smooth
p146 = Instance.new("Part", m13)
p146.BrickColor = BrickColor.new("Br. yellowish orange")
p146.Material = Enum.Material.Concrete
p146.CFrame = CFrame.new(-117.5, 84.3899536, 87.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p146.Size = Vector3.new(4, 38.4000092, 2)
p146.BottomSurface = Enum.SurfaceType.Weld
p146.TopSurface = Enum.SurfaceType.Weld
p147 = Instance.new("Part", m14)
p147.BrickColor = BrickColor.new("Br. yellowish orange")
p147.Material = Enum.Material.Concrete
p147.CFrame = CFrame.new(-166, 84.3899536, 84.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p147.Size = Vector3.new(2, 38.4000092, 3)
p147.BottomSurface = Enum.SurfaceType.Smooth
p147.TopSurface = Enum.SurfaceType.Smooth
p148 = Instance.new("Part", m14)
p148.BrickColor = BrickColor.new("Br. yellowish orange")
p148.Material = Enum.Material.Concrete
p148.CFrame = CFrame.new(-165.5, 84.3899536, 82.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p148.Size = Vector3.new(2, 38.4000092, 2)
p148.BottomSurface = Enum.SurfaceType.Weld
p148.TopSurface = Enum.SurfaceType.Weld
p149 = Instance.new("Part", m14)
p149.BrickColor = BrickColor.new("Br. yellowish orange")
p149.Material = Enum.Material.Concrete
p149.CFrame = CFrame.new(-165.5, 84.3899536, 87.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p149.Size = Vector3.new(4, 38.400013, 2)
p149.BottomSurface = Enum.SurfaceType.Weld
p149.TopSurface = Enum.SurfaceType.Weld
p150 = Instance.new("Part", m14)
p150.BrickColor = BrickColor.new("Br. yellowish orange")
p150.Material = Enum.Material.Concrete
p150.CFrame = CFrame.new(-166, 84.3899536, 93.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p150.Size = Vector3.new(2, 38.3999977, 1)
p150.BottomSurface = Enum.SurfaceType.Weld
p150.TopSurface = Enum.SurfaceType.Weld
p151 = Instance.new("Part", m14)
p151.BrickColor = BrickColor.new("Br. yellowish orange")
p151.Material = Enum.Material.Concrete
p151.CFrame = CFrame.new(-166, 84.3899536, 97.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p151.Size = Vector3.new(2, 38.4000053, 1)
p151.BottomSurface = Enum.SurfaceType.Weld
p151.TopSurface = Enum.SurfaceType.Weld
p152 = Instance.new("Part", m14)
p152.BrickColor = BrickColor.new("Br. yellowish orange")
p152.Material = Enum.Material.Concrete
p152.CFrame = CFrame.new(-166, 84.3899536, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p152.Size = Vector3.new(2, 38.3999977, 1)
p152.BottomSurface = Enum.SurfaceType.Weld
p152.TopSurface = Enum.SurfaceType.Weld
p153 = Instance.new("Part", m14)
p153.BrickColor = BrickColor.new("Br. yellowish orange")
p153.Material = Enum.Material.Concrete
p153.CFrame = CFrame.new(-165, 84.3899536, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p153.Size = Vector3.new(30, 38.3999977, 1)
p153.BottomSurface = Enum.SurfaceType.Weld
p153.TopSurface = Enum.SurfaceType.Weld
p154 = Instance.new("Part", m14)
p154.BrickColor = BrickColor.new("Br. yellowish orange")
p154.Material = Enum.Material.Concrete
p154.CFrame = CFrame.new(-166, 84.3899536, 111.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p154.Size = Vector3.new(2, 38.4000053, 1)
p154.BottomSurface = Enum.SurfaceType.Weld
p154.TopSurface = Enum.SurfaceType.Weld
p155 = Instance.new("Part", m14)
p155.BrickColor = BrickColor.new("Br. yellowish orange")
p155.Material = Enum.Material.Concrete
p155.CFrame = CFrame.new(-166, 84.3899536, 107.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p155.Size = Vector3.new(2, 38.4000015, 1)
p155.BottomSurface = Enum.SurfaceType.Weld
p155.TopSurface = Enum.SurfaceType.Weld
p156 = Instance.new("Part", m14)
p156.BrickColor = BrickColor.new("Br. yellowish orange")
p156.Material = Enum.Material.Concrete
p156.CFrame = CFrame.new(-166, 84.3899536, 115.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p156.FormFactor = Enum.FormFactor.Custom
p156.Size = Vector3.new(2, 38.4000015, 1)
p156.BottomSurface = Enum.SurfaceType.Weld
p156.TopSurface = Enum.SurfaceType.Weld
p157 = Instance.new("Part", m14)
p157.BrickColor = BrickColor.new("Br. yellowish orange")
p157.Material = Enum.Material.Concrete
p157.CFrame = CFrame.new(-165.5, 84.3899536, 126.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p157.Size = Vector3.new(2, 38.3999977, 2)
p157.BottomSurface = Enum.SurfaceType.Weld
p157.TopSurface = Enum.SurfaceType.Weld
p158 = Instance.new("Part", m14)
p158.BrickColor = BrickColor.new("Br. yellowish orange")
p158.Material = Enum.Material.Concrete
p158.CFrame = CFrame.new(-166, 84.3899536, 124.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p158.Size = Vector3.new(2, 38.3999977, 3)
p158.BottomSurface = Enum.SurfaceType.Smooth
p158.TopSurface = Enum.SurfaceType.Smooth
p159 = Instance.new("Part", m14)
p159.BrickColor = BrickColor.new("Br. yellowish orange")
p159.Material = Enum.Material.Concrete
p159.CFrame = CFrame.new(-165.5, 84.3899536, 121.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p159.Size = Vector3.new(4, 38.4000092, 2)
p159.BottomSurface = Enum.SurfaceType.Weld
p159.TopSurface = Enum.SurfaceType.Weld
p160 = Instance.new("Part", m15)
p160.BrickColor = BrickColor.new("Br. yellowish orange")
p160.Material = Enum.Material.Concrete
p160.CFrame = CFrame.new(-164.5, 84.3899536, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p160.Size = Vector3.new(4, 38.3999977, 2)
p160.BottomSurface = Enum.SurfaceType.Weld
p160.TopSurface = Enum.SurfaceType.Weld
p161 = Instance.new("Part", m15)
p161.BrickColor = BrickColor.new("Br. yellowish orange")
p161.Material = Enum.Material.Concrete
p161.CFrame = CFrame.new(-118.5, 84.3899536, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p161.Size = Vector3.new(4, 38.3999977, 2)
p161.BottomSurface = Enum.SurfaceType.Weld
p161.TopSurface = Enum.SurfaceType.Weld
p162 = Instance.new("Part", m15)
p162.BrickColor = BrickColor.new("Br. yellowish orange")
p162.Material = Enum.Material.Concrete
p162.CFrame = CFrame.new(-121.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p162.Size = Vector3.new(2, 38.3999977, 3)
p162.BottomSurface = Enum.SurfaceType.Smooth
p162.TopSurface = Enum.SurfaceType.Smooth
p163 = Instance.new("Part", m15)
p163.BrickColor = BrickColor.new("Br. yellowish orange")
p163.Material = Enum.Material.Concrete
p163.CFrame = CFrame.new(-161.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p163.Size = Vector3.new(2, 38.3999977, 3)
p163.BottomSurface = Enum.SurfaceType.Smooth
p163.TopSurface = Enum.SurfaceType.Smooth
p164 = Instance.new("Part", m15)
p164.BrickColor = BrickColor.new("Br. yellowish orange")
p164.Material = Enum.Material.Concrete
p164.CFrame = CFrame.new(-124.5, 84.3899536, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p164.Size = Vector3.new(4, 38.3999977, 2)
p164.BottomSurface = Enum.SurfaceType.Weld
p164.TopSurface = Enum.SurfaceType.Weld
p165 = Instance.new("Part", m15)
p165.BrickColor = BrickColor.new("Br. yellowish orange")
p165.Material = Enum.Material.Concrete
p165.CFrame = CFrame.new(-158.5, 84.3899536, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p165.Size = Vector3.new(4, 38.3999977, 2)
p165.BottomSurface = Enum.SurfaceType.Weld
p165.TopSurface = Enum.SurfaceType.Weld
p166 = Instance.new("Part", m15)
p166.BrickColor = BrickColor.new("Br. yellowish orange")
p166.Material = Enum.Material.Concrete
p166.CFrame = CFrame.new(-141.5, 84.3899536, 128.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p166.Size = Vector3.new(30, 38.3999977, 1)
p166.BottomSurface = Enum.SurfaceType.Weld
p166.TopSurface = Enum.SurfaceType.Weld
p167 = Instance.new("Part", m15)
p167.BrickColor = BrickColor.new("Br. yellowish orange")
p167.Material = Enum.Material.Concrete
p167.CFrame = CFrame.new(-138.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p167.Size = Vector3.new(2, 38.3999977, 1)
p167.BottomSurface = Enum.SurfaceType.Weld
p167.TopSurface = Enum.SurfaceType.Weld
p168 = Instance.new("Part", m15)
p168.BrickColor = BrickColor.new("Br. yellowish orange")
p168.Material = Enum.Material.Concrete
p168.CFrame = CFrame.new(-130.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p168.FormFactor = Enum.FormFactor.Custom
p168.Size = Vector3.new(2, 38.4000015, 1)
p168.BottomSurface = Enum.SurfaceType.Weld
p168.TopSurface = Enum.SurfaceType.Weld
p169 = Instance.new("Part", m15)
p169.BrickColor = BrickColor.new("Br. yellowish orange")
p169.Material = Enum.Material.Concrete
p169.CFrame = CFrame.new(-134.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p169.Size = Vector3.new(2, 38.4000053, 1)
p169.BottomSurface = Enum.SurfaceType.Weld
p169.TopSurface = Enum.SurfaceType.Weld
p170 = Instance.new("Part", m15)
p170.BrickColor = BrickColor.new("Br. yellowish orange")
p170.Material = Enum.Material.Concrete
p170.CFrame = CFrame.new(-144.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p170.FormFactor = Enum.FormFactor.Custom
p170.Size = Vector3.new(2, 38.4000015, 1)
p170.BottomSurface = Enum.SurfaceType.Weld
p170.TopSurface = Enum.SurfaceType.Weld
p171 = Instance.new("Part", m15)
p171.BrickColor = BrickColor.new("Br. yellowish orange")
p171.Material = Enum.Material.Concrete
p171.CFrame = CFrame.new(-148.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p171.Size = Vector3.new(2, 38.4000053, 1)
p171.BottomSurface = Enum.SurfaceType.Weld
p171.TopSurface = Enum.SurfaceType.Weld
p172 = Instance.new("Part", m15)
p172.BrickColor = BrickColor.new("Br. yellowish orange")
p172.Material = Enum.Material.Concrete
p172.CFrame = CFrame.new(-152.5, 84.3899536, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p172.Size = Vector3.new(2, 38.3999977, 1)
p172.BottomSurface = Enum.SurfaceType.Weld
p172.TopSurface = Enum.SurfaceType.Weld
p173 = Instance.new("Part", m17)
p173.BrickColor = BrickColor.new("Br. yellowish orange")
p173.Material = Enum.Material.Concrete
p173.CFrame = CFrame.new(-118.5, 33.189949, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p173.Size = Vector3.new(4, 38.3999977, 2)
p173.BottomSurface = Enum.SurfaceType.Weld
p173.TopSurface = Enum.SurfaceType.Weld
p174 = Instance.new("Part", m17)
p174.BrickColor = BrickColor.new("Br. yellowish orange")
p174.Material = Enum.Material.Concrete
p174.CFrame = CFrame.new(-164.5, 33.189949, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p174.Size = Vector3.new(4, 38.3999977, 2)
p174.BottomSurface = Enum.SurfaceType.Weld
p174.TopSurface = Enum.SurfaceType.Weld
p175 = Instance.new("Part", m17)
p175.BrickColor = BrickColor.new("Br. yellowish orange")
p175.Material = Enum.Material.Concrete
p175.CFrame = CFrame.new(-161.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p175.Size = Vector3.new(2, 38.3999977, 3)
p175.BottomSurface = Enum.SurfaceType.Smooth
p175.TopSurface = Enum.SurfaceType.Weld
p176 = Instance.new("Part", m17)
p176.BrickColor = BrickColor.new("Br. yellowish orange")
p176.Material = Enum.Material.Concrete
p176.CFrame = CFrame.new(-121.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p176.Size = Vector3.new(2, 38.3999977, 3)
p176.BottomSurface = Enum.SurfaceType.Smooth
p176.TopSurface = Enum.SurfaceType.Smooth
p177 = Instance.new("Part", m17)
p177.BrickColor = BrickColor.new("Br. yellowish orange")
p177.Material = Enum.Material.Concrete
p177.CFrame = CFrame.new(-158.5, 33.189949, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p177.Size = Vector3.new(4, 38.3999977, 2)
p177.BottomSurface = Enum.SurfaceType.Weld
p177.TopSurface = Enum.SurfaceType.Weld
p178 = Instance.new("Part", m17)
p178.BrickColor = BrickColor.new("Br. yellowish orange")
p178.Material = Enum.Material.Concrete
p178.CFrame = CFrame.new(-124.5, 33.189949, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p178.Size = Vector3.new(4, 38.3999977, 2)
p178.BottomSurface = Enum.SurfaceType.Weld
p178.TopSurface = Enum.SurfaceType.Weld
p179 = Instance.new("Part", m17)
p179.BrickColor = BrickColor.new("Br. yellowish orange")
p179.Material = Enum.Material.Concrete
p179.CFrame = CFrame.new(-141.5, 33.189949, 81.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p179.Size = Vector3.new(30, 38.3999977, 1)
p179.BottomSurface = Enum.SurfaceType.Weld
p179.TopSurface = Enum.SurfaceType.Weld
p180 = Instance.new("Part", m17)
p180.BrickColor = BrickColor.new("Br. yellowish orange")
p180.Material = Enum.Material.Concrete
p180.CFrame = CFrame.new(-144.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p180.Size = Vector3.new(2, 38.3999977, 1)
p180.BottomSurface = Enum.SurfaceType.Weld
p180.TopSurface = Enum.SurfaceType.Weld
p181 = Instance.new("Part", m17)
p181.BrickColor = BrickColor.new("Br. yellowish orange")
p181.Material = Enum.Material.Concrete
p181.CFrame = CFrame.new(-152.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p181.FormFactor = Enum.FormFactor.Custom
p181.Size = Vector3.new(2, 38.4000015, 1)
p181.BottomSurface = Enum.SurfaceType.Weld
p181.TopSurface = Enum.SurfaceType.Weld
p182 = Instance.new("Part", m17)
p182.BrickColor = BrickColor.new("Br. yellowish orange")
p182.Material = Enum.Material.Concrete
p182.CFrame = CFrame.new(-148.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p182.Size = Vector3.new(2, 38.4000053, 1)
p182.BottomSurface = Enum.SurfaceType.Weld
p182.TopSurface = Enum.SurfaceType.Weld
p183 = Instance.new("Part", m17)
p183.BrickColor = BrickColor.new("Br. yellowish orange")
p183.Material = Enum.Material.Concrete
p183.CFrame = CFrame.new(-138.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p183.FormFactor = Enum.FormFactor.Custom
p183.Size = Vector3.new(2, 38.4000015, 1)
p183.BottomSurface = Enum.SurfaceType.Weld
p183.TopSurface = Enum.SurfaceType.Weld
p184 = Instance.new("Part", m17)
p184.BrickColor = BrickColor.new("Br. yellowish orange")
p184.Material = Enum.Material.Concrete
p184.CFrame = CFrame.new(-134.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p184.Size = Vector3.new(2, 38.4000053, 1)
p184.BottomSurface = Enum.SurfaceType.Weld
p184.TopSurface = Enum.SurfaceType.Weld
p185 = Instance.new("Part", m17)
p185.BrickColor = BrickColor.new("Br. yellowish orange")
p185.Material = Enum.Material.Concrete
p185.CFrame = CFrame.new(-130.5, 33.189949, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p185.Size = Vector3.new(2, 38.3999977, 1)
p185.BottomSurface = Enum.SurfaceType.Weld
p185.TopSurface = Enum.SurfaceType.Weld
p186 = Instance.new("Part", m18)
p186.BrickColor = BrickColor.new("Br. yellowish orange")
p186.Material = Enum.Material.Concrete
p186.CFrame = CFrame.new(-117, 33.189949, 124.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p186.Size = Vector3.new(2, 38.4000092, 3)
p186.BottomSurface = Enum.SurfaceType.Smooth
p186.TopSurface = Enum.SurfaceType.Smooth
p187 = Instance.new("Part", m18)
p187.BrickColor = BrickColor.new("Br. yellowish orange")
p187.Material = Enum.Material.Concrete
p187.CFrame = CFrame.new(-117.5, 33.189949, 126.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p187.Size = Vector3.new(2, 38.4000092, 2)
p187.BottomSurface = Enum.SurfaceType.Weld
p187.TopSurface = Enum.SurfaceType.Weld
p188 = Instance.new("Part", m18)
p188.BrickColor = BrickColor.new("Br. yellowish orange")
p188.Material = Enum.Material.Concrete
p188.CFrame = CFrame.new(-117.5, 33.189949, 121.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p188.Size = Vector3.new(4, 38.400013, 2)
p188.BottomSurface = Enum.SurfaceType.Weld
p188.TopSurface = Enum.SurfaceType.Weld
p189 = Instance.new("Part", m18)
p189.BrickColor = BrickColor.new("Br. yellowish orange")
p189.Material = Enum.Material.Concrete
p189.CFrame = CFrame.new(-117, 33.189949, 115.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p189.Size = Vector3.new(2, 38.3999977, 1)
p189.BottomSurface = Enum.SurfaceType.Weld
p189.TopSurface = Enum.SurfaceType.Weld
p190 = Instance.new("Part", m18)
p190.BrickColor = BrickColor.new("Br. yellowish orange")
p190.Material = Enum.Material.Concrete
p190.CFrame = CFrame.new(-117, 33.189949, 111.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p190.Size = Vector3.new(2, 38.4000053, 1)
p190.BottomSurface = Enum.SurfaceType.Weld
p190.TopSurface = Enum.SurfaceType.Weld
p191 = Instance.new("Part", m18)
p191.BrickColor = BrickColor.new("Br. yellowish orange")
p191.Material = Enum.Material.Concrete
p191.CFrame = CFrame.new(-117, 33.189949, 107.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p191.Size = Vector3.new(2, 38.3999977, 1)
p191.BottomSurface = Enum.SurfaceType.Weld
p191.TopSurface = Enum.SurfaceType.Weld
p192 = Instance.new("Part", m18)
p192.BrickColor = BrickColor.new("Br. yellowish orange")
p192.Material = Enum.Material.Concrete
p192.CFrame = CFrame.new(-118, 33.189949, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p192.Size = Vector3.new(30, 38.3999977, 1)
p192.BottomSurface = Enum.SurfaceType.Weld
p192.TopSurface = Enum.SurfaceType.Weld
p193 = Instance.new("Part", m18)
p193.BrickColor = BrickColor.new("Br. yellowish orange")
p193.Material = Enum.Material.Concrete
p193.CFrame = CFrame.new(-117, 33.189949, 97.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p193.Size = Vector3.new(2, 38.4000053, 1)
p193.BottomSurface = Enum.SurfaceType.Weld
p193.TopSurface = Enum.SurfaceType.Weld
p194 = Instance.new("Part", m18)
p194.BrickColor = BrickColor.new("Br. yellowish orange")
p194.Material = Enum.Material.Concrete
p194.CFrame = CFrame.new(-117, 33.189949, 101.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p194.Size = Vector3.new(2, 38.4000015, 1)
p194.BottomSurface = Enum.SurfaceType.Weld
p194.TopSurface = Enum.SurfaceType.Weld
p195 = Instance.new("Part", m18)
p195.BrickColor = BrickColor.new("Br. yellowish orange")
p195.Material = Enum.Material.Concrete
p195.CFrame = CFrame.new(-117, 33.189949, 93.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p195.FormFactor = Enum.FormFactor.Custom
p195.Size = Vector3.new(2, 38.4000015, 1)
p195.BottomSurface = Enum.SurfaceType.Weld
p195.TopSurface = Enum.SurfaceType.Weld
p196 = Instance.new("Part", m18)
p196.BrickColor = BrickColor.new("Br. yellowish orange")
p196.Material = Enum.Material.Concrete
p196.CFrame = CFrame.new(-117.5, 33.189949, 82.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p196.Size = Vector3.new(2, 38.3999977, 2)
p196.BottomSurface = Enum.SurfaceType.Weld
p196.TopSurface = Enum.SurfaceType.Weld
p197 = Instance.new("Part", m18)
p197.BrickColor = BrickColor.new("Br. yellowish orange")
p197.Material = Enum.Material.Concrete
p197.CFrame = CFrame.new(-117, 33.189949, 84.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p197.Size = Vector3.new(2, 38.3999977, 3)
p197.BottomSurface = Enum.SurfaceType.Smooth
p197.TopSurface = Enum.SurfaceType.Smooth
p198 = Instance.new("Part", m18)
p198.BrickColor = BrickColor.new("Br. yellowish orange")
p198.Material = Enum.Material.Concrete
p198.CFrame = CFrame.new(-117.5, 33.189949, 87.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p198.Size = Vector3.new(4, 38.4000092, 2)
p198.BottomSurface = Enum.SurfaceType.Weld
p198.TopSurface = Enum.SurfaceType.Weld
p199 = Instance.new("Part", m19)
p199.BrickColor = BrickColor.new("Br. yellowish orange")
p199.Material = Enum.Material.Concrete
p199.CFrame = CFrame.new(-166, 33.189949, 84.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p199.Size = Vector3.new(2, 38.4000092, 3)
p199.BottomSurface = Enum.SurfaceType.Smooth
p199.TopSurface = Enum.SurfaceType.Smooth
p200 = Instance.new("Part", m19)
p200.BrickColor = BrickColor.new("Br. yellowish orange")
p200.Material = Enum.Material.Concrete
p200.CFrame = CFrame.new(-165.5, 33.189949, 82.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p200.Size = Vector3.new(2, 38.4000092, 2)
p200.BottomSurface = Enum.SurfaceType.Weld
p200.TopSurface = Enum.SurfaceType.Weld
p201 = Instance.new("Part", m19)
p201.BrickColor = BrickColor.new("Br. yellowish orange")
p201.Material = Enum.Material.Concrete
p201.CFrame = CFrame.new(-165.5, 33.189949, 87.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p201.Size = Vector3.new(4, 38.400013, 2)
p201.BottomSurface = Enum.SurfaceType.Weld
p201.TopSurface = Enum.SurfaceType.Weld
p202 = Instance.new("Part", m19)
p202.BrickColor = BrickColor.new("Br. yellowish orange")
p202.Material = Enum.Material.Concrete
p202.CFrame = CFrame.new(-166, 33.189949, 93.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p202.Size = Vector3.new(2, 38.3999977, 1)
p202.BottomSurface = Enum.SurfaceType.Weld
p202.TopSurface = Enum.SurfaceType.Weld
p203 = Instance.new("Part", m19)
p203.BrickColor = BrickColor.new("Br. yellowish orange")
p203.Material = Enum.Material.Concrete
p203.CFrame = CFrame.new(-166, 33.189949, 97.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p203.Size = Vector3.new(2, 38.4000053, 1)
p203.BottomSurface = Enum.SurfaceType.Weld
p203.TopSurface = Enum.SurfaceType.Weld
p204 = Instance.new("Part", m19)
p204.BrickColor = BrickColor.new("Br. yellowish orange")
p204.Material = Enum.Material.Concrete
p204.CFrame = CFrame.new(-166, 33.189949, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p204.Size = Vector3.new(2, 38.3999977, 1)
p204.BottomSurface = Enum.SurfaceType.Weld
p204.TopSurface = Enum.SurfaceType.Weld
p205 = Instance.new("Part", m19)
p205.BrickColor = BrickColor.new("Br. yellowish orange")
p205.Material = Enum.Material.Concrete
p205.CFrame = CFrame.new(-165, 33.189949, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p205.Size = Vector3.new(30, 38.3999977, 1)
p205.BottomSurface = Enum.SurfaceType.Weld
p205.TopSurface = Enum.SurfaceType.Weld
p206 = Instance.new("Part", m19)
p206.BrickColor = BrickColor.new("Br. yellowish orange")
p206.Material = Enum.Material.Concrete
p206.CFrame = CFrame.new(-166, 33.189949, 111.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p206.Size = Vector3.new(2, 38.4000053, 1)
p206.BottomSurface = Enum.SurfaceType.Weld
p206.TopSurface = Enum.SurfaceType.Weld
p207 = Instance.new("Part", m19)
p207.BrickColor = BrickColor.new("Br. yellowish orange")
p207.Material = Enum.Material.Concrete
p207.CFrame = CFrame.new(-166, 33.189949, 107.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p207.Size = Vector3.new(2, 38.4000015, 1)
p207.BottomSurface = Enum.SurfaceType.Weld
p207.TopSurface = Enum.SurfaceType.Weld
p208 = Instance.new("Part", m19)
p208.BrickColor = BrickColor.new("Br. yellowish orange")
p208.Material = Enum.Material.Concrete
p208.CFrame = CFrame.new(-166, 33.189949, 115.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p208.FormFactor = Enum.FormFactor.Custom
p208.Size = Vector3.new(2, 38.4000015, 1)
p208.BottomSurface = Enum.SurfaceType.Weld
p208.TopSurface = Enum.SurfaceType.Weld
p209 = Instance.new("Part", m19)
p209.BrickColor = BrickColor.new("Br. yellowish orange")
p209.Material = Enum.Material.Concrete
p209.CFrame = CFrame.new(-165.5, 33.189949, 126.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p209.Size = Vector3.new(2, 38.3999977, 2)
p209.BottomSurface = Enum.SurfaceType.Weld
p209.TopSurface = Enum.SurfaceType.Weld
p210 = Instance.new("Part", m19)
p210.BrickColor = BrickColor.new("Br. yellowish orange")
p210.Material = Enum.Material.Concrete
p210.CFrame = CFrame.new(-166, 33.189949, 124.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p210.Size = Vector3.new(2, 38.3999977, 3)
p210.BottomSurface = Enum.SurfaceType.Smooth
p210.TopSurface = Enum.SurfaceType.Smooth
p211 = Instance.new("Part", m19)
p211.BrickColor = BrickColor.new("Br. yellowish orange")
p211.Material = Enum.Material.Concrete
p211.CFrame = CFrame.new(-165.5, 33.189949, 121.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p211.Size = Vector3.new(4, 38.4000092, 2)
p211.BottomSurface = Enum.SurfaceType.Weld
p211.TopSurface = Enum.SurfaceType.Weld
p212 = Instance.new("Part", m20)
p212.BrickColor = BrickColor.new("Br. yellowish orange")
p212.Material = Enum.Material.Concrete
p212.CFrame = CFrame.new(-164.5, 33.189949, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p212.Size = Vector3.new(4, 38.3999977, 2)
p212.BottomSurface = Enum.SurfaceType.Weld
p212.TopSurface = Enum.SurfaceType.Weld
p213 = Instance.new("Part", m20)
p213.BrickColor = BrickColor.new("Br. yellowish orange")
p213.Material = Enum.Material.Concrete
p213.CFrame = CFrame.new(-118.5, 33.189949, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p213.Size = Vector3.new(4, 38.3999977, 2)
p213.BottomSurface = Enum.SurfaceType.Weld
p213.TopSurface = Enum.SurfaceType.Weld
p214 = Instance.new("Part", m20)
p214.BrickColor = BrickColor.new("Br. yellowish orange")
p214.Material = Enum.Material.Concrete
p214.CFrame = CFrame.new(-121.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p214.Size = Vector3.new(2, 38.3999977, 3)
p214.BottomSurface = Enum.SurfaceType.Smooth
p214.TopSurface = Enum.SurfaceType.Smooth
p215 = Instance.new("Part", m20)
p215.BrickColor = BrickColor.new("Br. yellowish orange")
p215.Material = Enum.Material.Concrete
p215.CFrame = CFrame.new(-161.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p215.Size = Vector3.new(2, 38.3999977, 3)
p215.BottomSurface = Enum.SurfaceType.Smooth
p215.TopSurface = Enum.SurfaceType.Smooth
p216 = Instance.new("Part", m20)
p216.BrickColor = BrickColor.new("Br. yellowish orange")
p216.Material = Enum.Material.Concrete
p216.CFrame = CFrame.new(-124.5, 33.189949, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p216.Size = Vector3.new(4, 38.3999977, 2)
p216.BottomSurface = Enum.SurfaceType.Weld
p216.TopSurface = Enum.SurfaceType.Weld
p217 = Instance.new("Part", m20)
p217.BrickColor = BrickColor.new("Br. yellowish orange")
p217.Material = Enum.Material.Concrete
p217.CFrame = CFrame.new(-158.5, 33.189949, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p217.Size = Vector3.new(4, 38.3999977, 2)
p217.BottomSurface = Enum.SurfaceType.Weld
p217.TopSurface = Enum.SurfaceType.Weld
p218 = Instance.new("Part", m20)
p218.BrickColor = BrickColor.new("Br. yellowish orange")
p218.Material = Enum.Material.Concrete
p218.CFrame = CFrame.new(-141.5, 33.189949, 128.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p218.Size = Vector3.new(30, 38.3999977, 1)
p218.BottomSurface = Enum.SurfaceType.Weld
p218.TopSurface = Enum.SurfaceType.Weld
p219 = Instance.new("Part", m20)
p219.BrickColor = BrickColor.new("Br. yellowish orange")
p219.Material = Enum.Material.Concrete
p219.CFrame = CFrame.new(-138.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p219.Size = Vector3.new(2, 38.3999977, 1)
p219.BottomSurface = Enum.SurfaceType.Weld
p219.TopSurface = Enum.SurfaceType.Weld
p220 = Instance.new("Part", m20)
p220.BrickColor = BrickColor.new("Br. yellowish orange")
p220.Material = Enum.Material.Concrete
p220.CFrame = CFrame.new(-130.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p220.FormFactor = Enum.FormFactor.Custom
p220.Size = Vector3.new(2, 38.4000015, 1)
p220.BottomSurface = Enum.SurfaceType.Weld
p220.TopSurface = Enum.SurfaceType.Weld
p221 = Instance.new("Part", m20)
p221.BrickColor = BrickColor.new("Br. yellowish orange")
p221.Material = Enum.Material.Concrete
p221.CFrame = CFrame.new(-134.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p221.Size = Vector3.new(2, 38.4000053, 1)
p221.BottomSurface = Enum.SurfaceType.Weld
p221.TopSurface = Enum.SurfaceType.Weld
p222 = Instance.new("Part", m20)
p222.BrickColor = BrickColor.new("Br. yellowish orange")
p222.Material = Enum.Material.Concrete
p222.CFrame = CFrame.new(-144.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p222.FormFactor = Enum.FormFactor.Custom
p222.Size = Vector3.new(2, 38.4000015, 1)
p222.BottomSurface = Enum.SurfaceType.Weld
p222.TopSurface = Enum.SurfaceType.Weld
p223 = Instance.new("Part", m20)
p223.BrickColor = BrickColor.new("Br. yellowish orange")
p223.Material = Enum.Material.Concrete
p223.CFrame = CFrame.new(-148.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p223.Size = Vector3.new(2, 38.4000053, 1)
p223.BottomSurface = Enum.SurfaceType.Weld
p223.TopSurface = Enum.SurfaceType.Weld
p224 = Instance.new("Part", m20)
p224.BrickColor = BrickColor.new("Br. yellowish orange")
p224.Material = Enum.Material.Concrete
p224.CFrame = CFrame.new(-152.5, 33.189949, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p224.Size = Vector3.new(2, 38.3999977, 1)
p224.BottomSurface = Enum.SurfaceType.Weld
p224.TopSurface = Enum.SurfaceType.Weld
p225 = Instance.new("Part", m22)
p225.BrickColor = BrickColor.new("Dark stone grey")
p225.Material = Enum.Material.Slate
p225.CFrame = CFrame.new(-161, 21.189949, 119.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p225.Size = Vector3.new(7, 1.20000005, 2)
p225.BottomSurface = Enum.SurfaceType.Smooth
p225.RightSurface = Enum.SurfaceType.Weld
p225.TopSurface = Enum.SurfaceType.Smooth
p226 = Instance.new("Part", m22)
p226.BrickColor = BrickColor.new("Dark stone grey")
p226.Material = Enum.Material.Slate
p226.CFrame = CFrame.new(-161, 35.3899498, 95.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p226.Size = Vector3.new(7, 1.20000005, 2)
p226.BottomSurface = Enum.SurfaceType.Smooth
p226.RightSurface = Enum.SurfaceType.Weld
p226.TopSurface = Enum.SurfaceType.Smooth
p227 = Instance.new("Part", m22)
p227.BrickColor = BrickColor.new("Dark stone grey")
p227.Material = Enum.Material.Slate
p227.CFrame = CFrame.new(-161, 22.189949, 117.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p227.Size = Vector3.new(7, 1.20000005, 2)
p227.BottomSurface = Enum.SurfaceType.Smooth
p227.RightSurface = Enum.SurfaceType.Weld
p227.TopSurface = Enum.SurfaceType.Smooth
p228 = Instance.new("Part", m22)
p228.BrickColor = BrickColor.new("Dark stone grey")
p228.Material = Enum.Material.Slate
p228.CFrame = CFrame.new(-161, 23.3899498, 115.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p228.Size = Vector3.new(7, 1.20000005, 2)
p228.BottomSurface = Enum.SurfaceType.Smooth
p228.RightSurface = Enum.SurfaceType.Weld
p228.TopSurface = Enum.SurfaceType.Smooth
p229 = Instance.new("Part", m22)
p229.BrickColor = BrickColor.new("Dark stone grey")
p229.Material = Enum.Material.Slate
p229.CFrame = CFrame.new(-161, 24.5899487, 113.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p229.Size = Vector3.new(7, 1.20000005, 2)
p229.BottomSurface = Enum.SurfaceType.Smooth
p229.RightSurface = Enum.SurfaceType.Weld
p229.TopSurface = Enum.SurfaceType.Smooth
p230 = Instance.new("Part", m22)
p230.BrickColor = BrickColor.new("Dark stone grey")
p230.Material = Enum.Material.Slate
p230.CFrame = CFrame.new(-161, 25.7899494, 111.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p230.Size = Vector3.new(7, 1.20000005, 2)
p230.BottomSurface = Enum.SurfaceType.Smooth
p230.RightSurface = Enum.SurfaceType.Weld
p230.TopSurface = Enum.SurfaceType.Smooth
p231 = Instance.new("Part", m22)
p231.BrickColor = BrickColor.new("Dark stone grey")
p231.Material = Enum.Material.Slate
p231.CFrame = CFrame.new(-161, 26.9899483, 109.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p231.Size = Vector3.new(7, 1.20000005, 2)
p231.BottomSurface = Enum.SurfaceType.Smooth
p231.RightSurface = Enum.SurfaceType.Weld
p231.TopSurface = Enum.SurfaceType.Smooth
p232 = Instance.new("Part", m22)
p232.BrickColor = BrickColor.new("Dark stone grey")
p232.Material = Enum.Material.Slate
p232.CFrame = CFrame.new(-161, 28.189949, 107.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p232.Size = Vector3.new(7, 1.20000005, 2)
p232.BottomSurface = Enum.SurfaceType.Smooth
p232.RightSurface = Enum.SurfaceType.Weld
p232.TopSurface = Enum.SurfaceType.Smooth
p233 = Instance.new("Part", m22)
p233.BrickColor = BrickColor.new("Dark stone grey")
p233.Material = Enum.Material.Slate
p233.CFrame = CFrame.new(-161, 29.3899498, 105.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p233.Size = Vector3.new(7, 1.20000005, 2)
p233.BottomSurface = Enum.SurfaceType.Smooth
p233.RightSurface = Enum.SurfaceType.Weld
p233.TopSurface = Enum.SurfaceType.Smooth
p234 = Instance.new("Part", m22)
p234.BrickColor = BrickColor.new("Dark stone grey")
p234.Material = Enum.Material.Slate
p234.CFrame = CFrame.new(-161, 30.5899487, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p234.Size = Vector3.new(7, 1.20000005, 2)
p234.BottomSurface = Enum.SurfaceType.Smooth
p234.RightSurface = Enum.SurfaceType.Weld
p234.TopSurface = Enum.SurfaceType.Smooth
p235 = Instance.new("Part", m22)
p235.BrickColor = BrickColor.new("Dark stone grey")
p235.Material = Enum.Material.Slate
p235.CFrame = CFrame.new(-161, 31.7899494, 101.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p235.Size = Vector3.new(7, 1.20000005, 2)
p235.BottomSurface = Enum.SurfaceType.Smooth
p235.RightSurface = Enum.SurfaceType.Weld
p235.TopSurface = Enum.SurfaceType.Smooth
p236 = Instance.new("Part", m22)
p236.BrickColor = BrickColor.new("Dark stone grey")
p236.Material = Enum.Material.Slate
p236.CFrame = CFrame.new(-161, 32.9899483, 99.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p236.Size = Vector3.new(7, 1.20000005, 2)
p236.BottomSurface = Enum.SurfaceType.Smooth
p236.RightSurface = Enum.SurfaceType.Weld
p236.TopSurface = Enum.SurfaceType.Smooth
p237 = Instance.new("Part", m22)
p237.BrickColor = BrickColor.new("Dark stone grey")
p237.Material = Enum.Material.Slate
p237.CFrame = CFrame.new(-161, 34.189949, 97.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p237.Size = Vector3.new(7, 1.20000005, 2)
p237.BottomSurface = Enum.SurfaceType.Smooth
p237.RightSurface = Enum.SurfaceType.Weld
p237.TopSurface = Enum.SurfaceType.Smooth
p238 = Instance.new("Part", m22)
p238.BrickColor = BrickColor.new("Dark stone grey")
p238.Material = Enum.Material.Slate
p238.CFrame = CFrame.new(-161, 36.5899506, 93.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p238.Size = Vector3.new(7, 1.20000005, 2)
p238.BottomSurface = Enum.SurfaceType.Smooth
p238.RightSurface = Enum.SurfaceType.Weld
p238.TopSurface = Enum.SurfaceType.Smooth
p239 = Instance.new("Part", m22)
p239.BrickColor = BrickColor.new("Dark stone grey")
p239.Material = Enum.Material.Slate
p239.CFrame = CFrame.new(-161, 40.189949, 85.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p239.Size = Vector3.new(7, 1.20000005, 7)
p239.BackSurface = Enum.SurfaceType.Weld
p239.BottomSurface = Enum.SurfaceType.Smooth
p239.RightSurface = Enum.SurfaceType.Weld
p239.TopSurface = Enum.SurfaceType.Smooth
p240 = Instance.new("Part", m22)
p240.BrickColor = BrickColor.new("Dark stone grey")
p240.Material = Enum.Material.Slate
p240.CFrame = CFrame.new(-161, 37.7899475, 91.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p240.Size = Vector3.new(7, 1.20000005, 2)
p240.BottomSurface = Enum.SurfaceType.Smooth
p240.RightSurface = Enum.SurfaceType.Weld
p240.TopSurface = Enum.SurfaceType.Smooth
p241 = Instance.new("Part", m22)
p241.BrickColor = BrickColor.new("Dark stone grey")
p241.Material = Enum.Material.Slate
p241.CFrame = CFrame.new(-161, 38.9899483, 89.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p241.Size = Vector3.new(7, 1.20000005, 2)
p241.BottomSurface = Enum.SurfaceType.Smooth
p241.RightSurface = Enum.SurfaceType.Weld
p241.TopSurface = Enum.SurfaceType.Smooth
p242 = Instance.new("Part", m23)
p242.BrickColor = BrickColor.new("Dark stone grey")
p242.Material = Enum.Material.Slate
p242.CFrame = CFrame.new(-156.5, 41.3899498, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p242.Size = Vector3.new(7, 1.20000005, 2)
p242.BottomSurface = Enum.SurfaceType.Smooth
p242.RightSurface = Enum.SurfaceType.Weld
p242.TopSurface = Enum.SurfaceType.Smooth
p243 = Instance.new("Part", m23)
p243.BrickColor = BrickColor.new("Dark stone grey")
p243.Material = Enum.Material.Slate
p243.CFrame = CFrame.new(-132.5, 55.5899506, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p243.Size = Vector3.new(7, 1.20000005, 2)
p243.BottomSurface = Enum.SurfaceType.Smooth
p243.RightSurface = Enum.SurfaceType.Weld
p243.TopSurface = Enum.SurfaceType.Smooth
p244 = Instance.new("Part", m23)
p244.BrickColor = BrickColor.new("Dark stone grey")
p244.Material = Enum.Material.Slate
p244.CFrame = CFrame.new(-154.5, 42.3899498, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p244.Size = Vector3.new(7, 1.20000005, 2)
p244.BottomSurface = Enum.SurfaceType.Smooth
p244.RightSurface = Enum.SurfaceType.Weld
p244.TopSurface = Enum.SurfaceType.Smooth
p245 = Instance.new("Part", m23)
p245.BrickColor = BrickColor.new("Dark stone grey")
p245.Material = Enum.Material.Slate
p245.CFrame = CFrame.new(-152.5, 43.5899506, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p245.Size = Vector3.new(7, 1.20000005, 2)
p245.BottomSurface = Enum.SurfaceType.Smooth
p245.RightSurface = Enum.SurfaceType.Weld
p245.TopSurface = Enum.SurfaceType.Smooth
p246 = Instance.new("Part", m23)
p246.BrickColor = BrickColor.new("Dark stone grey")
p246.Material = Enum.Material.Slate
p246.CFrame = CFrame.new(-150.5, 44.7899475, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p246.Size = Vector3.new(7, 1.20000005, 2)
p246.BottomSurface = Enum.SurfaceType.Smooth
p246.RightSurface = Enum.SurfaceType.Weld
p246.TopSurface = Enum.SurfaceType.Smooth
p247 = Instance.new("Part", m23)
p247.BrickColor = BrickColor.new("Dark stone grey")
p247.Material = Enum.Material.Slate
p247.CFrame = CFrame.new(-148.5, 45.9899483, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p247.Size = Vector3.new(7, 1.20000005, 2)
p247.BottomSurface = Enum.SurfaceType.Smooth
p247.RightSurface = Enum.SurfaceType.Weld
p247.TopSurface = Enum.SurfaceType.Smooth
p248 = Instance.new("Part", m23)
p248.BrickColor = BrickColor.new("Dark stone grey")
p248.Material = Enum.Material.Slate
p248.CFrame = CFrame.new(-146.5, 47.189949, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p248.Size = Vector3.new(7, 1.20000005, 2)
p248.BottomSurface = Enum.SurfaceType.Smooth
p248.RightSurface = Enum.SurfaceType.Weld
p248.TopSurface = Enum.SurfaceType.Smooth
p249 = Instance.new("Part", m23)
p249.BrickColor = BrickColor.new("Dark stone grey")
p249.Material = Enum.Material.Slate
p249.CFrame = CFrame.new(-144.5, 48.3899498, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p249.Size = Vector3.new(7, 1.20000005, 2)
p249.BottomSurface = Enum.SurfaceType.Smooth
p249.RightSurface = Enum.SurfaceType.Weld
p249.TopSurface = Enum.SurfaceType.Smooth
p250 = Instance.new("Part", m23)
p250.BrickColor = BrickColor.new("Dark stone grey")
p250.Material = Enum.Material.Slate
p250.CFrame = CFrame.new(-142.5, 49.5899506, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p250.Size = Vector3.new(7, 1.20000005, 2)
p250.BottomSurface = Enum.SurfaceType.Smooth
p250.RightSurface = Enum.SurfaceType.Weld
p250.TopSurface = Enum.SurfaceType.Smooth
p251 = Instance.new("Part", m23)
p251.BrickColor = BrickColor.new("Dark stone grey")
p251.Material = Enum.Material.Slate
p251.CFrame = CFrame.new(-140.5, 50.7899475, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p251.Size = Vector3.new(7, 1.20000005, 2)
p251.BottomSurface = Enum.SurfaceType.Smooth
p251.RightSurface = Enum.SurfaceType.Weld
p251.TopSurface = Enum.SurfaceType.Smooth
p252 = Instance.new("Part", m23)
p252.BrickColor = BrickColor.new("Dark stone grey")
p252.Material = Enum.Material.Slate
p252.CFrame = CFrame.new(-138.5, 51.9899521, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p252.Size = Vector3.new(7, 1.20000005, 2)
p252.BottomSurface = Enum.SurfaceType.Smooth
p252.RightSurface = Enum.SurfaceType.Weld
p252.TopSurface = Enum.SurfaceType.Smooth
p253 = Instance.new("Part", m23)
p253.BrickColor = BrickColor.new("Dark stone grey")
p253.Material = Enum.Material.Slate
p253.CFrame = CFrame.new(-136.5, 53.1899529, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p253.Size = Vector3.new(7, 1.20000005, 2)
p253.BottomSurface = Enum.SurfaceType.Smooth
p253.RightSurface = Enum.SurfaceType.Weld
p253.TopSurface = Enum.SurfaceType.Smooth
p254 = Instance.new("Part", m23)
p254.BrickColor = BrickColor.new("Dark stone grey")
p254.Material = Enum.Material.Slate
p254.CFrame = CFrame.new(-134.5, 54.3899498, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p254.Size = Vector3.new(7, 1.20000005, 2)
p254.BottomSurface = Enum.SurfaceType.Smooth
p254.RightSurface = Enum.SurfaceType.Weld
p254.TopSurface = Enum.SurfaceType.Smooth
p255 = Instance.new("Part", m23)
p255.BrickColor = BrickColor.new("Dark stone grey")
p255.Material = Enum.Material.Slate
p255.CFrame = CFrame.new(-130.5, 56.7899513, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p255.Size = Vector3.new(7, 1.20000005, 2)
p255.BottomSurface = Enum.SurfaceType.Smooth
p255.RightSurface = Enum.SurfaceType.Weld
p255.TopSurface = Enum.SurfaceType.Smooth
p256 = Instance.new("Part", m23)
p256.BrickColor = BrickColor.new("Dark stone grey")
p256.Material = Enum.Material.Slate
p256.CFrame = CFrame.new(-122, 60.3899498, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p256.Size = Vector3.new(7, 1.20000005, 7)
p256.BackSurface = Enum.SurfaceType.Weld
p256.BottomSurface = Enum.SurfaceType.Smooth
p256.RightSurface = Enum.SurfaceType.Weld
p256.TopSurface = Enum.SurfaceType.Smooth
p257 = Instance.new("Part", m23)
p257.BrickColor = BrickColor.new("Dark stone grey")
p257.Material = Enum.Material.Slate
p257.CFrame = CFrame.new(-128.5, 57.9899521, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p257.Size = Vector3.new(7, 1.20000005, 2)
p257.BottomSurface = Enum.SurfaceType.Smooth
p257.RightSurface = Enum.SurfaceType.Weld
p257.TopSurface = Enum.SurfaceType.Smooth
p258 = Instance.new("Part", m23)
p258.BrickColor = BrickColor.new("Dark stone grey")
p258.Material = Enum.Material.Slate
p258.CFrame = CFrame.new(-126.5, 59.1899529, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p258.Size = Vector3.new(7, 1.20000005, 2)
p258.BottomSurface = Enum.SurfaceType.Smooth
p258.RightSurface = Enum.SurfaceType.Weld
p258.TopSurface = Enum.SurfaceType.Smooth
p259 = Instance.new("Part", m24)
p259.BrickColor = BrickColor.new("Dark stone grey")
p259.Material = Enum.Material.Slate
p259.CFrame = CFrame.new(-122, 61.5899506, 89.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p259.Size = Vector3.new(7, 1.20000005, 2)
p259.BottomSurface = Enum.SurfaceType.Smooth
p259.RightSurface = Enum.SurfaceType.Weld
p259.TopSurface = Enum.SurfaceType.Smooth
p260 = Instance.new("Part", m24)
p260.BrickColor = BrickColor.new("Dark stone grey")
p260.Material = Enum.Material.Slate
p260.CFrame = CFrame.new(-122, 75.7899551, 113.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p260.Size = Vector3.new(7, 1.20000005, 2)
p260.BottomSurface = Enum.SurfaceType.Smooth
p260.RightSurface = Enum.SurfaceType.Weld
p260.TopSurface = Enum.SurfaceType.Smooth
p261 = Instance.new("Part", m24)
p261.BrickColor = BrickColor.new("Dark stone grey")
p261.Material = Enum.Material.Slate
p261.CFrame = CFrame.new(-122, 62.5899506, 91.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p261.Size = Vector3.new(7, 1.20000005, 2)
p261.BottomSurface = Enum.SurfaceType.Smooth
p261.RightSurface = Enum.SurfaceType.Weld
p261.TopSurface = Enum.SurfaceType.Smooth
p262 = Instance.new("Part", m24)
p262.BrickColor = BrickColor.new("Dark stone grey")
p262.Material = Enum.Material.Slate
p262.CFrame = CFrame.new(-122, 63.7899513, 93.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p262.Size = Vector3.new(7, 1.20000005, 2)
p262.BottomSurface = Enum.SurfaceType.Smooth
p262.RightSurface = Enum.SurfaceType.Weld
p262.TopSurface = Enum.SurfaceType.Smooth
p263 = Instance.new("Part", m24)
p263.BrickColor = BrickColor.new("Dark stone grey")
p263.Material = Enum.Material.Slate
p263.CFrame = CFrame.new(-122, 64.9899521, 95.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p263.Size = Vector3.new(7, 1.20000005, 2)
p263.BottomSurface = Enum.SurfaceType.Smooth
p263.RightSurface = Enum.SurfaceType.Weld
p263.TopSurface = Enum.SurfaceType.Smooth
p264 = Instance.new("Part", m24)
p264.BrickColor = BrickColor.new("Dark stone grey")
p264.Material = Enum.Material.Slate
p264.CFrame = CFrame.new(-122, 66.1899567, 97.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p264.Size = Vector3.new(7, 1.20000005, 2)
p264.BottomSurface = Enum.SurfaceType.Smooth
p264.RightSurface = Enum.SurfaceType.Weld
p264.TopSurface = Enum.SurfaceType.Smooth
p265 = Instance.new("Part", m24)
p265.BrickColor = BrickColor.new("Dark stone grey")
p265.Material = Enum.Material.Slate
p265.CFrame = CFrame.new(-122, 67.3899536, 99.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p265.Size = Vector3.new(7, 1.20000005, 2)
p265.BottomSurface = Enum.SurfaceType.Smooth
p265.RightSurface = Enum.SurfaceType.Weld
p265.TopSurface = Enum.SurfaceType.Smooth
p266 = Instance.new("Part", m24)
p266.BrickColor = BrickColor.new("Dark stone grey")
p266.Material = Enum.Material.Slate
p266.CFrame = CFrame.new(-122, 68.5899506, 101.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p266.Size = Vector3.new(7, 1.20000005, 2)
p266.BottomSurface = Enum.SurfaceType.Smooth
p266.RightSurface = Enum.SurfaceType.Weld
p266.TopSurface = Enum.SurfaceType.Smooth
p267 = Instance.new("Part", m24)
p267.BrickColor = BrickColor.new("Dark stone grey")
p267.Material = Enum.Material.Slate
p267.CFrame = CFrame.new(-122, 69.7899551, 103.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p267.Size = Vector3.new(7, 1.20000005, 2)
p267.BottomSurface = Enum.SurfaceType.Smooth
p267.RightSurface = Enum.SurfaceType.Weld
p267.TopSurface = Enum.SurfaceType.Smooth
p268 = Instance.new("Part", m24)
p268.BrickColor = BrickColor.new("Dark stone grey")
p268.Material = Enum.Material.Slate
p268.CFrame = CFrame.new(-122, 70.9899521, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p268.Size = Vector3.new(7, 1.20000005, 2)
p268.BottomSurface = Enum.SurfaceType.Smooth
p268.RightSurface = Enum.SurfaceType.Weld
p268.TopSurface = Enum.SurfaceType.Smooth
p269 = Instance.new("Part", m24)
p269.BrickColor = BrickColor.new("Dark stone grey")
p269.Material = Enum.Material.Slate
p269.CFrame = CFrame.new(-122, 72.1899567, 107.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p269.Size = Vector3.new(7, 1.20000005, 2)
p269.BottomSurface = Enum.SurfaceType.Smooth
p269.RightSurface = Enum.SurfaceType.Weld
p269.TopSurface = Enum.SurfaceType.Smooth
p270 = Instance.new("Part", m24)
p270.BrickColor = BrickColor.new("Dark stone grey")
p270.Material = Enum.Material.Slate
p270.CFrame = CFrame.new(-122, 73.3899536, 109.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p270.Size = Vector3.new(7, 1.20000005, 2)
p270.BottomSurface = Enum.SurfaceType.Smooth
p270.RightSurface = Enum.SurfaceType.Weld
p270.TopSurface = Enum.SurfaceType.Smooth
p271 = Instance.new("Part", m24)
p271.BrickColor = BrickColor.new("Dark stone grey")
p271.Material = Enum.Material.Slate
p271.CFrame = CFrame.new(-122, 74.5899506, 111.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p271.Size = Vector3.new(7, 1.20000005, 2)
p271.BottomSurface = Enum.SurfaceType.Smooth
p271.RightSurface = Enum.SurfaceType.Weld
p271.TopSurface = Enum.SurfaceType.Smooth
p272 = Instance.new("Part", m24)
p272.BrickColor = BrickColor.new("Dark stone grey")
p272.Material = Enum.Material.Slate
p272.CFrame = CFrame.new(-122, 76.9899521, 115.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p272.Size = Vector3.new(7, 1.20000005, 2)
p272.BottomSurface = Enum.SurfaceType.Smooth
p272.RightSurface = Enum.SurfaceType.Weld
p272.TopSurface = Enum.SurfaceType.Smooth
p273 = Instance.new("Part", m24)
p273.BrickColor = BrickColor.new("Dark stone grey")
p273.Material = Enum.Material.Slate
p273.CFrame = CFrame.new(-122, 80.5899506, 124.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p273.Size = Vector3.new(7, 1.20000005, 7)
p273.BackSurface = Enum.SurfaceType.Weld
p273.BottomSurface = Enum.SurfaceType.Smooth
p273.RightSurface = Enum.SurfaceType.Weld
p273.TopSurface = Enum.SurfaceType.Smooth
p274 = Instance.new("Part", m24)
p274.BrickColor = BrickColor.new("Dark stone grey")
p274.Material = Enum.Material.Slate
p274.CFrame = CFrame.new(-122, 78.1899567, 117.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p274.Size = Vector3.new(7, 1.20000005, 2)
p274.BottomSurface = Enum.SurfaceType.Smooth
p274.RightSurface = Enum.SurfaceType.Weld
p274.TopSurface = Enum.SurfaceType.Smooth
p275 = Instance.new("Part", m24)
p275.BrickColor = BrickColor.new("Dark stone grey")
p275.Material = Enum.Material.Slate
p275.CFrame = CFrame.new(-122, 79.3899536, 119.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p275.Size = Vector3.new(7, 1.20000005, 2)
p275.BottomSurface = Enum.SurfaceType.Smooth
p275.RightSurface = Enum.SurfaceType.Weld
p275.TopSurface = Enum.SurfaceType.Smooth
p276 = Instance.new("Part", m25)
p276.BrickColor = BrickColor.new("Dark stone grey")
p276.Material = Enum.Material.Slate
p276.CFrame = CFrame.new(-126.5, 0.989945889, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p276.Size = Vector3.new(7, 1.20000005, 2)
p276.BottomSurface = Enum.SurfaceType.Smooth
p276.RightSurface = Enum.SurfaceType.Weld
p276.TopSurface = Enum.SurfaceType.Smooth
p277 = Instance.new("Part", m25)
p277.BrickColor = BrickColor.new("Dark stone grey")
p277.Material = Enum.Material.Slate
p277.CFrame = CFrame.new(-150.5, 15.189949, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p277.Size = Vector3.new(7, 1.20000005, 2)
p277.BottomSurface = Enum.SurfaceType.Smooth
p277.RightSurface = Enum.SurfaceType.Weld
p277.TopSurface = Enum.SurfaceType.Smooth
p278 = Instance.new("Part", m25)
p278.BrickColor = BrickColor.new("Dark stone grey")
p278.Material = Enum.Material.Slate
p278.CFrame = CFrame.new(-128.5, 1.98994589, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p278.Size = Vector3.new(7, 1.20000005, 2)
p278.BottomSurface = Enum.SurfaceType.Smooth
p278.RightSurface = Enum.SurfaceType.Weld
p278.TopSurface = Enum.SurfaceType.Smooth
p279 = Instance.new("Part", m25)
p279.BrickColor = BrickColor.new("Dark stone grey")
p279.Material = Enum.Material.Slate
p279.CFrame = CFrame.new(-130.5, 3.18994594, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p279.Size = Vector3.new(7, 1.20000005, 2)
p279.BottomSurface = Enum.SurfaceType.Smooth
p279.RightSurface = Enum.SurfaceType.Weld
p279.TopSurface = Enum.SurfaceType.Smooth
p280 = Instance.new("Part", m25)
p280.BrickColor = BrickColor.new("Dark stone grey")
p280.Material = Enum.Material.Slate
p280.CFrame = CFrame.new(-132.5, 4.38994598, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p280.Size = Vector3.new(7, 1.20000005, 2)
p280.BottomSurface = Enum.SurfaceType.Smooth
p280.RightSurface = Enum.SurfaceType.Weld
p280.TopSurface = Enum.SurfaceType.Smooth
p281 = Instance.new("Part", m25)
p281.BrickColor = BrickColor.new("Dark stone grey")
p281.Material = Enum.Material.Slate
p281.CFrame = CFrame.new(-134.5, 5.58994579, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p281.Size = Vector3.new(7, 1.20000005, 2)
p281.BottomSurface = Enum.SurfaceType.Smooth
p281.RightSurface = Enum.SurfaceType.Weld
p281.TopSurface = Enum.SurfaceType.Smooth
p282 = Instance.new("Part", m25)
p282.BrickColor = BrickColor.new("Dark stone grey")
p282.Material = Enum.Material.Slate
p282.CFrame = CFrame.new(-136.5, 6.78994608, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p282.Size = Vector3.new(7, 1.20000005, 2)
p282.BottomSurface = Enum.SurfaceType.Smooth
p282.RightSurface = Enum.SurfaceType.Weld
p282.TopSurface = Enum.SurfaceType.Smooth
p283 = Instance.new("Part", m25)
p283.BrickColor = BrickColor.new("Dark stone grey")
p283.Material = Enum.Material.Slate
p283.CFrame = CFrame.new(-138.5, 7.98994589, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p283.Size = Vector3.new(7, 1.20000005, 2)
p283.BottomSurface = Enum.SurfaceType.Smooth
p283.RightSurface = Enum.SurfaceType.Weld
p283.TopSurface = Enum.SurfaceType.Smooth
p284 = Instance.new("Part", m25)
p284.BrickColor = BrickColor.new("Dark stone grey")
p284.Material = Enum.Material.Slate
p284.CFrame = CFrame.new(-140.5, 9.18994617, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p284.Size = Vector3.new(7, 1.20000005, 2)
p284.BottomSurface = Enum.SurfaceType.Smooth
p284.RightSurface = Enum.SurfaceType.Weld
p284.TopSurface = Enum.SurfaceType.Smooth
p285 = Instance.new("Part", m25)
p285.BrickColor = BrickColor.new("Dark stone grey")
p285.Material = Enum.Material.Slate
p285.CFrame = CFrame.new(-142.5, 10.389946, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p285.Size = Vector3.new(7, 1.20000005, 2)
p285.BottomSurface = Enum.SurfaceType.Smooth
p285.RightSurface = Enum.SurfaceType.Weld
p285.TopSurface = Enum.SurfaceType.Smooth
p286 = Instance.new("Part", m25)
p286.BrickColor = BrickColor.new("Dark stone grey")
p286.Material = Enum.Material.Slate
p286.CFrame = CFrame.new(-144.5, 11.5899458, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p286.Size = Vector3.new(7, 1.20000005, 2)
p286.BottomSurface = Enum.SurfaceType.Smooth
p286.RightSurface = Enum.SurfaceType.Weld
p286.TopSurface = Enum.SurfaceType.Smooth
p287 = Instance.new("Part", m25)
p287.BrickColor = BrickColor.new("Dark stone grey")
p287.Material = Enum.Material.Slate
p287.CFrame = CFrame.new(-146.5, 12.7899456, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p287.Size = Vector3.new(7, 1.20000005, 2)
p287.BottomSurface = Enum.SurfaceType.Smooth
p287.RightSurface = Enum.SurfaceType.Weld
p287.TopSurface = Enum.SurfaceType.Smooth
p288 = Instance.new("Part", m25)
p288.BrickColor = BrickColor.new("Dark stone grey")
p288.Material = Enum.Material.Slate
p288.CFrame = CFrame.new(-148.5, 13.9899483, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p288.Size = Vector3.new(7, 1.20000005, 2)
p288.BottomSurface = Enum.SurfaceType.Smooth
p288.RightSurface = Enum.SurfaceType.Weld
p288.TopSurface = Enum.SurfaceType.Smooth
p289 = Instance.new("Part", m25)
p289.BrickColor = BrickColor.new("Dark stone grey")
p289.Material = Enum.Material.Slate
p289.CFrame = CFrame.new(-152.5, 16.3899479, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p289.Size = Vector3.new(7, 1.20000005, 2)
p289.BottomSurface = Enum.SurfaceType.Smooth
p289.RightSurface = Enum.SurfaceType.Weld
p289.TopSurface = Enum.SurfaceType.Smooth
p290 = Instance.new("Part", m25)
p290.BrickColor = BrickColor.new("Dark stone grey")
p290.Material = Enum.Material.Slate
p290.CFrame = CFrame.new(-161, 19.9899483, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p290.Size = Vector3.new(7, 1.20000005, 7)
p290.BackSurface = Enum.SurfaceType.Weld
p290.BottomSurface = Enum.SurfaceType.Smooth
p290.RightSurface = Enum.SurfaceType.Weld
p290.TopSurface = Enum.SurfaceType.Smooth
p291 = Instance.new("Part", m25)
p291.BrickColor = BrickColor.new("Dark stone grey")
p291.Material = Enum.Material.Slate
p291.CFrame = CFrame.new(-154.5, 17.5899487, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p291.Size = Vector3.new(7, 1.20000005, 2)
p291.BottomSurface = Enum.SurfaceType.Smooth
p291.RightSurface = Enum.SurfaceType.Weld
p291.TopSurface = Enum.SurfaceType.Smooth
p292 = Instance.new("Part", m25)
p292.BrickColor = BrickColor.new("Dark stone grey")
p292.Material = Enum.Material.Slate
p292.CFrame = CFrame.new(-156.5, 18.7899475, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p292.Size = Vector3.new(7, 1.20000005, 2)
p292.BottomSurface = Enum.SurfaceType.Smooth
p292.RightSurface = Enum.SurfaceType.Weld
p292.TopSurface = Enum.SurfaceType.Smooth
p293 = Instance.new("Part", m26)
p293.BrickColor = BrickColor.new("Dark stone grey")
p293.Material = Enum.Material.Slate
p293.CFrame = CFrame.new(-156.5, 122.189964, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p293.Size = Vector3.new(7, 1.20000005, 2)
p293.BottomSurface = Enum.SurfaceType.Smooth
p293.RightSurface = Enum.SurfaceType.Weld
p293.TopSurface = Enum.SurfaceType.Smooth
p294 = Instance.new("Part", m26)
p294.BrickColor = BrickColor.new("Dark stone grey")
p294.Material = Enum.Material.Slate
p294.CFrame = CFrame.new(-132.5, 136.389969, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p294.Size = Vector3.new(7, 1.20000005, 2)
p294.BottomSurface = Enum.SurfaceType.Smooth
p294.RightSurface = Enum.SurfaceType.Weld
p294.TopSurface = Enum.SurfaceType.Smooth
p295 = Instance.new("Part", m26)
p295.BrickColor = BrickColor.new("Dark stone grey")
p295.Material = Enum.Material.Slate
p295.CFrame = CFrame.new(-154.5, 123.189964, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p295.Size = Vector3.new(7, 1.20000005, 2)
p295.BottomSurface = Enum.SurfaceType.Smooth
p295.RightSurface = Enum.SurfaceType.Weld
p295.TopSurface = Enum.SurfaceType.Smooth
p296 = Instance.new("Part", m26)
p296.BrickColor = BrickColor.new("Dark stone grey")
p296.Material = Enum.Material.Slate
p296.CFrame = CFrame.new(-152.5, 124.389969, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p296.Size = Vector3.new(7, 1.20000005, 2)
p296.BottomSurface = Enum.SurfaceType.Smooth
p296.RightSurface = Enum.SurfaceType.Weld
p296.TopSurface = Enum.SurfaceType.Smooth
p297 = Instance.new("Part", m26)
p297.BrickColor = BrickColor.new("Dark stone grey")
p297.Material = Enum.Material.Slate
p297.CFrame = CFrame.new(-150.5, 125.589966, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p297.Size = Vector3.new(7, 1.20000005, 2)
p297.BottomSurface = Enum.SurfaceType.Smooth
p297.RightSurface = Enum.SurfaceType.Weld
p297.TopSurface = Enum.SurfaceType.Smooth
p298 = Instance.new("Part", m26)
p298.BrickColor = BrickColor.new("Dark stone grey")
p298.Material = Enum.Material.Slate
p298.CFrame = CFrame.new(-148.5, 126.789963, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p298.Size = Vector3.new(7, 1.20000005, 2)
p298.BottomSurface = Enum.SurfaceType.Smooth
p298.RightSurface = Enum.SurfaceType.Weld
p298.TopSurface = Enum.SurfaceType.Smooth
p299 = Instance.new("Part", m26)
p299.BrickColor = BrickColor.new("Dark stone grey")
p299.Material = Enum.Material.Slate
p299.CFrame = CFrame.new(-146.5, 127.989967, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p299.Size = Vector3.new(7, 1.20000005, 2)
p299.BottomSurface = Enum.SurfaceType.Smooth
p299.RightSurface = Enum.SurfaceType.Weld
p299.TopSurface = Enum.SurfaceType.Smooth
p300 = Instance.new("Part", m26)
p300.BrickColor = BrickColor.new("Dark stone grey")
p300.Material = Enum.Material.Slate
p300.CFrame = CFrame.new(-144.5, 129.189972, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p300.Size = Vector3.new(7, 1.20000005, 2)
p300.BottomSurface = Enum.SurfaceType.Smooth
p300.RightSurface = Enum.SurfaceType.Weld
p300.TopSurface = Enum.SurfaceType.Smooth
p301 = Instance.new("Part", m26)
p301.BrickColor = BrickColor.new("Dark stone grey")
p301.Material = Enum.Material.Slate
p301.CFrame = CFrame.new(-142.5, 130.389969, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p301.Size = Vector3.new(7, 1.20000005, 2)
p301.BottomSurface = Enum.SurfaceType.Smooth
p301.RightSurface = Enum.SurfaceType.Weld
p301.TopSurface = Enum.SurfaceType.Smooth
p302 = Instance.new("Part", m26)
p302.BrickColor = BrickColor.new("Dark stone grey")
p302.Material = Enum.Material.Slate
p302.CFrame = CFrame.new(-140.5, 131.589966, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p302.Size = Vector3.new(7, 1.20000005, 2)
p302.BottomSurface = Enum.SurfaceType.Smooth
p302.RightSurface = Enum.SurfaceType.Weld
p302.TopSurface = Enum.SurfaceType.Smooth
p303 = Instance.new("Part", m26)
p303.BrickColor = BrickColor.new("Dark stone grey")
p303.Material = Enum.Material.Slate
p303.CFrame = CFrame.new(-138.5, 132.789963, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p303.Size = Vector3.new(7, 1.20000005, 2)
p303.BottomSurface = Enum.SurfaceType.Smooth
p303.RightSurface = Enum.SurfaceType.Weld
p303.TopSurface = Enum.SurfaceType.Smooth
p304 = Instance.new("Part", m26)
p304.BrickColor = BrickColor.new("Dark stone grey")
p304.Material = Enum.Material.Slate
p304.CFrame = CFrame.new(-136.5, 133.98996, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p304.Size = Vector3.new(7, 1.20000005, 2)
p304.BottomSurface = Enum.SurfaceType.Smooth
p304.RightSurface = Enum.SurfaceType.Weld
p304.TopSurface = Enum.SurfaceType.Smooth
p305 = Instance.new("Part", m26)
p305.BrickColor = BrickColor.new("Dark stone grey")
p305.Material = Enum.Material.Slate
p305.CFrame = CFrame.new(-134.5, 135.189972, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p305.Size = Vector3.new(7, 1.20000005, 2)
p305.BottomSurface = Enum.SurfaceType.Smooth
p305.RightSurface = Enum.SurfaceType.Weld
p305.TopSurface = Enum.SurfaceType.Smooth
p306 = Instance.new("Part", m26)
p306.BrickColor = BrickColor.new("Dark stone grey")
p306.Material = Enum.Material.Slate
p306.CFrame = CFrame.new(-130.5, 137.589966, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p306.Size = Vector3.new(7, 1.20000005, 2)
p306.BottomSurface = Enum.SurfaceType.Smooth
p306.RightSurface = Enum.SurfaceType.Weld
p306.TopSurface = Enum.SurfaceType.Smooth
p307 = Instance.new("Part", m26)
p307.BrickColor = BrickColor.new("Dark stone grey")
p307.Material = Enum.Material.Slate
p307.CFrame = CFrame.new(-122, 141.189972, 85.0000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p307.Size = Vector3.new(7, 1.20000005, 7)
p307.BackSurface = Enum.SurfaceType.Weld
p307.BottomSurface = Enum.SurfaceType.Smooth
p307.RightSurface = Enum.SurfaceType.Weld
p307.TopSurface = Enum.SurfaceType.Smooth
p308 = Instance.new("Part", m26)
p308.BrickColor = BrickColor.new("Dark stone grey")
p308.Material = Enum.Material.Slate
p308.CFrame = CFrame.new(-128.5, 138.789963, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p308.Size = Vector3.new(7, 1.20000005, 2)
p308.BottomSurface = Enum.SurfaceType.Smooth
p308.RightSurface = Enum.SurfaceType.Weld
p308.TopSurface = Enum.SurfaceType.Smooth
p309 = Instance.new("Part", m26)
p309.BrickColor = BrickColor.new("Dark stone grey")
p309.Material = Enum.Material.Slate
p309.CFrame = CFrame.new(-126.5, 139.98996, 85.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p309.Size = Vector3.new(7, 1.20000005, 2)
p309.BottomSurface = Enum.SurfaceType.Smooth
p309.RightSurface = Enum.SurfaceType.Weld
p309.TopSurface = Enum.SurfaceType.Smooth
p310 = Instance.new("Part", m27)
p310.BrickColor = BrickColor.new("Dark stone grey")
p310.Material = Enum.Material.Slate
p310.CFrame = CFrame.new(-161, 101.989952, 119.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p310.Size = Vector3.new(7, 1.20000005, 2)
p310.BottomSurface = Enum.SurfaceType.Smooth
p310.RightSurface = Enum.SurfaceType.Weld
p310.TopSurface = Enum.SurfaceType.Smooth
p311 = Instance.new("Part", m27)
p311.BrickColor = BrickColor.new("Dark stone grey")
p311.Material = Enum.Material.Slate
p311.CFrame = CFrame.new(-161, 116.189949, 95.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p311.Size = Vector3.new(7, 1.20000005, 2)
p311.BottomSurface = Enum.SurfaceType.Smooth
p311.RightSurface = Enum.SurfaceType.Weld
p311.TopSurface = Enum.SurfaceType.Smooth
p312 = Instance.new("Part", m27)
p312.BrickColor = BrickColor.new("Dark stone grey")
p312.Material = Enum.Material.Slate
p312.CFrame = CFrame.new(-161, 102.989952, 117.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p312.Size = Vector3.new(7, 1.20000005, 2)
p312.BottomSurface = Enum.SurfaceType.Smooth
p312.RightSurface = Enum.SurfaceType.Weld
p312.TopSurface = Enum.SurfaceType.Smooth
p313 = Instance.new("Part", m27)
p313.BrickColor = BrickColor.new("Dark stone grey")
p313.Material = Enum.Material.Slate
p313.CFrame = CFrame.new(-161, 104.189949, 115.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p313.Size = Vector3.new(7, 1.20000005, 2)
p313.BottomSurface = Enum.SurfaceType.Smooth
p313.RightSurface = Enum.SurfaceType.Weld
p313.TopSurface = Enum.SurfaceType.Smooth
p314 = Instance.new("Part", m27)
p314.BrickColor = BrickColor.new("Dark stone grey")
p314.Material = Enum.Material.Slate
p314.CFrame = CFrame.new(-161, 105.389954, 113.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p314.Size = Vector3.new(7, 1.20000005, 2)
p314.BottomSurface = Enum.SurfaceType.Smooth
p314.RightSurface = Enum.SurfaceType.Weld
p314.TopSurface = Enum.SurfaceType.Smooth
p315 = Instance.new("Part", m27)
p315.BrickColor = BrickColor.new("Dark stone grey")
p315.Material = Enum.Material.Slate
p315.CFrame = CFrame.new(-161, 106.589951, 111.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p315.Size = Vector3.new(7, 1.20000005, 2)
p315.BottomSurface = Enum.SurfaceType.Smooth
p315.RightSurface = Enum.SurfaceType.Weld
p315.TopSurface = Enum.SurfaceType.Smooth
p316 = Instance.new("Part", m27)
p316.BrickColor = BrickColor.new("Dark stone grey")
p316.Material = Enum.Material.Slate
p316.CFrame = CFrame.new(-161, 107.789955, 109.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p316.Size = Vector3.new(7, 1.20000005, 2)
p316.BottomSurface = Enum.SurfaceType.Smooth
p316.RightSurface = Enum.SurfaceType.Weld
p316.TopSurface = Enum.SurfaceType.Smooth
p317 = Instance.new("Part", m27)
p317.BrickColor = BrickColor.new("Dark stone grey")
p317.Material = Enum.Material.Slate
p317.CFrame = CFrame.new(-161, 108.989952, 107.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p317.Size = Vector3.new(7, 1.20000005, 2)
p317.BottomSurface = Enum.SurfaceType.Smooth
p317.RightSurface = Enum.SurfaceType.Weld
p317.TopSurface = Enum.SurfaceType.Smooth
p318 = Instance.new("Part", m27)
p318.BrickColor = BrickColor.new("Dark stone grey")
p318.Material = Enum.Material.Slate
p318.CFrame = CFrame.new(-161, 110.189949, 105.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p318.Size = Vector3.new(7, 1.20000005, 2)
p318.BottomSurface = Enum.SurfaceType.Smooth
p318.RightSurface = Enum.SurfaceType.Weld
p318.TopSurface = Enum.SurfaceType.Smooth
p319 = Instance.new("Part", m27)
p319.BrickColor = BrickColor.new("Dark stone grey")
p319.Material = Enum.Material.Slate
p319.CFrame = CFrame.new(-161, 111.389954, 103.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p319.Size = Vector3.new(7, 1.20000005, 2)
p319.BottomSurface = Enum.SurfaceType.Smooth
p319.RightSurface = Enum.SurfaceType.Weld
p319.TopSurface = Enum.SurfaceType.Smooth
p320 = Instance.new("Part", m27)
p320.BrickColor = BrickColor.new("Dark stone grey")
p320.Material = Enum.Material.Slate
p320.CFrame = CFrame.new(-161, 112.589951, 101.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p320.Size = Vector3.new(7, 1.20000005, 2)
p320.BottomSurface = Enum.SurfaceType.Smooth
p320.RightSurface = Enum.SurfaceType.Weld
p320.TopSurface = Enum.SurfaceType.Smooth
p321 = Instance.new("Part", m27)
p321.BrickColor = BrickColor.new("Dark stone grey")
p321.Material = Enum.Material.Slate
p321.CFrame = CFrame.new(-161, 113.789955, 99.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p321.Size = Vector3.new(7, 1.20000005, 2)
p321.BottomSurface = Enum.SurfaceType.Smooth
p321.RightSurface = Enum.SurfaceType.Weld
p321.TopSurface = Enum.SurfaceType.Smooth
p322 = Instance.new("Part", m27)
p322.BrickColor = BrickColor.new("Dark stone grey")
p322.Material = Enum.Material.Slate
p322.CFrame = CFrame.new(-161, 114.989952, 97.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p322.Size = Vector3.new(7, 1.20000005, 2)
p322.BottomSurface = Enum.SurfaceType.Smooth
p322.RightSurface = Enum.SurfaceType.Weld
p322.TopSurface = Enum.SurfaceType.Smooth
p323 = Instance.new("Part", m27)
p323.BrickColor = BrickColor.new("Dark stone grey")
p323.Material = Enum.Material.Slate
p323.CFrame = CFrame.new(-161, 117.389954, 93.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p323.Size = Vector3.new(7, 1.20000005, 2)
p323.BottomSurface = Enum.SurfaceType.Smooth
p323.RightSurface = Enum.SurfaceType.Weld
p323.TopSurface = Enum.SurfaceType.Smooth
p324 = Instance.new("Part", m27)
p324.BrickColor = BrickColor.new("Dark stone grey")
p324.Material = Enum.Material.Slate
p324.CFrame = CFrame.new(-161, 120.989967, 85.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p324.Size = Vector3.new(7, 1.20000005, 7)
p324.BackSurface = Enum.SurfaceType.Weld
p324.BottomSurface = Enum.SurfaceType.Smooth
p324.RightSurface = Enum.SurfaceType.Weld
p324.TopSurface = Enum.SurfaceType.Smooth
p325 = Instance.new("Part", m27)
p325.BrickColor = BrickColor.new("Dark stone grey")
p325.Material = Enum.Material.Slate
p325.CFrame = CFrame.new(-161, 118.589951, 91.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p325.Size = Vector3.new(7, 1.20000005, 2)
p325.BottomSurface = Enum.SurfaceType.Smooth
p325.RightSurface = Enum.SurfaceType.Weld
p325.TopSurface = Enum.SurfaceType.Smooth
p326 = Instance.new("Part", m27)
p326.BrickColor = BrickColor.new("Dark stone grey")
p326.Material = Enum.Material.Slate
p326.CFrame = CFrame.new(-161, 119.789948, 89.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p326.Size = Vector3.new(7, 1.20000005, 2)
p326.BottomSurface = Enum.SurfaceType.Smooth
p326.RightSurface = Enum.SurfaceType.Weld
p326.TopSurface = Enum.SurfaceType.Smooth
p327 = Instance.new("Part", m28)
p327.BrickColor = BrickColor.new("Dark stone grey")
p327.Material = Enum.Material.Slate
p327.CFrame = CFrame.new(-126.5, 81.7899551, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p327.Size = Vector3.new(7, 1.20000005, 2)
p327.BottomSurface = Enum.SurfaceType.Smooth
p327.RightSurface = Enum.SurfaceType.Weld
p327.TopSurface = Enum.SurfaceType.Smooth
p328 = Instance.new("Part", m28)
p328.BrickColor = BrickColor.new("Dark stone grey")
p328.Material = Enum.Material.Slate
p328.CFrame = CFrame.new(-150.5, 95.9899521, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p328.Size = Vector3.new(7, 1.20000005, 2)
p328.BottomSurface = Enum.SurfaceType.Smooth
p328.RightSurface = Enum.SurfaceType.Weld
p328.TopSurface = Enum.SurfaceType.Smooth
p329 = Instance.new("Part", m28)
p329.BrickColor = BrickColor.new("Dark stone grey")
p329.Material = Enum.Material.Slate
p329.CFrame = CFrame.new(-128.5, 82.7899551, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p329.Size = Vector3.new(7, 1.20000005, 2)
p329.BottomSurface = Enum.SurfaceType.Smooth
p329.RightSurface = Enum.SurfaceType.Weld
p329.TopSurface = Enum.SurfaceType.Smooth
p330 = Instance.new("Part", m28)
p330.BrickColor = BrickColor.new("Dark stone grey")
p330.Material = Enum.Material.Slate
p330.CFrame = CFrame.new(-130.5, 83.9899521, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p330.Size = Vector3.new(7, 1.20000005, 2)
p330.BottomSurface = Enum.SurfaceType.Smooth
p330.RightSurface = Enum.SurfaceType.Weld
p330.TopSurface = Enum.SurfaceType.Smooth
p331 = Instance.new("Part", m28)
p331.BrickColor = BrickColor.new("Dark stone grey")
p331.Material = Enum.Material.Slate
p331.CFrame = CFrame.new(-132.5, 85.1899567, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p331.Size = Vector3.new(7, 1.20000005, 2)
p331.BottomSurface = Enum.SurfaceType.Smooth
p331.RightSurface = Enum.SurfaceType.Weld
p331.TopSurface = Enum.SurfaceType.Smooth
p332 = Instance.new("Part", m28)
p332.BrickColor = BrickColor.new("Dark stone grey")
p332.Material = Enum.Material.Slate
p332.CFrame = CFrame.new(-134.5, 86.3899536, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p332.Size = Vector3.new(7, 1.20000005, 2)
p332.BottomSurface = Enum.SurfaceType.Smooth
p332.RightSurface = Enum.SurfaceType.Weld
p332.TopSurface = Enum.SurfaceType.Smooth
p333 = Instance.new("Part", m28)
p333.BrickColor = BrickColor.new("Dark stone grey")
p333.Material = Enum.Material.Slate
p333.CFrame = CFrame.new(-136.5, 87.5899506, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p333.Size = Vector3.new(7, 1.20000005, 2)
p333.BottomSurface = Enum.SurfaceType.Smooth
p333.RightSurface = Enum.SurfaceType.Weld
p333.TopSurface = Enum.SurfaceType.Smooth
p334 = Instance.new("Part", m28)
p334.BrickColor = BrickColor.new("Dark stone grey")
p334.Material = Enum.Material.Slate
p334.CFrame = CFrame.new(-138.5, 88.7899551, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p334.Size = Vector3.new(7, 1.20000005, 2)
p334.BottomSurface = Enum.SurfaceType.Smooth
p334.RightSurface = Enum.SurfaceType.Weld
p334.TopSurface = Enum.SurfaceType.Smooth
p335 = Instance.new("Part", m28)
p335.BrickColor = BrickColor.new("Dark stone grey")
p335.Material = Enum.Material.Slate
p335.CFrame = CFrame.new(-140.5, 89.9899521, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p335.Size = Vector3.new(7, 1.20000005, 2)
p335.BottomSurface = Enum.SurfaceType.Smooth
p335.RightSurface = Enum.SurfaceType.Weld
p335.TopSurface = Enum.SurfaceType.Smooth
p336 = Instance.new("Part", m28)
p336.BrickColor = BrickColor.new("Dark stone grey")
p336.Material = Enum.Material.Slate
p336.CFrame = CFrame.new(-142.5, 91.1899567, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p336.Size = Vector3.new(7, 1.20000005, 2)
p336.BottomSurface = Enum.SurfaceType.Smooth
p336.RightSurface = Enum.SurfaceType.Weld
p336.TopSurface = Enum.SurfaceType.Smooth
p337 = Instance.new("Part", m28)
p337.BrickColor = BrickColor.new("Dark stone grey")
p337.Material = Enum.Material.Slate
p337.CFrame = CFrame.new(-144.5, 92.3899536, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p337.Size = Vector3.new(7, 1.20000005, 2)
p337.BottomSurface = Enum.SurfaceType.Smooth
p337.RightSurface = Enum.SurfaceType.Weld
p337.TopSurface = Enum.SurfaceType.Smooth
p338 = Instance.new("Part", m28)
p338.BrickColor = BrickColor.new("Dark stone grey")
p338.Material = Enum.Material.Slate
p338.CFrame = CFrame.new(-146.5, 93.5899506, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p338.Size = Vector3.new(7, 1.20000005, 2)
p338.BottomSurface = Enum.SurfaceType.Smooth
p338.RightSurface = Enum.SurfaceType.Weld
p338.TopSurface = Enum.SurfaceType.Smooth
p339 = Instance.new("Part", m28)
p339.BrickColor = BrickColor.new("Dark stone grey")
p339.Material = Enum.Material.Slate
p339.CFrame = CFrame.new(-148.5, 94.7899551, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p339.Size = Vector3.new(7, 1.20000005, 2)
p339.BottomSurface = Enum.SurfaceType.Smooth
p339.RightSurface = Enum.SurfaceType.Weld
p339.TopSurface = Enum.SurfaceType.Smooth
p340 = Instance.new("Part", m28)
p340.BrickColor = BrickColor.new("Dark stone grey")
p340.Material = Enum.Material.Slate
p340.CFrame = CFrame.new(-152.5, 97.1899567, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p340.Size = Vector3.new(7, 1.20000005, 2)
p340.BottomSurface = Enum.SurfaceType.Smooth
p340.RightSurface = Enum.SurfaceType.Weld
p340.TopSurface = Enum.SurfaceType.Smooth
p341 = Instance.new("Part", m28)
p341.BrickColor = BrickColor.new("Dark stone grey")
p341.Material = Enum.Material.Slate
p341.CFrame = CFrame.new(-161, 100.789955, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p341.Size = Vector3.new(7, 1.20000005, 7)
p341.BackSurface = Enum.SurfaceType.Weld
p341.BottomSurface = Enum.SurfaceType.Smooth
p341.RightSurface = Enum.SurfaceType.Weld
p341.TopSurface = Enum.SurfaceType.Smooth
p342 = Instance.new("Part", m28)
p342.BrickColor = BrickColor.new("Dark stone grey")
p342.Material = Enum.Material.Slate
p342.CFrame = CFrame.new(-154.5, 98.3899536, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p342.Size = Vector3.new(7, 1.20000005, 2)
p342.BottomSurface = Enum.SurfaceType.Smooth
p342.RightSurface = Enum.SurfaceType.Weld
p342.TopSurface = Enum.SurfaceType.Smooth
p343 = Instance.new("Part", m28)
p343.BrickColor = BrickColor.new("Dark stone grey")
p343.Material = Enum.Material.Slate
p343.CFrame = CFrame.new(-156.5, 99.5899506, 124.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p343.Size = Vector3.new(7, 1.20000005, 2)
p343.BottomSurface = Enum.SurfaceType.Smooth
p343.RightSurface = Enum.SurfaceType.Weld
p343.TopSurface = Enum.SurfaceType.Smooth
p344 = Instance.new("Part", m29)
p344.BrickColor = BrickColor.new("Dark stone grey")
p344.Material = Enum.Material.Slate
p344.CFrame = CFrame.new(-122, 142.389969, 89.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p344.Size = Vector3.new(7, 1.20000005, 2)
p344.BottomSurface = Enum.SurfaceType.Smooth
p344.RightSurface = Enum.SurfaceType.Weld
p344.TopSurface = Enum.SurfaceType.Smooth
p345 = Instance.new("Part", m29)
p345.BrickColor = BrickColor.new("Dark stone grey")
p345.Material = Enum.Material.Slate
p345.CFrame = CFrame.new(-122, 143.389969, 91.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p345.Size = Vector3.new(7, 1.20000005, 2)
p345.BottomSurface = Enum.SurfaceType.Smooth
p345.RightSurface = Enum.SurfaceType.Weld
p345.TopSurface = Enum.SurfaceType.Smooth
p346 = Instance.new("Part", m29)
p346.BrickColor = BrickColor.new("Dark stone grey")
p346.Material = Enum.Material.Slate
p346.CFrame = CFrame.new(-122, 144.589966, 93.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p346.Size = Vector3.new(7, 1.20000005, 2)
p346.BottomSurface = Enum.SurfaceType.Smooth
p346.RightSurface = Enum.SurfaceType.Weld
p346.TopSurface = Enum.SurfaceType.Smooth
p347 = Instance.new("Part", m29)
p347.BrickColor = BrickColor.new("Dark stone grey")
p347.Material = Enum.Material.Slate
p347.CFrame = CFrame.new(-122, 145.789963, 95.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p347.Size = Vector3.new(7, 1.20000005, 2)
p347.BottomSurface = Enum.SurfaceType.Smooth
p347.RightSurface = Enum.SurfaceType.Weld
p347.TopSurface = Enum.SurfaceType.Smooth
p348 = Instance.new("Part", m29)
p348.BrickColor = BrickColor.new("Dark stone grey")
p348.Material = Enum.Material.Slate
p348.CFrame = CFrame.new(-122, 146.98996, 97.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p348.Size = Vector3.new(7, 1.20000005, 2)
p348.BottomSurface = Enum.SurfaceType.Smooth
p348.RightSurface = Enum.SurfaceType.Weld
p348.TopSurface = Enum.SurfaceType.Smooth
p349 = Instance.new("Part", m29)
p349.BrickColor = BrickColor.new("Dark stone grey")
p349.Material = Enum.Material.Slate
p349.CFrame = CFrame.new(-122, 148.189972, 99.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p349.Size = Vector3.new(7, 1.20000005, 2)
p349.BottomSurface = Enum.SurfaceType.Smooth
p349.RightSurface = Enum.SurfaceType.Weld
p349.TopSurface = Enum.SurfaceType.Smooth
p350 = Instance.new("Part", m29)
p350.BrickColor = BrickColor.new("Dark stone grey")
p350.Material = Enum.Material.Slate
p350.CFrame = CFrame.new(-122, 149.389969, 101.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p350.Size = Vector3.new(7, 1.20000005, 2)
p350.BottomSurface = Enum.SurfaceType.Smooth
p350.RightSurface = Enum.SurfaceType.Weld
p350.TopSurface = Enum.SurfaceType.Smooth
p351 = Instance.new("Part", m29)
p351.BrickColor = BrickColor.new("Dark stone grey")
p351.Material = Enum.Material.Slate
p351.CFrame = CFrame.new(-122, 150.589966, 103.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p351.Size = Vector3.new(7, 1.20000005, 2)
p351.BottomSurface = Enum.SurfaceType.Smooth
p351.RightSurface = Enum.SurfaceType.Weld
p351.TopSurface = Enum.SurfaceType.Smooth
p352 = Instance.new("Part", m29)
p352.BrickColor = BrickColor.new("Dark stone grey")
p352.Material = Enum.Material.Slate
p352.CFrame = CFrame.new(-122, 151.789963, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p352.Size = Vector3.new(7, 1.20000005, 2)
p352.BottomSurface = Enum.SurfaceType.Smooth
p352.RightSurface = Enum.SurfaceType.Weld
p352.TopSurface = Enum.SurfaceType.Smooth
p353 = Instance.new("Part", m29)
p353.BrickColor = BrickColor.new("Dark stone grey")
p353.Material = Enum.Material.Slate
p353.CFrame = CFrame.new(-122, 152.98996, 107.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p353.Size = Vector3.new(7, 1.20000005, 2)
p353.BottomSurface = Enum.SurfaceType.Smooth
p353.RightSurface = Enum.SurfaceType.Weld
p353.TopSurface = Enum.SurfaceType.Smooth
p354 = Instance.new("Part", m29)
p354.BrickColor = BrickColor.new("Dark stone grey")
p354.Material = Enum.Material.Slate
p354.CFrame = CFrame.new(-141.5, 154.189972, 118.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p354.Size = Vector3.new(46, 1.20000005, 19)
p354.BottomSurface = Enum.SurfaceType.Smooth
p354.RightSurface = Enum.SurfaceType.Weld
p354.TopSurface = Enum.SurfaceType.Smooth
p355 = Instance.new("Part", m31)
p355.BrickColor = BrickColor.new("Br. yellowish orange")
p355.Material = Enum.Material.Concrete
p355.CFrame = CFrame.new(-118.5, 135.589966, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p355.Size = Vector3.new(4, 38.3999977, 2)
p355.BottomSurface = Enum.SurfaceType.Weld
p355.TopSurface = Enum.SurfaceType.Weld
p356 = Instance.new("Part", m31)
p356.BrickColor = BrickColor.new("Br. yellowish orange")
p356.Material = Enum.Material.Concrete
p356.CFrame = CFrame.new(-164.5, 135.589966, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p356.Size = Vector3.new(4, 38.3999977, 2)
p356.BottomSurface = Enum.SurfaceType.Weld
p356.TopSurface = Enum.SurfaceType.Weld
p357 = Instance.new("Part", m31)
p357.BrickColor = BrickColor.new("Br. yellowish orange")
p357.Material = Enum.Material.Concrete
p357.CFrame = CFrame.new(-161.5, 135.589966, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p357.Size = Vector3.new(2, 38.3999977, 3)
p357.BottomSurface = Enum.SurfaceType.Smooth
p357.TopSurface = Enum.SurfaceType.Smooth
p358 = Instance.new("Part", m31)
p358.BrickColor = BrickColor.new("Br. yellowish orange")
p358.Material = Enum.Material.Concrete
p358.CFrame = CFrame.new(-121.5, 135.589966, 80.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p358.Size = Vector3.new(2, 38.3999977, 3)
p358.BottomSurface = Enum.SurfaceType.Smooth
p358.TopSurface = Enum.SurfaceType.Smooth
p359 = Instance.new("Part", m31)
p359.BrickColor = BrickColor.new("Br. yellowish orange")
p359.Material = Enum.Material.Concrete
p359.CFrame = CFrame.new(-158.5, 135.589966, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p359.Size = Vector3.new(4, 38.3999977, 2)
p359.BottomSurface = Enum.SurfaceType.Weld
p359.TopSurface = Enum.SurfaceType.Weld
p360 = Instance.new("Part", m31)
p360.BrickColor = BrickColor.new("Br. yellowish orange")
p360.Material = Enum.Material.Concrete
p360.CFrame = CFrame.new(-124.5, 135.589966, 80.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p360.Size = Vector3.new(4, 38.3999977, 2)
p360.BottomSurface = Enum.SurfaceType.Weld
p360.TopSurface = Enum.SurfaceType.Weld
p361 = Instance.new("Part", m31)
p361.BrickColor = BrickColor.new("Br. yellowish orange")
p361.Material = Enum.Material.Concrete
p361.CFrame = CFrame.new(-141.5, 135.589966, 81.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p361.Size = Vector3.new(30, 38.3999977, 1)
p361.BottomSurface = Enum.SurfaceType.Weld
p361.TopSurface = Enum.SurfaceType.Weld
p362 = Instance.new("Part", m31)
p362.BrickColor = BrickColor.new("Br. yellowish orange")
p362.Material = Enum.Material.Concrete
p362.CFrame = CFrame.new(-144.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p362.Size = Vector3.new(2, 38.3999977, 1)
p362.BottomSurface = Enum.SurfaceType.Weld
p362.TopSurface = Enum.SurfaceType.Weld
p363 = Instance.new("Part", m31)
p363.BrickColor = BrickColor.new("Br. yellowish orange")
p363.Material = Enum.Material.Concrete
p363.CFrame = CFrame.new(-152.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p363.FormFactor = Enum.FormFactor.Custom
p363.Size = Vector3.new(2, 38.4000015, 1)
p363.BottomSurface = Enum.SurfaceType.Weld
p363.TopSurface = Enum.SurfaceType.Weld
p364 = Instance.new("Part", m31)
p364.BrickColor = BrickColor.new("Br. yellowish orange")
p364.Material = Enum.Material.Concrete
p364.CFrame = CFrame.new(-148.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p364.Size = Vector3.new(2, 38.4000053, 1)
p364.BottomSurface = Enum.SurfaceType.Weld
p364.TopSurface = Enum.SurfaceType.Weld
p365 = Instance.new("Part", m31)
p365.BrickColor = BrickColor.new("Br. yellowish orange")
p365.Material = Enum.Material.Concrete
p365.CFrame = CFrame.new(-138.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p365.FormFactor = Enum.FormFactor.Custom
p365.Size = Vector3.new(2, 38.4000015, 1)
p365.BottomSurface = Enum.SurfaceType.Weld
p365.TopSurface = Enum.SurfaceType.Weld
p366 = Instance.new("Part", m31)
p366.BrickColor = BrickColor.new("Br. yellowish orange")
p366.Material = Enum.Material.Concrete
p366.CFrame = CFrame.new(-134.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p366.Size = Vector3.new(2, 38.4000053, 1)
p366.BottomSurface = Enum.SurfaceType.Weld
p366.TopSurface = Enum.SurfaceType.Weld
p367 = Instance.new("Part", m31)
p367.BrickColor = BrickColor.new("Br. yellowish orange")
p367.Material = Enum.Material.Concrete
p367.CFrame = CFrame.new(-130.5, 135.589966, 80.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p367.Size = Vector3.new(2, 38.3999977, 1)
p367.BottomSurface = Enum.SurfaceType.Weld
p367.TopSurface = Enum.SurfaceType.Weld
p368 = Instance.new("Part", m32)
p368.BrickColor = BrickColor.new("Br. yellowish orange")
p368.Material = Enum.Material.Concrete
p368.CFrame = CFrame.new(-117, 135.589966, 124.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p368.Size = Vector3.new(2, 38.4000092, 3)
p368.BottomSurface = Enum.SurfaceType.Smooth
p368.TopSurface = Enum.SurfaceType.Smooth
p369 = Instance.new("Part", m32)
p369.BrickColor = BrickColor.new("Br. yellowish orange")
p369.Material = Enum.Material.Concrete
p369.CFrame = CFrame.new(-117.5, 135.589966, 126.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p369.Size = Vector3.new(2, 38.4000092, 2)
p369.BottomSurface = Enum.SurfaceType.Weld
p369.TopSurface = Enum.SurfaceType.Weld
p370 = Instance.new("Part", m32)
p370.BrickColor = BrickColor.new("Br. yellowish orange")
p370.Material = Enum.Material.Concrete
p370.CFrame = CFrame.new(-117.5, 135.589966, 121.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p370.Size = Vector3.new(4, 38.400013, 2)
p370.BottomSurface = Enum.SurfaceType.Weld
p370.TopSurface = Enum.SurfaceType.Weld
p371 = Instance.new("Part", m32)
p371.BrickColor = BrickColor.new("Br. yellowish orange")
p371.Material = Enum.Material.Concrete
p371.CFrame = CFrame.new(-117, 135.589966, 115.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p371.Size = Vector3.new(2, 38.3999977, 1)
p371.BottomSurface = Enum.SurfaceType.Weld
p371.TopSurface = Enum.SurfaceType.Weld
p372 = Instance.new("Part", m32)
p372.BrickColor = BrickColor.new("Br. yellowish orange")
p372.Material = Enum.Material.Concrete
p372.CFrame = CFrame.new(-117, 135.589966, 111.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p372.Size = Vector3.new(2, 38.4000053, 1)
p372.BottomSurface = Enum.SurfaceType.Weld
p372.TopSurface = Enum.SurfaceType.Weld
p373 = Instance.new("Part", m32)
p373.BrickColor = BrickColor.new("Br. yellowish orange")
p373.Material = Enum.Material.Concrete
p373.CFrame = CFrame.new(-117, 135.589966, 107.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p373.Size = Vector3.new(2, 38.3999977, 1)
p373.BottomSurface = Enum.SurfaceType.Weld
p373.TopSurface = Enum.SurfaceType.Weld
p374 = Instance.new("Part", m32)
p374.BrickColor = BrickColor.new("Br. yellowish orange")
p374.Material = Enum.Material.Concrete
p374.CFrame = CFrame.new(-118, 135.589966, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p374.Size = Vector3.new(30, 38.3999977, 1)
p374.BottomSurface = Enum.SurfaceType.Weld
p374.TopSurface = Enum.SurfaceType.Weld
p375 = Instance.new("Part", m32)
p375.BrickColor = BrickColor.new("Br. yellowish orange")
p375.Material = Enum.Material.Concrete
p375.CFrame = CFrame.new(-117, 135.589966, 97.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p375.Size = Vector3.new(2, 38.4000053, 1)
p375.BottomSurface = Enum.SurfaceType.Weld
p375.TopSurface = Enum.SurfaceType.Weld
p376 = Instance.new("Part", m32)
p376.BrickColor = BrickColor.new("Br. yellowish orange")
p376.Material = Enum.Material.Concrete
p376.CFrame = CFrame.new(-117, 135.589966, 101.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p376.Size = Vector3.new(2, 38.4000015, 1)
p376.BottomSurface = Enum.SurfaceType.Weld
p376.TopSurface = Enum.SurfaceType.Weld
p377 = Instance.new("Part", m32)
p377.BrickColor = BrickColor.new("Br. yellowish orange")
p377.Material = Enum.Material.Concrete
p377.CFrame = CFrame.new(-117, 135.589966, 93.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p377.FormFactor = Enum.FormFactor.Custom
p377.Size = Vector3.new(2, 38.4000015, 1)
p377.BottomSurface = Enum.SurfaceType.Weld
p377.TopSurface = Enum.SurfaceType.Weld
p378 = Instance.new("Part", m32)
p378.BrickColor = BrickColor.new("Br. yellowish orange")
p378.Material = Enum.Material.Concrete
p378.CFrame = CFrame.new(-117.5, 135.589966, 82.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p378.Size = Vector3.new(2, 38.3999977, 2)
p378.BottomSurface = Enum.SurfaceType.Weld
p378.TopSurface = Enum.SurfaceType.Weld
p379 = Instance.new("Part", m32)
p379.BrickColor = BrickColor.new("Br. yellowish orange")
p379.Material = Enum.Material.Concrete
p379.CFrame = CFrame.new(-117, 135.589966, 84.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p379.Size = Vector3.new(2, 38.3999977, 3)
p379.BottomSurface = Enum.SurfaceType.Smooth
p379.TopSurface = Enum.SurfaceType.Smooth
p380 = Instance.new("Part", m32)
p380.BrickColor = BrickColor.new("Br. yellowish orange")
p380.Material = Enum.Material.Concrete
p380.CFrame = CFrame.new(-117.5, 135.589966, 87.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p380.Size = Vector3.new(4, 38.4000092, 2)
p380.BottomSurface = Enum.SurfaceType.Weld
p380.TopSurface = Enum.SurfaceType.Weld
p381 = Instance.new("Part", m33)
p381.BrickColor = BrickColor.new("Br. yellowish orange")
p381.Material = Enum.Material.Concrete
p381.CFrame = CFrame.new(-166, 135.589966, 84.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p381.Size = Vector3.new(2, 38.4000092, 3)
p381.BottomSurface = Enum.SurfaceType.Smooth
p381.TopSurface = Enum.SurfaceType.Smooth
p382 = Instance.new("Part", m33)
p382.BrickColor = BrickColor.new("Br. yellowish orange")
p382.Material = Enum.Material.Concrete
p382.CFrame = CFrame.new(-165.5, 135.589966, 82.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p382.Size = Vector3.new(2, 38.4000092, 2)
p382.BottomSurface = Enum.SurfaceType.Weld
p382.TopSurface = Enum.SurfaceType.Weld
p383 = Instance.new("Part", m33)
p383.BrickColor = BrickColor.new("Br. yellowish orange")
p383.Material = Enum.Material.Concrete
p383.CFrame = CFrame.new(-165.5, 135.589966, 87.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p383.Size = Vector3.new(4, 38.400013, 2)
p383.BottomSurface = Enum.SurfaceType.Weld
p383.TopSurface = Enum.SurfaceType.Weld
p384 = Instance.new("Part", m33)
p384.BrickColor = BrickColor.new("Br. yellowish orange")
p384.Material = Enum.Material.Concrete
p384.CFrame = CFrame.new(-166, 135.589966, 93.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p384.Size = Vector3.new(2, 38.3999977, 1)
p384.BottomSurface = Enum.SurfaceType.Weld
p384.TopSurface = Enum.SurfaceType.Weld
p385 = Instance.new("Part", m33)
p385.BrickColor = BrickColor.new("Br. yellowish orange")
p385.Material = Enum.Material.Concrete
p385.CFrame = CFrame.new(-166, 135.589966, 97.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p385.Size = Vector3.new(2, 38.4000053, 1)
p385.BottomSurface = Enum.SurfaceType.Weld
p385.TopSurface = Enum.SurfaceType.Weld
p386 = Instance.new("Part", m33)
p386.BrickColor = BrickColor.new("Br. yellowish orange")
p386.Material = Enum.Material.Concrete
p386.CFrame = CFrame.new(-166, 135.589966, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p386.Size = Vector3.new(2, 38.3999977, 1)
p386.BottomSurface = Enum.SurfaceType.Weld
p386.TopSurface = Enum.SurfaceType.Weld
p387 = Instance.new("Part", m33)
p387.BrickColor = BrickColor.new("Br. yellowish orange")
p387.Material = Enum.Material.Concrete
p387.CFrame = CFrame.new(-165, 135.589951, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p387.Size = Vector3.new(30, 38.3999977, 1)
p387.BottomSurface = Enum.SurfaceType.Weld
p387.TopSurface = Enum.SurfaceType.Weld
p388 = Instance.new("Part", m33)
p388.BrickColor = BrickColor.new("Br. yellowish orange")
p388.Material = Enum.Material.Concrete
p388.CFrame = CFrame.new(-166, 135.589966, 111.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p388.Size = Vector3.new(2, 38.4000053, 1)
p388.BottomSurface = Enum.SurfaceType.Weld
p388.TopSurface = Enum.SurfaceType.Weld
p389 = Instance.new("Part", m33)
p389.BrickColor = BrickColor.new("Br. yellowish orange")
p389.Material = Enum.Material.Concrete
p389.CFrame = CFrame.new(-166, 135.589966, 107.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p389.Size = Vector3.new(2, 38.4000015, 1)
p389.BottomSurface = Enum.SurfaceType.Weld
p389.TopSurface = Enum.SurfaceType.Weld
p390 = Instance.new("Part", m33)
p390.BrickColor = BrickColor.new("Br. yellowish orange")
p390.Material = Enum.Material.Concrete
p390.CFrame = CFrame.new(-166, 135.589966, 115.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p390.FormFactor = Enum.FormFactor.Custom
p390.Size = Vector3.new(2, 38.4000015, 1)
p390.BottomSurface = Enum.SurfaceType.Weld
p390.TopSurface = Enum.SurfaceType.Weld
p391 = Instance.new("Part", m33)
p391.BrickColor = BrickColor.new("Br. yellowish orange")
p391.Material = Enum.Material.Concrete
p391.CFrame = CFrame.new(-165.5, 135.589966, 126.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p391.Size = Vector3.new(2, 38.3999977, 2)
p391.BottomSurface = Enum.SurfaceType.Weld
p391.TopSurface = Enum.SurfaceType.Weld
p392 = Instance.new("Part", m33)
p392.BrickColor = BrickColor.new("Br. yellowish orange")
p392.Material = Enum.Material.Concrete
p392.CFrame = CFrame.new(-166, 135.589951, 124.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p392.Size = Vector3.new(2, 38.3999977, 3)
p392.BottomSurface = Enum.SurfaceType.Smooth
p392.TopSurface = Enum.SurfaceType.Smooth
p393 = Instance.new("Part", m33)
p393.BrickColor = BrickColor.new("Br. yellowish orange")
p393.Material = Enum.Material.Concrete
p393.CFrame = CFrame.new(-165.5, 135.589966, 121.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p393.Size = Vector3.new(4, 38.4000092, 2)
p393.BottomSurface = Enum.SurfaceType.Weld
p393.TopSurface = Enum.SurfaceType.Weld
p394 = Instance.new("Part", m34)
p394.BrickColor = BrickColor.new("Br. yellowish orange")
p394.Material = Enum.Material.Concrete
p394.CFrame = CFrame.new(-164.5, 135.589966, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p394.Size = Vector3.new(4, 38.3999977, 2)
p394.BottomSurface = Enum.SurfaceType.Weld
p394.TopSurface = Enum.SurfaceType.Weld
p395 = Instance.new("Part", m34)
p395.BrickColor = BrickColor.new("Br. yellowish orange")
p395.Material = Enum.Material.Concrete
p395.CFrame = CFrame.new(-118.5, 135.589966, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p395.Size = Vector3.new(4, 38.3999977, 2)
p395.BottomSurface = Enum.SurfaceType.Weld
p395.TopSurface = Enum.SurfaceType.Weld
p396 = Instance.new("Part", m34)
p396.BrickColor = BrickColor.new("Br. yellowish orange")
p396.Material = Enum.Material.Concrete
p396.CFrame = CFrame.new(-121.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p396.Size = Vector3.new(2, 38.3999977, 3)
p396.BottomSurface = Enum.SurfaceType.Smooth
p396.TopSurface = Enum.SurfaceType.Smooth
p397 = Instance.new("Part", m34)
p397.BrickColor = BrickColor.new("Br. yellowish orange")
p397.Material = Enum.Material.Concrete
p397.CFrame = CFrame.new(-161.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p397.Size = Vector3.new(2, 38.3999977, 3)
p397.BottomSurface = Enum.SurfaceType.Smooth
p397.TopSurface = Enum.SurfaceType.Smooth
p398 = Instance.new("Part", m34)
p398.BrickColor = BrickColor.new("Br. yellowish orange")
p398.Material = Enum.Material.Concrete
p398.CFrame = CFrame.new(-124.5, 135.589966, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p398.Size = Vector3.new(4, 38.3999977, 2)
p398.BottomSurface = Enum.SurfaceType.Weld
p398.TopSurface = Enum.SurfaceType.Weld
p399 = Instance.new("Part", m34)
p399.BrickColor = BrickColor.new("Br. yellowish orange")
p399.Material = Enum.Material.Concrete
p399.CFrame = CFrame.new(-158.5, 135.589966, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p399.Size = Vector3.new(4, 38.3999977, 2)
p399.BottomSurface = Enum.SurfaceType.Weld
p399.TopSurface = Enum.SurfaceType.Weld
p400 = Instance.new("Part", m34)
p400.BrickColor = BrickColor.new("Br. yellowish orange")
p400.Material = Enum.Material.Concrete
p400.CFrame = CFrame.new(-141.5, 135.589966, 128.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p400.Size = Vector3.new(30, 38.3999977, 1)
p400.BottomSurface = Enum.SurfaceType.Weld
p400.TopSurface = Enum.SurfaceType.Weld
p401 = Instance.new("Part", m34)
p401.BrickColor = BrickColor.new("Br. yellowish orange")
p401.Material = Enum.Material.Concrete
p401.CFrame = CFrame.new(-138.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p401.Size = Vector3.new(2, 38.3999977, 1)
p401.BottomSurface = Enum.SurfaceType.Weld
p401.TopSurface = Enum.SurfaceType.Weld
p402 = Instance.new("Part", m34)
p402.BrickColor = BrickColor.new("Br. yellowish orange")
p402.Material = Enum.Material.Concrete
p402.CFrame = CFrame.new(-130.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p402.FormFactor = Enum.FormFactor.Custom
p402.Size = Vector3.new(2, 38.4000015, 1)
p402.BottomSurface = Enum.SurfaceType.Weld
p402.TopSurface = Enum.SurfaceType.Weld
p403 = Instance.new("Part", m34)
p403.BrickColor = BrickColor.new("Br. yellowish orange")
p403.Material = Enum.Material.Concrete
p403.CFrame = CFrame.new(-134.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p403.Size = Vector3.new(2, 38.4000053, 1)
p403.BottomSurface = Enum.SurfaceType.Weld
p403.TopSurface = Enum.SurfaceType.Weld
p404 = Instance.new("Part", m34)
p404.BrickColor = BrickColor.new("Br. yellowish orange")
p404.Material = Enum.Material.Concrete
p404.CFrame = CFrame.new(-144.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p404.FormFactor = Enum.FormFactor.Custom
p404.Size = Vector3.new(2, 38.4000015, 1)
p404.BottomSurface = Enum.SurfaceType.Weld
p404.TopSurface = Enum.SurfaceType.Weld
p405 = Instance.new("Part", m34)
p405.BrickColor = BrickColor.new("Br. yellowish orange")
p405.Material = Enum.Material.Concrete
p405.CFrame = CFrame.new(-148.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p405.Size = Vector3.new(2, 38.4000053, 1)
p405.BottomSurface = Enum.SurfaceType.Weld
p405.TopSurface = Enum.SurfaceType.Weld
p406 = Instance.new("Part", m34)
p406.BrickColor = BrickColor.new("Br. yellowish orange")
p406.Material = Enum.Material.Concrete
p406.CFrame = CFrame.new(-152.5, 135.589966, 129.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p406.Size = Vector3.new(2, 38.3999977, 1)
p406.BottomSurface = Enum.SurfaceType.Weld
p406.TopSurface = Enum.SurfaceType.Weld
p407 = Instance.new("Part", m35)
p407.BrickColor = BrickColor.new("Bright yellow")
p407.CFrame = CFrame.new(-147, 265.389954, 111.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p407.Size = Vector3.new(1, 1.20000005, 1)
p407.BottomSurface = Enum.SurfaceType.Weld
p407.TopSurface = Enum.SurfaceType.Smooth
x1 = Instance.new("PointLight", p407)
p408 = Instance.new("Part", m35)
p408.BrickColor = BrickColor.new("Black")
p408.CFrame = CFrame.new(-147, 261.789948, 111.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p408.Size = Vector3.new(1, 6, 1)
p408.BottomSurface = Enum.SurfaceType.Weld
p408.TopSurface = Enum.SurfaceType.Smooth
p409 = Instance.new("Part", m36)
p409.BrickColor = BrickColor.new("Br. yellowish orange")
p409.CFrame = CFrame.new(-117.5, 9.38994598, 118.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p409.Size = Vector3.new(18, 1.20000005, 2)
p409.BottomSurface = Enum.SurfaceType.Smooth
p409.TopSurface = Enum.SurfaceType.Weld
p410 = Instance.new("Part", m36)
p410.BrickColor = BrickColor.new("Br. yellowish orange")
p410.CFrame = CFrame.new(-117.5, 4.58994627, 119.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p410.Size = Vector3.new(17, 8.39999962, 2)
p410.BottomSurface = Enum.SurfaceType.Weld
p410.TopSurface = Enum.SurfaceType.Weld
p411 = Instance.new("Part", m36)
p411.BrickColor = BrickColor.new("Br. yellowish orange")
p411.CFrame = CFrame.new(-117.5, 10.5899458, 118.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p411.Size = Vector3.new(19, 1.20000005, 2)
p411.BottomSurface = Enum.SurfaceType.Smooth
p411.TopSurface = Enum.SurfaceType.Weld
p412 = Instance.new("Part", m36)
p412.BrickColor = BrickColor.new("Reddish brown")
p412.Material = Enum.Material.Slate
p412.CFrame = CFrame.new(-117.5, 13.7899456, 105.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p412.FormFactor = Enum.FormFactor.Plate
p412.Size = Vector3.new(2, 0.400000006, 48)
p412.BottomSurface = Enum.SurfaceType.Smooth
p412.TopSurface = Enum.SurfaceType.Weld
p413 = Instance.new("Part", m36)
p413.BrickColor = BrickColor.new("Br. yellowish orange")
p413.CFrame = CFrame.new(-117.5, 12.9899454, 117.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p413.Size = Vector3.new(21, 1.20000005, 2)
p413.BottomSurface = Enum.SurfaceType.Smooth
p413.TopSurface = Enum.SurfaceType.Weld
p414 = Instance.new("Part", m36)
p414.BrickColor = BrickColor.new("Br. yellowish orange")
p414.CFrame = CFrame.new(-117.5, 4.58994627, 90.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p414.Size = Vector3.new(17, 8.39999962, 2)
p414.BottomSurface = Enum.SurfaceType.Weld
p414.TopSurface = Enum.SurfaceType.Weld
p415 = Instance.new("Part", m36)
p415.BrickColor = BrickColor.new("Br. yellowish orange")
p415.CFrame = CFrame.new(-117.5, 11.7899456, 117.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p415.Size = Vector3.new(20, 1.20000005, 2)
p415.BottomSurface = Enum.SurfaceType.Smooth
p415.TopSurface = Enum.SurfaceType.Weld
p416 = Instance.new("Part", m36)
p416.BrickColor = BrickColor.new("Br. yellowish orange")
p416.CFrame = CFrame.new(-117.5, 10.5899458, 91.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p416.Size = Vector3.new(19, 1.20000005, 2)
p416.BottomSurface = Enum.SurfaceType.Smooth
p416.TopSurface = Enum.SurfaceType.Weld
p417 = Instance.new("Part", m36)
p417.BrickColor = BrickColor.new("Br. yellowish orange")
p417.CFrame = CFrame.new(-117.5, 11.7899456, 91.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p417.Size = Vector3.new(20, 1.20000005, 2)
p417.BottomSurface = Enum.SurfaceType.Smooth
p417.TopSurface = Enum.SurfaceType.Weld
p418 = Instance.new("Part", m36)
p418.BrickColor = BrickColor.new("Br. yellowish orange")
p418.CFrame = CFrame.new(-117.5, 9.38994598, 90.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p418.Size = Vector3.new(18, 1.20000005, 2)
p418.BottomSurface = Enum.SurfaceType.Smooth
p418.TopSurface = Enum.SurfaceType.Weld
p419 = Instance.new("Part", m36)
p419.BrickColor = BrickColor.new("Br. yellowish orange")
p419.CFrame = CFrame.new(-117.5, 12.9899454, 92.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p419.Size = Vector3.new(21, 1.20000005, 2)
p419.BottomSurface = Enum.SurfaceType.Smooth
p419.TopSurface = Enum.SurfaceType.Weld
p420 = Instance.new("Part", m36)
p420.BrickColor = BrickColor.new("Medium stone grey")
p420.Material = Enum.Material.Concrete
p420.CFrame = CFrame.new(-141.5, 0.189946234, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p420.FormFactor = Enum.FormFactor.Plate
p420.Size = Vector3.new(60, 0.400000006, 60)
p420.BottomSurface = Enum.SurfaceType.Weld
p420.TopSurface = Enum.SurfaceType.Smooth
p421 = Instance.new("Part", m36)
p421.BrickColor = BrickColor.new("Br. yellowish orange")
p421.CFrame = CFrame.new(-141.5, 6.98994589, 128.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p421.Size = Vector3.new(50, 13.1999989, 2)
p421.BottomSurface = Enum.SurfaceType.Weld
p421.TopSurface = Enum.SurfaceType.Weld
p422 = Instance.new("Part", m36)
p422.BrickColor = BrickColor.new("Br. yellowish orange")
p422.CFrame = CFrame.new(-141.5, 6.98994589, 80.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p422.Size = Vector3.new(50, 13.1999989, 2)
p422.BottomSurface = Enum.SurfaceType.Weld
p422.TopSurface = Enum.SurfaceType.Weld
p423 = Instance.new("Part", m36)
p423.BrickColor = BrickColor.new("Reddish brown")
p423.Material = Enum.Material.Slate
p423.CFrame = CFrame.new(-140.5, 13.7899456, 80.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p423.FormFactor = Enum.FormFactor.Plate
p423.Size = Vector3.new(2, 0.400000006, 48)
p423.BottomSurface = Enum.SurfaceType.Smooth
p423.TopSurface = Enum.SurfaceType.Weld
p424 = Instance.new("Part", m36)
p424.BrickColor = BrickColor.new("Reddish brown")
p424.Material = Enum.Material.Slate
p424.CFrame = CFrame.new(-142.5, 13.7899456, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p424.FormFactor = Enum.FormFactor.Plate
p424.Size = Vector3.new(2, 0.400000006, 48)
p424.BottomSurface = Enum.SurfaceType.Smooth
p424.TopSurface = Enum.SurfaceType.Weld
p425 = Instance.new("Part", m36)
p425.BrickColor = BrickColor.new("Br. yellowish orange")
p425.CFrame = CFrame.new(-165.5, 11.7899456, 117.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p425.Size = Vector3.new(20, 1.20000005, 2)
p425.BottomSurface = Enum.SurfaceType.Smooth
p425.TopSurface = Enum.SurfaceType.Weld
p426 = Instance.new("Part", m36)
p426.BrickColor = BrickColor.new("Br. yellowish orange")
p426.CFrame = CFrame.new(-165.5, 10.5899458, 118.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p426.Size = Vector3.new(19, 1.20000005, 2)
p426.BottomSurface = Enum.SurfaceType.Smooth
p426.TopSurface = Enum.SurfaceType.Weld
p427 = Instance.new("Part", m36)
p427.BrickColor = BrickColor.new("Br. yellowish orange")
p427.CFrame = CFrame.new(-165.5, 9.38994598, 118.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p427.Size = Vector3.new(18, 1.20000005, 2)
p427.BottomSurface = Enum.SurfaceType.Smooth
p427.TopSurface = Enum.SurfaceType.Weld
p428 = Instance.new("Part", m36)
p428.BrickColor = BrickColor.new("Br. yellowish orange")
p428.CFrame = CFrame.new(-165.5, 12.9899454, 117.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p428.Size = Vector3.new(21, 1.20000005, 2)
p428.BottomSurface = Enum.SurfaceType.Smooth
p428.TopSurface = Enum.SurfaceType.Weld
p429 = Instance.new("Part", m36)
p429.BrickColor = BrickColor.new("Br. yellowish orange")
p429.CFrame = CFrame.new(-165.5, 4.58994627, 119.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p429.Size = Vector3.new(17, 8.39999962, 2)
p429.BottomSurface = Enum.SurfaceType.Weld
p429.TopSurface = Enum.SurfaceType.Weld
p430 = Instance.new("Part", m36)
p430.BrickColor = BrickColor.new("Br. yellowish orange")
p430.CFrame = CFrame.new(-165.5, 4.58994627, 90.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p430.Size = Vector3.new(17, 8.39999962, 2)
p430.BottomSurface = Enum.SurfaceType.Weld
p430.TopSurface = Enum.SurfaceType.Weld
p431 = Instance.new("Part", m36)
p431.BrickColor = BrickColor.new("Br. yellowish orange")
p431.CFrame = CFrame.new(-165.5, 9.38994598, 90.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p431.Size = Vector3.new(18, 1.20000005, 2)
p431.BottomSurface = Enum.SurfaceType.Smooth
p431.TopSurface = Enum.SurfaceType.Weld
p432 = Instance.new("Part", m36)
p432.BrickColor = BrickColor.new("Br. yellowish orange")
p432.CFrame = CFrame.new(-165.5, 12.9899454, 92.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p432.Size = Vector3.new(21, 1.20000005, 2)
p432.BottomSurface = Enum.SurfaceType.Smooth
p432.TopSurface = Enum.SurfaceType.Weld
p433 = Instance.new("Part", m36)
p433.BrickColor = BrickColor.new("Reddish brown")
p433.Material = Enum.Material.Slate
p433.CFrame = CFrame.new(-165.5, 13.7899456, 103.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p433.FormFactor = Enum.FormFactor.Plate
p433.Size = Vector3.new(2, 0.400000006, 48)
p433.BottomSurface = Enum.SurfaceType.Smooth
p433.TopSurface = Enum.SurfaceType.Weld
p434 = Instance.new("Part", m36)
p434.BrickColor = BrickColor.new("Br. yellowish orange")
p434.CFrame = CFrame.new(-165.5, 10.5899458, 91.0000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p434.Size = Vector3.new(19, 1.20000005, 2)
p434.BottomSurface = Enum.SurfaceType.Smooth
p434.TopSurface = Enum.SurfaceType.Weld
p435 = Instance.new("Part", m36)
p435.BrickColor = BrickColor.new("Br. yellowish orange")
p435.CFrame = CFrame.new(-165.5, 11.7899456, 91.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p435.Size = Vector3.new(20, 1.20000005, 2)
p435.BottomSurface = Enum.SurfaceType.Smooth
p435.TopSurface = Enum.SurfaceType.Weld
p436 = Instance.new("Part", m37)
p436.BrickColor = BrickColor.new("Reddish brown")
p436.Material = Enum.Material.Wood
p436.CFrame = CFrame.new(-117.999992, 4.58994055, 110.000015, 1, 0, 4.37113883e-008, 0, 1, 0, -8.74227766e-008, 0, 1)
p436.CanCollide = false
p436.Size = Vector3.new(1, 8.39999962, 1)
p436.BottomSurface = Enum.SurfaceType.SteppingMotor
p436.TopSurface = Enum.SurfaceType.SteppingMotor
p437 = Instance.new("Part", m37)
p437.BrickColor = BrickColor.new("Reddish brown")
p437.Material = Enum.Material.Wood
p437.Transparency = 1
p437.CFrame = CFrame.new(-117.999992, 4.58994007, 107.500015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p437.Size = Vector3.new(4, 8.39999962, 1)
p437.BottomSurface = Enum.SurfaceType.Smooth
p437.RightSurface = Enum.SurfaceType.Weld
p437.TopSurface = Enum.SurfaceType.Smooth
p438 = Instance.new("Part", m37)
p438.BrickColor = BrickColor.new("Reddish brown")
p438.Material = Enum.Material.Wood
p438.CFrame = CFrame.new(-117.999992, 9.38994026, 107.000015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p438.CanCollide = false
p438.Size = Vector3.new(5, 1.20000005, 1)
p438.BottomSurface = Enum.SurfaceType.Weld
p438.TopSurface = Enum.SurfaceType.Smooth
p439 = Instance.new("Part", m37)
p439.BrickColor = BrickColor.new("Reddish brown")
p439.Material = Enum.Material.Wood
p439.Transparency = 1
p439.Name = "Door"
p439.CFrame = CFrame.new(-117.999992, 4.58994055, 107.000015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p439.CanCollide = false
p439.Size = Vector3.new(5, 8.39999962, 1)
p439.BottomSurface = Enum.SurfaceType.Smooth
p439.RightSurface = Enum.SurfaceType.Weld
p439.TopSurface = Enum.SurfaceType.Smooth
d1 = Instance.new("Decal", p439)
d1.Texture = "http://www.roblox.com/asset/?id=140488230"
d1.Face = Enum.NormalId.Front
d2 = Instance.new("Decal", p439)
d2.Texture = "http://www.roblox.com/asset/?id=142685664"
d2.Face = Enum.NormalId.Back
p440 = Instance.new("Part", m37)
p440.BrickColor = BrickColor.new("Reddish brown")
p440.Material = Enum.Material.Wood
p440.CFrame = CFrame.new(-117.999992, 10.5899401, 106.500015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p440.CanCollide = false
p440.Size = Vector3.new(4, 1.20000005, 1)
p440.BottomSurface = Enum.SurfaceType.Weld
p440.TopSurface = Enum.SurfaceType.Smooth
p441 = Instance.new("Part", m37)
p441.BrickColor = BrickColor.new("Reddish brown")
p441.Material = Enum.Material.Wood
p441.CFrame = CFrame.new(-117.999992, 11.7899399, 106.000015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p441.CanCollide = false
p441.Size = Vector3.new(3, 1.20000005, 1)
p441.BottomSurface = Enum.SurfaceType.Weld
p441.TopSurface = Enum.SurfaceType.Smooth
p442 = Instance.new("Part", m37)
p442.BrickColor = BrickColor.new("Reddish brown")
p442.Material = Enum.Material.Wood
p442.CFrame = CFrame.new(-117.999992, 12.9899397, 105.500015, 4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, 8.74227766e-008)
p442.CanCollide = false
p442.Size = Vector3.new(2, 1.20000005, 1)
p442.BottomSurface = Enum.SurfaceType.Weld
p442.TopSurface = Enum.SurfaceType.Smooth
p443 = Instance.new("Part", m38)
p443.BrickColor = BrickColor.new("Reddish brown")
p443.Material = Enum.Material.Wood
p443.CFrame = CFrame.new(-117.999992, 4.58994055, 99.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p443.CanCollide = false
p443.Size = Vector3.new(1, 8.39999962, 1)
p443.BottomSurface = Enum.SurfaceType.SteppingMotor
p443.TopSurface = Enum.SurfaceType.SteppingMotor
p444 = Instance.new("Part", m38)
p444.BrickColor = BrickColor.new("Reddish brown")
p444.Material = Enum.Material.Wood
p444.Transparency = 1
p444.CFrame = CFrame.new(-117.999992, 4.58994007, 101.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p444.Size = Vector3.new(4, 8.39999962, 1)
p444.BottomSurface = Enum.SurfaceType.Smooth
p444.RightSurface = Enum.SurfaceType.Weld
p444.TopSurface = Enum.SurfaceType.Smooth
p445 = Instance.new("Part", m38)
p445.BrickColor = BrickColor.new("Reddish brown")
p445.Material = Enum.Material.Wood
p445.CFrame = CFrame.new(-117.999992, 9.38994026, 102.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p445.CanCollide = false
p445.Size = Vector3.new(5, 1.20000005, 1)
p445.BottomSurface = Enum.SurfaceType.Weld
p445.TopSurface = Enum.SurfaceType.Smooth
p446 = Instance.new("Part", m38)
p446.BrickColor = BrickColor.new("Reddish brown")
p446.Material = Enum.Material.Wood
p446.Transparency = 1
p446.Name = "Door"
p446.CFrame = CFrame.new(-117.999992, 4.58994055, 102.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p446.CanCollide = false
p446.Size = Vector3.new(5, 8.39999962, 1)
p446.BottomSurface = Enum.SurfaceType.Smooth
p446.RightSurface = Enum.SurfaceType.Weld
p446.TopSurface = Enum.SurfaceType.Smooth
d3 = Instance.new("Decal", p446)
d3.Texture = "http://www.roblox.com/asset/?id=140488230"
d3.Face = Enum.NormalId.Front
d4 = Instance.new("Decal", p446)
d4.Texture = "http://www.roblox.com/asset/?id=142685664"
d4.Face = Enum.NormalId.Back
p447 = Instance.new("Part", m38)
p447.BrickColor = BrickColor.new("Reddish brown")
p447.Material = Enum.Material.Wood
p447.CFrame = CFrame.new(-117.999992, 10.5899401, 102.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p447.CanCollide = false
p447.Size = Vector3.new(4, 1.20000005, 1)
p447.BottomSurface = Enum.SurfaceType.Weld
p447.TopSurface = Enum.SurfaceType.Smooth
p448 = Instance.new("Part", m38)
p448.BrickColor = BrickColor.new("Reddish brown")
p448.Material = Enum.Material.Wood
p448.CFrame = CFrame.new(-117.999992, 11.7899399, 103.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p448.CanCollide = false
p448.Size = Vector3.new(3, 1.20000005, 1)
p448.BottomSurface = Enum.SurfaceType.Weld
p448.TopSurface = Enum.SurfaceType.Smooth
p449 = Instance.new("Part", m38)
p449.BrickColor = BrickColor.new("Reddish brown")
p449.Material = Enum.Material.Wood
p449.CFrame = CFrame.new(-117.999992, 12.9899397, 103.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p449.CanCollide = false
p449.Size = Vector3.new(2, 1.20000005, 1)
p449.BottomSurface = Enum.SurfaceType.Weld
p449.TopSurface = Enum.SurfaceType.Smooth
p450 = Instance.new("Part", m39)
p450.BrickColor = BrickColor.new("Reddish brown")
p450.Material = Enum.Material.Wood
p450.CFrame = CFrame.new(-165, 4.58994055, 110.000015, 0.999999881, 6.65975151e-008, 5.96046448e-008, -6.65975008e-008, 1, -5.88526561e-010, -5.96046448e-008, 5.88528337e-010, 0.999999881)
p450.CanCollide = false
p450.Size = Vector3.new(1, 8.39999962, 1)
p450.BottomSurface = Enum.SurfaceType.SteppingMotor
p450.TopSurface = Enum.SurfaceType.SteppingMotor
p451 = Instance.new("Part", m39)
p451.BrickColor = BrickColor.new("Reddish brown")
p451.Material = Enum.Material.Wood
p451.Transparency = 1
p451.CFrame = CFrame.new(-165, 4.58994007, 107.500015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p451.Size = Vector3.new(4, 8.39999962, 1)
p451.BottomSurface = Enum.SurfaceType.Smooth
p451.RightSurface = Enum.SurfaceType.Weld
p451.TopSurface = Enum.SurfaceType.Smooth
p452 = Instance.new("Part", m39)
p452.BrickColor = BrickColor.new("Reddish brown")
p452.Material = Enum.Material.Wood
p452.CFrame = CFrame.new(-165, 9.38994026, 107.000015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p452.CanCollide = false
p452.Size = Vector3.new(5, 1.20000005, 1)
p452.BottomSurface = Enum.SurfaceType.Weld
p452.TopSurface = Enum.SurfaceType.Smooth
p453 = Instance.new("Part", m39)
p453.BrickColor = BrickColor.new("Reddish brown")
p453.Material = Enum.Material.Wood
p453.Transparency = 1
p453.Name = "Door"
p453.CFrame = CFrame.new(-165, 4.58994055, 107.000015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p453.CanCollide = false
p453.Size = Vector3.new(5, 8.39999962, 1)
p453.BottomSurface = Enum.SurfaceType.Smooth
p453.RightSurface = Enum.SurfaceType.Weld
p453.TopSurface = Enum.SurfaceType.Smooth
d5 = Instance.new("Decal", p453)
d5.Texture = "http://www.roblox.com/asset/?id=140488230"
d5.Face = Enum.NormalId.Front
d6 = Instance.new("Decal", p453)
d6.Texture = "http://www.roblox.com/asset/?id=142685664"
d6.Face = Enum.NormalId.Back
p454 = Instance.new("Part", m39)
p454.BrickColor = BrickColor.new("Reddish brown")
p454.Material = Enum.Material.Wood
p454.CFrame = CFrame.new(-165, 10.5899401, 106.500015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p454.CanCollide = false
p454.Size = Vector3.new(4, 1.20000005, 1)
p454.BottomSurface = Enum.SurfaceType.Weld
p454.TopSurface = Enum.SurfaceType.Smooth
p455 = Instance.new("Part", m39)
p455.BrickColor = BrickColor.new("Reddish brown")
p455.Material = Enum.Material.Wood
p455.CFrame = CFrame.new(-165, 11.7899399, 106.000015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p455.CanCollide = false
p455.Size = Vector3.new(3, 1.20000005, 1)
p455.BottomSurface = Enum.SurfaceType.Weld
p455.TopSurface = Enum.SurfaceType.Smooth
p456 = Instance.new("Part", m39)
p456.BrickColor = BrickColor.new("Reddish brown")
p456.Material = Enum.Material.Wood
p456.CFrame = CFrame.new(-165, 12.9899397, 105.500015, 5.96046448e-008, 6.65975151e-008, -0.999999881, -5.88526561e-010, 1, 6.65975008e-008, 0.999999881, 5.88528337e-010, 5.96046448e-008)
p456.CanCollide = false
p456.Size = Vector3.new(2, 1.20000005, 1)
p456.BottomSurface = Enum.SurfaceType.Weld
p456.TopSurface = Enum.SurfaceType.Smooth
p457 = Instance.new("Part", m40)
p457.BrickColor = BrickColor.new("Reddish brown")
p457.Material = Enum.Material.Wood
p457.CFrame = CFrame.new(-165, 4.58994055, 99.0000153, -0.999999881, 6.65975151e-008, -5.96046448e-008, 6.65975008e-008, 1, 5.88526561e-010, 5.96046448e-008, 5.88528337e-010, -0.999999881)
p457.CanCollide = false
p457.Size = Vector3.new(1, 8.39999962, 1)
p457.BottomSurface = Enum.SurfaceType.SteppingMotor
p457.TopSurface = Enum.SurfaceType.SteppingMotor
p458 = Instance.new("Part", m40)
p458.BrickColor = BrickColor.new("Reddish brown")
p458.Material = Enum.Material.Wood
p458.Transparency = 1
p458.CFrame = CFrame.new(-165, 4.58994007, 101.500015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p458.Size = Vector3.new(4, 8.39999962, 1)
p458.BottomSurface = Enum.SurfaceType.Smooth
p458.RightSurface = Enum.SurfaceType.Weld
p458.TopSurface = Enum.SurfaceType.Smooth
p459 = Instance.new("Part", m40)
p459.BrickColor = BrickColor.new("Reddish brown")
p459.Material = Enum.Material.Wood
p459.CFrame = CFrame.new(-165, 9.38994026, 102.000015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p459.CanCollide = false
p459.Size = Vector3.new(5, 1.20000005, 1)
p459.BottomSurface = Enum.SurfaceType.Weld
p459.TopSurface = Enum.SurfaceType.Smooth
p460 = Instance.new("Part", m40)
p460.BrickColor = BrickColor.new("Reddish brown")
p460.Material = Enum.Material.Wood
p460.Transparency = 1
p460.Name = "Door"
p460.CFrame = CFrame.new(-165, 4.58994055, 102.000015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p460.CanCollide = false
p460.Size = Vector3.new(5, 8.39999962, 1)
p460.BottomSurface = Enum.SurfaceType.Smooth
p460.RightSurface = Enum.SurfaceType.Weld
p460.TopSurface = Enum.SurfaceType.Smooth
d7 = Instance.new("Decal", p460)
d7.Texture = "http://www.roblox.com/asset/?id=140488230"
d7.Face = Enum.NormalId.Front
d8 = Instance.new("Decal", p460)
d8.Texture = "http://www.roblox.com/asset/?id=142685664"
d8.Face = Enum.NormalId.Back
p461 = Instance.new("Part", m40)
p461.BrickColor = BrickColor.new("Reddish brown")
p461.Material = Enum.Material.Wood
p461.CFrame = CFrame.new(-165, 10.5899401, 102.500015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p461.CanCollide = false
p461.Size = Vector3.new(4, 1.20000005, 1)
p461.BottomSurface = Enum.SurfaceType.Weld
p461.TopSurface = Enum.SurfaceType.Smooth
p462 = Instance.new("Part", m40)
p462.BrickColor = BrickColor.new("Reddish brown")
p462.Material = Enum.Material.Wood
p462.CFrame = CFrame.new(-165, 11.7899399, 103.000015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p462.CanCollide = false
p462.Size = Vector3.new(3, 1.20000005, 1)
p462.BottomSurface = Enum.SurfaceType.Weld
p462.TopSurface = Enum.SurfaceType.Smooth
p463 = Instance.new("Part", m40)
p463.BrickColor = BrickColor.new("Reddish brown")
p463.Material = Enum.Material.Wood
p463.CFrame = CFrame.new(-165, 12.9899397, 103.500015, -5.96046448e-008, 6.65975151e-008, 0.999999881, 5.88526561e-010, 1, -6.65975008e-008, -0.999999881, 5.88528337e-010, -5.96046448e-008)
p463.CanCollide = false
p463.Size = Vector3.new(2, 1.20000005, 1)
p463.BottomSurface = Enum.SurfaceType.Weld
p463.TopSurface = Enum.SurfaceType.Smooth
p464 = Instance.new("Part", m43)
p464.BrickColor = BrickColor.new("Dark stone grey")
p464.Material = Enum.Material.Slate
p464.CFrame = CFrame.new(-166, 168.789963, 102.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p464.Size = Vector3.new(7, 1.20000005, 2)
p464.BottomSurface = Enum.SurfaceType.Smooth
p464.RightSurface = Enum.SurfaceType.Weld
p464.TopSurface = Enum.SurfaceType.Smooth
p465 = Instance.new("Part", m43)
p465.BrickColor = BrickColor.new("Dark stone grey")
p465.Material = Enum.Material.Slate
p465.CFrame = CFrame.new(-166, 167.589951, 104.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p465.Size = Vector3.new(7, 1.20000005, 2)
p465.BottomSurface = Enum.SurfaceType.Smooth
p465.RightSurface = Enum.SurfaceType.Weld
p465.TopSurface = Enum.SurfaceType.Smooth
p466 = Instance.new("Part", m43)
p466.BrickColor = BrickColor.new("Dark stone grey")
p466.Material = Enum.Material.Slate
p466.CFrame = CFrame.new(-166, 162.789963, 112.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p466.Size = Vector3.new(7, 1.20000005, 2)
p466.BottomSurface = Enum.SurfaceType.Smooth
p466.RightSurface = Enum.SurfaceType.Weld
p466.TopSurface = Enum.SurfaceType.Smooth
p467 = Instance.new("Part", m43)
p467.BrickColor = BrickColor.new("Dark stone grey")
p467.Material = Enum.Material.Slate
p467.CFrame = CFrame.new(-166, 171.189957, 98.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p467.Size = Vector3.new(7, 1.20000005, 2)
p467.BottomSurface = Enum.SurfaceType.Smooth
p467.RightSurface = Enum.SurfaceType.Weld
p467.TopSurface = Enum.SurfaceType.Smooth
p468 = Instance.new("Part", m43)
p468.BrickColor = BrickColor.new("Dark stone grey")
p468.Material = Enum.Material.Slate
p468.CFrame = CFrame.new(-166, 165.189957, 108.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p468.Size = Vector3.new(7, 1.20000005, 2)
p468.BottomSurface = Enum.SurfaceType.Smooth
p468.RightSurface = Enum.SurfaceType.Weld
p468.TopSurface = Enum.SurfaceType.Smooth
p469 = Instance.new("Part", m43)
p469.BrickColor = BrickColor.new("Dark stone grey")
p469.Material = Enum.Material.Slate
p469.CFrame = CFrame.new(-166, 166.389954, 106.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p469.Size = Vector3.new(7, 1.20000005, 2)
p469.BottomSurface = Enum.SurfaceType.Smooth
p469.RightSurface = Enum.SurfaceType.Weld
p469.TopSurface = Enum.SurfaceType.Smooth
p470 = Instance.new("Part", m43)
p470.BrickColor = BrickColor.new("Dark stone grey")
p470.Material = Enum.Material.Slate
p470.CFrame = CFrame.new(-166, 163.98996, 110.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p470.Size = Vector3.new(7, 1.20000005, 2)
p470.BottomSurface = Enum.SurfaceType.Smooth
p470.RightSurface = Enum.SurfaceType.Weld
p470.TopSurface = Enum.SurfaceType.Smooth
p471 = Instance.new("Part", m43)
p471.BrickColor = BrickColor.new("Dark stone grey")
p471.Material = Enum.Material.Slate
p471.CFrame = CFrame.new(-166, 172.389954, 96.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p471.Size = Vector3.new(7, 1.20000005, 2)
p471.BottomSurface = Enum.SurfaceType.Smooth
p471.RightSurface = Enum.SurfaceType.Weld
p471.TopSurface = Enum.SurfaceType.Smooth
p472 = Instance.new("Part", m43)
p472.BrickColor = BrickColor.new("Dark stone grey")
p472.Material = Enum.Material.Slate
p472.CFrame = CFrame.new(-166, 180.789948, 80.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p472.Size = Vector3.new(7, 1.20000005, 7)
p472.BackSurface = Enum.SurfaceType.Weld
p472.BottomSurface = Enum.SurfaceType.Smooth
p472.RightSurface = Enum.SurfaceType.Weld
p472.TopSurface = Enum.SurfaceType.Smooth
p473 = Instance.new("Part", m43)
p473.BrickColor = BrickColor.new("Dark stone grey")
p473.Material = Enum.Material.Slate
p473.CFrame = CFrame.new(-166, 173.589951, 94.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p473.Size = Vector3.new(7, 1.20000005, 2)
p473.BottomSurface = Enum.SurfaceType.Smooth
p473.RightSurface = Enum.SurfaceType.Weld
p473.TopSurface = Enum.SurfaceType.Smooth
p474 = Instance.new("Part", m43)
p474.BrickColor = BrickColor.new("Dark stone grey")
p474.Material = Enum.Material.Slate
p474.CFrame = CFrame.new(-166, 161.589966, 114.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p474.Size = Vector3.new(7, 1.20000005, 2)
p474.BottomSurface = Enum.SurfaceType.Smooth
p474.RightSurface = Enum.SurfaceType.Weld
p474.TopSurface = Enum.SurfaceType.Smooth
p475 = Instance.new("Part", m43)
p475.BrickColor = BrickColor.new("Dark stone grey")
p475.Material = Enum.Material.Slate
p475.CFrame = CFrame.new(-166, 155.789948, 124.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p475.Size = Vector3.new(7, 1.20000005, 2)
p475.BottomSurface = Enum.SurfaceType.Smooth
p475.RightSurface = Enum.SurfaceType.Weld
p475.TopSurface = Enum.SurfaceType.Smooth
p476 = Instance.new("Part", m43)
p476.BrickColor = BrickColor.new("Dark stone grey")
p476.Material = Enum.Material.Slate
p476.CFrame = CFrame.new(-166, 169.98996, 100.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p476.Size = Vector3.new(7, 1.20000005, 2)
p476.BottomSurface = Enum.SurfaceType.Smooth
p476.RightSurface = Enum.SurfaceType.Weld
p476.TopSurface = Enum.SurfaceType.Smooth
p477 = Instance.new("Part", m43)
p477.BrickColor = BrickColor.new("Dark stone grey")
p477.Material = Enum.Material.Slate
p477.CFrame = CFrame.new(-166, 160.389954, 116.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p477.Size = Vector3.new(7, 1.20000005, 2)
p477.BottomSurface = Enum.SurfaceType.Smooth
p477.RightSurface = Enum.SurfaceType.Weld
p477.TopSurface = Enum.SurfaceType.Smooth
p478 = Instance.new("Part", m43)
p478.BrickColor = BrickColor.new("Dark stone grey")
p478.Material = Enum.Material.Slate
p478.CFrame = CFrame.new(-166, 159.189957, 118.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p478.Size = Vector3.new(7, 1.20000005, 2)
p478.BottomSurface = Enum.SurfaceType.Smooth
p478.RightSurface = Enum.SurfaceType.Weld
p478.TopSurface = Enum.SurfaceType.Smooth
p479 = Instance.new("Part", m43)
p479.BrickColor = BrickColor.new("Dark stone grey")
p479.Material = Enum.Material.Slate
p479.CFrame = CFrame.new(-166, 157.98996, 120.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p479.Size = Vector3.new(7, 1.20000005, 2)
p479.BottomSurface = Enum.SurfaceType.Smooth
p479.RightSurface = Enum.SurfaceType.Weld
p479.TopSurface = Enum.SurfaceType.Smooth
p480 = Instance.new("Part", m43)
p480.BrickColor = BrickColor.new("Dark stone grey")
p480.Material = Enum.Material.Slate
p480.CFrame = CFrame.new(-166, 156.789948, 122.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p480.Size = Vector3.new(7, 1.20000005, 2)
p480.BottomSurface = Enum.SurfaceType.Smooth
p480.RightSurface = Enum.SurfaceType.Weld
p480.TopSurface = Enum.SurfaceType.Smooth
p481 = Instance.new("Part", m43)
p481.BrickColor = BrickColor.new("Dark stone grey")
p481.Material = Enum.Material.Slate
p481.CFrame = CFrame.new(-166, 174.789963, 92.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p481.Size = Vector3.new(7, 1.20000005, 2)
p481.BottomSurface = Enum.SurfaceType.Smooth
p481.RightSurface = Enum.SurfaceType.Weld
p481.TopSurface = Enum.SurfaceType.Smooth
p482 = Instance.new("Part", m43)
p482.BrickColor = BrickColor.new("Dark stone grey")
p482.Material = Enum.Material.Slate
p482.CFrame = CFrame.new(-166, 175.98996, 90.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p482.Size = Vector3.new(7, 1.20000005, 2)
p482.BottomSurface = Enum.SurfaceType.Smooth
p482.RightSurface = Enum.SurfaceType.Weld
p482.TopSurface = Enum.SurfaceType.Smooth
p483 = Instance.new("Part", m43)
p483.BrickColor = BrickColor.new("Dark stone grey")
p483.Material = Enum.Material.Slate
p483.CFrame = CFrame.new(-166, 177.189957, 88.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p483.Size = Vector3.new(7, 1.20000005, 2)
p483.BottomSurface = Enum.SurfaceType.Smooth
p483.RightSurface = Enum.SurfaceType.Weld
p483.TopSurface = Enum.SurfaceType.Smooth
p484 = Instance.new("Part", m43)
p484.BrickColor = BrickColor.new("Dark stone grey")
p484.Material = Enum.Material.Slate
p484.CFrame = CFrame.new(-166, 178.389954, 86.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p484.Size = Vector3.new(7, 1.20000005, 2)
p484.BottomSurface = Enum.SurfaceType.Smooth
p484.RightSurface = Enum.SurfaceType.Weld
p484.TopSurface = Enum.SurfaceType.Smooth
p485 = Instance.new("Part", m43)
p485.BrickColor = BrickColor.new("Dark stone grey")
p485.Material = Enum.Material.Slate
p485.CFrame = CFrame.new(-166, 179.589951, 84.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p485.Size = Vector3.new(7, 1.20000005, 2)
p485.BottomSurface = Enum.SurfaceType.Smooth
p485.RightSurface = Enum.SurfaceType.Weld
p485.TopSurface = Enum.SurfaceType.Smooth
p486 = Instance.new("Part", m44)
p486.BrickColor = BrickColor.new("Dark stone grey")
p486.Material = Enum.Material.Slate
p486.CFrame = CFrame.new(-139.5, 194.98996, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p486.Size = Vector3.new(7, 1.20000005, 2)
p486.BottomSurface = Enum.SurfaceType.Smooth
p486.RightSurface = Enum.SurfaceType.Weld
p486.TopSurface = Enum.SurfaceType.Smooth
p487 = Instance.new("Part", m44)
p487.BrickColor = BrickColor.new("Dark stone grey")
p487.Material = Enum.Material.Slate
p487.CFrame = CFrame.new(-141.5, 193.789963, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p487.Size = Vector3.new(7, 1.20000005, 2)
p487.BottomSurface = Enum.SurfaceType.Smooth
p487.RightSurface = Enum.SurfaceType.Weld
p487.TopSurface = Enum.SurfaceType.Smooth
p488 = Instance.new("Part", m44)
p488.BrickColor = BrickColor.new("Dark stone grey")
p488.Material = Enum.Material.Slate
p488.CFrame = CFrame.new(-149.5, 188.98996, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p488.Size = Vector3.new(7, 1.20000005, 2)
p488.BottomSurface = Enum.SurfaceType.Smooth
p488.RightSurface = Enum.SurfaceType.Weld
p488.TopSurface = Enum.SurfaceType.Smooth
p489 = Instance.new("Part", m44)
p489.BrickColor = BrickColor.new("Dark stone grey")
p489.Material = Enum.Material.Slate
p489.CFrame = CFrame.new(-135.5, 197.389954, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p489.Size = Vector3.new(7, 1.20000005, 2)
p489.BottomSurface = Enum.SurfaceType.Smooth
p489.RightSurface = Enum.SurfaceType.Weld
p489.TopSurface = Enum.SurfaceType.Smooth
p490 = Instance.new("Part", m44)
p490.BrickColor = BrickColor.new("Dark stone grey")
p490.Material = Enum.Material.Slate
p490.CFrame = CFrame.new(-145.5, 191.389954, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p490.Size = Vector3.new(7, 1.20000005, 2)
p490.BottomSurface = Enum.SurfaceType.Smooth
p490.RightSurface = Enum.SurfaceType.Weld
p490.TopSurface = Enum.SurfaceType.Smooth
p491 = Instance.new("Part", m44)
p491.BrickColor = BrickColor.new("Dark stone grey")
p491.Material = Enum.Material.Slate
p491.CFrame = CFrame.new(-143.5, 192.589951, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p491.Size = Vector3.new(7, 1.20000005, 2)
p491.BottomSurface = Enum.SurfaceType.Smooth
p491.RightSurface = Enum.SurfaceType.Weld
p491.TopSurface = Enum.SurfaceType.Smooth
p492 = Instance.new("Part", m44)
p492.BrickColor = BrickColor.new("Dark stone grey")
p492.Material = Enum.Material.Slate
p492.CFrame = CFrame.new(-147.5, 190.189957, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p492.Size = Vector3.new(7, 1.20000005, 2)
p492.BottomSurface = Enum.SurfaceType.Smooth
p492.RightSurface = Enum.SurfaceType.Weld
p492.TopSurface = Enum.SurfaceType.Smooth
p493 = Instance.new("Part", m44)
p493.BrickColor = BrickColor.new("Dark stone grey")
p493.Material = Enum.Material.Slate
p493.CFrame = CFrame.new(-133.5, 198.589951, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p493.Size = Vector3.new(7, 1.20000005, 2)
p493.BottomSurface = Enum.SurfaceType.Smooth
p493.RightSurface = Enum.SurfaceType.Weld
p493.TopSurface = Enum.SurfaceType.Smooth
p494 = Instance.new("Part", m44)
p494.BrickColor = BrickColor.new("Dark stone grey")
p494.Material = Enum.Material.Slate
p494.CFrame = CFrame.new(-151.5, 187.789963, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p494.Size = Vector3.new(7, 1.20000005, 2)
p494.BottomSurface = Enum.SurfaceType.Smooth
p494.RightSurface = Enum.SurfaceType.Weld
p494.TopSurface = Enum.SurfaceType.Smooth
p495 = Instance.new("Part", m44)
p495.BrickColor = BrickColor.new("Dark stone grey")
p495.Material = Enum.Material.Slate
p495.CFrame = CFrame.new(-161.5, 181.98996, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p495.Size = Vector3.new(7, 1.20000005, 2)
p495.BottomSurface = Enum.SurfaceType.Smooth
p495.RightSurface = Enum.SurfaceType.Weld
p495.TopSurface = Enum.SurfaceType.Smooth
p496 = Instance.new("Part", m44)
p496.BrickColor = BrickColor.new("Dark stone grey")
p496.Material = Enum.Material.Slate
p496.CFrame = CFrame.new(-137.5, 196.189957, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p496.Size = Vector3.new(7, 1.20000005, 2)
p496.BottomSurface = Enum.SurfaceType.Smooth
p496.RightSurface = Enum.SurfaceType.Weld
p496.TopSurface = Enum.SurfaceType.Smooth
p497 = Instance.new("Part", m44)
p497.BrickColor = BrickColor.new("Dark stone grey")
p497.Material = Enum.Material.Slate
p497.CFrame = CFrame.new(-153.5, 186.589951, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p497.Size = Vector3.new(7, 1.20000005, 2)
p497.BottomSurface = Enum.SurfaceType.Smooth
p497.RightSurface = Enum.SurfaceType.Weld
p497.TopSurface = Enum.SurfaceType.Smooth
p498 = Instance.new("Part", m44)
p498.BrickColor = BrickColor.new("Dark stone grey")
p498.Material = Enum.Material.Slate
p498.CFrame = CFrame.new(-155.5, 185.389954, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p498.Size = Vector3.new(7, 1.20000005, 2)
p498.BottomSurface = Enum.SurfaceType.Smooth
p498.RightSurface = Enum.SurfaceType.Weld
p498.TopSurface = Enum.SurfaceType.Smooth
p499 = Instance.new("Part", m44)
p499.BrickColor = BrickColor.new("Dark stone grey")
p499.Material = Enum.Material.Slate
p499.CFrame = CFrame.new(-157.5, 184.189957, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p499.Size = Vector3.new(7, 1.20000005, 2)
p499.BottomSurface = Enum.SurfaceType.Smooth
p499.RightSurface = Enum.SurfaceType.Weld
p499.TopSurface = Enum.SurfaceType.Smooth
p500 = Instance.new("Part", m44)
p500.BrickColor = BrickColor.new("Dark stone grey")
p500.Material = Enum.Material.Slate
p500.CFrame = CFrame.new(-159.5, 182.98996, 80.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p500.Size = Vector3.new(7, 1.20000005, 2)
p500.BottomSurface = Enum.SurfaceType.Smooth
p500.RightSurface = Enum.SurfaceType.Weld
p500.TopSurface = Enum.SurfaceType.Smooth
p501 = Instance.new("Part", m45)
p501.BrickColor = BrickColor.new("Reddish brown")
p501.Material = Enum.Material.Slate
p501.CFrame = CFrame.new(-138, 154.98996, 78.0000229, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p501.FormFactor = Enum.FormFactor.Plate
p501.Size = Vector3.new(7, 0.400000006, 53)
p501.BottomSurface = Enum.SurfaceType.Smooth
p501.TopSurface = Enum.SurfaceType.Smooth
p502 = Instance.new("Part", m45)
p502.BrickColor = BrickColor.new("Reddish brown")
p502.Material = Enum.Material.Slate
p502.CFrame = CFrame.new(-168, 154.98996, 101.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p502.FormFactor = Enum.FormFactor.Plate
p502.Size = Vector3.new(7, 0.400000006, 53)
p502.BottomSurface = Enum.SurfaceType.Smooth
p502.TopSurface = Enum.SurfaceType.Smooth
p503 = Instance.new("Part", m45)
p503.BrickColor = BrickColor.new("Reddish brown")
p503.Material = Enum.Material.Slate
p503.CFrame = CFrame.new(-145, 154.98996, 131.000015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p503.FormFactor = Enum.FormFactor.Plate
p503.Size = Vector3.new(7, 0.400000006, 53)
p503.BottomSurface = Enum.SurfaceType.Smooth
p503.TopSurface = Enum.SurfaceType.Smooth
p504 = Instance.new("Part", m45)
p504.BrickColor = BrickColor.new("Reddish brown")
p504.Material = Enum.Material.Slate
p504.CFrame = CFrame.new(-115, 154.98996, 108.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p504.FormFactor = Enum.FormFactor.Plate
p504.Size = Vector3.new(7, 0.400000006, 53)
p504.BottomSurface = Enum.SurfaceType.Smooth
p504.TopSurface = Enum.SurfaceType.Smooth
p505 = Instance.new("Part", m45)
p505.BrickColor = BrickColor.new("Br. yellowish orange")
p505.Material = Enum.Material.Concrete
p505.CFrame = CFrame.new(-112.5, 177.389954, 128.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p505.Size = Vector3.new(12, 44.4000092, 2)
p505.BottomSurface = Enum.SurfaceType.Weld
p505.TopSurface = Enum.SurfaceType.Weld
d9 = Instance.new("Decal", p505)
d9.Texture = "http://www.roblox.com/asset/?id=13909913"
d9.Face = Enum.NormalId.Front
p506 = Instance.new("Part", m45)
p506.BrickColor = BrickColor.new("Br. yellowish orange")
p506.Material = Enum.Material.Concrete
p506.CFrame = CFrame.new(-112.5, 159.98996, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p506.Size = Vector3.new(36, 9.59999466, 2)
p506.BottomSurface = Enum.SurfaceType.Weld
p506.TopSurface = Enum.SurfaceType.Weld
d10 = Instance.new("Decal", p506)
d10.Texture = "http://www.roblox.com/asset/?id=13910060"
d10.Face = Enum.NormalId.Front
p507 = Instance.new("Part", m45)
p507.BrickColor = BrickColor.new("Br. yellowish orange")
p507.Material = Enum.Material.Concrete
p507.Name = "Clockface"
p507.CFrame = CFrame.new(-112, 182.189957, 104.500015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p507.Size = Vector3.new(36, 34.7999992, 3)
p507.BottomSurface = Enum.SurfaceType.Smooth
p507.TopSurface = Enum.SurfaceType.Smooth
d11 = Instance.new("Decal", p507)
d11.Texture = "http://www.roblox.com/asset/?id=13909778"
d11.Face = Enum.NormalId.Front
d12 = Instance.new("Decal", p507)
d12.Texture = "http://www.roblox.com/asset/?id=13909778"
d12.Face = Enum.NormalId.Back
x2 = Instance.new("PointLight", p507)
x2.Brightness = 10
x2.Range = 30
p508 = Instance.new("Part", m45)
p508.BrickColor = BrickColor.new("Br. yellowish orange")
p508.Material = Enum.Material.Concrete
p508.CFrame = CFrame.new(-112.5, 177.389954, 80.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p508.Size = Vector3.new(12, 44.4000092, 2)
p508.BottomSurface = Enum.SurfaceType.Weld
p508.TopSurface = Enum.SurfaceType.Weld
d13 = Instance.new("Decal", p508)
d13.Texture = "http://www.roblox.com/asset/?id=13909913"
d13.Face = Enum.NormalId.Front
p509 = Instance.new("Part", m45)
p509.BrickColor = BrickColor.new("Br. yellowish orange")
p509.Material = Enum.Material.Concrete
p509.Name = "Clockface"
p509.CFrame = CFrame.new(-141.5, 182.189957, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p509.Size = Vector3.new(36, 34.7999992, 3)
p509.BottomSurface = Enum.SurfaceType.Smooth
p509.TopSurface = Enum.SurfaceType.Smooth
d14 = Instance.new("Decal", p509)
d14.Texture = "http://www.roblox.com/asset/?id=13909778"
d14.Face = Enum.NormalId.Front
d15 = Instance.new("Decal", p509)
d15.Texture = "http://www.roblox.com/asset/?id=13909778"
d15.Face = Enum.NormalId.Back
x3 = Instance.new("PointLight", p509)
x3.Brightness = 10
x3.Range = 30
p510 = Instance.new("Part", m45)
p510.BrickColor = BrickColor.new("Br. yellowish orange")
p510.Material = Enum.Material.Concrete
p510.CFrame = CFrame.new(-165.5, 177.389954, 75.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p510.Size = Vector3.new(12, 44.4000092, 2)
p510.BottomSurface = Enum.SurfaceType.Weld
p510.TopSurface = Enum.SurfaceType.Weld
d16 = Instance.new("Decal", p510)
d16.Texture = "http://www.roblox.com/asset/?id=13909913"
d16.Face = Enum.NormalId.Front
p511 = Instance.new("Part", m45)
p511.BrickColor = BrickColor.new("Br. yellowish orange")
p511.Material = Enum.Material.Concrete
p511.CFrame = CFrame.new(-141.5, 159.98996, 75.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p511.Size = Vector3.new(36, 9.59999466, 2)
p511.BottomSurface = Enum.SurfaceType.Weld
p511.TopSurface = Enum.SurfaceType.Weld
d17 = Instance.new("Decal", p511)
d17.Texture = "http://www.roblox.com/asset/?id=13910060"
d17.Face = Enum.NormalId.Front
p512 = Instance.new("Part", m45)
p512.BrickColor = BrickColor.new("Br. yellowish orange")
p512.Material = Enum.Material.Concrete
p512.CFrame = CFrame.new(-117.5, 177.389954, 75.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p512.Size = Vector3.new(12, 44.4000092, 2)
p512.BottomSurface = Enum.SurfaceType.Weld
p512.TopSurface = Enum.SurfaceType.Weld
d18 = Instance.new("Decal", p512)
d18.Texture = "http://www.roblox.com/asset/?id=13909913"
d18.Face = Enum.NormalId.Front
p513 = Instance.new("Part", m45)
p513.BrickColor = BrickColor.new("Br. yellowish orange")
p513.Material = Enum.Material.Concrete
p513.CFrame = CFrame.new(-170.5, 177.389954, 80.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p513.Size = Vector3.new(12, 44.4000092, 2)
p513.BottomSurface = Enum.SurfaceType.Weld
p513.TopSurface = Enum.SurfaceType.Weld
d19 = Instance.new("Decal", p513)
d19.Texture = "http://www.roblox.com/asset/?id=13909913"
d19.Face = Enum.NormalId.Front
p514 = Instance.new("Part", m45)
p514.BrickColor = BrickColor.new("Br. yellowish orange")
p514.Material = Enum.Material.Concrete
p514.CFrame = CFrame.new(-170.5, 177.389954, 128.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p514.Size = Vector3.new(12, 44.4000092, 2)
p514.BottomSurface = Enum.SurfaceType.Weld
p514.TopSurface = Enum.SurfaceType.Weld
d20 = Instance.new("Decal", p514)
d20.Texture = "http://www.roblox.com/asset/?id=13909913"
d20.Face = Enum.NormalId.Front
p515 = Instance.new("Part", m45)
p515.BrickColor = BrickColor.new("Br. yellowish orange")
p515.Material = Enum.Material.Concrete
p515.Name = "Clockface"
p515.CFrame = CFrame.new(-171, 182.189957, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p515.Size = Vector3.new(36, 34.7999992, 3)
p515.BottomSurface = Enum.SurfaceType.Smooth
p515.TopSurface = Enum.SurfaceType.Smooth
d21 = Instance.new("Decal", p515)
d21.Texture = "http://www.roblox.com/asset/?id=13909778"
d21.Face = Enum.NormalId.Front
d22 = Instance.new("Decal", p515)
d22.Texture = "http://www.roblox.com/asset/?id=13909778"
d22.Face = Enum.NormalId.Back
x4 = Instance.new("PointLight", p515)
x4.Brightness = 10
x4.Range = 30
p516 = Instance.new("Part", m45)
p516.BrickColor = BrickColor.new("Br. yellowish orange")
p516.Material = Enum.Material.Concrete
p516.CFrame = CFrame.new(-170.5, 159.98996, 104.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p516.Size = Vector3.new(36, 9.59999466, 2)
p516.BottomSurface = Enum.SurfaceType.Weld
p516.TopSurface = Enum.SurfaceType.Weld
d23 = Instance.new("Decal", p516)
d23.Texture = "http://www.roblox.com/asset/?id=13910060"
d23.Face = Enum.NormalId.Front
p517 = Instance.new("Part", m45)
p517.BrickColor = BrickColor.new("Br. yellowish orange")
p517.Material = Enum.Material.Concrete
p517.Name = "Clockface"
p517.CFrame = CFrame.new(-141.5, 182.189957, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p517.Size = Vector3.new(36, 34.7999992, 3)
p517.BottomSurface = Enum.SurfaceType.Smooth
p517.TopSurface = Enum.SurfaceType.Smooth
d24 = Instance.new("Decal", p517)
d24.Texture = "http://www.roblox.com/asset/?id=13909778"
d24.Face = Enum.NormalId.Front
d25 = Instance.new("Decal", p517)
d25.Texture = "http://www.roblox.com/asset/?id=13909778"
d25.Face = Enum.NormalId.Back
x5 = Instance.new("PointLight", p517)
x5.Brightness = 10
x5.Range = 30
p518 = Instance.new("Part", m45)
p518.BrickColor = BrickColor.new("Br. yellowish orange")
p518.Material = Enum.Material.Concrete
p518.CFrame = CFrame.new(-117.5, 177.389954, 133.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p518.Size = Vector3.new(12, 44.4000092, 2)
p518.BottomSurface = Enum.SurfaceType.Weld
p518.TopSurface = Enum.SurfaceType.Weld
d26 = Instance.new("Decal", p518)
d26.Texture = "http://www.roblox.com/asset/?id=13909913"
d26.Face = Enum.NormalId.Front
p519 = Instance.new("Part", m45)
p519.BrickColor = BrickColor.new("Br. yellowish orange")
p519.Material = Enum.Material.Concrete
p519.CFrame = CFrame.new(-165.5, 177.389954, 133.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p519.Size = Vector3.new(12, 44.4000092, 2)
p519.BottomSurface = Enum.SurfaceType.Weld
p519.TopSurface = Enum.SurfaceType.Weld
d27 = Instance.new("Decal", p519)
d27.Texture = "http://www.roblox.com/asset/?id=13909913"
d27.Face = Enum.NormalId.Front
p520 = Instance.new("Part", m45)
p520.BrickColor = BrickColor.new("Br. yellowish orange")
p520.Material = Enum.Material.Concrete
p520.CFrame = CFrame.new(-141.5, 159.98996, 133.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p520.Size = Vector3.new(36, 9.59999466, 2)
p520.BottomSurface = Enum.SurfaceType.Weld
p520.TopSurface = Enum.SurfaceType.Weld
d28 = Instance.new("Decal", p520)
d28.Texture = "http://www.roblox.com/asset/?id=13910060"
d28.Face = Enum.NormalId.Front
p521 = Instance.new("Part", m46)
p521.BrickColor = BrickColor.new("Bright yellow")
p521.Reflectance = 0.5
p521.Name = "H7"
p521.CFrame = CFrame.new(-160, 181.389954, 135.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p521.Size = Vector3.new(3, 51.6000175, 3)
p521.BottomSurface = Enum.SurfaceType.Smooth
p521.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("CylinderMesh", p521)
b1.Name = "Mesh"
p522 = Instance.new("Part", m46)
p522.BrickColor = BrickColor.new("Bright yellow")
p522.Reflectance = 0.5
p522.Name = "H1"
p522.CFrame = CFrame.new(-123, 181.389954, 135.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p522.Size = Vector3.new(3, 51.6000175, 3)
p522.BottomSurface = Enum.SurfaceType.Smooth
p522.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("CylinderMesh", p522)
b2.Name = "Mesh"
p523 = Instance.new("Part", m46)
p523.BrickColor = BrickColor.new("Bright yellow")
p523.Reflectance = 0.5
p523.Name = "H2"
p523.CFrame = CFrame.new(-111.5, 181.789948, 85.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p523.Size = Vector3.new(3, 51.6000175, 3)
p523.BottomSurface = Enum.SurfaceType.Smooth
p523.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("CylinderMesh", p523)
b3.Name = "Mesh"
p524 = Instance.new("Part", m46)
p524.BrickColor = BrickColor.new("Bright yellow")
p524.Reflectance = 0.5
p524.Name = "H6"
p524.CFrame = CFrame.new(-111.5, 181.789948, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p524.Size = Vector3.new(3, 51.6000175, 3)
p524.BackSurface = Enum.SurfaceType.Weld
p524.BottomSurface = Enum.SurfaceType.Smooth
p524.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("CylinderMesh", p524)
b4.Name = "Mesh"
p525 = Instance.new("Part", m46)
p525.BrickColor = BrickColor.new("Bright yellow")
p525.Reflectance = 0.5
p525.Name = "H3"
p525.CFrame = CFrame.new(-160, 181.789948, 74.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p525.Size = Vector3.new(3, 51.6000175, 3)
p525.BottomSurface = Enum.SurfaceType.Smooth
p525.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("CylinderMesh", p525)
b5.Name = "Mesh"
p526 = Instance.new("Part", m46)
p526.BrickColor = BrickColor.new("Bright yellow")
p526.Reflectance = 0.5
p526.Name = "H5"
p526.CFrame = CFrame.new(-123, 181.789948, 74.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p526.Size = Vector3.new(3, 51.6000175, 3)
p526.BottomSurface = Enum.SurfaceType.Smooth
p526.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("CylinderMesh", p526)
b6.Name = "Mesh"
p527 = Instance.new("Part", m46)
p527.BrickColor = BrickColor.new("Bright yellow")
p527.Reflectance = 0.5
p527.Name = "H4"
p527.CFrame = CFrame.new(-172.5, 181.789948, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p527.Size = Vector3.new(3, 51.6000175, 3)
p527.BottomSurface = Enum.SurfaceType.Smooth
p527.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("CylinderMesh", p527)
b7.Name = "Mesh"
p528 = Instance.new("Part", m46)
p528.BrickColor = BrickColor.new("Bright yellow")
p528.Reflectance = 0.5
p528.Name = "H8"
p528.CFrame = CFrame.new(-172.5, 181.789948, 85.5000153, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p528.Size = Vector3.new(3, 51.6000175, 3)
p528.BottomSurface = Enum.SurfaceType.Smooth
p528.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("CylinderMesh", p528)
b8.Name = "Mesh"
p529 = Instance.new("Part", m46)
p529.BrickColor = BrickColor.new("Br. yellowish orange")
p529.Material = Enum.Material.Slate
p529.CFrame = CFrame.new(-141.5, 155.389954, 73.5000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p529.Size = Vector3.new(40, 1.20000005, 2)
p529.BackSurface = Enum.SurfaceType.Weld
p529.BottomSurface = Enum.SurfaceType.Smooth
p529.TopSurface = Enum.SurfaceType.Weld
p530 = Instance.new("Part", m46)
p530.BrickColor = BrickColor.new("Br. yellowish orange")
p530.Material = Enum.Material.Slate
p530.CFrame = CFrame.new(-172.5, 155.389954, 103.900017, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p530.Size = Vector3.new(40, 1.20000005, 2)
p530.BackSurface = Enum.SurfaceType.Weld
p530.BottomSurface = Enum.SurfaceType.Smooth
p530.TopSurface = Enum.SurfaceType.Weld
p531 = Instance.new("Part", m46)
p531.BrickColor = BrickColor.new("Br. yellowish orange")
p531.Material = Enum.Material.Slate
p531.CFrame = CFrame.new(-141.5, 154.889954, 135.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p531.FormFactor = Enum.FormFactor.Custom
p531.Size = Vector3.new(40, 1.4000001, 2)
p531.BackSurface = Enum.SurfaceType.Weld
p531.BottomSurface = Enum.SurfaceType.Smooth
p531.TopSurface = Enum.SurfaceType.Weld
p532 = Instance.new("Part", m46)
p532.BrickColor = BrickColor.new("Br. yellowish orange")
p532.Material = Enum.Material.Slate
p532.CFrame = CFrame.new(-110.5, 155.389954, 104.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p532.FormFactor = Enum.FormFactor.Custom
p532.Size = Vector3.new(41, 1.20000005, 2)
p532.BackSurface = Enum.SurfaceType.Weld
p532.BottomSurface = Enum.SurfaceType.Smooth
p532.TopSurface = Enum.SurfaceType.Weld
p533 = Instance.new("Part", m47)
p533.BrickColor = BrickColor.new("Brown")
p533.Name = "Bell"
p533.CFrame = CFrame.new(-135.5, 187.889984, 117.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p533.FormFactor = Enum.FormFactor.Symmetric
p533.Size = Vector3.new(4, 5, 4)
p533.BottomSurface = Enum.SurfaceType.Smooth
p533.TopSurface = Enum.SurfaceType.Weld
b9 = Instance.new("SpecialMesh", p533)
b9.MeshId = "http://www.roblox.com/asset/?id=17981521"
b9.TextureId = "http://www.roblox.com/asset/?id=17981503"
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(5, 5, 5)
x6 = Instance.new("Sound", p533)
x6.Name = "Bell"
x6.Pitch = 1
x6.SoundId = "http://www.roblox.com/asset/?id=2703110"
x6.Volume = 1
x6.Looped = false
x6.PlayOnRemove = false
x7 = Instance.new("ClickDetector", p533)
x7.MaxActivationDistance = 50
s1 = script:clone()
s1.Name = "Script"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRun"
so1.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s1.Parent = p533
p534 = Instance.new("Part", m47)
p534.BrickColor = BrickColor.new("Brown")
p534.Name = "Bell"
p534.CFrame = CFrame.new(-141.5, 187.889984, 117.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p534.FormFactor = Enum.FormFactor.Symmetric
p534.Size = Vector3.new(4, 5, 4)
p534.BottomSurface = Enum.SurfaceType.Smooth
p534.TopSurface = Enum.SurfaceType.Weld
b10 = Instance.new("SpecialMesh", p534)
b10.MeshId = "http://www.roblox.com/asset/?id=17981521"
b10.TextureId = "http://www.roblox.com/asset/?id=17981503"
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(5, 5, 5)
x8 = Instance.new("Sound", p534)
x8.Name = "Bell"
x8.Pitch = 1
x8.SoundId = "http://www.roblox.com/asset/?id=2703110"
x8.Volume = 1
x8.Looped = false
x8.PlayOnRemove = false
x9 = Instance.new("ClickDetector", p534)
x9.MaxActivationDistance = 50
s2 = script:clone()
s2.Name = "Script"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s2.Parent = p534
p535 = Instance.new("Part", m47)
p535.BrickColor = BrickColor.new("Medium stone grey")
p535.Name = "Bell Mesh"
p535.CFrame = CFrame.new(-149.5, 186.789978, 117.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p535.Size = Vector3.new(6, 7.20000029, 6)
p535.BottomSurface = Enum.SurfaceType.Smooth
p535.TopSurface = Enum.SurfaceType.Weld
b11 = Instance.new("SpecialMesh", p535)
b11.MeshId = "http://www.roblox.com/asset/?id=17981521"
b11.TextureId = "http://www.roblox.com/asset/?id=17981503"
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(7.5, 7.5, 7.5)
x10 = Instance.new("Sound", p535)
x10.Name = "Bell"
x10.Pitch = 1
x10.SoundId = "http://www.roblox.com/asset/?id=2703110"
x10.Volume = 1
x10.Looped = false
x10.PlayOnRemove = false
x11 = Instance.new("ClickDetector", p535)
x11.MaxActivationDistance = 50
s3 = script:clone()
s3.Name = "Script"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRun"
so3.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s3.Parent = p535
p536 = Instance.new("Part", m47)
p536.BrickColor = BrickColor.new("Medium stone grey")
p536.Name = "Bell Mesh"
p536.CFrame = CFrame.new(-126.5, 186.789978, 117.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p536.Size = Vector3.new(6, 7.20000029, 6)
p536.BottomSurface = Enum.SurfaceType.Smooth
p536.TopSurface = Enum.SurfaceType.Weld
b12 = Instance.new("SpecialMesh", p536)
b12.MeshId = "http://www.roblox.com/asset/?id=17981521"
b12.TextureId = "http://www.roblox.com/asset/?id=17981503"
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(7.5, 7.5, 7.5)
x12 = Instance.new("Sound", p536)
x12.Name = "Bell"
x12.Pitch = 1
x12.SoundId = "http://www.roblox.com/asset/?id=2703110"
x12.Volume = 1
x12.Looped = false
x12.PlayOnRemove = false
x13 = Instance.new("ClickDetector", p536)
x13.MaxActivationDistance = 50
s4 = script:clone()
s4.Name = "Script"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s4.Parent = p536
p537 = Instance.new("Part", m47)
p537.BrickColor = BrickColor.new("Br. yellowish orange")
p537.Material = Enum.Material.Wood
p537.CFrame = CFrame.new(-141.5, 191.589981, 117.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p537.Size = Vector3.new(56, 2.4000001, 2)
p537.BottomSurface = Enum.SurfaceType.Smooth
p537.LeftSurface = Enum.SurfaceType.Hinge
p537.RightSurface = Enum.SurfaceType.Hinge
p537.TopSurface = Enum.SurfaceType.Smooth
p538 = Instance.new("Part", m48)
p538.BrickColor = BrickColor.new("Brown")
p538.Name = "Bell"
p538.CFrame = CFrame.new(-135.5, 178.289963, 104.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p538.FormFactor = Enum.FormFactor.Symmetric
p538.Size = Vector3.new(4, 5, 4)
p538.BottomSurface = Enum.SurfaceType.Smooth
p538.TopSurface = Enum.SurfaceType.Weld
b13 = Instance.new("SpecialMesh", p538)
b13.MeshId = "http://www.roblox.com/asset/?id=17981521"
b13.TextureId = "http://www.roblox.com/asset/?id=17981503"
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(5, 5, 5)
x14 = Instance.new("Sound", p538)
x14.Name = "Bell"
x14.Pitch = 1
x14.SoundId = "http://www.roblox.com/asset/?id=2703110"
x14.Volume = 1
x14.Looped = false
x14.PlayOnRemove = false
x15 = Instance.new("ClickDetector", p538)
x15.MaxActivationDistance = 50
s5 = script:clone()
s5.Name = "Script"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s5.Parent = p538
p539 = Instance.new("Part", m48)
p539.BrickColor = BrickColor.new("Brown")
p539.Name = "Bell"
p539.CFrame = CFrame.new(-141.5, 178.289963, 104.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p539.FormFactor = Enum.FormFactor.Symmetric
p539.Size = Vector3.new(4, 5, 4)
p539.BottomSurface = Enum.SurfaceType.Smooth
p539.TopSurface = Enum.SurfaceType.Weld
b14 = Instance.new("SpecialMesh", p539)
b14.MeshId = "http://www.roblox.com/asset/?id=17981521"
b14.TextureId = "http://www.roblox.com/asset/?id=17981503"
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(5, 5, 5)
x16 = Instance.new("Sound", p539)
x16.Name = "Bell"
x16.Pitch = 1
x16.SoundId = "http://www.roblox.com/asset/?id=2703110"
x16.Volume = 1
x16.Looped = false
x16.PlayOnRemove = false
x17 = Instance.new("ClickDetector", p539)
x17.MaxActivationDistance = 50
s6 = script:clone()
s6.Name = "Script"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRun"
so6.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s6.Parent = p539
p540 = Instance.new("Part", m48)
p540.BrickColor = BrickColor.new("Medium stone grey")
p540.Name = "Bell Mesh"
p540.CFrame = CFrame.new(-149.5, 177.189957, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p540.Size = Vector3.new(6, 7.20000029, 6)
p540.BottomSurface = Enum.SurfaceType.Smooth
p540.TopSurface = Enum.SurfaceType.Weld
b15 = Instance.new("SpecialMesh", p540)
b15.MeshId = "http://www.roblox.com/asset/?id=17981521"
b15.TextureId = "http://www.roblox.com/asset/?id=17981503"
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(7.5, 7.5, 7.5)
x18 = Instance.new("Sound", p540)
x18.Name = "Bell"
x18.Pitch = 1
x18.SoundId = "http://www.roblox.com/asset/?id=2703110"
x18.Volume = 1
x18.Looped = false
x18.PlayOnRemove = false
x19 = Instance.new("ClickDetector", p540)
x19.MaxActivationDistance = 50
s7 = script:clone()
s7.Name = "Script"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRun"
so7.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s7.Parent = p540
p541 = Instance.new("Part", m48)
p541.BrickColor = BrickColor.new("Medium stone grey")
p541.Name = "Bell Mesh"
p541.CFrame = CFrame.new(-126.5, 177.189957, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p541.Size = Vector3.new(6, 7.20000029, 6)
p541.BottomSurface = Enum.SurfaceType.Smooth
p541.TopSurface = Enum.SurfaceType.Weld
b16 = Instance.new("SpecialMesh", p541)
b16.MeshId = "http://www.roblox.com/asset/?id=17981521"
b16.TextureId = "http://www.roblox.com/asset/?id=17981503"
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(7.5, 7.5, 7.5)
x20 = Instance.new("Sound", p541)
x20.Name = "Bell"
x20.Pitch = 1
x20.SoundId = "http://www.roblox.com/asset/?id=2703110"
x20.Volume = 1
x20.Looped = false
x20.PlayOnRemove = false
x21 = Instance.new("ClickDetector", p541)
x21.MaxActivationDistance = 50
s8 = script:clone()
s8.Name = "Script"
s8.Disabled = false
so8 = Instance.new("StringValue", s8)
so8.Name = "forCustomRun"
so8.Value = [===[
local _G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16=_G,_VERSION,assert,collectgarbage,dofile,error,getfenv,getmetatable,ipairs,load,loadfile,loadstring,next,pairs,pcall,print,rawequal,rawget,rawset,select,setfenv,setmetatable,tonumber,tostring,type,unpack,xpcall,coroutine,math,string,table,game,Game,workspace,Workspace,delay,Delay,LoadLibrary,printidentity,Spawn,tick,time,version,Version,Wait,wait,PluginManager,crash__,LoadRobloxLibrary,settings,Stats,stats,UserSettings,Enum,Color3,BrickColor,Vector2,Vector3,Vector3int16,CFrame,UDim,UDim2,Ray,Axes,Faces,Instance,Region3,Region3int16
math.randomseed(tick())


-- Variables --
local Players = Game:GetService('Players')
local StarterPack = Game:GetService('StarterPack')
local StarterGui = Game:GetService('StarterGui')
local Lighting = Game:GetService('Lighting')
local Debris = Game:GetService('Debris')
local Teams = Game:GetService('Teams')
local BadgeService = Game:GetService('BadgeService')
local InsertService = Game:GetService('InsertService')
local Terrain = Workspace.Terrain

--local RbxGui = assert(LoadLibrary('RbxGui'))
--local RbxUtility = assert(LoadLibrary('RbxUtility'))
--local RbxStatus = assert(LoadLibrary('RbxStatus'))
--local RbxGear = assert(LoadLibrary('RbxGear'))
--local RbxStamper = assert(LoadLibrary('RbxStamper'))

-- Functions --
local function Modify(instance, t)
	for key, value in next, t do
		if type(key) == 'number' then
			value.Parent = instance 
		else
			instance[key] = value
		end
	end
	return instance
end




local function WaitForChild(Parent, Name)
	local Item = Parent:FindFirstChild(Name)
	if not Item then
		repeat wait(0) print("Waiting for "..Name) Item = Parent:FindFirstChild(Name) until Item
	end
	return Item;
end



-- Configure --

local NumberOfRings = 6




------------------
local Sound = WaitForChild(script.Parent, "Bell")
local ClickDetector = WaitForChild(script.Parent, "ClickDetector")
local Debounce
local Top = WaitForChild(script.Parent.Parent, "Top")
local BellModel = script.Parent.Parent

local function GetBricks(Model)
	local Table = {}
	local function FindParts(TheModel)
		for _, b in pairs(TheModel:GetChildren()) do
			if b:IsA("BasePart") then
				table.insert(Table, b)
			end
			FindParts(b)
		end
	end
	FindParts(Model)
	return Table;
end

local function MoveModel(Model, NewCFrame, Center)
	local ModelCenter = Center or Model:GetModelCFrame()
	for _, b in pairs(GetBricks(Model)) do
		b.CFrame = (ModelCenter:inverse() * NewCFrame) * b.CFrame
	end
end


function TransformModel(objects, center, new, recurse)
	for _,object in pairs(objects) do
		if object:IsA("BasePart") then
			object.CFrame = new:toWorldSpace(center:toObjectSpace(object.CFrame))
		end
		if recurse then
			TransformModel(object:GetChildren(), center, new, true)
		end
	end
end


ClickDetector.MouseClick:connect(function()
	if not Debounce then
		Debounce = true

		local Bricks = GetBricks(BellModel)
		local OldCFrame = Top.CFrame

		Spawn(function()
			for i=0, NumberOfRings do
				--local StartTime = tick()
				Spawn(function()
					local Music = Sound:Clone()
					Music.Parent = script.Parent
					Music:Play()
					wait(5)
					Music:Destroy()
				end)
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end
				for i=0, 40.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(2), 0, 0))
					wait(1/30)
				end
				for i=0, 20.1, 2 do
					TransformModel(Bricks, Top.CFrame, Top.CFrame * CFrame.Angles(math.rad(-2), 0, 0))
					wait(1/30)
				end	
				TransformModel(Bricks, Top.CFrame, OldCFrame)
				--print(tick() - StartTime)
			end
		end)

		--[[for i=0, NumberOfRings do
			Spawn(function()
				local Music = Sound:Clone()
				Music.Parent = script.Parent
				Music:Play()
				wait(5)
				Music:Destroy()
			end)
			wait(1.5)
		end--]]

		Debounce = false
	end
end)



-- Produced by Quenty

]===]
s8.Parent = p541
p542 = Instance.new("Part", m48)
p542.BrickColor = BrickColor.new("Br. yellowish orange")
p542.Material = Enum.Material.Wood
p542.CFrame = CFrame.new(-141.5, 181.98996, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p542.Size = Vector3.new(56, 2.4000001, 2)
p542.BottomSurface = Enum.SurfaceType.Smooth
p542.LeftSurface = Enum.SurfaceType.Hinge
p542.RightSurface = Enum.SurfaceType.Hinge
p542.TopSurface = Enum.SurfaceType.Smooth
p543 = Instance.new("Part", m50)
p543.BrickColor = BrickColor.new("Br. yellowish orange")
p543.Material = Enum.Material.Slate
p543.Name = "Cone"
p543.CFrame = CFrame.new(-113.5, 219.389954, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p543.Size = Vector3.new(1, 1.20000005, 1)
p543.BottomSurface = Enum.SurfaceType.Weld
p543.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p543)
b17.MeshId = "http://www.roblox.com/asset/?id=1033714"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.5, 1.60000002, 0.5)
p544 = Instance.new("Part", m50)
p544.BrickColor = BrickColor.new("Br. yellowish orange")
p544.Material = Enum.Material.Slate
p544.CFrame = CFrame.new(-113.5, 201.189941, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p544.Size = Vector3.new(4, 2.4000001, 4)
p544.BottomSurface = Enum.SurfaceType.Weld
p544.TopSurface = Enum.SurfaceType.Smooth
p545 = Instance.new("Part", m50)
p545.BrickColor = BrickColor.new("Br. yellowish orange")
p545.Material = Enum.Material.Slate
p545.CFrame = CFrame.new(-113.5, 202.589935, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p545.FormFactor = Enum.FormFactor.Custom
p545.Size = Vector3.new(4.79999924, 0.400000006, 4.79999924)
p545.BottomSurface = Enum.SurfaceType.Weld
p545.TopSurface = Enum.SurfaceType.Smooth
p546 = Instance.new("Part", m50)
p546.BrickColor = BrickColor.new("Br. yellowish orange")
p546.Material = Enum.Material.Slate
p546.CFrame = CFrame.new(-113.5, 213.789948, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p546.FormFactor = Enum.FormFactor.Custom
p546.Size = Vector3.new(2, 0.400000006, 2)
p546.BottomSurface = Enum.SurfaceType.Weld
p546.TopSurface = Enum.SurfaceType.Smooth
p547 = Instance.new("Part", m50)
p547.BrickColor = BrickColor.new("Br. yellowish orange")
p547.Material = Enum.Material.Slate
p547.CFrame = CFrame.new(-113.5, 208.189941, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p547.Size = Vector3.new(2, 10.8000002, 2)
p547.BottomSurface = Enum.SurfaceType.Weld
p547.TopSurface = Enum.SurfaceType.Smooth
p548 = Instance.new("Part", m50)
p548.BrickColor = BrickColor.new("Br. yellowish orange")
p548.Material = Enum.Material.Slate
p548.CFrame = CFrame.new(-113.5, 216.389954, 76.5000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p548.Size = Vector3.new(1, 4.80000019, 1)
p548.BottomSurface = Enum.SurfaceType.Weld
p548.TopSurface = Enum.SurfaceType.Smooth
p549 = Instance.new("Part", m51)
p549.BrickColor = BrickColor.new("Br. yellowish orange")
p549.Material = Enum.Material.Slate
p549.CFrame = CFrame.new(-112.099998, 201.189941, 129.100021, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p549.Size = Vector3.new(1, 2.4000001, 1)
p549.BottomSurface = Enum.SurfaceType.Weld
p549.TopSurface = Enum.SurfaceType.Weld
p550 = Instance.new("Part", m51)
p550.BrickColor = BrickColor.new("Br. yellowish orange")
p550.Material = Enum.Material.Slate
p550.CFrame = CFrame.new(-112.099998, 201.189941, 127.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p550.Size = Vector3.new(1, 2.4000001, 1)
p550.BottomSurface = Enum.SurfaceType.Weld
p550.TopSurface = Enum.SurfaceType.Weld
p551 = Instance.new("Part", m51)
p551.BrickColor = BrickColor.new("Br. yellowish orange")
p551.Material = Enum.Material.Slate
p551.CFrame = CFrame.new(-112.099998, 201.189941, 125.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p551.Size = Vector3.new(1, 2.4000001, 1)
p551.BottomSurface = Enum.SurfaceType.Weld
p551.TopSurface = Enum.SurfaceType.Weld
p552 = Instance.new("Part", m51)
p552.BrickColor = BrickColor.new("Br. yellowish orange")
p552.Material = Enum.Material.Slate
p552.CFrame = CFrame.new(-112.099998, 201.189941, 121.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p552.Size = Vector3.new(1, 2.4000001, 1)
p552.BottomSurface = Enum.SurfaceType.Weld
p552.TopSurface = Enum.SurfaceType.Weld
p553 = Instance.new("Part", m51)
p553.BrickColor = BrickColor.new("Br. yellowish orange")
p553.Material = Enum.Material.Slate
p553.CFrame = CFrame.new(-112.099998, 201.189941, 119.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p553.Size = Vector3.new(1, 2.4000001, 1)
p553.BottomSurface = Enum.SurfaceType.Weld
p553.TopSurface = Enum.SurfaceType.Weld
p554 = Instance.new("Part", m51)
p554.BrickColor = BrickColor.new("Br. yellowish orange")
p554.Material = Enum.Material.Slate
p554.CFrame = CFrame.new(-112.099998, 201.189941, 117.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p554.Size = Vector3.new(1, 2.4000001, 1)
p554.BottomSurface = Enum.SurfaceType.Weld
p554.TopSurface = Enum.SurfaceType.Weld
p555 = Instance.new("Part", m51)
p555.BrickColor = BrickColor.new("Br. yellowish orange")
p555.Material = Enum.Material.Slate
p555.CFrame = CFrame.new(-112.099998, 201.189941, 115.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p555.Size = Vector3.new(1, 2.4000001, 1)
p555.BottomSurface = Enum.SurfaceType.Weld
p555.TopSurface = Enum.SurfaceType.Weld
p556 = Instance.new("Part", m51)
p556.BrickColor = BrickColor.new("Br. yellowish orange")
p556.Material = Enum.Material.Slate
p556.CFrame = CFrame.new(-112.099998, 201.189941, 113.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p556.Size = Vector3.new(1, 2.4000001, 1)
p556.BottomSurface = Enum.SurfaceType.Weld
p556.TopSurface = Enum.SurfaceType.Weld
p557 = Instance.new("Part", m51)
p557.BrickColor = BrickColor.new("Br. yellowish orange")
p557.Material = Enum.Material.Slate
p557.CFrame = CFrame.new(-112.099998, 201.189941, 111.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p557.Size = Vector3.new(1, 2.4000001, 1)
p557.BottomSurface = Enum.SurfaceType.Weld
p557.TopSurface = Enum.SurfaceType.Weld
p558 = Instance.new("Part", m51)
p558.BrickColor = BrickColor.new("Br. yellowish orange")
p558.Material = Enum.Material.Slate
p558.CFrame = CFrame.new(-112.099998, 201.189941, 109.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p558.Size = Vector3.new(1, 2.4000001, 1)
p558.BottomSurface = Enum.SurfaceType.Weld
p558.TopSurface = Enum.SurfaceType.Weld
p559 = Instance.new("Part", m51)
p559.BrickColor = BrickColor.new("Br. yellowish orange")
p559.Material = Enum.Material.Slate
p559.CFrame = CFrame.new(-112.099998, 201.189941, 107.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p559.Size = Vector3.new(1, 2.4000001, 1)
p559.BottomSurface = Enum.SurfaceType.Weld
p559.TopSurface = Enum.SurfaceType.Weld
p560 = Instance.new("Part", m51)
p560.BrickColor = BrickColor.new("Br. yellowish orange")
p560.Material = Enum.Material.Slate
p560.CFrame = CFrame.new(-112.099998, 201.189941, 105.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p560.Size = Vector3.new(1, 2.4000001, 1)
p560.BottomSurface = Enum.SurfaceType.Weld
p560.TopSurface = Enum.SurfaceType.Weld
p561 = Instance.new("Part", m51)
p561.BrickColor = BrickColor.new("Br. yellowish orange")
p561.Material = Enum.Material.Slate
p561.CFrame = CFrame.new(-112.099998, 201.189941, 103.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p561.Size = Vector3.new(1, 2.4000001, 1)
p561.BottomSurface = Enum.SurfaceType.Weld
p561.TopSurface = Enum.SurfaceType.Weld
p562 = Instance.new("Part", m51)
p562.BrickColor = BrickColor.new("Br. yellowish orange")
p562.Material = Enum.Material.Slate
p562.CFrame = CFrame.new(-112.099998, 201.189941, 101.100014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p562.Size = Vector3.new(1, 2.4000001, 1)
p562.BottomSurface = Enum.SurfaceType.Weld
p562.TopSurface = Enum.SurfaceType.Weld
p563 = Instance.new("Part", m51)
p563.BrickColor = BrickColor.new("Br. yellowish orange")
p563.Material = Enum.Material.Slate
p563.CFrame = CFrame.new(-112.099998, 201.189941, 99.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p563.Size = Vector3.new(1, 2.4000001, 1)
p563.BottomSurface = Enum.SurfaceType.Weld
p563.TopSurface = Enum.SurfaceType.Weld
p564 = Instance.new("Part", m51)
p564.BrickColor = BrickColor.new("Br. yellowish orange")
p564.Material = Enum.Material.Slate
p564.CFrame = CFrame.new(-112.099998, 201.189941, 97.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p564.Size = Vector3.new(1, 2.4000001, 1)
p564.BottomSurface = Enum.SurfaceType.Weld
p564.TopSurface = Enum.SurfaceType.Weld
p565 = Instance.new("Part", m51)
p565.BrickColor = BrickColor.new("Br. yellowish orange")
p565.Material = Enum.Material.Slate
p565.CFrame = CFrame.new(-112.099998, 201.189941, 95.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p565.Size = Vector3.new(1, 2.4000001, 1)
p565.BottomSurface = Enum.SurfaceType.Weld
p565.TopSurface = Enum.SurfaceType.Weld
p566 = Instance.new("Part", m51)
p566.BrickColor = BrickColor.new("Br. yellowish orange")
p566.Material = Enum.Material.Slate
p566.CFrame = CFrame.new(-112.099998, 201.189941, 93.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p566.Size = Vector3.new(1, 2.4000001, 1)
p566.BottomSurface = Enum.SurfaceType.Weld
p566.TopSurface = Enum.SurfaceType.Weld
p567 = Instance.new("Part", m51)
p567.BrickColor = BrickColor.new("Br. yellowish orange")
p567.Material = Enum.Material.Slate
p567.CFrame = CFrame.new(-112.099998, 201.189941, 91.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p567.Size = Vector3.new(1, 2.4000001, 1)
p567.BottomSurface = Enum.SurfaceType.Weld
p567.TopSurface = Enum.SurfaceType.Weld
p568 = Instance.new("Part", m51)
p568.BrickColor = BrickColor.new("Br. yellowish orange")
p568.Material = Enum.Material.Slate
p568.CFrame = CFrame.new(-112.099998, 201.189941, 89.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p568.Size = Vector3.new(1, 2.4000001, 1)
p568.BottomSurface = Enum.SurfaceType.Weld
p568.TopSurface = Enum.SurfaceType.Weld
p569 = Instance.new("Part", m51)
p569.BrickColor = BrickColor.new("Br. yellowish orange")
p569.Material = Enum.Material.Slate
p569.CFrame = CFrame.new(-112.099998, 201.189941, 84.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p569.Size = Vector3.new(1, 2.4000001, 1)
p569.BottomSurface = Enum.SurfaceType.Weld
p569.TopSurface = Enum.SurfaceType.Weld
p570 = Instance.new("Part", m51)
p570.BrickColor = BrickColor.new("Br. yellowish orange")
p570.Material = Enum.Material.Slate
p570.CFrame = CFrame.new(-112.099998, 201.189941, 82.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p570.Size = Vector3.new(1, 2.4000001, 1)
p570.BottomSurface = Enum.SurfaceType.Weld
p570.TopSurface = Enum.SurfaceType.Weld
p571 = Instance.new("Part", m51)
p571.BrickColor = BrickColor.new("Br. yellowish orange")
p571.Material = Enum.Material.Slate
p571.CFrame = CFrame.new(-112.099998, 201.189941, 80.1000137, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p571.Size = Vector3.new(1, 2.4000001, 1)
p571.BottomSurface = Enum.SurfaceType.Weld
p571.TopSurface = Enum.SurfaceType.Weld
p572 = Instance.new("Part", m51)
p572.BrickColor = BrickColor.new("Br. yellowish orange")
p572.Material = Enum.Material.Slate
p572.CFrame = CFrame.new(-112.099998, 202.589935, 104.600014, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p572.FormFactor = Enum.FormFactor.Plate
p572.Size = Vector3.new(52, 0.400000006, 1)
p572.BottomSurface = Enum.SurfaceType.Smooth
p572.TopSurface = Enum.SurfaceType.Smooth
p573 = Instance.new("Part", m52)
p573.BrickColor = BrickColor.new("Br. yellowish orange")
p573.Material = Enum.Material.Slate
p573.Name = "Cone"
p573.CFrame = CFrame.new(-113.5, 219.389954, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p573.Size = Vector3.new(1, 1.20000005, 1)
p573.BottomSurface = Enum.SurfaceType.Weld
p573.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p573)
b18.MeshId = "http://www.roblox.com/asset/?id=1033714"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.5, 1.60000002, 0.5)
p574 = Instance.new("Part", m52)
p574.BrickColor = BrickColor.new("Br. yellowish orange")
p574.Material = Enum.Material.Slate
p574.CFrame = CFrame.new(-113.5, 201.189941, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p574.Size = Vector3.new(4, 2.4000001, 4)
p574.BottomSurface = Enum.SurfaceType.Weld
p574.TopSurface = Enum.SurfaceType.Smooth
p575 = Instance.new("Part", m52)
p575.BrickColor = BrickColor.new("Br. yellowish orange")
p575.Material = Enum.Material.Slate
p575.CFrame = CFrame.new(-113.5, 202.589935, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p575.FormFactor = Enum.FormFactor.Custom
p575.Size = Vector3.new(4.79999924, 0.400000006, 4.79999924)
p575.BottomSurface = Enum.SurfaceType.Weld
p575.TopSurface = Enum.SurfaceType.Smooth
p576 = Instance.new("Part", m52)
p576.BrickColor = BrickColor.new("Br. yellowish orange")
p576.Material = Enum.Material.Slate
p576.CFrame = CFrame.new(-113.5, 213.789948, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p576.FormFactor = Enum.FormFactor.Custom
p576.Size = Vector3.new(2, 0.400000006, 2)
p576.BottomSurface = Enum.SurfaceType.Weld
p576.TopSurface = Enum.SurfaceType.Smooth
p577 = Instance.new("Part", m52)
p577.BrickColor = BrickColor.new("Br. yellowish orange")
p577.Material = Enum.Material.Slate
p577.CFrame = CFrame.new(-113.5, 208.189941, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p577.Size = Vector3.new(2, 10.8000002, 2)
p577.BottomSurface = Enum.SurfaceType.Weld
p577.TopSurface = Enum.SurfaceType.Smooth
p578 = Instance.new("Part", m52)
p578.BrickColor = BrickColor.new("Br. yellowish orange")
p578.Material = Enum.Material.Slate
p578.CFrame = CFrame.new(-113.5, 216.389954, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p578.Size = Vector3.new(1, 4.80000019, 1)
p578.BottomSurface = Enum.SurfaceType.Weld
p578.TopSurface = Enum.SurfaceType.Smooth
p579 = Instance.new("Part", m53)
p579.BrickColor = BrickColor.new("Reddish brown")
p579.Material = Enum.Material.Slate
p579.CFrame = CFrame.new(-163, 199.789948, 103.500023, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p579.FormFactor = Enum.FormFactor.Plate
p579.Size = Vector3.new(17, 0.400000006, 58)
p579.BottomSurface = Enum.SurfaceType.Smooth
p579.TopSurface = Enum.SurfaceType.Smooth
p580 = Instance.new("Part", m53)
p580.BrickColor = BrickColor.new("Reddish brown")
p580.Material = Enum.Material.Slate
p580.CFrame = CFrame.new(-142.5, 199.789948, 109.000015, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p580.FormFactor = Enum.FormFactor.Plate
p580.Size = Vector3.new(51, 0.400000006, 58)
p580.BottomSurface = Enum.SurfaceType.Smooth
p580.TopSurface = Enum.SurfaceType.Smooth
p581 = Instance.new("Part", m53)
p581.BrickColor = BrickColor.new("Reddish brown")
p581.Material = Enum.Material.Slate
p581.CFrame = CFrame.new(-122, 199.789948, 105.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p581.FormFactor = Enum.FormFactor.Plate
p581.Size = Vector3.new(21, 0.400000006, 58)
p581.BottomSurface = Enum.SurfaceType.Smooth
p581.TopSurface = Enum.SurfaceType.Smooth
p582 = Instance.new("Part", m53)
p582.BrickColor = BrickColor.new("Reddish brown")
p582.Material = Enum.Material.Slate
p582.CFrame = CFrame.new(-140.5, 199.789948, 75.5000229, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p582.FormFactor = Enum.FormFactor.Plate
p582.Size = Vector3.new(2, 0.400000006, 58)
p582.BottomSurface = Enum.SurfaceType.Smooth
p582.TopSurface = Enum.SurfaceType.Smooth
p583 = Instance.new("Part", m54)
p583.BrickColor = BrickColor.new("Br. yellowish orange")
p583.Material = Enum.Material.Slate
p583.CFrame = CFrame.new(-134, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p583.Size = Vector3.new(4, 14.3999987, 1)
p583.BottomSurface = Enum.SurfaceType.Weld
p583.TopSurface = Enum.SurfaceType.Weld
p584 = Instance.new("Part", m54)
p584.BrickColor = BrickColor.new("Br. yellowish orange")
p584.Material = Enum.Material.Slate
p584.CFrame = CFrame.new(-147, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p584.Size = Vector3.new(4, 14.3999987, 1)
p584.BottomSurface = Enum.SurfaceType.Weld
p584.TopSurface = Enum.SurfaceType.Weld
p585 = Instance.new("Part", m54)
p585.BrickColor = BrickColor.new("Br. yellowish orange")
p585.Material = Enum.Material.Slate
p585.CFrame = CFrame.new(-138, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p585.Size = Vector3.new(4, 14.3999987, 1)
p585.BottomSurface = Enum.SurfaceType.Weld
p585.TopSurface = Enum.SurfaceType.Weld
p586 = Instance.new("Part", m54)
p586.BrickColor = BrickColor.new("Earth green")
p586.CFrame = CFrame.new(-140.5, 216.189941, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p586.Size = Vector3.new(40, 3.60000014, 40)
p586.BottomSurface = Enum.SurfaceType.Smooth
p586.TopSurface = Enum.SurfaceType.Smooth
p587 = Instance.new("Part", m54)
p587.BrickColor = BrickColor.new("Br. yellowish orange")
p587.Material = Enum.Material.Slate
p587.CFrame = CFrame.new(-143, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p587.Size = Vector3.new(4, 14.3999987, 1)
p587.BottomSurface = Enum.SurfaceType.Weld
p587.TopSurface = Enum.SurfaceType.Weld
p588 = Instance.new("Part", m54)
p588.BrickColor = BrickColor.new("Br. yellowish orange")
p588.Material = Enum.Material.Slate
p588.CFrame = CFrame.new(-143, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p588.Size = Vector3.new(4, 14.3999987, 1)
p588.BottomSurface = Enum.SurfaceType.Weld
p588.TopSurface = Enum.SurfaceType.Weld
p589 = Instance.new("Part", m54)
p589.BrickColor = BrickColor.new("Br. yellowish orange")
p589.Material = Enum.Material.Slate
p589.CFrame = CFrame.new(-138, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p589.Size = Vector3.new(4, 14.3999987, 1)
p589.BottomSurface = Enum.SurfaceType.Weld
p589.TopSurface = Enum.SurfaceType.Weld
p590 = Instance.new("Part", m54)
p590.BrickColor = BrickColor.new("Br. yellowish orange")
p590.Material = Enum.Material.Slate
p590.CFrame = CFrame.new(-134, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p590.Size = Vector3.new(4, 14.3999987, 1)
p590.BottomSurface = Enum.SurfaceType.Weld
p590.TopSurface = Enum.SurfaceType.Weld
p591 = Instance.new("Part", m54)
p591.BrickColor = BrickColor.new("Br. yellowish orange")
p591.Material = Enum.Material.Slate
p591.CFrame = CFrame.new(-151, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p591.Size = Vector3.new(4, 14.3999987, 1)
p591.BottomSurface = Enum.SurfaceType.Weld
p591.TopSurface = Enum.SurfaceType.Weld
p592 = Instance.new("Part", m54)
p592.BrickColor = BrickColor.new("Br. yellowish orange")
p592.Material = Enum.Material.Slate
p592.CFrame = CFrame.new(-130, 207.189941, 86.5000153, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p592.Size = Vector3.new(4, 14.3999987, 1)
p592.BottomSurface = Enum.SurfaceType.Weld
p592.TopSurface = Enum.SurfaceType.Weld
p593 = Instance.new("Part", m54)
p593.BrickColor = BrickColor.new("Br. yellowish orange")
p593.Material = Enum.Material.Slate
p593.CFrame = CFrame.new(-158.5, 207.189941, 98.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p593.Size = Vector3.new(4, 14.3999987, 1)
p593.BottomSurface = Enum.SurfaceType.Weld
p593.TopSurface = Enum.SurfaceType.Weld
p594 = Instance.new("Part", m54)
p594.BrickColor = BrickColor.new("Br. yellowish orange")
p594.Material = Enum.Material.Slate
p594.CFrame = CFrame.new(-122.5, 207.189941, 111.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p594.Size = Vector3.new(4, 14.3999987, 1)
p594.BottomSurface = Enum.SurfaceType.Weld
p594.TopSurface = Enum.SurfaceType.Weld
p595 = Instance.new("Part", m54)
p595.BrickColor = BrickColor.new("Br. yellowish orange")
p595.Material = Enum.Material.Slate
p595.CFrame = CFrame.new(-122.5, 207.189941, 98.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p595.Size = Vector3.new(4, 14.3999987, 1)
p595.BottomSurface = Enum.SurfaceType.Weld
p595.TopSurface = Enum.SurfaceType.Weld
p596 = Instance.new("Part", m54)
p596.BrickColor = BrickColor.new("Br. yellowish orange")
p596.Material = Enum.Material.Slate
p596.CFrame = CFrame.new(-147, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p596.Size = Vector3.new(4, 14.3999987, 1)
p596.BottomSurface = Enum.SurfaceType.Weld
p596.TopSurface = Enum.SurfaceType.Weld
p597 = Instance.new("Part", m54)
p597.BrickColor = BrickColor.new("Br. yellowish orange")
p597.Material = Enum.Material.Slate
p597.CFrame = CFrame.new(-130, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p597.Size = Vector3.new(4, 14.3999987, 1)
p597.BottomSurface = Enum.SurfaceType.Weld
p597.TopSurface = Enum.SurfaceType.Weld
p598 = Instance.new("Part", m54)
p598.BrickColor = BrickColor.new("Br. yellowish orange")
p598.Material = Enum.Material.Slate
p598.CFrame = CFrame.new(-151, 207.189941, 122.500015, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p598.Size = Vector3.new(4, 14.3999987, 1)
p598.BottomSurface = Enum.SurfaceType.Weld
p598.TopSurface = Enum.SurfaceType.Weld
p599 = Instance.new("Part", m54)
p599.BrickColor = BrickColor.new("Br. yellowish orange")
p599.Material = Enum.Material.Slate
p599.CFrame = CFrame.new(-122.5, 207.189941, 102.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p599.Size = Vector3.new(4, 14.3999987, 1)
p599.BottomSurface = Enum.SurfaceType.Weld
p599.TopSurface = Enum.SurfaceType.Weld
p600 = Instance.new("Part", m54)
p600.BrickColor = BrickColor.new("Br. yellowish orange")
p600.Material = Enum.Material.Slate
p600.CFrame = CFrame.new(-122.5, 207.189941, 107.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p600.Size = Vector3.new(4, 14.3999987, 1)
p600.BottomSurface = Enum.SurfaceType.Weld
p600.TopSurface = Enum.SurfaceType.Weld
p601 = Instance.new("Part", m54)
p601.BrickColor = BrickColor.new("Br. yellowish orange")
p601.Material = Enum.Material.Slate
p601.CFrame = CFrame.new(-158.5, 207.189941, 111.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p601.Size = Vector3.new(4, 14.3999987, 1)
p601.BottomSurface = Enum.SurfaceType.Weld
p601.TopSurface = Enum.SurfaceType.Weld
p602 = Instance.new("Part", m54)
p602.BrickColor = BrickColor.new("Br. yellowish orange")
p602.Material = Enum.Material.Slate
p602.CFrame = CFrame.new(-158.5, 207.189941, 102.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p602.Size = Vector3.new(4, 14.3999987, 1)
p602.BottomSurface = Enum.SurfaceType.Weld
p602.TopSurface = Enum.SurfaceType.Weld
p603 = Instance.new("Part", m54)
p603.BrickColor = BrickColor.new("Br. yellowish orange")
p603.Material = Enum.Material.Slate
p603.CFrame = CFrame.new(-122.5, 207.189941, 94.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p603.Size = Vector3.new(4, 14.3999987, 1)
p603.BottomSurface = Enum.SurfaceType.Weld
p603.TopSurface = Enum.SurfaceType.Weld
p604 = Instance.new("Part", m54)
p604.BrickColor = BrickColor.new("Br. yellowish orange")
p604.Material = Enum.Material.Slate
p604.CFrame = CFrame.new(-122.5, 207.189941, 115.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p604.Size = Vector3.new(4, 14.3999987, 1)
p604.BottomSurface = Enum.SurfaceType.Weld
p604.TopSurface = Enum.SurfaceType.Weld
p605 = Instance.new("Part", m54)
p605.BrickColor = BrickColor.new("Br. yellowish orange")
p605.Material = Enum.Material.Slate
p605.CFrame = CFrame.new(-158.5, 207.189941, 107.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p605.Size = Vector3.new(4, 14.3999987, 1)
p605.BottomSurface = Enum.SurfaceType.Weld
p605.TopSurface = Enum.SurfaceType.Weld
p606 = Instance.new("Part", m54)
p606.BrickColor = BrickColor.new("Br. yellowish orange")
p606.Material = Enum.Material.Slate
p606.CFrame = CFrame.new(-123.5, 207.189941, 87.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p606.Size = Vector3.new(6, 14.3999987, 6)
p606.BottomSurface = Enum.SurfaceType.Weld
p606.TopSurface = Enum.SurfaceType.Weld
p607 = Instance.new("Part", m54)
p607.BrickColor = BrickColor.new("Br. yellowish orange")
p607.Material = Enum.Material.Slate
p607.CFrame = CFrame.new(-157.5, 207.189941, 87.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p607.Size = Vector3.new(6, 14.3999987, 6)
p607.BottomSurface = Enum.SurfaceType.Weld
p607.TopSurface = Enum.SurfaceType.Weld
p608 = Instance.new("Part", m54)
p608.BrickColor = BrickColor.new("Br. yellowish orange")
p608.Material = Enum.Material.Slate
p608.CFrame = CFrame.new(-158.5, 207.189941, 115.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p608.Size = Vector3.new(4, 14.3999987, 1)
p608.BottomSurface = Enum.SurfaceType.Weld
p608.TopSurface = Enum.SurfaceType.Weld
p609 = Instance.new("Part", m54)
p609.BrickColor = BrickColor.new("Br. yellowish orange")
p609.Material = Enum.Material.Slate
p609.CFrame = CFrame.new(-158.5, 207.189941, 94.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p609.Size = Vector3.new(4, 14.3999987, 1)
p609.BottomSurface = Enum.SurfaceType.Weld
p609.TopSurface = Enum.SurfaceType.Weld
p610 = Instance.new("Part", m54)
p610.BrickColor = BrickColor.new("Br. yellowish orange")
p610.Material = Enum.Material.Slate
p610.CFrame = CFrame.new(-123.5, 207.189941, 121.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p610.Size = Vector3.new(6, 14.3999987, 6)
p610.BottomSurface = Enum.SurfaceType.Weld
p610.TopSurface = Enum.SurfaceType.Weld
p611 = Instance.new("Part", m54)
p611.BrickColor = BrickColor.new("Br. yellowish orange")
p611.Material = Enum.Material.Slate
p611.CFrame = CFrame.new(-157.5, 207.189941, 121.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p611.Size = Vector3.new(6, 14.3999987, 6)
p611.BottomSurface = Enum.SurfaceType.Weld
p611.TopSurface = Enum.SurfaceType.Weld
p612 = Instance.new("Part", m54)
p612.BrickColor = BrickColor.new("Br. yellowish orange")
p612.Material = Enum.Material.Brick
p612.CFrame = CFrame.new(-140.5, 232.389938, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p612.Size = Vector3.new(14, 28.8000011, 14)
p612.BottomSurface = Enum.SurfaceType.Weld
p612.TopSurface = Enum.SurfaceType.Weld
p613 = Instance.new("Part", m54)
p613.BrickColor = BrickColor.new("Br. yellowish orange")
p613.Material = Enum.Material.Brick
p613.CFrame = CFrame.new(-140.5, 252.789948, 104.500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p613.Size = Vector3.new(14, 12, 14)
p613.BottomSurface = Enum.SurfaceType.Weld
p613.TopSurface = Enum.SurfaceType.Smooth
d29 = Instance.new("Decal", p613)
d29.Texture = "http://www.roblox.com/asset/?id=13910060"
d29.Face = Enum.NormalId.Back
d30 = Instance.new("Decal", p613)
d30.Texture = "http://www.roblox.com/asset/?id=13910060"
d30.Face = Enum.NormalId.Right
d31 = Instance.new("Decal", p613)
d31.Texture = "http://www.roblox.com/asset/?id=13910060"
d31.Face = Enum.NormalId.Front
d32 = Instance.new("Decal", p613)
d32.Texture = "http://www.roblox.com/asset/?id=13910060"
d32.Face = Enum.NormalId.Left
p614 = Instance.new("WedgePart", m54)
p614.BrickColor = BrickColor.new("Medium stone grey")
p614.Material = Enum.Material.Brick
p614.Name = "Wedge"
p614.CFrame = CFrame.new(-140.5, 232.390045, 118.000015, -1, 0, -1.31134158e-007, 0, 1, 0, 1.31134158e-007, 0, -1)
p614.Size = Vector3.new(28, 28.8000031, 13)
p614.BottomSurface = Enum.SurfaceType.Weld
p614.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p614)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
p615 = Instance.new("WedgePart", m54)
p615.BrickColor = BrickColor.new("Medium stone grey")
p615.Material = Enum.Material.Brick
p615.Name = "Wedge"
p615.CFrame = CFrame.new(-127, 232.389954, 104.500015, 1.31134158e-007, 0, -1, 0, 1, 0, 1, 0, 1.74845553e-007)
p615.Size = Vector3.new(28, 28.8000031, 13)
p615.BottomSurface = Enum.SurfaceType.Weld
p615.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p615)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
p616 = Instance.new("WedgePart", m54)
p616.BrickColor = BrickColor.new("Medium stone grey")
p616.Material = Enum.Material.Brick
p616.Name = "Wedge"
p616.CFrame = CFrame.new(-154, 232.389954, 104.500023, -1.74845553e-007, 0, 1, 0, 1, 0, -1, 0, -2.18556949e-007)
p616.Size = Vector3.new(28, 28.8000031, 13)
p616.BottomSurface = Enum.SurfaceType.Weld
p616.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p616)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
p617 = Instance.new("WedgePart", m54)
p617.BrickColor = BrickColor.new("Medium stone grey")
p617.Material = Enum.Material.Brick
p617.Name = "Wedge"
p617.CFrame = CFrame.new(-140.5, 232.389954, 91.0000153, 1, 0, 2.62268344e-007, 0, 1, 0, -2.62268344e-007, 0, 1)
p617.Size = Vector3.new(28, 28.8000031, 13)
p617.BottomSurface = Enum.SurfaceType.Weld
p617.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p617)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
p618 = Instance.new("WedgePart", m54)
p618.BrickColor = BrickColor.new("Medium stone grey")
p618.Material = Enum.Material.Brick
p618.Name = "Wedge"
p618.CFrame = CFrame.new(-140.5, 262.389923, 99.0000153, 1, 0, 2.62268344e-007, 0, 1, 0, -2.62268344e-007, 0, 1)
p618.Size = Vector3.new(8, 7.20000458, 3)
p618.BottomSurface = Enum.SurfaceType.Weld
p618.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p618)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
p619 = Instance.new("WedgePart", m54)
p619.BrickColor = BrickColor.new("Medium stone grey")
p619.Material = Enum.Material.Brick
p619.Name = "Wedge"
p619.CFrame = CFrame.new(-146, 262.389954, 104.500015, -2.62268344e-007, 0, 1, 0, 1, 0, -1, 0, -3.05979739e-007)
p619.Size = Vector3.new(8, 7.20000458, 3)
p619.BottomSurface = Enum.SurfaceType.Weld
p619.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p619)
b24.MeshType = Enum.MeshType.Wedge
b24.Name = "Mesh"
p620 = Instance.new("WedgePart", m54)
p620.BrickColor = BrickColor.new("Medium stone grey")
p620.Material = Enum.Material.Brick
p620.Name = "Wedge"
p620.CFrame = CFrame.new(-140.5, 262.389954, 110.000015, -1, 0, -3.05979739e-007, 0, 1, 0, 3.05979739e-007, 0, -1)
p620.Size = Vector3.new(8, 7.20000458, 3)
p620.BottomSurface = Enum.SurfaceType.Weld
p620.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p620)
b25.MeshType = Enum.MeshType.Wedge
b25.Name = "Mesh"
p621 = Instance.new("WedgePart", m54)
p621.BrickColor = BrickColor.new("Medium stone grey")
p621.Material = Enum.Material.Brick
p621.Name = "Wedge"
p621.CFrame = CFrame.new(-135, 262.389954, 104.500015, 3.05979739e-007, 0, -1, 0, 1, 0, 1, 0, 3.49691135e-007)
p621.Size = Vector3.new(8, 7.20000458, 3)
p621.BottomSurface = Enum.SurfaceType.Weld
p621.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p621)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
p622 = Instance.new("WedgePart", m54)
p622.BrickColor = BrickColor.new("Medium stone grey")
p622.Material = Enum.Material.Brick
p622.Name = "Wedge"
p622.CFrame = CFrame.new(-141, 270.190033, 106.500015, -1, 0, -3.05979739e-007, 0, 1, 0, 3.05979739e-007, 0, -1)
p622.Size = Vector3.new(3, 22.800005, 4)
p622.BottomSurface = Enum.SurfaceType.Weld
p622.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p622)
b27.MeshType = Enum.MeshType.Wedge
b27.Name = "Mesh"
p623 = Instance.new("WedgePart", m54)
p623.BrickColor = BrickColor.new("Medium stone grey")
p623.Material = Enum.Material.Brick
p623.Name = "Wedge"
p623.CFrame = CFrame.new(-138.5, 270.189941, 104.500031, 3.05979739e-007, 0, -1, 0, 1, 0, 1, 0, 3.49691135e-007)
p623.Size = Vector3.new(2, 22.800005, 4)
p623.BottomSurface = Enum.SurfaceType.Weld
p623.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p623)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
p624 = Instance.new("WedgePart", m54)
p624.BrickColor = BrickColor.new("Medium stone grey")
p624.Material = Enum.Material.Brick
p624.Name = "Wedge"
p624.CFrame = CFrame.new(-141, 270.189941, 102.500015, 1, 0, 3.57627869e-007, 0, 1, 0, -3.57627869e-007, 0, 1)
p624.Size = Vector3.new(3, 22.800005, 4)
p624.BottomSurface = Enum.SurfaceType.Weld
p624.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p624)
b29.MeshType = Enum.MeshType.Wedge
b29.Name = "Mesh"
p625 = Instance.new("WedgePart", m54)
p625.BrickColor = BrickColor.new("Medium stone grey")
p625.Material = Enum.Material.Brick
p625.Name = "Wedge"
p625.CFrame = CFrame.new(-143, 270.189941, 104.500008, -3.10475571e-007, 0, 0.99999994, -7.32012438e-007, 0.99999994, 2.98023224e-008, -1, -7.28445343e-007, -3.49559798e-007)
p625.Size = Vector3.new(2, 22.800005, 3)
p625.BottomSurface = Enum.SurfaceType.Weld
p625.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p625)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
p626 = Instance.new("Part", m55)
p626.BrickColor = BrickColor.new("Bright yellow")
p626.CFrame = CFrame.new(-134, 265.389954, 111.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p626.Size = Vector3.new(1, 1.20000005, 1)
p626.BottomSurface = Enum.SurfaceType.Weld
p626.TopSurface = Enum.SurfaceType.Smooth
x22 = Instance.new("PointLight", p626)
p627 = Instance.new("Part", m55)
p627.BrickColor = BrickColor.new("Black")
p627.CFrame = CFrame.new(-134, 261.789948, 111.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p627.Size = Vector3.new(1, 6, 1)
p627.BottomSurface = Enum.SurfaceType.Weld
p627.TopSurface = Enum.SurfaceType.Smooth
p628 = Instance.new("Part", m56)
p628.BrickColor = BrickColor.new("Bright yellow")
p628.CFrame = CFrame.new(-134, 265.389954, 98.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p628.Size = Vector3.new(1, 1.20000005, 1)
p628.BottomSurface = Enum.SurfaceType.Weld
p628.TopSurface = Enum.SurfaceType.Smooth
x23 = Instance.new("PointLight", p628)
p629 = Instance.new("Part", m56)
p629.BrickColor = BrickColor.new("Black")
p629.CFrame = CFrame.new(-134, 261.789948, 98.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p629.Size = Vector3.new(1, 6, 1)
p629.BottomSurface = Enum.SurfaceType.Weld
p629.TopSurface = Enum.SurfaceType.Smooth
p630 = Instance.new("Part", m57)
p630.BrickColor = BrickColor.new("Bright yellow")
p630.CFrame = CFrame.new(-147, 265.389954, 98.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p630.Size = Vector3.new(1, 1.20000005, 1)
p630.BottomSurface = Enum.SurfaceType.Weld
p630.TopSurface = Enum.SurfaceType.Smooth
x24 = Instance.new("PointLight", p630)
p631 = Instance.new("Part", m57)
p631.BrickColor = BrickColor.new("Black")
p631.CFrame = CFrame.new(-147, 261.789948, 98.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p631.Size = Vector3.new(1, 6, 1)
p631.BottomSurface = Enum.SurfaceType.Weld
p631.TopSurface = Enum.SurfaceType.Smooth
p632 = Instance.new("Part", m58)
p632.BrickColor = BrickColor.new("Bright yellow")
p632.CFrame = CFrame.new(-121, 224.589951, 124.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p632.Size = Vector3.new(1, 1.20000005, 1)
p632.BottomSurface = Enum.SurfaceType.Weld
p632.TopSurface = Enum.SurfaceType.Smooth
x25 = Instance.new("PointLight", p632)
p633 = Instance.new("Part", m58)
p633.BrickColor = BrickColor.new("Black")
p633.CFrame = CFrame.new(-121, 220.989944, 124.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p633.Size = Vector3.new(1, 6, 1)
p633.BottomSurface = Enum.SurfaceType.Weld
p633.TopSurface = Enum.SurfaceType.Smooth
p634 = Instance.new("Part", m59)
p634.BrickColor = BrickColor.new("Bright yellow")
p634.CFrame = CFrame.new(-160, 224.589951, 124.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p634.Size = Vector3.new(1, 1.20000005, 1)
p634.BottomSurface = Enum.SurfaceType.Weld
p634.TopSurface = Enum.SurfaceType.Smooth
x26 = Instance.new("PointLight", p634)
p635 = Instance.new("Part", m59)
p635.BrickColor = BrickColor.new("Black")
p635.CFrame = CFrame.new(-160, 220.989944, 124.000015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p635.Size = Vector3.new(1, 6, 1)
p635.BottomSurface = Enum.SurfaceType.Weld
p635.TopSurface = Enum.SurfaceType.Smooth
p636 = Instance.new("Part", m60)
p636.BrickColor = BrickColor.new("Bright yellow")
p636.CFrame = CFrame.new(-160, 224.589951, 85.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p636.Size = Vector3.new(1, 1.20000005, 1)
p636.BottomSurface = Enum.SurfaceType.Weld
p636.TopSurface = Enum.SurfaceType.Smooth
x27 = Instance.new("PointLight", p636)
p637 = Instance.new("Part", m60)
p637.BrickColor = BrickColor.new("Black")
p637.CFrame = CFrame.new(-160, 220.989944, 85.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p637.Size = Vector3.new(1, 6, 1)
p637.BottomSurface = Enum.SurfaceType.Weld
p637.TopSurface = Enum.SurfaceType.Smooth
p638 = Instance.new("Part", m61)
p638.BrickColor = BrickColor.new("Bright yellow")
p638.CFrame = CFrame.new(-121, 224.589951, 85.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p638.Size = Vector3.new(1, 1.20000005, 1)
p638.BottomSurface = Enum.SurfaceType.Weld
p638.TopSurface = Enum.SurfaceType.Smooth
x28 = Instance.new("PointLight", p638)
p639 = Instance.new("Part", m61)
p639.BrickColor = BrickColor.new("Black")
p639.CFrame = CFrame.new(-121, 220.989944, 85.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p639.Size = Vector3.new(1, 6, 1)
p639.BottomSurface = Enum.SurfaceType.Weld
p639.TopSurface = Enum.SurfaceType.Smooth
p640 = Instance.new("Part", m62)
p640.BrickColor = BrickColor.new("Br. yellowish orange")
p640.Material = Enum.Material.Slate
p640.CFrame = CFrame.new(-166, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p640.Size = Vector3.new(1, 2.4000001, 1)
p640.BottomSurface = Enum.SurfaceType.Weld
p640.TopSurface = Enum.SurfaceType.Weld
p641 = Instance.new("Part", m62)
p641.BrickColor = BrickColor.new("Br. yellowish orange")
p641.Material = Enum.Material.Slate
p641.CFrame = CFrame.new(-164, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p641.Size = Vector3.new(1, 2.4000001, 1)
p641.BottomSurface = Enum.SurfaceType.Weld
p641.TopSurface = Enum.SurfaceType.Weld
p642 = Instance.new("Part", m62)
p642.BrickColor = BrickColor.new("Br. yellowish orange")
p642.Material = Enum.Material.Slate
p642.CFrame = CFrame.new(-162, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p642.Size = Vector3.new(1, 2.4000001, 1)
p642.BottomSurface = Enum.SurfaceType.Weld
p642.TopSurface = Enum.SurfaceType.Weld
p643 = Instance.new("Part", m62)
p643.BrickColor = BrickColor.new("Br. yellowish orange")
p643.Material = Enum.Material.Slate
p643.CFrame = CFrame.new(-158, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p643.Size = Vector3.new(1, 2.4000001, 1)
p643.BottomSurface = Enum.SurfaceType.Weld
p643.TopSurface = Enum.SurfaceType.Weld
p644 = Instance.new("Part", m62)
p644.BrickColor = BrickColor.new("Br. yellowish orange")
p644.Material = Enum.Material.Slate
p644.CFrame = CFrame.new(-156, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p644.Size = Vector3.new(1, 2.4000001, 1)
p644.BottomSurface = Enum.SurfaceType.Weld
p644.TopSurface = Enum.SurfaceType.Weld
p645 = Instance.new("Part", m62)
p645.BrickColor = BrickColor.new("Br. yellowish orange")
p645.Material = Enum.Material.Slate
p645.CFrame = CFrame.new(-154, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p645.Size = Vector3.new(1, 2.4000001, 1)
p645.BottomSurface = Enum.SurfaceType.Weld
p645.TopSurface = Enum.SurfaceType.Weld
p646 = Instance.new("Part", m62)
p646.BrickColor = BrickColor.new("Br. yellowish orange")
p646.Material = Enum.Material.Slate
p646.CFrame = CFrame.new(-152, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p646.Size = Vector3.new(1, 2.4000001, 1)
p646.BottomSurface = Enum.SurfaceType.Weld
p646.TopSurface = Enum.SurfaceType.Weld
p647 = Instance.new("Part", m62)
p647.BrickColor = BrickColor.new("Br. yellowish orange")
p647.Material = Enum.Material.Slate
p647.CFrame = CFrame.new(-150, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p647.Size = Vector3.new(1, 2.4000001, 1)
p647.BottomSurface = Enum.SurfaceType.Weld
p647.TopSurface = Enum.SurfaceType.Weld
p648 = Instance.new("Part", m62)
p648.BrickColor = BrickColor.new("Br. yellowish orange")
p648.Material = Enum.Material.Slate
p648.CFrame = CFrame.new(-148, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p648.Size = Vector3.new(1, 2.4000001, 1)
p648.BottomSurface = Enum.SurfaceType.Weld
p648.TopSurface = Enum.SurfaceType.Weld
p649 = Instance.new("Part", m62)
p649.BrickColor = BrickColor.new("Br. yellowish orange")
p649.Material = Enum.Material.Slate
p649.CFrame = CFrame.new(-146, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p649.Size = Vector3.new(1, 2.4000001, 1)
p649.BottomSurface = Enum.SurfaceType.Weld
p649.TopSurface = Enum.SurfaceType.Weld
p650 = Instance.new("Part", m62)
p650.BrickColor = BrickColor.new("Br. yellowish orange")
p650.Material = Enum.Material.Slate
p650.CFrame = CFrame.new(-144, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p650.Size = Vector3.new(1, 2.4000001, 1)
p650.BottomSurface = Enum.SurfaceType.Weld
p650.TopSurface = Enum.SurfaceType.Weld
p651 = Instance.new("Part", m62)
p651.BrickColor = BrickColor.new("Br. yellowish orange")
p651.Material = Enum.Material.Slate
p651.CFrame = CFrame.new(-142, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p651.Size = Vector3.new(1, 2.4000001, 1)
p651.BottomSurface = Enum.SurfaceType.Weld
p651.TopSurface = Enum.SurfaceType.Weld
p652 = Instance.new("Part", m62)
p652.BrickColor = BrickColor.new("Br. yellowish orange")
p652.Material = Enum.Material.Slate
p652.CFrame = CFrame.new(-140, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p652.Size = Vector3.new(1, 2.4000001, 1)
p652.BottomSurface = Enum.SurfaceType.Weld
p652.TopSurface = Enum.SurfaceType.Weld
p653 = Instance.new("Part", m62)
p653.BrickColor = BrickColor.new("Br. yellowish orange")
p653.Material = Enum.Material.Slate
p653.CFrame = CFrame.new(-138, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p653.Size = Vector3.new(1, 2.4000001, 1)
p653.BottomSurface = Enum.SurfaceType.Weld
p653.TopSurface = Enum.SurfaceType.Weld
p654 = Instance.new("Part", m62)
p654.BrickColor = BrickColor.new("Br. yellowish orange")
p654.Material = Enum.Material.Slate
p654.CFrame = CFrame.new(-136, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p654.Size = Vector3.new(1, 2.4000001, 1)
p654.BottomSurface = Enum.SurfaceType.Weld
p654.TopSurface = Enum.SurfaceType.Weld
p655 = Instance.new("Part", m62)
p655.BrickColor = BrickColor.new("Br. yellowish orange")
p655.Material = Enum.Material.Slate
p655.CFrame = CFrame.new(-134, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p655.Size = Vector3.new(1, 2.4000001, 1)
p655.BottomSurface = Enum.SurfaceType.Weld
p655.TopSurface = Enum.SurfaceType.Weld
p656 = Instance.new("Part", m62)
p656.BrickColor = BrickColor.new("Br. yellowish orange")
p656.Material = Enum.Material.Slate
p656.CFrame = CFrame.new(-132, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p656.Size = Vector3.new(1, 2.4000001, 1)
p656.BottomSurface = Enum.SurfaceType.Weld
p656.TopSurface = Enum.SurfaceType.Weld
p657 = Instance.new("Part", m62)
p657.BrickColor = BrickColor.new("Br. yellowish orange")
p657.Material = Enum.Material.Slate
p657.CFrame = CFrame.new(-130, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p657.Size = Vector3.new(1, 2.4000001, 1)
p657.BottomSurface = Enum.SurfaceType.Weld
p657.TopSurface = Enum.SurfaceType.Weld
p658 = Instance.new("Part", m62)
p658.BrickColor = BrickColor.new("Br. yellowish orange")
p658.Material = Enum.Material.Slate
p658.CFrame = CFrame.new(-128, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p658.Size = Vector3.new(1, 2.4000001, 1)
p658.BottomSurface = Enum.SurfaceType.Weld
p658.TopSurface = Enum.SurfaceType.Weld
p659 = Instance.new("Part", m62)
p659.BrickColor = BrickColor.new("Br. yellowish orange")
p659.Material = Enum.Material.Slate
p659.CFrame = CFrame.new(-126, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p659.Size = Vector3.new(1, 2.4000001, 1)
p659.BottomSurface = Enum.SurfaceType.Weld
p659.TopSurface = Enum.SurfaceType.Weld
p660 = Instance.new("Part", m62)
p660.BrickColor = BrickColor.new("Br. yellowish orange")
p660.Material = Enum.Material.Slate
p660.CFrame = CFrame.new(-121, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p660.Size = Vector3.new(1, 2.4000001, 1)
p660.BottomSurface = Enum.SurfaceType.Weld
p660.TopSurface = Enum.SurfaceType.Weld
p661 = Instance.new("Part", m62)
p661.BrickColor = BrickColor.new("Br. yellowish orange")
p661.Material = Enum.Material.Slate
p661.CFrame = CFrame.new(-119, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p661.Size = Vector3.new(1, 2.4000001, 1)
p661.BottomSurface = Enum.SurfaceType.Weld
p661.TopSurface = Enum.SurfaceType.Weld
p662 = Instance.new("Part", m62)
p662.BrickColor = BrickColor.new("Br. yellowish orange")
p662.Material = Enum.Material.Slate
p662.CFrame = CFrame.new(-117, 201.189941, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p662.Size = Vector3.new(1, 2.4000001, 1)
p662.BottomSurface = Enum.SurfaceType.Weld
p662.TopSurface = Enum.SurfaceType.Weld
p663 = Instance.new("Part", m62)
p663.BrickColor = BrickColor.new("Br. yellowish orange")
p663.Material = Enum.Material.Slate
p663.CFrame = CFrame.new(-141.5, 202.589935, 134.000015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p663.FormFactor = Enum.FormFactor.Plate
p663.Size = Vector3.new(52, 0.400000006, 1)
p663.BottomSurface = Enum.SurfaceType.Smooth
p663.TopSurface = Enum.SurfaceType.Smooth
p664 = Instance.new("Part", m63)
p664.BrickColor = BrickColor.new("Br. yellowish orange")
p664.Material = Enum.Material.Slate
p664.CFrame = CFrame.new(-117, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p664.Size = Vector3.new(1, 2.4000001, 1)
p664.BottomSurface = Enum.SurfaceType.Weld
p664.TopSurface = Enum.SurfaceType.Weld
p665 = Instance.new("Part", m63)
p665.BrickColor = BrickColor.new("Br. yellowish orange")
p665.Material = Enum.Material.Slate
p665.CFrame = CFrame.new(-119, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p665.Size = Vector3.new(1, 2.4000001, 1)
p665.BottomSurface = Enum.SurfaceType.Weld
p665.TopSurface = Enum.SurfaceType.Weld
p666 = Instance.new("Part", m63)
p666.BrickColor = BrickColor.new("Br. yellowish orange")
p666.Material = Enum.Material.Slate
p666.CFrame = CFrame.new(-121, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p666.Size = Vector3.new(1, 2.4000001, 1)
p666.BottomSurface = Enum.SurfaceType.Weld
p666.TopSurface = Enum.SurfaceType.Weld
p667 = Instance.new("Part", m63)
p667.BrickColor = BrickColor.new("Br. yellowish orange")
p667.Material = Enum.Material.Slate
p667.CFrame = CFrame.new(-125, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p667.Size = Vector3.new(1, 2.4000001, 1)
p667.BottomSurface = Enum.SurfaceType.Weld
p667.TopSurface = Enum.SurfaceType.Weld
p668 = Instance.new("Part", m63)
p668.BrickColor = BrickColor.new("Br. yellowish orange")
p668.Material = Enum.Material.Slate
p668.CFrame = CFrame.new(-127, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p668.Size = Vector3.new(1, 2.4000001, 1)
p668.BottomSurface = Enum.SurfaceType.Weld
p668.TopSurface = Enum.SurfaceType.Weld
p669 = Instance.new("Part", m63)
p669.BrickColor = BrickColor.new("Br. yellowish orange")
p669.Material = Enum.Material.Slate
p669.CFrame = CFrame.new(-129, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p669.Size = Vector3.new(1, 2.4000001, 1)
p669.BottomSurface = Enum.SurfaceType.Weld
p669.TopSurface = Enum.SurfaceType.Weld
p670 = Instance.new("Part", m63)
p670.BrickColor = BrickColor.new("Br. yellowish orange")
p670.Material = Enum.Material.Slate
p670.CFrame = CFrame.new(-131, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p670.Size = Vector3.new(1, 2.4000001, 1)
p670.BottomSurface = Enum.SurfaceType.Weld
p670.TopSurface = Enum.SurfaceType.Weld
p671 = Instance.new("Part", m63)
p671.BrickColor = BrickColor.new("Br. yellowish orange")
p671.Material = Enum.Material.Slate
p671.CFrame = CFrame.new(-133, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p671.Size = Vector3.new(1, 2.4000001, 1)
p671.BottomSurface = Enum.SurfaceType.Weld
p671.TopSurface = Enum.SurfaceType.Weld
p672 = Instance.new("Part", m63)
p672.BrickColor = BrickColor.new("Br. yellowish orange")
p672.Material = Enum.Material.Slate
p672.CFrame = CFrame.new(-135, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p672.Size = Vector3.new(1, 2.4000001, 1)
p672.BottomSurface = Enum.SurfaceType.Weld
p672.TopSurface = Enum.SurfaceType.Weld
p673 = Instance.new("Part", m63)
p673.BrickColor = BrickColor.new("Br. yellowish orange")
p673.Material = Enum.Material.Slate
p673.CFrame = CFrame.new(-137, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p673.Size = Vector3.new(1, 2.4000001, 1)
p673.BottomSurface = Enum.SurfaceType.Weld
p673.TopSurface = Enum.SurfaceType.Weld
p674 = Instance.new("Part", m63)
p674.BrickColor = BrickColor.new("Br. yellowish orange")
p674.Material = Enum.Material.Slate
p674.CFrame = CFrame.new(-139, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p674.Size = Vector3.new(1, 2.4000001, 1)
p674.BottomSurface = Enum.SurfaceType.Weld
p674.TopSurface = Enum.SurfaceType.Weld
p675 = Instance.new("Part", m63)
p675.BrickColor = BrickColor.new("Br. yellowish orange")
p675.Material = Enum.Material.Slate
p675.CFrame = CFrame.new(-141, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p675.Size = Vector3.new(1, 2.4000001, 1)
p675.BottomSurface = Enum.SurfaceType.Weld
p675.TopSurface = Enum.SurfaceType.Weld
p676 = Instance.new("Part", m63)
p676.BrickColor = BrickColor.new("Br. yellowish orange")
p676.Material = Enum.Material.Slate
p676.CFrame = CFrame.new(-143, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p676.Size = Vector3.new(1, 2.4000001, 1)
p676.BottomSurface = Enum.SurfaceType.Weld
p676.TopSurface = Enum.SurfaceType.Weld
p677 = Instance.new("Part", m63)
p677.BrickColor = BrickColor.new("Br. yellowish orange")
p677.Material = Enum.Material.Slate
p677.CFrame = CFrame.new(-145, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p677.Size = Vector3.new(1, 2.4000001, 1)
p677.BottomSurface = Enum.SurfaceType.Weld
p677.TopSurface = Enum.SurfaceType.Weld
p678 = Instance.new("Part", m63)
p678.BrickColor = BrickColor.new("Br. yellowish orange")
p678.Material = Enum.Material.Slate
p678.CFrame = CFrame.new(-147, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p678.Size = Vector3.new(1, 2.4000001, 1)
p678.BottomSurface = Enum.SurfaceType.Weld
p678.TopSurface = Enum.SurfaceType.Weld
p679 = Instance.new("Part", m63)
p679.BrickColor = BrickColor.new("Br. yellowish orange")
p679.Material = Enum.Material.Slate
p679.CFrame = CFrame.new(-149, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p679.Size = Vector3.new(1, 2.4000001, 1)
p679.BottomSurface = Enum.SurfaceType.Weld
p679.TopSurface = Enum.SurfaceType.Weld
p680 = Instance.new("Part", m63)
p680.BrickColor = BrickColor.new("Br. yellowish orange")
p680.Material = Enum.Material.Slate
p680.CFrame = CFrame.new(-151, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p680.Size = Vector3.new(1, 2.4000001, 1)
p680.BottomSurface = Enum.SurfaceType.Weld
p680.TopSurface = Enum.SurfaceType.Weld
p681 = Instance.new("Part", m63)
p681.BrickColor = BrickColor.new("Br. yellowish orange")
p681.Material = Enum.Material.Slate
p681.CFrame = CFrame.new(-153, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p681.Size = Vector3.new(1, 2.4000001, 1)
p681.BottomSurface = Enum.SurfaceType.Weld
p681.TopSurface = Enum.SurfaceType.Weld
p682 = Instance.new("Part", m63)
p682.BrickColor = BrickColor.new("Br. yellowish orange")
p682.Material = Enum.Material.Slate
p682.CFrame = CFrame.new(-155, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p682.Size = Vector3.new(1, 2.4000001, 1)
p682.BottomSurface = Enum.SurfaceType.Weld
p682.TopSurface = Enum.SurfaceType.Weld
p683 = Instance.new("Part", m63)
p683.BrickColor = BrickColor.new("Br. yellowish orange")
p683.Material = Enum.Material.Slate
p683.CFrame = CFrame.new(-157, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p683.Size = Vector3.new(1, 2.4000001, 1)
p683.BottomSurface = Enum.SurfaceType.Weld
p683.TopSurface = Enum.SurfaceType.Weld
p684 = Instance.new("Part", m63)
p684.BrickColor = BrickColor.new("Br. yellowish orange")
p684.Material = Enum.Material.Slate
p684.CFrame = CFrame.new(-162, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p684.Size = Vector3.new(1, 2.4000001, 1)
p684.BottomSurface = Enum.SurfaceType.Weld
p684.TopSurface = Enum.SurfaceType.Weld
p685 = Instance.new("Part", m63)
p685.BrickColor = BrickColor.new("Br. yellowish orange")
p685.Material = Enum.Material.Slate
p685.CFrame = CFrame.new(-164, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p685.Size = Vector3.new(1, 2.4000001, 1)
p685.BottomSurface = Enum.SurfaceType.Weld
p685.TopSurface = Enum.SurfaceType.Weld
p686 = Instance.new("Part", m63)
p686.BrickColor = BrickColor.new("Br. yellowish orange")
p686.Material = Enum.Material.Slate
p686.CFrame = CFrame.new(-166, 201.189941, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p686.Size = Vector3.new(1, 2.4000001, 1)
p686.BottomSurface = Enum.SurfaceType.Weld
p686.TopSurface = Enum.SurfaceType.Weld
p687 = Instance.new("Part", m63)
p687.BrickColor = BrickColor.new("Br. yellowish orange")
p687.Material = Enum.Material.Slate
p687.CFrame = CFrame.new(-141.5, 202.589935, 75.0000229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p687.FormFactor = Enum.FormFactor.Plate
p687.Size = Vector3.new(52, 0.400000006, 1)
p687.BottomSurface = Enum.SurfaceType.Smooth
p687.TopSurface = Enum.SurfaceType.Smooth
p688 = Instance.new("Part", m64)
p688.BrickColor = BrickColor.new("Br. yellowish orange")
p688.Material = Enum.Material.Slate
p688.Name = "Cone"
p688.CFrame = CFrame.new(-169.5, 219.389954, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p688.Size = Vector3.new(1, 1.20000005, 1)
p688.BottomSurface = Enum.SurfaceType.Weld
p688.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p688)
b31.MeshId = "http://www.roblox.com/asset/?id=1033714"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.5, 1.60000002, 0.5)
p689 = Instance.new("Part", m64)
p689.BrickColor = BrickColor.new("Br. yellowish orange")
p689.Material = Enum.Material.Slate
p689.CFrame = CFrame.new(-169.5, 201.189941, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p689.Size = Vector3.new(4, 2.4000001, 4)
p689.BottomSurface = Enum.SurfaceType.Weld
p689.TopSurface = Enum.SurfaceType.Smooth
p690 = Instance.new("Part", m64)
p690.BrickColor = BrickColor.new("Br. yellowish orange")
p690.Material = Enum.Material.Slate
p690.CFrame = CFrame.new(-169.5, 202.589935, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p690.FormFactor = Enum.FormFactor.Custom
p690.Size = Vector3.new(4.79999924, 0.400000006, 4.79999924)
p690.BottomSurface = Enum.SurfaceType.Weld
p690.TopSurface = Enum.SurfaceType.Smooth
p691 = Instance.new("Part", m64)
p691.BrickColor = BrickColor.new("Br. yellowish orange")
p691.Material = Enum.Material.Slate
p691.CFrame = CFrame.new(-169.5, 213.789948, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p691.FormFactor = Enum.FormFactor.Custom
p691.Size = Vector3.new(2, 0.400000006, 2)
p691.BottomSurface = Enum.SurfaceType.Weld
p691.TopSurface = Enum.SurfaceType.Smooth
p692 = Instance.new("Part", m64)
p692.BrickColor = BrickColor.new("Br. yellowish orange")
p692.Material = Enum.Material.Slate
p692.CFrame = CFrame.new(-169.5, 208.189941, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p692.Size = Vector3.new(2, 10.8000002, 2)
p692.BottomSurface = Enum.SurfaceType.Weld
p692.TopSurface = Enum.SurfaceType.Smooth
p693 = Instance.new("Part", m64)
p693.BrickColor = BrickColor.new("Br. yellowish orange")
p693.Material = Enum.Material.Slate
p693.CFrame = CFrame.new(-169.5, 216.389954, 76.5000229, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p693.Size = Vector3.new(1, 4.80000019, 1)
p693.BottomSurface = Enum.SurfaceType.Weld
p693.TopSurface = Enum.SurfaceType.Smooth
p694 = Instance.new("Part", m65)
p694.BrickColor = BrickColor.new("Br. yellowish orange")
p694.Material = Enum.Material.Slate
p694.Name = "Cone"
p694.CFrame = CFrame.new(-169.5, 219.389954, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p694.Size = Vector3.new(1, 1.20000005, 1)
p694.BottomSurface = Enum.SurfaceType.Weld
p694.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p694)
b32.MeshId = "http://www.roblox.com/asset/?id=1033714"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.5, 1.60000002, 0.5)
p695 = Instance.new("Part", m65)
p695.BrickColor = BrickColor.new("Br. yellowish orange")
p695.Material = Enum.Material.Slate
p695.CFrame = CFrame.new(-169.5, 201.189941, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p695.Size = Vector3.new(4, 2.4000001, 4)
p695.BottomSurface = Enum.SurfaceType.Weld
p695.TopSurface = Enum.SurfaceType.Smooth
p696 = Instance.new("Part", m65)
p696.BrickColor = BrickColor.new("Br. yellowish orange")
p696.Material = Enum.Material.Slate
p696.CFrame = CFrame.new(-169.5, 202.589935, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p696.FormFactor = Enum.FormFactor.Custom
p696.Size = Vector3.new(4.79999924, 0.400000006, 4.79999924)
p696.BottomSurface = Enum.SurfaceType.Weld
p696.TopSurface = Enum.SurfaceType.Smooth
p697 = Instance.new("Part", m65)
p697.BrickColor = BrickColor.new("Br. yellowish orange")
p697.Material = Enum.Material.Slate
p697.CFrame = CFrame.new(-169.5, 213.789948, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p697.FormFactor = Enum.FormFactor.Custom
p697.Size = Vector3.new(2, 0.400000006, 2)
p697.BottomSurface = Enum.SurfaceType.Weld
p697.TopSurface = Enum.SurfaceType.Smooth
p698 = Instance.new("Part", m65)
p698.BrickColor = BrickColor.new("Br. yellowish orange")
p698.Material = Enum.Material.Slate
p698.CFrame = CFrame.new(-169.5, 208.189941, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p698.Size = Vector3.new(2, 10.8000002, 2)
p698.BottomSurface = Enum.SurfaceType.Weld
p698.TopSurface = Enum.SurfaceType.Smooth
p699 = Instance.new("Part", m65)
p699.BrickColor = BrickColor.new("Br. yellowish orange")
p699.Material = Enum.Material.Slate
p699.CFrame = CFrame.new(-169.5, 216.389954, 132.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p699.Size = Vector3.new(1, 4.80000019, 1)
p699.BottomSurface = Enum.SurfaceType.Weld
p699.TopSurface = Enum.SurfaceType.Smooth
p700 = Instance.new("Part", m66)
p700.BrickColor = BrickColor.new("Br. yellowish orange")
p700.Material = Enum.Material.Slate
p700.CFrame = CFrame.new(-171.100006, 201.189941, 80.1000214, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p700.Size = Vector3.new(1, 2.4000001, 1)
p700.BottomSurface = Enum.SurfaceType.Weld
p700.TopSurface = Enum.SurfaceType.Weld
p701 = Instance.new("Part", m66)
p701.BrickColor = BrickColor.new("Br. yellowish orange")
p701.Material = Enum.Material.Slate
p701.CFrame = CFrame.new(-171.100006, 201.189941, 82.1000214, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p701.Size = Vector3.new(1, 2.4000001, 1)
p701.BottomSurface = Enum.SurfaceType.Weld
p701.TopSurface = Enum.SurfaceType.Weld
p702 = Instance.new("Part", m66)
p702.BrickColor = BrickColor.new("Br. yellowish orange")
p702.Material = Enum.Material.Slate
p702.CFrame = CFrame.new(-171.100006, 201.189941, 84.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p702.Size = Vector3.new(1, 2.4000001, 1)
p702.BottomSurface = Enum.SurfaceType.Weld
p702.TopSurface = Enum.SurfaceType.Weld
p703 = Instance.new("Part", m66)
p703.BrickColor = BrickColor.new("Br. yellowish orange")
p703.Material = Enum.Material.Slate
p703.CFrame = CFrame.new(-171.100006, 201.189941, 88.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p703.Size = Vector3.new(1, 2.4000001, 1)
p703.BottomSurface = Enum.SurfaceType.Weld
p703.TopSurface = Enum.SurfaceType.Weld
p704 = Instance.new("Part", m66)
p704.BrickColor = BrickColor.new("Br. yellowish orange")
p704.Material = Enum.Material.Slate
p704.CFrame = CFrame.new(-171.100006, 201.189941, 90.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p704.Size = Vector3.new(1, 2.4000001, 1)
p704.BottomSurface = Enum.SurfaceType.Weld
p704.TopSurface = Enum.SurfaceType.Weld
p705 = Instance.new("Part", m66)
p705.BrickColor = BrickColor.new("Br. yellowish orange")
p705.Material = Enum.Material.Slate
p705.CFrame = CFrame.new(-171.100006, 201.189941, 92.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p705.Size = Vector3.new(1, 2.4000001, 1)
p705.BottomSurface = Enum.SurfaceType.Weld
p705.TopSurface = Enum.SurfaceType.Weld
p706 = Instance.new("Part", m66)
p706.BrickColor = BrickColor.new("Br. yellowish orange")
p706.Material = Enum.Material.Slate
p706.CFrame = CFrame.new(-171.100006, 201.189941, 94.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p706.Size = Vector3.new(1, 2.4000001, 1)
p706.BottomSurface = Enum.SurfaceType.Weld
p706.TopSurface = Enum.SurfaceType.Weld
p707 = Instance.new("Part", m66)
p707.BrickColor = BrickColor.new("Br. yellowish orange")
p707.Material = Enum.Material.Slate
p707.CFrame = CFrame.new(-171.100006, 201.189941, 96.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p707.Size = Vector3.new(1, 2.4000001, 1)
p707.BottomSurface = Enum.SurfaceType.Weld
p707.TopSurface = Enum.SurfaceType.Weld
p708 = Instance.new("Part", m66)
p708.BrickColor = BrickColor.new("Br. yellowish orange")
p708.Material = Enum.Material.Slate
p708.CFrame = CFrame.new(-171.100006, 201.189941, 98.1000137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p708.Size = Vector3.new(1, 2.4000001, 1)
p708.BottomSurface = Enum.SurfaceType.Weld
p708.TopSurface = Enum.SurfaceType.Weld
p709 = Instance.new("Part", m66)
p709.BrickColor = BrickColor.new("Br. yellowish orange")
p709.Material = Enum.Material.Slate
p709.CFrame = CFrame.new(-171.100006, 201.189941, 100.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p709.Size = Vector3.new(1, 2.4000001, 1)
p709.BottomSurface = Enum.SurfaceType.Weld
p709.TopSurface = Enum.SurfaceType.Weld
p710 = Instance.new("Part", m66)
p710.BrickColor = BrickColor.new("Br. yellowish orange")
p710.Material = Enum.Material.Slate
p710.CFrame = CFrame.new(-171.100006, 201.189941, 102.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p710.Size = Vector3.new(1, 2.4000001, 1)
p710.BottomSurface = Enum.SurfaceType.Weld
p710.TopSurface = Enum.SurfaceType.Weld
p711 = Instance.new("Part", m66)
p711.BrickColor = BrickColor.new("Br. yellowish orange")
p711.Material = Enum.Material.Slate
p711.CFrame = CFrame.new(-171.100006, 201.189941, 104.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p711.Size = Vector3.new(1, 2.4000001, 1)
p711.BottomSurface = Enum.SurfaceType.Weld
p711.TopSurface = Enum.SurfaceType.Weld
p712 = Instance.new("Part", m66)
p712.BrickColor = BrickColor.new("Br. yellowish orange")
p712.Material = Enum.Material.Slate
p712.CFrame = CFrame.new(-171.100006, 201.189941, 106.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p712.Size = Vector3.new(1, 2.4000001, 1)
p712.BottomSurface = Enum.SurfaceType.Weld
p712.TopSurface = Enum.SurfaceType.Weld
p713 = Instance.new("Part", m66)
p713.BrickColor = BrickColor.new("Br. yellowish orange")
p713.Material = Enum.Material.Slate
p713.CFrame = CFrame.new(-171.100006, 201.189941, 108.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p713.Size = Vector3.new(1, 2.4000001, 1)
p713.BottomSurface = Enum.SurfaceType.Weld
p713.TopSurface = Enum.SurfaceType.Weld
p714 = Instance.new("Part", m66)
p714.BrickColor = BrickColor.new("Br. yellowish orange")
p714.Material = Enum.Material.Slate
p714.CFrame = CFrame.new(-171.100006, 201.189941, 110.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p714.Size = Vector3.new(1, 2.4000001, 1)
p714.BottomSurface = Enum.SurfaceType.Weld
p714.TopSurface = Enum.SurfaceType.Weld
p715 = Instance.new("Part", m66)
p715.BrickColor = BrickColor.new("Br. yellowish orange")
p715.Material = Enum.Material.Slate
p715.CFrame = CFrame.new(-171.100006, 201.189941, 112.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p715.Size = Vector3.new(1, 2.4000001, 1)
p715.BottomSurface = Enum.SurfaceType.Weld
p715.TopSurface = Enum.SurfaceType.Weld
p716 = Instance.new("Part", m66)
p716.BrickColor = BrickColor.new("Br. yellowish orange")
p716.Material = Enum.Material.Slate
p716.CFrame = CFrame.new(-171.100006, 201.189941, 114.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p716.Size = Vector3.new(1, 2.4000001, 1)
p716.BottomSurface = Enum.SurfaceType.Weld
p716.TopSurface = Enum.SurfaceType.Weld
p717 = Instance.new("Part", m66)
p717.BrickColor = BrickColor.new("Br. yellowish orange")
p717.Material = Enum.Material.Slate
p717.CFrame = CFrame.new(-171.100006, 201.189941, 116.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p717.Size = Vector3.new(1, 2.4000001, 1)
p717.BottomSurface = Enum.SurfaceType.Weld
p717.TopSurface = Enum.SurfaceType.Weld
p718 = Instance.new("Part", m66)
p718.BrickColor = BrickColor.new("Br. yellowish orange")
p718.Material = Enum.Material.Slate
p718.CFrame = CFrame.new(-171.100006, 201.189941, 118.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p718.Size = Vector3.new(1, 2.4000001, 1)
p718.BottomSurface = Enum.SurfaceType.Weld
p718.TopSurface = Enum.SurfaceType.Weld
p719 = Instance.new("Part", m66)
p719.BrickColor = BrickColor.new("Br. yellowish orange")
p719.Material = Enum.Material.Slate
p719.CFrame = CFrame.new(-171.100006, 201.189941, 120.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p719.Size = Vector3.new(1, 2.4000001, 1)
p719.BottomSurface = Enum.SurfaceType.Weld
p719.TopSurface = Enum.SurfaceType.Weld
p720 = Instance.new("Part", m66)
p720.BrickColor = BrickColor.new("Br. yellowish orange")
p720.Material = Enum.Material.Slate
p720.CFrame = CFrame.new(-171.100006, 201.189941, 125.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p720.Size = Vector3.new(1, 2.4000001, 1)
p720.BottomSurface = Enum.SurfaceType.Weld
p720.TopSurface = Enum.SurfaceType.Weld
p721 = Instance.new("Part", m66)
p721.BrickColor = BrickColor.new("Br. yellowish orange")
p721.Material = Enum.Material.Slate
p721.CFrame = CFrame.new(-171.100006, 201.189941, 127.100014, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p721.Size = Vector3.new(1, 2.4000001, 1)
p721.BottomSurface = Enum.SurfaceType.Weld
p721.TopSurface = Enum.SurfaceType.Weld
p722 = Instance.new("Part", m66)
p722.BrickColor = BrickColor.new("Br. yellowish orange")
p722.Material = Enum.Material.Slate
p722.CFrame = CFrame.new(-171.100006, 201.189941, 129.100021, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p722.Size = Vector3.new(1, 2.4000001, 1)
p722.BottomSurface = Enum.SurfaceType.Weld
p722.TopSurface = Enum.SurfaceType.Weld
p723 = Instance.new("Part", m66)
p723.BrickColor = BrickColor.new("Br. yellowish orange")
p723.Material = Enum.Material.Slate
p723.CFrame = CFrame.new(-171.100006, 202.589935, 104.600021, 0, 0, 1, 0, 1, 0, -1, 0, 0)
p723.FormFactor = Enum.FormFactor.Plate
p723.Size = Vector3.new(52, 0.400000006, 1)
p723.BottomSurface = Enum.SurfaceType.Smooth
p723.TopSurface = Enum.SurfaceType.Smooth
s9 = script:clone()
v1 = Instance.new("CFrameValue", s9)
v1.Name = "H1C0"
v1.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v2 = Instance.new("CFrameValue", s9)
v2.Name = "H1C1"
v2.Value = CFrame.new(10.2358932, 0, 1.44022942, -0.999099135, 0.0424415283, 0, 0, 0, -1.00000048, -0.0424415283, -0.999099135, -0)
v3 = Instance.new("CFrameValue", s9)
v3.Name = "H2C0"
v3.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v4 = Instance.new("CFrameValue", s9)
v4.Name = "H2C1"
v4.Value = CFrame.new(9.00025654, 0, 3.07747078, -0.977555335, 0.210679874, 0, 0, 0, -1.00000036, -0.210679874, -0.977555335, -0)
v5 = Instance.new("CFrameValue", s9)
v5.Name = "H3C0"
v5.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v6 = Instance.new("CFrameValue", s9)
v6.Name = "H3C1"
v6.Value = CFrame.new(7.50569534, 0, 4.48233557, -0.927889049, 0.372856885, 0, 0, 0, -1.00000048, -0.372856885, -0.927889049, -0)
v7 = Instance.new("CFrameValue", s9)
v7.Name = "H4C0"
v7.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v8 = Instance.new("CFrameValue", s9)
v8.Name = "H4C1"
v8.Value = CFrame.new(5.79521084, 0, 5.61440563, -0.851529121, 0.524307668, 0, 0, 0, -1.00000036, -0.524307668, -0.851529121, -0)
v9 = Instance.new("CFrameValue", s9)
v9.Name = "H5C0"
v9.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v10 = Instance.new("CFrameValue", s9)
v10.Name = "H5C1"
v10.Value = CFrame.new(3.91800833, 2.86102363e-006, 6.44112444, -0.750672162, 0.660675049, 0, 0, 0, -1.00000024, -0.660675049, -0.750672162, -0)
v11 = Instance.new("CFrameValue", s9)
v11.Name = "H6C0"
v11.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v12 = Instance.new("CFrameValue", s9)
v12.Name = "H6C1"
v12.Value = CFrame.new(1.92809498, 0, 6.93869781, -0.628220141, 0.778035939, 0, 0, 0, -1.00000048, -0.778035939, -0.628220141, -0)
v13 = Instance.new("CFrameValue", s9)
v13.Name = "H7C0"
v13.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v14 = Instance.new("CFrameValue", s9)
v14.Name = "H7C1"
v14.Value = CFrame.new(-0.117290787, 0, 7.09282255, -0.48769486, 0.87301439, 0, 0, 0, -1.0000006, -0.87301439, -0.48769486, -0)
v15 = Instance.new("CFrameValue", s9)
v15.Name = "H8C0"
v15.Value = CFrame.new(7.94929409, -5.73696798e-006, 9.11362743, -0.196824789, -0.980436146, -1.70262293e-008, -9.60134905e-009, 1.92933438e-008, 0.999995768, -0.980436146, 0.196824789, 1.32107791e-008)
v16 = Instance.new("CFrameValue", s9)
v16.Name = "H8C1"
v16.Value = CFrame.new(-2.15930581, 0, 6.89905453, -0.333139211, 0.942877889, 0, 0, 0, -1.00000048, -0.942877889, -0.333139211, -0)
s9.Name = "WeldScript"
s9.Disabled = false
so9 = Instance.new("StringValue", s9)
so9.Name = "forCustomRun"
so9.Value = [===[
print("This Weld Script Generated With Farvei's Instant Weld Script") 
local tool = script.Parent
local parts = {}
local c = tool:GetChildren()
for i = 1, #c do
if c[i].className == "Part" and c[i].Name ~= "Spin" and c[i].Anchored == false then
table.insert(parts, c[i])
end
end
function onWeld()
local c = tool.Spin:GetChildren()
for i = 1, #c do
if c[i].className == "Weld" then
c[i]:Remove()
end
end
for i = 1, #parts do
parts[i].Parent = tool
local w = Instance.new("Weld")
w.Parent = tool.Spin
w.Part0 = w.Parent
w.Part1 = parts[i]
w.C0 = script[parts[i].Name .. "C0"].Value
w.C1 = script[parts[i].Name .. "C1"].Value
end
end

onWeld()
]===]
s9.Parent = m46
m.Parent = game:service("Workspace")
m:MakeJoints()