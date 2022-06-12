local name = "TerminalZero"
local PluginManagerObject = PluginManager()
local Plugin = PluginManagerObject:CreatePlugin()
local Toolbar = Plugin:CreateToolbar("Hello World Plugin Toolbar")
local Button = Toolbar:CreateButton("Explorer", "View Hidden Items", "LuaIcon")
local active = true
print 'Teleport Plugin Loaded'

local run = true

while true and wait() do
if (game.Players.LocalPlayer == nil) then else break end end

Properties={nil,"Name","className","Parent","archivable","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","AnimationId","HeadColor","RightArmColor","LeftArmColor","TorsoColor","LeftLegColor","RightLegColor","Value","CameraType","CameraSubject","BaseTextureId","BodyPart","MeshId","OverlayTextureId","MaxActivationDistance","Shiny","Specular","Texture","Face","GripForward","GripPos","GripRight","GripUp","TextureId","TeamColor","Enabled","CFrame","BrickColor","Material","Reflectance","Transparency","Position","RotVelocity","Velocity","Anchored","CanCollide","Locked","Elasticity","Friction","Shape","Size","formFactor","BackSurface","BottomSurface","FrontSurface","LeftSurface","RightSurface","TopSurface","AbsolutePosition","AbsoluteSize","Active","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixel","SizeConstraint","Visible","ZIndex","C0","C1","Part0","Part1","BinType","LeftLeg","RightLeg","Torso","Health","MaxHealth","WalkSpeed","Jump","PlatformStand","Sit","AutoButtonColor","Image","LinkedSource","Disabled","Text","PrimaryPart","CurrentAngle","DesiredAngle","MaxVelocity","PantsTemplate","ShirtTemplate","SoundId","Pitch","IsPlaying","IsPaused","Looped","PlayOnRemove","StudsPerTileU","StudsPerTileV","userId","BubbleChat","ClassicChat","MaxPlayers","NumPlayers","LocalPlayer","CharacterAppearance","Character","CurrentCamera","Ambient","Brightness","ColorShift_Bottom","ColorShift_Top","ShadowColor","GeographicLatitude","TimeOfDay","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale"}
GlobalProperties={nil,"Name","className","Parent","archivable"}
GlobalEvents={nil,"AncestryChanged","ChildAdded","ChildRemoved","DescendantAdded","DescendantRemoving"}
GlobalFunctions={nil,"Clone","FindFirstChild","GetChildren","GetFullName","IsA","IsAncesterOf","IsDescendantOf","Remove"}
local Selection=game
local updateDebounce=1
Base="http://www.roblox.com/asset/?id="
Images={Value=40332408,Sound=40332463,Script=40332546,ScreenGui=40332596,Part=40332760,Nil=40332825,Model=40332865,Message=40332942,LocalScript=40332996,Joint=40333049,Frame=40333121,Camera=40333217,Backpack=40333260,Player=40332674,Body=40339623,HopperBin=40339572,Tool=40339513,Workspace=40484518,Mesh=40484580,Property=40493937,Animation=40531758,Hat=40531808,Humanoid=40531903}
Min=1
Max=40
MAXPAGEN=40
--[[==================================================================]]
function GetProperties(Object,Table)
local Return={}
local function C() end
for i=1,#Table do
if pcall(function() C(Object[Table[i]]) end) then
if (Object:FindFirstChild(Table[i])==nil) then
table.insert(Return,Table[i])
end end end
return Return
end

function GetType(Prop)
if (type(Prop)=="userdata") then
if pcall(function() Prop.Name=Prop.Name end) then
return Prop.Name
end end
return Prop
end

function SetPropGui()
if (Selection~=nil) then
local PropGuiPos=0
local Gui=game:GetService("CoreGui"):FindFirstChild("PropertiesGui")
if (Gui~=nil) then
Gui:Remove()
end
PropGui=Instance.new("ScreenGui")
PropGui.Parent=game:GetService("CoreGui")
PropGui.Name="PropertiesGui"
local Props=GetProperties(Selection,Properties)
for i=1,#Props do
PropGuiPos=i
local Get=GetType(Props[i])
local Label=Instance.new("TextButton")
Label.Parent=PropGui
Label.Size=UDim2.new(0,150,0,15)
Label.Text="     "..tostring(Get).." | "..tostring(Selection[Get])
Label.BackgroundColor3=Color3.new(0.7,0.7,0.9)
Label.Name=tostring(Get)
Label.TextXAlignment="Left"
Label.Position=UDim2.new(0,230,0,(i*15)-15)
Label.TextColor3=Color3.new(0,0,0)
Label.BorderColor3=Color3.new(0,0,0)
Label.BackgroundTransparency=0.5
Label.Active=false
Label.AutoButtonColor=false
CreateImageLabel(Label,Base..Images.Property)
if (type(Selection[Props[i]])=="boolean") then
if pcall(function() Selection[Props[i]]=Selection[Props[i]] end) then
Label.Active=true
Label.AutoButtonColor=true
Label.BackgroundColor3=Color3.new(0.5,0.5,1)
Label.MouseButton1Click:connect(function()
if (Selection[Props[i]]==true) then
Selection[Props[i]]=false
elseif (Selection[Props[i]]==false) then
Selection[Props[i]]=true
end
Label.Text="     "..tostring(Props[i]).." | "..tostring(Selection[Props[i]])
end) end end end
end end

function CreateImageLabel(Par,image)
local label=Instance.new("ImageLabel")
label.BackgroundColor3=Color3.new(1,1,1)
label.BackgroundTransparency=1
label.Name="ItemImage"
label.Size=UDim2.new(0,13,0,13)
label.Position=UDim2.new(0,1,0,1)
label.Image=image
label.BorderSizePixel=0
label.Parent=Par
end

function SetImage(Par,class)
if (class=="IntValue") or (class=="BoolValue") or (class=="StringValue") or (class=="ObjectValue") or (class=="CFrameValue") or (class=="Vector3Value") or (class=="NumberValue") or (class=="RayValue") or (class=="Color3Value") or (class=="BrickColorValue") then
CreateImageLabel(Par,Base..Images.Value)
elseif (class=="Sound") or (class=="StockSound") or (class=="SoundService") then
CreateImageLabel(Par,Base..Images.Sound)
elseif (class=="Script") then
CreateImageLabel(Par,Base..Images.Script)
elseif (class=="ScreenGui") or (class=="GuiMain") or (class=="BillboardGui") then
CreateImageLabel(Par,Base..Images.ScreenGui)
elseif (class=="Part") or (class=="WedgePart") or (class=="TrussPart") then
CreateImageLabel(Par,Base..Images.Part)
elseif (class=="Model") then
CreateImageLabel(Par,Base..Images.Model)
elseif (class=="Hint") or (class=="Message") then
CreateImageLabel(Par,Base..Images.Message)
elseif (class=="LocalScript") then
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
elseif (class=="StarterScript") then
CreateImageLabel(Par,Base..Images.LocalScript)
elseif (class=="CoreScript") then
CreateImageLabel(Par,Base..Images.LocalScript)
else CreateImageLabel(Par,Base..Images.Nil)
end
end

function SetExplGui()
if (Selection~=nil) then
local Gui=game:GetService("CoreGui"):FindFirstChild("ExplorerGui")
if (Gui~=nil) then Gui:Remove() end
local Children=Selection:GetChildren()
ExplGui=Instance.new("ScreenGui")
ExplGui.Parent=game:GetService("CoreGui")
ExplGui.Name="ExplorerGui"
if (Selection.Parent~=nil) then
local BackButton=Instance.new("TextButton")
BackButton.Size=UDim2.new(0,120,0,15)
BackButton.BorderColor3=Color3.new(0,0,0)
BackButton.TextColor3=Color3.new(0,0,0)
BackButton.Parent=ExplGui
BackButton.Text="Back to " .. Selection.Parent.Name
BackButton.BackgroundColor3=Color3.new(0.3,0.3,1)
BackButton.BackgroundTransparency=0.5
BackButton.Position=UDim2.new(0,380,0,0)
BackButton.Name="Back"
BackButton.MouseButton1Click:connect(function()
Selection=Selection.Parent
SetExplGui()
SetPropGui()
end) end
if (#Children>=MAXPAGEN) then
local f=0
for i=Min,Max do
f=f+1
local Obj=Instance.new("TextButton")
Obj.Size=UDim2.new(0,120,0,15)
Obj.BorderColor3=Color3.new(0,0,0)
Obj.TextColor3=Color3.new(0,0,0)
Obj.Parent=ExplGui
Obj.Text="     "..Children[i].Name
Obj.BackgroundColor3=Color3.new(0.4,0.4,0.6)
Obj.BackgroundTransparency=0.5
Obj.TextXAlignment="Left"
if (Selection.Parent~=nil) then Obj.Position=UDim2.new(0,380,0,(f*15)) else Obj.Position=UDim2.new(0,380,0,(f*15)-15) end
Obj.Name=Children[i].Name
SetImage(Obj,Children[i].className)
Obj.MouseButton1Click:connect(function() pcall(function() Selection=Children[i] SetExplGui() SetPropGui() end) end)
local Remove=Instance.new("TextButton")
Remove.Size=UDim2.new(0,15,0,15)
Remove.BorderColor3=Color3.new(0,0,0)
Remove.TextColor3=Color3.new(0,0,0)
Remove.Parent=ExplGui
Remove.Text="X"
Remove.BackgroundColor3=Color3.new(1,0.25,0.25)
Remove.BackgroundTransparency=0.5
Remove.Name="Remove" .. Children[i].Name
if (Selection.Parent~=nil) then Remove.Position=UDim2.new(0,500,0,(f*15)) else Remove.Position=UDim2.new(0,500,0,(f*15)-15) end
Remove.MouseButton1Click:connect(function() if (pcall(function() Children[i]:Remove() end)) then SetPropGui() SetExplGui() else  Remove.BackgroundColor3=Color3.new(1,1,1) wait(1) Remove.BackgroundColor3=Color3.new(1,0.25,0.25) end end)
end 
local UP=Instance.new("TextButton")
UP.Position=UDim2.new(0,515,0,0)
UP.Size=UDim2.new(0,15,0,15)
UP.BorderColor3=Color3.new(0,0,0)
UP.TextColor3=Color3.new(0,0,0)
UP.Parent=ExplGui
UP.Text="^"
UP.BackgroundColor3=Color3.new(1,0.25,0.25)
UP.BackgroundTransparency=0.5
UP.Name="UpButton"
UP.MouseButton1Click:connect(function() if (Min<=1) then return end Min=Min-1 Max=Max-1 SetExplGui() end)
local DOWN=Instance.new("TextButton")
DOWN.Position=UDim2.new(0,515,0,15)
DOWN.Size=UDim2.new(0,15,0,15)
DOWN.BorderColor3=Color3.new(0,0,0)
DOWN.TextColor3=Color3.new(0,0,0)
DOWN.Parent=ExplGui
DOWN.Text="v"
DOWN.BackgroundColor3=Color3.new(1,0.25,0.25)
DOWN.BackgroundTransparency=0.5
DOWN.Name="DownButton"
DOWN.MouseButton1Click:connect(function() if (Max>=#Children) then return end Min=Min+1 Max=Max+1 SetExplGui() end)
else
Max=MAXPAGEN
Min=1
for i=1,#Children do
local Obj=Instance.new("TextButton")
Obj.Size=UDim2.new(0,120,0,15)
Obj.BorderColor3=Color3.new(0,0,0)
Obj.TextColor3=Color3.new(0,0,0)
Obj.Parent=ExplGui
Obj.Text="     "..Children[i].Name
Obj.BackgroundColor3=Color3.new(0.4,0.4,0.6)
Obj.BackgroundTransparency=0.5
Obj.TextXAlignment="Left"
if (Selection.Parent~=nil) then Obj.Position=UDim2.new(0,380,0,(i*15)) else Obj.Position=UDim2.new(0,380,0,(i*15)-15) end
Obj.Name=Children[i].Name
SetImage(Obj,Children[i].className)
Obj.MouseButton1Click:connect(function() pcall(function() Selection=Children[i] SetExplGui() SetPropGui() end) end)
local Remove=Instance.new("TextButton")
Remove.Size=UDim2.new(0,15,0,15)
Remove.BorderColor3=Color3.new(0,0,0)
Remove.TextColor3=Color3.new(0,0,0)
Remove.Parent=ExplGui
Remove.Text="X"
Remove.BackgroundColor3=Color3.new(1,0.25,0.25)
Remove.BackgroundTransparency=0.5
Remove.Name="Remove" .. Children[i].Name
if (Selection.Parent~=nil) then Remove.Position=UDim2.new(0,500,0,(i*15)) else Remove.Position=UDim2.new(0,500,0,(i*15)-15) end
Remove.MouseButton1Click:connect(function() if (pcall(function() Children[i]:Remove() end)) then SetPropGui() SetExplGui() else  Remove.BackgroundColor3=Color3.new(1,1,1) wait(1) Remove.BackgroundColor3=Color3.new(1,0.25,0.25) end end) 
end
end 
end
----------------
Selection.Changed:connect(function(prop)
if (Selection==game) then return end
if (updateDebounce==1) then
updateDebounce=0
if (Selection.Parent==nil) then 
Selection=game 
updateDebounce=1
SetPropGui()
SetExplGui()
return end
if (PropGui~=nil) then
local Button=PropGui:FindFirstChild(prop)
if (Button~=nil) then
local Get=GetType(prop)
Button.Text="     "..tostring(Get).." | "..tostring(Selection[Get])
end end
wait()
updateDebounce=1
end end) 
---------------------------
end
SetPropGui()
SetExplGui()
