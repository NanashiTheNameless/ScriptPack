-------------------------------------------------------------------------------------------------------------------------------------------------
wait(0.1)
local KillPhrases = {"defragged","defragmented","shredded","derezzed","killed","deleted","erased","destroyed","annihilated","wrecked"}
local ShirtId = ""
local PantsId = ""
local Sounds = {
Burst = "101084318",
Defrag = "28104389"
}
for _,v in pairs(Sounds) do
game:service("ContentProvider"):Preload("http://www.roblox.com/asset/?id="..v)
end
function CheckI(Item,Blacklist,Specific)
for _,v in pairs(Item:children()) do
if not Specific then
if v:IsA(Blacklist) or v.Name:match(Blacklist) then
v:Destroy()
end
else
if v:IsA(Blacklist) or v.Name == Blacklist then
v:Destroy()
end
end
end
end
if(game.Players.LocalPlayer.Parent == nil)then
pcall(function()
game.Players.LocalPlayer.Backpack:Remove()
end)
m = Instance.new("Backpack",game.Players.LocalPlayer)
end
local Boost = false
local Speed = 100
local SpinningSpeed = .2
--> Basic Variables
me = game.Players.LocalPlayer
Backpack = me.Backpack
PGui = me.PlayerGui
Character = me.Character
Torso = Character.Torso
Head = Character.Head
mouse = me:GetMouse()
LeftArm = Character["Left Arm"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
Humanoid = Character.Humanoid
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
LSC0 = LS.c0
RSC0 = RS.c0
Head.face:Destroy()
local Color = Torso.BrickColor
if Color == BrickColor.new("Really black") then
Color = BrickColor.Black()
end
local Defrag
if me:FindFirstChild("Defrag") then
Defrag = me.Defrag
else
Defrag = Instance.new("NumberValue",me)
end
CheckI(Character,"Hat")
CheckI(Character,"BodyColors")
CheckI(Character,"ShirtGraphic")
CheckI(Character,"Clothing")
CheckI(Torso,"Decal")
CheckI(PGui,"ScreenGui")
CheckI(Head,"Sound")
Instance.new("Shirt",Character).ShirtTemplate = "http://www.roblox.com/asset/?id=14661984"
Instance.new("Pants",Character).PantsTemplate = "http://www.roblox.com/asset/?id=14664846"
local Gui = Instance.new("ScreenGui",PGui)
Gui.Name = "HUD"
local notifyti = false
function Notify(Msg)
if not notifyti then
Delay(0,function()
notifyti = true
local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(0.3,0,0.1,0)
Frame.Position = UDim2.new(0.35,0,1,0)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.5
Frame.BackgroundColor = Color
Frame:TweenPosition(UDim2.new(0.35,0,0.9,0))
local TextLabel = Instance.new("TextLabel",Frame)
TextLabel.Text = Msg
TextLabel.Size = UDim2.new(1,0,1,0)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = 2
TextLabel.TextStrokeTransparency = 0
TextLabel.TextColor3 = Color3.new(1,1,1)
TextLabel.TextScaled = true
wait(3)
Frame:TweenPosition(UDim2.new(0.35,0,-0.15,0))
game.Debris:AddItem(Frame,3)
notifyti = false
end)
end
end
for i = 0,5 do
local dec = Instance.new("Decal",Head)
dec.Texture = "http://www.roblox.com/asset/?id=8772734"
dec.Face = i
end
function laser(to,from) -- MUST BE VECTOR3 
local las=Instance.new("Part",Torso) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = 3
las.BrickColor=Color
las.Size=Vector3.new(3,1,3) 
las.CFrame=CFrame.new((to+from)/2,from)*CFrame.Angles(math.rad(90),0,0)
las.Touched:connect(function(paaart)
local plaay = game.Players:GetPlayerFromCharacter(paaart.Parent) or game.Players:GetPlayerFromCharacter(paaart.Parent.Parent)
if plaay and plaay ~= me then
if not plaay.Character:FindFirstChild("Killer") then
plaay.Character:BreakJoints()
local tag = Instance.new("ObjectValue",plaay.Character)
tag.Name = "Killer"
tag.Value = me
Notify("You "..KillPhrases[math.random(1,#KillPhrases)].." "..plaay.Name.."!")
end
end
end)
local msh=Instance.new("CylinderMesh",las) 
msh.Scale=Vector3.new(0.025,(to-from).magnitude,0.025) 
game.Debris:AddItem(las,4)
return las 
end 
if(Backpack:findFirstChild("Surf") ~= nil)then 
Backpack.Surf:Remove()
end
script.Parent = nil
script.Name = "Flight"
function Derez(part)
part.Transparency = 1
CheckI(part,"Decal")
part.Anchored = true
for i = 1,5 do
local parti = Instance.new("Part",Character)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.formFactor = 3
parti.CanCollide = false
parti.Size = Vector3.new(math.random(2,14)/10,math.random(2,14)/10,math.random(2,14)/10)
parti.CFrame = part.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
parti.Transparency = 0
parti.BrickColor = part.BrickColor
local pax = 0
local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
pax = pax + 0.2
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(pax),math.rad(pax),math.rad(pax)))+pad
parti.Transparency = parti.Transparency + 0.015
end)
end
game.Debris:AddItem(part,3)
end
function Play(id,pi,vol)
local So = Instance.new("Sound",Character.Torso)
So.SoundId = "http://www.roblox.com/asset/?id="..id
So.Pitch = pi or 1
So.Volume = vol or 1
wait()
So:Play()
end
Humanoid.Died:connect(function()
for _,v in pairs(Character:children()) do
if v:IsA("Part") then
Derez(v)
end
end
Notify("[DEFRAGMENTATION]")
Defrag.Value = Defrag.Value + 1
Play(Sounds.Defrag)
end)
Clicking = false
Spinning = false
LSpinning = false
LAP = Vector3.new(0,0,0)
RAP = Vector3.new(0,0,0)
bg = Instance.new("BodyGyro") 
bg.Parent = Torso
bg.maxTorque = Vector3.new(0,0,0) 
bv = Instance.new("BodyVelocity") 
bv.Parent = Torso
bv.maxForce = Vector3.new(0,0,0) 
mouse.Button1Down:connect(function()
Clicking = true
CF = LeftArm.CFrame*CFrame.new(0,-1,0)
LAP = CF.p
CF = RightArm.CFrame*CFrame.new(0,-1,0)
RAP = CF.p
end) 
mouse.Button1Up:connect(function()
Clicking = false
end)
mouse.KeyDown:connect(function(key)
if Clicking then
if key == "d" then
Spinning = true
LSpinning = false
num = 0
elseif key == "a" then
LSpinning = true
Spinning = false
num = 0
elseif key == " " and Boost == false then
Boost = true
Play(Sounds.Burst)
local prevspeed = Speed
Speed = Speed * 1.8
wait(4)
Speed = prevspeed
Boost = false
end
end
end) 
mouse.KeyUp:connect(function(key)
if key == "d" then
Spinning = false
elseif key == "a" then
LSpinning = false
end
end) 
num = 0
game:service("RunService").Stepped:connect(function()
for _,v in pairs(Character:children()) do
if v:IsA("Part") then
v.BrickColor = Color
end
end
if(Clicking == true)then
Hit = mouse.hit
Target = mouse.target
Humanoid.PlatformStand = true
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
if Spinning == true or LSpinning == true then
if Spinning then
num = num + SpinningSpeed
elseif LSpinning then
num = num - SpinningSpeed
end
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p)*CFrame.Angles(-1.55,num,0)
else
bg.cframe = CFrame.new(Torso.Position,mouse.Hit.p)*CFrame.Angles(-1.55,0,0)
end
Hit2 = Hit*CFrame.Angles(0,0,1.55)
bv.velocity = (Hit2.lookVector*Speed)
if Boost then
RS.C0 = RSC0*CFrame.Angles(-math.rad(30),0,0)*CFrame.new(0,-.5,-.5)
LS.C0 = LSC0*CFrame.Angles(-math.rad(30),0,0)*CFrame.new(0,-.5,-.5)
else
RS.C0 = RSC0*CFrame.Angles(-math.rad(60),0,0)*CFrame.new(0,-.5,-.5)
LS.C0 = LSC0*CFrame.Angles(-math.rad(60),0,0)*CFrame.new(0,-.5,-.5)
end
CF = RightArm.CFrame*CFrame.new(0,-0.9,0)
laser(CF.p,RAP)
RAP = CF.p
CF = LeftArm.CFrame*CFrame.new(0,-0.9,0)
laser(CF.p,LAP)
LAP = CF.p
else
Humanoid.PlatformStand = false
bg.maxTorque = Vector3.new(0,0,0) 
bv.maxForce = Vector3.new(0,0,0) 
RS.C0 = RSC0
LS.C0 = LSC0
end
end)
