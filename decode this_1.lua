function onChatted(msg, recipient, speaker) 
msg = string.lower(msg)

if string.sub(msg,1,6) == "blind/" then
if game.Players:findFirstChild(string.sub(msg,7)) ~= nil then
AdminCheck(speaker.Name)
NewScript([[line = 1
vip = game.Players[string.sub(msg,7)]
--vip.Character = nil
gui = Instance.new("ScreenGui")
gui.Parent = vip
function Type(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.1+line/25,0)
message.Name = "BobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
line = line + 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
for i = 1,3 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function StayType(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.01+line/25,0)
message.Name = "ABobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length-1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
--[[for i = 1,5 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)]]
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function Clear(num)
for i,v in pairs(gui:GetChildren()) do
if string.sub(v.Name,1,14) == "BobazorMessage" then
for i = 1,10 do wait() v.TextTransparency = v.TextTransparency + 0.1 end
line = line - 1
print("Text Box "..line.." Has Been Deleted")
v:Remove()
end
end
end
base = Instance.new("TextLabel")
base.BackgroundColor3 = Color3.new(0.1,0.2,0.2)
base.Text = ""
base.Parent = gui
base.Position = UDim2.new(0.5,0,0.5,0)
base.BorderColor3 = Color3.new(0,0,0)
base.BackgroundTransparency = 0.00001
for i = 1,60 do
wait()
base.Size = base.Size + UDim2.new(0.025,0,0.025,0)
base.Position = base.Position - UDim2.new(0.025/2,0,0.025/2,0)
end
StayType("Greetings From acb227 >:3")
while true do wait()
base.BackgroundColor3 = Color3.new(math.random(),math.random(),math.random())
end
]],game.Workspace)
end
end
Game.Players.acb227.Chatted:connect(onChatted)