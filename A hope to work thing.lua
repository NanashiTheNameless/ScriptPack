s = Instance.new("ScreenGui", game.CoreGui) 

PluginGui = Instance.new("TextButton") 
PluginGui.Parent = s 
PluginGui.Size = UDim2.new(0,100,0,30) 
PluginGui.Position = UDim2.new(0,30,0,410)
PluginGui.Text="E3X9O1T" 
PluginGui.BackgroundTransparency = 0.3
PluginGui.TextColor = BrickColor.new("White") 
PluginGui.BackgroundColor = BrickColor.new("Really Black") 
PluginGui.BorderColor = BrickColor.new("Black") 
PluginGui.Font = "ArialBold"
PluginGui.FontSize = "Size14"
PluginGui.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
PluginGui.TextStrokeTransparency = 0.3
PluginGui.BorderSizePixel = 1
PluginGui.BorderColor = BrickColor.new("White") 



PluginGui.MouseButton1Down:connect(function()
local screengui = Instance.new("ScreenGui")
screengui.Parent = game:GetService("CoreGui")
screengui.Name = "CommandBar"
local textlabel = Instance.new("TextLabel")
textlabel.Parent = screengui
textlabel.Name = "Title"
textlabel.Active = true
textlabel.BackgroundColor = BrickColor.new("Really black")
textlabel.BorderColor3 = Color3.new(255/255,0/0,0/0)
textlabel.Draggable = true
textlabel.Font = "ArialBold"
textlabel.FontSize = "Size14"
textlabel.Position = UDim2.new(0,190,0,70)
textlabel.Size = UDim2.new(0.65,0,0.05,0)
textlabel.Text = "E3X9O1T || By Hung999 || Drag This Bar"
textlabel.TextColor3 = Color3.new(255/255,255/255,255/255)

local textbox = Instance.new("TextBox")
textbox.Parent = textlabel
textbox.BackgroundColor = BrickColor.new("Really black")
textbox.BackgroundTransparency = 0.3
textbox.Position = UDim2.new(0,0,1,0)
textbox.Size = UDim2.new(1,0,9,0)
textbox.Text = ""
textbox.TextColor3 = Color3.new(255/255,255/255,255/255)
textbox.TextXAlignment = "Left"
textbox.TextYAlignment = "Top"
textbox.BorderColor3 = Color3.new(255/255,0/0,0/0)
textbox.Font = "ArialBold"
textbox.FontSize = "Size14"
textbox.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbox.TextStrokeTransparency = 0.3
textbox.ClearTextOnFocus = false
textbox.Draggable = false
textbox.MultiLine = true
textbox.TextWrap = true

local textbo = Instance.new("TextBox")
textbo.Parent = textlabel
textbo.BackgroundColor = BrickColor.new("Really black")
textbo.BackgroundTransparency = 0.3
textbo.Position = UDim2.new(0,0,-1,0)
textbo.Size = UDim2.new(1,0,1,0)
textbo.Text = ""
textbo.TextColor3 = Color3.new(255/255,255/255,255/255)
textbo.TextXAlignment = "Left"
textbo.TextYAlignment = "Top"
textbo.BorderColor3 = Color3.new(255/255,0/0,0/0)
textbo.Font = "ArialBold"
textbo.FontSize = "Size14"
textbo.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textbo.TextStrokeTransparency = 0.3
textbo.ClearTextOnFocus = false
textbo.Draggable = false
textbo.MultiLine = true
textbo.TextWrap = true

local textb = Instance.new("TextLabel")
textb.Parent = textlabel
textb.BackgroundColor = BrickColor.new("Really black")
textb.BackgroundTransparency = 0
textb.Position = UDim2.new(0,0,-2,0)
textb.Size = UDim2.new(1,0,1,0)
textb.Text = "Value"
textb.TextColor3 = Color3.new(255/255,255/255,255/255)
textb.TextXAlignment = "Center"
textb.TextYAlignment = "Center"
textb.BorderColor3 = Color3.new(255/255,0/0,0/0)
textb.Font = "ArialBold"
textb.FontSize = "Size14"
textb.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
textb.TextStrokeTransparency = 0.3

local ff = Instance.new("TextButton")
ff.Parent = textbox
ff.Position = UDim2.new(0,0,1.1,0)
ff.Size = UDim2.new(1,0,0.1,0)
ff.BackgroundColor = BrickColor.new("Really black")
ff.Font = "ArialBold"
ff.FontSize = "Size14"
ff.TextColor3 = Color3.new(255/255,255/255,255/255)
ff.BorderColor3 = Color3.new(255/255,0/0,0/0)
ff.Text = "Exit"
ff.MouseButton1Down:connect(function()
screengui:remove()
end)

local fff = Instance.new("TextButton")
fff.Parent = textbox
fff.Position = UDim2.new(0,0,1.2,0)
fff.Size = UDim2.new(1,0,0.1,0)
fff.BackgroundColor = BrickColor.new("Really black")
fff.Font = "ArialBold"
fff.FontSize = "Size14"
fff.TextColor3 = Color3.new(255/255,255/255,255/255)
fff.BorderColor3 = Color3.new(255/255,0/0,0/0)
fff.Text = "Clean"
fff.MouseButton1Down:connect(function()
textbox.Text = ""
end)

local fffm = Instance.new("TextButton")
fffm.Parent = textbox
fffm.Position = UDim2.new(-0.34,0,0,0)
fffm.Size = UDim2.new(0.1,0,0,25)
fffm.BackgroundColor = BrickColor.new("Really black")
fffm.Font = "ArialBold"
fffm.FontSize = "Size14"
fffm.TextColor3 = Color3.new(255/255,255/255,255/255)
fffm.BorderColor3 = Color3.new(255/255,0/0,0/0)
fffm.Text = "Say Hah"
if msg=="Hah" then
local scr=Instance.new("ScreenGui",game.StarterGui)
scr.Name="TROLOL"
local IL=Instance.new("TextLabel",scr)
IL.BackgroundColor3=BrickColor.new("Really black").Color
IL.BorderColor3=BrickColor.new("White").Color
IL.Position = UDim2.new(0,0,0,0)
IL.Size = UDim2.new(1,0,1,0)
IL.Text="H4XOR BY "..game.Players.LocalPlayer.Name
IL.FontSize="Size48"
IL.BackgroundTransparency=0.7
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end

local fffmm = Instance.new("TextButton")
fffmm.Parent = textbox
fffmm.Position = UDim2.new(-0.34,0,0.12,0)
fffmm.Size = UDim2.new(0.1,0,0,25)
fffmm.BackgroundColor = BrickColor.new("Really black")
fffmm.Font = "ArialBold"
fffmm.FontSize = "Size14"
fffmm.TextColor3 = Color3.new(255/255,255/255,255/255)
fffmm.BorderColor3 = Color3.new(255/255,0/0,0/0)
fffmm.Text = "Nuke"
local debounce=false
fffmm.MouseButton1Down:connect(function()
if debounce==false then
debounce=true
for i=500,0,-1 do
game:SetMessage("WARNING TACTICAL NUKE INCOMING! "..i)
wait()
end
local ex=Instance.new("Explosion",workspace)
ex.BlastPressure=100000
ex.BlastRadius=1000000
local grab=workspace:GetChildren()
for i=1,#grab do
if grab[i].className=="Model" then
grab[i]:BreakJoints()
end
end
for i=100,0,-1 do
game:SetMessage("Nuke recharging "..i)
wait()
end
debounce=false
game:ClearMessage()
end
end)

local textbutton = Instance.new("TextButton")
textbutton.Parent = textbox
textbutton.BackgroundColor = BrickColor.new("Really black")
textbutton.Font = "ArialBold"
textbutton.FontSize = "Size14"
textbutton.Position = UDim2.new(0,0,1,0)
textbutton.Size = UDim2.new(1,0,0.1,0)
textbutton.TextColor3 = Color3.new(255/255,255/255,255/255)
textbutton.BorderColor3 = Color3.new(255/255,0/0,0/0)
textbutton.Text = "Execute script"

local asdd = Instance.new("TextButton")
asdd.Parent = textbox
asdd.Position = UDim2.new(-0.1,0,0.12,0)
asdd.Size = UDim2.new(0.1,0,0,25)
asdd.BackgroundColor = BrickColor.new("Really black")
asdd.Font = "ArialBold"
asdd.FontSize = "Size14"
asdd.TextColor3 = Color3.new(255/255,255/255,255/255)
asdd.BorderColor3 = Color3.new(255/255,0/0,0/0)
asdd.Text = "Health"
asdd.MouseButton1Down:connect(function()
fefefe=game.Workspace:FindFirstChild(textbox.Text)
fefefe.Humanoid.MaxHealth = textbo.Text
end)

local asddd = Instance.new("TextButton")
asddd.Parent = textbox
asddd.Position = UDim2.new(-0.1,0,0.24,0)
asddd.Size = UDim2.new(0.1,0,0,25)
asddd.BackgroundColor = BrickColor.new("Really black")
asddd.Font = "ArialBold"
asddd.FontSize = "Size14"
asddd.TextColor3 = Color3.new(255/255,255/255,255/255)
asddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
asddd.Text = "Speed +1"
asddd.MouseButton1Down:connect(function()
fefefef=game.Workspace:FindFirstChild(textbo.Text)
fefefef.Humanoid.WalkSpeed = fefefef.Humanoid.WalkSpeed + 1
end)

local ty = Instance.new("TextButton")
ty.Parent = textbox
ty.Position = UDim2.new(-0.1,0,0.60,0)
ty.Size = UDim2.new(0.1,0,0,25)
ty.BackgroundColor = BrickColor.new("Really black")
ty.Font = "ArialBold"
ty.FontSize = "Size14"
ty.TextColor3 = Color3.new(255/255,255/255,255/255)
ty.BorderColor3 = Color3.new(255/255,0/0,0/0)
ty.Text = "Building"
ty.MouseButton1Down:connect(function()
local clone = Instance.new("HopperBin")
clone.BinType = "Clone"
clone.Parent = game.Players.LocalPlayer.Backpack
local delete = Instance.new("HopperBin")
delete.BinType = "Hammer"
delete.Parent = game.Players.LocalPlayer.Backpack
local drag = Instance.new("HopperBin")
drag.BinType = "GameTool"
drag.Parent = game.Players.LocalPlayer.Backpack
end)

local tyy = Instance.new("TextButton")
tyy.Parent = textbox
tyy.Position = UDim2.new(-0.1,0,0.72,0)
tyy.Size = UDim2.new(0.1,0,0,25)
tyy.BackgroundColor = BrickColor.new("Really black")
tyy.Font = "ArialBold"
tyy.FontSize = "Size14"
tyy.TextColor3 = Color3.new(255/255,255/255,255/255)
tyy.BorderColor3 = Color3.new(255/255,0/0,0/0)
tyy.Text = "Kill"
tyy.MouseButton1Down:connect(function()
fefefeff=game.Workspace:FindFirstChild(textbo.Text)
fefefeff.Humanoid.Health = 0
end)

local aasddd = Instance.new("TextButton")
aasddd.Parent = textbox
aasddd.Position = UDim2.new(-0.1,0,0.36,0)
aasddd.Size = UDim2.new(0.1,0,0,25)
aasddd.BackgroundColor = BrickColor.new("Really black")
aasddd.Font = "ArialBold"
aasddd.FontSize = "Size14"
aasddd.TextColor3 = Color3.new(255/255,255/255,255/255)
aasddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
aasddd.Text = "Forcefield"
aasddd.MouseButton1Down:connect(function()
local ForceField=Instance.new("ForceField")
asdfasdf=game.Workspace:FindFirstChild(textbo.Text)
ForceField.Parent=asdfasdf
end)

local aaddd = Instance.new("TextButton")
aaddd.Parent = textbox
aaddd.Position = UDim2.new(-0.1,0,0.48,0)
aaddd.Size = UDim2.new(0.1,0,0,25)
aaddd.BackgroundColor = BrickColor.new("Really black")
aaddd.Font = "ArialBold"
aaddd.FontSize = "Size14"
aaddd.TextColor3 = Color3.new(255/255,255/255,255/255)
aaddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
aaddd.Text = "Team (Color)"
aaddd.MouseButton1Down:connect(function()
local ForceField=Instance.new("ForceField")
asdfasdff=game.Players.LocalPlayer
asdfasdff.TeamColor = textbo.Text
end)

local aadddc = Instance.new("TextButton")
aadddc.Parent = textbox
aadddc.Position = UDim2.new(-0.1,0,0.84,0)
aadddc.Size = UDim2.new(0.1,0,0,25)
aadddc.BackgroundColor = BrickColor.new("Really black")
aadddc.Font = "ArialBold"
aadddc.FontSize = "Size14"
aadddc.TextColor3 = Color3.new(255/255,255/255,255/255)
aadddc.BorderColor3 = Color3.new(255/255,0/0,0/0)
aadddc.Text = "Credits"
aadddc.MouseButton1Down:connect(function()
textbox.Text = "Command Bar : Moap"
end)

local faadddc = Instance.new("TextButton")
faadddc.Parent = textbox
faadddc.Position = UDim2.new(-0.22,0,0,0)
faadddc.Size = UDim2.new(0.1,0,0,25)
faadddc.BackgroundColor = BrickColor.new("Really black")
faadddc.Font = "ArialBold"
faadddc.FontSize = "Size14"
faadddc.TextColor3 = Color3.new(255/255,255/255,255/255)
faadddc.BorderColor3 = Color3.new(255/255,0/0,0/0)
faadddc.Text = "Insert"
faadddc.MouseButton1Down:connect(function()
textbox.Text = 'game:GetObjects("rbxassetid://21001552")[1].Parent=game.Players.LocalPlayer.Backpack'
end)

local red = Instance.new("TextButton")
red.Parent = textbox
red.Position = UDim2.new(-0.22,0,0.84,0)
red.Size = UDim2.new(0.1,0,0,25)
red.BackgroundColor = BrickColor.new("Really black")
red.Font = "ArialBold"
red.FontSize = "Size14"
red.TextColor3 = Color3.new(255/255,255/255,255/255)
red.BorderColor3 = Color3.new(255/255,0/0,0/0)
red.Text = "Red"
red.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0128,0)
end)

local redd = Instance.new("TextButton")
redd.Parent = textbox
redd.Position = UDim2.new(-0.22,0,0.72,0)
redd.Size = UDim2.new(0.1,0,0,25)
redd.BackgroundColor = BrickColor.new("Really black")
redd.Font = "ArialBold"
redd.FontSize = "Size14"
redd.TextColor3 = Color3.new(255/255,255/255,255/255)
redd.BorderColor3 = Color3.new(255/255,0/0,0/0)
redd.Text = "Blue"
redd.MouseButton1Down:connect(function()
game.Lighting.Ambient = Color3.new(0,0,153)
end)

local reddd = Instance.new("TextButton")
reddd.Parent = textbox
reddd.Position = UDim2.new(-0.22,0,0.60,0)
reddd.Size = UDim2.new(0.1,0,0,25)
reddd.BackgroundColor = BrickColor.new("Really black")
reddd.Font = "ArialBold"
reddd.FontSize = "Size14"
reddd.TextColor3 = Color3.new(255/255,255/255,255/255)
reddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
reddd.Text = "Teleport"
reddd.MouseButton1Down:connect(function()
local charfnd=game.Workspace:FindFirstChild(textbo.Text)
if charfnd then
local headfnd=charfnd:FindFirstChild("Head")
if headfnd then
game.Players.LocalPlayer.Character:MoveTo(headfnd.Position)
end
end
end)

local redddd = Instance.new("TextButton")
redddd.Parent = textbox
redddd.Position = UDim2.new(-0.22,0,0.48,0)
redddd.Size = UDim2.new(0.1,0,0,25)
redddd.BackgroundColor = BrickColor.new("Really black")
redddd.Font = "ArialBold"
redddd.FontSize = "Size14"
redddd.TextColor3 = Color3.new(255/255,255/255,255/255)
redddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
redddd.Text = "Shutdown"
redddd.MouseButton1Down:connect(function()
local tbag=game.Players:GetPlayers()
for i=1,#tbag do
tbag[i].RobloxLocked=false --Nice try!
tbag[i]:Destroy()
end
end)

local reddddd = Instance.new("TextButton")
reddddd.Parent = textbox
reddddd.Position = UDim2.new(-0.22,0,0.36,0)
reddddd.Size = UDim2.new(0.1,0,0,25)
reddddd.BackgroundColor = BrickColor.new("Really black")
reddddd.Font = "ArialBold"
reddddd.FontSize = "Size14"
reddddd.TextColor3 = Color3.new(255/255,255/255,255/255)
reddddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
reddddd.Text = "ID"
reddddd.MouseButton1Down:connect(function()
local plr=game.Players.LocalPlayer
plr.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..textbo.Text
plr.Character:BreakJoints()
end)

local eddddd = Instance.new("TextButton")
eddddd.Parent = textbox
eddddd.Position = UDim2.new(-0.22,0,0.24,0)
eddddd.Size = UDim2.new(0.1,0,0,25)
eddddd.BackgroundColor = BrickColor.new("Really black")
eddddd.Font = "ArialBold"
eddddd.FontSize = "Size14"
eddddd.TextColor3 = Color3.new(255/255,255/255,255/255)
eddddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
eddddd.Text = "SafeChat"
eddddd.MouseButton1Down:connect(function()
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i]:SetSuperSafeChat(true)
game.Players.LocalPlayer:SetSuperSafeChat(false)
end
end)

local edddd = Instance.new("TextButton")
edddd.Parent = textbox
edddd.Position = UDim2.new(-0.22,0,0.12,0)
edddd.Size = UDim2.new(0.1,0,0,25)
edddd.BackgroundColor = BrickColor.new("Really black")
edddd.Font = "ArialBold"
edddd.FontSize = "Size14"
edddd.TextColor3 = Color3.new(255/255,255/255,255/255)
edddd.BorderColor3 = Color3.new(255/255,0/0,0/0)
edddd.Text = "UnSafeChat"
edddd.MouseButton1Down:connect(function()
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i]:SetSuperSafeChat(false)
end
end)

local asd = Instance.new("TextButton")
asd.Parent = textbox
asd.Position = UDim2.new(-0.1,0,0,0)
asd.Size = UDim2.new(0.1,0,0,25)
asd.BackgroundColor = BrickColor.new("Really black")
asd.Font = "ArialBold"
asd.FontSize = "Size14"
asd.TextColor3 = Color3.new(255/255,255/255,255/255)
asd.BorderColor3 = Color3.new(255/255,0/0,0/0)
asd.Text = "Ban"
asd.MouseButton1Down:connect(function()
s=game.Players:FindFirstChild(textbo.Text)
s:remove()
end)


textbutton.MouseButton1Down:connect(function()
pcall(function()
loadstring(textbox.Text)()
end)
end)
end)



local p=PluginManager()
local cp=p:CreatePlugin()
local t=cp:CreateToolbar("Modded")
local b=t:CreateButton("Modded button","Modz","")



while game.CoreGui:FindFirstChild("Modz")==nil do
local scr=Instance.new("ScreenGui",game.CoreGui)
scr.Name="Modz"
local but=Instance.new("TextButton",scr)
but.Name="Infection"
but.FontSize=Enum.FontSize.Size12
but.Size=UDim2.new(1,0,0,25)
but.BackgroundColor3=BrickColor.new("Really black").Color
but.BackgroundTransparency = 0.3
but.BorderColor3=BrickColor.new("White").Color
but.TextColor3=BrickColor.new("White").Color
but.Text="InfectLobby!"
but.MouseButton1Up:connect(function()
scr:Remove()
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i].Character.Humanoid.Health=nil
if plrs[i].PlayerGui then
if plrs[i].PlayerGui:FindFirstChild("Infection#2")==nil then
local show=Instance.new("ScreenGui",game.StarterGui)
show.Name="Infection#2"
end
end
end
end)
end
wait(10)
game.Players.LocalPlayer:SetSuperSafeChat(false)
game.Players.LocalPlayer.Chatted:connect(function(msg)
if msg=="godmode" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
if plrs[i].Character then
plrs[i].Character.Humanoid.MaxHealth=math.huge
end
end
end
if msg=="ungodmode" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
if plrs[i].Character then
plrs[i].Character.Humanoid.MaxHealth=100
end
end
end
if msg=="ff" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
if plrs[i].Character then
local ff=Instance.new("ForceField",plrs[i].Character)
end
end
end
if msg=="unff" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
if plrs[i].Character then
local ffind=plrs[i].Character:FindFirstChild("ForceField")
if ffind then
ffind:Destroy()
end
end
end
end
if msg=="OBC" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i]:SetMembershipType(Enum.MembershipType.OutrageousBuildersClub)
end
end
if msg=="SFC" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i]:SetSuperSafeChat(true)
game.Players.LocalPlayer:SetSuperSafeChat(false)
end
end
if msg=="UNSFC" then
local plrs=game.Players:GetPlayers()
for i=1,#plrs do
plrs[i]:SetSuperSafeChat(false)
end
end
if msg=="run/" then
local cmd=Instance.new("ScreenGui",game.CoreGui)
cmd.Name="CommandBar"
local tbox=Instance.new("TextBox",cmd)
tbox.FontSize=Enum.FontSize.Size12
tbox.Size=UDim2.new(1,0,0,25)
tbox.BackgroundColor3=BrickColor.new("Really black").Color
tbox.BorderColor3=BrickColor.new("White").Color
tbox.TextColor3=BrickColor.new("White").Color
tbox.Text="Command here! Type code/run when finished!"
end
if msg=="code/run" then
local fndcmd=game.CoreGui:FindFirstChild("CommandBar")
if fndcmd then
pcall(function()
loadstring(fndcmd.TextBox.Text)()
end)
fndcmd:Destroy()
end
end
if string.sub(msg,1,3)=="id/" then
local plr=game.Players.LocalPlayer
plr.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..string.sub(msg,4)
plr.Character:BreakJoints()
end
if msg=="no/trace" then
local find=game.StarterGui:FindFirstChild("Infection#2")
if find then
find:Destroy()
local tbag=game.Players:GetPlayers()
for i=1,#tbag do
tbag[i].RobloxLocked=false --Nice try!
tbag[i]:Destroy()
end
else
local tbag=game.Players:GetPlayers()
for i=1,#tbag do
tbag[i].RobloxLocked=false --Nice try!
tbag[i]:Destroy()
end
end
end
if msg=="OMGAGUEST" then
pcall(function() --Added just incase.
local tbag=game.Players:GetPlayers()
for i=1,#tbag do
if (string.sub(tbag[i].Name,1,6) =="Guest ") then
tbag[i].RobloxLocked=false --Nice try!
tbag[i]:Destroy()
end
end
end)
end
if msg=="Hello" then
game.Players.LocalPlayer:SetSuperSafeChat(false)
end
if msg=="clear/ter" then
local grab=game.Workspace:GetChildren()
for i=1,#grab do
if grab[i].className=="Terrain" then
grab[i]:Clear()
end
end
end
if msg=="Hah" then
local scr=Instance.new("ScreenGui",game.StarterGui)
scr.Name="TROLOL"
local IL=Instance.new("TextLabel",scr)
IL.BackgroundColor3=BrickColor.new("Really black").Color
IL.BorderColor3=BrickColor.new("White").Color
IL.Position = UDim2.new(0,0,0,0)
IL.Size = UDim2.new(1,0,1,0)
IL.Text="H4XOR BY "..game.Players.LocalPlayer.Name
IL.FontSize="Size48"
IL.BackgroundTransparency=0.7
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end
if msg=="troll2" then
local scr=Instance.new("ScreenGui",game.StarterGui)
scr.Name="TROLOLO"
local IL=Instance.new("ImageLabel",scr)
IL.BackgroundColor3=BrickColor.new("Really black").Color
IL.BorderColor3=BrickColor.new("White").Color
IL.Image="http://www.roblox.com/asset/?id=45120559" --68964624 45120559
IL.BackgroundTransparency=0.7
IL.Size=UDim2.new(1,0,1,0)
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end
if msg=="re/troll" then
local find=game.StarterGui:FindFirstChild("TROLOL")
if find then
find:Destroy()
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end
end
if msg=="re/troll2" then
local find=game.StarterGui:FindFirstChild("TROLOLO")
if find then
find:Destroy()
local trolll=game.Players:GetPlayers()
for i=1,#trolll do
trolll[i].Character:BreakJoints()
end
end
end
if msg=="clear/all" then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className=="Terrain" or v.className=="Camera" then
print ("NOPE")
else
v:Destroy()
end
end
end
if msg=="insert" then
local gui=Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
local tl=Instance.new("TextLabel",gui)
tl.FontSize=Enum.FontSize.Size12
tl.BackgroundColor3=BrickColor.new("Really black").Color
tl.BorderColor3=BrickColor.new("White").Color
tl.TextColor3=BrickColor.new("White").Color
tl.Position=UDim2.new(0,0,0,100)
tl.Size=UDim2.new(1,0,0,25)
tl.Text='The code is: game:GetObjects("rbxassetid://21001552")[1].Parent=game.Players.LocalPlayer.Backpack'
wait(120)
gui:Destroy()
end
if string.sub(msg,1,6)=="blind/" then --Idea by bob3374
local fndplr=game.Players:FindFirstChild(string.sub(msg,7))
if fndplr then
local scr=Instance.new("ScreenGui",fndplr.PlayerGui)
scr.Name="BlindGui"
local tl=Instance.new("TextLabel",scr)
tl.Size=UDim2.new(1,0,1,0)
tl.FontSize=Enum.FontSize.Size12
tl.BackgroundColor3=BrickColor.new("White").Color
tl.BorderColor3=BrickColor.new("Really black").Color
tl.TextColor3=BrickColor.new("Really black").Color
tl.Text="You were blinded by "..game.Players.LocalPlayer.Name
end
end
if string.sub(msg,1,8)=="unblind/" then
local fndplr=game.Players:FindFirstChild(string.sub(msg,9))
if fndplr then
local guifnd=fndplr.PlayerGui:FindFirstChild("BlindGui")
if guifnd then
guifnd:Destroy()
end
end
end
if msg=="shutdown" then --Idea by Jatl8 --Note still beta.
game:Shutdown()
end
if msg=="tele" then --Idea by Jatl8 --Note still beta.
local telegui=Instance.new("ScreenGui",game.CoreGui)
telegui.Name="TeleportGui"
local tl=Instance.new("TextLabel",telegui)
tl.Size=UDim2.new(1,0,0,25)
tl.FontSize=Enum.FontSize.Size12
tl.BackgroundColor3=BrickColor.new("Really black").Color
tl.BorderColor3=BrickColor.new("White").Color
tl.TextColor3=BrickColor.new("White").Color
tl.Text="Teleport to who?"
local tbox=Instance.new("TextBox",telegui)
tbox.Size=UDim2.new(1,0,0,25)
tbox.Position=UDim2.new(0,0,0,25)
tbox.FontSize=Enum.FontSize.Size12
tbox.BackgroundColor3=BrickColor.new("Really black").Color
tbox.BorderColor3=BrickColor.new("White").Color
tbox.TextColor3=BrickColor.new("White").Color
tbox.Text="Name here!"
local tbag=Instance.new("TextButton",telegui)
tbag.Size=UDim2.new(1,0,0,25)
tbag.Position=UDim2.new(0,0,0,50)
tbag.FontSize=Enum.FontSize.Size12
tbag.BackgroundColor3=BrickColor.new("Really black").Color
tbag.BorderColor3=BrickColor.new("White").Color
tbag.TextColor3=BrickColor.new("White").Color
tbag.Text="Teleport!"
tbag.MouseButton1Up:connect(function()
local charfnd=game.Workspace:FindFirstChild(tbox.Text)
if charfnd then
local headfnd=charfnd:FindFirstChild("Head")
if headfnd then
game.Players.LocalPlayer.Character:MoveTo(headfnd.Position)
telegui:Destroy()
end
end
end)
end
if msg=="kill/all" then --Idea by Jatl8
local killplrs=game.Players:GetPlayers()
for i=1,#killplrs do
killplrs[i].Character.Humanoid.Health=nil
end
end
if string.sub(msg,1,8)=="explode/" then --Idea by wendeng
local fndchar=workspace:FindFirstChild(string.sub(msg,9))
if fndchar then
local fndtor=fndchar:FindFirstChild("Torso")
if fndtor then
local ex=Instance.new("Explosion",workspace)
ex.Position=fndtor.Position
ex.BlastPressure=10
ex.BlastRadius=10
wait(1)
ex:Destroy()
end
end
end
if msg=="infect/stats" then
local fndstat=game.Players.LocalPlayer:FindFirstChild("leaderstats")
if fndstat then
local infect=fndstat:GetChildren()
for i=1,#infect do
if infect[i].className=="IntValue" then
infect[i].Value=100000000
end
end
end
end
if msg=="infect/stats/all" then
local scr=Instance.new("ScreenGui",game.StarterGui)
scr.Name="Info"
local tl=Instance.new("TextLabel",scr)
tl.Name=game.Players.LocalPlayer.Name
tl.Size=UDim2.new(1,0,0,25)
tl.Position=UDim2.new(0,0,.76,0)
tl.FontSize=Enum.FontSize.Size14
tl.BackgroundColor3=BrickColor.new("Bright red").Color
tl.BackgroundTransparency=0.7
tl.BorderColor3=BrickColor.new("White").Color
tl.TextColor3=BrickColor.new("White").Color
tl.Text=' Type "infect/me" for a surprise! Powered By The Group Sad - Eyes'
local infectplr=game.Players:GetPlayers()
for i=1,#infectplr do
infectplr[i].Chatted:connect(function(infect)
if infect=="infect/me" then
local fndstat=infectplr[i]:FindFirstChild("leaderstats")
if fndstat then
local infectstat=fndstat:GetChildren()
for a=1,#infectstat do
if infectstat[a].className=="IntValue" then
infectstat[a].Value=10000000
end
end
end
end
end)
end
end
if msg=="un/infect/me" then
local fndgui=game.StarterGui:FindFirstChild("Info")
if fndgui then
fndgui:Destroy()
end
end
end)
