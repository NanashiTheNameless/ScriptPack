:ls local P=script.Parent.Parent.Name -- DON'T NEED TO ADD YOUR NAME ON ANYTHING/JUST RUN IT
if (script.Parent.className=="Backpack") or (script.Parent.className=="PlayerGui") then
if (script.Parent.Parent.className=="Player") then
P=script.Parent.Parent.Name
end
end
if (script.Parent.className=="Model") then -- REMEMBER,IT MIGHT GET YOU BANED.. from the server
local Player=game.Players:GetPlayerFromCharacter(script.Parent)
if (Player~=nil) then
P=Player.Name
end
end
local Person=game.Players[P]
local Mode=nil
local Modes={"Kill (Shortcut: F)","Fire","Sparkles","Smoke","Random Colors","Freeze (Anchor)","Thaw (Un-Anchor)","ForceField","Un-ForceField","Delete","Lock","Un-Lock","Kick","Eat (Shortcut: H)","Box (Jail)","Ban (Shortcut: G)","Invisible","Visible","Explode (Shortcut: Y)","Teleport (Shortcut: T)","Noob Ray","[None]"}
local SoundIDs={2303479,35930009}
local InsertIDs={insert=36027057,dragger=35454593,delete=36018190,resize=35835547,color=33445720,material=34861564,surface=34861643}
local StarterBannedlist={"baxterknite","TinySB","Bansey"}
local View=1
local Fly=false
local FlySlow=false
local LoadedAnim=nil
local Tool=Instance.new("Tool")
Tool.Name="[_1/SB]"
Tool.Parent=Person.Backpack
Tool.GripPos=Vector3.new(0,-1,0)
local Handle=Instance.new("Part")
Handle.Parent=Tool
Handle.Size=Vector3.new(1,5,1)
Handle.Reflectance=1
Handle.BrickColor=BrickColor.new("Really red")
Handle.Name="Handle"
Handle.CanCollide=false
Handle.Locked=true
Handle.Transparency=0.5
local Mesh=Instance.new("SpecialMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.75,1,0.75)
Mesh.MeshType="Head"
local Ball=Instance.new("Part")
Ball.Shape="Ball"
Ball.BottomSurface="Smooth"
Ball.TopSurface="Smooth"
Ball.BrickColor=BrickColor.new("New Yeller")
Ball.Parent=Tool
Ball.Reflectance=1
Ball.Size=Vector3.new(2,2,2)
Ball.Position=Vector3.new(Person.Character.Head.Position.x,Person.Character.Head.Position.y+10,Person.Character.Head.Position.z)
Ball.Name="Torso"
Ball.Locked=true
local BallPosition=Instance.new("BodyPosition")
BallPosition.position=Vector3.new(Person.Character.Head.Position.x,Person.Character.Head.Position.y+10,Person.Character.Head.Position.z)
BallPosition.Name="BallPosition"
BallPosition.maxForce=Vector3.new(999999999,999999999,999999999)
BallPosition.Parent=Ball
local Sparkles=Instance.new("Sparkles")
Sparkles.Parent=Ball
Sparkles.Name="BallSparkles"
local Music=Instance.new("Sound")
Music.Parent=game.Workspace.CurrentCamera
Music.SoundId="http://www.roblox.com/Asset?ID="..SoundIDs[math.random(1,#SoundIDs)]
Music.Pitch=2
Music.Volume=1
Music.Name="Music"
Music.Looped=true
local Animation=Instance.new("Animation")
Animation.Parent=Tool
Animation.AnimationId="http://www.roblox.com/Asset?ID=28090109"
Animation.Name="SlashAnim"
local Humanoid=Instance.new("Humanoid")
Humanoid.Parent=Tool
Humanoid.Name="Hum"
local Lasso=Instance.new("SelectionPointLasso")
Lasso.Name="Lasso"
Lasso.Color=BrickColor.new("Really blue")
Lasso.Parent=Tool
script.Parent=Tool
script.Name="SBToolLocal"
function Ban(Player)
local Ban=_G.Bannedlist
if (Ban==nil) then
_G["Bannedlist"]=StarterBannedlist
end
table.insert(_G.Bannedlist,Player)
end
function ToolTouched(hit,mouse)
if (hit~=nil) then
if (hit.Parent~=Person.Character) then
if (Mode=="Kill (Shortcut: F)") then
local hum=hit.Parent:GetChildren()
for i=1,#hum do
if (hum[i].className=="Humanoid") then
hum[i].MaxHealth=100
hum[i].Health=nil
end
end
end
if (Mode=="Fire") then
Instance.new("Fire").Parent=hit
end
if (Mode=="Sparkles") then
Instance.new("Sparkles").Parent=hit
end
if (Mode=="Smoke") then
Instance.new("Smoke").Parent=hit
end
if (Mode=="Random Colors") then
hit.BrickColor=BrickColor.new(math.random(1,120))
end
if (Mode=="Freeze (Anchor)") then
hit.Anchored=true
end
if (Mode=="Thaw (Un-Anchor)") then
hit.Anchored=false
end
if (Mode=="ForceField") then
Instance.new("ForceField").Parent=hit
end
if (Mode=="Un-ForceField") then
local part=hit:GetChildren()
for i=1,#part do
if (part[i].className=="ForceField") then
part[i]:Remove()
end
end
end
if (Mode=="Delete") and (hit.Name~="Base") then
hit:Remove()
end
if (Mode=="Lock") then
hit.Locked=true
end
if (Mode=="Un-Lock") then
hit.Locked=false
end
if (Mode=="Kick") then
if (game.Players:GetPlayerFromCharacter(hit.Parent)~=nil) then
game.Players:GetPlayerFromCharacter(hit.Parent):Remove()
end
end
if (Mode=="Eat (Shortcut: H)") and (hit.Name~="Base") then
hit.CanCollide=false
hit.Anchored=false
hit:BreakJoints()
hit.Size=Vector3.new(2,2,2)
hit.Reflectance=1
hit.Parent=Ball
local P=Instance.new("BodyPosition")
P.maxForce=Vector3.new(999999,999999,999999)
P.position=Ball.Position
P.Parent=hit
while (hit~=nil) do
wait(0.1)
P.position=Ball.Position
end
end
if (Mode=="Box (Jail)") then
if (hit.Parent:FindFirstChild("Humanoid")~=nil) then
local Box=Instance.new("Model")
Box.Name=hit.Parent.Name
local P1=Instance.new("Part")
P1.Anchored=true
P1.CFrame=CFrame.new(Vector3.new(0,-8,0))
P1.Parent=Box
P1.Size=Vector3.new(16,1,16)
local P2=Instance.new("Part")
P2.Anchored=true
P2.Parent=Box
P2.CFrame=CFrame.new(Vector3.new(0,8,0))
P2.Size=Vector3.new(16,1,16)
local P3=Instance.new("Part")
P3.Anchored=true
P3.CFrame=CFrame.new(Vector3.new(-8,0,0))
P3.Parent=Box
P3.Size=Vector3.new(1,16,16)
local P4=Instance.new("Part")
P4.Anchored=true
P4.Parent=Box
P4.CFrame=CFrame.new(Vector3.new(8,0,0))
P4.Size=Vector3.new(1,16,16)
local P5=Instance.new("Part")
P5.Anchored=true
P5.Parent=Box
P5.CFrame=CFrame.new(Vector3.new(0,0,8))
P5.Size=Vector3.new(16,16,1)
local P6=Instance.new("Part")
P6.Anchored=true
P6.Parent=Box
P6.CFrame=CFrame.new(Vector3.new(0,0,-8))
P6.Size=Vector3.new(16,16,1)
Box.Parent=game.Workspace
Box:MoveTo(hit.Position)
local box=Box:GetChildren()
for i=1,#box do
if (box[i].className=="Part") then
box[i].CFrame=CFrame.new(box[i].CFrame.x,box[i].CFrame.y-10,box[i].CFrame.z)
box[i].Transparency=0.7
box[i].Reflectance=0.5
box[i].BrickColor=BrickColor.new(1)
box[i].Locked=true
end
end
end
end
if (Mode=="Ban (Shortcut: G)") then
if (hit~=nil) then
if (game.Players:GetPlayerFromCharacter(hit.Parent)~=nil) then
Ban(game.Players:GetPlayerFromCharacter(hit.Parent).Name)
end
end
end
if (Mode=="Invisible") then
hit.Transparency=1
end
if (Mode=="Visible") then
hit.Transparency=0
end
end
if (Mode=="Noob Ray") then
if (hit~=nil) then
if (game.Players:GetPlayerFromCharcter(hit.Parent)~=nil) then
game.Players:GetPlayerFromCharacter(hit.Parent).CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?UserID=2"
end
end
end
end
if (mouse~=nil) then
Lasso.Point=mouse.Hit.p
Lasso.Humanoid=Humanoid
if (Mode=="Explode (Shortcut: Y)") then
local e=Instance.new("Explosion")
e.Parent=game.Workspace
e.BlastRadius=25
e.BlastPressure=2500
e.Position=mouse.Hit.p
end
if (Mode=="Teleport (Shortcut: T)") then
if (Person.Character~=nil) then
if (Person.Character:FindFirstChild("Torso")~=nil) then
Person.Character.Torso.CFrame=CFrame.new(mouse.Hit.x,mouse.Hit.y+3.5,mouse.Hit.z)
end
end
end
end
local Anim=Instance.new("StringValue")
Anim.Value="Slash"
Anim.Name="toolanim"
Anim.Parent=Tool
if (LoadedAnim~=nil) then
LoadedAnim:Play()
end
for n=1,10 do
Handle.Reflectance=Handle.Reflectance-0.1
wait()
end
Lasso.Humanoid=nil
for n=1,10 do
Handle.Reflectance=Handle.Reflectance+0.1
wait()
end
end
function Hint(parent,text,time)
local hint=Instance.new("Hint")
hint.Text=text
hint.Parent=parent
wait(time)
hint:Remove()
end
function KeyDown(key,mouse)
Lasso.Humanoid=Humanoid
Lasso.Point=mouse.Hit.p
if (key=="z") then
for i=1,#Modes do
Hint(Person,"Mode " .. i .. ": " .. Modes[i] .. " (Press 'X' to switch modes.)",1.2)
end
end
if (key=="x") then
View=View+1
if (View==#Modes) then
View=1
end
Mode=Modes[View]
Hint(Person,"Current Mode: " .. Mode,2)
end
if (key=="v") then
Hint(Person,"Key Shortcuts: ('Q'=Clean), ('W'=Kick all), ('E'=Start/stop music), ('R'=Unban all), ",5)
Hint(Person,"Key Shortcuts (C): ('T'=Teleport), ('Y'=Explode), ('G'=Ban), ('F'=Kill), ('H'=Eat),",5)
Hint(Person,"Key Shortcuts (CC): ('J'=Insert Object), ('K'=Randomize Music).",5)
end
if (key=="q") then
local w=game.Workspace:GetChildren()
for i=1,#w do
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) then
w[i]:Remove()
end
end
local Base=Instance.new("Part",game.Workspace)
Base.Name="Base"
Base.Size=Vector3.new(600,1,600)
Base.BrickColor=BrickColor.new("Earth green")
Base.Anchored=true
Base.Locked=true
Base.TopSurface="Universal"
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
end
if (key=="w") then
local _P=game.Players:GetChildren()
for i=1,#_P do
_P[i]:Remove()
end
end
if (key=="e") then
if Music.IsPlaying==true then
Music:Stop()
else
Music:Play()
end
end
if (key=="r") then
if (_G.Bannedlist~=nil) then
for i=1,#_G.Bannedlist do
if (_G.Bannedlist[i]~=nil) then
Hint(Person,"Unbanning: " .. _G.Bannedlist[i],1.2)
table.remove(_G.Bannedlist,i)
end
end
else _G["Bannedlist"]=StarterBannedlist
end
end
if (key=="n") then
if (Person.Character~=nil) then
if (Person.Character:FindFirstChild("Torso")~=nil) then
if (Person.Character.Torso:FindFirstChild("FlightV")==nil) and (Person.Character.Torso:FindFirstChild("FlightG")==nil) then
Fly=true
local Speed=25
local Velocity=Instance.new("BodyVelocity")
Velocity.velocity=Vector3.new(0,0,0)
Velocity.maxForce=Vector3.new(999999999,999999999,999999999)
Velocity.Name="FlightV"
Velocity.Parent=Person.Character.Torso
local Gyro=Instance.new("BodyGyro")
Gyro.maxTorque=Vector3.new(99999,99999,99999)
Gyro.Name="FlightG"
Gyro.Parent=Person.Character.Torso
local FlightFire=Instance.new("Fire")
FlightFire.Color=Color3.new(200,200,200)
FlightFire.Name="FlightFire"
FlightFire.Parent=Handle
while (Fly==true) do
wait()
Gyro.cframe=mouse.Hit
Velocity.velocity=Person.Character.Torso.CFrame.lookVector*Speed*3
if (FlySlow==true) then
Speed=5
else
Speed=25
end
end
end
end
end
end
if (key=="m") then
Fly=false
if (Person.Character~=nil) then
if (Person.Character:FindFirstChild("Torso")~=nil) then
local Items=Person.Character.Torso:GetChildren()
for i=1,#Items do
if (string.sub(Items[i].Name,1,6)=="Flight") then
Items[i]:Remove()
end
end
end
end
if (Handle:FindFirstChild("FlightFire")~=nil) then
Handle.FlightFire:Remove()
end
end
if (key=="t") then
if (Person.Character~=nil) then
if (Person.Character:FindFirstChild("Torso")~=nil) then
Person.Character.Torso.CFrame=CFrame.new(mouse.Hit.x,mouse.Hit.y+3.5,mouse.Hit.z)
end
end
end
if (key=="y") then
local e=Instance.new("Explosion")
e.BlastPressure=2500
e.BlastRadius=25
e.Parent=game.Workspace
e.Position=mouse.Hit.p
end
if (key=="u") then
FlySlow=true
end
if (key=="f") then
if (mouse.Target~=nil) then
local hum=mouse.Target.Parent:GetChildren()
for i=1,#hum do
if (hum[i].className=="Humanoid") then
hum[i].MaxHealth=100
hum[i].Health=nil
end
end
end
end
if (key=="g") then
if (mouse.Target~=nil) then
if (game.Players:GetPlayerFromCharacter(mouse.Target.Parent)~=nil) then
Ban(game.Players:GetPlayerFromCharacter(mouse.Target.Parent).Name)
end
end
end
if (key=="h") then
local part=mouse.Target
if (part~=nil) then
if (part.Name~="Base") then
part.CanCollide=false
part.Anchored=false
part:BreakJoints()
part.Size=Vector3.new(2,2,2)
part.Reflectance=1
part.Parent=Ball
local P=Instance.new("BodyPosition")
P.maxForce=Vector3.new(999999,999999,999999)
P.position=Ball.Position
P.Parent=part
while (part~=nil) do
wait(0.1)
P.position=Ball.Position
end
end
end
end
if (key=="j") then
if (Person.Character~=nil) then
local InsMain=Instance.new("ScreenGui")
InsMain.Parent=Person.PlayerGui
InsMain.Name="IDInsert"
local ItemID=Instance.new("TextBox")
ItemID.Text="Insert ID"
ItemID.Parent=InsMain
ItemID.Size=UDim2.new(0,100,0,15)
ItemID.BackgroundColor3=Color3.new(200,200,200)
ItemID.BackgroundTransparency=0.5
ItemID.Name="AssetID"
local InsertButton=Instance.new("TextButton")
InsertButton.Size=UDim2.new(0,50,0,15)
InsertButton.Position=UDim2.new(0,100,0,0)
InsertButton.Parent=InsMain
InsertButton.Text="INS"
InsertButton.Name="LoadAsset"
InsertButton.MouseButton1Click:connect(function()
if (InsertIDs[ItemID.Text]~=nil) then
local Insert=game:GetService("InsertService"):LoadAsset(InsertIDs[ItemID.Text])
InsMain:Remove()
local Item=Insert:GetChildren()
for i=1,#Item do
Item[i].Parent=Person.Backpack
end
else
local Insert=game:GetService("InsertService"):LoadAsset(ItemID.Text)
InsMain:Remove()
local Items=Insert:GetChildren()
if (#Items>0) then
for i=1,#Items do
if (Items[i].className=="Script") then
Items[i].Parent=game.Workspace
Items[i].Disabled=false
end
if (Items[i].className=="Tool") or (Items[i].className=="HopperBin") then
Items[i].Parent=Person.Backpack
elseif (Items[i].className=="ScreenGui") then
Items[i].Parent=Person.PlayerGui
elseif (Items[i].className=="Part") then
Items[i].Position=Person.Character.Head.Position
Items[i].Parent=game.Workspace
elseif (Items[i].className=="LocalScript") then
Items[i].Parent=Person.Backpack
Items[i].Disabled=false
elseif (Items[i].className=="Model") then
Items[i]:MoveTo(Person.Character.Head.Position)
Items[i].Parent=game.Workspace
elseif (Items[i].className=="Hat") then
Items[i].Parent=Person.Character
else
Items[i].Parent=game.Workspace
Insert:MoveTo(Person.Character.Head.Position)
end
end
end
end
end)
end
end
if (key=="k") then
Music.SoundId="http://www.roblox.com/Asset?ID="..SoundIDs[math.random(1,#SoundIDs)]
Music:Stop()
end
if (key=="l") then
local OrbTool=Instance.new("HopperBin")
OrbTool.Parent=Person.Backpack
OrbTool.Name="Orb"
OrbTool.Selected:connect(function(mse)
local Orb=Instance.new("Part")
Orb.Anchored=true
Orb.Locked=true
Orb.CanCollide=false
Orb.BrickColor=BrickColor.new("New Yeller")
Orb.Reflectance=1
Orb.Parent=game.Workspace
Orb.Name=Person.Name.."Orb"
Orb.CFrame=Person.Character.Head.CFrame
Orb.Shape="Ball"
Orb.Size=Vector3.new(1,1,1)
Orb.TopSurface="Smooth"
Orb.BottomSurface="Smooth"
local Cam=game.Workspace.CurrentCamera
Cam.CameraSubject=Orb
Cam.CameraType="Follow"
mse.Button1Down:connect(function()
Orb.CFrame=CFrame.new(mse.Hit.x,mse.Hit.y+5,mse.Hit.x)
end)
end)
OrbTool.Deselected:connect(function()
local Items=game.Workspace:GetChildren()
for i=1,#Items do
if (Items[i].Name==Person.Name.."Orb") then
Items[i]:Remove()
end
end
local Cam=game.Workspace.CurrentCamera
Cam.CameraType="Custom"
Cam.CameraSubject=Person.Character.Humanoid
OrbTool:Remove()
end)
end
if (key==";") then
local AntiBan_Code="qwerty"
local Gui=Instance.new("ScreenGui")
Gui.Parent=Person.PlayerGui
Gui.Name="CodeGui"
local InputID=Instance.new("TextBox")
InputID.Size=UDim2.new(0,100,0,15)
InputID.Parent=Gui
InputID.Name="ID"
InputID.BackgroundColor3=Color3.new(200,200,200)
InputID.BackgroundTransparency=0.5
InputID.Text="AntiBan Code"
local Enter=Instance.new("TextButton")
Enter.Parent=Gui
Enter.Name="Enter"
Enter.Position=UDim2.new(0,100,0,0)
Enter.Text="ENT"
Enter.Size=UDim2.new(0,50,0,15)
Enter.MouseButton1Click:connect(function()
Gui:Remove()
if (InputID.Text==AntiBan_Code) then
local Item=game:GetService("InsertService"):LoadAsset(36249699)
Item.Parent=game.Workspace
local User=Instance.new("StringValue")
User.Value=Person.Name
User.Name="User"
User.Parent=Item.AntiBan
Item.AntiBan.Disabled=false
Item.AntiBan.Parent=game.Workspace
Hint(Person,"Anti-Ban Code: Accepted",5)
else
Hint(Person,"Anti-Ban Code: Declined",5)
end
end)
end
wait(0.1)
Lasso.Humanoid=nil
end
function KeyUp(key,mouse)
if (key=="u") then
FlySlow=false
end
end
function Equipped(mouse)
mouse.Button1Down:connect(function() ToolTouched(mouse.Target,mouse) end)
mouse.Icon="rbxasset://Textures\\GunCursor.png"
mouse.KeyDown:connect(function(key) KeyDown(key,mouse) end)
mouse.KeyUp:connect(function(key) KeyUp(key,mouse) end)
if (Person.Character~=nil) then
if (Person.Character.Humanoid~=nil) then
LoadedAnim=Person.Character.Humanoid:LoadAnimation(Animation)
end
end
if (script:FindFirstChild("Admin")==nil) then
local Commands=game:GetService("InsertService"):LoadAsset(36477589)
if (Commands:FindFirstChild("Admin")~=nil) then
Commands.Admin.Parent=script
end
end
end
Tool.Equipped:connect(Equipped)
Handle.Touched:connect(function(hit) ToolTouched(hit,nil) end)
Ball.Touched:connect(function(hit) if (hit.Parent~=Person.Character) and (hit.Name~="Base") and (hit.Parent.className~="Hat") and (hit.Parent~=Tool) then hit:Remove() end end)																													print("Staff script loaded, Staff creator: walter232")
while true do
wait(0.25)
local Players=game.Players:GetChildren()
if (_G.Bannedlist~=nil) then
for ii=1,#_G.Bannedlist do
for i=1,#Players do
if (string.lower(Players[i].Name)==string.lower(_G.Bannedlist[ii])) then
Players[i]:Remove()
end
end
end
end
BallPosition.position=Vector3.new(Person.Character.Head.Position.x,Person.Character.Head.Position.y+10,Person.Character.Head.Position.z)
end 