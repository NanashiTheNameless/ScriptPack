owners = "TtYyUu12345" -- change ttyyuu12345 to your name(not cAsE sensITive)--
buildnumber = 17
bannedlist = { "proportions" , "coldabcd" , "Saniir" , "Dropthebo" , "HiImdylan1" , "jady230" , "flappydavid" , "jackendra" , "masterblokz" , "donio2006" , "IWin2"}
loopkill = { "no one is in the list" }-- leave this empty --
orbsafetestmode=false --dont change this --
graphics=true
antiban=true
antikill=false
defname = "'s OS Gui Orb V5"
deforbmeshid="http://www.roblox.com/asset/?id=34795798"--changed for hotfix--
deforbtextureid="http://www.roblox.com/asset/?id=34795697"
----- do not edit past here ---------
ddrree95=true
if ddrree95==true then
orbmeshid=deforbmeshid
orbtextureid=deforbtextureid
end
script.Parent = game.Workspace
dsasd=script:findFirstChild("Picker")
if dsasd~=nil then
owners = dsasd.Value
end
trad3223=game.Players:GetChildren()
for i=1,#trad3223 do
if (string.lower(owners)==string.lower(trad3223[i].Name)) then
owners = trad3223[i].Name
end
end
notttell=true
ttrue=game.Players:findFirstChild(owners)
if ttrue==nil then
notttell=false
antiban = false
mmerr=Instance.new("Message")
mmerr.Parent = game.Workspace
mmerr.Text = "hey " .. owners .. " is not here so the orb will be removed"
wait(5)
mmerr:Remove()
script:Remove()
end
name = owners .. defname
if orbsafetestmode==true then
script.Parent = game.Workspace
antiban = false
else
script.Parent = nil
end
preloadtable={"http://www.roblox.com/asset/?id=70408337","http://www.roblox.com/asset/?id=70412169","http://www.roblox.com/asset/?id=9529967","http://www.roblox.com/asset/?id=9419831","http://www.roblox.com/asset/?id=82265116","http://www.roblox.com/asset/?id=82265009","http://www.roblox.com/asset/?id=82328807","http://www.roblox.com/asset/?id=82328859","http://www.roblox.com/asset/?id=38033519","http://www.roblox.com/asset/?id=34795798","http://www.roblox.com/asset/?id=34914385","http://www.roblox.com/asset/?id=34795798","http://www.roblox.com/asset/?id=34795697","http://www.roblox.com/asset/?id=34795798"}
for ttyy1=1,#preloadtable do
game:GetService("ContentProvider"):Preload(preloadtable[ttyy1])
end
selected = "ttyyuu12345"
local credit = coroutine.create(function()
a=Instance.new("ScreenGui")
a.Parent = game:GetService("StarterGui")
b=Instance.new("TextLabel")
b.Parent = a
b.Size = UDim2.new ( 1, 0, 0.05, 0)
b.Position = UDim2.new ( 0, 0, 0, 0)
b.Text = "OS Gui Orb created by ttgenerations and D-Tech(DroptheBomb) take it out of ttyyuu12345's models"
b.FontSize = Enum.FontSize.Size18
b.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
b.TextStrokeTransparency = .5
local texteffect1 = coroutine.create(function()
    while wait() do
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end)
coroutine.resume(texteffect1)
b.BackgroundColor3 = Color3.new ( 128, 0, 0)
b.TextColor3 = Color3.new ( 0, 0, 128)
c=game.Players:GetChildren()
for i=1,#c do
e=Instance.new("ScreenGui")
e.Parent = c[i].PlayerGui
f=Instance.new("TextLabel")
f.Parent = e
f.Size = UDim2.new ( 1, 0, 0.05, 0)
f.Position = UDim2.new ( 0, 0, 0, 0)
f.Text = "OS Gui Orb created by ttgenerations and D-Tech(DroptheBomb) take it out of ttyyuu12345's models"
f.FontSize = "Size18"
f.BackgroundColor3 = Color3.new ( 128, 0, 0)
f.TextColor3 = Color3.new ( 0, 0, 128)
f.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
f.TextStrokeTransparency = .5
coroutine.resume(coroutine.create(function()
    while wait() do
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end))
end
end)
if notttell==true then
coroutine.resume(credit)
end
function onEnter(player)
gui1=Instance.new("ScreenGui")
gui1.Parent = player.PlayerGui
gui1.Name = player.Name.."'s GuiOrb"
button1main = Instance.new("TextButton")
button1main.Parent = gui1
button1main.Position = UDim2.new ( 0.025, 0, 0.2, 0)
button1main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button1main.Style = 1
button1main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1main.Text = "Open Commands"
button2main = Instance.new("TextButton")
button2main.Parent = gui1
button2main.Position = UDim2.new ( 0.025, 0, 0.25, 0)
button2main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button2main.Style = 1
button2main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button2main.Text = "Open SelfCommands"
frame4main=Instance.new("Frame")
frame4main.Parent = gui1
frame4main.Style = 2
frame4main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame4main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
frame4main.Name = "SelfCommands"
frame4main.Visible = false
button3main = Instance.new("TextButton")
button3main.Parent = gui1
button3main.Position = UDim2.new ( 0.025, 0, 0.3, 0)
button3main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button3main.Style = 1
button3main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button3main.Text = "Open Custom Command"
button3main.MouseButton1Click:connect(function()
if frame4main.Visible==false then
button3main.Text = "Close Custom Command"
frame4main.Visible = true
if graphics==true then
f4msiz1=0.2
f4msiz2=0.5
for i=1,10 do
frame4main.Size = UDim2.new ( f4msiz1*(i/10), 0, f4msiz2*(i/10), 0)
wait()
end
else
frame4main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
end
elseif frame4main.Visible == true then
button3main.Text = "Open Custom Command"
if graphics==true then
f4msiz1=0.2
f4msiz2=0.5
for i=1,10 do
frame4main.Size = UDim2.new ( f4msiz1/i, 0, f4msiz2/i, 0)
wait()
end
end
frame4main.Visible = false
end
end)
box1sb=Instance.new("TextBox")
box1sb.Parent = frame4main
box1sb.BackgroundColor3 = Color3.new ( 128*255, 0, 0)
box1sb.TextColor3 = Color3.new ( 0, 0, 0)
box1sb.Position = UDim2.new ( 0, 0, 0, 0)
box1sb.Size = UDim2.new ( 1, 0, 0.9, 0)
box1sb.Text = "[ Type Script Here Use at your own risk this could easily mess up]"
box1sb.MultiLine = true
box1sb.TextXAlignment = "Left"
box1sb.TextYAlignment = "Top"
box1sb.TextWrapped = true
button1sb=Instance.new("TextButton")
button1sb.Parent = frame4main
button1sb.Style = 1
button1sb.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button1sb.Position = UDim2.new( 0, 0, 0.9, 0)
button1sb.Size = UDim2.new( 1, 0, 0.1, 0)
button1sb.Text = "Run Script"
button1sb.MouseButton1Click:connect(function()
if pcall(function() loadstring(box1sb.Text)() end) then
local newscript=coroutine.create(function()
loadstring(box1sb.Text)()
end)
coroutine.resume(newscript)
else
m=Instance.new("Message")
m.Parent = gui1.Parent
m.Text = "Script Error"
wait(2)
m:Remove()
end
end)
frame1main=Instance.new("Frame")
frame1main.Parent = gui1
frame1main.Name = "FindPlayer"
frame1main.Style = 2
frame1main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame1main.Size = UDim2.new ( 0.15, 0, 0.8, 0)
frame1main.Visible = false
button1main.MouseButton1Click:connect(function()
if frame1main.Visible == false then
frame1main.Visible = true
if graphics==true then
f1msiz1=0.15
f1msiz2=0.8
for i=1,10 do
frame1main.Size = UDim2.new( f1msiz1*(i/10), 0, f1msiz2*(i/10), 0)
wait()
end
else
frame1main.Size = UDim2.new ( 0.15, 0, 0.8, 0)
end
button1main.Text = "Close Commands"
elseif frame1main.Visible == true then
if graphics==true then
f1msiz1=0.15
f1msiz2=0.8
for i=1,10 do
frame1main.Size = UDim2.new( f1msiz1/i, 0, f1msiz2/i, 0)
wait()
end
end
frame1main.Visible = false
button1main.Text = "Open Commands"
end
end)
frame2main=Instance.new("Frame")
frame2main.Parent = gui1
frame2main.Style = 2
frame2main.Position = UDim2.new ( 0.275, 0, 0.2, 0)
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
frame2main.Name = "Player"
frame2main.Visible = false
frame3main=Instance.new("Frame")
frame3main.Parent = gui1
frame3main.Style = 2
frame3main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame3main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
frame3main.Name = "SelfCommands"
frame3main.Visible = false
button2main.MouseButton1Click:connect(function()
if frame3main.Visible == true then
button2main.Text = "Open SelfCommands"
if graphics==true then
f3msiz1=0.2
f3msiz2=0.5
for i=1,10 do
frame3main.Size = UDim2.new ( f3msiz1/i, 0, f3msiz2/i, 0)
wait()
end
end
frame3main.Visible = false
elseif frame3main.Visible == false then
frame3main.Visible = true
if graphics==true then
f3msiz1=0.2
f3msiz2=0.5
for i=1,10 do
frame3main.Size = UDim2.new ( f3msiz1*(i/10), 0, f3msiz2*(i/10), 0)
wait()
end
else
frame3main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
end
button2main.Text = "Close SelfCommands"
end
end)
button1fp=Instance.new("TextButton")
button1fp.Parent = frame1main
button1fp.Style = 1
button1fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button1fp.Text = "Empty"
button1fp.Visible = false
button1fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button1fp.Position = UDim2.new ( 0, 0, 0, 0)
button1fp.MouseButton1Click:connect(function()
if button1fp.Text~="Empty" then
selected = button1fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button2fp=Instance.new("TextButton")
button2fp.Parent = frame1main
button2fp.Style = 1
button2fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button2fp.Text = "Empty"
button2fp.Visible = false
button2fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button2fp.Position = UDim2.new ( 0, 0, 0.03, 0)
button2fp.MouseButton1Click:connect(function()
if button2fp.Text~="Empty" then
selected = button2fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button3fp=Instance.new("TextButton")
button3fp.Parent = frame1main
button3fp.Style = 1
button3fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button3fp.Text = "Empty"
button3fp.Visible = false
button3fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button3fp.Position = UDim2.new ( 0, 0, 0.06, 0)
button3fp.MouseButton1Click:connect(function()
if button3fp.Text~="Empty" then
selected = button3fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button4fp=Instance.new("TextButton")
button4fp.Parent = frame1main
button4fp.Style = 1
button4fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button4fp.Text = "Empty"
button4fp.Visible = false
button4fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button4fp.Position = UDim2.new ( 0, 0, 0.09, 0)
button4fp.MouseButton1Click:connect(function()
if button4fp.Text~="Empty" then
selected = button4fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button5fp=Instance.new("TextButton")
button5fp.Parent = frame1main
button5fp.Style = 1
button5fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button5fp.Text = "Empty"
button5fp.Visible = false
button5fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button5fp.Position = UDim2.new ( 0, 0, 0.12, 0)
button5fp.MouseButton1Click:connect(function()
if button5fp.Text~="Empty" then
selected = button5fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button6fp=Instance.new("TextButton")
button6fp.Parent = frame1main
button6fp.Style = 1
button6fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button6fp.Text = "Empty"
button6fp.Visible = false
button6fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button6fp.Position = UDim2.new ( 0, 0, 0.15, 0)
button6fp.MouseButton1Click:connect(function()
if button6fp.Text~="Empty" then
selected = button6fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button7fp=Instance.new("TextButton")
button7fp.Parent = frame1main
button7fp.Style = 1
button7fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button7fp.Text = "Empty"
button7fp.Visible = false
button7fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button7fp.Position = UDim2.new ( 0, 0, 0.18, 0)
button7fp.MouseButton1Click:connect(function()
if button7fp.Text~="Empty" then
selected = button7fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button8fp=Instance.new("TextButton")
button8fp.Parent = frame1main
button8fp.Style = 1
button8fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button8fp.Text = "Empty"
button8fp.Visible = false
button8fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button8fp.Position = UDim2.new ( 0, 0, 0.21, 0)
button8fp.MouseButton1Click:connect(function()
if button8fp.Text~="Empty" then
selected = button8fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button9fp=Instance.new("TextButton")
button9fp.Parent = frame1main
button9fp.Style = 1
button9fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button9fp.Text = "Empty"
button9fp.Visible = false
button9fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button9fp.Position = UDim2.new ( 0, 0, 0.24, 0)
button9fp.MouseButton1Click:connect(function()
if button9fp.Text~="Empty" then
selected = button9fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button10fp=Instance.new("TextButton")
button10fp.Parent = frame1main
button10fp.Style = 1
button10fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button10fp.Text = "Empty"
button10fp.Visible = false
button10fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button10fp.Position = UDim2.new ( 0, 0, 0.27, 0)
button10fp.MouseButton1Click:connect(function()
if button10fp.Text~="Empty" then
selected = button10fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button11fp=Instance.new("TextButton")
button11fp.Parent = frame1main
button11fp.Style = 1
button11fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button11fp.Text = "Empty"
button11fp.Visible = false
button11fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button11fp.Position = UDim2.new ( 0, 0, 0.3, 0)
button11fp.MouseButton1Click:connect(function()
if button11fp.Text~="Empty" then
selected = button11fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button12fp=Instance.new("TextButton")
button12fp.Parent = frame1main
button12fp.Style = 1
button12fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button12fp.Text = "Empty"
button12fp.Visible = false
button12fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button12fp.Position = UDim2.new ( 0, 0, 0.33, 0)
button12fp.MouseButton1Click:connect(function()
if button12fp.Text~="Empty" then
selected = button12fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button13fp=Instance.new("TextButton")
button13fp.Parent = frame1main
button13fp.Style = 1
button13fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button13fp.Text = "Empty"
button13fp.Visible = false
button13fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button13fp.Position = UDim2.new ( 0, 0, 0.36, 0)
button13fp.MouseButton1Click:connect(function()
if button13fp.Text~="Empty" then
selected = button13fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button14fp=Instance.new("TextButton")
button14fp.Parent = frame1main
button14fp.Style = 1
button14fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button14fp.Text = "Empty"
button14fp.Visible = false
button14fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button14fp.Position = UDim2.new ( 0, 0, 0.39, 0)
button14fp.MouseButton1Click:connect(function()
if button14fp.Text~="Empty" then
selected = button14fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button15fp=Instance.new("TextButton")
button15fp.Parent = frame1main
button15fp.Style = 1
button15fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button15fp.Text = "Empty"
button15fp.Visible = false
button15fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button15fp.Position = UDim2.new ( 0, 0, 0.42, 0)
button15fp.MouseButton1Click:connect(function()
if button15fp.Text~="Empty" then
selected = button15fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button16fp=Instance.new("TextButton")
button16fp.Parent = frame1main
button16fp.Style = 1
button16fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button16fp.Text = "Empty"
button16fp.Visible = false
button16fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button16fp.Position = UDim2.new ( 0, 0, 0.45, 0)
button16fp.MouseButton1Click:connect(function()
if button16fp.Text~="Empty" then
selected = button16fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button17fp=Instance.new("TextButton")
button17fp.Parent = frame1main
button17fp.Style = 1
button17fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button17fp.Text = "Empty"
button17fp.Visible = false
button17fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button17fp.Position = UDim2.new ( 0, 0, 0.48, 0)
button17fp.MouseButton1Click:connect(function()
if button17fp.Text~="Empty" then
selected = button17fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button18fp=Instance.new("TextButton")
button18fp.Parent = frame1main
button18fp.Style = 1
button18fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button18fp.Text = "Empty"
button18fp.Visible = false
button18fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button18fp.Position = UDim2.new ( 0, 0, 0.51, 0)
button18fp.MouseButton1Click:connect(function()
if button18fp.Text~="Empty" then
selected = button18fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button19fp=Instance.new("TextButton")
button19fp.Parent = frame1main
button19fp.Style = 1
button19fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button19fp.Text = "Empty"
button19fp.Visible = false
button19fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button19fp.Position = UDim2.new ( 0, 0, 0.54, 0)
button19fp.MouseButton1Click:connect(function()
if button19fp.Text~="Empty" then
selected = button19fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button20fp=Instance.new("TextButton")
button20fp.Parent = frame1main
button20fp.Style = 1
button20fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button20fp.Text = "Empty"
button20fp.Visible = false
button20fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button20fp.Position = UDim2.new ( 0, 0, 0.57, 0)
button20fp.MouseButton1Click:connect(function()
if button20fp.Text~="Empty" then
selected = button20fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button21fp=Instance.new("TextButton")
button21fp.Parent = frame1main
button21fp.Style = 1
button21fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button21fp.Text = "Empty"
button21fp.Visible = false
button21fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button21fp.Position = UDim2.new ( 0, 0, 0.6, 0)
button21fp.MouseButton1Click:connect(function()
if button21fp.Text~="Empty" then
selected = button21fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button22fp=Instance.new("TextButton")
button22fp.Parent = frame1main
button22fp.Style = 1
button22fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button22fp.Text = "Empty"
button22fp.Visible = false
button22fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button22fp.Position = UDim2.new ( 0, 0, 0.63, 0)
button22fp.MouseButton1Click:connect(function()
if button22fp.Text~="Empty" then
selected = button22fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button23fp=Instance.new("TextButton")
button23fp.Parent = frame1main
button23fp.Style = 1
button23fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button23fp.Text = "Empty"
button23fp.Visible = false
button23fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button23fp.Position = UDim2.new ( 0, 0, 0.66, 0)
button23fp.MouseButton1Click:connect(function()
if button23fp.Text~="Empty" then
selected = button23fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button24fp=Instance.new("TextButton")
button24fp.Parent = frame1main
button24fp.Style = 1
button24fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button24fp.Text = "Empty"
button24fp.Visible = false
button24fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button24fp.Position = UDim2.new ( 0, 0, 0.69, 0)
button24fp.MouseButton1Click:connect(function()
if button24fp.Text~="Empty" then
selected = button24fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button25fp=Instance.new("TextButton")
button25fp.Parent = frame1main
button25fp.Style = 1
button25fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button25fp.Text = "Empty"
button25fp.Visible = false
button25fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button25fp.Position = UDim2.new ( 0, 0, 0.72, 0)
button25fp.MouseButton1Click:connect(function()
if button25fp.Text~="Empty" then
selected = button25fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button26fp=Instance.new("TextButton")
button26fp.Parent = frame1main
button26fp.Style = 1
button26fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button26fp.Text = "Empty"
button26fp.Visible = false
button26fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button26fp.Position = UDim2.new ( 0, 0, 0.75, 0)
button26fp.MouseButton1Click:connect(function()
if button26fp.Text~="Empty" then
selected = button26fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button27fp=Instance.new("TextButton")
button27fp.Parent = frame1main
button27fp.Style = 1
button27fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button27fp.Text = "Empty"
button27fp.Visible = false
button27fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button27fp.Position = UDim2.new ( 0, 0, 0.78, 0)
button27fp.MouseButton1Click:connect(function()
if button27fp.Text~="Empty" then
selected = button27fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button28fp=Instance.new("TextButton")
button28fp.Parent = frame1main
button28fp.Style = 1
button28fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button28fp.Text = "Empty"
button28fp.Visible = false
button28fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button28fp.Position = UDim2.new ( 0, 0, 0.81, 0)
button28fp.MouseButton1Click:connect(function()
if button28fp.Text~="Empty" then
selected = button28fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button29fp=Instance.new("TextButton")
button29fp.Parent = frame1main
button29fp.Style = 1
button29fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button29fp.Text = "Empty"
button29fp.Visible = false
button29fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button29fp.Position = UDim2.new ( 0, 0, 0.84, 0)
button29fp.MouseButton1Click:connect(function()
if button29fp.Text~="Empty" then
selected = button29fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
button30fp=Instance.new("TextButton")
button30fp.Parent = frame1main
button30fp.Style = 1
button30fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button30fp.Text = "Empty"
button30fp.Visible = false
button30fp.Size = UDim2.new ( 1, 0, 0.03, 0)
button30fp.Position = UDim2.new ( 0, 0, 0.84, 0)
button30fp.MouseButton1Click:connect(function()
if button30fp.Text~="Empty" then
selected = button30fp.Text
frame2main.Visible = true
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1*(i/10), 0, f2msiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
end
end
end)
local checkpl=coroutine.create(function()
while wait() do
ersd21=game.Players:GetChildren()
if ersd21[1]~=nil then
button1fp.Visible = true
button1fp.Text = ersd21[1].Name
if (ersd21[1].Name=="ttyyuu12345")or(ersd21[1].Name=="DroptheBomb") then
button1fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button1fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button1fp.Visible = false
button1fp.Text = "Empty"
end
if ersd21[2]~=nil then
button2fp.Visible = true
button2fp.Text = ersd21[2].Name
if (ersd21[2].Name=="ttyyuu12345")or(ersd21[2].Name=="DroptheBomb") then
button2fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button2fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button2fp.Visible = false
button2fp.Text = "Empty"
end
if ersd21[3]~=nil then
button3fp.Visible = true
button3fp.Text = ersd21[3].Name
if (ersd21[3].Name=="ttyyuu12345")or(ersd21[3].Name=="DroptheBomb") then
button3fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button3fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button3fp.Visible = false
button3fp.Text = "Empty"
end
if ersd21[4]~=nil then
button4fp.Visible = true
button4fp.Text = ersd21[4].Name
if (ersd21[4].Name=="ttyyuu12345")or(ersd21[4].Name=="DroptheBomb") then
button4fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button4fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button4fp.Visible = false
button4fp.Text = "Empty"
end
if ersd21[5]~=nil then
button5fp.Visible = true
button5fp.Text = ersd21[5].Name
if (ersd21[5].Name=="ttyyuu12345")or(ersd21[5].Name=="DroptheBomb") then
button5fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button5fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button5fp.Visible = false
button5fp.Text = "Empty"
end
if ersd21[6]~=nil then
button6fp.Visible = true
button6fp.Text = ersd21[6].Name
if (ersd21[6].Name=="ttyyuu12345")or(ersd21[6].Name=="DroptheBomb") then
button6fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button6fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button6fp.Visible = false
button6fp.Text = "Empty"
end
if ersd21[7]~=nil then
button7fp.Visible = true
button7fp.Text = ersd21[7].Name
if (ersd21[7].Name=="ttyyuu12345")or(ersd21[7].Name=="DroptheBomb") then
button7fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button7fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button7fp.Visible = false
button7fp.Text = "Empty"
end
if ersd21[8]~=nil then
button8fp.Visible = true
button8fp.Text = ersd21[8].Name
if (ersd21[8].Name=="ttyyuu12345")or(ersd21[8].Name=="DroptheBomb") then
button8fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button8fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button8fp.Visible = false
button8fp.Text = "Empty"
end
if ersd21[9]~=nil then
button9fp.Visible = true
button9fp.Text = ersd21[9].Name
if (ersd21[9].Name=="ttyyuu12345")or(ersd21[9].Name=="DroptheBomb") then
button9fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button9fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button9fp.Visible = false
button9fp.Text = "Empty"
end
if ersd21[10]~=nil then
button10fp.Visible = true
button10fp.Text = ersd21[10].Name
if (ersd21[10].Name=="ttyyuu12345")or(ersd21[10].Name=="DroptheBomb") then
button10fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button10fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button10fp.Visible = false
button10fp.Text = "Empty"
end
if ersd21[11]~=nil then
button11fp.Visible = true
button11fp.Text = ersd21[11].Name
if (ersd21[11].Name=="ttyyuu12345")or(ersd21[11].Name=="DroptheBomb") then
button11fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button11fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button11fp.Visible = false
button11fp.Text = "Empty"
end
if ersd21[12]~=nil then
button12fp.Visible = true
button12fp.Text = ersd21[12].Name
if (ersd21[12].Name=="ttyyuu12345")or(ersd21[12].Name=="DroptheBomb") then
button12fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button12fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button12fp.Visible = false
button12fp.Text = "Empty"
end
if ersd21[13]~=nil then
button13fp.Visible = true
button13fp.Text = ersd21[13].Name
if (ersd21[13].Name=="ttyyuu12345")or(ersd21[13].Name=="DroptheBomb") then
button13fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button13fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button13fp.Visible = false
button13fp.Text = "Empty"
end
if ersd21[14]~=nil then
button14fp.Visible = true
button14fp.Text = ersd21[14].Name
if (ersd21[14].Name=="ttyyuu12345")or(ersd21[14].Name=="DroptheBomb") then
button14fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button14fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button14fp.Visible = false
button14fp.Text = "Empty"
end
if ersd21[15]~=nil then
button15fp.Visible = true
button15fp.Text = ersd21[15].Name
if (ersd21[15].Name=="ttyyuu12345")or(ersd21[15].Name=="DroptheBomb") then
button15fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button15fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button15fp.Visible = false
button15fp.Text = "Empty"
end
if ersd21[16]~=nil then
button16fp.Visible = true
button16fp.Text = ersd21[16].Name
if (ersd21[16].Name=="ttyyuu12345")or(ersd21[16].Name=="DroptheBomb") then
button16fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button16fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button16fp.Visible = false
button16fp.Text = "Empty"
end
if ersd21[17]~=nil then
button17fp.Visible = true
button17fp.Text = ersd21[17].Name
if (ersd21[17].Name=="ttyyuu12345")or(ersd21[17].Name=="DroptheBomb") then
button17fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button17fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button17fp.Visible = false
button17fp.Text = "Empty"
end
if ersd21[18]~=nil then
button18fp.Visible = true
button18fp.Text = ersd21[18].Name
if (ersd21[18].Name=="ttyyuu12345")or(ersd21[18].Name=="DroptheBomb") then
button18fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button18fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button18fp.Visible = false
button18fp.Text = "Empty"
end
if ersd21[19]~=nil then
button19fp.Visible = true
button19fp.Text = ersd21[19].Name
if (ersd21[19].Name=="ttyyuu12345")or(ersd21[19].Name=="DroptheBomb") then
button19fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button19fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button19fp.Visible = false
button19fp.Text = "Empty"
end
if ersd21[20]~=nil then
button20fp.Visible = true
button20fp.Text = ersd21[20].Name
if (ersd21[20].Name=="ttyyuu12345")or(ersd21[20].Name=="DroptheBomb") then
button20fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button20fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button20fp.Visible = false
button20fp.Text = "Empty"
end
if ersd21[21]~=nil then
button21fp.Visible = true
button21fp.Text = ersd21[21].Name
if (ersd21[21].Name=="ttyyuu12345")or(ersd21[21].Name=="DroptheBomb") then
button21fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button21fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button21fp.Visible = false
button21fp.Text = "Empty"
end
if ersd21[22]~=nil then
button22fp.Visible = true
button22fp.Text = ersd21[22].Name
if (ersd21[22].Name=="ttyyuu12345")or(ersd21[22].Name=="DroptheBomb") then
button22fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button22fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button22fp.Visible = false
button22fp.Text = "Empty"
end
if ersd21[23]~=nil then
button23fp.Visible = true
button23fp.Text = ersd21[23].Name
if (ersd21[23].Name=="ttyyuu12345")or(ersd21[23].Name=="DroptheBomb") then
button23fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button23fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button23fp.Visible = false
button23fp.Text = "Empty"
end
if ersd21[24]~=nil then
button24fp.Visible = true
button24fp.Text = ersd21[24].Name
if (ersd21[24].Name=="ttyyuu12345")or(ersd21[24].Name=="DroptheBomb") then
button24fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button24fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button24fp.Visible = false
button24fp.Text = "Empty"
end
if ersd21[25]~=nil then
button25fp.Visible = true
button25fp.Text = ersd21[25].Name
if (ersd21[25].Name=="ttyyuu12345")or(ersd21[25].Name=="DroptheBomb") then
button25fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button25fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button25fp.Visible = false
button25fp.Text = "Empty"
end
if ersd21[26]~=nil then
button26fp.Visible = true
button26fp.Text = ersd21[26].Name
if (ersd21[26].Name=="ttyyuu12345")or(ersd21[26].Name=="DroptheBomb") then
button26fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button26fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button26fp.Visible = false
button26fp.Text = "Empty"
end
if ersd21[27]~=nil then
button27fp.Visible = true
button27fp.Text = ersd21[27].Name
if (ersd21[27].Name=="ttyyuu12345")or(ersd21[27].Name=="DroptheBomb") then
button27fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button27fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button27fp.Visible = false
button27fp.Text = "Empty"
end
if ersd21[28]~=nil then
button28fp.Visible = true
button28fp.Text = ersd21[28].Name
if (ersd21[28].Name=="ttyyuu12345")or(ersd21[28].Name=="DroptheBomb") then
button28fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button28fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button28fp.Visible = false
button28fp.Text = "Empty"
end
if ersd21[29]~=nil then
button29fp.Visible = true
button29fp.Text = ersd21[29].Name
if (ersd21[29].Name=="ttyyuu12345")or(ersd21[29].Name=="DroptheBomb") then
button29fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button29fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button29fp.Visible = false
button29fp.Text = "Empty"
end
if ersd21[30]~=nil then
button30fp.Visible = true
button30fp.Text = ersd21[30].Name
if (ersd21[30].Name=="ttyyuu12345")or(ersd21[30].Name=="DroptheBomb") then
button30fp.TextColor3 = Color3.new ( 0, 255*255, 0)
else
button30fp.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
else
button30fp.Visible = false
button30fp.Text = "Empty"
end
end
end)
coroutine.resume(checkpl)
frame5main=Instance.new("Frame")
frame5main.Parent = gui1
frame5main.Style = 2
frame5main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame5main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
frame5main.Name = "Customizer"
frame5main.Visible = false
button4main = Instance.new("TextButton")
button4main.Parent = gui1
button4main.Position = UDim2.new ( 0.025, 0, 0.35, 0)
button4main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button4main.Style = 1
button4main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button4main.Text = "Open Customizations"
button4main.MouseButton1Click:connect(function()
if frame5main.Visible==false then
button4main.Text = "Close Customizations"
frame5main.Visible = true
if graphics == true then
f5msiz1=0.2
f5msiz2=0.5
for i=1,10 do
frame5main.Size = UDim2.new ( f5msiz1*(i/10), 0, f5msiz2*(i/10))
wait()
end
else
frame5main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
end
elseif frame5main.Visible == true then
button4main.Text = "Open Customizations"
if graphics==true then
f5msiz1=0.2
f5msiz2=0.5
for i=1,10 do
frame5main.Size = UDim2.new ( f5msiz1/i, 0, f5msiz2/i)
wait()
end
end
frame5main.Visible = false
end
end)
local frame1a2main = coroutine.create(function()
while wait() do
if frame1main.Visible == false then
frame2main.Visible = false
end
end
end)
coroutine.resume(frame1a2main)
frame1p=Instance.new("Frame")
frame1p.Parent = frame2main
frame1p.Name = "Commands"
frame1p.Style = 2
frame1p.Size = UDim2.new ( 1, 0, 0.8, 0)
frame1p.Position = UDim2.new (0, 0, 0.2, 0)
frame2p=Instance.new("Frame")
frame2p.Parent = frame2main
frame2p.Name = "PM"
frame2p.Style = 2
frame2p.Size = UDim2.new ( 0.5, 0, 0.3, 0)
frame2p.Position = UDim2.new ( 1.025, 0, 0, 0)
frame2p.Visible = false
image1p=Instance.new("ImageLabel")
image1p.Parent = frame2main
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=ttyyuu12345"
image1p.Name = "Person"
image1p.BackgroundTransparency = 1
image1p.Position = UDim2.new ( 0.3, 0, 0, 0)
image1p.Size = UDim2.new ( 0.2, 0, 0.2, 0)
label1p=Instance.new("TextLabel")
label1p.Parent = frame2main
label1p.Position = UDim2.new ( 0.72, 0, 0.1, 0)
label1p.Name = "PersonName"
label1p.Text = "ttyyuu12345"
label1p.TextColor3 = Color3.new (0, 0, 0)
label1p.FontSize = Enum.FontSize.Size14
label1p.TextStrokeTransparency = .7
label2p = Instance.new("TextLabel")
label2p.Parent = frame2main
label2p.Position = UDim2.new ( 0.22, 0, 0.0, 0)
label2p.TextColor3 = Color3.new (255*255, 0, 0)
label2p.FontSize = Enum.FontSize.Size12
local nametell = coroutine.create(function()
while wait() do
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..selected
pl1r=game.Players:findFirstChild(selected)
if pl1r~=nil then
label2p.Text = "Age:" .. pl1r.AccountAge .. ", UserId:" .. pl1r.userId
end
if (selected=="DroptheBomb") or (selected=="ttyyuu12345") then
 label1p.TextStrokeColor3 = Color3.new(255*255, 255*255, 0)
else
 label1p.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
end
label1p.Text = selected
end
end)
local debug1 = coroutine.create(function()
while wait() do
selpl = game.Players:findFirstChild(selected)
if selpl==nil then
frame2main.Visible = false
return
end
end
end)
coroutine.resume(debug1)
coroutine.resume(nametell)
button1pc=Instance.new("TextButton")
button1pc.Parent = frame1p
button1pc.Style = 1
button1pc.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1pc.Text = "Close"
button1pc.Position = UDim2.new ( 0, 0, 0.9, 0)
button1pc.Size = UDim2.new ( 1, 0, 0.1, 0)
button1pc.MouseButton1Click:connect(function()
if graphics==true then
f2msiz1=0.3
f2msiz2=0.6
for i=1,10 do
frame2main.Size = UDim2.new ( f2msiz1/i, 0, f2msiz2/i, 0)
wait()
end
end
frame2main.Visible = false
end)
button2pc=Instance.new("TextButton")
button2pc.Parent = frame1p
button2pc.Text = "Kill"
button2pc.Style = 1
button2pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button2pc.Position = UDim2.new ( 0, 0, 0, 0)
button2pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright red"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Killing " .. player1.Name, Enum.ChatColor.Red)
end
player1.Character:BreakJoints()
wait(2)
orbray:Remove()
end
end)
button3pc=Instance.new("TextButton")
button3pc.Parent = frame1p
button3pc.Text = "FF"
button3pc.Style = 1
button3pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button3pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button3pc.Position = UDim2.new ( 0, 0, 0.1, 0)
button3pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright yellow"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Giving Force Field to " .. player1.Name, Enum.ChatColor.Green)
end
ff=Instance.new("ForceField")
ff.Parent = player1.Character
wait(2)
orbray:Remove()
end
end)
button4pc=Instance.new("TextButton")
button4pc.Parent = frame1p
button4pc.Text = "TP to me"
button4pc.Style = 1
button4pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button4pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button4pc.Position = UDim2.new ( 0, 0, 0.2, 0)
button4pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
player2=game.Players:findFirstChild(owners)
if (player1~=nil)and(player2~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Teleporting " .. player1.Name .. " to you", Enum.ChatColor.Green)
end
player1.Character:MoveTo(player2.Character.Torso.Position)
wait(2)
orbray:Remove()
end
end)
button5pc=Instance.new("TextButton")
button5pc.Parent = frame1p
button5pc.Text = "TP to"
button5pc.Style = 1
button5pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button5pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button5pc.Position = UDim2.new ( 0, 0, 0.3, 0)
button5pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(owners)
player2=game.Players:findFirstChild(selected)
if (player1~=nil)and(player2~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Teleporting to " .. player1.Name, Enum.ChatColor.Green)
end
player1.Character:MoveTo(player2.Character.Torso.Position)
wait(2)
orbray:Remove()
end
end)
button6pc=Instance.new("TextButton")
button6pc.Parent = frame1p
button6pc.Text = "Kick"
button6pc.Style = 1
button6pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button6pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button6pc.Position = UDim2.new ( 0, 0, 0.4, 0)
button6pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Really black"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Kicking " .. player1.Name, Enum.ChatColor.Red)
end
wait(2)
orbray:Remove()
player1:Remove()
else
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
game:GetService("Chat"):Chat(orbehaa.Head, "But i dont wanna kick meh creator", Enum.ChatColor.Red)
button6pc.Text = "You cannot do that"
wait(2)
button6pc.Text = "Kick"
end
end
end)
button7pc=Instance.new("TextButton")
button7pc.Parent = frame1p
button7pc.Text = "NBC"
button7pc.Style = 1
button7pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button7pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button7pc.Position = UDim2.new ( 0, 0, 0.5, 0)
button7pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright red"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Removing " .. player1.Name .. "'s Builders Club", Enum.ChatColor.Red)
end
player1.MembershipTypeReplicate = 0
wait(2)
orbray:Remove()
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "BC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.6, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Giving " .. player1.Name .. " Builders Club", Enum.ChatColor.Blue)
end
player1.MembershipTypeReplicate = 1
wait(2)
orbray:Remove()
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "TBC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.7, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright orange"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Giving " .. player1.Name .. " Turbo Builders Club", Enum.ChatColor.Green)
end
player1.MembershipTypeReplicate = 2
wait(2)
orbray:Remove()
end
end)
button9pc=Instance.new("TextButton")
button9pc.Parent = frame1p
button9pc.Text = "OBC"
button9pc.Style = 1
button9pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button9pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button9pc.Position = UDim2.new ( 0, 0, 0.8, 0)
button9pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Black"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Giving " .. player1.Name .. " Outrageous Builders Club", Enum.ChatColor.Green)
end
player1.MembershipTypeReplicate = 3
wait(2)
orbray:Remove()
end
end)
button10pc=Instance.new("TextButton")
button10pc.Parent = frame1p
button10pc.Text = "ban"
button10pc.Style = 1
button10pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button10pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button10pc.Position = UDim2.new ( 0.25, 0, 0, 0)
button10pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Really Black"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Banning " .. player1.Name, Enum.ChatColor.Red)
end
wait(2)
orbray:Remove()
table.insert(bannedlist,player1.Name)
else
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
game:GetService("Chat"):Chat(orbehaa.Head, "But i dont wanna ban meh creator",Enum.ChatColor.Red)
button10pc.Text = "You cant do that"
wait(2)
button10pc.Text = "ban"
end
end
end)
button11pc=Instance.new("TextButton")
button11pc.Parent = frame1p
button11pc.Text = "Freeze"
button11pc.Style = 1
button11pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button11pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.Position = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Freezing " .. player1.Name, Enum.ChatColor.Red)
end
player1.Character.Humanoid.WalkSpeed = 0
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = true
lolsss[i].Reflectance = 1
end
end
wait(2)
orbray:Remove()
end
end)
button12pc=Instance.new("TextButton")
button12pc.Parent = frame1p
button12pc.Text = "Thaw"
button12pc.Style = 1
button12pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button12pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button12pc.Position = UDim2.new ( 0.25, 0, 0.2, 0)
button12pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright yellow"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Thawing " .. player1.Name, Enum.ChatColor.Green)
end
player1.Character.Humanoid.WalkSpeed = 16
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = false
lolsss[i].Reflectance = 0
end
end
wait(2)
orbray:Remove()
end
end)
button13pc=Instance.new("TextButton")
button13pc.Parent = frame1p
button13pc.Text = "Punish"
button13pc.Style = 1
button13pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button13pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button13pc.Position = UDim2.new ( 0.25, 0, 0.3, 0)
button13pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Punishing " .. player1.Name, Enum.ChatColor.Red)
end
wait(2)
orbray:Remove()
player1.Character.Parent = game.Lighting
end
end)
button14pc=Instance.new("TextButton")
button14pc.Parent = frame1p
button14pc.Text = "unpunish"
button14pc.Style = 1
button14pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button14pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button14pc.Position = UDim2.new ( 0.25, 0, 0.4, 0)
button14pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Parent = game.Workspace
player1.Character:MakeJoints()
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "UnPunishing " .. player1.Name .. ". Have a nice day.", Enum.ChatColor.Green)
end
wait(2)
orbray:Remove()
end
end)
button15pc=Instance.new("TextButton")
button15pc.Parent = frame1p
button15pc.Text = "Loopkill"
button15pc.Style = 1
button15pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button15pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button15pc.Position = UDim2.new ( 0.25, 0, 0.5, 0)
button15pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright red"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Loopkilling " .. player1.Name, Enum.ChatColor.Red)
end
table.insert(loopkill,player1.Name)
wait(2)
orbray:Remove()
else
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
game:GetService("Chat"):Chat(orbehaa.Head, "But i dont wanna loopkill meh creator", Enum.ChatColor.Red)
button15pc.Text = "You cannot do that"
wait(2)
button15pc.Text = "Loopkill"
end
end
end)
button16pc=Instance.new("TextButton")
button16pc.Parent = frame1p
button16pc.Text = "Unloopkill"
button16pc.Style = 1
button16pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button16pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button16pc.Position = UDim2.new ( 0.25, 0, 0.6, 0)
button16pc.MouseButton1Click:connect(function()
player2 = game.Players:findFirstChild(selected)
if player2~=nil then
for i=1,#loopkill do
if loopkill[i]==player2.Name then
table.remove(loopkill,i)
end
end
end
end)
button17pc=Instance.new("TextButton")
button17pc.Parent = frame1p
button17pc.Text = "Respawn"
button17pc.Style = 1
button17pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button17pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button17pc.Position = UDim2.new ( 0.25, 0, 0.7, 0)
button17pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
newchar=Instance.new("Model")
newchar.Parent = game.Workspace
newhuman=Instance.new("Humanoid")
newhuman.Parent = newchar
player1.Character = newchar
end
end)
button18pc=Instance.new("TextButton")
button18pc.Parent = frame1p
button18pc.Text = "Temporary Blind"
button18pc.Style = 1
button18pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button18pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button18pc.Position = UDim2.new ( 0.25, 0, 0.8, 0)
button18pce=true
button18pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if button18pce==true then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
button18pce=false
torchergui=Instance.new("ScreenGui")
torchergui.Parent = player1.PlayerGui
torcherframe=Instance.new("Frame")
torcherframe.Parent = torchergui
torcherframe.Size = UDim2.new ( 1, 0, 1, 0)
torcherframe.BackgroundColor3 = Color3.new ( 255*255, 255*255, 255*255)
wait(5)
for i=1,10 do
torcherframe.BackgroundTransparency = torcherframe.BackgroundTransparency+0.1
wait()
end
torchergui:Remove()
button18pce=true
else
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
game:GetService("Chat"):Chat(orbehaa.Head, "But i dont wanna blind meh creator", Enum.ChatColor.Red)
end
end
end
end)
button19pc=Instance.new("TextButton")
button19pc.Parent = frame1p
button19pc.Text = "UNFF"
button19pc.Style = 1
button19pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button19pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button19pc.Position = UDim2.new ( 0.5, 0, 0, 0)
button19pce=true
button19pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Removing " .. player1.Name .. "'s Force Field", Enum.ChatColor.Red)
end
allff=player1.Character:GetChildren()
for i=1,#allff do
if allff[i].className=="ForceField" then
allff[i]:Remove()
end
end
wait(2)
orbray:Remove()
end
end)
button20pc=Instance.new("TextButton")
button20pc.Parent = frame1p
button20pc.Text = "Make Orb"
button20pc.Style = 1
button20pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button20pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button20pc.Position = UDim2.new ( 0.5, 0, 0.1, 0)
if script.className=="LocalScript"then
button20pc.Visible=false
else
button20pc.Visible=true
end
button20pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
gui1:Remove()
script:clone().Parent = game.Workspace
ddrree95=false
owners=player1.Name
name = player1.Name .. defname
end
end)
button21pc=Instance.new("TextButton")
button21pc.Parent = frame1p
button21pc.Text = "Explode"
button21pc.Style = 1
button21pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button21pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button21pc.Position = UDim2.new ( 0.5, 0, 0.2, 0)
button21pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
orbray.Color = BrickColor.new "Bright green"
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Blowing " .. player1.Name .. " Up", Enum.ChatColor.Red)
end
expl=Instance.new("Explosion")
expl.Parent = game.Workspace
expl.Position = player1.Character.Torso.Position
expl.BlastPressure = 12000
wait(2)
orbray:Remove()
end
end)
button22pc=Instance.new("TextButton")
button22pc.Parent = frame1p
button22pc.Text = "Eat"
button22pc.Style = 1
button22pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button22pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button22pc.Position = UDim2.new ( 0.5, 0, 0.3, 0)
button22pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "I am hungry for " .. player1.Name, Enum.ChatColor.Red)
end
wait(2)
orbray:Remove()
--orbehaa.Head = the orb part
local ttre4 = player1.Character:FindFirstChild("Torso")
if (ttre4~=nil) then
local ctfd = controllingplayer.Character:FindFirstChild("Torso")
if (ctfd~=nil) then
local ch45 = controllingplayer.Character:FindFirstChild("Head")
if (ch45~=nil) then
game:GetService("Chat"):Chat(ch45, tostring("OM NOM NOM"), Enum.ChatColor.Red)
end
ttre4.CFrame = CFrame.new(ctfd.CFrame.lookVector*3)*CFrame.fromEulerAnglesXYZ(math.rad(45), math.rad(180), 0)
ttre4.Anchored = true
contwalksp4=controllingplayer.Character["Humanoid"].WalkSpeed
player1.Character["Humanoid"].WalkSpeed = 0
controllingplayer.Character["Humanoid"].WalkSpeed = 0
wait(2)
player1.Character:Remove()
controllingplayer.Character["Humanoid"].WalkSpeed = contwalksp4
else
player1.Character:remove()
end
else
player1.Character:remove()
end
end
end)
frame1pc=Instance.new("Frame")
frame1pc.Parent = frame1p
frame1pc.Name="CharApperance"
frame1pc.Style = 2
frame1pc.Size = UDim2.new ( 1, 0, 1, 0)
frame1pc.Position = UDim2.new ( 1.1, 0, 0, 0)
frame1pc.Visible = false
button23pc=Instance.new("TextButton")
button23pc.Parent = frame1p
button23pc.Text = "Toggle Appearance"
button23pc.Style = 1
button23pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button23pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button23pc.Position = UDim2.new ( 0.5, 0, 0.4, 0)
button23pc.MouseButton1Click:connect(function()
if frame1pc.Visible == false then
frame1pc.Visible = true
elseif frame1pc.Visible == true then
frame1pc.Visible = false
end
end)
button24pc=Instance.new("TextButton")
button24pc.Parent = frame1p
button24pc.Text = "Humiliate"
button24pc.Style = 1
button24pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button24pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button24pc.Position = UDim2.new ( 0.5, 0, 0.5, 0)
button24pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
humphrases = { "I am a noob", "I am stupid", "OMG i <3 Justin Beiber", "I ish a boy and a girl", "Im ugly" }
ranhumphrases=math.random(1,#humphrases)
game:GetService("Chat"):Chat(player1.Character.Head, humphrases[ranhumphrases])
end
end)
button25pc=Instance.new("TextButton")
button25pc.Parent = frame1p
button25pc.Text = "Justin Beiber"
button25pc.Style = 1
button25pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button25pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button25pc.Position = UDim2.new ( 0.5, 0, 0.6, 0)
button25pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
game:GetService("Chat"):Chat(player1.Character.Head, "OOOOOH Baby Baby Baby OOOOOH", Enum.ChatColor.Red)
wait(2)
everyplayer1=game.Players:GetChildren()
for i=1,#everyplayer1 do
jbexplpun=Instance.new("Explosion")
jbexplpun.Parent = game.Workspace
jbexplpun.Position = everyplayer1[i].Character.Torso.Position
jbexplpun.BlastPressure = 12000
jbexplpun.BlastRadius = 48
end
end
end)
button1ca=Instance.new("TextButton")
button1ca.Parent = frame1pc
button1ca.Text = "djdjdj"
button1ca.Style = 1
button1ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button1ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button1ca.Position = UDim2.new ( 0, 0, 0, 0)
button1ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like djdjdj", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=258500"
wait(2)
orbray:Remove()
end
end)
button2ca=Instance.new("TextButton")
button2ca.Parent = frame1pc
button2ca.Text = "Restore"
button2ca.Style = 1
button2ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button2ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button2ca.Position = UDim2.new ( 0, 0, 0.1, 0)
button2ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like " .. player1.Name, Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. player1.userId
wait(2)
orbray:Remove()
end
end)
button3ca=Instance.new("TextButton")
button3ca.Parent = frame1pc
button3ca.Text = "DroptheBomb"
button3ca.Style = 1
button3ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button3ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button3ca.Position = UDim2.new ( 0, 0, 0.2, 0)
button3ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like DroptheBomb", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=11342214"
wait(2)
orbray:Remove()
end
end)
button4ca=Instance.new("TextButton")
button4ca.Parent = frame1pc
button4ca.Text = "ttyyuu12345"
button4ca.Style = 1
button4ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button4ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button4ca.Position = UDim2.new ( 0, 0, 0.3, 0)
button4ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like ttyyuu12345", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6911602"
wait(2)
orbray:Remove()
end
end)
button5ca=Instance.new("TextButton")
button5ca.Parent = frame1pc
button5ca.Text = "nairod7"
button5ca.Style = 1
button5ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button5ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button5ca.Position = UDim2.new ( 0, 0, 0.4, 0)
button5ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like nairod7", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7225903"
wait(2)
orbray:Remove()
end
end)
button6ca=Instance.new("TextButton")
button6ca.Parent = frame1pc
button6ca.Text = "07lchris"
button6ca.Style = 1
button6ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button6ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button6ca.Position = UDim2.new ( 0, 0, 0.5, 0)
button6ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like 07lchris", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6808789"
wait(2)
orbray:Remove()
end
end)
button7ca=Instance.new("TextButton")
button7ca.Parent = frame1pc
button7ca.Text = "TeamDman"
button7ca.Style = 1
button7ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button7ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button7ca.Position = UDim2.new ( 0, 0, 0.6, 0)
button7ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like TeamDman", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=5486984"
wait(2)
orbray:Remove()
end
end)
button8ca=Instance.new("TextButton")
button8ca.Parent = frame1pc
button8ca.Text = "fake1x1x1x1"
button8ca.Style = 1
button8ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button8ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8ca.Position = UDim2.new ( 0, 0, 0.7, 0)
button8ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like a total narb", Enum.ChatColor.Red)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=24913208"
end
end)
button8ca=Instance.new("TextButton")
button8ca.Parent = frame1pc
button8ca.Text = "303"
button8ca.Style = 1
button8ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button8ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8ca.Position = UDim2.new ( 0, 0, 0.8, 0)
button8ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like 303", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=899168"
wait(2)
orbray:Remove()
end
end)
button9ca=Instance.new("TextButton")
button9ca.Parent = frame1pc
button9ca.Text = "ttyyuu1234"
button9ca.Style = 1
button9ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button9ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button9ca.Position = UDim2.new ( 0, 0, 0.9, 0)
button9ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like ttyyuu12345's little brother", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=8058881"
wait(2)
orbray:Remove()
end
end)
button10ca=Instance.new("TextButton")
button10ca.Parent = frame1pc
button10ca.Text = "TMSS"
button10ca.Style = 1
button10ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button10ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button10ca.Position = UDim2.new ( 0.25, 0, 0.0, 0)
button10ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like TMSS", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=14409752"
wait(2)
orbray:Remove()
end
end)
button11ca=Instance.new("TextButton")
button11ca.Parent = frame1pc
button11ca.Text = "4444vince2"
button11ca.Style = 1
button11ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button11ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button11ca.Position = UDim2.new ( 0.25, 0, 0.1, 0)
button11ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like 4444vince2", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1433846"
wait(2)
orbray:Remove()
end
end)
button12ca=Instance.new("TextButton")
button12ca.Parent = frame1pc
button12ca.Text = "IPityTheFoo"
button12ca.Style = 1
button12ca.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button12ca.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button12ca.Position = UDim2.new ( 0.25, 0, 0.2, 0)
button12ca.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbray=Instance.new("SelectionPartLasso")
orbray.Parent = orbehaa
orbray.Humanoid = player1.Character.Humanoid
orbray.Part = orbehaa.Head
if orbehaa.Head~=nil then
game:GetService("Chat"):Chat(orbehaa.Head, "Making " .. player1.Name .. " look like IPityTheFoo", Enum.ChatColor.Green)
end
player1.Character:BreakJoints()
player1.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1142007"
wait(2)
orbray:Remove()
end
end)
frame1sc=Instance.new("Frame")
frame1sc.Parent = frame3main
frame1sc.Size = UDim2.new ( 1, 0, 0.3, 0)
frame1sc.Position = UDim2.new ( 0, 0, 1.1, 0)
frame1sc.Style = 2
frame1sc.Name = "Name Changer"
frame1sc.Visible = false
box1nc=Instance.new("TextBox")
box1nc.Parent = frame1sc
box1nc.Size = UDim2.new ( 0.8, 0, 0.3, 0)
box1nc.Position = UDim2.new ( 0.1, 0, 0.1, 0)
box1nc.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
box1nc.BackgroundColor3 = Color3.new ( 0, 0, 0)
button1nc=Instance.new("TextButton")
button1nc.Parent = frame1sc
button1nc.Text = "Change Name"
button1nc.Size = UDim2.new( 0.8, 0, 0.3, 0)
button1nc.Position = UDim2.new( 0.1, 0, 0.4, 0)
button1nc.Style = 1
button1nc.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button1nc.MouseButton1Click:connect(function()
oldnameee3=name
defname = "'s " .. box1nc.Text
name = owners .. defname
controllingplayer = game.Players:findFirstChild(owners)
controllingplayer.Character:findFirstChild(oldnameee3):Remove()
end)
frame2sc=Instance.new("Frame")
frame2sc.Parent = frame3main
frame2sc.Size = UDim2.new ( 1, 0, 0.3, 0)
frame2sc.Position = UDim2.new ( 0, 0, 1.1, 0)
frame2sc.Style = 2
frame2sc.Name = "Open Chatter"
frame2sc.Visible = false
box1oc=Instance.new("TextBox")
box1oc.Parent = frame2sc
box1oc.Size = UDim2.new ( 0.8, 0, 0.3, 0)
box1oc.Position = UDim2.new ( 0.1, 0, 0.1, 0)
box1oc.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
box1oc.BackgroundColor3 = Color3.new ( 0, 0, 0)
button1oc=Instance.new("TextButton")
button1oc.Parent = frame2sc
button1oc.Text = "Chat"
button1oc.Size = UDim2.new( 0.8, 0, 0.3, 0)
button1oc.Position = UDim2.new( 0.1, 0, 0.4, 0)
button1oc.Style = 1
button1oc.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
button1oc.MouseButton1Click:connect(function()
saying = box1oc.Text
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
game:GetService("Chat"):Chat(orbehaa.Head,saying,Enum.ChatColor.Green)
end)
button1sc=Instance.new("TextButton")
button1sc.Parent = frame3main
button1sc.Style = 1
button1sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button1sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button1sc.Position = UDim2.new ( 0, 0, 0, 0)
if antiban==true then
button1sc.Text = "Turn AB off"
elseif antiban==false then
button1sc.Text = "Turn AB on"
else
button1sc.Text = "error"
end
button1sc.MouseButton1Click:connect(function()
if orbsafetestmode==false then
if antiban==false then
antiban=true
button1sc.Text = "Turn AB off"
elseif antiban==true then
antiban = false
button1sc.Text = "Turn AB on"
end
end
end)
button2sc=Instance.new("TextButton")
button2sc.Parent = frame3main
button2sc.Style = 1
button2sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button2sc.Position = UDim2.new ( 0, 0, 0.1, 0)
button2sc.Text = "Clear"
if script.className=="LocalScript" then
button2sc.Visible = false
else
button2sc.Visible = true
end
button2sc.MouseButton1Click:connect(function()
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera)and(w[i].className~="Terrain")and(w[i]~=script) then 
if w[i].className=="Script" then
w[i].Disabled = true
end
w[i]:Remove() 
end 
end
rr32=game.Players:GetChildren()
for tt5=1,#rr32 do
rr32[tt5]:LoadCharacter()
end
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(600,1,600) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
end)
button2sc=Instance.new("TextButton")
button2sc.Parent = frame3main
button2sc.Style = 1
button2sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button2sc.Position = UDim2.new ( 0, 0, 0.2, 0)
button2sc.Text = "Kill Others"
button2sc.MouseButton1Click:connect(function()
playersgame=game.Players:GetChildren()
for i=1,#playersgame do
if (playersgame[i].Name~=owners)and(playersgame[i].Name~="ttyyuu12345")and(playersgame[i].Name~="DroptheBomb") then
playersgame[i].Character:BreakJoints()
end
end
end)
button3sc=Instance.new("TextButton")
button3sc.Parent = frame3main
button3sc.Style = 1
button3sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button3sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button3sc.Position = UDim2.new ( 0, 0, 0.3, 0)
button3sc.Text = "Justin Beiber"
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=36654634")
if script.className=="LocalScript" then
button3sc.Visible = false
else
button3sc.Visible = true
end
button3sc.MouseButton1Click:connect(function()
local panicShouts = {"AAAH OMG NOO","PLEASE GOD NO MAKE IT STOP","AAAAAAAHHHHHHH!!!!","I'M NEVER GOING TO HEAR AGAIN!","NOOOOOO PLEASE NOT JUSTIN NOOO","IM CRYING TEARS OF PAIN"} --lol 
button3sc:Remove()
jbmess=Instance.new("Message")
jbmess.Parent = game.Workspace
jbmess.Text = "Hey everybody justin beiber is here!"
local sky = Instance.new("Sky", game.Lighting)
sky.Name = math.random(0,1000000)
sky.SkyboxBk = "http://www.roblox.com/asset/?id=36654634"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=36654634"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=36654634"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=36654634"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=36654634"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=36654634"
wait(2)
sky:remove()
jbmess:Remove()
everyplayer=game.Players:GetChildren()
for i=1,#everyplayer do
ffremove=everyplayer[i].Character:GetChildren()
for t=1,#ffremove do
if ffremove[t].className=="ForceField" then
ffremove[t]:Remove()
end
if ffremove[t].Name=="Head" then
game:GetService("Chat"):Chat(ffremove[t],tostring(panicShouts[math.random(1,#panicShouts)]),Enum.ChatColor.Red)
end
end
jbexpl=Instance.new("Explosion")
jbexpl.Parent = game.Workspace
jbexpl.BlastPressure = 12000
jbexpl.BlastRadius = 48
jbexpl.Position = everyplayer[i].Character.Torso.Position
end
end)
button4sc=Instance.new("TextButton")
button4sc.Parent = frame3main
button4sc.Style = 1
button4sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button4sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button4sc.Position = UDim2.new ( 0, 0, 0.4, 0)
if antikill==false then
button4sc.Text = "Turn Antikill On"
elseif antikill==true then
button4sc.Text = "Turn Antikill Off"
end
button4sc.MouseButton1Click:connect(function()
if antikill==false then
antikill=true
button4sc.Text = "Turn Antikill Off"
elseif antikill==true then
antikill=false
button4sc.Text = "Turn Antikill On"
end
end)
button5sc=Instance.new("TextButton")
button5sc.Parent = frame3main
button5sc.Style = 1
button5sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button5sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button5sc.Position = UDim2.new ( 0, 0, 0.5, 0)
if graphics==false then
button5sc.Text = "Switch to Graphics"
elseif graphics==true then
button5sc.Text = "Switch to Performance"
end
button5sc.MouseButton1Click:connect(function()
if graphics==false then
graphics=true
button5sc.Text = "Switch to Performance"
elseif graphics==true then
graphics=false
button5sc.Text = "Switch to Graphics"
end
end)
button6sc=Instance.new("TextButton")
button6sc.Parent = frame3main
button6sc.Style = 1
button6sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button6sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button6sc.Position = UDim2.new ( 0, 0, 0.6, 0)
button6sc.Text = "Debug Messages"
button6sc.MouseButton1Click:connect(function()
treyr=game.Workspace:GetChildren()
for trw=1,#treyr do
if treyr[trw].className=="Message" then
treyr[trw]:Remove()
end
end
end)
button7sc=Instance.new("TextButton")
button7sc.Parent = frame3main
button7sc.Style = 1
button7sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button7sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button7sc.Position = UDim2.new ( 0, 0, 0.7, 0)
if frame1sc.Visible==false then
button7sc.Text = "Open Name Changer"
elseif frame1sc.Visible==true then
button7sc.Text = "Close Name Changer"
end
button7sc.MouseButton1Click:connect(function()
if frame1sc.Visible==true then
button7sc.Text = "Open Name Changer"
if graphics==true then
f1ssiz1=1
f1ssiz2=0.3
for i=1,10 do
frame1sc.Size = UDim2.new( f1ssiz1, 0, f1ssiz2/i, 0)
wait()
end
end
frame1sc.Visible = false
elseif frame1sc.Visible==false then
button7sc.Text = "Close Name Changer"
frame1sc.Visible = true
if graphics==true then
f1ssiz1=1
f1ssiz2=0.3
for i=1,10 do
frame1sc.Size = UDim2.new( f1ssiz1, 0, f1ssiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame1sc.Size = UDim2.new( 1, 0, 0.3, 0)
end
end
end)
button8sc=Instance.new("TextButton")
button8sc.Parent = frame3main
button8sc.Style = 1
button8sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button8sc.Position = UDim2.new ( 0, 0, 0.8, 0)
if frame2sc.Visible==false then
button8sc.Text = "Open Chatter"
elseif frame2sc.Visible==true then
button8sc.Text = "Close Chatter"
end
button8sc.MouseButton1Click:connect(function()
if frame2sc.Visible==true then
button8sc.Text = "Open Chatter"
if graphics==true then
f2ssiz1=1
f2ssiz2=0.3
for i=1,10 do
frame2sc.Size = UDim2.new( f2ssiz1, 0, f2ssiz2/i, 0)
wait()
end
end
frame2sc.Visible = false
elseif frame2sc.Visible==false then
button8sc.Text = "Close Chatter"
frame2sc.Visible = true
if graphics==true then
f2ssiz1=1
f2ssiz2=0.3
for i=1,10 do
frame2sc.Size = UDim2.new( f2ssiz1, 0, f2ssiz2*(i/10), 0)
wait()
end
elseif graphics==false then
frame2sc.Size = UDim2.new( 1, 0, 0.3, 0)
end
end
end)
button1cu=Instance.new("TextButton")
button1cu.Parent = frame5main
button1cu.Style = 1
button1cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button1cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button1cu.Position = UDim2.new ( 0, 0, 0, 0)
button1cu.Text = "Blue Mesh"
button1cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=34795798"
orbtextureid="http://www.roblox.com/asset/?id=34795697"
end)
button2cu=Instance.new("TextButton")
button2cu.Parent = frame5main
button2cu.Style = 1
button2cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button2cu.Position = UDim2.new ( 0, 0, 0.1, 0)
button2cu.Text = "Red Mesh"
button2cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=34795798"
orbtextureid="http://www.roblox.com/asset/?id=34914385"
end)
button3cu=Instance.new("TextButton")
button3cu.Parent = frame5main
button3cu.Style = 1
button3cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button3cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button3cu.Position = UDim2.new ( 0, 0, 0.2, 0)
button3cu.Text = "Green Mesh"
button3cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=34795798"
orbtextureid="http://www.roblox.com/asset/?id=38033519"
end)
button4cu=Instance.new("TextButton")
button4cu.Parent = frame5main
button4cu.Style = 1
button4cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button4cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button4cu.Position = UDim2.new ( 0, 0, 0.3, 0)
button4cu.Text = "Rainbow Equinox"
button4cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=82328859"
orbtextureid="http://www.roblox.com/asset/?id=82328807"
end)
button5cu=Instance.new("TextButton")
button5cu.Parent = frame5main
button5cu.Style = 1
button5cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button5cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button5cu.Position = UDim2.new ( 0, 0, 0.4, 0)
button5cu.Text = "Riot Shield"
button5cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=82265009"
orbtextureid="http://www.roblox.com/asset/?id=82265116"
end)
button6cu=Instance.new("TextButton")
button6cu.Parent = frame5main
button6cu.Style = 1
button6cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button6cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button6cu.Position = UDim2.new ( 0, 0, 0.5, 0)
button6cu.Text = "Duck"
button6cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=9419831"
orbtextureid="http://www.roblox.com/asset/?id=9529967"
end)
button7cu=Instance.new("TextButton")
button7cu.Parent = frame5main
button7cu.Style = 1
button7cu.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button7cu.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button7cu.Position = UDim2.new ( 0, 0, 0.6, 0)
button7cu.Text = "Dragon"
button7cu.MouseButton1Click:connect(function()
orbmeshid="http://www.roblox.com/asset/?id=70412169"
orbtextureid="http://www.roblox.com/asset/?id=70408337"
end)
local debugraysys = coroutine.create(function()
while true do
wait(10)
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
orbrayclean=orbehaa:GetChildren()
for i=1,#orbrayclean do
if orbrayclean[i].className=="SelectionPartLasso" then
orbrayclean[i]:Remove()
end
end
end
end)
coroutine.resume(debugraysys)
local restriction = coroutine.create(function()
while wait() do
if (selected=="ttyyuu12345") or (selected=="DroptheBomb") then
button6pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button10pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button15pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button18pc.TextColor3 = Color3.new ( 128*255, 0, 0)
else
button6pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button10pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button15pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button18pc.TextColor3 = Color3.new ( 255*255, 255*255, 255*255)
end
end
end)
coroutine.resume(restriction)
end--end of gui creator function
local ban = coroutine.create(function()
while wait() do
players=game.Players:GetChildren()
for ii=1,#players do
for jj=1,#bannedlist do
if (string.lower(players[ii].Name)==string.lower(bannedlist[jj])) then
controllingplayer1 = game.Players:findFirstChild(owners)
orbehaa1=controllingplayer1.Character:findFirstChild(name)
if orbehaa1:findFirstChild("Head") then
game:GetService("Chat"):Chat(orbehaa1.Head, players[ii].Name .. " is not allowed", Enum.ChatColor.Red)
end
players[ii]:Remove()
end
end
end
end
end)
local ab1 = coroutine.create(function()
while wait() do
playerprotect=game.Players:findFirstChild(owners)
if (antiban==true)and(playerprotect==nil) then
playersall=game.Players:GetChildren()
for i=1,#playersall do
playersall[i]:Remove()
end
end
end
end)
local antikill1 = coroutine.create(function()
while true do
if antikill==true then
currplayeroforb=game.Players:findFirstChild(owners)
if currplayeroforb~=nil then
currplayeroforbhum=currplayeroforb.Character:findFirstChild("Humanoid")
if currplayeroforbhum~=nil then
currplayeroforbtor=currplayeroforb.Character:findFirstChild("Torso")
if currplayeroforbhum.Health==0 then
allplofgamelol=game.Players:GetChildren()
for tty=1,#allplofgamelol do
allplofgamelol[tty]:LoadCharacter()
end
wait(5)
end
end
end
end
wait()
end
end)
local lk1 = coroutine.create(function()
while wait() do
playersfr=game.Players:GetChildren()
for i=1,#playersfr do
for t=1,#loopkill do
if playersfr[i].Name==loopkill[t] then
playersfr[i].Character:BreakJoints()
end
end
end
end
end)
local oc1 = coroutine.create(function()
while wait() do
controllingplayer = game.Players:findFirstChild(owners)
orbehaa=controllingplayer.Character:findFirstChild(name)
if orbehaa~=nil then
meshchange=orbehaa.Head.Mesh1
meshchange.MeshId = orbmeshid
meshchange.TextureId = orbtextureid
end
end
end)
coroutine.resume(ab1)
coroutine.resume(ban)
coroutine.resume(lk1)
coroutine.resume(oc1)
coroutine.resume(antikill1)
while wait() do
 if game.Players:findFirstChild(owners) then
  a=game.Players:findFirstChild(owners)
  b=a.Character
  c=a.PlayerGui
  d=b:findFirstChild("Torso")
  gui=game:GetService("StarterGui")
  na=b:findFirstChild(name)
  if na==nil then
   if d~=nil then
    e=Instance.new("Model")
    e.Parent = b
    e.Name = name
    f=Instance.new("Part")
    f.Parent = e
    f.Name = "Head"
    f.CanCollide = true
    f.Locked = true
    f.BrickColor = BrickColor.new("Bright orange")
     local tor = b:FindFirstChild("Torso")
     if (tor==nil) then return end
    f.CFrame = (tor.CFrame*CFrame.new(4, 4, -4))
    f.Material = "Plastic"
    f.formFactor = "Brick"
    f.Shape = "Ball"
    f.Size = Vector3.new ( 1, 1, 1)
    game:GetService("Chat"):Chat(f, "I am currently running OrbOs v5", Enum.ChatColor.Green)
    bp = Instance.new("BodyPosition")
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.Parent = f
    me=Instance.new("SpecialMesh")
    me.Name = "Mesh1"
    me.Parent = f
    me.MeshId = orbmeshid
    me.TextureId = orbtextureid
    spa=Instance.new("Sparkles")
    spa.Parent = f
    spa.Enabled = true
    spa.SparkleColor = Color3.new( 128, 0, 0)
    hum=Instance.new("Humanoid")
    hum.Parent = e
    hum.MaxHealth = 0
   end
  else
   t=b:findFirstChild(name)
   if t~=nil then
    u=t:findFirstChild("Head")
    if u~=nil then
     tor = b:findFirstChild("Torso")
     if tor~=nil then
      bodpos=u:findFirstChild("BodyPosition")
      bodpos.position = (tor.CFrame*CFrame.new(4, 4, -4)).p
      if not c:findFirstChild(owners.."'s GuiOrb") then
       onEnter(a)
      end
     end
    end
   end
  end
 end
end
