local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Torso = Character.Torso

ca=CFrame.Angles
cn=CFrame.new
it=Instance.new
rd=math.rad
v3=Vector3.new

Interpolate = function(CFrame1, CFrame2)
	local Table1 = {CFrame1:components()}
	local Table2 = {CFrame2:components()}
	local NewCFrame = {}
	for i,v in ipairs(Table1) do
		local Difference = Table2[i] - v
		if i < 4 then
			local NewValue
			if math.abs(Difference) < 0.1 then
				NewValue = Table2[i]
			else
				NewValue = v + ((Difference/math.abs(Difference)) * 0.1)
			end
			NewCFrame[i] = NewValue
		else
			local NewValue
			if math.abs(Difference) < 0.1 then
				NewValue = Table2[i]
			else
				NewValue = v + ((Difference/math.abs(Difference)) * 0.1)
			end
			NewCFrame[i] = NewValue
		end
	end
	return CFrame.new(unpack(NewCFrame))
end

Prop = function(Parent, Name, x, y, z, Anchored, CanCollide, Color)
	local Part = Instance.new("Part",Parent)
	Part.Name = Name
	Part.FormFactor = 3
	Part.Size = Vector3.new(x, y, z)
	Part.Anchored = Anchored
	Part.CanCollide = CanCollide
	Part.BrickColor = BrickColor.new(Color)
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part:BreakJoints()
	return Part
end

Mesh = function(Parent, MeshType,x, y, z,MeshId,TextureId)
	local Mesh = nil
	if MeshType=="CylinderMesh" then
		Mesh=Instance.new("CylinderMesh",Parent)
		Mesh.Scale=Vector3.new(x,y,z)
	elseif MeshType~="BlockMesh" and MeshType~="CylinderMesh" then
		Mesh=Instance.new("SpecialMesh",Parent)
		Mesh.MeshType = MeshType
		Mesh.MeshId = MeshId or ""
		Mesh.Scale = Vector3.new(x, y, z)
		return Mesh
	end
end

Weld = function(Part0, Part1, C0, C1)
	local Weld = Instance.new("Weld",Part0)
	Weld.Part0 = Part0
	Weld.Part1 = Part1
	Weld.C0 = C0 or CFrame.new()
	Weld.C1 = C1 or CFrame.new()
	return Weld
end

local Handle = Prop(Character, "Handle", 0.2, 1.5, 0.2, false, false, "Really black")
Weld(Torso, Handle, CFrame.new(0, 5, 0))
local Guard = Prop(Character, "Guard", 1.5,0.1,0.2,false, false, "Really black")
Weld(Handle, Guard, CFrame.new(0, 1.5/2, 0))
local Pivot = Prop(Character,"",0,0,0,false,false,"") -- this is basicly an invisible part
local Pivot2 = Prop(Character,"",0,0,0,false,false,"")
Pivot.Transparency = 1
Pivot2.Transparency = 1
Weld(Guard,Pivot,CFrame.new(0,-0.75,0)*CFrame.Angles(0,0,math.rad(-40-90)))
Weld(Guard,Pivot2,CFrame.new(0,0.75,0)*CFrame.Angles(0,0,math.rad(40+90)))
local Guard2 = Prop(Character, "Guard2", 0.1, 0.5, 0.2, false, false, "Really black")
Weld(Pivot, Guard2, CFrame.new(0, -0.25, 0))
local Guard3 = Prop(Character, "Guard3", 0.1, 0.5, 0.2, false, false, "Really black")
Weld(Pivot2, Guard3, CFrame.new(0, 0.25, 0))
local Design = Prop(Character, "Design", 0.5, 1, 0.5, false, false, "Gold")
Mesh(Design, "FileMesh", 0.5, 1, 0.5,"http://www.roblox.com/Asset/?id=9756362")
Weld(Handle, Design, CFrame.new(0, -0.75, 0))
local Ball = Prop(Character, "Ball1", 0.3, 0.3, 0.3, false, false, "Gold")
Mesh(Ball, "Sphere", 1, 1, 1)
Weld(Pivot, Ball)
local Ball2 = Prop(Character, "Ball2", 0.3, 0.3, 0.3, false, false, "Gold")
Mesh(Ball2, "Sphere", 1, 1, 1)
Weld(Pivot2, Ball2)
local Spike = Prop(Character, "Spike1", 0.1, 1, 0.1, false, false, "Gold")
Mesh(Spike, "FileMesh", 0.1, 1, 0.1,"http://www.roblox.com/asset/?id=1033714")
Weld(Pivot, Spike, CFrame.new(-0.3, 0, 0) * CFrame.Angles(math.rad(0), 0, math.rad(90)))
local Spike2 = Prop(Character, "Spike2", 0.1, 1, 0.1, false, false, "Gold")
Mesh(Spike2, "FileMesh", 0.1, 1, 0.1, "http://www.roblox.com/asset/?id=1033714")
Weld(Pivot2, Spike2, CFrame.new(-0.3, 0, 0) * CFrame.Angles(math.rad(0), 0, math.rad(90)))
Mesh(Handle, "CylinderMesh", 1, 1, 1)