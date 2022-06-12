--[[mediafire]]--

local User = "yfc"

local RobeColor = "Cyan" -- BrickColor name of the robe color

local Instance = Instance;
local on = Instance.new;
function Instance.new(Class, Parent, Properties)
	local Item = on(Class, Parent)
	if Item:IsA("BasePart") then
		Item.formFactor = "Custom"
		Item.CanCollide = false
	end
	Properties = Properties or {}
	for Prop, Val in pairs(Properties) do -- Ensure sequencial order
		Item[Prop] = Val
	end
	return Item
end

local Bone = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(1,0.4,1);
	BrickColor = BrickColor.new("Institutional white");
	TopSurface = "Smooth";
	BottomSurface = "Smooth";
});
local MBone = Bone:Clone()
MBone.Size = Vector3.new(0.5,0.4,0.5)

local Skull = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(2,1.2,2);
	BrickColor = BrickColor.new("Institutional white");
});
local SkullMesh = Instance.new(
"SpecialMesh",
Skull,
{
	MeshType = "FileMesh";
	MeshId = "http://www.roblox.com/asset/?id=4770583";
	Scale = Vector3.new(2.6,3.2,3.2);
});

local Hood = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(2,1,2);
});
local HoodMesh = Instance.new(
"SpecialMesh",
Hood,
{
	MeshType = "FileMesh";
	MeshId = "http://www.roblox.com/asset/?id=16952952";
	Scale = Vector3.new(1.05,1.05,1.05);
	TextureId = "http://www.roblox.com/asset/?id=22768433";
	VertexColor = (function()
		local Tab = loadstring("return {" .. tostring(BrickColor.new(RobeColor).Color) .. "}")()
		return Vector3.new(unpack(Tab))
	end)();
});

local CapePart = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(1,0.4,1);
});
local CapeMesh = Instance.new(
"BlockMesh",
CapePart,
{
	Offset = Vector3.new(0,0,0.25);
	Scale = Vector3.new(1,0.25,3.25);
});

local TorsoCover = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(2,2,1);
	BrickColor = BrickColor.new(RobeColor);
});
local CoverMesh = Instance.new(
"BlockMesh",
TorsoCover,
{
	Offset = Vector3.new(-0.5,0,0);
	Scale = Vector3.new(0.5,1,1);
});

local Limb = Instance.new(
"Part",
nil,
{
	Size = Vector3.new(1,2,1);
});

function GetChildren(Object)
	local Safe, Children = pcall(function() game.GetChildren(Object) end)
	return Safe and Children or {}
end

function FindPlayer(NameFrag)
	NameFrag = tostring(NameFrag)
	for _, Player in pairs(game:GetService("Players"):GetChildren()) do
		if Player.Name:lower():find(NameFrag:lower()) and Player:IsA("Player") then
			return Player
		end
	end
end

function WeldTo(A, B) -- Make a basic weld
	local Weld = Instance.new(
		"Weld",
		nil,
		{
			Part0 = A;
			Part1 = B;
		});
	B.CFrame = A.CFrame
	Weld.Parent = A
end

function Weld(A, B) -- Makes an accurate weld
	local Weld = Instance.new("Weld")
	Weld.C0 = A.CFrame:inverse() * CFrame.new(A.Position)
	Weld.C1 = B.CFrame:inverse() * CFrame.new(A.Position)
	Weld.Part0 = A
	Weld.Part1 = B
	Weld.Parent = A
end

function SuitUp(NameFrag)
	local Player = FindPlayer(NameFrag)
	if not Player then return end
	local Character = Player.Character
	
	local Torso = Character.Torso;
	for _, Item in pairs(Character:GetChildren()) do
		if Item:IsA("BasePart") then
			Item.Transparency = 1
			if Item:FindFirstChild("face") then
				Item.face:Remove()
			end
		elseif Item:IsA("Clothing") then
			Item:Remove()
		elseif Item:IsA("Hat") then
			Item:Remove()
		end
	end
	
	local Container = Instance.new(
		"Model",
		Character,
		{
			Name = "ZeneSkeleton";
		});
	
	local Cover = TorsoCover:Clone()
	Cover.Parent = Container
	WeldTo(Torso, Cover)
	
	local Hood = Hood:Clone()
	Hood.Parent = Container
	Hood.CFrame = Cover.CFrame * CFrame.new(0,1,1) * CFrame.Angles(math.rad(90), 0, 0)
	Weld(Cover, Hood)
	
	local Skull = Skull:Clone()
	Skull.Parent = Container
	Skull.CFrame = Cover.CFrame * CFrame.new(0,1.6,0)
	Weld(Cover, Skull)
	
	local Tunic = Limb:Clone()
	Tunic.Parent = Container
	Tunic.BrickColor = BrickColor.new("Really black")
	Tunic.CFrame = Cover.CFrame * CFrame.new(0.5,0,0)
	Weld(Cover, Tunic)
	
	local LLeg = Limb:Clone()
	LLeg.Parent = Container
	LLeg.BrickColor = BrickColor.new("Really black")
	WeldTo(Character["Left Leg"], LLeg)

	local RLeg = Limb:Clone()
	RLeg.Parent = Container
	RLeg.BrickColor = BrickColor.new(RobeColor)
	WeldTo(Character["Right Leg"], RLeg)
	
	local LArm = Limb:Clone()
	LArm.Parent = Container
	LArm.Transparency = 1
	WeldTo(Character["Left Arm"], LArm)
	
	local Pad = Instance.new(
		"Part",
		Container,
		{
			Size = Vector3.new(1,0.4,1);
			BrickColor = BrickColor.new("Really black");
			TopSurface = "Smooth";
			BottomSurface = "Smooth";
		});
	local PadMesh = Instance.new( 
		"SpecialMesh",
		Pad,
		{
			MeshType = "Sphere";
			Scale = Vector3.new(1.5,1.25,1.5);
		});
	Pad.CFrame = LArm.CFrame * CFrame.new(0,1,0)
	Weld(LArm, Pad)

	for i=1, 3 do
		local Bone = Bone:Clone()
		Bone.Parent = Container
		Bone.CFrame = LArm.CFrame * CFrame.new(0,0.7-(0.7*(i-1)),0)
		Weld(LArm, Bone)
	end
	for i=1, 2 do
		local Bone = MBone:Clone()
		Bone.Parent = Container
		Bone.CFrame = LArm.CFrame * CFrame.new(0,0.35-(0.7*(i-1)),0)
		Weld(LArm, Bone)
	end
	
	local RArm = Limb:Clone()
	RArm.Parent = Container
	RArm.Transparency = 1
	WeldTo(Character["Right Arm"], RArm)

	local RPad = Pad:Clone()
	RPad.Parent = Container
	RPad.CFrame = RArm.CFrame * CFrame.new(0,1,0)
	RPad.BrickColor = BrickColor.new(RobeColor)
	Weld(RArm, RPad)
	
	for i=1, 3 do
		local Bone = Bone:Clone()
		Bone.Parent = Container
		Bone.CFrame = RArm.CFrame * CFrame.new(0,0.7-(0.7*(i-1)),0)
		Weld(RArm, Bone)
	end
	for i=1, 2 do
		local Bone = MBone:Clone()
		Bone.Parent = Container
		Bone.CFrame = RArm.CFrame * CFrame.new(0,0.35-(0.7*(i-1)),0)
		Weld(RArm, Bone)
	end
end

SuitUp(User)