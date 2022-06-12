owner = "ic3w0lf589" --who is this player?youll never know! 
Player = nil 
megui = game.Players:FindFirstChild(owner).PlayerGui 
reload = true 
reload2 = true 
local sg = Instance.new("ScreenGui") 
sg.Parent = megui 
sg.Name = "test" 
while true do 
if reload == true then 
if megui.test ~= nil then 
ss = sg:GetChildren() 
for t = 1,#ss do 
ss[t]:remove() 
end 
w = game.Players:GetChildren() 
for i = 1,#w do 
local box = Instance.new("TextButton") 
box.Parent = sg 
box.Position = UDim2.new(0,0,0,i*40) 
box.Size = UDim2.new(0,40,0,40) 
box.BackgroundTransparency = .25 
box.Text = w[i].Name 
function Click() 
Player = game.Players:FindFirstChild(box.Text) 
opt = Instance.new("TextButton") 
opt.Parent = sg 
opt.Position = UDim2.new(0,40,0,80) 
opt.Size = UDim2.new(0,40,0,40) 
opt.BackgroundTransparency = .25 
opt.Text = "Kick" 
opt3 = Instance.new("TextButton") 
opt3.Parent = sg 
opt3.Position = UDim2.new(0,40,0,400) 
opt3.Size = UDim2.new(0,40,0,40) 
opt3.BackgroundTransparency = .25 
opt3.Text = "Cancel" 
opt4 = Instance.new("TextButton") 
opt4.Parent = sg 
opt4.Position = UDim2.new(0,40,0,160) 
opt4.Size = UDim2.new(0,40,0,40) 
opt4.BackgroundTransparency = .25 
opt4.Text = "FFOFF" 
opt5 = Instance.new("TextButton") 
opt5.Parent = sg 
opt5.Position = UDim2.new(0,40,0,200) 
opt5.Size = UDim2.new(0,40,0,40) 
opt5.BackgroundTransparency = .25 
opt5.Text = "Kill" 
opt6 = Instance.new("TextButton") 
opt6.Parent = sg 
opt6.Position = UDim2.new(0,40,0,240) 
opt6.Size = UDim2.new(0,40,0,40) 
opt6.BackgroundTransparency = .25 
opt6.Text = "SuperJump" 
opt7 = Instance.new("TextButton") 
opt7.Parent = sg 
opt7.Position = UDim2.new(0,40,0,280) 
opt7.Size = UDim2.new(0,40,0,40) 
opt7.BackgroundTransparency = .25 
opt7.Text = "Normal Jump" 
opt8 = Instance.new("TextButton") 
opt8.Parent = sg 
opt8.Position = UDim2.new(0,40,0,320) 
opt8.Size = UDim2.new(0,40,0,40) 
opt8.BackgroundTransparency = .25 
opt8.Text = "Zombify" 
opt9 = Instance.new("TextButton") 
opt9.Parent = sg 
opt9.Position = UDim2.new(0,40,0,360) 
opt9.Size = UDim2.new(0,40,0,40) 
opt9.BackgroundTransparency = .25 
opt9.Text = "GiveBTools" 
opt10 = Instance.new("TextButton") 
opt10.Parent = sg 
opt10.Position = UDim2.new(0,80,0,80) 
opt10.Size = UDim2.new(0,40,0,40) 
opt10.BackgroundTransparency = .25 
opt10.Text = "Teleport/Me" 
opt11 = Instance.new("TextButton") 
opt11.Parent = sg 
opt11.Position = UDim2.new(0,80,0,120) 
opt11.Size = UDim2.new(0,40,0,40) 
opt11.BackgroundTransparency = .25 
opt11.Text = "Teleport/Plyr" 
opt12 = Instance.new("TextButton") 
opt12.Parent = sg 
opt12.Position = UDim2.new(0,80,0,160) 
opt12.Size = UDim2.new(0,40,0,40) 
opt12.BackgroundTransparency = .25 
opt12.Text = "Make Plane!" 
opt13 = Instance.new("ImageLabel") 
opt13.Parent = sg 
opt13.Position = UDim2.new(0,40,0,440) 
opt13.Size = UDim2.new(0,80,0,90) 
opt13.BackgroundTransparency = .25 
opt13.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..Player.Name 
opt14 = Instance.new("TextButton") 
opt14.Parent = sg 
opt14.Position = UDim2.new(0,80,0,200) 
opt14.Size = UDim2.new(0,40,0,40) 
opt14.BackgroundTransparency = .25 
opt14.Text = "Hide" 
opt15 = Instance.new("TextButton") 
opt15.Parent = sg 
opt15.Position = UDim2.new(0,80,0,240) 
opt15.Size = UDim2.new(0,40,0,40) 
opt15.BackgroundTransparency = .25 
opt15.Text = "Frz" 
opt16 = Instance.new("TextButton") 
opt16.Parent = sg 
opt16.Position = UDim2.new(0,80,0,280) 
opt16.Size = UDim2.new(0,40,0,40) 
opt16.BackgroundTransparency = .25 
opt16.Text = "UnFrz" 
function Click5() 
reload = true 
end 
function Click3() 
if Player.Character.ForceField ~= nil then 
Player.Character.ForceField:remove() 
end 
end 
function Click2() 
reload = true 
Player:remove() 
end 
function Click4() 
ff = Instance.new("ForceField") 
ff.Parent = Player.Character 
end 
function Click6() 
Player.Character:BreakJoints() 
end 
function Click9() 
if Player.Character ~= nil then 
local torso = Player.Character:FindFirstChild("Torso") 
if torso ~= nil then 
local arm = Player.Character:FindFirstChild("Left Arm") 
if arm ~= nil then 
arm:remove() 
end 
local arm = Player.Character:FindFirstChild("Right Arm") 
if arm ~= nil then 
arm:remove() 
end 
local rot=CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) 
local zarm = Instance.new("Part") 
zarm.Color = Color3.new(0.631373, 0.768627, 0.545098) 
zarm.Locked = true 
zarm.formFactor = "Symmetric" 
zarm.Size = Vector3.new(2,1,1) 
zarm.TopSurface = "Smooth" 
zarm.BottomSurface = "Smooth" 
zarm.Name = "zarm" 
local zarm2 = zarm:clone() 
zarm2.CFrame = torso.CFrame * CFrame.new(Vector3.new(-1.5,0.5,-0.5)) * rot 
zarm.CFrame = torso.CFrame * CFrame.new(Vector3.new(1.5,0.5,-0.5)) * rot 
zarm.Parent = Player.Character 
zarm:MakeJoints() 
zarm2.Parent = Player.Character 
zarm2:MakeJoints() 
local head = Player.Character:FindFirstChild("Head") 
if head ~= nil then 
head.Color = Color3.new(0.631373, 0.768627, 0.545098) 
end 
end 
end 
end 
function Click7() 
bb = Instance.new("BodyForce") 
bb.Parent = Player.Character.Torso 
force = Vector3.new(0,2500,0) 
bb.force = force 
bb.Name = "Force" 
ssg = Instance.new("ScreenGui") 
ssg.Parent = Player.PlayerGui 
ssg.Name = "test" 
optss1 = Instance.new("TextButton") 
optss1.Parent = ssg 
optss1.Position = UDim2.new(0,220,0,220) 
optss1.Size = UDim2.new(0,40,0,40) 
optss1.BackgroundTransparency = .25 
optss1.Text = "Increase SuperJump" 
optss3 = Instance.new("TextButton") 
optss3.Parent = ssg 
optss3.Position = UDim2.new(0,220,0,260) 
optss3.Size = UDim2.new(0,40,0,40) 
optss3.BackgroundTransparency = .25 
optss3.Text = "Lower SuperJump" 
function Clickss1() 
bb.force = bb.force + Vector3.new(0,250,0) 
end 
function Clickss2() 
bb.force = bb.force + Vector3.new(0,-250,0) 
end 
optss1.MouseButton1Down:connect(Clickss1) 
optss3.MouseButton1Down:connect(Clickss2) 
end 
function Click8() 
if Player.Character.Torso.Force ~= nil then 
Player.Character.Torso.Force:remove() 
end 
end 
function Click10() 
t1 = Instance.new("HopperBin") 
t1.Parent = Player.Backpack 
t1.BinType = "GameTool" 
t2 = Instance.new("HopperBin") 
t2.Parent = Player.Backpack 
t2.BinType = "Clone" 
t3 = Instance.new("HopperBin") 
t3.Parent = Player.Backpack 
t3.BinType = "Hammer" 
end 
function Click11() 
Player.Character:MoveTo(game.Players[owner].Character.Head.Position) 
end 
function Click12() 
game.Players[owner].Character:MoveTo(Player.Character.Head.Position) 
end 
function Click13() 
vip = Player 
script.Name = "PLANE" 
drop = false 
ss = Instance.new("Model") 
ss.Parent = game.workspace 
ss.Name = Player.Name 
a = Instance.new("Model") 
a.Parent = ss 
a.Name = "Plane" 
b = Instance.new("Part") 
b.Parent = a 
b.Name = "Head" 
b.Size = Vector3.new(15,3,15) 
b.Locked = true 
c = Instance.new("Part") 
c.Parent = a 
c.Name = "Torso" 
c.Locked = true 
c.Transparency = 1 
d = Instance.new("Snap") 
d.Parent = c 
d.Part0 = c 
d.Part1 = b 
e = Instance.new("Humanoid") 
e.Parent = a 
f = Instance.new("SpecialMesh") 
f.Parent = b 
f.MeshType = "FileMesh" 
f.MeshId = "http://www.roblox.com/asset/?id=20626798" 
f.TextureId = "http://www.roblox.com/asset/?id=20626793" 
f.Scale = Vector3.new(15,15,15) 
s = Instance.new("Seat") 
s.Parent = a 
s.Position = b.Position + Vector3.new(0,1,0) 
vip.Character = a 
a:MoveTo(Vector3.new(10,12,0)) 
vip.Character.Humanoid.WalkSpeed = 100 
bb = Instance.new("BodyForce") 
bb.Parent = vip.Character.Torso 
mass = b:GetMass() 
cmass = c:GetMass() 
smass = s:GetMass() 
force = Vector3.new(0,mass*196.27,0) + Vector3.new(0,cmass*196,0) + Vector3.new(0,smass*30,0) 
bb.force = force 
sgs = Instance.new("ScreenGui") 
sgs.Parent = vip.PlayerGui 
sgs.Name = "test" 
opts1 = Instance.new("TextButton") 
opts1.Parent = sgs 
opts1.Position = UDim2.new(0.50,0,0.9,0) 
opts1.Size = UDim2.new(0,40,0,40) 
opts1.BackgroundTransparency = .25 
opts1.Text = "Land" 
opts2 = Instance.new("TextButton") 
opts2.Parent = sgs 
opts2.Position = UDim2.new(0.50,0,0.95,0) 
opts2.Size = UDim2.new(0,40,0,40) 
opts2.BackgroundTransparency = .25 
opts2.Text = "Fly" 
opts3 = Instance.new("TextButton") 
opts3.Parent = sgs 
opts3.Position = UDim2.new(0.47,0,0.95,0) 
opts3.Size = UDim2.new(0,40,0,40) 
opts3.BackgroundTransparency = .25 
opts3.Text = "+" 
opts4 = Instance.new("TextButton") 
opts4.Parent = sgs 
opts4.Position = UDim2.new(0.53,0,0.95,0) 
opts4.Size = UDim2.new(0,40,0,40) 
opts4.BackgroundTransparency = .25 
opts4.Text = "-" 
function Clicks() 
bb.Parent = c 
end 
function Clicks1() 
bb.Parent = game.Lighting 
end 
function Clicks2() 
bb.force = bb.force + Vector3.new(0,500,0) 
end 
function Clicks3() 
bb.force = bb.force - Vector3.new(0,500,0) 
end 
opts4.MouseButton1Down:connect(Clicks3) 
opts3.MouseButton1Down:connect(Clicks2) 
opts1.MouseButton1Down:connect(Clicks1) 
opts2.MouseButton1Down:connect(Clicks) 
function onChatted(msg) 
if (string.sub(msg,1,9) == "flyspeed/") then 
t = string.sub(msg,10,1000) 
e.WalkSpeed = t 
end 
if (string.sub(msg,1,13) == "adjustweight/") then 
t = string.sub(msg,14,1000) 
bb.force = bb.force + Vector3.new(0,t,0) 
end 
if (string.sub(msg,1,12) == "resetweight/") then 
t = string.sub(msg,13,1000) 
bb.force = force 
end 
if (string.sub(msg,1,6) == "hover/") then 
t = string.sub(msg,13,1000) 
force = Vector3.new(0,mass*196.177,0) + Vector3.new(0,cmass*196,0) + Vector3.new(0,smass*196.21,0) 
bb.force = force 
end 
if (string.sub(msg,1,7) == "rhover/") then 
t = string.sub(msg,13,1000) 
force = Vector3.new(0,mass*196.26,0) + Vector3.new(0,cmass*196,0) + Vector3.new(0,smass*30,0) 
bb.force = force 
end 
if msg == "b" then 
drop = true 
end 
end 
vip.Chatted:connect(onChatted) 
while true do 
if drop == true then 
bomb = Instance.new("Part") 
bomb.Shape = "Ball" 
bomb.Parent = workspace 
bomb.Position = b.Position + Vector3.new(0,-5,0) 
function onTouch(part) 
if part.Parent ~= a then 
bbx = Instance.new("Explosion") 
bbx.Parent = game.workspace 
bbx.BlastRadius = 12312756 
bbx.Position = bomb.Position 
bomb:remove() 
end 
end 
bomb.Touched:connect(onTouch) 
end 
drop = false 
wait() 
end 
while true do 
wait(1) 
end 
end 
function Click14() 
opta = Instance.new("TextButton") 
opta.Parent = sg 
opta.Position = UDim2.new(0,120,0,240) 
opta.Size = UDim2.new(0,40,0,40) 
opta.BackgroundTransparency = .25 
opta.Text = "Lighting" 
opt1a = Instance.new("TextButton") 
opt1a.Parent = sg 
opt1a.Position = UDim2.new(0,120,0,280) 
opt1a.Size = UDim2.new(0,40,0,40) 
opt1a.BackgroundTransparency = .25 
opt1a.Text = "nil" 
opta1 = Instance.new("TextButton") 
opta1.Parent = sg 
opta1.Position = UDim2.new(0,120,0,320) 
opta1.Size = UDim2.new(0,40,0,40) 
opta1.BackgroundTransparency = .25 
opta1.Text = "Workspace" 
cancel = Instance.new("TextButton") 
cancel.Parent = sg 
cancel.Position = UDim2.new(0,120,0,360) 
cancel.Size = UDim2.new(0,40,0,40) 
cancel.BackgroundTransparency = .25 
cancel.Text = "Cancel" 
function Clicksa() 
Player.Character.Parent = game.Lighting 
end 
function Clicksa1() 
Player.Character.Parent = nil 
end 
function unHide() 
Player.Character.Parent = game.workspace 
end 
function cancels() 
opta1:remove() 
opta:remove() 
opt1a:remove() 
cancel:remove() 
end 
opta1.MouseButton1Down:connect(unHide) 
opta.MouseButton1Down:connect(Clicksa) 
opt1a.MouseButton1Down:connect(Clicksa1) 
cancel.MouseButton1Down:connect(cancels) 
end 
function Click15() 
Player.Character.Head.Anchored = true 
Player.Character.Head.Transparency = 0.4 
end 
function Click16() 
Player.Character.Head.Anchored = false 
Player.Character.Head.Transparency = 0 
end 
opt16.MouseButton1Down:connect(Click16) 
opt15.MouseButton1Down:connect(Click15) 
opt14.MouseButton1Down:connect(Click14) 
opt12.MouseButton1Down:connect(Click13) 
opt11.MouseButton1Down:connect(Click12) 
opt10.MouseButton1Down:connect(Click11) 
opt9.MouseButton1Down:connect(Click10) 
opt8.MouseButton1Down:connect(Click9) 
opt7.MouseButton1Down:connect(Click8) 
opt6.MouseButton1Down:connect(Click7) 
opt4.MouseButton1Down:connect(Click3) 
opt3.MouseButton1Down:connect(Click5) 
opt.MouseButton1Down:connect(Click2) 
opt5.MouseButton1Down:connect(Click6) 
opt2 = Instance.new("TextButton") 
opt2.Parent = sg 
opt2.Position = UDim2.new(0,40,0,120) 
opt2.Size = UDim2.new(0,40,0,40) 
opt2.BackgroundTransparency = .25 
opt2.Text = "FFON" 
opt2.MouseButton1Down:connect(Click4) 
end 
box.MouseButton1Down:connect(Click) 
end 

reload = false 
end 
end 
wait() 
end 
while true do 
wait(1) 
end 