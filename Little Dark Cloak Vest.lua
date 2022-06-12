Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()
coat = false

Coat = Instance.new("Part",Cha)
Coat.TopSurface = "Smooth"
Coat.BottomSurface = "Smooth"
Coat.Size = Vector3.new(1, 1, 1)
Coat.CanCollide = True
Coat.Transparency = 0
Coat.BrickColor = BrickColor.new("Really black")
CoatMesh = Instance.new("SpecialMesh", Coat)
CoatMesh.MeshType = "Brick"
CoatMesh.Scale = Vector3.new(2,1.8,1.1)
CoatWeld = Instance.new("Weld",Cha)
CoatWeld.Part0 = Cha.Torso
CoatWeld.Part1 = Coat
CoatWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRA = Instance.new("Part",Cha)
CoatRA.TopSurface = "Smooth"
CoatRA.BottomSurface = "Smooth"
CoatRA.Size = Vector3.new(1, 1, 1)
CoatRA.CanCollide = True
CoatRA.Transparency = 0
CoatRA.BrickColor = BrickColor.new("Really black")
CoatRAMesh = Instance.new("SpecialMesh", CoatRA)
CoatRAMesh.MeshType = "Brick"
CoatRAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatRAWeld = Instance.new("Weld",Cha)
CoatRAWeld.Part0 = Cha["Right Arm"]
CoatRAWeld.Part1 = CoatRA
CoatRAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLA = Instance.new("Part",Cha)
CoatLA.TopSurface = "Smooth"
CoatLA.BottomSurface = "Smooth"
CoatLA.Size = Vector3.new(1, 1, 1)
CoatLA.CanCollide = True
CoatLA.Transparency = 0
CoatLA.BrickColor = BrickColor.new("Really black")
CoatLAMesh = Instance.new("SpecialMesh", CoatLA)
CoatLAMesh.MeshType = "Brick"
CoatLAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatLAWeld = Instance.new("Weld",Cha)
CoatLAWeld.Part0 = Cha["Left Arm"]
CoatLAWeld.Part1 = CoatLA
CoatLAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRL = Instance.new("Part",Cha)
CoatRL.TopSurface = "Smooth"
CoatRL.BottomSurface = "Smooth"
CoatRL.Size = Vector3.new(1, 1, 1)
CoatRL.CanCollide = True
CoatRL.Transparency = 0
CoatRL.BrickColor = BrickColor.new("Really black")
CoatRLMesh = Instance.new("SpecialMesh", CoatRL)
CoatRLMesh.MeshType = "Brick"
CoatRLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatRLWeld = Instance.new("Weld",Cha)
CoatRLWeld.Part0 = Cha["Right Leg"]
CoatRLWeld.Part1 = CoatRL
CoatRLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLL = Instance.new("Part",Cha)
CoatLL.TopSurface = "Smooth"
CoatLL.BottomSurface = "Smooth"
CoatLL.Size = Vector3.new(1, 1, 1)
CoatLL.CanCollide = True
CoatLL.Transparency = 0
CoatLL.BrickColor = BrickColor.new("Really black")
CoatLLMesh = Instance.new("SpecialMesh", CoatLL)
CoatLLMesh.MeshType = "Brick"
CoatLLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatLLWeld = Instance.new("Weld",Cha)
CoatLLWeld.Part0 = Cha["Left Leg"]
CoatLLWeld.Part1 = CoatLL
CoatLLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRightDesign = Instance.new("Part",Cha)
CoatRightDesign.TopSurface = "Smooth"
CoatRightDesign.BottomSurface = "Smooth"
CoatRightDesign.Size = Vector3.new(1, 1, 1)
CoatRightDesign.CanCollide = True
CoatRightDesign.Transparency = 0
CoatRightDesign.BrickColor = BrickColor.new("Really black")
CoatRightDesignMesh = Instance.new("SpecialMesh", CoatRightDesign)
CoatRightDesignMesh.MeshType = "Wedge"
CoatRightDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatRightDesignWeld = Instance.new("Weld",Cha)
CoatRightDesignWeld.Part0 = Cha["Right Leg"]
CoatRightDesignWeld.Part1 = CoatRightDesign
CoatRightDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, -1.6, 0)

CoatLeftDesign = Instance.new("Part",Cha)
CoatLeftDesign.TopSurface = "Smooth"
CoatLeftDesign.BottomSurface = "Smooth"
CoatLeftDesign.Size = Vector3.new(1, 1, 1)
CoatLeftDesign.CanCollide = True
CoatLeftDesign.Transparency = 0
CoatLeftDesign.BrickColor = BrickColor.new("Really black")
CoatLeftDesignMesh = Instance.new("SpecialMesh", CoatLeftDesign)
CoatLeftDesignMesh.MeshType = "Wedge"
CoatLeftDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatLeftDesignWeld = Instance.new("Weld",Cha)
CoatLeftDesignWeld.Part0 = Cha["Left Leg"]
CoatLeftDesignWeld.Part1 = CoatLeftDesign
CoatLeftDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, 1.6, 0)

Zipper = Instance.new("Part",Cha)
Zipper.TopSurface = "Smooth"
Zipper.BottomSurface = "Smooth"
Zipper.Size = Vector3.new(1, 1, 1)
Zipper.CanCollide = True
Zipper.Transparency = 0
Zipper.BrickColor = BrickColor.new("Grey")
ZipperMesh = Instance.new("SpecialMesh", Zipper)
ZipperMesh.MeshType = "Brick"
ZipperMesh.Scale = Vector3.new(0.05,2.2,1.1)
ZipperWeld = Instance.new("Weld",Cha)
ZipperWeld.Part0 = Cha.Torso
ZipperWeld.Part1 = Zipper
ZipperWeld.C1 = CFrame.new(0, 0.3, 0.02)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HoodCarrier = Instance.new("Part",Cha)
HoodCarrier.TopSurface = "Smooth"
HoodCarrier.BottomSurface = "Smooth"
HoodCarrier.Size = Vector3.new(1, 1, 1)
HoodCarrier.CanCollide = True
HoodCarrier.Transparency = 1
HoodCarrier.BrickColor = BrickColor.new("Really black")
HoodCarrierMesh = Instance.new("SpecialMesh", HoodCarrier)
HoodCarrierMesh.MeshType = "Brick"
HoodCarrierMesh.Scale = Vector3.new(1.2,0.2,0.2)
HoodCarrierWeld = Instance.new("Weld",Cha)
HoodCarrierWeld.Part0 = Cha.Torso
HoodCarrierWeld.Part1 = HoodCarrier
HoodCarrierWeld.C1 = CFrame.new(0, -1, -0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HoodUpper = Instance.new("Part",Cha)
HoodUpper.TopSurface = "Smooth"
HoodUpper.BottomSurface = "Smooth"
HoodUpper.Size = Vector3.new(1, 1, 1)
HoodUpper.CanCollide = True
HoodUpper.Transparency = 1
HoodUpper.BrickColor = BrickColor.new("Really black")
HoodUpperMesh = Instance.new("SpecialMesh", HoodUpper)
HoodUpperMesh.MeshType = "Brick"
HoodUpperMesh.Scale = Vector3.new(1.2,0.2,0.2)
HoodUpperWeld = Instance.new("Weld",Cha)
HoodUpperWeld.Part0 = HoodCarrier
HoodUpperWeld.Part1 = HoodUpper
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Hood = Instance.new("Part",Cha)
Hood.TopSurface = "Smooth"
Hood.BottomSurface = "Smooth"
Hood.Size = Vector3.new(1, 1, 1)
Hood.CanCollide = True
Hood.Transparency = 0
Hood.BrickColor = BrickColor.new("Really black")
HoodMesh = Instance.new("SpecialMesh", Hood)
HoodMesh.MeshType = "Brick"
HoodMesh.Scale = Vector3.new(1.2,1,0.2)
HoodWeld = Instance.new("Weld",Cha)
HoodWeld.Part0 = HoodUpper
HoodWeld.Part1 = Hood
HoodWeld.C1 = CFrame.new(0, 0.6, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

mouse.KeyDown:connect(function(key)
key:lower()
if key == "l" and coat == false then
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.3, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.9, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.4, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.6, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.8, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.4, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.6, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.8, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(3, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(3.2, 0, 0)



Completed = Instance.new("Part",Cha)
Completed.TopSurface = "Smooth"
Completed.BottomSurface = "Smooth"
Completed.Size = Vector3.new(1, 1, 1)
Completed.CanCollide = True
Completed.Transparency = 0
Completed.BrickColor = BrickColor.new("Really black")
CompletedMesh = Instance.new("SpecialMesh", Completed)
CompletedMesh.MeshType = "Brick"
CompletedMesh.Scale = Vector3.new(1.3,1.1,1.3)
CompletedWeld = Instance.new("Weld",Cha)
CompletedWeld.Part0 = Cha.Head
CompletedWeld.Part1 = Completed
CompletedWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Cha.Head.Transparency = 1
for i, v in pairs(Cha:GetChildren()) do
if v:IsA('Hat') then
v.Handle.Transparency=1
end
end
wait(1)
coat = true
end

if key == "k" and coat == true then
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(3.2, 0, 0)
wait()
Completed:Destroy()
Cha.Head.Transparency = 0
for i, v in pairs(Cha:GetChildren()) do
if v:IsA('Hat') then
v.Handle.Transparency=0
end
end

HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(3, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.8, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.4, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2.2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.8, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.6, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.4, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(1.2, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.9, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0.3, 0, 0)
wait()
HoodUpperWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait(1)
coat = false

end
end)