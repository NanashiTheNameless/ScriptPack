hop = Instance.new("HopperBin") 
hop.Name = "Ipod" 
hop.Parent = Game.Players.acb227.Backpack 
script.Parent = Game.Players.acb227.Character 

local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Game.Players.acb227.Character  
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.8, 1.1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = Game.Players.acb227.Character.Torso 
w1.Part0 = h 
w1.Part1 = Game.Players.acb227.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1, 2) 
local hn = Instance.new("Part") 
hn.Name = "Handle" 
hn.Parent = Game.Players.acb227.Character 
hn.Size = Vector3.new(1,1,1) 
hn.formFactor = "Brick" 
hn.BrickColor = BrickColor.new("Black") 
hn.TopSurface = "Smooth" 
hn.BottomSurface = "Smooth" 
hn.Transparency = 0 
hn.Reflectance = 0 
m = Instance.new("CylinderMesh") 
m.Parent = hn 
m.Scale = Vector3.new(0.2, 0.1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = hn 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.55, 0, 0) + Vector3.new(0, -0.1, -0.4) 
local hai = Instance.new("Part") 
hai.Name = "Handlee" 
hai.Parent = Game.Players.acb227.Character 
hai.Size = Vector3.new(1,1,1) 
hai.formFactor = "Brick" 
hai.BrickColor = BrickColor.new("Dark stone grey") 
hai.TopSurface = "Smooth" 
hai.BottomSurface = "Smooth" 
hai.Transparency = 0 
hai.Reflectance = 0 
m = Instance.new("BlockMesh") 
m.Parent = hai 
m.Scale = Vector3.new(0.6, 0.6, 0.21) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = hai 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.25, -0.01) 
local ha = Instance.new("Part") 
ha.Name = "Handlee" 
ha.Parent = Game.Players.acb227.Character 
ha.Size = Vector3.new(1,1,1) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Dark stone grey") 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = 0 
ha.Reflectance = 0 
m = Instance.new("CylinderMesh") 
m.Parent = ha 
m.Scale = Vector3.new(0.45, 0.1, 0.45) 
w1 = Instance.new("Weld") 
w1.Parent = h 
w1.Part0 = ha 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.55, 0, 0) + Vector3.new(0, 0.1, 0.4) 


w1 = Instance.new("Weld") 
w1.Parent = Game.Players.acb227.Character["Right Arm"] 
w1.Part0 = Game.Players.acb227.Character["Right Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, -1) + Vector3.new(1, -1, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.acb227.Character["Left Arm"] 
w1.Part0 = Game.Players.acb227.Character["Left Arm"] 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 1) + Vector3.new(-1, -1, 0) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 46)
tx.Size = UDim2.new(0, 297, 0, 199) 
tx.Text = "" 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 45)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Headset" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 65)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Power On" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
hai.Reflectance = 0.5 
txii.Visible = true 
txiii.Visible = true 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removee" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 180, 0, 85)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Power Off" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
hai.Reflectance = 0 
txi.Visible = false 
txk.Visible = false
txc.Visible = false
txd.Visible = false 
txz.Visible = false 
txh.Visible = false
txg.Visible = false
txs.Visible = false 
txq.Visible = false 
txs.Visible = false 
txm.Visible = false 
txt.Visible = false 
txy.Visible = false
txx.Visible = false
txo.Visible = false 
td.Visible = false 
t.Visible = false 
tp.Visible = false 
to.Visible = false 
tp.Visible = false 
ts.Visible = false 
txxxx.Visible = false 
txxx.Visible = false 
txu.Visible = false 
txxxxxx.Visible = false 
txxxxx.Visible = false 
tope.Visible = false 
topey.Visible = false 
topeys.Visible = false 
topeyse.Visible = false 
txii.Visible = false 
txiii.Visible = false  
game.Workspace.acb227.BGMusic:Stop() 
game.Workspace.acb227.BGMusic:Remove()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txi = Instance.new("TextButton") 
txi.BackgroundTransparency = 0.3 
txi.Name = "Text - Reset" 
txi.Parent = sc 
txi.Position = UDim2.new(0, 180, 0, 105)
txi.Size = UDim2.new(0, 99, 0, 20) 
txi.Text = "Play Thunder" 
txi.Visible = false 

txi.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so1 = Instance.new("Sound")
so1.Name = "BGMusic"
so1.SoundId = "http://www.roblox.com/asset/?id=2974000"
so1.Volume = 0.05
so1.Looped = true
so1.archivable = true
so1.Parent = game.Workspace.acb227
wait(1)
so1:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txk = Instance.new("TextButton") 
txk.BackgroundTransparency = 0.3 
txk.Name = "Text - Reset" 
txk.Parent = sc 
txk.Position = UDim2.new(0, 180, 0, 125)
txk.Size = UDim2.new(0, 99, 0, 20) 
txk.Text = "Play You Failed" 
txk.Visible = false 

txk.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so2 = Instance.new("Sound")
so2.Name = "BGMusic"
so2.SoundId = "http://roblox.com/asset/?id=10209146"
so2.Volume = 0.05
so2.Looped = true
so2.archivable = true
so2.Parent = game.Workspace.acb227
wait(1)
so2:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txc = Instance.new("TextButton") 
txc.BackgroundTransparency = 0.3 
txc.Name = "Text - Reset" 
txc.Parent = sc 
txc.Position = UDim2.new(0, 279, 0, 45)
txc.Size = UDim2.new(0, 99, 0, 20) 
txc.Text = "Take Picture" 
txc.Visible = false 

txc.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
game.Lighting.Brightness = math.huge
wait(0.1) 
game.Lighting.Brightness = 1
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txz = Instance.new("TextButton") 
txz.BackgroundTransparency = 0.3 
txz.Name = "Text - Reset" 
txz.Parent = sc 
txz.Position = UDim2.new(0, 180, 0, 145)
txz.Size = UDim2.new(0, 99, 0, 20) 
txz.Text = "Play Zap Boom" 
txz.Visible = false 

txz.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so3 = Instance.new("Sound")
so3.Name = "BGMusic"
so3.SoundId = "http://www.roblox.com/asset/?id=1994345"
so3.Volume = 0.05
so3.Looped = true
so3.archivable = true
so3.Parent = game.Workspace.acb227
wait(1)
so3:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txu = Instance.new("TextButton") 
txu.BackgroundTransparency = 0.3 
txu.Name = "Text - Reset" 
txu.Parent = sc 
txu.Position = UDim2.new(0, 180, 0, 165)
txu.Size = UDim2.new(0, 99, 0, 20) 
txu.Text = "Play Speach" 
txu.Visible = false 

txu.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?ID=10434077"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txh = Instance.new("TextButton") 
txh.BackgroundTransparency = 0.3 
txh.Name = "Text - Reset" 
txh.Parent = sc 
txh.Position = UDim2.new(0, 180, 0, 185)
txh.Size = UDim2.new(0, 99, 0, 20) 
txh.Text = "Play M.U.L.E" 
txh.Visible = false 

txh.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so5 = Instance.new("Sound")
so5.Name = "BGMusic"
so5.SoundId = "http://www.roblox.com/asset/?id=1077604"
so5.Volume = 0.05
so5.Looped = true
so5.archivable = true
so5.Parent = game.Workspace.acb227
wait(1)
so5:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txo = Instance.new("TextButton") 
txo.BackgroundTransparency = 0.3 
txo.Name = "Text - Reset" 
txo.Parent = sc 
txo.Position = UDim2.new(0, 180, 0, 205)
txo.Size = UDim2.new(0, 99, 0, 20) 
txo.Text = "Play Carmel Dansen" 
txo.Visible = false 

txo.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so6 = Instance.new("Sound")
so6.Name = "BGMusic"
so6.SoundId = "http://www.roblox.com/asset/?id=2303479"
so6.Volume = 0.05
so6.Looped = true
so6.archivable = true
so6.Parent = game.Workspace.acb227
wait(1)
so6:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txg = Instance.new("TextButton") 
txg.BackgroundTransparency = 0.3 
txg.Name = "Text - Reset" 
txg.Parent = sc 
txg.Position = UDim2.new(0, 279, 0, 65)
txg.Size = UDim2.new(0, 99, 0, 20) 
txg.Text = "Play Game" 
txg.Visible = false 

txg.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txs.Visible = true 
txm.Visible = true 
txt.Visible = true 
txy.Visible = true 
txx.Visible = true 
tx22.Visible = true
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txq = Instance.new("TextButton") 
txq.BackgroundTransparency = 0.3 
txq.Name = "Text - Reset" 
txq.Parent = sc 
txq.Position = UDim2.new(0, 279, 0, 85)
txq.Size = UDim2.new(0, 99, 0, 20) 
txq.Text = "Close Game" 
txq.Visible = false 

txq.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
txs.Visible = false 
txm.Visible = false 
txt.Visible = false 
txy.Visible = false
txx.Visible = false
tx22.Visible = false
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txs = Instance.new("TextLabel") 
txs.BackgroundTransparency = 0.3 
txs.Name = "Text - Reset" 
txs.Parent = sc 
txs.Position = UDim2.new(0, 175, 0, 245)
txs.Size = UDim2.new(0, 200, 0, 200) 
txs.Text = "" 
txs.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txm = Instance.new("TextLabel") 
txm.BackgroundTransparency = 0 
txm.BackgroundColor3 = Color3.new(1, 1, 1) 
txm.Name = "Text - Reset" 
txm.Parent = sc 
txm.Position = UDim2.new(0, 175, 0, 245)
txm.Size = UDim2.new(0, 20, 0, 20) 
txm.Text = "" 
txm.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txy = Instance.new("TextLabel") 
txy.BackgroundTransparency = 0 
txy.BackgroundColor3 = Color3.new(1, 1, 1) 
txy.Name = "Text - Reset" 
txy.Parent = sc 
txy.Position = UDim2.new(0, 175, 0, 316)
txy.Size = UDim2.new(0, 20, 0, 20) 
txy.Text = "" 
txy.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txt = Instance.new("TextLabel") 
txt.BackgroundTransparency = 0 
txt.BackgroundColor3 = Color3.new(1, 1, 1) 
txt.Name = "Text - Reset" 
txt.Parent = sc 
txt.Position = UDim2.new(0, 180, 0, 245)
txt.Size = UDim2.new(0, 10, 0, 85) 
txt.Text = "" 
txt.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx22 = Instance.new("TextLabel") 
tx22.BackgroundTransparency = 0 
tx22.BackgroundColor3 = Color3.new(1, 1, 1) 
tx22.Name = "Text - Reset" 
tx22.Parent = sc 
tx22.Position = UDim2.new(0, 175, 0, 411)
tx22.Size = UDim2.new(0, 20, 0, 20) 
tx22.Text = "" 
tx22.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txx = Instance.new("TextLabel") 
txx.BackgroundTransparency = 0 
txx.BackgroundColor3 = Color3.new(1, 1, 1) 
txx.Name = "Text - Reset" 
txx.Parent = sc 
txx.Position = UDim2.new(0, 180, 0, 330)
txx.Size = UDim2.new(0, 10, 0, 85) 
txx.Text = "" 
txx.Visible = false

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txd = Instance.new("TextButton") 
txd.BackgroundTransparency = 0.3 
txd.Name = "Text - Reset" 
txd.Parent = sc 
txd.Position = UDim2.new(0, 279, 0, 105)
txd.Size = UDim2.new(0, 99, 0, 20) 
txd.Text = "Play HipHop" 
txd.Visible = false 

txd.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=27697735"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

td = Instance.new("TextButton") 
td.BackgroundTransparency = 0.3 
td.Name = "Text - Reset" 
td.Parent = sc 
td.Position = UDim2.new(0, 279, 0, 125)
td.Size = UDim2.new(0, 99, 0, 20) 
td.Text = "Play FoggyMountain" 
td.Visible = false 

td.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=27697298"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

t = Instance.new("TextButton") 
t.BackgroundTransparency = 0.3 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 279, 0, 145)
t.Size = UDim2.new(0, 99, 0, 20) 
t.Text = "Play Awakening" 
t.Visible = false 

t.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=27697277"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tp = Instance.new("TextButton") 
tp.BackgroundTransparency = 0.3 
tp.Name = "Text - Reset" 
tp.Parent = sc 
tp.Position = UDim2.new(0, 279, 0, 165)
tp.Size = UDim2.new(0, 99, 0, 20) 
tp.Text = "Play FinalDestination" 
tp.Visible = false 

tp.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=1280414"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

ts = Instance.new("TextButton") 
ts.BackgroundTransparency = 0.3 
ts.Name = "Text - Reset" 
ts.Parent = sc 
ts.Position = UDim2.new(0, 279, 0, 185)
ts.Size = UDim2.new(0, 99, 0, 20) 
ts.Text = "Play OneWinged" 
ts.Visible = false 

ts.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=1372260"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

to = Instance.new("TextButton") 
to.BackgroundTransparency = 0.3 
to.Name = "Text - Reset" 
to.Parent = sc 
to.Position = UDim2.new(0, 279, 0, 205)
to.Size = UDim2.new(0, 99, 0, 20) 
to.Text = "Play Gothic" 
to.Visible = false 

to.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=27697743"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txxxx = Instance.new("TextButton") 
txxxx.BackgroundTransparency = 0.3 
txxxx.Name = "Text - Reset" 
txxxx.Parent = sc 
txxxx.Position = UDim2.new(0, 279, 0, 225)
txxxx.Size = UDim2.new(0, 99, 0, 20) 
txxxx.Text = "Volume up" 
txxxx.Visible = false 

txxxx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace.acb227.BGMusic.Volume = workspace.acb227.BGMusic.Volume + 0.5
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txxx = Instance.new("TextButton") 
txxx.BackgroundTransparency = 0.3 
txxx.Name = "Text - Reset" 
txxx.Parent = sc 
txxx.Position = UDim2.new(0, 180, 0, 225)
txxx.Size = UDim2.new(0, 99, 0, 20) 
txxx.Text = "Volume down" 
txxx.Visible = false 

txxx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace.acb227.BGMusic.Volume = workspace.acb227.BGMusic.Volume - 0.5
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txxxxxx = Instance.new("TextButton") 
txxxxxx.BackgroundTransparency = 0.3 
txxxxxx.Name = "Text - Reset" 
txxxxxx.Parent = sc 
txxxxxx.Position = UDim2.new(0, 378, 0, 45)
txxxxxx.Size = UDim2.new(0, 99, 0, 20) 
txxxxxx.Text = "Pitch up" 
txxxxxx.Visible = false 

txxxx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace.acb227.BGMusic.Pitch = workspace.acb227.BGMusic.Pitch + 0.5
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txxxxx = Instance.new("TextButton") 
txxxxx.BackgroundTransparency = 0.3 
txxxxx.Name = "Text - Reset" 
txxxxx.Parent = sc 
txxxxx.Position = UDim2.new(0, 378, 0, 65)
txxxxx.Size = UDim2.new(0, 99, 0, 20) 
txxxxx.Text = "Pitch down" 
txxxxx.Visible = false 

txxxxx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
workspace.acb227.BGMusic.Pitch = workspace.acb227.BGMusic.Pitch - 0.5
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tope = Instance.new("TextButton") 
tope.BackgroundTransparency = 0.3 
tope.Name = "Text - Reset" 
tope.Parent = sc 
tope.Position = UDim2.new(0, 378, 0, 85)
tope.Size = UDim2.new(0, 99, 0, 20) 
tope.Text = "Play Rickroll" 
tope.Visible = false 

tope.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset?id=2027611"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

topey = Instance.new("TextButton") 
topey.BackgroundTransparency = 0.3 
topey.Name = "Text - Reset" 
topey.Parent = sc 
topey.Position = UDim2.new(0, 378, 0, 105)
topey.Size = UDim2.new(0, 99, 0, 20) 
topey.Text = "Play Halo theme" 
topey.Visible = false 

topey.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=1034065"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

topeys = Instance.new("TextButton") 
topeys.BackgroundTransparency = 0.3 
topeys.Name = "Text - Reset" 
topeys.Parent = sc 
topeys.Position = UDim2.new(0, 378, 0, 125)
topeys.Size = UDim2.new(0, 99, 0, 20) 
topeys.Text = "Play WindsOfFjords" 
topeys.Visible = false 

topeys.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=1015394"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

topeyse = Instance.new("TextButton") 
topeyse.BackgroundTransparency = 0.3 
topeyse.Name = "Text - Reset" 
topeyse.Parent = sc 
topeyse.Position = UDim2.new(0, 378, 0, 145)
topeyse.Size = UDim2.new(0, 99, 0, 20) 
topeyse.Text = "Play midevil music" 
topeyse.Visible = false 

topeyse.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
local so4 = Instance.new("Sound")
so4.Name = "BGMusic"
so4.SoundId = "http://www.roblox.com/asset/?id=2303479"
so4.Volume = 0.05
so4.Looped = true
so4.archivable = true
so4.Parent = game.Workspace.acb227
wait(1)
so4:play()
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removef" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txii = Instance.new("TextButton") 
txii.BackgroundTransparency = 0.3 
txii.Name = "Text - Reset" 
txii.Parent = sc 
txii.Position = UDim2.new(0, 378, 0, 165)
txii.Size = UDim2.new(0, 99, 0, 20) 
txii.Text = "Songs" 

txii.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
hai.Reflectance = 0.5 
txi.Visible = true 
txk.Visible = true
txz.Visible = true 
txh.Visible = true
txg.Visible = false
txs.Visible = false 
txo.Visible = true 
txq.Visible = false
t.Visible = true
td.Visible = true
to.Visible = true 
txd.Visible = true 
tp.Visible = true 
ts.Visible = true 
txxxx.Visible = false
txc.Visible = false
txxx.Visible = false
txu.Visible = true 
txxxxxx.Visible = false
txxxxx.Visible = false
tope.Visible = true 
topey.Visible = true 
topeys.Visible = true 
topeyse.Visible = true 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removee" then 
sc:Remove() 
end 
end) 
--Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

txiii = Instance.new("TextButton") 
txiii.BackgroundTransparency = 0.3 
txiii.Name = "Text - Reset" 
txiii.Parent = sc 
txiii.Position = UDim2.new(0, 378, 0, 185)
txiii.Size = UDim2.new(0, 99, 0, 20) 
txiii.Text = "Options" 

txiii.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
hai.Reflectance = 0.5 
txi.Visible = false 
txk.Visible = false
txz.Visible = false 
txh.Visible = false
txg.Visible = true
txs.Visible = true 
txo.Visible = false 
txq.Visible = true
t.Visible = false
td.Visible = false
to.Visible = false 
txd.Visible = false 
tp.Visible = false 
ts.Visible = false
txxxx.Visible = true
txc.Visible = true
txxx.Visible = true
txu.Visible = false 
txxxxxx.Visible = true
txxxxx.Visible = true
tope.Visible = false
topey.Visible = false
topeys.Visible = false
topeyse.Visible = false
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removee" then 
sc:Remove() 
end 
end) 

--[[http://www.roblox.com/asset/?id=1372259  --FireEmblem]]--