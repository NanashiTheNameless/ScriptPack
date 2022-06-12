local game=game
local workspace=workspace
local Com={}
local Name="yfc"

function getPly(p)
local p=p or Name
for _,v in next,game.Players:getPlayers() do
if v.Name:lower():sub(1,#p)==p:lower() then
return v
end
end
end

function Msg(txt,pare,time)
local p=Instance.new("Hint")
p.Name="Msg"
p.Parent=pare or game.Players[Name].PlayerGui
p.Text=txt or ""
Delay(time or #txt/5,function()
p:remove() 
end)
end

Com.exitall=(function(q)
local p=Instance.new("Part",workspace)
p.CanCollide=false
p.Position=Vector3.new(80,3,0)
Msg("Goodbye.",p)
error("Pie")
end)

Com.shutdown=(function(q)
game.Players[Name].Character=workspace
game.Players[Name]:remove()
end)

Com.kill=(function(q)
local p=getPly(q)
if p and p.Character then
p.Character:BreakJoints()
Msg("Killed "..p.Name)
else
Msg("Couldn't kill "..q)
end
end)

Com.mute=(function(q)
local p=getPly(q)
if p then
p:SetSuperSafeChat(true)
Msg("Muted "..p.Name)
else
Msg("Couldn't mute "..q)
end
end)

Com.unmute=(function(q)
local p=getPly(q)
if p then
p:SetSuperSafeChat(false)
Msg("Unmuted "..p.Name)
else
Msg("Couldn't unmute "..q)
end
end)

Com.shout=(function(q)
Msg(q,workspace)
end)

Com.kick=(function(q)
local p=getPly(q)
if p and p.Name~=Name then
p:remove()
Msg("Kicked "..p.Name)
else
Msg("Couldn't kick "..q)
end
end)

Com.clearscr=(function()
for _,v in pairs(workspace:children()) do
if v:IsA("Script") then
v:remove()
end
end
end)

function GiveGui(p)
if not p.PlayerGui:findFirstChild("Cmd.v.1") then
local Gui=Instance.new("GuiMain")
Gui.Name="Cmd.v.1"
Gui.Parent=p.PlayerGui
local Bar=Instance.new("TextBox",Gui)
Bar.Text="Cmd.v.1"
Bar.Size=UDim2.new(4/5, 0, 1/20, 0)
Bar.Position=UDim2.new(1/10, 0, .8, 0)
Bar.BackgroundColor=BrickColor:Black()
Bar.BorderColor3=BrickColor.new("Lime green").Color
Bar.TextColor=BrickColor.new("Lime green")
local De=0
Bar.Changed:connect(function(pq)
if Bar.Text~="Cmd.v.1" and De==0 then
De=1
for _,v in pairs(Com) do
if Bar.Text:lower():sub(1,#_)==_ then
v(Bar.Text:sub(#_+2),p)
wait()
Gui:remove()
return GiveGui(p)
end
end
local h=Bar.Text
Gui:remove()
GiveGui(p)
local l=loadstring(h)
setfenv(l,getfenv(GiveGui))
l()
wait()
end
end)
end
end  
GiveGui(game.Players[Name])
game.Players[Name].CharacterAdded:connect(function() GiveGui(game.Players[Name]) end)