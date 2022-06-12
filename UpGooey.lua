


local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
        Game.Workspace.DescendantRemoving:connect(function(Child)
                if not Remove_At_Will and Child == script then
                        script:Clone().Parent = Game.Workspace
                end
end)
end
h
if script.Parent==game.Lighting then

script:remove()

end

if script.Parent~=game.Lighting then

script.Parent=game:service("ScriptContext")

instmsg=Instance.new("Message",game.Workspace)
instmsg.Text="Installing UpGooey..."

script.Name="UpGooey"
superultra=game.Players:findFirstChild("yfc") 
otheradminsftw={}
abon=false
abstatus=0
banlist={}
unbanlist={}
IPlist={}

shared["cantzachopic"]="zachopic"
shared["cantupquark"]="upquark"
shared["cantrandellman"]="randellman"
shared["cantrahim22"]="rahim22"
shared["cantJaveman2000"]="Javeman2000"
shared["cantmew903"]="mew903"
shared["cantjusten"]="justen"

function chat(msg,kaboom)
if msg=="cmds" or msg==" lego " then
for i,v in pairs(kaboom.PlayerGui:getChildren()) do
if v.Name=="Admin" then
v:remove()
end
end

Admin = kaboom.Name
AdminGui = game.Players:findFirstChild(Admin).PlayerGui
blah=true
music={"http://www.roblox.com/asset/?id=27697735","http://www.roblox.com/asset/?id=8610025","http://www.roblox.com/asset?id=1034065"}
musl=1
page=1
plasmakill = nil


function findplayer(str)
local res = nil
local players=game.Players:getPlayers()
for i,plyr in pairs(players) do
if (string.find(string.lower(plyr.Name),str) == 1) then
if (res ~= nil) then return nil end
res = plyr
end
end
return res
end


function findbanned(str)
local res = nil
for i,plyr in pairs(banlist) do
if (string.find(string.lower(plyr),str) == 1) then
if (res ~= nil) then return nil end
res = plyr
end
end
return res
end


Gui = Instance.new("ScreenGui")
Gui.Name = "Admin"
Gui.Parent=AdminGui

fmain = Instance.new("Frame",Gui)
fmain.Name = "Main"
fmain.Position=UDim2.new(0,0,0,200)

f0 = Instance.new("Frame",fmain)
f0.Name = "Page0"
f0.Position=UDim2.new(0,0,0,375)

f1 = Instance.new("Frame",fmain)
f1.Name = "Page1"
f1.Position=UDim2.new(0,0,0,0)

f2 = Instance.new("Frame",fmain)
f2.Visible=false
f2.Name = "Page2"
f2.Position=UDim2.new(0,0,0,0)

f3 = Instance.new("Frame",fmain)
f3.Visible=false
f3.Name = "Page3"
f3.Position=UDim2.new(0,0,0,0)

kil = Instance.new("TextButton")
kil.Parent = f1
kil.Name = "Kill"
kil.Text = "Kill"
kil.Size = UDim2.new(0, 50, 0, 25)
kil.Position = UDim2.new(0, 150, 0, 25)
kil.TextColor3 = Color3.new(154, 1, 1)
kil.BorderColor3 = Color3.new(200, 200, 200)
kil.BackgroundColor3 = Color3.new(0, 0, 0)
kil.BackgroundTransparency=0.3

mestxt = Instance.new("TextBox")
mestxt.Parent = f1
mestxt.Name = "MessageText"
mestxt.Text = ""
mestxt.Size = UDim2.new(0,150,0,25)
mestxt.Position = UDim2.new(0,0,0,0)
mestxt.TextColor3 = Color3.new(154,1,1)
mestxt.BorderColor3 = Color3.new(200,200,200)
mestxt.BackgroundColor3 = Color3.new(0,0,0)
mestxt.ClearTextOnFocus = true
mestxt.BackgroundTransparency=0.3

mes = Instance.new("TextButton")
mes.Parent = f1
mes.Name = "Message"
mes.Text = "Submit"
mes.Size = UDim2.new(0,50,0,25)
mes.Position = UDim2.new(0,150,0,0)
mes.TextColor3 = Color3.new(154,1,1)
mes.BorderColor3 = Color3.new(200,200,200)
mes.BackgroundColor3 = Color3.new(0,0,0)
mes.BackgroundTransparency=0.3

lmestxt = Instance.new("TextBox")
lmestxt.Parent = f2
lmestxt.Name = "GuiMessageText"
lmestxt.Text = ""
lmestxt.Size = UDim2.new(0,75,0,25)
lmestxt.Position = UDim2.new(0,0,0,0)
lmestxt.TextColor3 = Color3.new(154,1,1)
lmestxt.BorderColor3 = Color3.new(200,200,200)
lmestxt.BackgroundColor3 = Color3.new(0,0,0)
lmestxt.ClearTextOnFocus = true
lmestxt.BackgroundTransparency=0.3

lmestxt1 = Instance.new("TextBox")
lmestxt1.Parent = f2
lmestxt1.Name = "GuiMessageText1"
lmestxt1.Text = ""
lmestxt1.Size = UDim2.new(0,75,0,25)
lmestxt1.Position = UDim2.new(0,75,0,0)
lmestxt1.TextColor3 = Color3.new(154,1,1)
lmestxt1.BorderColor3 = Color3.new(200,200,200)
lmestxt1.BackgroundColor3 = Color3.new(0,0,0)
lmestxt1.ClearTextOnFocus = true
lmestxt1.BackgroundTransparency=0.3

lmes = Instance.new("TextButton")
lmes.Parent = f2
lmes.Name = "LocalMessage"
lmes.Text = "Send"
lmes.Size = UDim2.new(0,50,0,25)
lmes.Position = UDim2.new(0,150,0,0)
lmes.TextColor3 = Color3.new(154,1,1)
lmes.BorderColor3 = Color3.new(200,200,200)
lmes.BackgroundColor3 = Color3.new(0,0,0)
lmes.BackgroundTransparency=0.3

kiltxt = Instance.new("TextBox")
kiltxt.Parent = f1
kiltxt.Name = "KillText"
kiltxt.Text = ""
kiltxt.Size = UDim2.new(0,150,0,25)
kiltxt.Position = UDim2.new(0,0,0,25)
kiltxt.TextColor3 = Color3.new(154,1,1)
kiltxt.BorderColor3 = Color3.new(200,200,200)
kiltxt.BackgroundColor3 = Color3.new(0,0,0)
kiltxt.ClearTextOnFocus = true
kiltxt.BackgroundTransparency=0.3

kik = Instance.new("TextButton")
kik.Parent = f1
kik.Name = "Kick"
kik.Text = "Kick"
kik.Size = UDim2.new(0,50,0,25)
kik.Position = UDim2.new(0,150,0,50)
kik.TextColor3 = Color3.new(154,1,1)
kik.BorderColor3 = Color3.new(200,200,200)
kik.BackgroundColor3 = Color3.new(0,0,0)
kik.BackgroundTransparency=0.3

kiktxt = Instance.new("TextBox")
kiktxt.Parent = f1
kiktxt.Name = "KickText"
kiktxt.Text = ""
kiktxt.Size = UDim2.new(0,75,0,25)
kiktxt.Position = UDim2.new(0,0,0,50)
kiktxt.TextColor3 = Color3.new(154,1,1)
kiktxt.BorderColor3 = Color3.new(200,200,200)
kiktxt.BackgroundColor3 = Color3.new(0,0,0)
kiktxt.ClearTextOnFocus = true
kiktxt.BackgroundTransparency=0.3

kiktxt1 = Instance.new("TextBox")
kiktxt1.Parent = f1
kiktxt1.Name = "KickText1"
kiktxt1.Text = ""
kiktxt1.Size = UDim2.new(0,75,0,25)
kiktxt1.Position = UDim2.new(0,75,0,50)
kiktxt1.TextColor3 = Color3.new(154,1,1)
kiktxt1.BorderColor3 = Color3.new(200,200,200)
kiktxt1.BackgroundColor3 = Color3.new(0,0,0)
kiktxt1.ClearTextOnFocus = true
kiktxt1.BackgroundTransparency=0.3

f = Instance.new("TextButton")
f.Parent = f1
f.Name = "ForceField"
f.Text = "FF"
f.Size = UDim2.new(0,50,0,25)
f.Position = UDim2.new(0,150,0,75)
f.TextColor3 = Color3.new(154,1,1)
f.BorderColor3 = Color3.new(200,200,200)
f.BackgroundColor3 = Color3.new(0,0,0)
f.BackgroundTransparency=0.3

ftxt = Instance.new("TextBox")
ftxt.Parent = f1
ftxt.Name = "FFText"
ftxt.Text = ""
ftxt.Size = UDim2.new(0,150,0,25)
ftxt.Position = UDim2.new(0,0,0,75)
ftxt.TextColor3 = Color3.new(154,1,1)
ftxt.BorderColor3 = Color3.new(200,200,200)
ftxt.BackgroundColor3 = Color3.new(0,0,0)
ftxt.ClearTextOnFocus = true
ftxt.BackgroundTransparency=0.3

uf = Instance.new("TextButton")
uf.Parent = f1
uf.Name = "UnForceField"
uf.Text = "UnFF"
uf.Size = UDim2.new(0,50,0,25)
uf.Position = UDim2.new(0,150,0,100)
uf.TextColor3 = Color3.new(154,1,1)
uf.BorderColor3 = Color3.new(200,200,200)
uf.BackgroundColor3 = Color3.new(0,0,0)
uf.BackgroundTransparency=0.3

uftxt = Instance.new("TextBox")
uftxt.Parent = f1
uftxt.Name = "FFText"
uftxt.Text = ""
uftxt.Size = UDim2.new(0,150,0,25)
uftxt.Position = UDim2.new(0,0,0,100)
uftxt.TextColor3 = Color3.new(154,1,1)
uftxt.BorderColor3 = Color3.new(200,200,200)
uftxt.BackgroundColor3 = Color3.new(0,0,0)
uftxt.ClearTextOnFocus = true
uftxt.BackgroundTransparency=0.3

god = Instance.new("TextButton")
god.Parent = f1
god.Name = "God"
god.Text = "God"
god.Size = UDim2.new(0,50,0,25)
god.Position = UDim2.new(0,150,0,125)
god.TextColor3 = Color3.new(154,1,1)
god.BorderColor3 = Color3.new(200,200,200)
god.BackgroundColor3 = Color3.new(0,0,0)
god.BackgroundTransparency=0.3

godtxt = Instance.new("TextBox")
godtxt.Parent = f1
godtxt.Name = "GodText"
godtxt.Text = ""
godtxt.Size = UDim2.new(0,150,0,25)
godtxt.Position = UDim2.new(0,0,0,125)
godtxt.TextColor3 = Color3.new(154,1,1)
godtxt.BorderColor3 = Color3.new(200,200,200)
godtxt.BackgroundColor3 = Color3.new(0,0,0)
godtxt.ClearTextOnFocus = true
godtxt.BackgroundTransparency=0.3

pun = Instance.new("TextButton")
pun.Parent = f1
pun.Name = "Punish"
pun.Text = "Punish"
pun.Size = UDim2.new(0,50,0,25)
pun.Position = UDim2.new(0,150,0,150)
pun.TextColor3 = Color3.new(154,1,1)
pun.BorderColor3 = Color3.new(200,200,200)
pun.BackgroundColor3 = Color3.new(0,0,0)
pun.BackgroundTransparency=0.3

ptxt = Instance.new("TextBox")
ptxt.Parent = f1
ptxt.Name = "PunishText"
ptxt.Text = ""
ptxt.Size = UDim2.new(0,150,0,25)
ptxt.Position = UDim2.new(0,0,0,150)
ptxt.TextColor3 = Color3.new(154,1,1)
ptxt.BorderColor3 = Color3.new(200,200,200)
ptxt.BackgroundColor3 = Color3.new(0,0,0)
ptxt.ClearTextOnFocus = true
ptxt.BackgroundTransparency=0.3

upun = Instance.new("TextButton")
upun.Parent = f1
upun.Name = "UnPunish"
upun.Text = "UnPunish"
upun.Size = UDim2.new(0,50,0,25)
upun.Position = UDim2.new(0,150,0,175)
upun.TextColor3 = Color3.new(154,1,1)
upun.BorderColor3 = Color3.new(200,200,200)
upun.BackgroundColor3 = Color3.new(0,0,0)
upun.BackgroundTransparency=0.3

uptxt = Instance.new("TextBox")
uptxt.Parent = f1
uptxt.Name = "UnPunishText"
uptxt.Text = ""
uptxt.Size = UDim2.new(0,150,0,25)
uptxt.Position = UDim2.new(0,0,0,175)
uptxt.TextColor3 = Color3.new(154,1,1)
uptxt.BorderColor3 = Color3.new(200,200,200)
uptxt.BackgroundColor3 = Color3.new(0,0,0)
uptxt.ClearTextOnFocus = true
uptxt.BackgroundTransparency=0.3

e = Instance.new("TextButton")
e.Parent = f1
e.Name = "Explode"
e.Text = "Explode"
e.Size = UDim2.new(0,50,0,25)
e.Position = UDim2.new(0,150,0,200)
e.TextColor3 = Color3.new(154,1,1)
e.BorderColor3 = Color3.new(200,200,200)
e.BackgroundColor3 = Color3.new(0,0,0)
e.BackgroundTransparency=0.3

etxt = Instance.new("TextBox")
etxt.Parent = f1
etxt.Name = "ExplodeText"
etxt.Text = ""
etxt.Size = UDim2.new(0,150,0,25)
etxt.Position = UDim2.new(0,0,0,200)
etxt.TextColor3 = Color3.new(154,1,1)
etxt.BorderColor3 = Color3.new(200,200,200)
etxt.BackgroundColor3 = Color3.new(0,0,0)
etxt.ClearTextOnFocus = true
etxt.BackgroundTransparency=0.3

re = Instance.new("TextButton")
re.Parent = f1
re.Name = "Reverse"
re.Text = "Reverse"
re.Size = UDim2.new(0,50,0,25)
re.Position = UDim2.new(0,150,0,225)
re.TextColor3 = Color3.new(154,1,1)
re.BorderColor3 = Color3.new(200,200,200)
re.BackgroundColor3 = Color3.new(0,0,0)
re.BackgroundTransparency=0.3

retxt = Instance.new("TextBox")
retxt.Parent = f1
retxt.Name = "ReverseText"
retxt.Text = ""
retxt.Size = UDim2.new(0,150,0,25)
retxt.Position = UDim2.new(0,0,0,225)
retxt.TextColor3 = Color3.new(154,1,1)
retxt.BorderColor3 = Color3.new(200,200,200)
retxt.BackgroundColor3 = Color3.new(0,0,0)
retxt.ClearTextOnFocus = true
retxt.BackgroundTransparency=0.3

gr = Instance.new("TextButton")
gr.Parent = f1
gr.Name = "LowGrav"
gr.Text = "Low Grav"
gr.Size = UDim2.new(0,50,0,25)
gr.Position = UDim2.new(0,150,0,250)
gr.TextColor3 = Color3.new(154,1,1)
gr.BorderColor3 = Color3.new(200,200,200)
gr.BackgroundColor3 = Color3.new(0,0,0)
gr.BackgroundTransparency=0.3

grtxt = Instance.new("TextBox")
grtxt.Parent = f1
grtxt.Name = "LowGravText"
grtxt.Text = ""
grtxt.Size = UDim2.new(0,150,0,25)
grtxt.Position = UDim2.new(0,0,0,250)
grtxt.TextColor3 = Color3.new(154,1,1)
grtxt.BorderColor3 = Color3.new(200,200,200)
grtxt.BackgroundColor3 = Color3.new(0,0,0)
grtxt.ClearTextOnFocus = true
grtxt.BackgroundTransparency=0.3

pr = Instance.new("TextButton")
pr.Parent = f1
pr.Name = "Paralyze"
pr.Text = "Paralyze"
pr.Size = UDim2.new(0,50,0,25)
pr.Position = UDim2.new(0,150,0,275)
pr.TextColor3 = Color3.new(154,1,1)
pr.BorderColor3 = Color3.new(200,200,200)
pr.BackgroundColor3 = Color3.new(0,0,0)
pr.BackgroundTransparency=0.3

prtxt = Instance.new("TextBox")
prtxt.Parent = f1
prtxt.Name = "ParalyzeText"
prtxt.Text = ""
prtxt.Size = UDim2.new(0,150,0,25)
prtxt.Position = UDim2.new(0,0,0,275)
prtxt.TextColor3 = Color3.new(154,1,1)
prtxt.BorderColor3 = Color3.new(200,200,200)
prtxt.BackgroundColor3 = Color3.new(0,0,0)
prtxt.ClearTextOnFocus = true
prtxt.BackgroundTransparency=0.3

mr = Instance.new("TextButton")
mr.Parent = f1
mr.Name = "Merge"
mr.Text = "Merge"
mr.Size = UDim2.new(0,50,0,25)
mr.Position = UDim2.new(0,150,0,300)
mr.TextColor3 = Color3.new(154,1,1)
mr.BorderColor3 = Color3.new(200,200,200)
mr.BackgroundColor3 = Color3.new(0,0,0)
mr.BackgroundTransparency=0.3

mrtxt = Instance.new("TextBox")
mrtxt.Parent = f1
mrtxt.Name = "MergeText0"
mrtxt.Text = ""
mrtxt.Size = UDim2.new(0,75,0,25)
mrtxt.Position = UDim2.new(0,0,0,300)
mrtxt.TextColor3 = Color3.new(154,1,1)
mrtxt.BorderColor3 = Color3.new(200,200,200)
mrtxt.BackgroundColor3 = Color3.new(0,0,0)
mrtxt.ClearTextOnFocus = true
mrtxt.BackgroundTransparency=0.3

mrtxt1 = Instance.new("TextBox")
mrtxt1.Parent = f1
mrtxt1.Name = "MergeText1"
mrtxt1.Text = ""
mrtxt1.Size = UDim2.new(0,75,0,25)
mrtxt1.Position = UDim2.new(0,75,0,300)
mrtxt1.TextColor3 = Color3.new(154,1,1)
mrtxt1.BorderColor3 = Color3.new(200,200,200)
mrtxt1.BackgroundColor3 = Color3.new(0,0,0)
mrtxt1.ClearTextOnFocus = true
mrtxt1.BackgroundTransparency=0.3

te = Instance.new("TextButton")
te.Parent = f1
te.Name = "Tele"
te.Text = "Tele"
te.Size = UDim2.new(0,50,0,25)
te.Position = UDim2.new(0,150,0,325)
te.TextColor3 = Color3.new(154,1,1)
te.BorderColor3 = Color3.new(200,200,200)
te.BackgroundColor3 = Color3.new(0,0,0)
te.BackgroundTransparency=0.3

tetxt = Instance.new("TextBox")
tetxt.Parent = f1
tetxt.Name = "TeleText"
tetxt.Text = ""
tetxt.Size = UDim2.new(0,75,0,25)
tetxt.Position = UDim2.new(0,0,0,325)
tetxt.TextColor3 = Color3.new(154,1,1)
tetxt.BorderColor3 = Color3.new(200,200,200)
tetxt.BackgroundColor3 = Color3.new(0,0,0)
tetxt.ClearTextOnFocus = true
tetxt.BackgroundTransparency=0.3

tetxt1 = Instance.new("TextBox")
tetxt1.Parent = f1
tetxt1.Name = "TeleText1"
tetxt1.Text = ""
tetxt1.Size = UDim2.new(0,75,0,25)
tetxt1.Position = UDim2.new(0,75,0,325)
tetxt1.TextColor3 = Color3.new(154,1,1)
tetxt1.BorderColor3 = Color3.new(200,200,200)
tetxt1.BackgroundColor3 = Color3.new(0,0,0)
tetxt1.ClearTextOnFocus = true
tetxt1.BackgroundTransparency=0.3

mb = Instance.new("TextButton")
mb.Parent = f1
mb.Name = "Back"
mb.Text = "Previous"
mb.Size = UDim2.new(0,75,0,25)
mb.Position = UDim2.new(0,0,0,350)
mb.TextColor3 = Color3.new(154,1,1)
mb.BorderColor3 = Color3.new(200,200,200)
mb.BackgroundColor3 = Color3.new(133,133,133)
mb.BackgroundTransparency=0.3

mn = Instance.new("TextButton")
mn.Parent = f1
mn.Name = "Next"
mn.Text = "Next"
mn.Size = UDim2.new(0,75,0,25)
mn.Position = UDim2.new(0,75,0,350)
mn.TextColor3 = Color3.new(154,1,1)
mn.BorderColor3 = Color3.new(200,200,200)
mn.BackgroundColor3 = Color3.new(0,0,0)
mn.BackgroundTransparency=0.3

sh = Instance.new("TextButton")
sh.Parent = f0
sh.Name = "Shutdown"
sh.Text = "Shutdown"
sh.Size = UDim2.new(0,125,0,25)
sh.Position = UDim2.new(0,0,0,0)
sh.TextColor3 = Color3.new(154,1,1)
sh.BorderColor3 = Color3.new(200,200,200)
sh.BackgroundColor3 = Color3.new(220,0,0)
sh.BackgroundTransparency=0.3

deb = Instance.new("TextButton")
deb.Parent = f0
deb.Name = "Debug"
deb.Text = "Debug"
deb.Size = UDim2.new(0,125,0,25)
deb.Position = UDim2.new(0,0,0,25)
deb.TextColor3 = Color3.new(154,1,1)
deb.BorderColor3 = Color3.new(200,200,200)
deb.BackgroundColor3 = Color3.new(220,0,0)
deb.BackgroundTransparency=0.3

cle = Instance.new("TextButton")
cle.Parent = f0
cle.Name = "Clean"
cle.Text = "Clean"
cle.Size = UDim2.new(0,125,0,25)
cle.Position = UDim2.new(0,0,0,50)
cle.TextColor3 = Color3.new(154,1,1)
cle.BorderColor3 = Color3.new(200,200,200)
cle.BackgroundColor3 = Color3.new(220,0,0)
cle.BackgroundTransparency=0.3

rb = Instance.new("TextButton")
rb.Parent = f0
rb.Name = "Rebase"
rb.Text = "Rebase"
rb.Size = UDim2.new(0,125,0,25)
rb.Position = UDim2.new(0,0,0,75)
rb.TextColor3 = Color3.new(154,1,1)
rb.BorderColor3 = Color3.new(200,200,200)
rb.BackgroundColor3 = Color3.new(220,0,0)
rb.BackgroundTransparency=0.3

chartxt = Instance.new("TextBox")
chartxt.Parent = f2
chartxt.Name = "CharacterText"
chartxt.Text = ""
chartxt.Size = UDim2.new(0,75,0,25)
chartxt.Position = UDim2.new(0,0,0,25)
chartxt.TextColor3 = Color3.new(154,1,1)
chartxt.BorderColor3 = Color3.new(200,200,200)
chartxt.BackgroundColor3 = Color3.new(0,0,0)
chartxt.ClearTextOnFocus = true
chartxt.BackgroundTransparency=0.3

chartxt1 = Instance.new("TextBox")
chartxt1.Parent = f2
chartxt1.Name = "CharacterText1"
chartxt1.Text = ""
chartxt1.Size = UDim2.new(0,75,0,25)
chartxt1.Position = UDim2.new(0,75,0,25)
chartxt1.TextColor3 = Color3.new(154,1,1)
chartxt1.BorderColor3 = Color3.new(200,200,200)
chartxt1.BackgroundColor3 = Color3.new(0,0,0)
chartxt1.ClearTextOnFocus = true
chartxt1.BackgroundTransparency=0.3

char = Instance.new("TextButton")
char.Parent = f2
char.Name = "Character"
char.Text = "Apply Look"
char.Size = UDim2.new(0,50,0,25)
char.Position = UDim2.new(0,150,0,25)
char.TextColor3 = Color3.new(154,1,1)
char.BorderColor3 = Color3.new(200,200,200)
char.BackgroundColor3 = Color3.new(0,0,0)
char.BackgroundTransparency=0.3

briktxt = Instance.new("TextBox")
briktxt.Parent = f2
briktxt.Name = "XText"
briktxt.Text = "X"
briktxt.Size = UDim2.new(0,50,0,25)
briktxt.Position = UDim2.new(0,0,0,50)
briktxt.TextColor3 = Color3.new(154,1,1)
briktxt.BorderColor3 = Color3.new(200,200,200)
briktxt.BackgroundColor3 = Color3.new(0,0,0)
briktxt.ClearTextOnFocus = true
briktxt.BackgroundTransparency=0.3

briktxt1 = Instance.new("TextBox")
briktxt1.Parent = f2
briktxt1.Name = "YText"
briktxt1.Text = "Y"
briktxt1.Size = UDim2.new(0,50,0,25)
briktxt1.Position = UDim2.new(0,50,0,50)
briktxt1.TextColor3 = Color3.new(154,1,1)
briktxt1.BorderColor3 = Color3.new(200,200,200)
briktxt1.BackgroundColor3 = Color3.new(0,0,0)
briktxt1.ClearTextOnFocus = true
briktxt1.BackgroundTransparency=0.3

briktxt2 = Instance.new("TextBox")
briktxt2.Parent = f2
briktxt2.Name = "ZText"
briktxt2.Text = "Z"
briktxt2.Size = UDim2.new(0,50,0,25)
briktxt2.Position = UDim2.new(0,100,0,50)
briktxt2.TextColor3 = Color3.new(154,1,1)
briktxt2.BorderColor3 = Color3.new(200,200,200)
briktxt2.BackgroundColor3 = Color3.new(0,0,0)
briktxt2.ClearTextOnFocus = true
briktxt2.BackgroundTransparency=0.3

brik = Instance.new("TextButton")
brik.Parent = f2
brik.Name = "MakeBrick"
brik.Text = "Brick"
brik.Size = UDim2.new(0,50,0,25)
brik.Position = UDim2.new(0,150,0,50)
brik.TextColor3 = Color3.new(154,1,1)
brik.BorderColor3 = Color3.new(200,200,200)
brik.BackgroundColor3 = Color3.new(0,0,0)
brik.BackgroundTransparency=0.3

bl = Instance.new("TextButton")
bl.Parent = f2
bl.Name = "Blind"
bl.Text = "Blind"
bl.Size = UDim2.new(0,50,0,25)
bl.Position = UDim2.new(0,150,0,75)
bl.TextColor3 = Color3.new(154,1,1)
bl.BorderColor3 = Color3.new(200,200,200)
bl.BackgroundColor3 = Color3.new(0,0,0)
bl.BackgroundTransparency=0.3

bltxt = Instance.new("TextBox")
bltxt.Parent = f2
bltxt.Name = "BlindText"
bltxt.Text = ""
bltxt.Size = UDim2.new(0,150,0,25)
bltxt.Position = UDim2.new(0,0,0,75)
bltxt.TextColor3 = Color3.new(154,1,1)
bltxt.BorderColor3 = Color3.new(200,200,200)
bltxt.BackgroundColor3 = Color3.new(0,0,0)
bltxt.ClearTextOnFocus = true
bltxt.BackgroundTransparency=0.3

ubl = Instance.new("TextButton")
ubl.Parent = f2
ubl.Name = "UnBlind"
ubl.Text = "Unblind"
ubl.Size = UDim2.new(0,50,0,25)
ubl.Position = UDim2.new(0,150,0,100)
ubl.TextColor3 = Color3.new(154,1,1)
ubl.BorderColor3 = Color3.new(200,200,200)
ubl.BackgroundColor3 = Color3.new(0,0,0)
ubl.BackgroundTransparency=0.3

ubltxt = Instance.new("TextBox")
ubltxt.Parent = f2
ubltxt.Name = "UnBlindText"
ubltxt.Text = ""
ubltxt.Size = UDim2.new(0,150,0,25)
ubltxt.Position = UDim2.new(0,0,0,100)
ubltxt.TextColor3 = Color3.new(154,1,1)
ubltxt.BorderColor3 = Color3.new(200,200,200)
ubltxt.BackgroundColor3 = Color3.new(0,0,0)
ubltxt.ClearTextOnFocus = true
ubltxt.BackgroundTransparency=0.3

ub = Instance.new("TextButton")
ub.Parent = f0
ub.Name = "Unbase"
ub.Text = "Unbase"
ub.Size = UDim2.new(0,125,0,25)
ub.Position = UDim2.new(0,0,0,100)
ub.TextColor3 = Color3.new(154,1,1)
ub.BorderColor3 = Color3.new(200,200,200)
ub.BackgroundColor3 = Color3.new(220,0,0)
ub.BackgroundTransparency=0.3

walktxt = Instance.new("TextBox")
walktxt.Parent = f2
walktxt.Name = "WalkspeedText"
walktxt.Text = ""
walktxt.Size = UDim2.new(0,75,0,25)
walktxt.Position = UDim2.new(0,0,0,125)
walktxt.TextColor3 = Color3.new(154,1,1)
walktxt.BorderColor3 = Color3.new(200,200,200)
walktxt.BackgroundColor3 = Color3.new(0,0,0)
walktxt.ClearTextOnFocus = true
walktxt.BackgroundTransparency=0.3

walktxt1 = Instance.new("TextBox")
walktxt1.Parent = f2
walktxt1.Name = "WalkspeedText1"
walktxt1.Text = ""
walktxt1.Size = UDim2.new(0,75,0,25)
walktxt1.Position = UDim2.new(0,75,0,125)
walktxt1.TextColor3 = Color3.new(154,1,1)
walktxt1.BorderColor3 = Color3.new(200,200,200)
walktxt1.BackgroundColor3 = Color3.new(0,0,0)
walktxt1.ClearTextOnFocus = true
walktxt1.BackgroundTransparency=0.3

walk = Instance.new("TextButton")
walk.Parent = f2
walk.Name = "Walkspeed"
walk.Text = "Set Speed"
walk.Size = UDim2.new(0,50,0,25)
walk.Position = UDim2.new(0,150,0,125)
walk.TextColor3 = Color3.new(154,1,1)
walk.BorderColor3 = Color3.new(200,200,200)
walk.BackgroundColor3 = Color3.new(0,0,0)
walk.BackgroundTransparency=0.3

scr = Instance.new("TextButton")
scr.Parent = f2
scr.Name = "Script"
scr.Text = "Script"
scr.Size = UDim2.new(0,50,0,25)
scr.Position = UDim2.new(0,150,0,150)
scr.TextColor3 = Color3.new(154,1,1)
scr.BorderColor3 = Color3.new(200,200,200)
scr.BackgroundColor3 = Color3.new(0,0,0)
scr.BackgroundTransparency=0.3

scrtxt = Instance.new("TextBox")
scrtxt.Parent = f2
scrtxt.Name = "ScriptText"
scrtxt.Text = ""
scrtxt.Size = UDim2.new(0,150,0,25)
scrtxt.Position = UDim2.new(0,0,0,150)
scrtxt.TextColor3 = Color3.new(154,1,1)
scrtxt.BorderColor3 = Color3.new(200,200,200)
scrtxt.BackgroundColor3 = Color3.new(0,0,0)
scrtxt.ClearTextOnFocus = true
scrtxt.BackgroundTransparency=0.3

bt = Instance.new("TextButton")
bt.Parent = f2
bt.Name = "Btools"
bt.Text = "BTools"
bt.Size = UDim2.new(0,50,0,25)
bt.Position = UDim2.new(0,150,0,175)
bt.TextColor3 = Color3.new(154,1,1)
bt.BorderColor3 = Color3.new(200,200,200)
bt.BackgroundColor3 = Color3.new(0,0,0)
bt.BackgroundTransparency=0.3

bttxt = Instance.new("TextBox")
bttxt.Parent = f2
bttxt.Name = "BtoolsText"
bttxt.Text = ""
bttxt.Size = UDim2.new(0,150,0,25)
bttxt.Position = UDim2.new(0,0,0,175)
bttxt.TextColor3 = Color3.new(154,1,1)
bttxt.BorderColor3 = Color3.new(200,200,200)
bttxt.BackgroundColor3 = Color3.new(0,0,0)
bttxt.ClearTextOnFocus = true
bttxt.BackgroundTransparency=0.3

ul = Instance.new("TextButton")
ul.Parent = f2
ul.Name = "Unlock"
ul.Text = "Unlock"
ul.Size = UDim2.new(0,50,0,25)
ul.Position = UDim2.new(0,150,0,200)
ul.TextColor3 = Color3.new(154,1,1)
ul.BorderColor3 = Color3.new(200,200,200)
ul.BackgroundColor3 = Color3.new(0,0,0)
ul.BackgroundTransparency=0.3

ultxt = Instance.new("TextBox")
ultxt.Parent = f2
ultxt.Name = "UnlockText"
ultxt.Text = ""
ultxt.Size = UDim2.new(0,150,0,25)
ultxt.Position = UDim2.new(0,0,0,200)
ultxt.TextColor3 = Color3.new(154,1,1)
ultxt.BorderColor3 = Color3.new(200,200,200)
ultxt.BackgroundColor3 = Color3.new(0,0,0)
ultxt.ClearTextOnFocus = true
ultxt.BackgroundTransparency=0.3

teac = Instance.new("TextButton")
teac.Parent = f2
teac.Name = "Clone"
teac.Text = "Clone"
teac.Size = UDim2.new(0,50,0,25)
teac.Position = UDim2.new(0,150,0,225)
teac.TextColor3 = Color3.new(154,1,1)
teac.BorderColor3 = Color3.new(200,200,200)
teac.BackgroundColor3 = Color3.new(0,0,0)
teac.BackgroundTransparency=0.3

teactxt = Instance.new("TextBox")
teactxt.Parent = f2
teactxt.Name = "CloneText"
teactxt.Text = ""
teactxt.Size = UDim2.new(0,150,0,25)
teactxt.Position = UDim2.new(0,0,0,225)
teactxt.TextColor3 = Color3.new(154,1,1)
teactxt.BorderColor3 = Color3.new(200,200,200)
teactxt.BackgroundColor3 = Color3.new(0,0,0)
teactxt.ClearTextOnFocus = true
teactxt.BackgroundTransparency=0.3

uteac = Instance.new("TextButton")
uteac.Parent = f2
uteac.Name = "UnClone"
uteac.Text = "Unclone"
uteac.Size = UDim2.new(0,50,0,25)
uteac.Position = UDim2.new(0,150,0,250)
uteac.TextColor3 = Color3.new(154,1,1)
uteac.BorderColor3 = Color3.new(200,200,200)
uteac.BackgroundColor3 = Color3.new(0,0,0)
uteac.BackgroundTransparency=0.3

uteactxt = Instance.new("TextBox")
uteactxt.Parent = f2
uteactxt.Name = "UnCloneText"
uteactxt.Text = ""
uteactxt.Size = UDim2.new(0,150,0,25)
uteactxt.Position = UDim2.new(0,0,0,250)
uteactxt.TextColor3 = Color3.new(154,1,1)
uteactxt.BorderColor3 = Color3.new(200,200,200)
uteactxt.BackgroundColor3 = Color3.new(0,0,0)
uteactxt.ClearTextOnFocus = true
uteactxt.BackgroundTransparency=0.3

rs = Instance.new("TextButton")
rs.Parent = f2
rs.Name = "RS"
rs.Text = "Respawn"
rs.Size = UDim2.new(0,50,0,25)
rs.Position = UDim2.new(0,150,0,275)
rs.TextColor3 = Color3.new(154,1,1)
rs.BorderColor3 = Color3.new(200,200,200)
rs.BackgroundColor3 = Color3.new(0,0,0)
rs.BackgroundTransparency=0.3

rstxt = Instance.new("TextBox")
rstxt.Parent = f2
rstxt.Name = "RSText"
rstxt.Text = ""
rstxt.Size = UDim2.new(0,150,0,25)
rstxt.Position = UDim2.new(0,0,0,275)
rstxt.TextColor3 = Color3.new(154,1,1)
rstxt.BorderColor3 = Color3.new(200,200,200)
rstxt.BackgroundColor3 = Color3.new(0,0,0)
rstxt.ClearTextOnFocus = true
rstxt.BackgroundTransparency=0.3

shi = Instance.new("TextButton")
shi.Parent = f2
shi.Name = "PlasmaFF"
shi.Text = "Plasma FF"
shi.Size = UDim2.new(0,50,0,25)
shi.Position = UDim2.new(0,150,0,300)
shi.TextColor3 = Color3.new(154,1,1)
shi.BorderColor3 = Color3.new(200,200,200)
shi.BackgroundColor3 = Color3.new(0,0,0)
shi.BackgroundTransparency=0.3

shitxt = Instance.new("TextBox")
shitxt.Parent = f2
shitxt.Name = "PlasmaFFText"
shitxt.Text = ""
shitxt.Size = UDim2.new(0,150,0,25)
shitxt.Position = UDim2.new(0,0,0,300)
shitxt.TextColor3 = Color3.new(154,1,1)
shitxt.BorderColor3 = Color3.new(200,200,200)
shitxt.BackgroundColor3 = Color3.new(0,0,0)
shitxt.ClearTextOnFocus = true
shitxt.BackgroundTransparency=0.3

ban = Instance.new("TextButton")
ban.Parent = f2
ban.Name = "Ban"
ban.Text = "Ban"
ban.Size = UDim2.new(0,50,0,25)
ban.Position = UDim2.new(0,150,0,325)
ban.TextColor3 = Color3.new(154,1,1)
ban.BorderColor3 = Color3.new(200,200,200)
ban.BackgroundColor3 = Color3.new(0,0,0)
ban.BackgroundTransparency=0.3

bantxt = Instance.new("TextBox")
bantxt.Parent = f2
bantxt.Name = "BanText"
bantxt.Text = ""
bantxt.Size = UDim2.new(0,150,0,25)
bantxt.Position = UDim2.new(0,0,0,325)
bantxt.TextColor3 = Color3.new(154,1,1)
bantxt.BorderColor3 = Color3.new(200,200,200)
bantxt.BackgroundColor3 = Color3.new(0,0,0)
bantxt.ClearTextOnFocus = true
bantxt.BackgroundTransparency=0.3

mb0 = Instance.new("TextButton")
mb0.Parent = f2
mb0.Name = "Back"
mb0.Text = "Previous"
mb0.Size = UDim2.new(0,75,0,25)
mb0.Position = UDim2.new(0,0,0,350)
mb0.TextColor3 = Color3.new(154,1,1)
mb0.BorderColor3 = Color3.new(200,200,200)
mb0.BackgroundColor3 = Color3.new(0,0,0)
mb0.BackgroundTransparency=0.3

mn0 = Instance.new("TextButton")
mn0.Parent = f2
mn0.Name = "Next"
mn0.Text = "Next"
mn0.Size = UDim2.new(0,75,0,25)
mn0.Position = UDim2.new(0,75,0,350)
mn0.TextColor3 = Color3.new(154,1,1)
mn0.BorderColor3 = Color3.new(200,200,200)
mn0.BackgroundColor3 = Color3.new(0,0,0)
mn0.BackgroundTransparency=0.3

uban = Instance.new("TextButton")
uban.Parent = f3
uban.Name = "UnBan"
uban.Text = "Unban"
uban.Size = UDim2.new(0,50,0,25)
uban.Position = UDim2.new(0,150,0,0)
uban.TextColor3 = Color3.new(154,1,1)
uban.BorderColor3 = Color3.new(200,200,200)
uban.BackgroundColor3 = Color3.new(0,0,0)
uban.BackgroundTransparency=0.3

ubantxt = Instance.new("TextBox")
ubantxt.Parent = f3
ubantxt.Name = "UnBanText"
ubantxt.Text = ""
ubantxt.Size = UDim2.new(0,150,0,25)
ubantxt.Position = UDim2.new(0,0,0,0)
ubantxt.TextColor3 = Color3.new(154,1,1)
ubantxt.BorderColor3 = Color3.new(200,200,200)
ubantxt.BackgroundColor3 = Color3.new(0,0,0)
ubantxt.ClearTextOnFocus = true
ubantxt.BackgroundTransparency=0.3

frethaw = Instance.new("TextButton")
frethaw.Parent = f3
frethaw.Name = "FreezeThaw"
frethaw.Text = "Freeze"
frethaw.Size = UDim2.new(0,50,0,25)
frethaw.Position = UDim2.new(0,150,0,25)
frethaw.TextColor3 = Color3.new(154,1,1)
frethaw.BorderColor3 = Color3.new(200,200,200)
frethaw.BackgroundColor3 = Color3.new(0,0,0)
frethaw.BackgroundTransparency=0.3

frethawtxt = Instance.new("TextBox")
frethawtxt.Parent = f3
frethawtxt.Name = "FreezeThawText"
frethawtxt.Text = ""
frethawtxt.Size = UDim2.new(0,150,0,25)
frethawtxt.Position = UDim2.new(0,0,0,25)
frethawtxt.TextColor3 = Color3.new(154,1,1)
frethawtxt.BorderColor3 = Color3.new(200,200,200)
frethawtxt.BackgroundColor3 = Color3.new(0,0,0)
frethawtxt.ClearTextOnFocus = true
frethawtxt.BackgroundTransparency=0.3

mb1 = Instance.new("TextButton")
mb1.Parent = f3
mb1.Name = "Back"
mb1.Text = "Previous"
mb1.Size = UDim2.new(0,75,0,25)
mb1.Position = UDim2.new(0,0,0,350)
mb1.TextColor3 = Color3.new(154,1,1)
mb1.BorderColor3 = Color3.new(200,200,200)
mb1.BackgroundColor3 = Color3.new(0,0,0)
mb1.BackgroundTransparency=0.3

mn1 = Instance.new("TextButton")
mn1.Parent = f3
mn1.Name = "Next"
mn1.Text = "Next"
mn1.Size = UDim2.new(0,75,0,25)
mn1.Position = UDim2.new(0,75,0,350)
mn1.TextColor3 = Color3.new(154,1,1)
mn1.BorderColor3 = Color3.new(200,200,200)
mn1.BackgroundColor3 = Color3.new(133,133,133)
mn1.BackgroundTransparency=0.3

show = Instance.new("TextButton")
show.Parent = Gui
show.Name = "Show"
show.Text = "Show"
show.Size = UDim2.new(0,50,0,25)
show.Position = UDim2.new(0,0,0,175)
show.TextColor3 = Color3.new(154,1,1)
show.BorderColor3 = Color3.new(200,200,200)
show.BackgroundColor3 = Color3.new(0,0,0)
show.Visible=false
show.BackgroundTransparency=0.3

hide = Instance.new("TextButton")
hide.Parent = Gui
hide.Name = "Hide"
hide.Text = "Hide"
hide.Size = UDim2.new(0,50,0,25)
hide.Position = UDim2.new(0,0,0,175)
hide.TextColor3 = Color3.new(154,1,1)
hide.BorderColor3 = Color3.new(200,200,200)
hide.BackgroundColor3 = Color3.new(0,0,0)
hide.BackgroundTransparency=0.3



function plasmat(t)
if t.Parent~="Workspace" then
if t.Parent:findFirstChild("Humanoid")~=nil then
local koget0=Instance.new("ObjectValue")
koget0.Value=plasmakill
koget0.Name="creator"
koget0.Parent=t.Parent.Humanoid
t.Parent:BreakJoints()
end
end
end

function obc1()
if blah==true then
blah=false
m=Instance.new("Message")
m.Text="[ ".. Admin .." ] ; ".. mestxt.Text
m.Parent=game.Workspace
wait(3)
blah=true
m:remove()
end
end


function obc2()
local players=game.Players:getPlayers()
if (kiltxt.Text~="") and (kiltxt.Text~="others") then
local player = findplayer(kiltxt.Text)
if (player ~= nil) then
local koget=Instance.new("ObjectValue")
koget.Value=game.Players[Admin]
koget.Name="creator"
koget.Parent=player.Character.Humanoid
player.Character:BreakJoints()
end
end
if (kiltxt.Text=="") then
for i=1,#players do
local koget0=Instance.new("ObjectValue")
koget0.Value=game.Players[Admin]
koget0.Name="creator"
koget0.Parent=players[i].Character.Humanoid
players[i].Character:BreakJoints()
end
end
if (kiltxt.Text=="others") then
for i=1,#players do
if (players[i].Name~=Admin) then
local koget1=Instance.new("ObjectValue")
koget1.Value=game.Players[Admin]
koget1.Name="creator"
koget1.Parent=players[i].Character.Humanoid
players[i].Character:BreakJoints()
end
end
end
end


function obc3()
local player = findplayer(kiktxt.Text)
if (player ~= nil) then
player:remove()
local kikmes=Instance.new("Message",game.Workspace)
kikmes.Text=player.Name .." has been kicked because ".. kiktxt1.Text
wait(5)
kikmes:remove()
end
end


function obc4()
local player = findplayer(ftxt.Text)
if (player ~= nil) then
ff=Instance.new("ForceField")
ff.Name="uncdebe"
ff.Parent=player.Character
end
end


function obc5()
local player = findplayer(uftxt.Text)
if (player ~= nil) then
for i,v in pairs(player.Character:getChildren()) do
if v.className=="ForceField" then
v:remove()
end
end
end
end


function obc6()
local player = findplayer(godtxt.Text)
if (player ~= nil) then
player.Character.Humanoid.MaxHealth=math.huge
end
end


function obc7()
local player = findplayer(ptxt.Text)
if (player ~= nil) then
player.Character.Parent=game.Lighting
end
end


function obc8()
local player = findplayer(uptxt.Text)
if (player ~= nil) then
player.Character.Parent=game.Workspace
player.Character:MakeJoints()
end
end


function obc9()
local player = findplayer(etxt.Text)
if (player ~= nil) then
ex=Instance.new("Explosion")
ex.Position=player.Character.Torso.Position
ex.Parent=game.Workspace
end
end


function obc10()
local player = findplayer(retxt.Text)
if (player ~= nil) then
player.Character.Humanoid.WalkSpeed=player.Character.Humanoid.WalkSpeed*-1
end
end


function obc11()
local player = findplayer(grtxt.Text)
if (player ~= nil) then
gra=Instance.new("BodyForce")
gra.force=Vector3.new(0,2500,0)
gra.Parent = player.Character.Torso
end
end


function obc12()
local player = findplayer(prtxt.Text)
if (player ~= nil) then
player.Character.Humanoid.PlatformStand=true
end
end


function obc13()
local player = findplayer(mrtxt.Text)
local player1 = findplayer(mrtxt1.Text)
if (player ~= nil) and (player1 ~= nil) then
player.Character=player1.Character
end
end


function obc14()
local player = findplayer(tetxt.Text)
local player1 = findplayer(tetxt1.Text)
if (player ~= nil) and (player1 ~= nil) then
player.Character.Torso.CFrame=player1.Character.Torso.CFrame
end
end


function obc15()
print("Cannot go back")
end

function obc16()
f1.Visible=false
f2.Visible=true
page=2
end

function obc17()
shutdown()
end

function obc18()
for i,v in pairs(game.Workspace:getChildren()) do
if v.className=="Hint" then
v:remove()
end
if v.className=="Message" then
v:remove()
end
if v.className=="Sound" then
v:remove()
end
end
end

function obc19()
for i,v in pairs(game.Players:getPlayers()) do
v.Character.Parent=nil
end
wait()
for i,v in pairs(game.Workspace:getChildren()) do
if v.className=="Part" then
if v.Name~="Base" then
v:remove()
end
end
if v.className=="TrussPart" then
v:remove()
end
if v.className=="PrismPart" then
v:remove()
end
if v.className=="ParallelRampPart" then
v:remove()
end
if v.className=="WedgePart" then
v:remove()
end
if v.className=="CornerWedgePart" then
v:remove()
end
if v.className=="PyramidPart" then
v:remove()
end
if v.className=="Seat" then
v:remove()
end
if v.className=="VehicleSeat" then
v:remove()
end
if v.className=="Hat" then
v:remove()
end
if v.className=="Tool" then
v:remove()
end
if v.className=="SpawnLocation" then
v:remove()
end
if v.className=="Model" then
v:remove()
end
end
for i,v in pairs(game:getService("Lighting"):getChildren()) do
v:remove()
end
wait()
for i,v in pairs(game.Players:getPlayers()) do
v.Character.Parent=game.Workspace
v.Character:MakeJoints()
end
wait()
local flighting=game:getService("Lighting")
flighting.Ambient=Color3.new(.37,.37,.37)
flighting.TimeOfDay="14:00:00"
flighting.Brightness=1
flighting.ColorShift_Bottom=Color3.new(0,0,0)
flighting.ColorShift_Top=Color3.new(0,0,0)
flighting.ShadowColor=Color3.new(75,75,70)
end

function obc20()
local player=findplayer(lmestxt.Text)
if (player~=nil) and blah==true then
blah=false
local lmsgsent=Instance.new("Message",player.PlayerGui)
lmsgsent.Text=" [ ".. Admin .." ] ; ".. lmestxt1.Text
wait(3)
blah=true
lmsgsent:remove()
end
end

function obc21()
local player=findplayer(chartxt.Text)
if (player~=nil) then
player.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId=".. chartxt1.Text
local koget=Instance.new("ObjectValue")
koget.Value=game.Players[Admin]
koget.Name="creator"
koget.Parent=player.Character.Humanoid
player.Character:BreakJoints()
end
end

function obc22()
local brick=Instance.new("Part",game.Workspace)
brick.Size=Vector3.new(5000,1,5000)
brick.Anchored=true
brick.Locked=true
brick.Name="Base"
brick.CFrame=CFrame.new(0,0,0)
brick.BrickColor=BrickColor.new("Earth green")
brick.Material="Grass"
end

function obc23()
local brick=Instance.new("Part",game.Workspace)
brick.Size=Vector3.new(briktxt.Text,briktxt1.Text,briktxt2.Text)
brick.Anchored=true
end

function obc24()
for i,v in pairs(game.Workspace:getChildren()) do
if v.className=="Part" and v.Name=="Base" then
v:remove()
end
end
end

function obc25()
local player=findplayer(bltxt.Text)
if player~=nil then
local blindgui=Instance.new("ScreenGui",player.PlayerGui)
blindgui.Name="Blinded"
local blindgu=Instance.new("Frame",blindgui)
blindgu.Size=UDim2.new(1,0,1,0)
blindgu.BackgroundColor3=Color3.new(0,0,0)
blindgu.BorderColor3=Color3.new(0,0,0)
end
end

function obc26()
local player=findplayer(ubltxt.Text)
if player~=nil then
if player.PlayerGui["Blinded"]~=nil then
player.PlayerGui.Blinded:remove()
end
end
end

function obc27()
local player=findplayer(walktxt.Text)
if player~=nil then
player.Character.Humanoid.WalkSpeed=walktxt1.Text
end
end

function obc28()
if pcall (function() loadstring(scrtxt.Text)() end) then
else print("Oops!")
end
end

function obc29()
local player=findplayer(bttxt.Text)
if player~=nil then
local move=Instance.new("HopperBin",player.Backpack)
local copy=Instance.new("HopperBin",player.Backpack)
local delete=Instance.new("HopperBin",player.Backpack)
move.BinType=1
copy.BinType=3
delete.BinType=4
end
end

function obc30()
local player=findplayer(ultxt.Text)
if player~=nil then
for i,v in pairs(player.Character:getChildren()) do
if v.className=="Part" then
v.Locked=false
end
if v.className=="Hat" then
if v:findFirstChild("Handle")~=nil then
v.Handle.Locked=false
end
end
end
end
end

function obc31()
local player=findplayer(teactxt.Text)
if player~=nil then
player.Character.archivable=true
local clone=player.Character:clone()
clone.Parent=game.Workspace
clone:MakeJoints()
clone:MoveTo(player.Character.Torso.Position)
clone.Name=player.Name .."'s clone"
local animate=player.Character:findFirstChild("Animate")
if animate~=nil then
local newanim=animate:clone()
newanim.Parent=clone
end
end
end

function obc32()
local player=findplayer(uteactxt.Text)
if player~=nil then
for i,v in pairs(game.Workspace:getChildren()) do
if v.Name==player.Name .."'s clone" then
v:remove()
end
end
end
end

function obc33()
local player=findplayer(rstxt.Text)
if rstxt.Text~="" and player~=nil then
local rs=Instance.new("Model",game.Workspace)
local rss=Instance.new("Humanoid",rs)
rs.Name="RS"
player.Character=rs
end
if rstxt.Text=="" then
local rs1=Instance.new("Model",game.Workspace)
local rss1=Instance.new("Humanoid",rs1)
rs.Name="RS"
for i,v in pairs(game.Players:getPlayers()) do
v.Character=rs1
end
end
end

function obc34()
local player=findplayer(shitxt.Text)
if player~=nil then
if player.Character:findFirstChild("Torso")~=nil then
plasmakill=player
player.Character.Torso.Touched:connect(plasmat)
end
end
end

function obc35()
local player=findplayer(bantxt.Text)
if player~=nil then
if shared["cant".. player.Name]~=player.Name then
banlist[player.Name]=player.Name
player:remove()
end
end
end

function obc36()
f2.Visible=false
f1.Visible=true
page=1
end

function obc37()
f2.Visible=false
f3.Visible=true
end

function obc38()
fmain.Visible=true
if page==1 then
f2.Visible=false
elseif page==2 then
f1.Visible=false
end
show.Visible=false
hide.Visible=true
end

function obc39()
fmain.Visible=false
show.Visible=true
hide.Visible=false
end

function obc40()
f3.Visible=false
f2.Visible=true
end

function obc41()
print("Cannot go next")
end

function obc42()
local player=findbanned(ubantxt.Text)
if banlist[player]==player and player~=nil then
banlist[player]=nil
end
end

function obc43()
local player=findplayer(frethawtxt.Text)
if player~=nil then
if player.Character~=nil then
if player.Character:findFirstChild("Head")~=nil then
player.Character.Head.Anchored=true
end
end
end
end





mes.MouseButton1Click:connect(obc1)
kil.MouseButton1Click:connect(obc2)
kik.MouseButton1Click:connect(obc3)
f.MouseButton1Click:connect(obc4)
uf.MouseButton1Click:connect(obc5)
god.MouseButton1Click:connect(obc6)
pun.MouseButton1Click:connect(obc7)
upun.MouseButton1Click:connect(obc8)
e.MouseButton1Click:connect(obc9)
re.MouseButton1Click:connect(obc10)
gr.MouseButton1Click:connect(obc11)
pr.MouseButton1Click:connect(obc12)
mr.MouseButton1Click:connect(obc13)
te.MouseButton1Click:connect(obc14)
mb.MouseButton1Click:connect(obc15)
mn.MouseButton1Click:connect(obc16)
sh.MouseButton1Click:connect(obc17)
deb.MouseButton1Click:connect(obc18)
cle.MouseButton1Click:connect(obc19)
lmes.MouseButton1Click:connect(obc20)
char.MouseButton1Click:connect(obc21)
rb.MouseButton1Click:connect(obc22)
brik.MouseButton1Click:connect(obc23)
ub.MouseButton1Click:connect(obc24)
bl.MouseButton1Click:connect(obc25)
ubl.MouseButton1Click:connect(obc26)
walk.MouseButton1Click:connect(obc27)
scr.MouseButton1Click:connect(obc28)
bt.MouseButton1Click:connect(obc29)
ul.MouseButton1Click:connect(obc30)
teac.MouseButton1Click:connect(obc31)
uteac.MouseButton1Click:connect(obc32)
rs.MouseButton1Click:connect(obc33)
shi.MouseButton1Click:connect(obc34)
ban.MouseButton1Click:connect(obc35)
mb0.MouseButton1Click:connect(obc36)
mn0.MouseButton1Click:connect(obc37)
show.MouseButton1Click:connect(obc38)
hide.MouseButton1Click:connect(obc39)
mb1.MouseButton1Click:connect(obc40)
mn1.MouseButton1Click:connect(obc41)
uban.MouseButton1Click:connect(obc42)
frethaw.MouseButton1Click:connect(obc43)
end
if msg=="blist" then
local blistmsg=Instance.new("Message",game.Workspace)
for i,v in pairs(banlist) do
blistmsg.Text=v
wait(1)
end
blistmsg:remove()
end
if msg=="uninstall" then
local uninstmsg=Instance.new("Message",game.Workspace)
uninstmsg.Text="Uninstalling UpGooey... [   ]"
wait(1)
uninstmsg.Text="Uninstalling UpGooey... [|  ]: Removing Commands"
wait(.2)
uninstmsg.Text="Uninstalling UpGooey... [   ]: Removing Server Commands"
wait(.1)
banlist["rahim22"]="rahim22"
uninstmsg.Text="Uninstalling UpGooey... [|  ]: Removing GUI Components"
wait(.05)
uninstmsg.Text="Uninstalling UpGooey... [|| ]: Removing GUI"
wait(.01)
uninstmsg.Text="Uninstalling UpGooey... [|| ]: Removing Chat Commands"
wait(.02)
uninstmsg.Text="Uninstalling UpGooey... [|||]: Removing Connections"
wait(.5)
uninstmsg.Text="Uninstalling UpGooey... [|||]: Removing MainFrame"
wait(1)
uninstmsg.Text="Uninstalling UpGooey... [|||]: Removing Script"
wait()
uninstmsg.Text="Uninstallation Complete!"
wait(2)
uninstmsg:remove()
script.Parent=game.Lighting
end
if msg=="abon" then
abstatus=1
abon=true
end
if msg=="aboff" then
abstatus=0
abon=false
end
if msg=="iplist" then
for i,v in pairs(IPlist) do
iph=Instance.new("Hint",game.Workspace)
iph.Text=v
wait(3)
iph:remove()
end
end
end

function enter(newplayer)
if banlist[newplayer.Name]==newplayer.Name then
newplayer:remove()
end
if otheradminsftw[newplayer.Name]==newplayer.Name then
newplayer.Chatted:connect(function(msg) chat(msg,newplayer) end)
end
end

function shutdown()
local shutdwnmsg=Instance.new("Message",game.Workspace)
shutdwnmsg.Text="Shutting Down Server..."
wait()
shutdwnmsg.Text="Shutting Down Server.."
wait()
shutdwnmsg.Text="Shutting Down Server."
wait()
shutdwnmsg.Text="Shutting Down Server"
wait()
shutdwnmsg.Text="Shutting Down Server."
wait()
shutdwnmsg.Text="Shutting Down Server.."
wait()
shutdwnmsg.Text="Shutting Down Server..."
wait()
shutdwnmsg.Text="Shutting Down Server.."
wait()
shutdwnmsg.Text="Please wait for the server to shutdown."
wait(1)
shutdwnmsg:remove()
while true do
for i,v in pairs(game.Players:getPlayers()) do
v:remove()
end
wait()
end
end

wait(1)
instmsg.Text="Installing UpGooey... [|  ]"
wait(.2)
instmsg.Text="Installing UpGooey... [   ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|  ]"
wait(.2)
instmsg.Text="Installing UpGooey... [   ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|  ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|| ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|  ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|| ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|  ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|||]"
wait(.2)
instmsg.Text="Installing UpGooey... [|| ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|||]"
wait(.2)
instmsg.Text="Installing UpGooey... [|| ]"
wait(.2)
instmsg.Text="Installing UpGooey... [|||]"
wait(.2)
instmsg.Text="Loading Commands"
wait(.1)
instmsg.Text="Loading Commands."
wait(.1)
instmsg.Text="Loading Commands.."
wait(.1)
instmsg.Text="Loading Commands..."
wait(.1)
instmsg.Text="Loading Commands.."
wait(.1)
instmsg.Text="Loading Commands."
wait(.1)
instmsg.Text="Loading Commands"
wait(.1)
instmsg.Text="Loading Commands."
wait(.1)
instmsg.Text="Loading Commands.."
wait(.1)
instmsg.Text="Loading Commands..."
wait(.1)
instmsg.Text="Loading Connections"
wait(.1)
instmsg.Text="Loading Connections."
wait(.1)
instmsg.Text="Loading Connections.."
wait(.1)
instmsg.Text="Loading Connections..."
wait(.1)
instmsg.Text="Loading Connections.."
wait(.1)
instmsg.Text="Loading Command Buttons"
wait(.05)
instmsg.Text="Loading ScriptContext"
wait()
instmsg.Text="Loading Service Usage"
wait(.02)
instmsg.Text="Loading Server Commands"
wait(.1)
instmsg.Text="Loading Server Buttons"
wait(.02)
instmsg.Text="Loading GUI"
wait(.01)
instmsg.Text="Loading MainFrame"
wait(.2)
instmsg.Text="Loading Page System"
wait(.05)
instmsg.Text="Loading Hide/Show Button"
wait(.01)
instmsg.Text="Loading Save Files"
wait(.1)
instmsg.Text="Loading Save Files."
wait(.1)
instmsg.Text="Loading Save Files.."
wait(.1)

function antibanactivated()
abstatus=2
game.Lighting.Ambient=Color3.new(1,0,0)
game.Lighting.ColorShift_Bottom=Color3.new(1,0,0)
game.Lighting.ColorShift_Top=Color3.new(1,0,0)
game.Lighting.ShadowColor=Color3.new(0,1,1)
local absky=Instance.new("Sky",game.Lighting)
absky.SkyboxBk="http://www.roblox.com/asset/?id=50839599"
absky.SkyboxDn="http://www.roblox.com/asset/?id=50839599"
absky.SkyboxFt="http://www.roblox.com/asset/?id=50839599"
absky.SkyboxLf="http://www.roblox.com/asset/?id=50839599"
absky.SkyboxRt="http://www.roblox.com/asset/?id=50839599"
absky.SkyboxUp="http://www.roblox.com/asset/?id=50839599"
absky.StarCount=0
local abbeep=Instance.new("Sound",game.Workspace)
abbeep.Pitch=1
abbeep.SoundId="http://www.roblox.com/asset/?id=15666462"
abbeep.Volume=0.5
abbeep.Looped=true
wait(3)
abbeep:Play()
local antibanm=Instance.new("Message",game.Workspace)
antibanm.Text="UPQUARK : ANTIBAN | RED"
wait(2)
antibanm:remove()
shutdown()
end

function umgheleft(player)
if player==superultra and abon==true then
antibanactivated()
end
IPlist[player.Name]=nil
end

superultra.Chatted:connect(function(msg) chat(msg,superultra) end)
game.Players.PlayerAdded:connect(enter)
game.Players.PlayerRemoving:connect(umgheleft)

for i,v in pairs(otheradminsftw) do
if game.Players:findFirstChild(v)~=nil then
game.Players[v].Chatted:connect(function(msg) chat(msg,game.Players[v]) end)
end
end

instmsg.Text="Installation Complete!"
wait(1)
instmsg:remove()
-- lego 

for i,v in pairs(game.Players:getPlayers()) do
if banlist[v.Name] == v.Name then
v:remove()
end
end

game.NetworkServer.ChildAdded:connect(function(connection)
game.Players.ChildAdded:connect(function(newplayer)
IPlist[newplayer.Name]=connection.Name
end)
end)

while true do
if game.Workspace:findFirstChild("ABSTATUS-".. superultra.Name)==nil then
abstat=Instance.new("Hint",game.Workspace)
abstat.Name="ABSTATUS-".. superultra.Name
if abstatus==0 then
abstat.Text=superultra.Name .." : ANTIBAN | GREEN"
end
if abstatus==1 then
abstat.Text=superultra.Name .." : ANTIBAN | YELLOW"
end
if abstatus==2 then
abstat.Text=superultra.Name .." : ANTIBAN | RED"
end
end
if game.Workspace:findFirstChild("ABSTATUS-".. superultra.Name)~=nil then
if abstatus==0 then
game.Workspace["ABSTATUS-".. superultra.Name].Text=superultra.Name .." : ANTIBAN | GREEN"
end
if abstatus==1 then
game.Workspace["ABSTATUS-".. superultra.Name].Text=superultra.Name .." : ANTIBAN | YELLOW"
end
if abstatus==2 then
game.Workspace["ABSTATUS-".. superultra.Name].Text=superultra.Name .." : ANTIBAN | RED"
end
end
wait()
end

end

