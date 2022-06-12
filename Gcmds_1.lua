owners = {"yfc"}
 
use = {
["NewScript"] = function()  end
}
 
ud2n = UDim2.new
 
plys = function() return game.Players:GetPlayers() end
 
commands = {
    {"Kill",function(a) a.Character:BreakJoints() end},
    {"Kick",function(a) a:Remove() end},
    {"Remove",function(a) a.Character:Remove() end}
    }
 
 
oframe = nil
function options(ply)
 
oframe = Instance.new("Frame",mframe)
oframe.Size = UDim2.new(.5,0,.9,0)
oframe.Position = UDim2.new(.5,0,.1,0)
o = 1/#commands
 
for i,v in pairs(commands) do
but = Instance.new("TextButton",oframe)
but.Size = UDim2.new(1,0,o,0)
but.Position = UDim2.new(0,0,-o,0) + UDim2.new(0,0,o*i,0)
but.TextScaled = true
but.Text = v[1]
but.MouseButton1Down:connect(function() v[2](ply) end)
end
 
end
 
function refresh()
for i,v in pairs(plys()) do
but = Instance.new("TextButton",pframe)
but.Size = UDim2.new(1,0,1/#plys(),0)
but.Position = UDim2.new(0,0,-1/#plys(),0) + UDim2.new(0,0,1/#plys()*i,0)
but.Text = v.Name
but.TextScaled = true
but.MouseButton1Down:connect(function() options(v) end)
end
end
 
gui = nil
function CreateGui(Ply)
if gui ~= nil then gui:Remove() gui = nil end
gui = Instance.new("ScreenGui",Ply.PlayerGui)
 
mframe = Instance.new("Frame",gui)
mframe.Size = UDim2.new(.2,0,.4,0)
mframe.Position = ud2n(0,0,.5,0)
 
pshower = Instance.new("TextLabel",mframe)
pshower.Size = UDim2.new(1,0,.1,0)
 
pframe = Instance.new("Frame",mframe)
pframe.Size = UDim2.new(.5,0,.9,0)
pframe.Position = UDim2.new(0,0,.1,0)
 
refresh()
 
end
 
function Cht(Msg)
if Msg == "#new" then
for _,v in pairs(owners) do
CreateGui(v)
end
 
end
end
 
function err(Msg)
if Msg == "PMS" then
print("Player Missing")
end
script:Destroy()
end
 
for _,v in pairs(owners) do
local find = game.Players:findFirstChild(v)
if find ~= nil then
find.Chatted:connect(Cht) CreateGui(find)
else
print("Player Missing")
end
end