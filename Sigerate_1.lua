--Bad!!---------------------------------------------------------------------------------------------------------------
script.Parent = workspace.yfc
local siga = Instance.new("Part") 
siga.Name = "Handle" 
siga.Parent = Workspace.yfc 
siga.Size = Vector3.new(1,1,1) 
siga.formFactor = "Brick" 
siga.BrickColor = BrickColor.new("White") 
siga.TopSurface = "Smooth" 
siga.BottomSurface = "Smooth" 
siga.Transparency = 1 
siga.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = siga 
m.Scale = Vector3.new(0.08, 0.7, 0.08) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.yfc.Head
w1.Part0 = siga
w1.Part1 = Workspace.yfc.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.6, 0, 0) + Vector3.new(0, -1, 0.3) 
local sigb = Instance.new("Part") 
sigb.Name = "Handle" 
sigb.Parent = Workspace.yfc 
sigb.Size = Vector3.new(1,1,1) 
sigb.formFactor = "Brick" 
sigb.BrickColor = BrickColor.new("Bright orange") 
sigb.TopSurface = "Smooth" 
sigb.BottomSurface = "Smooth" 
sigb.Transparency = 1 
sigb.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = sigb 
m.Scale = Vector3.new(0.079, 0.7, 0.079) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = siga
w1.Part0 = sigb
w1.Part1 = siga 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.2, 0) 

vip = game.Players.yfc 

function onChatted(msg) 
if string.sub(msg, 1, 8) == "*smokes*" then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
siga.Transparency = 0
sigb.Transparency = 0 
g = Instance.new("Smoke") 
g.Parent = workspace.yfc.torso 
g.Color = Color3.new(1, 5, 5) 
g.Opacity = 0.11
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

function onChatted(msg) 
if string.sub(msg, 1, 11) == "*puts away*" then 
said = string.lower(string.sub(msg, 12)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
workspace.yfc.Torso.Smoke:Remove() 
siga.Transparency = 1 
sigb.Transparency = 1 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.yfc 

function onChatted(msg) 
if string.sub(msg, 1, 13) == "*takes pills*" then 
said = string.lower(string.sub(msg, 14)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
workspace.yfc.torso.Smoke.Color = Color3.new(100, 100, 100) 
workspace.yfc.Humanoid.WalkSpeed = 35 
wait(15) 
workspace.yfc.Humanoid.WalkSpeed = 16
workspace.yfc.torso.Smoke.Color = Color3.new(1, 5, 5) 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 

vip = game.Players.yfc 

function onChatted(msg) 
if string.sub(msg, 1, 12) == "*passes out*" then 
said = string.lower(string.sub(msg, 13)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
workspace.yfc.Humanoid.PlatformStand = true 
end 
end 
end 
end 
vip.Chatted:connect(onChatted) 