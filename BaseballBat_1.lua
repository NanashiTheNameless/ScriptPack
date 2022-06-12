Player = Game:GetService("Players")["LocalPlayer"];
Backpack = Player:FindFirstChild("Backpack");
Character = Player["Character"];
Head = Character:FindFirstChild("Head");
Torso = Character:FindFirstChild("Torso");
Right_Arm = Character:FindFirstChild("Right Arm");
Left_Arm = Character:FindFirstChild("Left Arm");
Right_Leg = Character:FindFirstChild("Right Leg");
Left_Leg = Character:FindFirstChild("Left Leg");
 
function MakeModel(Parent, Name)
 
Model = Instance.new("Model", Parent);
Model["Name"] = Name;
 
return Model
 
end
 
function MakePart(Parent, Name, Size, BrickColor, CanCollide)
 
Part = Instance.new("Part", Parent);
Part["Name"] = Name;
Part["FormFactor"] = "Symmetric";
Part["TopSurface"] = "Smooth";
Part["BottomSurface"] = "Smooth";
Part["Position"] = Vector3.new();
Part["Size"] = Size;
Part["BrickColor"] = BrickColor;
Part["CanCollide"] = CanCollide;
 
return Part
 
end
 
function MakeWeld(Parent, Name, Part0, Part1, C0, C1)
 
Weld = Instance.new("Weld", Parent);
Weld["Name"] = Name;
Weld["Part0"] = Part0;
Weld["Part1"] = Part1;
Weld["C0"] = C0;
Weld["C1"] = C1;
 
return Weld
 
end
 
function MakeCylinderMesh(Parent, Name, Scale)
 
Cylinder_Mesh = Instance.new("CylinderMesh", Parent);
Cylinder_Mesh["Name"] = Name;
Cylinder_Mesh["Scale"] = Scale;
 
return Cylinder_Mesh
 
end
 
function MakeSpecialMesh(Parent, Name, MeshType, Scale, MeshId)
 
Special_Mesh = Instance.new("SpecialMesh", Parent)
Special_Mesh["Name"] = Name;
Special_Mesh["MeshType"] = MeshType;
Special_Mesh["Scale"] = Scale;
Special_Mesh["MeshId"] = MeshId;
 
return Special_Mesh
 
end
 
if not script["Parent"]:IsA("HopperBin") then
 
HopperBin = Instance.new("HopperBin", Backpack)
HopperBin["Name"] = "Click"
script["Parent"] = HopperBin
 
end
 
Clicked = false
 
function MouseButton_Left_Down(Mouse)
if Clicked == false then
Clicked = true
else
if Clicked == true then
Clicked = false
end
end
pcall(function () 
Character["Baseball Bat"]:Destroy()
end)
if Clicked == true then
Right_Arm["Transparency"] = 1
Baseball_Bat = MakeModel(Character, "Baseball Bat");
Handle = MakePart(Baseball_Bat, "Handle", Vector3.new(1, 5, 1), BrickColor.new("Really black"), false);
Handle_Mesh = MakeCylinderMesh(Handle, "Mesh", Vector3.new(0.25, 1, 0.25));
Handle_Weld = MakeWeld(Handle, "Weld", Handle, Right_Arm, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-15)));
Part_1 = MakePart(Baseball_Bat, "Hitting Part", Vector3.new(1, 5, 1), BrickColor.new("Really black"), true);
Part_1_Mesh = MakeCylinderMesh(Part_1, "Mesh", Vector3.new(0.5, 0.75, 0.5));
Part_1_Weld = MakeWeld(Part_1, "Weld", Part_1, Handle, CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0));
Part_2 = MakePart(Baseball_Bat, "Round Finish", Vector3.new(1, 1, 1), BrickColor.new("Really black"), false);
Part_2_Mesh = MakeSpecialMesh(Part_2, "Mesh", "Sphere", Vector3.new(0.5, 0.5, 0.5), "");
Part_2_Weld = MakeWeld(Part_2, "Weld", Part_2, Handle, CFrame.new(0, -2.6, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0));
Part_3 = MakePart(Baseball_Bat, "Round Start", Vector3.new(1, 1, 1), BrickColor.new("Really black"), false);
Part_3_Mesh = MakeSpecialMesh(Part_3, "Mesh", "Sphere", Vector3.new(0.5, 0.5, 0.5), "");
Part_3_Weld = MakeWeld(Part_3, "Weld", Part_3, Handle, CFrame.new(0, 1.1, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0));
Part_4 = MakePart(Baseball_Bat, "Round Bottom", Vector3.new(1, 1, 1), BrickColor.new("Really black"), false);
Part_4_Mesh = MakeSpecialMesh(Part_4, "Mesh", "Sphere", Vector3.new(0.25, 0.25, 0.25), "");
Part_4_Weld = MakeWeld(Part_4, "Weld", Part_4, Handle, CFrame.new(0, 2.5, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0));
else
if Clicked == false then
Right_Arm["Transparency"] = 0
end
end
end
 
function Selected(Mouse)
 
Clicked = false
 
pcall(function () 
Character["Baseball Bat"]:Destroy()
end)
 
Right_Arm["Transparency"] = 0
 
Mouse["Button1Down"]:connect(function (Mouse) MouseButton_Left_Down(Mouse) end)
end
 
script["Parent"]["Selected"]:connect(Selected)
 
 
 