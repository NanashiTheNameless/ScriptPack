--Knife Module Script
 
--Perhapz
 
wait(.2)
local toool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
toool.Name = "QuickScope"
 
local hndle = Instance.new("Part",toool)
hndle.Name = "Handle"
 
local mesh = Instance.new("SpecialMesh",hndle)
mesh.MeshId = "http://www.roblox.com/asset/?id=121944778"
mesh.TextureId = "http://www.roblox.com/asset/?id=121944805"
mesh.Scale = Vector3.new(.7,.7,.7)
 
local sound = Instance.new("Sound",hndle)
 
 
script.Parent = toool
 
 
 
 
local tool=script.Parent
 
local player=game.Players.LocalPlayer
 
local char=player.Character
 
local humanoid=char:FindFirstChild("Humanoid")
 
local camera=workspace.CurrentCamera
 
local rightC1 = CFrame.new(-0.5, 0.7, 0) * CFrame.Angles(0, (math.pi / 2), 0)
 
local leftC1 = CFrame.new(0, 0.7, 0) * CFrame.Angles(0, (math.pi / 2), 0)
 
local mouse=player:GetMouse()
 
local equipping=false
 
local gettingknife=false
 
local laserCharge=false
 
local playcharge=false
 
local justthrown=false
 
local canLaser=true
 
local justattacked=false
 
local thrownkniferotation=0
 
local Damage=110
 
local Attacking=false
 
local handle=nil
 
local WalkSpeeds={16,20}
 
local fasterthrow = .2
 
local knifespeed = 225
 
 
 
 
 
 
 
--[[if player.Gamepass4.Value == true then
 
fasterthrow = 0.5
 
else
 
fasterthrow = 0.2
 
end
 
if player.Gamepass5.Value == true then
 
knifespeed = 305
 
else
 
knifespeed = 225
 
end
--]]
 
 
 
 
 
SOUNDS={
 
throwing={"153647554","153647549"},
 
laserthrowing={"193444173"},
 
shouts={"241084057","224360245","199837759","168209314"},
 
striking={"153647529","153647534","153647539","153647540"},
 
equip="153647514",
 
wallhit={"153647563","153647564"},
 
hitplayer={"153676325"},
 
deaths={"241084057","146457047","146594648","168209314"},
 
}
 
 
 
SETTINGS={
 
 
tool={
 
tool_size=Vector3.new(0.4, 3, 0.7),
 
tool_transparency=0,
 
tool_color=BrickColor.Black(),
 
default_tool_size=0.6,
 
},
 
 
}
 
 
 
function DamageObject(hit)
 
local char=hit.Parent
 
if char and char~=player.Character and char.Name~="Arms_Model" and hit.Name~="Handle" then
 
local h=char:FindFirstChild("Humanoid")
 
if h and h.Health > 0 then
 
 
 
h:TakeDamage(Damage)
 
PlaySound("Hit1",char.Torso)
 
local explosion = Instance.new("Explosion")
 
explosion.ExplosionType = 'NoCraters'
 
explosion.Position = humanoid.Torso.CFrame.p
 
explosion.BlastPressure=0
 
explosion.Parent=workspace
 
if h.Health == 0 then
 
PlaySound("Hit2")
 
end
 
end
 
end
 
end
 
 
 
function PlaySound(name,ctorso)
 
if name=="Throw" then
 
tool.Handle.Sound.SoundId = "rbxassetid://" .. SOUNDS.throwing[math.random(1,#SOUNDS.throwing)]
 
tool.Handle.Sound:Play()
 
elseif name=="ThrowLaser" then
 
tool.Handle.Sound.SoundId = "rbxassetid://" .. SOUNDS.laserthrowing[math.random(1,#SOUNDS.laserthrowing)]
 
tool.Handle.Sound:Play()
 
elseif name=="Equip" then
 
tool.Handle.Sound.SoundId = "rbxassetid://" .. SOUNDS.equip
 
tool.Handle.Sound:Play()
 
elseif name=="Swing" then
 
tool.Handle.Sound.SoundId = "rbxassetid://" .. SOUNDS.striking[math.random(1,#SOUNDS.striking)]
 
tool.Handle.Sound:Play()
 
elseif name=="Hit1" then
 
local NewSound=tool.Handle.Sound:clone()
 
NewSound.Parent=ctorso
 
NewSound.SoundId = "rbxassetid://" .. SOUNDS.hitplayer[math.random(1,#SOUNDS.hitplayer)]
 
NewSound:Play()
 
NewSound:Destroy()
 
--elseif name=="Hit2" then
 
--local NewSound=tool.Handle.Sound:clone()
 
--NewSound.Parent=ctorso
 
--NewSound.SoundId = "rbxassetid://" .. SOUNDS.deaths[math.random(1,#SOUNDS.deaths)]
 
--NewSound:Play()
 
--      NewSound:Destroy()
 
elseif name=="Laser" then
 
local NewSound=tool.Handle.Sound:Clone()
 
NewSound.Parent = ctorso
NewSound.SoundId = "rbxassetid://" .. SOUNDS.shouts[math.random(1,#SOUNDS.shouts)]
 
NewSound:Play()
 
 
end
 
end
 
 
 
function Throwtool(dPos)
 
if not tool.Handle then return end
 
local throwingHandle = tool.Handle:Clone()
 
game:GetService("Debris"):AddItem(throwingHandle, 5)
 
throwingHandle.Transparency=0
 
throwingHandle.Parent = workspace
 
if player.Character and player.Character.Humanoid then
 
throwingHandle.Velocity = (player.Character.Humanoid.TargetPoint - throwingHandle.CFrame.p).unit * knifespeed
 
if canLaser then
 
throwingHandle.Velocity = (player.Character.Humanoid.TargetPoint - throwingHandle.CFrame.p).unit * 15000
 
end
 
if mouse.Target ~= nil then
 
if mouse.Target.Parent.Name~="Arms_Model" and mouse.Target.Name~="ThrownKnife" and mouse.Target.Name~="Handle" then
 
targetpos=player.Character.Humanoid.TargetPoint
 
else
 
targetpos=Vector3.new(0,-10,0)
 
end
 
end
 
-- set the orientation to the direction it is being thrown in
 
throwingHandle.CFrame = CFrame.new(throwingHandle.CFrame.p, throwingHandle.CFrame.p + throwingHandle.Velocity) * CFrame.Angles(0, 0, math.rad(-90))
 
local floatingForce = Instance.new('BodyForce', throwingHandle)
 
floatingForce.force = Vector3.new(0, 196.2 * throwingHandle:GetMass() * 0.98, 0)
 
local spin = Instance.new('BodyAngularVelocity', throwingHandle)
 
spin.angularvelocity = throwingHandle.CFrame:vectorToWorldSpace(Vector3.new(0, -400, 0))
 
spawnPos=player.Character.PrimaryPart.Position
 
spawnPos = spawnPos + dPos*5
 
if canLaser then
 
local Ray = Ray.new(tool.Handle.CFrame.p,(mouse.Hit.p - tool.Handle.CFrame.p).unit * 999)
 
        local Hit,Position = game.Workspace:FindPartOnRay(Ray,char)
 
       if Hit then
 
    if Hit.Parent:FindFirstChild("Humanoid") then
 
throwingHandle:Destroy()
 
        Hit.Parent.Humanoid:TakeDamage(110)
PlaySound("Laser",Hit.Parent.Torso)
PlaySound("Hit1",Hit.Parent.Torso)
laserCharge=true
 
 
 
local explosion = Instance.new("Explosion")
 
explosion.Position=Hit.Parent.Torso.Position
 
explosion.BlastRadius=explosion.BlastRadius*2
 
explosion.Parent=workspace
 
end end
 
        local RayPart = Instance.new("Part",workspace)
 
RayPart.Name = "RayPart"
 
RayPart.BrickColor = BrickColor.new("White")
 
RayPart.Transparency = 0
 
RayPart.Anchored = true
 
RayPart.CanCollide = false
 
RayPart.TopSurface = Enum.SurfaceType.Smooth
 
RayPart.BottomSurface = Enum.SurfaceType.Smooth
 
RayPart.formFactor = Enum.FormFactor.Custom
 
local Distance = (Position-tool.Handle.CFrame.p).magnitude
 
RayPart.Size = Vector3.new(0.2,0.2,Distance)
 
RayPart.CFrame = CFrame.new(Position,tool.Handle.CFrame.p) * CFrame.new(0,0,-Distance/2)
 
game.Debris:addItem(RayPart,.5)
 
 
end
 
end
 
if throwingHandle then
 
 
 
local touchedConn = throwingHandle.Touched:connect(function(hit)
 
local char=hit.Parent
 
camera.CameraSubject=humanoid
 
camera.CameraType=Enum.CameraType.Custom
 
if char and char~=player.Character and char.Name~="Arms_Model" and hit.Name~="Handle" and hit.Name~="RayPart" then
 
local h=char:FindFirstChild("Humanoid")
 
if h and h.Health > 0 then
 
throwingHandle:Destroy()
 
laserCharge=true
 
if hit.Name~="Head" or hit.className=="Hat" then
 
h:TakeDamage(Damage)
 
--      player.Credits.Value = player.Credits.Value + 15
 
--player.PlayerGui.NormalKillGui.Script.Disabled = false
 
local explosion = Instance.new("Explosion")
 
explosion.Position=h.Parent.Torso.Position
 
explosion.BlastRadius=explosion.BlastRadius*2
 
explosion.Parent=workspace
 
 
if h.Health == 0 then
 
PlaySound("Hit2",char.Torso)
 
end
 
else
 
h:TakeDamage(Damage * 2)
 
print("Headshot!")
 
--player.Credits.Value = player.Credits.Value + 50
 
--player.PlayerGui.HeadShotGui.Script.Disabled = false
 
local explosion = Instance.new("Explosion")
 
explosion.Position=h.Parent.Torso.Position
 
explosion.BlastRadius=explosion.BlastRadius*2
 
explosion.Parent=workspace
 
char.Head.Transparency=1
 
char.Head.CanCollide=false
 
if char.Head:FindFirstChild("face") then char.Head:FindFirstChild("face").Transparency=1 end
 
for _,v in pairs(char:GetChildren()) do
 
if v.className=="Hat" then
 
v:Destroy()
 
end
 
end
 
for i = 1, 7 do
 
local blood=Instance.new("Part")
 
blood.FormFactor="Custom"
 
blood.Size=Vector3.new(1,.2,1)
 
blood.BrickColor=BrickColor.Red()
 
blood.TopSurface=0
 
blood.BottomSurface=0
 
game:GetService("Debris"):AddItem(blood,5)
 
blood.Parent=workspace
 
blood.Position=char.Head.Position + Vector3.new(math.random(0.2,0.8),0,math.random(0.2,0.8))
 
end
 
local sound = Instance.new("Sound")
 
sound.SoundId = "rbxassetid://142347633"
 
sound.Parent=char.Head
 
sound.Pitch=1.1
 
sound:Play()
 
end
 
PlaySound("Hit1",char.Torso)
 
if h.Health == 0 then
 
PlaySound("Hit2")
 
end
 
elseif hit.Name~="Handle" or hit.Name~="IgnoreThrowingKnives" and hit.Parent.Name~="Arms_Model" and hit.Name~="RayPart" and hit.CanCollide==true then
 
local sound=Instance.new("Sound")
 
sound.Parent=hit
 
sound.SoundId = "rbxassetid://" .. SOUNDS.wallhit[math.random(1,#SOUNDS.wallhit)]
 
sound:Play()
 
sound:Destroy()
 
print("Hit Object: " .. hit.Name)
 
local newknife=tool.Handle:clone()
 
newknife.Name="ThrownKnife"
 
newknife.CFrame = CFrame.new(spawnPos, spawnPos + dPos) * CFrame.Angles(math.pi/-2, 0, 0)
 
newknife.Position = targetpos
 
throwingHandle:Destroy()
 
newknife.Anchored=true
 
newknife.CanCollide=true
 
newknife.Transparency=0
 
newknife.Parent=workspace
 
--newknife.Script.Disabled = false
 
wait(7)
 
for i=1,10 do
 
newknife.Transparency=i*.1
 
wait()
 
end
 
newknife:Destroy()
 
end
 
end
 
    end)
 
end
 
end
 
-- must check if it still exists since we waited
 
if throwingHandle then
 
throwingHandle.CanCollide = true
 
end
 
 
 
FUNCTIONS={
 
 
CHECKFORFIRSTPERSON=function()
 
if (camera.focus.p - camera.CoordinateFrame.p).magnitude > 1 then
 
return false
 
else
 
return true
 
end
 
end,
 
 
ANIMS=function(state)
 
if state then
 
mouse.Icon="http://www.roblox.com/asset/?id=258828417"
 
--Start Animation
 
 
 
if SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.55, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.6, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.65, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.7, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.75, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.8, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.85, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.9, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -0.95, 0)
 
elseif SETTINGS.tool then
 
tool.GripPos = Vector3.new(0, -1, 0)
 
else
 
print("Invalid tool size! Set to default: " .. SETTINGS.tool.default_tool_size )
 
 
if SETTINGS.tool.default_tool_size==.1 then
 
tool.GripPos = Vector3.new(0, -0.55, 0)
 
elseif SETTINGS.tool.default_tool_size==.2 then
 
tool.GripPos = Vector3.new(0, -0.6, 0)
 
elseif SETTINGS.tool.default_tool_size==.3 then
 
tool.GripPos = Vector3.new(0, -0.65, 0)
 
elseif SETTINGS.tool.default_tool_size==.4 then
 
tool.GripPos = Vector3.new(0, -0.7, 0)
 
elseif SETTINGS.tool.default_tool_size==.5 then
 
tool.GripPos = Vector3.new(0, -0.75, 0)
 
elseif SETTINGS.tool.default_tool_size==.6 then
 
tool.GripPos = Vector3.new(0, -0.8, 0)
 
elseif SETTINGS.tool.default_tool_size==.7 then
 
tool.GripPos = Vector3.new(0, -0.85, 0)
 
elseif SETTINGS.tool.default_tool_size==.8 then
 
tool.GripPos = Vector3.new(0, -0.9, 0)
 
elseif SETTINGS.tool.default_tool_size==.9 then
 
tool.GripPos = Vector3.new(0, -0.95, 0)
 
elseif SETTINGS.tool.default_tool_size==1 then
 
tool.GripPos = Vector3.new(0, -1, 0)
 
else
 
print("Invalid default size! Un-equipping and removing Knife...")
 
 
end
 
end
 
torso=char:FindFirstChild("Torso")
 
leftarm=torso:FindFirstChild("Left Shoulder")
 
if leftarm then
 
leftarm.Parent=nil
 
newarmweld=Instance.new("Weld")
 
newarmweld.Name="LeftWeld"
 
newarmweld.Part0=torso
 
newarmweld.C0 = CFrame.new(-1.5, 0.7, 0)
 
newarmweld.C1 = CFrame.new(0, 0.7, 0)
 
newarmweld.Part1=char:FindFirstChild("Left Arm")
 
newarmweld.Parent=torso
 
end
 
humanoid.WalkSpeed=WalkSpeeds[2]
 
for i = 1, 15, 3 do
 
if equipped then
 
torso:FindFirstChild("Right Shoulder").C1 = rightC1 * CFrame.Angles((-i * (math.pi / 90)),(-i * (math.pi / 90)),(i * (math.pi / 210)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0) * CFrame.Angles((-i * (math.pi / 60)),(i * (math.pi / 90)),(-i * (math.pi / 240)))
 
end
 
wait()
 
end
 
else
 
humanoid.WalkSpeed=WalkSpeeds[1]
 
torso:FindFirstChild("Right Shoulder").C1 = rightC1 * CFrame.new(0,-0.2,0)
 
tool.GripForward = Vector3.new(0,0,-1)
 
newarmweld:Destroy()
 
leftarm.Parent=torso
 
mouse.Icon=""
 
torso:FindFirstChild("Neck").C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
 
torso:FindFirstChild("Right Shoulder").C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
 
end
 
end
 
}
 
 
 
tool.Equipped:connect(function ()
 
equipped=true
 
PlaySound("Equip")
 
FUNCTIONS.ANIMS(true)
 
end)
 
tool.Unequipped:connect(function ()
 
equipped=false
 
FUNCTIONS.ANIMS(false)
 
end)
 
tool.Handle.Touched:connect(function (hit)
 
if Attacking then
 
DamageObject(hit)
 
end
 
end)
 
tool.Activated:connect(function ()
 
if Attacking then return end
 
if not tool.Enabled then return end
 
justthrown=false
 
justattacked=false
 
if not gettingknife and not justthrown and not Attacking then
 
HeldTime=time()
 
end
 
playcharge=true
 
wait(.15)
 
while gettingknife do
 
wait()
 
end
 
local speed=0.2
 
for i = 1, 15, fasterthrow do
 
if playcharge and equipped and not gettingknife and not justthrown and not Attacking then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, 0.195277825, -0.747909963, 0.634426773, 0.482016951, 0.636551082, 0.602048457, -0.854123056, 0.188237742, 0.484809577) * CFrame.Angles((i * (math.pi / 50)), 0, (-i * (math.pi / 25)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0, 0.858912528, 0.165011853, 0.484809607, -0.464581847, 0.649385393, 0.602048457, -0.215483144, -0.742340684, 0.634426773) * CFrame.Angles((-i * (math.pi / 75)),(i * (math.pi / 180)),0)
 
player.Character["Right Arm"].RightGrip.C1 = CFrame.new(0, -0.800000012, 0.05, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.Angles((-i * (math.pi / 150)),0,0)
 
wait()
 
end
 
end
 
if playcharge then
 
canLaser=true
 
end
 
end)
 
tool.Deactivated:connect(function ()
 
if not tool.Enabled then return end
 
currTime=time()
 
playcharge=false
 
if HeldTime and currTime - HeldTime > .6 and
 
currTime - HeldTime > 0.01 and not justthrown and not gettingknife then
 
if not Attacking and not justattacked then
 
print("Throw")
 
if canLaser then
 
PlaySound("ThrowLaser")
 
else
 
PlaySound("Throw")
 
end
 
tool.Handle.Transparency=1
 
local targetPos = player.Character.Humanoid.TargetPoint
 
local lookAt = (targetPos - player.Character.PrimaryPart.Position).unit
 
local switchEvenOddParity = 1
 
local angle = math.ceil((1-1)/2)*math.pi/12*switchEvenOddParity
 
Throwtool(CFrame.Angles(0, angle, 0) * lookAt)
 
wait()
canLaser=true
 
HeldTime=0
 
gettingknife=true
 
mouse.Icon="http://www.roblox.com/asset/?id=258828417"
 
player.Character["Right Arm"].RightGrip.C1 = CFrame.new(0, -0.800000012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
 
for i = 1, 15, .8 do
 
if equipped then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, 0.0719629526, 0.22870943, 0.970831275, -0.981789052, 0.187819958, 0.0285283029, -0.175816804, -0.955204487, 0.238060504) * CFrame.Angles(0, 0, (i * (math.pi / 15)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, 0.7, 0, 0.703028679, -0.151466534, 0.694844246, -0.673604906, 0.171488613, 0.718921423, -0.228050426, -0.973472893, 0.0185328126) * CFrame.Angles((i * (math.pi / 60)),(-i * (math.pi / 180)),(i * (math.pi / 60)))
 
wait()
 
end
 
end
 
justthrown=true
 
tool.Handle.Transparency=0
 
PlaySound("Equip")
 
mouse.Icon="http://www.roblox.com/asset/?id=258828417"
 
tool.GripForward = Vector3.new(0,0,-1)
 
for i = 1, 15, 1 do
 
if equipped then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, -0.071962975, -0.22870943, 0.970831275, 0.981789052, -0.187820047, 0.0285283029, 0.175816894, 0.955204487, 0.238060504) * CFrame.Angles(0, 0, (-i * (math.pi / 30)))
 
wait()
 
end
 
end
 
gettingknife=false
 
for i = 1, 15, 3 do
 
if equipped then
 
torso:FindFirstChild("Right Shoulder").C1 = rightC1 * CFrame.Angles((-i * (math.pi / 90)),(-i * (math.pi / 90)),(i * (math.pi / 210)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0) * CFrame.Angles((-i * (math.pi / 60)),(i * (math.pi / 90)),(-i * (math.pi / 240)))
 
end
 
wait()
 
end
 
end
 
else
 
if not justthrown and not gettingknife then
 
if Attacking then return end
 
print("Attack")
 
HeldTime=0
 
Attacking=true
 
justattacked=true
 
if math.random(1,2)==1 then
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, 0.195277825, -0.747909963, 0.634426773, 0.482016951, 0.636551082, 0.602048457, -0.854123056, 0.188237742, 0.484809577) * CFrame.Angles((i * (math.pi / 65)), 0, (-i * (math.pi / 30)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0, 0.858912528, 0.165011853, 0.484809607, -0.464581847, 0.649385393, 0.602048457, -0.215483144, -0.742340684, 0.634426773) * CFrame.Angles((-i * (math.pi / 75)),(i * (math.pi / 180)),0)
 
wait()
 
end
 
end
 
PlaySound("Swing")
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, 0.0719629526, 0.22870943, 0.970831275, -0.981789052, 0.187819958, 0.0285283029, -0.175816804, -0.955204487, 0.238060504) * CFrame.Angles(0, 0, (i * (math.pi / 15)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, 0.7, 0, 0.703028679, -0.151466534, 0.694844246, -0.673604906, 0.171488613, 0.718921423, -0.228050426, -0.973472893, 0.0185328126) * CFrame.Angles((i * (math.pi / 60)),(-i * (math.pi / 180)),(i * (math.pi / 60)))
 
wait()
 
end
 
end
 
for i = 1, 15, 3 do
 
if equipped and not justthrown and not gettingknife then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.5, 0.5, 0, -0.071962975, -0.22870943, 0.970831275, 0.981789052, -0.187820047, 0.0285283029, 0.175816894, 0.955204487, 0.238060504) * CFrame.Angles(0, 0, (-i * (math.pi / 30)))
 
wait()
 
end
 
end
 
for i = 1, 15, 3 do
 
equipping=true
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = rightC1 * CFrame.Angles((-i * (math.pi / 90)),(-i * (math.pi / 90)),(i * (math.pi / 210)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0) * CFrame.Angles((-i * (math.pi / 60)),(i * (math.pi / 90)),(-i * (math.pi / 240)))
 
end
 
wait()
 
end
 
Attacking=false
 
else
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.3, 0.5, 0, 0.195277825, -0.747909963, 0.634426773, 0.482016951, 0.636551082, 0.602048457, -0.854123056, 0.188237742, 0.484809577) * CFrame.Angles((i * (math.pi / 40)),(-i * (math.pi / 45)),(i * (math.pi / 60)))
 
end
 
wait()
 
end
 
PlaySound("Swing")
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.2, 0.5, -.3, 0.852928281, -0.428775758, 0.29776603, 0.516928136, 0.614185035, -0.596290231, 0.0727913082, 0.662516415, 0.745502114) * CFrame.Angles((-i * (math.pi / 45)),0,0)
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.200000003, 0.7, 0, 0.849384904, 0.16895318, 0.5, -0.48470962, 0.624545038, 0.612372398, -0.208810255, -0.762494743, 0.612372398) * CFrame.Angles((i * (math.pi / 60)),(-i * (math.pi / 180)),(i * (math.pi / 60)))
 
end
 
wait()
 
end
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = CFrame.new(-0.3, 0.5, -0.300000012, 0.852928281, -0.472260833, -0.222447708, 0.516928136, 0.82349503, 0.233754784, 0.0727913082, -0.314365625, 0.946507096) * CFrame.Angles((i * (math.pi / 45)),0,0)
 
end
 
wait()
 
end
 
for i = 1, 15, 3 do
 
if equipped and not gettingknife and not justthrown then
 
torso:FindFirstChild("Right Shoulder").C1 = rightC1 * CFrame.Angles((-i * (math.pi / 90)),(-i * (math.pi / 90)),(i * (math.pi / 210)))
 
torso:FindFirstChild("LeftWeld").C1 = CFrame.new(-0.2, .7, 0) * CFrame.Angles((-i * (math.pi / 60)),(i * (math.pi / 90)),(-i * (math.pi / 240)))
 
end
 
wait()
 
end
 
Attacking=false
 
end
 
end
 
end
 
end)
 
 
 
mouse.Move:connect(function ()
 
if equipped and mouse then
 
if (mouse.Hit.p - mouse.Origin.p).unit.y < 0.25 and (mouse.Hit.p - mouse.Origin.p).unit.y > -0.25 then
 
torso:FindFirstChild("Right Shoulder").C0 = CFrame.new(.9,.5,0) * CFrame.Angles(0,math.rad(90),0) * CFrame.Angles(0, 0, math.asin((mouse.Hit.p - mouse.Origin.p).unit.y))
 
torso:FindFirstChild("LeftWeld").C0 = CFrame.new(-1.5,0.5,0) * CFrame.Angles(0, 0, math.asin((mouse.Hit.p - mouse.Origin.p).unit.y))
 
torso:FindFirstChild("Neck").C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),0,math.rad(180)) * CFrame.Angles(math.asin(-(mouse.Hit.p - mouse.Origin.p).unit.y), 0, 0)
 
end
 
end
 
end)