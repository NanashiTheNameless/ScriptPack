Pl=game.Players.rigletto.PlayerGui
pcall(function() Pl.En:remove() end)
Gui=Instance.new("ScreenGui")
Gui.Parent=Pl
Gui.Name="En"

function XY(x,y)
if type(x)=="number" and type(y)=="number" then
return UDim2.new(x,0,y,0)
else
error("Invalide argument for XY")
end
end

Energy=100

Frame=Instance.new("Frame",Gui)
Frame.BorderSizePixel=0
Frame.Position=XY(0.05,0.45)
Frame.Size=XY(0.025,0.25*(Energy/100))
Frame.BackgroundColor=BrickColor:Blue()

wait(1)
for i=1,100 do
Energy=Energy-1
Frame.Size=XY(0.025,0.25*(Energy/100))
Frame.Position=Frame.Position+XY(0,.25/100) --Smaller#=going down
wait(0.05)
end

rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.99, 0.99, 0.99) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.99, 0.99, 0.99) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Arm"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.99, 0.99, 0.99) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Right Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(1, 2, 1) 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.99, 0.99, 0.99) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Left Leg"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


rleg3 = Instance.new("Part") 
rleg3.formFactor = ("Symmetric") 
rleg3.Size = Vector3.new(2, 2, 1) 
rleg3.BrickColor = BrickColor.new("Really black") 
rleg3.Name = "Middle" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("SpecialMesh") 
rlegm3.MeshType = 6 
rlegm3.Scale = Vector3.new(0.99, 0.99, 0.99) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = suit["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)