--[-[House -Cool]-] [[Idea from kayden963]]----------------------------------------------------------------------------------------------------------------------------
I = Instance.new
function create(anchored, bottom, cancollide, cframe, color, name, parent, reflec, size, top, trans)
	Part = I("Part")
	Part.Anchored = anchored
	Part.BottomSurface = bottom
	Part.CanCollide = cancollide
	Part.CFrame = cframe
	Part.BrickColor = BrickColor.new(color)
	Part.Locked = true
	Part.Name = name
	Part.Parent = parent
	Part.Reflectance = reflec
	Part.Size = size
	Part.TopSurface = top
	Part.Transparency = trans
end

--------------------------------------------------------------------------------------

House = I("Model")
House.Name = "House"
House.Parent = Workspace

Human = I("Humanoid")
Human.MaxHealth = 0
Human.Name = "Human"

Corners = I("Model")
Corners.Name = "Corners"
Corners.Parent = House

Cyl = I("CylinderMesh")
Cyl.Name = "CylinderMesh"

Mesh = I("BlockMesh")
Mesh.Name = "Mesh"

Teles = I("Model")
Teles.Name = "Teleports"
Teles.Parent = House
InTele = I("Model")
InTele.Name = "In"--[[ [Idea from kayden963 for buttons and red poles]]
InTele.Parent = Teles
OutTele = I("Model")
OutTele.Name = "Out"
OutTele.Parent = Teles

Walls = I("Model")
Walls.Name = "Walls"
Walls.Parent = House

Windows = I("Model")
Windows.Name = "Windows"
Windows.Parent = House

Clicked = I("ClickDetector")
Clicked.Name = "ClickCheck"

Decal = I("Decal")


LeftWall = Instance.new("Model")
LeftWall.Name = "LeftWall"
LeftWall.Parent = Walls
Lobby = Instance.new("Model")
Lobby.Name = "Lobby"
Lobby.Parent = LeftWall
WallsL = Instance.new("Model")
WallsL.Name = "Walls"
WallsL.Parent = Lobby


--------------------------------------------------------------------------------------

create(true, "Smooth", true, CFrame.new(45.5, 54.2, -3), "Black", "BackConWall", WallsL, 0, Vector3.new(14, 7.2, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(53, 54.2, -5.5), "Black", "BackRightWall", WallsL, 0, Vector3.new(1, 7.2, 4), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(0, 65.6, 37), "Black", "BackWall", Walls, 0, Vector3.new(71, 30, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(60, 54.2, -8), "Black", "BackWall", WallsL, 0, Vector3.new(13, 7.2, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(36.5, 65.6, -36.5), "Bright red", "BLCorner", Corners, 0.3, Vector3.new(2, 30, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(37, 65.6, -19), "Black", "BLeftWall", LeftWall, 0, Vector3.new(1, 30, 33), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-36.5, 65.6, -36.5), "Bright red", "BRCorner", Corners, 0.3, Vector3.new(2, 30, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-1.5, 53.6, 0), "Bright red", "BWindowC", Windows, 0, Vector3.new(2, 1.2, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(45, 50, 0), "Black", "ConFloor", Lobby, 0, Vector3.new(15, 1.2, 7), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(45, 55.4, 0), "Black", "ConRoof", Lobby, 0, Vector3.new(15, 1.2, 7), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(37, 69.2, 0), "Black", "DoorWall", LeftWall, 0, Vector3.new(1, 22.8, 5), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(37, 65.6, 19), "Black", "FLeftWall", LeftWall, 0, Vector3.new(1, 30, 33), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(0, 50, 0), "Black", "Floor", House, 0, Vector3.new(75, 1.2, 75), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(60, 50, 0), "Really red", "Floor", Lobby, 0, Vector3.new(15, 1.2, 17), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(45.5, 54.2, 3), "Black", "FrontConWall", WallsL, 0, Vector3.new(14, 7.2, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(53, 54.2, 5.5), "Black", "FrontRightWall", WallsL, 0, Vector3.new(1, 7.2, 4), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(60, 54.2, 8), "Black", "FrontWall", WallsL, 0, Vector3.new(13, 7.2, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(0, 65.6, -37), "Black", "FrontWall", Walls, 0, Vector3.new(71, 30, 1), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(1.5, 53.6, 0), "Bright red", "FWindowC", Windows, 0, Vector3.new(2, 1.2, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(10, 1.7, 0), "Institutional white", "Head", InTele, 0, Vector3.new(2, 3.4, 2), "Smooth", 0) --InTeleTo
create(true, "Smooth", true, CFrame.new(-10, 52.3, 0), "Institutional white", "Head", OutTele, 0, Vector3.new(2, 3.4, 2), "Smooth", 0) --OutTeleTo
create(true, "Smooth", true, CFrame.new(10, 52.3, 0), "Institutional white", "InTeleFrom", InTele, 0, Vector3.new(2, 3.4, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(67, 54.2, 0), "Black", "LeftWall", WallsL, 0, Vector3.new(1, 7.2, 15), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-4.5, 53.6, 0), "Bright red", "LWindowC", Windows, 0, Vector3.new(2, 1.2, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-10, 1.7, 0), "Institutional white", "OutTeleFrom", OutTele, 0, Vector3.new(2, 3.4, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-37, 65.6, 0), "Black", "RightWall", Walls, 0, Vector3.new(1, 30, 71), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(0, 81.2, 0), "Black", "Roof", House, 0, Vector3.new(75, 1.2, 75), "Smooth", 0)
create(false, "Smooth", true, CFrame.new(60, 55.4, 0), "Really red", "Roofele", Lobby, 0, Vector3.new(13, 1.2, 15), "Smooth", 0)
Lobby.Roofele:BreakJoints() 
pos = Instance.new("BodyPosition", Lobby.Roofele) 
pos.maxForce = Vector3.new(math.huge, 1000, math.huge) 
pos.position = Lobby.Floor.Position + Vector3.new(0, 1, 0) 
create(true, "Smooth", true, CFrame.new(4.5, 53.6, 0), "Bright red", "RWindowC", Windows, 0, Vector3.new(2, 1.2, 2),  "Smooth", 0)
create(true, "Smooth", true, CFrame.new(8.5, 50.6, 2), "Bright red", "ele", Windows, 0, Vector3.new(2, 1.2, 2),  "Smooth", 0)
create(true, "Smooth", true, CFrame.new(36.5, 65.6, 36.5), "Bright red", "TLCorner", Corners, 0.3, Vector3.new(2, 30, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(-36.5, 65.6, 36.5), "Bright red", "TRCorner", Corners, 0.3, Vector3.new(2, 30, 2), "Smooth", 0)
create(true, "Smooth", true, CFrame.new(0, 51.8, 0), "Reddish brown", "WindowBase", Windows, 0, Vector3.new(13, 2.4, 4), "Smooth", 0)

--------------------------------------------------------------------------------------

BWindowClick = Clicked:Clone()
BWindowClick.Parent = Windows.BWindowC

FWindowClick = Clicked:Clone()
FWindowClick.Parent = Windows.FWindowC

LWindowClick = Clicked:Clone()
LWindowClick.Parent = Windows.LWindowC

RWindowClick = Clicked:Clone()
RWindowClick.Parent = Windows.RWindowC

eleClick = Clicked:Clone()
eleClick.Parent = Windows.ele

Window1 = Walls.BackWall
Window2 = Walls.FrontWall
Window3 = Walls.LeftWall:GetChildren()
Window4 = Walls.RightWall

C1 = FWindowClick
C2 = BWindowClick
C3 = RWindowClick
C4 = LWindowClick
C5 = eleClick

C1.MouseClick:connect(function() if Window1.Transparency == 0 then Window1.Transparency = 0.5 else Window1.Transparency = 0 end end)
C2.MouseClick:connect(function() if Window2.Transparency == 0 then Window2.Transparency = 0.5 else Window2.Transparency = 0 end end)
C3.MouseClick:connect(function() for _, v in pairs(Window3) do if v.className == "Part" then if v.Transparency == 0 then v.Transparency = 0.5 else v.Transparency = 0 end end end end)
C4.MouseClick:connect(function() if Window4.Transparency == 0 then Window4.Transparency = 0.5 else Window4.Transparency = 0 end end)
C5.MouseClick:connect(function() if pos.position == Lobby.Floor.Position + Vector3.new(0, 1, 0) then pos.position = Lobby.Floor.Position + Vector3.new(0, 5.4, 0) else pos.position = Lobby.Floor.Position + Vector3.new(0, 1, 0) end end)
--------------------------------------------------------------------------------------

BWindowD = Decal:Clone()
BWindowD.Face = "Top"
BWindowD.Name = "DownArrow"
BWindowD.Parent = Windows.BWindowC
BWindowD.Texture = "http://www.roblox.com/asset/?id=29563831" --Made by Nickardson

FWindowD = Decal:Clone()
FWindowD.Face = "Top"
FWindowD.Name = "UpArrow"
FWindowD.Parent = Windows.FWindowC
FWindowD.Texture = "http://www.roblox.com/asset/?id=29563813" --Made by Nickardson

LWindowD = Decal:Clone()
LWindowD.Face = "Top"
LWindowD.Name = "LeftArrow"
LWindowD.Parent = Windows.LWindowC
LWindowD.Texture = "http://www.roblox.com/asset/?id=29563831" --Made by Nickardson

RWindowD = Decal:Clone()
RWindowD.Face = "Top"
RWindowD.Name = "RightArrow"
RWindowD.Parent = Windows.RWindowC
RWindowD.Texture = "http://www.roblox.com/asset/?id=29563813" --Made by Nickardson

Windows.LWindowC.CFrame = Windows.LWindowC.CFrame * CFrame.Angles(0, math.pi/2, 0)
Windows.RWindowC.CFrame = Windows.RWindowC.CFrame * CFrame.Angles(0, math.pi/2, 0)

--------------------------------------------------------------------------------------

function searchAndAddMesh(Where)
	if not Where then Where = Workspace end
	for _, v in pairs(Where:GetChildren()) do
		if v:IsA("Part") then
			mesh = Mesh:Clone()
			mesh.Parent = v
		end
		searchAndAddMesh(v)
	end
end

for _, v in pairs(House:GetChildren()) do
	searchAndAddMesh(v)
end

InTeleFM = Cyl:Clone()
InTeleFM.Parent = InTele.InTeleFrom

InTeleTM = Cyl:Clone()
InTeleTM.Parent = InTele.Head

OutTeleFM = Cyl:Clone()
OutTeleFM.Parent = OutTele.OutTeleFrom

OutTeleTM = Cyl:Clone()
OutTeleTM.Parent = OutTele.Head

IF = InTele.InTeleFrom
IT = InTele.Head
OF = OutTele.OutTeleFrom
OT = OutTele.Head

debounce = false
IT.Touched:connect(function(part) if debounce == false then if part.Parent:findFirstChild("Humanoid") ~= nil then torso = part.Parent:findFirstChild("Torso") if torso ~= nil then debounce = true torso.CFrame = IF.CFrame wait(3) debounce = false end end end end)
debounce2 = false
OT.Touched:connect(function(part) if debounce2 == false then if part.Parent:findFirstChild("Humanoid") ~= nil then torso = part.Parent:findFirstChild("Torso") if torso ~= nil then debounce2 = true torso.CFrame = OF.CFrame wait(3) debounce2 = false end end end end)

--------------------------------------------------------------------------------------

ITH = Human:Clone()
ITH.Parent = InTele

OTH = Human:Clone()
OTH.Parent = OutTele
