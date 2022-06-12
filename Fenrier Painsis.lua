Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Painis" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function ob1d(mouse) 
size=0.5
mode=1
color=BrickColor.new(Color3.new(math.random(),math.random(),math.random())) 
mo=Instance.new("Model") 
mo.Name="EEEEUGH HA HA HAAAAA" 
mo.Parent=workspace 
game.Debris:AddItem(mo,10)
p=Instance.new("Seat") 
p.Name="Torso" 
p.Size=Vector3.new(14,50,14)*size
p.BrickColor=color
m=Instance.new("SpecialMesh") 
m.Parent=p 
p.Name="Torso" 
p.Parent=mo 
p=Instance.new("Seat") 
p.Shape="Ball" 
p.Size=Vector3.new(24,24,24)*size
p.BrickColor=color
p.Name="Legball" 
for i=1, 10 do 
lol=Instance.new("Seat") 
lol.BrickColor=BrickColor:Black() 
lol.Name="SEE?" 
lol.Parent=mo 
lol.Size=Vector3.new(1,math.random(30,40),1) *size
w=Instance.new("Weld") 
w.Part0=p 
w.Part1=lol 
w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
w.Parent=w.Part0 
end 
p.Parent=mo 
w=Instance.new("Weld") 
w.Part0=mo.Torso 
w.Part1=p 
w.C0=CFrame.new(16*(size/2),-48*(size/2),0) 
w.Parent=w.Part0 
p=Instance.new("Seat") 
p.Shape="Ball" 
p.Size=Vector3.new(24,24,24)*size
p.BrickColor=color
p.Name="Legball" 
for i=1, 10 do 
lol=Instance.new("Seat") 
lol.BrickColor=BrickColor:Black() 
lol.Name="SEE?" 
lol.Parent=mo 
lol.Size=Vector3.new(1,math.random(30,40),1) *size
w=Instance.new("Weld") 
w.Part0=p 
w.Part1=lol 
w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
w.Parent=w.Part0 
end 
p.Parent=mo 
w=Instance.new("Weld") 
w.Part0=mo.Torso 
w.Part1=p 
w.C0=CFrame.new(-16*(size/2),-48*(size/2),0) 
w.Parent=w.Part0 
p=Instance.new("Seat") 
p.Shape="Ball" 
p.Size=Vector3.new(21,15,21)*size
p.BrickColor=color
p.Name="Legball" 
for i=1, 10 do 
lol=Instance.new("Seat") 
lol.BrickColor=BrickColor:Black() 
lol.Name="SEE?" 
lol.Parent=mo 
lol.Size=Vector3.new(1,math.random(30,40),1) *size
w=Instance.new("Weld") 
w.Part0=p 
w.Part1=lol 
w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10)) 
w.Parent=w.Part0 
end 
p.Parent=mo 
w=Instance.new("Weld") 
w.Part0=mo.Torso 
w.Part1=p 
w.C0=CFrame.new(0,60*(size/2),0) 
m=Instance.new("SpecialMesh") 
m.Parent=p 
p.Name="Head" 
w.Parent=w.Part0 
s=Instance.new("Sound")
s.Parent=mo.Torso
s.Volume=100
s.Pitch=1
s.SoundId="http://www.roblox.com/asset/?id=149779810"
s.Looped=true
s:play()
coroutine.resume(coroutine.create(function(Part)
while Part.Parent~=nil do
wait(math.random())
--[[derp=math.random(1,11)
if derp==1 then
so("http://www.roblox.com/asset/?id=151172618",Part,100,math.random(0,2)+math.random()) --PINGAS
elseif derp==2 then
so("http://www.roblox.com/asset/?id=148636758",Part,100,math.random(0,2)+math.random()) --POOTIS
elseif derp==3 then
so("http://www.roblox.com/asset/?id=132026302",Part,100,math.random(0,2)+math.random()) --MEEM
elseif derp==4 then
so("http://www.roblox.com/asset/?id=131228548",Part,100,math.random(0,2)+math.random()) --GET OVER HERE
elseif derp==5 then
so("http://www.roblox.com/asset/?id=131554451",Part,100,math.random(0,2)+math.random()) --DED
elseif derp==6 then
so("http://www.roblox.com/asset/?id=130818264",Part,0.5,math.random(0,2)+math.random()) --ALL TOASTERS
elseif derp==7 then
so("http://www.roblox.com/asset/?id=131313234",Part,100,math.random(0,2)+math.random()) --BOOM HEDSHOT
elseif derp==8 then
so("http://www.roblox.com/asset/?id=130770819",Part,100,math.random(0,2)+math.random()) --I SELL PROPANE
elseif derp==9 then
so("http://www.roblox.com/asset/?id=130776108",Part,100,math.random(0,2)+math.random()) --OM NOM NOM
elseif derp==10 then
so("http://www.roblox.com/asset/?id=130768126",Part,100,math.random(0,2)+math.random()) --DRINK YO PRUNE JUICE
elseif derp==11 then
so("http://www.roblox.com/asset/?id=130815729",Part,100,math.random(0,2)+math.random()) --NOPE.AVI
end]]
so("http://www.roblox.com/asset/?id=148636758",Part,100,1) --GOTTA GO FAST
end
end),mo.Torso)
--[[mo:MoveTo(Vector3.new(math.random(-300,300),60,math.random(-300,300))) 
mo.Torso.CFrame=mo.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
]]
--mo:MoveTo(Vector3.new(0,60,0)) 
mo.Torso.CFrame=mo.Torso.CFrame*Torso.CFrame*CFrame.new(0,0,-50*size)*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
mo.Torso.Velocity=mouse.Hit.lookVector * 400
coroutine.resume(coroutine.create(function(Part)
while true do
wait(math.random(0,1)+math.random())
Part.RotVelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40)) 
--Part.RotVelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) 
end
end),mo.Torso)
end 
 
function ob1u(mouse) 
end 
 
buttonhold = false 
 
function key(key,mouse) 
end 
 
function key2(key,mouse) 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
end 
 
function ds(mouse) 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds)