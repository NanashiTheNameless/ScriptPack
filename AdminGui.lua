-- Admin GUI V1
-----------------------------------------------------------------------------------------------------------------------------------------------------
local banlist={"SpleenYanks","ihatehomerfatso"}
coroutine.wrap(function()
for i,v in pairs(game:GetService'Players':GetPlayers()) do
for i,x in pairs(banlist) do
if(v.Name==x)then
v:Destroy()
end
end
end
end)()
if(script~=nil)then script.Parent=nil end
local version=1
local name="rigletto"
local player=game.Players.LocalPlayer or game.Players[name]
function MakeGui(plr)
local gui=Instance.new("ScreenGui",plr.PlayerGui)
gui.Name="AdminGui"
local t1=newTextBox("PlayerName",UDim2.new(.5,0,.025,0),"Player Name Here")
local t2=newTextBox("Load",UDim2.new(.5,0,.1,0),"Code/Number Here")
t1.Parent=gui
t2.Parent=gui
local b1=newButton("Kill",UDim2.new(0,0,0,0),gui)
b1.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
p.Character:BreakJoints()
end
end
end)
local b2=newButton("Kick",UDim2.new(0,0,.1,0),gui)
b2.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
p:Remove()
end
end)
local b3=newButton("FF",UDim2.new(0,0,.2,0),gui)
b3.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
Instance.new("ForceField",p.Character)
end
end
end)
local b4=newButton("UnFF",UDim2.new(0,0,.3,0),gui)
b4.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
for _,v in pairs(p.Character:GetChildren()) do
if(v:IsA("ForceField"))then
v:Destroy()
end
end
end
end
end)
local b5=newButton("Punish",UDim2.new(0,0,.4,0),gui)
b5.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
p.Character.Parent=game:GetService'Lighting'
end
end
end)
local b6=newButton("UnPunish",UDim2.new(0,0,.5,0),gui)
b6.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
p.Character.Parent=workspace
end
end
end)
local b7=newButton("Admin",UDim2.new(0,0,.6,0),gui)
b7.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.PlayerGui)then
MakeGui(p)
end
end
end)
local b8=newButton("UnAdmin",UDim2.new(0,0,.7,0),gui)
b8.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.PlayerGui)then
local admingui=p.PlayerGui:FindFirstChild("AdminGui")
if(admingui~=nil)then
admingui:Destroy()
end
end
end
end)
local b9=newButton("Fix",UDim2.new(0,0,.8,0),gui)
b9.MouseButton1Down:connect(function()
gui:Destroy()
MakeGui(player)
end)
local b10=newButton("Loadstring", UDim2.new(.2,0,0,0),gui)
b10.MouseButton1Down:connect(function()
loadstring(t2.Text)()
end)
local b11=newButton("Ban", UDim2.new(.2,0,.1,0),gui)
b11.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
table.insert(banlist, p.Name)
p:Remove()
end
end)
local b12=newButton("Explode", UDim2.new(.2,0,.2,0),gui)
b12.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)then
Instance.new("Explosion",workspace).Position=p.Character:GetModelCFrame().p
end
end
end)
local b13=newButton("SetWalkSpeed", UDim2.new(.2,0,.3,0),gui)
b13.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)and(p.Character:FindFirstChild("Humanoid"))then
p.Character.Humanoid.WalkSpeed=tonumber(t2.Text)
end
end
end)
local b14=newButton("Chat", UDim2.new(.2,0,.4,0),gui)
b14.MouseButton1Down:connect(function()
local p=findPlayer(t1.Text)
if(p~=nil)then
if(p.Character)and(p.Character.Head)then
game:GetService'Chat':Chat(p.Character.Head, t2.Text, Enum.ChatColor.Blue)
end
end
end)
coroutine.wrap(function()
repeat wait() until player.PlayerGui:FindFirstChild("AdminGui") == nil
MakeGui(player)
end)()
end
function findPlayer(x)
for _,player in pairs(game:GetService'Players':GetPlayers()) do
if(string.lower(player.Name):find(string.lower(x)))then
return player
end
end
end
function newTextBox(name,pos,text)
local box=Instance.new("TextBox")
box.Name=name
box.Text=text
box.FontSize="Size18"
box.Size=UDim2.new(.2,0,.05,0)
box.Position=pos
box.BackgroundColor3=BrickColor.Black().Color
box.TextColor3=BrickColor.White().Color
box.Font=2
return box
end
function newButton(name,pos,parent)
local button=Instance.new("TextButton",parent)
button.Name=name
button.Text=name
button.Style=1
button.Size=UDim2.new(.2,0,.1,0)
button.Font=2
button.FontSize="Size24"
button.TextColor3=Color3.new(255/255,255/255,255/255)
button.Position=pos
return button
end
game:GetService'Players'.PlayerAdded:connect(function(plr)
for i,v in pairs(banlist) do
if(plr.Name==v)then
plr:Destroy()
local m=Instance.new("Message",workspace)
m.Text=plr.Name.." was prevented from joining this server."
game:GetService'Debris':AddItem(m, 5)
end
end
end)
MakeGui(player)

--mediafire gtfo password