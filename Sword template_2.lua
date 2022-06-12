player = game.Players.LocalPlayer
char = player.Character 
tool = Instance.new("Tool") 
tool.Parent = player.Backpack 
script.Parent = tool
tool.Name = "Sword"
handle = Instance.new("Part") 
handle.Parent = char 
handle.Name = "Handle" 
handle.Size = Vector3.new(0,0,0) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.Position = char["Right Arm"].Position
w = Instance.new("Motor",handle)
w.Part0 = char.Torso
w.Part1 = handle 
w.C0 = CFrame.new(-0.4,-0.5225,0.525)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-45),math.rad(0)) 
handle.BrickColor = BrickColor.new("Black") 
local mesh = Instance.new("SpecialMesh", handle) 
mesh.MeshId = "http://www.roblox.com/asset/?id=77403584" 
mesh.TextureId = "http://www.roblox.com/asset/?id=77403631"

function Selected(Tool)
w.Part0 = char["Right Arm"]
w.C0 = CFrame.new(0,-0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
end
