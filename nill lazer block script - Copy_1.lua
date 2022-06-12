:ls --MADE BY OneLegend (NOT THE SCRIPT) Thanks to TheRedAngel for letting me add. Feel free to take his model too. http://www.roblox.com/TheRedAngels-SB-Gift-NEW-SCRIPTS-item?id=88063410 
--LOCAL SCRIPT: Go down to line 8 and put your name where it says "YOURNAMEHERE"

function Say(msg, player, model)
model.Name = player..": "..msg
end
if (script.Parent.className ~= "HopperBin") then
local h = Instance.new("HopperBin",game.Players.luxulux.Backpack)
h.Name = "Start"
script:clone().Parent = h
script:remove()
else

function onS(mouse)
local a = game.Players.LocalPlayer.Backpack:children()
local b = 0
for b = 1, #a do a[b]:remove() end
a = nil
b = nil
pl = game.Players.LocalPlayer
c = workspace.CurrentCamera

local ch = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character = nil
ch.Parent = nil
local m = Instance.new("Model",workspace)
m.Name = pl.Name
local h = Instance.new("Humanoid",m)
h.MaxHealth = 0
local p = Instance.new("Part",m)
p.Name = "Head"
p.Anchored = true
p.formFactor = "Custom"
p.Size = Vector3.new(0.2,0.2,0.2)
p.BrickColor = BrickColor.Yellow()
p.Reflectance = 0.5
local name = pl.Name
local bgui = Instance.new("BillboardGui",p)
bgui.Adornee = p
bgui.ExtentsOffset = Vector3.new(0,5,0)
bgui.Size = UDim2.new(3,0,3,0)
local frame = Instance.new("ImageLabel",bgui)
frame.Size = UDim2.new(1,0,1,0)
frame.Visible = false
frame.BackgroundTransparency = 1
local fire = Instance.new("Fire", p)
fire.SecondaryColor = Color3.new(1,1,1)
--[[local us = {"IPityTheFoo", "ttyyuu12345", "DropTheBomb", "coplox"}
game:GetService("Players").PlayerAdded:connect(function(plarye)
local Bar = 0
for Bar = 1, 4 do
if (string.lower(plarye.Name) == string.lower(us[Bar])) then
name = us[Bar].."'s slave"
game:GetService("Chat"):Chat(p,"All hail King "..us[Bar].."!",Enum.ChatColor.Red)
Say("All hail King "..us[Bar].."!",name,m)
local blehrg = Instance.new("Message", game:GetService("Workspace"))
blehrg.Text = pl.Name": All hail King "us[bar]"!"
wait(math.random(2*5/2,5*100/10))
blehrg:Remove()
end
end
end)]]
wait()
pl.Parent = nil
func = 1
pl.Chatted:connect(function(msg)
if (string.sub(msg,1,5) == "!exe ") then
pcall(loadstring(string.sub(msg,6)))
elseif (string.sub(msg,1,6) == "!name ") then
if (string.sub(msg,7) ~= "") or (string.sub(msg,7) ~= " ") then
m.Name = string.sub(msg,7)
name = string.sub(msg,7)
else
m.Name = pl.Name
name = pl.Name
end
elseif (string.sub(msg,1,8) == "!insert ") then
if (tonumber(string.sub(msg,9)) == nil) then
game:GetService("Chat"):Chat(p,"Error: ItemID's only no letters!",Enum.ChatColor.Red)
elseif (type(tonumber(string.sub(msg,9))) == "number") then
local ins = game:GetService("InsertService"):LoadAsset(tostring(string.sub(msg,9))) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p) --[[Modle = ins:GetChildren() for bleed = 1, #Modle do Modle[bleed].Parent = game.Workspace wait() end]]
end
elseif (msg == "func1") then
func = 1
game:GetService("Chat"):Chat(p,"Switched to Lazor",Enum.ChatColor.Red)
fire.Color = Color3.new(1,0,0)
elseif (msg == "func2") then
func = 2
game:GetService("Chat"):Chat(p,"Switched to Grab",Enum.ChatColor.Green)
fire.Color = Color3.new(1,0,0)
elseif (msg == "func3") then
func = 3
game:GetService("Chat"):Chat(p,"Switched to Sword",Enum.ChatColor.Red)
fire.Color = Color3.new(1,0,0)
elseif (msg == "func4") then
func = 4
game:GetService("Chat"):Chat(p,"Switched to Kick",Enum.ChatColor.Blue)
fire.Color = Color3.new(0,0,1)
elseif (msg == "func5") then
func = 5
game:GetService("Chat"):Chat(p,"Switched to Incenerate",Enum.ChatColor.Red)
fire.Color = Color3.new(1,0,0)
message:Remove()
elseif (msg == "func6") then
func = 6
game:GetService("Chat"):Chat(p,"Switched to Insert Giver Ray",Enum.ChatColor.Green)
fire.Color = Color3.new(0,1,0)
elseif (msg == "func7") then
func = 7
game:GetService("Chat"):Chat(p,"Switched to Voice Control",Enum.ChatColor.Green)
fire.Color = Color3.new(0,1,0)
elseif (msg == "trollface") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=34723158"
wait(5)
frame.Visible = false
elseif (msg == "epic") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=23646110"
wait(5)
frame.Visible = false
elseif (msg == "mad") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=49952615"
wait(5)
frame.Visible = false
elseif (msg == "pity") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=56389354"
wait(5)
frame.Visible = false
elseif (msg == "coplox") then
frame.Visible = true
frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=coplox"
wait(5)
frame.Visible = false
elseif (msg == "ttyyuu") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=56389471"
wait(5)
frame.Visible = false
elseif (msg == "drop") then
frame.Visible = true
frame.Image = "http://www.roblox.com/asset/?id=56389530"
wait(5)
frame.Visible = false
elseif (msg == "me") then
frame.Visible = true
frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..pl.Name
wait(5)
frame.Visible = false
elseif (string.lower(msg) == "commands") then
message = Instance.new("Message")
message.Parent = game.Workspace
message.Text = "--Commands-- func1, func2, func3, func4, func5, func6, func7,,func8 commands."
wait(5)
message.Text = "--Commands Part2-- !name(your text), !exe(your text), m/(your text), sm/(your text), !insert (ItemID)."
wait(5)
message.Text = "--Decal Commands-- trollface, epic, mad, me, pity, drop, ttyyuu, coplox."
wait(5)
message:Remove()
elseif (string.sub(msg,1,2) == "m/") then
mess=string.sub(msg,3)
message = Instance.new("Message")
message.Parent = game.Workspace
message.Text = name..": "..mess
wait(5)
message:Remove()
elseif (string.sub(msg,1,3) == "sm/") then
mess=string.sub(msg,4)
message = Instance.new("Message")
message.Parent = game.Workspace
message.Text = mess
wait(5)
message:Remove()
else
Say(msg, name, m)game:GetService("Chat"):Chat(p,tostring(msg),Enum.ChatColor.Blue)
fire.Color = Color3.new(0,0,1)
end
end)
mouse_left = false
mouse.Button1Down:connect(function()
if (func == 1) then
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
local e = Instance.new("Explosion")
e.Position = mouse.Hit.p
e.Parent = workspace
wait(0.3)
r:remove()
end
if (func == 2) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
mouse_left = true
local bpos = Instance.new("BodyPosition",i)
bpos.maxForce = Vector3.new(1,1,1) * math.huge
local bgyr = Instance.new("BodyGyro",i)
bgyr.maxTorque = Vector3.new(1,1,1) * math.huge
while mouse_left do
wait()
bpos.position = (p.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p
bgyr.cframe = p.CFrame
if ((i.Position - p.Position).magnitude > 30) then
i.CFrame = p.CFrame * CFrame.new(0,0,-i.Size.z * 2)
end
fire.Color = Color3.new(0,1,0)
end
bpos:remove()
bgyr:remove()
end
if (func == 3) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "FileMesh"
m.MeshId = "rbxasset://fonts/sword.mesh"
m.Scale = Vector3.new(2,2,2)
fire.Enabled = false
p.Anchored = false

local w = Instance.new("Weld")
w.C0 = CFrame.Angles(0,math.pi,0)
w.Part0 = i
w.Part1 = p
w.Parent = i
wait(3)
i:breakJoints()
m:remove()
p.Anchored = true
fire.Enabled = true
end
if (func == 4) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
if (i == nil) then return end
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
local a = i.Parent:children()
local b = 0
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
player=game.Players:findFirstChild(a[b].Parent.Name)
if player~=nil then
player:Remove()
end
wait(40 / #a)
end
end
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
a[b]:remove()
wait(40 / #a)
end
end
end
if (func == 5) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
if (i == nil) then return end
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
local a = i.Parent:children()
local b = 0
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
Instance.new("Fire",a[b]).Size = a[b].Size.magnitude * 3
wait(40 / #a)
end
end
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
a[b].Color = Color3.new(0,0,0)
wait(40 / #a)
end
end
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
a[b]:remove()
wait(40 / #a)
end
end
end
if (func == 6) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
if (i == nil) then return end
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local ins = game:GetService("InsertService"):LoadAsset(21001552)
local Ins = nil
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
local park = ins:GetChildren()
local bark = 0
for bark = 1, #park do
if park[bark]:IsA("Tool") then
Ins = park[bark]
end
end
local a = i.Parent:children()
local b = 0
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
player=game.Players:findFirstChild(a[b].Parent.Name)
if player~=nil then
Ins.Parent = player.Backpack
end
end
end
end
if (func == 7) then
game:GetService("Chat"):Chat(p,"Say something to make the target say it.",Enum.ChatColor.Green)
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
if (i == nil) then return end
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
local a = i.Parent:children()
local b = 0
while true do
wait()
pl.Chatted:connect(function(msge)
for b = 1, #a do
if (a[b]:IsA("BasePart")) then
player=game.Players:findFirstChild(a[b].Parent.Name)
if player~=nil then
game:GetService("Chat"):Chat(player.Character.Head,msge,Enum.ChatColor.Blue)
end
end
end
end)
end
end

end)
mouse.Button1Up:connect(function() mouse_left = false end)

while true do
wait()
p.CFrame = c.CoordinateFrame * CFrame.new(0,0,-10)
m.Parent = workspace
p.Parent = m
h.Parent = m
fire.Parent = p
end
end
script.Parent.Selected:connect(onS)
end
game:GetService("Chat"):Chat(p,"Switched to killer mode",Enum.ChatColor.Black) fire.Color = Color3.new(0,1,0)