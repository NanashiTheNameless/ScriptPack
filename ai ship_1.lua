local plyrs = game:GetService("Players") 
local wkrsp = game:GetService("Workspace") 
local game = game 
local hull = 500 
local pilot = false 
local alive = true 
local cannon = true 
local colors = {"Dark red", "Reddish brown"} 
local color = nil 
local pos = 5 
local forward = false 
local back = false 
local turn = false 
local up = false 
local down = false 
local speed = 100 
if cannon == true then 
color = colors[1] 
else 
color = colors[2] 
end 

pcall(function() wkrsp.Base.Morala:remove() end)
local model = Instance.new("Model", wkrsp.Base) 
model.Name = "Morala" 
local base = Instance.new("Part", model) 
base.formFactor = "Custom" 
base.BrickColor = BrickColor.new(color) 
base.Size = Vector3.new(25, 1, 50) 
base.CFrame = CFrame.new(75, 1, 0) 
base.CanCollide = true 
local basem = Instance.new("BlockMesh", base) 
basem.Bevel = 0.075 
basem.Scale = Vector3.new(1, 1, 1) 
base:BreakJoints() 
local basep = Instance.new("BodyPosition", base) 
basep.position = Vector3.new(75, pos, 0) 
basep.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
local baseg = Instance.new("BodyGyro", base) 
baseg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local base2 = Instance.new("Part", model) 
base2.formFactor = "Custom" 
base2.BrickColor = BrickColor.new(color) 
base2.Size = Vector3.new(25, 1, 50) 
base2.CFrame = CFrame.new(75, 1, 0) 
base2.CanCollide = true 
local base2m = Instance.new("BlockMesh", base2) 
base2m.Bevel = 0.075 
base2m.Scale = Vector3.new(1, 1, 1) 
base2:BreakJoints() 
local base2w = Instance.new("Weld", base2) 
base2w.Part0 = base2 
base2w.Part1 = base 
base2w.C0 = CFrame.new(-2.5, 0.005, 27) * CFrame.Angles(0, 0.75, 0) 
local base3 = Instance.new("Part", model) 
base3.formFactor = "Custom" 
base3.BrickColor = BrickColor.new(color) 
base3.Size = Vector3.new(25, 1, 50) 
base3.CFrame = CFrame.new(75, 1, 0) 
base3.CanCollide = true 
local base3m = Instance.new("BlockMesh", base3) 
base3m.Bevel = 0.075 
base3m.Scale = Vector3.new(1, 1, 1) 
base3:BreakJoints() 
local base3w = Instance.new("Weld", base3) 
base3w.Part0 = base3 
base3w.Part1 = base 
base3w.C0 = CFrame.new(2.5, 0.005, 27) * CFrame.Angles(0, -0.75, 0) 
local base4 = Instance.new("Part", model) 
base4.formFactor = "Custom" 
base4.BrickColor = BrickColor.new(color) 
base4.Size = Vector3.new(20, 3, 1) 
base4.CFrame = CFrame.new(75, 1, 0) 
base4.CanCollide = true 
local base4m = Instance.new("BlockMesh", base4) 
base4m.Bevel = 0.075 
base4m.Scale = Vector3.new(1, 1, 1) 
base4:BreakJoints() 
local base4w = Instance.new("Weld", base4) 
base4w.Part0 = base4 
base4w.Part1 = base 
base4w.C0 = CFrame.new(0, -1.5, 24.5) * CFrame.Angles(0, 0, 0) 
local base5 = Instance.new("Part", model) 
base5.formFactor = "Custom" 
base5.BrickColor = BrickColor.new("Bright blue") 
base5.Transparency = 0.5 
base5.Size = Vector3.new(20, 6, 1) 
base5.CFrame = CFrame.new(75, 1, 0) 
base5.CanCollide = true 
local base5m = Instance.new("BlockMesh", base5) 
base5m.Bevel = 0.075 
base5m.Scale = Vector3.new(0.9999, 1, 0.75) 
base5:BreakJoints() 
local base5w = Instance.new("Weld", base5) 
base5w.Part0 = base5 
base5w.Part1 = base 
base5w.C0 = CFrame.new(0, -4, 24.5) * CFrame.Angles(0, 0, 0) 
local base6 = Instance.new("Part", model) 
base6.formFactor = "Custom" 
base6.BrickColor = BrickColor.new(color) 
base6.Size = Vector3.new(20, 3, 1) 
base6.CFrame = CFrame.new(75, 1, 0) 
base6.CanCollide = true 
local base6m = Instance.new("BlockMesh", base6) 
base6m.Bevel = 0.075 
base6m.Scale = Vector3.new(1, 1, 1) 
base6:BreakJoints() 
local base6w = Instance.new("Weld", base6) 
base6w.Part0 = base6 
base6w.Part1 = base 
base6w.C0 = CFrame.new(0, -8, 24.5) * CFrame.Angles(0, 0, 0) 
local base7 = Instance.new("Part", model) 
base7.formFactor = "Custom" 
base7.BrickColor = BrickColor.new(color) 
base7.Size = Vector3.new(27.5, 3, 1) 
base7.CFrame = CFrame.new(75, 1, 0) 
base7.CanCollide = true 
local base7m = Instance.new("BlockMesh", base7) 
base7m.Bevel = 0.075 
base7m.Scale = Vector3.new(1, 1, 1) 
base7:BreakJoints() 
local base7w = Instance.new("Weld", base7) 
base7w.Part0 = base7 
base7w.Part1 = base 
base7w.C0 = CFrame.new(-38.25, -1.5, 9.5) * CFrame.Angles(0, -0.825, 0) 
local base8 = Instance.new("Part", model) 
base8.formFactor = "Custom" 
base8.Transparency = 0.5 
base8.BrickColor = BrickColor.new("Bright blue") 
base8.Size = Vector3.new(27.5, 6, 1) 
base8.CFrame = CFrame.new(75, 1, 0) 
base8.CanCollide = true 
local base8m = Instance.new("BlockMesh", base8) 
base8m.Bevel = 0.075 
base8m.Scale = Vector3.new(0.9999, 1, 0.75) 
base8:BreakJoints() 
local base8w = Instance.new("Weld", base8) 
base8w.Part0 = base8 
base8w.Part1 = base 
base8w.C0 = CFrame.new(-38.25, -4, 9.5) * CFrame.Angles(0, -0.825, 0) 
local base9 = Instance.new("Part", model) 
base9.formFactor = "Custom" 
base9.BrickColor = BrickColor.new(color) 
base9.Size = Vector3.new(27.5, 3, 1) 
base9.CFrame = CFrame.new(75, 1, 0) 
base9.CanCollide = true 
local base9m = Instance.new("BlockMesh", base9) 
base9m.Bevel = 0.075 
base9m.Scale = Vector3.new(1, 1, 1) 
base9:BreakJoints() 
local base9w = Instance.new("Weld", base9) 
base9w.Part0 = base9 
base9w.Part1 = base 
base9w.C0 = CFrame.new(-38.25, -8, 9.5) * CFrame.Angles(0, -0.825, 0) 
local base10 = Instance.new("Part", model) 
base10.formFactor = "Custom" 
base10.BrickColor = BrickColor.new(color) 
base10.Size = Vector3.new(27.5, 3, 1) 
base10.CFrame = CFrame.new(75, 1, 0) 
base10.CanCollide = true 
local base10m = Instance.new("BlockMesh", base10) 
base10m.Bevel = 0.075 
base10m.Scale = Vector3.new(1, 1, 1) 
base10:BreakJoints() 
local base10w = Instance.new("Weld", base10) 
base10w.Part0 = base10 
base10w.Part1 = base 
base10w.C0 = CFrame.new(38.25, -1.5, 9.5) * CFrame.Angles(0, 0.825, 0) 
local base11 = Instance.new("Part", model) 
base11.formFactor = "Custom" 
base11.Transparency = 0.5 
base11.BrickColor = BrickColor.new("Bright blue") 
base11.Size = Vector3.new(27.5, 6, 1) 
base11.CFrame = CFrame.new(75, 1, 0) 
base11.CanCollide = true 
local base11m = Instance.new("BlockMesh", base11) 
base11m.Bevel = 0.075 
base11m.Scale = Vector3.new(0.9999, 1, 0.75) 
base11:BreakJoints() 
local base11w = Instance.new("Weld", base11) 
base11w.Part0 = base11 
base11w.Part1 = base 
base11w.C0 = CFrame.new(38.25, -4, 9.5) * CFrame.Angles(0, 0.825, 0) 
local base12 = Instance.new("Part", model) 
base12.formFactor = "Custom" 
base12.BrickColor = BrickColor.new(color) 
base12.Size = Vector3.new(27.5, 3, 1) 
base12.CFrame = CFrame.new(75, 1, 0) 
base12.CanCollide = true 
local base12m = Instance.new("BlockMesh", base12) 
base12m.Bevel = 0.075 
base12m.Scale = Vector3.new(1, 1, 1) 
base12:BreakJoints() 
local base12w = Instance.new("Weld", base12) 
base12w.Part0 = base12 
base12w.Part1 = base 
base12w.C0 = CFrame.new(38.25, -8, 9.5) * CFrame.Angles(0, 0.825, 0) 
local base13 = Instance.new("Part", model) 
base13.formFactor = "Custom" 
base13.BrickColor = BrickColor.new(color) 
base13.Size = Vector3.new(25, 10, 1) 
base13.CFrame = CFrame.new(75, 1, 0) 
base13.CanCollide = true 
local base13m = Instance.new("BlockMesh", base13) 
base13m.Bevel = 0.075 
base13m.Scale = Vector3.new(1, 1, 1) 
base13:BreakJoints() 
local base13w = Instance.new("Weld", base13) 
base13w.Part0 = base13 
base13w.Part1 = base2 
base13w.C0 = CFrame.new(0, -4.5, 25) * CFrame.Angles(0, 0, 0) 
local base14 = Instance.new("Part", model) 
base14.formFactor = "Custom" 
base14.BrickColor = BrickColor.new(color) 
base14.Size = Vector3.new(25, 10, 1) 
base14.CFrame = CFrame.new(75, 1, 0) 
base14.CanCollide = true 
local base14m = Instance.new("BlockMesh", base14) 
base14m.Bevel = 0.075 
base14m.Scale = Vector3.new(1, 1, 1) 
base14:BreakJoints() 
local base14w = Instance.new("Weld", base14) 
base14w.Part0 = base14 
base14w.Part1 = base3 
base14w.C0 = CFrame.new(0, -4.5, 25) * CFrame.Angles(0, 0, 0) 
local base15 = Instance.new("Part", model) 
base15.formFactor = "Custom" 
base15.BrickColor = BrickColor.new(color) 
base15.Size = Vector3.new(25, 10, 1) 
base15.CFrame = CFrame.new(75, 1, 0) 
base15.CanCollide = true 
local base15m = Instance.new("BlockMesh", base15) 
base15m.Bevel = 0.075 
base15m.Scale = Vector3.new(1, 1, 1) 
base15:BreakJoints() 
local base15w = Instance.new("Weld", base15) 
base15w.Part0 = base15 
base15w.Part1 = base 
base15w.C0 = CFrame.new(0, -4.5, -25) * CFrame.Angles(0, 0, 0) 
local base16 = Instance.new("Part", model) 
base16.formFactor = "Custom" 
base16.BrickColor = BrickColor.new(color) 
base16.Size = Vector3.new(1, 10, 50) 
base16.CFrame = CFrame.new(75, 1, 0) 
base16.CanCollide = true 
local base16m = Instance.new("BlockMesh", base16) 
base16m.Bevel = 0.075 
base16m.Scale = Vector3.new(1, 1, 1) 
base16:BreakJoints() 
local base16w = Instance.new("Weld", base16) 
base16w.Part0 = base16 
base16w.Part1 = base2 
base16w.C0 = CFrame.new(-12.5, -4.5, 0) * CFrame.Angles(0, 0, 0) 
local base17 = Instance.new("Part", model) 
base17.formFactor = "Custom" 
base17.BrickColor = BrickColor.new(color) 
base17.Size = Vector3.new(1, 10, 50) 
base17.CFrame = CFrame.new(75, 1, 0) 
base17.CanCollide = true 
local base17m = Instance.new("BlockMesh", base17) 
base17m.Bevel = 0.075 
base17m.Scale = Vector3.new(1, 1, 1) 
base17:BreakJoints() 
local base17w = Instance.new("Weld", base17) 
base17w.Part0 = base17 
base17w.Part1 = base3 
base17w.C0 = CFrame.new(12.5, -4.5, 0) * CFrame.Angles(0, 0, 0) 
local base18 = Instance.new("Part", model) 
base18.formFactor = "Custom" 
base18.BrickColor = BrickColor.new(color) 
base18.Size = Vector3.new(15, 1, 25) 
base18.CFrame = CFrame.new(75, 1, 0) 
base18.CanCollide = true 
local base18m = Instance.new("BlockMesh", base18) 
base18m.Bevel = 0.075 
base18m.Scale = Vector3.new(1, 1, 1) 
base18:BreakJoints() 
local base18w = Instance.new("Weld", base18) 
base18w.Part0 = base18 
base18w.Part1 = base 
base18w.C0 = CFrame.new(7.5, 0.005, -27) * CFrame.Angles(0, -1, 0) 
local base19 = Instance.new("Part", model) 
base19.formFactor = "Custom" 
base19.BrickColor = BrickColor.new(color) 
base19.Size = Vector3.new(15, 1, 25) 
base19.CFrame = CFrame.new(75, 1, 0) 
base19.CanCollide = true 
local base19m = Instance.new("BlockMesh", base19) 
base19m.Bevel = 0.075 
base19m.Scale = Vector3.new(1, 1, 1) 
base19:BreakJoints() 
local base19w = Instance.new("Weld", base19) 
base19w.Part0 = base19 
base19w.Part1 = base 
base19w.C0 = CFrame.new(-7.5, 0.005, -27) * CFrame.Angles(0, 1, 0) 
local base20 = Instance.new("Part", model) 
base20.formFactor = "Custom" 
base20.BrickColor = BrickColor.new(color) 
base20.Size = Vector3.new(15, 1, 25) 
base20.CFrame = CFrame.new(75, 1, 0) 
base20.CanCollide = true 
local base20m = Instance.new("BlockMesh", base20) 
base20m.Bevel = 0.075 
base20m.Scale = Vector3.new(1, 1, 1) 
base20:BreakJoints() 
local base20w = Instance.new("Weld", base20) 
base20w.Part0 = base20 
base20w.Part1 = base19 
base20w.C0 = CFrame.new(5.05, 0.0025, -19.75) * CFrame.Angles(0, -0.5, 0) 
local base21 = Instance.new("Part", model) 
base21.formFactor = "Custom" 
base21.BrickColor = BrickColor.new(color) 
base21.Size = Vector3.new(15, 1, 25) 
base21.CFrame = CFrame.new(75, 1, 0) 
base21.CanCollide = true 
local base21m = Instance.new("BlockMesh", base21) 
base21m.Bevel = 0.075 
base21m.Scale = Vector3.new(1, 1, 1) 
base21:BreakJoints() 
local base21w = Instance.new("Weld", base21) 
base21w.Part0 = base21 
base21w.Part1 = base18 
base21w.C0 = CFrame.new(-5.05, 0.0025, -19.75) * CFrame.Angles(0, 0.5, 0) 
local base22 = Instance.new("Part", model) 
base22.formFactor = "Custom" 
base22.BrickColor = BrickColor.new(color) 
base22.Size = Vector3.new(15, 1, 65) 
base22.CFrame = CFrame.new(75, 1, 0) 
base22.CanCollide = true 
local base22m = Instance.new("BlockMesh", base22) 
base22m.Bevel = 0.075 
base22m.Scale = Vector3.new(1, 1, 1) 
base22:BreakJoints() 
local base22w = Instance.new("Weld", base22) 
base22w.Part0 = base22 
base22w.Part1 = base21 
base22w.C0 = CFrame.new(-5.05, -0.0025, -39.75) * CFrame.Angles(0, 0.5, 0) 
local base23 = Instance.new("Part", model) 
base23.formFactor = "Custom" 
base23.BrickColor = BrickColor.new(color) 
base23.Size = Vector3.new(15, 1, 65) 
base23.CFrame = CFrame.new(75, 1, 0) 
base23.CanCollide = true 
local base23m = Instance.new("BlockMesh", base23) 
base23m.Bevel = 0.075 
base23m.Scale = Vector3.new(1, 1, 1) 
base23:BreakJoints() 
local base23w = Instance.new("Weld", base23) 
base23w.Part0 = base23 
base23w.Part1 = base20 
base23w.C0 = CFrame.new(5.05, -0.0025, -39.75) * CFrame.Angles(0, -0.5, 0) 
local base24 = Instance.new("Part", model) 
base24.formFactor = "Custom" 
base24.BrickColor = BrickColor.new(color) 
base24.Size = Vector3.new(15, 1, 25) 
base24.CFrame = CFrame.new(75, 1, 0) 
base24.CanCollide = true 
local base24m = Instance.new("BlockMesh", base24) 
base24m.Bevel = 0.075 
base24m.Scale = Vector3.new(1, 1, 1) 
base24:BreakJoints() 
local base24w = Instance.new("Weld", base24) 
base24w.Part0 = base24 
base24w.Part1 = base23 
base24w.C0 = CFrame.new(14.6, 0.0025, -37.25) * CFrame.Angles(0, -0.5, 0) 
local base25 = Instance.new("Part", model) 
base25.formFactor = "Custom" 
base25.BrickColor = BrickColor.new(color) 
base25.Size = Vector3.new(15, 1, 25) 
base25.CFrame = CFrame.new(75, 1, 0) 
base25.CanCollide = true 
local base25m = Instance.new("BlockMesh", base25) 
base25m.Bevel = 0.075 
base25m.Scale = Vector3.new(1, 1, 1) 
base25:BreakJoints() 
local base25w = Instance.new("Weld", base25) 
base25w.Part0 = base25 
base25w.Part1 = base22 
base25w.C0 = CFrame.new(-14.6, 0.0025, -37.25) * CFrame.Angles(0, 0.5, 0) 
local base26 = Instance.new("Part", model) 
base26.formFactor = "Custom" 
base26.BrickColor = BrickColor.new(color) 
base26.Size = Vector3.new(15, 1, 25) 
base26.CFrame = CFrame.new(75, 1, 0) 
base26.CanCollide = true 
local base26m = Instance.new("BlockMesh", base26) 
base26m.Bevel = 0.075 
base26m.Scale = Vector3.new(1, 1, 1) 
base26:BreakJoints() 
local base26w = Instance.new("Weld", base26) 
base26w.Part0 = base26 
base26w.Part1 = base25 
base26w.C0 = CFrame.new(-5.05, -0.005, -19.75) * CFrame.Angles(0, 0.5, 0) 
local base27 = Instance.new("Part", model) 
base27.formFactor = "Custom" 
base27.BrickColor = BrickColor.new(color) 
base27.Size = Vector3.new(15, 1, 25) 
base27.CFrame = CFrame.new(75, 1, 0) 
base27.CanCollide = true 
local base27m = Instance.new("BlockMesh", base27) 
base27m.Bevel = 0.075 
base27m.Scale = Vector3.new(1, 1, 1) 
base27:BreakJoints() 
local base27w = Instance.new("Weld", base27) 
base27w.Part0 = base27 
base27w.Part1 = base24 
base27w.C0 = CFrame.new(5.05, -0.005, -19.75) * CFrame.Angles(0, -0.5, 0) 
local base28 = Instance.new("Part", model) 
base28.formFactor = "Custom" 
base28.BrickColor = BrickColor.new(color) 
base28.Size = Vector3.new(15, 1, 25) 
base28.CFrame = CFrame.new(75, 1, 0) 
base28.CanCollide = true 
local base28m = Instance.new("BlockMesh", base28) 
base28m.Bevel = 0.075 
base28m.Scale = Vector3.new(1, 1, 1) 
base28:BreakJoints() 
local base28w = Instance.new("Weld", base28) 
base28w.Part0 = base28 
base28w.Part1 = base27 
base28w.C0 = CFrame.new(5.55, -0.005, -18.75) * CFrame.Angles(0, -0.575, 0) 
local base29 = Instance.new("Part", model) 
base29.formFactor = "Custom" 
base29.BrickColor = BrickColor.new(color) 
base29.Size = Vector3.new(65, 1, 108) 
base29.CFrame = CFrame.new(75, 1, 0) 
base29.CanCollide = true 
local base29m = Instance.new("BlockMesh", base29) 
base29m.Bevel = 0.075 
base29m.Scale = Vector3.new(1, 1, 1) 
base29:BreakJoints() 
local base29w = Instance.new("Weld", base29) 
base29w.Part0 = base29 
base29w.Part1 = base 
base29w.C0 = CFrame.new(0, 0.025, -75) * CFrame.Angles(0, 0, 0) 
--most of walls
local times = 0 
for i = 1, 9 do 
times = times + 1 
local wall1 = Instance.new("Part", model) 
wall1.formFactor = "Custom" 
wall1.BrickColor = BrickColor.new(color) 
wall1.Size = Vector3.new(1, 10, 25) 
wall1.CFrame = CFrame.new(75, 1, 0) 
wall1.CanCollide = true 
local wall1m = Instance.new("BlockMesh", wall1) 
wall1m.Bevel = 0.075 
wall1m.Scale = Vector3.new(1, 1, 1) 
wall1:BreakJoints() 
local wall1w = Instance.new("Weld", wall1) 
wall1w.Part0 = wall1 
if times == 1 then 
wall1w.Part1 = base28 
wall1w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 2 then 
wall1w.Part1 = base27 
wall1w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 3 then 
wall1w.Part1 = base26 
wall1w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 4 then 
wall1w.Part1 = base25 
wall1w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 5 then 
wall1w.Part1 = base24 
wall1w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 6 then 
wall1w.Part1 = base21 
wall1w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 7 then 
wall1w.Part1 = base20 
wall1w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 8 then 
wall1w.Part1 = base19 
wall1w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
if times == 9 then 
wall1w.Part1 = base18 
wall1w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
end 
wait() 
end 
local wall2 = Instance.new("Part", model) 
wall2.formFactor = "Custom" 
wall2.BrickColor = BrickColor.new(color) 
wall2.Size = Vector3.new(1, 10, 16.5) 
wall2.CFrame = CFrame.new(75, 1, 0) 
wall2.CanCollide = true 
local wall2m = Instance.new("BlockMesh", wall2) 
wall2m.Bevel = 0.075 
wall2m.Scale = Vector3.new(1, 1, 1) 
wall2:BreakJoints() 
local wall2w = Instance.new("Weld", wall2) 
wall2w.Part0 = wall2 
wall2w.Part1 = base28 
wall2w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall3 = Instance.new("Part", model) 
wall3.formFactor = "Custom" 
wall3.BrickColor = BrickColor.new(color) 
wall3.Size = Vector3.new(1, 10, 17) 
wall3.CFrame = CFrame.new(75, 1, 0) 
wall3.CanCollide = true 
local wall3m = Instance.new("BlockMesh", wall3) 
wall3m.Bevel = 0.075 
wall3m.Scale = Vector3.new(1, 1, 1) 
wall3:BreakJoints() 
local wall3w = Instance.new("Weld", wall3) 
wall3w.Part0 = wall3 
wall3w.Part1 = base27 
wall3w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall4 = Instance.new("Part", model) 
wall4.formFactor = "Custom" 
wall4.BrickColor = BrickColor.new(color) 
wall4.Size = Vector3.new(1, 10, 17) 
wall4.CFrame = CFrame.new(75, 1, 0) 
wall4.CanCollide = true 
local wall4m = Instance.new("BlockMesh", wall4) 
wall4m.Bevel = 0.075 
wall4m.Scale = Vector3.new(1, 1, 1) 
wall4:BreakJoints() 
local wall4w = Instance.new("Weld", wall4) 
wall4w.Part0 = wall4 
wall4w.Part1 = base26 
wall4w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall5 = Instance.new("Part", model) 
wall5.formFactor = "Custom" 
wall5.BrickColor = BrickColor.new(color) 
wall5.Size = Vector3.new(1, 10, 18.5) 
wall5.CFrame = CFrame.new(75, 1, 0) 
wall5.CanCollide = true 
local wall5m = Instance.new("BlockMesh", wall5) 
wall5m.Bevel = 0.075 
wall5m.Scale = Vector3.new(1, 1, 1) 
wall5:BreakJoints() 
local wall5w = Instance.new("Weld", wall5) 
wall5w.Part0 = wall5 
wall5w.Part1 = base25 
wall5w.C0 = CFrame.new(7.25, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall6 = Instance.new("Part", model) 
wall6.formFactor = "Custom" 
wall6.BrickColor = BrickColor.new(color) 
wall6.Size = Vector3.new(1, 10, 18.5) 
wall6.CFrame = CFrame.new(75, 1, 0) 
wall6.CanCollide = true 
local wall6m = Instance.new("BlockMesh", wall6) 
wall6m.Bevel = 0.075 
wall6m.Scale = Vector3.new(1, 1, 1) 
wall6:BreakJoints() 
local wall6w = Instance.new("Weld", wall6) 
wall6w.Part0 = wall6 
wall6w.Part1 = base24 
wall6w.C0 = CFrame.new(-7.25, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall7 = Instance.new("Part", model) 
wall7.formFactor = "Custom" 
wall7.BrickColor = BrickColor.new(color) 
wall7.Size = Vector3.new(1, 10, 12) 
wall7.CFrame = CFrame.new(75, 1, 0) 
wall7.CanCollide = true 
local wall7m = Instance.new("BlockMesh", wall7) 
wall7m.Bevel = 0.075 
wall7m.Scale = Vector3.new(1, 1, 1) 
wall7:BreakJoints() 
local wall7w = Instance.new("Weld", wall7) 
wall7w.Part0 = wall7 
wall7w.Part1 = base19 
wall7w.C0 = CFrame.new(-6.95, -5, -2.85) * CFrame.Angles(0, 0, 0) 
local wall8 = Instance.new("Part", model) 
wall8.formFactor = "Custom" 
wall8.BrickColor = BrickColor.new(color) 
wall8.Size = Vector3.new(1, 10, 12) 
wall8.CFrame = CFrame.new(75, 1, 0) 
wall8.CanCollide = true 
local wall8m = Instance.new("BlockMesh", wall8) 
wall8m.Bevel = 0.075 
wall8m.Scale = Vector3.new(1, 1, 1) 
wall8:BreakJoints() 
local wall8w = Instance.new("Weld", wall8) 
wall8w.Part0 = wall8 
wall8w.Part1 = base18 
wall8w.C0 = CFrame.new(6.95, -5, -2.85) * CFrame.Angles(0, 0, 0) 
local wall9 = Instance.new("Part", model) 
wall9.formFactor = "Custom" 
wall9.BrickColor = BrickColor.new(color) 
wall9.Size = Vector3.new(1, 10, 18) 
wall9.CFrame = CFrame.new(75, 1, 0) 
wall9.CanCollide = true 
local wall9m = Instance.new("BlockMesh", wall9) 
wall9m.Bevel = 0.075 
wall9m.Scale = Vector3.new(1, 1, 1) 
wall9:BreakJoints() 
local wall9w = Instance.new("Weld", wall9) 
wall9w.Part0 = wall9 
wall9w.Part1 = base20 
wall9w.C0 = CFrame.new(-6.95, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall10 = Instance.new("Part", model) 
wall10.formFactor = "Custom" 
wall10.BrickColor = BrickColor.new(color) 
wall10.Size = Vector3.new(1, 10, 18) 
wall10.CFrame = CFrame.new(75, 1, 0) 
wall10.CanCollide = true 
local wall10m = Instance.new("BlockMesh", wall10) 
wall10m.Bevel = 0.075 
wall10m.Scale = Vector3.new(1, 1, 1) 
wall10:BreakJoints() 
local wall10w = Instance.new("Weld", wall10) 
wall10w.Part0 = wall10 
wall10w.Part1 = base21 
wall10w.C0 = CFrame.new(6.95, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall11 = Instance.new("Part", model) 
wall11.formFactor = "Custom" 
wall11.BrickColor = BrickColor.new(color) 
wall11.Size = Vector3.new(1, 10, 57) 
wall11.CFrame = CFrame.new(75, 1, 0) 
wall11.CanCollide = true 
local wall11m = Instance.new("BlockMesh", wall11) 
wall11m.Bevel = 0.075 
wall11m.Scale = Vector3.new(1, 1, 1) 
wall11:BreakJoints() 
local wall11w = Instance.new("Weld", wall11) 
wall11w.Part0 = wall11 
wall11w.Part1 = base22 
wall11w.C0 = CFrame.new(7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall12 = Instance.new("Part", model) 
wall12.formFactor = "Custom" 
wall12.BrickColor = BrickColor.new(color) 
wall12.Size = Vector3.new(1, 10, 65) 
wall12.CFrame = CFrame.new(75, 1, 0) 
wall12.CanCollide = true 
local wall12m = Instance.new("BlockMesh", wall12) 
wall12m.Bevel = 0.075 
wall12m.Scale = Vector3.new(1, 1, 1) 
wall12:BreakJoints() 
local wall12w = Instance.new("Weld", wall12) 
wall12w.Part0 = wall12 
wall12w.Part1 = base22 
wall12w.C0 = CFrame.new(-7.05, -5, 0) * CFrame.Angles(0, 0, 0) 
local wall13 = Instance.new("Part", model) 
wall13.formFactor = "Custom" 
wall13.BrickColor = BrickColor.new(color) 
wall13.Size = Vector3.new(1, 10, 15.5) 
wall13.CFrame = CFrame.new(75, 1, 0) 
wall13.CanCollide = true 
local wall13m = Instance.new("BlockMesh", wall13) 
wall13m.Bevel = 0.075 
wall13m.Scale = Vector3.new(1, 1, 1) 
wall13:BreakJoints() 
local wall13w = Instance.new("Weld", wall13) 
wall13w.Part0 = wall13 
wall13w.Part1 = base23 
wall13w.C0 = CFrame.new(-6.95, -5, 21.25) * CFrame.Angles(0, 0, 0) 
local wall14 = Instance.new("Part", model) 
wall14.formFactor = "Custom" 
wall14.BrickColor = BrickColor.new(color) 
wall14.Size = Vector3.new(1, 10, 15.5) 
wall14.CFrame = CFrame.new(75, 1, 0) 
wall14.CanCollide = true 
local wall14m = Instance.new("BlockMesh", wall14) 
wall14m.Bevel = 0.075 
wall14m.Scale = Vector3.new(1, 1, 1) 
wall14:BreakJoints() 
local wall14w = Instance.new("Weld", wall14) 
wall14w.Part0 = wall14 
wall14w.Part1 = base23 
wall14w.C0 = CFrame.new(-6.95, -5, -21.25) * CFrame.Angles(0, 0, 0) 
--cannon 
if cannon == true then 
local gun1 = Instance.new("Part", model) 
gun1.formFactor = "Custom" 
gun1.Name = "gun1s" 
gun1.BrickColor = BrickColor.new(color) 
gun1.Size = Vector3.new(4, 25, 4) 
gun1.CFrame = CFrame.new(75, 1, 0) 
gun1.CanCollide = false 
local gun1m = Instance.new("CylinderMesh", gun1) 
gun1m.Bevel = 0.075 
gun1m.Scale = Vector3.new(1, 1, 1) 
gun1:BreakJoints() 
local gun1w = Instance.new("Weld", gun1) 
gun1w.Part0 = gun1 
gun1w.Part1 = base 
gun1w.C0 = CFrame.new(8, -15, 1.75) * CFrame.Angles(1.6, 0, 0) 
local gun2 = Instance.new("Part", model) 
gun2.formFactor = "Custom" 
gun2.BrickColor = BrickColor.new(color) 
gun2.Size = Vector3.new(4, 25, 4) 
gun2.Name = "gun2s" 
gun2.CFrame = CFrame.new(75, 1, 0) 
gun2.CanCollide = false 
local gun2m = Instance.new("CylinderMesh", gun2) 
gun2m.Bevel = 0.075 
gun2m.Scale = Vector3.new(1, 1, 1) 
gun2:BreakJoints() 
local gun2w = Instance.new("Weld", gun2) 
gun2w.Part0 = gun2 
gun2w.Part1 = base 
gun2w.C0 = CFrame.new(-8, -15, 1.75) * CFrame.Angles(1.6, 0, 0) 
end 
--
while wait() do 
local choice = math.random(1, 6) 
if choice == 1 and forward == false then 
forward = true 
for i = 0, 1, 0.1 do 
basep.position = basep.position + Vector3.new(0, 0, math.random(1, 2)) 
wait(0.15) 
end 
forward = false 
end 
if choice == 2 and back == false then 
back = true 
for i = 0, 1, 0.1 do 
basep.position = basep.position - Vector3.new(0, 0, math.random(1, 2)) 
wait(0.15) 
end 
back = false 
end 
if choice == 3 then 

end 
if choice == 4 then 
mis1 = gun1:clone() 
mis2 = gun2:clone() 
mis1:BreakJoints() 
mis2:BreakJoints() 
mis1.CFrame = gun1.CFrame 
mis2.CFrame = gun2.CFrame 
mis1.Velocity = gun1.CFrame.lookVector * 250 
mis2.Velocity = gun2.CFrame.lookVector * 250 
end 
if choice == 5 then 
end 
if choice == 6 then 

end 
end 