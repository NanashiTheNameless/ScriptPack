--FunBoks 1.0
--By ember1465

--[[ Debug Pack by Ozzypig -- debug pack is code written by ozzypig that helps debug. don't mess with it. ]] debug = true gprint = print local function print(...) if debug then gprint(...) end end 

BOK_CURRENT_NAME = "FunBoks"
BOK_VERSION = "1.0" 
BOK_PRI = "vPri"
BOK_CURRENT_VERSION_ID = tonumber(BOK_VERSION)
BOK_FULL_NAME = BOK_CURRENT_NAME .. " " .. BOK_VERSION .. " " .. BOK_PRI
BOK_DOWNLOAD = nil
BOK_OWNER = nil
BOK_GUI = nil
BOK_DEBOUNCE = true

--Incase of hackers...
if _G._GLUAL == nil then
	_G._LUAL = {}
	_G._LUAL.math = _G.math
	_G._LUAL.string = _G.string
	_G._LUAL.table = _G.table
	_G._LUAL.game = game
end

math = _G._LUAL.math
string = _G._LUAL.string
table = _G._LUAL.table
game = _G._LUAL.game

script.Name = BOK_FULL_NAME

--shortcuts
workspace = workspace
players = game.Players
lighting = game.Lighting

if script.Parent ~= workspace then script.Parent = workspace end

--Themes
bgcolor = Color3.new(1, 0, 0)
bdcolor = Color3.new(1, 1, 0)
txtcolor = Color3.new(1, 1, 0)
txthilite = Color3.new(1, 1, 1)

--Updates
Updates = {
"The window displacing function (you click and it comes forward) will be perfected.",
"The right click function will be finished and fully operational.",
BOK_CURRENT_NAME .. " " .. BOK_VERSION .. " " .. "vPub will be finished and released."
}

--Tips
Tips = {
"The Tip app was added on 6/21/10.",
"Obby means Obsticle Course.",
"This thing is 1337.",
"You can move the Command Icon by dragging it.",
"Some things can be right clicked to give you extra information about the item (Not much help, but its cool).",
"The Home app can be disabled with the checkbox in the window.",
"If your getting tired of the theme, you can change it with the Theme App.",
"\"You may shoot all the Blue Jays if you want, if you can hit 'em. But always remember: it's a sin to kill a mockingbird.\" <-- I don't know who said that first...",
"Keep in mind, most of these arent really tips, just little things I thought of or a good quote. The others are tips though.",
"\"The sooner you start typing with good grammar and spelling, the more people respect you.\" <-- Ozzypig",
"Roblox's script editor has not been updated in over 2 years.",
"\"The less you depend on Free Models, the better games you can make.\" <-- Ozzypig",
"On 2/10/09, the .Source property of a script was locked, ruining many Script Builders and AntiViruses, but was unlocked later. Again though, it's locked...",
"\"Rescent studies have shown significant evidence that stud shapes were, infact circle at once point in time.\" <-- Still don't know who said it...",
"If you want to thank me for an alternative to Tazer (It caused your game to not load), tell your friends about FunBoks!",
"Do you hate the yellow theme? Me too, but some weirdos out there like it...",
"\"Roblox moderators are some of the most \"unique\" beings on the entire planet.\" <-- Ozzypig",
"The creator of Tazer also made the \"OH SNAP YOU GOT INFECTED XD XD XD\" infection. Ironic huh?",
"If you take an unbaked potato, a fresh olive, and a slice of apple and eat them at the same time, milk will taste like bubble gum. Don't take my word for it, ask Ozzypig.",
"While writing this tip, iCarly was watched.",
"All I know of pi = 3.1415926535897932384626",
"Question 1 : What's the meaning of life?",
"Answer 1 : 42",
"Did you answer the meaning of life yet?",
"This app was written out on the 5th day after my oral surgery! It hurt...",
"",
"There is a blank class somewhere, as well as a blank tip in the script.",
"Question 2 : What is 3.094 x 3.343 - 4/5?",
"Answer 2 : 9.543242",
"Theres a whole list of objects and enums in the script that serve no purpose. I still dont know what to use them for."
}

--Courtesy of billiland. idk why I have it other than to make the script look cooler...
part1 = {"Name", "Parent", "Position", "RotVelocity", "Velocity", "Anchored", "CanCollide", "Locked", "archivable", "BackParamA", "BackParamB", "BackSurfaceInput","BottomParamA", "BottomParamB", "BottomSurfaceInput","FrontParamA", "FrontParamB", "FrontSurfaceInput","LeftParamA", "LeftParamB","LeftSurfaceInput","RightParamA", "RightParamB", "RightSurfaceInput","TopParamA", "TopParamB", "TopSurfaceInput","BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "Elasticity", "Friction", "Shape", "formFactor","BrickColor","Reflectance", "Transparency", "CFrame", "Size", "Material"}
part2 = {"String", "Object", "Vector3", "Vector3", "Vector3", "Bool", "Bool", "Bool", "Bool", "Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType", "Surface", "Surface", "Surface", "Surface", "Surface", "Surface", "Number", "Number", "Shape", "formFactor", "BrickColor", "Number", "Number", "CFrame", "Vector3","Material"}
part = {part1, part2}
explosion1 = {"Name","Parent","archivable","BlastPressure","BlastRadius","Position"}
explosion2 = {"String", "Object", "Bool", "Number", "Number", "Vector3"} 
explosion = {explosion1, explosion2}
accoutrement1 = {"Name","Parent","archivable","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp"}
accoutrement2 = {"String","Object","Bool","Vector3","Vector3","Vector3","Vector3"}
accoutrement = {accoutrement1,accoutrement2}
message1 = {"Name","Parent","archivable","Text"}
message2 = {"String", "Object", "Bool", "String"}
message = {message1, message2}
texture1 = {"Name","Parent","archivable","Face","Shiny","Specular","StudsPerTileU","StudsPerTileV","Texture"}
texture2 = {"String", "Object", "Bool", "Face", "Number", "Number", "Number", "Number", "String"}
texture = {texture1, texture2}
sky1 = {"Name","Parent","archivable","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount"}
sky2 = {"String", "Object", "Bool", "Bool", "String", "String", "String", "String", "String", "String", "Number"}
sky = {sky1, sky2}
sparkles1 = {"Name","Parent","archivable","Color","Enabled"}
sparkles2 = {"String","Object","Bool","Color3","Bool"}
sparkles = {sparkles1,sparkles2}
bodythrust1 = {"Name","Parent","archivable","force","location"}
bodythrust2 = {"String","Object","Bool","Vector3","Vector3"}
bodythrust = {bodythrust1,bodythrust2}
glue1 = {"Name","Parent","archivable","C0","C1","Part0","Part1"}
glue2 = {"String","Object","Bool","CFrame","CFrame","Object","Object"}
glue = {glue1,glue2}
jointinstance1 = {"Name","Parent","archivable","C0","C1","Part0","Part1"}
jointinstance2 = {"String","Object","Bool","CFrame","CFrame","Object","Object"}
jointinstance = {jointinstance1,jointinstance2}
motor1 = {"Name","Parent","archivable","C0","C1","CurrentAngle","DesiredAngle","MaxVelocity","Part0","Part1"}
motor2 = {"String","Object","Bool","CFrame","CFrame","Number","Number","Number","Object","Object"}
motor = {motor1,motor2}
rocketpropulsion1 = {"Name","Parent","archivable","CartoonFactor","MaxSpeed","MaxThrust","MaxTorque","Target","TargetOffset","TargetRadius","ThrustD","ThrustP","TurnD","TurnP"}
rocketpropulsion2 = {"String","Object","Bool","Number","Number","Number","Vector3","Object","Vector3", "Number","Number","Number","Number","Number"}
rocketpropulsion = {rocketpropulsion1,rocketpropulsion2}
rotate1 = {"Name","Parent","archivable","C0","C1","Part0","Part1"}
rotate2 = {"String","Object","Bool","CFrame","CFrame","Object","Object"}
rotate = {rotate1,rotate2}
rotatep1 = {"Name","Parent","archivable","C0","C1","Part0","Part1","BaseAngle"}
rotatep2 = {"String","Object","Bool","CFrame","CFrame","Object","Object","Number"}
rotatep = {rotatep1,rotatep2}
rotatev1 = {"Name","Parent","archivable","C0","C1","Part0","Part1","BaseAngle"}
rotatev2 = {"String","Object","Bool","CFrame","CFrame","Object","Object","Number"}
rotatev = {rotatev1,rotatev2}
GuiImageButton1={"archivable","Active","AutoButtonColor","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixle","Image","Name","Parent","Position", "Selected","Size","SizeConstraint","Visible","ZIndex"}
GuiImageButton2={"Bool","Bool","Bool","BackgroundColor3","Number","Color3","Number","String","String","Object","UDim2", "Bool","UDim2","SizeConstraint","Bool","Number"}
GuiImageButton={GuiImageButton1,GuiImageButton2}
GuiArcHandle1={"Color","Transparency","Adornee","Axes","Name","Visable","Parent","archivable"}
GuiArcHandle2={"Color3","Number","Object","Axis","String","Bool","Object","Bool"}
GuiArchHandle={GuiArchHandle1,GuiArchHandle2}
GuiBillBoard1={"Adornee","ExtentOffset","Name","Parent","Size","SizeOffset","StudsOffset","archivable"}
GuiBillBoard2={"Object","Vector3","String","Object","UDim2","Vector2","Vector3","Bool"}
GuiBillBoard={GuiBillBoard1,GuiBillBoard2}
GuiFrame1={"Active","BackgroundColor3","BackgroundTransparency","BorderColor3","BorderSizePixle","Name","Parent","Position","Size","SizeConstraint","Visable","ZIndex","archivable"}
GuiFrame2={"Bool","BackgroundColor3","Number","Color3","Number","String","Object","UDim2","UDim2","SizeConstraint","Bool","Number","Bool"}
GuiFrame={GuiFrame1,GuiFrame2}
GuiHandle1={"Color","Style","Transparency","Adornee","Faces","Name","Parent","Visable","archivable","Style"}
GuiHandle2={"Color2","Enum","Number","Object","Faces","String","Object","Bool","Bool","Style"}
GuiHandle={GuiHandle1,GuiHandle2}
snap1 = {"Name","Parent","archivable","C0","C1","Part0","Part1"}
snap2 = {"String","Object","Bool","CFrame","CFrame","Object","Object"}
snap = {snap1,snap2}
velocitymotor1 = {"Name","Parent","archivable","C0","C1","CurrentAngle","DesiredAngle","Hole","MaxVelocity","Part0","Part1"}
velocitymotor2 = {"String","Object","Bool","CFrame","CFrame","Number","Number","Object","Number","Object","Object"}
velocitymotor = {velocitymotor1, velocitymotor2}
team1 = {"Name","Parent","archivable","AutoAssignable","AutoColorCharacters","Score","TeamColor"}
team2 = {"String","Object","Bool","Bool","Bool","Number","BrickColor"}
team = {team1,team2}
shirt1 = {"Name","Parent","archivable","ShirtTemplate"}
shirt2 = {"String","Object","Bool","String"}
shirt = {shirt1,shirt2}
shirtgraphic1 = {"Name","Parent","archivable","Graphic"}
shirtgraphic2 = {"String","Object","Bool","String"}
shirtgraphic = {shirtgraphic1,shirtgraphic2}
skin1 = {"Name","Parent","archivable","SkinColor"}
skin2 = {"String","Object","Bool","BrickColor"}
skin = {skin1,skin2}
brickcolorvalue1 = {"Name","Parent","archivable","Value"}
brickcolorvalue2 = {"String","Object","Bool","BrickColor"}
brickcolorvalue = {brickcolorvalue1,brickcolorvalue2}
color3value1 = {"Name","Parent","archivable","Value"}
color3value2 = {"String","Object","Bool","Color3"}
color3value = {color3value1,color3value2}
vector3value1 = {"Name","Parent","archivable","Value"}
vector3value2 = {"String","Object","Bool","Vector3"}
vector3value = {vector3value1,vector3value2}
bdp1 = {"Name", "Parent", "maxForce", "position", "archivable"}
bdp2 = {"String", "Object", "Vector3", "Vector3", "Bool"}
bdp = {bdp1, bdp2}
bf1 = {"Name", "Parent", "force", "archivable"}
bf2 = {"String", "Object", "Vector3", "Bool"}
bf = {bf1, bf2}
formFactor = {"Symmetric", "Brick", "Plate"}
inputType = {"NoInput", "LeftTread", "RightTread", "Steer", "Throtle", "Nothing", "UpDown", "Action1","Action2","Action3","Action4","Action5","Constant", "Sin"}
surface = {"Smooth", "Glue", "Weld", "Studs", "Inlet", "Universal", "Hinge", "Motor", "SteppingMotor"}
shape = {"Ball", "Block", "Cylinder"}
model1 = {"Name", "Parent", "archivable"}
model2 = {"String", "Object", "Bool"}
mod = {model1, model2}
hum1 = {"Name","Parent","archivable","Health","MaxHealth","WalkRotationalVelocity","WalkDirection","WalkToPoint","WalkToPart","WalkSpeed","Sit","Jump","Strafe","LeftLeg","RightLeg","Torso"}
hum2 = {"String", "Object", "Bool", "Number", "Number", "Vector3", "Vector3", "Object", "Number", "Bool", "Bool", "Bool", "Object", "Object"}
hum = {hum1, hum2}
tool1 = {"Name", "Parent", "GripForward", "GripPos", "GripRight", "GripUp", "archivable"}
tool2 = {"String", "Object", "Vector3", "Vector3", "Vector3", "Vector3", "Bool"}
tool = {tool1, tool2}
spawn1 = {"Name", "Parent", "Position", "RotVelocity", "Velocity", "Anchored", "CanCollide", "Locked", "archivable", "BackParamA", "BackParamB", "BackSurfaceInput","BottomParamA", "BottomParamB", "BottomSurfaceInput","FrontParamA", "FrontParamB", "FrontSurfaceInput","LeftParamA", "LeftParamB","LeftSurfaceInput","RightParamA", "RightParamB", "RightSurfaceInput","TopParamA", "TopParamB", "TopSurfaceInput","BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "Elasticity", "Friction", "Shape", "formFactor","BrickColor", "Reflectance", "Transparency", "CFrame", "AllowTeamChangeOnTouch", "Neutral", "TeamColor", "Duration", "Size"}
spawn2 = {"String", "Object", "Vector3", "Vector3", "Vector3", "Bool", "Bool", "Bool", "Bool", "Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType","Number", "Number", "InputType", "Surface", "Surface", "Surface", "Surface", "Surface", "Surface", "Number", "Number", "Shape", "formFactor", "BrickColor", "Number", "Number", "CFrame", "Bool", "Bool", "BrickColor", "Number", "Vector3"}
spawn = {spawn1, spawn2}
decal1 = {"Name", "Parent", "Shiny", "Specular", "Texture", "Face", "archivable"}
decal2 = {"String", "Object", "Number", "Number", "String", "Face", "Bool"}
decal = {decal1, decal2}
face = {"Right", "Top", "Back", "Left", "Bottom", "Front"}
mesh1 = {"Name", "Parent", "MeshType", "Scale", "VertexColor", "archivable"}
mesh2 = {"String", "Object", "MeshType", "Vector3", "Vector3", "Bool"}
mesh = {mesh1, mesh2}
meshtype = {"Head", "Torso", "Wedge", "Sphere", "Cylinder", "FileMesh", "Brick"}
hstyle = {"Resize","Movement"}
SizeConstraint = {"RelativeXX","RelativeXY","RelativeYY"}
Material = {"Concrete","CorrodedMetal","DiamondPlate","Foil","Grass","Ice","Plastic","Slate","Wood"}
sc1 = {"Name", "Parent", "Source", "Disabled", "archivable"}
sc2 = {"String", "Object", "Source", "Bool", "Bool"}
scr = {sc1, sc2}
int1 = {"Name", "Parent", "Value", "archivable"}
int2 = {"String", "Object", "Number", "Bool"}
int = {int1, int2}
lsc1 = {"Name", "Parent", "Source", "Disabled", "archivable"}
lsc2 = {"String", "Object", "Source", "Bool", "Bool"}
lscr = {sc1, sc2}
sound1 = {"Name", "Parent", "Volume", "SoundId" , "archivable"}
sound2 = {"String", "Object", "Number", "String" , "Bool"}
sound = {sound1, sound2}
cf1 = {"Name", "Parent", "Value", "archivable"}
cf2 = {"String", "Object", "CFrame", "Bool"}
cf = {cf1, cf2}
obj1 = {"Name", "Parent", "Value", "archivable"}
obj2 = {"String", "Object", "Object", "Bool"}
ob = {obj1, obj2}
b1 = {"Name", "Parent", "Value", "archivable"}
b2 = {"String", "Object", "Bool", "Bool"}
b = {b1, b2}
bg1 = {"Name", "Parent", "D", "P", "maxTorque", "archivable"}
bg2 = {"String", "Object", "Number", "Number", "Vector3", "Bool"}
bg = {bg1, bg2}
hop1 = {"Name", "Parent", "archivable"}
hop2 = {"String", "Object", "Bool"}
hop = {hop1, hop2}
st1 = {"Name", "Parent", "Value", "archivable"}
st2 = {"String", "Object", "String", "Bool"}
st = {st1, st2}
nr1 = {"Name", "Parent", "Value", "archivable"}
nr2 = {"String", "Object", "Number", "Bool"}
nr = {nr1, nr2}
bv1 = {"Name", "Parent", "archivable", "P", "maxForce", "velocity"}
bv2 = {"String", "Object", "Bool", "Number", "Vector3", "Vector3"}
bv = {bv1, bv2}
weld1 = {"Name", "Parent", "Part0", "Part1", "C1" , "C0"}
weld2 = {"String", "Object", "Object", "Object", "CFrame" , "CFrame"}
weld = {weld1, weld2}
cd1 = {"Name", "Parent", "archivable", "MaxActivationDistance"}
cd2 = {"String", "Object", "Bool", "Number"}
cd = {cd1, cd2}
objects = {}
enums = {}
objects["Part"] = part
objects["Snap"] = snap
objects["Skin"] = skin
objects["ImageButton"] = GuiImageButton
objects["ArcHandles"] = GuiArchHandle
objects["BillboardGui"] = GuiBillBoard
objects["Frame"] = GuiFrame
objects["Handles"] = GuiHandle
objects["VelocityMotor"] = velocitymotor
objects["Explosion"] = explosion
objects["Accoutrement"] = accoutrement
objects["Texture"] = texture
objects["BodyThrust"] = bodythrust
objects["RocketPropulsion"] = rocketpropulsion
objects["Glue"] = glue
objects["JointInstance"] = jointinstance
objects["Rotate"] = rotate
objects["RotateV"] = rotatev
objects["RotateP"] = rotatep
objects["Sparkles"] = sparkles
objects["Message"] = message
objects["Hint"] = message
objects["Sky"] = sky
objects["Model"] = mod
objects["Humanoid"] = hum
objects["Seat"] = part
objects["Tool"] = tool
objects["HopperBin"] = hop
objects["SpawnLocation"] = spawn
objects["Decal"] = decal
objects["SpecialMesh"] = mesh
objects["Script"] = scr
objects["LocalScript"] = lscr
objects["Sound"] = sound
objects["StringValue"] = st
objects["NumberValue"] = nr
objects["BoolValue"] = b
objects["IntValue"] = int
objects["CFrameValue"] = cf
objects["ObjectValue"] = ob
objects["BrickColorValue"] = brickcolorvalue
objects["Color3Value"] = color3value
objects["Vector3Value"] = vector3value
objects["Weld"] = weld
objects["BodyPosition"] = bdp
objects["BodyGyro"] = bg
objects["BodyVelocity"] = bv
objects["BodyForce"] = bf
objects["ClickDetector"] = cd
objects["ShirtGraphic"] = shirtgraphic
objects["Shirt"] = shirt
enums["formFactor"] = formFactor
enums["InputType"] = inputType
enums["Surface"] = surface
enums["Shape"] = shape
enums["Face"] = face
enums["MeshType"] = meshtype
enums["Style"] = hstyle
enums["SizeConstraint"] = SizeConstraint
enums["Material"] = Material

--Windows
Windows = {}
Window = {}

Objects = {}
Object = {}

--News
News = {}
Article = {}

--Tool Boks
Tools = {}
Tool = {}

--Alerts
Alerts = {}

--Apps
Apps = {}
App = {}

--Check for lag
check = {}
check.lag = {"Workspace", "Players", "Lighting", "StarterGui", "StarterPack"}
check.recover = {"Workspace", "Players", "Lighting", "StarterGui", "StarterPack"}

joints = {"Weld", "Snap", "Glue", "RotateP", "RotateV"}

function tobool(a)
	if a == "true" then return true end
	if a == "false" then return false end
	if a == true then return true end
	if a == false then return false end
	if a == 1 then return true end
	if a == 0 then return false end
	if a ~= nil then return true end
	if a == nil then return false end
end

function tocheck(a)
	if a == "true" then return "X" end
	if a == "false" then return "" end
	if a == true then return "X" end
	if a == false then return "" end
	if a == 1 then return "X" end
	if a == 0 then return "" end
	if a ~= nil then return "X" end
	if a == nil then return "" end
end

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

function DescendantAdded(c)
	if c:IsA("Script") or c:IsA("LocalScript") then c.Disibled = true end
	wait()
	c:Remove()
end

function BokChanged()
	script.Name = BOK_FULL_NAME
	script.Parent = workspace
	script.Disabled = false
	script.archivable = true
end

function StartBokDefence()
	script.DescendantAdded:connect(DescendantAdded)
	script.Changed:connect(BokChanged)	
end

StartBokDefence()

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

Sorry = [[Sorry Ozzypig, Im still debuging my AntiLag and Recover Cycles!!!]]  ---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

function Delag(object)
	--make it the least laggy possible
	local unneeded = false
	local parent = object.Parent
	--is it a joint? break it if not needed
	local isajoint = false
	for index, value in pairs(joints) do
		if object:IsA(value) then
			isajoint = true
		end
	end
	if isajoint and object.Parent and object.Part0 and object.Part1 and object.Part0.Anchored and object.Part1.Anchored then
		unneeded = true
	end
	--remove it if not needed
	if unneeded then
		object:remove()
	end
end

function GarbageCollection(amount)
	local freed = 0
	if amount ~= nil then
		if amount < 200 then
			amount = 200
			local current = collectgarbage("count")
			local collections = 0
			while current >= amount do 
				local before = collectgarbage("count")
				collectgarbage("collect")
				local after = collectgarbage("count")
				freed = freed + (before - after)
				current = collectgarbage("count")
				collections = collections + 1
			end
			return collections
		end
	else
		local before = collectgarbage("count")
		collectgarbage("collect")
		local after = collectgarbage("count")
		return before - after
	end
end

function RunAntiLag(newwind)
	Alert("Running AntiLag Cycle...")
	for index, value in pairs(check.lag) do
		local service = game:FindFirstChild(value)
		if service then
			Delag(service)
		end
	end
	gc = GarbageCollection()
	print(gc .. " KB of data freed")
	Alert("AntiLag Cycle finished")
	Alert("FunBoks cleared " .. gc .. " KB of unused data")
	
	if not newwind then return end

	local window = Window:new("Anti Lag sweep", "http://www.roblox.com/asset/?id=29258670", 150, 100)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "Anti lag sweep complete.", align = "right", linage = 2}))
	base:addObject(Object:new("text", {text = "The sweep was successful and freed " .. gc .. " KB of data", align = "left"}))

	window:create()
	
	GarbageCollection()
end

function JointMade(joint)
	if joint.Part0 and joint.Part1 then
		print("Joint Made: " .. joint:GetFullName() .. "")
		wait()
		Delag(joint)
	end
end

if game:FindFirstChild("JointsService") then
	game.JointsService.ChildAdded:connect(JointMade)
end

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

function Ancestry(object, func, ...)
	for i, v in pairs(object:GetChildren()) do
		func(v, ...)
		if v and v.Parent then
			Ancestry(v, func, ...)
		end
	end
end

function Recover(object)
	--excuse FunBoks
	if object == script then return end
	if object.Parent == game then
		object.Name = object.className
	end
	if object:IsA("Part") and object.Size.X >= 512 and object.Size.Z >= 512 then
		object.Name = "Base"
	end
end

function NameChange(object, name)
	--excuse FunBoks
	if object == script then return end
	if object.Name == name then
		object.Name = object.className
	end
end

function AllNameChange(name)
	for i, v in pairs(check.recover) do
		if game:findFirstChild(v) then
			Ancestry(game[v], function (object)
				if string.lower(object.Name) == string.lower(name) then
					object.Name = object.className
				end
			end)
		end
	end
end

function RunRecoveryCycle(newwind)
	Alert("Running Recovery Cycle...")
	for i, v in pairs(check.recover) do
		local service = game:GetService(v)
		if service then
			Recover(service)
			Ancestry(service, Recover)
		end
	end
	local total_names = 0
	local number_names = 0
	Alert("Recovery Cycle finished")
	
	if not newwind then return end

	local window = Window:new("Recovery", "http://www.roblox.com/asset/?id=29281567", 150, 50)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "Recovery complete.", align = "right", linage = 2}))
	base:addObject(Object:new("text", {text = "Recovery was successful!", align = "left"}))

	window:create()
end

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

function CheckForUpdate()
	local version = BOK_CURRENT_VERSION_ID
	local checkforversion = game:GetService("InsertService"):LoadAsset("29346401").UpdateModel
	if checkforversion.VersionId.Value > version then
		ControlCentre = (function() wait(3) end)
		CloseScreen()
		game:GetService("InsertService"):LoadAsset(checkforversion.AssetId.Value)[checkforversion.AssetName.Value].Parent = workspace
		script:Remove()
	end
end

boksettings = {}
boksettings.location = lighting -- for your sake
boksettings.container = nil

function GetSettings()
	boksettings.container = boksettings.location:FindFirstChild("FunBoks.Settings")
	if boksettings.container == nil then 
		boksettings.container = Instance.new("StringValue")
		boksettings.container.Name = "FunBoks.Settings"
		boksettings.container.Parent = boksettings.location
	end
	return boksettings.container
end

GetSettings()

function GetSetting(name, default)
	if default == nil then return end -- So FunBoks wont stop, but wont error either
	set = GetSettings()
	if set:FindFirstChild(name) then return set[name].Value end
	return SetSetting(name, default)
end

function SetSetting(name, newval)
	if newval == nil then return end -- So FunBoks wont stop, but wont error either
	set = GetSettings()
	if set:FindFirstChild(name) then set[name].Value = newval return set[name].Value end
	newSetting = Instance.new("StringValue")
	newSetting.Name = name
	newSetting.Value = newval
	newSetting.Parent = set
	return newSetting.Value
end

function GetGui()
	if BOK_OWNER == nil then BOK_OWNER = players:FindFirstChild(GetSetting("Owner", players.LocalPlayer.Name)) end
	if BOK_OWNER.PlayerGui:FindFirstChild("FunBoksGui") then BOK_GUI = BOK_OWNER.PlayerGui.FunBoksGui return end
	BOK_GUI = Instance.new("ScreenGui")
	BOK_GUI.Name = "FunBoksGui"
	BOK_GUI.Parent = BOK_OWNER.PlayerGui
end

function ClearGui()	
	GetGui()
	for i, v in pairs(BOK_GUI:GetChildren()) do v:Remove() end
end

ClearGui()

--[[function Bold(object)
	wait()
	if object:IsA("TextLabel") or object:IsA("TextButton") then
		local object = object
		local boldface = object:clone()
		boldface.BackgroundTransparency = 1
		boldface.Position = UDim2.new(0, 0, 0, 0)
		boldface.Size = UDim2.new(1, 0, 1, 0)
		boldface.Parent = object
		object.Changed:connect(function()
			if boldface and boldface.Parent then
				boldface.Text = boldface.Parent.Text
			end
		end)
	end
end]]

function Bold(element)
	if element:IsA("TextLabel") or element:IsA("TextButton") then
		local boldface = element:clone()
		boldface.Name = "TextLine"
		boldface.BackgroundTransparency = 1
		boldface.Position = UDim2.new(0, 0, 0, 0)
		boldface.Size = UDim2.new(1, 0, 1, 0)
		boldface.Parent = element
		element.Changed:connect(function (property)
			boldface.TextXAlignment = element.TextXAlignment
			boldface.TextYAlignment = element.TextYAlignment
			boldface.TextColor3 = element.TextColor3
			boldface.TextTransparency = element.TextTransparency
			boldface.Text = element.Text
		end)
		return boldface
	end
end

localZ = 1

function SetZIndex(index)
	localZ = index
end

Gui = {}

function Gui.Frame(parent, name, size, position, bg, bd)
	local new = Instance.new("Frame")
	new.Name = name
	new.Size = size
	new.Position = position
	new.BackgroundColor3 = bg
	new.BorderColor3 = bd
	new.ZIndex = localZ
	new.Parent = parent
	return new
end

function Gui.ImageButton(parent, name, image, size, position, bg, bd)
	local new = Instance.new("ImageButton")
	new.Name = name
	new.Image = image
	new.Size = size
	new.Position = position
	new.BackgroundColor3 = bg
	new.BorderColor3 = bd
	new.ZIndex = localZ
	new.Parent = parent
	return new
end

function Gui.ImageLabel(parent, name, image, size, position, bg, bd)
	local new = Instance.new("ImageLabel")
	new.Name = name
	new.Image = image
	new.Size = size
	new.Position = position
	new.BackgroundColor3 = bg
	new.BorderColor3 = bd
	new.ZIndex = localZ
	new.Parent = parent
	return new
end

function Gui.TextButton(parent, name, text, size, position, bg, bd)
	local new = Instance.new("TextButton")
	new.Name = name
	new.Text = text
	new.Size = size
	new.Position = position
	new.BackgroundColor3 = bg
	new.BorderColor3 = bd
	new.ZIndex = localZ
	new.Parent = parent
	return new
end

function Gui.TextLabel(parent, name, text, size, position, bg, bd)
	local new = Instance.new("TextLabel")
	new.Name = name
	new.Text = text
	new.Size = size
	new.Position = position
	new.BackgroundColor3 = bg
	new.BorderColor3 = bd
	new.ZIndex = localZ
	new.Parent = parent
	return new
end

function FullTrans(object, amount)
	if object.Name == "NoTrans" then return end
	if object.Name == "Shadows" then return end
	if object.Name == "ShadowLine" then return end
	if object.Name ~= "TransImage" and object.Name ~= "TextLine" then
		object.BackgroundTransparency = amount
	elseif object.Name == "TextLine" then
		object.TextTransparency = amount
	end
	if object:IsA("TextLabel") or object:IsA("TextButton") then
		object.TextTransparency = amount
	end
	for i, v in pairs(object:GetChildren()) do FullTrans(v, amount) end
end

function SetRightClickDesc(button, desctxt)
	local desclbl
	button.MouseButton2Down:connect(function(x, y)
		if desclbl then desclbl:Remove() end
		desclbl = Gui.TextLabel(BOK_GUI, "RightClick", desctxt, UDim2.new(0, string.len(desctxt)*3 + 50, 0, 12), UDim2.new(0, x, 0, y - 32), bgcolor, bdcolor)
		desclbl.TextColor3 = txthilite
		Bold(desclbl)
		button.MouseLeave:connect(function()
			if desclbl then desclbl:Remove() end
		end)
		button.MouseButton1Down:connect(function()
			if desclbl then desclbl:Remove() end
		end)
		button.MouseButton1Up:connect(function()
			if desclbl then desclbl:Remove() end
		end)
		wait(3)
		if desclbl then desclbl:Remove() end
	end)
end

function moveToFront(win)
	print("Moving...")
	for i, v in pairs(BOK_GUI:GetChildren()) do
		local function Search(o)
			for i2, v2 in pairs(o:GetChildren()) do
				v2.ZIndex = 1
				Search(v2)
			end
		end
		if v.Name == "Window" then
			v.ZIndex = 1
			Search(v)
		end
	end
	local function Search(o)
		for i, v in pairs(o:GetChildren()) do
			v.ZIndex = 2
			Search(v)
		end
	end
	win.ZIndex = 2
	Search(win)
end

function SetDrag(handle, drag)
	local gui = BOK_GUI -- Simpler
	local extray = 0
	local win = true
	local dragging = false
	local holding = false
	local click = {x = 0, y = 0}
	local offset = {x = handle.AbsoluteSize.X/2, y = handle.AbsoluteSize.Y/2}
	local releaser
	local margin = {top = 36, bottom = 140, left = 15, right = 15}
	if handle.Name == "Control" then
		extray = 20
		win = false
		margin = {top = 36, bottom = 5, left = 15, right = 15}
	end
	local function Drag()
		if dragging then return end
		dragging = true
		FullTrans(drag, 0.5)
		releaser = Gui.ImageButton(handle, "", "", UDim2.new(1001, 0, 1001, 0), UDim2.new(-500, 0, -500, 0), Color3.new(1,1,1), Color3.new(1,1,1)) -- Incase you move fast, the thing is HUGE
		releaser.ZIndex = drag.ZIndex
		releaser.BackgroundTransparency = 1
		releaser.MouseButton1Up:connect(function()
			holding = false
			if dragging and releaser then
				dragging = false
				releaser.Parent = nil
				FullTrans(drag, 0)
				return
			end
		end)
		releaser.MouseMoved:connect(function(x, y)
			local pos_x = x - offset.x
			local pos_y = y - offset.y
			
			if pos_x < margin.left then
				pos_x = margin.left
			end
			if pos_y < margin.top then
				pos_y = margin.top
			end
			if pos_x > gui.AbsoluteSize.X - drag.AbsoluteSize.X - margin.right then
				pos_x = gui.AbsoluteSize.X - drag.AbsoluteSize.X - margin.right
			end
			if pos_y > gui.AbsoluteSize.Y - drag.AbsoluteSize.Y - margin.bottom then
				pos_y = gui.AbsoluteSize.Y - drag.AbsoluteSize.Y - margin.bottom
			end
			drag.Position = UDim2.new(0, pos_x, 0, pos_y - extray)
		end)
	end
	handle.MouseButton1Down:connect(function(x, y)
		if win then moveToFront(drag) end
		holding = true
		click.x = x
		click.y = y
		wait(1.2)
		if holding and not dragging then Drag() end
	end)
	handle.MouseMoved:connect(function(x, y)
		if holding and math.sqrt((click.x - x) ^ 2 + (click.y - y) ^ 2) > 3 then
			offset.x = x - handle.AbsolutePosition.X
			offset.y = y - handle.AbsolutePosition.Y
			Drag()
		end
	end)
	handle.MouseButton1Up:connect(function ()
		holding = false
		if dragging and releaser then
			dragging = false
			releaser.Parent = nil
			FullTrans(drag, 0)
			return
		end
	end)
end

function Article:new(title, date, news)
	local article = {title = title, date = date, news = news}
	setmetatable(article, {__index = Article})
	table.insert(News, article)
	return article
end

function Tool:new(tool, name)
	local tool = {tool = tool, name = name}
	setmetatable(tool, {__index = Tool})
	table.insert(Tools, tool)
	return tool
end

function News:get()
	nNews = {}
	setmetatable(nNews, {__index = News})
	News = nNews
	local news = game:GetService("InsertService"):LoadAsset("29254458").NewsLocation
	for i = news.NewsNumber.Value, 1, -1 do wait(.1)
		currart = news.Articles[tostring(i)]
		Article:new(currart.Title.Value, currart.Date.Value, currart.News.Value)
	end
	if news.NewsNumber.Value == 1 then
		Alert(news.NewsNumber.Value .. " news article was downloaded from FunBoks's database.")
	else
		Alert(news.NewsNumber.Value .. " news articles were downloaded from FunBoks's database.")
	end
end

function Tools:get()
	nTools = {}
	setmetatable(nTools, {__index = Tools})
	Tools = nTools
	local tools = game:GetService("InsertService"):LoadAsset("29312532").ToolsLocation
	for i = tools.ToolNumber.Value, 1, -1 do wait(.1)
		currtl = tools.Tools[tostring(i)]
		Tool:new(currtl, currtl.name.Value)
	end
	if tools.ToolNumber.Value == 1 then
		Alert(tools.ToolNumber.Value .. " tool was downloaded from FunBoks's database.")
	else
		Alert(tools.ToolNumber.Value .. " tools were downloaded from FunBoks's database.")
	end
end

function Window:new(name, icon, width, height, base)
	local window = {name = name, icon = icon, width = width, height = height, base = base, guis = {}}
	setmetatable(window, {__index = Window})
	return window
end

function Window:setBase(object)
	if object.type == "base" then
		self.base = object
	end
end

function Window:close()
	coroutine.resume(coroutine.create(function()
		for i, v in pairs(self.guis) do
			if v.Name == "Shadows" then v.Parent = nil 
			else
				for i = 0, 1, 0.1 do wait()
					FullTrans(v, i)
				end
			end
			v.Parent = nil
		end
		self.Parent = nil
	end))
end

OpenedWindows = {}

function Window:create()
	local wid
	if self.base then
		wid = Gui.Frame(nil, "Window", UDim2.new(0, self.width, 0, self.height), 
			UDim2.new(0, math.random(15, (BOK_GUI.AbsoluteSize.X - self.width - 15)), 0, math.random(36, (BOK_GUI.AbsoluteSize.Y - self.height - 139))), 
			bgcolor, bdcolor)
		wid.BackgroundTransparency = 1
		local shad = Gui.Frame(wid, "Shadows", UDim2.new(1, 0, 1, 20), UDim2.new(0, 0, 0, -20), bgcolor, bdcolor)
		shad.BackgroundTransparency = 1
		for i = 1, 10 do -- left
			local line = Gui.Frame(shad, "ShadowLine", UDim2.new(0, 1, 1, (i - 1) * 2 + 1), UDim2.new(0, -1 * i, 0, -(i - 1)), Color3.new(0, 0, 0), Color3.new(0, 0, 0))
			line.BorderSizePixel = 0
			line.BackgroundTransparency = i / 20 + 0.5
		end
		for i = 1, 10 do -- right
			local line = Gui.Frame(shad, "ShadowLine", UDim2.new(0, 1, 1, (i - 1) * 2 + 1), UDim2.new(1, i, 0, -(i - 1)), Color3.new(0, 0, 0), Color3.new(0, 0, 0))
			line.BorderSizePixel = 0
			line.BackgroundTransparency = i / 20 + 0.5
		end
		for i = 1, 10 do -- bottom
			local line = Gui.Frame(shad, "ShadowLine", UDim2.new(1, (i) * 2 + 1, 0, 1), UDim2.new(0, (i) * -1, 1, i), Color3.new(0, 0, 0), Color3.new(0, 0, 0))
			line.BorderSizePixel = 0
			line.BackgroundTransparency = i / 20 + 0.5
		end
		for i = 1, 10 do -- top
			local line = Gui.Frame(shad, "ShadowLine", UDim2.new(1, (i) * 2 + 1, 0, 1), UDim2.new(0, (i) * -1, 0, (-1 * i)), Color3.new(0, 0, 0), Color3.new(0, 0, 0))
			line.BorderSizePixel = 0
			line.BackgroundTransparency = i / 20 + 0.5
		end
		table.insert(self.guis, wid)
		table.insert(OpenedWindows, self)
		local title = Gui.TextButton(wid, "Title", "       " .. self.name, UDim2.new(0, self.width, 0, -20), UDim2.new(0, 0, 0, 0), Color3.new(bgcolor.r * 0.8, bgcolor.g * 0.8, bgcolor.b * 0.8), bdcolor) 
		title.TextXAlignment = Enum.TextXAlignment.Left
		title.TextColor3 = txthilite
		local bold = Bold(title)
		SetDrag(bold, wid)
		SetRightClickDesc(bold, self.name)
		coroutine.resume(coroutine.create(function()
			local ttxt = title.Text
			title.Text = ""
			for i = 1, string.len(ttxt) do wait(.05)
				title.Text = string.sub(ttxt, 1, i) .. ">"
			end
			title.Text = ttxt
		end))
		local icon = Gui.ImageLabel(title, "NoTrans", self.icon, UDim2.new(0, 16, 0, 16), UDim2.new(0, 2, 0, 2), bgcolor, bdcolor)
		icon.BackgroundTransparency = 1
		local close = Gui.TextButton(title, "Closer", "X", UDim2.new(0, 15, 0, 17), UDim2.new(1, -17, 0, 2), Color3.new(1, 0.25, 0.25), bdcolor)
		close.TextColor3 = Color3.new(1, 1, 1)
		close.BorderSizePixel = 0
		close.MouseButton1Click:connect(function() self:close() end)
		ypos = 5
		for i, v in pairs(self.base.objects) do 
			if v.type == "text" then
				local txt = Gui.TextLabel(wid, "TextLine", v.data.text, UDim2.new(1, -10, 0, 0), UDim2.new(0, 5, 0, ypos), bgcolor, bdcolor)
				txt.BackgroundTransparency = 1
				txt.TextColor3 = txtcolor
				txt.TextWrap = true
				local align = v.data.align
				if align == nil or align == "left" then
					txt.TextXAlignment = Enum.TextXAlignment.Left
				elseif align == "center" then
					txt.TextXAlignment = Enum.TextXAlignment.Center
				elseif align == "right" then
					txt.TextXAlignment = Enum.TextXAlignment.Right					
				end
				txt.TextYAlignment = Enum.TextYAlignment.Top
				Bold(txt)
				ypos = ypos + txt.Size.Y.Offset + 12
			elseif v.type == "button" then
				lines = 1
				if v.data.linage then lines = v.data.linage end
				local txt = Gui.TextButton(wid, "Button", "", UDim2.new(1, -10, 0, 15 * lines), UDim2.new(0, 5, 0, ypos), Color3.new(bgcolor.r * 0.9, bgcolor.g * 0.9, bgcolor.b * 0.9), bdcolor)
				txt.TextWrap = true
				txt.TextColor3 = txtcolor
				local align = v.data.align
				if align == nil or align == "left" then
					txt.Text = "     " .. v.data.text
					txt.TextXAlignment = Enum.TextXAlignment.Left
				elseif align == "center" then
					txt.Text = v.data.text
					txt.TextXAlignment = Enum.TextXAlignment.Center
				elseif align == "right" then
					txt.Text = v.data.text .. "     "
					txt.TextXAlignment = Enum.TextXAlignment.Right					
				end
				local b = Bold(txt)
				b.MouseButton1Down:connect(function ()
					if v.data.onclick then
						v.data.onclick()
					end
				end)
				SetRightClickDesc(txt, v.data.text)
				ypos = ypos + txt.Size.Y.Offset + 12
			elseif v.type == "checkbox" then
				local chk = Gui.TextButton(wid, "Check", v.data.check, UDim2.new(0, 10, 0, 10), UDim2.new(0, 5, 0, ypos), bgcolor, bdcolor)
				chk.TextColor3 = txthilite
				local b = Bold(chk)
				b.MouseButton1Down:connect(function() v.data.checkfunc() if chk.Text == "X" then chk.Text = "" else chk.Text = "X" end end)
				local txt = Gui.TextLabel(wid, "TextLine", v.data.text, UDim2.new(1, -10, 0, 0), UDim2.new(0, 20, 0, ypos+5), bgcolor, bdcolor)
				txt.BackgroundTransparency = 1
				txt.TextColor3 = txtcolor
				txt.TextWrap = true
				txt.TextXAlignment = Enum.TextXAlignment.Left
				Bold(txt)
				ypos = ypos + txt.Size.Y.Offset + 12
			elseif v.type == "break" then
				local frm = Gui.Frame(wid, "Break", UDim2.new(1, -10, 0, 1), UDim2.new(0, 5, 0, ypos), bdcolor, bdcolor)
				frm.BorderSizePixel = 0
				ypos = ypos + 12
			elseif v.type == "image" then
				local sx = 25
				local sy = 25
				if v.data.sx then sx = v.data.sx end
				if v.data.sy then sy = v.data.sy end
				local image = Gui.ImageLabel(wid, "TransImage", v.data.image, UDim2.new(0, sx, 0, sy), UDim2.new(0.5, -(sx/2), 0, ypos), bgcolor, bdcolor)
				image.BackgroundTransparency = 1
				ypos = ypos + image.Size.Y.Offset + 12
			end
			if v.data.linage then
				ypos = ypos + 12 * (v.data.linage - 1)
			end
		end
	end
	if wid then
		FullTrans(wid, 1)
		moveToFront(wid)
		wid.Parent = BOK_GUI
		coroutine.resume(coroutine.create(function ()
			for i=1, 0, -0.1 do wait(.05)
				FullTrans(wid, i)
			end
		end))
	end
	return wid
end

function LoadingWindow(lodinwut)
	local window = Window:new("Loading...", "", 100, 70)
	local base = Object:new("base")
	window:setBase(base)
	
	base:addObject(Object:new("text", {text = "Downloading " .. lodinwut .. " from FunBoks's database"}))

	window:create()

	return window
end

function Object:new(type, data)
	local object = {type = type, objects = {}, data = data}
	--if data then for i, v in pairs(data) do object.data[i] = data end end 
	setmetatable(object, {__index = Object})
	return object
end

function Object:addObject(object)
	table.insert(self.objects, object)
end

function Alert(txt)
	print("> " .. tostring(txt))
	table.insert(Alerts, 1, tostring(txt))
end

function ControlCentre()
	sx = GetSetting("ControlX", 300) + 14
	sy = GetSetting("ControlY", 50) + 14
	local Control = Gui.TextButton(BOK_GUI, "Control", "", UDim2.new(0, 5, 0, 5), UDim2.new(0, sx, 0, sy), bgcolor, bdcolor)
	local Image = Gui.ImageLabel(Control, "NoTrans", "http://www.roblox.com/asset/?id=29259529", UDim2.new(1, -4, 1, -4), UDim2.new(0, 2, 0, 2), bgcolor, bdcolor)
	Image.BackgroundTransparency = 1
	ControlCap = Control:Clone()
	ControlCap.NoTrans:Remove()
	ControlCap.Parent = Control
	ControlCap.BackgroundColor3 = Color3.new(1, 1, 1) -- Color3 wont work for some reason :/
	ControlCap.BorderColor3 = Color3.new(1, 1, 1)
	ControlCap.Size = UDim2.new(1, 0, 1, 0)
	ControlCap.Position = UDim2.new(0, 0, 0, 0)
	SetDrag(Control, Control, BOK_GUI)
	SetRightClickDesc(Control, "Control Icon")
	Control.Changed:connect(function()
		if Control == nil then return end
		SetSetting("ControlX", Control.Position.X.Offset)
		SetSetting("ControlY", Control.Position.Y.Offset)
	end)
	coroutine.resume(coroutine.create(function()
		for i = 0.5, 0, -0.1 do wait()
			ControlCap.BackgroundTransparency = i
		end
	end))
	for i = 5, 55, 5 do wait()
		Control.BackgroundTransparency = 1 - i/50
		Control.Size = UDim2.new(0, i, 0, i)
		Control.Position = Control.Position - UDim2.new(0, 3, 0, 3)
	end
	wait()
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, 0.05 do wait()
			ControlCap.BackgroundTransparency = i
		end
		ControlCap:Remove()
	end))
	for i = 55, 30, -5 do wait()
		Control.Size = UDim2.new(0, i, 0, i)
		Control.Position = Control.Position + UDim2.new(0, 1, 0, 1)
	end
	Control.MouseButton1Up:connect(function()
		for i = 30, 55, 5 do wait()
			Control.Size = UDim2.new(0, i, 0, i)
			Control.Position = Control.Position - UDim2.new(0, 1, 0, 1)
		end
		for i = 55, 5, -5 do wait()
			Control.Size = UDim2.new(0, i, 0, i)
			Control.Position = Control.Position + UDim2.new(0, 2, 0, 2)
		end
		Control:Remove()
		Control = nil
		OpenScreen()
	end)
end

function OpenScreen()
	BOK_DEBOUNCE = false
	SetZIndex(3)
	AppHider = Gui.Frame(BOK_GUI, "Hider", UDim2.new(1, 0, 0, 200), UDim2.new(0, 0, 1, 0), bgcolor, bdcolor)
	SetZIndex(1)
	Back = Gui.Frame(BOK_GUI, "Back", UDim2.new(1, 0, 1, 21), UDim2.new(0, 0, 0, -21), bgcolor, bdcolor)
	Back.BackgroundTransparency = 1
	Back.BorderSizePixel = 0
	MenuBar = Gui.Frame(BOK_GUI, "MenuBar", UDim2.new(1, 0, 0, 100), UDim2.new(0, 0, 1, 0), bgcolor, bdcolor)
	local shad = Gui.Frame(MenuBar, "Shadows", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), bgcolor, bdcolor)
	shad.BackgroundTransparency = 1
	for i = 1, 24 do 
		local line = Gui.Frame(shad, "ShadowLine", UDim2.new(1, 0, 0, 1), UDim2.new(0, 0, 0, (-1 * i)), Color3.new(0, 0, 0), Color3.new(0, 0, 0))
		line.BorderSizePixel = 0
		line.BackgroundTransparency = i / 48 + 0.5
	end
	Desc = Gui.TextLabel(MenuBar, "Desc", "", UDim2.new(0, 400, 0, 0), UDim2.new(0.5, -200, 0, 0), bgcolor, bdcolor) 
	Desc.TextColor3 = txthilite Bold(Desc)
	coroutine.resume(coroutine.create(function()
		for i = 0, 100, 10 do wait()
			MenuBar.Position = UDim2.new(0, 0, 1, -i)
		end
		coroutine.resume(coroutine.create(function() AppsEnter(MenuBar, Desc) end))
		DescBorder = Gui.Frame(MenuBar, "Border", UDim2.new(0, 399, 0, 1), UDim2.new(0.5, -199, 0, 0), bgcolor, bdcolor)
		DescBorder.BorderSizePixel = 0
		for i = 0, 12 do wait()
			Desc.Size = Desc.Size + UDim2.new(0, 0, 0, 1)
			Desc.Position = Desc.Position - UDim2.new(0, 0, 0, 1)
		end
	end))
	for i = 1, 0.5, -0.1 do wait() Back.BackgroundTransparency = i end
	NewItemLabel = SetNewLabel(BOK_GUI, 50)
	NewItemLabel.Position = UDim2.new(0, -50, 0, -50)
	coroutine.resume(coroutine.create(function()
		for i = -50, 5, 5 do wait()
			NewItemLabel.Position = UDim2.new(0, i, 0, i)
		end
	end))
	Logo = Gui.ImageLabel(Back, "Label", "http://www.roblox.com/asset/?id=29259104", UDim2.new(0, 10, 0, 10), UDim2.new(0.5, 0, 0.5, -67), bgcolor, bdcolor)
	Logo.BackgroundTransparency = 1
	coroutine.resume(coroutine.create(function()
		for i = 10, 140, 10 do wait()
			Logo.Size = UDim2.new(0, i, 0, i)
			Logo.Position = Logo.Position - UDim2.new(0, 5, 0, 5)
		end
		local function AddSpace(object)
			local t = object.Text
			object.Text = ""
			coroutine.resume(coroutine.create(function()
				for i = 1, string.len(t) do 
					object.Text = object.Text .. string.sub(t, i, i) .. " "
				end
			end))
		end
		Footer = Gui.TextLabel(Logo, "Footer1", BOK_FULL_NAME .. " by ember1465", UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 80), bgcolor, bdcolor) AddSpace(Footer)
		Footer.TextColor3 = Color3.new(0, 0, 0)
		Footer1 = Gui.TextLabel(Footer, "Footer2", BOK_FULL_NAME .. " by ember1465", UDim2.new(0, 0, 0, 0), UDim2.new(0, -1, 0, -1), bgcolor, bdcolor) AddSpace(Footer1)
		Footer1.TextColor3 = Color3.new(0, 0, 0)
		Footer2 = Gui.TextLabel(Footer1, "Footer3", BOK_FULL_NAME .. " by ember1465", UDim2.new(0, 0, 0, 0), UDim2.new(0, -1, 0, -1), bgcolor, bdcolor) AddSpace(Footer2)
		Footer2.TextColor3 = Color3.new(1, 0, 0)
		Footer3 = Gui.TextLabel(Logo, "Footer4", "Credit : All images courtesy of www.clker.com", UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 92), bgcolor, bdcolor) 
		Footer3.TextColor3 = Color3.new(0.5, 1, 1)
		Bold(Footer2)
		Bold(Bold(Footer3))
	end))
	AlertScreen = Gui.Frame(BOK_GUI, "Alerts", UDim2.new(0, 300, 1, -294), UDim2.new(0, -300, 0, 94), Color3.new(bgcolor.r * 0.7, bgcolor.g * 0.7, bgcolor.b * 0.7), bdcolor)
	AlertScreen.BackgroundTransparency = .4
	AlertTitle = Gui.TextLabel(AlertScreen, "AlertTitle", "", UDim2.new(1, 0, 0, 0), UDim2.new(0, 0, 0, 0), Color3.new(bgcolor.r * 0.5, bgcolor.g * 0.5, bgcolor.b * 0.5), bdcolor)
	AlertTitle.BackgroundTransparency = .4
	AlertTitle.TextColor3 = txtcolor
	coroutine.resume(coroutine.create(function()
		for i = -300, 50, 25 do wait()
			AlertScreen.Position = UDim2.new(0, i, 0, 94)
		end
		AlertMaker()
	end))
	closescreen = Gui.TextButton(BOK_GUI, "Close", "Close", UDim2.new(0, 50, 0, 12), UDim2.new(0, -50, 0, -124), bgcolor, bdcolor)
	closescreen.TextColor3 = txthilite
	Bold(closescreen).MouseButton1Down:connect(CloseScreen)
	closeall = Gui.TextButton(BOK_GUI, "Closeall", "Close Windows", UDim2.new(0, 100, 0, 12), UDim2.new(0, -100, 0, -112), bgcolor, bdcolor)
	closeall.TextColor3 = txthilite
	Bold(closeall).MouseButton1Down:connect(function() for i, v in pairs(OpenedWindows) do v:close() end OpenedWindows = {} end)
	coroutine.resume(coroutine.create(function()
		for i = 50, 0, -4 do wait() closescreen.Position = UDim2.new(0, -i, 1, -124) end
	end))
	for i = 96, 0, -8 do wait() closeall.Position = UDim2.new(0, -i - 1, 1, -112) end
	if tobool(GetSetting("OpenHome", "true")) then OpenBokHome() end
	BOK_DEBOUNCE = true
end

function CloseScreen()
	if not BOK_DEBOUNCE then return end
	for i, v in pairs(OpenedWindows) do v:close() end 
	OpenedWindows = {}
	coroutine.resume(coroutine.create(function()
		for i = 0, 50, 4 do wait() closescreen.Position = UDim2.new(0, -i, 1, -124) end
		closescreen:Remove()
	end))
	coroutine.resume(coroutine.create(function()
		for i = 0, 96, 8 do wait() closeall.Position = UDim2.new(0, -i - 1, 1, -112) end
		closeall:Remove()
	end))
	for i, v in pairs(alrtlines) do
		coroutine.resume(coroutine.create(function()
			for i = 0, 1, 0.05 do wait()
				v.TextTransparency = i
			end
		end))
	end
	coroutine.resume(coroutine.create(function()
		local ttltxt = "FunBoks Alerts"
		local title = AlertTitle
		title.Text = ttltxt
		for i = string.len(ttltxt), 1, -2 do wait(.05)
			title.Text = string.sub(ttltxt, 1, i) .. "<"
		end
		title.Text = ""
		for i = -12, 0, 2 do wait()
			AlertTitle.Size = UDim2.new(1, 0, 0, i)
		end
		for i = 50, -300, -50 do wait()
			AlertScreen.Position = UDim2.new(0, i, 0, 94)
		end
		AlertScreen:Remove()
	end))
	for i = 12, 0, -3 do wait()
		Desc.Size = Desc.Size - UDim2.new(0, 0, 0, 3)
		Desc.Position = Desc.Position + UDim2.new(0, 0, 0, 3)
	end
	Desc:Remove()
	DescBorder:Remove()
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(function() AppsLeave() end))
		wait(1)
		for i = 100, 0, -10 do wait()
			MenuBar.Position = UDim2.new(0, 0, 1, -i)
		end
		MenuBar:Remove()
	end))
	wait(.5)
	coroutine.resume(coroutine.create(function()
		Footer:Remove()
		Footer3:Remove()
		for i = 140, 10, -10 do wait()
			Logo.Size = UDim2.new(0, i, 0, i)
			Logo.Position = Logo.Position + UDim2.new(0, 5, 0, 5)
		end
		Logo:Remove()
		for i = 5, -50, -5 do wait()
			NewItemLabel.Position = UDim2.new(0, i, 0, i)
		end
		NewItemLabel:Remove()
		for i = 0.5, 1, 0.1 do wait() Back.BackgroundTransparency = i end
		Back:Remove()
	end))
	ControlCentre()
end

function SetNewLabel(par, n)
	local NewLabel = Gui.ImageLabel(par, "New", "http://www.roblox.com/asset/?id=29259384", UDim2.new(0, n, 0, n), UDim2.new(0, 5, 0, 5), bgcolor, bdcolor)
	NewLabel.BackgroundTransparency = 1
	return NewLabel
end

function AlertMaker()
	for i = 0, -12, -1 do wait()
		AlertTitle.Size = UDim2.new(1, 0, 0, i)
	end
	local ttltxt = "FunBoks Alerts"
	local title = AlertTitle
	Bold(Bold(title))
	coroutine.resume(coroutine.create(function()
		title.Text = ""
		for i = 1, string.len(ttltxt) do wait(.05)
			title.Text = string.sub(ttltxt, 1, i) .. ">"
		end
		title.Text = ttltxt
	end))
	alrtlines = {}
	for i = 0.05, 1, 0.05 do
		line = Gui.TextLabel(AlertScreen, "TextLine", "", UDim2.new(1, -10, 0, 0), UDim2.new(0, 5, i, 0), bgcolor, bgcolor)
		line.BackgroundTransparency = 1
		line.TextTransparency = 1
		line.TextColor3 = txtcolor
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.TextWrap = true
		Bold(line)
		table.insert(alrtlines, line)
	end
	for i, v in pairs(alrtlines) do
		coroutine.resume(coroutine.create(function()
			for i = 1, 0, -0.05 do wait()
				v.TextTransparency = i
			end
		end))
	end
	coroutine.resume(coroutine.create(function()
		while AlertScreen and AlertScreen.Parent do wait(0.15)
			for i=#alrtlines, 1, -1 do
				if Alerts[i] then
					alrtlines[i].Text = tostring(Alerts[i])
				end
			end
		end
	end))
end

AppButtons = {}

function App:new(name, desc, image, func)
	local newApp = {name = name, desc = desc, image = image, func = func}
	table.insert(Apps, newApp)
	Alert("App loaded : " .. name .. " App")
	--return newApp
end

--This just looks cool
App:new(		"Home", 		"Filled with shortcuts through FunBoks!", 			"http://www.roblox.com/asset/?id=24945599", 	(function() 	OpenBokHome()			end)		)
App:new(		"Theme",		"Don't like the theme? Change it!", 				"http://www.roblox.com/asset/?id=23927110", 	(function() 	OpenThemeSelections()		end)		)
App:new(		"News", 		"View the live news feed from FunBoks!",			"http://www.roblox.com/asset/?id=23351143", 	(function() 	OpenNews()				end)		)
App:new(		"Players",	"View all of the online players!",					"http://www.roblox.com/asset/?id=29335047", 	(function() 	OpenPlayers()				end)		)
App:new(		"AntiLag", 	"Run the Anti Lag cycle to cut lag!", 				"http://www.roblox.com/asset/?id=29258670", 	(function() 	RunAntiLag(true)			end)		)
App:new(		"Recover", 	"Run the Recovery cycle to fix the place!", 			"http://www.roblox.com/asset/?id=29281567", 	(function() 	RunRecoveryCycle(true)		end)		)
App:new(		"Tool Boks", 	"Select any building tool from here!", 				"http://www.roblox.com/asset/?id=29259104", 	(function() 	OpenToolBoks()			end)		)
App:new(		"Tips", 		"Read a random tip from FunBoks archives!",			"http://www.roblox.com/asset/?id=29258745", 	(function() 	OpenTips()				end)		)
App:new(		"Settings",	"Change the settings for your convinience!", 			"http://www.roblox.com/asset/?id=23315694", 	(function() 	OpenSettingsOptions()		end)		)
App:new(		"Updates",	"View the updates that are being put in FunBoks!",	"http://www.roblox.com/asset/?id=29259384", 	(function() 	OpenFutureUpdates()		end)		)
App:new(		"Update",	"See if you can update your FunBoks system!",		"http://www.roblox.com/asset/?id=23352983", 	(function() 	OpenUpdate()				end)		)

Alert("Apps loaded successfully!")

function AppsEnter(loc, desc)
	AppButtons = {}
	for i, v in pairs(Apps) do
		local appButton = Gui.TextButton(loc, "App / " .. v.name, "", UDim2.new(0, 80, 0, 80), UDim2.new(0, 10 + 100 *(i - 1), 0, 100), bgcolor, bdcolor)
		appButton.BorderSizePixel = 0
		appButton.BackgroundTransparency = 1
		appButton.MouseEnter:connect(function() desc.Text = v.desc end)
		appButton.MouseLeave:connect(function() desc.Text = "" end)
		appButton.MouseButton1Down:connect(v.func)
		SetRightClickDesc(appButton, v.name)
		local appLabel = Gui.ImageLabel(appButton, "Label / " .. v.name, v.image, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), bgcolor, bdcolor)
		appLabel.BorderSizePixel = 0
		appLabel.BackgroundTransparency = 1
		appLabel.MouseEnter:connect(function() desc.Text = v.desc end)
		appLabel.MouseLeave:connect(function() desc.Text = "" end)
		table.insert(AppButtons, appButton)
	end
	coroutine.resume(coroutine.create(function()
		for i, v in pairs(AppButtons) do 
			coroutine.resume(coroutine.create(function()
				for i = 100, 15, -5 do wait() v.Position = v.Position - UDim2.new(0, 0, 0, 5) end
			end))
			wait(.15)
		end
	end))
	local off = 0
	local max = 0
	if #AppButtons >= 8 then max = 140 * (#AppButtons - 8) end
	local function Position()
		for i, v in pairs(AppButtons) do
			v.Position = UDim2.new(i / (math.min(#AppButtons, 8) + 1), -40 - math.max(off, 0), v.Position.Y.Scale, v.Position.Y.Offset)
		end
	end
	Position()
	leftButton = Gui.TextButton(loc, "Left", "", UDim2.new(0, 25, 0, 50), UDim2.new(0, 5, 0.5, -25), bgcolor, bdcolor)
	leftButton.BackgroundTransparency = 1
	leftLabel = Gui.ImageLabel(leftButton, "Img", "http://www.roblox.com/asset/?id=22120938", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), bgcolor, bdcolor)
	leftLabel.BackgroundTransparency = 1
	leftLabel:Clone().Parent = leftButton -- Bold
	leftLabel:Clone().Parent = leftButton -- Bold again
	rightButton = Gui.TextButton(loc, "Right", "", UDim2.new(0, 25, 0, 50), UDim2.new(0, 35, 0.5, -25), bgcolor, bdcolor)
	rightButton.BackgroundTransparency = 1
	rightLabel = Gui.ImageLabel(rightButton, "Img", "http://www.roblox.com/asset/?id=22120910", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), bgcolor, bdcolor)
	rightLabel.BackgroundTransparency = 1
	rightLabel:Clone().Parent = rightButton -- Bold
	rightLabel:Clone().Parent = rightButton -- Bold again
	leftButton.MouseButton1Down:connect(function()
		local holding = true
		leftButton.MouseButton1Up:connect(function () holding = false end)
		leftButton.MouseLeave:connect(function () holding = false end)
		local speed = 0
		while holding do wait()
			off = off + speed
			off = math.min(off, max)
			speed = math.min(20, speed + 1)
			Position()
		end
	end)
	rightButton.MouseButton1Down:connect(function()
		local holding = true
		rightButton.MouseButton1Up:connect(function () holding = false end)
		rightButton.MouseLeave:connect(function () holding = false end)
		local speed = 0
		while holding do wait()
			off = math.max(off - speed, 0)
			speed = math.min(20, speed + 1)
			Position()
		end
	end)
end

function AppsLeave()
	coroutine.resume(coroutine.create(function()
		for i, v in pairs(AppButtons) do 
			coroutine.resume(coroutine.create(function()
				for i = 10, 100, 10 do wait() v.Position = v.Position + UDim2.new(0, 0, 0, 10) end v:Remove() 
			end))
			wait(.075)
		end
		AppHider:Remove()
	end))
	wait(1)
	AppButtons = {}
end

function SetTheme_Red(reset)
	print("-->Theme changed to RED")
	Alert("Color theme was changed to Red")
	SetSetting("Theme", "red")
	bgcolor = Color3.new(0.9, 0.1, 0.1)
	bdcolor = Color3.new(1, 1, 0)
	txtcolor = Color3.new(1, 1, 1)
	txthilite = Color3.new(1, 1, 0)	
	if reset then CloseScreen() end
end

function SetTheme_Yellow(reset)
	print("-->Theme changed to YELLOW")
	Alert("Color theme was changed to Yellow")
	SetSetting("Theme", "yellow")
	bgcolor = Color3.new(1, 1, 0.15)
	bdcolor = Color3.new(1, 1, 1)
	txtcolor = Color3.new(0, 0, 1)
	txthilite = Color3.new(0, 0, 0)
	if reset then CloseScreen() end
end

function SetTheme_Green(reset)
	print("-->Theme changed to GREEN")
	Alert("Color theme was changed to Green")
	SetSetting("Theme", "green")
	bgcolor = Color3.new(0.25, 0.5, 0.25)
	bdcolor = Color3.new(0, 1, 0)
	txtcolor = Color3.new(1, 1, 1)
	txthilite = Color3.new(0.5, 1, 1)
	if reset then CloseScreen() end
end

function SetTheme_Blue(reset)
	print("-->Theme changed to BLUE")
	Alert("Color theme was changed to Blue")
	SetSetting("Theme", "blue")
	bgcolor = Color3.new(0, 0, 1)
	bdcolor = Color3.new(1, 0, 1)
	txtcolor = Color3.new(1, 1, 1)
	txthilite = Color3.new(0.5, 1, 1)
	if reset then CloseScreen() end
end

function SetTheme_Purple(reset)
	print("-->Theme changed to PURPLE")
	Alert("Color theme was changed to Purple")
	SetSetting("Theme", "purple")
	bgcolor = Color3.new(0.5, 0, 1)
	bdcolor = Color3.new(1, 1, 0)
	txtcolor = Color3.new(1, 1, 1)
	txthilite = Color3.new(1, 1, 0)
	if reset then CloseScreen() end
end

function SetTheme_Black(reset)
	print("-->Theme changed to BLACK")
	Alert("Color theme was changed to Black")
	SetSetting("Theme", "black")
	bgcolor = Color3.new(0.1, 0.1, 0.1)
	bdcolor = Color3.new(1, 0, 0)
	txtcolor = Color3.new(1, 1, 0)
	txthilite = Color3.new(1, 1, 1)
	if reset then CloseScreen() end
end

function SetTheme_White(reset)
	print("-->Theme changed to WHITE")
	Alert("Color theme was changed to White")
	SetSetting("Theme", "white")
	bgcolor = Color3.new(1, 1, 1)
	bdcolor = Color3.new(1, 0, 0)
	txtcolor = Color3.new(0, 0, 0)
	txthilite = Color3.new(0, 0, 1)
	if reset then CloseScreen() end
end

theme = GetSetting("Theme", "red")
if theme == "red" then SetTheme_Red(false)
elseif theme == "yellow" then SetTheme_Yellow(false)
elseif theme == "green" then SetTheme_Green(false)
elseif theme == "blue" then SetTheme_Blue(false)
elseif theme == "purple" then SetTheme_Purple(false)
elseif theme == "black" then SetTheme_Black(false)
elseif theme == "white" then SetTheme_White(false)
else SetTheme_Red(false)
end

function OpenThemeSelections()
	Alert("Opened Theme Selection")
	local window = Window:new("Theme", "http://www.roblox.com/asset/?id=23927110", 150, 247)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "This is the theme selection window. Use this if you dont like the current theme.", align = "center", linage = 4}))
	base:addObject(Object:new("break", {}))
	base:addObject(Object:new("button", {text = "     Red", onclick = (function() SetTheme_Red(true) end)}))
	base:addObject(Object:new("button", {text = "     Yellow", onclick = (function() SetTheme_Yellow(true) end)}))
	base:addObject(Object:new("button", {text = "     Green", onclick = (function() SetTheme_Green(true) end)}))
	base:addObject(Object:new("button", {text = "     Blue", onclick = (function() SetTheme_Blue(true) end)}))
	base:addObject(Object:new("button", {text = "     Purple", onclick = (function() SetTheme_Purple(true) end)}))
	base:addObject(Object:new("button", {text = "     Black", onclick = (function() SetTheme_Black(true) end)}))
	base:addObject(Object:new("button", {text = "     White", onclick = (function() SetTheme_White(true) end)}))

	window:create()
end

function OpenBokHome()
	Alert("Opened FunBoks Home")
	local window = Window:new("Welcome!", "http://www.roblox.com/asset/?id=24945599", 230, 220)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("image", {image = "http://www.roblox.com/asset/?id=29259104", sx = 40, sy = 40}))
	base:addObject(Object:new("text", {text = "Welcome to the FunBoks Home screen! Here you can quckly access other areas of FunBoks!", linage = 3}))
	base:addObject(Object:new("break", {}))
	base:addObject(Object:new("button", {text = "Change Color Theme", onclick = (function() window:close() OpenThemeSelections() end)}))
	base:addObject(Object:new("button", {text = "Check Live News", onclick = (function() window:close() OpenNews() end)}))
	base:addObject(Object:new("button", {text = "Check For Updates", onclick = (function() window:close() OpenUpdate() end)}))
	base:addObject(Object:new("break", {}))
	base:addObject(Object:new("checkbox", {check = tocheck(GetSetting("OpenHome", "true")), text = "Open Home on startup?", 
		checkfunc = (function() if tocheck(GetSetting("OpenHome", "true")) == "X" then SetSetting("OpenHome", "false") Alert("Home disabled") else SetSetting("OpenHome", "true") Alert("Home enabled") end end)}))

	w = window:create()
	if tobool(GetSetting("CenterHome", "true")) then w.Position = UDim2.new(0.5, -115, 0.5, -120) end
end

function OpenSettingsOptions()
	Alert("Opened Settings")
	local window = Window:new("Settings", "http://www.roblox.com/asset/?id=23315694", 150, 88)
	local base = Object:new("base")
	window:setBase(base)
	
	base:addObject(Object:new("text", {text = "Change the settings here.", linage = 2}))
	base:addObject(Object:new("break", {}))
	base:addObject(Object:new("button", {text = "Change Color Theme", onclick = OpenThemeSelections}))
	base:addObject(Object:new("button", {text = "Home on Startup", onclick = (function()
		local window = Window:new("Home Options", "http://www.roblox.com/asset/?id=24945599", 140, 100)
		local base = Object:new("base")
		window:setBase(base)
		
		base:addObject(Object:new("checkbox", {check = tocheck(GetSetting("OpenHome", "true")), text = "Open Home on startup?", linage = 2,
			checkfunc = (function() if tocheck(GetSetting("OpenHome", "true")) == "X" then SetSetting("OpenHome", "false") Alert("Home disabled") else SetSetting("OpenHome", "true") Alert("Home enabled") end end)}))
		base:addObject(Object:new("checkbox", {check = tocheck(GetSetting("CenterHome", "true")), text = "Center Home when opened?", linage = 2,
			checkfunc = (function() if tocheck(GetSetting("CenterHome", "true")) == "X" then SetSetting("CenterHome", "false") Alert("Auto Center Home disabled") else SetSetting("CenterHome", "true") Alert("Auto Center Home enabled") end end)}))

		window:create()
	end)}))

	window:create()
end

function OpenNews()
	Alert("Loading News...")

	wind = LoadingWindow("FunBoks News")

	News:get()

	wind:close()

	local Num = #News
	if Num > 9 then Num = 9 end

	local window = Window:new("FunBoks News", "http://www.roblox.com/asset/?id=23351143", 200, 41 + 25*Num)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "These are the current articles to read.", linage = 2}))
	base:addObject(Object:new("break", {}))
	
	for i = 1, Num do
		if News[i] == nil then break end
		current = News[i]
		local function ShowArticle()
			Alert("Showing Article : " .. current.title)
			
			local window = Window:new("Article", "http://www.roblox.com/asset/?id=23351143", 150, 100)
			local base = Object:new("base")
			window:setBase(base)

			base:addObject(Object:new("text", {text = current.title, align = "center"}))
			base:addObject(Object:new("text", {text = current.date, align = "right"}))
			base:addObject(Object:new("text", {text = current.news, align = "left"}))

			window:create()
		end
		base:addObject(Object:new("button", {text = current.date, align = "right", onclick = ShowArticle}))
	end

	Alert("Opened News")

	window:create()
end

function OpenToolBoks()
	Alert("Loading Tools...")

	wind = LoadingWindow("Tool Boks tools")

	Tools:get()

	wind:close()

	local window = Window:new("Tool Boks", "http://www.roblox.com/asset/?id=29259104", 150, 278)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "Here are the tools", linage = 2}))
	base:addObject(Object:new("break", {}))
	local b1 = Object:new("button", {text = Tools[1].name, align = "right"})
	b1.data.onclick = (function()
		Tools[1].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b1)
	local b2 = Object:new("button", {text = Tools[2].name, align = "right"})
	b2.data.onclick = (function()
		Tools[2].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b2)
	local b3 = Object:new("button", {text = Tools[3].name, align = "right"})
	b3.data.onclick = (function()
		Tools[3].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b3)
	local b4 = Object:new("button", {text = Tools[4].name, align = "right"})
	b4.data.onclick = (function()
		Tools[4].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b4)
	local b5 = Object:new("button", {text = Tools[5].name, align = "right"})
	b5.data.onclick = (function()
		Tools[5].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b5)
	local b6 = Object:new("button", {text = Tools[6].name, align = "right"})
	b6.data.onclick = (function()
		Tools[6].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b6)
	local b7 = Object:new("button", {text = Tools[7].name, align = "right"})
	b7.data.onclick = (function()
		Tools[7].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b7)
	local b8 = Object:new("button", {text = Tools[8].name, align = "right"})
	b8.data.onclick = (function()
		Tools[8].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b8)
	local b9 = Object:new("button", {text = Tools[9].name, align = "right"})
	b9.data.onclick = (function()
		Tools[9].tool:Clone().Parent = BOK_OWNER.Backpack
	end)	
	base:addObject(b9)

	Alert("Opened Tool Boks")

	window:create()
end

function OpenTips()
	Alert("Opened Tips")
	local window = Window:new("Random Tip", "http://www.roblox.com/asset/?id=29258745", 150, 105)
	local base = Object:new("base")
	window:setBase(base)
	
	base:addObject(Object:new("text", {text = Tips[math.random(1, #Tips)]}))

	window:create()
end

function OpenPlayers()
	Alert("Loading Player List...")
	
	local wind = LoadingWindow("Player List")

	local window = Window:new("Players", "http://www.roblox.com/asset/?id=29335047", 200, 39 + 17 * players.NumPlayers)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "All available players :", linage = 2}))
	base:addObject(Object:new("break", {}))

	for i, v in pairs(players:GetChildren()) do wait(.1)
		repeat wait(.1) until v.Character
		nt = Object:new("text", {text = v.Name .. "'s Health : " .. v.Character.Humanoid.Health})
		base:addObject(nt)
	end

	wind:close()
	
	Alert("Player List Loaded")
	Alert("Opened Player List")

	window:create()
end

function OpenFutureUpdates()
	Alert("Opened Updates")
	local window = Window:new("Players", "http://www.roblox.com/asset/?id=29259384", 200, 17 * 3 * #Updates)
	local base = Object:new("base")
	window:setBase(base)

	for i, v in pairs(Updates) do
		base:addObject(Object:new("text", {text = v, linage = 4}))
	end
	
	window:create()
end

function OpenUpdate()
	Alert("Opened Update Check")
	local window = Window:new("Update", "http://www.roblox.com/asset/?id=23352983", 150, 60)
	local base = Object:new("base")
	window:setBase(base)

	base:addObject(Object:new("text", {text = "The update checker will trigger in 2 seconds. If theres an update, it will activate."}))

	window:create()

	wait(2)
	
	CheckForUpdate()
end

function GetOwner()
	local player = players.LocalPlayer
	if GetSetting("Owner", "") == "" then
		SetSetting("Owner", player.Name)
	end
end

GetOwner()

function Spawned(plr)
	Alert("Player spawned : " .. plr.Name .. " -- Checking ownership...")
	if plr.Name == GetSetting("Owner", "") then
		BOK_OWNER = plr
		while not plr:FindFirstChild("PlayerGui") do wait() end
		wait(.5)
		ClearGui()
		ControlCentre()
	end
end

workspace.ChildAdded:connect(function (child)
	local player = players:GetPlayerFromCharacter(child)
	if player then
		Spawned(player)
	end
end)

RunAntiLag(false)
RunRecoveryCycle(false)

ControlCentre() 