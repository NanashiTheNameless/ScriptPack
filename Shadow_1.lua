-- params : ...

Model = Instance.new("Model", game.Workspace)
Model.Name = "ShadowFigs"
Model.ChildAdded:connect(function(Child)
  
  wait(0.2)
  if Child.Name == "ShadowClone" and Child.Name ~= "HoverBlocks" then
    local Light = Instance.new("PointLight", Child.Torso)
    Light.Color = Color3.new(1, 1, 1)
    Light.Range = 10
    Light.Brightness = 2
    Light.Shadows = true
    for t = 1, 5 do
      wait(0.1)
      for i = 1, #Child:GetChildren() do
        Child:GetChildren()[i].Transparency = t / 10 + 0.5
      end
    end
    Child:remove()
  end
end
)
Parts = {"Head", "Torso", "Left Arm", "Left Leg", "Right Arm", "Right Leg"}
repeat
  wait()
until game.Players.LocalPlayer
Plr = game.Players.LocalPlayer
PlrChildren = Plr:GetChildren()
Plr.Character.Humanoid.WalkSpeed = 32
for i = 1, #PlrChildren do
  print(PlrChildren[i])
end
do
  while 1 do
    Posit = Plr.Character.HumanoidRootPart.Position
    wait(0.1)
    if Plr.Character.HumanoidRootPart.Position == Posit or Plr.Character.Humanoid.WalkSpeed == 32 then
      Set = Instance.new("Model", game.Workspace.ShadowFigs)
      Set.Name = "ShadowClone"
      for i = 1, #Parts do
        PartClone = Plr.Character[Parts[i]]:Clone()
        RotationX = math.rad(Plr.Character[Parts[i]].Rotation.X)
        RotationY = math.rad(Plr.Character[Parts[i]].Rotation.Y)
        RotationZ = math.rad(Plr.Character[Parts[i]].Rotation.Z)
        PartClone.CFrame = CFrame.new(Plr.Character[Parts[i]].Position) * CFrame.Angles(RotationX, RotationY, RotationZ)
        PartClone.Parent = Set
        PartClone.Anchored = true
        PartClone.CanCollide = false
        PartClone.Transparency = 0.7
        PartClone.Material = "Neon"
        PartClone.BrickColor = BrickColor.new("Really black")
        if PartClone.Name == "Head" or PartClone.Name == "Torso" then
          Children = PartClone:GetChildren()
          for i = 1, #Children do
            if Children[i].ClassName ~= "Mesh" and Children[i].ClassName ~= "SpecialMesh" then
              Children[i]:remove()
            end
          end
        end
      end
    end
  end
end
