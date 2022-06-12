for _,v in pairs(game.Players:GetPlayers()) do NLS([==[local player = game:service("Players").LocalPlayer
local camera = workspace.CurrentCamera

local dark = Instance.new("Model",workspace.CurrentCamera)

local bound = Instance.new("Part",dark)
bound.CanCollide = false
bound.TopSurface = "Smooth"
bound.BottomSurface = "Smooth"
bound.BrickColor = BrickColor.new("Really black")
bound.FormFactor = "Custom"
bound.Size = Vector3.new(0.2,0.2,0.2)
bound:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound)
mesh.Scale = Vector3.new(-40,-40,-40)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = player.Character:FindFirstChild("Head")
weld.Part1 = bound

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.1
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-38,-38,-38)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.2
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-36,-36,-36)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.3
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-34,-34,-34)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.4
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-32,-32,-32)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.5
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-30,-30,-30)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.6
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-28,-28,-28)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.7
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-26,-26,-26)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.8
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-24,-24,-24)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

local bound1 = Instance.new("Part",dark)
bound1.CanCollide = false
bound1.TopSurface = "Smooth"
bound1.BottomSurface = "Smooth"
bound1.BrickColor = BrickColor.new("Really black")
bound1.FormFactor = "Custom"
bound1.Size = Vector3.new(0.2,0.2,0.2)
bound1.Transparency = 0.9
bound1:BreakJoints()

local mesh = Instance.new("SpecialMesh",bound1)
mesh.Scale = Vector3.new(-22,-22,-22)
mesh.MeshId = "http://www.roblox.com/asset/?id=10061232"

local weld = Instance.new("Weld",player.Character:FindFirstChild("Head"))
weld.Part0 = bound
weld.Part1 = bound1

player.Character:FindFirstChild("Head").AncestryChanged:connect(function()
	dark:Destroy()
end)]==],v.Character) end