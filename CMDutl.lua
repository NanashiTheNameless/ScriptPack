---- Security Check ----------------
assert(
	pcall(function()
		return game:GetService("Selection"):Get()
		and game:GetService("CoreGui"):GetChildren()
	end),
	"CmdUtl cannot run with this security context! See the README for a proper setup"
)

---- Generate Panel ----------------
local GuiOut = {}
GuiOut.item_0 = Instance.new("ScreenGui")
GuiOut.item_0.Name = "CmdUtl"
GuiOut.item_0.archivable = false
	GuiOut.item_1 = Instance.new("Frame")
	GuiOut.item_1.Size = UDim2.new(0, 280, 0, 160)
	GuiOut.item_1.BorderColor3 = Color3.new(0, 0, 0)
	GuiOut.item_1.BackgroundTransparency = 1
	GuiOut.item_1.Name = "Panel"
	GuiOut.item_1.BackgroundColor3 = Color3.new(1, 1, 1)
	GuiOut.item_1.Parent = GuiOut.item_0
		GuiOut.item_2 = Instance.new("ImageButton")
		GuiOut.item_2.Image = "http://www.roblox.com/asset/?id=44532699"
		GuiOut.item_2.Size = UDim2.new(0, 16, 0, 16)
		GuiOut.item_2.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_2.Position = UDim2.new(1, 0, 0, 0)
		GuiOut.item_2.Name = "ExpandButton"
		GuiOut.item_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_2.Parent = GuiOut.item_1
		GuiOut.item_3 = Instance.new("TextButton")
		GuiOut.item_3.FontSize = Enum.FontSize.Size10
		GuiOut.item_3.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_3.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_3.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_3.Position = UDim2.new(0, 0, 0.10000000149012, 0)
		GuiOut.item_3.Text = "Axis"
		GuiOut.item_3.Name = "AxisButton"
		GuiOut.item_3.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_3.Parent = GuiOut.item_1
		GuiOut.item_4 = Instance.new("TextButton")
		GuiOut.item_4.FontSize = Enum.FontSize.Size10
		GuiOut.item_4.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_4.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_4.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_4.Position = UDim2.new(0.25, 0, 0.30000001192093, 0)
		GuiOut.item_4.Text = "Snap"
		GuiOut.item_4.Name = "PivotSnapButton"
		GuiOut.item_4.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_4.Parent = GuiOut.item_1
		GuiOut.item_5 = Instance.new("TextButton")
		GuiOut.item_5.FontSize = Enum.FontSize.Size10
		GuiOut.item_5.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_5.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_5.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_5.Position = UDim2.new(0, 0, 0.20000000298023, 0)
		GuiOut.item_5.Text = "Rotate"
		GuiOut.item_5.Name = "RelativeButton"
		GuiOut.item_5.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_5.Parent = GuiOut.item_1
		GuiOut.item_6 = Instance.new("TextBox")
		GuiOut.item_6.FontSize = Enum.FontSize.Size10
		GuiOut.item_6.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_6.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_6.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_6.Position = UDim2.new(0.5, 0, 0.20000000298023, 0)
		GuiOut.item_6.Text = "45"
		GuiOut.item_6.Name = "RotateInc"
		GuiOut.item_6.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_6.Parent = GuiOut.item_1
		GuiOut.item_7 = Instance.new("TextBox")
		GuiOut.item_7.FontSize = Enum.FontSize.Size10
		GuiOut.item_7.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_7.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_7.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_7.Position = UDim2.new(0.75, 0, 0.10000000149012, 0)
		GuiOut.item_7.Text = "1"
		GuiOut.item_7.Name = "MoveInc"
		GuiOut.item_7.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_7.Parent = GuiOut.item_1
		GuiOut.item_8 = Instance.new("TextButton")
		GuiOut.item_8.FontSize = Enum.FontSize.Size10
		GuiOut.item_8.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_8.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_8.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_8.Position = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_8.Text = "Object"
		GuiOut.item_8.Name = "ObjectButton"
		GuiOut.item_8.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_8.Parent = GuiOut.item_1
		GuiOut.item_9 = Instance.new("TextButton")
		GuiOut.item_9.FontSize = Enum.FontSize.Size10
		GuiOut.item_9.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_9.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_9.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_9.Position = UDim2.new(0, 0, 0.40000000596046, 0)
		GuiOut.item_9.Text = "Resize"
		GuiOut.item_9.Name = "ResizeButton"
		GuiOut.item_9.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_9.Parent = GuiOut.item_1
		GuiOut.item_10 = Instance.new("TextBox")
		GuiOut.item_10.FontSize = Enum.FontSize.Size10
		GuiOut.item_10.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_10.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_10.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_10.Position = UDim2.new(0.25, 0, 0.40000000596046, 0)
		GuiOut.item_10.Text = "1"
		GuiOut.item_10.Name = "ResizeInc"
		GuiOut.item_10.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_10.Parent = GuiOut.item_1
		GuiOut.item_11 = Instance.new("TextButton")
		GuiOut.item_11.FontSize = Enum.FontSize.Size10
		GuiOut.item_11.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_11.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_11.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_11.Position = UDim2.new(0, 0, 0.30000001192093, 0)
		GuiOut.item_11.Text = "Pivot"
		GuiOut.item_11.Name = "PivotButton"
		GuiOut.item_11.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_11.Parent = GuiOut.item_1
		GuiOut.item_12 = Instance.new("TextBox")
		GuiOut.item_12.FontSize = Enum.FontSize.Size10
		GuiOut.item_12.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_12.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_12.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_12.Position = UDim2.new(0.5, 0, 0.30000001192093, 0)
		GuiOut.item_12.Text = "45"
		GuiOut.item_12.Name = "PivotInc"
		GuiOut.item_12.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_12.Parent = GuiOut.item_1
		GuiOut.item_13 = Instance.new("TextButton")
		GuiOut.item_13.FontSize = Enum.FontSize.Size10
		GuiOut.item_13.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_13.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_13.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_13.Position = UDim2.new(0, 0, 0.5, 0)
		GuiOut.item_13.Text = "Scale"
		GuiOut.item_13.Name = "ScaleButton"
		GuiOut.item_13.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_13.Parent = GuiOut.item_1
		GuiOut.item_14 = Instance.new("TextBox")
		GuiOut.item_14.FontSize = Enum.FontSize.Size10
		GuiOut.item_14.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_14.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_14.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_14.Position = UDim2.new(0.25, 0, 0.5, 0)
		GuiOut.item_14.Text = "0.5"
		GuiOut.item_14.Name = "ScaleInc"
		GuiOut.item_14.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_14.Parent = GuiOut.item_1
		GuiOut.item_15 = Instance.new("TextButton")
		GuiOut.item_15.FontSize = Enum.FontSize.Size10
		GuiOut.item_15.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_15.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_15.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_15.Position = UDim2.new(0, 0, 0.60000002384186, 0)
		GuiOut.item_15.Text = "Weld"
		GuiOut.item_15.Name = "WeldButton"
		GuiOut.item_15.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_15.Parent = GuiOut.item_1
		GuiOut.item_16 = Instance.new("TextBox")
		GuiOut.item_16.FontSize = Enum.FontSize.Size10
		GuiOut.item_16.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_16.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_16.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_16.Position = UDim2.new(0.25, 0, 0.60000002384186, 0)
		GuiOut.item_16.Text = "Motor6D"
		GuiOut.item_16.Name = "WeldType"
		GuiOut.item_16.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_16.Parent = GuiOut.item_1
		GuiOut.item_17 = Instance.new("TextButton")
		GuiOut.item_17.FontSize = Enum.FontSize.Size10
		GuiOut.item_17.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_17.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_17.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_17.Position = UDim2.new(0, 0, 0.69999998807907, 0)
		GuiOut.item_17.Text = "BrickColor"
		GuiOut.item_17.Name = "BrickColorButton"
		GuiOut.item_17.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_17.Parent = GuiOut.item_1
		GuiOut.item_18 = Instance.new("TextButton")
		GuiOut.item_18.FontSize = Enum.FontSize.Size10
		GuiOut.item_18.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_18.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_18.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_18.Position = UDim2.new(0, 0, 0.80000001192093, 0)
		GuiOut.item_18.Text = "Slope"
		GuiOut.item_18.Name = "SlopeButton"
		GuiOut.item_18.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_18.Parent = GuiOut.item_1
		GuiOut.item_19 = Instance.new("ImageButton")
		GuiOut.item_19.Visible = false
		GuiOut.item_19.SizeConstraint = Enum.SizeConstraint.RelativeXX
		GuiOut.item_19.BorderSizePixel = 0
		GuiOut.item_19.Size = UDim2.new(0.75, 0, 0.75, 0)
		GuiOut.item_19.ZIndex = 10
		GuiOut.item_19.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_19.AutoButtonColor = false
		GuiOut.item_19.BackgroundTransparency = 1
		GuiOut.item_19.Position = UDim2.new(0.25, 1, 0.69999998807907, 1)
		GuiOut.item_19.Name = "BrickColorDialog"
		GuiOut.item_19.BackgroundColor3 = Color3.new(0, 0, 0)
		GuiOut.item_19.Parent = GuiOut.item_1
		GuiOut.item_20 = Instance.new("TextLabel")
		GuiOut.item_20.FontSize = Enum.FontSize.Size10
		GuiOut.item_20.Size = UDim2.new(1, 0, 0.10000000149012, 0)
		GuiOut.item_20.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_20.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_20.Text = ""
		GuiOut.item_20.Name = "Description"
		GuiOut.item_20.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_20.Parent = GuiOut.item_1
		GuiOut.item_21 = Instance.new("TextButton")
		GuiOut.item_21.FontSize = Enum.FontSize.Size10
		GuiOut.item_21.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_21.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_21.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_21.Position = UDim2.new(0.5, 0, 0.10000000149012, 0)
		GuiOut.item_21.Text = "Snap"
		GuiOut.item_21.Name = "MoveSnapButton"
		GuiOut.item_21.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_21.Parent = GuiOut.item_1
		GuiOut.item_22 = Instance.new("TextButton")
		GuiOut.item_22.FontSize = Enum.FontSize.Size10
		GuiOut.item_22.Size = UDim2.new(0.25, 0, 0.10000000149012, 0)
		GuiOut.item_22.TextColor3 = Color3.new(0, 0, 0)
		GuiOut.item_22.BorderColor3 = Color3.new(0, 0, 0)
		GuiOut.item_22.Position = UDim2.new(0.25, 0, 0.20000000298023, 0)
		GuiOut.item_22.Text = "Snap"
		GuiOut.item_22.Name = "RotateSnapButton"
		GuiOut.item_22.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
		GuiOut.item_22.Parent = GuiOut.item_1

---- Utility Panel ----------------
local Screen = GuiOut.item_0
Screen.Parent = game:GetService("CoreGui")

local Panel = Screen.Panel
local Description = Panel.Description

local SelectionPart = Instance.new("Part")
SelectionPart.Name = "Selection"
SelectionPart.Anchored = true
SelectionPart.CanCollide = false
SelectionPart.Locked = true
SelectionPart.formFactor = "Custom"
SelectionPart.TopSurface = 0
SelectionPart.BottomSurface = 0
SelectionPart.Transparency = 1
SelectionPart.archivable = false
local MoveHandles = Instance.new("Handles",SelectionPart)
MoveHandles.Adornee = SelectionPart
MoveHandles.Visible = false
MoveHandles.archivable = false
local RotateHandles = Instance.new("ArcHandles",SelectionPart)
RotateHandles.Adornee = SelectionPart
RotateHandles.Visible = false
RotateHandles.archivable = false

local ExpandButton = Panel.ExpandButton

local AxisButton = Panel.AxisButton
local ObjectButton = Panel.ObjectButton
local MoveSnapButton = Panel.MoveSnapButton
local MoveInc = Panel.MoveInc

local RelativeButton = Panel.RelativeButton
local RotateSnapButton = Panel.RotateSnapButton
local RotateInc = Panel.RotateInc

local PivotButton = Panel.PivotButton
local PivotSnapButton = Panel.PivotSnapButton
local PivotInc = Panel.PivotInc

local ResizeButton = Panel.ResizeButton
local ResizeInc = Panel.ResizeInc

local ScaleButton = Panel.ScaleButton
local ScaleInc = Panel.ScaleInc

local WeldButton = Panel.WeldButton
local WeldType = Panel.WeldType

local BrickColorButton = Panel.BrickColorButton
local BrickColorDialog = Panel.BrickColorDialog

local SlopeButton = Panel.SlopeButton

local resource = {
	upcolor			= Color3.new(248/255,248/255,248/255);
	downcolor		= Color3.new(51/255,204/255,51/255);
	movecolor		= BrickColor.new("Br. yellowish orange");
	resizecolor		= BrickColor.new("Cyan");
	rotatecolor		= BrickColor.new("Bright green");
	expandicon		= "http://www.roblox.com/asset/?id=44532707";
	collapseicon	= "http://www.roblox.com/asset/?id=44532699";
	handleparent	= Screen.Parent;
}
local fullaxis = Axes.new(
	Enum.Axis.X,
	Enum.Axis.Y,
	Enum.Axis.Z
)
local fullface = Faces.new(
	Enum.NormalId.Back,
	Enum.NormalId.Bottom,
	Enum.NormalId.Front,
	Enum.NormalId.Left,
	Enum.NormalId.Right,
	Enum.NormalId.Top
)
local facevector = {
	[Enum.NormalId.Back] = Vector3.FromNormalId(Enum.NormalId.Back);
	[Enum.NormalId.Bottom] = Vector3.FromNormalId(Enum.NormalId.Bottom);
	[Enum.NormalId.Front] = Vector3.FromNormalId(Enum.NormalId.Front);
	[Enum.NormalId.Left] = Vector3.FromNormalId(Enum.NormalId.Left);
	[Enum.NormalId.Right] = Vector3.FromNormalId(Enum.NormalId.Right);
	[Enum.NormalId.Top] = Vector3.FromNormalId(Enum.NormalId.Top);
}
local facemult = {
	[Enum.NormalId.Back]	=  1;
	[Enum.NormalId.Bottom]	= -1;
	[Enum.NormalId.Front]	= -1;
	[Enum.NormalId.Left]	= -1;
	[Enum.NormalId.Right]	=  1;
	[Enum.NormalId.Top]		=  1;
}
local axisnum = {
	[Enum.Axis.X] = 1;
	[Enum.Axis.Y] = 2;
	[Enum.Axis.Z] = 3;
}
local brickcolors = {}
for i = 1,1032 do
	local b = BrickColor.new(i)
	if i == b.Number then
		table.insert(brickcolors,b)
	end
end

for x = 0,11 do
	for y = 0,11 do
		local color = Instance.new("Frame")
		color.BorderColor3 = Color3.new()
		color.BorderSizePixel = 0
		color.ZIndex = 9
		color.Name = x+y*12
		color.BackgroundColor3 = brickcolors[x+y*12+1].Color
		color.Size = UDim2.new(1/12,0,1/12,0)
		color.Position = UDim2.new(1/12*x,0,1/12*y,0)
		color.Parent = BrickColorDialog
	end
end

local event = {}
local function disconnect(set)
	for _,con in pairs(set) do
		if event[con] then
			event[con]:disconnect()
			event[con] = nil
		end
	end
end

local state = {}
local incstate = {
	[MoveInc]			= 1;
	[RotateInc]			= 45;
	[ResizeInc]			= 1;
	[PivotInc]			= 45;
	[ScaleInc]			= 0.5;
	[WeldType]			= "Motor6D";
}
local desc = {
	[ExpandButton]		= [[Show/hide this panel]];
	[AxisButton]		= [[Move selection on axis]];
	[ObjectButton]		= [[Move selection by rotation]];
	[MoveSnapButton]	= [[Snap selection position by increment]];
	[MoveInc]			= [[Move increment]];
	[RelativeButton]	= [[Rotate by angle]];
	[RotateSnapButton]	= [[Snap selection rotation by increment]];
	[RotateInc]			= [[Rotation increment (in degrees)]];
	[PivotButton]		= [[Rotate entire selection around 1st selection]];
	[PivotSnapButton]	= [[Snap 1st selection rotation by increment]];
	[PivotInc]			= [[Pivot increment (in degrees)]];
	[ResizeButton]		= [[Resize selection with handles]];
	[ResizeInc]			= [[Resize increment]];
	[ScaleButton]		= [[Copy then scale entire selection]];
	[ScaleInc]			= [[Scale amount]];
	[WeldButton]		= [[Weld 1st selection to rest of selection]];
	[WeldType]			= [[Joint type to use]];
	[BrickColorButton]	= [[Recolor entire selection]];
	[SlopeButton]		= [[Slope entire selection from 1st to 2nd selection]];
}
local warn = {
	[AxisButton]		= {[[No parts selected]]};
	[ObjectButton]		= {[[No parts selected]]};
	[MoveSnapButton]	= {[[No parts selected]]};
	[RelativeButton]	= {[[No parts selected]]};
	[RotateSnapButton]	= {[[No parts selected]]};
	[PivotButton]		= {[[No parts selected]]};
	[PivotSnapButton]	= {[[No parts selected]]};
	[ResizeButton]		= {[[No parts selected]]};
	[ScaleButton]		= {[[No parts selected]]};
	[WeldButton]		= {[[No parts selected]];[[Not enough valid selections]]};
	[BrickColorButton]	= {[[No parts selected]]};
	[SlopeButton]		= {[[Invalid 1st selection]];[[Invalid 2nd selection]];[[Not enough valid selections]]};
}

local ondown
local onup

local function SetUp(button)
	state[button] = false
	button.BackgroundColor3 = resource.upcolor
	onup[button]()
end

local function SetDown(button)
	state[button] = true
	button.BackgroundColor3 = resource.downcolor
	ondown[button]()
end

local function SetDesc(button,state)
	Description.TextColor3 = Color3.new(0,0,0)
	local text = desc[button]
	if state then
		Description.Text = text
	elseif not state and Description.Text == text then
		Description.Text = ""
	end
end

local function SetWarn(button,n)
	SetUp(button)
	Description.TextColor3 = Color3.new(0.8,0,0)
	Description.Text = button and warn[button][n or 1] or ""
end

function round(number,by)
	return by == 0 and number or math.floor(number/by+0.5)*by
end

local points = {
	Vector3.new(-1,-1,-1);
	Vector3.new( 1,-1,-1);
	Vector3.new(-1, 1,-1);
	Vector3.new( 1, 1,-1);
	Vector3.new(-1,-1, 1);
	Vector3.new( 1,-1, 1);
	Vector3.new(-1, 1, 1);
	Vector3.new( 1, 1, 1);
}

local function GetBoundingBox(part)
	local sides = {0;0;0;0;0;0}
	local mod = part.Size/2
	local rot = part.CFrame-part.CFrame.p
	for _,mult in pairs(points) do
		local point = rot*CFrame.new(mod*mult).p
		sides[1] = point.x > sides[1] and point.x or sides[1]
		sides[2] = point.x < sides[2] and point.x or sides[2]
		sides[3] = point.y > sides[3] and point.y or sides[3]
		sides[4] = point.y < sides[4] and point.y or sides[4]
		sides[5] = point.z > sides[5] and point.z or sides[5]
		sides[6] = point.z < sides[6] and point.z or sides[6]
	end                                                
	return Vector3.new(sides[1]-sides[2],sides[3]-sides[4],sides[5]-sides[6])
end

local function FilterParts(set)
	local out = {}
	for i,v in pairs(set) do
		if v:IsA"BasePart" then
			table.insert(out,v)
		end
	end
	return out
end

local function RecurseGet(object,set)
	if object:IsA"BasePart" then
		table.insert(set,object)
	end
	for _,child in pairs(object:GetChildren()) do
		RecurseGet(child,set)
	end
end

local function RecurseFilterParts(set)
	local out = {}
	for _,part in pairs(set) do
		RecurseGet(part,out)
	end
	return out
end

local function FindMidpoint(set)
	local mid = Vector3.new()
	for i,v in pairs(set) do
		mid = mid+v.Position
	end
	return mid/#set
end

local S = game:GetService("Selection")
local function get()
	return S:Get()
end
local function set(objects)
	S:Set(objects)
end

ondown = {
	[ExpandButton] = function()
		Panel.Position = UDim2.new(0,-281,0.06,0)
		ExpandButton.Image = resource.expandicon
	end;
	[AxisButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			table.insert(selection,SelectionPart)
			SelectionPart.Size = GetBoundingBox(selection[1])
			SelectionPart.CFrame = CFrame.new(selection[1].Position)
			MoveHandles.Color = resource.movecolor
			MoveHandles.Visible = true
			MoveHandles.Parent = resource.handleparent
			SelectionPart.Parent = workspace
			local origin = {}
			event["axisdown"] = MoveHandles.MouseButton1Down:connect(function(face)
			--	MoveHandles.Faces = Faces.new(face)
				for _,part in pairs(selection) do
					origin[part] = part.CFrame
				end
			end)
			event["axisup"] = MoveHandles.MouseButton1Up:connect(function()
			--	MoveHandles.Faces = fullface
			end)
			event["axisdrag"] = MoveHandles.MouseDrag:connect(function(face,distance)
				local pos = facevector[face]*round(distance,incstate[MoveInc])
				for part,cframe in pairs(origin) do		
					part.CFrame = cframe + pos
				end
			end)
		else
			SetWarn(AxisButton)
		end
	end;
	[ObjectButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			table.insert(selection,SelectionPart)
			SelectionPart.Size = selection[1].Size
			SelectionPart.CFrame = selection[1].CFrame
			MoveHandles.Color = resource.movecolor
			MoveHandles.Visible = true
			MoveHandles.Parent = resource.handleparent
			SelectionPart.Parent = workspace
			local origin = {}
			event["objectdown"] = MoveHandles.MouseButton1Down:connect(function(face)
			--	MoveHandles.Faces = Faces.new(face)
				for _,part in pairs(selection) do
					origin[part] = part.CFrame
				end
			end)
			event["objectup"] = MoveHandles.MouseButton1Up:connect(function()
			--	MoveHandles.Faces = fullface
			end)
			event["objectdrag"] = MoveHandles.MouseDrag:connect(function(face,distance)
				local cf = CFrame.new(facevector[face]*round(distance,incstate[MoveInc]))
				for part,cframe in pairs(origin) do		
					part.CFrame = cframe * cf
				end
			end)
		else
			SetWarn(ObjectButton)
		end
	end;
	[MoveSnapButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			for _,part in pairs(selection) do
				local pos = part.CFrame.p
				part.CFrame = (part.CFrame-pos) + Vector3.new(round(pos.x,incstate[MoveInc]),round(pos.y,incstate[MoveInc]),round(pos.z,incstate[MoveInc]))
			end
			wait(0.2)
			SetUp(MoveSnapButton)
		else
			SetWarn(MoveSnapButton)
		end
	end;
	[RelativeButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			table.insert(selection,SelectionPart)
			SelectionPart.Size = selection[1].Size
			SelectionPart.CFrame = selection[1].CFrame
			RotateHandles.Color = resource.rotatecolor
			RotateHandles.Visible = true
			RotateHandles.Parent = resource.handleparent
			SelectionPart.Parent = workspace
			local origin = {}
			event["relativedown"] = RotateHandles.MouseButton1Down:connect(function(axis)
			--	RotateHandles.Axes = Axes.new(axis)
				for _,part in pairs(selection) do
					origin[part] = part.CFrame
				end
			end)
			event["relativeup"] = RotateHandles.MouseButton1Up:connect(function()
			--	RotateHandles.Axes = fullaxis
			end)
			event["relativedrag"] = RotateHandles.MouseDrag:connect(function(axis,angle)
				local input = {0;0;0}
				input[axisnum[axis]] = math.rad(round(math.deg(angle),incstate[RotateInc]))
				for part,cframe in pairs(origin) do
					part.CFrame = cframe * CFrame.Angles(unpack(input))
				end
			end)
		else
			SetWarn(RelativeButton)
		end
	end;
	[RotateSnapButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			for _,part in pairs(selection) do
				if incstate[RotateInc] >= 360 then
					part.CFrame = CFrame.new(part.CFrame.p)
				elseif incstate[RotateInc] ~= 0 then
					local x,y,z = part.CFrame:toEulerAnglesXYZ()
					part.CFrame = CFrame.Angles(
						math.rad(round(math.deg(x),incstate[RotateInc])),
						math.rad(round(math.deg(y),incstate[RotateInc])),
						math.rad(round(math.deg(z),incstate[RotateInc]))
					) + part.CFrame.p
				end
			end
			wait(0.2)
			SetUp(RotateSnapButton)
		else
			SetWarn(RotateSnapButton)
		end
	end;
	[ResizeButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			table.insert(selection,SelectionPart)
			SelectionPart.Size = selection[1].Size
			SelectionPart.CFrame = selection[1].CFrame
			MoveHandles.Color = resource.resizecolor
			MoveHandles.Visible = true
			MoveHandles.Parent = resource.handleparent
			SelectionPart.Parent = workspace
			local origin = {}
			event["resizedown"] = MoveHandles.MouseButton1Down:connect(function(face)
			--	MoveHandles.Faces = Faces.new(face)
				for _,part in pairs(selection) do
					origin[part] = {part.CFrame,part.Size}
				end
			end)
			event["resizeup"] = MoveHandles.MouseButton1Up:connect(function()
			--	MoveHandles.Faces = fullface
			end)
			event["resizedrag"] = MoveHandles.MouseDrag:connect(function(face,distance)
				distance = distance*facemult[face]
				local mod = facevector[face]*round(distance,incstate[ResizeInc])
				for part,info in pairs(origin) do
					part.Size = info[2] + mod
					part.CFrame = info[1] * CFrame.new(mod*facemult[face]/2)
				end
			end)
		else
			SetWarn(ResizeButton)
		end
	end;
	[PivotButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			table.insert(selection,SelectionPart)
			local center = selection[1]
			SelectionPart.Size = center.Size
			SelectionPart.CFrame = center.CFrame
			RotateHandles.Color = resource.rotatecolor
			RotateHandles.Visible = true
			RotateHandles.Parent = resource.handleparent
			SelectionPart.Parent = workspace
			local origin = {}
			local corigin = center.CFrame
			event["pivotdown"] = RotateHandles.MouseButton1Down:connect(function(axis)
			--	RotateHandles.Axes = Axes.new(axis)
				corigin = center.CFrame
				for _,part in pairs(selection) do
					origin[part] = corigin:toObjectSpace(part.CFrame)
				end
			end)
			event["pivotup"] = RotateHandles.MouseButton1Up:connect(function()
			--	RotateHandles.Axes = fullaxis
			end)
			event["pivotdrag"] = RotateHandles.MouseDrag:connect(function(axis,angle)
				local input = {0;0;0}
				input[axisnum[axis]] = math.rad(round(math.deg(angle),incstate[PivotInc]))
				local new = corigin * CFrame.Angles(unpack(input))
				for part,cframe in pairs(origin) do
					part.CFrame = new:toWorldSpace(cframe)
				end
			end)
		else
			SetWarn(PivotButton)
		end
	end;
	[PivotSnapButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			local corigin = selection[1].CFrame
			local x,y,z = corigin:toEulerAnglesXYZ()
			local new = CFrame.Angles(
				math.rad(round(math.deg(x),incstate[PivotInc])),
				math.rad(round(math.deg(y),incstate[PivotInc])),
				math.rad(round(math.deg(z),incstate[PivotInc]))
			) + corigin.p
			for _,part in pairs(selection) do
				part.CFrame = new:toWorldSpace(corigin:toObjectSpace(part.CFrame))
			end
			wait(0.2)
			SetUp(PivotSnapButton)
		else
			SetWarn(PivotSnapButton)
		end
	end;
	[ScaleButton] = function()
		local set = RecurseFilterParts(get())
		if #set > 0 then
			local center = CFrame.new(FindMidpoint(set))
			local model = Instance.new("Model",workspace)
			for _,part in pairs(set) do
				local new = part:Clone()
				new.formFactor = "Custom"
				new.Size = new.Size*incstate[ScaleInc]
				local cf = center:toObjectSpace(part.CFrame)
				new.CFrame = center:toWorldSpace(cf + cf.p * (incstate[ScaleInc] - 1))
				new.Parent = model
			end
			wait(0.2)
			SetUp(ScaleButton)
		else
			SetWarn(ScaleButton)
		end
	end;
	[WeldButton] = function()
		local selection=RecurseFilterParts(get())
		if #selection > 1 then
			local x=selection[1]
			table.remove(selection,1)
			local c=CFrame.new(x.Position)
			local xcf = x.CFrame:toObjectSpace(c)
			for _,y in pairs(selection) do
				local w=Instance.new(incstate[WeldType])
				w.Part0=x
				w.Part1=y
				w.C0=xcf
				w.C1=y.CFrame:toObjectSpace(c)
				w.Parent=x
			end
			wait(0.2)
			SetUp(WeldButton)
		elseif #selection > 0 then
			SetWarn(WeldButton,2)
		else
			SetWarn(WeldButton)
		end
	end;
	[BrickColorButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 0 then
			event["brickcolormoved"] = BrickColorDialog.MouseMoved:connect(function(X,Y)
				local r = (Vector2.new(X,Y) - BrickColorDialog.AbsolutePosition)/BrickColorDialog.AbsoluteSize
				local x,y = math.floor(r.x*12),math.floor(r.y*12)
				local color = brickcolors[x+y*12+1]
				Description.Text = color and (color.Name.."  ["..color.Number.."]") or ""
			end)
			event["brickcolordown"] = BrickColorDialog.MouseButton1Down:connect(function(X,Y)
				local r = (Vector2.new(X,Y) - BrickColorDialog.AbsolutePosition)/BrickColorDialog.AbsoluteSize
				local x,y = math.floor(r.x*12),math.floor(r.y*12)
				local color = brickcolors[x+y*12+1]
				if color ~= nil then
					for _,s in pairs(get()) do
						if s:IsA"BasePart" then	
							s.BrickColor = color
						end
					end
				end
				SetUp(BrickColorButton)
			end)
			BrickColorDialog.Visible = true
		else
			SetWarn(BrickColorButton)
		end
	end;
	[SlopeButton] = function()
		local selection = RecurseFilterParts(get())
		if #selection > 2 then
			local p1 = table.remove(selection,2)
			local p0 = table.remove(selection,1)
			for _,part in pairs(selection) do
				part.CFrame=CFrame.new(part.CFrame.p,part.CFrame.p+(p1.CFrame.p-p0.CFrame.p))
			end
			wait(0.2)
			SetUp(SlopeButton)
		elseif #selection > 1 then
			SetWarn(SlopeButton,3)
		elseif #selection > 0 then
			SetWarn(SlopeButton,2)		
		else
			SetWarn(SlopeButton)
		end
	end;
}
onup = {
	[ExpandButton] = function()
		Panel.Position = UDim2.new(0,0,0,0)
		ExpandButton.Image = resource.collapseicon
	end;
	[AxisButton] = function()
		MoveHandles.Visible = false
		MoveHandles.Faces = fullface
		MoveHandles.Parent = nil
		SelectionPart.Parent = nil
		disconnect{"axisdown";"axisup";"axisdrag"}
	end;
	[ObjectButton] = function()
		MoveHandles.Visible = false
		MoveHandles.Faces = fullface
		MoveHandles.Parent = nil
		SelectionPart.Parent = nil
		disconnect{"objectdown";"objectup";"objectdrag"}
	end;
	[MoveSnapButton] = function()end;
	[RelativeButton] = function()
		RotateHandles.Visible = false
		RotateHandles.Axes = fullaxis
		RotateHandles.Parent = nil
		SelectionPart.Parent = nil
		disconnect{"relativedown";"relativeup";"relativedrag"}
	end;
	[RotateSnapButton] = function()end;
	[ResizeButton] = function()
		MoveHandles.Visible = false
		MoveHandles.Faces = fullface
		MoveHandles.Parent = nil
		SelectionPart.Parent = nil
		disconnect{"resizedown";"resizeup";"resizedrag"}
	end;
	[PivotButton] = function()
		RotateHandles.Visible = false
		RotateHandles.Axes = fullaxis
		RotateHandles.Parent = nil
		SelectionPart.Parent = nil
		disconnect{"pivotdown";"pivotup";"pivotdrag"}
	end;
	[PivotSnapButton] = function()end;
	[ScaleButton] = function()end;
	[WeldButton] = function()end;
	[BrickColorButton] = function()
		disconnect{"brickcolormoved";"brickcolordown"}
		BrickColorDialog.Visible = false
		Description.Text = ""
	end;
	[SlopeButton] = function()end;
}

-- Setup increments
for inc,state in pairs(incstate) do
	if type(state) == "number" then
		inc.Changed:connect(function(p)
			if p == "Text" then
				local check = tonumber(inc.Text)
				if check then
					incstate[inc] = check
				else
					inc.Text = incstate[inc]
				end
			end
		end)
	end
end

WeldType.Changed:connect(function(p)
	if p == "Text" then
		local e,o = pcall(Instance.new,WeldType.Text)
		if e and o and o:IsA"JointInstance" then
			incstate[WeldType] = o.className
		else
			WeldType.Text = incstate[WeldType]
		end
	end
end)

-- Setup buttons
for button in pairs(ondown) do
	button.MouseButton1Click:connect(function()
		if state[button] then
			SetUp(button)
		else
			for button,b in pairs(state) do
				if b then
					state[button] = false
					SetUp(button)
				end
			end
			SetDown(button)
		end
	end)
end

-- Setup descriptions
for item in pairs(desc) do
	item.MouseEnter:connect(function()
		SetDesc(item,true)
	end)
	item.MouseLeave:connect(function()
		SetDesc(item,false)
	end)
end

---- Command Line ----------------
local CmdUtl = {}
local doc = {}
setmetatable(doc,{
	__call = function(t,input)
		table.insert(t,input)
	end;
})

-- Initializer
local loaded = false
function _G.CmdUtl()
	if loaded then error("CmdUtl has already been loaded",0) end
	local env = getfenv(2)
	for i,v in pairs(CmdUtl) do
		env[i] = v
	end
	loaded = true
	print("---- CmdUtl has been loaded --------------------------------")
	print("-- Type \"list()\" for a list of commands")
end

doc[[---- Shortcut variables ----------------]]
CmdUtl.G	= game									doc[[G -> DataModel (game)]]
CmdUtl.W	= game:GetService("Workspace")			doc[[W -> Workspace]]
CmdUtl.P	= game:GetService("Players")			doc[[P -> Players]]
CmdUtl.L	= game:GetService("Lighting")			doc[[L -> Lighting]]
CmdUtl.S	= game:GetService("Selection")			doc[[S -> Selection]]
CmdUtl.IS	= game:GetService("InsertService")		doc[[IS -> InsertService]]
CmdUtl.BS	= game:GetService("BadgeService")		doc[[BS -> BadgeService]]
CmdUtl.CS	= game:GetService("CollectionService")	doc[[CS -> CollectionService]]
CmdUtl.SC	= game:GetService("ScriptContext")		doc[[SC -> ScriptContext]]
CmdUtl.CP	= game:GetService("ContentProvider")	doc[[CP -> ContentProvider]]
CmdUtl.CG	= game:GetService("CoreGui")			doc[[CG -> CoreGui]]
CmdUtl.JS	= game:GetService("JointsService")		doc[[JS -> JointsService]]
CmdUtl.D	= game:GetService("Debris")				doc[[D -> Debris]]
CmdUtl.SP	= game:GetService("StarterPack")		doc[[SP -> StarterPack]]
CmdUtl.SG	= game:GetService("StarterGui")			doc[[SG -> StarterGui]]
CmdUtl.SS	= game:GetService("SoundService")		doc[[SS -> SoundService]]
CmdUtl.RS	= game:GetService("RunService")			doc[[RS -> RunService]]

-- Auto-setup
settings().Diagnostics:LegacyScriptMode()
game:GetService("ScriptContext"):SetCollectScriptStats(true)
game:GetService("InsertService"):SetFreeModelUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?type=fm&q=%s&pg=%d&rs=%d")
game:GetService("InsertService"):SetFreeDecalUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?type=fd&q=%s&pg=%d&rs=%d")

doc[[---- Utility functions ----------------]]
doc[[list()]]

function CmdUtl.list()
	for i=1,250 do print() end
	for _,item in pairs(doc) do
		print(item)
	end
end

doc[[get()]]
function CmdUtl.get()
	return game:GetService("Selection"):Get()
end

doc[[set(table Objects)]]
function CmdUtl.set(objects)
	game:GetService("Selection"):Set(objects)
end

local function precurse(object,property,value,set)
	local e,o = pcall(function() return object[property] == value end)
	if e and o then
		table.insert(set,object)
	end
	for _,child in pairs(object:GetChildren()) do
		precurse(child,property,value,set)
	end
end

doc[[pset(string property, any value [, bool selection ] )]]
function CmdUtl.pset(property,value,selection)
	local out = {}
	if selection then
		for _,object in pairs(game:GetService("Selection"):Get()) do
			precurse(object,property,value,out)
		end
	else
		precurse(game,property,value,out)
	end
	set(out)
	return out
end

local function crecurse(object,className,set)
	if object:IsA(className) then
		table.insert(set,object)
	end
	for _,child in pairs(object:GetChildren()) do
		crecurse(child,property,value,set)
	end
end

doc[[cset(string className [, bool selection ] )]]
function CmdUtl.cset(className,selection)
	local out = {}
	if selection then
		for _,object in pairs(game:GetService("Selection"):Get()) do
			crecurse(object,className,out)
		end
	else
		crecurse(game,className,out)
	end
	set(out)
	return out
end

doc[[wp(number x, number y, number z)]]
function CmdUtl.wp(x,y,z)
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = object.CFrame + Vector3.new(x or 0,y or 0,z or 0)
		end
	end
end

doc[[op(number x, number y, number z)]]
function CmdUtl.op(x,y,z)
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = object.CFrame * CFrame.new(x or 0,y or 0,z or 0)
		end
	end
end

doc[[p(number x, number y, number z)]]
function CmdUtl.p(x,y,z)
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = (object.CFrame-object.CFrame.p) + Vector3.new(x or 0,y or 0,z or 0)
		end
	end
end

doc[[sp(number increment)]]
function CmdUtl.sp(increment)
	increment = increment or 0
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			local pos = object.CFrame.p
			object.CFrame = (object.CFrame-pos) + Vector3.new(round(pos.x,increment),round(pos.y,increment),round(pos.z,increment))
		end
	end
end

doc[[rr(number x, number y, number z)]]
function CmdUtl.rr(x,y,z)
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = object.CFrame * CFrame.Angles(math.rad(x or 0),math.rad(y or 0),math.rad(z or 0))
		end
	end
end

doc[[r(number x, number y, number z)]]
function CmdUtl.r(x,y,z)
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = CFrame.new(object.CFrame.p) * CFrame.Angles(math.rad(x or 0),math.rad(y or 0),math.rad(z or 0))
		end
	end
end

doc[[sr(number increment)]]
function CmdUtl.sr(increment)
	increment = increment or 0
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			if increment >= 360 then
				object.CFrame = CFrame.new(object.CFrame.p)
			elseif increment ~= 0 then
				local x,y,z = object.CFrame:toEulerAnglesXYZ()
				object.CFrame = CFrame.Angles(
					math.rad(round(math.deg(x),increment)),
					math.rad(round(math.deg(y),increment)),
					math.rad(round(math.deg(z),increment))
				) + object.CFrame.p
			end
		end
	end
end

local stringface = {
	["back"]	= Enum.NormalId.Back;
	["bottom"]	= Enum.NormalId.Bottom;
	["front"]	= Enum.NormalId.Front;
	["left"]	= Enum.NormalId.Left;
	["right"]	= Enum.NormalId.Right;
	["top"]		= Enum.NormalId.Top;
}

doc[[rs(string face, number amount)]]
function CmdUtl.rs(face,amount)
	face = stringface[face:lower()]
	amount = (amount or 0)*facemult[face]
	local mod = facevector[face]*amount
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.Size = object.Size + mod
			object.CFrame = object.CFrame * CFrame.new(mod*facemult[face]/2)
		end
	end
end

doc[[sc(number amount)]]
function CmdUtl.sc(amount)
	amount = amount or 1
	local set = FilterParts(game:GetService("Selection"):Get())
	local center = CFrame.new(FindMidpoint(set))
	local model = Instance.new("Model",workspace)
	for _,object in pairs(set) do
		if object:IsA"BasePart" then
			local new = object:Clone()
			new.formFactor = "Custom"
			new.Size = new.Size*amount
			local cf = center:toObjectSpace(object.CFrame)
			new.CFrame = center:toWorldSpace(cf + cf.p * (amount - 1))
			new.Parent = model
		end
	end
end

doc[[pv(number x, number y, number z)]]
function CmdUtl.pv(x,y,z)
	local set = FilterParts(game:GetService("Selection"):Get())
	if #set > 1 then
		local corigin = set[1].CFrame
		local new = corigin * CFrame.Angles(math.rad(x or 0),math.rad(y or 0),math.rad(z or 0))
		for _,object in pairs(set) do
			object.CFrame = new:toWorldSpace(corigin:toObjectSpace(object.CFrame))
		end
	else
		error("no vaild selections",0)
	end
end

doc[[sl()]]
function CmdUtl.sl()
	local set = FilterParts(game:GetService("Selection"):Get())
	if #set > 2 then
		local p1 = table.remove(set,2)
		local p0 = table.remove(set,1)
		for _,object in pairs(set) do
			object.CFrame=CFrame.new(object.CFrame.p,object.CFrame.p+(p1.CFrame.p-p0.CFrame.p))
		end
	elseif #set > 1 then
		error("not enough valid selections",0)
	elseif #set > 0 then
		error("invalid second selection",0)
	else
		error("invalid first selection",0)
	end
end

doc[[sk(number x, number y, number z, number precision)]]
function CmdUtl.sk(x,y,z,div)
	x,y,z,div = x or 0,y or 0,z or 0, div or 1
	for _,object in pairs(game:GetService("Selection"):Get()) do
		if object:IsA"BasePart" then
			object.CFrame = object.CFrame * CFrame.Angles(
				math.random(math.rad(-x*div),math.rad(x*div))/div,
				math.random(math.rad(-y*div),math.rad(y*div))/div,
				math.random(math.rad(-z*div),math.rad(z*div))/div
			)
		end
	end
end

doc[[w( [ string className ] )]]
function CmdUtl.w(className)
	local s = game.Selection:Get()
	local x = table.remove(s,1)
	local c = CFrame.new(x.Position)
	local xcf = x.CFrame:inverse()*c
	if x:IsA"BasePart" then
		for _,y in pairs(s) do
			if y:IsA"BasePart" then
				local w = Instance.new(className or "Motor6D")
				w.Part0 = x
				w.Part1 = y
				w.C0 = xcf
				w.C1 = y.CFrame:inverse()*c
				w.Parent = x
			end
		end
	end
end