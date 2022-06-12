script.Parent = workspace.acb227

vip = game.Players.acb227 

function onChatted(msg) 
if msg == "get/b" then 
p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Name = "Plate" 
p.Anchored = true 
p.Size = Vector3.new(500, 0.4, 500) 
p.BrickColor = BrickColor.new("Bright green") 
p.CFrame = CFrame.new(0, 0, 0)
p.formFactor = "Plate" 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/r" then 
vip.Character.Parent = workspace 
vip.Character:BreakJoints() 
ch = vip.Character 
ch.Head:remove() 
ch.Torso:remove() 
ch["Right Leg"]:remove() 
ch["Right Arm"]:remove() 
ch["Left Leg"]:remove() 
ch["Left Arm"]:remove() 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/d" then 
workspace.Message:remove() 
workspace.Hint:remove() 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/l" then 
Game.Lighting.Brightness = 1 
wait(1) 
Game.Lighting.Brightness = 0 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/ff" then 
ff = Instance.new("ForceField")
ff.Parent = vip.Character
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/noff" then 
vip.Character.ForceField:remove() 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/noguis" then 
cc = vip.PlayerGui
cc:remove() 
cc = Instance.new("PlayerGui")
cc.Parent = vip 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/notools" then 
cc = vip.Backpack:GetChildren() 
cc:remove() 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/tool" then 
cc = Instance.new("Tool")
cc.Parent = vip.Backpack 
end 
end 
vip.Chatted:connect(onChatted)

function onChatted(msg) 
if msg == "get/enter" then 
Name = workspace.Scriptaxor.Name 
cc = Instance.new("Message")
cc.Parent = workspace 
cc.Text = "Welcome to Death " ..Name.. " "
wait(3) 
cc:remove() 
end 
end 
vip.Chatted:connect(onChatted)