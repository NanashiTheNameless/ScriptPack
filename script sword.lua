Name="yfc" 
player=game.Players[Name] 
char=player.Character 
Color=BrickColor.new("Dark stone grey") 
Color2=BrickColor.new(Color3.new(0,0,0)) 
model=Instance.new("Model") 
model.Name="Suit" 
model.Parent=char 
d=0 
Debounce=true 

char.Head.Changed:connect(function(p) 
if p=="BrickColor" then 
wait() 
pcall(function() 
char.Head.face:Remove() 
char.Torso.roblox:remove() 
char["Shirt Graphic"]:remove() 
end) 
char.Humanoid.WalkSpeed=25 
for _,v in pairs(char:children()) do 
if v.className=="Hat" then 
v:remove() 
elseif v:IsA("Part") then 
v.BrickColor=Color2 
v.TopSurface="Smooth" 
v.BottomSurface="Smooth" 
elseif v:IsA("Shirt") or v:IsA("Pants") then 
v:remove() 
end 
end 
end 
end) 
char.Head.BrickColor=Color2 

Tor=Instance.new("Part") 
Tor.Size=Vector3.new(1,1,1) 
Tor.BrickColor=Color2 
Tor.Reflectance=0 
Tor.Transparency=0 
Tor.CanCollide=false 
Tor.Parent=char 
Mesh=Instance.new("SpecialMesh") 
Mesh.MeshId="http://www.roblox.com/asset/?id=16952952" 
Mesh.Scale=Vector3.new(1.05,1.05,1.05) 
Mesh.Parent=Tor 
w = Instance.new("Weld") 
w.Parent = char["Head"] 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.35,0) 

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem 
function Add(object,delay) 
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end)) 
end 

if script.Parent.className~="HopperBin" then 
Sword = Instance.new("HopperBin") 
Sword.Parent = game.Players[Name].Backpack 
Sword.Name="Sword" 
script.Parent=Sword 
end 

Sword=script.Parent 

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]} 

function hint(msg,de) 
local h=Instance.new("Hint") 
h.Text=tostring(msg) 
h.Parent=player 
Delay(tonumber(de),function() h:remove() end) 
end 

function makeSword() 
Sword=model 
wait(0.1) 
Handle=Instance.new("Part") 
Handle.Size=Vector3.new(1,1,1) 
Handle.Parent=Sword 
Handle.BrickColor=Color2 
Handle.Name="Handle" 
Mesh=Instance.new("SpecialMesh") 
Mesh.MeshType=0 
Mesh.Parent=Handle 
Mesh.Scale=Vector3.new(0.4,0.75,0.4) 
HenWeld=Instance.new("Weld") 
HenWeld.Parent=char["Right Arm"] 
HenWeld.Part1=HenWeld.Parent 
HenWeld.Part0=Handle 
HenWeld.C0=CFrame.new(0,-0.2,1)*CFrame.Angles(math.rad(90),math.rad(25),0) 
Hy=HenWeld.C0 
GripTop=Instance.new("Part") 
GripTop.BrickColor=BrickColor.new(27) 
GripTop.Size=Vector3.new(1,1,1) 
GripTop.Parent=Sword 
GripTop.Name="GripTop" 
Mesh=Instance.new("BlockMesh") 
Mesh.Parent=GripTop 
Mesh.Scale=Vector3.new(0.47,0.15,.97) 
Weld=Instance.new("Weld") 
Weld.Parent=Handle 
Weld.Part1=Weld.Parent 
Weld.Part0=GripTop 
Weld.C0=CFrame.new(0,-0.4,0) 
Blade1=Instance.new("Part") 
Blade1.BrickColor=Color 
Blade1.Size=Vector3.new(1,5,1) 
Blade1.Parent=Sword 
Blade1.Name="Blade1" 
Blade1.Reflectance=0.11 
Mesh=Instance.new("BlockMesh") 
Mesh.Parent=Blade1 
Mesh.Scale=Vector3.new(0.1,0.95,0.8) 
Weld=Instance.new("Weld") 
Weld.Parent=Handle 
Weld.Part1=Weld.Parent 
Weld.Part0=Blade1 
Weld.C0=CFrame.new(0,-2.69,0) 
Pi=Blade1.Touched:connect(Hit) 
end 



function Button(mouse) 
for i=0,0.6,0.05 do 
wait() 
local p=Blade1:Clone() 
p.Transparency=0.7 
p.Reflectance=0 
p.BrickColor=Color2 
p.Anchored=true 
p.CanCollide=false 
p.Parent=workspace 
Delay(0.35,function() p:remove() end) 
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0.05/2) 
end 
wait() 
for i=0.95,0,-.05 do 
local p=Blade1:Clone() 
p.Transparency=0.7 
p.Reflectance=0 
p.BrickColor=Color2 
p.Anchored=true 
p.CanCollide=false 
p.Parent=workspace 
Delay(0.35,function() p:remove() end) 
wait() 
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.1/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/2) 
end 
wait() 
for i=0,0.35,0.05 do 
wait() 
local p=Blade1:Clone() 
p.Transparency=0.7 
p.Reflectance=0 
p.BrickColor=Color2 
p.Anchored=true 
p.CanCollide=false 
p.Parent=workspace 
Delay(0.35,function() p:remove() end) 
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0) 
end 
w2.C0=Wr 
end 


fire={Click} 
name={"Slash"} 
klick={"f"} 

function Kay(ke) 
for _,v in pairs(klick) do 
if v==ke then 
return _ 
end 
end 
return false 
end 

f=Sword.Selected:connect(function(mouse) 
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here. 
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then 
d=1 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
De=0 
f:disconnect() 
pcall(function() game["LocalBackpack"]:children()[1]:remove() end) 
Debou=true 
Numb=Instance.new("NumberValue") 
Numb.Value=0 
Numb.Parent=Sword 
Numb.Changed:connect(function() 
if Debou then 
Debou=false 
wait(0.2) 
ghk:disconnect() 
if Numb.Value>1 then 
Numb.Value=0 
Button2() 
else Numb.Value=0 
Button() 
end 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function() 
if Debounce then 
Debounce=false 
Numb.Value=Numb.Value+1 
wait() 
Debounce=true 
end 
end) 
end) 
Debou=true 
end 
end) 

Arms[2].Parent=nil 
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr" 
w2.Parent = char.Torso 
w2.Part0 = char["Right Arm"] 
w2.Part1 = w2.Parent 
makeSword() 
---Animation Start--- 
for i=0,1,0.05 do 
wait() 
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(73*-i),math.rad(-i*45),math.rad(-i*20)) 
end --Suggest you change my horrible welds. 
----Animation End---- 
------------------Custom Buttons------------ 
function Button2(mouse) 
p = Instance.new("Part") 
p.Parent = workspace 
p.BrickColor = BrickColor.new("Bright blue") 
p.Anchored = true 
p.CFrame = player.Character.Torso.CFrame + Vector3.new(0, -3, 0) 
player.Character.Torso.CFrame = player.Character.Torso.CFrame + Vector3.new(0, 2, 0) 
p.Size = Vector3.new(5, 1, 5) 
m = Instance.new("SpecialMesh") 
m.Parent = p 
m.MeshType = "Sphere" 
p.Touched:connect(function(v) pcall(function() v.Parent.Humanoid.Health = 100 
wait(2) 
p:remove() 
end) 
end) 
end 

fire={Button2} 
name={"Can u ask render tomoro?"} 
klick={"x"} 
---------------------------------end 
Wr=w2.C0 
wait() 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function() 
if Debounce then 
Debounce=false 
Numb.Value=Numb.Value+1 
wait() 
Debounce=true 
end 
end) 
end) 
mouse.KeyDown:connect(function(key) 
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2) 
wait() 
fire[Kay(tostring(key))](mouse) 
end 
end) 
end 
end) 

function Hit(h) 
pcall(function() h.Parent.Humanoid:TakeDamage(25) end) 
end 