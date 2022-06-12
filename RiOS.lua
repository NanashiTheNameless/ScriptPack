version = "2.2"
updateDescription = "You're now running "..version.."!"
updateDes2 = "Tons of NEW FEATURES! Please join the group 'RiOS' "
script.Name = "Make_RiOS_"..version
start = false
devNotes = {"As of May 29, 2012 - 2.0.4 is here! This version includes the fixed rotunes v1 and the fixed rotunes v2, This RiOS also includes volume, pitch, fastforward, and rewind! Wallpaper coming soon!"}
time = 0 --- The one reason why I need multitasking, to run apps in the background. They will "multitask" either in lighting or in the invisible stage!
JBupdate = "Cydia will not work anymore, in preparation for Jailbreak, I have disabled it. Please dont enable it. Jailbreak is soon"
bugNotes = {"Patched rotunes bug #2!","Fixed app orders","Patched pitch"}
bugnotes = "Whats new: Added pitch, Added volume, Patched rotunes bug"
needToAdd = {"Fully support KeyBoot","Probably ready in 2 days","0000 - DFU,0001 - User, 0002 - FailBreak, (to come) 0003 - Enhanced, 0004 - Dev"}
---Quick note, I have had SO many bugs with the App Store, I dont know why either. It doesnt like to download I guess.
---But they're all patched!
-----RiOS Script--- 
--[["We're redesigning real world Apple Products, into ones you can use on your computer. Starting with RSiri, EBA,  and now
RiOS, its going to be the new and innovative way to use a GUI. Don't worry, updates are imminent. 
Copyright 2012 --- Builder Tech Labs. Script will be encrypted to detect copying. Avoid at all costs.
  Smart. Thinkative. Innovative.
 For any questions concerning this product or any other BTL production, please contact BuildBuilder.  
  Thank you for using RiOS ]] 
--Gui Templates
--[[ Each app is +X80 than the other, each icon is +X80 than the other.]]--
---badgeApp(ft,"3")
--badgeApp(sutil1,"2") --- If you like it badge the app instead of the icon, use this. Otherwise, use the one I made above.
---------------
--[[ Add to ALL app functions : for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end]] 
----Core Variables----
banned = {} --- This if for a command for PLRCMD.app
players = {} --- This is the CORE FUNCTION of PLRCMD.app
reminders = {{"Remind Me To Do Nothing","Description",5}} -- It will remind you of this in 5 seconds.... Etc. Not needed yet.
notfications = {{"Notification Here","English Text",5}} --- Other apps that may use notify, good for games.
nbar = false --- Bar mode (top of screen)
nalert = true --- Alert Mode (middle of screen)
notify = 0 --- Number of notifications, Not yet needed.
notifcent = "on" --- Only turn on when completed, it wont do anything now. 
----------------------
---OFTEN NEEDED VARIABLES
not_appv = "Home"
buy4 = false
appSub = "Home_Page"
sft = 0
logVersions = {"1.0.2","2.0.3","2.0.4"} -- When logging versions, only the last version of each major version is signed. Therefore, you could only go back to 1.4.1, not 1.4
saveLap = 0  --- Introduced to Multitask... This is able to save laps, and continue to while not open
buy3 = false
cloud = false
buy2 = false --- SW.app 
buy1 = false -- For notes.app, add more as more apps for download!!
multitasking = true --- Yes, it's coming too. Needed to run apps in the background!
jailbreak = false --- Yes, it's coming too. Needed more "tweaks", will add Rydia (RCydia) soon!!
actionlog = {"Loaded Rios","Started RiOS Device","Beginning Logging","Multitasking is enabled" }
---Jailbreak will not be editable outside script instance, must make true in script to jailbreak!!! Loop will scan
-------Icons
a = game:service("ContentProvider")
b = "http://www.roblox.com/asset/?id=75489367"
c = "http://www.roblox.com/asset/?id=75521195"
d = "http://www.roblox.com/asset/?id=77746455"
imag4 = "http://www.roblox.com/asset/?id=78284695"
appstimg = "http://www.roblox.com/asset/?id=78339778"
notes = "http://www.roblox.com/asset/?id=78371776"
stopwatch = "http://www.roblox.com/asset/?id=78583531"
jb = "http://www.roblox.com/asset/?id=79101498" -- Interpret what "jb" means, and you'll figure this out!
settings = "http://www.roblox.com/asset/?id=79402287" -- Settings app
back_button = "http://www.roblox.com/asset/?id=80809733"
player_cmd = "http://www.roblox.com/asset/?id=80975439" --- New App! YAY!!! This will = 2.0!!!
-------Icons
---Image Preloader for public situations
a:Preload(b)
a:Preload(c)
a:Preload(d)
a:Preload(imag4)
a:Preload(appstimg)
a:Preload(notes)
a:Preload(stopwatch)
a:Preload(settings)
a:Preload(back_button)
a:Preload(player_cmd)
-----------------------------------------
yo = 4 -- Add one to "yo" for each app. 1 + 1 + 1 = 3
-------------------------
function getBackup() --- BackUp (prototype) for RCloud
sct = Instance.new("StringValue",game.Lighting)
sct.Value = version
sct.Name = "Backup_RCloud_"..version
tyu = Instance.new("StringValue",sct)
tyu.Name = "Buy1"
if buy1 == true then 
tyu.Value = "True"
else 
if buy1 == false then 
tyu.Value = "False"
 yui = Instance.new("StringValue",sct)
yui.Name = "Buy2"
if buy2 == true then 
yui.Value = "True"
else
if buy2 == false then
yui.Value = "False"
ynt = Instance.new("StringValue",sct)
ynt.Name = "Buy3"
if buy3 == true then 
ynt.Value = "True"
else
if buy3 == false then 
ynt.Value = "False"
end
end
end
end
end
end
end
function fixScanBug() --- Fixes a bug that may not allow settings to be visible when going "home"
if buy3 == true then 
set.Visible = true 
set2.Visible = true
if buy4 == true then  --- Fixes one that may not allow PlrCmd to be seen on "Home Screen"
pcmd.Visible = true
plcmd.Visible = true
end
end
end
function notify(appname,appdes,value) --- Link is the app to open, we may need to execute a function or something there.
coroutine.resume(coroutine.create(function()
if notifcent == "on" or notifcent == "ON" or notifcent == "On" or notifcent == true or notifcent == "true" then 
notifier = Instance.new("ScreenGui",ma)
notifier.Name = "Notifier"
n = notifier
notifier = n
if nalert == true then 
--wait(times)
not_appv = value
print("Using Banner")
alert = Instance.new("ScreenGui",n)
cancel = Instance.new("TextButton",alert)
view = Instance.new("TextButton",alert)
not_alert = Instance.new("TextLabel",alert)
not_des = Instance.new("TextLabel",alert)
backg = Instance.new("Frame",alert)
-----------------------------------------
backg.Name = "Not_BGround"
backg.Position = UDim2.new(0,350 , 0,200)
backg.Size = UDim2.new(0,300 , 0,200)
backg.Style = "RobloxRound"
------------------------------------------
cancel.Name = "Alert_Cancel"
cancel.Position = UDim2.new(0,370 , 0,350)
cancel.Size = UDim2.new(0,80 , 0,30)
cancel.Text = "Cancel"
cancel.TextColor3 = Color3.new(255,255,255)
cancel.Style = "RobloxButton"
-------------------------------------------
view.Name = "Alert_View"
view.Position = UDim2.new(0,550,0,350)
view.Size = UDim2.new(0,80 , 0,30)
view.Text = "View"
view.TextColor3 = Color3.new(255,255,255)
view.Style = "RobloxButton"
---------------------------------------------
not_alert.Name = "Notify_Alert"
not_alert.BackgroundTransparency = 1
not_alert.Position = UDim2.new(0,455,0,230)
not_alert.Size = UDim2.new(0,100,0,0)
not_alert.Font = "ArialBold"
not_alert.FontSize = "Size18"
not_alert.Text = appname
not_alert.TextColor3 = Color3.new(255,255,255)
-----------------------------------------------
not_des.Name = "Notify_Description"
not_des.BackgroundTransparency = 1
not_des.Position = UDim2.new(0,410,0,280)
not_des.Size = UDim2.new(0,200 ,0,0)
not_des.Font = "ArialBold"
not_des.FontSize = "Size18"
not_des.Text = appdes
not_des.TextWrapped = true
not_des.TextColor3 = Color3.new(255,255,255)
function canceler()
n:Destroy()
end
cancel.MouseButton1Down:connect(canceler)
function viewer()
if not_appv == "AppStore" then 
n:Remove()
end
end
view.MouseButton1Down:connect(viewer)
--wait(time)
--n:Remove()
end
if nbar == true then 
wait(times)
print("Using Bar")
bar = Instance.new("ScreenGui",n)
fnot = Instance.new("Frame",bar)
BanNot = Instance.new("TextLabel",bar)
BanNotDes = Instance.new("TextLabel",bar)
----------------------------------------
fnot.Name = "Not_Banner"
fnot.Position = UDim2.new(0,250 , 0,50)
fnot.Size = UDim2.new(0,500 , 0,30)
fnot.BackgroundColor3 = Color3.new(255,255,255)--Color3.new(255,255,255)
-----------------------------------------
BanNot.Name = "AppNameBanner"
BanNot.Position = UDim2.new(0,450 , 0,50)  
BanNot.Size = UDim2.new(0,100 , 0,20)
BanNot.Text = appname
BanNot.TextColor3 = Color(27,42,53)
BanNot.BackgroundTransparency = 1
-----------------------------------------
BanNotDes.Name = "AppDesBanner"
BanNotDes.BackgroundTransparency = 1
BanNotDes.Position = UDim2.new(0,450 , 0,62)
BanNotDes.Size = UDim2.new(0,100 , 0,20)
BanNotDes.FontSize = "Size9" --- Lets use the ""s this time, I dont like when I used ''s.
BanNotDes.Text = appdes
BanNotDes.TextColor3 = Color3.new(27,42,53)
-----------------------------------------
--wait(time)
--n:Remove()
end
end
end))
end
----Notify isnt done... The bar and alert both work, but I cant link them to an app to open yet. Let's just release it, and I'll fix that part in a newer version. I will have to try and get it to read a function for an app or something
---Test it out, see if you like it!
function findp(name)  --- Could this work? For a value instead of Chat? 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
return v 
end 
end 
end 
function scanAS() --- Fixes the RestartApp Bug scratch 1 off the list to equal 0! 
if buy1 == true and buy2 == true and buy3 == true and buy4 == true then
fre.Text = "You have 0 apps to download!"
end
end --- Makes the AppStore show 0 apps, when all is downloaded
function multitask()
if multitasking == true and start == true then 
repeat 
wait() 
time = time + 1
until start == false
end
end
function scan()
fixScanBug()
y.Visible = true ---  Helps fix a download bug
if buy1 == true then --- Notes.app
rtu.Visible = true
noteui2.Visible = true
if buy2 == true then  --- SW.app
swu.Visible = true
swui2.Visible = true
if jailbreak == true then
cyd.Visible = true
cydui.Visible = true
if buy3 == true then -- Settings.app
set2.Visible = true
set.Visible = true
if buy4 == true then  --- Plr_Cmd.app
pcmd.Visible = true
plcmd.Visible = true
end
end
end
end
end
end
function badgeApp(appname,badgenum)
screen = Instance.new("ScreenGui")
screen.Parent = ma 
screen.Name = "NotifyBadge.app"
frame = Instance.new("Frame",screen)
frame.Name = "BadgeBGround"
frame.Position = appname.Position
frame.Size = UDim2.new(0,20, 0,20)
frame.Style = "RobloxRound"
local text = Instance.new("TextLabel",screen)
text.Name = "Badger.resource"
text.BackgroundTransparency = 1
text.Size = UDim2.new(0,20, 0,20)
text.Position = frame.Position
text.Text = badgenum
text.TextColor = BrickColor.new(255,51,0)
function reload(value)
if value == "false" then
screen:Remove()
end
end
end
function addBackButton(value)
screen = Instance.new("ScreenGui")
screen.Parent = ma
screen.Name = "BackButton_OS_1.core"
button = Instance.new("ImageButton",screen)
button.Name = "BackButton~root_Core.file"
button.Position = UDim2.new(0,275 , 0,75)
button.Size = UDim2.new(0,50 , 0,20)
button.Image = back_button
function getSub()
if appSub == "About_Settings" then
function onClickButton()
abt2.Visible = false
tres3.Visible = false
cl1.Visible = false
tre2.Visible = false
fre.Visible = true
tuy.Visible = true
tre.Visible = true
RCloudS.Visible = true
sftupd.Visible = true
fre.Visible = true
wait()
screen:Remove()
end
end
button.MouseButton1Down:connect(onClickButton)
if appSub == "About_RCloud" then
function onClickButton2()
tre2.Visible = false
fre.Visible = true
tuy.Visible = true
tre.Visible = true
sftupd.Visible = true
RCloudS.Visible = true
tre4.Visible = false
tre3.Visible = false
fre.Visible = true
wait()
screen:Remove()
end
end
button.MouseButton1Down:connect(onClickButton2)
if appSub == "Software" then
function onClickButton3()
fre2.Visible = false
tuy2.Visible = false
sftupd.Visible = true
tre.Visible = true
RCloudS.Visible = true
wait()
screen:Remove()
end
end
button.MouseButton1Down:connect(onClickButton3)
function removeSub()
if value == "False" then 
screen:Remove()
end
end
removeSub()
end
getSub()
end
function gettheAnswer()
print(ans)
end
function Color(r, g, b)
 return Color3.new(r/255, g/255, b/255)
end
function makeStartupUI(img)
for i,v in pairs(game.Players:GetChildren()) do 
table.insert(players,v.Name)
end
--[[function bootWithKey() 
modes = {"0001 or 1111 - Boot Normally","0002 or 2222 - Boot With Jailbreak, Untethered","0000 - Boot with devMode/App Integration Mode"}
keyStart = true 
keyInput = "0001"
if keyStart == true then --- KeyStart symbolizes a "keyed boot"
turnKey = true --- Just for methods, not truly needed. 
if keyInput == "0001" or keyInput == "1111" then --- User Mode 
print("Protected User Mode Activated")
else
if keyInput == "0000" then
print("DFU Mode/App Integration Mode Activated.")
script.Disabled = true
ma:Remove()
turnKey = false
else
if keyInput == "0002" or keyInput == "2222" then
print("Unprotected User Mode Activated")
jailbreak = true --- Jailbreak is still not ready.. Please dont try this mode, as it will mess things up... It's up to you!
end
end
end
end
end
bootWithKey()]]
gNotes = Instance.new("StringValue",game.Lighting)
gNotes.Name = "Noters"
coroutine.resume(coroutine.create(function()
ju = Instance.new("Hint",workspace)
ju.Text = updateDescription
wait(4)
ju.Text = updateDes2
wait(4)
ju:Remove()
end))
ma = Instance.new("ScreenGui")
ma.Name = "iOS_Main"
for i,v in pairs(game.Players:GetChildren()) do 
ma.Parent = v.PlayerGui
end
local b = Instance.new("ImageLabel",ma)
b.Position = UDim2.new(0,250 , 0,50)
b.Size = UDim2.new(0,0 , 0,0)
b.BackgroundColor3 = Color(0,0,0)
b.BackgroundTransparency = 1
b:TweenSize(UDim2.new(0, 500, 0, 500), "Out", "Linear", 1)
b.Name = "RiOS_Logo"
b.Image = img
wait(10)
b.Image = ""
b:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Linear", 1)
wait(2)
b:TweenSize(UDim2.new(0, 200, 0, 200), "In", "Linear", 1)
wait(3)
b:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", 1)
for i=1, 10 do
wait(.1)
b.BackgroundTransparency = b.BackgroundTransparency - .1
end
b.Image = img
end
makeStartupUI("http://www.roblox.com/asset/?id=75489367")
function makeMainUI1() 
table.insert(actionlog, "Made apps")
local a = Instance.new("Frame",ma)
a.Name = "UI_Home"
a.Style = "RobloxRound"
a.BackgroundColor3 = Color(0,0,0)
a.Position = UDim2.new(0,250 , 0,50)
a.Size = UDim2.new(0,500 , 0,500)
local b = Instance.new("TextButton",ma)
b.Name = "HomeButton"
b.Style = "RobloxButton"
b.Text = ""
b.Position = UDim2.new(0,470 , 0,500)
b.Size = UDim2.new(0,50 , 0,50)
local c = Instance.new("TextLabel",ma)
c.Name = "Display_Info"
c.Size = UDim2.new(0,500 , 0,9)
c.Position = UDim2.new(0,249 , 0,50)
c.Text = "Time_Here"
c.BackgroundTransparency = .8
c.TextColor3 = Color(248,248,248)
local ca = Instance.new("TextLabel",ma)
ca.Name = "Display_AM"
ca.Size = UDim2.new(0,0 , 0,0)
ca.Position = UDim2.new(0,530 , 0,54)
ca.Text = "Noon"
ca.BackgroundTransparency = 1
ca.TextColor3 = Color(248,248,248)
rawr = Instance.new("NumberValue", Lighting)
raw2 = Instance.new("StringValue", Lighting)
function getTime()
while true do 
wait()
ts = string.sub(game.Lighting.TimeOfDay, 3, 5)
tp = string.sub(game.Lighting.TimeOfDay, 1, 2)
rawr.Value = "0"
raw2.Value = ""..ts..""
if tp == "13" then
rawr.Value = "1"
ca.Text = "PM"
elseif tp == "14" then
rawr.Value = "2"
ca.Text = "PM"
elseif tp == "15" then
rawr.Value = "3"
ca.Text = "PM"
elseif tp == "16" then
rawr.Value = "4"
ca.Text = "PM"
elseif tp == "17" then
rawr.Value = "5"
ca.Text = "PM"
elseif tp == "18" then
rawr.Value = "6"
ca.Text = "PM"
elseif tp == "19" then
rawr.Value = "7"
ca.Text = "PM"
elseif tp == "20" then
rawr.Value = "8"
ca.Text = "PM"
elseif tp == "21" then
rawr.Value = "9"
ca.Text = "PM"
elseif tp == "22" then
rawr.Value = "10"
ca.Text = "PM"
elseif tp == "23" then
rawr.Value = "11"
ca.Text = "PM"
elseif tp == "24" then
rawr.Value = "12"
ca.Text = "PM"
elseif tp == "01" then
rawr.Value = "1"
ca.Text = "AM"
elseif tp == "02" then
rawr.Value = "2"
ca.Text = "AM"
elseif tp == "03" then
rawr.Value = "3"
ca.Text = "AM"
elseif tp == "04" then
rawr.Value = "4"
ca.Text = "AM"
elseif tp == "05" then
rawr.Value = "5"
ca.Text = "AM"
elseif tp == "06" then
rawr.Value = "6"
ca.Text = "AM"
elseif tp == "07" then
rawr.Value = "7"
ca.Text = "AM"
elseif tp == "08" then
rawr.Value = "8"
ca.Text = "AM"
elseif tp == "09" then
rawr.Value = "9"
ca.Text = "AM"
elseif tp == "10" then
rawr.Value = "10"
ca.Text = "AM"
elseif tp == "11" then
rawr.Value = "11"
ca.Text = "AM"
elseif tp == "12" then
rawr.Value = "12"
ca.Text = "AM"
end
c.Text = ""..rawr.Value..""..raw2.Value..""
end
end
local d = Instance.new("TextLabel",ma)
d.Name = "Device_Info"
d.BackgroundTransparency = 1
d.Position = UDim2.new(0,30 , 0,50)
d.Size = UDim2.new(0,500 , 0,9)
d.Text = "RiOS v."..version
d.TextColor3 = Color(248,248,248)
function makeDefaultApp1(img)
z = Instance.new("ScreenGui", ma)
z.Name = "Cal.app"
y = Instance.new("Frame",z)
y.Name = "AppB_Ground"
y.Style = "RobloxRound"
y.Position = UDim2.new(0,300 , 0,80)
y.Size = UDim2.new(0,50 , 0,50)
x = Instance.new("ImageButton",z)
x.Name = "CalImg"
x.Image = img
x.Position = UDim2.new(0,305 , 0,85)
x.Size = UDim2.new(0,40 , 0,40)
end
makeDefaultApp1("http://www.roblox.com/asset/?id=75521195")
function makeDefaultApp2(img)
go = Instance.new("ScreenGui",ma)
go.Name = "DN.app"
tr = Instance.new("Frame",go)
tr.Name = "AppB_DN_BGround"
tr.Style = "RobloxRound"
tr.Position = UDim2.new(0,380 , 0,80)
tr.Size = UDim2.new(0,50 , 0,50)
de = Instance.new("ImageButton",go)
de.Name = "DNImg"
de.Image = img
de.Position = UDim2.new(0,385, 0,85)
de.Size = UDim2.new(0,40 , 0,40)
end
makeDefaultApp2("http://www.roblox.com/asset/?id=77746455")
function makeDefaultApp4(img)
go = Instance.new("ScreenGui",ma)
go.Name = "CMDHub.app"
cbg = Instance.new("Frame",go)
cbg.Name = "AppB_CMD_BGround"
cbg.Style = "RobloxRound"
cbg.Position = UDim2.new(0,540 , 0,80)
cbg.Size = UDim2.new(0,50 , 0,50)
cimg = Instance.new("ImageButton",go)
cimg.Name = "CMDImg"
cimg.Image = img
cimg.Position = UDim2.new(0,545, 0,85)
cimg.Size = UDim2.new(0,40 , 0,40)
end
makeDefaultApp4("http://www.roblox.com/asset/?id=78302248")
function makeDefaultApp3(img)
sutil = Instance.new("ScreenGui",ma)
sutil.Name = "ScrUtil.app"
sutil1 = Instance.new("Frame",sutil)
sutil1.Name = "AppB_SUtil_BGround"
sutil1.Style = "RobloxRound"
sutil1.Position = UDim2.new(0,460 , 0,80)
sutil1.Size = UDim2.new(0,50 , 0,50)
ft = Instance.new("ImageButton",sutil)
ft.Name = "ScrUtilBGround"
ft.Image = img
ft.Position = UDim2.new(0,465, 0,85)
ft.Size = UDim2.new(0,40 , 0,40)
end
makeDefaultApp3(imag4)
function makeDefaultApp5(img)
appui = Instance.new("ScreenGui",ma)
appui.Name = "AppStore.app"
appui1 = Instance.new("Frame",appui)
appui1.Name = "AppB_AppStore_BGround"
appui1.Style = "RobloxRound"
appui1.Position = UDim2.new(0,620 , 0,80)
appui1.Size = UDim2.new(0,50 , 0,50)
rt = Instance.new("ImageButton",appui)
rt.Name = "AppStoreBGround"
rt.Image = img
rt.Position = UDim2.new(0,625 , 0,85)
rt.Size = UDim2.new(0,40 , 0,40)
badgeApp(rt,yo)
end
makeDefaultApp5("http://www.roblox.com/asset/?id=78339778")
function makeNotes6(img)
noteui = Instance.new("ScreenGui",ma)
noteui.Name = "Notes.app"
noteui2 = Instance.new("Frame",noteui)
noteui2.Name = "AppB_Notes_BGround"
noteui2.Style = "RobloxRound"
noteui2.Position = UDim2.new(0,460 , 0,140)
noteui2.Size = UDim2.new(0,50 , 0,50)
rtu = Instance.new("ImageButton",noteui)
rtu.Name = "NotesBGround"
rtu.Image = img
rtu.Position = UDim2.new(0,465, 0,145)
rtu.Size = UDim2.new(0,40 , 0,40)
rtu.Visible = false
noteui2.Visible = false
end
makeNotes6(notes)
function makeTunez8(img)
noteui1 = Instance.new("ScreenGui",ma)
noteui1.Name = "RoTunes.app"
noteui21 = Instance.new("Frame",noteui)
noteui21.Name = "AppB_Tunez_BGround"
noteui21.Style = "RobloxRound"
noteui21.Position = UDim2.new(0,300 , 0,140)
noteui21.Size = UDim2.new(0,50 , 0,50)
rtune = Instance.new("ImageButton",noteui)
rtune.Name = "NotesBGround"
rtune.Image = img
rtune.Position = UDim2.new(0,305, 0,145)
rtune.Size = UDim2.new(0,40 , 0,40)
end
makeTunez8("http://www.roblox.com/asset/?id=39234782")
function makeComp9(img)
comp1 = Instance.new("ScreenGui",ma)
comp1.Name = "Compass.app"
comp21 = Instance.new("Frame",comp1)
comp21.Name = "AppB_Comp_BGround"
comp21.Style = "RobloxRound"
comp21.Position = UDim2.new(0,380 , 0,140)
comp21.Size = UDim2.new(0,50 , 0,50)
comp = Instance.new("ImageButton",comp1)
comp.Name = "NotesBGround"
comp.Image = img
comp.Position = UDim2.new(0,385 , 0,145)
comp.Size = UDim2.new(0,40 , 0,40)
end
makeComp9("http://www.roblox.com/asset/?id=81576224")
function makeSW7(img)
SWUI = Instance.new("ScreenGui",ma)
SWUI.Name = "SWatch.app"
swui2 = Instance.new("Frame",SWUI)
swui2.Name = "AppB_SW_BGround"
swui2.Style = "RobloxRound"
swui2.Position = UDim2.new(0,540 , 0,140)
swui2.Size = UDim2.new(0,50 , 0,50)
swu = Instance.new("ImageButton",SWUI)
swu.Name = "SWBGround"
swu.Image = img
swu.Position = UDim2.new(0,545 , 0,145)
swu.Size = UDim2.new(0,40 , 0,40)
swu.Visible = false
swui2.Visible = false
end
makeSW7(stopwatch)
function makeCydia(img)  --- Yep, it's being produced. Stand by! Warning, it'll look like the app store, but with tweaks.
Cydia = Instance.new("ScreenGui",ma)
Cydia.Name = "Cydia~Root.app"
cydui = Instance.new("Frame",Cydia)
cydui.Name = "CydiaBackground"
cydui.Style = "RobloxRound"
cydui.Position = UDim2.new(0,300 , 0,200)
cydui.Size = UDim2.new(0,50 , 0,50)
cyd = Instance.new("ImageButton",Cydia)
cyd.Name = "CydiaIcon"
cyd.Image = img
cyd.Position = UDim2.new(0,305, 0,205)
cyd.Size = UDim2.new(0,40 , 0,40)
cyd.Visible = false
cydui.Visible = false
if jailbreak == true then 
cyd.Visible = true
cydui.Visible = true
end
end
makeCydia(jb)
function makeSettings(img)  
getBackup()
Settings = Instance.new("ScreenGui",ma)
Settings.Name = "Settings.app"
set = Instance.new("Frame",Settings)
set.Name = "SettingsBackground"
set.Style = "RobloxRound"
set.Position = UDim2.new(0,620 , 0,140)
set.Size = UDim2.new(0,50 , 0,50)
set2 = Instance.new("ImageButton",Settings)
set2.Name = "SetIcon"
set2.Image = img
set2.Position = UDim2.new(0,625, 0,145)
set2.Size = UDim2.new(0,40 , 0,40)
set.Visible = false
set2.Visible = false
end
makeSettings(settings)
function makeCommandApp(img)  
--bootWithKey() ---Needs to start here
playerc = Instance.new("ScreenGui",ma)
playerc.Name = "Plr_Cmd.app"
pcmd = Instance.new("Frame",playerc)
pcmd.Name = "PCMDBackground"
pcmd.Style = "RobloxRound"
pcmd.Position = UDim2.new(0,300 , 0,200)
pcmd.Size = UDim2.new(0,50 , 0,50)
plcmd = Instance.new("ImageButton",playerc)
plcmd.Name = "PlayerCmd.Icon"
plcmd.Image = img
plcmd.Position = UDim2.new(0,305 , 0,205)
plcmd.Size = UDim2.new(0,40 , 0,40)
pcmd.Visible = false
plcmd.Visible = false
---- This app is just Awesome.... Just awesome!
end
makeCommandApp(player_cmd)
function onButtonClicked()
table.insert(actionlog,"Started Calc.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local s = Instance.new("ScreenGui",a)
s.Name = "CalcUI"
local t = Instance.new("NumberValue",s)
t.Name = "Num1"
local m = Instance.new("StringValue",s)
t.Name = "operator"
k = Instance.new("NumberValue",s)
k.Name = "Num2"
local g = Instance.new("Frame",s)
g.Name = "Cal_UI"
g.Position = UDim2.new(0,250 , 0,50)
g.Size = UDim2.new(0,500 , 0,500)
g.Style = "RobloxRound"
f = Instance.new("TextBox",s)
f.Name = "CalBox"
f.BackgroundTransparency = 1
f.Position = UDim2.new(0,295 , 0,60)
f.Size = UDim2.new(0,400 , 0,40)
f.TextColor3 = Color(248,248,248)
f.Text = "Enter First Amount Here. Press Enter to Enter Second Amount"
 mi = Instance.new("TextBox",s)
mi.Name = "CalBox"
mi.BackgroundTransparency = 1
mi.Position = UDim2.new(0,295 , 0,60)
mi.Size = UDim2.new(0,400 , 0,40)
mi.TextColor3 = Color(248,248,248)
mi.Text = "Enter what you would like to do + - / *"
mi.Visible = false
 b = Instance.new("TextBox",s)
b.Name = "CalBox"
b.BackgroundTransparency = 1
b.Position = UDim2.new(0,295 , 0,60)
b.Size = UDim2.new(0,400 , 0,40)
b.TextColor3 = Color(248,248,248)
b.Text = "Enter Second Amount"
b.Visible = false
tt = true
while tt do 
wait()
if f.Text ~= "Enter First Amount Here. Press Enter to Enter Second Amount" then
t.Value = f.Text
mi.Visible = true
f.Visible = false
if mi.Text ~= "Enter what you would like to do + - / *" then
m.Value = mi.Text
b.Visible = true
mi.Visible = false
if b.Text ~= "Enter Second Amount" then
k.Value = b.Text
if m.Value == "/" then
ans = t.Value / k.Value
elseif m.Value == "*" then
ans = t.Value * k.Value
elseif m.Value == "-" then
ans = t.Value - k.Value
elseif m.Value == "+" then
ans = t.Value + k.Value
else
ans = "Error, "..m.Value.." Is not a recognized operator"
end
gf = Instance.new("TextLabel",s)
gf.Name = "Ans1"
gf.BackgroundTransparency = 1
gf.Position = UDim2.new(0,295 , 0,60)
gf.Size = UDim2.new(0,400 , 0,40)
gf.TextColor3 = Color(248,248,248)
gf.Text = "Answer = "..ans
gf.Visible = true
b.Visible = false
wait(3)
gf:Destroy()
g:Destroy()
gf.Visible = false
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
scan()
scan()
tt = false
 if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
end
end
x.MouseButton1Down:connect(onButtonClicked)
function onClickCyd()
local h = Instance.new("Hint",workspace)
h.Text = "RiOS Error 1046: Cydia cannot be opened at this time"
wait(3)
h.Text = "Corefiles missing. Please edit/repair cydshow.core" --- Cydshow.core is missing, it wont be available yet.
wait(3)
h:Remove()
end
cyd.MouseButton1Down:connect(onClickCyd)
function onButtonClickedComp()
table.insert(actionlog,"Started Compass.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local co = Instance.new("ScreenGui", a)
co.Name = "Compass"
local Circle = Instance.new("ImageLabel", co)
Circle.Name = "Circle"
Circle.Image = "http://www.roblox.com/asset/?id=44489547"
Circle.Position = UDim2.new(0, 400, 0, 150)
Circle.BackgroundTransparency = "1"
Circle.Size = UDim2.new(0, 300, 0, 300)
local N = Instance.new("TextLabel", co)
N.Text = "N"
N.Name = "N"
N.Position = UDim2.new(0.5, -40, 0.5, -45)
local S = Instance.new("TextLabel", co)
S.Text = "S"
S.Name = "S"
S.Position = UDim2.new(0.5, 125, 0.5, -50)
local E = Instance.new("TextLabel", co)
E.Text = "E"
E.Name = "E"
E.Position = UDim2.new(0.5, 200, 0.5, -125)
local W = Instance.new("TextLabel", co)
W.Text = "W"
W.Name = "W"
W.Position = UDim2.new(0.5, 50, 0.5, -125)
coroutine.resume(coroutine.create(function() 
        while wait() do 
local C = game.Workspace.CurrentCamera
local Direction = (Vector2.new(C.Focus.x,C.Focus.z)-Vector2.new(C.CoordinateFrame.x,C.CoordinateFrame.z)).unit
N.Position = UDim2.new(0.5,-Direction.x*100,0.5,Direction.y*100)
E.Position = UDim2.new(0.5,-Direction.y*100,0.5,-Direction.x*100)
S.Position = UDim2.new(0.5,Direction.x*100,0.5,-Direction.y*100)
W.Position = UDim2.new(0.5,Direction.y*100,0.5,Direction.x*100)
        end 
end))
comp.BackgroundTransparency = .5
end
comp.MouseButton1Down:connect(onButtonClickedComp)
function onButtonClickedTunez()
table.insert(actionlog,"Started RoTunes.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
so = Instance.new("Sound", Workspace)
so.Name = "Music"
so.Volume = 1
so.Looped = true
so.archivable = false
so2 = Instance.new("Sound", Workspace)
so2.Name = "Music"
so2.Volume = 1
so2.Looped = true
so2.archivable = false
vol = Instance.new("StringValue", Lighting)
volq = Instance.new("StringValue", Lighting)
local gui = Instance.new("ScreenGui", a)
gui.Name = "Musicgui"
local BG = Instance.new("Frame", gui)
BG.Name = "BG"
BG.Position = UDim2.new(0, 350, 0, 150)
BG.Size = UDim2.new(0,300,0,260)
BG.BackgroundTransparency = "0.5"
local tit = Instance.new("TextLabel", BG)
tit.Size = UDim2.new(0,300,0,20)
tit.Position = UDim2.new(0,0,0,0)
tit.BackgroundTransparency = "0.5"
tit.Text = "Double click to play!!"
tit.Name = "Title"
tit.BackgroundColor3 = Color3.new(27,42,53)
local chrono = Instance.new("TextButton", BG)
chrono.Size = UDim2.new(0,300,0,20)
chrono.Position = UDim2.new(0,0,0,20)
chrono.BackgroundTransparency = "0.5"
chrono.Text = "chrono"
chrono.Name = "Chrono"
        chrono.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=1280463"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=1280463"
        so2.Pitch = "1"
        so2:play()
        end)
local rickroll = Instance.new("TextButton", BG)
rickroll.Size = UDim2.new(0,300,0,20)
rickroll.Position = UDim2.new(0,0,0,40)
rickroll.BackgroundTransparency = "0.5"
rickroll.Text = "rickroll"
rickroll.Name = "Rickroll"
        rickroll.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=2027611"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=2027611"
        so2.Pitch = "1"
        so2:play()
        end)
local ER = Instance.new("TextButton", BG)
ER.Size = UDim2.new(0,300,0,20)
ER.Position = UDim2.new(0,0,0,60)
ER.BackgroundTransparency = "0.5"
ER.Text = "ER"
ER.Name = "ER"
        ER.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=1372257"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=1372257"
        so2.Pitch = "1"
        so2:play()
        end)
local syfy = Instance.new("TextButton", BG)
syfy.Size = UDim2.new(0,300,0,20)
syfy.Position = UDim2.new(0,0,0,80)
syfy.BackgroundTransparency = "0.5"
syfy.Text = "syfy"
syfy.Name = "Syfy"
        syfy.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=33810432"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=33810432"
        so2.Pitch = "1"
        so2:play()
        end)
local win = Instance.new("TextButton", BG)
win.Size = UDim2.new(0,300,0,20)
win.Position = UDim2.new(0,0,0,100)
win.BackgroundTransparency = "0.5"
win.Text = "win"
win.Name = "Win"
        win.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=27697735"
        so.Pitch = "3"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=27697735"
        so2.Pitch = "3"
        so2:play()
        end)
local war = Instance.new("TextButton", BG)
war.Size = UDim2.new(0,300,0,20)
war.Position = UDim2.new(0,0,0,120)
war.BackgroundTransparency = "0.5"
war.Text = "war"
war.Name = "War"
        war.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset?id=1034065"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset?id=1034065"
        so2.Pitch = "1"
        so2:play()
        end)
local mario64 = Instance.new("TextButton", BG)
mario64.Size = UDim2.new(0,300,0,20)
mario64.Position = UDim2.new(0,0,0,140)
mario64.BackgroundTransparency = "0.5"
mario64.Text = "mario64"
mario64.Name = "Mario64"
        mario64.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=1280470"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=1280470"
        so2.Pitch = "1"
        so2:play()
        end)
local epic = Instance.new("TextButton", BG)
epic.Size = UDim2.new(0,300,0,20)
epic.Position = UDim2.new(0,0,0,160)
epic.BackgroundTransparency = "0.5"
epic.Text = "epic"
epic.Name = "Epic"
        epic.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=35930009"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=35930009"
        so2.Pitch = "1"
        so2:play()
        end)
local lol = Instance.new("TextButton", BG)
lol.Size = UDim2.new(0,300,0,20)
lol.Position = UDim2.new(0,0,0,180)
lol.BackgroundTransparency = "0.5"
lol.Text = "lol"
lol.Name = "Lol"
        lol.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=2303479"
        so.Pitch = "1.1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=2303479"
        so2.Pitch = "1.1"
        so2:play()
        end)
local wk = Instance.new("TextButton", BG)
wk.Size = UDim2.new(0,300,0,20)
wk.Position = UDim2.new(0,0,0,200)
wk.BackgroundTransparency = "0.5"
wk.Text = "wk"
wk.Name = "Wk"
        wk.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=5986151"
        so.Pitch = "1"
        so:play()
        end)
local med = Instance.new("TextButton", BG)
med.Size = UDim2.new(0,300,0,20)
med.Position = UDim2.new(0,0,0,220)
med.BackgroundTransparency = "0.5"
med.Text = "med"
med.Name = "Med"
        med.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        so.SoundId = "http://www.roblox.com/asset/?id=5982975"
        so.Pitch = "1"
        so:play()
        so2.SoundId = "http://www.roblox.com/asset/?id=5982975"
        so2.Pitch = "1"
        so2:play()
        end)
        local st = Instance.new("TextButton", BG)
st.Size = UDim2.new(0,300,0,20)
st.Position = UDim2.new(0,0,0,240)
st.BackgroundTransparency = "0.5"
st.Text = "Stop"
st.Name = "Stop"
        st.MouseButton1Down:connect(function()
        so:stop()
        so2:stop()
        end)
        local vo = Instance.new("TextButton", BG)
vo.Size = UDim2.new(0,20,0,20)
vo.Position = UDim2.new(0,-75,0,280)
vo.BackgroundTransparency = "0.5"
vo.Text = "^"
vo.Name = "Volume"
        vo.MouseButton1Down:connect(function()
        so.Volume = so.Volume + "0.1"
        so2.Volume = so2.Volume + "0.1"
        end)
        local vot = Instance.new("TextLabel", BG)
vot.Size = UDim2.new(0,40,0,20)
vot.Position = UDim2.new(0,-55,0,280)
vot.BackgroundTransparency = "0.5"
vot.Text = "..Volume.."
vot.Name = "RVolume"
coroutine.resume(coroutine.create(function() 
        while wait() do 
        vol.Value = string.sub(so.Volume,1,3)
        if vol.Value == "1.4" then
        vol.Value = "0.0"
        elseif vol.Value == "1.2" then
        vol.Value = "0.0"
        elseif vol.Value == "1.3" then
        vol.Value = "0.0"
        elseif vol.Value == "1.5" then
        vol.Value = "0.0"
        elseif vol.Value == "1.6" then
        vol.Value = "0.0"
        elseif vol.Value == "1.7" then
        vol.Value = "0.0"
        elseif vol.Value == "1.8" then
        vol.Value = "0.0"
        elseif vol.Value == "1.9" then
        vol.Value = "0.0"
        elseif vol.Value == "0.0" then
        vol.Value = "0"
        so.Volume = "0"
        so2.Volume = "0"
        end
        vot.Text = ""..vol.Value..""
        end
end))
        local dow = Instance.new("TextButton", BG)
dow.Size = UDim2.new(0,20,0,20)
dow.Position = UDim2.new(0,-15,0,280)
dow.BackgroundTransparency = "0.5"
dow.Text = "v"
dow.Name = "Volume"
        dow.MouseButton1Down:connect(function()
        so.Volume = so.Volume + "-0.1"
        so2.Volume = so2.Volume + "-0.1"
        end)
        local voq = Instance.new("TextButton", BG)
voq.Size = UDim2.new(0,20,0,20)
voq.Position = UDim2.new(0, 5,0,280)
voq.BackgroundTransparency = "0.5"
voq.Text = "^"
voq.Name = "Pitch"
        voq.MouseButton1Down:connect(function()
        so.Pitch = so.Pitch + "0.1"
        so2.Pitch = so2.Pitch + "0.1"
        end)
        local votq = Instance.new("TextLabel", BG)
votq.Size = UDim2.new(0,40,0,20)
votq.Position = UDim2.new(0, 25,0,280)
votq.BackgroundTransparency = "0.5"
votq.Text = "..Volume.."
votq.Name = "RVolume"
coroutine.resume(coroutine.create(function() 
        while wait() do 
        volq.Value = string.sub(so.Pitch,1,3)
        if volq.Value == "-0." then
        volq.Value = "0.1"
        so.Pitch = "0.1"
        so2.Pitch = "0.1"
        elseif volq.Value == "10." then
        volq.Value = "9.9"
        so.Pitch = "9.9"
        so2.Pitch = "9.9"
        end
        votq.Text = ""..volq.Value..""
        end
end))
        local dowq = Instance.new("TextButton", BG)
dowq.Size = UDim2.new(0,20,0,20)
dowq.Position = UDim2.new(0, 65,0,280)
dowq.BackgroundTransparency = "0.5"
dowq.Text = "v"
dowq.Name = "Volume"
        dowq.MouseButton1Down:connect(function()
        so.Pitch = so.Pitch + "-0.1"
        so2.Pitch = so2.Pitch + "-0.1"
        end)
        local dowqq = Instance.new("TextButton", BG)
dowqq.Size = UDim2.new(0,30,0,20)
dowqq.Position = UDim2.new(0, 85,0,280)
dowqq.BackgroundTransparency = "0.5"
dowqq.Text = "<<"
dowqq.Name = "Volume"
        dowqq.MouseButton1Down:connect(function()
        so.Pitch = "-1"
        so2.Pitch = "-1"
        end)
        local foq = Instance.new("TextButton", BG)
foq.Size = UDim2.new(0,30,0,20)
foq.Position = UDim2.new(0, 115,0,280)
foq.BackgroundTransparency = "0.5"
foq.Text = ">>"
foq.Name = "Volume"
        foq.MouseButton1Down:connect(function()
        so.Pitch = "1"
        so2.Pitch = "1"
        end)
rtune.BackgroundTransparency = .5
end
rtune.MouseButton1Down:connect(onButtonClickedTunez)
function onButtonClickedNotes()
table.insert(actionlog,"Started Notes.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local s = Instance.new("ScreenGui",a)
s.Name = "NotesUI"
local g = Instance.new("Frame",s)
g.Name = "Note_Typer"
g.Position = UDim2.new(0,250 , 0,50)
g.Size = UDim2.new(0,500 , 0,500)
g.Style = "Custom"
g.BackgroundColor = BrickColor.new(255,255,0)
f = Instance.new("TextBox",s)
f.Name = "ScriptInputSource_UI"
f.BackgroundTransparency = 1
f.Position = UDim2.new(0,295 , 0,60)
f.Size = UDim2.new(0,400 , 0,350)
f.TextColor3 = Color(0,0,0)
f.TextWrap = true
f.Text = gNotes.Value
f.Text = "Hello, this is Notes.app. Please enjoy, version 1.0. Click here to type!"
f.MultiLine = false -- Must be to solve NoteNotSaving bug, at least for now.  
g.BackgroundTransparency = .5
if gNotes.Value ~= "" then
f.Text = gNotes.Value
end
while true do 
wait()
gNotes.Value = f.Text
end
end
rtu.MouseButton1Down:connect(onButtonClickedNotes)
function onButtonClicked2()
table.insert(actionlog,"Started Day/Night Changer App (dn.app)")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local s = Instance.new("ScreenGui",a)
s.Name = "DN_UI"
local t = Instance.new("StringValue",s)
t.Name = "DNVal"
local g = Instance.new("Frame",s)
g.Name = "DN_APP_UI"
g.Position = UDim2.new(0,250 , 0,50)
g.Size = UDim2.new(0,500 , 0,500)
g.Style = "RobloxRound"
f = Instance.new("TextBox",s)
f.Name = "TimeInputBox_UI"
f.BackgroundTransparency = 1
f.Position = UDim2.new(0,295 , 0,60)
f.Size = UDim2.new(0,400 , 0,250)
f.TextColor3 = Color(248,248,248)
f.Text = "Enter Time Here"
tt = true
while tt do 
wait()
if f.Text ~= "Enter Time Here" then
t.Value = f.Text 
game.Lighting.TimeOfDay = t.Value
tt = false
g:Destroy()
f:Destroy()
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
scan()
 if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
de.MouseButton1Down:connect(onButtonClicked2)
function onClick3()
table.insert(actionlog,"Went home")
tt = false
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
rtune.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
noteui21.Visible = true
appui1.Visible = true
scan()
 
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
start = true
scan()
if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
scan()
if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
scan()
end
end
end
end
end
end
end
end
end
end
b.MouseButton1Down:connect(onClick3)
function onClick4()
table.insert(actionlog,"Started ScriptUtil.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local s = Instance.new("ScreenGui",a)
s.Name = "SU_UI"
af = Instance.new("TextLabel",s)
af.Name = "ScrUtil_Intro"
af.BackgroundTransparency = 1
af.Position = UDim2.new(0,295 , 0,60)
af.Size = UDim2.new(0,400 , 0,150)
af.TextColor3 = Color(234,234,234)
af.Text = "RiOS Script Utility. Version 1.0. Enjoy"
local t = Instance.new("StringValue",s)
t.Name = "SULS"
local g = Instance.new("Frame",s)
g.Name = "SU_APP_UI"
g.Position = UDim2.new(0,250 , 0,50)
g.Size = UDim2.new(0,500 , 0,500)
g.Style = "RobloxRound"
f = Instance.new("TextBox",s)
f.Name = "ScriptInputSource_UI"
f.BackgroundTransparency = 1
f.Position = UDim2.new(0,295 , 0,60)
f.Size = UDim2.new(0,400 , 0,250)
f.TextColor3 = Color(248,248,248)
f.Text = "Enter Script Source Here"
tt = true
while tt do 
wait()
if f.Text ~= "Enter Script Source Here" then
t.Value = f.Text
pcall(loadstring(t.Value))
tt = false
g:Destroy()
f:Destroy()
af:Destroy()
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
---EVERY VALUE THAT MUST BE VISIBLE OR NOT---- DONT CHANGE, I'VE WORKED SO HARD!!!
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
cbg.Visible = true
noteui21.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
scan()
  if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
end
 -- Having to do it manually, as the values wont work for some reason. 
end
end
end
end
end
end
ft.MouseButton1Down:connect(onClick4)
function onButtonClicked()
table.insert(actionlog,"Opened ActionLog.app")
for i,v in pairs(game.Players:GetChildren()) do 
if v:findFirstChild("PlayerGui") then
if v.PlayerGui:findFirstChild("ActionLog.app") == nil then
local cmd = 1
local sg = Instance.new("ScreenGui", v.PlayerGui)
sg.Name = "ActionLog.app"
local fr = Instance.new("Frame", sg)
fr.Name = "Main"
fr.Size = UDim2.new(0.3, 0, 0.3, 0)
fr.BackgroundTransparency = 1
fr.Position = UDim2.new(0, 0, 0.3, 0)
local tab1 = Instance.new("Frame", fr)
tab1.Size = UDim2.new(1, 0, 1, 0)
tab1.Name = "List"
tab1.BackgroundColor3 = Color3.new(0, 0, 0)
tab1.BackgroundTransparency = 0.7
tab1.BorderColor3 = Color3.new(1, 1, 1)
local e = Instance.new("TextButton", fr)
e.Size = UDim2.new(1, 0, 0.1, 0)
e.Text = "Exit"
e.FontSize = "Size11"
e.BackgroundColor3 = Color3.new(0, 0, 0)
e.BorderColor3 = Color3.new(1, 1, 1)
e.TextColor3 = Color3.new(1, 1, 1)
e.Position = UDim2.new(0, 0, -0.1, 0)
local nb = Instance.new("TextButton", fr)
nb.Size = UDim2.new(0.25, 0, 0.1, 0)
nb.Text = "Next"
nb.FontSize = "Size11"
nb.BackgroundColor3 = Color3.new(0, 0, 0)
nb.BorderColor3 = Color3.new(1, 1, 1)
nb.TextColor3 = Color3.new(1, 1, 1)
nb.Position = UDim2.new(0.75, 0, 1, 0)
local pb = Instance.new("TextButton", fr)
pb.Size = UDim2.new(0.25, 0, 0.1, 0)
pb.Text = "Previous"
pb.FontSize = "Size11"
pb.BackgroundColor3 = Color3.new(0, 0, 0)
pb.BorderColor3 = Color3.new(1, 1, 1)
pb.TextColor3 = Color3.new(1, 1, 1)
pb.Position = UDim2.new(0, 0, 1, 0)
e.MouseButton1Click:connect(function()
sg:remove()
end) 
onpg = 1
local on = 0
local currpage = 1
local page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
for n,c in pairs(actionlog) do
if on == 10 then
on = 0
currpage = currpage + 1
page = Instance.new("Frame", tab1)
page.Name = "Page"..currpage
page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
page.Visible = false
end
local but = Instance.new("TextButton", page)
but.Text = c
but.TextColor3 = Color3.new(1, 1, 1)
but.FontSize = "Size11"
but.Size = UDim2.new(1, 0, 0.1, 0)
but.BackgroundColor3 = Color3.new(0, 0, 0)
but.BorderColor3 = Color3.new(1, 1, 1)
but.BackgroundTransparency = 0.7
but.Position = UDim2.new(0, 0, on/10, 0)
on = on + 1
end
nb.MouseButton1Click:connect(function()
if currpage > onpg then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg + 1].Visible = true
onpg = onpg + 1 end end)
pb.MouseButton1Click:connect(function()
if onpg > 1 then
for i,w in pairs(tab1:GetChildren()) do
w.Visible = false
end 
tab1["Page"..onpg - 1].Visible = true
onpg = onpg - 1 end end)
end end end
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
scan()
 
tt = false
 if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
cimg.MouseButton1Down:connect(onButtonClicked)
function onClickAS()
table.insert(actionlog,"Started AppStore.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
function makeValues() --- Helps scan for a bug that could cause the download buttons to "stick"
if buy1 == true then 
tre.Visible = false
else
if buy2 == true then 
tres.Visible = false
tres:Destroy()
else
if buy3 == true then 
newt.Visible = false
newt:Destroy()
else 
if buy4 == true then 
newt2.Visible = false
newt2:Destroy()
end
end
end
end
end
function fixDisplayBugApp()
if buy4 == true then 
newt:Destroy()
end
end
function fixBug1() -- Fixes download sw.app download app button
if buy2 == true then 
tres:Destroy()
end
end
function fixBug2() --- Fixes settings.app download app button
if buy3 == true then 
newt:Destroy()
end
end
function fixBug4()
if buy4 == true then 
pcmd.Visible = true
plcmd.Visible = true
end
end
function fixBugUnKnown() --- Fixes Sw.app not showing when downloaded Settings.app
if buy2 == true then 
swu.Visible = true
swui2.Visible = true
end
end
local pto = Instance.new("ScreenGui",a)
pto.Name = "AppStore.app"
local fre = Instance.new("TextLabel",pto)
fre.BackgroundColor3 = Color(0,0,255)
fre.Name = "AppAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(255,255,255)
fre.Text = "Welcome to the App Store. Below is a list of apps to download"
wait()
fre.Text = "Welcome to the App Store. You have "..yo.. " apps to download!"
scanAS() --- This should solve the RestartApp bug. 
local tuy = Instance.new("Frame",pto)
tuy.Name = "AppStoreBGround_UI"
tuy.Position = UDim2.new(0,250 , 0,50)
tuy.Size = UDim2.new(0,500 , 0,500)
tuy.Style = "RobloxSquare"
--if buy1 == false then
reload()
tre = Instance.new("TextButton",pto) ----- Copy to add more apps!!!
i = 1 -- add plus 1 for each app 
tre.Name = "NewApp"..i
tre.Position = UDim2.new(0,250 , 0,150)
tre.Size = UDim2.new(0,500 , 0,20)
tre.Text = "Notes.app! Click here to download!"
tre.BackgroundColor = BrickColor.new(255,255,204) -- App to download
tres = Instance.new("TextButton",pto) ----- Copy to add more apps!!!
i = 2 -- add plus 1 for each app 
tres.Name = "NewApp"..i
tres.Position = UDim2.new(0,250 , 0,200)
tres.Size = UDim2.new(0,500 , 0,20)
tres.Text = "SW.app! Click here to download!"
tres.BackgroundColor = BrickColor.new(255,255,204) -- App to download
newt = Instance.new("TextButton",pto) ----- Copy to add more apps!!!
i = 3 -- add plus 1 for each app 
newt.Name = "NewApp"..i
newt.Position = UDim2.new(0,250 , 0,250)
newt.Size = UDim2.new(0,500 , 0,20)
newt.Text = "Settings.app! Click here to download!"
newt.BackgroundColor = BrickColor.new(255,255,204) -- App to download
newt2 = Instance.new("TextButton",pto) ----- Copy to add more apps!!!
i = 4 -- add plus 1 for each app 
newt2.Name = "NewApp"..i
newt2.Position = UDim2.new(0,250 , 0,300)
newt2.Size = UDim2.new(0,500 , 0,20)
newt2.Text = "PlrCmd.app! Click here to download!"
newt2.BackgroundColor = BrickColor.new(255,255,204) -- App to download
makeValues()
fixBug1()
fixBug2()
---Where's 3? NO bug for app #3!
fixBug4()
fixDisplayBugApp()
function onClickBuyP()
table.insert(actionlog,"Downloaded PlrCmd.app")
yo = yo - 1 
pcmd.Visible = true
plcmd.Visible = true
buy4 = true
scan() --  I know there's two
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
cbg.Visible = true
cimg.Visible = true
noteui21.Visible = true
rt.Visible = true
appui1.Visible = true
y.Visible = true
scan()
fixScanBug()
 if buy2 == false or buy3 == false or buy1 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
end
end
newt2.MouseButton1Down:connect(onClickBuyP)
function onClickBuy()
table.insert(actionlog,"Downloaded Notes.app")
yo = yo - 1 
rtu.Visible = true
noteui2.Visible = true
buy1 = true
scan() --  I know there's two
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
y.Visible = true
scan()
 if buy2 == false or buy3 == false or buy4 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
end
end
tre.MouseButton1Down:connect(onClickBuy)
function onClickBuy2()
 
swu.Visible = true
swui2.Visible = true
buy2 = true
table.insert(actionlog,"Downloaded SW.app")
yo = yo - 1
scan()
tres:Remove()
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
cbg.Visible = true
noteui21.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
swu.Visible = true
swui2.Visible = true
y.Visible = true
scan()
tres:Remove()
 if buy3 == false or buy1 == false or buy4 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
end
end
tres.MouseButton1Down:connect(onClickBuy2)
function onClickBuys3()
table.insert(actionlog,"Downloaded Settings.app")
yo = yo - 1 
set.Visible = true
set2.Visible = true
buy3 = true
scan() --  I know there's two
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
noteui21.Visible = true
ft.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
set.Visible = true
set2.Visible = true
y.Visible = true
scan()
fixScanBug()
fixBugUnKnown()
 if buy1 == false or buy2 == false or buy4 == false then 
reload("false")
badgeApp(rt, yo)
end
end
end
end
end
end
end
end
end
newt.MouseButton1Down:connect(onClickBuys3)
end
rt.MouseButton1Down:connect(onClickAS)
function onClickSet()
table.insert(actionlog,"Started Settings.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
pto = Instance.new("ScreenGui",a)
pto.Name = "Settings.app"
fre = Instance.new("TextLabel",pto)
fre.BackgroundColor3 = Color(255,255,0)
fre.Name = "SettingsAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(0,0,0)
--fre.Text = "-------------------------Settings-----------------------------"
 fre.Text = "Settings" -- Keep if you like this, or allow the other one
tuy = Instance.new("Frame",pto)
tuy.Name = "SettingsBGround_UI"  --- AppStore and Settings will look familar UNTIL 2.0 when all is redesigned!
tuy.Position = UDim2.new(0,250 , 0,50)
tuy.Size = UDim2.new(0,500 , 0,500)
tuy.Style = "RobloxSquare"
tre = Instance.new("TextButton",pto) 
i = 1 -- add plus 1 for each app 
tre.Name = "SettingsAbout"..i
tre.Position = UDim2.new(0,250 , 0,150)
tre.Size = UDim2.new(0,500 , 0,20)
tre.Text = "About"
tre.BackgroundColor = BrickColor.new(255,255,204) 
RCloudS = Instance.new("TextButton",pto) 
i = 2 -- add plus 1 for each app 
RCloudS.Name = "SettingsAction"..i
RCloudS.Position = UDim2.new(0,250 , 0,180)
RCloudS.Size = UDim2.new(0,500 , 0,20)
RCloudS.Text = "RCloud --- BETA! "
RCloudS.BackgroundColor = BrickColor.new(255,255,204)
sftupd = Instance.new("TextButton",pto) 
i = 3 -- add plus 1 for each app 
sftupd.Name = "SettingsAction"..i
sftupd.Position = UDim2.new(0,250 , 0,210)
sftupd.Size = UDim2.new(0,500 , 0,20)
sftupd.Text = "Software Update"
sftupd.BackgroundColor = BrickColor.new(255,255,204)
if sft >0 then
sftupd.Text = "Software Update: "..sft
end
fre:Destroy()
fre = Instance.new("TextLabel",pto)
fre.BackgroundColor3 = Color(255,255,0)
fre.Name = "SettingsAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(0,0,0)
--fre.Text = "-------------------------Settings-----------------------------"
 fre.Text = "Settings" -- Keep if you like this, or allow the other one
function onClickUpdateS()
sftupd.Visible = false
tre.Visible = false
RCloudS.Visible = false
 
tuy2 = Instance.new("Frame",pto)
tuy2.Name = "SftupdBGround_UI"
tuy2.Position = UDim2.new(0,250 , 0,50)
tuy2.Size = UDim2.new(0,500 , 0,500)
tuy2.Style = "RobloxSquare"
 fre2 = Instance.new("TextLabel",pto)
fre2.BackgroundColor3 = Color(255,0,0)
fre2.Name = "SftupdScanner"
fre2.Position = UDim2.new(0,250 , 0,60)
fre2.Size = UDim2.new(0,500 , 0,50)
fre2.TextColor3 = Color(255,255,255)
fre2.Text = "Software Updates: None"
fre2:Remove()
 fre2 = Instance.new("TextLabel",pto)
fre2.BackgroundColor3 = Color(255,0,0)
fre2.Name = "SftupdScanner"
fre2.Position = UDim2.new(0,250 , 0,60)
fre2.Size = UDim2.new(0,500 , 0,50)
fre2.TextColor3 = Color(255,255,255)
fre2.Text = "Software Updates: None"
appSub = "Software"
addBackButton()
end
sftupd.MouseButton1Down:connect(onClickUpdateS)
function onClickCat()
sftupd.Visible = false
tre.Visible = false
RCloudS.Visible = false
table.insert(actionlog,"Opened Settings/About")
appSub = "About_Settings" --- This will serve in going back!
addBackButton() --- For the future of RiOS, this will serve to go back to pages. Will add value soon!
tre2 = Instance.new("TextLabel",pto) 
i = 1 
tre2.Name = "AboutInfo"..i
tre2.Position = UDim2.new(0,250 , 0,150)
tre2.Size = UDim2.new(0,500 , 0,20)
tre2.Text = "RiOS Version: "..version
tre2.BackgroundColor = BrickColor.new(255,255,204) 
 
abt2 = Instance.new("TextLabel",pto) 
i = 2 
abt2.Name = "AboutInfo"..i
abt2.Position = UDim2.new(0,250 , 0,200)
abt2.Size = UDim2.new(0,500 , 0,20)
abt2.Text = "Carrier: Roblo-Tel"
abt2.BackgroundColor = BrickColor.new(255,255,204) 
tres3 = Instance.new("TextLabel",pto)
i = 3
tres3.Name = "AboutInfo"..i
tres3.Position = UDim2.new(0,250 , 0,250)
tres3.Size = UDim2.new(0,500 , 0,20)
tres3.Text = "RiOS Previous Versions Saved: YES"
tres3.BackgroundColor = BrickColor.new(255,255,204) 
cl1 = Instance.new("TextLabel",pto)
i = 4
cl1.Name = "AboutInfo"..i
cl1.Position = UDim2.new(0,250 , 0,300)
cl1.Size = UDim2.new(0,500 , 0,20)
cl1.Text = "RCloud Backup: "
cl1.BackgroundColor = BrickColor.new(255,255,204) 
 
if cloud == true then
cl1.Text = "RCloud Backup: Yes"
else
if cloud == false then 
cl1.Text = "RCloud Backup: No" 
end
end
end
tre.MouseButton1Down:connect(onClickCat)
function onClickCloud()
sftupd.Visible = false
RCloudS.Visible = false
tre.Visible = false
table.insert(actionlog,"Opened Settings/RCloud")
appSub = "About_RCloud"
addBackButton()
tre4= Instance.new("TextButton",pto) 
i = 1 
tre4.Name = "RCloudSelection"..i
tre4.Position = UDim2.new(0,250 , 0,150)
tre4.Size = UDim2.new(0,500 , 0,20)
tre4.Text = "BackUp Now --- Not available yet."
tre4.BackgroundColor = BrickColor.new(255,255,204) 
tre3 = Instance.new("TextButton",pto) 
i = 2
tre3.Name = "RCloudSelection"..i
tre3.Position = UDim2.new(0,250 , 0,180)
tre3.Size = UDim2.new(0,500 , 0,20)
tre3.Text = "Restore From Signed Version -- NOT AVAILABLE YET!"
tre3.BackgroundColor = BrickColor.new(255,255,204) 
function onClickBack()
h = Instance.new("Hint",workspace)
h.Text = "Error 168: App Must Close due to rearrange core files."
wait(3)
h.Text = "Error 168: Please stand by. Sending Crash Report...."
wait(3)
h.Text = "..."
wait(2)
h.Text = "Sent!"
wait(2)
h:Remove()
tre4.MouseButton1Down:connect(onClickBack)
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do
if p.className ~= "ScreenGui" then
p.Visible = false
y.Visible = true
x.Visible = true
comp.Visible = true
comp21.Visible = true
rtune.Visible = true
tr.Visible = true
de.Visible = true
sutil1.Visible = true
ft.Visible = true
noteui21.Visible = true
cbg.Visible = true
cimg.Visible = true
rt.Visible = true
appui1.Visible = true
scan()
 
for i,g in pairs(a:GetChildren()) do 
if g.className == "ScreenGui" then 
for i,y in pairs(g:GetChildren()) do 
if y.className == "Frame" or y.className == "TextBox" or y.className == "TextButton" or y.className == "ImageLabel" or y.className == "TextLabel" then
y.Visible = false
g:Destroy()
tt = true
start = true
scan()
if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
scan()
if buy1 == false or buy2 == false or buy3 == false then 
reload("false")
badgeApp(rt, yo)
scan()
end
end
end
end
end
end
end
end
end
end
end
RCloudS.MouseButton1Down:connect(onClickCloud)
end
set2.MouseButton1Down:connect(onClickSet)
function onClickSW()
table.insert(actionlog,"Opened Stopwatch.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
local pto = Instance.new("ScreenGui",a)
pto.Name = "Stopwatch.app"
local fre = Instance.new("TextLabel",pto)
fre.BackgroundColor3 = Color(0,0,255)
fre.Name = "SWAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(255,255,255)
fre.Text = "Stopwatch Time = "..time
local tuy = Instance.new("Frame",pto)
tuy.Name = "SWBGround_UI"
tuy.Position = UDim2.new(0,250 , 0,50)
tuy.Size = UDim2.new(0,500 , 0,500)
tuy.Style = "RobloxSquare"
local tre = Instance.new("TextButton",pto) 
start = false -- add plus 1 for each app 
tre.Name = "Start"
tre.Position = UDim2.new(0,250 , 0,150)
tre.Size = UDim2.new(0,500 , 0,20)
tre.Text = "START THE CLOCK"
tre.BackgroundColor = BrickColor.new(255,255,204) 
local stop = Instance.new("TextButton",pto) 
stop.Name = "Stop"
stop.Position = UDim2.new(0,250 , 0,200)
stop.Size = UDim2.new(0,500 , 0,20)
stop.Text = "STOP THE CLOCK"
stop.BackgroundColor = BrickColor.new(255,255,204) 
local save = Instance.new("TextButton",pto)
save.Name = "Save"
save.Position = UDim2.new(0,250, 0,250)
save.Size = UDim2.new(0,500 , 0,20)
save.Text = "Save Lap"
save.BackgroundColor = BrickColor.new(255,255,204)
saveBox = Instance.new("TextLabel",pto)
saveBox.Name = "SaveBox"
saveBox.Position = UDim2.new(0,250 , 0,300)
saveBox.Size = UDim2.new(0,500 , 0,20)
saveBox.BackgroundColor = BrickColor.new(255,255,204)
if saveLap == 0 then
saveBox.Text = "No time saved"
else 
if saveLap ~= 0 then
saveBox.Text = "Saved time "..saveLap
end
end
function scanStart()
while start do 
wait()
fre.Text = "Stopwatch Time = "..time
end
end
scanStart()
function onClickSave()
saved = false
saveNum = 0
saveBox.Text = "Saved time "..time
saveNum = time
saved = true
saveLap = saveNum
end
save.MouseButton1Down:connect(onClickSave)
function onClickST()
table.insert(actionlog, "Began Timer")
repeat 
start = true
wait()
time = time + 1
fre.Text = "Stopwatch Time = "..time
until start == false
end
tre.MouseButton1Down:connect(onClickST)
function onClickStop()
table.insert(actionlog, "Stopped Timer")
start = false
end
stop.MouseButton1Down:connect(onClickStop)
end
swu.MouseButton1Down:connect(onClickSW)
---More Space, getting kind of crowded---
function accessPlr_Cmd()
table.insert(actionlog,"Started Plr_Cmd.app")
for i,v in pairs(ma:GetChildren()) do 
for i,p in pairs(v:GetChildren()) do 
if p.className ~= "ScreenGui" then
p.Visible = false
end
end
end
mainUI = Instance.new("ScreenGui",a)
mainUI.Name = "Plr_Cmd.app"
fre = Instance.new("TextLabel",mainUI)
fre.BackgroundColor3 = Color(255,255,0)
fre.Name = "Plr_CmdAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(0,0,0)
fre.Text = "Player Commdands" 
tuy = Instance.new("Frame",mainUI)
tuy.Name = "SettingsBGround_UI"  
tuy.Position = UDim2.new(0,250 , 0,50)
tuy.Size = UDim2.new(0,500 , 0,500)
tuy.Style = "RobloxSquare"
tre = Instance.new("TextButton",mainUI) 
i = 1 -- add plus 1 for each app 
tre.Name = "PlrCmd"..i
tre.Position = UDim2.new(0,250 , 0,150)
tre.Size = UDim2.new(0,500 , 0,20)
tre.Text = "Kill"
tre.BackgroundColor = BrickColor.new(255,255,204) 
tre2 = Instance.new("TextButton",mainUI) 
i = 2 -- add plus 1 for each app 
tre2.Name = "PlrCmd"..i
tre2.Position = UDim2.new(0,250 , 0,180)
tre2.Size = UDim2.new(0,500 , 0,20)
tre2.Text = "Kick"
tre2.BackgroundColor = BrickColor.new(255,255,204)
tre3 = Instance.new("TextButton",mainUI) 
i = 3 -- add plus 1 for each app 
tre3.Name = "PlrCmd"..i
tre3.Position = UDim2.new(0,250 , 0,210)
tre3.Size = UDim2.new(0,500 , 0,20)
tre3.Text = "Ban"
tre3.BackgroundColor = BrickColor.new(255,255,204)
fre:Destroy()
fre = Instance.new("TextLabel",mainUI)
fre.BackgroundColor3 = Color(255,255,0)
fre.Name = "SettingsAlertIntro"
fre.Position = UDim2.new(0,250 , 0,60)
fre.Size = UDim2.new(0,500 , 0,50)
fre.TextColor3 = Color(0,0,0)
fre.Text = "Player Commands" 
---Button Connectors---
function onClickKill()
screen = Instance.new("ScreenGui")
screen.Name = "Main_Kill"
screen.Parent = mainUI
--------------------
tre.Visible = false
fre.Visible = false
tre2.Visible = false
tre3.Visible = false
--------------------
function getPlayers()
g = 2
for i=1,#players do 
new = Instance.new("TextButton",mainUI) 
new.Name = players[i]
new.Position = UDim2.new(0,250,0,--[[i * 75]]g * 20 + 40)
g = g + 1
new.Size = UDim2.new(0,500 , 0,20)
new.Text = players[i]
new.BackgroundColor = BrickColor.new(255,255,204) 
function onClickPlr()
for i,v in pairs(game.Players:GetChildren()) do 
if v.Name == new.Text then 
v.Character.Head:Remove()
end
end
end
new.MouseButton1Down:connect(onClickPlr)
end
end
getPlayers()
end
tre.MouseButton1Down:connect(onClickKill)
function onClickKick()
screen = Instance.new("ScreenGui")
screen.Name = "Main_Kick"
screen.Parent = mainUI
tre.Visible = false
fre.Visible = false
tre2.Visible = false
tre3.Visible = false
function getPlayers()
g = 2
for i=1,#players do 
new = Instance.new("TextButton",mainUI) 
new.Name = players[i]
new.Position = UDim2.new(0,250,0,--[[i * 75]]g * 20 + 40)
g = g + 1
new.Size = UDim2.new(0,500 , 0,20)
new.Text = players[i]
new.BackgroundColor = BrickColor.new(255,255,204) 
function onClickPlr()
for i,v in pairs(game.Players:GetChildren()) do 
if v.Name == new.Text then 
v:Remove()
end
end
end
new.MouseButton1Down:connect(onClickPlr)
end
end
getPlayers()
end
tre2.MouseButton1Down:connect(onClickKick)
function onClickBan()
screen = Instance.new("ScreenGui")
screen.Name = "Main_Ban"
screen.Parent = mainUI
tre.Visible = false
fre.Visible = false
tre2.Visible = false
tre3.Visible = false
function getPlayers()
g = 2
for i=1,#players do 
new = Instance.new("TextButton",mainUI) 
new.Name = players[i]
new.Position = UDim2.new(0,250,0,--[[i * 75]]g * 20 + 40)
g = g + 1
new.Size = UDim2.new(0,500 , 0,20)
new.Text = players[i]
new.BackgroundColor = BrickColor.new(255,255,204) 
function onClickPlr()
for i,v in pairs(game.Players:GetChildren()) do 
if v.Name == new.Text then 
v:Remove()
table.insert(banned,v.Name)
end
end
end
new.MouseButton1Down:connect(onClickPlr)
end
end
getPlayers()
end
tre3.MouseButton1Down:connect(onClickBan)
---Button Connectors---
end
plcmd.MouseButton1Down:connect(accessPlr_Cmd)
end
makeMainUI1()
getTime()
multitask()
--bootWithKey()
function onEnter(p)
for i,v in pairs(banned) do 
if p.Name == v then 
p:Remove()
end
end
print("Someone entered")
table.insert(players,v.Name)
end
game.Players.ChildAdded:connect(onEnter)
