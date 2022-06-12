local Me = "yfc"
local Plyr = game.Players:findFirstChild(Me)
script.Name = "Suiter"
local NTypes = {"Part","Script","Accoutrement","BodyAngularVelocity","BodyForce","BodyGyro","BodyPosition","BodyThrust","BodyVelocity","BoolValue","BrickColorValue","CFrameValue","ClickDetector","Color3Value","Decal","Hat","Hint","HopperBin","Humanoid","IntValue","Message","Model","NumberValue","Seat","Sparkles","SpawnLocation","SpecialMesh","StringValue","Tool","Vector3Value"}
local Sep = ""
--s = string
--n = number
--b = bool
--c = cframe
--t = color
--k = brickcolor
--v = vector3
--e = enum
local Global = {{"s","Name"},{"b","archivable"}}
local OTypes = {Part = {1,{"b","ControllerFlagShown"},{"t","Color"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"},{"e","formFactor"}},
Script = {2,{"s","Source"},{"b","Disabled"}},
Accoutrement = {3,{"v","AttachmentForward"},{"v","AttachmentPos"},{"v","AttachmentUp"},{"v","AttachmentRight"}},
BodyAngularVelocity = {4,{"n","P"},{"v","angularvelocity"},{"v","maxTorque"}},
BodyForce = {5,{"v","force"}},
BodyGyro = {6,{"n","D"},{"n","P"},{"c","cframe"},{"v","maxTorque"}},
BodyPosition = {7,{"n","D"},{"n","P"},{"v","position"},{"v","maxForce"}},
BodyThrust = {8,{"v","force"},{"v","location"}},
BodyVelocity = {9,{"n","P"},{"v","maxForce"},{"v","velocity"}},
BoolValue = {10,{"b","Value"}},
BrickColorValue = {11,{"k","Value"}},
CFrameValue = {12,{"c","Value"}},
ClickDetector = {13,{"n","MaxActivationDistance"}},
Color3Value = {14,{"v","Value"}},
Decal = {15,{"e","Face"},{"n","Shiny"},{"n","Specular"},{"s","Texture"}},
Hat = {16,{"v","AttachmentForward"},{"v","AttachmentPos"},{"v","AttachmentUp"},{"v","AttachmentRight"}},
Hint = {17,{"s","Text"}},
HopperBin = {18,{"e","BinType"},{"s","TextureId"}},
Humanoid = {19,{"n","Health"},{"n","MaxHealth"},{"n","WalkSpeed"}},
IntValue = {20,{"n","Value"}},
Message = {21,{"s","Text"}},
Model = {22,{"e","Controller"},{"b","ControllerFlagShown"}},
NumberValue = {23,{"n","Value"}},
Seat = {24,{"b","ControllerFlagShown"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"},{"e","formFactor"}},
Sparkles = {25,{"t","Color"},{"b","Enabled"}},
SpawnLocation = {26,{"b","ControllerFlagShown"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"},{"e","formFactor"}},
SpecialMesh = {27,{"e","MeshType"},{"v","Scale"},{"s","TextureId"},{"v","VertexColor"}},
StringValue = {28,{"s","Value"}},
Tool = {29,{"b","Enabled"},{"v","GripForward"},{"v","GripPos"},{"v","GripRight"},{"v","GripUp"},{"s","TextureId"}},
Vector3Value = {30,{"v","Value"}}}
local ATypes = {Part = {1,{"b","ControllerFlagShown"},{"t","Color"},{"e","Shape"},{"e","formFactor"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"}},
Script = {2,{"s","Source"},{"b","Disabled"}},
Accoutrement = {3,{"v","AttachmentForward"},{"v","AttachmentPos"},{"v","AttachmentUp"},{"v","AttachmentRight"}},
BodyAngularVelocity = {4,{"n","P"},{"v","angularvelocity"},{"v","maxTorque"}},
BodyForce = {5,{"v","force"}},
BodyGyro = {6,{"n","D"},{"n","P"},{"c","cframe"},{"v","maxTorque"}},
BodyPosition = {7,{"n","D"},{"n","P"},{"v","position"},{"v","maxForce"}},
BodyThrust = {8,{"v","force"},{"v","location"}},
BodyVelocity = {9,{"n","P"},{"v","maxForce"},{"v","velocity"}},
BoolValue = {10,{"b","Value"}},
BrickColorValue = {11,{"k","Value"}},
CFrameValue = {12,{"c","Value"}},
ClickDetector = {13,{"n","MaxActivationDistance"}},
Color3Value = {14,{"v","Value"}},
Decal = {15,{"e","Face"},{"n","Shiny"},{"n","Specular"},{"s","Texture"}},
Hat = {16,{"v","AttachmentForward"},{"v","AttachmentPos"},{"v","AttachmentUp"},{"v","AttachmentRight"}},
Hint = {17,{"s","Text"}},
HopperBin = {18,{"e","BinType"},{"s","TextureId"}},
Humanoid = {19,{"n","Health"},{"n","MaxHealth"},{"n","WalkSpeed"}},
IntValue = {20,{"n","Value"}},
Message = {21,{"s","Text"}},
Model = {22,{"e","Controller"},{"b","ControllerFlagShown"}},
NumberValue = {23,{"n","Value"}},
Seat = {24,{"b","ControllerFlagShown"},{"t","Color"},{"e","Shape"},{"e","formFactor"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"}},
Sparkles = {25,{"t","Color"},{"b","Enabled"}},
SpawnLocation = {25,{"b","ControllerFlagShown"},{"t","Color"},{"e","Shape"},{"e","formFactor"},{"n","Reflectance"},{"n","Transparency"},{"c","CFrame"},{"v","RotVelocity"},{"v","Velocity"},{"b","Anchored"},{"b","CanCollide"},{"e","Controller"},{"b","Locked"},{"n","BackParamA"},{"n","BackParamB"},{"e","BackSurfaceInput"},{"n","BottomParamA"},{"n","BottomParamB"},{"e","BottomSurfaceInput"},{"n","FrontParamA"},{"n","FrontParamB"},{"e","FrontSurfaceInput"},{"n","LeftParamA"},{"n","LeftParamB"},{"e","LeftSurfaceInput"},{"n","RightParamA"},{"n","RightParamB"},{"e","RightSurfaceInput"},{"n","TopParamA"},{"n","TopParamB"},{"e","TopSurfaceInput"},{"e","BackSurface"},{"e","BottomSurface"},{"e","FrontSurface"},{"e","LeftSurface"},{"e","RightSurface"},{"e","TopSurface"},{"n","Elasticity"},{"n","Friction"},{"v","Size"}},
SpecialMesh = {27,{"e","MeshType"},{"v","Scale"},{"s","TextureId"},{"v","VertexColor"}},
StringValue = {28,{"s","Value"}},
Tool = {29,{"b","Enabled"},{"v","GripForward"},{"v","GripPos"},{"v","GripRight"},{"v","GripUp"},{"s","TextureId"}},
Vector3Value = {30,{"v","Value"}}}
local Types = {}
function Get(String,Start)
if(string.sub(String,Start,Start)==Sep)then
return nil,Start + 1
else
local A = string.sub(String,Start,string.find(String,Sep,Start+1)-1)
return A,string.find(String,Sep,Start+1)+1
end
end
function Convert(Type,Prop)
if(Type=="s" or Type == "e")then
return Prop
elseif(Type == "n")then
return tonumber(Prop)
elseif(Type == "b")then
return tonumber(Prop)==1
elseif(Type == "c")then
local Tab = {}
for i in string.gmatch(Prop,"[-%.%de%+%-]+") do
local A = tonumber(i)
if(A==nil)then assert(false,"Corrupted property segment. Cannot convert to CFrame") end
table.insert(Tab,A)
end
return CFrame.new(unpack(Tab))
elseif(Type=="t")then
local Tab = {}
for i in string.gmatch(Prop,"[%.%de%+%-]+") do
local A = tonumber(i)
if(A==nil)then assert(false,"Corrupted property segment. Cannot convert to Color3") end
table.insert(Tab,A)
end
return Color3.new(unpack(Tab))
elseif(Type=="k")then
return BrickColor.new(Prop)
elseif(Type=="v")then
local Tab = {}
for i in string.gmatch(Prop,"[%.%de%+%-]+") do
local A = tonumber(i)
if(A==nil)then assert(false,"Corrupted property segment. Cannot convert to Vector3") end
table.insert(Tab,A)
end
return Vector3.new(unpack(Tab))
else assert(false,"Corrupted Type table. Invalid Type.") end
end
function Make(String,Start,Table)
local First = tonumber(string.sub(String,Start,string.find(String,Sep,Start+1)-1))
print(First)
Start = string.find(String,Sep,Start+1)+1
local Type = rawget(NTypes,First)
if(Type==nil)then assert(false,"Corrupted string. Cannot parse type") end
local Inst = Instance.new(Type)
local Typical = Instance.new(Type)
if(Inst==nil)then assert(false,"NTypes is corrupted. Cannot make an instance of type " .. Type) end
local Props = rawget(Types,Type)
print(Type)
if(Props==nil)then assert(false,"NTypes/Types is/are corrupted. Cannot find properties of type " .. Type) end
for i = 1,#Global do
local Prop = Get(String,Start)
Start = ({Get(String,Start)})[2]
print(Global[i][2])
if(Prop~=nil)then
Prop = Convert(Global[i][1],Prop)
Inst[Global[i][2]] = Prop
end
end
for i = 2,#Props do
local Prop = Get(String,Start)
Start = ({Get(String,Start)})[2]
print(Props[i][2])
if(Prop~=nil)then
Prop = Convert(Props[i][1],Prop)
Inst[Props[i][2]] = Prop
end
end
Inst.Parent = Table[tonumber(({Get(String,Start)})[1])]
table.insert(Table,Inst)
return ({Get(String,Start)})[2]
end
function Decompress(String,Tab)
local Start = 1
if(string.sub(String,1,1)=="a")then
print("NEW")
String = string.sub(String,2)
Types = ATypes
else
print("OLD")
Types = OTypes
end
if(Tab==nil)then Tab = {game.Workspace} end
while true do
Start = Make(String,Start,Tab)
if(Start>string.len(String))then return end
end
end
function Stick(hit,arrow)
	print(hit)

	local weld = Instance.new("Weld")

	weld.Part0 = arrow

	weld.Part1 = hit

	local HitPos = arrow.Position

	local CJ = CFrame.new(HitPos)

	local C0 = arrow.CFrame:inverse() *CJ

	local C1 = hit.CFrame:inverse() * CJ

	weld.C0 = C0

	weld.C1 = C1

	weld.Parent = arrow

end
function Slick(A,B)
local W = Instance.new("Weld")
W.Parent = A
W.Part0 = A
W.Part1 = B
end
function StickModel(Model,Base)
local G = Model:GetChildren()
for i = 1,#G do
if(G[i].className == "Part" or G[i].className == "SpawnLocation" or G[i].className == "Seat")then
Stick(G[i],Base)
else
StickModel(G[i],Base)
end
end
end
function Chatted(msg)
if(string.sub(msg,1,4)=="/sc ")then
Chatted(string.sub(msg,5))
return
end
if(string.sub(msg,1,5)=="Make/")then
local Worked,Err = pcall(Decompress,string.sub(msg,6))
if(not Worked)then
local M = Instance.new("Message")
M.Text = Err
M.Parent = Plyr
else
game.Workspace:MakeJoints()
end
end
if(msg=="Disable")then
script:Remove()
end
if(string.sub(msg,1,5)=="Suit/")then
local M = Instance.new("Model")
M.Name = "SuperSuit"
M.Parent = Plyr.Character
local Tab = {M}
local Worked,Err = pcall(Decompress,string.sub(msg,6),Tab)
if(not Worked)then
local M = Instance.new("Message")
M.Text = Err
M.Parent = Plyr
else
local Tor = M:findFirstChild("T")
StickModel(Tor,Tor:findFirstChild("T"))
Slick(Tor:findFirstChild("T"),Plyr.Character.Torso)
Tor = M:findFirstChild("LL")
StickModel(Tor,Tor:findFirstChild("LL"))
Slick(Tor:findFirstChild("LL"),Plyr.Character["Left Leg"])
Tor = M:findFirstChild("RL")
StickModel(Tor,Tor:findFirstChild("RL"))
Slick(Tor:findFirstChild("RL"),Plyr.Character["Right Leg"])
Tor = M:findFirstChild("LA")
StickModel(Tor,Tor:findFirstChild("LA"))
Slick(Tor:findFirstChild("LA"),Plyr.Character["Left Arm"])
Tor = M:findFirstChild("RA")
StickModel(Tor,Tor:findFirstChild("RA"))
Slick(Tor:findFirstChild("RA"),Plyr.Character["Right Arm"])
Tor = M:findFirstChild("Tools")
if(Tor~=nil)then
for i,v in ipairs(Tor:GetChildren())do
v.Parent = Plyr.Backpack
end
end
end
end
end
Plyr.Chatted:connect(Chatted)
local M = Instance.new("Message")
M.Text = "Suit command by Meelo loaded"
M.Parent = Plyr
wait(5)
M:Remove()Chatted(string.gsub(string.gsub([[Suit/a22LA11LA0.105882, 0.164706, 0.203922Symmetric0.499984741, 8.20033741, -1.5, 0, 0, -1, 0, 1, 0, 1, 0, 001, 2, 12250, 1, 031laser0.768627, 0.156863, 0.1058820.499984741, 4.20033741, -1.5, -1, 0, 0, 0, 1, 0, 0, 0, -101, 6, 122function onTouched(part)
	
		part:Remove()

end
script.Parent.Touched:connect(onTouched)


51Smooth Block Model0.105882, 0.164706, 0.2039220.5, 9.80000019, -4, -1, 0, 0, 0, 1, 0, 0, 0, -11, 1.20000005, 4227Sphere722LL11LL0.105882, 0.164706, 0.203922Symmetric0.499984741, 6.20033741, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 001, 2, 19250, 1, 01022RA11RA0.105882, 0.164706, 0.203922Symmetric0.499984741, 8.20033741, 1.5, 0, 0, -1, 0, 1, 0, 1, 0, 001, 2, 112250, 1, 0131Smooth Block Model0.768627, 0.156863, 0.1058820.499984741, 9.80033779, 4, -1, 0, 0, 0, 1, 0, 0, 0, -11, 1.20000005, 41227Sphere1522RL11RL0.105882, 0.164706, 0.203922Symmetric0.499984741, 6.20033741, 0.5, 0, 0, -1, 0, 1, 0, 1, 0, 001, 2, 117250, 1, 01822T11T0.105882, 0.164706, 0.203922Symmetric0.499984741, 8.20033741, 0, 0, 0, -1, 0, 1, 0, 1, 0, 002, 2, 120250, 1, 02115http://www.roblox.com/asset/?id=2273061211headmask0.94902, 0.952941, 0.949020.100000001490120.499984741, 10.4003372, 0, -1, 0, 0, 0, 1, 0, 0, 0, -13, 2.4000001, 420250, 1, 02422Tools1]],string.char(1,2,3,4),"%]%]"),string.char(4,3,2,1),"%]%]"))  script:Remove()