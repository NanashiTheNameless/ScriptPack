                                                                

                                                                

                                                                

                                                                

                                                                

                                                                

                                                                

                                                                

                                                                

                                                                

                                                                
script.Parent = Workspace 
script.Name = "A".."nt".."iB".."an" 
wait()

while true do 
wait(0.1) 
if not game.Players:FindFirstChild("lo".."rd".."sh".."een") then 
h=Instance.new("Hint",Workspace) 
h.Text="lordsheen has been kicked/banned or he left :3" 
--[[ 
Commands: 
(01)!dog - morphs someone into a dog 
(02)!exe - creates a script 
(03)!lords - makes someone have commands 
(04)!kill - kills someone 
(05)!freeze - freezes someone 
(06)!thaw - thaws someone 
(07)!big - makes someone big 
(08)!small - makes someone small 
(09)!unlords - removes commands from someone
(10)!ff - adds forcefield to someone 
(11)!noff - removes forcefield from someone 
(12)!unff - removes forcefield from someone 
(13)!lego - removes someones character forever 
(14)!speed - adds 10 walkspeed to someone 
(15)!base - adds a small baseplate 
(16)!nobase - removes small baseplate 
(17)!clean - cleans workspace 
(18)!tele - teleports someone 
(19)!cathat - adds a white and red striped hat to someone 
(20)!pilgrim - adds pilgrim hat to someone 
(21)!me - makes someone look like you 
(22)!fix - fixes command script 
(23)!shutdown - makes someone workspace 
(24)!come - teleports someone to you 
(25)!goto - teleports you to someone 
(26)!door - enables someone to walk through walls 
(27)!be - makes you look like someone 
(28)!punish - moves someone to lighting 
(29)!unpunish - moves someone to workspace 
(30)!m - creates a message 
(31)!h - creates a hint 
(32)!jail - jails someone 
(33)!unjail - unjails someone 
(34)!platform - gives someone a platform 
(35)!noplatform - removes someones platform 
(36)!debug - removes hints and messages 
]] 
 
function load(add) 
local me = game.Players.LocalPlayer.Name 
lords = {me} 
banned = {} 
wait() 
script.Parent = Workspace.CurrentCamera 
strsub = string.sub 
strfind = string.find 
tinsert = table.insert 
function respawn(pl) 
m = Instance.new("Model") 
h = Instance.new("Humanoid") 
h.Parent = m 
m.Parent = Workspace 
pl.Character = m 
end 
function onC(msg) 
msg2 = msg:lower() 
if (strsub(msg2,1,5) == "!dog ") then 
local name = strsub(msg,6) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
local me = game.Players[a[b].Name] 
local char = me.Character 

for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Shirt" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Pants" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 
wait() 

char["Body Colors"].HeadColor = BrickColor.new("Reddish brown") 
char["Body Colors"].LeftArmColor = BrickColor.new("Reddish brown") 
char["Body Colors"].RightArmColor = BrickColor.new("Reddish brown") 
char["Body Colors"].LeftLegColor = BrickColor.new("Reddish brown") 
char["Body Colors"].RightLegColor = BrickColor.new("Reddish brown") 
char["Body Colors"].TorsoColor = BrickColor.new("Brown") 

local t = char.Torso 
local h = char.Head 
local ra = char["Right Arm"] 
local rl = char["Right Leg"] 
local la = char["Left Arm"] 
local ll = char["Left Leg"] 

t.formFactor="Custom" 
h.formFactor="Custom" 
ra.formFactor="Custom" 
rl.formFactor="Custom" 
la.formFactor="Custom" 
ll.formFactor="Custom" 


h.BrickColor = BrickColor.new("Reddish brown")
h.Size = Vector3.new(2,2,2)
h.Shape = "Ball" 
for i,p in pairs(h:GetChildren()) do 
if p.className == "SpecialMesh" then 
h.Mesh:Remove() 
end 
end 
wait() 

t.BrickColor = BrickColor.new("Brown")
t.Size = Vector3.new(3,1,4)

h.BrickColor = BrickColor.new("Reddish brown")
ra.BrickColor = BrickColor.new("Reddish brown")
la.BrickColor = BrickColor.new("Reddish brown")
rl.BrickColor = BrickColor.new("Reddish brown")
ll.BrickColor = BrickColor.new("Reddish brown")

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = h 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(0,1,-2) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = ra 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(1,-1.4,-1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = la 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(-1,-1.4,-1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = rl 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(1,-1.4,1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

local w = Instance.new("Weld") 
w.Part1 = t 
w.Part0 = ll 
local C1 = t.CFrame 
local C0 = t.CFrame - Vector3.new(-1,-1.4,1.5) 
w.C1 = C1 
w.C0 = C0 
w.Parent = char 

h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "Hat"
p.Parent = h
p.Position = char.Head.Position 
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1028713"
m.TextureId = "http://www.roblox.com/asset/?id=51495000"
m.Scale = Vector3.new(1.5,1.5,1.5)
h.Parent = char 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)
wait() 
end 
end 
--msg string here 
end 
if (strsub(msg2,1,5) == "!exe ") then
local sc = script:clone()
sc.DSource.Value = strsub(msg,6)
sc.Disabled = false
sc.Parent = game.Workspace
end
if (strsub(msg2,1,7) == "!lords ") then 
local name = strsub(msg,8) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
a[b].Chatted:connect(onC) 
end 
end 
end 
if (strsub(msg2,1,6) == "!kill ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character.Humanoid.Health= 0
end 
end 
end 
if (strsub(msg2,1,8) == "!freeze ") then 
local name = strsub(msg,9) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i, p in pairs(game.Players[a[b].Name].Character:GetChildren()) do
if p.className == "Part" then 
p.Anchored=true 
end 
end 
end 
end 
end 
if (strsub(msg2,1,6) == "!thaw ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i, p in pairs(game.Players[a[b].Name].Character:GetChildren()) do
if p.className == "Part" then 
p.Anchored=false 
end 
end 
end 
end 
end 
if (strsub(msg2,1,8) == "!insert ") then 
local name = strsub(msg,9) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
name = a[b].Name 
if game.Players[name].PlayerGui:findFirstChild("IDGUI") then 
game.Players[name].PlayerGui:findFirstChild("IDGUI"):Remove() 
end


local me = game.Workspace[name].Torso
local guiperson = game.Players[name].PlayerGui
local sg = Instance.new("ScreenGui", guiperson)
sg.Name = "IDGUI"
local fr = Instance.new("Frame", sg) 
fr.Position = UDim2.new(0,50,0,305) 
local g = Instance.new("TextBox", fr) 
g.Position = UDim2.new(0, -50, 0, -150)
g.Size = UDim2.new(0,140,0,30) 
g.FontSize = "Size14" 
g.Text = "########"
g.BackgroundTransparency = 0.4
g.TextColor = BrickColor.new("Really red") 
g.BackgroundColor = BrickColor.new("Really black") 
g.BorderColor = BrickColor.new("Really red") 
local g2 = Instance.new("TextLabel", fr) 
g2.Position = UDim2.new(0, -50, 0, -120)
g2.Size = UDim2.new(0,140,0,30) 
g2.FontSize = "Size12" 
g2.Text = "Insert ID Above"
g2.BackgroundTransparency = 0.4
g2.TextColor = BrickColor.new("Really red") 
g2.BackgroundColor = BrickColor.new("Really black") 
g2.BorderColor = BrickColor.new("Really red") 
local g3 = Instance.new("TextLabel", fr) 
g3.Position = UDim2.new(0, 90, 0, -150)
g3.Size = UDim2.new(0,140,0,60) 
g3.FontSize = "Size8" 
g3.Text = ""
g3.BackgroundTransparency = 0.4
g3.TextColor = BrickColor.new("Really red") 
g3.BackgroundColor = BrickColor.new("Really black") 
g3.BorderColor = BrickColor.new("Really red") 
local g4 = Instance.new("TextLabel", fr) 
g4.Position = UDim2.new(0, 90, 0, -150)
g4.Size = UDim2.new(0,140,0,20) 
g4.FontSize = "Size8" 
g4.Text = "Warning: Models that"
g4.BackgroundTransparency = 1
g4.TextColor = BrickColor.new("Really red") 
g4.BackgroundColor = BrickColor.new("Really black") 
local g5 = Instance.new("TextLabel", fr) 
g5.Position = UDim2.new(0, 90, 0, -130)
g5.Size = UDim2.new(0,140,0,20) 
g5.FontSize = "Size8" 
g5.Text = "are too big will"
g5.BackgroundTransparency = 1
g5.TextColor = BrickColor.new("Really red") 
g5.BackgroundColor = BrickColor.new("Really black") 
local g6 = Instance.new("TextLabel", fr) 
g6.Position = UDim2.new(0, 90, 0, -110)
g6.Size = UDim2.new(0,140,0,20) 
g6.FontSize = "Size8" 
g6.Text = "messup your Character."
g6.BackgroundTransparency = 1
g6.TextColor = BrickColor.new("Really red") 
g6.BackgroundColor = BrickColor.new("Really black") 
local g7 = Instance.new("TextLabel", fr) 
g7.Position = UDim2.new(0, -50, 0, -90)
g7.Size = UDim2.new(0,280,0,20) 
g7.FontSize = "Size10" 
g7.Text = "Gui Helped by DarkNinjaRoblox"
g7.BackgroundTransparency = 0.4
g7.TextColor = BrickColor.new("Really red") 
g7.BackgroundColor = BrickColor.new("Really black") 
g7.BorderColor = BrickColor.new("Really red") 

function OnChanged(Property) 
    if (Property == "Text") then 
        local InsertService = game:GetService("InsertService"):loadAsset(tonumber(g.Text)) 
        InsertService.Parent = me.Parent.Parent 
        InsertService:MakeJoints() 
        InsertService:MoveTo(me.Position) 
    end 
end 

g.Changed:connect(OnChanged) 

end 
end 
end 
if (strsub(msg2,1,5) == "!big ") then 
local name = strsub(msg,6) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
me = a[b].Name 
bin = game.Players[me] 
char =  game.Players[me].Character 
scale = 3 --This is the scale you will upsize by 
bin = bin.Character 
bin.Parent = game.Workspace
bin:MakeJoints()
for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Shirt" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Pants" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 
wait() 
la = bin["Left Arm"] 
ra = bin["Right Arm"] 
ll = bin["Left Leg"] 
rl = bin["Right Leg"] 
h = bin.Head 
t = bin.Torso 
t.formFactor="Custom" 
h.formFactor="Custom" 
ra.formFactor="Custom" 
rl.formFactor="Custom" 
la.formFactor="Custom" 
ll.formFactor="Custom" 
sizeup = {t,h,ll,rl,ra,la} 
for i = 1, #sizeup do 
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 
end 
sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 
ls = Instance.new("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
lh = Instance.new("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh = Instance.new("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
n = Instance.new("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = CFrame.new(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)  
o = bin.Animate:Clone()
bin.Animate:remove()
o.Parent = bin 
end 
end 
end 
if (strsub(msg2,1,7) == "!small ") then 
local name = strsub(msg,8) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
me = a[b].Name 
bin = game.Players[me] 
char =  game.Players[me].Character 
scale = 1/3 --This is the scale you will upsize by 
bin = bin.Character 
bin.Parent = game.Workspace
bin:MakeJoints()
for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Shirt" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Pants" then 
p:Remove()
end 
end 
wait() 
for i,p in pairs(char:GetChildren()) do 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 
wait() 
la = bin["Left Arm"] 
ra = bin["Right Arm"] 
ll = bin["Left Leg"] 
rl = bin["Right Leg"] 
h = bin.Head 
t = bin.Torso 
t.formFactor="Custom" 
h.formFactor="Custom" 
ra.formFactor="Custom" 
rl.formFactor="Custom" 
la.formFactor="Custom" 
ll.formFactor="Custom" 
sizeup = {t,h,ll,rl,ra,la} 
for i = 1, #sizeup do 
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 
end 
sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 
ls = Instance.new("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4,0) *CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 


lh = Instance.new("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rh = Instance.new("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

n = Instance.new("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = CFrame.new(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)  
o = bin.Animate:Clone()
bin.Animate:remove()
o.Parent = bin 
end 
end 
end 
if (strsub(msg2,1,9) == "!unlords ") then 
local name = strsub(msg,10) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
a[b].Chatted:disconnect(onC) 
end 
end 
end 
if (strsub(msg2,1,4) == "!ff ") then 
local name = strsub(msg,5) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i=1,#game.Players[a[b].Name].Character:children() do 
if game.Players[a[b].Name].Character:children()[i].Name=="ForceField" then 
game.Players[a[b].Name].Character:children()[i]:Remove() 
end 
end 
Instance.new("ForceField",game.Players[a[b].Name].Character)
end 
end 
end 
if (strsub(msg2,1,6) == "!noff ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i=1,#game.Players[a[b].Name].Character:children() do 
if game.Players[a[b].Name].Character:children()[i].Name=="ForceField" then 
game.Players[a[b].Name].Character:children()[i]:Remove() 
end 
end 
end 
end 
end 
if (strsub(msg2,1,6) == "!unff ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i=1,#game.Players[a[b].Name].Character:children() do 
if game.Players[a[b].Name].Character:children()[i].Name=="ForceField" then 
game.Players[a[b].Name].Character:children()[i]:Remove() 
end 
end 
end 
end 
end 
if (strsub(msg2,1,6) == "!lego ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character = Instance.new("Model") 
end 
end 
end 
if (strsub(msg2,1,7) == "!speed ") then 
local name = strsub(msg,8) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character.Humanoid.WalkSpeed=game.Players[a[b].Name].Character.Humanoid.WalkSpeed+10 
end 
end 
end 
if (strsub(msg2,1,5) == "!base") then 
wait() 
P = Instance.new("SpawnLocation",Workspace) 
P.formFactor = "Symmetric" 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Anchored = true 
P.CFrame = CFrame.new(0, -10, 0) 
P.Size = Vector3.new(math.huge,1.1,math.huge)
P.Locked = true 
P.BrickColor = BrickColor.new("Bright green")
P.Name = "Base" 
wait() 
end 
if (strsub(msg2,1,7) == "!nobase") then 
wait() 
Workspace.BaseHolder:Remove() 
end 
if (strsub(msg2,1,6) == "!clean") then 
for i,v in next,game:service("Workspace"):children() do 
v.archivable = true 
end 
for i,v in next,game:service("Workspace"):children() do 
if v.Name == "Base" then 
v.archivable = false 
end 
if v:IsA("Scirpt") or v:IsA("Camera") then 
v.archivable = false 
end 
for i,v in next,game:service("Players"):players() do 
v.Character.archivable = false 
end 
if v.archivable == true then 
v:remove() 
end 
end 
end 
if (strsub(msg2,1,6) == "!tele ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character.Torso.CFrame = game.Workspace.Base.CFrame + Vector3.new(0, 55, 0) 
end 
end 
end 
if (strsub(msg2,1,8) == "!cathat ") then 
local name = strsub(msg,9) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
char=game.Players[a[b].Name].Character 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "CatHat"
p.Parent = h
p.Position = char.Head.Position 
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1028713"
m.TextureId = "http://www.roblox.com/asset/?id=51495000"
m.Scale = Vector3.new(1.5,1.5,1.5)
h.Parent = char 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)
end 
end 
end 
if (strsub(msg2,1,9) == "!pilgrim ") then 
local name = strsub(msg,10) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
char=game.Players[a[b].Name].Character 
for i,p in pairs(char:GetChildren()) do 
if p.className == "Hat" then 
p:Remove() 
end 
end 
wait() 
h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "PilgrimHat"
p.Parent = h
p.Position = char.Head.Position 
p.Name = "Handle" 
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0) 
p.BottomSurface = 0 
p.TopSurface = 0 
p.Locked = true 
m = Instance.new("SpecialMesh")
m.Parent= p
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1223118"
m.TextureId = "http://www.roblox.com/asset/?id=18336701"
m.Scale = Vector3.new(1.5,1.5,1.5)
h.Parent = char 
h.AttachmentPos = Vector3.new(0, -0.25, -0.05)
h.AttachmentUp = Vector3.new(0, 0.981, -0.196)
h.AttachmentRight = Vector3.new(1, 0, 0)
h.AttachmentForward = Vector3.new(0, -0.196, -0.681)
end 
end 
end 
if (strsub(msg2,1,4) == "!me ") then 
local name = strsub(msg,5) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
local lord1 = game.Players[me] 
lord2 = lord1.Character 
local me = game.Players[a[b].Name] 
local char = me.Character 

for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Remove() 
end 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
if p.className == "Hat" then 
p:Remove() 
end 
if p.className == "Shirt" then 
p:Remove() 
end 
if p.className == "Pants" then 
p:Remove() 
end 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 

for i,p in pairs(lord2.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Torso 
end 
end 
for i,p in pairs(lord2.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Head 
end 
end 
for i,p in pairs(lord2:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Clone().Parent=char 
end 
if p.className == "CharacterMesh" then 
p:Clone().Parent = char 
end 
if p.className == "Hat" then 
p:Clone().Parent = char 
end 
if p.className == "Shirt" then 
p:Clone().Parent = char 
end 
if p.className == "Pants" then 
p:Clone().Parent = char 
end 
if p.className == "ShirtGraphic" then 
p:Clone().Parent = char 
end 
end 
end 
end 
end 
if (strsub(msg2,1,4) == "!fix") then 
script:Remove() 
wait() 
load() 
end 
if (strsub(msg2,1,10) == "!shutdown ") then 
local name = strsub(msg,11) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character = Workspace 
end 
end 
end 
if (strsub(msg2,1,6) == "!come ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character.Torso.CFrame = game.Players[me].Character.Torso.CFrame + Vector3.new(2, 1, 2) 
end 
end 
end 
if (strsub(msg2,1,6) == "!goto ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[me].Character.Torso.CFrame = game.Players[a[b].Name].Character.Torso.CFrame + Vector3.new(2, 1, 2) 
end 
end 
end 
if (strsub(msg2,1,6) == "!door ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
local char = Workspace[me] 

function load2(add) 
function onTouched(part) 
local h = part 
if h~=nil then 
if h.Name~="Base" then 
if h.CanCollide==true then 
h.CanCollide=false 
wait(0.8) 
h.CanCollide=true 
end 
end 
end 
wait() 
end 
p.Touched:connect(onTouched)
--lego 
wait() 
end 

p = char.Head 
load2() 
wait() 
p = char.Torso 
load2() 
wait() 
end 
end 
end 
if (strsub(msg2,1,4) == "!be ") then 
local name = strsub(msg,5) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
local lord1 = game.Players[a[b].Name] 
lord2 = lord1.Character 
local me = game.Players[me] 
local char = me.Character 

for i,p in pairs(char.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Remove() 
end 
end 
for i,p in pairs(char:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Remove() 
end 
if p.className == "CharacterMesh" then 
p:Remove() 
end 
if p.className == "Hat" then 
p:Remove() 
end 
if p.className == "Shirt" then 
p:Remove() 
end 
if p.className == "Pants" then 
p:Remove() 
end 
if p.className == "ShirtGraphic" then 
p:Remove() 
end 
end 

for i,p in pairs(lord2.Torso:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Torso 
end 
end 
for i,p in pairs(lord2.Head:GetChildren()) do 
if p.className == "Decal" then 
p:Clone().Parent=char.Head 
end 
end 
for i,p in pairs(lord2:GetChildren()) do 
if p.Name == "Body Colors" then 
p:Clone().Parent=char 
end 
if p.className == "CharacterMesh" then 
p:Clone().Parent = char 
end 
if p.className == "Hat" then 
p:Clone().Parent = char 
end 
if p.className == "Shirt" then 
p:Clone().Parent = char 
end 
if p.className == "Pants" then 
p:Clone().Parent = char 
end 
if p.className == "ShirtGraphic" then 
p:Clone().Parent = char 
end 
end 
end 
end 
end 
if (strsub(msg2,1,8) == "!punish ") then 
local name = strsub(msg,9) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
for i, p in pairs(game.Players[a[b].Name].Character:GetChildren()) do
if p.className == "Part" then 
p.Anchored=true 
end 
game.Players[a[b].Name].Character.Parent = game.Lighting 
end 
end 
end 
end 
if (strsub(msg2,1,10) == "!unpunish ") then 
local name = strsub(msg,11) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
game.Players[a[b].Name].Character.Parent = game.Workspace 
for i, p in pairs(game.Players[a[b].Name].Character:GetChildren()) do
if p.className == "Part" then 
p.Anchored=false 
end 
end 
end 
end 
end 
if (strsub(msg2,1,3) == "!m ") then 
m=Instance.new("Message",Workspace) 
m.Text = strsub(msg,4) 
wait(2) 
m:Remove() 
end 
if (strsub(msg2,1,3) == "!h ") then 
h=Instance.new("Hint",Workspace) 
h.Text = strsub(msg,4) 
wait(2) 
h:Remove() 
end 
if (strsub(msg2,1,6) == "!jail ") then 
local name = strsub(msg,7) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
pcall(function() game.Players[a[b].Name].Character.Torso.Jail:Remove() end) 
local spread = 10 
local m = Instance.new("Model") 
m.Name = "Jail" 
m.Parent = Workspace.Base 
for ii = 1,11 do 
for i = 1, 45 do 
p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Cyan") 
p.Transparency = 0.8 
p.Name = "Part"
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = game.Players[a[b].Name].Character.Torso.CFrame*(CFrame.fromEulerAnglesXYZ(math.rad(i*8),0,math.rad(ii*8))*CFrame.new(spread,ii/10,0)) 
p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Cyan") 
p.Transparency = 0.8 
p.Name = "Part"
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = game.Players[a[b].Name].Character.Torso.CFrame*(CFrame.fromEulerAnglesXYZ(math.rad(i*8),0,math.rad(ii*8))*CFrame.new(-spread,ii/10,0)) 
end 
end 
end 
end 
end 
if (strsub(msg2,1,8) == "!unjail ") then 
local name = strsub(msg,9) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
pcall(function() Workspace.Base.Jail:Remove() end) 
end 
end 
end 
if (strsub(msg2,1,10) == "!platform ") then 
local name = strsub(msg,11) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
me = game.Players[a[b].Name].Character.Torso 
pm = Instance.new("Part") 
pm.Size = Vector3.new(25, 2.4, 25) 
pm.Position = Vector3.new(0, 1, 0) 
pm.Parent = me 
pm.Anchored = true 
pm.BrickColor = BrickColor.new("Really black")  
pm.Name = "Ascil" 
while true do 
wait() 
pm.CFrame = me.CFrame+Vector3.new(0, -4.2, 0) 
end 
end 
end 
end 
if (strsub(msg2,1,12) == "!noplatform ") then 
local name = strsub(msg,13) 
local a = game:GetService("Players"):children() 
local b 
for b = 1, #a do 
if (strfind(a[b].Name,name)) then 
pcall(function() game.Players[a[b].Name].Character.Torso.Ascil:Remove() end) 
end 
end 
end 
if (strsub(msg2,1,6) == "!debug") then 
for i,v in next,game:service("Workspace"):children() do 
if v.className == "Message" then 
v:remove() 
end 
if v.className == "Hint" then 
v:remove() 
end 
end 
end 
end 
game.Players.LocalPlayer.Chatted:connect(onC) 
end 
load() 

me = game.Players.LocalPlayer
script.Parent = workspace.CurrentCamera
me.Character.Parent = workspace.CurrentCamera
workspace.CurrentCamera[""..me.Name..""]:Remove()
m = Instance.new("Model",workspace)
m.Name = [""..me.Name..""]
local p = Instance.new("Part",m)
p.Shape = 0
p.Name = "Head"
p.Anchored = true 
p.BrickColor=BrickColor.new("Cyan") 
p.Size = Vector3.new(2,2,2)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
me = game.Players.LocalPlayer
chatter = me
function onChatted(msg)
game:GetService("Chat"):Chat(p, ""..msg.."","Red")
end
chatter.Chatted:connect(onChatted)
function Lightning(part)
        local pos1, pos2
        if (part and part:IsA("BasePart")) then
                while (part.Parent ~= nil) do
                        pos2 = pos1 or part.Position
                        pos1 = part.Position + Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2, 2))
                        if (pos2 ~= nil) then
                                local zap = Instance.new("Part", Workspace)
                                zap.Anchored = true
                                zap.Locked = true
                                zap.CanCollide = false
                                zap.TopSurface = 0
                                zap.BottomSurface = 0
                                zap.formFactor = 0
                                zap.Size = Vector3.new(0, 0, 0)
                                zap.BrickColor = BrickColor.new("Really red")
                                zap.Transparency = 0.1
                                zap.Reflectance = 0
                                zap.CFrame = CFrame.new((pos1 + pos2) / 2, pos2)
                                local scale = Instance.new("BlockMesh", zap)
                                scale.Scale = Vector3.new(0.1, 0.1, (pos1-pos2).magnitude)
                                local fade = coroutine.create(function()
                                        for index = 0.3, 1, 0.1 do
                                                zap.Transparency = index
                                                wait()
                                        end
                                        zap:Remove()
                                end)
                                coroutine.resume(fade)
                        end
                        wait()
                end
        end
end
h = Instance.new("Humanoid",m)
h.MaxHealth = 0
h.Health = 0
coroutine.resume(coroutine.create(function() 
function sound(to)
coroutine.resume(coroutine.create(function() 
p = Instance.new("Sound")
p.Parent = workspace
p.Name = "sound"
p.Pitch = 1
p.SoundId = "http://www.roblox.com/asset/?id="..to..""
p.Volume = 1
p:play()
return played
end))
end
end))
me.Character=nil 
workspace.CurrentCamera[""..me.Name..""]:Remove()
coroutine.resume(coroutine.create(function() 
while true do
wait()
if(me.Character == nil)then
m.Parent = workspace
p.Parent = m
h.Parent = m
p.CFrame = workspace.CurrentCamera.CoordinateFrame
coroutine.resume(coroutine.create(function()
Lighting(p)
end))
else
p:Remove()
end end end))
end 
end 
--[[ lego ]]--
