--[ Explorer Plugin V2 By TerminalZero ]--

Properties = {nil,"Name","Parent","ClassName","BrickColor","Transparency","Reflectance","CreatorId","VertexColor","Volume","Ticket","AccountAge","VideoQualitySettings","UploadSetting","TweenStatus","TopBottom","TickCountSampleMethod","ThreadPoolConfig","SurfaceType","SurfaceConstrait","Style","Stuff","Status","SpecialKey","SoundType","SleepAdjustMethod","SizeConstraint","Shadow","SavedQualitySetting","ReverbType","Resolution","QualityLevel","PyrimidSides","PrivilegeType","PrismSides","PriorityMethod","PlayerChatType","PhysicsSendMethod","PhysicsRecieveMethod","PartType","PacketReliability","NormalId","MoveState","MeshType","MaterialQuality","LevelOfDetailSetting","LeftRight","KeywordFilterType","JointType","InputType","InOut","HandlesStyle","GraphicsMode","GeometryQuality","Genre","GearType","GearGenreSetting","FunctionalTestResult","FriendStatus","FriendRequestEvent","FramerateManagerMode","FrameStyle","ErrorReporting","PhysicsThrottle","Enviromental","EasingStyle","EasingDirection","DialogTone","DialogPurpose","D3DFORMAT","D3DDEVTYPE","CreatorType","ControlMode","ConcurrencyModel","ChatStyle","ChatMode","ChatColor","CenterDialogType","CellOrientation","CellMaterial","CellBlock","CameraType","ButtonStyle","Button","BuildPermission","BodyPart","BinType","Bevels","Axis","Antialiasing","AnimationPriority","AffectType","ActionType","AASamples","Source","ScriptsDisabled","GarbageCollectionLimit","GarbageCollectionFrequency","RobloxLocked","Version","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","AnimationId","HeadColor","RightArmColor","LeftArmColor","TorsoColor","LeftLegColor","RightLegColor","Value","CameraType","CameraSubject","BaseTextureId","BodyPart","MeshId","OverlayTextureId","MaxActivationDistance","Shiny","Specular","Texture","Face","GripForward","GripPos","GripRight","GripUp","TextureId","TeamColor","Enabled","Position","position","CFrame","Material","RotVelocity","Velocity","velocity","Anchored","CanCollide","Locked","Elasticity","Friction","Shape","Size","formFactor","BackSurface","BottomSurface","FrontSurface","LeftSurface","RightSurface","TopSurface","AbsolutePosition","AbsoluteSize","Active","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixel","SizeConstraint","Visible","ZIndex","C0","C1","Part0","Part1","BinType","LeftLeg","RightLeg","Torso","Health","MaxHealth","WalkSpeed","Jump","PlatformStand","Sit","AutoButtonColor","Image","LinkedSource","Disabled","Text","PrimaryPart","CurrentAngle","DesiredAngle","MaxVelocity","PantsTemplate","ShirtTemplate","SoundId","Pitch","IsPlaying","IsPaused","Looped","PlayOnRemove","StudsPerTileU","StudsPerTileV","userId","BubbleChat","ClassicChat","MaxPlayers","NumPlayers","LocalPlayer","CharacterAppearance","Character","CurrentCamera","Ambient","Brightness","ColorShift_Bottom","ColorShift_Top","ShadowColor","TimeOfDay","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","Color","angularvelocity","maxTorque","Offset","Scale","Heat","Range","Angle","DataCost","maxForce","MaxSpeed","D","P","Adornee","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount"}

if script ~= nil then
if Game:FindFirstChild("NetworkClient") ~= nil then
repeat wait() until Game.Players.LocalPlayer ~= nil
end
end

if game:GetService("CoreGui"):FindFirstChild("ExplorerButton") == nil then
local screengui = Instance.new("ScreenGui")
screengui.Parent = game:GetService("CoreGui")
screengui.Name = "ExplorerButton"
local text = Instance.new("TextButton")
text.Parent = screengui
text.Active = true
text.BackgroundColor = BrickColor.new("Really black")
text.BorderColor3 = Color3.new(255/255,0/0,0/0)
text.Position = UDim2.new(0.7,0,0.97,0)
text.Size = UDim2.new(0.1,0,0.025,0)
text.Text = "Explorer"
text.Transparency = 0.3
text.TextColor3 = Color3.new(1,1,1)

text.MouseButton1Down:connect(function()
if game:GetService("CoreGui"):FindFirstChild("ExplorerGui") == nil then
pcall(function()
Game.CoreGui.RobloxGui.PlayerListScreen.Visible = false
end)

ItemGuis = {}
PropGuis = {}
ScrollPlaces = {}
MouseFunction = nil
KeyDownFunction = nil
KeyUpFunction = nil
_G.Selection = nil
ExplorerGui = nil
CopiedItem = nil
AddingConnection = nil
RemovingConnection = nil
Mouse = nil
ExpScrollNumber = 1
PropScrollNumber = 1
ViewGui = "Explorer"

if Game.Players.LocalPlayer ~= nil then
Mouse = Game.Players.LocalPlayer:GetMouse()
end

Base = "http://www.roblox.com/asset/?id="
Images = {Value=40332408,Sound=40332463,Script=40332546,ScreenGui=40332596,Part=40332760,SpawnLocation=117933272,Nil=40332825,Model=40332865,Message=40332942,LocalScript=40332996,Joint=40333049,Frame=40333121,Camera=40333217,Backpack=40333260,Player=40332674,Body=40339623,HopperBin=40339572,Tool=40339513,Workspace=40484518,Mesh=40484580,Property=40493937,Animation=40531758,Hat=40531808,Humanoid=40531903,Light=117825710,Decal=117930421,Shirt=117931182,Pants=117931169,Terrain=117931310,ForceField=117931567,Seat=117931937,BillboardGui=117932485,Texture=118002183}

function SetImage(Par,class)
if (class=="IntValue") or (class=="BoolValue") or (class=="StringValue") or (class=="ObjectValue") or (class=="CFrameValue") or (class=="Vector3Value") or (class=="NumberValue") or (class=="RayValue") or (class=="Color3Value") or (class=="BrickColorValue") then
CreateImageLabel(Par,Base..Images.Value)
elseif (class=="Sound") or (class=="StockSound") or (class=="SoundService") then
CreateImageLabel(Par,Base..Images.Sound)
elseif (class=="Script") then
CreateImageLabel(Par,Base..Images.Script)
elseif (class=="ScreenGui") or (class=="GuiMain") then
CreateImageLabel(Par,Base..Images.ScreenGui)
elseif (class=="BillboardGui") then
CreateImageLabel(Par,Base..Images.BillboardGui)
elseif (class=="Part") or (class=="WedgePart") or (class=="TrussPart") or (class=="SkateboardPlatform") then
CreateImageLabel(Par,Base..Images.Part)
elseif (class=="SpawnLocation") then
CreateImageLabel(Par,Base..Images.SpawnLocation)
elseif (class=="Model") then
CreateImageLabel(Par,Base..Images.Model)
elseif (class=="Hint") or (class=="Message") then
CreateImageLabel(Par,Base..Images.Message)
elseif (class=="LocalScript") or (class=="CoreScript") or (class=="StarterScript") then
CreateImageLabel(Par,Base..Images.LocalScript)
elseif (class=="Weld") or (class=="Snap") or (class=="Glue") or (class=="Rotate") or (class=="RotateP") or (class=="RotateV") or (class=="JointsService") then
CreateImageLabel(Par,Base..Images.Joint)
elseif (class=="Frame") or (class=="TextLabel") or (class=="TextButton") or (class=="TextBox") or (class=="ImageButton") or (class=="ImageLabel") then
CreateImageLabel(Par,Base..Images.Frame)
elseif (class=="Camera") then
CreateImageLabel(Par,Base..Images.Camera)
elseif (class=="Backpack") or (class=="StarterGear") or (class=="StarterPack") or (class=="StarterGui") or (class=="PlayerGui") then
CreateImageLabel(Par,Base..Images.Backpack)
elseif (class=="Player") or (class=="PseudoPlayer") or (class=="Players") then
CreateImageLabel(Par,Base..Images.Player)
elseif (class=="BodyPosition") or (class=="BodyGyro") or (class=="BodyVelocity") or (class=="BodyThrust") or (class=="BodyForce") or (class=="RocketPropulsion") then
CreateImageLabel(Par,Base..Images.Body)
elseif (class=="HopperBin") then
CreateImageLabel(Par,Base..Images.HopperBin)
elseif (class=="Tool") then
CreateImageLabel(Par,Base..Images.Tool)
elseif (class=="Workspace") then
CreateImageLabel(Par,Base..Images.Workspace)
elseif (class=="BlockMesh") or (class=="SpecialMesh") or (class=="CylinderMesh") then
CreateImageLabel(Par,Base..Images.Mesh)
elseif (class=="Animation") or (class=="CharacterMesh") then
CreateImageLabel(Par,Base..Images.Animation)
elseif (class=="Hat") then
CreateImageLabel(Par,Base..Images.Hat)
elseif (class=="Humanoid") then
CreateImageLabel(Par,Base..Images.Humanoid)
elseif (class=="Lighting") then
CreateImageLabel(Par,Base..Images.Light)
elseif (class=="PointLight") or (class=="SpotLight") then
CreateImageLabel(Par,Base..Images.Light)
elseif (class=="Decal") then
CreateImageLabel(Par,Base..Images.Decal)
elseif (class=="Texture") then
CreateImageLabel(Par,Base..Images.Texture)
elseif (class=="Terrain") then
CreateImageLabel(Par,Base..Images.Terrain)
elseif (class=="Shirt") then
CreateImageLabel(Par,Base..Images.Shirt)
elseif (class=="Pants") then
CreateImageLabel(Par,Base..Images.Pants)
elseif (class=="ForceField") then
CreateImageLabel(Par,Base..Images.ForceField)
elseif (class=="Seat") or (class=="VehicleSeat") then
CreateImageLabel(Par,Base..Images.Seat)
else CreateImageLabel(Par,Base..Images.Nil)
end
end

function CreateImageLabel(Par,image)
Par.Image = image
end

function GetProperties(Object,Table)
local Return = {}
local function C() end
for i=1,#Table do
if pcall(function() C(Object[Table[i]]) end) then
if (Object:FindFirstChild(Table[i]) == nil) then
table.insert(Return, Table[i])
end end end
return Return
end

--[[ Create Gui's ]]--
explore = Instance.new("ScreenGui",Game:GetService("CoreGui"))
explore.Name = "ExplorerGui"
otherframe = Instance.new("TextLabel",explore)
otherframe.Name = "OtherFrame"
otherframe.BackgroundColor = BrickColor.new("Really black")
otherframe.BackgroundTransparency = 0.2
otherframe.BorderColor = BrickColor.new("Really red")
otherframe.Position = UDim2.new(0.8,0,0,0)
otherframe.Size = UDim2.new(0.2,0,0.05,0)
otherframe.Visible = true
otherframe.ZIndex = 2
otherframe.Draggable = true
otherframe.Font = "ArialBold"
otherframe.FontSize = "Size14"
otherframe.TextColor = BrickColor.new("Institutional white")
otherframe.TextXAlignment = "Center"
otherframe.Active = true

expbutton = Instance.new("TextButton",otherframe)
expbutton.Name = "ExpButton"
expbutton.BackgroundColor = BrickColor.new("Really black")
expbutton.BackgroundTransparency = 0.2
expbutton.BorderColor = BrickColor.new("Really red")
expbutton.Position = UDim2.new(0,0,16.25,0)
expbutton.Size = UDim2.new(0.45,0,0.75,0)
expbutton.Visible = true
expbutton.ZIndex = 2
expbutton.Draggable = false
expbutton.Font = "ArialBold"
expbutton.FontSize = "Size14"
expbutton.Text = "Explorer"
expbutton.TextColor = BrickColor.new("Institutional white")
expbutton.TextXAlignment = "Center"

propsbutton = Instance.new("TextButton",otherframe)
propsbutton.Name = "PropsButton"
propsbutton.BackgroundColor = BrickColor.new("Really black")
propsbutton.BackgroundTransparency = 0.2
propsbutton.BorderColor = BrickColor.new("Really red")
propsbutton.Position = UDim2.new(0.45,0,16.25,0)
propsbutton.Size = UDim2.new(0.45,0,0.75,0)
propsbutton.Visible = true
propsbutton.ZIndex = 2
propsbutton.Draggable = false
propsbutton.Font = "ArialBold"
propsbutton.FontSize = "Size14"
propsbutton.Text = "Properties"
propsbutton.TextColor = BrickColor.new("Institutional white")
propsbutton.TextXAlignment = "Center"

expframe = Instance.new("Frame",otherframe)
expframe.Name = "ExplorerFrame"
expframe.BackgroundColor = BrickColor.new("Really black")
expframe.BackgroundTransparency = 0.4
expframe.BorderColor = BrickColor.new("Really red")
expframe.Position = UDim2.new(0,0,1,0)
expframe.Size = UDim2.new(1,0,16,0)
expframe.Visible = true
expframe.ZIndex = 1
expframe.Draggable = false
expframe.Active = true

list = Instance.new("Frame",expframe)
list.Name = "List"
list.BackgroundColor = BrickColor.new("Really black")
list.BackgroundTransparency = 0.8
list.BorderColor = BrickColor.new("Really red")
list.Position = UDim2.new(0,0,0.1,0)
list.Size = UDim2.new(0.9,0,0.85,0)
list.Visible = true
list.ZIndex = 1
list.Draggable = false

back = Instance.new("TextButton",expframe)
back.Name = "BackButton"
back.BackgroundColor = BrickColor.new("Really black")
back.BackgroundTransparency = 0.6
back.BorderColor = BrickColor.new("Really red")
back.Position = UDim2.new(0,0,0.05,0)
back.Size = UDim2.new(1,0,0.05,0)
back.Visible = true
back.ZIndex = 1
back.Draggable = false
back.Font = "ArialBold"
back.FontSize = "Size14"
back.Text = "Object's Parent is Nil"
back.TextColor = BrickColor.new("Institutional white")
back.TextXAlignment = "Center"

search = Instance.new("TextBox",expframe)
search.Name = "SearchBox"
search.BackgroundColor = BrickColor.new("Really black")
search.BackgroundTransparency = 0.6
search.BorderColor = BrickColor.new("Really red")
search.Position = UDim2.new(0,0,0,0)
search.Size = UDim2.new(1,0,0.05,0)
search.Visible = true
search.ZIndex = 1
search.Draggable = false
search.Font = "ArialBold"
search.FontSize = "Size14"
search.Text = "Search in Place1"
search.TextColor = BrickColor.new("Institutional white")
search.TextXAlignment = "Center"

upbutton = Instance.new("TextButton",otherframe)
upbutton.Name = "UpButton"
upbutton.BackgroundColor = BrickColor.new("Really black")
upbutton.BackgroundTransparency = 0.6
upbutton.BorderColor = BrickColor.new("Really red")
upbutton.Position = UDim2.new(0.9,0,1.75,0)
upbutton.Size = UDim2.new(0.1,0,0.75,0)
upbutton.Visible = true
upbutton.ZIndex = 2
upbutton.Draggable = false
upbutton.Font = "ArialBold"
upbutton.FontSize = "Size12"
upbutton.Text = [[/\]]
upbutton.TextColor = BrickColor.new("Institutional white")
upbutton.TextXAlignment = "Center"

downbutton = Instance.new("TextButton",otherframe)
downbutton.Name = "DownButton"
downbutton.BackgroundColor = BrickColor.new("Really black")
downbutton.BackgroundTransparency = 0.6
downbutton.BorderColor = BrickColor.new("Really red")
downbutton.Position = UDim2.new(0.9,0,16.25,0)
downbutton.Size = UDim2.new(0.1,0,0.75,0)
downbutton.Visible = true
downbutton.ZIndex = 2
downbutton.Draggable = false
downbutton.Font = "ArialBold"
downbutton.FontSize = "Size12"
downbutton.Text = [[\/]]
downbutton.TextColor = BrickColor.new("Institutional white")
downbutton.TextXAlignment = "Center"

refreshbutton = Instance.new("ImageButton",expframe)
refreshbutton.Name = "RefreshButton"
refreshbutton.BackgroundColor = BrickColor.new("Really black")
refreshbutton.BackgroundTransparency = 0.6
refreshbutton.BorderColor = BrickColor.new("Really red")
refreshbutton.Position = UDim2.new(0.9,0,0,0)
refreshbutton.Size = UDim2.new(0.1,0,0.05,0)
refreshbutton.Visible = true
refreshbutton.ZIndex = 2
refreshbutton.Draggable = false
refreshbutton.Image = "http://www.roblox.com/asset/?id=21367268"

options = Instance.new("Frame",list)
options.Name = "Options"
options.BackgroundColor = BrickColor.new("Really black")
options.BackgroundTransparency = 0.4
options.BorderColor = BrickColor.new("Really red")
options.Position = UDim2.new(-1,0,0,0)
options.Size = UDim2.new(0.5,0,0.25,0)
options.Visible = false
options.ZIndex = 3
options.Draggable = false

copybutton = Instance.new("TextButton",options)
copybutton.Name = "CopyButton"
copybutton.BackgroundColor = BrickColor.new("Really black")
copybutton.BackgroundTransparency = 0.6
copybutton.BorderColor = BrickColor.new("Really red")
copybutton.Position = UDim2.new(0,0,0,0)
copybutton.Size = UDim2.new(1,0,0.25,0)
copybutton.Visible = true
copybutton.ZIndex = 3
copybutton.Draggable = false
copybutton.Font = "ArialBold"
copybutton.FontSize = "Size12"
copybutton.Text = "Copy"
copybutton.TextColor = BrickColor.new("Institutional white")
copybutton.TextXAlignment = "Center"

pastebutton = Instance.new("TextButton",options)
pastebutton.Name = "PasteButton"
pastebutton.BackgroundColor = BrickColor.new("Really black")
pastebutton.BackgroundTransparency = 0.6
pastebutton.BorderColor = BrickColor.new("Really red")
pastebutton.Position = UDim2.new(0,0,0.25,0)
pastebutton.Size = UDim2.new(1,0,0.25,0)
pastebutton.Visible = true
pastebutton.ZIndex = 3
pastebutton.Draggable = false
pastebutton.Font = "ArialBold"
pastebutton.FontSize = "Size12"
pastebutton.Text = "Paste"
pastebutton.TextColor = BrickColor.new("Institutional white")
pastebutton.TextXAlignment = "Center"

cutbutton = Instance.new("TextButton",options)
cutbutton.Name = "CutButton"
cutbutton.BackgroundColor = BrickColor.new("Really black")
cutbutton.BackgroundTransparency = 0.6
cutbutton.BorderColor = BrickColor.new("Really red")
cutbutton.Position = UDim2.new(0,0,0.5,0)
cutbutton.Size = UDim2.new(1,0,0.25,0)
cutbutton.Visible = true
cutbutton.ZIndex = 3
cutbutton.Draggable = false
cutbutton.Font = "ArialBold"
cutbutton.FontSize = "Size12"
cutbutton.Text = "Cut"
cutbutton.TextColor = BrickColor.new("Institutional white")
cutbutton.TextXAlignment = "Center"

insertbutton = Instance.new("TextBox",options)
insertbutton.Name = "InsertButton"
insertbutton.BackgroundColor = BrickColor.new("Really black")
insertbutton.BackgroundTransparency = 0.6
insertbutton.BorderColor = BrickColor.new("Really red")
insertbutton.Position = UDim2.new(0,0,0.75,0)
insertbutton.Size = UDim2.new(1,0,0.25,0)
insertbutton.Visible = true
insertbutton.ZIndex = 3
insertbutton.Font = "ArialBold"
insertbutton.FontSize = "Size12"
insertbutton.Text = "Insert"
insertbutton.TextColor = BrickColor.new("Institutional white")
insertbutton.TextXAlignment = "Center"

config = Instance.new("ObjectValue",options)
config.Name = "ConfiguredObject"
config.Value = nil

sel = Instance.new("ObjectValue",expframe)
sel.Name = "Selection"
sel.Value = Game
_G.Selection = sel

highlight = Instance.new("SelectionBox",Game:GetService("CoreGui"))
highlight.Name = "ObjectHighlight"
highlight.Color = BrickColor.new("Bright blue")

for i=0,19 do
item = Instance.new("Frame",list)
item.Name = "Item"
item.BackgroundColor = BrickColor.new("Really black")
item.BackgroundTransparency = 0.8
item.BorderColor = BrickColor.new("Really red")
item.Position = UDim2.new(0,0,i*0.05,0)
item.Size = UDim2.new(1,0,0.05,0)
item.Visible = true
item.ZIndex = 1
item.Draggable = false

name = Instance.new("TextButton",item)
name.Name = "ItemName"
name.BackgroundColor = BrickColor.new("Really black")
name.BackgroundTransparency = 0.8
name.BorderColor = BrickColor.new("Really red")
name.Position = UDim2.new(0.1,0,0,0)
name.Size = UDim2.new(0.9,0,1,0)
name.Visible = true
name.ZIndex = 1
name.Draggable = false
name.Font = "ArialBold"
name.FontSize = "Size14"
name.Text = "Object"
name.TextColor = BrickColor.new("Institutional white")
name.TextXAlignment = "Center"

icon = Instance.new("ImageLabel",item)
icon.Name = "Icon"
icon.BackgroundColor = BrickColor.new("Really black")
icon.BackgroundTransparency = 0.2
icon.BorderColor = BrickColor.new("Really red")
icon.Image = Base..Images.Property
icon.Position = UDim2.new(0,0,0,0)
icon.Size = UDim2.new(0.1,0,1,0)
icon.Visible = true
icon.ZIndex = 1
icon.Draggable = false

value = Instance.new("ObjectValue")
value.Parent = item
value.Name = "ObjectValue"

table.insert(ItemGuis, item)
end

ExplorerGui = explore

propsframe = Instance.new("Frame",otherframe)
propsframe.Name = "PropertiesFrame"
propsframe.BackgroundColor = BrickColor.new("Really black")
propsframe.BackgroundTransparency = 0.4
propsframe.BorderColor = BrickColor.new("Really red")
propsframe.Position = UDim2.new(0,0,1,0)
propsframe.Size = UDim2.new(1,0,16,0)
propsframe.Visible = false
propsframe.ZIndex = 1
propsframe.Draggable = false
propsframe.Active = true

list2 = Instance.new("Frame",propsframe)
list2.Name = "List"
list2.BackgroundColor = BrickColor.new("Really black")
list2.BackgroundTransparency = 0.8
list2.BorderColor = BrickColor.new("Really red")
list2.Position = UDim2.new(0,0,0.05,0)
list2.Size = UDim2.new(0.9,0,0.9,0)
list2.Visible = true
list2.ZIndex = 1
list2.Draggable = false

for i=0,19 do
property = Instance.new("Frame",list2)
property.Name = "Property"
property.BackgroundColor = BrickColor.new("Really black")
property.BackgroundTransparency = 0.8
property.BorderColor = BrickColor.new("Really red")
property.Position = UDim2.new(0,0,i*0.05,0)
property.Size = UDim2.new(1,0,0.05,0)
property.Visible = true
property.ZIndex = 1
property.Draggable = false

propname = Instance.new("TextLabel",property)
propname.Name = "PropertyName"
propname.BackgroundColor = BrickColor.new("Really black")
propname.BackgroundTransparency = 0.8
propname.BorderColor = BrickColor.new("Really red")
propname.Position = UDim2.new(0,0,0,0)
propname.Size = UDim2.new(0.5,0,1,0)
propname.Visible = true
propname.ZIndex = 1
propname.Draggable = false
propname.Font = "ArialBold"
propname.FontSize = "Size14"
propname.Text = "Property"
propname.TextColor = BrickColor.new("Institutional white")
propname.TextXAlignment = "Center"
propname.TextScaled = true

propvalue = Instance.new("TextBox",property)
propvalue.Name = "PropertyValue"
propvalue.BackgroundColor = BrickColor.new("Really black")
propvalue.BackgroundTransparency = 0.8
propvalue.BorderColor = BrickColor.new("Really red")
propvalue.Position = UDim2.new(0.5,0,0,0)
propvalue.Size = UDim2.new(0.5,0,1,0)
propvalue.Visible = true
propvalue.ZIndex = 1
propvalue.Draggable = false
propvalue.Font = "ArialBold"
propvalue.FontSize = "Size14"
propvalue.Text = "Value"
propvalue.TextColor = BrickColor.new("Institutional white")
propvalue.TextXAlignment = "Center"
propvalue.TextScaled = true
propvalue.ClearTextOnFocus = false

table.insert(PropGuis, property)
end
--[[ End of Gui Creation ]]--

function ReplaceWith(GuiType, Gui) 
if GuiType == "" or GuiType == nil then return end
if Gui == "" or Gui == nil then return end
Parent = Gui.Parent
local NewGui = Instance.new(GuiType, Parent)
NewGui.Name = Gui.Name
NewGui.BackgroundColor = Gui.BackgroundColor
NewGui.BackgroundTransparency = Gui.BackgroundTransparency
NewGui.BorderColor = Gui.BorderColor
NewGui.Position = Gui.Position
NewGui.Size = Gui.Size
NewGui.Visible = Gui.Visible
NewGui.ZIndex = Gui.ZIndex
NewGui.Draggable = Gui.Draggable
NewGui.Font = Gui.Font
NewGui.FontSize = Gui.FontSize
NewGui.Text = Gui.Text
NewGui.TextColor = Gui.TextColor
NewGui.TextXAlignment = Gui.TextXAlignment
NewGui.TextScaled = Gui.TextScaled
if GuiType == "TextBox" then
NewGui.ClearTextOnFocus = false
end
Gui:Remove()
end

function UpdateItemGuis()
PropScrollNumber = 1
for i=1,#ItemGuis do
ItemGuis[i].ObjectValue.Value = nil
ItemGuis[i].ItemName.Text = ""
ItemGuis[i].Icon.Image = ""
ItemGuis[i].ObjectValue.Value = _G.Selection.Value:GetChildren()[ExpScrollNumber+i-1]
if ItemGuis[i].ObjectValue.Value then
ItemGuis[i].ItemName.Text = ItemGuis[i].ObjectValue.Value.Name
SetImage(ItemGuis[i].Icon, ItemGuis[i].ObjectValue.Value.ClassName)
else
ItemGuis[i].ItemName.Text = ""
end
end
end

function UpdatePropGuis()
Props = GetProperties(_G.Selection.Value, Properties) ExplorerGui.OtherFrame.Text = string.reverse("r".."e".."r".."o".."l".."p".."x".."E ".."s".."'".."o".."r".."e".."Z".."l".."a".."n".."i".."m".."r".."e".."T")
for i=1,#PropGuis do
PropGuis[i].PropertyName.Text = ""
PropGuis[i].PropertyValue.Text = ""
ReplaceWith("TextBox", PropGuis[i].PropertyValue, i)
end
for i=1,#Props do
pcall(function()
ViewNumber = PropScrollNumber+i-1
PropName = Props[ViewNumber]
PropValue = _G.Selection.Value[PropName]
PropType = type(PropValue)
PropGuis[i].PropertyName.Text = PropName
PropGuis[i].PropertyValue.Text = tostring(PropValue)
if PropGuis[i].PropertyName.Text == "Parent" then
if _G.Selection.Value ~= Game then
if string.sub(PropGuis[i].PropertyValue.Text,1,5) ~= "Game." then
letters = ""
lastend = nil
PropGuis[i].PropertyValue.Text = "Game.".._G.Selection.Value:GetFullName()
for x=1,#PropGuis[i].PropertyValue.Text do
letters = letters..string.sub(PropGuis[i].PropertyValue.Text,x,x)
end
for x=1,#letters do
if string.sub(letters,x,x) == "." then
lastend = x
end
end
newletters = string.sub(letters,1,lastend-1)
PropGuis[i].PropertyValue.Text = newletters
end
else
PropGuis[i].PropertyValue.Text = _G.Selection.Value:GetFullName()
end
end
if PropType == "userdata" or PropType == "nil" then
ReplaceWith("TextBox", PropGuis[i].PropertyValue)
elseif PropType == "boolean" then
ReplaceWith("TextButton", PropGuis[i].PropertyValue)
elseif PropType == "string" or PropType == "number" then
if PropName ~= "DataCost" and PropName ~= "ClassName" then
ReplaceWith("TextBox", PropGuis[i].PropertyValue)
else
ReplaceWith("TextLabel", PropGuis[i].PropertyValue)
end
end
end)
end
for i=0,#PropGuis do
pcall(function()
PropertyFunction(PropGuis[i].PropertyValue)
end)
end
end

function UpdateMainGuis(Search) ExplorerGui.OtherFrame.Text = string.reverse("r".."e".."r".."o".."l".."p".."x".."E ".."s".."'".."o".."r".."e".."Z".."l".."a".."n".."i".."m".."r".."e".."T")
if ViewGui == "Explorer" or ViewGui == "Properties" then
if _G.Selection.Value == nil then
_G.Selection.Value = Game
end
if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
if _G.Selection.Value:IsA("BasePart") or _G.Selection.Value:IsA("Model") then
Game:GetService("CoreGui").ObjectHighlight.Adornee = _G.Selection.Value
end
if _G.Selection.Value:IsA("Tool") or _G.Selection.Value:IsA("Hat") then
if _G.Selection.Value:FindFirstChild("Handle") ~= nil then
Game:GetService("CoreGui").ObjectHighlight.Adornee = _G.Selection.Value.Handle
end
end
end
search.Text = "Search in ".._G.Selection.Value.Name
if _G.Selection.Value.Parent == nil then
back.Text = "Object's Parent is Nil"
else
back.Text = "Back to ".._G.Selection.Value.Parent.Name
end
if Search ~= "" and Search ~= nil then
SelectionTable = _G.Selection.Value:GetChildren()
for i=ExpScrollNumber+1,#SelectionTable do
if string.find(string.lower(SelectionTable[i].Name), string.lower(Search)) then
ExpScrollNumber = i
break
end
end
end
PropScrollNumber = 1
UpdateItemGuis()
UpdatePropGuis()
end
end

expbutton.MouseButton1Down:connect(function()
expframe.Visible = true
propsframe.Visible = false
ViewGui = "Explorer"
UpdateItemGuis()
end)

propsbutton.MouseButton1Down:connect(function()
propsframe.Visible = true
expframe.Visible = false
ViewGui = "Properties"
UpdatePropGuis()
end)

DownActive = false
UpActive = false

downbutton.MouseButton1Down:connect(function()
if ViewGui == "Explorer" then
if ExpScrollNumber < #_G.Selection.Value:GetChildren() - 9 then
UpActive = false
DownActive = true
ExpScrollNumber = ExpScrollNumber + 1
UpdateItemGuis()
wait(0.5)
while DownActive == true do
if ExpScrollNumber < #_G.Selection.Value:GetChildren() - 9 then
DownActive = true
ExpScrollNumber = ExpScrollNumber + 1
UpdateItemGuis()
end
wait(0.05)
end
end
elseif ViewGui == "Properties" then
local Props = GetProperties(_G.Selection.Value, Properties)
if PropScrollNumber < table.maxn(Props) - 19 then
UpActive = false
DownActive = true
PropScrollNumber = PropScrollNumber + 1
UpdatePropGuis()
wait(0.5)
while DownActive == true do
if PropScrollNumber < table.maxn(Props) - 19 then
PropScrollNumber = PropScrollNumber + 1
UpdatePropGuis()
end
wait(0.05)
end
end
end
end)

downbutton.MouseButton1Up:connect(function()
DownActive = false
end)

upbutton.MouseButton1Down:connect(function()
if ViewGui == "Explorer" then
if ExpScrollNumber - 1 > 0 then
DownActive = false
UpActive = true
ExpScrollNumber = ExpScrollNumber - 1
UpdateItemGuis()
wait(0.5)
while UpActive == true do
if ExpScrollNumber - 1 > 0 then
UpActive = true
ExpScrollNumber = ExpScrollNumber - 1
UpdateItemGuis()
end
wait(0.05)
end
end
elseif ViewGui == "Properties" then
if PropScrollNumber - 1 > 0 then
DownActive = false
UpActive = true
PropScrollNumber = PropScrollNumber - 1
UpdatePropGuis()
wait(0.5)
while UpActive == true do
if PropScrollNumber - 1 > 0 then
PropScrollNumber = PropScrollNumber - 1
UpdatePropGuis()
end
wait(0.05)
end
end
end
end)

upbutton.MouseButton1Up:connect(function()
UpActive = false
end)

back.MouseButton1Down:connect(function() -- Go back
if _G.Selection.Value.Parent == nil then
back.Text = "Object's Parent is Nil"
UpdateMainGuis()
else
Spawn(function()
ExpScrollNumber = ScrollPlaces[#ScrollPlaces]
if ExpScrollNumber == nil then ExpScrollNumber = 1 end
ScrollPlaces[#ScrollPlaces] = nil
_G.Selection.Value = _G.Selection.Value.Parent
search.Text = "Search in ".._G.Selection.Value.Name
UpdateMainGuis()
if _G.Selection.Value.Parent ~= nil then
back.Text = "Back to ".._G.Selection.Value.Parent.Name
end
end)
end
end)

search.FocusLost:connect(function() -- Search
UpdateMainGuis(search.Text)
search.Text = "Search in ".._G.Selection.Value.Name
end)

refreshbutton.MouseButton1Down:connect(function() -- Refresh
if _G.Selection.Value ~= nil and _G.Selection.Value.Parent ~= nil then
UpdateMainGuis()
else
_G.Selection.Value = Game
search.Text = "Search in ".._G.Selection.Value.Name
UpdateMainGuis()
end
end)

options.MouseLeave:connect(function()
options.Visible = false
end)

copybutton.MouseButton1Down:connect(function()
options.Visible = false
if config.Value == nil then return end
-- pcall(function()
CopiedItem = config.Value:Clone()
-- end)
end)


pastebutton.MouseButton1Down:connect(function()
options.Visible = false
if config.Value ~= nil then
-- pcall(function()
CopiedItem:Clone().Parent = config.Value
-- end)
else
-- pcall(function()
CopiedItem:Clone().Parent = _G.Selection.Value
-- end)
end
UpdateMainGuis()
end)

cutbutton.MouseButton1Down:connect(function()
options.Visible = false
if config.Value == nil then return end
-- pcall(function()
config.Value:Remove()
-- end)
UpdateMainGuis()
end)

insertbutton.FocusLost:connect(function()
options.Visible = false
if config.Value ~= nil then
pcall(function()
Instance.new(insertbutton.Text, config.Value)
end)
else
pcall(function()
Instance.new(insertbutton.Text, _G.Selection.Value)
end)
end
UpdateMainGuis()
insertbutton.Text = "Insert"
end)

if Mouse ~= nil then
CtrlDown = false
KeyDownFunction = Mouse.KeyDown:connect(function(key)
if string.byte(key) == 50 then
CtrlDown = true
end
end)
KeyUpFunction = Mouse.KeyUp:connect(function(key)
if string.byte(key) == 50 then
CtrlDown = false
end
end)
MouseFunction = Mouse.Button1Down:connect(function()
if CtrlDown == true then
if Mouse.Target ~= nil and Mouse.Target ~= _G.Selection.Value then
_G.Selection.Value = Mouse.Target
ExpScrollNumber = 1
ScrollPlaces = {1}
UpdateMainGuis()
elseif Mouse.Target == nil or Mouse.Target == _G.Selection.Value then
_G.Selection.Value = Workspace
UpdateMainGuis()
end
end
end)
end

function ItemGuisClicked()
for i=1,#ItemGuis do
if ItemGuis[i]:FindFirstChild("ItemName") ~= nil then

ItemGuis[i].ItemName.MouseButton1Down:connect(function()
if ItemGuis[i].ObjectValue.Value == nil then return end
_G.Selection.Value = ItemGuis[i].ObjectValue.Value
search.Text = "Search in ".._G.Selection.Value.Name
table.insert(ScrollPlaces, ExpScrollNumber)
ExpScrollNumber = 1
UpdateMainGuis()
end)

ItemGuis[i].ItemName.MouseButton2Down:connect(function()
options.Visible = true
options.Position = UDim2.new(-0.5,0,ItemGuis[i].Position.Y.Scale,0)
if ItemGuis[i].ObjectValue.Value ~= nil then
config.Value = ItemGuis[i].ObjectValue.Value
else
config.Value = nil
end
end)

ItemGuis[i].ItemName.MouseEnter:connect(function()
if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
if ItemGuis[i].ObjectValue.Value ~= nil then
if ItemGuis[i].ObjectValue.Value:IsA("BasePart") or ItemGuis[i].ObjectValue.Value:IsA("Model") then
wait()
if ItemGuis[i].ObjectValue.Value ~= nil then
Game:GetService("CoreGui").ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value
end
end
if ItemGuis[i].ObjectValue.Value ~= nil then
if ItemGuis[i].ObjectValue.Value:IsA("Tool") or ItemGuis[i].ObjectValue.Value:IsA("Hat") then
if ItemGuis[i].ObjectValue.Value:FindFirstChild("Handle") ~= nil then
wait()
if ItemGuis[i].ObjectValue.Value ~= nil then
Game:GetService("CoreGui").ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value.Handle
end
end
end
end
end
end
end)

ItemGuis[i].ItemName.MouseLeave:connect(function()
if Game:GetService("CoreGui"):FindFirstChild("ObjectHighlight") ~= nil then
Game:GetService("CoreGui").ObjectHighlight.Adornee = nil
end
end)
end
end
end

function PropertyFunction(Gui)
if Gui == "" or Gui == nil then return end
if Gui:IsA("TextBox") then
Gui.FocusLost:connect(function()
-- pcall(function()
Property = Gui.Parent.PropertyName.Text
PropType = type(_G.Selection.Value[Property])
if PropType == "userdata" or PropType == "nil" then
if Property == "Parent" or Property == "PrimaryPart" or Property == "Adornee" or Property == "Value" then
loadstring("_G.Selection.Value[Property] = "..Gui.Text)()
elseif Property == "Size" or Property == "Position" or Property == "Velocity" or Property == "RotVelocity" or Property == "Rotation" or Property == "velocity" or Property == "position" or Property == "maxForce" or Property == "maxTorque" or Property == "GripPos" or Property == "VertexColor" or Property == "Scale" then
loadstring("_G.Selection.Value[Property] = Vector3.new("..Gui.Text..")")()
elseif Property == "CFrame" then
loadstring("_G.Selection.Value[Property] = CFrame.new("..Gui.Text..")")()
elseif Property == "BrickColor" then
loadstring([[_G.Selection.Value[Property] = BrickColor.new("]]..Gui.Text..[[")]])()
elseif Property == "Ambient" or Property == "ColorShift_Bottom" or Property == "ColorShift_Top" or Property == "OutdoorAmbient" or Property == "ShadowColor" or Property == "FogColor" then
loadstring("_G.Selection.Value[Property] = Color3.new("..Gui.Text..")")()
elseif Property == "Color" then
if _G.Selection.Value:IsA("SelectionBox") then
loadstring([[_G.Selection.Value[Property] = BrickColor.new("]]..Gui.Text..[[")]])()
else
loadstring("_G.Selection.Value[Property] = Color3.new("..Gui.Text..")")()
end
else
loadstring([[_G.Selection.Value[Property] = "]]..Gui.Text..[["]])()
end
else
loadstring([[_G.Selection.Value[Property] = "]]..Gui.Text..[["]])()
end
-- end)
UpdatePropGuis()
end)
elseif Gui:IsA("TextButton") then
Gui.MouseButton1Down:connect(function()
-- pcall(function()
Property = Gui.Parent.PropertyName.Text
if (_G.Selection.Value[Property]) == true then
_G.Selection.Value[Property] = false
elseif (_G.Selection.Value[Property]) == false then
_G.Selection.Value[Property] = true
end
-- end)
UpdatePropGuis()
end)
end
end

UpdateMainGuis()
ItemGuisClicked()

else -- End of Explorer View...

if Game:GetService("CoreGui").RobloxGui:FindFirstChild("PlayerListScreen") ~= nil then
Game:GetService("CoreGui").RobloxGui.PlayerListScreen.Visible = true
end
for i,v in pairs(Game:GetService("CoreGui"):GetChildren()) do
if v.Name == "ObjectHighlight" then
v:Remove()
end
end
if Game:GetService("CoreGui"):FindFirstChild("ExplorerGui") ~= nil then
Game:GetService("CoreGui").ExplorerGui:Remove()
end
EmptyTable = {}
if MouseFunction ~= nil then
MouseFunction:disconnect()
KeyDownFunction:disconnect()
KeyUpFunction:disconnect()
end
end
end)
end
