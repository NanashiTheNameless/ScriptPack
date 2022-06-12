local lvl4=game.Players.LocalPlayer
local divName="NAMEHERE" - put name here
local StartMessageOn=true --\\leave this
local kovalue=100 --\\??????
local spamtext="ts" --\\default spam            
local firecolor="Deep blue" -- might be broken?
local sp=50 --\\ default part spam amount 
local decal1='156917878' --\\ default decal/skybox
local music1='142930454' --\\ default music id

function hatgiv(a)
v=game.Players.LocalPlayer
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(a))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end



if StartMessageOn==true then
local startoff=[[
show/ -- hide/
obj/ -- for parts
obj/alt/ -- for fire, smoke, etc.
setko/
setspam/ -- stopspam/
setpartspam/
setdecal/
setmusic/ -- stopmusic/
g/r -- resets character
g/base -- creates a baseplate
g/fixl -- fixes the lighting
blue gui = player things
red gui = server things
yellow gui = both player and server

*Bugs and warnings*
-- Not accountable for you being banned.
-- Don't use "weed" if you have epilepsy.
-- Don't use "Ducks" if you can't handle cursing.
-- Don't use "Ducks" if you don't want to be banned.
-- Using iOrb breaks the whole thing.
-- Using "stopspam/" and then "setspam/" breaks spam.
Team Nefilices
]]

x=Instance.new("Message",game.Players.LocalPlayer.PlayerGui)
x.Text=startoff
wait(10)
x:Remove()
end
function allofet()

f = Instance.new("ScreenGui");
f.Parent = game.Players.LocalPlayer.PlayerGui;
f.Name = "cat";

i = Instance.new("TextButton");
i.Parent = game.Players.LocalPlayer.PlayerGui.cat;
i.Name = "Pls";
i.Text="Stoopid";
i.TextColor3=BrickColor.new("Really black").Color;
i.Active = true;
i.Position = UDim2.new(0, 50,0, 0);
i.Size = UDim2.new(0, 50,0 ,15);
i.BackgroundColor3=BrickColor.new("Deep blue").Color;
i.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript()
	sintax=game.Players.LocalPlayer.Character

sintax.Head.face:Remove()
sintax.Head.Transparency=1

function wot(a,b,c,d,e,f)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new('Really red')
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=sintax
Mesh=Instance.new("SpecialMesh")
Mesh.MeshId="http://www.roblox.com/asset/?id=170288553"
Mesh.TextureId="http://www.roblox.com/asset/?id=16356321"
Mesh.Scale=Vector3.new(3,3,3)
Mesh.VertexColor=Vector3.new(d,e,f)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = sintax.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(a,b,c)
end

wot(-0.6,2.8,-0.7,255,0,0)

sintax.Torso.roblox:Destroy()
for _,v in pairs(sintax:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor=BrickColor.new('Really red')
else
if v:IsA("Hat") then
v:Remove()
end
end
end
end
i.MouseButton1Down:connect(MakeAScript)


f1 = Instance.new("ScreenGui");
f1.Parent = game.Players.LocalPlayer.PlayerGui;
f1.Name = "cat2";

i1 = Instance.new("TextButton");
i1.Parent = game.Players.LocalPlayer.PlayerGui.cat2;
i1.Name = "Pls1";
i1.Text="Dipoots";
i1.TextColor3=BrickColor.new("Really black").Color;
i1.Active = true;
i1.Position = UDim2.new(0, 100,0, 0);
i1.Size = UDim2.new(0, 50,0 ,15);
i1.BackgroundColor3=BrickColor.new("Deep blue").Color;
i1.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript1()
sintax=game.Players.LocalPlayer.Character

function wot(a,b,c,d,e,f)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new('Really red')
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=sintax
Mesh=Instance.new("SpecialMesh")
Mesh.MeshId="http://www.roblox.com/asset/?id=16356288"
Mesh.TextureId="http://www.roblox.com/asset/?id=16356321"
Mesh.Scale=Vector3.new(3,3,3)
Mesh.VertexColor=Vector3.new(d,e,f)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = sintax.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(a,b,c)*CFrame.Angles(0,1,-0.45)
end

wot(-0.5,2,-1,255,0,0)

sintax.Torso.roblox:Destroy()
for _,v in pairs(sintax:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor=BrickColor.new('Really red')
end
end
end
i1.MouseButton1Down:connect(MakeAScript1)

f11 = Instance.new("ScreenGui");
f11.Parent = game.Players.LocalPlayer.PlayerGui;
f11.Name = "cat21";

i11 = Instance.new("TextButton");
i11.Parent = game.Players.LocalPlayer.PlayerGui.cat21;
i11.Name = "Pls11";
i11.Text="Night";
i11.TextColor3=BrickColor.new("Really black").Color;
i11.Active = true;
i11.Position = UDim2.new(0, 150,0, 0);
i11.Size = UDim2.new(0, 50,0 ,15);
i11.BackgroundColor3=BrickColor.new("Bright red").Color;
i11.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript11()
game.Lighting.TimeOfDay="00:00:00"
end
i11.MouseButton1Down:connect(MakeAScript11)

f111 = Instance.new("ScreenGui");
f111.Parent = game.Players.LocalPlayer.PlayerGui;
f111.Name = "cat211";

i111 = Instance.new("TextButton");
i111.Parent = game.Players.LocalPlayer.PlayerGui.cat211;
i111.Name = "Pls11";
i111.Text="Day";
i111.TextColor3=BrickColor.new("Really black").Color;
i111.Active = true;
i111.Position = UDim2.new(0, 200,0, 0);
i111.Size = UDim2.new(0, 50,0 ,15);
i111.BackgroundColor3=BrickColor.new("Bright red").Color;
i111.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript111()
game.Lighting.TimeOfDay="14:00:00"
end
i111.MouseButton1Down:connect(MakeAScript111)

f1111 = Instance.new("ScreenGui");
f1111.Parent = game.Players.LocalPlayer.PlayerGui;
f1111.Name = "cat2111";

i1111 = Instance.new("TextButton");
i1111.Parent = game.Players.LocalPlayer.PlayerGui.cat2111;
i1111.Name = "Pls11";
i1111.Text="Rainbow";
i1111.TextColor3=BrickColor.new("Really black").Color;
i1111.Active = true;
i1111.Position = UDim2.new(0, 250,0, 0);
i1111.Size = UDim2.new(0, 50,0 ,15);
i1111.BackgroundColor3=BrickColor.new("Bright red").Color;
i1111.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript1111()
for _,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Part") then
v.BrickColor=BrickColor.random()
elseif v:IsA("Model") then
for _,z in pairs(v:GetChildren()) do
if z:IsA("Part") then
z.BrickColor=BrickColor.random()
end
end
end
end
end
i1111.MouseButton1Down:connect(MakeAScript1111)

f11112 = Instance.new("ScreenGui");
f11112.Parent = game.Players.LocalPlayer.PlayerGui;
f11112.Name = "cat21112";

i11112 = Instance.new("TextButton");
i11112.Parent = game.Players.LocalPlayer.PlayerGui.cat21112;
i11112.Name = "Pls11";
i11112.Text="Spam";
i11112.TextColor3=BrickColor.new("Really black").Color;
i11112.Active = true;
i11112.Position = UDim2.new(0, 300,0, 0);
i11112.Size = UDim2.new(0, 50,0 ,15);
i11112.BackgroundColor3=BrickColor.new("Bright yellow").Color;
i11112.BorderColor3=BrickColor.new("Bright yellow").Color;
function MakeAScript11112()
while true do
wait()
for _,v in pairs(game.Players:GetChildren()) do
game:GetService("Chat"):Chat(v.Character.Head, spamtext, Enum.ChatColor.Blue)
end
end
end
i11112.MouseButton1Down:connect(MakeAScript11112)

f111124 = Instance.new("ScreenGui");
f111124.Parent = game.Players.LocalPlayer.PlayerGui;
f111124.Name = "cat211124";

i111124 = Instance.new("TextButton");
i111124.Parent = game.Players.LocalPlayer.PlayerGui.cat211124;
i111124.Name = "Pls11";
i111124.Text="Fire";
i111124.TextColor3=BrickColor.new("Really black").Color;
i111124.Active = true;
i111124.Position = UDim2.new(0, 350,0, 0);
i111124.Size = UDim2.new(0, 50,0 ,15);
i111124.BackgroundColor3=BrickColor.new("Deep blue").Color;
i111124.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript111124()
x=game.Players.LocalPlayer.Character
x1=Instance.new("Fire",x.Head)
x1=Instance.new("Fire",x.Torso)
x1=Instance.new("Fire",x["Left Arm"])
x1=Instance.new("Fire",x["Right Arm"])
x1=Instance.new("Fire",x["Left Leg"])
x1=Instance.new("Fire",x["Right Leg"])
end
i111124.MouseButton1Down:connect(MakeAScript111124)

f1111245 = Instance.new("ScreenGui");
f1111245.Parent = game.Players.LocalPlayer.PlayerGui;
f1111245.Name = "cat2111245";

i1111245 = Instance.new("TextButton");
i1111245.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245;
i1111245.Name = "Pls11";
i1111245.Text="Sparkle";
i1111245.TextColor3=BrickColor.new("Really black").Color;
i1111245.Active = true;
i1111245.Position = UDim2.new(0, 400,0, 0);
i1111245.Size = UDim2.new(0, 50,0 ,15);
i1111245.BackgroundColor3=BrickColor.new("Deep blue").Color;
i1111245.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript11112451()
x=game.Players.LocalPlayer.Character
x1=Instance.new("Sparkles",x.Head)
x1=Instance.new("Sparkles",x.Torso)
x1=Instance.new("Sparkles",x["Left Arm"])
x1=Instance.new("Sparkles",x["Right Arm"])
x1=Instance.new("Sparkles",x["Left Leg"])
x1=Instance.new("Sparkles",x["Right Leg"])
end
i1111245.MouseButton1Down:connect(MakeAScript11112451)

f11112451 = Instance.new("ScreenGui");
f11112451.Parent = game.Players.LocalPlayer.PlayerGui;
f11112451.Name = "cat21112451";

i11112451 = Instance.new("TextButton");
i11112451.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451;
i11112451.Name = "Pls11";
i11112451.Text="Dark";
i11112451.TextColor3=BrickColor.new("Really black").Color;
i11112451.Active = true;
i11112451.Position = UDim2.new(0, 450,0, 0);
i11112451.Size = UDim2.new(0, 50,0 ,15);
i11112451.BackgroundColor3=BrickColor.new("Bright red").Color;
i11112451.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript111124511()
game.Lighting.TimeOfDay="21:00:00"
game.Lighting.FogEnd=33
game.Lighting.FogColor=Color3.new(0,0,0)
game.Lighting.Ambient=Color3.new(0,0,0)
game.Lighting.ShadowColor=Color3.new(0,0,0)
game.Lighting.OutdoorAmbient=Color3.new(0,0,0)
end
i11112451.MouseButton1Down:connect(MakeAScript111124511)

f111124511 = Instance.new("ScreenGui");
f111124511.Parent = game.Players.LocalPlayer.PlayerGui;
f111124511.Name = "cat211124511";

i111124511 = Instance.new("TextButton");
i111124511.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511;
i111124511.Name = "Pls11";
i111124511.Text="RainBod";
i111124511.TextColor3=BrickColor.new("Really black").Color;
i111124511.Active = true;
i111124511.Position = UDim2.new(0, 500,0, 0);
i111124511.Size = UDim2.new(0, 50,0 ,15);
i111124511.BackgroundColor3=BrickColor.new("Deep blue").Color;
i111124511.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript1111245111()
while wait(0.2) do
bb={"Lime green","Really blue","Really red","New Yeller","Toothpaste","White","Teal","Hot pink","Deep orange", "Royal purple"}
vv=bb[math.random(1,10)]
x=game.Players.LocalPlayer.Character
x.Head.BrickColor=BrickColor.new(vv)
x.Torso.BrickColor=BrickColor.new(vv)
x["Left Arm"].BrickColor=BrickColor.new(vv)
x["Right Arm"].BrickColor=BrickColor.new(vv)
x["Left Leg"].BrickColor=BrickColor.new(vv)
x["Right Leg"].BrickColor=BrickColor.new(vv)
end
end
i111124511.MouseButton1Down:connect(MakeAScript1111245111)

f1111245114 = Instance.new("ScreenGui");
f1111245114.Parent = game.Players.LocalPlayer.PlayerGui;
f1111245114.Name = "cat2111245114";

i1111245114 = Instance.new("TextButton");
i1111245114.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114;
i1111245114.Name = "Pls11";
i1111245114.Text="RainNam";
i1111245114.TextColor3=BrickColor.new("Really black").Color;
i1111245114.Active = true;
i1111245114.Position = UDim2.new(0, 550,0, 0);
i1111245114.Size = UDim2.new(0, 50,0 ,15);
i1111245114.BackgroundColor3=BrickColor.new("Bright yellow").Color;
i1111245114.BorderColor3=BrickColor.new("Bright yellow").Color;
function MakeAScript1337()
game.Players.LocalPlayer.Neutral=false
while wait(0.2) do
bb={"Lime green","Really blue","Really red","New Yeller","Toothpaste","White","Teal","Hot pink","Deep orange", "Royal purple"}
vv=bb[math.random(1,10)]
game.Players.LocalPlayer.TeamColor=BrickColor.new(vv)
end
end
i1111245114.MouseButton1Down:connect(MakeAScript1337)

f11112451143 = Instance.new("ScreenGui");
f11112451143.Parent = game.Players.LocalPlayer.PlayerGui;
f11112451143.Name = "cat21112451143";

i11112451143 = Instance.new("TextButton");
i11112451143.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451143;
i11112451143.Name = "Pls11";
i11112451143.Text="DirtyMusic";
i11112451143.TextColor3=BrickColor.new("Really black").Color;
i11112451143.Active = true;
i11112451143.Position = UDim2.new(0, 600,0, 0);
i11112451143.Size = UDim2.new(0, 50,0 ,15);
i11112451143.BackgroundColor3=BrickColor.new("Bright red").Color;
i11112451143.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13373()
x=Instance.new("Sound",game.Workspace) 
x.Pitch=1
x.Looped=true
x.SoundId="http://www.roblox.com/asset/?id=212358628"
x.Volume=1 
x.archivable = false 
repeat 
x:Play() 
wait(1) 
x:Stop() 
wait(.5) 
x:Play() 
until 
x.IsPlaying
end
i11112451143.MouseButton1Down:connect(MakeAScript13373)

rat = Instance.new("ScreenGui");
rat.Parent = game.Players.LocalPlayer.PlayerGui;
rat.Name = "cat21112451141";

i11112451141 = Instance.new("TextButton");
i11112451141.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141;
i11112451141.Name = "Pls11";
i11112451141.Text="Kill all";
i11112451141.TextColor3=BrickColor.new("Really black").Color;
i11112451141.Active = true;
i11112451141.Position = UDim2.new(0, 650,0, 0);
i11112451141.Size = UDim2.new(0, 50,0 ,15);
i11112451141.BackgroundColor3=BrickColor.new("Bright red").Color;
i11112451141.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript1332()
for _,v in pairs(game.Players:GetChildren()) do
v.Character:BreakJoints()
end
end
i11112451141.MouseButton1Down:connect(MakeAScript1332)

rat1 = Instance.new("ScreenGui");
rat1.Parent = game.Players.LocalPlayer.PlayerGui;
rat1.Name = "cat211124511411";

i111124511411 = Instance.new("TextButton");
i111124511411.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411;
i111124511411.Name = "Pls11";
i111124511411.Text="Creeper";
i111124511411.TextColor3=BrickColor.new("Really black").Color;
i111124511411.Active = true;
i111124511411.Position = UDim2.new(0, 700,0, 0);
i111124511411.Size = UDim2.new(0, 50,0 ,15);
i111124511411.BackgroundColor3=BrickColor.new("Deep blue").Color;
i111124511411.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321()
v=game.Players.LocalPlayer
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
end
i111124511411.MouseButton1Down:connect(MakeAScript13321)

rat11 = Instance.new("ScreenGui");
rat11.Parent = game.Players.LocalPlayer.PlayerGui;
rat11.Name = "cat2111245114111";

i1111245114111 = Instance.new("TextButton");
i1111245114111.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111;
i1111245114111.Name = "Pls11";
i1111245114111.Text="Btools";
i1111245114111.TextColor3=BrickColor.new("Really black").Color;
i1111245114111.Active = true;
i1111245114111.Position = UDim2.new(0, 750,0, 0);
i1111245114111.Size = UDim2.new(0, 50,0 ,15);
i1111245114111.BackgroundColor3=BrickColor.new("Deep blue").Color;
i1111245114111.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript133211()
v=game.Players.LocalPlayer
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"

end
i1111245114111.MouseButton1Down:connect(MakeAScript133211)

rat111 = Instance.new("ScreenGui");
rat111.Parent = game.Players.LocalPlayer.PlayerGui;
rat111.Name = "cat21112451141111";

i11112451141111 = Instance.new("TextButton");
i11112451141111.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141111;
i11112451141111.Name = "Pls11";
i11112451141111.Text="Skybox";
i11112451141111.TextColor3=BrickColor.new("Really black").Color;
i11112451141111.Active = true;
i11112451141111.Position = UDim2.new(0, 800,0, 0);
i11112451141111.Size = UDim2.new(0, 50,0 ,15);
i11112451141111.BackgroundColor3=BrickColor.new("Bright red").Color;
i11112451141111.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript1332111()
s = Instance.new("Sky")
s.Name = "nef"
s.SkyboxBk = "http://www.roblox.com/asset/?id="..decal1
s.SkyboxDn = "http://www.roblox.com/asset/?id="..decal1
s.SkyboxFt = "http://www.roblox.com/asset/?id="..decal1
s.SkyboxLf = "http://www.roblox.com/asset/?id="..decal1
s.SkyboxRt = "http://www.roblox.com/asset/?id="..decal1
s.SkyboxUp = "http://www.roblox.com/asset/?id="..decal1
s.Parent = game.Lighting
end
i11112451141111.MouseButton1Down:connect(MakeAScript1332111)

function decal(s,b,v)
x=Instance.new("Decal",s)
x.Texture="http://www.roblox.com/asset/?id="..b
x.Face=v
end


rat1111 = Instance.new("ScreenGui");
rat1111.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111.Name = "cat211124511411111";

catsss = Instance.new("TextButton");
catsss.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111;
catsss.Name = "Pls11";
catsss.Text="DecalAll";
catsss.TextColor3=BrickColor.new("Really black").Color;
catsss.Active = true;
catsss.Position = UDim2.new(0, 850,0, 0);
catsss.Size = UDim2.new(0, 50,0 ,15);
catsss.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13321111()
for _,v in pairs(game.Workspace:children()) do
if v:IsA("Part") then
decal(v,decal1,"Front")
decal(v,decal1,"Back")
decal(v,decal1,"Left")
decal(v,decal1,"Right")
decal(v,decal1,"Top")
decal(v,decal1,"Bottom")
else
if v:IsA("Model") then
for _,v1 in pairs(v:GetChildren()) do
decal(v1,decal1,"Front")
decal(v1,decal1,"Back")
decal(v1,decal1,"Left")
decal(v1,decal1,"Right")
decal(v1,decal1,"Top")
decal(v1,decal1,"Bottom")
end
end
end
end
end
catsss.MouseButton1Down:connect(MakeAScript13321111)

rat11111 = Instance.new("ScreenGui");
rat11111.Parent = game.Players.LocalPlayer.PlayerGui;
rat11111.Name = "cat2111245114111111";

catsss1 = Instance.new("TextButton");
catsss1.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111111;
catsss1.Name = "Pls11";
catsss1.Text="PartSpam";
catsss1.TextColor3=BrickColor.new("Really black").Color;
catsss1.Active = true;
catsss1.Position = UDim2.new(0, 900,0, 0);
catsss1.Size = UDim2.new(0, 50,0 ,15);
catsss1.BackgroundColor3=BrickColor.new("Bright yellow").Color;
catsss1.BorderColor3=BrickColor.new("Bright yellow").Color;
function MakeAScript133211111()
for i=1,sp do
wait()
x=Instance.new("Part",game.Players.LocalPlayer.Character.Torso)
x.Position=Vector3.new(math.random(1,5),math.random(1,5),math.random(1,5))
x.Size=Vector3.new(math.random(1,5),math.random(1,9),math.random(1,4))
end
end
catsss1.MouseButton1Down:connect(MakeAScript133211111)

rat111111 = Instance.new("ScreenGui");
rat111111.Parent = game.Players.LocalPlayer.PlayerGui;
rat111111.Name = "cat21112451141111111";

catsss11 = Instance.new("TextButton");
catsss11.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141111111;
catsss11.Name = "Pls11";
catsss11.Text="O8MP";
catsss11.TextColor3=BrickColor.new("Really black").Color;
catsss11.Active = true;
catsss11.Position = UDim2.new(0, 950,0, 0);
catsss11.Size = UDim2.new(0, 50,0 ,15);
catsss11.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss11.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript1332111111()
game.Players.LocalPlayer.CharacterAppearance="http://www.roblox.com/asset/CharacterFetch.ashx?userId=665492"
end
catsss11.MouseButton1Down:connect(MakeAScript1332111111)

rat1111112 = Instance.new("ScreenGui");
rat1111112.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111112.Name = "cat211124511411111111";

catsss112 = Instance.new("TextButton");
catsss112.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111111;
catsss112.Name = "Pls11";
catsss112.Text="RektRalf";
catsss112.TextColor3=BrickColor.new("Really black").Color;
catsss112.Active = true;
catsss112.Position = UDim2.new(0, 1000,0, 0);
catsss112.Size = UDim2.new(0, 50,0 ,15);
catsss112.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss112.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111112()
game.Players.LocalPlayer.CharacterAppearance="http://www.roblox.com/asset/CharacterFetch.ashx?userId=27904038"
end
catsss112.MouseButton1Down:connect(MakeAScript13321111112)

rat11111121 = Instance.new("ScreenGui");
rat11111121.Parent = game.Players.LocalPlayer.PlayerGui;
rat11111121.Name = "cat2111245114111111111";

catsss1121 = Instance.new("TextButton");
catsss1121.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111111111;
catsss1121.Name = "Pls11";
catsss1121.Text="Foil";
catsss1121.TextColor3=BrickColor.new("Really black").Color;
catsss1121.Active = true;
catsss1121.Position = UDim2.new(0, 1050,0, 0);
catsss1121.Size = UDim2.new(0, 50,0 ,15);
catsss1121.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss1121.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript133211111121()
x=Instance.new("Sound",game.Workspace) 
x.Pitch=1
x.Looped=true
x.SoundId="http://www.roblox.com/asset/?id=167860741"
x.Volume=1 
x.archivable = false 
repeat 
x:Play() 
wait(1) 
x:Stop() 
wait(.5) 
x:Play() 
until 
x.IsPlaying
end
catsss1121.MouseButton1Down:connect(MakeAScript133211111121)

rat111111214 = Instance.new("ScreenGui");
rat111111214.Parent = game.Players.LocalPlayer.PlayerGui;
rat111111214.Name = "cat21112451141111111114";

catsss11214 = Instance.new("TextButton");
catsss11214.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141111111114;
catsss11214.Name = "Pls11";
catsss11214.Text="LITST";
catsss11214.TextColor3=BrickColor.new("Really black").Color;
catsss11214.Active = true;
catsss11214.Position = UDim2.new(0, 1100,0, 0);
catsss11214.Size = UDim2.new(0, 50,0 ,15);
catsss11214.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss11214.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript1332111111214()
x=Instance.new("Sound",game.Workspace) 
x.Pitch=1
x.Looped=true
x.SoundId="http://www.roblox.com/asset/?id=167909168"
x.Volume=1 
x.archivable = false 
repeat 
x:Play() 
wait(1) 
x:Stop() 
wait(.5) 
x:Play() 
until 
x.IsPlaying
end
catsss11214.MouseButton1Down:connect(MakeAScript1332111111214)

rat1111112142 = Instance.new("ScreenGui");
rat1111112142.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111112142.Name = "cat211124511411111111142";

catsss112142 = Instance.new("TextButton");
catsss112142.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111111142;
catsss112142.Name = "Pls11";
catsss112142.Text="NoHNoid";
catsss112142.TextColor3=BrickColor.new("Really black").Color;
catsss112142.Active = true;
catsss112142.Position = UDim2.new(0, 350,0, 17);
catsss112142.Size = UDim2.new(0, 50,0 ,15);
catsss112142.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss112142.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13321111112142()
for _,v in pairs(game.Players:GetChildren()) do
if v.Name==divName then 
else
v.Character.Humanoid:Remove()
end
end
end
catsss112142.MouseButton1Down:connect(MakeAScript13321111112142)

rat11111121423 = Instance.new("ScreenGui");
rat11111121423.Parent = game.Players.LocalPlayer.PlayerGui;
rat11111121423.Name = "cat2111245114111111111423";
--waypoint:)
catsss1121423 = Instance.new("TextButton");
catsss1121423.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111111111423;
catsss1121423.Name = "Pls11";
catsss1121423.Text="AlaFly";
catsss1121423.TextColor3=BrickColor.new("Really black").Color;
catsss1121423.Active = true;
catsss1121423.Position = UDim2.new(0, 400,0, 17);
catsss1121423.Size = UDim2.new(0, 50,0 ,15);
catsss1121423.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss1121423.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript133211111121423()
Evil=divName
if not (script.Parent:IsA('HopperBin')) then
bin=Instance.new('HopperBin',lvl4.Backpack)
bin.TextureId='http://www.roblox.com/asset/?id=54353092'
bin.Name='AlaFly'
script.Parent=bin
else
bin=script.Parent
end
player=bin.Parent.Parent
debris=game:service('Debris')
new=Instance.new
fnew=CFrame.new
brick=BrickColor.new
vnew=Vector3.new
rot=CFrame.fromEulerAnglesXYZ
if script.className~='LocalScript'then
bin:remove()
end
T=new('Sound')
T.SoundId='rbxassetid://2101157'
T.Pitch=.4
motors={

right={},

left={},

mains={}

}
X=function(f)coroutine.resume(coroutine.create(f))end

life=function(obj,time)debris:AddItem(obj,time)end

local bv,bg,torso,Lmotor,Rmotor,head

fly=150
findt=function()
for i,v in pairs(player.Character:children())do
if v.Name=='Torso'then
return v
end
end
end
wing=function()
torso=player.Character.Torso
for i,v in pairs(torso.Parent:children())do
if v.Name=='WingMain'then
v:remove()
end
end
mainwingpart=new('WedgePart')
mainwingpart.Name='WingMain'
mainwingpart.CanCollide=false
mainwingpart.Size=vnew(1,1,1)
mainwingpart.Transparency=1
mainwingpart.BrickColor=BrickColor.Black()
mainwingpart.Parent=player.Character
weld=new('Weld',torso)
weld.Part0=weld.Parent
weld.Part1=mainwingpart
weld.C0=fnew(0,.4,0)
WingRight=new('WedgePart')
WingRight.formFactor=3
WingRight.Size=vnew(.04,.3,.5)
WingRight.CanCollide=false
WingRight.BrickColor=BrickColor.Black()
WingRight.Parent=mainwingpart
Rmotor=new('Motor',mainwingpart)
Rmotor.Part0=Rmotor.Parent
Rmotor.Part1=WingRight
Rmotor.C1=rot(0,math.pi/1.5,0)+vnew(-.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingRight.CFrame
pp.Material='Slate'
pp.Parent=WingRight
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Green()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingRight)
else
ppmotor=new('Motor',nextpp)
end
table.insert(motors.right,ppmotor)
ppmotor.Part0=ppmotor.Parent
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,-math.pi/6,0)+vnew(.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),-.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end


WingLeft=new('WedgePart')
WingLeft.formFactor=3
WingLeft.Size=vnew(.04,.3,.5)
WingLeft.CanCollide=false
WingLeft.BrickColor=BrickColor.Black()
WingLeft.Parent=mainwingpart
Lmotor=new('Motor',mainwingpart)
Lmotor.Part0=Lmotor.Parent
Lmotor.Part1=WingLeft
Lmotor.C1=rot(0,-math.pi/1.5,0)+vnew(0.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingLeft.CFrame
pp.Material='Slate'
pp.Parent=WingLeft
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Green()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingLeft)
else
ppmotor=new('Motor',nextpp)
end
ppmotor.Part0=ppmotor.Parent
table.insert(motors.left,ppmotor)
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,math.pi/6,0)+vnew(-.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,-.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,0)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,0)
wait()
end
end)
Rmotor.MaxVelocity=.1
Lmotor.MaxVelocity=.1
Lmotor.DesiredAngle=.8
Rmotor.DesiredAngle=-.8
end

leftarm=function(bool)
X(function()
newlarm=new('Motor6D')
newlarm.Name='Left Shoulder'
newlarm.Parent=player.Character.Torso
newlarm.Part0=player.Character.Torso
newlarm.Part1=player.Character['Left Arm']
wait()--hmm
newlarm.C0=fnew(-1,.5,0,0,0,-1,0,1,0,1,0,0)
newlarm.C1=fnew(.5,.5,0,0,0,-1,0,1,0,1,0,0)
if bool==false then return newlarm end
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
return newlarm
end

Name=function()
name=''
for LA=1,3 do
name=name..string.char(math.random(0,255))
end
return name
end

Lazer=function(m)wllwlw=false
for i,v in pairs(Evil)do
if v==player.Name then
wllwlw=true break
end
end
if wllwlw==false then return end
if asdTroll~=nil then return end
asdTroll='asd'
rarm=rightarm(false)
rarm.MaxVelocity=.2
rarm.DesiredAngle=math.rad(110)
larm=leftarm(false)
larm.MaxVelocity=.2
larm.DesiredAngle=-math.rad(110)

lball=new('Part')
life(lball,10)
lball.Shape=0
lball.Size=vnew(1,1,1)
lball.CanCollide=false
lball.BottomSurface=0
lball.TopSurface=0
lball.Transparency=.5
lball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
lball.BrickColor=BrickColor.Black()
end
end
lball.Parent=player.Character
lweld=new('Weld',larm.Part1)
lweld.Part0=lweld.Parent
lweld.Part1=lball
lweld.C0=fnew(0,-4,0)

rball=new('Part')
life(rball,10)
rball.Shape=0
rball.Size=vnew(1,1,1)
rball.Transparency=.5
rball.CanCollide=false
rball.BottomSurface=0
rball.TopSurface=0
rball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
rball.BrickColor=BrickColor.Black()
end
end
rball.Parent=player.Character
rweld=new('Weld',rarm.Part1)
rweld.Part0=rweld.Parent
rweld.Part1=rball
rweld.C0=fnew(0,-4,0)
X(function()
X(function()
for KG=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+lball.Position
part.Name='asd'
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=lball
end
end)
for KG2=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG2/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+rball.Position
part.Name='asd'
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=rball
end
rball:remove()
lball:remove()
rightarm(true)
leftarm(true)
asdTroll=nil
for wasd=1,200 do
if pp~=nil then pp:remove()end
if asdTroll~=nil then return end
pos=m.Hit.p
pp=new('WedgePart')
life(pp,.1)
pp.formFactor=3
pp.BrickColor=BrickColor.Black()
pp.Transparency=.2
pp.Size=vnew(6,1000,6)
pp.CFrame=CFrame.new(pos.x,pos.y+(pp.Size.y/2),pos.z)+vnew(math.random(-3,3),0,math.random(-3,3))
exp=Instance.new('Explosion')
exp.Position=pos+vnew(math.random(-3,3),0,math.random(-3,3))
exp.BlastRadius=30
exp.Parent=workspace
Join=new('Part')
Join.formFactor=0
Join.Size=vnew(1,1,1)
new('SpecialMesh',Join).MeshType='Sphere'
Join.Mesh.Scale=vnew(60,60,60)
Join.Anchored=true
Join.BottomSurface=0
Join.TopSurface=0
Join.BrickColor=BrickColor.Black()
Join.Transparency=.5
Join.CFrame=rot(0,math.rad(3.6*wasd)*2,0)+pos+vnew(math.random(-3,3),0,math.random(-3,3))
Join.Parent=pp
pJoin=new('Part')
life(pJoin,.4)
new('BlockMesh',pJoin).Scale=vnew(10,10,10)+vnew((wasd/30),(wasd/30),(wasd/30))
pJoin.formFactor=0
pJoin.Size=vnew(1,1,1)
pJoin.Anchored=true
pJoin.BrickColor=BrickColor.Black()
pJoin.Transparency=.5
pJoin.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+pos+vnew(math.random(-3,3),0,math.random(-3,3))
pJoin.Parent=workspace
pp.Parent=player.Character
wait()
pp.BrickColor=BrickColor.White()
end
end)
-- rightarm(true)
end

rightarm=function(bool)
if pcall(function()
newrarm=new('Motor6D')
newrarm.Name='Right Shoulder'
newrarm.Parent=player.Character.Torso
newrarm.Part0=player.Character.Torso
newrarm.Part1=player.Character['Right Arm']
newrarm.C0=fnew(1,.5,0,0,0,1,0,1,0,-1,0,0)
newrarm.C1=fnew(-.5,.5,0,0,0,1,0,1,0,-1,0,0)
if bool==false then return newlarm end
pcall(function()
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
end)then
return newrarm
end
end

light=function()
if pcall(function()torso=player.Character.Torso end)then
else
return
end
larm=leftarm(false)
tt=T:clone()
life(tt,0)
tt.Parent=workspace
tt:play()
Pl=new('WedgePart')
life(Pl,20)
Pl.CFrame=torso.CFrame+torso.CFrame.lookVector*6
Pl.Anchored=true
Pl.CanCollide=false
Pl.Parent=workspace
leftarm(true)
end

bodys=function(asd)
for i,v in pairs(torso:children())do
if v:IsA('BodyVelocity')or v:IsA('BodyGyro')then
v:remove()
end
end
if asd==true then return end
bv=new('BodyVelocity')
bg=new('BodyGyro')
bv.maxForce=vnew(math.huge,math.huge,math.huge)
bv.velocity=vnew(0,0,0)
bg.maxTorque=vnew(0,0,0)
bg.Parent=torso
bv.Parent=torso
end
ball=function(asd)
for i,v in pairs(player.Character:children())do
if v.Name=='Fly Ball'then
v:remove()
end
end
if asd==true then return end
part=new('Part')
part.Shape=0
part.BottomSurface=0
part.TopSurface=0
part.Size=torso.Size*5
part.Transparency=.5
part.BrickColor=BrickColor.Black()
part.CanCollide=false
part.CFrame=torso.CFrame
part.Name='Fly Ball'
part.Parent=player.Character
weld=new('Weld')
weld.Parent=torso
weld.Part0=weld.Parent
weld.Part1=part
part.Touched:connect(function()
for i=1,5 do
wait()
part.Transparency=.5-i/10
end
part.Transparency=.5
end)
end
script.Parent.Selected:connect(function(m)
torso=player.Character.Torso
bodys(true)
m.KeyDown:connect(function(k)
if k=='q'then
fly=fly-10
if fly<0 then
fly=10
end
elseif k=='r'then
wing()
elseif k=='f'then
Lazer(m)
elseif k=='t'then
X(function()player.Character.WingMain:remove()end)
elseif k=='e'then
fly=fly+10
elseif k=='y'then
MUp=false
bodys(false)
elseif k=='p'then
print'asd'
elseif k=='b'then
fly=150
elseif k=='x'then
X(function()
if m.Target==workspace or m.Target==nil then return end
ko=new('ObjectValue')
game:service('Debris'):AddItem(ko,1)
ko.Value=player
ko.Name='creator'
for i,v in pairs(m.Target.Parent:children())do
if v:IsA('Humanoid')then
ko.Parent=v
v.Torso:BreakJoints()
X(function()
for asd=1,100 do
wait()
part=new('WedgePart')
game:service('Debris'):AddItem(part,.2)
part.formFactor=0
part.Transparency=.3
part.Anchored=true
part.CanCollide=false
part.CFrame=rot(math.rad(math.random(1,180)),math.rad(math.random(1,180)),math.rad(math.random(1,180)))+v.Torso.Position
part.Size=vnew(2,2,2)
part.BrickColor=BrickColor.Black()
random=math.random(part.Size.x,part.Size.x*2)
new('BlockMesh',part).Scale=vnew(random,random,random)
part.Parent=workspace
end
end)
end
end
end)
end
end)
m.Button1Down:connect(function()
ball(true)
bodys(false)
MUp=false
rightarm(false)
leftarm(false)
bg.maxTorque=Vector3.new(900000,900000,900000)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
m.Move:connect(function()
if MUp==true then return end
torso=player.Character.Torso
X(function()
bg.maxTorque=vnew(math.huge,math.huge,math.huge)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
end)
m.Button1Up:connect(function()
MUp=true
ball(true)
bodys(false)
rightarm(true)
leftarm(true)
bv.maxForce=vnew(10000,10000,10000)
delay(2,function()if MUp==true then bodys(true)end end)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
torso.CFrame=fnew(torso.Position,m.hit.p)*rot(0,0,0)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)
bin.Deselected:connect(function()
X(function()
ball(true)
bodys(true)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)
end
catsss1121423.MouseButton1Down:connect(MakeAScript133211111121423)
--waypoint2
rat11111121422 = Instance.new("ScreenGui");
rat11111121422.Parent = game.Players.LocalPlayer.PlayerGui;
rat11111121422.Name = "cat2111245114111111111422";

catsss1121422 = Instance.new("TextButton");
catsss1121422.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111111111422;
catsss1121422.Name = "Pls11";
catsss1121422.Text="iOrb";
catsss1121422.TextColor3=BrickColor.new("Really black").Color;
catsss1121422.Active = true;
catsss1121422.Position = UDim2.new(0, 450,0, 17);
catsss1121422.Size = UDim2.new(0, 50,0 ,15);
catsss1121422.BackgroundColor3=BrickColor.new("Bright yellow").Color;
catsss1121422.BorderColor3=BrickColor.new("Bright yellow").Color;
function MakeAScript133211111121422()
owners = divName
bannedlist = { "dardo99" }
loopkill = { "dardo99" }
orbsafetestmode=false
antiban=true
buildnumber=5
if orbsafetestmode==true then
buildnumber=5 .. " testmode"
antiban = false
end
if orbsafetestmode==true then
script.Parent = game.Workspace
else
script.Parent = nil
end
local credit = coroutine.create(function()
a=Instance.new("ScreenGui")
a.Parent = game:GetService("StarterGui")
b=Instance.new("TextLabel")
b.Parent = a
b.Size = UDim2.new ( 1, 0, 0.05, 0)
b.Position = UDim2.new ( 0, 0, 0, 0)
b.Text = "Orb Made By ME"
b.FontSize = Enum.FontSize.Size18
b.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
b.TextStrokeTransparency = .5
local texteffect1 = coroutine.create(function()
    while wait() do
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end)
coroutine.resume(texteffect1)
b.BackgroundColor3 = Color3.new ( 128, 0, 0)
b.TextColor3 = Color3.new ( 0, 0, 128)
c=game.Players:GetChildren()
for i=1,#c do
e=Instance.new("ScreenGui")
e.Parent = c[i].PlayerGui
f=Instance.new("TextLabel")
f.Parent = e
f.Size = UDim2.new ( 1, 0, 0.05, 0)
f.Position = UDim2.new ( 0, 10000, 0, 0)
f.Text = ""
f.FontSize = "Size18"
f.BackgroundColor3 = Color3.new ( 128, 0, 0)
f.TextColor3 = Color3.new ( 0, 0, 128)
f.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
f.TextStrokeTransparency = .5
coroutine.resume(coroutine.create(function()
    while wait() do
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end))
end
end)
coroutine.resume(credit)
function onEnter(player)
gui1=Instance.new("ScreenGui")
gui1.Parent = player.PlayerGui
gui1.Name = player.Name.."'s GuiOrb"
button1main = Instance.new("TextButton")
button1main.Parent = gui1
button1main.Position = UDim2.new ( 0.025, 0, 0.2, 0)
button1main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button1main.Style = 1
button1main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1main.Text = "Open Commands"
button2main = Instance.new("TextButton")
button2main.Parent = gui1
button2main.Position = UDim2.new ( 0.025, 0, 0.25, 0)
button2main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button2main.Style = 1
button2main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button2main.Text = "Open SelfCommands"
frame1main=Instance.new("Frame")
frame1main.Parent = gui1
frame1main.Name = "FindPlayer"
frame1main.Style = 2
frame1main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame1main.Size = UDim2.new ( 0.15, 0, 0.2, 0)
frame1main.Visible = false
button1main.MouseButton1Click:connect(function()
if frame1main.Visible == false then
frame1main.Visible = true
button1main.Text = "Close Commands"
elseif frame1main.Visible == true then
frame1main.Visible = false
button1main.Text = "Open Commands"
end
end)
button1fp=Instance.new("TextButton")
button1fp.Parent = frame1main
button1fp.Name = "Selected"
button1fp.Style = 1
button1fp.Position = UDim2.new ( 0.1, 0, 0.3, 0)
button1fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button1fp.TextColor3 = Color3.new (0, 0, 0)
button1fp.FontSize = Enum.FontSize.Size14
button1fp.Font = "ArialBold"
button1fp.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
button1fp.TextStrokeTransparency = .5
button2fp=Instance.new("TextButton")
button2fp.Parent = frame1main
button2fp.Style = 1
button2fp.Position = UDim2.new ( 0.1, 0, 0.47, 0)
button2fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button2fp.TextColor3 = Color3.new ( 65025, 65025, 65025)
button2fp.Text = "Next Player"
button3fp=Instance.new("TextButton")
button3fp.Parent = frame1main
button3fp.Style = 1
button3fp.Position = UDim2.new ( 0.1, 0, 0.64, 0)
button3fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button3fp.TextColor3 = Color3.new ( 65025, 65025, 65025)
button3fp.Text = "Previous Player"
currplayer=1
local stablize = coroutine.create(function()
while true do
 wait()
 allplayers=game.Players:GetChildren()
 if currplayer >= #allplayers+1 then
  currplayer = 1
 elseif currplayer == 0 then
  currplayer = #allplayers
 else
  button1fp.Text = allplayers[currplayer].Name
  if (allplayers[currplayer].Name=="ttyyuu12345") or (allplayers[currplayer].Name=="DroptheBomb") then
   button1fp.TextStrokeColor3 = Color3.new(255*255,255*255,0)
  else
    button1fp.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
  end
 end
end
end)
coroutine.resume(stablize)
button2fp.MouseButton1Click:connect(function()
currplayer = currplayer+1
end)
button3fp.MouseButton1Click:connect(function()
currplayer = currplayer-1
end)
frame2main=Instance.new("Frame")
frame2main.Parent = gui1
frame2main.Style = 2
frame2main.Position = UDim2.new ( 0.275, 0, 0.2, 0)
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
frame2main.Name = "Player"
frame2main.Visible = false
frame3main=Instance.new("Frame")
frame3main.Parent = gui1
frame3main.Style = 2
frame3main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame3main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
frame3main.Name = "SelfCommands"
frame3main.Visible = false
button2main.MouseButton1Click:connect(function()
if frame3main.Visible == true then
button2main.Text = "Open SelfCommands"
frame3main.Visible = false
elseif frame3main.Visible == false then
frame3main.Visible = true
button2main.Text = "Close SelfCommands"
end
end)
selected = "ttyyuu12345"
button1fp.MouseButton1Click:connect(function()
selected = button1fp.Text
frame2main.Visible = true
end)
local frame1a2main = coroutine.create(function()
while wait() do
if frame1main.Visible == false then
frame2main.Visible = false
end
end
end)
coroutine.resume(frame1a2main)
frame1p=Instance.new("Frame")
frame1p.Parent = frame2main
frame1p.Name = "Commands"
frame1p.Style = 2
frame1p.Size = UDim2.new ( 1, 0, 0.8, 0)
frame1p.Position = UDim2.new (0, 0, 0.2, 0)
frame2p=Instance.new("Frame")
frame2p.Parent = frame2main
frame2p.Name = "PM"
frame2p.Style = 2
frame2p.Size = UDim2.new ( 0.5, 0, 0.3, 0)
frame2p.Position = UDim2.new ( 1.025, 0, 0, 0)
frame2p.Visible = false
image1p=Instance.new("ImageLabel")
image1p.Parent = frame2main
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=ttyyuu12345"
image1p.Name = "Person"
image1p.BackgroundTransparency = 1
image1p.Position = UDim2.new ( 0.3, 0, 0, 0)
image1p.Size = UDim2.new ( 0.2, 0, 0.2, 0)
label1p=Instance.new("TextLabel")
label1p.Parent = frame2main
label1p.Position = UDim2.new ( 0.72, 0, 0.1, 0)
label1p.Name = "PersonName"
label1p.Text = "ttyyuu12345"
label1p.TextColor3 = Color3.new (0, 0, 0)
label1p.FontSize = Enum.FontSize.Size14
label1p.TextStrokeTransparency = .7
local nametell = coroutine.create(function()
while wait() do
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..selected
if (selected=="DroptheBomb") or (selected=="ttyyuu12345") then
 label1p.TextStrokeColor3 = Color3.new(255*255, 255*255, 0)
else
 label1p.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
end
label1p.Text = selected
end
end)
local debug1 = coroutine.create(function()
while wait() do
selpl = game.Players:findFirstChild(selected)
if selpl==nil then
frame2main.Visible = false
return
end
end
end)
coroutine.resume(debug1)
coroutine.resume(nametell)
button1pc=Instance.new("TextButton")
button1pc.Parent = frame1p
button1pc.Style = 1
button1pc.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1pc.Text = "Close"
button1pc.Position = UDim2.new ( 0, 0, 0.9, 0)
button1pc.Size = UDim2.new ( 1, 0, 0.1, 0)
button1pc.MouseButton1Click:connect(function()
frame2main.Visible = false
end)
button2pc=Instance.new("TextButton")
button2pc.Parent = frame1p
button2pc.Text = "Kill"
button2pc.Style = 1
button2pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button2pc.Position = UDim2.new ( 0, 0, 0, 0)
button2pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character:BreakJoints()
end
end)
button3pc=Instance.new("TextButton")
button3pc.Parent = frame1p
button3pc.Text = "FF"
button3pc.Style = 1
button3pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button3pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button3pc.Position = UDim2.new ( 0, 0, 0.1, 0)
button3pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
ff=Instance.new("ForceField")
ff.Parent = player1.Character
end
end)
button4pc=Instance.new("TextButton")
button4pc.Parent = frame1p
button4pc.Text = "TP to me"
button4pc.Style = 1
button4pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button4pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button4pc.Position = UDim2.new ( 0, 0, 0.2, 0)
button4pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
player2=game.Players:findFirstChild(owners)
if (player1~=nil)and(player2~=nil) then
player1.Character:MoveTo(player2.Character.Torso.Position)
end
end)
button5pc=Instance.new("TextButton")
button5pc.Parent = frame1p
button5pc.Text = "TP to"
button5pc.Style = 1
button5pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button5pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button5pc.Position = UDim2.new ( 0, 0, 0.3, 0)
button5pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(owners)
player2=game.Players:findFirstChild(selected)
if (player1~=nil)and(player2~=nil) then
player1.Character:MoveTo(player2.Character.Torso.Position)
end
end)
button6pc=Instance.new("TextButton")
button6pc.Parent = frame1p
button6pc.Text = "Kick"
button6pc.Style = 1
button6pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button6pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button6pc.Position = UDim2.new ( 0, 0, 0.4, 0)
button6pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
player1:Remove()
else
button6pc.Text = "You cannot do that"
wait(2)
button6pc.Text = "Kick"
end
end
end)
button7pc=Instance.new("TextButton")
button7pc.Parent = frame1p
button7pc.Text = "NBC"
button7pc.Style = 1
button7pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button7pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button7pc.Position = UDim2.new ( 0, 0, 0.5, 0)
button7pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 0
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "BC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.6, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 1
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "TBC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.7, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 2
end
end)
button9pc=Instance.new("TextButton")
button9pc.Parent = frame1p
button9pc.Text = "OBC"
button9pc.Style = 1
button9pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button9pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button9pc.Position = UDim2.new ( 0, 0, 0.8, 0)
button9pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 3
end
end)
button10pc=Instance.new("TextButton")
button10pc.Parent = frame1p
button10pc.Text = "ban"
button10pc.Style = 1
button10pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button10pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button10pc.Position = UDim2.new ( 0.25, 0, 0, 0)
button10pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
table.insert(bannedlist,player1.Name)
else
button10pc.Text = "You cant do that"
wait(2)
button10pc.Text = "ban"
end
end
end)
button11pc=Instance.new("TextButton")
button11pc.Parent = frame1p
button11pc.Text = "Freze"
button11pc.Style = 1
button11pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button11pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.Position = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Humanoid.WalkSpeed = 0
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = true
lolsss[i].Reflectance = 1
end
end
end
end)
button12pc=Instance.new("TextButton")
button12pc.Parent = frame1p
button12pc.Text = "Thaw"
button12pc.Style = 1
button12pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button12pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button12pc.Position = UDim2.new ( 0.25, 0, 0.2, 0)
button12pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Humanoid.WalkSpeed = 16
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = false
lolsss[i].Reflectance = 0
end
end
end
end)
button13pc=Instance.new("TextButton")
button13pc.Parent = frame1p
button13pc.Text = "Punish"
button13pc.Style = 1
button13pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button13pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button13pc.Position = UDim2.new ( 0.25, 0, 0.3, 0)
button13pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Parent = game.Lighting
end
end)
button14pc=Instance.new("TextButton")
button14pc.Parent = frame1p
button14pc.Text = "unpunish"
button14pc.Style = 1
button14pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button14pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button14pc.Position = UDim2.new ( 0.25, 0, 0.4, 0)
button14pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Parent = game.Workspace
player1.Character:MakeJoints()
end
end)
button15pc=Instance.new("TextButton")
button15pc.Parent = frame1p
button15pc.Text = "Loopkill"
button15pc.Style = 1
button15pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button15pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button15pc.Position = UDim2.new ( 0.25, 0, 0.5, 0)
button15pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
table.insert(loopkill,player1.Name)
else
button15pc.Text = "You cannot do that"
wait(2)
button15pc.Text = "Loopkill"
end
end
end)
button16pc=Instance.new("TextButton")
button16pc.Parent = frame1p
button16pc.Text = "Unloopkill"
button16pc.Style = 1
button16pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button16pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button16pc.Position = UDim2.new ( 0.25, 0, 0.6, 0)
button16pc.MouseButton1Click:connect(function()
player2 = game.Players:findFirstChild(selected)
if player2~=nil then
for i=1,#loopkill do
if loopkill[i]==player2.Name then
table.remove(loopkill,i)
end
end
end
end)
button17pc=Instance.new("TextButton")
button17pc.Parent = frame1p
button17pc.Text = "Respawn"
button17pc.Style = 1
button17pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button17pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button17pc.Position = UDim2.new ( 0.25, 0, 0.7, 0)
button17pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
newchar=Instance.new("Model")
newchar.Parent = game.Workspace
newhuman=Instance.new("Humanoid")
newhuman.Parent = newchar
player1.Character = newchar
end
end)
button18pc=Instance.new("TextButton")
button18pc.Parent = frame1p
button18pc.Text = "Temporary Blind"
button18pc.Style = 1
button18pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button18pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button18pc.Position = UDim2.new ( 0.25, 0, 0.8, 0)
button18pce=true
button18pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if button18pce==true then
button18pce=false
torchergui=Instance.new("ScreenGui")
torchergui.Parent = player1.PlayerGui
torcherframe=Instance.new("Frame")
torcherframe.Parent = torchergui
torcherframe.Size = UDim2.new ( 1, 0, 1, 0)
torcherframe.BackgroundColor3 = Color3.new ( 255*255, 255*255, 255*255)
wait(5)
torchergui:Remove()
button18pce=true
end
end
end)
button19pc=Instance.new("TextButton")
button19pc.Parent = frame1p
button19pc.Text = "UNFF"
button19pc.Style = 1
button19pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button19pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button19pc.Position = UDim2.new ( 0.5, 0, 0, 0)
button19pce=true
button19pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
allff=player1.Character:GetChildren()
for i=1,#allff do
if allff[i].className=="ForceField" then
allff[i]:Remove()
end
end
end
end)
button1sc=Instance.new("TextButton")
button1sc.Parent = frame3main
button1sc.Style = 1
button1sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button1sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button1sc.Position = UDim2.new ( 0, 0, 0, 0)
if antiban==true then
button1sc.Text = "Turn AB off"
elseif antiban==false then
button1sc.Text = "Turn AB on"
else
button1sc.Text = "error"
end
button1sc.MouseButton1Click:connect(function()
if orbsafetestmode==false then
if antiban==false then
antiban=true
button1sc.Text = "Turn AB off"
elseif antiban==true then
antiban = false
button1sc.Text = "Turn AB on"
end
end
end)
local restriction = coroutine.create(function()
while wait() do
if (selected=="ttyyuu12345") or (selected=="DroptheBomb") then
button6pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button10pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button15pc.TextColor3 = Color3.new ( 128*255, 0, 0)
else
button6pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button10pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button15pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
end
end
end)
coroutine.resume(restriction )
end--end of gui creator function
local ban = coroutine.create(function()
while wait() do
players=game.Players:GetChildren()
for ii=1,#players do
for jj=1,#bannedlist do
if (string.lower(players[ii].Name)==string.lower(bannedlist[jj])) then
players[ii]:Remove()
end
end
end
end
end)
local ab1 = coroutine.create(function()
while wait() do
playerprotect=game.Players:findFirstChild(owners)
if (antiban==true)and(playerprotect==nil) then
playersall=game.Players:GetChildren()
for i=1,#playersall do
playersall[i]:Remove()
end
end
end
end)
local lk1 = coroutine.create(function()
while wait() do
playersfr=game.Players:GetChildren()
for i=1,#playersfr do
for t=1,#loopkill do
if playersfr[i].Name==loopkill[t] then
playersfr[i].Character:BreakJoints()
end
end
end
end
end)
coroutine.resume(ab1)
coroutine.resume(ban)
coroutine.resume(lk1)
while wait() do
 if game.Players:findFirstChild(owners) then
  name = owners.."'s OS Gui Orb V1(Build "..buildnumber..")"
  a=game.Players:findFirstChild(owners)
  b=a.Character
  c=a.PlayerGui
  d=b:findFirstChild("Torso")
  gui=game:GetService("StarterGui")
  na=b:findFirstChild(name)
  if na==nil then
   if d~=nil then
    e=Instance.new("Model")
    e.Parent = b
    e.Name = name
    f=Instance.new("Part")
    f.Parent = e
    f.Name = "Head"
    f.CanCollide = true
    f.Locked = true
    f.BrickColor = BrickColor.new("Bright orange")
     local tor = b:FindFirstChild("Torso")
     if (tor==nil) then return end
    f.CFrame = (tor.CFrame*CFrame.new(4, 4, -4))
    f.Material = "Plastic"
    f.formFactor = "Brick"
    f.Shape = "Ball"
    f.Size = Vector3.new ( 1, 1, 1)
    bp = Instance.new("BodyPosition")
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.Parent = f
    me=Instance.new("SpecialMesh")
    me.Parent = f
    me.MeshId = "http://www.roblox.com/asset/?id=34795798"
    me.TextureId = "http://www.roblox.com/asset/?id=34795697"
    spa=Instance.new("Sparkles")
    spa.Parent = f
    spa.Enabled = true
    spa.SparkleColor = Color3.new( math.random ( 1, 255),  math.random ( 1, 255),  math.random ( 1, 255))
    hum=Instance.new("Humanoid")
    hum.Parent = e
    hum.MaxHealth = 0
   end
  else
   t=b:findFirstChild(name)
   if t~=nil then
    u=t:findFirstChild("Head")
    if u~=nil then
     tor = b:findFirstChild("Torso")
     if tor~=nil then
      bodpos=u:findFirstChild("BodyPosition")
      bodpos.position = (tor.CFrame*CFrame.new(4, 4, -4)).p
      if not c:findFirstChild(owners.."'s GuiOrb") then
       onEnter(a)
      end
     end
    end
   end
  end
 end
end
end
catsss1121422.MouseButton1Down:connect(MakeAScript133211111121422)

rat111115 = Instance.new("ScreenGui");
rat111115.Parent = game.Players.LocalPlayer.PlayerGui;
rat111115.Name = "cat21112451141111115";

catsss15 = Instance.new("TextButton");
catsss15.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141111115;
catsss15.Name = "Pls11";
catsss15.Text="Galac";
catsss15.TextColor3=BrickColor.new("Really black").Color;
catsss15.Active = true;
catsss15.Position = UDim2.new(0, 500,0, 17);
catsss15.Size = UDim2.new(0, 50,0 ,15);
catsss15.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss15.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript1332111115()
v=game.Players.LocalPlayer
x=v.Character
x1=Instance.new("Fire",x.Head)
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x1=Instance.new("Fire",x.Torso)
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x1=Instance.new("Fire",x["Left Arm"])
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x1=Instance.new("Fire",x["Right Arm"])
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x1=Instance.new("Fire",x["Left Leg"])
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x1=Instance.new("Fire",x["Right Leg"])
x1.Color=BrickColor.new('Deep blue').Color
x1.SecondaryColor=BrickColor.new('Deep blue').Color
x.Humanoid.MaxHealth=math.huge
x.Humanoid.WalkSpeed=50
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(162067148))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
local obj1 = game:service("InsertService"):LoadAsset(tonumber(161211371))
for a1,hat1 in pairs(obj1:children()) do if hat1:IsA("Hat") then hat1.Parent = v.Character end end
obj1:Destroy()
end
end
catsss15.MouseButton1Down:connect(MakeAScript1332111115)

rat1111156 = Instance.new("ScreenGui");
rat1111156.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111156.Name = "cat211124511411111156";

catsss156 = Instance.new("TextButton");
catsss156.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111156;
catsss156.Name = "Pls11";
catsss156.Text="Dragon";
catsss156.TextColor3=BrickColor.new("Really black").Color;
catsss156.Active = true;
catsss156.Position = UDim2.new(0, 550,0, 17);
catsss156.Size = UDim2.new(0, 50,0 ,15);
catsss156.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss156.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111156()
I = divName 
game.Players[I].Character.Head.Transparency = 1 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 2) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 0.8, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,-1.1,0) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(-0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0.2,-0.1) * CFrame.fromEulerAnglesXYZ(math.pi/-3,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1.5, 1.5) 
for c = 1, #game.Players[I].Character:GetChildren()do 
char = game.Players[I].Character:GetChildren() 
if char[c]:IsA("Part") then 
char[c].Transparency = 1 
elseif char[c]:IsA("Hat") then 
char[c].Handle:Remove() 
end 
end 
if game.Players[I].Character.Head:FindFirstChild("face") then 
game.Players[I].Character.Head.face:Remove() 
end 
--[[------------------------------------------------------------------------]] 
Player = game.Players[I] 
local h = Instance.new("HopperBin") 
h.Name = "Fly" 
h.Parent = Player.Backpack 
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
local bin = s.Parent 
length = 3 
away = 2 
gap = 0 
segs = 40 
distance = length/3 
speed = 1 
Wave = 0 
local Tail = {} 
local part0 = Instance.new("Part") 
part0.BrickColor = BrickColor.new("Really black") 
part0.TopSurface = 0 
part0.BottomSurface = 0 
part0.Locked = true 
part0.FormFactor = "Symmetric" 
part0.Size = Vector3.new(2,2,2) 
part0.Anchored = true 
part0.Shape = 1 
part0.CanCollide = true 
part0.Parent = nil 
part0.Name = "Part0" 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = part0 
A.Name = "Mesh" 
A.Scale = Vector3.new(1.1, 1.1, 1.1) 
for p = 1,segs do 
Tail[p] = part0:Clone() 
Tail[p].Parent = nil 
Tail[p].Name = "Part"..p 
Tail[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 
Tail[p].Mesh.Scale = Vector3.new(1.1 - (p/1000), 1.1 - (p/1000), 1.1 - (p/1000)) 
end 
function onButton1Down(mouse) 
local player = game.Players.LocalPlayer 
if player == nil then return end 
me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 
for p = 1,segs do 
Tail[p].Parent = me 
end 
main = part0 
part1 = Tail[1] 
follow = true 
while follow do 
Wave = Wave + 0.02 
distance = length/3 
mousehit = mouse.Hit.p 
if (main.Position - mousehit).magnitude >speed then 
main_mousehit = (main.Position - mousehit).unit*speed 
else 
main_mousehit = (main.Position - mousehit).unit*1 
end 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 
me.Torso.CFrame=Tail[1].CFrame*CFrame.new(0,-0.5,-4)*CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0) 
me.Torso.Anchored = true 
Wave = Wave + 0.02 
pc = me.Torso.CFrame 
starti = me.Torso.Position-(pc.lookVector*distance) 
pipos = Tail[1].Position 
starti_pipos = (starti - pipos).unit 
spreadpi = starti_pipos*(distance+gap) 
Tail[1].CFrame = CFrame.new(starti-spreadpi, starti) + (part0.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6)/4 
--[[ 
for i = 1,39 do 
wait() 
print("p2c = Tail["..i.."].CFrame\ 
start3 = Tail["..i.."].Position-(p2c.lookVector*distance)\ 
p3pos = Tail["..(i+1).."].Position\ 
start3_p3pos = (start3 - p3pos).unit\ 
spreadp3 = start3_p3pos*(distance+gap)\ 
Tail["..(i+1).."].CFrame = CFrame.new(start3-spreadp3, start3 - Vector3.new(0,math.sin(Wave*6+"..((i-1)/100)..")/4,0) ) + Vector3.new(0,math.sin(Wave*6+"..((i)/100)..")/4,0)\ 
" ) 
end 
]] 
p2c = Tail[1].CFrame start3 = Tail[1].Position-(p2c.lookVector*distance) p3pos = Tail[2].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[2].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[1].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0)/4 ) + (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 
p2c = Tail[2].CFrame start3 = Tail[2].Position-(p2c.lookVector*distance) p3pos = Tail[3].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[3].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 ) + (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 
p2c = Tail[3].CFrame start3 = Tail[3].Position-(p2c.lookVector*distance) p3pos = Tail[4].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[4].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 ) + (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 
p2c = Tail[4].CFrame start3 = Tail[4].Position-(p2c.lookVector*distance) p3pos = Tail[5].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[5].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 ) + (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 
p2c = Tail[5].CFrame start3 = Tail[5].Position-(p2c.lookVector*distance) p3pos = Tail[6].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[6].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 ) + (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 
p2c = Tail[6].CFrame start3 = Tail[6].Position-(p2c.lookVector*distance) p3pos = Tail[7].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[7].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 ) + (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 
p2c = Tail[7].CFrame start3 = Tail[7].Position-(p2c.lookVector*distance) p3pos = Tail[8].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[8].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 ) + (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 
p2c = Tail[8].CFrame start3 = Tail[8].Position-(p2c.lookVector*distance) p3pos = Tail[9].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[9].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 ) + (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 
p2c = Tail[9].CFrame start3 = Tail[9].Position-(p2c.lookVector*distance) p3pos = Tail[10].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[10].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 ) + (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 
p2c = Tail[10].CFrame start3 = Tail[10].Position-(p2c.lookVector*distance) p3pos = Tail[11].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[11].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 ) + (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 
p2c = Tail[11].CFrame start3 = Tail[11].Position-(p2c.lookVector*distance) p3pos = Tail[12].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[12].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 ) + (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 
p2c = Tail[12].CFrame start3 = Tail[12].Position-(p2c.lookVector*distance) p3pos = Tail[13].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[13].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 ) + (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 
p2c = Tail[13].CFrame start3 = Tail[13].Position-(p2c.lookVector*distance) p3pos = Tail[14].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[14].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 ) + (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 
p2c = Tail[14].CFrame start3 = Tail[14].Position-(p2c.lookVector*distance) p3pos = Tail[15].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[15].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 ) + (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 
p2c = Tail[15].CFrame start3 = Tail[15].Position-(p2c.lookVector*distance) p3pos = Tail[16].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[16].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 ) + (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 
p2c = Tail[16].CFrame start3 = Tail[16].Position-(p2c.lookVector*distance) p3pos = Tail[17].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[17].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 ) + (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 
p2c = Tail[17].CFrame start3 = Tail[17].Position-(p2c.lookVector*distance) p3pos = Tail[18].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[18].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 ) + (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 
p2c = Tail[18].CFrame start3 = Tail[18].Position-(p2c.lookVector*distance) p3pos = Tail[19].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[19].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 ) + (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 
p2c = Tail[19].CFrame start3 = Tail[19].Position-(p2c.lookVector*distance) p3pos = Tail[20].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[20].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 ) + (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 
p2c = Tail[20].CFrame start3 = Tail[20].Position-(p2c.lookVector*distance) p3pos = Tail[21].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[21].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 ) + (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 
p2c = Tail[21].CFrame start3 = Tail[21].Position-(p2c.lookVector*distance) p3pos = Tail[22].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[22].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 ) + (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 
p2c = Tail[22].CFrame start3 = Tail[22].Position-(p2c.lookVector*distance) p3pos = Tail[23].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[23].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 ) + (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 
p2c = Tail[23].CFrame start3 = Tail[23].Position-(p2c.lookVector*distance) p3pos = Tail[24].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[24].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 ) + (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 
p2c = Tail[24].CFrame start3 = Tail[24].Position-(p2c.lookVector*distance) p3pos = Tail[25].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[25].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 ) + (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 
p2c = Tail[25].CFrame start3 = Tail[25].Position-(p2c.lookVector*distance) p3pos = Tail[26].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[26].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 ) + (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 
p2c = Tail[26].CFrame start3 = Tail[26].Position-(p2c.lookVector*distance) p3pos = Tail[27].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[27].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 ) + (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 
p2c = Tail[27].CFrame start3 = Tail[27].Position-(p2c.lookVector*distance) p3pos = Tail[28].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[28].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 ) + (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 
p2c = Tail[28].CFrame start3 = Tail[28].Position-(p2c.lookVector*distance) p3pos = Tail[29].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[29].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 ) + (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 
p2c = Tail[29].CFrame start3 = Tail[29].Position-(p2c.lookVector*distance) p3pos = Tail[30].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[30].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 ) + (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 
p2c = Tail[30].CFrame start3 = Tail[30].Position-(p2c.lookVector*distance) p3pos = Tail[31].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[31].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 ) + (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 
p2c = Tail[31].CFrame start3 = Tail[31].Position-(p2c.lookVector*distance) p3pos = Tail[32].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[32].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 ) + (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 
p2c = Tail[32].CFrame start3 = Tail[32].Position-(p2c.lookVector*distance) p3pos = Tail[33].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[33].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 ) + (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 
p2c = Tail[33].CFrame start3 = Tail[33].Position-(p2c.lookVector*distance) p3pos = Tail[34].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[34].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 ) + (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 
p2c = Tail[34].CFrame start3 = Tail[34].Position-(p2c.lookVector*distance) p3pos = Tail[35].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[35].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 ) + (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 
p2c = Tail[35].CFrame start3 = Tail[35].Position-(p2c.lookVector*distance) p3pos = Tail[36].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[36].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 ) + (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 
p2c = Tail[36].CFrame start3 = Tail[36].Position-(p2c.lookVector*distance) p3pos = Tail[37].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[37].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 ) + (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 
p2c = Tail[37].CFrame start3 = Tail[37].Position-(p2c.lookVector*distance) p3pos = Tail[38].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[38].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 ) + (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 
p2c = Tail[38].CFrame start3 = Tail[38].Position-(p2c.lookVector*distance) p3pos = Tail[39].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[39].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 ) + (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 
p2c = Tail[39].CFrame start3 = Tail[39].Position-(p2c.lookVector*distance) p3pos = Tail[40].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[40].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 ) + (Tail[40].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.39)/4 
wait() 
end 
end 
function onButton1Up(mouse) 
follow = false 
end 
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
bin.Selected:connect(onSelected)
end
catsss156.MouseButton1Down:connect(MakeAScript13321111156)

rat1111157 = Instance.new("ScreenGui");
rat1111157.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157.Name = "cat211124511411111157";

catsss157 = Instance.new("TextButton");
catsss157.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157;
catsss157.Name = "Pls11";
catsss157.Text="The Pit";
catsss157.TextColor3=BrickColor.new("Really black").Color;
catsss157.Active = true;
catsss157.Position = UDim2.new(0, 600,0, 17);
catsss157.Size = UDim2.new(0, 50,0 ,15);
catsss157.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss157.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13321111157()
x=Instance.new("Sound",game.Workspace) 
x.Pitch=1
x.Looped=true
x.SoundId="http://www.roblox.com/asset/?id=163035330"
x.Volume=1 
x.archivable = false 
repeat 
x:Play() 
wait(1) 
x:Stop() 
wait(.5) 
x:Play() 
until 
x.IsPlaying
end
catsss157.MouseButton1Down:connect(MakeAScript13321111157)

rat11111573 = Instance.new("ScreenGui");
rat11111573.Parent = game.Players.LocalPlayer.PlayerGui;
rat11111573.Name = "cat2111245114111111573";

catsss1573 = Instance.new("TextButton");
catsss1573.Parent = game.Players.LocalPlayer.PlayerGui.cat2111245114111111573;
catsss1573.Name = "Pls11";
catsss1573.Text="Derpy";
catsss1573.TextColor3=BrickColor.new("Really black").Color;
catsss1573.Active = true;
catsss1573.Position = UDim2.new(0, 650,0, 17);
catsss1573.Size = UDim2.new(0, 50,0 ,15);
catsss1573.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss1573.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript133211111573()
game.Players.LocalPlayer.Character.Head.face.Texture="http://www.roblox.com/asset/?id=113475009"
x=game.Players.LocalPlayer.Character
--
x.Head.BrickColor=BrickColor.new("Bright yellow")
x.Torso.BrickColor=BrickColor.new("Deep blue")
x["Left Arm"].BrickColor=BrickColor.new("Bright yellow")
x["Right Arm"].BrickColor=BrickColor.new("Bright yellow")
x["Left Leg"].BrickColor=BrickColor.new("Bright green")
x["Right Leg"].BrickColor=BrickColor.new("Bright green")

local You = divName local head = workspace[You].Head:Clone() local model = Instance.new("Model",workspace) local humanoid = Instance.new("Humanoid",model) head.Parent = model model.Name = "derpy swags" humanoid.MaxHealth = 0 local w = Instance.new("Weld",model) w.Part0,w.Part1 = workspace[You].Head,head
end
catsss1573.MouseButton1Down:connect(MakeAScript133211111573)

rat111115736 = Instance.new("ScreenGui");
rat111115736.Parent = game.Players.LocalPlayer.PlayerGui;
rat111115736.Name = "cat21112451141111115736";

catsss15736 = Instance.new("TextButton");
catsss15736.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451141111115736;
catsss15736.Name = "Pls11";
catsss15736.Text="Aoodis";
catsss15736.TextColor3=BrickColor.new("Really black").Color;
catsss15736.Active = true;
catsss15736.Position = UDim2.new(0, 700,0, 17);
catsss15736.Size = UDim2.new(0, 50,0 ,15);
catsss15736.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss15736.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript1332111115736()
sintax=game.Players.LocalPlayer.Character

sintax.Head.face:Remove()
sintax["Left Arm"]:Remove()
sintax["Right Arm"]:Remove()
sintax.Head.Transparency=1

function wot(a,b,c,d,e,f,h1,h2,h3)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new('Really red')
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=sintax
Mesh=Instance.new("SpecialMesh")
Mesh.MeshId="http://www.roblox.com/asset/?id=16356288"
Mesh.TextureId="http://www.roblox.com/asset/?id=16356321"
Mesh.Scale=Vector3.new(3,3,3)
Mesh.VertexColor=Vector3.new(d,e,f)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = sintax.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(a,b,c)*CFrame.Angles(h1,h2,h3)
end

wot(-0.6,2.8,-0.7,255,0,0,0,0,0) 
wot(2,1,-0.7,255,0,0,0,0,-1)
wot(-2,-4,-0.7,255,0,0,0,0,-4)

for _,v in pairs(sintax:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor=BrickColor.new("Really red")
else
if v:IsA("Hat") then
v:Remove()
end
end
end
end
catsss15736.MouseButton1Down:connect(MakeAScript1332111115736)

rat1111157363 = Instance.new("ScreenGui");
rat1111157363.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363.Name = "cat211124511411111157363";

catsss157363 = Instance.new("TextButton");
catsss157363.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363;
catsss157363.Name = "Pls11";
catsss157363.Text="Attract";
catsss157363.TextColor3=BrickColor.new("Really black").Color;
catsss157363.Active = true;
catsss157363.Position = UDim2.new(0, 750,0, 17);
catsss157363.Size = UDim2.new(0, 50,0 ,15);
catsss157363.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss157363.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111157363()
local hopperbin2=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hopperbin2.Name="Attract"
mouse2=game.Players.LocalPlayer:GetMouse()

function onButton1Down2(mouse2)
local RP = Instance.new("RocketPropulsion")      --Inserts RocketPropulsion
RP.Parent = mouse2.target                    --Moves object to Part
RP.MaxSpeed = 42342342
RP.TargetRadius=4
RP.CartoonFactor=1
RP.MaxThrust = 5943539458                         --45 is the set speed
RP.Target = game.Players.LocalPlayer.Character.Torso             --What it will follow
RP:fire()       
end

function onSelected2(mouse2)
	mouse2.Button1Down:connect(function() onButton1Down2(mouse2) end) -- Button1Down doesn't come with a mouse, seeing as its
end
 
hopperbin2.Selected:connect(onSelected2) -- Selected comes with a mouse.
end
catsss157363.MouseButton1Down:connect(MakeAScript13321111157363)

rat1111157363y = Instance.new("ScreenGui");
rat1111157363y.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363y.Name = "cat211124511411111157363y";

catsss157363y = Instance.new("TextButton");
catsss157363y.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363y;
catsss157363y.Name = "Pls11";
catsss157363y.Text="Explosion";
catsss157363y.TextColor3=BrickColor.new("Really black").Color;
catsss157363y.Active = true;
catsss157363y.Position = UDim2.new(0, 800,0, 17);
catsss157363y.Size = UDim2.new(0, 50,0 ,15);
catsss157363y.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss157363y.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111157363y()
local hopperbin=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hopperbin.Name="Explosion (normal)"

mouse=game.Players.LocalPlayer:GetMouse()

function onButton1Down(mouse)
	local b = Instance.new("Explosion")
	b.Position = mouse.hit.p
	b.Name="lol"
	b.BlastRadius=5
	b.Parent = mouse.target
end

function onSelected(mouse)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end) -- Button1Down doesn't come with a mouse, seeing as its
end
 
hopperbin.Selected:connect(onSelected) -- Selected comes with a mouse.

local hb=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hb.Name="Explosion (nuke)"

mouse1=game.Players.LocalPlayer:GetMouse()

function ob1d(mouse1)
	local b = Instance.new("Explosion")
	b.Position = mouse1.hit.p
	b.Name="lol1"
	b.BlastRadius=100000
	b.Parent = mouse1.target
end

function oS(mouse1)
mouse1.Button1Down:connect(function() ob1d(mouse1) end)
end

hb.Selected:connect(oS)
end
catsss157363y.MouseButton1Down:connect(MakeAScript13321111157363y)

rat1111157363w = Instance.new("ScreenGui");
rat1111157363w.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363w.Name = "cat211124511411111157363w";

catsss157363w = Instance.new("TextButton");
catsss157363w.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363w;
catsss157363w.Name = "Pls11";
catsss157363w.Text="UnAnchor";
catsss157363w.TextColor3=BrickColor.new("Really black").Color;
catsss157363w.Active = true;
catsss157363w.Position = UDim2.new(0, 850,0, 17);
catsss157363w.Size = UDim2.new(0, 50,0 ,15);
catsss157363w.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss157363w.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111157363w()
local hopperbin23=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
hopperbin23.Name="UnAnchor"
mouse23=game.Players.LocalPlayer:GetMouse()

function onButton1Down23(mouse23)
mouse23.target.Anchored=false
end

function onSelected23(mouse23)
	mouse23.Button1Down:connect(function() onButton1Down23(mouse23) end) -- Button1Down doesn't come with a mouse, seeing as its
end
 
hopperbin23.Selected:connect(onSelected23) -- Selected comes with a mouse.
end
catsss157363w.MouseButton1Down:connect(MakeAScript13321111157363w)

rat1111157363we = Instance.new("ScreenGui");
rat1111157363we.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363we.Name = "cat211124511411111157363we";

catsss157363we = Instance.new("TextButton");
catsss157363we.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363we;
catsss157363we.Name = "Pls11";
catsss157363we.Text="LaserH";
catsss157363we.TextColor3=BrickColor.new("Really black").Color;
catsss157363we.Active = true;
catsss157363we.Position = UDim2.new(0, 900,0, 17);
catsss157363we.Size = UDim2.new(0, 50,0 ,15);
catsss157363we.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss157363we.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111157363we()

if script.Parent.className~="HopperBin" then
ma=Instance.new("HopperBin")
ma.Name="Laser "
--ma.Parent=game.Lighting
ma.Parent=game.Players.LocalPlayer.Backpack
script.Parent=ma
end

local Selected = false
local Shoot = true
function Click(Target)
if(Target.Target.Parent:findFirstChild("Humanoid")~=nil)then
Target.Target.Parent.Humanoid.Health = 0
end
local P = Instance.new("Part")
P.Name = "Laser"
local Place0 = script.Parent.Parent.Parent.Character["Left Arm"].CFrame
P.formFactor = 0
P.Size = Vector3.new(1,1,(Place0.p - Target.Hit.p).magnitude)
P.CFrame = CFrame.new((Place0.p + Target.Hit.p)/2,Place0.p)
P.Parent = game.Workspace
P.BrickColor=BrickColor.new("Really red")
P.Transparency = 0.5
P.Reflectance = 0.5
P.Anchored = true
P.CanCollide = false
local E = Instance.new("Explosion")
E.Position = Target.Hit.p
E.Parent = game.Workspace
for i = 1,10 do
P.Transparency = 0.5+(i*0.05)
P.Reflectance = i*0.05
wait(0.1)
end
P:Rremove()
end
function Select(Mouse)
local Arm = script.Parent.Parent.Parent.Character:findFirstChild("Left Arm")
if(Arm==nil)then
script.Parent:Remove()
script:Remove()
end
Selected = true
local Torso = script.Parent.Parent.Parent.Character:findFirstChild("Torso")
if(Torso==nil)then
script.Parent:Remove()
script:Remove()
end
local ArmWeld = Torso:findFirstChild("Left Shoulder")
if(ArmWeld~=nil)then
ArmWeld.Parent = nil
end
Mouse.Button1Down:connect(function()Click(Mouse)end)
Arm.Anchored = true
while Selected do
local Place0 = script.Parent.Parent.Parent.Character.Torso.CFrame
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector
local Place1 = Place0 + ((Place0.p-Mouse.Hit.p).unit * -2)
Arm.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
wait()
end
Arm.Anchored = false
if(ArmWeld~=nil)then
ArmWeld.Parent = Torso
end
end
function Deselect()
Selected = false
end
script.Parent.Selected:connect(Select)
script.Parent.Deselected:connect(Deselect)
end
catsss157363we.MouseButton1Down:connect(MakeAScript13321111157363we)

rat1111157363wef = Instance.new("ScreenGui");
rat1111157363wef.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363wef.Name = "cat211124511411111157363wef";

catsss157363wef = Instance.new("TextButton");
catsss157363wef.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363wef;
catsss157363wef.Name = "Pls11";
catsss157363wef.Text="Lightning";
catsss157363wef.TextColor3=BrickColor.new("Really black").Color;
catsss157363wef.Active = true;
catsss157363wef.Position = UDim2.new(0, 950,0, 17);
catsss157363wef.Size = UDim2.new(0, 50,0 ,15);
catsss157363wef.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss157363wef.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13321111157363wef()
script.Name = "cat" local bright = game.Lighting.Brightness function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form) part.Parent = parent part.formFactor = form part.CanCollide = collide part.Transparency = tran part.Reflectance = ref part.Size = Vector3.new(x,y,z) part.BrickColor = BrickColor.new(color) part.TopSurface = 0 part.BottomSurface = 0 part.Anchored = anchor part.Locked = true part:BreakJoints() end function thunder(pos) local last = CFrame.new(pos) local scale = 1 local lights = {} repeat local si = math.random(15,45) local p = Instance.new("Part") prop(p,workspace,true,0,0,5,si,5,"New Yeller",true,"Custom") p.CFrame = last * CFrame.new(0,-scale/2,0) p.CFrame = CFrame.new(p.Position) * CFrame.Angles(math.random(-120,120)/100,math.random(-30,30)/100,math.random(-120,120)/100) * CFrame.new(0,-si/2,0) last = p.CFrame scale = si table.insert(lights,p) until last.y < 14 local ex = Instance.new("Explosion",workspace) ex.BlastRadius = 22 ex.BlastPressure = 300000 ex.Position = last * CFrame.new(0,-scale/2,0).p local pew = Instance.new("Sound",workspace) pew.SoundId = "rbxasset://sounds\HalloweenLightning.wav" pew.Volume = math.random(70,110)/100 pew.Pitch = math.random(85,120)/100 coroutine.resume(coroutine.create(function() for i=1,math.random(5,25) do if game.Lighting.Brightness == bright then game.Lighting.Brightness = 9999 else game.Lighting.Brightness = bright end wait() end game.Lighting.Brightness = bright end)) wait(0.05) pew:play() wait(math.random(10,80)/100) ex:remove() for _,v in pairs(lights) do coroutine.resume(coroutine.create(function() for i=0,1,0.25 do wait() v.Transparency = i end v:remove() end)) end end while true do wait(math.random(1,300)/100) coroutine.resume(coroutine.create(function() thunder(Vector3.new(math.random(-250,250),math.random(700,1000),math.random(-250,250))) end)) end
end
catsss157363wef.MouseButton1Down:connect(MakeAScript13321111157363wef)

rat1111157363weff = Instance.new("ScreenGui");
rat1111157363weff.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363weff.Name = "cat211124511411111157363weff";

catsss157363weff = Instance.new("TextButton");
catsss157363weff.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363weff;
catsss157363weff.Name = "Pls11";
catsss157363weff.Text="CSword";
catsss157363weff.TextColor3=BrickColor.new("Really black").Color;
catsss157363weff.Active = true;
catsss157363weff.Position = UDim2.new(0, 1000,0, 17);
catsss157363weff.Size = UDim2.new(0, 50,0 ,15);
catsss157363weff.BackgroundColor3=BrickColor.new("Deep blue").Color;
catsss157363weff.BorderColor3=BrickColor.new("Deep blue").Color;
function MakeAScript13321111157363weff()
--[[ You don't need to put your name Just Run!]]

c,d=pcall(function()
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Torso
track = false --- for tracking function
char.Humanoid.MaxHealth,char.Humanoid.Health,char.Humanoid.WalkSpeed = 9000,9000,30
dmg = 20

Bo = {["T"] = char["Torso"], ["H"] = char.Head}
Bo.Arms = {["R"] = char["Right Arm"], ["L"] = char["Left Arm"]}
Bo.Legs = {["L"] = char["Left Leg"], ["R"] = char["Right Leg"]}
Bo.Shls = {["R"] = torso["Right Shoulder"], ["L"] = torso["Left Shoulder"]}


rarm = char["Right Arm"]
rw,lw = Instance.new("Weld"),Instance.new("Weld")
normpos = Bo.Shls.R.C0

function lock(a) ---- updating this for 2 hands
if a == 1 then

---RIGHT---
rw.Parent = torso
rw.C0,rw.C1 = Bo.Shls.R.C0 ,Bo.Shls.R.C1
rw.Part0,rw.Part1 = Bo.Shls.R.Part0 ,Bo.Shls.R.Part1
Bo.Shls.R.Parent = nil

---LEFT---
lw.Parent = torso
lw.Part0,lw.Part1 = Bo.Shls.L.Part0 ,Bo.Shls.L.Part1
lw.C0,lw.C1 = Bo.Shls.L.C0 ,Bo.Shls.L.C1


elseif a == 0 then
Bo.Shls.R.Parent = torso
rw.Parent = nil
Bo.Shls.L.Parent = torso
lw.Parent = nil

end
end

cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new

attacks = {
["slash"] = CFrame.Angles(1,2,3)
}



sword = Instance.new("Model",char)

meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372}---some meshids


------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored)
c = Instance.new("Part",sword)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
c.BrickColor = BrickColor.new(color)
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
return c
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",sword)
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
end
,
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end
,
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["F"] = function(parent,size,heat,color,secondcolor)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["Track"] = function(obj,s,t,lt)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position

mag = (old-new).magnitude
dist = (old+new)/2

ray = T.P(s,mag+.2,s,obj.Color,t,false,true)
Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
game:GetService("Debris"):AddItem(ray,lt)

end
end)) end,
["D"] = function(hit) if hit.Parent:findFirstChild("Humanoid") then h=hit.Parent.Humanoid h.Health = h.Health -dmg end end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
if meshid ~= "sphere" then
mesh.MeshId = "rbxassetid://"..meshids[meshid]
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = "rbxassetid://"..textureids[meshtexture]
end
return mesh
end
end
}
--------------------------------------------------
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
---------------------------

--[[tutorial to using shortenings
T.P(sizex,sizey,sizez,brickcolor,transparency,cancollide,anchored)
T.W(part0,part1,x,y,z,rx,ry,rz)
T.F(parent,size,heat,color,secondarycolor)
T.FM(parent,meshid(see the list),scalex,scaley,scalez,textureid(optional) ) --- most usefull

M.R(a,b) creates a randomvalue beetwen a and b
]]--

p = T.P(.7,2,.7,"Bright blue",.5,false,false) --- The handle in 1 line O_O
p.Name = "Handle"
p.Position = torso.Position --p.CFrame = p.CFrame * CFrame.new(torso.X, torso.Y, torso.Z)
T.FM(p,"cylinder",1,1,1) --- cylindermesh
hw = T.W(p,torso,0,0,1,0,0,M.D(-45))
holdpos = cfn(0,-1.5,0)*ang(math.pi/2,0,0)
torsopos = cfn(0,0,1)*ang(0,0,M.D(-45))

crystal = T.P(1,1,1,"Bright red",.5,false,false)
T.W(crystal,p,0,1,0,0,0,0)
T.FM(crystal,"diamond",.5,1,.5)

p.Touched:connect(function(h)
T.D(h)
end)

c=nil
mainweld = nil
radius = 1

main = T.P(1,1,1,"White",1,false,false)
mainweld = T.W(main,p,0,-1.5,0,0,0,0)


----SHIELD----
sp = T.P(2,4,.5,"Magenta",.5,false,false)
sp2 = T.P(1,4,.5,"Magenta",.5,false,false)
sp3 = T.P(1,4,.5,"Magenta",.5,false,false)
--sp,sp2,sp3.Transparency = 0.5,0.5,0.5
T.W(sp2,sp,-1.4,0,.15,0,M.D(20),0)
T.W(sp3,sp,1.4,0,.15,0,M.D(-20),0)

mw = T.W(sp,Bo.Arms.L,-.5,0,0,0,math.pi/2,0,0)
----------------------------------------

for i = 1,360,60 do --- I weld diamonds to part at bottom of handle
c = T.P(1,1,1,"White",.5,false,false)
T.FM(c,"diamond",.5,1.4,.5)

T.W(c,main,M.Cos(M.D(i))*radius,0,M.Sin(M.D(i))*radius,0,0,0)
end

T.C(function() -- ROTATE
while true do
wait()
mainweld.C1 = mainweld.C1 * ang(0,M.D(10),0)
end
end)


T.C(function()
while wait(0.1) do
for i = 0,1,0.1 do
p.Transparency = i
wait()
end

for i = 1,0,0.1 do
p.Transparency = i
wait()
end

end
end) -- Same as coroutine.create

p2 = p:Clone()
p2.Parent = sword
p2.Size = Vector3.new(1,6,1)
p2.Touched:connect(function(hit) T.D(hit,5) end)

p3 = T.P(1,3,1,"Black",.5,false,false)
T.FM(p3,"spike",1,3,1)
T.W(p3,p2,0,-4,0,math.pi,0,0)
Instance.new("Sparkles",p)
w=Instance.new("Weld",p)
w.Part0 = p
w.Part1 = p2
w.C1 = cfn(0,4,0)
end)
if c == true then
print("Sucsess loading")
else
print(d)
end

bg = nil
bp = nil
---------ANIMATIONS--------------



function BBGui(Text,Adornee,Par)
b=Instance.new("BillboardGui",Par)
b.Adornee = Adornee
f=Instance.new("Frame",b)
f.BackgroundTransparency = 1
t=Instance.new("TextLabel",b)
t.Text = Text
t.TextColor3 = Color3.new(1,0,1)
return b
end




anims = {}

anims.Twirl = function()
rw.C0 = rw.C0 * ang(-math.pi/2,0,0)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)

bg = T.BG(head)
for i = 1,360*5,20 do
bg.cframe = bg.cframe * ang(0,math.rad(20),0) --rw.C0 = rw.C0 * ang(i)
local ball = T.P(2,2,2,"Lime green",.5,false,false)
ball.Position = (p3.CFrame * cfn(0,p3.Size.y/2,0)).p
bv = Instance.new("BodyVelocity",ball)
bv.maxForce = Vector3.new()*math.huge
bv.velocity = cfn(torso.Position,p3.Position).lookVector * 300
delay(.1,function()
local pos = cfn(ball.Position)
T.C(function()
local pa = T.P(1,1,1,"White",0,false,true)
pa.CFrame = pos
msh = T.FM(pa,"sphere",1,1,1)

for i = 1,30 do
wait()
pa.Size = v3n(i,i,i)
pa.CFrame = pos
pa.Transparency = i/30
end
pa:Remove()
end)
ball:Remove()
end)
wait()
end
bg:Remove()
rw.C0 = rw.C0 * ang(math.pi/2,0,0)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
end

anims.Fire = function()
local f=Instance.new("Fire",p3)
dmg = 40
delay(20,function()
f:remove()
dmg = 20
end)
end

anims.ShieldUp = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(20),0,0)
end
end

anims.ShieldDown = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(-20),0,0)
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

end


anims.Equip = function()
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = Bo.Arms.R,holdpos
for i = 1,220-90,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
rw.C0 = normpos*ang(0,0,math.pi/2)
end

anims.UnEquip = function()
for i = 1,180,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = torso,torsopos
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end

anims.Equip2 = function()
for i = 1,90,5 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(5))
end rw.C0 = normpos * ang(0,0,M.D(90)) end

anims.UnEquip2 = function()
for i = 90,0,-20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end

anims.Slash = function()
for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(20),0)
wait()
end

for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
wait()
end
for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(20))
wait()
end

for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(-20),0)
wait()
end
end

anims.Fist = function(mouse)
pa = T.P(1,1,1,"Black",.5,false,false)

--[[p=Instance.new("Part",Workspace)
p.Anchored = true --flying fist? ya]]--

T.FM(p,"fist",1,1,1)
T.W(p,Bo.Arms.L,0,-2,0,0,0,0)

end

anims.dragon = function(mouse)
local endpos = mouse.hit.p
for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(-10),0,0)
end

local ray = T.P(5,1,5,"Bright red",.5,false,true)
startpos = sp.CFrame * cfn(0,0,-1)
T.FM(ray,"cylinder",1,1,1)

ray.CFrame = startpos



mag = (startpos.p-endpos).magnitude

local head = T.P(1,1,1,"Bright red",.5,false,true)
T.FM(head,"dragon",4,4,4)

for i = 1,mag do
wait()
startpos = sp.CFrame * cfn(0,0,-1)
ray.Size = v3n(5,i,5)
ray.CFrame = (cfn(startpos.p,endpos)*cfn(0,0,-ray.Size.y/2))*ang(math.pi/2,0,0)
head.CFrame = ray.CFrame * cfn(0,-ray.Size.y/2,0) * ang(-math.pi/2,0,0)
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(10),0,0)
end

for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

ray:Remove() head:Remove()
end


swirling = false
anims.Swirl = function(mouse)
if swirling == false and mouse.Target ~= nil then
swirling = true
eff = function(a)
T.C(function()
wait()
local p = T.P(1,1,1,"Black",.5,false,true)
p.CFrame = a
local msh = T.FM(p,"blast",1,1,1)
for i = 1,30 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
p.Transparency = i/30
end
p:Remove()
end)
end

rw.C0 = normpos * ang(0,0,math.pi)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)
bg = T.BG(torso)
local original = bg.cframe
--T.C(function() while swirling do wait() bg.cframe = bg.cframe * ang(0,M.D(100),0) end end)
eff(torso.CFrame *cfn(0,-3,0))
bp = T.BP(torso,torso.Position + v3n(0,70,0))
while (bp.position-torso.Position).magnitude > 3 do wait() end --- waits

if mouse.Target ~= nil then
bg.cframe = cfn(torso.Position,mouse.hit.p) * ang(-math.pi/2,0,0)
bp.position = (mouse.hit.p + v3n(0,3,0))

eff(bg.cframe * ang(math.pi,0,0))

while (bp.position-torso.Position).magnitude > 5 do wait() end --- waits

bg.cframe = original  bp:Remove()
game:GetService("Debris"):AddItem(bg,.5)

rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
swirling = false
end

else
bp:Remove() bg:Remove() rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)

end
end

radi = 5
atk = {"Twirl","Fire","Swirl","Dragon","Slash","Fist","ShieldUp"}


function createhumanoid(name,part,parent)
mo = Instance.new("Model",parent)
mo.Name = name
part.Name = "Head"
part.Parent = mo
tor = T.P(.1,.1,.1,"White",1,false,false)
tor.Name = "Torso"
tor.Parent = mo
T.W(tor,part,0,0,0,0,0,0)
hum = Instance.new("Humanoid",mo)
hum.Health = 0
hum.MaxHealth = 0
end
---------------------------------
tab = nil

scrbox = nil
current = 1

function scroll(direction)
if scrbox ~= nil then
current = current+(direction)

if current > #atk then current = 1
elseif current < 1 then current = #atk
end

scrbox.Adornee = tab:GetChildren()[current]
end

end


ply.Chatted:connect(function(msg)

if msg == "#accept" and mod ~= nil then
anims[atk[current]]()
end

end)

function showtablets()
if tab == nil then

tab = Instance.new("Model",sword)

for i,v in pairs(atk) do
tp = T.P(2,1.5,2,"Black",.5,false,false)
tp.Parent = tab
createhumanoid(v,tp,tab)

local bp = T.BP(tp,torso.Position)

T.C(function()
while true do
wait()
o = 360/#atk*i
bp.position = torso.Position + v3n(M.Cos(M.D(o))*radi,0,M.Sin(M.D(o))*radi)
end
end)

end

scrbox = Instance.new("SelectionBox",Workspace)
scrbox.Adornee = tab:GetChildren()[current]

elseif tab ~= nil then tab:Remove() tab = nil
end
end

-------------------------------------

hopper = Instance.new("HopperBin",ply.Backpack)
hopper.Name = "Crystal Lance" 

hopper.Deselected:connect(function()
anims.UnEquip()
lock(0) track = false
end)


hopper.Selected:connect(function(mouse)
lock(1)
anims.Equip()
track = true
T.Track(p2,.3,.5,1)

mouse.KeyUp:connect(function(key)
if key == string.char(48) then anims.ShieldDown()
end end)

mouse.KeyDown:connect(function(key)
k=key:lower()
if k == "f" then anims.Slash()
elseif k == "q" then anims.UnEquip2() wait(1) anims.Equip2()
elseif k == "t" then anims.Twirl()
elseif key == "r" then anims.Swirl(mouse)
elseif key == "k" then anims.Fire()
elseif key == string.char(48) then anims.ShieldUp()
elseif key == "j" then anims.Fist(mouse)
elseif key == "g" then anims.dragon(mouse)

elseif key == "x" then showtablets()
elseif key == "z" then scroll(-1) elseif key == "c" then scroll(1)
elseif key == "v" then if scrbox ~= nil then anims[scrbox.Adornee.Name](mouse) end

end
end)

end)
end
catsss157363weff.MouseButton1Down:connect(MakeAScript13321111157363weff)

rat1111157363wefff = Instance.new("ScreenGui");
rat1111157363wefff.Parent = game.Players.LocalPlayer.PlayerGui;
rat1111157363wefff.Name = "cat211124511411111157363wefff";

catsss157363wefff = Instance.new("TextButton");
catsss157363wefff.Parent = game.Players.LocalPlayer.PlayerGui.cat211124511411111157363wefff;
catsss157363wefff.Name = "Pls11";
catsss157363wefff.Text="Jungle";
catsss157363wefff.TextColor3=BrickColor.new("Really black").Color;
catsss157363wefff.Active = true;
catsss157363wefff.Position = UDim2.new(0, 1050,0, 17);
catsss157363wefff.Size = UDim2.new(0, 50,0 ,15);
catsss157363wefff.BackgroundColor3=BrickColor.new("Bright red").Color;
catsss157363wefff.BorderColor3=BrickColor.new("Bright red").Color;
function MakeAScript13321111157363wefff()
--[[ Generates a jungle -ulti55 ]]
size = 512



CA = CFrame.Angles

CN = CFrame.new

V3 = Vector3.new

MR = math.rad

MP = math.pi

MRA = math.random

MH = math.huge



Wood = {"Brown", "Reddish brown"}

Leaves = {"Earth green", "Bright green", "Dark green", "Camo"}

LeafMeshes = {{"http://www.roblox.com/asset/?id=16659363", V3(2.05,-1.6,2.05)},

{"http://www.roblox.com/asset/?id=1091940", V3(1.2,0.6,1.2)}}



Rock = {"Medium grey", "Dark grey"}



Add = {

	Mesh = function(P, Id, Id2, scale)

		local m = Instance.new("SpecialMesh", P)

		m.Scale = scale

		m.MeshId = Id

		m.TextureId = Id2

	end

}



function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)

	local p = Instance.new("Part")

	p.TopSurface = 0

	p.BottomSurface = 0

	p.Transparency = Tran

	p.Reflectance = Ref

	p.CanCollide = Coll

	p.Anchored = Anch

	p.BrickColor = BrickColor.new(Col)

	p.formFactor = "Custom"

	p.Size = V3(X,Y,Z)

	p.Parent = P

	p.Locked = true

	p:BreakJoints()

	return p

end



Mod = Instance.new("Model",workspace)

Mod.Name = "Jungle"



Models = {

	function(cf, siz)

		local m = Instance.new("Model",Mod)

		local cen = cf * CN(0, 0, -38*siz)

		local wo = Wood[MRA(1,#Wood)]

		local le = Leaves[MRA(1,#Leaves)]

		local last = nil

		for i = 0, 1, 0.2 do

			local p = Part(m, true, true, 0, 0, wo, 3*siz, 5.7*siz, 3*siz)

			Instance.new("SpecialMesh",p)

			p.CFrame = cen * CA(MR(-40*i), 0, 0) * CN(0, 0, 38*siz)

			if wo == Wood[1] then wo = Wood[2] else wo = Wood[1] end

			last = p

		end

		local messa = LeafMeshes[MRA(1,#LeafMeshes)]

		local a = -3

		if messa == LeafMeshes[1] then

			a = 0.4

		end

		last.BrickColor = BrickColor.new(le)

		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)

		local m = Add.Mesh(p, messa[1], "", V3((messa[2].X*10)*siz,(messa[2].Y*10)*siz,(messa[2].Z*10)*siz))

		p.CFrame = last.CFrame * CN(0, a*siz, 0) * CA(MP+MR(20), 0, 0)

	end,

	function(cf, siz)

		local m = Instance.new("Model",Mod)

		local ro1, ro2 = Rock[MRA(1,#Rock)], Rock[MRA(1,#Rock)]

		local p = Part(m, true, true, 0, 0, ro1, 7.5*siz, 7.5*siz, 7.5*siz)

		p.CFrame = cf * CN(0, 1.8*siz, 4*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))

		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1290033", "", V3(5*siz, 5*siz, 5*siz))



		local p2 = Part(m, true, true, 0, 0, ro2, 5.5*siz, 5.5*siz, 5.5*siz)

		p2.CFrame = cf * CN(7*siz, 1.5*siz, -6*siz) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))

		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1290033", "", V3(3.8*siz, 3.8*siz, 3.8*siz))

	end,

	function(cf, siz)

		local m = Instance.new("Model",Mod)

		local le = Leaves[MRA(1,#Leaves)]



		local p = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)

		p.CFrame = cf * CN(2*siz, 1.6*siz, -4*siz) * CA(0, 0, 0)

		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1095708", "", V3(12*siz, 11*siz, 10*siz))



		local p2 = Part(m, true, false, 0, 0, le, 0.2, 0.2, 0.2)

		p2.CFrame = cf * CN(-4*siz, 1.1*siz, -1*siz) * CA(0, MR(-34), 0)

		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=1095708", "", V3(10*siz, 7.5*siz, 8*siz))

	end,

	function(cf, siz)

		local m = Instance.new("Model",Mod)



		local p = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)

		p.CFrame = cf * CN(2*siz, 1.1*siz, -4*siz) * CA(0, 0, 0)

		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(10*siz, 14*siz, 10*siz))



		local p2 = Part(m, true, false, 0, 0, "Bright green", 0.2, 0.2, 0.2)

		p2.CFrame = cf * CN(-4*siz, 0.7*siz, 1*siz) * CA(MR(MRA(-15,15)), MR(MRA(-180,180)), MR(MRA(-15,15)))

		local ms2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=16659363", "http://www.roblox.com/asset/?id=16659355", V3(7*siz, 11*siz, 6*siz))

	end,

	function(cf, siz)

		local m = Instance.new("Model",Mod)



		local p = Part(m, true, true, 0, 0, "White", 1.2*siz, 6*siz, 1.2*siz)

		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 3.2*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)

		local ms = Add.Mesh(p, "http://www.roblox.com/asset/?id=1090398", "http://www.roblox.com/asset/?id=1090399", V3(3.5*siz, 5*siz, 3.5*siz))

	end,

	function(cf, siz)

		local m = Instance.new("Model",Mod)

		local col = Wood[MRA(1,#Wood)]

		local p = Part(m, true, true, 0, 0, col, 2.8*siz, 22*siz, 2.8*siz)

		Instance.new("SpecialMesh",p)

		p.CFrame = cf * CN((MRA(-4*100,4*100)/100)*siz, 11*siz, (MRA(-4*100,4*100)/100)*siz) * CA(0, MR(MRA(-180,180)), 0)

		local leave = Leaves[MRA(1, #Leaves)]

		local mes = LeafMeshes[MRA(1, #LeafMeshes)]

		local a = 3

		local ca = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))

		if mes == LeafMeshes[1] then

			a = -0.5

			ca = ca * CA(MP, 0, 0)

		end

		for i = 1, MRA(1,5) do

			local cf2 = p.CFrame * CA(0, MR(MRA(-180,180)), 0) * CN(0, (MRA(2*100, 14*100)/100)*siz, -1.4*siz)

			local center = cf2 * CN(0, 0, -8*siz) * CA(0, 0, 0)

			local first = nil

			for x = 0, 45, 15 do

				local p2 = Part(m, true, true, 0, 0, col, 2.5*siz, 4*siz, 2.5*siz)

				Instance.new("SpecialMesh", p2)

				p2.CFrame = center * CN(0, 0, 4*siz) * CA(MR(x), 0, 0) * CN(0, 0, 10*siz) * CA(0, 0, 0)

				if first == nil then first = p2 end

			end

			local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)

			Add.Mesh(p3, mes[1], "", (mes[2]*7)*siz)

			local ca2 = CA(MR(MRA(-30, 30)), MR(MRA(-180, 180)), MR(MRA(-30, 30)))

			if mes == LeafMeshes[1] then

				ca2 = ca2 * CA(MP, 0, 0)

			end

			p3.CFrame = first.CFrame * CN(0, a*siz, 0) * ca2

		end

		local p3 = Part(m, true, false, 0, 0, leave, 0.2, 0.2, 0.2)

		Add.Mesh(p3, mes[1], "", (mes[2]*9)*siz)

		local cn = p.CFrame * CN(0, 11*siz, 0)

		p3.CFrame = cn * CN(0, a*siz, 0) * ca

	end,

}



pos = CN(0, 0, 0)





local base = Part(Mod, true, true, 0, 0, Leaves[MRA(1,#Leaves)], size, 1, size)

base.CFrame = pos * CN(0, 1, 0)

base.Material = "Grass"



for x = -size/2, size/2, 20 do

	for z = -size/2, size/2, 20 do

		Models[MRA(1, #Models)](pos * CN(x+(MRA(-4*1000, 4*1000)/1000), 1.2, z+(MRA(-4*1000, 4*1000)/1000)) * CA(0, MR(MRA(-180,180)), 0), MRA(1.1*100, 2.4*100)/100)

	end

	wait(0.2)

end
end
catsss157363wefff.MouseButton1Down:connect(MakeAScript13321111157363wefff)

f11112451143z = Instance.new("ScreenGui");
f11112451143z.Parent = game.Players.LocalPlayer.PlayerGui;
f11112451143z.Name = "cat21112451143z";

i11112451143z = Instance.new("TextButton");
i11112451143z.Parent = game.Players.LocalPlayer.PlayerGui.cat21112451143z;
i11112451143z.Name = "Pls11";
i11112451143z.Text="GPS";
i11112451143z.TextColor3=BrickColor.new("Really black").Color;
i11112451143z.Active = true;
i11112451143z.Position = UDim2.new(0, 1100,0, 17);
i11112451143z.Size = UDim2.new(0, 50,0 ,15);
i11112451143z.BackgroundColor3=BrickColor.new("Bright yellow").Color;
i11112451143z.BorderColor3=BrickColor.new("Bright yellow").Color;
function MakeAScript13373z()
for _,v in pairs(game.Players:GetChildren()) do
FloorWire = Instance.new("FloorWire", game.Workspace)
FloorWire.From = game.Players.LocalPlayer.Character.Torso
FloorWire.To = v.Character.Torso
FloorWire.Color = BrickColor.new("Bright yellow")
FloorWire.Transparency = 0.5
FloorWire.WireRadius = 1.5
end
end
i11112451143z.MouseButton1Down:connect(MakeAScript13373z)

bag = Instance.new("ScreenGui");
bag.Parent = game.Players.LocalPlayer.PlayerGui;
bag.Name = "centi";

velvet = Instance.new("TextButton");
velvet.Parent = game.Players.LocalPlayer.PlayerGui.centi;
velvet.Name = "Pls11";
velvet.Text="VeloC";
velvet.TextColor3=BrickColor.new("Really black").Color;
velvet.Active = true;
velvet.Position = UDim2.new(0, 400,0, 34);
velvet.Size = UDim2.new(0, 50,0 ,15);
velvet.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz()
	for _,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			v.Velocity=Vector3.new(30,30,30)
		else
			if v:IsA("Model") then
				for _,v1 in pairs(v:GetChildren()) do
					if v1:IsA("Part") then
						v1.Velocity=Vector3.new(30,30,30)
					else
						if v1:IsA("Model") then
							for _,v2 in pairs(v1:GetChildren()) do
								if v2:IsA("Part") then
									v2.Velocity=Vector3.new(30,30,30)
								end
							end
						end
					end
				end
			end
		end
	end
end
velvet.MouseButton1Down:connect(velvetz)

bag1 = Instance.new("ScreenGui");
bag1.Parent = game.Players.LocalPlayer.PlayerGui;
bag1.Name = "centi1";

velvet1 = Instance.new("TextButton");
velvet1.Parent = game.Players.LocalPlayer.PlayerGui.centi1;
velvet1.Name = "Pls11";
velvet1.Text="RotVeloC";
velvet1.TextColor3=BrickColor.new("Really black").Color;
velvet1.Active = true;
velvet1.Position = UDim2.new(0, 450,0, 34);
velvet1.Size = UDim2.new(0, 50,0 ,15);
velvet1.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1()
	for _,v in pairs(game.Workspace:GetChildren()) do
		if v:IsA("Part") then
			v.RotVelocity=Vector3.new(30,30,30)
		else
			if v:IsA("Model") then
				for _,v1 in pairs(v:GetChildren()) do
					if v1:IsA("Part") then
						v1.RotVelocity=Vector3.new(30,30,30)
					else
						if v1:IsA("Model") then
							for _,v2 in pairs(v1:GetChildren()) do
								if v2:IsA("Part") then
									v2.RotVelocity=Vector3.new(30,30,30)
								end
							end
						end
					end
				end
			end
		end
	end
end
velvet1.MouseButton1Down:connect(velvetz1)

bag12 = Instance.new("ScreenGui");
bag12.Parent = game.Players.LocalPlayer.PlayerGui;
bag12.Name = "centi12";

velvet12 = Instance.new("TextButton");
velvet12.Parent = game.Players.LocalPlayer.PlayerGui.centi12;
velvet12.Name = "Pls11";
velvet12.Text="Music";
velvet12.TextColor3=BrickColor.new("Really black").Color;
velvet12.Active = true;
velvet12.Position = UDim2.new(0, 500,0, 34);
velvet12.Size = UDim2.new(0, 50,0 ,15);
velvet12.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet12.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz12()
x=Instance.new("Sound",game.Workspace) 
x.Pitch=1
x.Looped=true
x.SoundId="http://www.roblox.com/asset/?id="..music1
x.Volume=1 
x.archivable = false 
repeat 
x:Play() 
wait(1) 
x:Stop() 
wait(.5) 
x:Play() 
until 
x.IsPlaying
end
velvet12.MouseButton1Down:connect(velvetz12)

bag1234 = Instance.new("ScreenGui");
bag1234.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234.Name = "centi1234";

velvet1234 = Instance.new("TextButton");
velvet1234.Parent = game.Players.LocalPlayer.PlayerGui.centi1234;
velvet1234.Name = "Pls11";
velvet1234.Text="HoldOthr";
velvet1234.TextColor3=BrickColor.new("Really black").Color;
velvet1234.Active = true;
velvet1234.Position = UDim2.new(0, 750,0, 34);
velvet1234.Size = UDim2.new(0, 50,0 ,15);
velvet1234.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234()
for _,v in pairs(game.Players:GetChildren()) do
if v.Name==divName then
else
v.Character.Torso.Anchored=true
end
end
end
velvet1234.MouseButton1Down:connect(velvetz1234)

bag12345 = Instance.new("ScreenGui");
bag12345.Parent = game.Players.LocalPlayer.PlayerGui;
bag12345.Name = "centi12345";

velvet12345 = Instance.new("TextButton");
velvet12345.Parent = game.Players.LocalPlayer.PlayerGui.centi12345;
velvet12345.Name = "Pls11";
velvet12345.Text="CFrameA";
velvet12345.TextColor3=BrickColor.new("Really black").Color;
velvet12345.Active = true;
velvet12345.Position = UDim2.new(0, 550,0, 34);
velvet12345.Size = UDim2.new(0, 50,0 ,15);
velvet12345.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet12345.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz12345()
local f=Instance.new("Tool",game.Players.LocalPlayer.Backpack)
f.Name="CFrameAngles"
local a=Instance.new("Part",f)
a.Name="Handle"
a.Size=Vector3.new(1,1,1)
local tool = f
local user

--when the tool is equipped
tool.Equipped:connect(function(mouse)
   --store the character of the person using the tool
   user = game.Players.LocalPlayer 

   --when the left mouse button is clicked
   mouse.Button1Down:connect(function() 
       --make and do a hit test along the ray
       local ray = Ray.new(tool.Handle.CFrame.p, (mouse.Hit.p - tool.Handle.CFrame.p).unit*300)
       local hit, position = game.Workspace:FindPartOnRay(ray, user)
	   
	   for i=1,math.huge do
	   wait()
	   hit.Parent.Torso.CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   hit.Parent.Head.CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   hit.Parent["Left Arm"].CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   hit.Parent["Right Arm"].CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   hit.Parent["Right Leg"].CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   hit.Parent["Left Leg"].CFrame=CFrame.Angles(i*math.random(1,30),i*math.random(1,30),i*math.random(1,30))
	   end

       --draw the ray
       local distance = (position - tool.Handle.CFrame.p).magnitude
       local rayPart = Instance.new("Part", user)
       rayPart.Name          = "RayPart"
       rayPart.BrickColor    = BrickColor.new("Bright red")
       rayPart.Transparency  = 0.5
       rayPart.Anchored      = true
       rayPart.CanCollide    = false
       rayPart.TopSurface    = Enum.SurfaceType.Smooth
       rayPart.BottomSurface = Enum.SurfaceType.Smooth
       rayPart.formFactor    = Enum.FormFactor.Custom
       rayPart.Size          = Vector3.new(0.2, 0.2, distance)
       rayPart.CFrame        = CFrame.new(position, tool.Handle.CFrame.p) * CFrame.new(0, 0, -distance/2)

       --add it to debris so it disappears after 0.1 seconds
       game.Debris:AddItem(rayPart, 0.1)
   end)
end)
end
velvet12345.MouseButton1Down:connect(velvetz12345)


bag123451 = Instance.new("ScreenGui");
bag123451.Parent = game.Players.LocalPlayer.PlayerGui;
bag123451.Name = "centi123451";

velvet123451 = Instance.new("TextButton");
velvet123451.Parent = game.Players.LocalPlayer.PlayerGui.centi123451;
velvet123451.Name = "Pls11";
velvet123451.Text="Weed";
velvet123451.TextColor3=BrickColor.new("Really black").Color;
velvet123451.Active = true;
velvet123451.Position = UDim2.new(0, 600,0, 34);
velvet123451.Size = UDim2.new(0, 50,0 ,15);
velvet123451.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet123451.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz123451()
while wait() do
game.Lighting.FogEnd=80
game.Lighting.FogColor=BrickColor.random().Color
game.Lighting.TimeOfDay="00:00:00"
wait(0.1)
game.Lighting.TimeOfDay="14:00:00"
wait(0.1)
game.Lighting.TimeOfDay="00:00:00"
wait(0.1)
game.Lighting.TimeOfDay="14:00:00"
end
end
velvet123451.MouseButton1Down:connect(velvetz123451)


bag1234513 = Instance.new("ScreenGui");
bag1234513.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513.Name = "centi1234513";

velvet1234513 = Instance.new("TextButton");
velvet1234513.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513;
velvet1234513.Name = "Pls11";
velvet1234513.Text="Shutdown";
velvet1234513.TextColor3=BrickColor.new("Really black").Color;
velvet1234513.Active = true;
velvet1234513.Position = UDim2.new(0, 650,0, 34);
velvet1234513.Size = UDim2.new(0, 50,0 ,15);
velvet1234513.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513()
for _,v in pairs(game.Players:GetChildren()) do
v:Destroy()
end
end
velvet1234513.MouseButton1Down:connect(velvetz1234513)

bag12345134 = Instance.new("ScreenGui");
bag12345134.Parent = game.Players.LocalPlayer.PlayerGui;
bag12345134.Name = "centi12345134";

velvet12345134 = Instance.new("TextButton");
velvet12345134.Parent = game.Players.LocalPlayer.PlayerGui.centi12345134;
velvet12345134.Name = "Pls11";
velvet12345134.Text="RanMesh";
velvet12345134.TextColor3=BrickColor.new("Really black").Color;
velvet12345134.Active = true;
velvet12345134.Position = UDim2.new(0, 700,0, 34);
velvet12345134.Size = UDim2.new(0, 50,0 ,15);
velvet12345134.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet12345134.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz12345134()
while wait() do
wait(0.01)
p = game.Players:GetChildren()
for i = 1, #p do
o = p[i].Character:GetChildren()
for i = 1, #o do
if o[i].ClassName == "Part" then
q = Instance.new("SpecialMesh", o[i])
q.MeshType = math.random(1,11)
end
end
end
end
end
velvet12345134.MouseButton1Down:connect(velvetz12345134)


bag1234513 = Instance.new("ScreenGui");
bag1234513.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513.Name = "centi1234513";

velvet1234513 = Instance.new("TextButton");
velvet1234513.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513;
velvet1234513.Name = "Pls11";
velvet1234513.Text="Shutdown";
velvet1234513.TextColor3=BrickColor.new("Really black").Color;
velvet1234513.Active = true;
velvet1234513.Position = UDim2.new(0, 650,0, 34);
velvet1234513.Size = UDim2.new(0, 50,0 ,15);
velvet1234513.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513()
for _,v in pairs(game.Players:GetChildren()) do
v:Destroy()
end
end
velvet1234513.MouseButton1Down:connect(velvetz1234513)

bag123451344 = Instance.new("ScreenGui");
bag123451344.Parent = game.Players.LocalPlayer.PlayerGui;
bag123451344.Name = "centi123451344";

velvet123451343 = Instance.new("TextButton");
velvet123451343.Parent = game.Players.LocalPlayer.PlayerGui.centi123451344;
velvet123451343.Name = "Pls11";
velvet123451343.Text="RanMesh";
velvet123451343.TextColor3=BrickColor.new("Really black").Color;
velvet123451343.Active = true;
velvet123451343.Position = UDim2.new(0, 700,0, 34);
velvet123451343.Size = UDim2.new(0, 50,0 ,15);
velvet123451343.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet123451343.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz123451343()
while wait() do
wait(0.01)
p = game.Players:GetChildren()
for i = 1, #p do
o = p[i].Character:GetChildren()
for i = 1, #o do
if o[i].ClassName == "Part" then
q = Instance.new("SpecialMesh", o[i])
q.MeshType = math.random(1,11)
end
end
end
end
end
velvet123451343.MouseButton1Down:connect(velvetz123451343)

bag1234513445 = Instance.new("ScreenGui");
bag1234513445.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445.Name = "centi1234513445";

velvet1234513435 = Instance.new("TextButton");
velvet1234513435.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445;
velvet1234513435.Name = "Pls11";
velvet1234513435.Text="Ducks";
velvet1234513435.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435.Active = true;
velvet1234513435.Position = UDim2.new(0, 800,0, 34);
velvet1234513435.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513435.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513435()
--MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: JUST RUN!

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)

part.Parent = parent

part.formFactor = form

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.TopSurface = 0

part.BottomSurface = 0

part.Anchored = anchor

part.Locked = true

part:BreakJoints()

end



function weld(w, p, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end



function bird(pos)

a={"Dick Boner","Suck My Ass","I Fucked Your Mother","Fuck her right in the pussy.","I eat Dick.","420 fuckin blaze it pussy ass"}
inst=a[math.random(1,6)]

	local mod = Instance.new("Model")

	mod.Name = inst

	local main = Instance.new("Part")

	prop(main,mod,true,0,0,1.5,1.4,2.5,"New Yeller",false,"Custom")

	main.CFrame = CFrame.new(pos) * CFrame.Angles(0,math.random(-32,32)/10,0)

	main.Name = "Torso"

	Instance.new("SpecialMesh",main).MeshType = "Sphere"



	local pa1 = Instance.new("Part")

	prop(pa1,mod,false,0,0,0.9,1,0.9,"New Yeller",false,"Custom")

	pa1.CFrame = main.CFrame

	pa1.Name = "Head"

	Instance.new("SpecialMesh",pa1).MeshType = "Sphere"



	local pa2 = Instance.new("Part")

	prop(pa2,mod,false,0,0,0.2,0.4,0.7,"Neon orange",false,"Custom")

	pa2.CFrame = main.CFrame

	Instance.new("SpecialMesh",pa2).MeshType = "Wedge"



	local wing1 = Instance.new("Part")

	prop(wing1,mod,false,0,0,0.2,1.8,1.1,"New Yeller",false,"Custom")

	wing1.CFrame = main.CFrame



	local wing2 = Instance.new("Part")

	prop(wing2,mod,false,0,0,0.2,1.8,1.1,"New Yeller",false,"Custom")

	wing2.CFrame = main.CFrame





	local w1 = Instance.new("Weld")

	weld(w1,main,pa1,0.5,0,0,0,-0.6,1.2)

	w1.Name = "Neck"



	local w2 = Instance.new("Weld")

	weld(w2,main,pa2,-0.2,0,0,0,-0.6,1.7)



	local wi1 = Instance.new("Weld")

	weld(wi1,main,wing1,0,0,math.pi/2,-1,-0.1,0.1)

	local worig1 = CFrame.new(0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.4)

	wi1.C0 = worig1



	local wi2 = Instance.new("Weld")

	weld(wi2,main,wing2,0,0,-math.pi/2,1,-0.1,0.1)

	local worig2 = CFrame.new(-0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4)

	wi2.C0 = worig2



	local hum = Instance.new("Humanoid",mod)

	hum.Name = "Humanoid"

	hum.MaxHealth = math.huge

	hum.Health = math.huge



	local bv = Instance.new("BodyVelocity",main)

	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

	bv.P = 5000

	bv.velocity = main.CFrame.lookVector * 6



	local bav = Instance.new("BodyAngularVelocity",main)

	bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

	bav.P = 5000

	bav.angularvelocity = Vector3.new(0,0,0)



	hum.Died:connect(function()

		bv:remove()

		bav:remove()

		wait(4)

		mod:remove()

	end)

	mod.Parent = workspace

	mod:MakeJoints()

	coroutine.resume(coroutine.create(function()

		while true do

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,-i)

			end

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,-i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,i)

			end

		end

	end))

	coroutine.resume(coroutine.create(function()

		while true do

			wait(0.1)

			local turn = math.random(1,6)

			coroutine.resume(coroutine.create(function()

				if turn == 1 then

					bav.angularvelocity = Vector3.new(0,6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				elseif turn == 2 then

					bav.angularvelocity = Vector3.new(0,-6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				end

			end))

		end

	end))

end



for i=1, math.random(4,11) do

	local poz = Vector3.new(math.random(-100,100),math.random(10,15),math.random(-100,100))

	bird(poz)

end


end
velvet1234513435.MouseButton1Down:connect(velvetz1234513435)

bag123451344 = Instance.new("ScreenGui");
bag123451344.Parent = game.Players.LocalPlayer.PlayerGui;
bag123451344.Name = "centi123451344";

velvet123451343 = Instance.new("TextButton");
velvet123451343.Parent = game.Players.LocalPlayer.PlayerGui.centi123451344;
velvet123451343.Name = "Pls11";
velvet123451343.Text="RanMesh";
velvet123451343.TextColor3=BrickColor.new("Really black").Color;
velvet123451343.Active = true;
velvet123451343.Position = UDim2.new(0, 700,0, 34);
velvet123451343.Size = UDim2.new(0, 50,0 ,15);
velvet123451343.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet123451343.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz123451343()
while wait() do
wait(0.01)
p = game.Players:GetChildren()
for i = 1, #p do
o = p[i].Character:GetChildren()
for i = 1, #o do
if o[i].ClassName == "Part" then
q = Instance.new("SpecialMesh", o[i])
q.MeshType = math.random(1,11)
end
end
end
end
end
velvet123451343.MouseButton1Down:connect(velvetz123451343)

bag12345134456 = Instance.new("ScreenGui");
bag12345134456.Parent = game.Players.LocalPlayer.PlayerGui;
bag12345134456.Name = "centi12345134456";

velvet12345134356 = Instance.new("TextButton");
velvet12345134356.Parent = game.Players.LocalPlayer.PlayerGui.centi12345134456;
velvet12345134356.Name = "Pls11";
velvet12345134356.Text="Help";
velvet12345134356.TextColor3=BrickColor.new("Really black").Color;
velvet12345134356.Active = true;
velvet12345134356.Position = UDim2.new(0, 850,0, 34);
velvet12345134356.Size = UDim2.new(0, 50,0 ,15);
velvet12345134356.BackgroundColor3=BrickColor.new("Bright yellow").Color;
velvet12345134356.BorderColor3=BrickColor.new("Bright yellow").Color;
function velvetz12345134356()
local startoff=[[
show/ -- hide/
obj/ -- for parts
obj/alt/ -- for fire, smoke, etc.
setko/
setspam/ -- stopspam/
setpartspam/
setdecal/
setmusic/ -- stopmusic/
g/r -- resets character
g/base -- creates a baseplate
g/fixl -- fixes the lighting
blue gui = player things
red gui = server things
yellow gui = both player and server

*Bugs and warnings*
-- Not accountable for you being banned.
-- Don't use "weed" if you have epilepsy.
-- Don't use "Ducks" if you can't handle cursing.
-- Don't use "Ducks" if you don't want to be banned.
-- Using iOrb breaks the whole thing.
-- Using "stopspam/" and then "setspam/" breaks spam.
Team Nefilices
]]

x=Instance.new("Message",game.Players.LocalPlayer.PlayerGui)
x.Text=startoff
wait(10)
x:Remove()
end
velvet12345134356.MouseButton1Down:connect(velvetz12345134356)

bag1234513445672 = Instance.new("ScreenGui");
bag1234513445672.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672.Name = "centi1234513445671";

velvet1234513435672 = Instance.new("TextButton");
velvet1234513435672.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671;
velvet1234513435672.Name = "Pls11";
velvet1234513435672.Text="LMaD";
velvet1234513435672.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672.Active = true;
velvet1234513435672.Position = UDim2.new(0, 900,0, 34);
velvet1234513435672.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet1234513435672.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz1234513435672()
hatgiv(124745913)
hatgiv(64082730)
hatgiv(1323384)
hatgiv(20908915)
hatgiv(1323367)
hatgiv(72082328)
hatgiv(48545806)
hatgiv(33171947)
hatgiv(135470997)
hatgiv(42211680)
end
velvet1234513435672.MouseButton1Down:connect(velvetz1234513435672)

bag1234513445672 = Instance.new("ScreenGui");
bag1234513445672.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672.Name = "centi1234513445671";

velvet1234513435672 = Instance.new("TextButton");
velvet1234513435672.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671;
velvet1234513435672.Name = "Pls11";
velvet1234513435672.Text="Destorian";
velvet1234513435672.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672.Active = true;
velvet1234513435672.Position = UDim2.new(0, 950,0, 34);
velvet1234513435672.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet1234513435672.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz1234513435672()
game.Players.LocalPlayer.CharacterAppearance="http://www.roblox.com/asset/CharacterFetch.ashx?userId=19044604"
end
velvet1234513435672.MouseButton1Down:connect(velvetz1234513435672)

bag1234513445672l = Instance.new("ScreenGui");
bag1234513445672l.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672l.Name = "centi1234513445671l";

velvet1234513435672l = Instance.new("TextButton");
velvet1234513435672l.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671l;
velvet1234513435672l.Name = "Pls11";
velvet1234513435672l.Text="Bright";
velvet1234513435672l.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672l.Active = true;
velvet1234513435672l.Position = UDim2.new(0, 1000,0, 34);
velvet1234513435672l.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672l.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513435672l.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513435672l()
game.Lighting.TimeOfDay="14:00:00"
game.Lighting.FogEnd=33
game.Lighting.Brightness=214098347982346234
game.Lighting.FogColor=Color3.new(255,255,255)
game.Lighting.Ambient=Color3.new(255,255,255)
game.Lighting.ShadowColor=Color3.new(255,255,255)
game.Lighting.OutdoorAmbient=Color3.new(255,255,255)
end
velvet1234513435672l.MouseButton1Down:connect(velvetz1234513435672l)

bag1234513445672lf = Instance.new("ScreenGui");
bag1234513445672lf.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672lf.Name = "centi1234513445671lf";

velvet1234513435672lf = Instance.new("TextButton");
velvet1234513435672lf.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671lf;
velvet1234513435672lf.Name = "Pls11";
velvet1234513435672lf.Text="+50";
velvet1234513435672lf.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672lf.Active = true;
velvet1234513435672lf.Position = UDim2.new(0, 1050,0, 34);
velvet1234513435672lf.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672lf.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513435672lf.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513435672lf()
for _,v in pairs(game.Players:GetChildren()) do
if v.Name==divName then
else
for i=1,50 do
wait(0.2)
v.Character.Torso.CFrame=CFrame.new(Vector3.new(0+50,0+50,0+50))
end
end
end
end
velvet1234513435672lf.MouseButton1Down:connect(velvetz1234513435672lf)

bag1234513445672lfe = Instance.new("ScreenGui");
bag1234513445672lfe.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672lfe.Name = "centi1234513445671lfe";

velvet1234513435672lfe = Instance.new("TextButton");
velvet1234513435672lfe.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671lfe;
velvet1234513435672lfe.Name = "Pls11";
velvet1234513435672lfe.Text="-50";
velvet1234513435672lfe.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672lfe.Active = true;
velvet1234513435672lfe.Position = UDim2.new(0, 1100,0, 34);
velvet1234513435672lfe.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672lfe.BackgroundColor3=BrickColor.new("Bright red").Color;
velvet1234513435672lfe.BorderColor3=BrickColor.new("Bright red").Color;
function velvetz1234513435672lfe()
for _,v in pairs(game.Players:GetChildren()) do
if v.Name==divName then
else
for i=1,50 do
wait(0.2)
v.Character.Torso.CFrame=CFrame.new(Vector3.new(0-50,0-50,0-50))
end
end
end
end
velvet1234513435672lfe.MouseButton1Down:connect(velvetz1234513435672lfe)

bag1234513445672lfey = Instance.new("ScreenGui");
bag1234513445672lfey.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672lfey.Name = "centi1234513445671lfey";

velvet1234513435672lfey = Instance.new("TextButton");
velvet1234513435672lfey.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671lfey;
velvet1234513435672lfey.Name = "Pls11";
velvet1234513435672lfey.Text="Headspin";
velvet1234513435672lfey.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672lfey.Active = true;
velvet1234513435672lfey.Position = UDim2.new(0, 450,0, 51);
velvet1234513435672lfey.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672lfey.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet1234513435672lfey.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz1234513435672lfey()
for X = 1, math.huge, 0.1 do
wait()
game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X)
game.Players.LocalPlayer.Character.Torso.Neck.C1 = CFrame.new(0,0,0)
end
end
velvet1234513435672lfey.MouseButton1Down:connect(velvetz1234513435672lfey)

bag1234513445672lfeye = Instance.new("ScreenGui");
bag1234513445672lfeye.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672lfeye.Name = "centi1234513445671lfeye";

velvet1234513435672lfeye = Instance.new("TextButton");
velvet1234513435672lfeye.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671lfeye;
velvet1234513435672lfeye.Name = "Pls11";
velvet1234513435672lfeye.Text="HeadWot";
velvet1234513435672lfeye.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672lfeye.Active = true;
velvet1234513435672lfeye.Position = UDim2.new(0, 500,0, 51);
velvet1234513435672lfeye.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672lfeye.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet1234513435672lfeye.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz1234513435672lfeye()
for X = 1, math.huge, 0.1 do
wait()
game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(0,0,math.random(-1,1)) * CFrame.fromAxisAngle(Vector3.new(0,0,math.random(-1,1)), X)
game.Players.LocalPlayer.Character.Torso.Neck.C1 = CFrame.new(0,0,0)
end
end
velvet1234513435672lfeye.MouseButton1Down:connect(velvetz1234513435672lfeye)

bag1234513445672lfeyer = Instance.new("ScreenGui");
bag1234513445672lfeyer.Parent = game.Players.LocalPlayer.PlayerGui;
bag1234513445672lfeyer.Name = "centi1234513445671lfeyer";

velvet1234513435672lfeyer = Instance.new("TextButton");
velvet1234513435672lfeyer.Parent = game.Players.LocalPlayer.PlayerGui.centi1234513445671lfeyer;
velvet1234513435672lfeyer.Name = "Pls11";
velvet1234513435672lfeyer.Text="WotDerp";
velvet1234513435672lfeyer.TextColor3=BrickColor.new("Really black").Color;
velvet1234513435672lfeyer.Active = true;
velvet1234513435672lfeyer.Position = UDim2.new(0, 550,0, 51);
velvet1234513435672lfeyer.Size = UDim2.new(0, 50,0 ,15);
velvet1234513435672lfeyer.BackgroundColor3=BrickColor.new("Deep blue").Color;
velvet1234513435672lfeyer.BorderColor3=BrickColor.new("Deep blue").Color;
function velvetz1234513435672lfeyer()
for X = 1, math.huge, 0.1 do
wait()
game.Players.LocalPlayer.Character.Torso.Neck.C0 = CFrame.new(math.random(1,10),math.random	(1,10),math.random(1,10)) * CFrame.fromAxisAngle(Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10)), X)
game.Players.LocalPlayer.Character.Torso.Neck.C1 = CFrame.new(0,0,0)
game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 = CFrame.fromAxisAngle(Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10)), X)
game.Players.LocalPlayer.Character.Torso["Left Shoulder"].C0 = CFrame.fromAxisAngle(Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10)), X)
game.Players.LocalPlayer.Character["Left Leg"].CFrame = CFrame.Angles(X*math.random(1,10),math.random(1,10),X*math.random(1,10))
game.Players.LocalPlayer.Character["Right Leg"].CFrame = CFrame.Angles(X*math.random(1,10),math.random(1,10),X*math.random(1,10))
end
end
velvet1234513435672lfeyer.MouseButton1Down:connect(velvetz1234513435672lfeyer)


yolo = Instance.new("ScreenGui");
yolo.Parent = game.Players.LocalPlayer.PlayerGui;
yolo.Name = "yolo";

yolo1 = Instance.new("TextButton");
yolo1.Parent = game.Players.LocalPlayer.PlayerGui.yolo;
yolo1.Name = "Pls11";
yolo1.Text="Merge";
yolo1.TextColor3=BrickColor.new("Really black").Color;
yolo1.Active = true;
yolo1.Position = UDim2.new(0, 600,0, 51);
yolo1.Size = UDim2.new(0, 50,0 ,15);
yolo1.BackgroundColor3=BrickColor.new("Bright yellow").Color;
yolo1.BorderColor3=BrickColor.new("Bright yellow").Color;
function swaggy()
for _,v in pairs(game.Players:GetChildren()) do
w = Instance.new("Weld") 
w.Parent = game.Players.LocalPlayer.Character.Torso
w.Part0 = w.Parent 
w.Part1 = v.Character.Head 
w.C0 = CFrame.new(0,1,0)
end
end
yolo1.MouseButton1Down:connect(swaggy)

yolo2 = Instance.new("ScreenGui");
yolo2.Parent = game.Players.LocalPlayer.PlayerGui;
yolo2.Name = "yolo2";

yolo12 = Instance.new("TextButton");
yolo12.Parent = game.Players.LocalPlayer.PlayerGui.yolo2;
yolo12.Name = "Pls11";
yolo12.Text="KO's";
yolo12.TextColor3=BrickColor.new("Really black").Color;
yolo12.Active = true;
yolo12.Position = UDim2.new(0, 650,0, 51);
yolo12.Size = UDim2.new(0, 50,0 ,15);
yolo12.BackgroundColor3=BrickColor.new("Bright yellow").Color;
yolo12.BorderColor3=BrickColor.new("Bright yellow").Color;
function swaggy2()
function start()
kos=kovalue
user=divName
for _,v in pairs(game.Players:GetChildren()) do
if v.Name==divName then
else
for i=1, kos do 
c = Instance.new("ObjectValue") 
c.Parent = v.Character.Humanoid 
c.Value = game.Players[user] 
c.Name = "creator" wait(0.07) 
v.Character.Humanoid.Health = 0 
wait(0.08) 
v.Character.Parent = game.Lighting 
wait(0.08) 
c:remove() 
wait (0.08) 
v.Character.Parent = game.Workspace 
end
end
end
end 

start()
end
yolo12.MouseButton1Down:connect(swaggy2)


yolo23 = Instance.new("ScreenGui");
yolo23.Parent = game.Players.LocalPlayer.PlayerGui;
yolo23.Name = "yolo23";

yolo123 = Instance.new("TextButton");
yolo123.Parent = game.Players.LocalPlayer.PlayerGui.yolo23;
yolo123.Name = "Pls11";
yolo123.Text="Penis";
yolo123.TextColor3=BrickColor.new("Really black").Color;
yolo123.Active = true;
yolo123.Position = UDim2.new(0, 700,0, 51);
yolo123.Size = UDim2.new(0, 50,0 ,15);
yolo123.BackgroundColor3=BrickColor.new("Deep blue").Color;
yolo123.BorderColor3=BrickColor.new("Deep blue").Color;
function swaggy23()
plr = game.Players.LocalPlayer.Character
stick = Instance.new("Part", plr.Torso)
c = Instance.new("CylinderMesh", stick)
stick.Size = Vector3.new(2,8.2,2)
stick.BrickColor = BrickColor.new("Pastel brown")
stick.BottomSurface = "Smooth"
stick.TopSurface = "Smooth"
stick.Position = plr.Torso.Position
wstick = Instance.new("Weld",plr.Torso)
wstick.Part0 = wstick.Parent
wstick.Part1 = stick
wstick.C1 = CFrame.new(Vector3.new(0,3.5,-1.5)) * CFrame.Angles(80,0,0)
ball1 = Instance.new("Part",plr)
ball1.BrickColor = stick.BrickColor
ball1.Shape = "Ball"
ball1.Size = Vector3.new(3,3,3)
wb1 = Instance.new("Weld",plr.Torso)
wb1.Part0 = wstick.Part0
wb1.Part1 = ball1
ball1.BottomSurface = "Smooth"
ball1.TopSurface = "Smooth"
wb1.C1 = CFrame.new(Vector3.new(-0.5,1.5,0))
ball2 = ball1:clone()
ball2.Parent = plr
wb2 = Instance.new("Weld",plr.Torso)
wb2.Part0 = wstick.Part0
wb2.Part1 = ball2
wb2.C1 = CFrame.new(Vector3.new(0.5,1.5,0))
end 
yolo123.MouseButton1Down:connect(swaggy23)


yolo234 = Instance.new("ScreenGui");
yolo234.Parent = game.Players.LocalPlayer.PlayerGui;
yolo234.Name = "yolo234";

yolo1234 = Instance.new("TextButton");
yolo1234.Parent = game.Players.LocalPlayer.PlayerGui.yolo234;
yolo1234.Name = "Pls11";
yolo1234.Text="PPSteal";
yolo1234.TextColor3=BrickColor.new("Really black").Color;
yolo1234.Active = true;
yolo1234.Position = UDim2.new(0, 750,0, 51);
yolo1234.Size = UDim2.new(0, 50,0 ,15);
yolo1234.BackgroundColor3=BrickColor.new("Deep blue").Color;
yolo1234.BorderColor3=BrickColor.new("Deep blue").Color;
function swaggy234()
while wait() do
game.Players[divName].leaderstats.KOs.Value=game.Players[divName].leaderstats.KOs.Value +1
end
end 
yolo1234.MouseButton1Down:connect(swaggy234)
end

lvl4.Chatted:connect(function(msg)
if string.sub(msg,1,5)=="show/" then
allofet()
end
if string.sub(msg,1,4)=="obj/" then
a=string.sub(msg,5)
local a1=Instance.new(""..a,game.Workspace)
end
if string.sub(msg,1,8)=="obj/alt/" then
a=string.sub(msg,9)
for _,v in pairs(game.Workspace:GetChildren()) do
local a1=Instance.new(""..a,v)
end
end
if string.sub(msg,1,6)=="setko/" then
kovalue=string.sub(msg,7)
end
if string.sub(msg,1,8)=="nomusic/" then
for _,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Sound") then
v:Remove()
end
end
end
if string.sub(msg,1,9)=="setmusic/" then
music1=string.sub(msg,10)
end
if string.sub(msg,1,8)=="setspam/" then
spamtext=""..string.sub(msg,9)
end
if string.sub(msg,1,12)=="setpartspam/" then
sp=""..string.sub(msg,13)
end
if string.sub(msg,1,9)=="stopspam/" then
spamtext=""
end
if string.sub(msg,1,9)=="setdecal/" then
decal1=string.sub(msg,10)
end
if string.sub(msg,1,3)=="g/r" then
local Players = Game:GetService("Players") Players.CharacterAutoLoads = false
Player:LoadCharacter()
wait(0.4)
local Players = Game:GetService("Players") Players.CharacterAutoLoads = true
end
if string.sub(msg,1,6)=="g/fixl" then
game.Lighting.TimeOfDay="14:00:00"
game.Lighting.FogEnd=32545346564564565
game.Lighting.Brightness=0.5
game.Lighting.FogColor=Color3.new(191,191,191)
game.Lighting.Ambient=Color3.new(0,0,0)
game.Lighting.ShadowColor=Color3.new(178,178,183)
game.Lighting.OutdoorAmbient=Color3.new(135,135,128)
end
if string.sub(msg,1,6)=="g/base" then
x=Instance.new("Part",game.Workspace)
x.Size=Vector3.new(512,1,512)
x.Position=Vector3.new(5,5,5)
x.Anchored=true
x.Locked=true
end
if string.sub(msg,1,5)=="hide/" then
for _,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
v:Remove()
end
end
end)

allofet()