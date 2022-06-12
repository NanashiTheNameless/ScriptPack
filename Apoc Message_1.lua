--TITLE: Raindrop Gui
gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "Script Hub"
gui.ResetOnSpawn = false
closed = false
loading = true

main = Instance.new("Frame",gui)
main.Name = "Main"
main.Size = UDim2.new(0,300,0,250)
main.Position = UDim2.new(0,125,.5,-125)
main.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
main.BorderColor3 = Color3.new(90/255,90/255,90/255)
main.BorderSizePixel = 2

list = Instance.new("Frame",gui)
list.Name = "List"
list.Size = UDim2.new(0,100,0,250)
list.Position = UDim2.new(0,10,.5,-125)
list.BackgroundColor3 = Color3.new(255,255,255)
list.BorderColor3 = Color3.new(90/255,90/255,90/255)
list.BorderSizePixel = 2

changelist = Instance.new("TextButton",list)
changelist.AutoButtonColor = false
changelist.BackgroundColor3 = Color3.new(215/255,0/255,0/255)
changelist.BorderColor3 = Color3.new(185/255,0/255,0/255)
changelist.Name = "Change List"
changelist.Size = UDim2.new(1,0,0.1,0)
changelist.Font = "SciFi"
changelist.Text = "Scripts"
changelist.TextColor3 = Color3.new(255/255,255/255,255/255)
changelist.TextScaled = true
changelist.TextWrapped = true
changelist.TextStrokeTransparency = 0
changelist.TextYAlignment = "Top"

tit = Instance.new("TextLabel",main)
tit.Name = "Title"
tit.Size = UDim2.new(0.9,-2,.1,0)
tit.BackgroundColor3 = Color3.new(215/255,0,0)
tit.BorderColor3 = Color3.new(185/255,0,0)
tit.Font = "SciFi"
tit.FontSize = "Size24"
tit.Text = "Hacking101's Script Hub"
tit.TextColor3 = Color3.new(255,255,255)
tit.TextStrokeTransparency = 0

exit = Instance.new("TextButton",main)
exit.AutoButtonColor = false
exit.BackgroundColor3 = Color3.new(215/255,0/255,0/255)
exit.BorderColor3 = Color3.new(185/255,0/255,0/255)
exit.Position = UDim2.new(0.9,0,0,0)
exit.Size = UDim2.new(0.1,0,0.1,0)
exit.Font = "SciFi"
exit.TextSize = 24
exit.Text = "X"
exit.TextColor3 = Color3.new(255/255,255/255,255/255)
exit.TextStrokeTransparency = 0

stit = Instance.new("TextLabel",main)
stit.Name = "ScriptTitle"
stit.Size = UDim2.new(1,-10,.18,0)
stit.Position = UDim2.new(0,5,.1,5)
stit.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
stit.BackgroundTransparency = .7
stit.Font = "SciFi"
stit.Text = "Some Script Name"
stit.TextColor3 = Color3.new(255,255,255)
stit.TextScaled = true
stit.TextWrapped = true
stit.TextStrokeTransparency = 0

desc = Instance.new("TextLabel",main)
desc.Name = "ScriptDesc"
desc.Size = UDim2.new(1,-10,.53,0)
desc.Position = UDim2.new(0,5,.3,5)
desc.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
desc.BackgroundTransparency = .7
desc.Font = "SciFi"
desc.FontSize = "Size14"
desc.Text = "Some Script Desc."
desc.TextColor3 = Color3.new(255,255,255)
desc.TextStrokeTransparency = 0
desc.TextYAlignment = "Top"
desc.TextWrapped = true

wrn = Instance.new("TextLabel",main)
wrn.Name = "ScriptWarn"
wrn.Size = UDim2.new(1,-10,.07,0)
wrn.Position = UDim2.new(0,5,.78,0)
wrn.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
wrn.BackgroundTransparency = 1
wrn.Font = "SciFi"
wrn.FontSize = "Size14"
wrn.Text = "*Notice* \n This script might not work on the game your in."
wrn.TextColor3 = Color3.new(255,0,0)
wrn.TextStrokeTransparency = 0
wrn.Visible = false

exe = Instance.new("TextButton",main)
exe.Name = "Execute"
exe.Size = UDim2.new(.33,-5,.1,0)
exe.Position = UDim2.new(.65,10,.88,0)
exe.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
exe.BackgroundTransparency = .7
exe.Font = "SciFi"
exe.FontSize = "Size24"
exe.Text = "Execute"
exe.TextColor3 = Color3.new(255,255,255)
exe.TextStrokeTransparency = 0

box = Instance.new("TextBox",main)
box.Name = "box"
box.Size = UDim2.new(0.33,-5,0.1,0)
box.Position = UDim2.new(0,0,0.88,0)
box.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
box.BackgroundTransparency = 0.7
box.BorderColor3 = Color3.new(27/255,42/255,53/255)
box.Font = "SciFi"
box.Text = "Hacking101"
box.TextScaled = true
box.TextWrapped = true
box.TextColor3 = Color3.new(255/255,255/255,255/255)
box.TextStrokeTransparency = 0

box2 = Instance.new("TextBox",main)
box2.Name = "box"
box2.Size = UDim2.new(0.33,-5,0.1,0)
box2.Position = UDim2.new(0.33,5,0.88,0)
box2.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
box2.BackgroundTransparency = 0.7
box2.BorderColor3 = Color3.new(27/255,42/255,53/255)
box2.Font = "SciFi"
box2.Text = "Joseph2235"
box2.TextScaled = true
box2.TextWrapped = true
box2.TextColor3 = Color3.new(255/255,255/255,255/255)
box2.TextStrokeTransparency = 0

one = Instance.new("ScrollingFrame",list)
one.Name = "one"
one.Size = UDim2.new(1,0,.9,0)
one.Position = UDim2.new(0,0,0.1,0)
one.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
one.BorderSizePixel = 0
one.ScrollBarThickness = 0

two = Instance.new("ScrollingFrame",list)
two.Name = "two"
two.Visible = false
two.Size = UDim2.new(1,0,.9,0)
two.Position = UDim2.new(0,0,0.1,0)
two.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
two.BorderSizePixel = 0
two.ScrollBarThickness = 0

three = Instance.new("ScrollingFrame",list)
three.Name = "three"
three.Visible = false
three.Size = UDim2.new(1,0,.9,0)
three.Position = UDim2.new(0,0,0.1,0)
three.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
three.BorderSizePixel = 0
three.ScrollBarThickness = 0

four = Instance.new("ScrollingFrame",list)
four.Name = "four"
four.Visible = false
four.Size = UDim2.new(1,0,.9,0)
four.Position = UDim2.new(0,0,0.1,0)
four.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
four.BorderSizePixel = 0
four.ScrollBarThickness = 0

exit.MouseButton1Down:connect(function()
    if closed == false then
        main:TweenPosition(UDim2.new(-1,125,0.5,-125),"Out","Quad",4,true)
        changelist.Text = "Open"
        closed = true
    end
end)

tab = 1
listtab = {
    "one",
    "two",
    "three",
    "four"
}
tabname = {
    "Scripts",
    "FE Scripts",
    "Players",
    "Server"
}
changelist.MouseButton1Down:connect(function()
    if closed == true then
        changelist.Text = tabname[tab]
        main:TweenPosition(UDim2.new(0,125,0.5,-125),"Out","Quad",2,true)
        closed = false
    elseif closed == false then
        list[listtab[tab]].Visible = false
if tab == 4 then
    tab=1
    changelist.Text = tabname[1]
    list[listtab[1]].Visible = true
else list[listtab[tab+1]].Visible = true
    changelist.Text = tabname[tab+1]
tab=tab+1
    end
    end
end)
values = {
    5,
    5,
    5,
    5
}
function button(name,ls,val)
    local b = Instance.new("TextButton",ls)
    b.Name = name
    b.BackgroundColor3 = Color3.new(180/255,0/255,0/255)
    b.BorderColor3 = Color3.new(160/255,0/255,0/255)
    b.Position = UDim2.new(0,0,0,values[val])
    b.Size = UDim2.new(1,0,0,25)
    b.Font = "SciFi"
    b.Text = name
    b.TextScaled = true
    b.TextWrapped = true
    b.TextColor3 = Color3.new(255/255,255/255,255/255)
    b.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
    b.TextStrokeTransparency = 0
    values[val] = values[val]+30
    return b
    
end
local load = ""
function setdesc(Title,Desc,PlaceID,boxes,box1,box2)
    stit.Text = Title
    desc.Text = Desc
    if PlaceID == 0 then
    wrn.Visible = false
    elseif PlaceID > 0 then
        if game.PlaceId ~= PlaceID then
            wrn.Visible = true else
            wrn.Visible = false
        end
    end
    if boxes == 0 then textbox0() elseif boxes == 1 then textbox1(box1) elseif boxes == 2 then textbox2(box1,box2) end
end
function textbox2(one,two)
    box.Visible = true
    box2.Visible = true
    exe.Visible = true
    box.Text = one
    box2.Text = two
    box:TweenSizeAndPosition(UDim2.new(0.33, -5,0.1, 0),UDim2.new(0,0,0.88,0),"Out","Quad",0.5,true)
    box2:TweenSizeAndPosition(UDim2.new(0.33,-5,0.1,0),UDim2.new(0.33,5,0.88,0),"Out","Quad",0.5,true)
    exe:TweenSizeAndPosition(UDim2.new(0.33, -5,0.1, 0),UDim2.new(0.65,10,0.88,0),"Out","Quad",0.5,true)
end
function textbox1(one)
    box.Visible = true
    box2.Visible = false
    exe.Visible = true
    box.Text = one
    box:TweenSizeAndPosition(UDim2.new(0.5, -5,0.1, 0),UDim2.new(0,0,0.88,0),"Out","Quad",0.5,true)
    exe:TweenSizeAndPosition(UDim2.new(0.5, -5,0.1, 0),UDim2.new(0.5,0,0.88,0),"Out","Quad",0.5,true)
end
function textbox0()
    box.Visible = false
    box2.Visible = false
    exe.Visible = true
    exe:TweenSizeAndPosition(UDim2.new(1, 0,0.1, 0),UDim2.new(0,0,0.88,0),"Out","Quad",0.5,true)
end

exe.MouseButton1Down:connect(function()
    loadstring(load)()
end)
ffplayer = button("Coming Soon!",three,3)
musicgui = button("Music Gui",one,1)
apocesp = button("Apoc ESP",one,1)
redwoodguns = button("Redwood Guns",one,1)
BSODScript = button("BSOD",one,1)
HilaryScript = button("Hilary Meme",one,1)
TrumpScript = button("Trump Meme",one,1)
DuckScript = button("Duck",one,1)
DatBoi = button("DatBoi",one,1)
Treasure = button("Treasure Island",one,1)
PLG = button("Prison Life Guns",one,1)
Skybox = button("Skybox GUI",one,1)
FEGod = button("FE God",two,2)
Shutdown = button("Shutdown",four,4)
AdminGui = button("Admin GUI",one,1)
RF = button("Rainbow Fire",one,1)
sunsetcity = button("Sunset City Money",one,1)
ffplayer.MouseButton1Down:connect(function()
    setdesc("Coming Soon!","Raindrop has a problem with the script method. Please wait till the problem is resolved. Thanks!",0,1,"Type here")
load = [[print("This will be fixed in Raindrop 2.0.0")]]
end)
musicgui.MouseButton1Down:connect(function()
    setdesc("Music Gui by DragonRamer","Music gui that lets you insert music with properties such as: Pitch, Volume etc.",0,0)
    load = [[loadstring(Raindrop:DownloadString('http://pastebin.com/raw/606ktfaU'))()]]
end)
apocesp.MouseButton1Down:connect(function()
    setdesc("Apoc ESP by Brack4712","Lets you see your enemies from far distances.",0,0)
    load = [[for i,v in pairs(game.Players:GetChildren()) do
    local handle = Instance.new("Handles",game.Players.LocalPlayer.PlayerGui)
    handle.Adornee = v.Character.Head
    handle.Color3 = Color3.new(0/255, 255/255, 0/255)
    handle.Transparency = 0
    handle.Style = "Resize"
    end]]
end)
redwoodguns.MouseButton1Down:connect(function()
    setdesc("Redwood Gun Giver by Bunnylord","Gives you three items: \n Taser \n Beretta M9 \n UMP-45",402122991,0)
    load = [[game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Taser")
wait(1)
game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Beretta M9")
wait(1)
game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "UMP-45")]]
end)
BSODScript.MouseButton1Down:connect(function()
    setdesc("BSOD Script by joseph2235","Destroys the server with particles + music",0,0)
    load = [[local w = workspace:GetChildren()
local a = Instance.new("Sky",game.Lighting)
local b = {"Bk","Dn","Ft","Lf","Rt","Up"}
for _,v in pairs(b) do
a["Skybox"..v]="rbxassetid://111954944"
end
for q,p in pairs(game.Players:GetPlayers()) do
local c = Instance.new("ParticleEmitter",p.Character.Torso)
c.Texture = "rbxassetid://79187163"
c.VelocitySpread = 50 end
local d = Instance.new("Sound",workspace)
d.SoundId = "rbxassetid://507839176"
d.Looped = true
d:Play()
for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = "rbxassetid://79187163"
pe.VelocitySpread = 5
end end
for n,m in pairs(game.Players:GetPlayers()) do
local dd = Instance.new("ParticleEmitter",m.Character.Torso)
dd.Texture = "rbxassetid://357822657"
dd.VelocitySpread = 50 end]]
end)
HilaryScript.MouseButton1Down:connect(function()
    setdesc("Hilary Meme Script by joseph2235","Makes your head a Hilary image",0,0)
    load = [[gui1=Instance.new("BillboardGui")
gui1.Parent = game.Players.LocalPlayer.Character.Head
gui1.Adornee = game.Players.LocalPlayer.Character.Head
gui1.Size=UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset=Vector3.new(0,0.2,0)
gui1.AlwaysOnTop = true
text1=Instance.new("ImageLabel")
text1.Image = "rbxassetid://499105465" --
text1.Size=UDim2.new(1,0,1,0)
text1.Position=UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent=gui1
game.Players.LocalPlayer.Character.Head.Transparency = 1]]
end)
TrumpScript.MouseButton1Down:connect(function()
    setdesc("Trump Meme Script by joseph2235","Makes your head a Trump image",0,0)
    load = [[gui1=Instance.new("BillboardGui")
gui1.Parent = game.Players.LocalPlayer.Character.Head
gui1.Adornee = game.Players.LocalPlayer.Character.Head
gui1.Size=UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset=Vector3.new(0,0.2,0)
gui1.AlwaysOnTop = true
text1=Instance.new("ImageLabel")
text1.Image = "rbxassetid://343377229"
text1.Size=UDim2.new(1,0,1,0)
text1.Position=UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent=gui1
game.Players.LocalPlayer.Character.Head.Transparency = 1
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if v.ClassName == 'Hat' then v:remove() end end]]
end)
DuckScript.MouseButton1Down:connect(function()
    setdesc("Duck Script by 3dsboy08","Makes your character a giant duck",0,0)
    load = [[local pchar = game.Players.LocalPlayer.Character                
local duck = Instance.new("SpecialMesh", pchar.Torso)
duck.MeshType = "FileMesh"
duck.MeshId = "rbxassetid://9419831"
duck.TextureId = "rbxassetid://9419827"
duck.Scale = Vector3.new(5,5,5)
pchar.Head.Transparency = 1
pchar["Left Arm"].Transparency = 1
pchar["Right Arm"].Transparency = 1
pchar["Left Leg"].Transparency = 1
pchar["Right Leg"].Transparency = 1]]
end)
DatBoi.MouseButton1Down:connect(function()
    setdesc("DatBoi script by joseph2235","Makes you datboi",0,0)
    load = [[local char = game.Players.LocalPlayer.Character

for i,v in pairs(char.Torso:GetChildren()) do
    if v.ClassName == 'Decal' then
         v:Destroy()
    end
end
for i,v in pairs(char:GetChildren()) do
    if v.ClassName == 'Hat' then
        v:Destroy()
    end
end
for i,v in pairs(char.Head:GetChildren()) do
    if v.ClassName == 'Decal' then
        v:Destroy()
    end
end

local datboi = Instance.new('SpecialMesh', char.Torso)
datboi.MeshType = 'FileMesh'
datboi.MeshId = 'http://www.roblox.com/asset/?id=430095888'
datboi.TextureId = 'http://www.roblox.com/asset/?id=171886325'
datboi.Scale = Vector3.new(0.01, 0.01, 0.01)
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1]]
end)
Treasure.MouseButton1Down:connect(function()
    setdesc("Treasure Island Money Script by Unit-01","Teleports all metals to you",506399422,0)
    load = [[for i,v in pairs(workspace.Metals:GetChildren()) do
v.Position = game.Players.LocalPlayer.Character.Head.Position
end]]
end)
PLG.MouseButton1Down:connect(function()
    setdesc("Prison Life Script by haxxor222","Spawns Remington 870, M9 and AK47 above your character",155615604,0)
    load = [[local weapons = {"Remington 870", "M9", "AK-47", "M4A1"}
for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
for j, k in pairs(weapons) do
if v.Name == k then
v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
end
end
end]]
end)
Skybox.MouseButton1Down:connect(function()
    setdesc("Skybox GUI Setter by joseph2235","Sets the skybox to whatever you put in the GUI",0,0)
    load = [[loadstring(Raindrop:DownloadString('http://pastebin.com/raw/HWJrtyX1'))()]]
end)
FEGod.MouseButton1Down:connect(function()
    setdesc("FE God Script by unverified","Uses a simple FE trick to give ou god \n (Removes humanoid and re-inserts it)",0,0)
    load = [[game.Players.LocalPlayer.Character.Humanoid:Destroy()
        Instance.new("Humanoid",game.Players.LocalPlayer.Character)]]
end)
Shutdown.MouseButton1Down:connect(function()
    setdesc("Shutdown Script by unverified","Shuts down the server",0,0)
    load = [[game.Workspace.Gravity = 0/0]]
end)
AdminGui.MouseButton1Down:connect(function()
    setdesc("Simple Admin GUI by joseph2235","GUI for inserting admin commands",0,0)
    load = [[loadstring(Raindrop:DownloadString('http://pastebin.com/raw/xTbeGwVK'))()]]
end)
RF.MouseButton1Down:connect(function()
    setdesc("Rainbow Fire by unverified","Gives rainbow fire to the localplayer's torso",0,0)
    load = [[fire = Instance.new("Fire", game.Players.LocalPlayer.Character.Torso)
fire.Heat = 25
fire.Size = 30
while true do wait(1)
fire.Color = Color3.new(math.random(),math.random(),math.random())
end]]
end)
sunsetcity.MouseButton1Down:connect(function()
    setdesc("Sunset City Money by OVOXO","Completes a sunset city job 10x (money maker)",28397429,0)
    load = [[local i = 0
local b = 10
repeat
game.ReplicatedStorage.Remotes.Events.CompletedJob:FireServer()
wait(0.1)
i = i + 1
wait(0.1)
print(i)
until i == b]]
end)
sunsetcity.MouseButton1Down:connect(function()
    setdesc("Bucket Hub by [TreZ] Bucket","GUI hub with scripts",0,0)
    load = [[loadstring(Raindrop:DownloadString('http://pastebin.com/raw/zvY4gRJQ'))()]]
end)