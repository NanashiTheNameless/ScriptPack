Check = {
  "Scriptmuch",
  "assassin"
}
local Player = game.Players.LocalPlayer
for i = 1, #Check do
  if Player.Name == Check[i] then
    if Player.Character:FindFirstChild("Shirt") then
      Player.Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=169581043"
      if Player.Character:FindFirstChild("Pants") then
        Player.Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=203156274"
      end
    end
    do
      local Katana = Instance.new("HopperBin")
      Katana.Name = "Final Tensa Zangetsu"
      Katana.Parent = Player.Backpack
      local Lethal = true
      local Pierced = false
      local RunService = game:GetService("RunService")
      last_attack = 0
      function tagHumanoid(humanoid, player)
        local creator_tag = Instance.new("ObjectValue")
        creator_tag.Value = player
        creator_tag.Name = "creator"
        creator_tag.Parent = humanoid
      end
      function untagHumanoid(humanoid)
        if humanoid ~= nil then
          local tag = humanoid:FindFirstChild("creator")
          if tag ~= nil then
            tag.Parent = nil
          end
        end
      end
      local EnergyHandle = Instance.new("Fire")
      EnergyHandle.Heat = -25
      EnergyHandle.Size = 2.5
      EnergyHandle.Color = Color3.new(0, 0, 0)
      EnergyHandle.SecondaryColor = Color3.new(0, 0, 0)
      local EnergyGuard = Instance.new("Fire")
      EnergyGuard.Heat = 25
      EnergyGuard.Size = 2.5
      EnergyGuard.Color = Color3.new(0, 0, 0)
      EnergyGuard.SecondaryColor = Color3.new(0, 0, 0)
      local EnergyBlade = Instance.new("Fire")
      EnergyBlade.Heat = 25
      EnergyBlade.Size = 2.5
      EnergyBlade.Color = Color3.new(0, 0, 0)
      EnergyBlade.SecondaryColor = Color3.new(0, 0, 0)
      local EnergyBladeTip = Instance.new("Fire")
      EnergyBladeTip.Heat = 25
      EnergyBladeTip.Size = 2
      EnergyBladeTip.Color = Color3.new(0, 0, 0)
      EnergyBladeTip.SecondaryColor = Color3.new(0, 0, 0)
      local FullRelease = Instance.new("Model")
      FullRelease.Name = "FullRelease"
      FullRelease.Parent = Katana
      local MainHandle = Instance.new("Model")
      MainHandle.Name = "MainHandle"
      MainHandle.Parent = Katana
      local MainGuard = Instance.new("Model")
      MainGuard.Name = "Guard"
      MainGuard.Parent = Katana
      local MainBlade = Instance.new("Model")
      MainBlade.Name = "Blade"
      MainBlade.Parent = Katana
      local Ability = Instance.new("NumberValue")
      Ability.Name = "Ability"
      Ability.Parent = Katana
      local CoolDown = Instance.new("BoolValue")
      CoolDown.Name = "FlashJump"
      CoolDown.Parent = Katana
      local Attacking = Instance.new("NumberValue")
      Attacking.Name = "Attacking"
      Attacking.Parent = Katana
      local Reload = Instance.new("NumberValue")
      Reload.Name = "Reload"
      Reload.Parent = Katana
      local Enhanced = Instance.new("BoolValue")
      Enhanced.Name = "Enhanced"
      Enhanced.Parent = Katana
      local Enhancement = Instance.new("BoolValue")
      Enhancement.Name = "Enhancement"
      Enhancement.Parent = Katana
      local Piercer = Instance.new("BoolValue")
      Piercer.Name = "Piercer"
      Piercer.Parent = Katana
      local ShadowCoolDown = Instance.new("NumberValue")
      ShadowCoolDown.Name = "ShadowCoolDown"
      ShadowCoolDown.Parent = Katana
      local Handle = Instance.new("Part")
      Handle.Locked = true
      local HandleMesh = Instance.new("BlockMesh")
      Handle.BrickColor = BrickColor.new("Really black")
      Handle.FormFactor = "Custom"
      Handle.Name = "Handle"
      Handle.Size = Vector3.new(0.2, 2, 0.2)
      Handle.Parent = Katana
      HandleMesh.Offset = Vector3.new(0, 0, 0)
      HandleMesh.Scale = Vector3.new(0.5, 1, 0.5)
      HandleMesh.Parent = Handle
      local HandleDetailFront = Instance.new("Part")
      HandleDetailFront.Locked = true
      local HandleDetailFrontMesh = Instance.new("CylinderMesh")
      local HandleDetailFrontWeld = Instance.new("Weld")
      HandleDetailFront.BrickColor = BrickColor.new("Really black")
      HandleDetailFront.FormFactor = "Custom"
      HandleDetailFront.Name = "Plate"
      HandleDetailFront.Size = Vector3.new(0.2, 2, 0.2)
      HandleDetailFront.Parent = MainHandle
      HandleDetailFrontMesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailFrontMesh.Scale = Vector3.new(0.5, 1, 0.5)
      HandleDetailFrontMesh.Parent = HandleDetailFront
      HandleDetailFrontWeld.Part0 = HandleDetailFront
      HandleDetailFrontWeld.Part1 = Handle
      HandleDetailFrontWeld.C0 = CFrame.new(0, 0, 0.05) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      HandleDetailFrontWeld.Parent = HandleDetailFront
      local HandleDetailBack = Instance.new("Part")
      HandleDetailBack.Locked = true
      local HandleDetailBackMesh = Instance.new("CylinderMesh")
      local HandleDetailBackWeld = Instance.new("Weld")
      HandleDetailBack.BrickColor = BrickColor.new("Really black")
      HandleDetailBack.FormFactor = "Custom"
      HandleDetailBack.Name = "Plate"
      HandleDetailBack.Size = Vector3.new(0.2, 2, 0.2)
      HandleDetailBack.Parent = MainHandle
      HandleDetailBackMesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailBackMesh.Scale = Vector3.new(0.5, 1, 0.5)
      HandleDetailBackMesh.Parent = HandleDetailBack
      HandleDetailBackWeld.Part0 = HandleDetailBack
      HandleDetailBackWeld.Part1 = Handle
      HandleDetailBackWeld.C0 = CFrame.new(0, 0, -0.05) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      HandleDetailBackWeld.Parent = HandleDetailBack
      local HandleDetailCenter1 = Instance.new("Part")
      HandleDetailCenter1.Reflectance = 0.2
      HandleDetailCenter1.Locked = true
      local HandleDetailCenter1Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter1Weld = Instance.new("Weld")
      HandleDetailCenter1.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter1.FormFactor = "Custom"
      HandleDetailCenter1.Name = "Detail"
      HandleDetailCenter1.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter1.Parent = MainHandle
      HandleDetailCenter1Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter1Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter1Mesh.Parent = HandleDetailCenter1
      HandleDetailCenter1Weld.Part0 = HandleDetailCenter1
      HandleDetailCenter1Weld.Part1 = Handle
      HandleDetailCenter1Weld.C0 = CFrame.new(0, 0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter1Weld.Parent = HandleDetailCenter1
      local HandleDetailCenter2 = Instance.new("Part")
      HandleDetailCenter2.Reflectance = 0.2
      HandleDetailCenter2.Locked = true
      local HandleDetailCenter2Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter2Weld = Instance.new("Weld")
      HandleDetailCenter2.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter2.FormFactor = "Custom"
      HandleDetailCenter2.Name = "Detail"
      HandleDetailCenter2.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter2.Parent = MainHandle
      HandleDetailCenter2Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter2Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter2Mesh.Parent = HandleDetailCenter2
      HandleDetailCenter2Weld.Part0 = HandleDetailCenter2
      HandleDetailCenter2Weld.Part1 = Handle
      HandleDetailCenter2Weld.C0 = CFrame.new(0, 0.35, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter2Weld.Parent = HandleDetailCenter2
      local HandleDetailCenter3 = Instance.new("Part")
      HandleDetailCenter3.Reflectance = 0.2
      HandleDetailCenter3.Locked = true
      local HandleDetailCenter3Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter3Weld = Instance.new("Weld")
      HandleDetailCenter3.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter3.FormFactor = "Custom"
      HandleDetailCenter3.Name = "Detail"
      HandleDetailCenter3.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter3.Parent = MainHandle
      HandleDetailCenter3Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter3Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter3Mesh.Parent = HandleDetailCenter3
      HandleDetailCenter3Weld.Part0 = HandleDetailCenter3
      HandleDetailCenter3Weld.Part1 = Handle
      HandleDetailCenter3Weld.C0 = CFrame.new(0, 0.2, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter3Weld.Parent = HandleDetailCenter3
      local HandleDetailCenter4 = Instance.new("Part")
      HandleDetailCenter4.Reflectance = 0.2
      HandleDetailCenter4.Locked = true
      local HandleDetailCenter4Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter4Weld = Instance.new("Weld")
      HandleDetailCenter4.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter4.FormFactor = "Custom"
      HandleDetailCenter4.Name = "Detail"
      HandleDetailCenter4.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter4.Parent = MainHandle
      HandleDetailCenter4Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter4Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter4Mesh.Parent = HandleDetailCenter4
      HandleDetailCenter4Weld.Part0 = HandleDetailCenter4
      HandleDetailCenter4Weld.Part1 = Handle
      HandleDetailCenter4Weld.C0 = CFrame.new(0, 0.05, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter4Weld.Parent = HandleDetailCenter4
      local HandleDetailCenter5 = Instance.new("Part")
      HandleDetailCenter5.Reflectance = 0.2
      HandleDetailCenter5.Locked = true
      local HandleDetailCenter5Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter5Weld = Instance.new("Weld")
      HandleDetailCenter5.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter5.FormFactor = "Custom"
      HandleDetailCenter5.Name = "Detail"
      HandleDetailCenter5.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter5.Parent = MainHandle
      HandleDetailCenter5Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter5Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter5Mesh.Parent = HandleDetailCenter5
      HandleDetailCenter5Weld.Part0 = HandleDetailCenter5
      HandleDetailCenter5Weld.Part1 = Handle
      HandleDetailCenter5Weld.C0 = CFrame.new(0, -0.1, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter5Weld.Parent = HandleDetailCenter5
      local HandleDetailCenter6 = Instance.new("Part")
      HandleDetailCenter6.Reflectance = 0.2
      HandleDetailCenter6.Locked = true
      local HandleDetailCenter6Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter6Weld = Instance.new("Weld")
      HandleDetailCenter6.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter6.FormFactor = "Custom"
      HandleDetailCenter6.Name = "Detail"
      HandleDetailCenter6.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter6.Parent = MainHandle
      HandleDetailCenter6Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter6Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter6Mesh.Parent = HandleDetailCenter6
      HandleDetailCenter6Weld.Part0 = HandleDetailCenter6
      HandleDetailCenter6Weld.Part1 = Handle
      HandleDetailCenter6Weld.C0 = CFrame.new(0, -0.25, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter6Weld.Parent = HandleDetailCenter6
      local HandleDetailCenter7 = Instance.new("Part")
      HandleDetailCenter7.Reflectance = 0.2
      HandleDetailCenter7.Locked = true
      local HandleDetailCenter7Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter7Weld = Instance.new("Weld")
      HandleDetailCenter7.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter7.FormFactor = "Custom"
      HandleDetailCenter7.Name = "Detail"
      HandleDetailCenter7.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter7.Parent = MainHandle
      HandleDetailCenter7Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter7Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter7Mesh.Parent = HandleDetailCenter7
      HandleDetailCenter7Weld.Part0 = HandleDetailCenter7
      HandleDetailCenter7Weld.Part1 = Handle
      HandleDetailCenter7Weld.C0 = CFrame.new(0, -0.4, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter7Weld.Parent = HandleDetailCenter7
      local HandleDetailCenter8 = Instance.new("Part")
      HandleDetailCenter8.Reflectance = 0.2
      HandleDetailCenter8.Locked = true
      local HandleDetailCenter8Mesh = Instance.new("BlockMesh")
      local HandleDetailCenter8Weld = Instance.new("Weld")
      HandleDetailCenter8.BrickColor = BrickColor.new("Really black")
      HandleDetailCenter8.FormFactor = "Custom"
      HandleDetailCenter8.Name = "Detail"
      HandleDetailCenter8.Size = Vector3.new(0.2, 0.2, 0.2)
      HandleDetailCenter8.Parent = MainHandle
      HandleDetailCenter8Mesh.Offset = Vector3.new(0, 0, 0)
      HandleDetailCenter8Mesh.Scale = Vector3.new(0.51, 0.5, 0.5)
      HandleDetailCenter8Mesh.Parent = HandleDetailCenter8
      HandleDetailCenter8Weld.Part0 = HandleDetailCenter8
      HandleDetailCenter8Weld.Part1 = Handle
      HandleDetailCenter8Weld.C0 = CFrame.new(0, -0.55, -0.55) * CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
      HandleDetailCenter8Weld.Parent = HandleDetailCenter8
      local Guard = Instance.new("Part")
      Guard.Locked = true
      local GuardMesh = Instance.new("BlockMesh")
      local GuardWeld = Instance.new("Weld")
      Guard.BrickColor = BrickColor.new("Really black")
      Guard.FormFactor = "Custom"
      Guard.Name = "Frame"
      Guard.Size = Vector3.new(0.15, 0.2, 0.35)
      Guard.Parent = MainGuard
      GuardMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardMesh.Scale = Vector3.new(1, 0.25, 1)
      GuardMesh.Parent = Guard
      GuardWeld.Part0 = Handle
      GuardWeld.Part1 = Guard
      GuardWeld.C0 = CFrame.new(0, 1.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      GuardWeld.Parent = Guard
      local GuardDetailFront = Instance.new("Part")
      GuardDetailFront.Locked = true
      local GuardDetailFrontMesh = Instance.new("BlockMesh")
      local GuardDetailFrontWeld = Instance.new("Weld")
      GuardDetailFront.BrickColor = BrickColor.new("Really black")
      GuardDetailFront.FormFactor = "Custom"
      GuardDetailFront.Name = "Plate"
      GuardDetailFront.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailFront.Parent = MainGuard
      GuardDetailFrontMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailFrontMesh.Scale = Vector3.new(0.2, 0.2, 1.85)
      GuardDetailFrontMesh.Parent = GuardDetailFront
      GuardDetailFrontWeld.Part0 = Guard
      GuardDetailFrontWeld.Part1 = GuardDetailFront
      GuardDetailFrontWeld.C0 = CFrame.new(0, 0, 0.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      GuardDetailFrontWeld.Parent = Guard
      local GuardDetailBack = Instance.new("Part")
      GuardDetailBack.Locked = true
      local GuardDetailBackMesh = Instance.new("BlockMesh")
      local GuardDetailBackWeld = Instance.new("Weld")
      GuardDetailBack.BrickColor = BrickColor.new("Really black")
      GuardDetailBack.FormFactor = "Custom"
      GuardDetailBack.Name = "Plate"
      GuardDetailBack.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailBack.Parent = MainGuard
      GuardDetailBackMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailBackMesh.Scale = Vector3.new(0.2, 0.2, 1.85)
      GuardDetailBackMesh.Parent = GuardDetailBack
      GuardDetailBackWeld.Part0 = Guard
      GuardDetailBackWeld.Part1 = GuardDetailBack
      GuardDetailBackWeld.C0 = CFrame.new(0, 0, -0.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      GuardDetailBackWeld.Parent = Guard
      local GuardDetailBackOuter = Instance.new("Part")
      GuardDetailBackOuter.Locked = true
      local GuardDetailBackOuterMesh = Instance.new("BlockMesh")
      local GuardDetailBackOuterWeld = Instance.new("Weld")
      GuardDetailBackOuter.BrickColor = BrickColor.new("Really black")
      GuardDetailBackOuter.FormFactor = "Custom"
      GuardDetailBackOuter.Name = "Plate"
      GuardDetailBackOuter.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailBackOuter.Parent = MainGuard
      GuardDetailBackOuterMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailBackOuterMesh.Scale = Vector3.new(0.165, 0.165, 1.2)
      GuardDetailBackOuterMesh.Parent = GuardDetailBackOuter
      GuardDetailBackOuterWeld.Part0 = Guard
      GuardDetailBackOuterWeld.Part1 = GuardDetailBackOuter
      GuardDetailBackOuterWeld.C0 = CFrame.new(0.2, 0, 0.6) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
      GuardDetailBackOuterWeld.Parent = Guard
      local GuardDetailLeft = Instance.new("Part")
      GuardDetailLeft.Locked = true
      local GuardDetailLeftMesh = Instance.new("BlockMesh")
      local GuardDetailLeftWeld = Instance.new("Weld")
      GuardDetailLeft.BrickColor = BrickColor.new("Really black")
      GuardDetailLeft.FormFactor = "Custom"
      GuardDetailLeft.Name = "Plate"
      GuardDetailLeft.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailLeft.Parent = MainGuard
      GuardDetailLeftMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailLeftMesh.Scale = Vector3.new(0.2, 0.2, 1.85)
      GuardDetailLeftMesh.Parent = GuardDetailLeft
      GuardDetailLeftWeld.Part0 = Guard
      GuardDetailLeftWeld.Part1 = GuardDetailLeft
      GuardDetailLeftWeld.C0 = CFrame.new(-0.25, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
      GuardDetailLeftWeld.Parent = Guard
      local GuardDetailLeftOuter = Instance.new("Part")
      GuardDetailLeftOuter.Locked = true
      local GuardDetailLeftOuterMesh = Instance.new("BlockMesh")
      local GuardDetailLeftOuterWeld = Instance.new("Weld")
      GuardDetailLeftOuter.BrickColor = BrickColor.new("Really black")
      GuardDetailLeftOuter.FormFactor = "Custom"
      GuardDetailLeftOuter.Name = "Plate"
      GuardDetailLeftOuter.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailLeftOuter.Parent = MainGuard
      GuardDetailLeftOuterMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailLeftOuterMesh.Scale = Vector3.new(0.165, 0.165, 1.2)
      GuardDetailLeftOuterMesh.Parent = GuardDetailLeftOuter
      GuardDetailLeftOuterWeld.Part0 = Guard
      GuardDetailLeftOuterWeld.Part1 = GuardDetailLeftOuter
      GuardDetailLeftOuterWeld.C0 = CFrame.new(-0.6, 0, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      GuardDetailLeftOuterWeld.Parent = Guard
      local GuardDetailRight = Instance.new("Part")
      GuardDetailRight.Locked = true
      local GuardDetailRightMesh = Instance.new("BlockMesh")
      local GuardDetailRightWeld = Instance.new("Weld")
      GuardDetailRight.BrickColor = BrickColor.new("Really black")
      GuardDetailRight.FormFactor = "Custom"
      GuardDetailRight.Name = "Plate"
      GuardDetailRight.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailRight.Parent = MainGuard
      GuardDetailRightMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailRightMesh.Scale = Vector3.new(0.2, 0.2, 1.85)
      GuardDetailRightMesh.Parent = GuardDetailRight
      GuardDetailRightWeld.Part0 = Guard
      GuardDetailRightWeld.Part1 = GuardDetailRight
      GuardDetailRightWeld.C0 = CFrame.new(0.25, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
      GuardDetailRightWeld.Parent = Guard
      local GuardDetailRightOuter = Instance.new("Part")
      GuardDetailRightOuter.Locked = true
      local GuardDetailRightOuterMesh = Instance.new("BlockMesh")
      local GuardDetailRightOuterWeld = Instance.new("Weld")
      GuardDetailRightOuter.BrickColor = BrickColor.new("Really black")
      GuardDetailRightOuter.FormFactor = "Custom"
      GuardDetailRightOuter.Name = "Plate"
      GuardDetailRightOuter.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailRightOuter.Parent = MainGuard
      GuardDetailRightOuterMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailRightOuterMesh.Scale = Vector3.new(0.165, 0.165, 1.2)
      GuardDetailRightOuterMesh.Parent = GuardDetailRightOuter
      GuardDetailRightOuterWeld.Part0 = Guard
      GuardDetailRightOuterWeld.Part1 = GuardDetailRightOuter
      GuardDetailRightOuterWeld.C0 = CFrame.new(0.6, 0, -0.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      GuardDetailRightOuterWeld.Parent = Guard
      local GuardDetailFrontOuter = Instance.new("Part")
      GuardDetailFrontOuter.Locked = true
      local GuardDetailFrontOuterMesh = Instance.new("BlockMesh")
      local GuardDetailFrontOuterWeld = Instance.new("Weld")
      GuardDetailFrontOuter.BrickColor = BrickColor.new("Really black")
      GuardDetailFrontOuter.FormFactor = "Custom"
      GuardDetailFrontOuter.Name = "Plate"
      GuardDetailFrontOuter.Size = Vector3.new(0.2, 0.2, 0.5)
      GuardDetailFrontOuter.Parent = MainGuard
      GuardDetailFrontOuterMesh.Offset = Vector3.new(0, -0.125, 0)
      GuardDetailFrontOuterMesh.Scale = Vector3.new(0.165, 0.165, 1.2)
      GuardDetailFrontOuterMesh.Parent = GuardDetailFrontOuter
      GuardDetailFrontOuterWeld.Part0 = Guard
      GuardDetailFrontOuterWeld.Part1 = GuardDetailFrontOuter
      GuardDetailFrontOuterWeld.C0 = CFrame.new(-0.2, 0, -0.6) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
      GuardDetailFrontOuterWeld.Parent = Guard
      local BladeGuard = Instance.new("Part")
      BladeGuard.Locked = true
      BladeGuard.CanCollide = false
      local BladeGuardMesh = Instance.new("BlockMesh")
      local BladeGuardWeld = Instance.new("Weld")
      BladeGuard.BrickColor = BrickColor.new("Really black")
      BladeGuard.FormFactor = "Custom"
      BladeGuard.Name = "BladeGuard"
      BladeGuard.Size = Vector3.new(0.2, 0.25, 0.25)
      BladeGuard.Parent = MainBlade
      BladeGuardMesh.Offset = Vector3.new(0, 0, 0)
      BladeGuardMesh.Scale = Vector3.new(0.2, 1, 0.8)
      BladeGuardMesh.Parent = BladeGuard
      BladeGuardWeld.Part0 = BladeGuard
      BladeGuardWeld.Part1 = Handle
      BladeGuardWeld.C0 = CFrame.new(0, -1.125, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      BladeGuardWeld.Parent = BladeGuard
      local Blade = Instance.new("Part")
      Blade.Locked = true
      Blade.CanCollide = false
      local BladeMesh = Instance.new("BlockMesh")
      local BladeWeld = Instance.new("Weld")
      Blade.BrickColor = BrickColor.new("Really black")
      Blade.FormFactor = "Custom"
      Blade.Name = "Blade"
      Blade.Size = Vector3.new(0.2, 5, 0.2)
      Blade.Material = Enum.Material.Neon
      Blade.Parent = MainBlade
      BladeMesh.Offset = Vector3.new(0, 0, 0)
      BladeMesh.Scale = Vector3.new(0.1, 1, 0.8)
      BladeMesh.Parent = Blade
      BladeWeld.Part0 = Blade
      BladeWeld.Part1 = Handle
      BladeWeld.C0 = CFrame.new(0, -3.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      BladeWeld.Parent = Blade
      local BladeTip = Instance.new("WedgePart")
      BladeTip.Locked = true
      BladeTip.CanCollide = false
      local BladeTipMesh = Instance.new("SpecialMesh")
      local BladeTipWeld = Instance.new("Weld")
      BladeTip.BrickColor = BrickColor.new("Really black")
      BladeTip.FormFactor = "Custom"
      BladeTip.Name = "Plate"
      BladeTip.Material = Enum.Material.Neon
      BladeTip.Size = Vector3.new(0.2, 0.7, 0.2)
      BladeTip.Parent = MainBlade
      BladeTipMesh.MeshType = "Wedge"
      BladeTipMesh.Offset = Vector3.new(0, 0, 0)
      BladeTipMesh.Scale = Vector3.new(0.1, 1, 0.8)
      BladeTipMesh.Parent = BladeTip
      BladeTipWeld.Part0 = Blade
      BladeTipWeld.Part1 = BladeTip
      BladeTipWeld.C0 = CFrame.new(0, 2.85, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      BladeTipWeld.Parent = Blade
      function Cut(Hit)
        if Lethal == true then
          Humanoid = Hit.Parent:GetChildren()
          for i = 1, #Humanoid do
            if Humanoid[i].ClassName == "Humanoid" and (Humanoid[i].Name ~= "Soul" or Humanoid[i].Name == "Soul") and Humanoid[i] ~= myHumanoid then
              local humanoid = Humanoid[i]
              tagHumanoid(humanoid, Player)
              Hit:BreakJoints()
              wait(0.045)
              untagHumanoid(humanoid)
            end
          end
        end
      end
      Blade.Touched:connect(Cut)
      BladeTip.Touched:connect(Cut)
      local vCharacter = Player.Character
      local myHumanoid = Player.Character:FindFirstChild("Humanoid")
      myHumanoid.Name = "Soul"
      myHumanoid.MaxHealth = 2000
      myHumanoid.Health = 2000
      if vCharacter:FindFirstChild("Body Colors") then
        vCharacter:FindFirstChild("Body Colors"):Destroy()
      end
      local LeftArm = Player.Character:FindFirstChild("Left Arm")
      local RightArm = Player.Character:FindFirstChild("Right Arm")
      local LeftLeg = Player.Character:FindFirstChild("Left Leg")
      local RightLeg = Player.Character:FindFirstChild("Right Leg")
      local Lsh = Player.Character.Torso:FindFirstChild("Left Shoulder")
      local Rsh = Player.Character.Torso:FindFirstChild("Right Shoulder")
      local Torso = Player.Character:FindFirstChild("Torso")
      local DefaultTorsoColor = Torso.BrickColor
      local DefaultLeftLegColor = LeftLeg.BrickColor
      local DefaultRightLegColor = RightLeg.BrickColor
      local RShoulderWeld = Instance.new("Weld")
      RShoulderWeld.Name = "RWeld"
      Rsh.Part1 = nil
      RShoulderWeld.Part0 = Torso
      RShoulderWeld.Part1 = RightArm
      RShoulderWeld.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      RShoulderWeld.Parent = Torso
      local Slash = Instance.new("Sound")
      Slash.Parent = Blade
      Slash.Name = "Slash"
      Slash.SoundId = "rbxasset://sounds/swordslash.wav"
      Slash.Pitch = 2
      Slash.Volume = 0.25
      local SlashGetsuga = Instance.new("Sound")
      SlashGetsuga.Parent = Blade
      SlashGetsuga.Name = "SlashGetsuga"
      SlashGetsuga.SoundId = "rbxasset://sounds/Getsuga.wav"
      SlashGetsuga.Pitch = 1
      SlashGetsuga.Volume = 0.5
      local SlashMugetsu = Instance.new("Sound")
      SlashMugetsu.Parent = Blade
      SlashMugetsu.Name = "SlashMugetsu"
      SlashMugetsu.SoundId = "http://www.roblox.com/asset/?id=11450310"
      SlashMugetsu.Pitch = 2.5
      SlashMugetsu.Volume = 0.6
      local Move = Instance.new("Sound")
      Move.Parent = Torso
      Move.Name = "Move"
      Move.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
      Move.Pitch = 40
      Move.Volume = 1
      local Move2 = Instance.new("Sound")
      Move2.Parent = Torso
      Move2.Name = "Move2"
      Move2.SoundId = "rbxasset://sounds/swoosh.wav"
      Move2.Pitch = 3
      Move2.Volume = 1
      function computeDirection(vec)
        local lenSquared = vec.magnitude ^ 2
        local invSqrt = 1 / math.sqrt(lenSquared)
        return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
      end
      function GetsugaTenshou(T)
        local SpiritGetsugaEnergy = Instance.new("Weld")
        local GetsugaTenshou = Instance.new("Model")
        GetsugaTenshou.Name = "Getsuga Tenshou"
        local GetsugaEnergy = Instance.new("Part")
        local GetsugaEnergyMesh = Instance.new("BlockMesh")
        GetsugaEnergyMesh.Offset = Vector3.new(0, 0, 6)
        GetsugaEnergyMesh.Scale = Vector3.new(1, 0.05, 2)
        GetsugaEnergyMesh.Parent = GetsugaEnergy
        GetsugaEnergy.FormFactor = "Custom"
        GetsugaEnergy.Transparency = 1
        GetsugaEnergy.CanCollide = false
        GetsugaEnergy.Size = Vector3.new(30, 1, 10)
        local GetsugaEnergyMesh = Instance.new("BlockMesh")
        local GetsugaEnergyTop = Instance.new("Decal")
        GetsugaEnergyTop.Face = "Top"
        GetsugaEnergyTop.Parent = GetsugaEnergy
        local GetsugaEnergyBottom = Instance.new("Decal")
        GetsugaEnergyBottom.Face = "Bottom"
        GetsugaEnergyBottom.Parent = GetsugaEnergy
        GetsugaEnergyTop.Texture = "http://www.roblox.com/asset/?id=68642643"
        GetsugaEnergyBottom.Texture = "http://www.roblox.com/asset/?id=68642643"
        local GetsugaEnergyEdge = Instance.new("Part")
        local GetsugaEnergyEdgeMesh = Instance.new("BlockMesh")
        GetsugaEnergyEdgeMesh.Offset = Vector3.new(0, 0, 13)
        GetsugaEnergyEdgeMesh.Scale = Vector3.new(1.5, 0, 4)
        GetsugaEnergyEdgeMesh.Parent = GetsugaEnergyEdge
        GetsugaEnergyEdge.FormFactor = "Custom"
        GetsugaEnergyEdge.Transparency = 1
        GetsugaEnergyEdge.CanCollide = false
        GetsugaEnergyEdge.Size = Vector3.new(30, 1, 10)
        local GetsugaEnergyEdgeMesh = Instance.new("BlockMesh")
        local GetsugaEnergyEdgeTop = Instance.new("Decal")
        GetsugaEnergyEdgeTop.Face = "Top"
        GetsugaEnergyEdgeTop.Parent = GetsugaEnergyEdge
        local GetsugaEnergyEdgeBottom = Instance.new("Decal")
        GetsugaEnergyEdgeBottom.Face = "Bottom"
        GetsugaEnergyEdgeBottom.Parent = GetsugaEnergyEdge
        GetsugaEnergyEdgeTop.Texture = "http://www.roblox.com/asset/?id=68642639"
        GetsugaEnergyEdgeBottom.Texture = "http://www.roblox.com/asset/?id=68642639"
        SpiritGetsugaEnergy.Parent = GetsugaEnergy
        SpiritGetsugaEnergy.Part0 = GetsugaEnergy
        SpiritGetsugaEnergy.Part1 = GetsugaEnergyEdge
        local dir = T - BladeTip.Position
        dir = computeDirection(dir)
        local pos = BladeTip.Position + dir * 6
        GetsugaEnergy.CFrame = CFrame.new(pos, pos + dir)
        GetsugaEnergyEdge.CFrame = CFrame.new(pos, pos + dir)
        GetsugaEnergy.CFrame = GetsugaEnergy.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.random(math.rad(-360), math.rad(360)))
        GetsugaEnergyEdge.CFrame = GetsugaEnergyEdge.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.random(math.rad(-360), math.rad(360)))
        GetsugaEnergy.Parent = GetsugaTenshou
        GetsugaEnergyEdge.Parent = GetsugaTenshou
        GetsugaTenshou.Parent = game.Workspace
        GetsugaEnergy.Touched:connect(Getsuga)
        GetsugaEnergyEdge.Touched:connect(Getsuga)
        local GetsugaClean = game.Debris
        GetsugaClean:AddItem(GetsugaTenshou, 6)
        while true do
          GetsugaEnergy.Velocity = GetsugaEnergy.CFrame.lookVector * 800
          GetsugaEnergyEdge.Velocity = GetsugaEnergy.CFrame.lookVector * 800
          wait()
        end
      end
      function MugetsuWave(W)
        wait(6)
        for i = 1, 10 do
          wait(0.025)
          W.CFrame = W.CFrame * CFrame.new(0, 10, 0)
          W.Transparency = W.Transparency + 0.05
        end
        W:Destroy()
      end
      local SpiritEnergy = Instance.new("Fire")
      SpiritEnergy.Heat = 25
      SpiritEnergy.Size = 4
      SpiritEnergy.Color = Color3.new(0, 0, 0)
      SpiritEnergy.SecondaryColor = Color3.new(0, 0, 0)
      local SE1 = SpiritEnergy:Clone()
      local SE2 = SpiritEnergy:Clone()
      function Mugetsu(T)
        local MugetsuFX = game.Workspace
        local MugetsuFXMain = Instance.new("Part")
        MugetsuFXMain.Anchored = true
        MugetsuFXMain.BrickColor = BrickColor.new("Really black")
        local MugetsuMesh = Instance.new("BlockMesh")
        MugetsuMesh.Offset = Vector3.new(0, 0, 0)
        MugetsuMesh.Scale = Vector3.new(0.02, 1, 1)
        MugetsuMesh.Parent = MugetsuFXMain
        MugetsuFXMain.FormFactor = "Custom"
        MugetsuFXMain.Transparency = 0.02
        MugetsuFXMain.CanCollide = false
        MugetsuFXMain.Size = Vector3.new(60, 200, 200)
        local MugetsuMesh = Instance.new("BlockMesh")
        local MugetsuTop = Instance.new("Decal")
        local dir = T - BladeTip.Position
        dir = computeDirection(dir)
        local pos = BladeTip.Position + dir * 100
        MugetsuFXMain.CFrame = CFrame.new(pos, pos + dir)
        MugetsuFXMain.CFrame = MugetsuFXMain.CFrame * CFrame.new(0, -200, 0)
        MugetsuFXMain.Parent = MugetsuFX
        MugetsuFXMain.Touched:connect(MugetsuStrike)
        local MugetsuFXMainClean = game.Debris
        MugetsuFXMainClean:AddItem(MugetsuFXMain, 10)
        local CloudySky = Instance.new("Sky")
        CloudySky.Name = "MugetsuSky"
        CloudySky.SkyboxBk = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.SkyboxDn = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.SkyboxFt = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.SkyboxLf = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.SkyboxRt = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.SkyboxUp = "http://www.roblox.com/asset/?id=72109224"
        CloudySky.Parent = game.Lighting
        local CloudySkyFXClean = game.Debris
        CloudySkyFXClean:AddItem(CloudySky, 80)
        coroutine.wrap(MugetsuWave)(MugetsuFXMain)
        for FX = 1, 2 do
          wait(0.02)
          MugetsuFXMain.CFrame = MugetsuFXMain.CFrame * CFrame.new(0, 100, 0)
        end
        wait(0.02)
        local LastTrail = MugetsuFXMain:Clone()
        LastTrail.CFrame = MugetsuFXMain.CFrame * CFrame.new(0, -200, -200)
        LastTrail.Parent = MugetsuFX
        local MugetsuTrailFXClean = game.Debris
        MugetsuTrailFXClean:AddItem(LastTrail, 10)
        LastTrail.Touched:connect(MugetsuStrike)
        coroutine.wrap(MugetsuWave)(LastTrail)
        for FX = 1, 2 do
          wait(0.02)
          LastTrail.CFrame = LastTrail.CFrame * CFrame.new(0, 100, 0)
        end
        for i = 1, 16 do
          wait(0.02)
          LastTrail = LastTrail:Clone()
          LastTrail.CFrame = LastTrail.CFrame * CFrame.new(0, -200, 0)
          LastTrail.CFrame = LastTrail.CFrame * CFrame.new(0, 0, -200)
          LastTrail = LastTrail:Clone()
          LastTrail.Parent = MugetsuFX
          LastTrail.Touched:connect(MugetsuStrike)
          local MugetsuTrailFXClean = game.Debris
          MugetsuTrailFXClean:AddItem(LastTrail, 10)
          coroutine.wrap(MugetsuWave)(LastTrail)
          for FX = 1, 2 do
            wait(0.02)
            LastTrail.CFrame = LastTrail.CFrame * CFrame.new(0, 100, 0)
          end
        end
        wait(0.5)
        Blade:Destroy()
        BladeTip:Destroy()
        Handle:Destroy()
        SE1:Destroy()
        SE2:Destroy()
        RShoulderWeld:Destroy()
        Rsh.Part1 = RightArm
        wait(20)
        FullRelease:Destroy()
        RightArm.Transparency = 0
        Player.Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=70620444"
        Player.Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=70628532"
        Torso.BrickColor = DefaultTorsoColor
        LeftLeg.BrickColor = DefaultLeftLegColor
        RightLeg.BrickColor = DefaultRightLegColor
        myHumanoid.Name = "Humanoid"
      end
      function Getsuga(Hit)
        Humanoid = Hit.Parent:GetChildren()
        for i = 1, #Humanoid do
          if Humanoid[i].ClassName == "Humanoid" and (Humanoid[i].Name ~= "Soul" or Humanoid[i].Name == "Soul") and Humanoid[i] ~= myHumanoid then
            local humanoid = Humanoid[i]
            local SlashFX = Instance.new("Part")
            SlashFX.Transparency = 0.6
            SlashFX.Reflectance = 0
            SlashFX.Anchored = true
            SlashFX.FormFactor = "Custom"
            SlashFX.Size = Vector3.new(0.2, 250, 0.2)
            SlashFX.BrickColor = BrickColor.new("Bright blue")
            SlashFX.CanCollide = false
            local SlashFXMesh = Instance.new("BlockMesh")
            SlashFXMesh.Scale = Vector3.new(0.2, 1, 1)
            SlashFXMesh.Parent = SlashFX
            local SlashFX2 = Instance.new("Part")
            SlashFX2.Transparency = 0.8
            SlashFX2.Reflectance = 0
            SlashFX2.Anchored = true
            SlashFX2.FormFactor = "Custom"
            SlashFX2.Size = Vector3.new(0.2, 300, 0.25)
            SlashFX2.BrickColor = BrickColor.new("Institutional white")
            SlashFX2.CanCollide = false
            local SlashFX2Mesh = Instance.new("BlockMesh")
            SlashFX2Mesh.Scale = Vector3.new(0.1, 1, 1)
            SlashFX2Mesh.Parent = SlashFX2
            SlashFX.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(math.random(math.rad(-200), math.rad(200)), math.random(math.rad(-200), math.rad(200)), math.random(math.rad(-200), math.rad(200)))
            SlashFX2.CFrame = SlashFX.CFrame
            SlashFX.Parent = game.Workspace
            SlashFX2.Parent = game.Workspace
            local SlashFXClean = game.Debris
            SlashFXClean:AddItem(SlashFX, 0.4)
            local SlashFX2Clean = game.Debris
            SlashFX2Clean:AddItem(SlashFX2, 0.4)
            tagHumanoid(humanoid, Player)
            Hit:BreakJoints()
            wait(0.045)
            untagHumanoid(humanoid)
          end
        end
      end
      function MugetsuStrike(Hit)
        Humanoid = Hit.Parent:GetChildren()
        for i = 1, #Humanoid do
          if Humanoid[i].ClassName == "Humanoid" and (Humanoid[i].Name ~= "Soul" or Humanoid[i].Name == "Soul") and Humanoid[i] ~= myHumanoid then
            local humanoid = Humanoid[i]
            local SlashFX = Instance.new("Part")
            SlashFX.Transparency = 0.6
            SlashFX.Reflectance = 0
            SlashFX.Anchored = true
            SlashFX.FormFactor = "Custom"
            SlashFX.Size = Vector3.new(0.2, 250, 0.2)
            SlashFX.BrickColor = BrickColor.new("Really black")
            SlashFX.CanCollide = false
            local SlashFXMesh = Instance.new("BlockMesh")
            SlashFXMesh.Scale = Vector3.new(0.2, 1, 1)
            SlashFXMesh.Parent = SlashFX
            local SlashFX2 = Instance.new("Part")
            SlashFX2.Transparency = 0.8
            SlashFX2.Reflectance = 0
            SlashFX2.Anchored = true
            SlashFX2.FormFactor = "Custom"
            SlashFX2.Size = Vector3.new(0.2, 300, 0.25)
            SlashFX2.BrickColor = BrickColor.new("Really black")
            SlashFX2.CanCollide = false
            local SlashFX2Mesh = Instance.new("BlockMesh")
            SlashFX2Mesh.Scale = Vector3.new(0.1, 1, 1)
            SlashFX2Mesh.Parent = SlashFX2
            SlashFX.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(math.random(math.rad(-200), math.rad(200)), math.random(math.rad(-200), math.rad(200)), math.random(math.rad(-200), math.rad(200)))
            SlashFX2.CFrame = SlashFX.CFrame
            SlashFX.Parent = game.Workspace
            SlashFX2.Parent = game.Workspace
            local SlashFXClean = game.Debris
            SlashFXClean:AddItem(SlashFX, 0.4)
            local SlashFX2Clean = game.Debris
            SlashFX2Clean:AddItem(SlashFX2, 0.4)
            tagHumanoid(humanoid, Player)
            Hit.Parent:BreakJoints()
            wait(0.045)
            untagHumanoid(humanoid)
          end
        end
      end
      function FlashStep(F)
        MaxSpd = 1000
        Dist = 200
        local Des = F.Hit.p
        local Cur = Torso
        Player.Character.Archivable = false
        if (Des - Cur.Position).magnitude <= MaxSpd then
          Player.Character.Archivable = true
          local FlashFX = Player.Character:Clone()
          local FlashSpeed = FlashFX:GetChildren()
          for i = 1, #FlashSpeed do
            if FlashSpeed[i].ClassName == "Hat" then
              FlashSpeed[i].Handle.CanCollide = false
              FlashSpeed[i].Handle.Anchored = true
            end
            if FlashSpeed[i]:IsA("BasePart") then
              FlashSpeed[i].CanCollide = false
              FlashSpeed[i].Anchored = true
            end
          end
          local SearchHumanoid = FlashFX:GetChildren()
          for i = 1, #SearchHumanoid do
            if SearchHumanoid[i].ClassName == "Script" or SearchHumanoid[i].ClassName == "LocalScript" then
              SearchHumanoid[i]:Destroy()
            end
            if SearchHumanoid[i].ClassName == "Humanoid" then
              SearchHumanoid[i].MaxHealth = 2000
              SearchHumanoid[i].Health = 2000
            end
          end
          FlashFX.Parent = game.Workspace
          local FlashClear = game.Debris
          FlashClear:AddItem(FlashFX, 0.2)
          if (Des - Cur.Position).magnitude >= Dist then
            local Flash = Instance.new("Sound")
            Flash.Name = "Flash"
            Flash.SoundId = "rbxasset://sounds/snap.wav"
            Flash.Pitch = 0.6
            Flash.Volume = 1
            local FlashStepFX = Instance.new("Part")
            Flash.Parent = FlashStepFX
            FlashStepFX.Transparency = 1
            FlashStepFX.Anchored = true
            FlashStepFX.Locked = true
            FlashStepFX.BrickColor = BrickColor.new("Really black")
            FlashStepFX.FormFactor = "Custom"
            FlashStepFX.Name = "FlashStepFX"
            FlashStepFX.Size = Vector3.new(0.2, 2, 0.2)
            FlashStepFX.Position = Torso.Position
            FlashStepFX.Parent = game.Workspace
            local FlashStepFXClean = game.Debris
            FlashStepFXClean:AddItem(FlashStepFX, 0.6)
            Flash:Play()
          end
          local FinalPosition = Des - Cur.Position + Vector3.new(0, 3, 0)
          Player.Character.Torso.CFrame = Player.Character.Torso.CFrame + FinalPosition
          Move:Play()
          Move2:Play()
        end
      end
      local Balancer = Instance.new("BodyGyro")
      Balancer.D = 6000
      Balancer.P = 100000
      Balancer.maxTorque = Vector3.new(0, 0, 0)
      local Stabilizer = Instance.new("Part")
      Balancer.Parent = Stabilizer
      Stabilizer.Transparency = 1
      Stabilizer.Locked = true
      Stabilizer.CanCollide = false
      local StabilizerMesh = Instance.new("BlockMesh")
      local StabilizerWeld = Instance.new("Weld")
      Stabilizer.BrickColor = BrickColor.new("Really black")
      Stabilizer.FormFactor = "Custom"
      Stabilizer.Name = "Stabilizer"
      Stabilizer.Size = Vector3.new(2, 0.2, 2)
      Stabilizer.Parent = vCharacter
      StabilizerMesh.Offset = Vector3.new(0, 0, 0)
      StabilizerMesh.Scale = Vector3.new(1, 1, 1)
      StabilizerMesh.Parent = Stabilizer
      StabilizerWeld.Part0 = Torso
      StabilizerWeld.Part1 = Stabilizer
      StabilizerWeld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(20), 0, 0)
      StabilizerWeld.Parent = Stabilizer
      function FlashJump()
        local DoubleJumpFX = Instance.new("Part")
        DoubleJumpFX.Name = "DoubleJumpFX"
        DoubleJumpFX.BrickColor = BrickColor.new("Really black")
        DoubleJumpFX.Transparency = 0.6
        DoubleJumpFX.Anchored = true
        DoubleJumpFX.CanCollide = false
        DoubleJumpFX.FormFactor = "Custom"
        DoubleJumpFX.Size = Vector3.new(0.2, 0.2, 0.2)
        DoubleJumpFX.CFrame = Torso.CFrame * CFrame.new(0, -3, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
        local DoubleJumpFXMesh = Instance.new("SpecialMesh")
        DoubleJumpFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        DoubleJumpFXMesh.Scale = Vector3.new(1, 1, 1)
        DoubleJumpFXMesh.Parent = DoubleJumpFX
        local DoubleJumpOuterFX = Instance.new("Part")
        DoubleJumpOuterFX.Name = "DoubleJumpOuterFX"
        DoubleJumpOuterFX.BrickColor = BrickColor.new("Really black")
        DoubleJumpOuterFX.Transparency = 0.6
        DoubleJumpOuterFX.Anchored = true
        DoubleJumpOuterFX.CanCollide = false
        DoubleJumpOuterFX.FormFactor = "Custom"
        DoubleJumpOuterFX.Size = Vector3.new(0.2, 0.2, 0.2)
        DoubleJumpOuterFX.CFrame = Torso.CFrame * CFrame.new(0, -5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
        local DoubleJumpOuterFXMesh = Instance.new("SpecialMesh")
        DoubleJumpOuterFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        DoubleJumpOuterFXMesh.Scale = Vector3.new(2, 2, 1)
        DoubleJumpOuterFXMesh.Parent = DoubleJumpOuterFX
        local FlashStepFX1 = Instance.new("Sound")
        FlashStepFX1.Parent = DoubleJumpFX
        FlashStepFX1.Name = "FlashStepFX1"
        FlashStepFX1.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
        FlashStepFX1.Pitch = 40
        FlashStepFX1.Volume = 1
        local FlashStepFX2 = Instance.new("Sound")
        FlashStepFX2.Parent = DoubleJumpOuterFX
        FlashStepFX2.Name = "FlashStepFX2"
        FlashStepFX2.SoundId = "rbxasset://sounds/swoosh.wav"
        FlashStepFX2.Pitch = 3
        FlashStepFX2.Volume = 1
        DoubleJumpFX.Parent = game.Workspace
        DoubleJumpOuterFX.Parent = game.Workspace
        FlashStepFX1:Play()
        FlashStepFX2:Play()
        Dir = (Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)).lookVector
        Torso.Velocity = Dir * 160
        for i = 1, 12 do
          wait()
          DoubleJumpFX.Transparency = DoubleJumpFX.Transparency + 0.02
          DoubleJumpOuterFX.Transparency = DoubleJumpOuterFX.Transparency + 0.03
          DoubleJumpFXMesh.Scale = DoubleJumpFXMesh.Scale + Vector3.new(0.5, 0.5, 0)
          DoubleJumpOuterFXMesh.Scale = DoubleJumpOuterFXMesh.Scale + Vector3.new(1, 1, 0)
        end
        wait(0.085)
        DoubleJumpFX:Destroy()
        DoubleJumpOuterFX:Destroy()
      end
      function FlashRun()
        if Enhanced.Value == false then
          local DoubleJumpFX = Instance.new("Part")
          DoubleJumpFX.Name = "DoubleJumpFX"
          DoubleJumpFX.BrickColor = BrickColor.new("Really black")
          DoubleJumpFX.Transparency = 0.6
          DoubleJumpFX.Anchored = true
          DoubleJumpFX.CanCollide = false
          DoubleJumpFX.FormFactor = "Custom"
          DoubleJumpFX.Size = Vector3.new(0.2, 0.2, 0.2)
          DoubleJumpFX.CFrame = Torso.CFrame * CFrame.new(0, 0, 0.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
          local DoubleJumpFXMesh = Instance.new("SpecialMesh")
          DoubleJumpFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
          DoubleJumpFXMesh.Scale = Vector3.new(1, 1, 1)
          DoubleJumpFXMesh.Parent = DoubleJumpFX
          local DoubleJumpOuterFX = Instance.new("Part")
          DoubleJumpOuterFX.Name = "DoubleJumpOuterFX"
          DoubleJumpOuterFX.BrickColor = BrickColor.new("Really black")
          DoubleJumpOuterFX.Transparency = 0.6
          DoubleJumpOuterFX.Anchored = true
          DoubleJumpOuterFX.CanCollide = false
          DoubleJumpOuterFX.FormFactor = "Custom"
          DoubleJumpOuterFX.Size = Vector3.new(0.2, 0.2, 0.2)
          DoubleJumpOuterFX.CFrame = Torso.CFrame * CFrame.new(0, 0, 2.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
          local DoubleJumpOuterFXMesh = Instance.new("SpecialMesh")
          DoubleJumpOuterFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
          DoubleJumpOuterFXMesh.Scale = Vector3.new(2, 2, 1)
          DoubleJumpOuterFXMesh.Parent = DoubleJumpOuterFX
          local FlashStepFX1 = Instance.new("Sound")
          FlashStepFX1.Parent = DoubleJumpFX
          FlashStepFX1.Name = "FlashStepFX1"
          FlashStepFX1.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
          FlashStepFX1.Pitch = 40
          FlashStepFX1.Volume = 1
          local FlashStepFX2 = Instance.new("Sound")
          FlashStepFX2.Parent = DoubleJumpOuterFX
          FlashStepFX2.Name = "FlashStepFX2"
          FlashStepFX2.SoundId = "rbxasset://sounds/swoosh.wav"
          FlashStepFX2.Pitch = 3
          FlashStepFX2.Volume = 1
          DoubleJumpFX.Parent = game.Workspace
          DoubleJumpOuterFX.Parent = game.Workspace
          FlashStepFX1:Play()
          FlashStepFX2:Play()
          Dir = (Torso.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0)).lookVector
          Torso.Velocity = Dir * 460
          for i = 1, 12 do
            wait()
            DoubleJumpFX.Transparency = DoubleJumpFX.Transparency + 0.02
            DoubleJumpOuterFX.Transparency = DoubleJumpOuterFX.Transparency + 0.03
            DoubleJumpFXMesh.Scale = DoubleJumpFXMesh.Scale + Vector3.new(0.5, 0.5, 0)
            DoubleJumpOuterFXMesh.Scale = DoubleJumpOuterFXMesh.Scale + Vector3.new(1, 1, 0)
          end
          wait(0.085)
          DoubleJumpFX:Destroy()
          DoubleJumpOuterFX:Destroy()
        elseif Enhanced.Value == true then
          local DoubleJumpFX = Instance.new("Part")
          DoubleJumpFX.Name = "DoubleJumpFX"
          DoubleJumpFX.BrickColor = BrickColor.new("Really black")
          DoubleJumpFX.Transparency = 0.6
          DoubleJumpFX.Anchored = true
          DoubleJumpFX.CanCollide = false
          DoubleJumpFX.FormFactor = "Custom"
          DoubleJumpFX.Size = Vector3.new(0.2, 0.2, 0.2)
          DoubleJumpFX.CFrame = Stabilizer.CFrame * CFrame.new(0, 0, 0.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
          local DoubleJumpFXMesh = Instance.new("SpecialMesh")
          DoubleJumpFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
          DoubleJumpFXMesh.Scale = Vector3.new(1, 1, 1)
          DoubleJumpFXMesh.Parent = DoubleJumpFX
          local DoubleJumpOuterFX = Instance.new("Part")
          DoubleJumpOuterFX.Name = "DoubleJumpOuterFX"
          DoubleJumpOuterFX.BrickColor = BrickColor.new("Really black")
          DoubleJumpOuterFX.Transparency = 0.6
          DoubleJumpOuterFX.Anchored = true
          DoubleJumpOuterFX.CanCollide = false
          DoubleJumpOuterFX.FormFactor = "Custom"
          DoubleJumpOuterFX.Size = Vector3.new(0.2, 0.2, 0.2)
          DoubleJumpOuterFX.CFrame = Stabilizer.CFrame * CFrame.new(0, 0, 2.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
          local DoubleJumpOuterFXMesh = Instance.new("SpecialMesh")
          DoubleJumpOuterFXMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
          DoubleJumpOuterFXMesh.Scale = Vector3.new(2, 2, 1)
          DoubleJumpOuterFXMesh.Parent = DoubleJumpOuterFX
          local FlashStepFX1 = Instance.new("Sound")
          FlashStepFX1.Parent = DoubleJumpFX
          FlashStepFX1.Name = "FlashStepFX1"
          FlashStepFX1.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
          FlashStepFX1.Pitch = 40
          FlashStepFX1.Volume = 1
          local FlashStepFX2 = Instance.new("Sound")
          FlashStepFX2.Parent = DoubleJumpOuterFX
          FlashStepFX2.Name = "FlashStepFX2"
          FlashStepFX2.SoundId = "rbxasset://sounds/swoosh.wav"
          FlashStepFX2.Pitch = 3
          FlashStepFX2.Volume = 1
          DoubleJumpFX.Parent = game.Workspace
          DoubleJumpOuterFX.Parent = game.Workspace
          FlashStepFX1:Play()
          FlashStepFX2:Play()
          Dir = (Stabilizer.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0)).lookVector
          Torso.Velocity = Dir * 460
          for i = 1, 12 do
            wait()
            DoubleJumpFX.Transparency = DoubleJumpFX.Transparency + 0.02
            DoubleJumpOuterFX.Transparency = DoubleJumpOuterFX.Transparency + 0.03
            DoubleJumpFXMesh.Scale = DoubleJumpFXMesh.Scale + Vector3.new(0.5, 0.5, 0)
            DoubleJumpOuterFXMesh.Scale = DoubleJumpOuterFXMesh.Scale + Vector3.new(1, 1, 0)
          end
          wait(0.085)
          DoubleJumpFX:Destroy()
          DoubleJumpOuterFX:Destroy()
        end
      end
      function MultiFlashStep()
        Player.Character.Archivable = true
        local FlashShadowFX = Player.Character:Clone()
        FlashShadowFX.Parent = game.Workspace
        FlashShadowFX.Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.random(-40, 40), 0, math.random(-40, 40))
        local FlashSpeed = FlashShadowFX:GetChildren()
        for i = 1, #FlashSpeed do
          if FlashSpeed[i].ClassName == "Hat" then
            FlashSpeed[i].Handle.CanCollide = false
            FlashSpeed[i].Handle.Anchored = true
          end
          if FlashSpeed[i]:IsA("BasePart") then
            FlashSpeed[i].CanCollide = false
            FlashSpeed[i].Anchored = true
          end
        end
        local SearchHumanoid = FlashShadowFX:GetChildren()
        for i = 1, #SearchHumanoid do
          if SearchHumanoid[i].ClassName == "Script" or SearchHumanoid[i].ClassName == "LocalScript" then
            SearchHumanoid[i]:Destroy()
          end
          if SearchHumanoid[i].ClassName == "Humanoid" then
            SearchHumanoid[i].MaxHealth = 2000
            SearchHumanoid[i].Health = 2000
          end
        end
        local FlashStepFX1 = Instance.new("Sound")
        FlashStepFX1.Parent = FlashShadowFX.Torso
        FlashStepFX1.Name = "FlashStepFX1"
        FlashStepFX1.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
        FlashStepFX1.Pitch = 40
        FlashStepFX1.Volume = 1
        local FlashStepFX2 = Instance.new("Sound")
        FlashStepFX2.Parent = FlashShadowFX.Torso
        FlashStepFX2.Name = "FlashStepFX2"
        FlashStepFX2.SoundId = "rbxasset://sounds/swoosh.wav"
        FlashStepFX2.Pitch = 3
        FlashStepFX2.Volume = 1
        FlashStepFX1:Play()
        FlashStepFX2:Play()
        Player.Character.Archivable = false
        wait(0.4)
        FlashStepFX1:Play()
        FlashStepFX2:Play()
        wait(0.2)
        FlashShadowFX:Destroy()
      end
      FullRelease.Parent = Player.Character
      Handle.Parent = Player.Character
      MainHandle.Parent = Player.Character
      MainGuard.Parent = Player.Character
      MainBlade.Parent = Player.Character
      local RightGrip = Instance.new("Weld")
      RightGrip.Name = "RightGrip"
      RightGrip.Part0 = RightArm
      RightGrip.Part1 = Handle
      RightGrip.C0 = RightGrip.C0 * (CFrame.new(Vector3.new(0, 0, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)) + Vector3.new(0, -1, 0.1)
      RightGrip.Parent = RightArm
      DefaultGripC0 = RightGrip.C0
      DefaultGripC1 = RightGrip.C1
      RightArm.Transparency = 1
      local FullFormWeld = Instance.new("Weld")
      local FullForm = Instance.new("Part")
      FullForm.Locked = true
      FullForm.TopSurface = "Smooth"
      FullForm.BottomSurface = "Smooth"
      FullForm.CanCollide = false
      FullForm.FormFactor = "Custom"
      FullForm.Name = "FullForm"
      FullForm.BrickColor = RightArm.BrickColor
      FullForm.Size = Vector3.new(1, 2, 1)
      FullFormWeld.Part0 = RightArm
      FullFormWeld.Part1 = FullForm
      FullFormWeld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      FullFormWeld.Parent = RightArm
      FullForm.Parent = FullRelease
      local FullFormGloveWeld = Instance.new("Weld")
      local FullFormGlove = Instance.new("Part")
      FullFormGlove.Locked = true
      local FullFormGloveMesh = Instance.new("BlockMesh")
      FullFormGloveMesh.Parent = FullFormGlove
      FullFormGlove.CanCollide = false
      FullFormGlove.FormFactor = "Custom"
      FullFormGlove.Name = "FullFormGlove"
      FullFormGlove.BrickColor = BrickColor.new("Really black")
      FullFormGlove.Size = Vector3.new(1.025, 0.6, 1.025)
      FullFormGloveWeld.Part0 = RightArm
      FullFormGloveWeld.Part1 = FullFormGlove
      FullFormGloveWeld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
      FullFormGloveWeld.Parent = RightArm
      FullFormGlove.Parent = FullRelease
      local FullFormDetail1Weld = Instance.new("Weld")
      local FullFormDetail1 = Instance.new("Part")
      FullFormDetail1.Locked = true
      local FullFormDetail1Mesh = Instance.new("BlockMesh")
      FullFormDetail1Mesh.Scale = Vector3.new(1, 0.4, 1)
      FullFormDetail1Mesh.Parent = FullFormDetail1
      FullFormDetail1.CanCollide = false
      FullFormDetail1.FormFactor = "Custom"
      FullFormDetail1.Name = "FullFormDetail1"
      FullFormDetail1.BrickColor = BrickColor.new("Really black")
      FullFormDetail1.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail1Weld.Part0 = RightArm
      FullFormDetail1Weld.Part1 = FullFormDetail1
      FullFormDetail1Weld.C0 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
      FullFormDetail1Weld.Parent = RightArm
      FullFormDetail1.Parent = FullRelease
      local FullFormDetail2Weld = Instance.new("Weld")
      local FullFormDetail2 = Instance.new("Part")
      FullFormDetail2.Locked = true
      local FullFormDetail2Mesh = Instance.new("BlockMesh")
      FullFormDetail2Mesh.Scale = Vector3.new(1, 0.4, 1)
      FullFormDetail2Mesh.Parent = FullFormDetail2
      FullFormDetail2.CanCollide = false
      FullFormDetail2.FormFactor = "Custom"
      FullFormDetail2.Name = "FullFormDetail2"
      FullFormDetail2.BrickColor = BrickColor.new("Really black")
      FullFormDetail2.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail2Weld.Part0 = RightArm
      FullFormDetail2Weld.Part1 = FullFormDetail2
      FullFormDetail2Weld.C0 = CFrame.new(0, -0.2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
      FullFormDetail2Weld.Parent = RightArm
      FullFormDetail2.Parent = FullRelease
      local FullFormDetail3Weld = Instance.new("Weld")
      local FullFormDetail3 = Instance.new("Part")
      FullFormDetail3.Locked = true
      local FullFormDetail3Mesh = Instance.new("BlockMesh")
      FullFormDetail3Mesh.Scale = Vector3.new(1, 0.4, 1)
      FullFormDetail3Mesh.Parent = FullFormDetail3
      FullFormDetail3.CanCollide = false
      FullFormDetail3.FormFactor = "Custom"
      FullFormDetail3.Name = "FullFormDetail3"
      FullFormDetail3.BrickColor = BrickColor.new("Really black")
      FullFormDetail3.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail3Weld.Part0 = RightArm
      FullFormDetail3Weld.Part1 = FullFormDetail3
      FullFormDetail3Weld.C0 = CFrame.new(0, 0.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
      FullFormDetail3Weld.Parent = RightArm
      FullFormDetail3.Parent = FullRelease
      local FullFormDetail4Weld = Instance.new("Weld")
      local FullFormDetail4 = Instance.new("Part")
      FullFormDetail4.Locked = true
      local FullFormDetail4Mesh = Instance.new("BlockMesh")
      FullFormDetail4Mesh.Scale = Vector3.new(1, 0.4, 1)
      FullFormDetail4Mesh.Parent = FullFormDetail4
      FullFormDetail4.CanCollide = false
      FullFormDetail4.FormFactor = "Custom"
      FullFormDetail4.Name = "FullFormDetail4"
      FullFormDetail4.BrickColor = BrickColor.new("Really black")
      FullFormDetail4.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail4Weld.Part0 = RightArm
      FullFormDetail4Weld.Part1 = FullFormDetail4
      FullFormDetail4Weld.C0 = CFrame.new(0, 0.4, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
      FullFormDetail4Weld.Parent = RightArm
      FullFormDetail4.Parent = FullRelease
      local FullFormDetail5Weld = Instance.new("Weld")
      local FullFormDetail5 = Instance.new("Part")
      FullFormDetail5.Locked = true
      local FullFormDetail5Mesh = Instance.new("BlockMesh")
      FullFormDetail5Mesh.Scale = Vector3.new(1, 0.4, 1)
      FullFormDetail5Mesh.Parent = FullFormDetail5
      FullFormDetail5.CanCollide = false
      FullFormDetail5.FormFactor = "Custom"
      FullFormDetail5.Name = "FullFormDetail5"
      FullFormDetail5.BrickColor = BrickColor.new("Really black")
      FullFormDetail5.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail5Weld.Part0 = RightArm
      FullFormDetail5Weld.Part1 = FullFormDetail5
      FullFormDetail5Weld.C0 = CFrame.new(0, 0.7, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
      FullFormDetail5Weld.Parent = RightArm
      FullFormDetail5.Parent = FullRelease
      local FullFormDetail6Weld = Instance.new("Weld")
      local FullFormDetail6 = Instance.new("Part")
      FullFormDetail6.Locked = true
      local FullFormDetail6Mesh = Instance.new("BlockMesh")
      FullFormDetail6Mesh.Offset = Vector3.new(-0.1, 0, 0)
      FullFormDetail6Mesh.Scale = Vector3.new(0.725, 0.4, 1)
      FullFormDetail6Mesh.Parent = FullFormDetail6
      FullFormDetail6.CanCollide = false
      FullFormDetail6.FormFactor = "Custom"
      FullFormDetail6.Name = "FullFormDetail6"
      FullFormDetail6.BrickColor = BrickColor.new("Really black")
      FullFormDetail6.Size = Vector3.new(1.2, 0.2, 1.025)
      FullFormDetail6Weld.Part0 = RightArm
      FullFormDetail6Weld.Part1 = FullFormDetail6
      FullFormDetail6Weld.C0 = CFrame.new(0, 0.7, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-20))
      FullFormDetail6Weld.Parent = RightArm
      FullFormDetail6.Parent = FullRelease
      function Float()
        local Float = Instance.new("Part")
        Float.Anchored = true
        Float.Transparency = 1
        Float.Locked = true
        local FloatMesh = Instance.new("BlockMesh")
        Float.BrickColor = BrickColor.new("Really black")
        Float.FormFactor = "Custom"
        Float.Name = "Float"
        Float.Size = Vector3.new(2.5, 0.5, 2.5)
        Float.Parent = vCharacter
        FloatMesh.Offset = Vector3.new(0, 0, 0)
        FloatMesh.Scale = Vector3.new(1, 1, 1)
        FloatMesh.Parent = Float
        while Floating do
          wait()
          Float.CFrame = Torso.CFrame * CFrame.new(0, -3.08, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        end
      end
      Floating = false
      local MultiFlashStepping = false
      Shift = string.char(48)
      Alt = string.char(52)
      Ctrl = string.char(50)
      Katana.Selected:connect(function(MouseUp)
        MouseUp.KeyUp:connect(function(keyUp)
          key = string.lower(keyUp)
        end)
      end)
      local First_Attack = false
      local Second_Attack = false
      function ResetSlash()
        if wait(0.6) and Attacking.Value == 0 and First_Attack == true and Second_Attack == false then
          RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(16), math.rad(10), math.rad(-10))
          RightGrip.C0 = DefaultGripC0
          RightGrip.C1 = DefaultGripC1
          First_Attack = false
        elseif wait(0.6) and Attacking.Value == 0 and First_Attack == false and Second_Attack == true then
          RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(16), math.rad(10), math.rad(-10))
          RightGrip.C0 = DefaultGripC0
          RightGrip.C1 = DefaultGripC1
          Second_Attack = false
        end
      end
      function InwardSlash()
        if Attacking.Value == 0 and First_Attack == true and Second_Attack == false then
          Attacking.Value = 1
          First_Attack = false
          Second_Attack = true
          Lethal = true
          for i = 1, 5 do
            wait()
            RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-32), math.rad(-16), math.rad(0))
          end
          for i = 1, 5 do
            wait()
            RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-20), math.rad(2))
            RightGrip.C1 = RightGrip.C1 * CFrame.fromEulerAnglesXYZ(math.rad(7), 0, 0)
          end
          Lethal = false
          Slash:Play()
          coroutine.wrap(ResetSlash)()
          Attacking.Value = 0
        end
      end
      function OutwardSlash()
        if Attacking.Value == 0 and Second_Attack == false then
          Attacking.Value = 1
          First_Attack = true
          Lethal = true
          for i = 1, 5 do
            wait()
            RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-17), math.rad(-20), math.rad(-20))
          end
          for i = 1, 5 do
            wait()
            RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-8), math.rad(20), math.rad(4))
            RightGrip.C1 = RightGrip.C1 * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, 0)
          end
          Lethal = false
          Slash:Play()
          coroutine.wrap(ResetSlash)()
          Attacking.Value = 0
        end
      end
      RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(16), math.rad(10), math.rad(-10))
      Lethal = false
      EnergyHandle.Parent = Handle
      EnergyGuard.Parent = Guard
      EnergyBlade.Parent = Blade
      EnergyBladeTip.Parent = BladeTip
      EnergyHandle.Enabled = false
      EnergyGuard.Enabled = false
      EnergyBlade.Enabled = false
      EnergyBladeTip.Enabled = false
      local Transformation = false
      local MugetsuSlash = false
      function FinalForm()
        Player.Character.Shirt.ShirtTemplate = ""
        Player.Character.Pants.PantsTemplate = ""
        FullForm.BrickColor = BrickColor.new("Dark stone grey")
        Torso.BrickColor = BrickColor.new("Dark stone grey")
        LeftLeg.BrickColor = BrickColor.new("Really black")
        RightLeg.BrickColor = BrickColor.new("Really black")
        SE1.Parent = FullForm
        SE1.Parent = FullFormDetail6
        local SpiritualEnergy = Instance.new("Fire")
        SpiritualEnergy.Heat = 25
        SpiritualEnergy.Size = 30
        SpiritualEnergy.Color = Color3.new(0, 0, 0)
        SpiritualEnergy.SecondaryColor = Color3.new(0, 0, 0)
        local SpiritualEnergyFront = Instance.new("Fire")
        SpiritualEnergyFront.Heat = 25
        SpiritualEnergyFront.Size = 30
        SpiritualEnergyFront.Color = Color3.new(0, 0, 0)
        SpiritualEnergyFront.SecondaryColor = Color3.new(0, 0, 0)
        local SpiritualEnergyFrontFX = Instance.new("Part")
        SpiritualEnergyFront.Parent = SpiritualEnergyFrontFX
        SpiritualEnergyFrontFX.Transparency = 1
        SpiritualEnergyFrontFX.Locked = true
        SpiritualEnergyFrontFX.CanCollide = false
        local SpiritualEnergyFrontFXWeld = Instance.new("Weld")
        SpiritualEnergyFrontFX.BrickColor = BrickColor.new("Really black")
        SpiritualEnergyFrontFX.FormFactor = "Custom"
        SpiritualEnergyFrontFX.Name = "SpiritualEnergyFrontFX"
        SpiritualEnergyFrontFX.Size = Vector3.new(0.2, 0.2, 0.2)
        SpiritualEnergyFrontFX.Parent = vCharacter
        SpiritualEnergyFrontFXWeld.Part0 = Torso
        SpiritualEnergyFrontFXWeld.Part1 = SpiritualEnergyFrontFX
        SpiritualEnergyFrontFXWeld.C0 = CFrame.new(0, -3, -6.5) * CFrame.fromEulerAnglesXYZ(math.rad(-30), 0, 0)
        SpiritualEnergyFrontFXWeld.Parent = SpiritualEnergyFrontFX
        local SpiritualEnergyBack = Instance.new("Fire")
        SpiritualEnergyBack.Heat = 25
        SpiritualEnergyBack.Size = 30
        SpiritualEnergyBack.Color = Color3.new(0, 0, 0)
        SpiritualEnergyBack.SecondaryColor = Color3.new(0, 0, 0)
        local SpiritualEnergyBackFX = Instance.new("Part")
        SpiritualEnergyBack.Parent = SpiritualEnergyBackFX
        SpiritualEnergyBackFX.Transparency = 1
        SpiritualEnergyBackFX.Locked = true
        SpiritualEnergyBackFX.CanCollide = false
        local SpiritualEnergyBackFXWeld = Instance.new("Weld")
        SpiritualEnergyBackFX.BrickColor = BrickColor.new("Really black")
        SpiritualEnergyBackFX.FormFactor = "Custom"
        SpiritualEnergyBackFX.Name = "SpiritualEnergyBackFX"
        SpiritualEnergyBackFX.Size = Vector3.new(0.2, 0.2, 0.2)
        SpiritualEnergyBackFX.Parent = vCharacter
        SpiritualEnergyBackFXWeld.Part0 = Torso
        SpiritualEnergyBackFXWeld.Part1 = SpiritualEnergyBackFX
        SpiritualEnergyBackFXWeld.C0 = CFrame.new(0, -3, 6.5) * CFrame.fromEulerAnglesXYZ(math.rad(30), 0, 0)
        SpiritualEnergyBackFXWeld.Parent = SpiritualEnergyBackFX
        local SpiritualEnergyLeft = Instance.new("Fire")
        SpiritualEnergyLeft.Heat = 25
        SpiritualEnergyLeft.Size = 30
        SpiritualEnergyLeft.Color = Color3.new(0, 0, 0)
        SpiritualEnergyLeft.SecondaryColor = Color3.new(0, 0, 0)
        local SpiritualEnergyLeftFX = Instance.new("Part")
        SpiritualEnergyLeft.Parent = SpiritualEnergyLeftFX
        SpiritualEnergyLeftFX.Transparency = 1
        SpiritualEnergyLeftFX.Locked = true
        SpiritualEnergyLeftFX.CanCollide = false
        local SpiritualEnergyLeftFXWeld = Instance.new("Weld")
        SpiritualEnergyLeftFX.BrickColor = BrickColor.new("Really black")
        SpiritualEnergyLeftFX.FormFactor = "Custom"
        SpiritualEnergyLeftFX.Name = "SpiritualEnergyLeftFX"
        SpiritualEnergyLeftFX.Size = Vector3.new(0.2, 0.2, 0.2)
        SpiritualEnergyLeftFX.Parent = vCharacter
        SpiritualEnergyLeftFXWeld.Part0 = Torso
        SpiritualEnergyLeftFXWeld.Part1 = SpiritualEnergyLeftFX
        SpiritualEnergyLeftFXWeld.C0 = CFrame.new(-6.5, -3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30))
        SpiritualEnergyLeftFXWeld.Parent = SpiritualEnergyLeftFX
        local SpiritualEnergyRight = Instance.new("Fire")
        SpiritualEnergyRight.Heat = 25
        SpiritualEnergyRight.Size = 30
        SpiritualEnergyRight.Color = Color3.new(0, 0, 0)
        SpiritualEnergyRight.SecondaryColor = Color3.new(0, 0, 0)
        local SpiritualEnergyRightFX = Instance.new("Part")
        SpiritualEnergyRight.Parent = SpiritualEnergyRightFX
        SpiritualEnergyRightFX.Transparency = 1
        SpiritualEnergyRightFX.Locked = true
        SpiritualEnergyRightFX.CanCollide = false
        local SpiritualEnergyRightFXWeld = Instance.new("Weld")
        SpiritualEnergyRightFX.BrickColor = BrickColor.new("Really black")
        SpiritualEnergyRightFX.FormFactor = "Custom"
        SpiritualEnergyRightFX.Name = "SpiritualEnergyRightFX"
        SpiritualEnergyRightFX.Size = Vector3.new(0.2, 0.2, 0.2)
        SpiritualEnergyRightFX.Parent = vCharacter
        SpiritualEnergyRightFXWeld.Part0 = Torso
        SpiritualEnergyRightFXWeld.Part1 = SpiritualEnergyRightFX
        SpiritualEnergyRightFXWeld.C0 = CFrame.new(6.5, -3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-30))
        SpiritualEnergyRightFXWeld.Parent = SpiritualEnergyRightFX
        SpiritualEnergy.Parent = Torso
        MainGuard:Destroy()
        BladeGuard:Destroy()
        local BladeCheck = MainBlade:GetChildren()
        local HandleCheck = MainHandle:GetChildren()
        local Handle = Handle
        EnergyHandle.Enabled = false
        EnergyGuard.Enabled = false
        EnergyBlade.Enabled = false
        EnergyBladeTip.Enabled = false
        HandleMesh.Scale = Vector3.new(0.1, 1, 0.8)
        HandleDetailFront:Destroy()
        HandleDetailBack:Destroy()
        for i = 1, #BladeCheck do
          BladeCheck[i].Transparency = 1
        end
        for i = 1, #HandleCheck do
          HandleCheck[i].Transparency = 1
        end
        Handle.Transparency = 1
        wait(6)
        SpiritualEnergy.Enabled = false
        SpiritualEnergyFront.Enabled = false
        SpiritualEnergyBack.Enabled = false
        SpiritualEnergyLeft.Enabled = false
        SpiritualEnergyRight.Enabled = false
        wait(2)
        Handle.Transparency = 0.25
        Blade.Transparency = 0.25
        BladeTip.Transparency = 0.25
        EnergyHandle.Heat = 25
        local EnergyHandle2 = Instance.new("Fire")
        EnergyHandle2.Heat = -25
        EnergyHandle2.Size = 2.5
        EnergyHandle2.Color = Color3.new(0, 0, 0)
        EnergyHandle2.SecondaryColor = Color3.new(0, 0, 0)
        EnergyHandle2.Parent = Handle
        EnergyHandle.Enabled = true
        EnergyGuard.Enabled = true
        EnergyBlade.Enabled = true
        EnergyBladeTip.Enabled = true
        Enhancement.Value = true
        Transformation = true
      end
      local FinalGetsugaTenshou = false
      Katana.Selected:connect(function(Mouse)
        Mouse.KeyDown:connect(function(key)
          key = string.lower(key)
          if key == Alt and FinalGetsugaTenshou == false then
            FinalGetsugaTenshou = true
            FinalForm()
          end
          if key == "l" then
            if Floating == false then
              Floating = true
              coroutine.wrap(Float)()
            elseif Floating == true then
              Floating = false
              local CheckFloat = vCharacter:GetChildren()
              for i = 1, #CheckFloat do
                if CheckFloat[i].Name == "Float" then
                  CheckFloat[i]:Destroy()
                end
              end
            end
          end
          if key == "n" and CoolDown.Value == false then
            CoolDown.Value = true
            coroutine.wrap(FlashJump)()
            wait(0.2)
            CoolDown.Value = false
          end
          if key == "m" and CoolDown.Value == false then
            CoolDown.Value = true
            coroutine.wrap(FlashRun)()
            wait(0.2)
            CoolDown.Value = false
          end
          if key == "r" and MugetsuSlash == false then
            Time = RunService.Stepped:wait()
            if 1 >= Time - last_attack then
              coroutine.wrap(InwardSlash)()
            else
              coroutine.wrap(OutwardSlash)()
            end
            last_attack = Time
          end
          if key == "t" and MugetsuSlash == false and Attacking.Value == 0 and First_Attack == false and Second_Attack == false then
            Attacking.Value = 1
            First_Attack = true
            EnergyHandle.Enabled = true
            EnergyGuard.Enabled = true
            EnergyBlade.Enabled = true
            EnergyBladeTip.Enabled = true
            for i = 1, 5 do
              wait()
              RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-17), math.rad(-20), math.rad(-20))
            end
            for i = 1, 5 do
              wait()
              RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-8), math.rad(20), math.rad(4))
            end
            coroutine.wrap(GetsugaTenshou)(Mouse.Hit.p)
            SlashGetsuga:Play()
            if FinalGetsugaTenshou == false then
              EnergyHandle.Enabled = false
              EnergyGuard.Enabled = false
              EnergyBlade.Enabled = false
              EnergyBladeTip.Enabled = false
            else
            end
            First_Attack = false
            wait(0.2)
            RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(16), math.rad(10), math.rad(-10))
            Attacking.Value = 0
          end
          if key == "y" and Transformation == true and MugetsuSlash == false and Attacking.Value == 0 and First_Attack == false and Second_Attack == false then
            MugetsuSlash = true
            Attacking.Value = 1
            First_Attack = true
            EnergyHandle.Enabled = true
            EnergyGuard.Enabled = true
            EnergyBlade.Enabled = true
            EnergyBladeTip.Enabled = true
            for i = 1, 10 do
              wait()
              RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(-19), math.rad(-1), math.rad(-2.2))
            end
            wait(2)
            for i = 1, 10 do
              wait()
              RShoulderWeld.C1 = RShoulderWeld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(9), 0, 0)
              RightGrip.C1 = RightGrip.C1 * CFrame.fromEulerAnglesXYZ(math.rad(8.5), 0, 0)
            end
            coroutine.wrap(Mugetsu)(Mouse.Hit.p)
            SlashMugetsu:Play()
            if FinalGetsugaTenshou == false then
              EnergyHandle.Enabled = false
              EnergyGuard.Enabled = false
              EnergyBlade.Enabled = false
              EnergyBladeTip.Enabled = false
            else
            end
            First_Attack = false
            wait(3)
            RShoulderWeld.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(16), math.rad(10), math.rad(-10))
            RightGrip.C0 = DefaultGripC0
            RightGrip.C1 = DefaultGripC1
            Attacking.Value = 0
          end
          if key == "q" and Pierced == false then
            FlashStep(Mouse)
          end
          if key == "z" then
            if Enhanced.Value == false then
              Balancer.maxTorque = Vector3.new(2000000, 0, 2000000)
              myHumanoid.WalkSpeed = 120
              Enhanced.Value = true
            elseif Enhanced.Value == true then
              Balancer.maxTorque = Vector3.new(0, 0, 0)
              myHumanoid.WalkSpeed = 16
              Enhanced.Value = false
            end
          end
          if key == "j" and FinalGetsugaTenshou == false then
            if Enhancement.Value == false then
              EnergyHandle.Enabled = true
              EnergyGuard.Enabled = true
              EnergyBlade.Enabled = true
              EnergyBladeTip.Enabled = true
              Enhancement.Value = true
            elseif Enhancement.Value == true then
              EnergyHandle.Enabled = false
              EnergyGuard.Enabled = false
              EnergyBlade.Enabled = false
              EnergyBladeTip.Enabled = false
              Enhancement.Value = false
            end
          end
          if key == Shift then
            if MultiFlashStepping == false then
              MultiFlashStepping = true
              while MultiFlashStepping do
                ShadowCoolDown.Value = 1
                coroutine.wrap(MultiFlashStep)()
                wait(0.1)
                ShadowCoolDown.Value = 0
              end
            elseif MultiFlashStepping == true then
              MultiFlashStepping = false
            end
          end
        end)
      end)
    end
  end
end
