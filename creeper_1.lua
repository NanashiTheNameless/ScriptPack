--I  Script -peyquinn//Seperate Functions//-----------------------------------------------------------------------
--Scripted By peyquinn 
--If you steel then you are a noob
--This model is avalible for ScriptBuilder
--I worked hard on this so dont steal :@
--Anti-Steal is gonna be in my models
player="peyquinn"--Your name Here or else it wont work
plays=game:GetService("Players")
person=plays:FindFirstChild(player)
local dec=Instance.new("Decal")
c=false
deb=false
----------------------------------------------------------Credit to decal makers
--head
htopbot="http://www.roblox.com/asset/?id=39643864"
hface="http://www.roblox.com/asset/?id=39643800"
hs="http://www.roblox.com/asset/?id=39643830"
--body
bfntbak="http://www.roblox.com/asset/?id=39644016"
bside="http://www.roblox.com/asset/?id=39644038"
btopbot="http://www.roblox.com/asset/?id=39644072"
--Legs
ltop="http://www.roblox.com/asset/?id=39644003"
lfbot="http://www.roblox.com/asset/?id=39643926"
lfnt="http://www.roblox.com/asset/?id=39643951"
lbakside="http://www.roblox.com/asset/?id=39643893"

if script.Parent:IsA("HopperBin") then
print(":D")
else
local tol=Instance.new("HopperBin")
tol.Name="Creeper"
tol.Parent=plays:FindFirstChild(player).Backpack
tol.Parent=plays:FindFirstChild(player).StarterGear
script:clone().Parent=tol
end
--------------------------------------
function start(pos)
person.Character=nil
cpr=CreateCreep()
wait(1)
cpr.Parent=Workspace
cpr:MakeJoints()
cpr.Torso.CFrame=CFrame.new(pos)
Instance.new("Humanoid").Parent=cpr
person.Character=cpr
c=true
end

function CreateCreep()--So much scripts here
--Head
local head=Instance.new("Part")
head.FormFactor="Custom"
head.Name="Head"
head.Size=Vector3.new(2,2,2)
face=dec:clone()
face.Face="Front"
face.Texture=hface
face.Parent=head
htop=dec:clone()
htop.Face="Top"
htop.Texture=htopbot
htop.Parent=head
hbot=htop:clone()
hbot.Face="Bottom"
hbot.Parent=head
hsideb=dec:clone()
hsideb.Face="Back"
hsideb.Texture=hs
hsideb.Parent=head
hsidel=htop:clone()
hsidel.Face="Left"
hsidel.Parent=head
hsider=htop:clone()
hsider.Face="Right"
hsider.Parent=head
--Torso
local body=Instance.new("Part")
body.FormFactor="Custom"
body.Name="Torso"
body.Size=Vector3.new(2,3,1)
bfront=dec:clone()
bfront.Face="Front"
bfront.Texture=bfntbak
bfront.Parent=body
bback=dec:clone()
bback.Face="Back"
bback.Texture=bfntbak
bback.Parent=body
bbot=dec:clone()
bbot.Face="Bottom"
bbot.Texture=btopbot
bbot.Parent=body
bleft=dec:clone()
bleft.Face="Left"
bleft.Texture=bside
bleft.Parent=body
bright=dec:clone()
bright.Face="Right"
bright.Texture=bside
bright.Parent=body
--Leg
local Leg=Instance.new("Part")
Leg.FormFactor="Custom"
Leg.Size=Vector3.new(1,1.5,1)
lf=dec:clone()
lf.Face="Front"
lf.Texture=lfnt
lf.Parent=Leg
lb=dec:clone()
lb.Face="Back"
lb.Texture=lbakside
lb.Parent=Leg
lbot=dec:clone()
lbot.Face="Bottom"
lbot.Texture=lfbot
lbot.Parent=Leg
lt=dec:clone()
lt.Face="Top"
lt.Texture=ltop
lt.Parent=Leg
ll=dec:clone()
ll.Face="Left"
ll.Texture=lbakside
ll.Parent=Leg
lr=dec:clone()
lr.Face="Right"
lr.Texture=lbakside
lr.Parent=Leg
---Modding
creep=Instance.new("Model")
creep.Name="Creeper"
head.Parent=creep
body.Parent=creep
headweld=Instance.new("Weld")
headweld.C0=CFrame.new(0,2.5,0)
headweld.Part0=body
headweld.Part1=head
headweld.Name="Neck"
headweld.Parent=body
lega=Leg:clone()
legb=Leg:clone()
legc=Leg:clone()
legd=Leg:clone()
lega.Name="Right Leg"
legb.Name="Left Leg"
legc.Name="Right Arm"
legd.Name="Left Arm"
---more cframe T_T
lega.Parent=creep
legb.Parent=creep
legc.Parent=creep
legd.Parent=creep

prophipa=Instance.new("Motor")
prophipa.C0=CFrame.new(0.5, -2.25000025, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
prophipa.C1=CFrame.Angles(0,0,0)
prophipa.Part0=body
prophipa.Part1=lega
prophipa.Parent=body
prophipa.Name="Right Hip"

prophipb=Instance.new("Motor")
prophipb.C0=CFrame.new(-0.5, -2.25000025, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
prophipb.C1=CFrame.new(0,0,0)
prophipb.Part0=body
prophipb.Part1=legb
prophipb.Parent=body
prophipb.Name="Left Hip"

prophipaa=Instance.new("Motor")
prophipaa.C0=CFrame.new(0.5, -2.25000025, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
prophipaa.C1=CFrame.new(0,0,0)
prophipaa.Part0=body
prophipaa.Part1=legc
prophipaa.Parent=body
prophipaa.Name="Right Shoulder"

prophipba=Instance.new("Motor")
prophipba.C0=CFrame.new(-0.5, -2.25000025, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
prophipba.C1=CFrame.new(0,0,0)
prophipba.Part0=body
prophipba.Part1=legd
prophipba.Parent=body
prophipba.Name="Left Shoulder"
return creep
end

function Kees(key)
if key == "e" then
if deb == false then
deb = true
hiss=Instance.new("Sound")
hiss.SoundId="http://www.roblox.com/asset/?id=11565378"
hiss.Pitch=2.4
hiss.Parent=Workspace
hiss:Play()
wait(3)
b=Instance.new("Sound")
b.SoundId="http://www.roblox.com/asset/?id=2233908"
b.Pitch=0.8
b.Parent=Workspace
b:Play()
game:GetService("Debris"):AddItem(b,10)
game:GetService("Debris"):AddItem(hiss,10)
ex=Instance.new("Explosion")
ex.BlastRadius=40
ex.BlastPressure = 30234
ex.Position = person.Character.Torso.Position
ex.Parent=Workspace
deb = false
end
end
end


function EQ(mouse)
posi=person.Character.Torso.Position
mouse.KeyDown:connect(function(key) Kees(key) end)
mouse.Button1Down:connect(function(uselessness) start(posi) end)
end

script.Parent.Selected:connect(EQ)